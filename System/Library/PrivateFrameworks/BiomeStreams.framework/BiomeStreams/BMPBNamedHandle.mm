@interface BMPBNamedHandle
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation BMPBNamedHandle

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = BMPBNamedHandle;
  v4 = [(BMPBNamedHandle *)&v8 description];
  dictionaryRepresentation = [(BMPBNamedHandle *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  name = self->_name;
  if (name)
  {
    [dictionary setObject:name forKey:@"name"];
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

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_name)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_handle)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_contactIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_handleType)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_name)
  {
    [toCopy setName:?];
    toCopy = v5;
  }

  if (self->_handle)
  {
    [v5 setHandle:?];
    toCopy = v5;
  }

  if (self->_contactIdentifier)
  {
    [v5 setContactIdentifier:?];
    toCopy = v5;
  }

  if (self->_handleType)
  {
    [v5 setHandleType:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_name copyWithZone:zone];
  v7 = v5[4];
  v5[4] = v6;

  v8 = [(NSString *)self->_handle copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSString *)self->_contactIdentifier copyWithZone:zone];
  v11 = v5[1];
  v5[1] = v10;

  v12 = [(NSString *)self->_handleType copyWithZone:zone];
  v13 = v5[3];
  v5[3] = v12;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((name = self->_name, !(name | equalCopy[4])) || -[NSString isEqual:](name, "isEqual:")) && ((handle = self->_handle, !(handle | equalCopy[2])) || -[NSString isEqual:](handle, "isEqual:")) && ((contactIdentifier = self->_contactIdentifier, !(contactIdentifier | equalCopy[1])) || -[NSString isEqual:](contactIdentifier, "isEqual:")))
  {
    handleType = self->_handleType;
    if (handleType | equalCopy[3])
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[4])
  {
    [(BMPBNamedHandle *)self setName:?];
  }

  if (fromCopy[2])
  {
    [(BMPBNamedHandle *)self setHandle:?];
  }

  if (fromCopy[1])
  {
    [(BMPBNamedHandle *)self setContactIdentifier:?];
  }

  if (fromCopy[3])
  {
    [(BMPBNamedHandle *)self setHandleType:?];
  }
}

@end