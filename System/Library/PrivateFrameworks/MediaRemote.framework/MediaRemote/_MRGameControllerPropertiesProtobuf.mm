@interface _MRGameControllerPropertiesProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsProfile:(id)profile;
- (int)profile;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasPlayerIndex:(BOOL)index;
- (void)setHasProfile:(BOOL)profile;
- (void)setHasSupportsExtendedMotion:(BOOL)motion;
- (void)writeTo:(id)to;
@end

@implementation _MRGameControllerPropertiesProtobuf

- (void)setHasPlayerIndex:(BOOL)index
{
  if (index)
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

- (void)setHasProfile:(BOOL)profile
{
  if (profile)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)StringAsProfile:(id)profile
{
  profileCopy = profile;
  if ([profileCopy isEqualToString:@"None"])
  {
    v4 = 0;
  }

  else if ([profileCopy isEqualToString:@"B239"])
  {
    v4 = 1;
  }

  else if ([profileCopy isEqualToString:@"Extended"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasSupportsExtendedMotion:(BOOL)motion
{
  if (motion)
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
  dictionaryRepresentation = [(_MRGameControllerPropertiesProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ((*&self->_has & 2) != 0)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_playerIndex];
    [dictionary setObject:v4 forKey:@"playerIndex"];
  }

  vendorName = self->_vendorName;
  if (vendorName)
  {
    [dictionary setObject:vendorName forKey:@"vendorName"];
  }

  has = self->_has;
  if (has)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInt:self->_buttonAUpDelay];
    [dictionary setObject:v9 forKey:@"buttonAUpDelay"];

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

  [dictionary setObject:v11 forKey:@"profile"];

  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_9;
  }

LABEL_8:
  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsExtendedMotion];
  [dictionary setObject:v7 forKey:@"supportsExtendedMotion"];

LABEL_9:

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
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

- (void)copyTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 2) != 0)
  {
    toCopy[3] = self->_playerIndex;
    *(toCopy + 36) |= 2u;
  }

  if (self->_vendorName)
  {
    v6 = toCopy;
    [toCopy setVendorName:?];
    toCopy = v6;
  }

  has = self->_has;
  if (has)
  {
    toCopy[2] = self->_buttonAUpDelay;
    *(toCopy + 36) |= 1u;
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

  toCopy[4] = self->_profile;
  *(toCopy + 36) |= 4u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_8:
    *(toCopy + 32) = self->_supportsExtendedMotion;
    *(toCopy + 36) |= 8u;
  }

LABEL_9:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 12) = self->_playerIndex;
    *(v5 + 36) |= 2u;
  }

  v7 = [(NSString *)self->_vendorName copyWithZone:zone];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  has = self->_has;
  v6 = *(equalCopy + 36);
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 36) & 2) == 0 || self->_playerIndex != *(equalCopy + 3))
    {
      goto LABEL_22;
    }
  }

  else if ((*(equalCopy + 36) & 2) != 0)
  {
    goto LABEL_22;
  }

  vendorName = self->_vendorName;
  if (vendorName | *(equalCopy + 3))
  {
    if (![(NSString *)vendorName isEqual:?])
    {
      goto LABEL_22;
    }

    has = self->_has;
  }

  if (has)
  {
    if ((*(equalCopy + 36) & 1) == 0 || self->_buttonAUpDelay != *(equalCopy + 2))
    {
      goto LABEL_22;
    }
  }

  else if (*(equalCopy + 36))
  {
    goto LABEL_22;
  }

  if ((has & 4) != 0)
  {
    if ((*(equalCopy + 36) & 4) == 0 || self->_profile != *(equalCopy + 4))
    {
      goto LABEL_22;
    }
  }

  else if ((*(equalCopy + 36) & 4) != 0)
  {
    goto LABEL_22;
  }

  v8 = (*(equalCopy + 36) & 8) == 0;
  if ((has & 8) != 0)
  {
    if ((*(equalCopy + 36) & 8) != 0)
    {
      if (self->_supportsExtendedMotion)
      {
        if ((*(equalCopy + 32) & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      else if (*(equalCopy + 32))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if ((*(fromCopy + 36) & 2) != 0)
  {
    self->_playerIndex = *(fromCopy + 3);
    *&self->_has |= 2u;
  }

  if (*(fromCopy + 3))
  {
    v6 = fromCopy;
    [(_MRGameControllerPropertiesProtobuf *)self setVendorName:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 36);
  if (v5)
  {
    self->_buttonAUpDelay = *(fromCopy + 2);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 36);
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

  else if ((*(fromCopy + 36) & 4) == 0)
  {
    goto LABEL_7;
  }

  self->_profile = *(fromCopy + 4);
  *&self->_has |= 4u;
  if ((*(fromCopy + 36) & 8) != 0)
  {
LABEL_8:
    self->_supportsExtendedMotion = *(fromCopy + 32);
    *&self->_has |= 8u;
  }

LABEL_9:
}

@end