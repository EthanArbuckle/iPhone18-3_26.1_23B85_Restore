@interface NPKProtoStandalonePaymentSetupProductPaymentOption
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasPriority:(BOOL)a3;
- (void)setHasSupportedProtocols:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKProtoStandalonePaymentSetupProductPaymentOption

- (void)setHasPriority:(BOOL)a3
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

- (void)setHasSupportedProtocols:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoStandalonePaymentSetupProductPaymentOption;
  v4 = [(NPKProtoStandalonePaymentSetupProductPaymentOption *)&v8 description];
  v5 = [(NPKProtoStandalonePaymentSetupProductPaymentOption *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_priority];
    [v3 setObject:v7 forKey:@"priority"];

    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  v8 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_cardType];
  [v3 setObject:v8 forKey:@"cardType"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v5 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_supportedProtocols];
    [v3 setObject:v5 forKey:@"supportedProtocols"];
  }

LABEL_5:

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v9 = v4;
  if ((has & 2) != 0)
  {
    priority = self->_priority;
    PBDataWriterWriteUint64Field();
    v4 = v9;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  cardType = self->_cardType;
  PBDataWriterWriteInt64Field();
  v4 = v9;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    supportedProtocols = self->_supportedProtocols;
    PBDataWriterWriteInt64Field();
    v4 = v9;
  }

LABEL_5:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[2] = self->_priority;
    *(v4 + 32) |= 2u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  v4[1] = self->_cardType;
  *(v4 + 32) |= 1u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v4[3] = self->_supportedProtocols;
    *(v4 + 32) |= 4u;
  }

LABEL_5:
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(result + 2) = self->_priority;
    *(result + 32) |= 2u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        return result;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  *(result + 1) = self->_cardType;
  *(result + 32) |= 1u;
  if ((*&self->_has & 4) == 0)
  {
    return result;
  }

LABEL_4:
  *(result + 3) = self->_supportedProtocols;
  *(result + 32) |= 4u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 32) & 2) == 0 || self->_priority != *(v4 + 2))
    {
      goto LABEL_16;
    }
  }

  else if ((*(v4 + 32) & 2) != 0)
  {
LABEL_16:
    v5 = 0;
    goto LABEL_17;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 32) & 1) == 0 || self->_cardType != *(v4 + 1))
    {
      goto LABEL_16;
    }
  }

  else if (*(v4 + 32))
  {
    goto LABEL_16;
  }

  v5 = (*(v4 + 32) & 4) == 0;
  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 32) & 4) == 0 || self->_supportedProtocols != *(v4 + 3))
    {
      goto LABEL_16;
    }

    v5 = 1;
  }

LABEL_17:

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) == 0)
  {
    v2 = 0;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v4 = 0;
    return v3 ^ v2 ^ v4;
  }

  v2 = 2654435761u * self->_priority;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v3 = 2654435761 * self->_cardType;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v4 = 2654435761 * self->_supportedProtocols;
  return v3 ^ v2 ^ v4;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 32);
  if ((v5 & 2) != 0)
  {
    self->_priority = *(v4 + 2);
    *&self->_has |= 2u;
    v5 = *(v4 + 32);
    if ((v5 & 1) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(v4 + 32) & 1) == 0)
  {
    goto LABEL_3;
  }

  self->_cardType = *(v4 + 1);
  *&self->_has |= 1u;
  if ((*(v4 + 32) & 4) != 0)
  {
LABEL_4:
    self->_supportedProtocols = *(v4 + 3);
    *&self->_has |= 4u;
  }

LABEL_5:
}

@end