@interface SGM2UnknownContactInformationShown
- (BOOL)isEqual:(id)equal;
- (NSString)key;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsApp:(id)app;
- (int)app;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasDidInteractionLookup:(BOOL)lookup;
- (void)setHasWasSuggestedContact:(BOOL)contact;
- (void)writeTo:(id)to;
@end

@implementation SGM2UnknownContactInformationShown

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (*(fromCopy + 2))
  {
    v6 = fromCopy;
    [(SGM2UnknownContactInformationShown *)self setKey:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 28);
  if (v5)
  {
    self->_app = *(fromCopy + 2);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 28);
    if ((v5 & 2) == 0)
    {
LABEL_5:
      if ((v5 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*(fromCopy + 28) & 2) == 0)
  {
    goto LABEL_5;
  }

  self->_wasSuggestedContact = *(fromCopy + 24);
  *&self->_has |= 2u;
  if ((*(fromCopy + 28) & 4) != 0)
  {
LABEL_6:
    self->_didInteractionLookup = *(fromCopy + 25);
    *&self->_has |= 4u;
  }

LABEL_7:
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_key hash];
  if ((*&self->_has & 1) == 0)
  {
    v4 = 0;
    if ((*&self->_has & 2) != 0)
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

  v4 = 2654435761 * self->_app;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v5 = 2654435761 * self->_wasSuggestedContact;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v6 = 2654435761 * self->_didInteractionLookup;
  return v4 ^ v3 ^ v5 ^ v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  key = self->_key;
  if (key | *(equalCopy + 2))
  {
    if (![(NSString *)key isEqual:?])
    {
      goto LABEL_17;
    }
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 28) & 1) == 0 || self->_app != *(equalCopy + 2))
    {
      goto LABEL_17;
    }
  }

  else if (*(equalCopy + 28))
  {
    goto LABEL_17;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 28) & 2) == 0)
    {
      goto LABEL_17;
    }

    v8 = *(equalCopy + 24);
    if (self->_wasSuggestedContact)
    {
      if ((*(equalCopy + 24) & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    else if (*(equalCopy + 24))
    {
      goto LABEL_17;
    }
  }

  else if ((*(equalCopy + 28) & 2) != 0)
  {
    goto LABEL_17;
  }

  v6 = (*(equalCopy + 28) & 4) == 0;
  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 28) & 4) != 0)
    {
      if (self->_didInteractionLookup)
      {
        if (*(equalCopy + 25))
        {
          goto LABEL_25;
        }
      }

      else if (!*(equalCopy + 25))
      {
LABEL_25:
        v6 = 1;
        goto LABEL_18;
      }
    }

LABEL_17:
    v6 = 0;
  }

LABEL_18:

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_key copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  has = self->_has;
  if ((has & 1) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 24) = self->_wasSuggestedContact;
    *(v5 + 28) |= 2u;
    if ((*&self->_has & 4) == 0)
    {
      return v5;
    }

    goto LABEL_4;
  }

  *(v5 + 8) = self->_app;
  *(v5 + 28) |= 1u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((has & 4) != 0)
  {
LABEL_4:
    *(v5 + 25) = self->_didInteractionLookup;
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
  if (has)
  {
    *(toCopy + 2) = self->_app;
    *(toCopy + 28) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  *(toCopy + 24) = self->_wasSuggestedContact;
  *(toCopy + 28) |= 2u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_6:
    *(toCopy + 25) = self->_didInteractionLookup;
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
  if (has)
  {
    app = self->_app;
    PBDataWriterWriteInt32Field();
    toCopy = v9;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  wasSuggestedContact = self->_wasSuggestedContact;
  PBDataWriterWriteBOOLField();
  toCopy = v9;
  if ((*&self->_has & 4) != 0)
  {
LABEL_6:
    didInteractionLookup = self->_didInteractionLookup;
    PBDataWriterWriteBOOLField();
    toCopy = v9;
  }

LABEL_7:
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
  if (has)
  {
    app = self->_app;
    if (app >= 0xC)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_app];
    }

    else
    {
      v8 = off_27894B590[app];
    }

    [v4 setObject:v8 forKey:@"app"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithBool:self->_wasSuggestedContact];
    [v4 setObject:v9 forKey:@"wasSuggestedContact"];

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithBool:self->_didInteractionLookup];
    [v4 setObject:v10 forKey:@"didInteractionLookup"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = SGM2UnknownContactInformationShown;
  v4 = [(SGM2UnknownContactInformationShown *)&v8 description];
  dictionaryRepresentation = [(SGM2UnknownContactInformationShown *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)setHasDidInteractionLookup:(BOOL)lookup
{
  if (lookup)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasWasSuggestedContact:(BOOL)contact
{
  if (contact)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)StringAsApp:(id)app
{
  appCopy = app;
  if ([appCopy isEqualToString:@"SGMContactDetailUsedAppMessages"])
  {
    v4 = 0;
  }

  else if ([appCopy isEqualToString:@"SGMContactDetailUsedAppPhone"])
  {
    v4 = 1;
  }

  else if ([appCopy isEqualToString:@"SGMContactDetailUsedAppMail"])
  {
    v4 = 2;
  }

  else if ([appCopy isEqualToString:@"SGMContactDetailUsedAppCalendar"])
  {
    v4 = 3;
  }

  else if ([appCopy isEqualToString:@"SGMContactDetailUsedAppOther"])
  {
    v4 = 4;
  }

  else if ([appCopy isEqualToString:@"SGMContactDetailUsedAppFaceTime"])
  {
    v4 = 5;
  }

  else if ([appCopy isEqualToString:@"SGMContactDetailUsedAppAddressBook"])
  {
    v4 = 6;
  }

  else if ([appCopy isEqualToString:@"SGMContactDetailUsedAppSpringBoard"])
  {
    v4 = 7;
  }

  else if ([appCopy isEqualToString:@"SGMContactDetailUsedAppHome"])
  {
    v4 = 8;
  }

  else if ([appCopy isEqualToString:@"SGMContactDetailUsedAppMaps"])
  {
    v4 = 9;
  }

  else if ([appCopy isEqualToString:@"SGMContactDetailUsedAppFitness"])
  {
    v4 = 10;
  }

  else if ([appCopy isEqualToString:@"SGMContactDetailUsedAppReminders"])
  {
    v4 = 11;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)app
{
  if (*&self->_has)
  {
    return self->_app;
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
    return @"UnknownShown";
  }
}

@end