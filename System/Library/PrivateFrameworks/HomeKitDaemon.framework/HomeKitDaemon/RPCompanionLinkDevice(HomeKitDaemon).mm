@interface RPCompanionLinkDevice(HomeKitDaemon)
- (id)redactedDescription;
@end

@implementation RPCompanionLinkDevice(HomeKitDaemon)

- (id)redactedDescription
{
  v1 = MEMORY[0x277CCACA8];
  identifier = [self identifier];
  v3 = [v1 stringWithFormat:@"ID %@", identifier];

  return v3;
}

@end