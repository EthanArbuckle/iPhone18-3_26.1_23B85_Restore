@interface SGM2SuggestedContactDetailShown
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
- (void)writeTo:(id)to;
@end

@implementation SGM2SuggestedContactDetailShown

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (*(fromCopy + 2))
  {
    v5 = fromCopy;
    [(SGM2SuggestedContactDetailShown *)self setKey:?];
    fromCopy = v5;
  }

  if (fromCopy[6])
  {
    self->_app = fromCopy[2];
    *&self->_has |= 1u;
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_key hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_app;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_8;
  }

  key = self->_key;
  if (key | *(equalCopy + 2))
  {
    if (![(NSString *)key isEqual:?])
    {
      goto LABEL_8;
    }
  }

  v6 = (*(equalCopy + 24) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 24) & 1) != 0 && self->_app == *(equalCopy + 2))
    {
      v6 = 1;
      goto LABEL_9;
    }

LABEL_8:
    v6 = 0;
  }

LABEL_9:

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_key copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_app;
    *(v5 + 24) |= 1u;
  }

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_key)
  {
    v5 = toCopy;
    [toCopy setKey:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 2) = self->_app;
    *(toCopy + 24) |= 1u;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_key)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    app = self->_app;
    PBDataWriterWriteInt32Field();
    toCopy = v6;
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

  if (*&self->_has)
  {
    app = self->_app;
    if (app >= 0xC)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_app];
    }

    else
    {
      v7 = off_27894B4D0[app];
    }

    [v4 setObject:v7 forKey:@"app"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = SGM2SuggestedContactDetailShown;
  v4 = [(SGM2SuggestedContactDetailShown *)&v8 description];
  dictionaryRepresentation = [(SGM2SuggestedContactDetailShown *)self dictionaryRepresentation];
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

- (NSString)key
{
  if (self->_key)
  {
    return self->_key;
  }

  else
  {
    return @"SuggestedContactDetailShown";
  }
}

@end