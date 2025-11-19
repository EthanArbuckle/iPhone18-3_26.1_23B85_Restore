@interface _MRPreloadedPlaybackSessionInfo
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _MRPreloadedPlaybackSessionInfo

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRPreloadedPlaybackSessionInfo;
  v4 = [(_MRPreloadedPlaybackSessionInfo *)&v8 description];
  v5 = [(_MRPreloadedPlaybackSessionInfo *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  playbackSessionIdentifier = self->_playbackSessionIdentifier;
  if (playbackSessionIdentifier)
  {
    [v3 setObject:playbackSessionIdentifier forKey:@"playbackSessionIdentifier"];
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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_playbackSessionIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_playbackSessionRevision)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    playbackSessionPriority = self->_playbackSessionPriority;
    PBDataWriterWriteInt32Field();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_playbackSessionIdentifier)
  {
    [v4 setPlaybackSessionIdentifier:?];
    v4 = v5;
  }

  if (self->_playbackSessionRevision)
  {
    [v5 setPlaybackSessionRevision:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 4) = self->_playbackSessionPriority;
    *(v4 + 32) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_playbackSessionIdentifier copyWithZone:a3];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  v8 = [(NSString *)self->_playbackSessionRevision copyWithZone:a3];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  if (*&self->_has)
  {
    *(v5 + 16) = self->_playbackSessionPriority;
    *(v5 + 32) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  playbackSessionIdentifier = self->_playbackSessionIdentifier;
  if (playbackSessionIdentifier | *(v4 + 1))
  {
    if (![(NSString *)playbackSessionIdentifier isEqual:?])
    {
      goto LABEL_10;
    }
  }

  playbackSessionRevision = self->_playbackSessionRevision;
  if (playbackSessionRevision | *(v4 + 3))
  {
    if (![(NSString *)playbackSessionRevision isEqual:?])
    {
      goto LABEL_10;
    }
  }

  v7 = (*(v4 + 32) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 32) & 1) != 0 && self->_playbackSessionPriority == *(v4 + 4))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 1))
  {
    [(_MRPreloadedPlaybackSessionInfo *)self setPlaybackSessionIdentifier:?];
    v4 = v5;
  }

  if (*(v4 + 3))
  {
    [(_MRPreloadedPlaybackSessionInfo *)self setPlaybackSessionRevision:?];
    v4 = v5;
  }

  if (v4[8])
  {
    self->_playbackSessionPriority = v4[4];
    *&self->_has |= 1u;
  }
}

@end