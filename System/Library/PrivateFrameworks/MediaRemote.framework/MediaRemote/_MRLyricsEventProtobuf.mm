@interface _MRLyricsEventProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasStartTime:(BOOL)time;
- (void)writeTo:(id)to;
@end

@implementation _MRLyricsEventProtobuf

- (void)setHasStartTime:(BOOL)time
{
  if (time)
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
  v8.super_class = _MRLyricsEventProtobuf;
  v4 = [(_MRLyricsEventProtobuf *)&v8 description];
  dictionaryRepresentation = [(_MRLyricsEventProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithDouble:self->_startTime];
    [dictionary setObject:v5 forKey:@"startTime"];

    has = self->_has;
  }

  if (has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_endTime];
    [dictionary setObject:v6 forKey:@"endTime"];
  }

  token = self->_token;
  if (token)
  {
    dictionaryRepresentation = [(_MRLyricsTokenProtobuf *)token dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"token"];
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
    startTime = self->_startTime;
    PBDataWriterWriteDoubleField();
    toCopy = v8;
    has = self->_has;
  }

  if (has)
  {
    endTime = self->_endTime;
    PBDataWriterWriteDoubleField();
    toCopy = v8;
  }

  if (self->_token)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v8;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 2) != 0)
  {
    toCopy[2] = *&self->_startTime;
    *(toCopy + 32) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    toCopy[1] = *&self->_endTime;
    *(toCopy + 32) |= 1u;
  }

  if (self->_token)
  {
    v6 = toCopy;
    [toCopy setToken:?];
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
    *(v5 + 16) = self->_startTime;
    *(v5 + 32) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 8) = self->_endTime;
    *(v5 + 32) |= 1u;
  }

  v8 = [(_MRLyricsTokenProtobuf *)self->_token copyWithZone:zone];
  v9 = v6[3];
  v6[3] = v8;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  v5 = *(equalCopy + 32);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 32) & 2) == 0 || self->_startTime != *(equalCopy + 2))
    {
      goto LABEL_14;
    }
  }

  else if ((*(equalCopy + 32) & 2) != 0)
  {
LABEL_14:
    v7 = 0;
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 32) & 1) == 0 || self->_endTime != *(equalCopy + 1))
    {
      goto LABEL_14;
    }
  }

  else if (*(equalCopy + 32))
  {
    goto LABEL_14;
  }

  token = self->_token;
  if (token | *(equalCopy + 3))
  {
    v7 = [(_MRLyricsTokenProtobuf *)token isEqual:?];
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
    startTime = self->_startTime;
    if (startTime < 0.0)
    {
      startTime = -startTime;
    }

    *v6.i64 = floor(startTime + 0.5);
    v10 = (startTime - *v6.i64) * 1.84467441e19;
    *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
    v11.f64[0] = NAN;
    v11.f64[1] = NAN;
    v6 = vbslq_s8(vnegq_f64(v11), v7, v6);
    v8 = 2654435761u * *v6.i64;
    if (v10 >= 0.0)
    {
      if (v10 > 0.0)
      {
        v8 += v10;
      }
    }

    else
    {
      v8 -= fabs(v10);
    }
  }

  else
  {
    v8 = 0;
  }

  if (*&self->_has)
  {
    endTime = self->_endTime;
    if (endTime < 0.0)
    {
      endTime = -endTime;
    }

    *v6.i64 = floor(endTime + 0.5);
    v14 = (endTime - *v6.i64) * 1.84467441e19;
    *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
    v15.f64[0] = NAN;
    v15.f64[1] = NAN;
    v12 = 2654435761u * *vbslq_s8(vnegq_f64(v15), v7, v6).i64;
    if (v14 >= 0.0)
    {
      if (v14 > 0.0)
      {
        v12 += v14;
      }
    }

    else
    {
      v12 -= fabs(v14);
    }
  }

  else
  {
    v12 = 0;
  }

  return v12 ^ v8 ^ [(_MRLyricsTokenProtobuf *)self->_token hash:v3];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  v6 = *(fromCopy + 32);
  if ((v6 & 2) != 0)
  {
    self->_startTime = *(fromCopy + 2);
    *&self->_has |= 2u;
    v6 = *(fromCopy + 32);
  }

  if (v6)
  {
    self->_endTime = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  token = self->_token;
  v8 = v5[3];
  if (token)
  {
    if (!v8)
    {
      goto LABEL_11;
    }

    v9 = v5;
    [(_MRLyricsTokenProtobuf *)token mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_11;
    }

    v9 = v5;
    [(_MRLyricsEventProtobuf *)self setToken:?];
  }

  v5 = v9;
LABEL_11:
}

@end