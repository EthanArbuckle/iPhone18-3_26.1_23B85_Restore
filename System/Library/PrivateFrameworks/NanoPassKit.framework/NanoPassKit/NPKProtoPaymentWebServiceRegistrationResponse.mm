@interface NPKProtoPaymentWebServiceRegistrationResponse
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

@implementation NPKProtoPaymentWebServiceRegistrationResponse

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
  v8.super_class = NPKProtoPaymentWebServiceRegistrationResponse;
  v4 = [(NPKProtoPaymentWebServiceRegistrationResponse *)&v8 description];
  dictionaryRepresentation = [(NPKProtoPaymentWebServiceRegistrationResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_pending];
    [dictionary setObject:v5 forKey:@"pending"];

    has = self->_has;
  }

  if (has)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_registrationResult];
    [dictionary setObject:v6 forKey:@"registrationResult"];
  }

  errorData = self->_errorData;
  if (errorData)
  {
    [dictionary setObject:errorData forKey:@"errorData"];
  }

  webServiceContextData = self->_webServiceContextData;
  if (webServiceContextData)
  {
    [dictionary setObject:webServiceContextData forKey:@"webServiceContextData"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v8 = toCopy;
  if ((has & 2) != 0)
  {
    pending = self->_pending;
    PBDataWriterWriteBOOLField();
    toCopy = v8;
    has = self->_has;
  }

  if (has)
  {
    registrationResult = self->_registrationResult;
    PBDataWriterWriteUint32Field();
    toCopy = v8;
  }

  if (self->_errorData)
  {
    PBDataWriterWriteDataField();
    toCopy = v8;
  }

  if (self->_webServiceContextData)
  {
    PBDataWriterWriteDataField();
    toCopy = v8;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 2) != 0)
  {
    toCopy[32] = self->_pending;
    toCopy[36] |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(toCopy + 4) = self->_registrationResult;
    toCopy[36] |= 1u;
  }

  v6 = toCopy;
  if (self->_errorData)
  {
    [toCopy setErrorData:?];
    toCopy = v6;
  }

  if (self->_webServiceContextData)
  {
    [v6 setWebServiceContextData:?];
    toCopy = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 32) = self->_pending;
    *(v5 + 36) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 16) = self->_registrationResult;
    *(v5 + 36) |= 1u;
  }

  v8 = [(NSData *)self->_errorData copyWithZone:zone];
  v9 = v6[1];
  v6[1] = v8;

  v10 = [(NSData *)self->_webServiceContextData copyWithZone:zone];
  v11 = v6[3];
  v6[3] = v10;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  v5 = *(equalCopy + 36);
  if ((*&self->_has & 2) == 0)
  {
    if ((*(equalCopy + 36) & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_18:
    v9 = 0;
    goto LABEL_19;
  }

  if ((*(equalCopy + 36) & 2) == 0)
  {
    goto LABEL_18;
  }

  v6 = *(equalCopy + 32);
  if (self->_pending)
  {
    if ((*(equalCopy + 32) & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else if (*(equalCopy + 32))
  {
    goto LABEL_18;
  }

LABEL_4:
  if (*&self->_has)
  {
    if ((*(equalCopy + 36) & 1) == 0 || self->_registrationResult != *(equalCopy + 4))
    {
      goto LABEL_18;
    }
  }

  else if (*(equalCopy + 36))
  {
    goto LABEL_18;
  }

  errorData = self->_errorData;
  if (errorData | *(equalCopy + 1) && ![(NSData *)errorData isEqual:?])
  {
    goto LABEL_18;
  }

  webServiceContextData = self->_webServiceContextData;
  if (webServiceContextData | *(equalCopy + 3))
  {
    v9 = [(NSData *)webServiceContextData isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_19:

  return v9;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v3 = 2654435761 * self->_pending;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_5:
    v4 = 0;
    goto LABEL_6;
  }

  v3 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v4 = 2654435761 * self->_registrationResult;
LABEL_6:
  v5 = v4 ^ v3 ^ [(NSData *)self->_errorData hash];
  return v5 ^ [(NSData *)self->_webServiceContextData hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 36);
  if ((v5 & 2) != 0)
  {
    self->_pending = *(fromCopy + 32);
    *&self->_has |= 2u;
    v5 = *(fromCopy + 36);
  }

  if (v5)
  {
    self->_registrationResult = *(fromCopy + 4);
    *&self->_has |= 1u;
  }

  v6 = fromCopy;
  if (*(fromCopy + 1))
  {
    [(NPKProtoPaymentWebServiceRegistrationResponse *)self setErrorData:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 3))
  {
    [(NPKProtoPaymentWebServiceRegistrationResponse *)self setWebServiceContextData:?];
    fromCopy = v6;
  }
}

@end