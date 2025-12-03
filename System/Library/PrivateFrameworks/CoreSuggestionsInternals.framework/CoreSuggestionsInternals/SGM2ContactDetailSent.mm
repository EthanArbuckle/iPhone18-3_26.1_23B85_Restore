@interface SGM2ContactDetailSent
- (BOOL)isEqual:(id)equal;
- (NSString)key;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsDetail:(id)detail;
- (int)StringAsFoundIn:(id)in;
- (int)StringAsSource:(id)source;
- (int)StringAsTokens:(id)tokens;
- (int)detail;
- (int)foundIn;
- (int)source;
- (int)tokens;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasFoundIn:(BOOL)in;
- (void)setHasHasName:(BOOL)name;
- (void)setHasSource:(BOOL)source;
- (void)setHasTokens:(BOOL)tokens;
- (void)writeTo:(id)to;
@end

@implementation SGM2ContactDetailSent

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (*(fromCopy + 2))
  {
    v6 = fromCopy;
    [(SGM2ContactDetailSent *)self setKey:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 36);
  if ((v5 & 4) != 0)
  {
    self->_source = *(fromCopy + 6);
    *&self->_has |= 4u;
    v5 = *(fromCopy + 36);
    if ((v5 & 1) == 0)
    {
LABEL_5:
      if ((v5 & 2) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((*(fromCopy + 36) & 1) == 0)
  {
    goto LABEL_5;
  }

  self->_detail = *(fromCopy + 2);
  *&self->_has |= 1u;
  v5 = *(fromCopy + 36);
  if ((v5 & 2) == 0)
  {
LABEL_6:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  self->_foundIn = *(fromCopy + 3);
  *&self->_has |= 2u;
  v5 = *(fromCopy + 36);
  if ((v5 & 0x10) == 0)
  {
LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_15:
  self->_hasName = *(fromCopy + 32);
  *&self->_has |= 0x10u;
  if ((*(fromCopy + 36) & 8) != 0)
  {
LABEL_8:
    self->_tokens = *(fromCopy + 7);
    *&self->_has |= 8u;
  }

LABEL_9:
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_key hash];
  if ((*&self->_has & 4) != 0)
  {
    v4 = 2654435761 * self->_source;
    if (*&self->_has)
    {
LABEL_3:
      v5 = 2654435761 * self->_detail;
      if ((*&self->_has & 2) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v4 = 0;
    if (*&self->_has)
    {
      goto LABEL_3;
    }
  }

  v5 = 0;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    v6 = 2654435761 * self->_foundIn;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v7 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_6;
    }

LABEL_11:
    v8 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
  }

LABEL_9:
  v6 = 0;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  v7 = 2654435761 * self->_hasName;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  v8 = 2654435761 * self->_tokens;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_26;
  }

  key = self->_key;
  if (key | *(equalCopy + 2))
  {
    if (![(NSString *)key isEqual:?])
    {
      goto LABEL_26;
    }
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 36) & 4) == 0 || self->_source != *(equalCopy + 6))
    {
      goto LABEL_26;
    }
  }

  else if ((*(equalCopy + 36) & 4) != 0)
  {
    goto LABEL_26;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 36) & 1) == 0 || self->_detail != *(equalCopy + 2))
    {
      goto LABEL_26;
    }
  }

  else if (*(equalCopy + 36))
  {
    goto LABEL_26;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 36) & 2) == 0 || self->_foundIn != *(equalCopy + 3))
    {
      goto LABEL_26;
    }
  }

  else if ((*(equalCopy + 36) & 2) != 0)
  {
    goto LABEL_26;
  }

  if ((*&self->_has & 0x10) == 0)
  {
    if ((*(equalCopy + 36) & 0x10) == 0)
    {
      goto LABEL_21;
    }

LABEL_26:
    v6 = 0;
    goto LABEL_27;
  }

  if ((*(equalCopy + 36) & 0x10) == 0)
  {
    goto LABEL_26;
  }

  v8 = *(equalCopy + 32);
  if (self->_hasName)
  {
    if ((*(equalCopy + 32) & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  else if (*(equalCopy + 32))
  {
    goto LABEL_26;
  }

LABEL_21:
  v6 = (*(equalCopy + 36) & 8) == 0;
  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 36) & 8) == 0 || self->_tokens != *(equalCopy + 7))
    {
      goto LABEL_26;
    }

    v6 = 1;
  }

LABEL_27:

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_key copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v5 + 24) = self->_source;
    *(v5 + 36) |= 4u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 8) = self->_detail;
  *(v5 + 36) |= 1u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

LABEL_11:
    *(v5 + 32) = self->_hasName;
    *(v5 + 36) |= 0x10u;
    if ((*&self->_has & 8) == 0)
    {
      return v5;
    }

    goto LABEL_6;
  }

