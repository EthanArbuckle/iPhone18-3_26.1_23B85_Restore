@interface _DKPRStream
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (uint64_t)name;
- (uint64_t)type;
- (void)setName:(uint64_t)name;
- (void)setType:(uint64_t)type;
- (void)writeTo:(id)to;
@end

@implementation _DKPRStream

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _DKPRStream;
  v4 = [(_DKPRStream *)&v8 description];
  dictionaryRepresentation = [(_DKPRStream *)self dictionaryRepresentation];
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

  type = self->_type;
  if (type)
  {
    dictionaryRepresentation = [(_DKPRValueType *)type dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"type"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_name)
  {
    [_DKPRStream writeTo:];
  }

  v5 = toCopy;
  PBDataWriterWriteStringField();
  if (!self->_type)
  {
    [_DKPRStream writeTo:];
  }

  PBDataWriterWriteSubmessage();
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_name copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(_DKPRValueType *)self->_type copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((name = self->_name, !(name | equalCopy[1])) || -[NSString isEqual:](name, "isEqual:")))
  {
    type = self->_type;
    if (type | equalCopy[2])
    {
      v7 = [(_DKPRValueType *)type isEqual:?];
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

- (void)setName:(uint64_t)name
{
  if (name)
  {
    OUTLINED_FUNCTION_0_8(name, a2, 8);
  }
}

- (void)setType:(uint64_t)type
{
  if (type)
  {
    OUTLINED_FUNCTION_0_8(type, a2, 16);
  }
}

- (uint64_t)name
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

- (uint64_t)type
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

@end