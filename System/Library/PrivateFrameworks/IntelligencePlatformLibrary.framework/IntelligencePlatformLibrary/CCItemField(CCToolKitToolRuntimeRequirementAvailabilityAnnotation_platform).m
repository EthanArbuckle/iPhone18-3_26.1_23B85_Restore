@interface CCItemField(CCToolKitToolRuntimeRequirementAvailabilityAnnotation_platform)
- (uint64_t)toolKitToolRuntimeRequirementAvailabilityAnnotationPlatform;
@end

@implementation CCItemField(CCToolKitToolRuntimeRequirementAvailabilityAnnotation_platform)

- (uint64_t)toolKitToolRuntimeRequirementAvailabilityAnnotationPlatform
{
  LODWORD(result) = [a1 uint32Value];
  if (result >= 9)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

@end