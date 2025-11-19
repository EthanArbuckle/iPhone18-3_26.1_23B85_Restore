@interface _MRSystemPlaybackCustomDataQueueProtobuf
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _MRSystemPlaybackCustomDataQueueProtobuf

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRSystemPlaybackCustomDataQueueProtobuf;
  v4 = [(_MRSystemPlaybackCustomDataQueueProtobuf *)&v8 description];
  v5 = [(_MRSystemPlaybackCustomDataQueueProtobuf *)self dictionaryRepresentation];
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

  data = self->_data;
  if (data)
  {
    [v4 setObject:data forKey:@"data"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (!self->_identifier)
  {
    [_MRSystemPlaybackCustomDataQueueProtobuf writeTo:];
  }

  v5 = v4;
  PBDataWriterWriteStringField();
  if (!self->_data)
  {
    [_MRSystemPlaybackCustomDataQueueProtobuf writeTo:];
  }

  PBDataWriterWriteDataField();
}

- (void)copyTo:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 setIdentifier:identifier];
  [v5 setData:self->_data];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_identifier copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSData *)self->_data copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((identifier = self->_identifier, !(identifier | v4[2])) || -[NSString isEqual:](identifier, "isEqual:")))
  {
    data = self->_data;
    if (data | v4[1])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[2])
  {
    [(_MRSystemPlaybackCustomDataQueueProtobuf *)self setIdentifier:?];
    v4 = v5;
  }

  if (v4[1])
  {
    [(_MRSystemPlaybackCustomDataQueueProtobuf *)self setData:?];
    v4 = v5;
  }
}

@end