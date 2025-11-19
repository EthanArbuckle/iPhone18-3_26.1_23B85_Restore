@interface CCItemField(CCToolKitToolRuntimeRequirement_deviceState)
- (uint64_t)toolKitToolRuntimeRequirementDeviceState;
@end

@implementation CCItemField(CCToolKitToolRuntimeRequirement_deviceState)

- (uint64_t)toolKitToolRuntimeRequirementDeviceState
{
  LODWORD(result) = [a1 uint32Value];
  if (result >= 2)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

@end