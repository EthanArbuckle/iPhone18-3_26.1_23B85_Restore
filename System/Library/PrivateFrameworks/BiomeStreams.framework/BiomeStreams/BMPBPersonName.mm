@interface BMPBPersonName
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation BMPBPersonName

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = BMPBPersonName;
  v4 = [(BMPBPersonName *)&v8 description];
  dictionaryRepresentation = [(BMPBPersonName *)self dictionaryRepresentation];
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

  nameComponents = self->_nameComponents;
  if (nameComponents)
  {
    dictionaryRepresentation = [(BMPBNameComponents *)nameComponents dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"nameComponents"];
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

  if (self->_nameComponents)
  {
    PBDataWriterWriteSubmessage();
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

  if (self->_nameComponents)
  {
    [v5 setNameComponents:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_name copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(BMPBNameComponents *)self->_nameComponents copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((name = self->_name, !(name | equalCopy[1])) || -[NSString isEqual:](name, "isEqual:")))
  {
    nameComponents = self->_nameComponents;
    if (nameComponents | equalCopy[2])
    {
      v7 = [(BMPBNameComponents *)nameComponents isEqual:?];
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
  v7 = fromCopy;
  if (fromCopy[1])
  {
    [(BMPBPersonName *)self setName:?];
    fromCopy = v7;
  }

  nameComponents = self->_nameComponents;
  v6 = fromCopy[2];
  if (nameComponents)
  {
    if (v6)
    {
      [(BMPBNameComponents *)nameComponents mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(BMPBPersonName *)self setNameComponents:?];
  }

  MEMORY[0x1EEE66BB8]();
}

@end