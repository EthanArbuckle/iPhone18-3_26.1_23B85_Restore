@interface HFTriggerItem(HUTriggerLikeItem)
- (id)identifier;
@end

@implementation HFTriggerItem(HUTriggerLikeItem)

- (id)identifier
{
  trigger = [self trigger];
  uniqueIdentifier = [trigger uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];

  return uUIDString;
}

@end