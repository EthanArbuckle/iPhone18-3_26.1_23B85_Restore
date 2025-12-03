@interface CKDPSignedVersionedBlob
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasCanValidateWithKT:(BOOL)t;
- (void)writeTo:(id)to;
@end

@implementation CKDPSignedVersionedBlob

- (void)setHasCanValidateWithKT:(BOOL)t
{
  if (t)
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
  v11.super_class = CKDPSignedVersionedBlob;
  v4 = [(CKDPSignedVersionedBlob *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v5 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  if (*&self->_has)
  {
    v6 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v4, self->_version);
    objc_msgSend_setObject_forKey_(v5, v7, v6, @"version");
  }

  signature = self->_signature;
  if (signature)
  {
    objc_msgSend_setObject_forKey_(v5, v4, signature, @"signature");
  }

  serializedObject = self->_serializedObject;
  if (serializedObject)
  {
    objc_msgSend_setObject_forKey_(v5, v4, serializedObject, @"serializedObject");
  }

  if ((*&self->_has & 2) != 0)
  {
    v10 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v4, self->_canValidateWithKT);
    objc_msgSend_setObject_forKey_(v5, v11, v10, @"canValidateWithKT");
  }

  return v5;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    version = self->_version;
    PBDataWriterWriteInt32Field();
  }

  if (self->_signature)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_serializedObject)
  {
    PBDataWriterWriteDataField();
  }

  if ((*&self->_has & 2) != 0)
  {
    canValidateWithKT = self->_canValidateWithKT;
    PBDataWriterWriteBOOLField();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[6] = self->_version;
    *(toCopy + 32) |= 1u;
  }

  signature = self->_signature;
  v8 = toCopy;
  if (signature)
  {
    objc_msgSend_setSignature_(toCopy, v5, signature);
    toCopy = v8;
  }

  serializedObject = self->_serializedObject;
  if (serializedObject)
  {
    objc_msgSend_setSerializedObject_(v8, v5, serializedObject);
    toCopy = v8;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(toCopy + 28) = self->_canValidateWithKT;
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
    *(v10 + 24) = self->_version;
    *(v10 + 32) |= 1u;
  }

  v13 = objc_msgSend_copyWithZone_(self->_signature, v11, zone);
  v14 = *(v12 + 16);
  *(v12 + 16) = v13;

  v16 = objc_msgSend_copyWithZone_(self->_serializedObject, v15, zone);
  v17 = *(v12 + 8);
  *(v12 + 8) = v16;

  if ((*&self->_has & 2) != 0)
  {
    *(v12 + 28) = self->_canValidateWithKT;
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
    goto LABEL_13;
  }

  v8 = *(equalCopy + 32);
  if (*&self->_has)
  {
    if ((equalCopy[4] & 1) == 0 || self->_version != *(equalCopy + 6))
    {
      goto LABEL_13;
    }
  }

  else if (equalCopy[4])
  {
    goto LABEL_13;
  }

  signature = self->_signature;
  v10 = equalCopy[2];
  if (signature | v10 && !objc_msgSend_isEqual_(signature, v7, v10))
  {
    goto LABEL_13;
  }

  serializedObject = self->_serializedObject;
  v12 = equalCopy[1];
  if (serializedObject | v12)
  {
    if (!objc_msgSend_isEqual_(serializedObject, v7, v12))
    {
      goto LABEL_13;
    }
  }

  v13 = (equalCopy[4] & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((equalCopy[4] & 2) == 0)
    {
LABEL_13:
      v13 = 0;
      goto LABEL_14;
    }

    if (self->_canValidateWithKT)
    {
      if ((*(equalCopy + 28) & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else if (*(equalCopy + 28))
    {
      goto LABEL_13;
    }

    v13 = 1;
  }

LABEL_14:

  return v13;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_version;
  }

  else
  {
    v4 = 0;
  }

  v5 = objc_msgSend_hash(self->_signature, a2, v2);
  v8 = objc_msgSend_hash(self->_serializedObject, v6, v7);
  if ((*&self->_has & 2) != 0)
  {
    v9 = 2654435761 * self->_canValidateWithKT;
  }

  else
  {
    v9 = 0;
  }

  return v5 ^ v4 ^ v8 ^ v9;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (*(fromCopy + 32))
  {
    self->_version = *(fromCopy + 6);
    *&self->_has |= 1u;
  }

  v6 = *(fromCopy + 2);
  v8 = fromCopy;
  if (v6)
  {
    objc_msgSend_setSignature_(self, v5, v6);
    fromCopy = v8;
  }

  v7 = *(fromCopy + 1);
  if (v7)
  {
    objc_msgSend_setSerializedObject_(self, v5, v7);
    fromCopy = v8;
  }

  if ((*(fromCopy + 32) & 2) != 0)
  {
    self->_canValidateWithKT = *(fromCopy + 28);
    *&self->_has |= 2u;
  }
}

@end