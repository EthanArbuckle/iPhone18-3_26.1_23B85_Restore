@interface CKDPSignedVersionedBlob
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasCanValidateWithKT:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation CKDPSignedVersionedBlob

- (void)setHasCanValidateWithKT:(BOOL)a3
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

- (void)writeTo:(id)a3
{
  v6 = a3;
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

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[6] = self->_version;
    *(v4 + 32) |= 1u;
  }

  signature = self->_signature;
  v8 = v4;
  if (signature)
  {
    objc_msgSend_setSignature_(v4, v5, signature);
    v4 = v8;
  }

  serializedObject = self->_serializedObject;
  if (serializedObject)
  {
    objc_msgSend_setSerializedObject_(v8, v5, serializedObject);
    v4 = v8;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v4 + 28) = self->_canValidateWithKT;
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
    *(v10 + 24) = self->_version;
    *(v10 + 32) |= 1u;
  }

  v13 = objc_msgSend_copyWithZone_(self->_signature, v11, a3);
  v14 = *(v12 + 16);
  *(v12 + 16) = v13;

  v16 = objc_msgSend_copyWithZone_(self->_serializedObject, v15, a3);
  v17 = *(v12 + 8);
  *(v12 + 8) = v16;

  if ((*&self->_has & 2) != 0)
  {
    *(v12 + 28) = self->_canValidateWithKT;
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
    goto LABEL_13;
  }

  v8 = *(v4 + 32);
  if (*&self->_has)
  {
    if ((v4[4] & 1) == 0 || self->_version != *(v4 + 6))
    {
      goto LABEL_13;
    }
  }

  else if (v4[4])
  {
    goto LABEL_13;
  }

  signature = self->_signature;
  v10 = v4[2];
  if (signature | v10 && !objc_msgSend_isEqual_(signature, v7, v10))
  {
    goto LABEL_13;
  }

  serializedObject = self->_serializedObject;
  v12 = v4[1];
  if (serializedObject | v12)
  {
    if (!objc_msgSend_isEqual_(serializedObject, v7, v12))
    {
      goto LABEL_13;
    }
  }

  v13 = (v4[4] & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((v4[4] & 2) == 0)
    {
LABEL_13:
      v13 = 0;
      goto LABEL_14;
    }

    if (self->_canValidateWithKT)
    {
      if ((*(v4 + 28) & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else if (*(v4 + 28))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (*(v4 + 32))
  {
    self->_version = *(v4 + 6);
    *&self->_has |= 1u;
  }

  v6 = *(v4 + 2);
  v8 = v4;
  if (v6)
  {
    objc_msgSend_setSignature_(self, v5, v6);
    v4 = v8;
  }

  v7 = *(v4 + 1);
  if (v7)
  {
    objc_msgSend_setSerializedObject_(self, v5, v7);
    v4 = v8;
  }

  if ((*(v4 + 32) & 2) != 0)
  {
    self->_canValidateWithKT = *(v4 + 28);
    *&self->_has |= 2u;
  }
}

@end