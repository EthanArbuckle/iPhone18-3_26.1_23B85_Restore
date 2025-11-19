@interface DMFDevicePropertiesResultObject
- (Class)classForCoder;
@end

@implementation DMFDevicePropertiesResultObject

- (Class)classForCoder
{
  v4.receiver = self;
  v4.super_class = DMFDevicePropertiesResultObject;
  v2 = [(DMFFetchDevicePropertiesResultObject *)&v4 classForCoder];

  return v2;
}

@end