@interface DNDSModeAssertionDetailsRecord
+ (id)recordForAssertionDetails:(id)details;
+ (id)recordForDictionary:(id)dictionary keys:(id *)keys;
- (id)dictionaryWithKeys:(id *)keys options:(unint64_t)options;
- (id)object;
@end

@implementation DNDSModeAssertionDetailsRecord

+ (id)recordForDictionary:(id)dictionary keys:(id *)keys
{
  if (dictionary)
  {
    dictionaryCopy = dictionary;
    v6 = objc_alloc_init(DNDSModeAssertionDetailsRecord);
    v7 = [dictionaryCopy bs_safeStringForKey:keys->var2.var0];
    [(DNDSModeAssertionDetailsRecord *)v6 setIdentifier:v7];

    v8 = [dictionaryCopy bs_safeStringForKey:keys->var2.var1];
    [(DNDSModeAssertionDetailsRecord *)v6 setModeIdentifier:v8];

    v9 = [dictionaryCopy bs_safeNumberForKey:keys->var2.var2];
    [(DNDSModeAssertionDetailsRecord *)v6 setModeConfigurationModifiedDate:v9];

    v10 = [dictionaryCopy bs_safeNumberForKey:keys->var2.var3];
    [(DNDSModeAssertionDetailsRecord *)v6 setUserVisibleEndDate:v10];

    v11 = [dictionaryCopy bs_safeDictionaryForKey:keys->var2.var4];
    v12 = [DNDSModeAssertionLifetimeRecord recordForDictionary:v11 keys:keys];
    [(DNDSModeAssertionDetailsRecord *)v6 setLifetime:v12];

    v13 = [dictionaryCopy bs_safeStringForKey:keys->var2.var5];

    [(DNDSModeAssertionDetailsRecord *)v6 setReason:v13];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)dictionaryWithKeys:(id *)keys options:(unint64_t)options
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  identifier = [(DNDSModeAssertionDetailsRecord *)self identifier];
  [dictionary bs_setSafeObject:identifier forKey:keys->var2.var0];

  modeIdentifier = [(DNDSModeAssertionDetailsRecord *)self modeIdentifier];
  [dictionary bs_setSafeObject:modeIdentifier forKey:keys->var2.var1];

  modeConfigurationModifiedDate = [(DNDSModeAssertionDetailsRecord *)self modeConfigurationModifiedDate];
  [dictionary bs_setSafeObject:modeConfigurationModifiedDate forKey:keys->var2.var2];

  userVisibleEndDate = [(DNDSModeAssertionDetailsRecord *)self userVisibleEndDate];
  [dictionary bs_setSafeObject:userVisibleEndDate forKey:keys->var2.var3];

  lifetime = [(DNDSModeAssertionDetailsRecord *)self lifetime];
  v13 = [lifetime dictionaryWithKeys:keys options:options];
  [dictionary bs_setSafeObject:v13 forKey:keys->var2.var4];

  reason = [(DNDSModeAssertionDetailsRecord *)self reason];
  [dictionary bs_setSafeObject:reason forKey:keys->var2.var5];

  if (options)
  {
    userVisibleEndDate2 = [(DNDSModeAssertionDetailsRecord *)self userVisibleEndDate];
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@Local", keys->var2.var3];
    [dictionary dnds_setSafeLocalDateForTimestamp:userVisibleEndDate2 key:v16];
  }

  return dictionary;
}

+ (id)recordForAssertionDetails:(id)details
{
  if (details)
  {
    detailsCopy = details;
    v4 = objc_alloc_init(DNDSModeAssertionDetailsRecord);
    identifier = [detailsCopy identifier];
    [(DNDSModeAssertionDetailsRecord *)v4 setIdentifier:identifier];

    modeIdentifier = [detailsCopy modeIdentifier];
    [(DNDSModeAssertionDetailsRecord *)v4 setModeIdentifier:modeIdentifier];

    v7 = MEMORY[0x277CCABB0];
    modeConfigurationModifiedDate = [detailsCopy modeConfigurationModifiedDate];
    v9 = [v7 dnds_safeNumberWithDate:modeConfigurationModifiedDate];
    [(DNDSModeAssertionDetailsRecord *)v4 setModeConfigurationModifiedDate:v9];

    v10 = MEMORY[0x277CCABB0];
    userVisibleEndDate = [detailsCopy userVisibleEndDate];
    v12 = [v10 dnds_safeNumberWithDate:userVisibleEndDate];
    [(DNDSModeAssertionDetailsRecord *)v4 setUserVisibleEndDate:v12];

    lifetime = [detailsCopy lifetime];
    v14 = [DNDSModeAssertionLifetimeRecord recordForAssertionLifetime:lifetime];
    [(DNDSModeAssertionDetailsRecord *)v4 setLifetime:v14];

    v15 = MEMORY[0x277CCACA8];
    reason = [detailsCopy reason];

    v17 = [v15 dnds_stringForAssertionReason:reason];
    [(DNDSModeAssertionDetailsRecord *)v4 setReason:v17];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)object
{
  identifier = [(DNDSModeAssertionDetailsRecord *)self identifier];
  modeIdentifier = [(DNDSModeAssertionDetailsRecord *)self modeIdentifier];
  lifetime = [(DNDSModeAssertionDetailsRecord *)self lifetime];
  object = [lifetime object];
  v7 = object;
  v8 = 0;
  if (identifier && modeIdentifier)
  {
    if (!lifetime || object)
    {
      v8 = objc_alloc_init(MEMORY[0x277D05A40]);
      [v8 setIdentifier:identifier];
      [v8 setModeIdentifier:modeIdentifier];
      modeConfigurationModifiedDate = [(DNDSModeAssertionDetailsRecord *)self modeConfigurationModifiedDate];
      v10 = modeConfigurationModifiedDate;
      if (modeConfigurationModifiedDate)
      {
        v11 = MEMORY[0x277CBEAA8];
        [modeConfigurationModifiedDate doubleValue];
        v12 = [v11 dateWithTimeIntervalSinceReferenceDate:?];
      }

      else
      {
        v12 = 0;
      }

      [v8 setModeConfigurationModifiedDate:v12];
      userVisibleEndDate = [(DNDSModeAssertionDetailsRecord *)self userVisibleEndDate];
      v14 = userVisibleEndDate;
      if (userVisibleEndDate)
      {
        v15 = MEMORY[0x277CBEAA8];
        [userVisibleEndDate doubleValue];
        v16 = [v15 dateWithTimeIntervalSinceReferenceDate:?];
      }

      else
      {
        v16 = 0;
      }

      [v8 setUserVisibleEndDate:v16];
      [v8 setLifetime:v7];
      reason = [(DNDSModeAssertionDetailsRecord *)self reason];
      [v8 setReason:{objc_msgSend(reason, "dnds_assertionReasonValue")}];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

@end