@interface _MRPlaybackSessionRequestProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation _MRPlaybackSessionRequestProtobuf

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRPlaybackSessionRequestProtobuf;
  v4 = [(_MRPlaybackSessionRequestProtobuf *)&v8 description];
  dictionaryRepresentation = [(_MRPlaybackSessionRequestProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  requestID = self->_requestID;
  if (requestID)
  {
    [dictionary setObject:requestID forKey:@"requestID"];
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
    dictionaryRepresentation = [(_MRNowPlayingPlayerPathProtobuf *)destinationPlayerPath dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"destinationPlayerPath"];
  }

  destinationCommandInfo = self->_destinationCommandInfo;
  if (destinationCommandInfo)
  {
    dictionaryRepresentation2 = [(_MRDictionaryProtobuf *)destinationCommandInfo dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation2 forKey:@"destinationCommandInfo"];
  }

  if (*&self->_has)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithBool:self->_isPreflight];
    [v4 setObject:v12 forKey:@"isPreflight"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_requestID)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_type)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_destinationPlayerPath)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_destinationCommandInfo)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    isPreflight = self->_isPreflight;
    PBDataWriterWriteBOOLField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_requestID)
  {
    [toCopy setRequestID:?];
    toCopy = v5;
  }

  if (self->_identifier)
  {
    [v5 setIdentifier:?];
    toCopy = v5;
  }

  if (self->_type)
  {
    [v5 setType:?];
    toCopy = v5;
  }

  if (self->_destinationPlayerPath)
  {
    [v5 setDestinationPlayerPath:?];
    toCopy = v5;
  }

  if (self->_destinationCommandInfo)
  {
    [v5 setDestinationCommandInfo:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    toCopy[48] = self->_isPreflight;
    toCopy[52] |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_requestID copyWithZone:zone];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  v8 = [(NSString *)self->_identifier copyWithZone:zone];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  v10 = [(NSString *)self->_type copyWithZone:zone];
  v11 = *(v5 + 40);
  *(v5 + 40) = v10;

  v12 = [(_MRNowPlayingPlayerPathProtobuf *)self->_destinationPlayerPath copyWithZone:zone];
  v13 = *(v5 + 16);
  *(v5 + 16) = v12;

  v14 = [(_MRDictionaryProtobuf *)self->_destinationCommandInfo copyWithZone:zone];
  v15 = *(v5 + 8);
  *(v5 + 8) = v14;

  if (*&self->_has)
  {
    *(v5 + 48) = self->_isPreflight;
    *(v5 + 52) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  requestID = self->_requestID;
  if (requestID | *(equalCopy + 4))
  {
    if (![(NSString *)requestID isEqual:?])
    {
      goto LABEL_14;
    }
  }

  identifier = self->_identifier;
  if (identifier | *(equalCopy + 3))
  {
    if (![(NSString *)identifier isEqual:?])
    {
      goto LABEL_14;
    }
  }

  type = self->_type;
  if (type | *(equalCopy + 5))
  {
    if (![(NSString *)type isEqual:?])
    {
      goto LABEL_14;
    }
  }

  destinationPlayerPath = self->_destinationPlayerPath;
  if (destinationPlayerPath | *(equalCopy + 2))
  {
    if (![(_MRNowPlayingPlayerPathProtobuf *)destinationPlayerPath isEqual:?])
    {
      goto LABEL_14;
    }
  }

  destinationCommandInfo = self->_destinationCommandInfo;
  if (destinationCommandInfo | *(equalCopy + 1))
  {
    if (![(_MRDictionaryProtobuf *)destinationCommandInfo isEqual:?])
    {
      goto LABEL_14;
    }
  }

  v10 = (*(equalCopy + 52) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 52) & 1) == 0)
    {
LABEL_14:
      v10 = 0;
      goto LABEL_15;
    }

    if (self->_isPreflight)
    {
      if ((*(equalCopy + 48) & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else if (*(equalCopy + 48))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v9 = fromCopy;
  if (*(fromCopy + 4))
  {
    [(_MRPlaybackSessionRequestProtobuf *)self setRequestID:?];
    fromCopy = v9;
  }

  if (*(fromCopy + 3))
  {
    [(_MRPlaybackSessionRequestProtobuf *)self setIdentifier:?];
    fromCopy = v9;
  }

  if (*(fromCopy + 5))
  {
    [(_MRPlaybackSessionRequestProtobuf *)self setType:?];
    fromCopy = v9;
  }

  destinationPlayerPath = self->_destinationPlayerPath;
  v6 = *(fromCopy + 2);
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

  fromCopy = v9;
LABEL_13:
  destinationCommandInfo = self->_destinationCommandInfo;
  v8 = *(fromCopy + 1);
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

  fromCopy = v9;
LABEL_19:
  if (fromCopy[52])
  {
    self->_isPreflight = fromCopy[48];
    *&self->_has |= 1u;
  }
}

@end