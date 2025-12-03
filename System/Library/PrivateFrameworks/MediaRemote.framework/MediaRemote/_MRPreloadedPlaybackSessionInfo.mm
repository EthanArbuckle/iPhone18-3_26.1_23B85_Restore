@interface _MRPreloadedPlaybackSessionInfo
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation _MRPreloadedPlaybackSessionInfo

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRPreloadedPlaybackSessionInfo;
  v4 = [(_MRPreloadedPlaybackSessionInfo *)&v8 description];
  dictionaryRepresentation = [(_MRPreloadedPlaybackSessionInfo *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  playbackSessionIdentifier = self->_playbackSessionIdentifier;
  if (playbackSessionIdentifier)
  {
    [dictionary setObject:playbackSessionIdentifier forKey:@"playbackSessionIdentifier"];
  }

  playbackSessionRevision = self->_playbackSessionRevision;
  if (playbackSessionRevision)
  {
    [v4 setObject:playbackSessionRevision forKey:@"playbackSessionRevision"];
  }

  if (*&self->_has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInt:self->_playbackSessionPriority];
    [v4 setObject:v7 forKey:@"playbackSessionPriority"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_playbackSessionIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_playbackSessionRevision)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    playbackSessionPriority = self->_playbackSessionPriority;
    PBDataWriterWriteInt32Field();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_playbackSessionIdentifier)
  {
    [toCopy setPlaybackSessionIdentifier:?];
    toCopy = v5;
  }

  if (self->_playbackSessionRevision)
  {
    [v5 setPlaybackSessionRevision:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 4) = self->_playbackSessionPriority;
    *(toCopy + 32) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_playbackSessionIdentifier copyWithZone:zone];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  v8 = [(NSString *)self->_playbackSessionRevision copyWithZone:zone];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  if (*&self->_has)
  {
    *(v5 + 16) = self->_playbackSessionPriority;
    *(v5 + 32) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  playbackSessionIdentifier = self->_playbackSessionIdentifier;
  if (playbackSessionIdentifier | *(equalCopy + 1))
  {
    if (![(NSString *)playbackSessionIdentifier isEqual:?])
    {
      goto LABEL_10;
    }
  }

  playbackSessionRevision = self->_playbackSessionRevision;
  if (playbackSessionRevision | *(equalCopy + 3))
  {
    if (![(NSString *)playbackSessionRevision isEqual:?])
    {
      goto LABEL_10;
    }
  }

  v7 = (*(equalCopy + 32) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 32) & 1) != 0 && self->_playbackSessionPriority == *(equalCopy + 4))
    {
      v7 = 1;
      goto LABEL_11;
    }

LABEL_10:
    v7 = 0;
  }

LABEL_11:

  return v7;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_playbackSessionIdentifier hash];
  v4 = [(NSString *)self->_playbackSessionRevision hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_playbackSessionPriority;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 1))
  {
    [(_MRPreloadedPlaybackSessionInfo *)self setPlaybackSessionIdentifier:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 3))
  {
    [(_MRPreloadedPlaybackSessionInfo *)self setPlaybackSessionRevision:?];
    fromCopy = v5;
  }

  if (fromCopy[8])
  {
    self->_playbackSessionPriority = fromCopy[4];
    *&self->_has |= 1u;
  }
}

@end