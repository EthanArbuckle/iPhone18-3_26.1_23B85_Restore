@interface _MRRegisterGameControllerMessageProtobuf
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _MRRegisterGameControllerMessageProtobuf

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRRegisterGameControllerMessageProtobuf;
  v4 = [(_MRRegisterGameControllerMessageProtobuf *)&v8 description];
  v5 = [(_MRRegisterGameControllerMessageProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  properties = self->_properties;
  if (properties)
  {
    v5 = [(_MRGameControllerPropertiesProtobuf *)properties dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"properties"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  if (self->_properties)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)a3
{
  properties = self->_properties;
  if (properties)
  {
    [a3 setProperties:properties];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(_MRGameControllerPropertiesProtobuf *)self->_properties copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    properties = self->_properties;
    if (properties | v4[1])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  properties = self->_properties;
  v6 = v4[1];
  if (properties)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = v4;
    [(_MRGameControllerPropertiesProtobuf *)properties mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = v4;
    [(_MRRegisterGameControllerMessageProtobuf *)self setProperties:?];
  }

  v4 = v7;
LABEL_7:
}

@end