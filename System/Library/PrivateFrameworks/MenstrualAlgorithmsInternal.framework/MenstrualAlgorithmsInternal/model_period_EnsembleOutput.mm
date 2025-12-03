@interface model_period_EnsembleOutput
- (id)featureValueForName:(id)name;
- (model_period_EnsembleOutput)initWithOut:(id)out;
@end

@implementation model_period_EnsembleOutput

- (model_period_EnsembleOutput)initWithOut:(id)out
{
  outCopy = out;
  v9.receiver = self;
  v9.super_class = model_period_EnsembleOutput;
  v6 = [(model_period_EnsembleOutput *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_out_, out);
  }

  return v7;
}

- (id)featureValueForName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"out"])
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