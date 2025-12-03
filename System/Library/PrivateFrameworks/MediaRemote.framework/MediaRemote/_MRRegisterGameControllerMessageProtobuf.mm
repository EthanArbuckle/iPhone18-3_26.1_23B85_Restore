@interface _MRRegisterGameControllerMessageProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation _MRRegisterGameControllerMessageProtobuf

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRRegisterGameControllerMessageProtobuf;
  v4 = [(_MRRegisterGameControllerMessageProtobuf *)&v8 description];
  dictionaryRepresentation = [(_MRRegisterGameControllerMessageProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  properties = self->_properties;
  if (properties)
  {
    dictionaryRepresentation = [(_MRGameControllerPropertiesProtobuf *)properties dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"properties"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  if (self->_properties)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)to
{
  properties = self->_properties;
  if (properties)
  {
    [to setProperties:properties];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(_MRGameControllerPropertiesProtobuf *)self->_properties copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    properties = self->_properties;
    if (properties | equalCopy[1])
    {
      v6 = [(_MRGameControllerPropertiesProtobuf *)properties isEqual:?];
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
  fromCopy = from;
  properties = self->_properties;
  v6 = fromCopy[1];
  if (properties)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = fromCopy;
    [(_MRGameControllerPropertiesProtobuf *)properties mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = fromCopy;
    [(_MRRegisterGameControllerMessageProtobuf *)self setProperties:?];
  }

  fromCopy = v7;
LABEL_7:
}

@end