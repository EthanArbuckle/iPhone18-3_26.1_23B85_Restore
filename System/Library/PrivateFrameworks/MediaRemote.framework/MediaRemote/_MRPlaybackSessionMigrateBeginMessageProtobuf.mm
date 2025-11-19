@interface _MRPlaybackSessionMigrateBeginMessageProtobuf
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _MRPlaybackSessionMigrateBeginMessageProtobuf

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRPlaybackSessionMigrateBeginMessageProtobuf;
  v4 = [(_MRPlaybackSessionMigrateBeginMessageProtobuf *)&v8 description];
  v5 = [(_MRPlaybackSessionMigrateBeginMessageProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  request = self->_request;
  if (request)
  {
    v5 = [(_MRPlaybackSessionRequestProtobuf *)request dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"request"];
  }

  playerPath = self->_playerPath;
  if (playerPath)
  {
    v7 = [(_MRNowPlayingPlayerPathProtobuf *)playerPath dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"playerPath"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
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
  if (self->_request)
  {
    [v4 setRequest:?];
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
  v6 = [(_MRPlaybackSessionRequestProtobuf *)self->_request copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(_MRNowPlayingPlayerPathProtobuf *)self->_playerPath copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((request = self->_request, !(request | v4[2])) || -[_MRPlaybackSessionRequestProtobuf isEqual:](request, "isEqual:")))
  {
    playerPath = self->_playerPath;
    if (playerPath | v4[1])
    {
      v7 = [(_MRNowPlayingPlayerPathProtobuf *)playerPath isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  request = self->_request;
  v6 = v4[2];
  v9 = v4;
  if (request)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(_MRPlaybackSessionRequestProtobuf *)request mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(_MRPlaybackSessionMigrateBeginMessageProtobuf *)self setRequest:?];
  }

  v4 = v9;
LABEL_7:
  playerPath = self->_playerPath;
  v8 = v4[1];
  if (playerPath)
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    [(_MRNowPlayingPlayerPathProtobuf *)playerPath mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    [(_MRPlaybackSessionMigrateBeginMessageProtobuf *)self setPlayerPath:?];
  }

  v4 = v9;
LABEL_13:
}

@end