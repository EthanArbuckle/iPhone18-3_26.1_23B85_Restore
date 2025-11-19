@interface NPKProtoCloudStoreStatusResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasPending:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKProtoCloudStoreStatusResponse

- (void)setHasPending:(BOOL)a3
{
  if (a3)
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
  v5 = [(NPKProtoCloudStoreStatusResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if ((*&self->_has & 2) != 0)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_pending];
    [v3 setObject:v4 forKey:@"pending"];
  }

  accountInfoData = self->_accountInfoData;
  if (accountInfoData)
  {
    [v3 setObject:accountInfoData forKey:@"accountInfoData"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_cloudStoreIsSetup];
    [v3 setObject:v6 forKey:@"cloudStoreIsSetup"];
  }

  errorData = self->_errorData;
  if (errorData)
  {
    [v3 setObject:errorData forKey:@"errorData"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v7 = v4;
  if ((*&self->_has & 2) != 0)
  {
    pending = self->_pending;
    PBDataWriterWriteBOOLField();
    v4 = v7;
  }

  if (self->_accountInfoData)
  {
    PBDataWriterWriteDataField();
    v4 = v7;
  }

  if (*&self->_has)
  {
    cloudStoreIsSetup = self->_cloudStoreIsSetup;
    PBDataWriterWriteBOOLField();
    v4 = v7;
  }

  if (self->_errorData)
  {
    PBDataWriterWriteDataField();
    v4 = v7;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if ((*&self->_has & 2) != 0)
  {
    v4[25] = self->_pending;
    v4[28] |= 2u;
  }

  v5 = v4;
  if (self->_accountInfoData)
  {
    [v4 setAccountInfoData:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    v4[24] = self->_cloudStoreIsSetup;
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
  v6 = v5;
  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 25) = self->_pending;
    *(v5 + 28) |= 2u;
  }

  v7 = [(NSData *)self->_accountInfoData copyWithZone:a3];
  v8 = *(v6 + 8);
  *(v6 + 8) = v7;

  if (*&self->_has)
  {
    *(v6 + 24) = self->_cloudStoreIsSetup;
    *(v6 + 28) |= 1u;
  }

  v9 = [(NSData *)self->_errorData copyWithZone:a3];
  v10 = *(v6 + 16);
  *(v6 + 16) = v9;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  has = self->_has;
  v6 = *(v4 + 28);
  if ((has & 2) != 0)
  {
    if ((*(v4 + 28) & 2) == 0)
    {
      goto LABEL_23;
    }

    v11 = *(v4 + 25);
    if (self->_pending)
    {
      if ((*(v4 + 25) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    else if (*(v4 + 25))
    {
      goto LABEL_23;
    }
  }

  else if ((*(v4 + 28) & 2) != 0)
  {
    goto LABEL_23;
  }

  accountInfoData = self->_accountInfoData;
  if (accountInfoData | *(v4 + 1))
  {
    if (![(NSData *)accountInfoData isEqual:?])
    {
      goto LABEL_23;
    }

    has = self->_has;
  }

  v8 = *(v4 + 28);
  if ((has & 1) == 0)
  {
    if ((*(v4 + 28) & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_23:
    v10 = 0;
    goto LABEL_24;
  }

  if ((*(v4 + 28) & 1) == 0)
  {
    goto LABEL_23;
  }

  v12 = *(v4 + 24);
  if (self->_cloudStoreIsSetup)
  {
    if ((*(v4 + 24) & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  else if (*(v4 + 24))
  {
    goto LABEL_23;
  }

LABEL_9:
  errorData = self->_errorData;
  if (errorData | *(v4 + 2))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if ((v4[28] & 2) != 0)
  {
    self->_pending = v4[25];
    *&self->_has |= 2u;
  }

  v5 = v4;
  if (*(v4 + 1))
  {
    [(NPKProtoCloudStoreStatusResponse *)self setAccountInfoData:?];
    v4 = v5;
  }

  if (v4[28])
  {
    self->_cloudStoreIsSetup = v4[24];
    *&self->_has |= 1u;
  }

  if (*(v4 + 2))
  {
    [(NPKProtoCloudStoreStatusResponse *)self setErrorData:?];
    v4 = v5;
  }
}

@end