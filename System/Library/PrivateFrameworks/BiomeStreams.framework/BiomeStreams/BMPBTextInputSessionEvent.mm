@interface BMPBTextInputSessionEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsSessionType:(id)a3;
- (int)sessionType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasSessionType:(BOOL)a3;
- (void)setHasTimestamp:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation BMPBTextInputSessionEvent

- (void)setHasTimestamp:(BOOL)a3
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

- (void)setHasSessionType:(BOOL)a3
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

- (int)StringAsSessionType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Keyboard"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"ThirdPartyKeyboard"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Pencil"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Dictation"])
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
  v5 = [(BMPBTextInputSessionEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if (has)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithDouble:self->_duration];
    [v3 setObject:v5 forKey:@"duration"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_timestamp];
    [v3 setObject:v6 forKey:@"timestamp"];
  }

  bundleID = self->_bundleID;
  if (bundleID)
  {
    [v3 setObject:bundleID forKey:@"bundleID"];
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

    [v3 setObject:v9 forKey:@"sessionType"];
  }

  sessionID = self->_sessionID;
  if (sessionID)
  {
    [v3 setObject:sessionID forKey:@"sessionID"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v9 = v4;
  if (has)
  {
    duration = self->_duration;
    PBDataWriterWriteDoubleField();
    v4 = v9;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteDoubleField();
    v4 = v9;
  }

  if (self->_bundleID)
  {
    PBDataWriterWriteStringField();
    v4 = v9;
  }

  if ((*&self->_has & 4) != 0)
  {
    sessionType = self->_sessionType;
    PBDataWriterWriteInt32Field();
    v4 = v9;
  }

  if (self->_sessionID)
  {
    PBDataWriterWriteStringField();
    v4 = v9;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[1] = *&self->_duration;
    *(v4 + 44) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v4[2] = *&self->_timestamp;
    *(v4 + 44) |= 2u;
  }

  v6 = v4;
  if (self->_bundleID)
  {
    [v4 setBundleID:?];
    v4 = v6;
  }

  if ((*&self->_has & 4) != 0)
  {
    *(v4 + 10) = self->_sessionType;
    *(v4 + 44) |= 4u;
  }

  if (self->_sessionID)
  {
    [v6 setSessionID:?];
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

  v8 = [(NSString *)self->_bundleID copyWithZone:a3];
  v9 = *(v6 + 24);
  *(v6 + 24) = v8;

  if ((*&self->_has & 4) != 0)
  {
    *(v6 + 40) = self->_sessionType;
    *(v6 + 44) |= 4u;
  }

  v10 = [(NSString *)self->_sessionID copyWithZone:a3];
  v11 = *(v6 + 32);
  *(v6 + 32) = v10;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  has = self->_has;
  v6 = *(v4 + 44);
  if (has)
  {
    if ((*(v4 + 44) & 1) == 0 || self->_duration != *(v4 + 1))
    {
      goto LABEL_22;
    }
  }

  else if (*(v4 + 44))
  {
    goto LABEL_22;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 44) & 2) == 0 || self->_timestamp != *(v4 + 2))
    {
      goto LABEL_22;
    }
  }

  else if ((*(v4 + 44) & 2) != 0)
  {
    goto LABEL_22;
  }

  bundleID = self->_bundleID;
  if (bundleID | *(v4 + 3))
  {
    if (![(NSString *)bundleID isEqual:?])
    {
LABEL_22:
      v10 = 0;
      goto LABEL_23;
    }

    has = self->_has;
  }

  v8 = *(v4 + 44);
  if ((has & 4) != 0)
  {
    if ((*(v4 + 44) & 4) == 0 || self->_sessionType != *(v4 + 10))
    {
      goto LABEL_22;
    }
  }

  else if ((*(v4 + 44) & 4) != 0)
  {
    goto LABEL_22;
  }

  sessionID = self->_sessionID;
  if (sessionID | *(v4 + 4))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 44);
  if (v5)
  {
    self->_duration = *(v4 + 1);
    *&self->_has |= 1u;
    v5 = *(v4 + 44);
  }

  if ((v5 & 2) != 0)
  {
    self->_timestamp = *(v4 + 2);
    *&self->_has |= 2u;
  }

  v6 = v4;
  if (*(v4 + 3))
  {
    [(BMPBTextInputSessionEvent *)self setBundleID:?];
    v4 = v6;
  }

  if ((*(v4 + 44) & 4) != 0)
  {
    self->_sessionType = *(v4 + 10);
    *&self->_has |= 4u;
  }

  if (*(v4 + 4))
  {
    [(BMPBTextInputSessionEvent *)self setSessionID:?];
    v4 = v6;
  }
}

@end