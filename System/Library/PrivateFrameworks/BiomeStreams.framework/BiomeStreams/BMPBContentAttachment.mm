@interface BMPBContentAttachment
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation BMPBContentAttachment

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = BMPBContentAttachment;
  v4 = [(BMPBContentAttachment *)&v8 description];
  dictionaryRepresentation = [(BMPBContentAttachment *)self dictionaryRepresentation];
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

  filename = self->_filename;
  if (filename)
  {
    [v4 setObject:filename forKey:@"filename"];
  }

  path = self->_path;
  if (path)
  {
    [v4 setObject:path forKey:@"path"];
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

  if (self->_filename)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_path)
  {
    PBDataWriterWriteStringField();
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

  if (self->_filename)
  {
    [v5 setFilename:?];
    toCopy = v5;
  }

  if (self->_path)
  {
    [v5 setPath:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_type copyWithZone:zone];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(NSString *)self->_filename copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  v10 = [(NSString *)self->_path copyWithZone:zone];
  v11 = v5[2];
  v5[2] = v10;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((type = self->_type, !(type | equalCopy[3])) || -[NSString isEqual:](type, "isEqual:")) && ((filename = self->_filename, !(filename | equalCopy[1])) || -[NSString isEqual:](filename, "isEqual:")))
  {
    path = self->_path;
    if (path | equalCopy[2])
    {
      v8 = [(NSString *)path isEqual:?];
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
  v3 = [(NSString *)self->_type hash];
  v4 = [(NSString *)self->_filename hash]^ v3;
  return v4 ^ [(NSString *)self->_path hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[3])
  {
    [(BMPBContentAttachment *)self setType:?];
    fromCopy = v5;
  }

  if (fromCopy[1])
  {
    [(BMPBContentAttachment *)self setFilename:?];
    fromCopy = v5;
  }

  if (fromCopy[2])
  {
    [(BMPBContentAttachment *)self setPath:?];
    fromCopy = v5;
  }
}

@end