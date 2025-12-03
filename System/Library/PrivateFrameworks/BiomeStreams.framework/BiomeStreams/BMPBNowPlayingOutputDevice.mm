@interface BMPBNowPlayingOutputDevice
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsOutputDeviceSubType:(id)type;
- (int)StringAsOutputDeviceType:(id)type;
- (int)outputDeviceSubType;
- (int)outputDeviceType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasOutputDeviceType:(BOOL)type;
- (void)writeTo:(id)to;
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

- (void)setHasOutputDeviceType:(BOOL)type
{
  if (type)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)StringAsOutputDeviceType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"AirPlay"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"Bluetooth"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"CarPlay"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"BuiltIn"])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:@"Wired"])
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

- (int)StringAsOutputDeviceSubType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"Standard"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"Speaker"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"Headphones"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"Headset"])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:@"Receiver"])
  {
    v4 = 5;
  }

  else if ([typeCopy isEqualToString:@"LineOut"])
  {
    v4 = 6;
  }

  else if ([typeCopy isEqualToString:@"USB"])
  {
    v4 = 7;
  }

  else if ([typeCopy isEqualToString:@"DisplayPort"])
  {
    v4 = 8;
  }

  else if ([typeCopy isEqualToString:@"HDMI"])
  {
    v4 = 9;
  }

  else if ([typeCopy isEqualToString:@"LowEnergy"])
  {
    v4 = 10;
  }

  else if ([typeCopy isEqualToString:@"SPDIF"])
  {
    v4 = 11;
  }

  else if ([typeCopy isEqualToString:@"TV"])
  {
    v4 = 12;
  }

  else if ([typeCopy isEqualToString:@"HomePod"])
  {
    v4 = 13;
  }

  else if ([typeCopy isEqualToString:@"AppleTV"])
  {
    v4 = 14;
  }

  else if ([typeCopy isEqualToString:@"Vehicle"])
  {
    v4 = 15;
  }

  else if ([typeCopy isEqualToString:@"AirPlayCluster"])
  {
    v4 = 16;
  }

  else if ([typeCopy isEqualToString:@"SetTopBox"])
  {
    v4 = 17;
  }

  else if ([typeCopy isEqualToString:@"TVStick"])
  {
    v4 = 18;
  }

  else if ([typeCopy isEqualToString:@"Mac"])
  {
    v4 = 19;
  }

  else if ([typeCopy isEqualToString:@"iOS"])
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
  dictionaryRepresentation = [(BMPBNowPlayingOutputDevice *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
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

    [dictionary setObject:v6 forKey:@"outputDeviceType"];

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

    [dictionary setObject:v8 forKey:@"outputDeviceSubType"];
  }

  outputDeviceId = self->_outputDeviceId;
  if (outputDeviceId)
  {
    [dictionary setObject:outputDeviceId forKey:@"outputDeviceId"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v8 = toCopy;
  if ((has & 2) != 0)
  {
    outputDeviceType = self->_outputDeviceType;
    PBDataWriterWriteInt32Field();
    toCopy = v8;
    has = self->_has;
  }

  if (has)
  {
    outputDeviceSubType = self->_outputDeviceSubType;
    PBDataWriterWriteInt32Field();
    toCopy = v8;
  }

  if (self->_outputDeviceId)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 2) != 0)
  {
    toCopy[5] = self->_outputDeviceType;
    *(toCopy + 24) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    toCopy[4] = self->_outputDeviceSubType;
    *(toCopy + 24) |= 1u;
  }

  if (self->_outputDeviceId)
  {
    v6 = toCopy;
    [toCopy setOutputDeviceId:?];
    toCopy = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

  v8 = [(NSString *)self->_outputDeviceId copyWithZone:zone];
  v9 = v6[1];
  v6[1] = v8;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  v5 = *(equalCopy + 24);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 24) & 2) == 0 || self->_outputDeviceType != *(equalCopy + 5))
    {
      goto LABEL_14;
    }
  }

  else if ((*(equalCopy + 24) & 2) != 0)
  {
LABEL_14:
    v7 = 0;
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 24) & 1) == 0 || self->_outputDeviceSubType != *(equalCopy + 4))
    {
      goto LABEL_14;
    }
  }

  else if (*(equalCopy + 24))
  {
    goto LABEL_14;
  }

  outputDeviceId = self->_outputDeviceId;
  if (outputDeviceId | *(equalCopy + 1))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 24);
  if ((v5 & 2) != 0)
  {
    self->_outputDeviceType = *(fromCopy + 5);
    *&self->_has |= 2u;
    v5 = *(fromCopy + 24);
  }

  if (v5)
  {
    self->_outputDeviceSubType = *(fromCopy + 4);
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 1))
  {
    v6 = fromCopy;
    [(BMPBNowPlayingOutputDevice *)self setOutputDeviceId:?];
    fromCopy = v6;
  }
}

@end