@interface NPKProtoPaymentWebServiceRegistrationResponse
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

@implementation NPKProtoPaymentWebServiceRegistrationResponse

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
  v8.super_class = NPKProtoPaymentWebServiceRegistrationResponse;
  v4 = [(NPKProtoPaymentWebServiceRegistrationResponse *)&v8 description];
  v5 = [(NPKProtoPaymentWebServiceRegistrationResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_pending];
    [v3 setObject:v5 forKey:@"pending"];

    has = self->_has;
  }

  if (has)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_registrationResult];
    [v3 setObject:v6 forKey:@"registrationResult"];
  }

  errorData = self->_errorData;
  if (errorData)
  {
    [v3 setObject:errorData forKey:@"errorData"];
  }

  webServiceContextData = self->_webServiceContextData;
  if (webServiceContextData)
  {
    [v3 setObject:webServiceContextData forKey:@"webServiceContextData"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v8 = v4;
  if ((has & 2) != 0)
  {
    pending = self->_pending;
    PBDataWriterWriteBOOLField();
    v4 = v8;
    has = self->_has;
  }

  if (has)
  {
    registrationResult = self->_registrationResult;
    PBDataWriterWriteUint32Field();
    v4 = v8;
  }

  if (self->_errorData)
  {
    PBDataWriterWriteDataField();
    v4 = v8;
  }

  if (self->_webServiceContextData)
  {
    PBDataWriterWriteDataField();
    v4 = v8;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[32] = self->_pending;
    v4[36] |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v4 + 4) = self->_registrationResult;
    v4[36] |= 1u;
  }

  v6 = v4;
  if (self->_errorData)
  {
    [v4 setErrorData:?];
    v4 = v6;
  }

  if (self->_webServiceContextData)
  {
    [v6 setWebServiceContextData:?];
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

  v8 = [(NSData *)self->_errorData copyWithZone:a3];
  v9 = v6[1];
  v6[1] = v8;

  v10 = [(NSData *)self->_webServiceContextData copyWithZone:a3];
  v11 = v6[3];
  v6[3] = v10;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  v5 = *(v4 + 36);
  if ((*&self->_has & 2) == 0)
  {
    if ((*(v4 + 36) & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_18:
    v9 = 0;
    goto LABEL_19;
  }

  if ((*(v4 + 36) & 2) == 0)
  {
    goto LABEL_18;
  }

  v6 = *(v4 + 32);
  if (self->_pending)
  {
    if ((*(v4 + 32) & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else if (*(v4 + 32))
  {
    goto LABEL_18;
  }

LABEL_4:
  if (*&self->_has)
  {
    if ((*(v4 + 36) & 1) == 0 || self->_registrationResult != *(v4 + 4))
    {
      goto LABEL_18;
    }
  }

  else if (*(v4 + 36))
  {
    goto LABEL_18;
  }

  errorData = self->_errorData;
  if (errorData | *(v4 + 1) && ![(NSData *)errorData isEqual:?])
  {
    goto LABEL_18;
  }

  webServiceContextData = self->_webServiceContextData;
  if (webServiceContextData | *(v4 + 3))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 36);
  if ((v5 & 2) != 0)
  {
    self->_pending = *(v4 + 32);
    *&self->_has |= 2u;
    v5 = *(v4 + 36);
  }

  if (v5)
  {
    self->_registrationResult = *(v4 + 4);
    *&self->_has |= 1u;
  }

  v6 = v4;
  if (*(v4 + 1))
  {
    [(NPKProtoPaymentWebServiceRegistrationResponse *)self setErrorData:?];
    v4 = v6;
  }

  if (*(v4 + 3))
  {
    [(NPKProtoPaymentWebServiceRegistrationResponse *)self setWebServiceContextData:?];
    v4 = v6;
  }
}

@end