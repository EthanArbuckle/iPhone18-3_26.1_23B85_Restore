@interface CCItemField(CCToolKitToolRuntimeRequirementDeviceCapability_capability)
- (uint64_t)toolKitToolRuntimeRequirementDeviceCapabilityCapability;
@end

@implementation CCItemField(CCToolKitToolRuntimeRequirementDeviceCapability_capability)

- (uint64_t)toolKitToolRuntimeRequirementDeviceCapabilityCapability
{
  LODWORD(result) = [self uint32Value];
  if (result >= 8)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

@end