@interface DNDSModeResolutionService
- (BOOL)_preferModeAssertion:(id)a3 toModeAssertion:(id)a4;
- (id)recalculateModeForSnapshot:(id)a3;
- (unint64_t)_priorityForModeAssertion:(id)a3;
@end

@implementation DNDSModeResolutionService

- (id)recalculateModeForSnapshot:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 assertions];
  v5 = [v4 count];

  if (v5)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v6 = [v3 assertions];
    v7 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
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
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v22 + 1) + 8 * i);
          v13 = [v3 activeAssertionUUIDs];
          v14 = [v12 UUID];
          v15 = [v13 containsObject:v14];

          if (v15 && [(DNDSModeResolutionService *)self _preferModeAssertion:v12 toModeAssertion:v9])
          {
            v16 = v12;

            v9 = v16;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
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

  v17 = [v9 details];
  v18 = [v17 modeIdentifier];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (BOOL)_preferModeAssertion:(id)a3 toModeAssertion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [(DNDSModeResolutionService *)self _priorityForModeAssertion:v7];
  }

  else
  {
    v8 = 0;
  }

  v9 = [(DNDSModeResolutionService *)self _priorityForModeAssertion:v6];
  if (v9 <= v8)
  {
    if (v9 == v8)
    {
      v11 = [v7 startDate];
      v12 = [v6 startDate];
      v10 = [v11 compare:v12] == -1;
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

- (unint64_t)_priorityForModeAssertion:(id)a3
{
  v3 = a3;
  v4 = [v3 source];
  v5 = [v4 clientIdentifier];

  v6 = [v3 details];

  v7 = [v6 modeIdentifier];
  v8 = v7;
  v9 = @"*";
  if (v7)
  {
    v9 = v7;
  }

  v10 = v9;

  if (_intersect_clientIdentifier_modeIdentifier_priority_onceToken != -1)
  {
    [DNDSModeResolutionService _priorityForModeAssertion:];
  }

  v11 = _intersect_clientIdentifier_modeIdentifier_priority_dict;
  v12 = v5;
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

  v16 = [v15 unsignedIntegerValue];

  return v16;
}

@end