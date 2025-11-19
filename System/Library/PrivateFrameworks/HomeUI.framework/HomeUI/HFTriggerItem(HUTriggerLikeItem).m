@interface HFTriggerItem(HUTriggerLikeItem)
- (id)identifier;
@end

@implementation HFTriggerItem(HUTriggerLikeItem)

- (id)identifier
{
  v1 = [a1 trigger];
  v2 = [v1 uniqueIdentifier];
  v3 = [v2 UUIDString];

  return v3;
}

@end