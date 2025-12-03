@interface CKDPStreamingAssetRetrieveAssetResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasSize:(BOOL)size;
- (void)writeTo:(id)to;
@end

@implementation CKDPStreamingAssetRetrieveAssetResponse

- (void)setHasSize:(BOOL)size
{
  if (size)
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

- (void)writeTo:(id)to
{
  toCopy = to;
  v7 = toCopy;
  if ((*&self->_has & 2) != 0)
  {
    size = self->_size;
    PBDataWriterWriteInt64Field();
    toCopy = v7;
  }

  if (self->_downloadURL)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  if (*&self->_has)
  {
    downloadURLExpirationTimeSeconds = self->_downloadURLExpirationTimeSeconds;
    PBDataWriterWriteInt64Field();
    toCopy = v7;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 2) != 0)
  {
    toCopy[2] = self->_size;
    *(toCopy + 32) |= 2u;
  }

  downloadURL = self->_downloadURL;
  if (downloadURL)
  {
    v7 = toCopy;
    objc_msgSend_setDownloadURL_(toCopy, v5, downloadURL);
    toCopy = v7;
  }

  if (*&self->_has)
  {
    toCopy[1] = self->_downloadURLExpirationTimeSeconds;
    *(toCopy + 32) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = v10;
  if ((*&self->_has & 2) != 0)
  {
    *(v10 + 16) = self->_size;
    *(v10 + 32) |= 2u;
  }

  v13 = objc_msgSend_copyWithZone_(self->_downloadURL, v11, zone);
  v14 = *(v12 + 24);
  *(v12 + 24) = v13;

  if (*&self->_has)
  {
    *(v12 + 8) = self->_downloadURLExpirationTimeSeconds;
    *(v12 + 32) |= 1u;
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
  if ((has & 2) != 0)
  {
    if ((equalCopy[4] & 2) == 0 || self->_size != equalCopy[2])
    {
      goto LABEL_14;
    }
  }

  else if ((equalCopy[4] & 2) != 0)
  {
    goto LABEL_14;
  }

  downloadURL = self->_downloadURL;
  v11 = equalCopy[3];
  if (downloadURL | v11)
  {
    if (!objc_msgSend_isEqual_(downloadURL, v7, v11))
    {
LABEL_14:
      v12 = 0;
      goto LABEL_15;
    }

    has = self->_has;
    v9 = *(equalCopy + 32);
  }

  v12 = (v9 & 1) == 0;
  if (has)
  {
    if ((v9 & 1) == 0 || self->_downloadURLExpirationTimeSeconds != equalCopy[1])
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if ((fromCopy[4] & 2) != 0)
  {
    self->_size = fromCopy[2];
    *&self->_has |= 2u;
  }

  v6 = fromCopy[3];
  if (v6)
  {
    v7 = fromCopy;
    objc_msgSend_setDownloadURL_(self, v5, v6);
    fromCopy = v7;
  }

  if (fromCopy[4])
  {
    self->_downloadURLExpirationTimeSeconds = fromCopy[1];
    *&self->_has |= 1u;
  }
}

@end