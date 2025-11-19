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
  v7 = a1;
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (v9)
  {
    v10 = [v9 events];
    v24 = MEMORY[0x277D85DD0];
    v25 = 3221225472;
    v26 = __65__HMTrigger_HREAdditions__hre_triggerComparisonIdentifierInHome___block_invoke;
    v27 = &unk_2797776A0;
    v28 = v7;
    v29 = v4;
    v11 = [v10 na_map:&v24];
    v12 = [v11 sortedArrayUsingComparator:&__block_literal_global_16];
    v13 = [v12 componentsJoinedByString:@"-"];
  }

  else
  {
    v13 = 0;
  }

  objc_opt_class();
  v14 = v7;
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
    v18 = [v16 fireDate];
    v19 = [v16 recurrence];
    v20 = [v17 stringWithFormat:@"%@-%@", v18, v19];

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
    v11 = [v10 characteristic];
    v12 = [v10 hre_triggeringValues];
    v13 = [v12 count];

    v14 = MEMORY[0x277CCACA8];
    v15 = [v11 uniqueIdentifier];
    if (v13 != 1)
    {
      v16 = [v10 thresholdRange];
      v17 = [v16 minValue];
      v22 = [v10 thresholdRange];
      v23 = [v22 maxValue];
      v21 = [v14 stringWithFormat:@"thresholdCharacteristic:%@, range:(min:%@, max:%@)", v15, v17, v23];

      goto LABEL_14;
    }

    v16 = [v10 hre_triggeringValues];
    v17 = [v16 firstObject];
    [v14 stringWithFormat:@"characteristic:%@, targetValue:%@", v15, v17];
  }

  else
  {
    objc_opt_class();
    v11 = v8;
    if (objc_opt_isKindOfClass())
    {
      v18 = v11;
    }

    else
    {
      v18 = 0;
    }

    v19 = v18;

    if (!v19)
    {
      objc_opt_class();
      v15 = v11;
      if (objc_opt_isKindOfClass())
      {
        v25 = v15;
      }

      else
      {
        v25 = 0;
      }

      v26 = v25;

      if (v26)
      {
        v27 = MEMORY[0x277CCACA8];
        v16 = [v26 significantEvent];
        v28 = [v26 offset];
        v21 = [v27 stringWithFormat:@"timeEvent:%@, offset:%@", v16, v28];
      }

      else
      {
        objc_opt_class();
        v29 = v15;
        if (objc_opt_isKindOfClass())
        {
          v30 = v29;
        }

        else
        {
          v30 = 0;
        }

        v16 = v30;

        if (v16)
        {
          [a1 _hre_hashForPresenceEvent:v16 inHome:v7 verbose:1];
        }

        else
        {
          [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v29];
        }
        v21 = ;
        v15 = 0;
      }

      v11 = 0;
      goto LABEL_15;
    }

    v15 = [v19 characteristic];
    v20 = MEMORY[0x277CCACA8];
    v16 = [v15 uniqueIdentifier];
    v17 = [v19 triggerValue];
    [v20 stringWithFormat:@"characteristic:%@, targetValue:%@", v16, v17];
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
  v9 = [v7 presenceEventType];
  v10 = [v8 users];
  v11 = [v10 mutableCopy];

  v12 = [v8 currentUser];

  [v11 removeObject:v12];
  v13 = &stru_286657A08;
  if ([v11 count] && a5)
  {
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"userType:%lu", objc_msgSend(v7, "presenceUserType")];
  }

  if (![v11 count] || (a5 & 1) == 0)
  {
    v14 = 2;
    if (v9 != 4)
    {
      v14 = v9;
    }

    if (v9 == 3)
    {
      v9 = 1;
    }

    else
    {
      v9 = v14;
    }
  }

  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"presenceEventType:%lu, %@", v9, v13];

  return v15;
}

@end