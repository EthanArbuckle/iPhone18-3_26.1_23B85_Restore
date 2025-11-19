@interface CKDPStreamingAssetRetrieveAssetResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasSize:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation CKDPStreamingAssetRetrieveAssetResponse

- (void)setHasSize:(BOOL)a3
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
  v11.super_class = CKDPStreamingAssetRetrieveAssetResponse;
  v4 = [(CKDPStreamingAssetRetrieveAssetResponse *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v5 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  if ((*&self->_has & 2) != 0)
  {
    v6 = objc_msgSend_numberWithLongLong_(MEMORY[0x277CCABB0], v4, self->_size);
    objc_msgSend_setObject_forKey_(v5, v7, v6, @"size");
  }

  downloadURL = self->_downloadURL;
  if (downloadURL)
  {
    objc_msgSend_setObject_forKey_(v5, v4, downloadURL, @"downloadURL");
  }

  if (*&self->_has)
  {
    v9 = objc_msgSend_numberWithLongLong_(MEMORY[0x277CCABB0], v4, self->_downloadURLExpirationTimeSeconds);
    objc_msgSend_setObject_forKey_(v5, v10, v9, @"downloadURLExpirationTimeSeconds");
  }

  return v5;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v7 = v4;
  if ((*&self->_has & 2) != 0)
  {
    size = self->_size;
    PBDataWriterWriteInt64Field();
    v4 = v7;
  }

  if (self->_downloadURL)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if (*&self->_has)
  {
    downloadURLExpirationTimeSeconds = self->_downloadURLExpirationTimeSeconds;
    PBDataWriterWriteInt64Field();
    v4 = v7;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if ((*&self->_has & 2) != 0)
  {
    v4[2] = self->_size;
    *(v4 + 32) |= 2u;
  }

  downloadURL = self->_downloadURL;
  if (downloadURL)
  {
    v7 = v4;
    objc_msgSend_setDownloadURL_(v4, v5, downloadURL);
    v4 = v7;
  }

  if (*&self->_has)
  {
    v4[1] = self->_downloadURLExpirationTimeSeconds;
    *(v4 + 32) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = v10;
  if ((*&self->_has & 2) != 0)
  {
    *(v10 + 16) = self->_size;
    *(v10 + 32) |= 2u;
  }

  v13 = objc_msgSend_copyWithZone_(self->_downloadURL, v11, a3);
  v14 = *(v12 + 24);
  *(v12 + 24) = v13;

  if (*&self->_has)
  {
    *(v12 + 8) = self->_downloadURLExpirationTimeSeconds;
    *(v12 + 32) |= 1u;
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
  if ((has & 2) != 0)
  {
    if ((v4[4] & 2) == 0 || self->_size != v4[2])
    {
      goto LABEL_14;
    }
  }

  else if ((v4[4] & 2) != 0)
  {
    goto LABEL_14;
  }

  downloadURL = self->_downloadURL;
  v11 = v4[3];
  if (downloadURL | v11)
  {
    if (!objc_msgSend_isEqual_(downloadURL, v7, v11))
    {
LABEL_14:
      v12 = 0;
      goto LABEL_15;
    }

    has = self->_has;
    v9 = *(v4 + 32);
  }

  v12 = (v9 & 1) == 0;
  if (has)
  {
    if ((v9 & 1) == 0 || self->_downloadURLExpirationTimeSeconds != v4[1])
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
  if ((*&self->_has & 2) != 0)
  {
    v4 = 2654435761 * self->_size;
  }

  else
  {
    v4 = 0;
  }

  v5 = objc_msgSend_hash(self->_downloadURL, a2, v2);
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_downloadURLExpirationTimeSeconds;
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
  if ((v4[4] & 2) != 0)
  {
    self->_size = v4[2];
    *&self->_has |= 2u;
  }

  v6 = v4[3];
  if (v6)
  {
    v7 = v4;
    objc_msgSend_setDownloadURL_(self, v5, v6);
    v4 = v7;
  }

  if (v4[4])
  {
    self->_downloadURLExpirationTimeSeconds = v4[1];
    *&self->_has |= 1u;
  }
}

@end