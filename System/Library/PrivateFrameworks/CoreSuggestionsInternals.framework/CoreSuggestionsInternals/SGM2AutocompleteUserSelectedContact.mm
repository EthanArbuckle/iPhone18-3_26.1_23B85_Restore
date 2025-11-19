@interface SGM2AutocompleteUserSelectedContact
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
- (void)setHasWasKnownContact:(BOOL)a3;
- (void)setHasWasSuggestedContact:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SGM2AutocompleteUserSelectedContact

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (*(v4 + 2))
  {
    v6 = v4;
    [(SGM2AutocompleteUserSelectedContact *)self setKey:?];
    v4 = v6;
  }

  v5 = *(v4 + 28);
  if ((v5 & 4) != 0)
  {
    self->_wasSuggestedContact = *(v4 + 25);
    *&self->_has |= 4u;
    v5 = *(v4 + 28);
    if ((v5 & 2) == 0)
    {
LABEL_5:
      if ((v5 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*(v4 + 28) & 2) == 0)
  {
    goto LABEL_5;
  }

  self->_wasKnownContact = *(v4 + 24);
  *&self->_has |= 2u;
  if (*(v4 + 28))
  {
LABEL_6:
    self->_app = *(v4 + 2);
    *&self->_has |= 1u;
  }

LABEL_7:
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_key hash];
  if ((*&self->_has & 4) == 0)
  {
    v4 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v5 = 0;
    if (*&self->_has)
    {
      goto LABEL_4;
    }

LABEL_7:
    v6 = 0;
    return v4 ^ v3 ^ v5 ^ v6;
  }

  v4 = 2654435761 * self->_wasSuggestedContact;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v5 = 2654435761 * self->_wasKnownContact;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v6 = 2654435761 * self->_app;
  return v4 ^ v3 ^ v5 ^ v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  key = self->_key;
  if (key | *(v4 + 2))
  {
    if (![(NSString *)key isEqual:?])
    {
      goto LABEL_23;
    }
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 28) & 4) == 0)
    {
      goto LABEL_23;
    }

    v7 = *(v4 + 25);
    if (self->_wasSuggestedContact)
    {
      if ((*(v4 + 25) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    else if (*(v4 + 25))
    {
      goto LABEL_23;
    }
  }

  else if ((*(v4 + 28) & 4) != 0)
  {
    goto LABEL_23;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 28) & 2) == 0)
    {
      goto LABEL_23;
    }

    v8 = *(v4 + 24);
    if (self->_wasKnownContact)
    {
      if ((*(v4 + 24) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    else if (*(v4 + 24))
    {
      goto LABEL_23;
    }
  }

  else if ((*(v4 + 28) & 2) != 0)
  {
    goto LABEL_23;
  }

  v6 = (*(v4 + 28) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 28) & 1) != 0 && self->_app == *(v4 + 2))
    {
      v6 = 1;
      goto LABEL_24;
    }

LABEL_23:
    v6 = 0;
  }

LABEL_24:

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_key copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  has = self->_has;
  if ((has & 4) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 24) = self->_wasKnownContact;
    *(v5 + 28) |= 2u;
    if ((*&self->_has & 1) == 0)
    {
      return v5;
    }

    goto LABEL_4;
  }

  *(v5 + 25) = self->_wasSuggestedContact;
  *(v5 + 28) |= 4u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (has)
  {
LABEL_4:
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
  if ((has & 4) != 0)
  {
    *(v4 + 25) = self->_wasSuggestedContact;
    *(v4 + 28) |= 4u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 1) == 0)
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

  *(v4 + 24) = self->_wasKnownContact;
  *(v4 + 28) |= 2u;
  if (*&self->_has)
  {
LABEL_6:
    *(v4 + 2) = self->_app;
    *(v4 + 28) |= 1u;
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
  if ((has & 4) != 0)
  {
    wasSuggestedContact = self->_wasSuggestedContact;
    PBDataWriterWriteBOOLField();
    v4 = v9;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 1) == 0)
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

  wasKnownContact = self->_wasKnownContact;
  PBDataWriterWriteBOOLField();
  v4 = v9;
  if (*&self->_has)
  {
LABEL_6:
    app = self->_app;
    PBDataWriterWriteInt32Field();
    v4 = v9;
  }

LABEL_7:
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
  if ((has & 4) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v8 = [MEMORY[0x277CCABB0] numberWithBool:self->_wasKnownContact];
    [v4 setObject:v8 forKey:@"wasKnownContact"];

    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_13;
    }

LABEL_9:
    app = self->_app;
    if (app >= 0xC)
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_app];
    }

    else
    {
      v10 = off_27894AC88[app];
    }

    [v4 setObject:v10 forKey:@"app"];

    goto LABEL_13;
  }

  v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_wasSuggestedContact];
  [v4 setObject:v7 forKey:@"wasSuggestedContact"];

  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (has)
  {
    goto LABEL_9;
  }

LABEL_13:

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = SGM2AutocompleteUserSelectedContact;
  v4 = [(SGM2AutocompleteUserSelectedContact *)&v8 description];
  v5 = [(SGM2AutocompleteUserSelectedContact *)self dictionaryRepresentation];
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

- (void)setHasWasKnownContact:(BOOL)a3
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

- (void)setHasWasSuggestedContact:(BOOL)a3
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

- (NSString)key
{
  if (self->_key)
  {
    return self->_key;
  }

  else
  {
    return @"AutocompleteUserSelectedContact";
  }
}

@end