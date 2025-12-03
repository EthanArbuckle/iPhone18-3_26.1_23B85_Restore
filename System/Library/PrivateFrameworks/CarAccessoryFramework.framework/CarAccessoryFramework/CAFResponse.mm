@interface CAFResponse
- (CAFResponse)initWithCoder:(id)coder;
- (CAFResponse)initWithValuesAndError:(id)error error:(id)a4;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CAFResponse

- (CAFResponse)initWithValuesAndError:(id)error error:(id)a4
{
  errorCopy = error;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CAFResponse;
  v9 = [(CAFResponse *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_error, a4);
    objc_storeStrong(&v10->_values, error);
  }

  return v10;
}

- (CAFResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = CAFResponse;
  v5 = [(CAFResponse *)&v16 init];
  if (v5)
  {
    if ([coderCopy containsValueForKey:@"CAFResponseValuesKey"])
    {
      v6 = MEMORY[0x277CBEB98];
      v7 = objc_opt_class();
      v8 = objc_opt_class();
      v9 = objc_opt_class();
      v10 = [v6 setWithObjects:{v7, v8, v9, objc_opt_class(), 0}];
      v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"CAFResponseValuesKey"];
      values = v5->_values;
      v5->_values = v11;
    }

    if ([coderCopy containsValueForKey:@"CAFResponseErrorKey"])
    {
      v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CAFResponseErrorKey"];
      error = v5->_error;
      v5->_error = v13;
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  values = self->_values;
  v7 = coderCopy;
  if (values)
  {
    [coderCopy encodeObject:values forKey:@"CAFResponseValuesKey"];
    coderCopy = v7;
  }

  error = self->_error;
  if (error)
  {
    [v7 encodeObject:error forKey:@"CAFResponseErrorKey"];
    coderCopy = v7;
  }
}

@end