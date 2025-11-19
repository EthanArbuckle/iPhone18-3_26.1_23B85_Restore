@interface NPKProtoPrepareProvisioningTargetResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKProtoPrepareProvisioningTargetResponse

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoPrepareProvisioningTargetResponse;
  v4 = [(NPKProtoPrepareProvisioningTargetResponse *)&v8 description];
  v5 = [(NPKProtoPrepareProvisioningTargetResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  encryptedTargetData = self->_encryptedTargetData;
  if (encryptedTargetData)
  {
    [v3 setObject:encryptedTargetData forKey:@"encryptedTargetData"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_wasFamilyCircle];
    [v4 setObject:v6 forKey:@"wasFamilyCircle"];
  }

  errorData = self->_errorData;
  if (errorData)
  {
    [v4 setObject:errorData forKey:@"errorData"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_encryptedTargetData)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    wasFamilyCircle = self->_wasFamilyCircle;
    PBDataWriterWriteBOOLField();
    v4 = v6;
  }

  if (self->_errorData)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_encryptedTargetData)
  {
    [v4 setEncryptedTargetData:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    v4[24] = self->_wasFamilyCircle;
    v4[28] |= 1u;
  }

  if (self->_errorData)
  {
    [v5 setErrorData:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_encryptedTargetData copyWithZone:a3];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  if (*&self->_has)
  {
    *(v5 + 24) = self->_wasFamilyCircle;
    *(v5 + 28) |= 1u;
  }

  v8 = [(NSData *)self->_errorData copyWithZone:a3];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  encryptedTargetData = self->_encryptedTargetData;
  if (encryptedTargetData | *(v4 + 1))
  {
    if (![(NSData *)encryptedTargetData isEqual:?])
    {
      goto LABEL_9;
    }
  }

  v6 = *(v4 + 28);
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

  if ((*(v4 + 28) & 1) == 0)
  {
    goto LABEL_9;
  }

  v6 = *(v4 + 24);
  if (!self->_wasFamilyCircle)
  {
LABEL_5:
    if ((v6 & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_9:
    v8 = 0;
    goto LABEL_10;
  }

  if ((*(v4 + 24) & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  errorData = self->_errorData;
  if (errorData | *(v4 + 2))
  {
    v8 = [(NSData *)errorData isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_10:

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_encryptedTargetData hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_wasFamilyCircle;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3 ^ [(NSData *)self->_errorData hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 1))
  {
    [(NPKProtoPrepareProvisioningTargetResponse *)self setEncryptedTargetData:?];
    v4 = v5;
  }

  if (v4[28])
  {
    self->_wasFamilyCircle = v4[24];
    *&self->_has |= 1u;
  }

  if (*(v4 + 2))
  {
    [(NPKProtoPrepareProvisioningTargetResponse *)self setErrorData:?];
    v4 = v5;
  }
}

@end