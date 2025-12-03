@interface _MRAudioRouteProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsType:(id)type;
- (int)type;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasSpatializationEnabled:(BOOL)enabled;
- (void)setHasSupportsSpatialization:(BOOL)spatialization;
- (void)writeTo:(id)to;
@end

@implementation _MRAudioRouteProtobuf

- (int)type
{
  if (*&self->_has)
  {
    return self->_type;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"DeviceSpeaker"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"LineOut"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"Headphones"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"BluetoothHeadphones"])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:@"BluetoothSpeaker"])
  {
    v4 = 5;
  }

  else if ([typeCopy isEqualToString:@"USBAudio"])
  {
    v4 = 6;
  }

  else if ([typeCopy isEqualToString:@"CarAudio"])
  {
    v4 = 7;
  }

  else if ([typeCopy isEqualToString:@"HDMI"])
  {
    v4 = 8;
  }

  else if ([typeCopy isEqualToString:@"AirPlay"])
  {
    v4 = 9;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasSupportsSpatialization:(BOOL)spatialization
{
  if (spatialization)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasSpatializationEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRAudioRouteProtobuf;
  v4 = [(_MRAudioRouteProtobuf *)&v8 description];
  dictionaryRepresentation = [(_MRAudioRouteProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    type = self->_type;
    if (type >= 0xA)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_type];
    }

    else
    {
      v5 = off_1E769F4F0[type];
    }

    [dictionary setObject:v5 forKey:@"type"];
  }

  name = self->_name;
  if (name)
  {
    [dictionary setObject:name forKey:@"name"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsSpatialization];
    [dictionary setObject:v8 forKey:@"supportsSpatialization"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_spatializationEnabled];
    [dictionary setObject:v9 forKey:@"spatializationEnabled"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    type = self->_type;
    PBDataWriterWriteInt32Field();
  }

  if (self->_name)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    supportsSpatialization = self->_supportsSpatialization;
    PBDataWriterWriteBOOLField();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    spatializationEnabled = self->_spatializationEnabled;
    PBDataWriterWriteBOOLField();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[4] = self->_type;
    *(toCopy + 24) |= 1u;
  }

  if (self->_name)
  {
    v6 = toCopy;
    [toCopy setName:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(toCopy + 21) = self->_supportsSpatialization;
    *(toCopy + 24) |= 4u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(toCopy + 20) = self->_spatializationEnabled;
    *(toCopy + 24) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 16) = self->_type;
    *(v5 + 24) |= 1u;
  }

  v7 = [(NSString *)self->_name copyWithZone:zone];
  v8 = *(v6 + 8);
  *(v6 + 8) = v7;

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v6 + 21) = self->_supportsSpatialization;
    *(v6 + 24) |= 4u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v6 + 20) = self->_spatializationEnabled;
    *(v6 + 24) |= 2u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  has = self->_has;
  v6 = *(equalCopy + 24);
  if (has)
  {
    if ((*(equalCopy + 24) & 1) == 0 || self->_type != *(equalCopy + 4))
    {
      goto LABEL_18;
    }
  }

  else if (*(equalCopy + 24))
  {
    goto LABEL_18;
  }

  name = self->_name;
  if (name | *(equalCopy + 1))
  {
    if (![(NSString *)name isEqual:?])
    {
      goto LABEL_18;
    }

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    if ((*(equalCopy + 24) & 4) == 0)
    {
      goto LABEL_18;
    }

    v10 = *(equalCopy + 21);
    if (self->_supportsSpatialization)
    {
      if ((*(equalCopy + 21) & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    else if (*(equalCopy + 21))
    {
      goto LABEL_18;
    }
  }

  else if ((*(equalCopy + 24) & 4) != 0)
  {
    goto LABEL_18;
  }

  v8 = (*(equalCopy + 24) & 2) == 0;
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 24) & 2) != 0)
    {
      if (self->_spatializationEnabled)
      {
        if (*(equalCopy + 20))
        {
          goto LABEL_26;
        }
      }

      else if (!*(equalCopy + 20))
      {
LABEL_26:
        v8 = 1;
        goto LABEL_19;
      }
    }

LABEL_18:
    v8 = 0;
  }

LABEL_19:

  return v8;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_type;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_name hash];
  if ((*&self->_has & 4) != 0)
  {
    v5 = 2654435761 * self->_supportsSpatialization;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_6;
    }

LABEL_8:
    v6 = 0;
    return v4 ^ v3 ^ v5 ^ v6;
  }

  v5 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_6:
  v6 = 2654435761 * self->_spatializationEnabled;
  return v4 ^ v3 ^ v5 ^ v6;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (*(fromCopy + 24))
  {
    self->_type = *(fromCopy + 4);
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 1))
  {
    v6 = fromCopy;
    [(_MRAudioRouteProtobuf *)self setName:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 24);
  if ((v5 & 4) != 0)
  {
    self->_supportsSpatialization = *(fromCopy + 21);
    *&self->_has |= 4u;
    v5 = *(fromCopy + 24);
  }

  if ((v5 & 2) != 0)
  {
    self->_spatializationEnabled = *(fromCopy + 20);
    *&self->_has |= 2u;
  }
}

@end