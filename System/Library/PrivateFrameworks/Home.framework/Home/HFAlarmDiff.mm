@interface HFAlarmDiff
+ (id)generateAlarmDiffFromSet:(id)set toSet:(id)toSet;
- (BOOL)inputWasEqual;
- (id)description;
@end

@implementation HFAlarmDiff

+ (id)generateAlarmDiffFromSet:(id)set toSet:(id)toSet
{
  v45 = *MEMORY[0x277D85DE8];
  setCopy = set;
  toSetCopy = toSet;
  if ([MEMORY[0x277D296D0] hf_areAlarms:setCopy equalToAlarms:? includeModificationDate:?])
  {
    v6 = objc_opt_new();
    [v6 setUnmodifiedAlarms:setCopy];
  }

  else
  {
    v7 = objc_opt_new();
    v32 = objc_opt_new();
    v29 = objc_opt_new();
    v8 = objc_opt_new();
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v28 = setCopy;
    v9 = setCopy;
    v10 = [v9 countByEnumeratingWithState:&v39 objects:v44 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v40;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v40 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v39 + 1) + 8 * i);
          v38[0] = MEMORY[0x277D85DD0];
          v38[1] = 3221225472;
          v38[2] = __46__HFAlarmDiff_generateAlarmDiffFromSet_toSet___block_invoke;
          v38[3] = &unk_277DFBFA0;
          v38[4] = v14;
          v15 = [toSetCopy na_firstObjectPassingTest:{v38, v28}];
          v16 = v7;
          if (v15)
          {
            if ([v15 isEqualIgnoringLastModifiedDate:v14])
            {
              v16 = v8;
            }

            else
            {
              v16 = v32;
            }
          }

          [v16 addObject:v14];
        }

        v11 = [v9 countByEnumeratingWithState:&v39 objects:v44 count:16];
      }

      while (v11);
    }

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = toSetCopy;
    v17 = [obj countByEnumeratingWithState:&v34 objects:v43 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v35;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v35 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v34 + 1) + 8 * j);
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 3221225472;
          aBlock[2] = __46__HFAlarmDiff_generateAlarmDiffFromSet_toSet___block_invoke_2;
          aBlock[3] = &unk_277DFBFA0;
          aBlock[4] = v21;
          v22 = _Block_copy(aBlock);
          v23 = [v7 na_any:v22];
          v24 = [v32 na_any:v22];
          v25 = [v8 na_any:v22];
          if ((v23 & 1) == 0 && (v24 & 1) == 0 && (v25 & 1) == 0)
          {
            [v29 addObject:v21];
          }
        }

        v18 = [obj countByEnumeratingWithState:&v34 objects:v43 count:16];
      }

      while (v18);
    }

    v6 = objc_opt_new();
    [v6 setAddedAlarms:v7];
    [v6 setDeletedAlarms:v29];
    [v6 setUpdatedAlarms:v32];
    [v6 setUnmodifiedAlarms:v8];

    setCopy = v28;
  }

  v26 = *MEMORY[0x277D85DE8];

  return v6;
}

uint64_t __46__HFAlarmDiff_generateAlarmDiffFromSet_toSet___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 alarmID];
  v4 = [*(a1 + 32) alarmID];
  v5 = [v3 isEqual:v4];

  return v5;
}

uint64_t __46__HFAlarmDiff_generateAlarmDiffFromSet_toSet___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 alarmID];
  v4 = [*(a1 + 32) alarmID];
  v5 = [v3 isEqual:v4];

  return v5;
}

- (BOOL)inputWasEqual
{
  addedAlarms = [(HFAlarmDiff *)self addedAlarms];
  if ([addedAlarms count])
  {
    v4 = 0;
  }

  else
  {
    deletedAlarms = [(HFAlarmDiff *)self deletedAlarms];
    if ([deletedAlarms count])
    {
      v4 = 0;
    }

    else
    {
      updatedAlarms = [(HFAlarmDiff *)self updatedAlarms];
      v4 = [updatedAlarms count] == 0;
    }
  }

  return v4;
}

- (id)description
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  addedAlarms = [(HFAlarmDiff *)self addedAlarms];
  allObjects = [addedAlarms allObjects];
  [v3 appendArraySection:allObjects withName:@"addedAlarms" skipIfEmpty:1 objectTransformer:0];

  deletedAlarms = [(HFAlarmDiff *)self deletedAlarms];
  allObjects2 = [deletedAlarms allObjects];
  [v3 appendArraySection:allObjects2 withName:@"deletedAlarms" skipIfEmpty:1 objectTransformer:0];

  updatedAlarms = [(HFAlarmDiff *)self updatedAlarms];
  allObjects3 = [updatedAlarms allObjects];
  [v3 appendArraySection:allObjects3 withName:@"updatedAlarms" skipIfEmpty:1 objectTransformer:0];

  unmodifiedAlarms = [(HFAlarmDiff *)self unmodifiedAlarms];
  allObjects4 = [unmodifiedAlarms allObjects];
  [v3 appendArraySection:allObjects4 withName:@"unmodifiedAlarms" skipIfEmpty:1 objectTransformer:0];

  build = [v3 build];

  return build;
}

@end