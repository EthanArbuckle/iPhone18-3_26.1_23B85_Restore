@interface CKCDPCodeServiceRequestOperationGroup
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation CKCDPCodeServiceRequestOperationGroup

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKCDPCodeServiceRequestOperationGroup;
  v4 = [(CKCDPCodeServiceRequestOperationGroup *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v4 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  v6 = v4;
  operationId = self->_operationId;
  if (operationId)
  {
    objc_msgSend_setObject_forKey_(v4, v5, operationId, @"operationId");
  }

  operationGroupId = self->_operationGroupId;
  if (operationGroupId)
  {
    objc_msgSend_setObject_forKey_(v6, v5, operationGroupId, @"operationGroupId");
  }

  operationGroupName = self->_operationGroupName;
  if (operationGroupName)
  {
    objc_msgSend_setObject_forKey_(v6, v5, operationGroupName, @"operationGroupName");
  }

  if (*&self->_has)
  {
    v10 = objc_msgSend_numberWithLongLong_(MEMORY[0x277CCABB0], v5, self->_operationGroupQuantity);
    objc_msgSend_setObject_forKey_(v6, v11, v10, @"operationGroupQuantity");
  }

  return v6;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_operationId)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_operationGroupId)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_operationGroupName)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    operationGroupQuantity = self->_operationGroupQuantity;
    PBDataWriterWriteInt64Field();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  operationId = self->_operationId;
  v9 = toCopy;
  if (operationId)
  {
    objc_msgSend_setOperationId_(toCopy, v5, operationId);
    toCopy = v9;
  }

  operationGroupId = self->_operationGroupId;
  if (operationGroupId)
  {
    objc_msgSend_setOperationGroupId_(v9, v5, operationGroupId);
    toCopy = v9;
  }

  operationGroupName = self->_operationGroupName;
  if (operationGroupName)
  {
    objc_msgSend_setOperationGroupName_(v9, v5, operationGroupName);
    toCopy = v9;
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = self->_operationGroupQuantity;
    *(toCopy + 40) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_operationId, v11, zone);
  v13 = *(v10 + 32);
  *(v10 + 32) = v12;

  v15 = objc_msgSend_copyWithZone_(self->_operationGroupId, v14, zone);
  v16 = *(v10 + 16);
  *(v10 + 16) = v15;

  v18 = objc_msgSend_copyWithZone_(self->_operationGroupName, v17, zone);
  v19 = *(v10 + 24);
  *(v10 + 24) = v18;

  if (*&self->_has)
  {
    *(v10 + 8) = self->_operationGroupQuantity;
    *(v10 + 40) |= 1u;
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(equalCopy, v6, v5))
  {
    goto LABEL_12;
  }

  operationId = self->_operationId;
  v9 = equalCopy[4];
  if (operationId | v9)
  {
    if (!objc_msgSend_isEqual_(operationId, v7, v9))
    {
      goto LABEL_12;
    }
  }

  operationGroupId = self->_operationGroupId;
  v11 = equalCopy[2];
  if (operationGroupId | v11)
  {
    if (!objc_msgSend_isEqual_(operationGroupId, v7, v11))
    {
      goto LABEL_12;
    }
  }

  operationGroupName = self->_operationGroupName;
  v13 = equalCopy[3];
  if (operationGroupName | v13)
  {
    if (!objc_msgSend_isEqual_(operationGroupName, v7, v13))
    {
      goto LABEL_12;
    }
  }

  v14 = (equalCopy[5] & 1) == 0;
  if (*&self->_has)
  {
    if ((equalCopy[5] & 1) != 0 && self->_operationGroupQuantity == equalCopy[1])
    {
      v14 = 1;
      goto LABEL_13;
    }

LABEL_12:
    v14 = 0;
  }

LABEL_13:

  return v14;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_hash(self->_operationId, a2, v2);
  v7 = objc_msgSend_hash(self->_operationGroupId, v5, v6);
  v10 = objc_msgSend_hash(self->_operationGroupName, v8, v9);
  if (*&self->_has)
  {
    v11 = 2654435761 * self->_operationGroupQuantity;
  }

  else
  {
    v11 = 0;
  }

  return v7 ^ v4 ^ v10 ^ v11;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v6 = fromCopy[4];
  v9 = fromCopy;
  if (v6)
  {
    objc_msgSend_setOperationId_(self, v5, v6);
    fromCopy = v9;
  }

  v7 = fromCopy[2];
  if (v7)
  {
    objc_msgSend_setOperationGroupId_(self, v5, v7);
    fromCopy = v9;
  }

  v8 = fromCopy[3];
  if (v8)
  {
    objc_msgSend_setOperationGroupName_(self, v5, v8);
    fromCopy = v9;
  }

  if (fromCopy[5])
  {
    self->_operationGroupQuantity = fromCopy[1];
    *&self->_has |= 1u;
  }
}

@end