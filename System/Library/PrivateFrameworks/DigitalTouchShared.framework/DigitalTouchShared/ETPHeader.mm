@interface ETPHeader
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)messageTypeAsString:(int)string;
- (int)StringAsMessageType:(id)type;
- (int)messageType;
- (unint64_t)hash;
- (void)mergeFrom:(id)from;
- (void)setHasBaseColor:(BOOL)color;
- (void)setHasMessageType:(BOOL)type;
- (void)setHasStartDelay:(BOOL)delay;
- (void)setHasSupportsPlaybackTimeOffsets:(BOOL)offsets;
- (void)writeTo:(id)to;
@end

@implementation ETPHeader

- (int)messageType
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_messageType;
  }

  else
  {
    return 1;
  }
}

- (void)setHasMessageType:(BOOL)type
{
  if (type)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (id)messageTypeAsString:(int)string
{
  if ((string - 1) >= 8)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = off_278F79EF0[string - 1];
  }

  return v4;
}

- (int)StringAsMessageType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"Tap"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"QuickTap"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"Heartbeat"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"Doodle"])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:@"ReadReceipt"])
  {
    v4 = 5;
  }

  else if ([typeCopy isEqualToString:@"Video"])
  {
    v4 = 6;
  }

  else if ([typeCopy isEqualToString:@"Kiss"])
  {
    v4 = 7;
  }

  else if ([typeCopy isEqualToString:@"Anger"])
  {
    v4 = 8;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasBaseColor:(BOOL)color
{
  if (color)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasSupportsPlaybackTimeOffsets:(BOOL)offsets
{
  if (offsets)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasStartDelay:(BOOL)delay
{
  if (delay)
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
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ETPHeader;
  v4 = [(ETPHeader *)&v8 description];
  dictionaryRepresentation = [(ETPHeader *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 8) != 0)
  {
    v5 = self->_messageType - 1;
    if (v5 >= 8)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_messageType];
    }

    else
    {
      v6 = off_278F79EF0[v5];
    }

    [dictionary setObject:v6 forKey:@"messageType"];

    has = self->_has;
  }

  if (has)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_sendDate];
    [dictionary setObject:v7 forKey:@"sendDate"];
  }

  messageData = self->_messageData;
  if (messageData)
  {
    [dictionary setObject:messageData forKey:@"messageData"];
  }

  if ((*&self->_has & 4) != 0)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_baseColor];
    [dictionary setObject:v9 forKey:@"baseColor"];
  }

  identifier = self->_identifier;
  if (identifier)
  {
    [dictionary setObject:identifier forKey:@"identifier"];
  }

  v11 = self->_has;
  if ((v11 & 0x10) != 0)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithBool:self->_supportsPlaybackTimeOffsets];
    [dictionary setObject:v12 forKey:@"supportsPlaybackTimeOffsets"];

    v11 = self->_has;
  }

  if ((v11 & 2) != 0)
  {
    v13 = [MEMORY[0x277CCABB0] numberWithDouble:self->_startDelay];
    [dictionary setObject:v13 forKey:@"startDelay"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 8) != 0)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if (has)
  {
    PBDataWriterWriteSfixed64Field();
  }

  if (self->_messageData)
  {
    PBDataWriterWriteDataField();
  }

  if ((*&self->_has & 4) != 0)
  {
    PBDataWriterWriteFixed32Field();
  }

  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
  }

  v5 = self->_has;
  if ((v5 & 0x10) != 0)
  {
    PBDataWriterWriteBOOLField();
    v5 = self->_has;
  }

  if ((v5 & 2) != 0)
  {
    PBDataWriterWriteDoubleField();
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 8) != 0)
  {
    *(v5 + 48) = self->_messageType;
    *(v5 + 56) |= 8u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 8) = self->_sendDate;
    *(v5 + 56) |= 1u;
  }

  v8 = [(NSData *)self->_messageData copyWithZone:zone];
  v9 = *(v6 + 40);
  *(v6 + 40) = v8;

  if ((*&self->_has & 4) != 0)
  {
    *(v6 + 24) = self->_baseColor;
    *(v6 + 56) |= 4u;
  }

  v10 = [(NSString *)self->_identifier copyWithZone:zone];
  v11 = *(v6 + 32);
  *(v6 + 32) = v10;

  v12 = self->_has;
  if ((v12 & 0x10) != 0)
  {
    *(v6 + 52) = self->_supportsPlaybackTimeOffsets;
    *(v6 + 56) |= 0x10u;
    v12 = self->_has;
  }

  if ((v12 & 2) != 0)
  {
    *(v6 + 16) = self->_startDelay;
    *(v6 + 56) |= 2u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_30;
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    if ((*(equalCopy + 56) & 8) == 0 || self->_messageType != *(equalCopy + 12))
    {
      goto LABEL_30;
    }
  }

  else if ((*(equalCopy + 56) & 8) != 0)
  {
    goto LABEL_30;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 56) & 1) == 0 || self->_sendDate != *(equalCopy + 1))
    {
      goto LABEL_30;
    }
  }

  else if (*(equalCopy + 56))
  {
    goto LABEL_30;
  }

  messageData = self->_messageData;
  if (messageData | *(equalCopy + 5))
  {
    if (![(NSData *)messageData isEqual:?])
    {
      goto LABEL_30;
    }

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    if ((*(equalCopy + 56) & 4) == 0 || self->_baseColor != *(equalCopy + 6))
    {
      goto LABEL_30;
    }
  }

  else if ((*(equalCopy + 56) & 4) != 0)
  {
    goto LABEL_30;
  }

  identifier = self->_identifier;
  if (identifier | *(equalCopy + 4))
  {
    if (![(NSString *)identifier isEqual:?])
    {
      goto LABEL_30;
    }

    has = self->_has;
  }

  if ((has & 0x10) == 0)
  {
    if ((*(equalCopy + 56) & 0x10) == 0)
    {
      goto LABEL_25;
    }

LABEL_30:
    v8 = 0;
    goto LABEL_31;
  }

  if ((*(equalCopy + 56) & 0x10) == 0)
  {
    goto LABEL_30;
  }

  if (self->_supportsPlaybackTimeOffsets)
  {
    if ((*(equalCopy + 52) & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  else if (*(equalCopy + 52))
  {
    goto LABEL_30;
  }

LABEL_25:
  v8 = (*(equalCopy + 56) & 2) == 0;
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 56) & 2) == 0 || self->_startDelay != *(equalCopy + 2))
    {
      goto LABEL_30;
    }

    v8 = 1;
  }

