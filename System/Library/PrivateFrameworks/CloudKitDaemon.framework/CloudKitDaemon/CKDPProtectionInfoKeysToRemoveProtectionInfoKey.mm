@interface CKDPProtectionInfoKeysToRemoveProtectionInfoKey
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)keyTypeAsString:(int)string;
- (int)StringAsKeyType:(id)type;
- (int)keyType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
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

- (id)keyTypeAsString:(int)string
{
  if ((string - 1) >= 3)
  {
    v4 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"(unknown: %i)", string);
  }

  else
  {
    v4 = off_27854C938[string - 1];
  }

  return v4;
}

- (int)StringAsKeyType:(id)type
{
  typeCopy = type;
  if (objc_msgSend_isEqualToString_(typeCopy, v4, @"primary"))
  {
    v6 = 1;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v5, @"keyPair"))
  {
    v6 = 2;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v7, @"sharee"))
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

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_keyId)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    keyType = self->_keyType;
    PBDataWriterWriteInt32Field();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  keyId = self->_keyId;
  if (keyId)
  {
    v7 = toCopy;
    objc_msgSend_setKeyId_(toCopy, v5, keyId);
    toCopy = v7;
  }

  if (*&self->_has)
  {
    *(toCopy + 4) = self->_keyType;
    *(toCopy + 20) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_keyId, v11, zone);
  v13 = *(v10 + 8);
  *(v10 + 8) = v12;

  if (*&self->_has)
  {
    *(v10 + 16) = self->_keyType;
    *(v10 + 20) |= 1u;
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(equalCopy, v6, v5))
  {
    goto LABEL_8;
  }

  keyId = self->_keyId;
  v9 = equalCopy[1];
  if (keyId | v9)
  {
    if (!objc_msgSend_isEqual_(keyId, v7, v9))
    {
      goto LABEL_8;
    }
  }

  v10 = (*(equalCopy + 20) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 20) & 1) != 0 && self->_keyType == *(equalCopy + 4))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v6 = *(fromCopy + 1);
  if (v6)
  {
    v7 = fromCopy;
    objc_msgSend_setKeyId_(self, v5, v6);
    fromCopy = v7;
  }

  if (*(fromCopy + 20))
  {
    self->_keyType = *(fromCopy + 4);
    *&self->_has |= 1u;
  }
}

@end