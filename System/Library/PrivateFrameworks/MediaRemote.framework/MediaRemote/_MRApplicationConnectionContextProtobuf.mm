@interface _MRApplicationConnectionContextProtobuf
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _MRApplicationConnectionContextProtobuf

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRApplicationConnectionContextProtobuf;
  v4 = [(_MRApplicationConnectionContextProtobuf *)&v8 description];
  v5 = [(_MRApplicationConnectionContextProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  identifier = self->_identifier;
  if (identifier)
  {
    [v3 setObject:identifier forKey:@"identifier"];
  }

  serviceName = self->_serviceName;
  if (serviceName)
  {
    [v4 setObject:serviceName forKey:@"serviceName"];
  }

  destinationPlayerPath = self->_destinationPlayerPath;
  if (destinationPlayerPath)
  {
    v8 = [(_MRNowPlayingPlayerPathProtobuf *)destinationPlayerPath dictionaryRepresentation];
    [v4 setObject:v8 forKey:@"destinationPlayerPath"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_serviceName)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_destinationPlayerPath)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_identifier)
  {
    [v4 setIdentifier:?];
    v4 = v5;
  }

  if (self->_serviceName)
  {
    [v5 setServiceName:?];
    v4 = v5;
  }

  if (self->_destinationPlayerPath)
  {
    [v5 setDestinationPlayerPath:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_identifier copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_serviceName copyWithZone:a3];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(_MRNowPlayingPlayerPathProtobuf *)self->_destinationPlayerPath copyWithZone:a3];
  v11 = v5[1];
  v5[1] = v10;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((identifier = self->_identifier, !(identifier | v4[2])) || -[NSString isEqual:](identifier, "isEqual:")) && ((serviceName = self->_serviceName, !(serviceName | v4[3])) || -[NSString isEqual:](serviceName, "isEqual:")))
  {
    destinationPlayerPath = self->_destinationPlayerPath;
    if (destinationPlayerPath | v4[1])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (v4[2])
  {
    [(_MRApplicationConnectionContextProtobuf *)self setIdentifier:?];
    v4 = v7;
  }

  if (v4[3])
  {
    [(_MRApplicationConnectionContextProtobuf *)self setServiceName:?];
    v4 = v7;
  }

  destinationPlayerPath = self->_destinationPlayerPath;
  v6 = v4[1];
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

  v4 = v7;
LABEL_11:
}

@end