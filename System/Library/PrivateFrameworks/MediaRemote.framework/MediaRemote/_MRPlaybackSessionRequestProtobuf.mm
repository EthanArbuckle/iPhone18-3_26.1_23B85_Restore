@interface _MRPlaybackSessionRequestProtobuf
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _MRPlaybackSessionRequestProtobuf

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRPlaybackSessionRequestProtobuf;
  v4 = [(_MRPlaybackSessionRequestProtobuf *)&v8 description];
  v5 = [(_MRPlaybackSessionRequestProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  requestID = self->_requestID;
  if (requestID)
  {
    [v3 setObject:requestID forKey:@"requestID"];
  }

  identifier = self->_identifier;
  if (identifier)
  {
    [v4 setObject:identifier forKey:@"identifier"];
  }

  type = self->_type;
  if (type)
  {
    [v4 setObject:type forKey:@"type"];
  }

  destinationPlayerPath = self->_destinationPlayerPath;
  if (destinationPlayerPath)
  {
    v9 = [(_MRNowPlayingPlayerPathProtobuf *)destinationPlayerPath dictionaryRepresentation];
    [v4 setObject:v9 forKey:@"destinationPlayerPath"];
  }

  destinationCommandInfo = self->_destinationCommandInfo;
  if (destinationCommandInfo)
  {
    v11 = [(_MRDictionaryProtobuf *)destinationCommandInfo dictionaryRepresentation];
    [v4 setObject:v11 forKey:@"destinationCommandInfo"];
  }

  if (*&self->_has)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithBool:self->_isPreflight];
    [v4 setObject:v12 forKey:@"isPreflight"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_requestID)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_type)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_destinationPlayerPath)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_destinationCommandInfo)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (*&self->_has)
  {
    isPreflight = self->_isPreflight;
    PBDataWriterWriteBOOLField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_requestID)
  {
    [v4 setRequestID:?];
    v4 = v5;
  }

  if (self->_identifier)
  {
    [v5 setIdentifier:?];
    v4 = v5;
  }

  if (self->_type)
  {
    [v5 setType:?];
    v4 = v5;
  }

  if (self->_destinationPlayerPath)
  {
    [v5 setDestinationPlayerPath:?];
    v4 = v5;
  }

  if (self->_destinationCommandInfo)
  {
    [v5 setDestinationCommandInfo:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    v4[48] = self->_isPreflight;
    v4[52] |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_requestID copyWithZone:a3];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  v8 = [(NSString *)self->_identifier copyWithZone:a3];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  v10 = [(NSString *)self->_type copyWithZone:a3];
  v11 = *(v5 + 40);
  *(v5 + 40) = v10;

  v12 = [(_MRNowPlayingPlayerPathProtobuf *)self->_destinationPlayerPath copyWithZone:a3];
  v13 = *(v5 + 16);
  *(v5 + 16) = v12;

  v14 = [(_MRDictionaryProtobuf *)self->_destinationCommandInfo copyWithZone:a3];
  v15 = *(v5 + 8);
  *(v5 + 8) = v14;

  if (*&self->_has)
  {
    *(v5 + 48) = self->_isPreflight;
    *(v5 + 52) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  requestID = self->_requestID;
  if (requestID | *(v4 + 4))
  {
    if (![(NSString *)requestID isEqual:?])
    {
      goto LABEL_14;
    }
  }

  identifier = self->_identifier;
  if (identifier | *(v4 + 3))
  {
    if (![(NSString *)identifier isEqual:?])
    {
      goto LABEL_14;
    }
  }

  type = self->_type;
  if (type | *(v4 + 5))
  {
    if (![(NSString *)type isEqual:?])
    {
      goto LABEL_14;
    }
  }

  destinationPlayerPath = self->_destinationPlayerPath;
  if (destinationPlayerPath | *(v4 + 2))
  {
    if (![(_MRNowPlayingPlayerPathProtobuf *)destinationPlayerPath isEqual:?])
    {
      goto LABEL_14;
    }
  }

  destinationCommandInfo = self->_destinationCommandInfo;
  if (destinationCommandInfo | *(v4 + 1))
  {
    if (![(_MRDictionaryProtobuf *)destinationCommandInfo isEqual:?])
    {
      goto LABEL_14;
    }
  }

  v10 = (*(v4 + 52) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 52) & 1) == 0)
    {
LABEL_14:
      v10 = 0;
      goto LABEL_15;
    }

    if (self->_isPreflight)
    {
      if ((*(v4 + 48) & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else if (*(v4 + 48))
    {
      goto LABEL_14;
    }

    v10 = 1;
  }

LABEL_15:

  return v10;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_requestID hash];
  v4 = [(NSString *)self->_identifier hash];
  v5 = [(NSString *)self->_type hash];
  v6 = [(_MRNowPlayingPlayerPathProtobuf *)self->_destinationPlayerPath hash];
  v7 = [(_MRDictionaryProtobuf *)self->_destinationCommandInfo hash];
  if (*&self->_has)
  {
    v8 = 2654435761 * self->_isPreflight;
  }

  else
  {
    v8 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (*(v4 + 4))
  {
    [(_MRPlaybackSessionRequestProtobuf *)self setRequestID:?];
    v4 = v9;
  }

  if (*(v4 + 3))
  {
    [(_MRPlaybackSessionRequestProtobuf *)self setIdentifier:?];
    v4 = v9;
  }

  if (*(v4 + 5))
  {
    [(_MRPlaybackSessionRequestProtobuf *)self setType:?];
    v4 = v9;
  }

  destinationPlayerPath = self->_destinationPlayerPath;
  v6 = *(v4 + 2);
  if (destinationPlayerPath)
  {
    if (!v6)
    {
      goto LABEL_13;
    }

    [(_MRNowPlayingPlayerPathProtobuf *)destinationPlayerPath mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_13;
    }

    [(_MRPlaybackSessionRequestProtobuf *)self setDestinationPlayerPath:?];
  }

  v4 = v9;
LABEL_13:
  destinationCommandInfo = self->_destinationCommandInfo;
  v8 = *(v4 + 1);
  if (destinationCommandInfo)
  {
    if (!v8)
    {
      goto LABEL_19;
    }

    [(_MRDictionaryProtobuf *)destinationCommandInfo mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_19;
    }

    [(_MRPlaybackSessionRequestProtobuf *)self setDestinationCommandInfo:?];
  }

  v4 = v9;
LABEL_19:
  if (v4[52])
  {
    self->_isPreflight = v4[48];
    *&self->_has |= 1u;
  }
}

@end