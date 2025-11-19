@interface CKDPProtectionInfoKeysToRemoveProtectionInfoKey
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)keyTypeAsString:(int)a3;
- (int)StringAsKeyType:(id)a3;
- (int)keyType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation CKDPProtectionInfoKeysToRemoveProtectionInfoKey

- (int)keyType
{
  if (*&self->_has)
  {
    return self->_keyType;
  }

  else
  {
    return 1;
  }
}

- (id)keyTypeAsString:(int)a3
{
  if ((a3 - 1) >= 3)
  {
    v4 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"(unknown: %i)", a3);
  }

  else
  {
    v4 = off_27854C938[a3 - 1];
  }

  return v4;
}

- (int)StringAsKeyType:(id)a3
{
  v3 = a3;
  if (objc_msgSend_isEqualToString_(v3, v4, @"primary"))
  {
    v6 = 1;
  }

  else if (objc_msgSend_isEqualToString_(v3, v5, @"keyPair"))
  {
    v6 = 2;
  }

  else if (objc_msgSend_isEqualToString_(v3, v7, @"sharee"))
  {
    v6 = 3;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPProtectionInfoKeysToRemoveProtectionInfoKey;
  v4 = [(CKDPProtectionInfoKeysToRemoveProtectionInfoKey *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v4 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  v6 = v4;
  keyId = self->_keyId;
  if (keyId)
  {
    objc_msgSend_setObject_forKey_(v4, v5, keyId, @"keyId");
  }

  if (*&self->_has)
  {
    v8 = self->_keyType - 1;
    if (v8 >= 3)
    {
      v9 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v5, @"(unknown: %i)", self->_keyType);
    }

    else
    {
      v9 = off_27854C938[v8];
    }

    objc_msgSend_setObject_forKey_(v6, v5, v9, @"keyType");
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_keyId)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    keyType = self->_keyType;
    PBDataWriterWriteInt32Field();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  keyId = self->_keyId;
  if (keyId)
  {
    v7 = v4;
    objc_msgSend_setKeyId_(v4, v5, keyId);
    v4 = v7;
  }

  if (*&self->_has)
  {
    *(v4 + 4) = self->_keyType;
    *(v4 + 20) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_keyId, v11, a3);
  v13 = *(v10 + 8);
  *(v10 + 8) = v12;

  if (*&self->_has)
  {
    *(v10 + 16) = self->_keyType;
    *(v10 + 20) |= 1u;
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(v4, v6, v5))
  {
    goto LABEL_8;
  }

  keyId = self->_keyId;
  v9 = v4[1];
  if (keyId | v9)
  {
    if (!objc_msgSend_isEqual_(keyId, v7, v9))
    {
      goto LABEL_8;
    }
  }

  v10 = (*(v4 + 20) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 20) & 1) != 0 && self->_keyType == *(v4 + 4))
    {
      v10 = 1;
      goto LABEL_9;
    }

LABEL_8:
    v10 = 0;
  }

LABEL_9:

  return v10;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_hash(self->_keyId, a2, v2);
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_keyType;
  }

  else
  {
    v5 = 0;
  }

  return v5 ^ v4;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v6 = *(v4 + 1);
  if (v6)
  {
    v7 = v4;
    objc_msgSend_setKeyId_(self, v5, v6);
    v4 = v7;
  }

  if (*(v4 + 20))
  {
    self->_keyType = *(v4 + 4);
    *&self->_has |= 1u;
  }
}

@end