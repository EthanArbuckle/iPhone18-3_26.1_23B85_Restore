@interface _MRDiscoverySessionConfigurationProtobuf
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsFeatures:(id)a3;
- (int)features;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasAlwaysAllowUpdates:(BOOL)a3;
- (void)setHasCachedDiscoveryEnabled:(BOOL)a3;
- (void)setHasEnableThrottling:(BOOL)a3;
- (void)setHasPopulatesExternalDevice:(BOOL)a3;
- (void)setHasTargetSessionID:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation _MRDiscoverySessionConfigurationProtobuf

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

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    features = self->_features;
    if (features > 3)
    {
      switch(features)
      {
        case 4:
          v5 = @"Video";
          goto LABEL_16;
        case 8:
          v5 = @"RemoteControl";
          goto LABEL_16;
        case 256:
          v5 = @"Companion";
          goto LABEL_16;
      }
    }

    else
    {
      switch(features)
      {
        case 0:
          v5 = @"None";
          goto LABEL_16;
        case 1:
          v5 = @"Audio";
          goto LABEL_16;
        case 2:
          v5 = @"Screen";
LABEL_16:
          [v3 setObject:v5 forKey:@"features"];

          goto LABEL_17;
      }
    }

    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_features];
    goto LABEL_16;
  }

LABEL_17:
  routingContextUID = self->_routingContextUID;
  if (routingContextUID)
  {
    [v3 setObject:routingContextUID forKey:@"routingContextUID"];
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithBool:self->_enableThrottling];
    [v3 setObject:v14 forKey:@"enableThrottling"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_21:
      if ((has & 0x20) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_21;
  }

  v15 = [MEMORY[0x1E696AD98] numberWithBool:self->_alwaysAllowUpdates];
  [v3 setObject:v15 forKey:@"alwaysAllowUpdates"];

  if ((*&self->_has & 0x20) != 0)
  {
LABEL_22:
    v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_populatesExternalDevice];
    [v3 setObject:v8 forKey:@"populatesExternalDevice"];
  }

LABEL_23:
  outputDeviceUID = self->_outputDeviceUID;
  if (outputDeviceUID)
  {
    [v3 setObject:outputDeviceUID forKey:@"outputDeviceUID"];
  }

  v10 = self->_has;
  if ((v10 & 2) != 0)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_targetSessionID];
    [v3 setObject:v11 forKey:@"targetSessionID"];

    v10 = self->_has;
  }

  if ((v10 & 8) != 0)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithBool:self->_cachedDiscoveryEnabled];
    [v3 setObject:v12 forKey:@"cachedDiscoveryEnabled"];
  }

  return v3;
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

- (void)setHasEnableThrottling:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasAlwaysAllowUpdates:(BOOL)a3
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

- (void)setHasPopulatesExternalDevice:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasTargetSessionID:(BOOL)a3
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

