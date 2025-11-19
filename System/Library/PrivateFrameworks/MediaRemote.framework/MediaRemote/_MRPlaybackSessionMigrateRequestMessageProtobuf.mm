@interface _MRPlaybackSessionMigrateRequestMessageProtobuf
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _MRPlaybackSessionMigrateRequestMessageProtobuf

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRPlaybackSessionMigrateRequestMessageProtobuf;
  v4 = [(_MRPlaybackSessionMigrateRequestMessageProtobuf *)&v8 description];
  v5 = [(_MRPlaybackSessionMigrateRequestMessageProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  playbackSession = self->_playbackSession;
  if (playbackSession)
  {
    v5 = [(_MRPlaybackSessionProtobuf *)playbackSession dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"playbackSession"];
  }

  request = self->_request;
  if (request)
  {
    v7 = [(_MRPlaybackSessionMigrateRequestProtobuf *)request dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"request"];
  }

  playerPath = self->_playerPath;
  if (playerPath)
  {
    v9 = [(_MRNowPlayingPlayerPathProtobuf *)playerPath dictionaryRepresentation];
    [v3 setObject:v9 forKey:@"playerPath"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_playbackSession)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_request)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_playerPath)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_playbackSession)
  {
    [v4 setPlaybackSession:?];
    v4 = v5;
  }

  if (self->_request)
  {
    [v5 setRequest:?];
    v4 = v5;
  }

  if (self->_playerPath)
  {
    [v5 setPlayerPath:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(_MRPlaybackSessionProtobuf *)self->_playbackSession copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(_MRPlaybackSessionMigrateRequestProtobuf *)self->_request copyWithZone:a3];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(_MRNowPlayingPlayerPathProtobuf *)self->_playerPath copyWithZone:a3];
  v11 = v5[2];
  v5[2] = v10;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((playbackSession = self->_playbackSession, !(playbackSession | v4[1])) || -[_MRPlaybackSessionProtobuf isEqual:](playbackSession, "isEqual:")) && ((request = self->_request, !(request | v4[3])) || -[_MRPlaybackSessionMigrateRequestProtobuf isEqual:](request, "isEqual:")))
  {
    playerPath = self->_playerPath;
    if (playerPath | v4[2])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  playbackSession = self->_playbackSession;
  v6 = v4[1];
  v11 = v4;
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

  v4 = v11;
LABEL_7:
  request = self->_request;
  v8 = v4[3];
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

  v4 = v11;
LABEL_13:
  playerPath = self->_playerPath;
  v10 = v4[2];
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

  v4 = v11;
LABEL_19:
}

@end