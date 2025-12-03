@interface _MRMusicHandoffSessionProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation _MRMusicHandoffSessionProtobuf

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRMusicHandoffSessionProtobuf;
  v4 = [(_MRMusicHandoffSessionProtobuf *)&v8 description];
  dictionaryRepresentation = [(_MRMusicHandoffSessionProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  identifier = self->_identifier;
  if (identifier)
  {
    [dictionary setObject:identifier forKey:@"identifier"];
  }

  sourcePlayerPath = self->_sourcePlayerPath;
  if (sourcePlayerPath)
  {
    dictionaryRepresentation = [(_MRNowPlayingPlayerPathProtobuf *)sourcePlayerPath dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"sourcePlayerPath"];
  }

  destinationPlayerPath = self->_destinationPlayerPath;
  if (destinationPlayerPath)
  {
    dictionaryRepresentation2 = [(_MRNowPlayingPlayerPathProtobuf *)destinationPlayerPath dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation2 forKey:@"destinationPlayerPath"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_sourcePlayerPath)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_destinationPlayerPath)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_identifier)
  {
    [toCopy setIdentifier:?];
    toCopy = v5;
  }

  if (self->_sourcePlayerPath)
  {
    [v5 setSourcePlayerPath:?];
    toCopy = v5;
  }

  if (self->_destinationPlayerPath)
  {
    [v5 setDestinationPlayerPath:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_identifier copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(_MRNowPlayingPlayerPathProtobuf *)self->_sourcePlayerPath copyWithZone:zone];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(_MRNowPlayingPlayerPathProtobuf *)self->_destinationPlayerPath copyWithZone:zone];
  v11 = v5[1];
  v5[1] = v10;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((identifier = self->_identifier, !(identifier | equalCopy[2])) || -[NSString isEqual:](identifier, "isEqual:")) && ((sourcePlayerPath = self->_sourcePlayerPath, !(sourcePlayerPath | equalCopy[3])) || -[_MRNowPlayingPlayerPathProtobuf isEqual:](sourcePlayerPath, "isEqual:")))
  {
    destinationPlayerPath = self->_destinationPlayerPath;
    if (destinationPlayerPath | equalCopy[1])
    {
      v8 = [(_MRNowPlayingPlayerPathProtobuf *)destinationPlayerPath isEqual:?];
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
  v3 = [(NSString *)self->_identifier hash];
  v4 = [(_MRNowPlayingPlayerPathProtobuf *)self->_sourcePlayerPath hash]^ v3;
  return v4 ^ [(_MRNowPlayingPlayerPathProtobuf *)self->_destinationPlayerPath hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v9 = fromCopy;
  if (fromCopy[2])
  {
    [(_MRMusicHandoffSessionProtobuf *)self setIdentifier:?];
    fromCopy = v9;
  }

  sourcePlayerPath = self->_sourcePlayerPath;
  v6 = fromCopy[3];
  if (sourcePlayerPath)
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    [(_MRNowPlayingPlayerPathProtobuf *)sourcePlayerPath mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    [(_MRMusicHandoffSessionProtobuf *)self setSourcePlayerPath:?];
  }

  fromCopy = v9;
LABEL_9:
  destinationPlayerPath = self->_destinationPlayerPath;
  v8 = fromCopy[1];
  if (destinationPlayerPath)
  {
    if (!v8)
    {
      goto LABEL_15;
    }

    [(_MRNowPlayingPlayerPathProtobuf *)destinationPlayerPath mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_15;
    }

    [(_MRMusicHandoffSessionProtobuf *)self setDestinationPlayerPath:?];
  }

  fromCopy = v9;
LABEL_15:
}

@end