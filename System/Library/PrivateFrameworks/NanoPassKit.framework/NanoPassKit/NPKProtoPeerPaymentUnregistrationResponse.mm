@interface NPKProtoPeerPaymentUnregistrationResponse
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

@implementation NPKProtoPeerPaymentUnregistrationResponse

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
  v8.super_class = NPKProtoPeerPaymentUnregistrationResponse;
  v4 = [(NPKProtoPeerPaymentUnregistrationResponse *)&v8 description];
  v5 = [(NPKProtoPeerPaymentUnregistrationResponse *)self dictionaryRepresentation];
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

  peerPaymentWebServiceContextData = self->_peerPaymentWebServiceContextData;
  if (peerPaymentWebServiceContextData)
  {
    [v3 setObject:peerPaymentWebServiceContextData forKey:@"peerPaymentWebServiceContextData"];
  }

  peerPaymentAccountData = self->_peerPaymentAccountData;
  if (peerPaymentAccountData)
  {
    [v3 setObject:peerPaymentAccountData forKey:@"peerPaymentAccountData"];
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

  if (self->_peerPaymentWebServiceContextData)
  {
    PBDataWriterWriteDataField();
    v4 = v8;
  }

  if (self->_peerPaymentAccountData)
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
    v4[32] = self->_pending;
    v4[36] |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v4[33] = self->_success;
    v4[36] |= 2u;
  }

  v6 = v4;
  if (self->_errorData)
  {
    [v4 setErrorData:?];
    v4 = v6;
  }

  if (self->_peerPaymentWebServiceContextData)
  {
    [v6 setPeerPaymentWebServiceContextData:?];
    v4 = v6;
  }

  if (self->_peerPaymentAccountData)
  {
    [v6 setPeerPaymentAccountData:?];
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
    v5[32] = self->_pending;
    v5[36] |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v5[33] = self->_success;
    v5[36] |= 2u;
  }

  v8 = [(NSData *)self->_errorData copyWithZone:a3];
  v9 = v6[1];
  v6[1] = v8;

  v10 = [(NSData *)self->_peerPaymentWebServiceContextData copyWithZone:a3];
  v11 = v6[3];
  v6[3] = v10;

  v12 = [(NSData *)self->_peerPaymentAccountData copyWithZone:a3];
  v13 = v6[2];
  v6[2] = v12;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  v5 = *(v4 + 36);
  if (*&self->_has)
  {
    if ((*(v4 + 36) & 1) == 0)
    {
      goto LABEL_23;
    }

    v10 = *(v4 + 32);
    if (self->_pending)
    {
      if ((*(v4 + 32) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    else if (*(v4 + 32))
    {
      goto LABEL_23;
    }
  }

  else if (*(v4 + 36))
  {
    goto LABEL_23;
  }

  if ((*&self->_has & 2) == 0)
  {
    if ((*(v4 + 36) & 2) == 0)
    {
      goto LABEL_6;
    }

LABEL_23:
    v9 = 0;
    goto LABEL_24;
  }

  if ((*(v4 + 36) & 2) == 0)
  {
    goto LABEL_23;
  }

  v11 = *(v4 + 33);
  if (self->_success)
  {
    if ((*(v4 + 33) & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  else if (*(v4 + 33))
  {
    goto LABEL_23;
  }

LABEL_6:
  errorData = self->_errorData;
  if (errorData | *(v4 + 1) && ![(NSData *)errorData isEqual:?])
  {
    goto LABEL_23;
  }

  peerPaymentWebServiceContextData = self->_peerPaymentWebServiceContextData;
  if (peerPaymentWebServiceContextData | *(v4 + 3))
  {
    if (![(NSData *)peerPaymentWebServiceContextData isEqual:?])
    {
      goto LABEL_23;
    }
  }

  peerPaymentAccountData = self->_peerPaymentAccountData;
  if (peerPaymentAccountData | *(v4 + 2))
  {
    v9 = [(NSData *)peerPaymentAccountData isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_24:

  return v9;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_pending;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v4 = 0;
    goto LABEL_6;
  }

  v3 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v4 = 2654435761 * self->_success;
LABEL_6:
  v5 = v4 ^ v3 ^ [(NSData *)self->_errorData hash];
  v6 = [(NSData *)self->_peerPaymentWebServiceContextData hash];
  return v5 ^ v6 ^ [(NSData *)self->_peerPaymentAccountData hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4[36];
  if (v5)
  {
    self->_pending = v4[32];
    *&self->_has |= 1u;
    v5 = v4[36];
  }

  if ((v5 & 2) != 0)
  {
    self->_success = v4[33];
    *&self->_has |= 2u;
  }

  v6 = v4;
  if (*(v4 + 1))
  {
    [(NPKProtoPeerPaymentUnregistrationResponse *)self setErrorData:?];
    v4 = v6;
  }

  if (*(v4 + 3))
  {
    [(NPKProtoPeerPaymentUnregistrationResponse *)self setPeerPaymentWebServiceContextData:?];
    v4 = v6;
  }

  if (*(v4 + 2))
  {
    [(NPKProtoPeerPaymentUnregistrationResponse *)self setPeerPaymentAccountData:?];
    v4 = v6;
  }
}

@end