@interface C2MPCloudKitOperationGroupInfo
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation C2MPCloudKitOperationGroupInfo

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  operationGroupId = self->_operationGroupId;
  if (operationGroupId)
  {
    [dictionary setObject:operationGroupId forKey:@"operation_group_id"];
  }

  operationGroupName = self->_operationGroupName;
  if (operationGroupName)
  {
    [v4 setObject:operationGroupName forKey:@"operation_group_name"];
  }

  if (*&self->_has)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_operationGroupTriggered];
    [v4 setObject:v7 forKey:@"operation_group_triggered"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = C2MPCloudKitOperationGroupInfo;
  v4 = [(C2MPCloudKitOperationGroupInfo *)&v8 description];
  dictionaryRepresentation = [(C2MPCloudKitOperationGroupInfo *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
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
    operationGroupTriggered = self->_operationGroupTriggered;
    PBDataWriterWriteBOOLField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_operationGroupId)
  {
    [toCopy setOperationGroupId:?];
    toCopy = v5;
  }

  if (self->_operationGroupName)
  {
    [v5 setOperationGroupName:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    toCopy[24] = self->_operationGroupTriggered;
    toCopy[28] |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_operationGroupId copyWithZone:zone];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  v8 = [(NSString *)self->_operationGroupName copyWithZone:zone];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  if (*&self->_has)
  {
    *(v5 + 24) = self->_operationGroupTriggered;
    *(v5 + 28) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_8;
  }

  operationGroupId = self->_operationGroupId;
  if (operationGroupId | *(equalCopy + 1))
  {
    if (![(NSString *)operationGroupId isEqual:?])
    {
      goto LABEL_8;
    }
  }

  operationGroupName = self->_operationGroupName;
  if (operationGroupName | *(equalCopy + 2))
  {
    if (![(NSString *)operationGroupName isEqual:?])
    {
      goto LABEL_8;
    }
  }

  v7 = (*(equalCopy + 28) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 28) & 1) == 0)
    {
LABEL_8:
      v7 = 0;
      goto LABEL_9;
    }

    if (self->_operationGroupTriggered)
    {
      if ((*(equalCopy + 24) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    else if (*(equalCopy + 24))
    {
      goto LABEL_8;
    }

    v7 = 1;
  }

LABEL_9:

  return v7;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_operationGroupId hash];
  v4 = [(NSString *)self->_operationGroupName hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_operationGroupTriggered;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 1))
  {
    [(C2MPCloudKitOperationGroupInfo *)self setOperationGroupId:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 2))
  {
    [(C2MPCloudKitOperationGroupInfo *)self setOperationGroupName:?];
    fromCopy = v5;
  }

  if (fromCopy[28])
  {
    self->_operationGroupTriggered = fromCopy[24];
    *&self->_has |= 1u;
  }
}

@end