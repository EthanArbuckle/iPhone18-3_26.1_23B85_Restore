@interface CAFCharacteristicValue
- (CAFCharacteristicValue)initWithCoder:(id)coder;
- (CAFCharacteristicValue)initWithValue:(id)value error:(id)error;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CAFCharacteristicValue

- (CAFCharacteristicValue)initWithValue:(id)value error:(id)error
{
  valueCopy = value;
  errorCopy = error;
  v12.receiver = self;
  v12.super_class = CAFCharacteristicValue;
  v9 = [(CAFCharacteristicValue *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_error, error);
    objc_storeStrong(&v10->_value, value);
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  value = [(CAFCharacteristicValue *)self value];
  error = [(CAFCharacteristicValue *)self error];
  v7 = [v3 stringWithFormat:@"<%@: %p value=%@ error=%@>", v4, self, value, error];

  return v7;
}

- (CAFCharacteristicValue)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = CAFCharacteristicValue;
  v5 = [(CAFCharacteristicValue *)&v18 init];
  if (v5)
  {
    if ([coderCopy containsValueForKey:@"CAFCharacteristicValueValueKey"])
    {
      v6 = MEMORY[0x277CBEB98];
      v7 = objc_opt_class();
      v8 = objc_opt_class();
      v9 = objc_opt_class();
      v10 = objc_opt_class();
      v11 = objc_opt_class();
      v12 = [v6 setWithObjects:{v7, v8, v9, v10, v11, objc_opt_class(), 0}];
      v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"CAFCharacteristicValueValueKey"];
      value = v5->_value;
      v5->_value = v13;
    }

    if ([coderCopy containsValueForKey:@"CAFCharacteristicValueErrorKey"])
    {
      v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CAFCharacteristicValueErrorKey"];
      error = v5->_error;
      v5->_error = v15;
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  value = self->_value;
  v7 = coderCopy;
  if (value)
  {
    [coderCopy encodeObject:value forKey:@"CAFCharacteristicValueValueKey"];
    coderCopy = v7;
  }

  error = self->_error;
  if (error)
  {
    [v7 encodeObject:error forKey:@"CAFCharacteristicValueErrorKey"];
    coderCopy = v7;
  }
}

@end