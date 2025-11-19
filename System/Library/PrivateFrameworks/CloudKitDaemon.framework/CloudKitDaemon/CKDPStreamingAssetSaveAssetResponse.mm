@interface CKDPStreamingAssetSaveAssetResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasUploadURLExpirationTimeSeconds:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation CKDPStreamingAssetSaveAssetResponse

- (void)setHasUploadURLExpirationTimeSeconds:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPStreamingAssetSaveAssetResponse;
  v4 = [(CKDPStreamingAssetSaveAssetResponse *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v5 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  if (*&self->_has)
  {
    v6 = objc_msgSend_numberWithLongLong_(MEMORY[0x277CCABB0], v4, self->_reservedSize);
    objc_msgSend_setObject_forKey_(v5, v7, v6, @"reservedSize");
  }

  uploadURL = self->_uploadURL;
  if (uploadURL)
  {
    objc_msgSend_setObject_forKey_(v5, v4, uploadURL, @"uploadURL");
  }

  if ((*&self->_has & 2) != 0)
  {
    v9 = objc_msgSend_numberWithLongLong_(MEMORY[0x277CCABB0], v4, self->_uploadURLExpirationTimeSeconds);
    objc_msgSend_setObject_forKey_(v5, v10, v9, @"uploadURLExpirationTimeSeconds");
  }

  return v5;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (*&self->_has)
  {
    reservedSize = self->_reservedSize;
    PBDataWriterWriteInt64Field();
    v4 = v7;
  }

  if (self->_uploadURL)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if ((*&self->_has & 2) != 0)
  {
    uploadURLExpirationTimeSeconds = self->_uploadURLExpirationTimeSeconds;
    PBDataWriterWriteInt64Field();
    v4 = v7;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[1] = self->_reservedSize;
    *(v4 + 32) |= 1u;
  }

  uploadURL = self->_uploadURL;
  if (uploadURL)
  {
    v7 = v4;
    objc_msgSend_setUploadURL_(v4, v5, uploadURL);
    v4 = v7;
  }

  if ((*&self->_has & 2) != 0)
  {
    v4[2] = self->_uploadURLExpirationTimeSeconds;
    *(v4 + 32) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = v10;
  if (*&self->_has)
  {
    *(v10 + 8) = self->_reservedSize;
    *(v10 + 32) |= 1u;
  }

  v13 = objc_msgSend_copyWithZone_(self->_uploadURL, v11, a3);
  v14 = *(v12 + 24);
  *(v12 + 24) = v13;

  if ((*&self->_has & 2) != 0)
  {
    *(v12 + 16) = self->_uploadURLExpirationTimeSeconds;
    *(v12 + 32) |= 2u;
  }

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(v4, v6, v5))
  {
    goto LABEL_14;
  }

  has = self->_has;
  v9 = *(v4 + 32);
  if (has)
  {
    if ((v4[4] & 1) == 0 || self->_reservedSize != v4[1])
    {
      goto LABEL_14;
    }
  }

  else if (v4[4])
  {
    goto LABEL_14;
  }

  uploadURL = self->_uploadURL;
  v11 = v4[3];
  if (uploadURL | v11)
  {
    if (!objc_msgSend_isEqual_(uploadURL, v7, v11))
    {
LABEL_14:
      v12 = 0;
      goto LABEL_15;
    }

    has = self->_has;
    v9 = *(v4 + 32);
  }

  v12 = (v9 & 2) == 0;
  if ((has & 2) != 0)
  {
    if ((v9 & 2) == 0 || self->_uploadURLExpirationTimeSeconds != v4[2])
    {
      goto LABEL_14;
    }

    v12 = 1;
  }

LABEL_15:

  return v12;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_reservedSize;
  }

  else
  {
    v4 = 0;
  }

  v5 = objc_msgSend_hash(self->_uploadURL, a2, v2);
  if ((*&self->_has & 2) != 0)
  {
    v6 = 2654435761 * self->_uploadURLExpirationTimeSeconds;
  }

  else
  {
    v6 = 0;
  }

  return v5 ^ v4 ^ v6;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[4])
  {
    self->_reservedSize = v4[1];
    *&self->_has |= 1u;
  }

  v6 = v4[3];
  if (v6)
  {
    v7 = v4;
    objc_msgSend_setUploadURL_(self, v5, v6);
    v4 = v7;
  }

  if ((v4[4] & 2) != 0)
  {
    self->_uploadURLExpirationTimeSeconds = v4[2];
    *&self->_has |= 2u;
  }
}

@end