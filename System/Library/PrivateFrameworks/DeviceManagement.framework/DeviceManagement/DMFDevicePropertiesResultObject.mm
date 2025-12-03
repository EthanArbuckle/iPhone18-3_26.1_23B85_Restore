@interface DMFDevicePropertiesResultObject
- (Class)classForCoder;
@end

@implementation DMFDevicePropertiesResultObject

- (Class)classForCoder
{
  v4.receiver = self;
  v4.super_class = DMFDevicePropertiesResultObject;
  classForCoder = [(DMFFetchDevicePropertiesResultObject *)&v4 classForCoder];

  return classForCoder;
}

@end