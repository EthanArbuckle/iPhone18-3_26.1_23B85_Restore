@interface SGM2ContactDetailUsed
- (BOOL)isEqual:(id)a3;
- (NSString)key;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsApp:(id)a3;
- (int)StringAsType:(id)a3;
- (int)app;
- (int)type;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SGM2ContactDetailUsed

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (*(v4 + 2))
  {
    v6 = v4;
    [(SGM2ContactDetailUsed *)self setKey:?];
    v4 = v6;
  }

  v5 = *(v4 + 28);
  if (v5)
  {
    self->_app = v4[2];
    *&self->_has |= 1u;
    v5 = *(v4 + 28);
  }

  if ((v5 & 2) != 0)
  {
    self->_type = v4[6];
    *&self->_has |= 2u;
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_key hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_app;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    return v4 ^ v3 ^ v5;
  }

  v4 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = 2654435761 * self->_type;
  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  key = self->_key;
  if (key | *(v4 + 2))
  {
    if (![(NSString *)key isEqual:?])
    {
      goto LABEL_13;
    }
  }

  if (*&self->_has)
  {
    if ((*(v4 + 28) & 1) == 0 || self->_app != *(v4 + 2))
    {
      goto LABEL_13;
    }
  }

  else if (*(v4 + 28))
  {
LABEL_13:
    v6 = 0;
    goto LABEL_14;
  }

  v6 = (*(v4 + 28) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 28) & 2) == 0 || self->_type != *(v4 + 6))
    {
      goto LABEL_13;
    }

    v6 = 1;
  }

LABEL_14:

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_key copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_app;
    *(v5 + 28) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 24) = self->_type;
    *(v5 + 28) |= 2u;
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
  if (has)
  {
    *(v4 + 2) = self->_app;
    *(v4 + 28) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v4 + 6) = self->_type;
    *(v4 + 28) |= 2u;
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
  if (has)
  {
    app = self->_app;
    PBDataWriterWriteInt32Field();
    v4 = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    type = self->_type;
    PBDataWriterWriteInt32Field();
    v4 = v8;
  }
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
  if (has)
  {
    app = self->_app;
    if (app >= 0xC)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_app];
    }

    else
    {
      v8 = off_1E7EFC680[app];
    }

    [v4 setObject:v8 forKey:@"app"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    type = self->_type;
    if (type >= 5)
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_type];
    }

    else
    {
      v10 = off_1E7EFC6E0[type];
    }

    [v4 setObject:v10 forKey:@"type"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SGM2ContactDetailUsed;
  v4 = [(SGM2ContactDetailUsed *)&v8 description];
  v5 = [(SGM2ContactDetailUsed *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (int)StringAsType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"SGMContactDetailTypeEmail"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"SGMContactDetailTypePhone"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SGMContactDetailTypeAddress"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"SGMContactDetailTypeOther"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"SGMContactDetailTypeBirthday"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasType:(BOOL)a3
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

- (int)type
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_type;
  }

  else
  {
    return 0;
  }
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

- (NSString)key
{
  if (self->_key)
  {
    return self->_key;
  }

  else
  {
    return @"ContactDetailUsed";
  }
}

@end