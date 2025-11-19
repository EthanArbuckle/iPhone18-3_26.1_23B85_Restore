@interface NSUUID(GCSJSONSerializable)
- (id)initWithJSONObject:()GCSJSONSerializable;
@end

@implementation NSUUID(GCSJSONSerializable)

- (id)initWithJSONObject:()GCSJSONSerializable
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    a1 = [a1 initWithUUIDString:v4];
    v5 = a1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end