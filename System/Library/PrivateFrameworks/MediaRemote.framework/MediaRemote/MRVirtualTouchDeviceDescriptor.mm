@interface MRVirtualTouchDeviceDescriptor
- (_MRHIDSize)screenSize;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
@end

@implementation MRVirtualTouchDeviceDescriptor

- (_MRHIDSize)screenSize
{
  width = self->_screenSize.var0.width;
  height = self->_screenSize.var0.height;
  result.var0.height = height;
  result.var0.width = width;
  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  if (self)
  {
    return OUTLINED_FUNCTION_0_27([objc_msgSend(v5 allocWithZone:{zone), "init"}]);
  }

  else
  {
    return 0;
  }
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  if (self)
  {
    return OUTLINED_FUNCTION_0_27([objc_msgSend(v5 allocWithZone:{zone), "init"}]);
  }

  else
  {
    return 0;
  }
}

@end