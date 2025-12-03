@interface IDSServerBag(CoordinatorAccessors)
- (double)coalesceDelayFromBag;
- (double)coalesceMaxPeriodFromBag;
- (double)coalescePeriodFromBag;
- (double)messageTimeoutFromBag;
- (id)minEnabledVersion;
- (id)nonCoalescingTopicsFromBag;
- (uint64_t)_valuesDefinedAsNumbersInBagForKeys:()CoordinatorAccessors;
- (uint64_t)allRequiredBagCoalescingValuesPresent;
- (uint64_t)allRequiredBagTTLValuesPresent;
- (uint64_t)bagKillSwitchActive;
- (uint64_t)topicAvoidsCoalescing:()CoordinatorAccessors;
- (uint64_t)ttlFromBag;
- (uint64_t)ttlFromDefault;
- (uint64_t)ttlGracePeriodFromBag;
- (uint64_t)ttlWindowFromBag;
@end

@implementation IDSServerBag(CoordinatorAccessors)

- (uint64_t)topicAvoidsCoalescing:()CoordinatorAccessors
{
  v4 = a3;
  nonCoalescingTopicsFromBag = [self nonCoalescingTopicsFromBag];
  v6 = [nonCoalescingTopicsFromBag containsObject:v4];

  return v6;
}

- (uint64_t)ttlFromBag
{
  if ([self ttlFromDefault])
  {

    return [self ttlFromDefault];
  }

  else
  {
    v3 = 1296000;
    v4 = [self objectForKey:@"pds-batch-register-ttl"];
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([self allRequiredBagTTLValuesPresent])
        {
          [v4 doubleValue];
          v3 = v5;
        }
      }
    }

    return v3;
  }
}

- (uint64_t)ttlWindowFromBag
{
  if ([self ttlWindowFromDefault])
  {

    return [self ttlWindowFromDefault];
  }

  else
  {
    v3 = 86400;
    v4 = [self objectForKey:@"pds-batch-heartbeat-window"];
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([self allRequiredBagTTLValuesPresent])
        {
          [v4 doubleValue];
          v3 = v5;
        }
      }
    }

    return v3;
  }
}

- (uint64_t)ttlGracePeriodFromBag
{
  if ([self ttlGracePeriodFromDefault])
  {

    return [self ttlGracePeriodFromDefault];
  }

  else
  {
    v3 = 432000;
    v4 = [self objectForKey:@"pds-batch-heartbeat-before-ttl"];
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([self allRequiredBagTTLValuesPresent])
        {
          [v4 doubleValue];
          v3 = v5;
        }
      }
    }

    return v3;
  }
}

- (double)coalesceDelayFromBag
{
  v2 = [self objectForKey:@"pds-batch-coalescing-delay"];
  v3 = 20.0;
  if (v2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([self allRequiredBagCoalescingValuesPresent])
      {
        [v2 doubleValue];
        v3 = v4;
      }
    }
  }

  return v3;
}

- (double)coalescePeriodFromBag
{
  v2 = [self objectForKey:@"pds-batch-coalescing-period"];
  v3 = 30.0;
  if (v2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([self allRequiredBagCoalescingValuesPresent])
      {
        [v2 doubleValue];
        v3 = v4;
      }
    }
  }

  return v3;
}

- (double)coalesceMaxPeriodFromBag
{
  v1 = [self objectForKey:@"pds-batch-max-coalescing-period"];
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v1 doubleValue];
    v3 = v2;
  }

  else
  {
    v3 = 120.0;
  }

  return v3;
}

- (double)messageTimeoutFromBag
{
  v1 = [self objectForKey:@"pds-message-timeout"];
  v2 = 36000.0;
  if (v1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v1 doubleValue];
      v2 = v3;
    }
  }

  return v2;
}

- (uint64_t)bagKillSwitchActive
{
  v1 = [self objectForKey:@"pds-kit-enabled"];
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = [v1 BOOLValue] ^ 1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)minEnabledVersion
{
  v1 = [self objectForKey:@"pds-min-enabled-version"];
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v1, "intValue")}];
  }

  else
  {
    v2 = &unk_286FBBB88;
  }

  return v2;
}

- (uint64_t)allRequiredBagCoalescingValuesPresent
{
  v6[2] = *MEMORY[0x277D85DE8];
  v6[0] = @"pds-batch-max-coalescing-period";
  v6[1] = @"pds-batch-coalescing-delay";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];
  v3 = [self _valuesDefinedAsNumbersInBagForKeys:v2];

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

- (uint64_t)allRequiredBagTTLValuesPresent
{
  v6[3] = *MEMORY[0x277D85DE8];
  v6[0] = @"pds-batch-register-ttl";
  v6[1] = @"pds-batch-heartbeat-window";
  v6[2] = @"pds-batch-heartbeat-before-ttl";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:3];
  v3 = [self _valuesDefinedAsNumbersInBagForKeys:v2];

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

- (id)nonCoalescingTopicsFromBag
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v3 = [self objectForKey:@"pds-batch-non-coalescing-topics"];
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v4 = v3;
      v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v13;
        do
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v13 != v7)
            {
              objc_enumerationMutation(v4);
            }

            v9 = *(*(&v12 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v2 addObject:{v9, v12}];
            }
          }

          v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
        }

        while (v6);
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];

  return v2;
}

- (uint64_t)ttlFromDefault
{
  mEMORY[0x277D192C8] = [MEMORY[0x277D192C8] sharedDefaults];
  v1 = [mEMORY[0x277D192C8] appValueForKey:@"pds-ttl"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v3 = 0;
      goto LABEL_7;
    }

    v2 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v1, "intValue")}];
  }

  v3 = v2;
LABEL_7:
  intValue = [v3 intValue];

  return intValue;
}

- (uint64_t)_valuesDefinedAsNumbersInBagForKeys:()CoordinatorAccessors
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    v8 = 1;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = [self objectForKey:*(*(&v13 + 1) + 8 * i)];
        if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          v8 = 0;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  else
  {
    v8 = 1;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v8 & 1;
}

@end