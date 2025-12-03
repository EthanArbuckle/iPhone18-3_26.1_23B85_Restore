@interface SGM2EventICSOpportunity
- (BOOL)isEqual:(id)equal;
- (NSString)key;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsRecipient:(id)recipient;
- (int)StringAsSource:(id)source;
- (int)recipient;
- (int)source;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasAccountSetup:(BOOL)setup;
- (void)setHasSource:(BOOL)source;
- (void)writeTo:(id)to;
@end

@implementation SGM2EventICSOpportunity

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (*(fromCopy + 1))
  {
    v6 = fromCopy;
    [(SGM2EventICSOpportunity *)self setKey:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 28);
  if ((v5 & 2) != 0)
  {
    self->_source = *(fromCopy + 5);
    *&self->_has |= 2u;
    v5 = *(fromCopy + 28);
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

  else if ((*(fromCopy + 28) & 1) == 0)
  {
    goto LABEL_5;
  }

  self->_recipient = *(fromCopy + 4);
  *&self->_has |= 1u;
  if ((*(fromCopy + 28) & 4) != 0)
  {
LABEL_6:
    self->_accountSetup = *(fromCopy + 24);
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  key = self->_key;
  if (key | *(equalCopy + 1))
  {
    if (![(NSString *)key isEqual:?])
    {
      goto LABEL_16;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 28) & 2) == 0 || self->_source != *(equalCopy + 5))
    {
      goto LABEL_16;
    }
  }

  else if ((*(equalCopy + 28) & 2) != 0)
  {
    goto LABEL_16;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 28) & 1) == 0 || self->_recipient != *(equalCopy + 4))
    {
      goto LABEL_16;
    }
  }

  else if (*(equalCopy + 28))
  {
    goto LABEL_16;
  }

  v6 = (*(equalCopy + 28) & 4) == 0;
  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 28) & 4) == 0)
    {
LABEL_16:
      v6 = 0;
      goto LABEL_17;
    }

    if (self->_accountSetup)
    {
      if ((*(equalCopy + 24) & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    else if (*(equalCopy + 24))
    {
      goto LABEL_16;
    }

    v6 = 1;
  }

LABEL_17:

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_key copyWithZone:zone];
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

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_key)
  {
    v6 = toCopy;
    [toCopy setKey:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(toCopy + 5) = self->_source;
    *(toCopy + 28) |= 2u;
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

  *(toCopy + 4) = self->_recipient;
  *(toCopy + 28) |= 1u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_6:
    *(toCopy + 24) = self->_accountSetup;
    *(toCopy + 28) |= 4u;
  }

LABEL_7:
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v9 = toCopy;
  if (self->_key)
  {
    PBDataWriterWriteStringField();
    toCopy = v9;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    source = self->_source;
    PBDataWriterWriteInt32Field();
    toCopy = v9;
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
  toCopy = v9;
  if ((*&self->_has & 4) != 0)
  {
LABEL_6:
    accountSetup = self->_accountSetup;
    PBDataWriterWriteBOOLField();
    toCopy = v9;
  }

LABEL_7:
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  key = self->_key;
  if (key)
  {
    [dictionary setObject:key forKey:@"key"];
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
  dictionaryRepresentation = [(SGM2EventICSOpportunity *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)setHasAccountSetup:(BOOL)setup
{
  if (setup)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)StringAsRecipient:(id)recipient
{
  recipientCopy = recipient;
  if ([recipientCopy isEqualToString:@"SGMEventICSSourceTypeiCloud"])
  {
    v4 = 0;
  }

  else if ([recipientCopy isEqualToString:@"SGMEventICSSourceTypeGoogle"])
  {
    v4 = 1;
  }

  else if ([recipientCopy isEqualToString:@"SGMEventICSSourceTypeYahoo"])
  {
    v4 = 2;
  }

  else if ([recipientCopy isEqualToString:@"SGMEventICSSourceTypeOffice"])
  {
    v4 = 3;
  }

  else if ([recipientCopy isEqualToString:@"SGMEventICSSourceTypeOther"])
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

- (int)StringAsSource:(id)source
{
  sourceCopy = source;
  if ([sourceCopy isEqualToString:@"SGMEventICSSourceTypeiCloud"])
  {
    v4 = 0;
  }

  else if ([sourceCopy isEqualToString:@"SGMEventICSSourceTypeGoogle"])
  {
    v4 = 1;
  }

  else if ([sourceCopy isEqualToString:@"SGMEventICSSourceTypeYahoo"])
  {
    v4 = 2;
  }

  else if ([sourceCopy isEqualToString:@"SGMEventICSSourceTypeOffice"])
  {
    v4 = 3;
  }

  else if ([sourceCopy isEqualToString:@"SGMEventICSSourceTypeOther"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasSource:(BOOL)source
{
  if (source)
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