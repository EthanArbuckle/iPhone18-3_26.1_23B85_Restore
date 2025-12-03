@interface TFModel1Output
- (TFModel1Output)initWithOut:(id)out;
- (id)featureValueForName:(id)name;
@end

@implementation TFModel1Output

- (TFModel1Output)initWithOut:(id)out
{
  outCopy = out;
  v9.receiver = self;
  v9.super_class = TFModel1Output;
  v6 = [(TFModel1Output *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_out_, out);
  }

  return v7;
}

- (id)featureValueForName:(id)name
{
  if ([name isEqualToString:@"out"])
  {
    v4 = MEMORY[0x277CBFEF8];
    v5 = [(TFModel1Output *)self out];
    v6 = [v4 featureValueWithMultiArray:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end