@interface CKDPResponseOperationResultErrorExtension
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation CKDPResponseOperationResultErrorExtension

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPResponseOperationResultErrorExtension;
  v4 = [(CKDPResponseOperationResultErrorExtension *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v4 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  v6 = v4;
  extensionName = self->_extensionName;
  if (extensionName)
  {
    objc_msgSend_setObject_forKey_(v4, v5, extensionName, @"extensionName");
  }

  if (*&self->_has)
  {
    v8 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v5, self->_typeCode);
    objc_msgSend_setObject_forKey_(v6, v9, v8, @"typeCode");
  }

  extensionPayload = self->_extensionPayload;
  if (extensionPayload)
  {
    objc_msgSend_setObject_forKey_(v6, v5, extensionPayload, @"extensionPayload");
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_extensionName)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    typeCode = self->_typeCode;
    PBDataWriterWriteUint32Field();
    v4 = v6;
  }

  if (self->_extensionPayload)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  extensionName = self->_extensionName;
  v8 = v4;
  if (extensionName)
  {
    objc_msgSend_setExtensionName_(v4, v5, extensionName);
    v4 = v8;
  }

  if (*&self->_has)
  {
    *(v4 + 6) = self->_typeCode;
    *(v4 + 28) |= 1u;
  }

  extensionPayload = self->_extensionPayload;
  if (extensionPayload)
  {
    objc_msgSend_setExtensionPayload_(v8, v5, extensionPayload);
    v4 = v8;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_extensionName, v11, a3);
  v13 = *(v10 + 8);
  *(v10 + 8) = v12;

  if (*&self->_has)
  {
    *(v10 + 24) = self->_typeCode;
    *(v10 + 28) |= 1u;
  }

  v15 = objc_msgSend_copyWithZone_(self->_extensionPayload, v14, a3);
  v16 = *(v10 + 16);
  *(v10 + 16) = v15;

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(v4, v6, v5))
  {
    goto LABEL_11;
  }

  extensionName = self->_extensionName;
  v9 = v4[1];
  if (extensionName | v9)
  {
    if (!objc_msgSend_isEqual_(extensionName, v7, v9))
    {
      goto LABEL_11;
    }
  }

  v10 = *(v4 + 28);
  if (*&self->_has)
  {
    if ((*(v4 + 28) & 1) == 0 || self->_typeCode != *(v4 + 6))
    {
      goto LABEL_11;
    }
  }

  else if (*(v4 + 28))
  {
LABEL_11:
    isEqual = 0;
    goto LABEL_12;
  }

  extensionPayload = self->_extensionPayload;
  v12 = v4[2];
  if (extensionPayload | v12)
  {
    isEqual = objc_msgSend_isEqual_(extensionPayload, v7, v12);
  }

  else
  {
    isEqual = 1;
  }

LABEL_12:

  return isEqual;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_hash(self->_extensionName, a2, v2);
  if (*&self->_has)
  {
    v7 = 2654435761 * self->_typeCode;
  }

  else
  {
    v7 = 0;
  }

  return v7 ^ v4 ^ objc_msgSend_hash(self->_extensionPayload, v5, v6);
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v6 = *(v4 + 1);
  v8 = v4;
  if (v6)
  {
    objc_msgSend_setExtensionName_(self, v5, v6);
    v4 = v8;
  }

  if (*(v4 + 28))
  {
    self->_typeCode = *(v4 + 6);
    *&self->_has |= 1u;
  }

  v7 = *(v4 + 2);
  if (v7)
  {
    objc_msgSend_setExtensionPayload_(self, v5, v7);
    v4 = v8;
  }
}

@end