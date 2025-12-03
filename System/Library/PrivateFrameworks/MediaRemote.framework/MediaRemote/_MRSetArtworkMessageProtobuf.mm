@interface _MRSetArtworkMessageProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation _MRSetArtworkMessageProtobuf

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRSetArtworkMessageProtobuf;
  v4 = [(_MRSetArtworkMessageProtobuf *)&v8 description];
  dictionaryRepresentation = [(_MRSetArtworkMessageProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  jpegData = self->_jpegData;
  if (jpegData)
  {
    [dictionary setObject:jpegData forKey:@"jpegData"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  if (self->_jpegData)
  {
    PBDataWriterWriteDataField();
  }
}

- (void)copyTo:(id)to
{
  jpegData = self->_jpegData;
  if (jpegData)
  {
    [to setJpegData:jpegData];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_jpegData copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    jpegData = self->_jpegData;
    if (jpegData | equalCopy[1])
    {
      v6 = [(NSData *)jpegData isEqual:?];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)mergeFrom:(id)from
{
  if (*(from + 1))
  {
    [(_MRSetArtworkMessageProtobuf *)self setJpegData:?];
  }
}

@end