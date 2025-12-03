@interface _MRDataArtworkProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation _MRDataArtworkProtobuf

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRDataArtworkProtobuf;
  v4 = [(_MRDataArtworkProtobuf *)&v8 description];
  dictionaryRepresentation = [(_MRDataArtworkProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  type = self->_type;
  if (type)
  {
    [dictionary setObject:type forKey:@"type"];
  }

  imageData = self->_imageData;
  if (imageData)
  {
    [v4 setObject:imageData forKey:@"imageData"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_type)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_imageData)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_type)
  {
    [toCopy setType:?];
    toCopy = v5;
  }

  if (self->_imageData)
  {
    [v5 setImageData:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_type copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSData *)self->_imageData copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((type = self->_type, !(type | equalCopy[2])) || -[NSString isEqual:](type, "isEqual:")))
  {
    imageData = self->_imageData;
    if (imageData | equalCopy[1])
    {
      v7 = [(NSData *)imageData isEqual:?];
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
    [(_MRDataArtworkProtobuf *)self setType:?];
    fromCopy = v5;
  }

  if (fromCopy[1])
  {
    [(_MRDataArtworkProtobuf *)self setImageData:?];
    fromCopy = v5;
  }
}

@end