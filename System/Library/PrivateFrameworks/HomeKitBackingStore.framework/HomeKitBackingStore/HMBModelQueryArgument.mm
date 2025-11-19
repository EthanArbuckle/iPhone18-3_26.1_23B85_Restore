@interface HMBModelQueryArgument
+ (id)argumentWithPropertyName:(id)a3;
+ (id)argumentWithPropertyName:(id)a3 defaultValue:(id)a4;
- (HMBModelQueryArgument)initWithPropertyName:(id)a3 defaultValue:(id)a4;
@end

@implementation HMBModelQueryArgument

- (HMBModelQueryArgument)initWithPropertyName:(id)a3 defaultValue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HMBModelQueryArgument;
  v9 = [(HMBModelQueryArgument *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_propertyName, a3);
    objc_storeStrong(&v10->_defaultValue, a4);
  }

  return v10;
}

+ (id)argumentWithPropertyName:(id)a3 defaultValue:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[HMBModelQueryArgument alloc] initWithPropertyName:v6 defaultValue:v5];

  return v7;
}

+ (id)argumentWithPropertyName:(id)a3
{
  v3 = a3;
  v4 = [[HMBModelQueryArgument alloc] initWithPropertyName:v3 defaultValue:0];

  return v4;
}

@end