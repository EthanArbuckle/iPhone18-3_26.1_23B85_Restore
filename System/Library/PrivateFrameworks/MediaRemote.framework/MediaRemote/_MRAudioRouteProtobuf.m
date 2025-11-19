@interface _MRAudioRouteProtobuf
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsType:(id)a3;
- (int)type;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasSpatializationEnabled:(BOOL)a3;
- (void)setHasSupportsSpatialization:(BOOL)a3;
- (void)writeTo:(id)a3;
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

- (int)StringAsType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"DeviceSpeaker"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"LineOut"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Headphones"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"BluetoothHeadphones"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"BluetoothSpeaker"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"USBAudio"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"CarAudio"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"HDMI"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"AirPlay"])
  {
    v4 = 9;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasSupportsSpatialization:(BOOL)a3
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

- (void)setHasSpatializationEnabled:(BOOL)a3
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

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRAudioRouteProtobuf;
  v4 = [(_MRAudioRouteProtobuf *)&v8 description];
  v5 = [(_MRAudioRouteProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
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

    [v3 setObject:v5 forKey:@"type"];
  }

  name = self->_name;
  if (name)
  {
    [v3 setObject:name forKey:@"name"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsSpatialization];
    [v3 setObject:v8 forKey:@"supportsSpatialization"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_spatializationEnabled];
    [v3 setObject:v9 forKey:@"spatializationEnabled"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
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

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[4] = self->_type;
    *(v4 + 24) |= 1u;
  }

  if (self->_name)
  {
    v6 = v4;
    [v4 setName:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v4 + 21) = self->_supportsSpatialization;
    *(v4 + 24) |= 4u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v4 + 20) = self->_spatializationEnabled;
    *(v4 + 24) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 16) = self->_type;
    *(v5 + 24) |= 1u;
  }

  v7 = [(NSString *)self->_name copyWithZone:a3];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  has = self->_has;
  v6 = *(v4 + 24);
  if (has)
  {
    if ((*(v4 + 24) & 1) == 0 || self->_type != *(v4 + 4))
    {
      goto LABEL_18;
    }
  }

  else if (*(v4 + 24))
  {
    goto LABEL_18;
  }

  name = self->_name;
  if (name | *(v4 + 1))
  {
    if (![(NSString *)name isEqual:?])
    {
      goto LABEL_18;
    }

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    if ((*(v4 + 24) & 4) == 0)
    {
      goto LABEL_18;
    }

    v10 = *(v4 + 21);
    if (self->_supportsSpatialization)
    {
      if ((*(v4 + 21) & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    else if (*(v4 + 21))
    {
      goto LABEL_18;
    }
  }

  else if ((*(v4 + 24) & 4) != 0)
  {
    goto LABEL_18;
  }

  v8 = (*(v4 + 24) & 2) == 0;
  if ((has & 2) != 0)
  {
    if ((*(v4 + 24) & 2) != 0)
    {
      if (self->_spatializationEnabled)
      {
        if (*(v4 + 20))
        {
          goto LABEL_26;
        }
      }

      else if (!*(v4 + 20))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (*(v4 + 24))
  {
    self->_type = *(v4 + 4);
    *&self->_has |= 1u;
  }

  if (*(v4 + 1))
  {
    v6 = v4;
    [(_MRAudioRouteProtobuf *)self setName:?];
    v4 = v6;
  }

  v5 = *(v4 + 24);
  if ((v5 & 4) != 0)
  {
    self->_supportsSpatialization = *(v4 + 21);
    *&self->_has |= 4u;
    v5 = *(v4 + 24);
  }

  if ((v5 & 2) != 0)
  {
    self->_spatializationEnabled = *(v4 + 20);
    *&self->_has |= 2u;
  }
}

@end