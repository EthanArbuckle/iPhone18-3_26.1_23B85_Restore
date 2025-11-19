@interface NPKProtoStandaloneCreditAccountCredential
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasCurrentBalance:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKProtoStandaloneCreditAccountCredential

- (void)setHasCurrentBalance:(BOOL)a3
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
  v8.super_class = NPKProtoStandaloneCreditAccountCredential;
  v4 = [(NPKProtoStandaloneCreditAccountCredential *)&v8 description];
  v5 = [(NPKProtoStandaloneCreditAccountCredential *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  paymentCredential = self->_paymentCredential;
  if (paymentCredential)
  {
    v5 = [(NPKProtoStandalonePaymentCredential *)paymentCredential dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"paymentCredential"];
  }

  paymentPass = self->_paymentPass;
  if (paymentPass)
  {
    v7 = [(NPKProtoStandalonePaymentPass *)paymentPass dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"paymentPass"];
  }

  currencyCode = self->_currencyCode;
  if (currencyCode)
  {
    [v3 setObject:currencyCode forKey:@"currencyCode"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithDouble:self->_currentBalance];
    [v3 setObject:v10 forKey:@"currentBalance"];

    has = self->_has;
  }

  if (has)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithDouble:self->_creditLimit];
    [v3 setObject:v11 forKey:@"creditLimit"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (!self->_paymentCredential)
  {
    [NPKProtoStandaloneCreditAccountCredential writeTo:];
  }

  v9 = v4;
  PBDataWriterWriteSubmessage();
  if (self->_paymentPass)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_currencyCode)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  v6 = v9;
  if ((has & 2) != 0)
  {
    currentBalance = self->_currentBalance;
    PBDataWriterWriteDoubleField();
    v6 = v9;
    has = self->_has;
  }

  if (has)
  {
    creditLimit = self->_creditLimit;
    PBDataWriterWriteDoubleField();
    v6 = v9;
  }
}

- (void)copyTo:(id)a3
{
  v5 = a3;
  [v5 setPaymentCredential:self->_paymentCredential];
  if (self->_paymentPass)
  {
    [v5 setPaymentPass:?];
  }

  if (self->_currencyCode)
  {
    [v5 setCurrencyCode:?];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 2) = *&self->_currentBalance;
    *(v5 + 48) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 1) = *&self->_creditLimit;
    *(v5 + 48) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NPKProtoStandalonePaymentCredential *)self->_paymentCredential copyWithZone:a3];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  v8 = [(NPKProtoStandalonePaymentPass *)self->_paymentPass copyWithZone:a3];
  v9 = *(v5 + 40);
  *(v5 + 40) = v8;

  v10 = [(NSString *)self->_currencyCode copyWithZone:a3];
  v11 = *(v5 + 24);
  *(v5 + 24) = v10;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_currentBalance;
    *(v5 + 48) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 8) = self->_creditLimit;
    *(v5 + 48) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  paymentCredential = self->_paymentCredential;
  if (paymentCredential | *(v4 + 4))
  {
    if (![(NPKProtoStandalonePaymentCredential *)paymentCredential isEqual:?])
    {
      goto LABEL_17;
    }
  }

  paymentPass = self->_paymentPass;
  if (paymentPass | *(v4 + 5))
  {
    if (![(NPKProtoStandalonePaymentPass *)paymentPass isEqual:?])
    {
      goto LABEL_17;
    }
  }

  currencyCode = self->_currencyCode;
  if (currencyCode | *(v4 + 3))
  {
    if (![(NSString *)currencyCode isEqual:?])
    {
      goto LABEL_17;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 48) & 2) == 0 || self->_currentBalance != *(v4 + 2))
    {
      goto LABEL_17;
    }
  }

  else if ((*(v4 + 48) & 2) != 0)
  {
LABEL_17:
    v8 = 0;
    goto LABEL_18;
  }

  v8 = (*(v4 + 48) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 48) & 1) == 0 || self->_creditLimit != *(v4 + 1))
    {
      goto LABEL_17;
    }

    v8 = 1;
  }

LABEL_18:

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NPKProtoStandalonePaymentCredential *)self->_paymentCredential hash];
  v4 = [(NPKProtoStandalonePaymentPass *)self->_paymentPass hash];
  v5 = [(NSString *)self->_currencyCode hash];
  if ((*&self->_has & 2) != 0)
  {
    currentBalance = self->_currentBalance;
    if (currentBalance < 0.0)
    {
      currentBalance = -currentBalance;
    }

    *v6.i64 = floor(currentBalance + 0.5);
    v10 = (currentBalance - *v6.i64) * 1.84467441e19;
    *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
    v11.f64[0] = NAN;
    v11.f64[1] = NAN;
    v6 = vbslq_s8(vnegq_f64(v11), v7, v6);
    v8 = 2654435761u * *v6.i64;
    if (v10 >= 0.0)
    {
      if (v10 > 0.0)
      {
        v8 += v10;
      }
    }

    else
    {
      v8 -= fabs(v10);
    }
  }

  else
  {
    v8 = 0;
  }

  if (*&self->_has)
  {
    creditLimit = self->_creditLimit;
    if (creditLimit < 0.0)
    {
      creditLimit = -creditLimit;
    }

    *v6.i64 = floor(creditLimit + 0.5);
    v14 = (creditLimit - *v6.i64) * 1.84467441e19;
    *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
    v15.f64[0] = NAN;
    v15.f64[1] = NAN;
    v12 = 2654435761u * *vbslq_s8(vnegq_f64(v15), v7, v6).i64;
    if (v14 >= 0.0)
    {
      if (v14 > 0.0)
      {
        v12 += v14;
      }
    }

    else
    {
      v12 -= fabs(v14);
    }
  }

  else
  {
    v12 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v8 ^ v12;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  paymentCredential = self->_paymentCredential;
  v6 = *(v4 + 4);
  v10 = v4;
  if (paymentCredential)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(NPKProtoStandalonePaymentCredential *)paymentCredential mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(NPKProtoStandaloneCreditAccountCredential *)self setPaymentCredential:?];
  }

  v4 = v10;
LABEL_7:
  paymentPass = self->_paymentPass;
  v8 = *(v4 + 5);
  if (paymentPass)
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    [(NPKProtoStandalonePaymentPass *)paymentPass mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    [(NPKProtoStandaloneCreditAccountCredential *)self setPaymentPass:?];
  }

  v4 = v10;
LABEL_13:
  if (*(v4 + 3))
  {
    [(NPKProtoStandaloneCreditAccountCredential *)self setCurrencyCode:?];
    v4 = v10;
  }

  v9 = *(v4 + 48);
  if ((v9 & 2) != 0)
  {
    self->_currentBalance = *(v4 + 2);
    *&self->_has |= 2u;
    v9 = *(v4 + 48);
  }

  if (v9)
  {
    self->_creditLimit = *(v4 + 1);
    *&self->_has |= 1u;
  }
}

@end