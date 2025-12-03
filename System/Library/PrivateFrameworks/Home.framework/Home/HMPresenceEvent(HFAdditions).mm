@interface HMPresenceEvent(HFAdditions)
+ (uint64_t)hf_locationEventTypeForPresenceEventType:()HFAdditions;
+ (uint64_t)hf_presenceDisableReasonsForHome:()HFAdditions;
- (uint64_t)hf_activationGranularity;
- (uint64_t)hf_eventType;
@end

@implementation HMPresenceEvent(HFAdditions)

+ (uint64_t)hf_locationEventTypeForPresenceEventType:()HFAdditions
{
  if ((a3 - 1) < 4)
  {
    return qword_20DD97330[a3 - 1];
  }

  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  NSLog(&cfstr_UnexpectedEven_0.isa, v4);

  return 0;
}

+ (uint64_t)hf_presenceDisableReasonsForHome:()HFAdditions
{
  v3 = a3;
  currentUser = [v3 currentUser];
  v5 = [v3 homeAccessControlForUser:currentUser];

  presenceComputationStatus = [v5 presenceComputationStatus];
  hf_supportsSharedEventAutomation = [v3 hf_supportsSharedEventAutomation];

  v8 = hf_supportsSharedEventAutomation ^ 1u;
  if (presenceComputationStatus == 2 && +[HFUtilities supportsBeingCurrentLocationDevice])
  {
    v8 |= 2uLL;
  }

  if (+[HFUtilities supportsBeingCurrentLocationDevice])
  {
    v9 = +[HFLocationManagerDispatcher sharedDispatcher];
    authorizationStatus = [v9 authorizationStatus];

    if ((authorizationStatus - 3) >= 2)
    {
      v8 |= 2uLL;
    }
  }

  return v8;
}

- (uint64_t)hf_activationGranularity
{
  presenceEventType = [self presenceEventType];
  if ((presenceEventType - 1) < 4)
  {
    return qword_20DD97350[presenceEventType - 1];
  }

  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(self, "presenceEventType")}];
  NSLog(&cfstr_UnexpectedEven_0.isa, v4);

  return 0;
}

- (uint64_t)hf_eventType
{
  v2 = objc_opt_class();
  presenceEventType = [self presenceEventType];

  return [v2 hf_locationEventTypeForPresenceEventType:presenceEventType];
}

@end