@interface NPKProtoPeerPaymentUnregistrationResponse
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

@implementation NPKProtoPeerPaymentUnregistrationResponse

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
  v8.super_class = NPKProtoPeerPaymentUnregistrationResponse;
  v4 = [(NPKProtoPeerPaymentUnregistrationResponse *)&v8 description];
  dictionaryRepresentation = [(NPKProtoPeerPaymentUnregistrationResponse *)self dictionaryRepresentation];
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
    toCopy[32] = self->_pending;
    toCopy[36] |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    toCopy[33] = self->_success;
    toCopy[36] |= 2u;
  }

  v6 = toCopy;
  if (self->_errorData)
  {
    [toCopy setErrorData:?];
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
    v5[32] = self->_pending;
    v5[36] |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v5[33] = self->_success;
    v5[36] |= 2u;
  }

  v8 = [(NSData *)self->_errorData copyWithZone:zone];
  v9 = v6[1];
  v6[1] = v8;

  v10 = [(NSData *)self->_peerPaymentWebServiceContextData copyWithZone:zone];
  v11 = v6[3];
  v6[3] = v10;

  v12 = [(NSData *)self->_peerPaymentAccountData copyWithZone:zone];
  v13 = v6[2];
  v6[2] = v12;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  v5 = *(equalCopy + 36);
  if (*&self->_has)
  {
    if ((*(equalCopy + 36) & 1) == 0)
    {
      goto LABEL_23;
    }

    v10 = *(equalCopy + 32);
    if (self->_pending)
    {
      if ((*(equalCopy + 32) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    else if (*(equalCopy + 32))
    {
      goto LABEL_23;
    }
  }

  else if (*(equalCopy + 36))
  {
    goto LABEL_23;
  }

  if ((*&self->_has & 2) == 0)
  {
    if ((*(equalCopy + 36) & 2) == 0)
    {
      goto LABEL_6;
    }

LABEL_23:
    v9 = 0;
    goto LABEL_24;
  }

  if ((*(equalCopy + 36) & 2) == 0)
  {
    goto LABEL_23;
  }

  v11 = *(equalCopy + 33);
  if (self->_success)
  {
    if ((*(equalCopy + 33) & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  else if (*(equalCopy + 33))
  {
    goto LABEL_23;
  }

LABEL_6:
  errorData = self->_errorData;
  if (errorData | *(equalCopy + 1) && ![(NSData *)errorData isEqual:?])
  {
    goto LABEL_23;
  }

  peerPaymentWebServiceContextData = self->_peerPaymentWebServiceContextData;
  if (peerPaymentWebServiceContextData | *(equalCopy + 3))
  {
    if (![(NSData *)peerPaymentWebServiceContextData isEqual:?])
    {
      goto LABEL_23;
    }
  }

  peerPaymentAccountData = self->_peerPaymentAccountData;
  if (peerPaymentAccountData | *(equalCopy + 2))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy[36];
  if (v5)
  {
    self->_pending = fromCopy[32];
    *&self->_has |= 1u;
    v5 = fromCopy[36];
  }

  if ((v5 & 2) != 0)
  {
    self->_success = fromCopy[33];
    *&self->_has |= 2u;
  }

  v6 = fromCopy;
  if (*(fromCopy + 1))
  {
    [(NPKProtoPeerPaymentUnregistrationResponse *)self setErrorData:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 3))
  {
    [(NPKProtoPeerPaymentUnregistrationResponse *)self setPeerPaymentWebServiceContextData:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 2))
  {
    [(NPKProtoPeerPaymentUnregistrationResponse *)self setPeerPaymentAccountData:?];
    fromCopy = v6;
  }
}

@end