- (void)setHasCachedDiscoveryEnabled:(BOOL)a3
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
  v8.super_class = _MRDiscoverySessionConfigurationProtobuf;
  v4 = [(_MRDiscoverySessionConfigurationProtobuf *)&v8 description];
  v5 = [(_MRDiscoverySessionConfigurationProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)writeTo:(id)a3
{
  v12 = a3;
  if (*&self->_has)
  {
    features = self->_features;
    PBDataWriterWriteInt32Field();
  }

  if (self->_routingContextUID)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    enableThrottling = self->_enableThrottling;
    PBDataWriterWriteBOOLField();
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_7:
      if ((has & 0x20) == 0)
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

  alwaysAllowUpdates = self->_alwaysAllowUpdates;
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_8:
    populatesExternalDevice = self->_populatesExternalDevice;
    PBDataWriterWriteBOOLField();
  }

LABEL_9:
  if (self->_outputDeviceUID)
  {
    PBDataWriterWriteStringField();
  }

  v7 = self->_has;
  if ((v7 & 2) != 0)
  {
    targetSessionID = self->_targetSessionID;
    PBDataWriterWriteUint32Field();
    v7 = self->_has;
  }

  if ((v7 & 8) != 0)
  {
    cachedDiscoveryEnabled = self->_cachedDiscoveryEnabled;
    PBDataWriterWriteBOOLField();
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[2] = self->_features;
    *(v4 + 40) |= 1u;
  }

  v7 = v4;
  if (self->_routingContextUID)
  {
    [v4 setRoutingContextUID:?];
    v4 = v7;
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    *(v4 + 38) = self->_enableThrottling;
    *(v4 + 40) |= 0x10u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_7:
      if ((has & 0x20) == 0)
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

  *(v4 + 36) = self->_alwaysAllowUpdates;
  *(v4 + 40) |= 4u;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_8:
    *(v4 + 39) = self->_populatesExternalDevice;
    *(v4 + 40) |= 0x20u;
  }

LABEL_9:
  if (self->_outputDeviceUID)
  {
    [v7 setOutputDeviceUID:?];
    v4 = v7;
  }

  v6 = self->_has;
  if ((v6 & 2) != 0)
  {
    v4[8] = self->_targetSessionID;
    *(v4 + 40) |= 2u;
    v6 = self->_has;
  }

  if ((v6 & 8) != 0)
  {
    *(v4 + 37) = self->_cachedDiscoveryEnabled;
    *(v4 + 40) |= 8u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_features;
    *(v5 + 40) |= 1u;
  }

  v7 = [(NSString *)self->_routingContextUID copyWithZone:a3];
  v8 = *(v6 + 24);
  *(v6 + 24) = v7;

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    *(v6 + 38) = self->_enableThrottling;
    *(v6 + 40) |= 0x10u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_5:
      if ((has & 0x20) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_5;
  }

  *(v6 + 36) = self->_alwaysAllowUpdates;
  *(v6 + 40) |= 4u;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_6:
    *(v6 + 39) = self->_populatesExternalDevice;
    *(v6 + 40) |= 0x20u;
  }

LABEL_7:
  v10 = [(NSString *)self->_outputDeviceUID copyWithZone:a3];
  v11 = *(v6 + 16);
  *(v6 + 16) = v10;

  v12 = self->_has;
  if ((v12 & 2) != 0)
  {
    *(v6 + 32) = self->_targetSessionID;
    *(v6 + 40) |= 2u;
    v12 = self->_has;
  }

  if ((v12 & 8) != 0)
  {
    *(v6 + 37) = self->_cachedDiscoveryEnabled;
    *(v6 + 40) |= 8u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_46;
  }

  has = self->_has;
  v6 = *(v4 + 40);
  if (has)
  {
    if ((*(v4 + 40) & 1) == 0 || self->_features != *(v4 + 2))
    {
      goto LABEL_46;
    }
  }

  else if (*(v4 + 40))
  {
    goto LABEL_46;
  }

  routingContextUID = self->_routingContextUID;
  if (routingContextUID | *(v4 + 3))
  {
    if (![(NSString *)routingContextUID isEqual:?])
    {
      goto LABEL_46;
    }

    has = self->_has;
  }

  v8 = *(v4 + 40);
  if ((has & 0x10) != 0)
  {
    if ((*(v4 + 40) & 0x10) == 0)
    {
      goto LABEL_46;
    }

    v10 = *(v4 + 38);
    if (self->_enableThrottling)
    {
      if ((*(v4 + 38) & 1) == 0)
      {
        goto LABEL_46;
      }
    }

    else if (*(v4 + 38))
    {
      goto LABEL_46;
    }
  }

  else if ((*(v4 + 40) & 0x10) != 0)
  {
    goto LABEL_46;
  }

  if ((has & 4) != 0)
  {
    if ((*(v4 + 40) & 4) == 0)
    {
      goto LABEL_46;
    }

    v11 = *(v4 + 36);
    if (self->_alwaysAllowUpdates)
    {
      if ((*(v4 + 36) & 1) == 0)
      {
        goto LABEL_46;
      }
    }

    else if (*(v4 + 36))
    {
      goto LABEL_46;
    }
  }

  else if ((*(v4 + 40) & 4) != 0)
  {
    goto LABEL_46;
  }

  if ((has & 0x20) != 0)
  {
    if ((*(v4 + 40) & 0x20) == 0)
    {
      goto LABEL_46;
    }

    v12 = *(v4 + 39);
    if (self->_populatesExternalDevice)
    {
      if ((*(v4 + 39) & 1) == 0)
      {
        goto LABEL_46;
      }
    }

    else if (*(v4 + 39))
    {
      goto LABEL_46;
    }
  }

  else if ((*(v4 + 40) & 0x20) != 0)
  {
    goto LABEL_46;
  }

  outputDeviceUID = self->_outputDeviceUID;
  if (outputDeviceUID | *(v4 + 2))
  {
    if (![(NSString *)outputDeviceUID isEqual:?])
    {
      goto LABEL_46;
    }

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    if ((*(v4 + 40) & 2) == 0 || self->_targetSessionID != *(v4 + 8))
    {
      goto LABEL_46;
    }
  }

  else if ((*(v4 + 40) & 2) != 0)
  {
    goto LABEL_46;
  }

  v13 = (*(v4 + 40) & 8) == 0;
  if ((has & 8) != 0)
  {
    if ((*(v4 + 40) & 8) != 0)
    {
      if (self->_cachedDiscoveryEnabled)
      {
        if (*(v4 + 37))
        {
          goto LABEL_49;
        }
      }

      else if (!*(v4 + 37))
      {
LABEL_49:
        v13 = 1;
        goto LABEL_47;
      }
    }

LABEL_46:
    v13 = 0;
  }

