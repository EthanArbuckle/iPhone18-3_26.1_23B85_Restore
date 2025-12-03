@interface _MRPlayerClientPropertiesMessageProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation _MRPlayerClientPropertiesMessageProtobuf

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRPlayerClientPropertiesMessageProtobuf;
  v4 = [(_MRPlayerClientPropertiesMessageProtobuf *)&v8 description];
  dictionaryRepresentation = [(_MRPlayerClientPropertiesMessageProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  playerPath = self->_playerPath;
  if (playerPath)
  {
    dictionaryRepresentation = [(_MRNowPlayingPlayerPathProtobuf *)playerPath dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"playerPath"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_lastPlayingTimestamp];
    [dictionary setObject:v6 forKey:@"lastPlayingTimestamp"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_playerPath)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    lastPlayingTimestamp = self->_lastPlayingTimestamp;
    PBDataWriterWriteDoubleField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_playerPath)
  {
    v5 = toCopy;
    [toCopy setPlayerPath:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = *&self->_lastPlayingTimestamp;
    *(toCopy + 24) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(_MRNowPlayingPlayerPathProtobuf *)self->_playerPath copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_lastPlayingTimestamp;
    *(v5 + 24) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_8;
  }

  playerPath = self->_playerPath;
  if (playerPath | *(equalCopy + 2))
  {
    if (![(_MRNowPlayingPlayerPathProtobuf *)playerPath isEqual:?])
    {
      goto LABEL_8;
    }
  }

  v6 = (*(equalCopy + 24) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 24) & 1) != 0 && self->_lastPlayingTimestamp == *(equalCopy + 1))
    {
      v6 = 1;
      goto LABEL_9;
    }

LABEL_8:
    v6 = 0;
  }

LABEL_9:

  return v6;
}

- (unint64_t)hash
{
  v3 = [(_MRNowPlayingPlayerPathProtobuf *)self->_playerPath hash];
  if (*&self->_has)
  {
    lastPlayingTimestamp = self->_lastPlayingTimestamp;
    if (lastPlayingTimestamp < 0.0)
    {
      lastPlayingTimestamp = -lastPlayingTimestamp;
    }

    *v4.i64 = floor(lastPlayingTimestamp + 0.5);
    v8 = (lastPlayingTimestamp - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v9.f64[0] = NAN;
    v9.f64[1] = NAN;
    v6 = 2654435761u * *vbslq_s8(vnegq_f64(v9), v5, v4).i64;
    if (v8 >= 0.0)
    {
      if (v8 > 0.0)
      {
        v6 += v8;
      }
    }

    else
    {
      v6 -= fabs(v8);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 ^ v3;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  playerPath = self->_playerPath;
  v6 = *(fromCopy + 2);
  if (playerPath)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = fromCopy;
    [(_MRNowPlayingPlayerPathProtobuf *)playerPath mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = fromCopy;
    [(_MRPlayerClientPropertiesMessageProtobuf *)self setPlayerPath:?];
  }

  fromCopy = v7;
LABEL_7:
  if (*(fromCopy + 24))
  {
    self->_lastPlayingTimestamp = *(fromCopy + 1);
    *&self->_has |= 1u;
  }
}

@end