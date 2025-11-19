@interface BMPBContentAttachment
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation BMPBContentAttachment

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = BMPBContentAttachment;
  v4 = [(BMPBContentAttachment *)&v8 description];
  v5 = [(BMPBContentAttachment *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  type = self->_type;
  if (type)
  {
    [v3 setObject:type forKey:@"type"];
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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_type)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_filename)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_path)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_type)
  {
    [v4 setType:?];
    v4 = v5;
  }

  if (self->_filename)
  {
    [v5 setFilename:?];
    v4 = v5;
  }

  if (self->_path)
  {
    [v5 setPath:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_type copyWithZone:a3];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(NSString *)self->_filename copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  v10 = [(NSString *)self->_path copyWithZone:a3];
  v11 = v5[2];
  v5[2] = v10;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((type = self->_type, !(type | v4[3])) || -[NSString isEqual:](type, "isEqual:")) && ((filename = self->_filename, !(filename | v4[1])) || -[NSString isEqual:](filename, "isEqual:")))
  {
    path = self->_path;
    if (path | v4[2])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[3])
  {
    [(BMPBContentAttachment *)self setType:?];
    v4 = v5;
  }

  if (v4[1])
  {
    [(BMPBContentAttachment *)self setFilename:?];
    v4 = v5;
  }

  if (v4[2])
  {
    [(BMPBContentAttachment *)self setPath:?];
    v4 = v5;
  }
}

@end