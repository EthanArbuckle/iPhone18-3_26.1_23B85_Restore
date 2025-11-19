@interface _MRSetDiscoveryModeProtobufMessage
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsFeatures:(id)a3;
- (int)StringAsMode:(id)a3;
- (int)features;
- (int)mode;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasMode:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation _MRSetDiscoveryModeProtobufMessage

- (int)mode
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_mode;
  }

  else
  {
    return 0;
  }
}

- (void)setHasMode:(BOOL)a3
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

- (int)StringAsMode:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Disabled"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Presence"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"InfraOnly"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Detailed"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)features
{
  if (*&self->_has)
  {
    return self->_features;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsFeatures:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"None"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Audio"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Screen"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Video"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"RemoteControl"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"Companion"])
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRSetDiscoveryModeProtobufMessage;
  v4 = [(_MRSetDiscoveryModeProtobufMessage *)&v8 description];
  v5 = [(_MRSetDiscoveryModeProtobufMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    mode = self->_mode;
    if (mode >= 4)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_mode];
    }

    else
    {
      v6 = off_1E769F4D0[mode];
    }

    [v3 setObject:v6 forKey:@"mode"];

    has = self->_has;
  }

  if (has)
  {
    features = self->_features;
    if (features > 3)
    {
      switch(features)
      {
        case 4:
          v8 = @"Video";
          goto LABEL_21;
        case 8:
          v8 = @"RemoteControl";
          goto LABEL_21;
        case 256:
          v8 = @"Companion";
          goto LABEL_21;
      }
    }

    else
    {
      switch(features)
      {
        case 0:
          v8 = @"None";
          goto LABEL_21;
        case 1:
          v8 = @"Audio";
          goto LABEL_21;
        case 2:
          v8 = @"Screen";
LABEL_21:
          [v3 setObject:v8 forKey:@"features"];

          goto LABEL_22;
      }
    }

    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_features];
    goto LABEL_21;
  }

LABEL_22:
  configuration = self->_configuration;
  if (configuration)
  {
    v10 = [(_MRDiscoverySessionConfigurationProtobuf *)configuration dictionaryRepresentation];
    [v3 setObject:v10 forKey:@"configuration"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v8 = v4;
  if ((has & 2) != 0)
  {
    mode = self->_mode;
    PBDataWriterWriteInt32Field();
    v4 = v8;
    has = self->_has;
  }

  if (has)
  {
    features = self->_features;
    PBDataWriterWriteInt32Field();
    v4 = v8;
  }

  if (self->_configuration)
  {
    PBDataWriterWriteSubmessage();
    v4 = v8;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[5] = self->_mode;
    *(v4 + 24) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    v4[4] = self->_features;
    *(v4 + 24) |= 1u;
  }

  if (self->_configuration)
  {
    v6 = v4;
    [v4 setConfiguration:?];
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 20) = self->_mode;
    *(v5 + 24) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 16) = self->_features;
    *(v5 + 24) |= 1u;
  }

  v8 = [(_MRDiscoverySessionConfigurationProtobuf *)self->_configuration copyWithZone:a3];
  v9 = v6[1];
  v6[1] = v8;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  v5 = *(v4 + 24);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 24) & 2) == 0 || self->_mode != *(v4 + 5))
    {
      goto LABEL_14;
    }
  }

  else if ((*(v4 + 24) & 2) != 0)
  {
LABEL_14:
    v7 = 0;
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 24) & 1) == 0 || self->_features != *(v4 + 4))
    {
      goto LABEL_14;
    }
  }

  else if (*(v4 + 24))
  {
    goto LABEL_14;
  }

  configuration = self->_configuration;
  if (configuration | *(v4 + 1))
  {
    v7 = [(_MRDiscoverySessionConfigurationProtobuf *)configuration isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_15:

  return v7;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v6 = 2654435761 * self->_mode;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    return v7 ^ v6 ^ [(_MRDiscoverySessionConfigurationProtobuf *)self->_configuration hash:v3];
  }

  v6 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = 2654435761 * self->_features;
  return v7 ^ v6 ^ [(_MRDiscoverySessionConfigurationProtobuf *)self->_configuration hash:v3];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = *(v4 + 24);
  if ((v6 & 2) != 0)
  {
    self->_mode = *(v4 + 5);
    *&self->_has |= 2u;
    v6 = *(v4 + 24);
  }

  if (v6)
  {
    self->_features = *(v4 + 4);
    *&self->_has |= 1u;
  }

  configuration = self->_configuration;
  v8 = v5[1];
  if (configuration)
  {
    if (!v8)
    {
      goto LABEL_11;
    }

    v9 = v5;
    [(_MRDiscoverySessionConfigurationProtobuf *)configuration mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_11;
    }

    v9 = v5;
    [(_MRSetDiscoveryModeProtobufMessage *)self setConfiguration:?];
  }

  v5 = v9;
LABEL_11:
}

@end