@interface _MRPlaybackSessionMigrateBeginMessageProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation _MRPlaybackSessionMigrateBeginMessageProtobuf

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRPlaybackSessionMigrateBeginMessageProtobuf;
  v4 = [(_MRPlaybackSessionMigrateBeginMessageProtobuf *)&v8 description];
  dictionaryRepresentation = [(_MRPlaybackSessionMigrateBeginMessageProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  request = self->_request;
  if (request)
  {
    dictionaryRepresentation = [(_MRPlaybackSessionRequestProtobuf *)request dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"request"];
  }

  playerPath = self->_playerPath;
  if (playerPath)
  {
    dictionaryRepresentation2 = [(_MRNowPlayingPlayerPathProtobuf *)playerPath dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"playerPath"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
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
  if (self->_request)
  {
    [toCopy setRequest:?];
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
  v6 = [(_MRPlaybackSessionRequestProtobuf *)self->_request copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(_MRNowPlayingPlayerPathProtobuf *)self->_playerPath copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((request = self->_request, !(request | equalCopy[2])) || -[_MRPlaybackSessionRequestProtobuf isEqual:](request, "isEqual:")))
  {
    playerPath = self->_playerPath;
    if (playerPath | equalCopy[1])
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  request = self->_request;
  v6 = fromCopy[2];
  v9 = fromCopy;
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

  fromCopy = v9;
LABEL_7:
  playerPath = self->_playerPath;
  v8 = fromCopy[1];
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

  fromCopy = v9;
LABEL_13:
}

@end