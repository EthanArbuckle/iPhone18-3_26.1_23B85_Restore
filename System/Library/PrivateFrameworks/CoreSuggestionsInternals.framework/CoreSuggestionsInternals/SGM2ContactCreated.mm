@interface SGM2ContactCreated
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
- (void)setHasWasSuggestedContact:(BOOL)contact;
- (void)writeTo:(id)to;
@end

@implementation SGM2ContactCreated

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (*(fromCopy + 2))
  {
    v6 = fromCopy;
    [(SGM2ContactCreated *)self setKey:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 28);
  if ((v5 & 2) != 0)
  {
    self->_wasSuggestedContact = *(fromCopy + 24);
    *&self->_has |= 2u;
    v5 = *(fromCopy + 28);
  }

  if (v5)
  {
    self->_app = *(fromCopy + 2);
    *&self->_has |= 1u;
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_key hash];
  if ((*&self->_has & 2) != 0)
  {
    v4 = 2654435761 * self->_wasSuggestedContact;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    return v4 ^ v3 ^ v5;
  }

  v4 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = 2654435761 * self->_app;
  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  key = self->_key;
  if (key | *(equalCopy + 2))
  {
    if (![(NSString *)key isEqual:?])
    {
      goto LABEL_11;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 28) & 2) == 0)
    {
      goto LABEL_11;
    }

    v8 = *(equalCopy + 24);
    if (self->_wasSuggestedContact)
    {
      if ((*(equalCopy + 24) & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    else if (*(equalCopy + 24))
    {
      goto LABEL_11;
    }
  }

  else if ((*(equalCopy + 28) & 2) != 0)
  {
    goto LABEL_11;
  }

  v6 = (*(equalCopy + 28) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 28) & 1) != 0 && self->_app == *(equalCopy + 2))
    {
      v6 = 1;
      goto LABEL_12;
    }

LABEL_11:
    v6 = 0;
  }

LABEL_12:

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_key copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 24) = self->_wasSuggestedContact;
    *(v5 + 28) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 8) = self->_app;
    *(v5 + 28) |= 1u;
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
    *(toCopy + 24) = self->_wasSuggestedContact;
    *(toCopy + 28) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(toCopy + 2) = self->_app;
    *(toCopy + 28) |= 1u;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v8 = toCopy;
  if (self->_key)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    wasSuggestedContact = self->_wasSuggestedContact;
    PBDataWriterWriteBOOLField();
    toCopy = v8;
    has = self->_has;
  }

  if (has)
  {
    app = self->_app;
    PBDataWriterWriteInt32Field();
    toCopy = v8;
  }
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
  if ((has & 2) != 0)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_wasSuggestedContact];
    [v4 setObject:v7 forKey:@"wasSuggestedContact"];

    has = self->_has;
  }

  if (has)
  {
    app = self->_app;
    if (app >= 0xC)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_app];
    }

    else
    {
      v9 = off_27894AD10[app];
    }

    [v4 setObject:v9 forKey:@"app"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = SGM2ContactCreated;
  v4 = [(SGM2ContactCreated *)&v8 description];
  dictionaryRepresentation = [(SGM2ContactCreated *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
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

- (NSString)key
{
  if (self->_key)
  {
    return self->_key;
  }

  else
  {
    return @"ContactCreated";
  }
}

@end