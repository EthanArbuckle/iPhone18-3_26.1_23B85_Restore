@interface CAFCharacteristicValue
- (CAFCharacteristicValue)initWithCoder:(id)a3;
- (CAFCharacteristicValue)initWithValue:(id)a3 error:(id)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CAFCharacteristicValue

- (CAFCharacteristicValue)initWithValue:(id)a3 error:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CAFCharacteristicValue;
  v9 = [(CAFCharacteristicValue *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_error, a4);
    objc_storeStrong(&v10->_value, a3);
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(CAFCharacteristicValue *)self value];
  v6 = [(CAFCharacteristicValue *)self error];
  v7 = [v3 stringWithFormat:@"<%@: %p value=%@ error=%@>", v4, self, v5, v6];

  return v7;
}

- (CAFCharacteristicValue)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = CAFCharacteristicValue;
  v5 = [(CAFCharacteristicValue *)&v18 init];
  if (v5)
  {
    if ([v4 containsValueForKey:@"CAFCharacteristicValueValueKey"])
    {
      v6 = MEMORY[0x277CBEB98];
      v7 = objc_opt_class();
      v8 = objc_opt_class();
      v9 = objc_opt_class();
      v10 = objc_opt_class();
      v11 = objc_opt_class();
      v12 = [v6 setWithObjects:{v7, v8, v9, v10, v11, objc_opt_class(), 0}];
      v13 = [v4 decodeObjectOfClasses:v12 forKey:@"CAFCharacteristicValueValueKey"];
      value = v5->_value;
      v5->_value = v13;
    }

    if ([v4 containsValueForKey:@"CAFCharacteristicValueErrorKey"])
    {
      v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CAFCharacteristicValueErrorKey"];
      error = v5->_error;
      v5->_error = v15;
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  value = self->_value;
  v7 = v4;
  if (value)
  {
    [v4 encodeObject:value forKey:@"CAFCharacteristicValueValueKey"];
    v4 = v7;
  }

  error = self->_error;
  if (error)
  {
    [v7 encodeObject:error forKey:@"CAFCharacteristicValueErrorKey"];
    v4 = v7;
  }
}

@end