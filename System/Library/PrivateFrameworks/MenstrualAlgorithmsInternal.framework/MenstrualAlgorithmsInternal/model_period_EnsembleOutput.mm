@interface model_period_EnsembleOutput
- (id)featureValueForName:(id)a3;
- (model_period_EnsembleOutput)initWithOut:(id)a3;
@end

@implementation model_period_EnsembleOutput

- (model_period_EnsembleOutput)initWithOut:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = model_period_EnsembleOutput;
  v6 = [(model_period_EnsembleOutput *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_out_, a3);
  }

  return v7;
}

- (id)featureValueForName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"out"])
  {
    v5 = MEMORY[0x277CBFEF8];
    v6 = [(model_period_EnsembleOutput *)self out];
    v7 = [v5 featureValueWithMultiArray:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end