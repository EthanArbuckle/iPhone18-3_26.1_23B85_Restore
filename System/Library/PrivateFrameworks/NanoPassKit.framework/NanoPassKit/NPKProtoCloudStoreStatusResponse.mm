@interface NPKProtoCloudStoreStatusResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasPending:(BOOL)pending;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoCloudStoreStatusResponse

- (void)setHasPending:(BOOL)pending
{
  if (pending)
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
  v8.super_class = NPKProtoCloudStoreStatusResponse;
  v4 = [(NPKProtoCloudStoreStatusResponse *)&v8 description];
  dictionaryRepresentation = [(NPKProtoCloudStoreStatusResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ((*&self->_has & 2) != 0)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_pending];
    [dictionary setObject:v4 forKey:@"pending"];
  }

  accountInfoData = self->_accountInfoData;
  if (accountInfoData)
  {
    [dictionary setObject:accountInfoData forKey:@"accountInfoData"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_cloudStoreIsSetup];
    [dictionary setObject:v6 forKey:@"cloudStoreIsSetup"];
  }

  errorData = self->_errorData;
  if (errorData)
  {
    [dictionary setObject:errorData forKey:@"errorData"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v7 = toCopy;
  if ((*&self->_has & 2) != 0)
  {
    pending = self->_pending;
    PBDataWriterWriteBOOLField();
    toCopy = v7;
  }

  if (self->_accountInfoData)
  {
    PBDataWriterWriteDataField();
    toCopy = v7;
  }

  if (*&self->_has)
  {
    cloudStoreIsSetup = self->_cloudStoreIsSetup;
    PBDataWriterWriteBOOLField();
    toCopy = v7;
  }

  if (self->_errorData)
  {
    PBDataWriterWriteDataField();
    toCopy = v7;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 2) != 0)
  {
    toCopy[25] = self->_pending;
    toCopy[28] |= 2u;
  }

  v5 = toCopy;
  if (self->_accountInfoData)
  {
    [toCopy setAccountInfoData:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    toCopy[24] = self->_cloudStoreIsSetup;
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
  v6 = v5;
  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 25) = self->_pending;
    *(v5 + 28) |= 2u;
  }

  v7 = [(NSData *)self->_accountInfoData copyWithZone:zone];
  v8 = *(v6 + 8);
  *(v6 + 8) = v7;

  if (*&self->_has)
  {
    *(v6 + 24) = self->_cloudStoreIsSetup;
    *(v6 + 28) |= 1u;
  }

  v9 = [(NSData *)self->_errorData copyWithZone:zone];
  v10 = *(v6 + 16);
  *(v6 + 16) = v9;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  has = self->_has;
  v6 = *(equalCopy + 28);
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 28) & 2) == 0)
    {
      goto LABEL_23;
    }

    v11 = *(equalCopy + 25);
    if (self->_pending)
    {
      if ((*(equalCopy + 25) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    else if (*(equalCopy + 25))
    {
      goto LABEL_23;
    }
  }

  else if ((*(equalCopy + 28) & 2) != 0)
  {
    goto LABEL_23;
  }

  accountInfoData = self->_accountInfoData;
  if (accountInfoData | *(equalCopy + 1))
  {
    if (![(NSData *)accountInfoData isEqual:?])
    {
      goto LABEL_23;
    }

    has = self->_has;
  }

  v8 = *(equalCopy + 28);
  if ((has & 1) == 0)
  {
    if ((*(equalCopy + 28) & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_23:
    v10 = 0;
    goto LABEL_24;
  }

  if ((*(equalCopy + 28) & 1) == 0)
  {
    goto LABEL_23;
  }

  v12 = *(equalCopy + 24);
  if (self->_cloudStoreIsSetup)
  {
    if ((*(equalCopy + 24) & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  else if (*(equalCopy + 24))
  {
    goto LABEL_23;
  }

LABEL_9:
  errorData = self->_errorData;
  if (errorData | *(equalCopy + 2))
  {
    v10 = [(NSData *)errorData isEqual:?];
  }

  else
  {
    v10 = 1;
  }

LABEL_24:

  return v10;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v3 = 2654435761 * self->_pending;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSData *)self->_accountInfoData hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_cloudStoreIsSetup;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5 ^ [(NSData *)self->_errorData hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if ((fromCopy[28] & 2) != 0)
  {
    self->_pending = fromCopy[25];
    *&self->_has |= 2u;
  }

  v5 = fromCopy;
  if (*(fromCopy + 1))
  {
    [(NPKProtoCloudStoreStatusResponse *)self setAccountInfoData:?];
    fromCopy = v5;
  }

  if (fromCopy[28])
  {
    self->_cloudStoreIsSetup = fromCopy[24];
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 2))
  {
    [(NPKProtoCloudStoreStatusResponse *)self setErrorData:?];
    fromCopy = v5;
  }
}

@end