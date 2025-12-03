@interface TFModel1Input
- (TFModel1Input)initWithIn:(id)in;
- (id)featureValueForName:(id)name;
@end

@implementation TFModel1Input

- (TFModel1Input)initWithIn:(id)in
{
  inCopy = in;
  v9.receiver = self;
  v9.super_class = TFModel1Input;
  v6 = [(TFModel1Input *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_in_, in);
  }

  return v7;
}

- (id)featureValueForName:(id)name
{
  if ([name isEqualToString:@"in"])
  {
    v4 = MEMORY[0x277CBFEF8];
    v5 = [(TFModel1Input *)self in];
    v6 = [v4 featureValueWithMultiArray:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end