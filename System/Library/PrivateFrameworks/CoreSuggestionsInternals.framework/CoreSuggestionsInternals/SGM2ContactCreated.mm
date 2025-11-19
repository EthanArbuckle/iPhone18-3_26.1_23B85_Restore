@interface SGM2ContactCreated
- (BOOL)isEqual:(id)a3;
- (NSString)key;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsApp:(id)a3;
- (int)app;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasWasSuggestedContact:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SGM2ContactCreated

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (*(v4 + 2))
  {
    v6 = v4;
    [(SGM2ContactCreated *)self setKey:?];
    v4 = v6;
  }

  v5 = *(v4 + 28);
  if ((v5 & 2) != 0)
  {
    self->_wasSuggestedContact = *(v4 + 24);
    *&self->_has |= 2u;
    v5 = *(v4 + 28);
  }

  if (v5)
  {
    self->_app = *(v4 + 2);
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  key = self->_key;
  if (key | *(v4 + 2))
  {
    if (![(NSString *)key isEqual:?])
    {
      goto LABEL_11;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 28) & 2) == 0)
    {
      goto LABEL_11;
    }

    v8 = *(v4 + 24);
    if (self->_wasSuggestedContact)
    {
      if ((*(v4 + 24) & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    else if (*(v4 + 24))
    {
      goto LABEL_11;
    }
  }

  else if ((*(v4 + 28) & 2) != 0)
  {
    goto LABEL_11;
  }

  v6 = (*(v4 + 28) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 28) & 1) != 0 && self->_app == *(v4 + 2))
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_key copyWithZone:a3];
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
    *(v4 + 24) = self->_wasSuggestedContact;
    *(v4 + 28) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v4 + 2) = self->_app;
    *(v4 + 28) |= 1u;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (self->_key)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    wasSuggestedContact = self->_wasSuggestedContact;
    PBDataWriterWriteBOOLField();
    v4 = v8;
    has = self->_has;
  }

  if (has)
  {
    app = self->_app;
    PBDataWriterWriteInt32Field();
    v4 = v8;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  key = self->_key;
  if (key)
  {
    [v3 setObject:key forKey:@"key"];
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
  v5 = [(SGM2ContactCreated *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (int)StringAsApp:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"SGMContactDetailUsedAppMessages"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"SGMContactDetailUsedAppPhone"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SGMContactDetailUsedAppMail"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"SGMContactDetailUsedAppCalendar"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"SGMContactDetailUsedAppOther"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"SGMContactDetailUsedAppFaceTime"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"SGMContactDetailUsedAppAddressBook"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"SGMContactDetailUsedAppSpringBoard"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"SGMContactDetailUsedAppHome"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"SGMContactDetailUsedAppMaps"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"SGMContactDetailUsedAppFitness"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"SGMContactDetailUsedAppReminders"])
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

- (void)setHasWasSuggestedContact:(BOOL)a3
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