LABEL_10:
  *(v5 + 12) = self->_foundIn;
  *(v5 + 36) |= 2u;
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((has & 8) != 0)
  {
LABEL_6:
    *(v5 + 28) = self->_tokens;
    *(v5 + 36) |= 8u;
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
  if ((has & 4) != 0)
  {
    *(toCopy + 6) = self->_source;
    *(toCopy + 36) |= 4u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_5:
      if ((has & 2) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

  *(toCopy + 2) = self->_detail;
  *(toCopy + 36) |= 1u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(toCopy + 3) = self->_foundIn;
  *(toCopy + 36) |= 2u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_7:
    if ((has & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_15:
  *(toCopy + 32) = self->_hasName;
  *(toCopy + 36) |= 0x10u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_8:
    *(toCopy + 7) = self->_tokens;
    *(toCopy + 36) |= 8u;
  }

LABEL_9:
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v11 = toCopy;
  if (self->_key)
  {
    PBDataWriterWriteStringField();
    toCopy = v11;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    source = self->_source;
    PBDataWriterWriteInt32Field();
    toCopy = v11;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_5:
      if ((has & 2) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

  detail = self->_detail;
  PBDataWriterWriteInt32Field();
  toCopy = v11;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  foundIn = self->_foundIn;
  PBDataWriterWriteInt32Field();
  toCopy = v11;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_7:
    if ((has & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_15:
  hasName = self->_hasName;
  PBDataWriterWriteBOOLField();
  toCopy = v11;
  if ((*&self->_has & 8) != 0)
  {
LABEL_8:
    tokens = self->_tokens;
    PBDataWriterWriteInt32Field();
    toCopy = v11;
  }

LABEL_9:
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  key = self->_key;
  if (key)
  {
    [dictionary setObject:key forKey:@"key"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    source = self->_source;
    if (source)
    {
      if (source == 1)
      {
        v8 = @"SGMDocumentTypeMessage";
      }

      else
      {
        v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_source];
      }
    }

    else
    {
      v8 = @"SGMDocumentTypeEmail";
    }

    [v4 setObject:v8 forKey:@"source"];

    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_5:
      if ((has & 2) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_19;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

  detail = self->_detail;
  if (detail >= 5)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_detail];
  }

  else
  {
    v10 = off_27894AF88[detail];
  }

  [v4 setObject:v10 forKey:@"detail"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

LABEL_23:
    v13 = [MEMORY[0x277CCABB0] numberWithBool:self->_hasName];
    [v4 setObject:v13 forKey:@"hasName"];

    if ((*&self->_has & 8) == 0)
    {
      goto LABEL_28;
    }

LABEL_24:
    tokens = self->_tokens;
    if (tokens >= 5)
    {
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_tokens];
    }

    else
    {
      v15 = off_27894AFD0[tokens];
    }

    [v4 setObject:v15 forKey:@"tokens"];

    goto LABEL_28;
  }

LABEL_19:
  foundIn = self->_foundIn;
  if (foundIn >= 4)
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_foundIn];
  }

  else
  {
    v12 = off_27894AFB0[foundIn];
  }

  [v4 setObject:v12 forKey:@"foundIn"];

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    goto LABEL_23;
  }

LABEL_7:
  if ((has & 8) != 0)
  {
    goto LABEL_24;
  }

LABEL_28:

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = SGM2ContactDetailSent;
  v4 = [(SGM2ContactDetailSent *)&v8 description];
  dictionaryRepresentation = [(SGM2ContactDetailSent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (int)StringAsTokens:(id)tokens
{
  tokensCopy = tokens;
  if ([tokensCopy isEqualToString:@"SGMLowCount0"])
  {
    v4 = 0;
  }

  else if ([tokensCopy isEqualToString:@"SGMLowCount1"])
  {
    v4 = 1;
  }

  else if ([tokensCopy isEqualToString:@"SGMLowCount2"])
  {
    v4 = 2;
  }

  else if ([tokensCopy isEqualToString:@"SGMLowCount3to4"])
  {
    v4 = 3;
  }

  else if ([tokensCopy isEqualToString:@"SGMLowCount5orMore"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasTokens:(BOOL)tokens
{
  if (tokens)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (int)tokens
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_tokens;
  }

  else
  {
    return 0;
  }
}

- (void)setHasHasName:(BOOL)name
{
  if (name)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (int)StringAsFoundIn:(id)in
{
  inCopy = in;
  if ([inCopy isEqualToString:@"SGMContactDetailFoundInNotFound"])
  {
    v4 = 0;
  }

  else if ([inCopy isEqualToString:@"SGMContactDetailFoundInSenderCNContact"])
  {
    v4 = 1;
  }

  else if ([inCopy isEqualToString:@"SGMContactDetailFoundInOtherCNContact"])
  {
    v4 = 2;
  }

  else if ([inCopy isEqualToString:@"SGMContactDetailFoundInSuggestions"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasFoundIn:(BOOL)in
{
  if (in)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)foundIn
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_foundIn;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsDetail:(id)detail
{
  detailCopy = detail;
  if ([detailCopy isEqualToString:@"SGMContactDetailTypeEmail"])
  {
    v4 = 0;
  }

  else if ([detailCopy isEqualToString:@"SGMContactDetailTypePhone"])
  {
    v4 = 1;
  }

  else if ([detailCopy isEqualToString:@"SGMContactDetailTypeAddress"])
  {
    v4 = 2;
  }

  else if ([detailCopy isEqualToString:@"SGMContactDetailTypeOther"])
  {
    v4 = 3;
  }

  else if ([detailCopy isEqualToString:@"SGMContactDetailTypeBirthday"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)detail
{
  if (*&self->_has)
  {
    return self->_detail;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsSource:(id)source
{
  sourceCopy = source;
  if ([sourceCopy isEqualToString:@"SGMDocumentTypeEmail"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [sourceCopy isEqualToString:@"SGMDocumentTypeMessage"];
  }

  return v4;
}

- (void)setHasSource:(BOOL)source
{
  if (source)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)source
{
  if ((*&self->_has & 4) != 0)
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
    return @"ContactDetailSent";
  }
}

@end