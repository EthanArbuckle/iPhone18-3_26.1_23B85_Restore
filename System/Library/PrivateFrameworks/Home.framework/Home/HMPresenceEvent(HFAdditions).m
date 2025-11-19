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
  v4 = [v3 currentUser];
  v5 = [v3 homeAccessControlForUser:v4];

  v6 = [v5 presenceComputationStatus];
  v7 = [v3 hf_supportsSharedEventAutomation];

  v8 = v7 ^ 1u;
  if (v6 == 2 && +[HFUtilities supportsBeingCurrentLocationDevice])
  {
    v8 |= 2uLL;
  }

  if (+[HFUtilities supportsBeingCurrentLocationDevice])
  {
    v9 = +[HFLocationManagerDispatcher sharedDispatcher];
    v10 = [v9 authorizationStatus];

    if ((v10 - 3) >= 2)
    {
      v8 |= 2uLL;
    }
  }

  return v8;
}

- (uint64_t)hf_activationGranularity
{
  v2 = [a1 presenceEventType];
  if ((v2 - 1) < 4)
  {
    return qword_20DD97350[v2 - 1];
  }

  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a1, "presenceEventType")}];
  NSLog(&cfstr_UnexpectedEven_0.isa, v4);

  return 0;
}

- (uint64_t)hf_eventType
{
  v2 = objc_opt_class();
  v3 = [a1 presenceEventType];

  return [v2 hf_locationEventTypeForPresenceEventType:v3];
}

@end