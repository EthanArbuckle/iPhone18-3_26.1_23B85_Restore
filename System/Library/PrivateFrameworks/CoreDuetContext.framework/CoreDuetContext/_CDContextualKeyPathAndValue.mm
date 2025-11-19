@interface _CDContextualKeyPathAndValue
- (_CDContextualKeyPathAndValue)initWithCoder:(id)a3;
- (_CDContextualKeyPathAndValue)initWithKeyPath:(id)a3 andValue:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _CDContextualKeyPathAndValue

- (_CDContextualKeyPathAndValue)initWithKeyPath:(id)a3 andValue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = _CDContextualKeyPathAndValue;
  v9 = [(_CDContextualKeyPathAndValue *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_keyPath, a3);
    objc_storeStrong(&v10->_value, a4);
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  keyPath = self->_keyPath;
  v5 = a3;
  [v5 encodeObject:keyPath forKey:@"key"];
  [v5 encodeObject:self->_value forKey:@"val"];
}

- (_CDContextualKeyPathAndValue)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"key"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"val"];

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
    v8 = 0;
  }

  else
  {
    self = [(_CDContextualKeyPathAndValue *)self initWithKeyPath:v5 andValue:v6];
    v8 = self;
  }

  return v8;
}

@end