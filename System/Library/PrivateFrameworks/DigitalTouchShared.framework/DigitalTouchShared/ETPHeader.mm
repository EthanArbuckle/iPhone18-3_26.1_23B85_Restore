@interface ETPHeader
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)messageTypeAsString:(int)a3;
- (int)StringAsMessageType:(id)a3;
- (int)messageType;
- (unint64_t)hash;
- (void)mergeFrom:(id)a3;
- (void)setHasBaseColor:(BOOL)a3;
- (void)setHasMessageType:(BOOL)a3;
- (void)setHasStartDelay:(BOOL)a3;
- (void)setHasSupportsPlaybackTimeOffsets:(BOOL)a3;
- (void)writeTo:(id)a3;
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

- (void)setHasMessageType:(BOOL)a3
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

- (id)messageTypeAsString:(int)a3
{
  if ((a3 - 1) >= 8)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", *&a3];
  }

  else
  {
    v4 = off_278F79EF0[a3 - 1];
  }

  return v4;
}

- (int)StringAsMessageType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Tap"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"QuickTap"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Heartbeat"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"Doodle"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"ReadReceipt"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"Video"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"Kiss"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"Anger"])
  {
    v4 = 8;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasBaseColor:(BOOL)a3
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

- (void)setHasSupportsPlaybackTimeOffsets:(BOOL)a3
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

- (void)setHasStartDelay:(BOOL)a3
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
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ETPHeader;
  v4 = [(ETPHeader *)&v8 description];
  v5 = [(ETPHeader *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
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

    [v3 setObject:v6 forKey:@"messageType"];

    has = self->_has;
  }

  if (has)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_sendDate];
    [v3 setObject:v7 forKey:@"sendDate"];
  }

  messageData = self->_messageData;
  if (messageData)
  {
    [v3 setObject:messageData forKey:@"messageData"];
  }

  if ((*&self->_has & 4) != 0)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_baseColor];
    [v3 setObject:v9 forKey:@"baseColor"];
  }

  identifier = self->_identifier;
  if (identifier)
  {
    [v3 setObject:identifier forKey:@"identifier"];
  }

  v11 = self->_has;
  if ((v11 & 0x10) != 0)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithBool:self->_supportsPlaybackTimeOffsets];
    [v3 setObject:v12 forKey:@"supportsPlaybackTimeOffsets"];

    v11 = self->_has;
  }

  if ((v11 & 2) != 0)
  {
    v13 = [MEMORY[0x277CCABB0] numberWithDouble:self->_startDelay];
    [v3 setObject:v13 forKey:@"startDelay"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v6 = a3;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

  v8 = [(NSData *)self->_messageData copyWithZone:a3];
  v9 = *(v6 + 40);
  *(v6 + 40) = v8;

  if ((*&self->_has & 4) != 0)
  {
    *(v6 + 24) = self->_baseColor;
    *(v6 + 56) |= 4u;
  }

  v10 = [(NSString *)self->_identifier copyWithZone:a3];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_30;
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    if ((*(v4 + 56) & 8) == 0 || self->_messageType != *(v4 + 12))
    {
      goto LABEL_30;
    }
  }

  else if ((*(v4 + 56) & 8) != 0)
  {
    goto LABEL_30;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 56) & 1) == 0 || self->_sendDate != *(v4 + 1))
    {
      goto LABEL_30;
    }
  }

  else if (*(v4 + 56))
  {
    goto LABEL_30;
  }

  messageData = self->_messageData;
  if (messageData | *(v4 + 5))
  {
    if (![(NSData *)messageData isEqual:?])
    {
      goto LABEL_30;
    }

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    if ((*(v4 + 56) & 4) == 0 || self->_baseColor != *(v4 + 6))
    {
      goto LABEL_30;
    }
  }

  else if ((*(v4 + 56) & 4) != 0)
  {
    goto LABEL_30;
  }

  identifier = self->_identifier;
  if (identifier | *(v4 + 4))
  {
    if (![(NSString *)identifier isEqual:?])
    {
      goto LABEL_30;
    }

    has = self->_has;
  }

  if ((has & 0x10) == 0)
  {
    if ((*(v4 + 56) & 0x10) == 0)
    {
      goto LABEL_25;
    }

LABEL_30:
    v8 = 0;
    goto LABEL_31;
  }

  if ((*(v4 + 56) & 0x10) == 0)
  {
    goto LABEL_30;
  }

  if (self->_supportsPlaybackTimeOffsets)
  {
    if ((*(v4 + 52) & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  else if (*(v4 + 52))
  {
    goto LABEL_30;
  }

LABEL_25:
  v8 = (*(v4 + 56) & 2) == 0;
  if ((has & 2) != 0)
  {
    if ((*(v4 + 56) & 2) == 0 || self->_startDelay != *(v4 + 2))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 56);
  if ((v5 & 8) != 0)
  {
    self->_messageType = *(v4 + 12);
    *&self->_has |= 8u;
    v5 = *(v4 + 56);
  }

  if (v5)
  {
    self->_sendDate = *(v4 + 1);
    *&self->_has |= 1u;
  }

  v7 = v4;
  if (*(v4 + 5))
  {
    [(ETPHeader *)self setMessageData:?];
    v4 = v7;
  }

  if ((*(v4 + 56) & 4) != 0)
  {
    self->_baseColor = *(v4 + 6);
    *&self->_has |= 4u;
  }

  if (*(v4 + 4))
  {
    [(ETPHeader *)self setIdentifier:?];
    v4 = v7;
  }

  v6 = *(v4 + 56);
  if ((v6 & 0x10) != 0)
  {
    self->_supportsPlaybackTimeOffsets = *(v4 + 52);
    *&self->_has |= 0x10u;
    v6 = *(v4 + 56);
  }

  if ((v6 & 2) != 0)
  {
    self->_startDelay = *(v4 + 2);
    *&self->_has |= 2u;
  }
}

@end