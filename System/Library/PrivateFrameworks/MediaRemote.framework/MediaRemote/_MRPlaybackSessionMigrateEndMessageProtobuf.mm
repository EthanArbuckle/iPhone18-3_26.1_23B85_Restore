@interface _MRPlaybackSessionMigrateEndMessageProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation _MRPlaybackSessionMigrateEndMessageProtobuf

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRPlaybackSessionMigrateEndMessageProtobuf;
  v4 = [(_MRPlaybackSessionMigrateEndMessageProtobuf *)&v8 description];
  dictionaryRepresentation = [(_MRPlaybackSessionMigrateEndMessageProtobuf *)self dictionaryRepresentation];
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

  if (*&self->_has)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_errorCode];
    [dictionary setObject:v8 forKey:@"errorCode"];
  }

  errorDescription = self->_errorDescription;
  if (errorDescription)
  {
    [dictionary setObject:errorDescription forKey:@"errorDescription"];
  }

  error = self->_error;
  if (error)
  {
    dictionaryRepresentation3 = [(_MRErrorProtobuf *)error dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"error"];
  }

  setPlaybackSessionCommandStatus = self->_setPlaybackSessionCommandStatus;
  if (setPlaybackSessionCommandStatus)
  {
    dictionaryRepresentation4 = [(_MRSendCommandResultStatusProtobuf *)setPlaybackSessionCommandStatus dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation4 forKey:@"setPlaybackSessionCommandStatus"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_request)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_playerPath)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    errorCode = self->_errorCode;
    PBDataWriterWriteInt64Field();
    toCopy = v6;
  }

  if (self->_errorDescription)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_error)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_setPlaybackSessionCommandStatus)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
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

  if (*&self->_has)
  {
    *(toCopy + 1) = self->_errorCode;
    *(toCopy + 56) |= 1u;
  }

  if (self->_errorDescription)
  {
    [v5 setErrorDescription:?];
    toCopy = v5;
  }

  if (self->_error)
  {
    [v5 setError:?];
    toCopy = v5;
  }

  if (self->_setPlaybackSessionCommandStatus)
  {
    [v5 setSetPlaybackSessionCommandStatus:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(_MRPlaybackSessionRequestProtobuf *)self->_request copyWithZone:zone];
  v7 = *(v5 + 40);
  *(v5 + 40) = v6;

  v8 = [(_MRNowPlayingPlayerPathProtobuf *)self->_playerPath copyWithZone:zone];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_errorCode;
    *(v5 + 56) |= 1u;
  }

  v10 = [(NSString *)self->_errorDescription copyWithZone:zone];
  v11 = *(v5 + 24);
  *(v5 + 24) = v10;

  v12 = [(_MRErrorProtobuf *)self->_error copyWithZone:zone];
  v13 = *(v5 + 16);
  *(v5 + 16) = v12;

  v14 = [(_MRSendCommandResultStatusProtobuf *)self->_setPlaybackSessionCommandStatus copyWithZone:zone];
  v15 = *(v5 + 48);
  *(v5 + 48) = v14;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  request = self->_request;
  if (request | *(equalCopy + 5))
  {
    if (![(_MRPlaybackSessionRequestProtobuf *)request isEqual:?])
    {
      goto LABEL_17;
    }
  }

  playerPath = self->_playerPath;
  if (playerPath | *(equalCopy + 4))
  {
    if (![(_MRNowPlayingPlayerPathProtobuf *)playerPath isEqual:?])
    {
      goto LABEL_17;
    }
  }

  v7 = *(equalCopy + 56);
  if (*&self->_has)
  {
    if ((*(equalCopy + 56) & 1) == 0 || self->_errorCode != *(equalCopy + 1))
    {
      goto LABEL_17;
    }
  }

  else if (*(equalCopy + 56))
  {
LABEL_17:
    v11 = 0;
    goto LABEL_18;
  }

  errorDescription = self->_errorDescription;
  if (errorDescription | *(equalCopy + 3) && ![(NSString *)errorDescription isEqual:?])
  {
    goto LABEL_17;
  }

  error = self->_error;
  if (error | *(equalCopy + 2))
  {
    if (![(_MRErrorProtobuf *)error isEqual:?])
    {
      goto LABEL_17;
    }
  }

  setPlaybackSessionCommandStatus = self->_setPlaybackSessionCommandStatus;
  if (setPlaybackSessionCommandStatus | *(equalCopy + 6))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  request = self->_request;
  v6 = fromCopy[5];
  v13 = fromCopy;
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

  fromCopy = v13;
LABEL_7:
  playerPath = self->_playerPath;
  v8 = fromCopy[4];
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

  fromCopy = v13;
LABEL_13:
  if (fromCopy[7])
  {
    self->_errorCode = fromCopy[1];
    *&self->_has |= 1u;
  }

  if (fromCopy[3])
  {
    [(_MRPlaybackSessionMigrateEndMessageProtobuf *)self setErrorDescription:?];
    fromCopy = v13;
  }

  error = self->_error;
  v10 = fromCopy[2];
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

  fromCopy = v13;
LABEL_23:
  setPlaybackSessionCommandStatus = self->_setPlaybackSessionCommandStatus;
  v12 = fromCopy[6];
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

  fromCopy = v13;
LABEL_29:
}

@end