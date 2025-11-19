@interface StoredTermsInfo
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*&self->_has)
  {
    storageVersion = self->_storageVersion;
    PBDataWriterWriteUint64Field();
    v4 = v6;
  }

  if (self->_termsInfo)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[1] = self->_storageVersion;
    *(v4 + 24) |= 1u;
  }

  termsInfo = self->_termsInfo;
  if (termsInfo)
  {
    v7 = v4;
    objc_msgSend_setTermsInfo_(v4, v5, termsInfo);
    v4 = v7;
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
    *(v10 + 8) = self->_storageVersion;
    *(v10 + 24) |= 1u;
  }

  v13 = objc_msgSend_copyWithZone_(self->_termsInfo, v11, a3);
  v14 = v12[2];
  v12[2] = v13;

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(v4, v6, v5))
  {
    goto LABEL_9;
  }

  v8 = *(v4 + 24);
  if (*&self->_has)
  {
    if ((v4[3] & 1) == 0 || self->_storageVersion != v4[1])
    {
      goto LABEL_9;
    }
  }

  else if (v4[3])
  {
LABEL_9:
    isEqual = 0;
    goto LABEL_10;
  }

  termsInfo = self->_termsInfo;
  v10 = v4[2];
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[24])
  {
    self->_storageVersion = *(v4 + 1);
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