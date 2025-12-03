@interface _MRAnimatedArtworkProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation _MRAnimatedArtworkProtobuf

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRAnimatedArtworkProtobuf;
  v4 = [(_MRAnimatedArtworkProtobuf *)&v8 description];
  dictionaryRepresentation = [(_MRAnimatedArtworkProtobuf *)self dictionaryRepresentation];
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

  assetFileURLData = self->_assetFileURLData;
  if (assetFileURLData)
  {
    [v4 setObject:assetFileURLData forKey:@"assetFileURLData"];
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

  if (self->_assetFileURLData)
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

  if (self->_assetFileURLData)
  {
    [v5 setAssetFileURLData:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_type copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSData *)self->_assetFileURLData copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((type = self->_type, !(type | equalCopy[2])) || -[NSString isEqual:](type, "isEqual:")))
  {
    assetFileURLData = self->_assetFileURLData;
    if (assetFileURLData | equalCopy[1])
    {
      v7 = [(NSData *)assetFileURLData isEqual:?];
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
    [(_MRAnimatedArtworkProtobuf *)self setType:?];
    fromCopy = v5;
  }

  if (fromCopy[1])
  {
    [(_MRAnimatedArtworkProtobuf *)self setAssetFileURLData:?];
    fromCopy = v5;
  }
}

@end