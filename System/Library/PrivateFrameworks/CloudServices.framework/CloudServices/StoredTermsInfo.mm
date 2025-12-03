@interface StoredTermsInfo
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation StoredTermsInfo

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = StoredTermsInfo;
  v4 = [(StoredTermsInfo *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v6 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  if (*&self->_has)
  {
    v7 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v4, self->_storageVersion);
    objc_msgSend_setObject_forKey_(v6, v8, v7, @"storageVersion");
  }

  termsInfo = self->_termsInfo;
  if (termsInfo)
  {
    v10 = objc_msgSend_dictionaryRepresentation(termsInfo, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v11, v10, @"termsInfo");
  }

  return v6;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (*&self->_has)
  {
    storageVersion = self->_storageVersion;
    PBDataWriterWriteUint64Field();
    toCopy = v6;
  }

  if (self->_termsInfo)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[1] = self->_storageVersion;
    *(toCopy + 24) |= 1u;
  }

  termsInfo = self->_termsInfo;
  if (termsInfo)
  {
    v7 = toCopy;
    objc_msgSend_setTermsInfo_(toCopy, v5, termsInfo);
    toCopy = v7;
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
    *(v10 + 8) = self->_storageVersion;
    *(v10 + 24) |= 1u;
  }

  v13 = objc_msgSend_copyWithZone_(self->_termsInfo, v11, zone);
  v14 = v12[2];
  v12[2] = v13;

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(equalCopy, v6, v5))
  {
    goto LABEL_9;
  }

  v8 = *(equalCopy + 24);
  if (*&self->_has)
  {
    if ((equalCopy[3] & 1) == 0 || self->_storageVersion != equalCopy[1])
    {
      goto LABEL_9;
    }
  }

  else if (equalCopy[3])
  {
LABEL_9:
    isEqual = 0;
    goto LABEL_10;
  }

  termsInfo = self->_termsInfo;
  v10 = equalCopy[2];
  if (termsInfo | v10)
  {
    isEqual = objc_msgSend_isEqual_(termsInfo, v7, v10);
  }

  else
  {
    isEqual = 1;
  }

LABEL_10:

  return isEqual;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761u * self->_storageVersion;
  }

  else
  {
    v3 = 0;
  }

  return objc_msgSend_hash(self->_termsInfo, a2, v2) ^ v3;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[24])
  {
    self->_storageVersion = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  termsInfo = self->_termsInfo;
  v7 = *(v5 + 2);
  if (termsInfo)
  {
    if (v7)
    {
      objc_msgSend_mergeFrom_(termsInfo, v5, v7);
    }
  }

  else if (v7)
  {
    objc_msgSend_setTermsInfo_(self, v5, v7);
  }

  MEMORY[0x2821F96F8]();
}

@end