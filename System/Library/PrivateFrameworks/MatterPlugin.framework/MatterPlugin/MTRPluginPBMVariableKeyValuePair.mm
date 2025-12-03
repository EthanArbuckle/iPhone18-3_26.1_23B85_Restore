@interface MTRPluginPBMVariableKeyValuePair
- (BOOL)isEqual:(id)equal;
- (MTRPluginPBMVariableKeyValuePair)initWithObjectValue:(id)value forKey:(id)key;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation MTRPluginPBMVariableKeyValuePair

- (MTRPluginPBMVariableKeyValuePair)initWithObjectValue:(id)value forKey:(id)key
{
  keyCopy = key;
  valueCopy = value;
  v8 = [[MTRPluginPBMVariableValue alloc] initWithObjectValue:valueCopy];

  if (v8 && (v9 = [(MTRPluginPBMVariableKeyValuePair *)self init], (self = v9) != 0))
  {
    [(MTRPluginPBMVariableKeyValuePair *)v9 setKey:keyCopy];
    [(MTRPluginPBMVariableKeyValuePair *)self setValue:v8];
    self = self;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MTRPluginPBMVariableKeyValuePair;
  v4 = [(MTRPluginPBMVariableKeyValuePair *)&v8 description];
  dictionaryRepresentation = [(MTRPluginPBMVariableKeyValuePair *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  key = self->_key;
  if (key)
  {
    [dictionary setObject:key forKey:@"key"];
  }

  value = self->_value;
  if (value)
  {
    dictionaryRepresentation = [(MTRPluginPBMVariableValue *)value dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"value"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_key)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_value)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_key)
  {
    [toCopy setKey:?];
    toCopy = v5;
  }

  if (self->_value)
  {
    [v5 setValue:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_key copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(MTRPluginPBMVariableValue *)self->_value copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((key = self->_key, !(key | equalCopy[1])) || -[NSString isEqual:](key, "isEqual:")))
  {
    value = self->_value;
    if (value | equalCopy[2])
    {
      v7 = [(MTRPluginPBMVariableValue *)value isEqual:?];
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
    [(MTRPluginPBMVariableKeyValuePair *)self setKey:?];
    fromCopy = v7;
  }

  value = self->_value;
  v6 = fromCopy[2];
  if (value)
  {
    if (v6)
    {
      [(MTRPluginPBMVariableValue *)value mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(MTRPluginPBMVariableKeyValuePair *)self setValue:?];
  }

  MEMORY[0x2821F96F8]();
}

@end