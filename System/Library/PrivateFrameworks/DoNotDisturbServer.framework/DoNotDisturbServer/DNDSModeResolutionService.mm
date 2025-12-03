@interface DNDSModeResolutionService
- (BOOL)_preferModeAssertion:(id)assertion toModeAssertion:(id)modeAssertion;
- (id)recalculateModeForSnapshot:(id)snapshot;
- (unint64_t)_priorityForModeAssertion:(id)assertion;
@end

@implementation DNDSModeResolutionService

- (id)recalculateModeForSnapshot:(id)snapshot
{
  v27 = *MEMORY[0x277D85DE8];
  snapshotCopy = snapshot;
  assertions = [snapshotCopy assertions];
  v5 = [assertions count];

  if (v5)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    assertions2 = [snapshotCopy assertions];
    v7 = [assertions2 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v23;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(assertions2);
          }

          v12 = *(*(&v22 + 1) + 8 * i);
          activeAssertionUUIDs = [snapshotCopy activeAssertionUUIDs];
          uUID = [v12 UUID];
          v15 = [activeAssertionUUIDs containsObject:uUID];

          if (v15 && [(DNDSModeResolutionService *)self _preferModeAssertion:v12 toModeAssertion:v9])
          {
            v16 = v12;

            v9 = v16;
          }
        }

        v8 = [assertions2 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v8);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  details = [v9 details];
  modeIdentifier = [details modeIdentifier];

  v19 = *MEMORY[0x277D85DE8];

  return modeIdentifier;
}

- (BOOL)_preferModeAssertion:(id)assertion toModeAssertion:(id)modeAssertion
{
  assertionCopy = assertion;
  modeAssertionCopy = modeAssertion;
  if (modeAssertionCopy)
  {
    v8 = [(DNDSModeResolutionService *)self _priorityForModeAssertion:modeAssertionCopy];
  }

  else
  {
    v8 = 0;
  }

  v9 = [(DNDSModeResolutionService *)self _priorityForModeAssertion:assertionCopy];
  if (v9 <= v8)
  {
    if (v9 == v8)
    {
      startDate = [modeAssertionCopy startDate];
      startDate2 = [assertionCopy startDate];
      v10 = [startDate compare:startDate2] == -1;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (unint64_t)_priorityForModeAssertion:(id)assertion
{
  assertionCopy = assertion;
  source = [assertionCopy source];
  clientIdentifier = [source clientIdentifier];

  details = [assertionCopy details];

  modeIdentifier = [details modeIdentifier];
  v8 = modeIdentifier;
  v9 = @"*";
  if (modeIdentifier)
  {
    v9 = modeIdentifier;
  }

  v10 = v9;

  if (_intersect_clientIdentifier_modeIdentifier_priority_onceToken != -1)
  {
    [DNDSModeResolutionService _priorityForModeAssertion:];
  }

  v11 = _intersect_clientIdentifier_modeIdentifier_priority_dict;
  v12 = clientIdentifier;
  v13 = v12;
  if ([(__CFString *)v12 hasSuffix:@".private.schedule"])
  {
    v13 = @"com.apple.donotdisturb.private.schedule";
  }

  if ([(__CFString *)v12 containsString:@".private.region."])
  {

    v13 = @"com.apple.donotdisturb.private.region";
  }

  v14 = [v11 objectForKey:v13];
  if (!v14)
  {
    v14 = [v11 objectForKey:@"*"];
  }

  v15 = [v14 objectForKey:v10];
  if (!v15)
  {
    v15 = [v14 objectForKey:@"*"];
  }

  unsignedIntegerValue = [v15 unsignedIntegerValue];

  return unsignedIntegerValue;
}

@end