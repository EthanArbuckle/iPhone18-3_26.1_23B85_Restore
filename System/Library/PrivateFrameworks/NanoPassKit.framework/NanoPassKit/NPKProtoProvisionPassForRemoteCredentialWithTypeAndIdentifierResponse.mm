@interface NPKProtoProvisionPassForRemoteCredentialWithTypeAndIdentifierResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasSuccess:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKProtoProvisionPassForRemoteCredentialWithTypeAndIdentifierResponse

- (void)setHasSuccess:(BOOL)a3
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
  v8.super_class = NPKProtoProvisionPassForRemoteCredentialWithTypeAndIdentifierResponse;
  v4 = [(NPKProtoProvisionPassForRemoteCredentialWithTypeAndIdentifierResponse *)&v8 description];
  v5 = [(NPKProtoProvisionPassForRemoteCredentialWithTypeAndIdentifierResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if (has)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_pending];
    [v3 setObject:v5 forKey:@"pending"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_success];
    [v3 setObject:v6 forKey:@"success"];
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
  has = self->_has;
  v8 = v4;
  if (has)
  {
    pending = self->_pending;
    PBDataWriterWriteBOOLField();
    v4 = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    success = self->_success;
    PBDataWriterWriteBOOLField();
    v4 = v8;
  }

  if (self->_errorData)
  {
    PBDataWriterWriteDataField();
    v4 = v8;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[16] = self->_pending;
    v4[20] |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v4[17] = self->_success;
    v4[20] |= 2u;
  }

  if (self->_errorData)
  {
    v6 = v4;
    [v4 setErrorData:?];
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if (has)
  {
    v5[16] = self->_pending;
    v5[20] |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v5[17] = self->_success;
    v5[20] |= 2u;
  }

  v8 = [(NSData *)self->_errorData copyWithZone:a3];
  v9 = v6[1];
  v6[1] = v8;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  v5 = *(v4 + 20);
  if (*&self->_has)
  {
    if ((*(v4 + 20) & 1) == 0)
    {
      goto LABEL_20;
    }

    v8 = *(v4 + 16);
    if (self->_pending)
    {
      if ((*(v4 + 16) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    else if (*(v4 + 16))
    {
      goto LABEL_20;
    }
  }

  else if (*(v4 + 20))
  {
    goto LABEL_20;
  }

  if ((*&self->_has & 2) == 0)
  {
    if ((*(v4 + 20) & 2) == 0)
    {
      goto LABEL_6;
    }

LABEL_20:
    v7 = 0;
    goto LABEL_21;
  }

  if ((*(v4 + 20) & 2) == 0)
  {
    goto LABEL_20;
  }

  v9 = *(v4 + 17);
  if (self->_success)
  {
    if ((*(v4 + 17) & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else if (*(v4 + 17))
  {
    goto LABEL_20;
  }

LABEL_6:
  errorData = self->_errorData;
  if (errorData | *(v4 + 1))
  {
    v7 = [(NSData *)errorData isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_21:

  return v7;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_pending;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    return v7 ^ v6 ^ [(NSData *)self->_errorData hash:v3];
  }

  v6 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = 2654435761 * self->_success;
  return v7 ^ v6 ^ [(NSData *)self->_errorData hash:v3];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4[20];
  if (v5)
  {
    self->_pending = v4[16];
    *&self->_has |= 1u;
    v5 = v4[20];
  }

  if ((v5 & 2) != 0)
  {
    self->_success = v4[17];
    *&self->_has |= 2u;
  }

  if (*(v4 + 1))
  {
    v6 = v4;
    [(NPKProtoProvisionPassForRemoteCredentialWithTypeAndIdentifierResponse *)self setErrorData:?];
    v4 = v6;
  }
}

@end