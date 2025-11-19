@interface BMPBSiriUIEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasStarting:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation BMPBSiriUIEvent

- (void)setHasStarting:(BOOL)a3
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
  v8.super_class = BMPBSiriUIEvent;
  v4 = [(BMPBSiriUIEvent *)&v8 description];
  v5 = [(BMPBSiriUIEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  sessionID = self->_sessionID;
  if (sessionID)
  {
    [v3 setObject:sessionID forKey:@"sessionID"];
  }

  uuid = self->_uuid;
  if (uuid)
  {
    [v4 setObject:uuid forKey:@"uuid"];
  }

  viewMode = self->_viewMode;
  if (viewMode)
  {
    [v4 setObject:viewMode forKey:@"viewMode"];
  }

  dismissalReason = self->_dismissalReason;
  if (dismissalReason)
  {
    [v4 setObject:dismissalReason forKey:@"dismissalReason"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:self->_starting];
    [v4 setObject:v10 forKey:@"starting"];

    has = self->_has;
  }

  if (has)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithDouble:self->_absoluteTimestamp];
    [v4 setObject:v11 forKey:@"absoluteTimestamp"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (self->_sessionID)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  if (self->_uuid)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  if (self->_viewMode)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  if (self->_dismissalReason)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    starting = self->_starting;
    PBDataWriterWriteBOOLField();
    v4 = v8;
    has = self->_has;
  }

  if (has)
  {
    absoluteTimestamp = self->_absoluteTimestamp;
    PBDataWriterWriteDoubleField();
    v4 = v8;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_sessionID)
  {
    [v4 setSessionID:?];
    v4 = v6;
  }

  if (self->_uuid)
  {
    [v6 setUuid:?];
    v4 = v6;
  }

  if (self->_viewMode)
  {
    [v6 setViewMode:?];
    v4 = v6;
  }

  if (self->_dismissalReason)
  {
    [v6 setDismissalReason:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v4 + 48) = self->_starting;
    *(v4 + 52) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v4 + 1) = *&self->_absoluteTimestamp;
    *(v4 + 52) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_sessionID copyWithZone:a3];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(NSString *)self->_uuid copyWithZone:a3];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  v10 = [(NSString *)self->_viewMode copyWithZone:a3];
  v11 = *(v5 + 40);
  *(v5 + 40) = v10;

  v12 = [(NSString *)self->_dismissalReason copyWithZone:a3];
  v13 = *(v5 + 16);
  *(v5 + 16) = v12;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 48) = self->_starting;
    *(v5 + 52) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 8) = self->_absoluteTimestamp;
    *(v5 + 52) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  sessionID = self->_sessionID;
  if (sessionID | *(v4 + 3))
  {
    if (![(NSString *)sessionID isEqual:?])
    {
      goto LABEL_17;
    }
  }

  uuid = self->_uuid;
  if (uuid | *(v4 + 4))
  {
    if (![(NSString *)uuid isEqual:?])
    {
      goto LABEL_17;
    }
  }

  viewMode = self->_viewMode;
  if (viewMode | *(v4 + 5))
  {
    if (![(NSString *)viewMode isEqual:?])
    {
      goto LABEL_17;
    }
  }

  dismissalReason = self->_dismissalReason;
  if (dismissalReason | *(v4 + 2))
  {
    if (![(NSString *)dismissalReason isEqual:?])
    {
      goto LABEL_17;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 52) & 2) == 0)
    {
      goto LABEL_17;
    }

    v11 = *(v4 + 48);
    if (self->_starting)
    {
      if ((*(v4 + 48) & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    else if (*(v4 + 48))
    {
      goto LABEL_17;
    }
  }

  else if ((*(v4 + 52) & 2) != 0)
  {
    goto LABEL_17;
  }

  v9 = (*(v4 + 52) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 52) & 1) != 0 && self->_absoluteTimestamp == *(v4 + 1))
    {
      v9 = 1;
      goto LABEL_18;
    }

LABEL_17:
    v9 = 0;
  }

LABEL_18:

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_sessionID hash];
  v4 = [(NSString *)self->_uuid hash];
  v5 = [(NSString *)self->_viewMode hash];
  v6 = [(NSString *)self->_dismissalReason hash];
  if ((*&self->_has & 2) != 0)
  {
    v9 = 2654435761 * self->_starting;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_8:
    v13 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v9 ^ v13;
  }

  v9 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  absoluteTimestamp = self->_absoluteTimestamp;
  if (absoluteTimestamp < 0.0)
  {
    absoluteTimestamp = -absoluteTimestamp;
  }

  *v7.i64 = floor(absoluteTimestamp + 0.5);
  v11 = (absoluteTimestamp - *v7.i64) * 1.84467441e19;
  *v8.i64 = *v7.i64 - trunc(*v7.i64 * 5.42101086e-20) * 1.84467441e19;
  v12.f64[0] = NAN;
  v12.f64[1] = NAN;
  v13 = 2654435761u * *vbslq_s8(vnegq_f64(v12), v8, v7).i64;
  if (v11 >= 0.0)
  {
    if (v11 > 0.0)
    {
      v13 += v11;
    }
  }

  else
  {
    v13 -= fabs(v11);
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v9 ^ v13;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*(v4 + 3))
  {
    [(BMPBSiriUIEvent *)self setSessionID:?];
    v4 = v6;
  }

  if (*(v4 + 4))
  {
    [(BMPBSiriUIEvent *)self setUuid:?];
    v4 = v6;
  }

  if (*(v4 + 5))
  {
    [(BMPBSiriUIEvent *)self setViewMode:?];
    v4 = v6;
  }

  if (*(v4 + 2))
  {
    [(BMPBSiriUIEvent *)self setDismissalReason:?];
    v4 = v6;
  }

  v5 = *(v4 + 52);
  if ((v5 & 2) != 0)
  {
    self->_starting = *(v4 + 48);
    *&self->_has |= 2u;
    v5 = *(v4 + 52);
  }

  if (v5)
  {
    self->_absoluteTimestamp = *(v4 + 1);
    *&self->_has |= 1u;
  }
}

@end