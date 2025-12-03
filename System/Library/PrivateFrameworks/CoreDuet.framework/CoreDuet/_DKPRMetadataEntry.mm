@interface _DKPRMetadataEntry
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (uint64_t)hasIndex;
- (uint64_t)index;
- (uint64_t)key;
- (uint64_t)setIndex:(uint64_t)result;
- (uint64_t)value;
- (unint64_t)hash;
- (void)setKey:(uint64_t)key;
- (void)setValue:(uint64_t)value;
- (void)writeTo:(id)to;
@end

@implementation _DKPRMetadataEntry

- (uint64_t)value
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _DKPRMetadataEntry;
  v4 = [(_DKPRMetadataEntry *)&v8 description];
  dictionaryRepresentation = [(_DKPRMetadataEntry *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  key = self->_key;
  if (key)
  {
    [dictionary setObject:key forKey:@"key"];
  }

  value = self->_value;
  if (value)
  {
    dictionaryRepresentation = [(_DKPRValue *)value dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"value"];
  }

  if (*&self->_has)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_index];
    [v4 setObject:v8 forKey:@"index"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_key)
  {
    [_DKPRMetadataEntry writeTo:];
  }

  PBDataWriterWriteStringField();
  if (!self->_value)
  {
    [_DKPRMetadataEntry writeTo:];
  }

  PBDataWriterWriteSubmessage();
  if (*&self->_has)
  {
    index = self->_index;
    PBDataWriterWriteUint32Field();
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_key copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(_DKPRValue *)self->_value copyWithZone:zone];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_index;
    *(v5 + 32) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  key = self->_key;
  if (key | *(equalCopy + 2))
  {
    if (![(NSString *)key isEqual:?])
    {
      goto LABEL_10;
    }
  }

  value = self->_value;
  if (value | *(equalCopy + 3))
  {
    if (![(_DKPRValue *)value isEqual:?])
    {
      goto LABEL_10;
    }
  }

  v7 = (*(equalCopy + 32) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 32) & 1) != 0 && self->_index == *(equalCopy + 2))
    {
      v7 = 1;
      goto LABEL_11;
    }

LABEL_10:
    v7 = 0;
  }

LABEL_11:

  return v7;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_key hash];
  v4 = [(_DKPRValue *)self->_value hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_index;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (uint64_t)setIndex:(uint64_t)result
{
  if (result)
  {
    *(result + 32) |= 1u;
    *(result + 8) = a2;
  }

  return result;
}

- (uint64_t)hasIndex
{
  if (result)
  {
    return *(result + 32) & 1;
  }

  return result;
}

- (void)setKey:(uint64_t)key
{
  if (key)
  {
    OUTLINED_FUNCTION_0_8(key, a2, 16);
  }
}

- (void)setValue:(uint64_t)value
{
  if (value)
  {
    OUTLINED_FUNCTION_0_8(value, a2, 24);
  }
}

- (uint64_t)key
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

- (uint64_t)index
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

@end