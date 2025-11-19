@interface _MRPlaybackSessionMigrateEndMessageProtobuf
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _MRPlaybackSessionMigrateEndMessageProtobuf

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRPlaybackSessionMigrateEndMessageProtobuf;
  v4 = [(_MRPlaybackSessionMigrateEndMessageProtobuf *)&v8 description];
  v5 = [(_MRPlaybackSessionMigrateEndMessageProtobuf *)self dictionaryRepresentation];
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

  if (*&self->_has)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_errorCode];
    [v3 setObject:v8 forKey:@"errorCode"];
  }

  errorDescription = self->_errorDescription;
  if (errorDescription)
  {
    [v3 setObject:errorDescription forKey:@"errorDescription"];
  }

  error = self->_error;
  if (error)
  {
    v11 = [(_MRErrorProtobuf *)error dictionaryRepresentation];
    [v3 setObject:v11 forKey:@"error"];
  }

  setPlaybackSessionCommandStatus = self->_setPlaybackSessionCommandStatus;
  if (setPlaybackSessionCommandStatus)
  {
    v13 = [(_MRSendCommandResultStatusProtobuf *)setPlaybackSessionCommandStatus dictionaryRepresentation];
    [v3 setObject:v13 forKey:@"setPlaybackSessionCommandStatus"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_request)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_playerPath)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (*&self->_has)
  {
    errorCode = self->_errorCode;
    PBDataWriterWriteInt64Field();
    v4 = v6;
  }

  if (self->_errorDescription)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_error)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_setPlaybackSessionCommandStatus)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
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

  if (*&self->_has)
  {
    *(v4 + 1) = self->_errorCode;
    *(v4 + 56) |= 1u;
  }

  if (self->_errorDescription)
  {
    [v5 setErrorDescription:?];
    v4 = v5;
  }

  if (self->_error)
  {
    [v5 setError:?];
    v4 = v5;
  }

  if (self->_setPlaybackSessionCommandStatus)
  {
    [v5 setSetPlaybackSessionCommandStatus:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(_MRPlaybackSessionRequestProtobuf *)self->_request copyWithZone:a3];
  v7 = *(v5 + 40);
  *(v5 + 40) = v6;

  v8 = [(_MRNowPlayingPlayerPathProtobuf *)self->_playerPath copyWithZone:a3];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_errorCode;
    *(v5 + 56) |= 1u;
  }

  v10 = [(NSString *)self->_errorDescription copyWithZone:a3];
  v11 = *(v5 + 24);
  *(v5 + 24) = v10;

  v12 = [(_MRErrorProtobuf *)self->_error copyWithZone:a3];
  v13 = *(v5 + 16);
  *(v5 + 16) = v12;

  v14 = [(_MRSendCommandResultStatusProtobuf *)self->_setPlaybackSessionCommandStatus copyWithZone:a3];
  v15 = *(v5 + 48);
  *(v5 + 48) = v14;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  request = self->_request;
  if (request | *(v4 + 5))
  {
    if (![(_MRPlaybackSessionRequestProtobuf *)request isEqual:?])
    {
      goto LABEL_17;
    }
  }

  playerPath = self->_playerPath;
  if (playerPath | *(v4 + 4))
  {
    if (![(_MRNowPlayingPlayerPathProtobuf *)playerPath isEqual:?])
    {
      goto LABEL_17;
    }
  }

  v7 = *(v4 + 56);
  if (*&self->_has)
  {
    if ((*(v4 + 56) & 1) == 0 || self->_errorCode != *(v4 + 1))
    {
      goto LABEL_17;
    }
  }

  else if (*(v4 + 56))
  {
LABEL_17:
    v11 = 0;
    goto LABEL_18;
  }

  errorDescription = self->_errorDescription;
  if (errorDescription | *(v4 + 3) && ![(NSString *)errorDescription isEqual:?])
  {
    goto LABEL_17;
  }

  error = self->_error;
  if (error | *(v4 + 2))
  {
    if (![(_MRErrorProtobuf *)error isEqual:?])
    {
      goto LABEL_17;
    }
  }

  setPlaybackSessionCommandStatus = self->_setPlaybackSessionCommandStatus;
  if (setPlaybackSessionCommandStatus | *(v4 + 6))
  {
    v11 = [(_MRSendCommandResultStatusProtobuf *)setPlaybackSessionCommandStatus isEqual:?];
  }

  else
  {
    v11 = 1;
  }

LABEL_18:

  return v11;
}

- (unint64_t)hash
{
  v3 = [(_MRPlaybackSessionRequestProtobuf *)self->_request hash];
  v4 = [(_MRNowPlayingPlayerPathProtobuf *)self->_playerPath hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_errorCode;
  }

  else
  {
    v5 = 0;
  }

  v6 = v4 ^ v3 ^ v5 ^ [(NSString *)self->_errorDescription hash];
  v7 = [(_MRErrorProtobuf *)self->_error hash];
  return v6 ^ v7 ^ [(_MRSendCommandResultStatusProtobuf *)self->_setPlaybackSessionCommandStatus hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  request = self->_request;
  v6 = v4[5];
  v13 = v4;
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

    [(_MRPlaybackSessionMigrateEndMessageProtobuf *)self setRequest:?];
  }

  v4 = v13;
LABEL_7:
  playerPath = self->_playerPath;
  v8 = v4[4];
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

    [(_MRPlaybackSessionMigrateEndMessageProtobuf *)self setPlayerPath:?];
  }

  v4 = v13;
LABEL_13:
  if (v4[7])
  {
    self->_errorCode = v4[1];
    *&self->_has |= 1u;
  }

  if (v4[3])
  {
    [(_MRPlaybackSessionMigrateEndMessageProtobuf *)self setErrorDescription:?];
    v4 = v13;
  }

  error = self->_error;
  v10 = v4[2];
  if (error)
  {
    if (!v10)
    {
      goto LABEL_23;
    }

    [(_MRErrorProtobuf *)error mergeFrom:?];
  }

  else
  {
    if (!v10)
    {
      goto LABEL_23;
    }

    [(_MRPlaybackSessionMigrateEndMessageProtobuf *)self setError:?];
  }

  v4 = v13;
LABEL_23:
  setPlaybackSessionCommandStatus = self->_setPlaybackSessionCommandStatus;
  v12 = v4[6];
  if (setPlaybackSessionCommandStatus)
  {
    if (!v12)
    {
      goto LABEL_29;
    }

    [(_MRSendCommandResultStatusProtobuf *)setPlaybackSessionCommandStatus mergeFrom:?];
  }

  else
  {
    if (!v12)
    {
      goto LABEL_29;
    }

    [(_MRPlaybackSessionMigrateEndMessageProtobuf *)self setSetPlaybackSessionCommandStatus:?];
  }

  v4 = v13;
LABEL_29:
}

@end