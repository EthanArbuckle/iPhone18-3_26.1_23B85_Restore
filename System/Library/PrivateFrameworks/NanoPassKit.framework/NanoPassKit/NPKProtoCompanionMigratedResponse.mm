@interface NPKProtoCompanionMigratedResponse
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

@implementation NPKProtoCompanionMigratedResponse

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
  v8.super_class = NPKProtoCompanionMigratedResponse;
  v4 = [(NPKProtoCompanionMigratedResponse *)&v8 description];
  v5 = [(NPKProtoCompanionMigratedResponse *)self dictionaryRepresentation];
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

  paymentWebServiceContextData = self->_paymentWebServiceContextData;
  if (paymentWebServiceContextData)
  {
    [v3 setObject:paymentWebServiceContextData forKey:@"paymentWebServiceContextData"];
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

  if (self->_paymentWebServiceContextData)
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
    v4[40] = self->_pending;
    v4[44] |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v4[41] = self->_success;
    v4[44] |= 2u;
  }

  v6 = v4;
  if (self->_errorData)
  {
    [v4 setErrorData:?];
    v4 = v6;
  }

  if (self->_paymentWebServiceContextData)
  {
    [v6 setPaymentWebServiceContextData:?];
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
    v5[40] = self->_pending;
    v5[44] |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v5[41] = self->_success;
    v5[44] |= 2u;
  }

  v8 = [(NSData *)self->_errorData copyWithZone:a3];
  v9 = v6[1];
  v6[1] = v8;

  v10 = [(NSData *)self->_paymentWebServiceContextData copyWithZone:a3];
  v11 = v6[2];
  v6[2] = v10;

  v12 = [(NSData *)self->_peerPaymentWebServiceContextData copyWithZone:a3];
  v13 = v6[4];
  v6[4] = v12;

  v14 = [(NSData *)self->_peerPaymentAccountData copyWithZone:a3];
  v15 = v6[3];
  v6[3] = v14;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_25;
  }

  v5 = *(v4 + 44);
  if (*&self->_has)
  {
    if ((*(v4 + 44) & 1) == 0)
    {
      goto LABEL_25;
    }

    v11 = *(v4 + 40);
    if (self->_pending)
    {
      if ((*(v4 + 40) & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    else if (*(v4 + 40))
    {
      goto LABEL_25;
    }
  }

  else if (*(v4 + 44))
  {
    goto LABEL_25;
  }

  if ((*&self->_has & 2) == 0)
  {
    if ((*(v4 + 44) & 2) == 0)
    {
      goto LABEL_6;
    }

LABEL_25:
    v10 = 0;
    goto LABEL_26;
  }

  if ((*(v4 + 44) & 2) == 0)
  {
    goto LABEL_25;
  }

  v12 = *(v4 + 41);
  if (self->_success)
  {
    if ((*(v4 + 41) & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (*(v4 + 41))
  {
    goto LABEL_25;
  }

LABEL_6:
  errorData = self->_errorData;
  if (errorData | *(v4 + 1) && ![(NSData *)errorData isEqual:?])
  {
    goto LABEL_25;
  }

  paymentWebServiceContextData = self->_paymentWebServiceContextData;
  if (paymentWebServiceContextData | *(v4 + 2))
  {
    if (![(NSData *)paymentWebServiceContextData isEqual:?])
    {
      goto LABEL_25;
    }
  }

  peerPaymentWebServiceContextData = self->_peerPaymentWebServiceContextData;
  if (peerPaymentWebServiceContextData | *(v4 + 4))
  {
    if (![(NSData *)peerPaymentWebServiceContextData isEqual:?])
    {
      goto LABEL_25;
    }
  }

  peerPaymentAccountData = self->_peerPaymentAccountData;
  if (peerPaymentAccountData | *(v4 + 3))
  {
    v10 = [(NSData *)peerPaymentAccountData isEqual:?];
  }

  else
  {
    v10 = 1;
  }

LABEL_26:

  return v10;
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
  v6 = [(NSData *)self->_paymentWebServiceContextData hash];
  v7 = v5 ^ v6 ^ [(NSData *)self->_peerPaymentWebServiceContextData hash];
  return v7 ^ [(NSData *)self->_peerPaymentAccountData hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4[44];
  if (v5)
  {
    self->_pending = v4[40];
    *&self->_has |= 1u;
    v5 = v4[44];
  }

  if ((v5 & 2) != 0)
  {
    self->_success = v4[41];
    *&self->_has |= 2u;
  }

  v6 = v4;
  if (*(v4 + 1))
  {
    [(NPKProtoCompanionMigratedResponse *)self setErrorData:?];
    v4 = v6;
  }

  if (*(v4 + 2))
  {
    [(NPKProtoCompanionMigratedResponse *)self setPaymentWebServiceContextData:?];
    v4 = v6;
  }

  if (*(v4 + 4))
  {
    [(NPKProtoCompanionMigratedResponse *)self setPeerPaymentWebServiceContextData:?];
    v4 = v6;
  }

  if (*(v4 + 3))
  {
    [(NPKProtoCompanionMigratedResponse *)self setPeerPaymentAccountData:?];
    v4 = v6;
  }
}

@end