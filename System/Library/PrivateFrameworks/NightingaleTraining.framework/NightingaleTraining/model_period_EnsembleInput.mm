@interface model_period_EnsembleInput
- (id)featureValueForName:(id)name;
- (model_period_EnsembleInput)initWithIn:(id)in;
@end

@implementation model_period_EnsembleInput

- (model_period_EnsembleInput)initWithIn:(id)in
{
  inCopy = in;
  v9.receiver = self;
  v9.super_class = model_period_EnsembleInput;
  v6 = [(model_period_EnsembleInput *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_in_, in);
  }

  return v7;
}

- (id)featureValueForName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"in"])
  {
    v5 = MEMORY[0x277CBFEF8];
    v6 = [(model_period_EnsembleInput *)self in];
    v7 = [v5 featureValueWithMultiArray:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end