LABEL_31:

  return v8;
}

- (unint64_t)hash
{
  if ((*&self->_has & 8) != 0)
  {
    v3 = 2654435761 * self->_messageType;
    if (*&self->_has)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = 0;
    if (*&self->_has)
    {
LABEL_3:
      v4 = 2654435761 * self->_sendDate;
      goto LABEL_6;
    }
  }

  v4 = 0;
LABEL_6:
  v5 = [(NSData *)self->_messageData hash];
  if ((*&self->_has & 4) != 0)
  {
    v6 = 2654435761 * self->_baseColor;
  }

  else
  {
    v6 = 0;
  }

  v7 = [(NSString *)self->_identifier hash];
  if ((*&self->_has & 0x10) != 0)
  {
    v10 = 2654435761 * self->_supportsPlaybackTimeOffsets;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_11;
    }

LABEL_16:
    v14 = 0;
    return v4 ^ v3 ^ v6 ^ v5 ^ v7 ^ v10 ^ v14;
  }

  v10 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_16;
  }

LABEL_11:
  startDelay = self->_startDelay;
  if (startDelay < 0.0)
  {
    startDelay = -startDelay;
  }

  *v8.i64 = floor(startDelay + 0.5);
  v12 = (startDelay - *v8.i64) * 1.84467441e19;
  *v9.i64 = *v8.i64 - trunc(*v8.i64 * 5.42101086e-20) * 1.84467441e19;
  v13.f64[0] = NAN;
  v13.f64[1] = NAN;
  v14 = 2654435761u * *vbslq_s8(vnegq_f64(v13), v9, v8).i64;
  if (v12 >= 0.0)
  {
    if (v12 > 0.0)
    {
      v14 += v12;
    }
  }

  else
  {
    v14 -= fabs(v12);
  }

  return v4 ^ v3 ^ v6 ^ v5 ^ v7 ^ v10 ^ v14;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 56);
  if ((v5 & 8) != 0)
  {
    self->_messageType = *(fromCopy + 12);
    *&self->_has |= 8u;
    v5 = *(fromCopy + 56);
  }

  if (v5)
  {
    self->_sendDate = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  v7 = fromCopy;
  if (*(fromCopy + 5))
  {
    [(ETPHeader *)self setMessageData:?];
    fromCopy = v7;
  }

  if ((*(fromCopy + 56) & 4) != 0)
  {
    self->_baseColor = *(fromCopy + 6);
    *&self->_has |= 4u;
  }

  if (*(fromCopy + 4))
  {
    [(ETPHeader *)self setIdentifier:?];
    fromCopy = v7;
  }

  v6 = *(fromCopy + 56);
  if ((v6 & 0x10) != 0)
  {
    self->_supportsPlaybackTimeOffsets = *(fromCopy + 52);
    *&self->_has |= 0x10u;
    v6 = *(fromCopy + 56);
  }

  if ((v6 & 2) != 0)
  {
    self->_startDelay = *(fromCopy + 2);
    *&self->_has |= 2u;
  }
}

@end