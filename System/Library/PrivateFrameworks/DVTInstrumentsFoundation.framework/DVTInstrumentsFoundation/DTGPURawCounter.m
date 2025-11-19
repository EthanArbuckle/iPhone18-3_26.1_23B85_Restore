@interface DTGPURawCounter
- (BOOL)isEqual:(id)a3;
- (DTGPURawCounter)initWithName:(id)a3;
@end

@implementation DTGPURawCounter

- (DTGPURawCounter)initWithName:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = DTGPURawCounter;
  v6 = [(DTGPURawCounter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_name, a3);
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    name = self->_name;
    v6 = [v4 name];
    v7 = [(NSString *)name isEqualToString:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end