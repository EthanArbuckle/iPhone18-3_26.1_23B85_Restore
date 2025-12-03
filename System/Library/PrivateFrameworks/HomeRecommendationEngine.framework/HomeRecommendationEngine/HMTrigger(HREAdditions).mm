@interface HMTrigger(HREAdditions)
+ (id)_hre_hashForPresenceEvent:()HREAdditions inHome:verbose:;
+ (id)hre_verboseHashForEvent:()HREAdditions inHome:;
- (id)hre_triggerComparisonIdentifierInHome:()HREAdditions;
@end

@implementation HMTrigger(HREAdditions)

- (id)hre_triggerComparisonIdentifierInHome:()HREAdditions
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  objc_opt_class();
  selfCopy = self;
  if (objc_opt_isKindOfClass())
  {
    v8 = selfCopy;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (v9)
  {
    events = [v9 events];
    v24 = MEMORY[0x277D85DD0];
    v25 = 3221225472;
    v26 = __65__HMTrigger_HREAdditions__hre_triggerComparisonIdentifierInHome___block_invoke;
    v27 = &unk_2797776A0;
    v28 = selfCopy;
    v29 = v4;
    v11 = [events na_map:&v24];
    v12 = [v11 sortedArrayUsingComparator:&__block_literal_global_16];
    v13 = [v12 componentsJoinedByString:@"-"];
  }

  else
  {
    v13 = 0;
  }

  objc_opt_class();
  v14 = selfCopy;
  if (objc_opt_isKindOfClass())
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  if (v16)
  {
    v17 = MEMORY[0x277CCACA8];
    fireDate = [v16 fireDate];
    recurrence = [v16 recurrence];
    v20 = [v17 stringWithFormat:@"%@-%@", fireDate, recurrence];

    v13 = v20;
  }

  v21 = &stru_286657A08;
  if (v13)
  {
    v21 = v13;
  }

  v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", v6, v21, v24, v25, v26, v27, v28];

  return v22;
}

+ (id)hre_verboseHashForEvent:()HREAdditions inHome:
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  v8 = v6;
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (v10)
  {
    characteristic = [v10 characteristic];
    hre_triggeringValues = [v10 hre_triggeringValues];
    v13 = [hre_triggeringValues count];

    v14 = MEMORY[0x277CCACA8];
    uniqueIdentifier = [characteristic uniqueIdentifier];
    if (v13 != 1)
    {
      thresholdRange = [v10 thresholdRange];
      minValue = [thresholdRange minValue];
      thresholdRange2 = [v10 thresholdRange];
      maxValue = [thresholdRange2 maxValue];
      v21 = [v14 stringWithFormat:@"thresholdCharacteristic:%@, range:(min:%@, max:%@)", uniqueIdentifier, minValue, maxValue];

      goto LABEL_14;
    }

    thresholdRange = [v10 hre_triggeringValues];
    minValue = [thresholdRange firstObject];
    [v14 stringWithFormat:@"characteristic:%@, targetValue:%@", uniqueIdentifier, minValue];
  }

  else
  {
    objc_opt_class();
    characteristic = v8;
    if (objc_opt_isKindOfClass())
    {
      v18 = characteristic;
    }

    else
    {
      v18 = 0;
    }

    v19 = v18;

    if (!v19)
    {
      objc_opt_class();
      uniqueIdentifier = characteristic;
      if (objc_opt_isKindOfClass())
      {
        v25 = uniqueIdentifier;
      }

      else
      {
        v25 = 0;
      }

      v26 = v25;

      if (v26)
      {
        v27 = MEMORY[0x277CCACA8];
        thresholdRange = [v26 significantEvent];
        offset = [v26 offset];
        v21 = [v27 stringWithFormat:@"timeEvent:%@, offset:%@", thresholdRange, offset];
      }

      else
      {
        objc_opt_class();
        v29 = uniqueIdentifier;
        if (objc_opt_isKindOfClass())
        {
          v30 = v29;
        }

        else
        {
          v30 = 0;
        }

        thresholdRange = v30;

        if (thresholdRange)
        {
          [self _hre_hashForPresenceEvent:thresholdRange inHome:v7 verbose:1];
        }

        else
        {
          [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v29];
        }
        v21 = ;
        uniqueIdentifier = 0;
      }

      characteristic = 0;
      goto LABEL_15;
    }

    uniqueIdentifier = [v19 characteristic];
    v20 = MEMORY[0x277CCACA8];
    thresholdRange = [uniqueIdentifier uniqueIdentifier];
    minValue = [v19 triggerValue];
    [v20 stringWithFormat:@"characteristic:%@, targetValue:%@", thresholdRange, minValue];
  }
  v21 = ;
LABEL_14:

LABEL_15:

  return v21;
}

+ (id)_hre_hashForPresenceEvent:()HREAdditions inHome:verbose:
{
  v7 = a3;
  v8 = a4;
  presenceEventType = [v7 presenceEventType];
  users = [v8 users];
  v11 = [users mutableCopy];

  currentUser = [v8 currentUser];

  [v11 removeObject:currentUser];
  v13 = &stru_286657A08;
  if ([v11 count] && a5)
  {
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"userType:%lu", objc_msgSend(v7, "presenceUserType")];
  }

  if (![v11 count] || (a5 & 1) == 0)
  {
    v14 = 2;
    if (presenceEventType != 4)
    {
      v14 = presenceEventType;
    }

    if (presenceEventType == 3)
    {
      presenceEventType = 1;
    }

    else
    {
      presenceEventType = v14;
    }
  }

  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"presenceEventType:%lu, %@", presenceEventType, v13];

  return v15;
}

@end