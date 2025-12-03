@interface CKContainerID(HMB)
- (id)hmbDescription;
@end

@implementation CKContainerID(HMB)

- (id)hmbDescription
{
  if ([self environment] == 1)
  {
    containerIdentifier = [self containerIdentifier];
  }

  else
  {
    v3 = MEMORY[0x277CCACA8];
    [self environment];
    v4 = CKContainerEnvironmentString();
    containerIdentifier2 = [self containerIdentifier];
    containerIdentifier = [v3 stringWithFormat:@"%@.%@", v4, containerIdentifier2];
  }

  return containerIdentifier;
}

@end