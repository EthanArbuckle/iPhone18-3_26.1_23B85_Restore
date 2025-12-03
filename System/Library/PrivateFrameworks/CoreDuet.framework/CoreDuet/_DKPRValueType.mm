@interface _DKPRValueType
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (uint64_t)setType:(uint64_t)result;
- (uint64_t)setTypeCode:(uint64_t)result;
- (uint64_t)type;
- (uint64_t)typeCode;
- (void)writeTo:(id)to;
@end

@implementation _DKPRValueType

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _DKPRValueType;
  v4 = [(_DKPRValueType *)&v8 description];
  dictionaryRepresentation = [(_DKPRValueType *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  type = self->_type;
  if (type >= 5)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_type];
  }

  else
  {
    v5 = off_1E7369860[type];
  }

  [dictionary setObject:v5 forKey:@"type"];

  v6 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_typeCode];
  [dictionary setObject:v6 forKey:@"typeCode"];

  return dictionary;
}

- (void)writeTo:(id)to
{
  type = self->_type;
  toCopy = to;
  PBDataWriterWriteInt32Field();
  typeCode = self->_typeCode;
  PBDataWriterWriteInt64Field();
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(result + 4) = self->_type;
  *(result + 1) = self->_typeCode;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [equalCopy isMemberOfClass:objc_opt_class()] && self->_type == *(equalCopy + 4) && self->_typeCode == *(equalCopy + 1);

  return v5;
}

- (uint64_t)type
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

- (uint64_t)setType:(uint64_t)result
{
  if (result)
  {
    *(result + 16) = a2;
  }

  return result;
}

- (uint64_t)typeCode
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

- (uint64_t)setTypeCode:(uint64_t)result
{
  if (result)
  {
    *(result + 8) = a2;
  }

  return result;
}

@end