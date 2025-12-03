@interface DTGPURawCounter
- (BOOL)isEqual:(id)equal;
- (DTGPURawCounter)initWithName:(id)name;
@end

@implementation DTGPURawCounter

- (DTGPURawCounter)initWithName:(id)name
{
  nameCopy = name;
  v9.receiver = self;
  v9.super_class = DTGPURawCounter;
  v6 = [(DTGPURawCounter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_name, name);
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    name = self->_name;
    name = [equalCopy name];
    v7 = [(NSString *)name isEqualToString:name];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end