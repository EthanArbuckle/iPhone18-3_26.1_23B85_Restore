@interface _MRPlaybackSessionMigratePostMessageProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation _MRPlaybackSessionMigratePostMessageProtobuf

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRPlaybackSessionMigratePostMessageProtobuf;
  v4 = [(_MRPlaybackSessionMigratePostMessageProtobuf *)&v8 description];
  dictionaryRepresentation = [(_MRPlaybackSessionMigratePostMessageProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  request = self->_request;
  if (request)
  {
    dictionaryRepresentation = [(_MRPlaybackSessionMigrateRequestProtobuf *)request dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"request"];
  }

  playerPath = self->_playerPath;
  if (playerPath)
  {
    dictionaryRepresentation2 = [(_MRNowPlayingPlayerPathProtobuf *)playerPath dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"playerPath"];
  }

  setPlaybackSessionCommandID = self->_setPlaybackSessionCommandID;
  if (setPlaybackSessionCommandID)
  {
    [dictionary setObject:setPlaybackSessionCommandID forKey:@"setPlaybackSessionCommandID"];
  }

  metrics = self->_metrics;
  if (metrics)
  {
    dictionaryRepresentation3 = [(_MRDictionaryProtobuf *)metrics dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"metrics"];
  }

  error = self->_error;
  if (error)
  {
    dictionaryRepresentation4 = [(_MRErrorProtobuf *)error dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation4 forKey:@"error"];
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

  if (self->_setPlaybackSessionCommandID)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_metrics)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_error)
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

  if (self->_setPlaybackSessionCommandID)
  {
    [v5 setSetPlaybackSessionCommandID:?];
    toCopy = v5;
  }

  if (self->_metrics)
  {
    [v5 setMetrics:?];
    toCopy = v5;
  }

  if (self->_error)
  {
    [v5 setError:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(_MRPlaybackSessionMigrateRequestProtobuf *)self->_request copyWithZone:zone];
  v7 = v5[4];
  v5[4] = v6;

  v8 = [(_MRNowPlayingPlayerPathProtobuf *)self->_playerPath copyWithZone:zone];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSString *)self->_setPlaybackSessionCommandID copyWithZone:zone];
  v11 = v5[5];
  v5[5] = v10;

  v12 = [(_MRDictionaryProtobuf *)self->_metrics copyWithZone:zone];
  v13 = v5[2];
  v5[2] = v12;

  v14 = [(_MRErrorProtobuf *)self->_error copyWithZone:zone];
  v15 = v5[1];
  v5[1] = v14;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((request = self->_request, !(request | equalCopy[4])) || -[_MRPlaybackSessionMigrateRequestProtobuf isEqual:](request, "isEqual:")) && ((playerPath = self->_playerPath, !(playerPath | equalCopy[3])) || -[_MRNowPlayingPlayerPathProtobuf isEqual:](playerPath, "isEqual:")) && ((setPlaybackSessionCommandID = self->_setPlaybackSessionCommandID, !(setPlaybackSessionCommandID | equalCopy[5])) || -[NSString isEqual:](setPlaybackSessionCommandID, "isEqual:")) && ((metrics = self->_metrics, !(metrics | equalCopy[2])) || -[_MRDictionaryProtobuf isEqual:](metrics, "isEqual:")))
  {
    error = self->_error;
    if (error | equalCopy[1])
    {
      v10 = [(_MRErrorProtobuf *)error isEqual:?];
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = [(_MRPlaybackSessionMigrateRequestProtobuf *)self->_request hash];
  v4 = [(_MRNowPlayingPlayerPathProtobuf *)self->_playerPath hash]^ v3;
  v5 = [(NSString *)self->_setPlaybackSessionCommandID hash];
  v6 = v4 ^ v5 ^ [(_MRDictionaryProtobuf *)self->_metrics hash];
  return v6 ^ [(_MRErrorProtobuf *)self->_error hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  request = self->_request;
  v13 = fromCopy;
  v6 = fromCopy[4];
  if (request)
  {
    if (v6)
    {
      [(_MRPlaybackSessionMigrateRequestProtobuf *)request mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(_MRPlaybackSessionMigratePostMessageProtobuf *)self setRequest:?];
  }

  playerPath = self->_playerPath;
  v8 = v13[3];
  if (playerPath)
  {
    if (v8)
    {
      [(_MRNowPlayingPlayerPathProtobuf *)playerPath mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(_MRPlaybackSessionMigratePostMessageProtobuf *)self setPlayerPath:?];
  }

  if (v13[5])
  {
    [(_MRPlaybackSessionMigratePostMessageProtobuf *)self setSetPlaybackSessionCommandID:?];
  }

  metrics = self->_metrics;
  v10 = v13[2];
  if (metrics)
  {
    if (v10)
    {
      [(_MRDictionaryProtobuf *)metrics mergeFrom:?];
    }
  }

  else if (v10)
  {
    [(_MRPlaybackSessionMigratePostMessageProtobuf *)self setMetrics:?];
  }

  error = self->_error;
  v12 = v13[1];
  if (error)
  {
    if (v12)
    {
      [(_MRErrorProtobuf *)error mergeFrom:?];
    }
  }

  else if (v12)
  {
    [(_MRPlaybackSessionMigratePostMessageProtobuf *)self setError:?];
  }
}

@end