@interface _CDContextualKeyPathAndValue
- (_CDContextualKeyPathAndValue)initWithCoder:(id)coder;
- (_CDContextualKeyPathAndValue)initWithKeyPath:(id)path andValue:(id)value;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _CDContextualKeyPathAndValue

- (_CDContextualKeyPathAndValue)initWithKeyPath:(id)path andValue:(id)value
{
  pathCopy = path;
  valueCopy = value;
  v12.receiver = self;
  v12.super_class = _CDContextualKeyPathAndValue;
  v9 = [(_CDContextualKeyPathAndValue *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_keyPath, path);
    objc_storeStrong(&v10->_value, value);
  }

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  keyPath = self->_keyPath;
  coderCopy = coder;
  [coderCopy encodeObject:keyPath forKey:@"key"];
  [coderCopy encodeObject:self->_value forKey:@"val"];
}

- (_CDContextualKeyPathAndValue)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"key"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"val"];

  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_CDContextualKeyPathAndValue *)self initWithKeyPath:v5 andValue:v6];
    selfCopy = self;
  }

  return selfCopy;
}

@end