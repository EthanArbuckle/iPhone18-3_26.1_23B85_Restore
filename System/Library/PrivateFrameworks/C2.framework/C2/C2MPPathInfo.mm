@interface C2MPPathInfo
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasApplicationBytesSent:(BOOL)sent;
- (void)setHasTransportSmoothedRttMillis:(BOOL)millis;
- (void)writeTo:(id)to;
@end

@implementation C2MPPathInfo

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  interfaceType = self->_interfaceType;
  if (interfaceType)
  {
    [dictionary setObject:interfaceType forKey:@"interface_type"];
  }

  radioType = self->_radioType;
  if (radioType)
  {
    [v4 setObject:radioType forKey:@"radio_type"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_applicationBytesSent];
    [v4 setObject:v10 forKey:@"application_bytes_sent"];

    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_7:
      if ((has & 4) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_7;
  }

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_applicationBytesReceived];
  [v4 setObject:v11 forKey:@"application_bytes_received"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_8:
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_transportSmoothedRttMillis];
    [v4 setObject:v8 forKey:@"transport_smoothed_rtt_millis"];
  }

LABEL_9:

  return v4;
}

- (void)setHasApplicationBytesSent:(BOOL)sent
{
  if (sent)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasTransportSmoothedRttMillis:(BOOL)millis
{
  if (millis)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = C2MPPathInfo;
  v4 = [(C2MPPathInfo *)&v8 description];
  dictionaryRepresentation = [(C2MPPathInfo *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v9 = toCopy;
  if (self->_interfaceType)
  {
    PBDataWriterWriteStringField();
    toCopy = v9;
  }

  if (self->_radioType)
  {
    PBDataWriterWriteStringField();
    toCopy = v9;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    applicationBytesSent = self->_applicationBytesSent;
    PBDataWriterWriteUint64Field();
    toCopy = v9;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_7:
      if ((has & 4) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_7;
  }

  applicationBytesReceived = self->_applicationBytesReceived;
  PBDataWriterWriteUint64Field();
  toCopy = v9;
  if ((*&self->_has & 4) != 0)
  {
LABEL_8:
    transportSmoothedRttMillis = self->_transportSmoothedRttMillis;
    PBDataWriterWriteUint64Field();
    toCopy = v9;
  }

LABEL_9:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_interfaceType)
  {
    [toCopy setInterfaceType:?];
    toCopy = v6;
  }

  if (self->_radioType)
  {
    [v6 setRadioType:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(toCopy + 2) = self->_applicationBytesSent;
    *(toCopy + 48) |= 2u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_7:
      if ((has & 4) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_7;
  }

  *(toCopy + 1) = self->_applicationBytesReceived;
  *(toCopy + 48) |= 1u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_8:
    *(toCopy + 3) = self->_transportSmoothedRttMillis;
    *(toCopy + 48) |= 4u;
  }

LABEL_9:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_interfaceType copyWithZone:zone];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  v8 = [(NSString *)self->_radioType copyWithZone:zone];
  v9 = *(v5 + 40);
  *(v5 + 40) = v8;

  has = self->_has;
  if ((has & 2) == 0)
  {
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 8) = self->_applicationBytesReceived;
    *(v5 + 48) |= 1u;
    if ((*&self->_has & 4) == 0)
    {
      return v5;
    }

    goto LABEL_4;
  }

  *(v5 + 16) = self->_applicationBytesSent;
  *(v5 + 48) |= 2u;
  has = self->_has;
  if (has)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((has & 4) != 0)
  {
LABEL_4:
    *(v5 + 24) = self->_transportSmoothedRttMillis;
    *(v5 + 48) |= 4u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  interfaceType = self->_interfaceType;
  if (interfaceType | *(equalCopy + 4))
  {
    if (![(NSString *)interfaceType isEqual:?])
    {
      goto LABEL_20;
    }
  }

  radioType = self->_radioType;
  if (radioType | *(equalCopy + 5))
  {
    if (![(NSString *)radioType isEqual:?])
    {
      goto LABEL_20;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 48) & 2) == 0 || self->_applicationBytesSent != *(equalCopy + 2))
    {
      goto LABEL_20;
    }
  }

  else if ((*(equalCopy + 48) & 2) != 0)
  {
LABEL_20:
    v7 = 0;
    goto LABEL_21;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 48) & 1) == 0 || self->_applicationBytesReceived != *(equalCopy + 1))
    {
      goto LABEL_20;
    }
  }

  else if (*(equalCopy + 48))
  {
    goto LABEL_20;
  }

  v7 = (*(equalCopy + 48) & 4) == 0;
  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 48) & 4) == 0 || self->_transportSmoothedRttMillis != *(equalCopy + 3))
    {
      goto LABEL_20;
    }

    v7 = 1;
  }

LABEL_21:

  return v7;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_interfaceType hash];
  v4 = [(NSString *)self->_radioType hash];
  if ((*&self->_has & 2) == 0)
  {
    v5 = 0;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_6:
    v6 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v7 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7;
  }

  v5 = 2654435761u * self->_applicationBytesSent;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v6 = 2654435761u * self->_applicationBytesReceived;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v7 = 2654435761u * self->_transportSmoothedRttMillis;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v6 = fromCopy;
  if (fromCopy[4])
  {
    [(C2MPPathInfo *)self setInterfaceType:?];
    fromCopy = v6;
  }

  if (fromCopy[5])
  {
    [(C2MPPathInfo *)self setRadioType:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 48);
  if ((v5 & 2) != 0)
  {
    self->_applicationBytesSent = fromCopy[2];
    *&self->_has |= 2u;
    v5 = *(fromCopy + 48);
    if ((v5 & 1) == 0)
    {
LABEL_7:
      if ((v5 & 4) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((fromCopy[6] & 1) == 0)
  {
    goto LABEL_7;
  }

  self->_applicationBytesReceived = fromCopy[1];
  *&self->_has |= 1u;
  if ((fromCopy[6] & 4) != 0)
  {
LABEL_8:
    self->_transportSmoothedRttMillis = fromCopy[3];
    *&self->_has |= 4u;
  }

LABEL_9:
}

@end