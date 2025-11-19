@interface BMPBNowPlayingOutputDevice
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsOutputDeviceSubType:(id)a3;
- (int)StringAsOutputDeviceType:(id)a3;
- (int)outputDeviceSubType;
- (int)outputDeviceType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasOutputDeviceType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation BMPBNowPlayingOutputDevice

- (int)outputDeviceType
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_outputDeviceType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasOutputDeviceType:(BOOL)a3
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

- (int)StringAsOutputDeviceType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"AirPlay"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Bluetooth"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"CarPlay"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"BuiltIn"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"Wired"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)outputDeviceSubType
{
  if (*&self->_has)
  {
    return self->_outputDeviceSubType;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsOutputDeviceSubType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Standard"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Speaker"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Headphones"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"Headset"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"Receiver"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"LineOut"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"USB"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"DisplayPort"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"HDMI"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"LowEnergy"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"SPDIF"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"TV"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"HomePod"])
  {
    v4 = 13;
  }

  else if ([v3 isEqualToString:@"AppleTV"])
  {
    v4 = 14;
  }

  else if ([v3 isEqualToString:@"Vehicle"])
  {
    v4 = 15;
  }

  else if ([v3 isEqualToString:@"AirPlayCluster"])
  {
    v4 = 16;
  }

  else if ([v3 isEqualToString:@"SetTopBox"])
  {
    v4 = 17;
  }

  else if ([v3 isEqualToString:@"TVStick"])
  {
    v4 = 18;
  }

  else if ([v3 isEqualToString:@"Mac"])
  {
    v4 = 19;
  }

  else if ([v3 isEqualToString:@"iOS"])
  {
    v4 = 20;
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
  v8.super_class = BMPBNowPlayingOutputDevice;
  v4 = [(BMPBNowPlayingOutputDevice *)&v8 description];
  v5 = [(BMPBNowPlayingOutputDevice *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    outputDeviceType = self->_outputDeviceType;
    if (outputDeviceType >= 6)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_outputDeviceType];
    }

    else
    {
      v6 = off_1E6E54728[outputDeviceType];
    }

    [v3 setObject:v6 forKey:@"outputDeviceType"];

    has = self->_has;
  }

  if (has)
  {
    outputDeviceSubType = self->_outputDeviceSubType;
    if (outputDeviceSubType >= 0x15)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_outputDeviceSubType];
    }

    else
    {
      v8 = off_1E6E54758[outputDeviceSubType];
    }

    [v3 setObject:v8 forKey:@"outputDeviceSubType"];
  }

  outputDeviceId = self->_outputDeviceId;
  if (outputDeviceId)
  {
    [v3 setObject:outputDeviceId forKey:@"outputDeviceId"];
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
    outputDeviceType = self->_outputDeviceType;
    PBDataWriterWriteInt32Field();
    v4 = v8;
    has = self->_has;
  }

  if (has)
  {
    outputDeviceSubType = self->_outputDeviceSubType;
    PBDataWriterWriteInt32Field();
    v4 = v8;
  }

  if (self->_outputDeviceId)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[5] = self->_outputDeviceType;
    *(v4 + 24) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    v4[4] = self->_outputDeviceSubType;
    *(v4 + 24) |= 1u;
  }

  if (self->_outputDeviceId)
  {
    v6 = v4;
    [v4 setOutputDeviceId:?];
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
    *(v5 + 20) = self->_outputDeviceType;
    *(v5 + 24) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 16) = self->_outputDeviceSubType;
    *(v5 + 24) |= 1u;
  }

  v8 = [(NSString *)self->_outputDeviceId copyWithZone:a3];
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
    if ((*(v4 + 24) & 2) == 0 || self->_outputDeviceType != *(v4 + 5))
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
    if ((*(v4 + 24) & 1) == 0 || self->_outputDeviceSubType != *(v4 + 4))
    {
      goto LABEL_14;
    }
  }

  else if (*(v4 + 24))
  {
    goto LABEL_14;
  }

  outputDeviceId = self->_outputDeviceId;
  if (outputDeviceId | *(v4 + 1))
  {
    v7 = [(NSString *)outputDeviceId isEqual:?];
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
    v6 = 2654435761 * self->_outputDeviceType;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    return v7 ^ v6 ^ [(NSString *)self->_outputDeviceId hash:v3];
  }

  v6 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = 2654435761 * self->_outputDeviceSubType;
  return v7 ^ v6 ^ [(NSString *)self->_outputDeviceId hash:v3];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 24);
  if ((v5 & 2) != 0)
  {
    self->_outputDeviceType = *(v4 + 5);
    *&self->_has |= 2u;
    v5 = *(v4 + 24);
  }

  if (v5)
  {
    self->_outputDeviceSubType = *(v4 + 4);
    *&self->_has |= 1u;
  }

  if (*(v4 + 1))
  {
    v6 = v4;
    [(BMPBNowPlayingOutputDevice *)self setOutputDeviceId:?];
    v4 = v6;
  }
}

@end