@interface _MRGameControllerPropertiesProtobuf
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsProfile:(id)a3;
- (int)profile;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasPlayerIndex:(BOOL)a3;
- (void)setHasProfile:(BOOL)a3;
- (void)setHasSupportsExtendedMotion:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation _MRGameControllerPropertiesProtobuf

- (void)setHasPlayerIndex:(BOOL)a3
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

- (int)profile
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_profile;
  }

  else
  {
    return 0;
  }
}

- (void)setHasProfile:(BOOL)a3
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

- (int)StringAsProfile:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"None"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"B239"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Extended"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasSupportsExtendedMotion:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRGameControllerPropertiesProtobuf;
  v4 = [(_MRGameControllerPropertiesProtobuf *)&v8 description];
  v5 = [(_MRGameControllerPropertiesProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ((*&self->_has & 2) != 0)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_playerIndex];
    [v3 setObject:v4 forKey:@"playerIndex"];
  }

  vendorName = self->_vendorName;
  if (vendorName)
  {
    [v3 setObject:vendorName forKey:@"vendorName"];
  }

  has = self->_has;
  if (has)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInt:self->_buttonAUpDelay];
    [v3 setObject:v9 forKey:@"buttonAUpDelay"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_7:
      if ((has & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

  profile = self->_profile;
  if (profile >= 3)
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_profile];
  }

  else
  {
    v11 = off_1E76A4DE8[profile];
  }

  [v3 setObject:v11 forKey:@"profile"];

  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_9;
  }

LABEL_8:
  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsExtendedMotion];
  [v3 setObject:v7 forKey:@"supportsExtendedMotion"];

LABEL_9:

  return v3;
}

- (void)writeTo:(id)a3
{
  v9 = a3;
  if ((*&self->_has & 2) != 0)
  {
    playerIndex = self->_playerIndex;
    PBDataWriterWriteUint32Field();
  }

  if (self->_vendorName)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if (has)
  {
    buttonAUpDelay = self->_buttonAUpDelay;
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_7:
      if ((has & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

  profile = self->_profile;
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 8) != 0)
  {
LABEL_8:
    supportsExtendedMotion = self->_supportsExtendedMotion;
    PBDataWriterWriteBOOLField();
  }

LABEL_9:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if ((*&self->_has & 2) != 0)
  {
    v4[3] = self->_playerIndex;
    *(v4 + 36) |= 2u;
  }

  if (self->_vendorName)
  {
    v6 = v4;
    [v4 setVendorName:?];
    v4 = v6;
  }

  has = self->_has;
  if (has)
  {
    v4[2] = self->_buttonAUpDelay;
    *(v4 + 36) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_7:
      if ((has & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

  v4[4] = self->_profile;
  *(v4 + 36) |= 4u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_8:
    *(v4 + 32) = self->_supportsExtendedMotion;
    *(v4 + 36) |= 8u;
  }

LABEL_9:
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 12) = self->_playerIndex;
    *(v5 + 36) |= 2u;
  }

  v7 = [(NSString *)self->_vendorName copyWithZone:a3];
  v8 = *(v6 + 24);
  *(v6 + 24) = v7;

  has = self->_has;
  if ((has & 1) == 0)
  {
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    *(v6 + 16) = self->_profile;
    *(v6 + 36) |= 4u;
    if ((*&self->_has & 8) == 0)
    {
      return v6;
    }

    goto LABEL_6;
  }

  *(v6 + 8) = self->_buttonAUpDelay;
  *(v6 + 36) |= 1u;
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  if ((has & 8) != 0)
  {
LABEL_6:
    *(v6 + 32) = self->_supportsExtendedMotion;
    *(v6 + 36) |= 8u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  has = self->_has;
  v6 = *(v4 + 36);
  if ((has & 2) != 0)
  {
    if ((*(v4 + 36) & 2) == 0 || self->_playerIndex != *(v4 + 3))
    {
      goto LABEL_22;
    }
  }

  else if ((*(v4 + 36) & 2) != 0)
  {
    goto LABEL_22;
  }

  vendorName = self->_vendorName;
  if (vendorName | *(v4 + 3))
  {
    if (![(NSString *)vendorName isEqual:?])
    {
      goto LABEL_22;
    }

    has = self->_has;
  }

  if (has)
  {
    if ((*(v4 + 36) & 1) == 0 || self->_buttonAUpDelay != *(v4 + 2))
    {
      goto LABEL_22;
    }
  }

  else if (*(v4 + 36))
  {
    goto LABEL_22;
  }

  if ((has & 4) != 0)
  {
    if ((*(v4 + 36) & 4) == 0 || self->_profile != *(v4 + 4))
    {
      goto LABEL_22;
    }
  }

  else if ((*(v4 + 36) & 4) != 0)
  {
    goto LABEL_22;
  }

  v8 = (*(v4 + 36) & 8) == 0;
  if ((has & 8) != 0)
  {
    if ((*(v4 + 36) & 8) != 0)
    {
      if (self->_supportsExtendedMotion)
      {
        if ((*(v4 + 32) & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      else if (*(v4 + 32))
      {
        goto LABEL_22;
      }

      v8 = 1;
      goto LABEL_23;
    }

LABEL_22:
    v8 = 0;
  }

LABEL_23:

  return v8;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v3 = 2654435761 * self->_playerIndex;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_vendorName hash];
  if ((*&self->_has & 1) == 0)
  {
    v5 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_6;
    }

LABEL_9:
    v6 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_7;
    }

LABEL_10:
    v7 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7;
  }

  v5 = 2654435761 * self->_buttonAUpDelay;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  v6 = 2654435761 * self->_profile;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v7 = 2654435761 * self->_supportsExtendedMotion;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if ((*(v4 + 36) & 2) != 0)
  {
    self->_playerIndex = *(v4 + 3);
    *&self->_has |= 2u;
  }

  if (*(v4 + 3))
  {
    v6 = v4;
    [(_MRGameControllerPropertiesProtobuf *)self setVendorName:?];
    v4 = v6;
  }

  v5 = *(v4 + 36);
  if (v5)
  {
    self->_buttonAUpDelay = *(v4 + 2);
    *&self->_has |= 1u;
    v5 = *(v4 + 36);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*(v4 + 36) & 4) == 0)
  {
    goto LABEL_7;
  }

  self->_profile = *(v4 + 4);
  *&self->_has |= 4u;
  if ((*(v4 + 36) & 8) != 0)
  {
LABEL_8:
    self->_supportsExtendedMotion = *(v4 + 32);
    *&self->_has |= 8u;
  }

LABEL_9:
}

@end