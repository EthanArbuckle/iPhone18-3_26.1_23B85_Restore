@interface BMPBTextInputSessionEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsSessionType:(id)type;
- (int)sessionType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasSessionType:(BOOL)type;
- (void)setHasTimestamp:(BOOL)timestamp;
- (void)writeTo:(id)to;
@end

@implementation BMPBTextInputSessionEvent

- (void)setHasTimestamp:(BOOL)timestamp
{
  if (timestamp)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)sessionType
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_sessionType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasSessionType:(BOOL)type
{
  if (type)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)StringAsSessionType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"Keyboard"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"ThirdPartyKeyboard"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"Pencil"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"Dictation"])
  {
    v4 = 3;
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
  v8.super_class = BMPBTextInputSessionEvent;
  v4 = [(BMPBTextInputSessionEvent *)&v8 description];
  dictionaryRepresentation = [(BMPBTextInputSessionEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if (has)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithDouble:self->_duration];
    [dictionary setObject:v5 forKey:@"duration"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_timestamp];
    [dictionary setObject:v6 forKey:@"timestamp"];
  }

  bundleID = self->_bundleID;
  if (bundleID)
  {
    [dictionary setObject:bundleID forKey:@"bundleID"];
  }

  if ((*&self->_has & 4) != 0)
  {
    sessionType = self->_sessionType;
    if (sessionType >= 4)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_sessionType];
    }

    else
    {
      v9 = off_1E6E52A98[sessionType];
    }

    [dictionary setObject:v9 forKey:@"sessionType"];
  }

  sessionID = self->_sessionID;
  if (sessionID)
  {
    [dictionary setObject:sessionID forKey:@"sessionID"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v9 = toCopy;
  if (has)
  {
    duration = self->_duration;
    PBDataWriterWriteDoubleField();
    toCopy = v9;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteDoubleField();
    toCopy = v9;
  }

  if (self->_bundleID)
  {
    PBDataWriterWriteStringField();
    toCopy = v9;
  }

  if ((*&self->_has & 4) != 0)
  {
    sessionType = self->_sessionType;
    PBDataWriterWriteInt32Field();
    toCopy = v9;
  }

  if (self->_sessionID)
  {
    PBDataWriterWriteStringField();
    toCopy = v9;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[1] = *&self->_duration;
    *(toCopy + 44) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    toCopy[2] = *&self->_timestamp;
    *(toCopy + 44) |= 2u;
  }

  v6 = toCopy;
  if (self->_bundleID)
  {
    [toCopy setBundleID:?];
    toCopy = v6;
  }

  if ((*&self->_has & 4) != 0)
  {
    *(toCopy + 10) = self->_sessionType;
    *(toCopy + 44) |= 4u;
  }

  if (self->_sessionID)
  {
    [v6 setSessionID:?];
    toCopy = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_duration;
    *(v5 + 44) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_timestamp;
    *(v5 + 44) |= 2u;
  }

  v8 = [(NSString *)self->_bundleID copyWithZone:zone];
  v9 = *(v6 + 24);
  *(v6 + 24) = v8;

  if ((*&self->_has & 4) != 0)
  {
    *(v6 + 40) = self->_sessionType;
    *(v6 + 44) |= 4u;
  }

  v10 = [(NSString *)self->_sessionID copyWithZone:zone];
  v11 = *(v6 + 32);
  *(v6 + 32) = v10;

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
  v6 = *(equalCopy + 44);
  if (has)
  {
    if ((*(equalCopy + 44) & 1) == 0 || self->_duration != *(equalCopy + 1))
    {
      goto LABEL_22;
    }
  }

  else if (*(equalCopy + 44))
  {
    goto LABEL_22;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 44) & 2) == 0 || self->_timestamp != *(equalCopy + 2))
    {
      goto LABEL_22;
    }
  }

  else if ((*(equalCopy + 44) & 2) != 0)
  {
    goto LABEL_22;
  }

  bundleID = self->_bundleID;
  if (bundleID | *(equalCopy + 3))
  {
    if (![(NSString *)bundleID isEqual:?])
    {
LABEL_22:
      v10 = 0;
      goto LABEL_23;
    }

    has = self->_has;
  }

  v8 = *(equalCopy + 44);
  if ((has & 4) != 0)
  {
    if ((*(equalCopy + 44) & 4) == 0 || self->_sessionType != *(equalCopy + 10))
    {
      goto LABEL_22;
    }
  }

  else if ((*(equalCopy + 44) & 4) != 0)
  {
    goto LABEL_22;
  }

  sessionID = self->_sessionID;
  if (sessionID | *(equalCopy + 4))
  {
    v10 = [(NSString *)sessionID isEqual:?];
  }

  else
  {
    v10 = 1;
  }

LABEL_23:

  return v10;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    duration = self->_duration;
    if (duration < 0.0)
    {
      duration = -duration;
    }

    *v2.i64 = floor(duration + 0.5);
    v7 = (duration - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v8.f64[0] = NAN;
    v8.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v8), v3, v2);
    v5 = 2654435761u * *v2.i64;
    if (v7 >= 0.0)
    {
      if (v7 > 0.0)
      {
        v5 += v7;
      }
    }

    else
    {
      v5 -= fabs(v7);
    }
  }

  else
  {
    v5 = 0;
  }

  if ((*&self->_has & 2) != 0)
  {
    timestamp = self->_timestamp;
    if (timestamp < 0.0)
    {
      timestamp = -timestamp;
    }

    *v2.i64 = floor(timestamp + 0.5);
    v11 = (timestamp - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v12.f64[0] = NAN;
    v12.f64[1] = NAN;
    v9 = 2654435761u * *vbslq_s8(vnegq_f64(v12), v3, v2).i64;
    if (v11 >= 0.0)
    {
      if (v11 > 0.0)
      {
        v9 += v11;
      }
    }

    else
    {
      v9 -= fabs(v11);
    }
  }

  else
  {
    v9 = 0;
  }

  v13 = [(NSString *)self->_bundleID hash];
  if ((*&self->_has & 4) != 0)
  {
    v14 = 2654435761 * self->_sessionType;
  }

  else
  {
    v14 = 0;
  }

  return v9 ^ v5 ^ v14 ^ v13 ^ [(NSString *)self->_sessionID hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 44);
  if (v5)
  {
    self->_duration = *(fromCopy + 1);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 44);
  }

  if ((v5 & 2) != 0)
  {
    self->_timestamp = *(fromCopy + 2);
    *&self->_has |= 2u;
  }

  v6 = fromCopy;
  if (*(fromCopy + 3))
  {
    [(BMPBTextInputSessionEvent *)self setBundleID:?];
    fromCopy = v6;
  }

  if ((*(fromCopy + 44) & 4) != 0)
  {
    self->_sessionType = *(fromCopy + 10);
    *&self->_has |= 4u;
  }

  if (*(fromCopy + 4))
  {
    [(BMPBTextInputSessionEvent *)self setSessionID:?];
    fromCopy = v6;
  }
}

@end