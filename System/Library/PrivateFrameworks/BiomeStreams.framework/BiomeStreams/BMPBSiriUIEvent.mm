@interface BMPBSiriUIEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasStarting:(BOOL)starting;
- (void)writeTo:(id)to;
@end

@implementation BMPBSiriUIEvent

- (void)setHasStarting:(BOOL)starting
{
  if (starting)
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
  dictionaryRepresentation = [(BMPBSiriUIEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  sessionID = self->_sessionID;
  if (sessionID)
  {
    [dictionary setObject:sessionID forKey:@"sessionID"];
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

- (void)writeTo:(id)to
{
  toCopy = to;
  v8 = toCopy;
  if (self->_sessionID)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  if (self->_uuid)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  if (self->_viewMode)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  if (self->_dismissalReason)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    starting = self->_starting;
    PBDataWriterWriteBOOLField();
    toCopy = v8;
    has = self->_has;
  }

  if (has)
  {
    absoluteTimestamp = self->_absoluteTimestamp;
    PBDataWriterWriteDoubleField();
    toCopy = v8;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_sessionID)
  {
    [toCopy setSessionID:?];
    toCopy = v6;
  }

  if (self->_uuid)
  {
    [v6 setUuid:?];
    toCopy = v6;
  }

  if (self->_viewMode)
  {
    [v6 setViewMode:?];
    toCopy = v6;
  }

  if (self->_dismissalReason)
  {
    [v6 setDismissalReason:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(toCopy + 48) = self->_starting;
    *(toCopy + 52) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(toCopy + 1) = *&self->_absoluteTimestamp;
    *(toCopy + 52) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_sessionID copyWithZone:zone];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(NSString *)self->_uuid copyWithZone:zone];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  v10 = [(NSString *)self->_viewMode copyWithZone:zone];
  v11 = *(v5 + 40);
  *(v5 + 40) = v10;

  v12 = [(NSString *)self->_dismissalReason copyWithZone:zone];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  sessionID = self->_sessionID;
  if (sessionID | *(equalCopy + 3))
  {
    if (![(NSString *)sessionID isEqual:?])
    {
      goto LABEL_17;
    }
  }

  uuid = self->_uuid;
  if (uuid | *(equalCopy + 4))
  {
    if (![(NSString *)uuid isEqual:?])
    {
      goto LABEL_17;
    }
  }

  viewMode = self->_viewMode;
  if (viewMode | *(equalCopy + 5))
  {
    if (![(NSString *)viewMode isEqual:?])
    {
      goto LABEL_17;
    }
  }

  dismissalReason = self->_dismissalReason;
  if (dismissalReason | *(equalCopy + 2))
  {
    if (![(NSString *)dismissalReason isEqual:?])
    {
      goto LABEL_17;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 52) & 2) == 0)
    {
      goto LABEL_17;
    }

    v11 = *(equalCopy + 48);
    if (self->_starting)
    {
      if ((*(equalCopy + 48) & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    else if (*(equalCopy + 48))
    {
      goto LABEL_17;
    }
  }

  else if ((*(equalCopy + 52) & 2) != 0)
  {
    goto LABEL_17;
  }

  v9 = (*(equalCopy + 52) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 52) & 1) != 0 && self->_absoluteTimestamp == *(equalCopy + 1))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v6 = fromCopy;
  if (*(fromCopy + 3))
  {
    [(BMPBSiriUIEvent *)self setSessionID:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 4))
  {
    [(BMPBSiriUIEvent *)self setUuid:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 5))
  {
    [(BMPBSiriUIEvent *)self setViewMode:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 2))
  {
    [(BMPBSiriUIEvent *)self setDismissalReason:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 52);
  if ((v5 & 2) != 0)
  {
    self->_starting = *(fromCopy + 48);
    *&self->_has |= 2u;
    v5 = *(fromCopy + 52);
  }

  if (v5)
  {
    self->_absoluteTimestamp = *(fromCopy + 1);
    *&self->_has |= 1u;
  }
}

@end