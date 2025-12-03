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
    self = [self initWithUUIDString:v4];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end