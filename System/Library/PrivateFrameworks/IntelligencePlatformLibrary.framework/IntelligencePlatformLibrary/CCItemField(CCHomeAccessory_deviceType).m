@interface CCItemField(CCHomeAccessory_deviceType)
- (uint64_t)homeAccessoryDeviceType;
@end

@implementation CCItemField(CCHomeAccessory_deviceType)

- (uint64_t)homeAccessoryDeviceType
{
  LODWORD(result) = [a1 uint32Value];
  if (result >= 0x2E)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

@end