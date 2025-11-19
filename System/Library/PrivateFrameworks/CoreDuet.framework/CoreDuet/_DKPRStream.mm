@interface _DKPRStream
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (uint64_t)name;
- (uint64_t)type;
- (void)setName:(uint64_t)a1;
- (void)setType:(uint64_t)a1;
- (void)writeTo:(id)a3;
@end

@implementation _DKPRStream

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _DKPRStream;
  v4 = [(_DKPRStream *)&v8 description];
  v5 = [(_DKPRStream *)self dictionaryRepresentation];
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

  type = self->_type;
  if (type)
  {
    v7 = [(_DKPRValueType *)type dictionaryRepresentation];
    [v4 setObject:v7 forKey:@"type"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (!self->_name)
  {
    [_DKPRStream writeTo:];
  }

  v5 = v4;
  PBDataWriterWriteStringField();
  if (!self->_type)
  {
    [_DKPRStream writeTo:];
  }

  PBDataWriterWriteSubmessage();
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_name copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(_DKPRValueType *)self->_type copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((name = self->_name, !(name | v4[1])) || -[NSString isEqual:](name, "isEqual:")))
  {
    type = self->_type;
    if (type | v4[2])
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

- (void)setName:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_8(a1, a2, 8);
  }
}

- (void)setType:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_8(a1, a2, 16);
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