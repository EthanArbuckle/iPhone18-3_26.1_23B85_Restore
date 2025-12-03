@interface _MRApplicationConnectionContextProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation _MRApplicationConnectionContextProtobuf

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRApplicationConnectionContextProtobuf;
  v4 = [(_MRApplicationConnectionContextProtobuf *)&v8 description];
  dictionaryRepresentation = [(_MRApplicationConnectionContextProtobuf *)self dictionaryRepresentation];
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

  serviceName = self->_serviceName;
  if (serviceName)
  {
    [v4 setObject:serviceName forKey:@"serviceName"];
  }

  destinationPlayerPath = self->_destinationPlayerPath;
  if (destinationPlayerPath)
  {
    dictionaryRepresentation = [(_MRNowPlayingPlayerPathProtobuf *)destinationPlayerPath dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"destinationPlayerPath"];
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

  if (self->_serviceName)
  {
    PBDataWriterWriteStringField();
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

  if (self->_serviceName)
  {
    [v5 setServiceName:?];
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

  v8 = [(NSString *)self->_serviceName copyWithZone:zone];
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
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((identifier = self->_identifier, !(identifier | equalCopy[2])) || -[NSString isEqual:](identifier, "isEqual:")) && ((serviceName = self->_serviceName, !(serviceName | equalCopy[3])) || -[NSString isEqual:](serviceName, "isEqual:")))
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
  v4 = [(NSString *)self->_serviceName hash]^ v3;
  return v4 ^ [(_MRNowPlayingPlayerPathProtobuf *)self->_destinationPlayerPath hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v7 = fromCopy;
  if (fromCopy[2])
  {
    [(_MRApplicationConnectionContextProtobuf *)self setIdentifier:?];
    fromCopy = v7;
  }

  if (fromCopy[3])
  {
    [(_MRApplicationConnectionContextProtobuf *)self setServiceName:?];
    fromCopy = v7;
  }

  destinationPlayerPath = self->_destinationPlayerPath;
  v6 = fromCopy[1];
  if (destinationPlayerPath)
  {
    if (!v6)
    {
      goto LABEL_11;
    }

    [(_MRNowPlayingPlayerPathProtobuf *)destinationPlayerPath mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_11;
    }

    [(_MRApplicationConnectionContextProtobuf *)self setDestinationPlayerPath:?];
  }

  fromCopy = v7;
LABEL_11:
}

@end