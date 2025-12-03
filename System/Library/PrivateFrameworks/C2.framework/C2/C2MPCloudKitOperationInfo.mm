@interface C2MPCloudKitOperationInfo
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasOperationTriggered:(BOOL)triggered;
- (void)writeTo:(id)to;
@end

@implementation C2MPCloudKitOperationInfo

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  operationId = self->_operationId;
  if (operationId)
  {
    [dictionary setObject:operationId forKey:@"operation_id"];
  }

  operationType = self->_operationType;
  if (operationType)
  {
    [v4 setObject:operationType forKey:@"operation_type"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithBool:self->_operationTriggered];
    [v4 setObject:v8 forKey:@"operation_triggered"];

    has = self->_has;
  }

  if (has)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_operationGroupIndex];
    [v4 setObject:v9 forKey:@"operation_group_index"];
  }

  return v4;
}

- (void)setHasOperationTriggered:(BOOL)triggered
{
  if (triggered)
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
  v8.receiver = self;
  v8.super_class = C2MPCloudKitOperationInfo;
  v4 = [(C2MPCloudKitOperationInfo *)&v8 description];
  dictionaryRepresentation = [(C2MPCloudKitOperationInfo *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v8 = toCopy;
  if (self->_operationId)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  if (self->_operationType)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    operationTriggered = self->_operationTriggered;
    PBDataWriterWriteBOOLField();
    toCopy = v8;
    has = self->_has;
  }

  if (has)
  {
    operationGroupIndex = self->_operationGroupIndex;
    PBDataWriterWriteUint32Field();
    toCopy = v8;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_operationId)
  {
    [toCopy setOperationId:?];
    toCopy = v6;
  }

  if (self->_operationType)
  {
    [v6 setOperationType:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(toCopy + 32) = self->_operationTriggered;
    *(toCopy + 36) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(toCopy + 2) = self->_operationGroupIndex;
    *(toCopy + 36) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_operationId copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSString *)self->_operationType copyWithZone:zone];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 32) = self->_operationTriggered;
    *(v5 + 36) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 8) = self->_operationGroupIndex;
    *(v5 + 36) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  operationId = self->_operationId;
  if (operationId | *(equalCopy + 2))
  {
    if (![(NSString *)operationId isEqual:?])
    {
      goto LABEL_13;
    }
  }

  operationType = self->_operationType;
  if (operationType | *(equalCopy + 3))
  {
    if (![(NSString *)operationType isEqual:?])
    {
      goto LABEL_13;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 36) & 2) == 0)
    {
      goto LABEL_13;
    }

    v9 = *(equalCopy + 32);
    if (self->_operationTriggered)
    {
      if ((*(equalCopy + 32) & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else if (*(equalCopy + 32))
    {
      goto LABEL_13;
    }
  }

  else if ((*(equalCopy + 36) & 2) != 0)
  {
    goto LABEL_13;
  }

  v7 = (*(equalCopy + 36) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 36) & 1) != 0 && self->_operationGroupIndex == *(equalCopy + 2))
    {
      v7 = 1;
      goto LABEL_14;
    }

LABEL_13:
    v7 = 0;
  }

LABEL_14:

  return v7;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_operationId hash];
  v4 = [(NSString *)self->_operationType hash];
  if ((*&self->_has & 2) != 0)
  {
    v5 = 2654435761 * self->_operationTriggered;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    return v4 ^ v3 ^ v5 ^ v6;
  }

  v5 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = 2654435761 * self->_operationGroupIndex;
  return v4 ^ v3 ^ v5 ^ v6;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v6 = fromCopy;
  if (*(fromCopy + 2))
  {
    [(C2MPCloudKitOperationInfo *)self setOperationId:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 3))
  {
    [(C2MPCloudKitOperationInfo *)self setOperationType:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 36);
  if ((v5 & 2) != 0)
  {
    self->_operationTriggered = *(fromCopy + 32);
    *&self->_has |= 2u;
    v5 = *(fromCopy + 36);
  }

  if (v5)
  {
    self->_operationGroupIndex = *(fromCopy + 2);
    *&self->_has |= 1u;
  }
}

@end