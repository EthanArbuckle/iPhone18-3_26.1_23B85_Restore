@interface NPKProtoPrepareProvisioningTargetResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoPrepareProvisioningTargetResponse

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoPrepareProvisioningTargetResponse;
  v4 = [(NPKProtoPrepareProvisioningTargetResponse *)&v8 description];
  dictionaryRepresentation = [(NPKProtoPrepareProvisioningTargetResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  encryptedTargetData = self->_encryptedTargetData;
  if (encryptedTargetData)
  {
    [dictionary setObject:encryptedTargetData forKey:@"encryptedTargetData"];
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

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_encryptedTargetData)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    wasFamilyCircle = self->_wasFamilyCircle;
    PBDataWriterWriteBOOLField();
    toCopy = v6;
  }

  if (self->_errorData)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_encryptedTargetData)
  {
    [toCopy setEncryptedTargetData:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    toCopy[24] = self->_wasFamilyCircle;
    toCopy[28] |= 1u;
  }

  if (self->_errorData)
  {
    [v5 setErrorData:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_encryptedTargetData copyWithZone:zone];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  if (*&self->_has)
  {
    *(v5 + 24) = self->_wasFamilyCircle;
    *(v5 + 28) |= 1u;
  }

  v8 = [(NSData *)self->_errorData copyWithZone:zone];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  encryptedTargetData = self->_encryptedTargetData;
  if (encryptedTargetData | *(equalCopy + 1))
  {
    if (![(NSData *)encryptedTargetData isEqual:?])
    {
      goto LABEL_9;
    }
  }

  v6 = *(equalCopy + 28);
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

  if ((*(equalCopy + 28) & 1) == 0)
  {
    goto LABEL_9;
  }

  v6 = *(equalCopy + 24);
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

  if ((*(equalCopy + 24) & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  errorData = self->_errorData;
  if (errorData | *(equalCopy + 2))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 1))
  {
    [(NPKProtoPrepareProvisioningTargetResponse *)self setEncryptedTargetData:?];
    fromCopy = v5;
  }

  if (fromCopy[28])
  {
    self->_wasFamilyCircle = fromCopy[24];
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 2))
  {
    [(NPKProtoPrepareProvisioningTargetResponse *)self setErrorData:?];
    fromCopy = v5;
  }
}

@end