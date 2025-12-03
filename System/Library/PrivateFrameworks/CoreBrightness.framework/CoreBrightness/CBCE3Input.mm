@interface CBCE3Input
- (CBCE3Input)initWithInput:(id)input;
- (id)featureValueForName:(id)name;
@end

@implementation CBCE3Input

- (CBCE3Input)initWithInput:(id)input
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, input);
  v3 = selfCopy;
  selfCopy = 0;
  v6.receiver = v3;
  v6.super_class = CBCE3Input;
  selfCopy = [(CBCE3Input *)&v6 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_storeStrong(&selfCopy->_input, location[0]);
  }

  v5 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (id)featureValueForName:(id)name
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, name);
  if ([location[0] isEqualToString:@"input"])
  {
    MLFeatureValueClass = getMLFeatureValueClass();
    input = [(CBCE3Input *)selfCopy input];
    v9 = [MLFeatureValueClass featureValueWithMultiArray:?];
    MEMORY[0x1E69E5920](input);
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