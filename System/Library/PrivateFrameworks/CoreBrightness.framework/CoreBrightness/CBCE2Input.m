@interface CBCE2Input
- (CBCE2Input)initWithInput:(id)a3;
- (id)featureValueForName:(id)a3;
@end

@implementation CBCE2Input

- (CBCE2Input)initWithInput:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v8;
  v8 = 0;
  v6.receiver = v3;
  v6.super_class = CBCE2Input;
  v8 = [(CBCE2Input *)&v6 init];
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
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if ([location[0] isEqualToString:@"input"])
  {
    v7 = [getMLFeatureValueClass_0() featureValueWithMultiArray:v6->_input];
  }

  else
  {
    v7 = 0;
  }

  objc_storeStrong(location, 0);
  v3 = v7;

  return v3;
}

@end