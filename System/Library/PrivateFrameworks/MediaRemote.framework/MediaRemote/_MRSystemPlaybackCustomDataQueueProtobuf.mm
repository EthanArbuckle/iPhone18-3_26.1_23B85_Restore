@interface _MRSystemPlaybackCustomDataQueueProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation _MRSystemPlaybackCustomDataQueueProtobuf

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRSystemPlaybackCustomDataQueueProtobuf;
  v4 = [(_MRSystemPlaybackCustomDataQueueProtobuf *)&v8 description];
  dictionaryRepresentation = [(_MRSystemPlaybackCustomDataQueueProtobuf *)self dictionaryRepresentation];
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

  data = self->_data;
  if (data)
  {
    [v4 setObject:data forKey:@"data"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_identifier)
  {
    [_MRSystemPlaybackCustomDataQueueProtobuf writeTo:];
  }

  v5 = toCopy;
  PBDataWriterWriteStringField();
  if (!self->_data)
  {
    [_MRSystemPlaybackCustomDataQueueProtobuf writeTo:];
  }

  PBDataWriterWriteDataField();
}

- (void)copyTo:(id)to
{
  identifier = self->_identifier;
  toCopy = to;
  [toCopy setIdentifier:identifier];
  [toCopy setData:self->_data];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_identifier copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSData *)self->_data copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((identifier = self->_identifier, !(identifier | equalCopy[2])) || -[NSString isEqual:](identifier, "isEqual:")))
  {
    data = self->_data;
    if (data | equalCopy[1])
    {
      v7 = [(NSData *)data isEqual:?];
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
  v5 = fromCopy;
  if (fromCopy[2])
  {
    [(_MRSystemPlaybackCustomDataQueueProtobuf *)self setIdentifier:?];
    fromCopy = v5;
  }

  if (fromCopy[1])
  {
    [(_MRSystemPlaybackCustomDataQueueProtobuf *)self setData:?];
    fromCopy = v5;
  }
}

@end