@interface NPKProtoUpdateAccountWithIdentifierResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKProtoUpdateAccountWithIdentifierResponse

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoUpdateAccountWithIdentifierResponse;
  v4 = [(NPKProtoUpdateAccountWithIdentifierResponse *)&v8 description];
  v5 = [(NPKProtoUpdateAccountWithIdentifierResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_pending];
    [v3 setObject:v4 forKey:@"pending"];
  }

  accountData = self->_accountData;
  if (accountData)
  {
    [v3 setObject:accountData forKey:@"accountData"];
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
  v6 = v4;
  if (*&self->_has)
  {
    pending = self->_pending;
    PBDataWriterWriteBOOLField();
    v4 = v6;
  }

  if (self->_accountData)
  {
    PBDataWriterWriteDataField();
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
  if (*&self->_has)
  {
    v4[24] = self->_pending;
    v4[28] |= 1u;
  }

  v5 = v4;
  if (self->_accountData)
  {
    [v4 setAccountData:?];
    v4 = v5;
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
  if (*&self->_has)
  {
    *(v5 + 24) = self->_pending;
    *(v5 + 28) |= 1u;
  }

  v7 = [(NSData *)self->_accountData copyWithZone:a3];
  v8 = v6[1];
  v6[1] = v7;

  v9 = [(NSData *)self->_errorData copyWithZone:a3];
  v10 = v6[2];
  v6[2] = v9;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  v5 = *(v4 + 28);
  if (*&self->_has)
  {
    if ((*(v4 + 28) & 1) == 0)
    {
      goto LABEL_9;
    }

    v5 = *(v4 + 24);
    if (self->_pending)
    {
      if (*(v4 + 24))
      {
        goto LABEL_4;
      }

LABEL_9:
      v8 = 0;
      goto LABEL_10;
    }
  }

  if (v5)
  {
    goto LABEL_9;
  }

LABEL_4:
  accountData = self->_accountData;
  if (accountData | *(v4 + 1) && ![(NSData *)accountData isEqual:?])
  {
    goto LABEL_9;
  }

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
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_pending;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSData *)self->_accountData hash]^ v3;
  return v4 ^ [(NSData *)self->_errorData hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[28])
  {
    self->_pending = v4[24];
    *&self->_has |= 1u;
  }

  v5 = v4;
  if (*(v4 + 1))
  {
    [(NPKProtoUpdateAccountWithIdentifierResponse *)self setAccountData:?];
    v4 = v5;
  }

  if (*(v4 + 2))
  {
    [(NPKProtoUpdateAccountWithIdentifierResponse *)self setErrorData:?];
    v4 = v5;
  }
}

@end