@interface NPKProtoCompanionMigratedResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasSuccess:(BOOL)success;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoCompanionMigratedResponse

- (void)setHasSuccess:(BOOL)success
{
  if (success)
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
  dictionaryRepresentation = [(NPKProtoCompanionMigratedResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if (has)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_pending];
    [dictionary setObject:v5 forKey:@"pending"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_success];
    [dictionary setObject:v6 forKey:@"success"];
  }

  errorData = self->_errorData;
  if (errorData)
  {
    [dictionary setObject:errorData forKey:@"errorData"];
  }

  paymentWebServiceContextData = self->_paymentWebServiceContextData;
  if (paymentWebServiceContextData)
  {
    [dictionary setObject:paymentWebServiceContextData forKey:@"paymentWebServiceContextData"];
  }

  peerPaymentWebServiceContextData = self->_peerPaymentWebServiceContextData;
  if (peerPaymentWebServiceContextData)
  {
    [dictionary setObject:peerPaymentWebServiceContextData forKey:@"peerPaymentWebServiceContextData"];
  }

  peerPaymentAccountData = self->_peerPaymentAccountData;
  if (peerPaymentAccountData)
  {
    [dictionary setObject:peerPaymentAccountData forKey:@"peerPaymentAccountData"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v8 = toCopy;
  if (has)
  {
    pending = self->_pending;
    PBDataWriterWriteBOOLField();
    toCopy = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    success = self->_success;
    PBDataWriterWriteBOOLField();
    toCopy = v8;
  }

  if (self->_errorData)
  {
    PBDataWriterWriteDataField();
    toCopy = v8;
  }

  if (self->_paymentWebServiceContextData)
  {
    PBDataWriterWriteDataField();
    toCopy = v8;
  }

  if (self->_peerPaymentWebServiceContextData)
  {
    PBDataWriterWriteDataField();
    toCopy = v8;
  }

  if (self->_peerPaymentAccountData)
  {
    PBDataWriterWriteDataField();
    toCopy = v8;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[40] = self->_pending;
    toCopy[44] |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    toCopy[41] = self->_success;
    toCopy[44] |= 2u;
  }

  v6 = toCopy;
  if (self->_errorData)
  {
    [toCopy setErrorData:?];
    toCopy = v6;
  }

  if (self->_paymentWebServiceContextData)
  {
    [v6 setPaymentWebServiceContextData:?];
    toCopy = v6;
  }

  if (self->_peerPaymentWebServiceContextData)
  {
    [v6 setPeerPaymentWebServiceContextData:?];
    toCopy = v6;
  }

  if (self->_peerPaymentAccountData)
  {
    [v6 setPeerPaymentAccountData:?];
    toCopy = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

  v8 = [(NSData *)self->_errorData copyWithZone:zone];
  v9 = v6[1];
  v6[1] = v8;

  v10 = [(NSData *)self->_paymentWebServiceContextData copyWithZone:zone];
  v11 = v6[2];
  v6[2] = v10;

  v12 = [(NSData *)self->_peerPaymentWebServiceContextData copyWithZone:zone];
  v13 = v6[4];
  v6[4] = v12;

  v14 = [(NSData *)self->_peerPaymentAccountData copyWithZone:zone];
  v15 = v6[3];
  v6[3] = v14;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_25;
  }

  v5 = *(equalCopy + 44);
  if (*&self->_has)
  {
    if ((*(equalCopy + 44) & 1) == 0)
    {
      goto LABEL_25;
    }

    v11 = *(equalCopy + 40);
    if (self->_pending)
    {
      if ((*(equalCopy + 40) & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    else if (*(equalCopy + 40))
    {
      goto LABEL_25;
    }
  }

  else if (*(equalCopy + 44))
  {
    goto LABEL_25;
  }

  if ((*&self->_has & 2) == 0)
  {
    if ((*(equalCopy + 44) & 2) == 0)
    {
      goto LABEL_6;
    }

LABEL_25:
    v10 = 0;
    goto LABEL_26;
  }

  if ((*(equalCopy + 44) & 2) == 0)
  {
    goto LABEL_25;
  }

  v12 = *(equalCopy + 41);
  if (self->_success)
  {
    if ((*(equalCopy + 41) & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (*(equalCopy + 41))
  {
    goto LABEL_25;
  }

LABEL_6:
  errorData = self->_errorData;
  if (errorData | *(equalCopy + 1) && ![(NSData *)errorData isEqual:?])
  {
    goto LABEL_25;
  }

  paymentWebServiceContextData = self->_paymentWebServiceContextData;
  if (paymentWebServiceContextData | *(equalCopy + 2))
  {
    if (![(NSData *)paymentWebServiceContextData isEqual:?])
    {
      goto LABEL_25;
    }
  }

  peerPaymentWebServiceContextData = self->_peerPaymentWebServiceContextData;
  if (peerPaymentWebServiceContextData | *(equalCopy + 4))
  {
    if (![(NSData *)peerPaymentWebServiceContextData isEqual:?])
    {
      goto LABEL_25;
    }
  }

  peerPaymentAccountData = self->_peerPaymentAccountData;
  if (peerPaymentAccountData | *(equalCopy + 3))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy[44];
  if (v5)
  {
    self->_pending = fromCopy[40];
    *&self->_has |= 1u;
    v5 = fromCopy[44];
  }

  if ((v5 & 2) != 0)
  {
    self->_success = fromCopy[41];
    *&self->_has |= 2u;
  }

  v6 = fromCopy;
  if (*(fromCopy + 1))
  {
    [(NPKProtoCompanionMigratedResponse *)self setErrorData:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 2))
  {
    [(NPKProtoCompanionMigratedResponse *)self setPaymentWebServiceContextData:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 4))
  {
    [(NPKProtoCompanionMigratedResponse *)self setPeerPaymentWebServiceContextData:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 3))
  {
    [(NPKProtoCompanionMigratedResponse *)self setPeerPaymentAccountData:?];
    fromCopy = v6;
  }
}

@end