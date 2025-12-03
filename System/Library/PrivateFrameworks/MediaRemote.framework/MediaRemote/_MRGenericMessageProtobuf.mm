@interface _MRGenericMessageProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation _MRGenericMessageProtobuf

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRGenericMessageProtobuf;
  v4 = [(_MRGenericMessageProtobuf *)&v8 description];
  dictionaryRepresentation = [(_MRGenericMessageProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  key = self->_key;
  if (key)
  {
    [dictionary setObject:key forKey:@"key"];
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
  v5 = toCopy;
  if (self->_key)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_data)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_key)
  {
    [toCopy setKey:?];
    toCopy = v5;
  }

  if (self->_data)
  {
    [v5 setData:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_key copyWithZone:zone];
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
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((key = self->_key, !(key | equalCopy[2])) || -[NSString isEqual:](key, "isEqual:")))
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
    [(_MRGenericMessageProtobuf *)self setKey:?];
    fromCopy = v5;
  }

  if (fromCopy[1])
  {
    [(_MRGenericMessageProtobuf *)self setData:?];
    fromCopy = v5;
  }
}

@end