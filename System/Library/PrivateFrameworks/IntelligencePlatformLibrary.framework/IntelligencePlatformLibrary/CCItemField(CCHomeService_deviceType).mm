@interface CCItemField(CCHomeService_deviceType)
- (uint64_t)homeServiceDeviceType;
@end

@implementation CCItemField(CCHomeService_deviceType)

- (uint64_t)homeServiceDeviceType
{
  LODWORD(result) = [self uint32Value];
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