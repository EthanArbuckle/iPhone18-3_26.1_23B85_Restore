@interface HRETypeValueTuple
+ (id)type:(id)type value:(id)value;
- (HRETypeValueTuple)initWithType:(id)type value:(id)value;
@end

@implementation HRETypeValueTuple

- (HRETypeValueTuple)initWithType:(id)type value:(id)value
{
  typeCopy = type;
  valueCopy = value;
  v12.receiver = self;
  v12.super_class = HRETypeValueTuple;
  v9 = [(HRETypeValueTuple *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_type, type);
    objc_storeStrong(&v10->_value, value);
  }

  return v10;
}

+ (id)type:(id)type value:(id)value
{
  valueCopy = value;
  typeCopy = type;
  v8 = [[self alloc] initWithType:typeCopy value:valueCopy];

  return v8;
}

@end