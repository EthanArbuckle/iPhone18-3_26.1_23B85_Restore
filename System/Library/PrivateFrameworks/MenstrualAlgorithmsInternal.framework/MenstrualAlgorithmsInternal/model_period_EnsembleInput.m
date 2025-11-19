@interface model_period_EnsembleInput
- (id)featureValueForName:(id)a3;
- (model_period_EnsembleInput)initWithIn:(id)a3;
@end

@implementation model_period_EnsembleInput

- (model_period_EnsembleInput)initWithIn:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = model_period_EnsembleInput;
  v6 = [(model_period_EnsembleInput *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_in_, a3);
  }

  return v7;
}

- (id)featureValueForName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"in"])
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