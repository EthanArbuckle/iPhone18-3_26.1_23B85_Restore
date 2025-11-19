@interface SGM2EventICSOpportunity
- (BOOL)isEqual:(id)a3;
- (NSString)key;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsRecipient:(id)a3;
- (int)StringAsSource:(id)a3;
- (int)recipient;
- (int)source;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasAccountSetup:(BOOL)a3;
- (void)setHasSource:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SGM2EventICSOpportunity

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (*(v4 + 1))
  {
    v6 = v4;
    [(SGM2EventICSOpportunity *)self setKey:?];
    v4 = v6;
  }

  v5 = *(v4 + 28);
  if ((v5 & 2) != 0)
  {
    self->_source = *(v4 + 5);
    *&self->_has |= 2u;
    v5 = *(v4 + 28);
    if ((v5 & 1) == 0)
    {
LABEL_5:
      if ((v5 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*(v4 + 28) & 1) == 0)
  {
    goto LABEL_5;
  }

  self->_recipient = *(v4 + 4);
  *&self->_has |= 1u;
  if ((*(v4 + 28) & 4) != 0)
  {
LABEL_6:
    self->_accountSetup = *(v4 + 24);
    *&self->_has |= 4u;
  }

LABEL_7:
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_key hash];
  if ((*&self->_has & 2) == 0)
  {
    v4 = 0;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_6:
    v5 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v6 = 0;
    return v4 ^ v3 ^ v5 ^ v6;
  }

  v4 = 2654435761 * self->_source;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v5 = 2654435761 * self->_recipient;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v6 = 2654435761 * self->_accountSetup;
  return v4 ^ v3 ^ v5 ^ v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  key = self->_key;
  if (key | *(v4 + 1))
  {
    if (![(NSString *)key isEqual:?])
    {
      goto LABEL_16;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 28) & 2) == 0 || self->_source != *(v4 + 5))
    {
      goto LABEL_16;
    }
  }

  else if ((*(v4 + 28) & 2) != 0)
  {
    goto LABEL_16;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 28) & 1) == 0 || self->_recipient != *(v4 + 4))
    {
      goto LABEL_16;
    }
  }

  else if (*(v4 + 28))
  {
    goto LABEL_16;
  }

  v6 = (*(v4 + 28) & 4) == 0;
  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 28) & 4) == 0)
    {
LABEL_16:
      v6 = 0;
      goto LABEL_17;
    }

    if (self->_accountSetup)
    {
      if ((*(v4 + 24) & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    else if (*(v4 + 24))
    {
      goto LABEL_16;
    }

    v6 = 1;
  }

LABEL_17:

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_key copyWithZone:a3];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  has = self->_has;
  if ((has & 2) == 0)
  {
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 16) = self->_recipient;
    *(v5 + 28) |= 1u;
    if ((*&self->_has & 4) == 0)
    {
      return v5;
    }

    goto LABEL_4;
  }

  *(v5 + 20) = self->_source;
  *(v5 + 28) |= 2u;
  has = self->_has;
  if (has)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((has & 4) != 0)
  {
LABEL_4:
    *(v5 + 24) = self->_accountSetup;
    *(v5 + 28) |= 4u;
  }

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (self->_key)
  {
    v6 = v4;
    [v4 setKey:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v4 + 5) = self->_source;
    *(v4 + 28) |= 2u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_5:
      if ((has & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

  *(v4 + 4) = self->_recipient;
  *(v4 + 28) |= 1u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_6:
    *(v4 + 24) = self->_accountSetup;
    *(v4 + 28) |= 4u;
  }

LABEL_7:
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (self->_key)
  {
    PBDataWriterWriteStringField();
    v4 = v9;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    source = self->_source;
    PBDataWriterWriteInt32Field();
    v4 = v9;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_5:
      if ((has & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

  recipient = self->_recipient;
  PBDataWriterWriteInt32Field();
  v4 = v9;
  if ((*&self->_has & 4) != 0)
  {
LABEL_6:
    accountSetup = self->_accountSetup;
    PBDataWriterWriteBOOLField();
    v4 = v9;
  }

LABEL_7:
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  key = self->_key;
  if (key)
  {
    [v3 setObject:key forKey:@"key"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    source = self->_source;
    if (source >= 5)
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_source];
    }

    else
    {
      v10 = off_1E7EFABD8[source];
    }

    [v4 setObject:v10 forKey:@"source"];

    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_5:
      if ((has & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

  recipient = self->_recipient;
  if (recipient >= 5)
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_recipient];
  }

  else
  {
    v12 = off_1E7EFABD8[recipient];
  }

  [v4 setObject:v12 forKey:@"recipient"];

  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_6:
  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_accountSetup];
  [v4 setObject:v7 forKey:@"accountSetup"];

LABEL_7:

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SGM2EventICSOpportunity;
  v4 = [(SGM2EventICSOpportunity *)&v8 description];
  v5 = [(SGM2EventICSOpportunity *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)setHasAccountSetup:(BOOL)a3
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

- (int)StringAsRecipient:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"SGMEventICSSourceTypeiCloud"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"SGMEventICSSourceTypeGoogle"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SGMEventICSSourceTypeYahoo"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"SGMEventICSSourceTypeOffice"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"SGMEventICSSourceTypeOther"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)recipient
{
  if (*&self->_has)
  {
    return self->_recipient;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsSource:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"SGMEventICSSourceTypeiCloud"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"SGMEventICSSourceTypeGoogle"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SGMEventICSSourceTypeYahoo"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"SGMEventICSSourceTypeOffice"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"SGMEventICSSourceTypeOther"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasSource:(BOOL)a3
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

- (int)source
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_source;
  }

  else
  {
    return 0;
  }
}

- (NSString)key
{
  if (self->_key)
  {
    return self->_key;
  }

  else
  {
    return @"ICSOpportunity";
  }
}

@end