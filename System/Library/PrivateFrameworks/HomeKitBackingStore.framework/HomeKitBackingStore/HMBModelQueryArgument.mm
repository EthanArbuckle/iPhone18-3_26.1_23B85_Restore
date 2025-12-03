@interface HMBModelQueryArgument
+ (id)argumentWithPropertyName:(id)name;
+ (id)argumentWithPropertyName:(id)name defaultValue:(id)value;
- (HMBModelQueryArgument)initWithPropertyName:(id)name defaultValue:(id)value;
@end

@implementation HMBModelQueryArgument

- (HMBModelQueryArgument)initWithPropertyName:(id)name defaultValue:(id)value
{
  nameCopy = name;
  valueCopy = value;
  v12.receiver = self;
  v12.super_class = HMBModelQueryArgument;
  v9 = [(HMBModelQueryArgument *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_propertyName, name);
    objc_storeStrong(&v10->_defaultValue, value);
  }

  return v10;
}

+ (id)argumentWithPropertyName:(id)name defaultValue:(id)value
{
  valueCopy = value;
  nameCopy = name;
  v7 = [[HMBModelQueryArgument alloc] initWithPropertyName:nameCopy defaultValue:valueCopy];

  return v7;
}

+ (id)argumentWithPropertyName:(id)name
{
  nameCopy = name;
  v4 = [[HMBModelQueryArgument alloc] initWithPropertyName:nameCopy defaultValue:0];

  return v4;
}

@end