@interface SGSimpleMailHeaderKeyValue
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToSimpleMailHeaderKeyValue:(id)value;
- (SGSimpleMailHeaderKeyValue)initWithCoder:(id)coder;
- (SGSimpleMailHeaderKeyValue)initWithKey:(id)key value:(id)value;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SGSimpleMailHeaderKeyValue

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<SGSimpleMailHeaderKeyValue: %@: %@>", self->_key, self->_value];

  return v2;
}

- (void)encodeWithCoder:(id)coder
{
  key = self->_key;
  coderCopy = coder;
  [coderCopy encodeObject:key forKey:@"key"];
  [coderCopy encodeObject:self->_value forKey:@"value"];
}

- (SGSimpleMailHeaderKeyValue)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = SGSimpleMailHeaderKeyValue;
  v6 = [(SGSimpleMailHeaderKeyValue *)&v16 init];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
    v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"key"];

    if (v8)
    {
      v9 = v8;
      key = v6->_key;
      v6->_key = v9;
    }

    else
    {
      key = [MEMORY[0x277CCA890] currentHandler];
      [key handleFailureInMethod:a2 object:v6 file:@"SGSimpleMailMessage.m" lineNumber:112 description:{@"nonnull property %s *%s was null when decoded", "NSString", "key"}];
    }

    v11 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"value"];

    if (v12)
    {
      v13 = v12;
      value = v6->_value;
      v6->_value = v13;
    }

    else
    {
      value = [MEMORY[0x277CCA890] currentHandler];
      [value handleFailureInMethod:a2 object:v6 file:@"SGSimpleMailMessage.m" lineNumber:113 description:{@"nonnull property %s *%s was null when decoded", "NSString", "value"}];
    }
  }

  return v6;
}

- (BOOL)isEqualToSimpleMailHeaderKeyValue:(id)value
{
  valueCopy = value;
  v5 = self->_key;
  v6 = v5;
  if (v5 == valueCopy[1])
  {
  }

  else
  {
    v7 = [(NSString *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      v8 = 0;
      goto LABEL_9;
    }
  }

  v9 = self->_value;
  v10 = v9;
  if (v9 == valueCopy[2])
  {
    v8 = 1;
  }

  else
  {
    v8 = [(NSString *)v9 isEqual:?];
  }

LABEL_9:
  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(SGSimpleMailHeaderKeyValue *)self isEqualToSimpleMailHeaderKeyValue:v5];
  }

  return v6;
}

- (SGSimpleMailHeaderKeyValue)initWithKey:(id)key value:(id)value
{
  keyCopy = key;
  valueCopy = value;
  v12.receiver = self;
  v12.super_class = SGSimpleMailHeaderKeyValue;
  v9 = [(SGSimpleMailHeaderKeyValue *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_key, key);
    objc_storeStrong(&v10->_value, value);
  }

  return v10;
}

@end