LABEL_47:

  return v13;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_features;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_routingContextUID hash];
  if ((*&self->_has & 0x10) == 0)
  {
    v5 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_6;
    }

LABEL_9:
    v6 = 0;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  v5 = 2654435761 * self->_enableThrottling;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  v6 = 2654435761 * self->_alwaysAllowUpdates;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_7:
    v7 = 2654435761 * self->_populatesExternalDevice;
    goto LABEL_11;
  }

LABEL_10:
  v7 = 0;
LABEL_11:
  v8 = [(NSString *)self->_outputDeviceUID hash];
  if ((*&self->_has & 2) != 0)
  {
    v9 = 2654435761 * self->_targetSessionID;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_13;
    }

LABEL_15:
    v10 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10;
  }

  v9 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_15;
  }

LABEL_13:
  v10 = 2654435761 * self->_cachedDiscoveryEnabled;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (*(v4 + 40))
  {
    self->_features = *(v4 + 2);
    *&self->_has |= 1u;
  }

  v7 = v4;
  if (*(v4 + 3))
  {
    [(_MRDiscoverySessionConfigurationProtobuf *)self setRoutingContextUID:?];
    v4 = v7;
  }

  v5 = *(v4 + 40);
  if ((v5 & 0x10) != 0)
  {
    self->_enableThrottling = *(v4 + 38);
    *&self->_has |= 0x10u;
    v5 = *(v4 + 40);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*(v4 + 40) & 4) == 0)
  {
    goto LABEL_7;
  }

  self->_alwaysAllowUpdates = *(v4 + 36);
  *&self->_has |= 4u;
  if ((*(v4 + 40) & 0x20) != 0)
  {
LABEL_8:
    self->_populatesExternalDevice = *(v4 + 39);
    *&self->_has |= 0x20u;
  }

LABEL_9:
  if (*(v4 + 2))
  {
    [(_MRDiscoverySessionConfigurationProtobuf *)self setOutputDeviceUID:?];
    v4 = v7;
  }

  v6 = *(v4 + 40);
  if ((v6 & 2) != 0)
  {
    self->_targetSessionID = *(v4 + 8);
    *&self->_has |= 2u;
    v6 = *(v4 + 40);
  }

  if ((v6 & 8) != 0)
  {
    self->_cachedDiscoveryEnabled = *(v4 + 37);
    *&self->_has |= 8u;
  }
}

@end