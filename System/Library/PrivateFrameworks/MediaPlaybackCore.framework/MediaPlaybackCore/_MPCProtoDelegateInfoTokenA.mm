@interface _MPCProtoDelegateInfoTokenA
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (uint64_t)picRequestData;
- (void)setPicRequestData:(uint64_t)a1;
- (void)writeTo:(id)a3;
@end

@implementation _MPCProtoDelegateInfoTokenA

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    picRequestData = self->_picRequestData;
    if (picRequestData | v4[1])
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_picRequestData copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (void)writeTo:(id)a3
{
  if (self->_picRequestData)
  {
    PBDataWriterWriteDataField();
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  picRequestData = self->_picRequestData;
  if (picRequestData)
  {
    [v3 setObject:picRequestData forKey:@"picRequestData"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MPCProtoDelegateInfoTokenA;
  v4 = [(_MPCProtoDelegateInfoTokenA *)&v8 description];
  v5 = [(_MPCProtoDelegateInfoTokenA *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)setPicRequestData:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 8), a2);
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