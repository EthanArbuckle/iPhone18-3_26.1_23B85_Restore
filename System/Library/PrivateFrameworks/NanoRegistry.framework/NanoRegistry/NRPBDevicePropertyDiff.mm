@interface NRPBDevicePropertyDiff
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)setValue:(uint64_t)value;
- (void)writeTo:(id)to;
@end

@implementation NRPBDevicePropertyDiff

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = NRPBDevicePropertyDiff;
  v4 = [(NRPBDevicePropertyDiff *)&v8 description];
  dictionaryRepresentation = [(NRPBDevicePropertyDiff *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  value = self->_value;
  if (value)
  {
    dictionaryRepresentation = [(NRPBPropertyValue *)value dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"value"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  if (self->_value)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)setValue:(uint64_t)value
{
  if (value)
  {
    objc_storeStrong((value + 8), a2);
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NRPBPropertyValue *)self->_value copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    value = self->_value;
    if (value | equalCopy[1])
    {
      v6 = [(NRPBPropertyValue *)value isEqual:?];
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

@end