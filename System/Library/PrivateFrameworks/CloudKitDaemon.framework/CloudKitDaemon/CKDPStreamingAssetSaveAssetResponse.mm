@interface CKDPStreamingAssetSaveAssetResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasUploadURLExpirationTimeSeconds:(BOOL)seconds;
- (void)writeTo:(id)to;
@end

@implementation CKDPStreamingAssetSaveAssetResponse

- (void)setHasUploadURLExpirationTimeSeconds:(BOOL)seconds
{
  if (seconds)
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

- (void)writeTo:(id)to
{
  toCopy = to;
  v7 = toCopy;
  if (*&self->_has)
  {
    reservedSize = self->_reservedSize;
    PBDataWriterWriteInt64Field();
    toCopy = v7;
  }

  if (self->_uploadURL)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  if ((*&self->_has & 2) != 0)
  {
    uploadURLExpirationTimeSeconds = self->_uploadURLExpirationTimeSeconds;
    PBDataWriterWriteInt64Field();
    toCopy = v7;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[1] = self->_reservedSize;
    *(toCopy + 32) |= 1u;
  }

  uploadURL = self->_uploadURL;
  if (uploadURL)
  {
    v7 = toCopy;
    objc_msgSend_setUploadURL_(toCopy, v5, uploadURL);
    toCopy = v7;
  }

  if ((*&self->_has & 2) != 0)
  {
    toCopy[2] = self->_uploadURLExpirationTimeSeconds;
    *(toCopy + 32) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = v10;
  if (*&self->_has)
  {
    *(v10 + 8) = self->_reservedSize;
    *(v10 + 32) |= 1u;
  }

  v13 = objc_msgSend_copyWithZone_(self->_uploadURL, v11, zone);
  v14 = *(v12 + 24);
  *(v12 + 24) = v13;

  if ((*&self->_has & 2) != 0)
  {
    *(v12 + 16) = self->_uploadURLExpirationTimeSeconds;
    *(v12 + 32) |= 2u;
  }

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(equalCopy, v6, v5))
  {
    goto LABEL_14;
  }

  has = self->_has;
  v9 = *(equalCopy + 32);
  if (has)
  {
    if ((equalCopy[4] & 1) == 0 || self->_reservedSize != equalCopy[1])
    {
      goto LABEL_14;
    }
  }

  else if (equalCopy[4])
  {
    goto LABEL_14;
  }

  uploadURL = self->_uploadURL;
  v11 = equalCopy[3];
  if (uploadURL | v11)
  {
    if (!objc_msgSend_isEqual_(uploadURL, v7, v11))
    {
LABEL_14:
      v12 = 0;
      goto LABEL_15;
    }

    has = self->_has;
    v9 = *(equalCopy + 32);
  }

  v12 = (v9 & 2) == 0;
  if ((has & 2) != 0)
  {
    if ((v9 & 2) == 0 || self->_uploadURLExpirationTimeSeconds != equalCopy[2])
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[4])
  {
    self->_reservedSize = fromCopy[1];
    *&self->_has |= 1u;
  }

  v6 = fromCopy[3];
  if (v6)
  {
    v7 = fromCopy;
    objc_msgSend_setUploadURL_(self, v5, v6);
    fromCopy = v7;
  }

  if ((fromCopy[4] & 2) != 0)
  {
    self->_uploadURLExpirationTimeSeconds = fromCopy[2];
    *&self->_has |= 2u;
  }
}

@end