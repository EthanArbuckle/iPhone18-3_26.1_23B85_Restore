@interface CKDPStreamingAssetSaveAssetRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasUploadedSize:(BOOL)size;
- (void)writeTo:(id)to;
@end

@implementation CKDPStreamingAssetSaveAssetRequest

- (void)setHasUploadedSize:(BOOL)size
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
  v11.super_class = CKDPStreamingAssetSaveAssetRequest;
  v4 = [(CKDPStreamingAssetSaveAssetRequest *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v5 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  has = self->_has;
  if (has)
  {
    v7 = objc_msgSend_numberWithLongLong_(MEMORY[0x277CCABB0], v4, self->_requestedSize);
    objc_msgSend_setObject_forKey_(v5, v8, v7, @"requestedSize");

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v9 = objc_msgSend_numberWithLongLong_(MEMORY[0x277CCABB0], v4, self->_uploadedSize);
    objc_msgSend_setObject_forKey_(v5, v10, v9, @"uploadedSize");
  }

  uploadReceipt = self->_uploadReceipt;
  if (uploadReceipt)
  {
    objc_msgSend_setObject_forKey_(v5, v4, uploadReceipt, @"uploadReceipt");
  }

  return v5;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v8 = toCopy;
  if (has)
  {
    requestedSize = self->_requestedSize;
    PBDataWriterWriteInt64Field();
    toCopy = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    uploadedSize = self->_uploadedSize;
    PBDataWriterWriteInt64Field();
    toCopy = v8;
  }

  if (self->_uploadReceipt)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[1] = self->_requestedSize;
    *(toCopy + 32) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    toCopy[2] = self->_uploadedSize;
    *(toCopy + 32) |= 2u;
  }

  uploadReceipt = self->_uploadReceipt;
  if (uploadReceipt)
  {
    v8 = toCopy;
    objc_msgSend_setUploadReceipt_(toCopy, v5, uploadReceipt);
    toCopy = v8;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = v10;
  has = self->_has;
  if (has)
  {
    *(v10 + 8) = self->_requestedSize;
    *(v10 + 32) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v10 + 16) = self->_uploadedSize;
    *(v10 + 32) |= 2u;
  }

  v14 = objc_msgSend_copyWithZone_(self->_uploadReceipt, v11, zone);
  v15 = v12[3];
  v12[3] = v14;

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

  v8 = *(equalCopy + 32);
  if (*&self->_has)
  {
    if ((equalCopy[4] & 1) == 0 || self->_requestedSize != equalCopy[1])
    {
      goto LABEL_14;
    }
  }

  else if (equalCopy[4])
  {
LABEL_14:
    isEqual = 0;
    goto LABEL_15;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((equalCopy[4] & 2) == 0 || self->_uploadedSize != equalCopy[2])
    {
      goto LABEL_14;
    }
  }

  else if ((equalCopy[4] & 2) != 0)
  {
    goto LABEL_14;
  }

  uploadReceipt = self->_uploadReceipt;
  v10 = equalCopy[3];
  if (uploadReceipt | v10)
  {
    isEqual = objc_msgSend_isEqual_(uploadReceipt, v7, v10);
  }

  else
  {
    isEqual = 1;
  }

LABEL_15:

  return isEqual;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_requestedSize;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v4 = 0;
    return v4 ^ v3 ^ objc_msgSend_hash(self->_uploadReceipt, a2, v2);
  }

  v3 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v4 = 2654435761 * self->_uploadedSize;
  return v4 ^ v3 ^ objc_msgSend_hash(self->_uploadReceipt, a2, v2);
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v6 = *(fromCopy + 32);
  if (v6)
  {
    self->_requestedSize = *(fromCopy + 1);
    *&self->_has |= 1u;
    v6 = *(fromCopy + 32);
  }

  if ((v6 & 2) != 0)
  {
    self->_uploadedSize = *(fromCopy + 2);
    *&self->_has |= 2u;
  }

  v7 = *(fromCopy + 3);
  if (v7)
  {
    v8 = fromCopy;
    objc_msgSend_setUploadReceipt_(self, v5, v7);
    fromCopy = v8;
  }
}

@end