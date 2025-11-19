@interface C2MPCloudKitOperationGroupInfo
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation C2MPCloudKitOperationGroupInfo

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  operationGroupId = self->_operationGroupId;
  if (operationGroupId)
  {
    [v3 setObject:operationGroupId forKey:@"operation_group_id"];
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
  v5 = [(C2MPCloudKitOperationGroupInfo *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_operationGroupId)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_operationGroupName)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    operationGroupTriggered = self->_operationGroupTriggered;
    PBDataWriterWriteBOOLField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_operationGroupId)
  {
    [v4 setOperationGroupId:?];
    v4 = v5;
  }

  if (self->_operationGroupName)
  {
    [v5 setOperationGroupName:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    v4[24] = self->_operationGroupTriggered;
    v4[28] |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_operationGroupId copyWithZone:a3];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  v8 = [(NSString *)self->_operationGroupName copyWithZone:a3];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  if (*&self->_has)
  {
    *(v5 + 24) = self->_operationGroupTriggered;
    *(v5 + 28) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_8;
  }

  operationGroupId = self->_operationGroupId;
  if (operationGroupId | *(v4 + 1))
  {
    if (![(NSString *)operationGroupId isEqual:?])
    {
      goto LABEL_8;
    }
  }

  operationGroupName = self->_operationGroupName;
  if (operationGroupName | *(v4 + 2))
  {
    if (![(NSString *)operationGroupName isEqual:?])
    {
      goto LABEL_8;
    }
  }

  v7 = (*(v4 + 28) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 28) & 1) == 0)
    {
LABEL_8:
      v7 = 0;
      goto LABEL_9;
    }

    if (self->_operationGroupTriggered)
    {
      if ((*(v4 + 24) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    else if (*(v4 + 24))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 1))
  {
    [(C2MPCloudKitOperationGroupInfo *)self setOperationGroupId:?];
    v4 = v5;
  }

  if (*(v4 + 2))
  {
    [(C2MPCloudKitOperationGroupInfo *)self setOperationGroupName:?];
    v4 = v5;
  }

  if (v4[28])
  {
    self->_operationGroupTriggered = v4[24];
    *&self->_has |= 1u;
  }
}

@end