@interface CBCE3Input
- (CBCE3Input)initWithInput:(id)a3;
- (id)featureValueForName:(id)a3;
@end

@implementation CBCE3Input

- (CBCE3Input)initWithInput:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v8;
  v8 = 0;
  v6.receiver = v3;
  v6.super_class = CBCE3Input;
  v8 = [(CBCE3Input *)&v6 init];
  objc_storeStrong(&v8, v8);
  if (v8)
  {
    objc_storeStrong(&v8->_input, location[0]);
  }

  v5 = MEMORY[0x1E69E5928](v8);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v8, 0);
  return v5;
}

- (id)featureValueForName:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if ([location[0] isEqualToString:@"input"])
  {
    MLFeatureValueClass = getMLFeatureValueClass();
    v6 = [(CBCE3Input *)v8 input];
    v9 = [MLFeatureValueClass featureValueWithMultiArray:?];
    MEMORY[0x1E69E5920](v6);
  }

  else
  {
    v9 = 0;
  }

  objc_storeStrong(location, 0);
  v3 = v9;

  return v3;
}

@end