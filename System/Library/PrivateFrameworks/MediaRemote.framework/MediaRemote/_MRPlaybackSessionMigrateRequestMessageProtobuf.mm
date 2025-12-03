@interface _MRPlaybackSessionMigrateRequestMessageProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation _MRPlaybackSessionMigrateRequestMessageProtobuf

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRPlaybackSessionMigrateRequestMessageProtobuf;
  v4 = [(_MRPlaybackSessionMigrateRequestMessageProtobuf *)&v8 description];
  dictionaryRepresentation = [(_MRPlaybackSessionMigrateRequestMessageProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  playbackSession = self->_playbackSession;
  if (playbackSession)
  {
    dictionaryRepresentation = [(_MRPlaybackSessionProtobuf *)playbackSession dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"playbackSession"];
  }

  request = self->_request;
  if (request)
  {
    dictionaryRepresentation2 = [(_MRPlaybackSessionMigrateRequestProtobuf *)request dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"request"];
  }

  playerPath = self->_playerPath;
  if (playerPath)
  {
    dictionaryRepresentation3 = [(_MRNowPlayingPlayerPathProtobuf *)playerPath dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"playerPath"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_playbackSession)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_request)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_playerPath)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_playbackSession)
  {
    [toCopy setPlaybackSession:?];
    toCopy = v5;
  }

  if (self->_request)
  {
    [v5 setRequest:?];
    toCopy = v5;
  }

  if (self->_playerPath)
  {
    [v5 setPlayerPath:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(_MRPlaybackSessionProtobuf *)self->_playbackSession copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(_MRPlaybackSessionMigrateRequestProtobuf *)self->_request copyWithZone:zone];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(_MRNowPlayingPlayerPathProtobuf *)self->_playerPath copyWithZone:zone];
  v11 = v5[2];
  v5[2] = v10;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((playbackSession = self->_playbackSession, !(playbackSession | equalCopy[1])) || -[_MRPlaybackSessionProtobuf isEqual:](playbackSession, "isEqual:")) && ((request = self->_request, !(request | equalCopy[3])) || -[_MRPlaybackSessionMigrateRequestProtobuf isEqual:](request, "isEqual:")))
  {
    playerPath = self->_playerPath;
    if (playerPath | equalCopy[2])
    {
      v8 = [(_MRNowPlayingPlayerPathProtobuf *)playerPath isEqual:?];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(_MRPlaybackSessionProtobuf *)self->_playbackSession hash];
  v4 = [(_MRPlaybackSessionMigrateRequestProtobuf *)self->_request hash]^ v3;
  return v4 ^ [(_MRNowPlayingPlayerPathProtobuf *)self->_playerPath hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  playbackSession = self->_playbackSession;
  v6 = fromCopy[1];
  v11 = fromCopy;
  if (playbackSession)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(_MRPlaybackSessionProtobuf *)playbackSession mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(_MRPlaybackSessionMigrateRequestMessageProtobuf *)self setPlaybackSession:?];
  }

  fromCopy = v11;
LABEL_7:
  request = self->_request;
  v8 = fromCopy[3];
  if (request)
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    [(_MRPlaybackSessionMigrateRequestProtobuf *)request mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    [(_MRPlaybackSessionMigrateRequestMessageProtobuf *)self setRequest:?];
  }

  fromCopy = v11;
LABEL_13:
  playerPath = self->_playerPath;
  v10 = fromCopy[2];
  if (playerPath)
  {
    if (!v10)
    {
      goto LABEL_19;
    }

    [(_MRNowPlayingPlayerPathProtobuf *)playerPath mergeFrom:?];
  }

  else
  {
    if (!v10)
    {
      goto LABEL_19;
    }

    [(_MRPlaybackSessionMigrateRequestMessageProtobuf *)self setPlayerPath:?];
  }

  fromCopy = v11;
LABEL_19:
}

@end