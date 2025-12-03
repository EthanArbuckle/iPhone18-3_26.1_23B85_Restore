@interface _MRPlaybackSessionResponseMessageProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation _MRPlaybackSessionResponseMessageProtobuf

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRPlaybackSessionResponseMessageProtobuf;
  v4 = [(_MRPlaybackSessionResponseMessageProtobuf *)&v8 description];
  dictionaryRepresentation = [(_MRPlaybackSessionResponseMessageProtobuf *)self dictionaryRepresentation];
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
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(_MRPlaybackSessionProtobuf *)self->_playbackSession copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(_MRPlaybackSessionMigrateRequestProtobuf *)self->_request copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((playbackSession = self->_playbackSession, !(playbackSession | equalCopy[1])) || -[_MRPlaybackSessionProtobuf isEqual:](playbackSession, "isEqual:")))
  {
    request = self->_request;
    if (request | equalCopy[2])
    {
      v7 = [(_MRPlaybackSessionMigrateRequestProtobuf *)request isEqual:?];
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
  playbackSession = self->_playbackSession;
  v6 = fromCopy[1];
  v9 = fromCopy;
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

    [(_MRPlaybackSessionResponseMessageProtobuf *)self setPlaybackSession:?];
  }

  fromCopy = v9;
LABEL_7:
  request = self->_request;
  v8 = fromCopy[2];
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

    [(_MRPlaybackSessionResponseMessageProtobuf *)self setRequest:?];
  }

  fromCopy = v9;
LABEL_13:
}

@end