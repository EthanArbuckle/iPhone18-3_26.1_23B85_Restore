@interface _MRPlaybackSessionMigratePostMessageProtobuf
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _MRPlaybackSessionMigratePostMessageProtobuf

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRPlaybackSessionMigratePostMessageProtobuf;
  v4 = [(_MRPlaybackSessionMigratePostMessageProtobuf *)&v8 description];
  v5 = [(_MRPlaybackSessionMigratePostMessageProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  request = self->_request;
  if (request)
  {
    v5 = [(_MRPlaybackSessionMigrateRequestProtobuf *)request dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"request"];
  }

  playerPath = self->_playerPath;
  if (playerPath)
  {
    v7 = [(_MRNowPlayingPlayerPathProtobuf *)playerPath dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"playerPath"];
  }

  setPlaybackSessionCommandID = self->_setPlaybackSessionCommandID;
  if (setPlaybackSessionCommandID)
  {
    [v3 setObject:setPlaybackSessionCommandID forKey:@"setPlaybackSessionCommandID"];
  }

  metrics = self->_metrics;
  if (metrics)
  {
    v10 = [(_MRDictionaryProtobuf *)metrics dictionaryRepresentation];
    [v3 setObject:v10 forKey:@"metrics"];
  }

  error = self->_error;
  if (error)
  {
    v12 = [(_MRErrorProtobuf *)error dictionaryRepresentation];
    [v3 setObject:v12 forKey:@"error"];
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

  if (self->_setPlaybackSessionCommandID)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_metrics)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_error)
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

  if (self->_setPlaybackSessionCommandID)
  {
    [v5 setSetPlaybackSessionCommandID:?];
    v4 = v5;
  }

  if (self->_metrics)
  {
    [v5 setMetrics:?];
    v4 = v5;
  }

  if (self->_error)
  {
    [v5 setError:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(_MRPlaybackSessionMigrateRequestProtobuf *)self->_request copyWithZone:a3];
  v7 = v5[4];
  v5[4] = v6;

  v8 = [(_MRNowPlayingPlayerPathProtobuf *)self->_playerPath copyWithZone:a3];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSString *)self->_setPlaybackSessionCommandID copyWithZone:a3];
  v11 = v5[5];
  v5[5] = v10;

  v12 = [(_MRDictionaryProtobuf *)self->_metrics copyWithZone:a3];
  v13 = v5[2];
  v5[2] = v12;

  v14 = [(_MRErrorProtobuf *)self->_error copyWithZone:a3];
  v15 = v5[1];
  v5[1] = v14;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((request = self->_request, !(request | v4[4])) || -[_MRPlaybackSessionMigrateRequestProtobuf isEqual:](request, "isEqual:")) && ((playerPath = self->_playerPath, !(playerPath | v4[3])) || -[_MRNowPlayingPlayerPathProtobuf isEqual:](playerPath, "isEqual:")) && ((setPlaybackSessionCommandID = self->_setPlaybackSessionCommandID, !(setPlaybackSessionCommandID | v4[5])) || -[NSString isEqual:](setPlaybackSessionCommandID, "isEqual:")) && ((metrics = self->_metrics, !(metrics | v4[2])) || -[_MRDictionaryProtobuf isEqual:](metrics, "isEqual:")))
  {
    error = self->_error;
    if (error | v4[1])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  request = self->_request;
  v13 = v4;
  v6 = v4[4];
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