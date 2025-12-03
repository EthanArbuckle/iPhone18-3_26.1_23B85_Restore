@interface _MPCProtoDelegateInfoTokenA
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (uint64_t)picRequestData;
- (void)setPicRequestData:(uint64_t)data;
- (void)writeTo:(id)to;
@end

@implementation _MPCProtoDelegateInfoTokenA

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    picRequestData = self->_picRequestData;
    if (picRequestData | equalCopy[1])
    {
      v6 = [(NSData *)picRequestData isEqual:?];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_picRequestData copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (void)writeTo:(id)to
{
  if (self->_picRequestData)
  {
    PBDataWriterWriteDataField();
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  picRequestData = self->_picRequestData;
  if (picRequestData)
  {
    [dictionary setObject:picRequestData forKey:@"picRequestData"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MPCProtoDelegateInfoTokenA;
  v4 = [(_MPCProtoDelegateInfoTokenA *)&v8 description];
  dictionaryRepresentation = [(_MPCProtoDelegateInfoTokenA *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)setPicRequestData:(uint64_t)data
{
  if (data)
  {
    objc_storeStrong((data + 8), a2);
  }
}

- (uint64_t)picRequestData
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

@end