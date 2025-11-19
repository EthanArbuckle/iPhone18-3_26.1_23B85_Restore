@interface CCItemField(CCSiriCompanionContextAudioContent_subscriptionStatus)
- (uint64_t)siriCompanionContextAudioContentSubscriptionStatus;
@end

@implementation CCItemField(CCSiriCompanionContextAudioContent_subscriptionStatus)

- (uint64_t)siriCompanionContextAudioContentSubscriptionStatus
{
  LODWORD(result) = [a1 uint32Value];
  if (result >= 4)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

@end