@interface HRETypeValueTuple
+ (id)type:(id)a3 value:(id)a4;
- (HRETypeValueTuple)initWithType:(id)a3 value:(id)a4;
@end

@implementation HRETypeValueTuple

- (HRETypeValueTuple)initWithType:(id)a3 value:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HRETypeValueTuple;
  v9 = [(HRETypeValueTuple *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_type, a3);
    objc_storeStrong(&v10->_value, a4);
  }

  return v10;
}

+ (id)type:(id)a3 value:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithType:v7 value:v6];

  return v8;
}

@end