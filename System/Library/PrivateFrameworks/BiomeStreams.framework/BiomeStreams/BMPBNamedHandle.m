@interface BMPBNamedHandle
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation BMPBNamedHandle

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = BMPBNamedHandle;
  v4 = [(BMPBNamedHandle *)&v8 description];
  v5 = [(BMPBNamedHandle *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  name = self->_name;
  if (name)
  {
    [v3 setObject:name forKey:@"name"];
  }

  handle = self->_handle;
  if (handle)
  {
    [v4 setObject:handle forKey:@"handle"];
  }

  contactIdentifier = self->_contactIdentifier;
  if (contactIdentifier)
  {
    [v4 setObject:contactIdentifier forKey:@"contactIdentifier"];
  }

  handleType = self->_handleType;
  if (handleType)
  {
    [v4 setObject:handleType forKey:@"handleType"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_name)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_handle)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_contactIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_handleType)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_name)
  {
    [v4 setName:?];
    v4 = v5;
  }

  if (self->_handle)
  {
    [v5 setHandle:?];
    v4 = v5;
  }

  if (self->_contactIdentifier)
  {
    [v5 setContactIdentifier:?];
    v4 = v5;
  }

  if (self->_handleType)
  {
    [v5 setHandleType:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_name copyWithZone:a3];
  v7 = v5[4];
  v5[4] = v6;

  v8 = [(NSString *)self->_handle copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSString *)self->_contactIdentifier copyWithZone:a3];
  v11 = v5[1];
  v5[1] = v10;

  v12 = [(NSString *)self->_handleType copyWithZone:a3];
  v13 = v5[3];
  v5[3] = v12;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((name = self->_name, !(name | v4[4])) || -[NSString isEqual:](name, "isEqual:")) && ((handle = self->_handle, !(handle | v4[2])) || -[NSString isEqual:](handle, "isEqual:")) && ((contactIdentifier = self->_contactIdentifier, !(contactIdentifier | v4[1])) || -[NSString isEqual:](contactIdentifier, "isEqual:")))
  {
    handleType = self->_handleType;
    if (handleType | v4[3])
    {
      v9 = [(NSString *)handleType isEqual:?];
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_name hash];
  v4 = [(NSString *)self->_handle hash]^ v3;
  v5 = [(NSString *)self->_contactIdentifier hash];
  return v4 ^ v5 ^ [(NSString *)self->_handleType hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[4])
  {
    [(BMPBNamedHandle *)self setName:?];
  }

  if (v4[2])
  {
    [(BMPBNamedHandle *)self setHandle:?];
  }

  if (v4[1])
  {
    [(BMPBNamedHandle *)self setContactIdentifier:?];
  }

  if (v4[3])
  {
    [(BMPBNamedHandle *)self setHandleType:?];
  }
}

@end