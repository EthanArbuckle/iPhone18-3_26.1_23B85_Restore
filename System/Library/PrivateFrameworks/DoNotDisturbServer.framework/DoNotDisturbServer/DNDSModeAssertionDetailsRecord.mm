@interface DNDSModeAssertionDetailsRecord
+ (id)recordForAssertionDetails:(id)a3;
+ (id)recordForDictionary:(id)a3 keys:(id *)a4;
- (id)dictionaryWithKeys:(id *)a3 options:(unint64_t)a4;
- (id)object;
@end

@implementation DNDSModeAssertionDetailsRecord

+ (id)recordForDictionary:(id)a3 keys:(id *)a4
{
  if (a3)
  {
    v5 = a3;
    v6 = objc_alloc_init(DNDSModeAssertionDetailsRecord);
    v7 = [v5 bs_safeStringForKey:a4->var2.var0];
    [(DNDSModeAssertionDetailsRecord *)v6 setIdentifier:v7];

    v8 = [v5 bs_safeStringForKey:a4->var2.var1];
    [(DNDSModeAssertionDetailsRecord *)v6 setModeIdentifier:v8];

    v9 = [v5 bs_safeNumberForKey:a4->var2.var2];
    [(DNDSModeAssertionDetailsRecord *)v6 setModeConfigurationModifiedDate:v9];

    v10 = [v5 bs_safeNumberForKey:a4->var2.var3];
    [(DNDSModeAssertionDetailsRecord *)v6 setUserVisibleEndDate:v10];

    v11 = [v5 bs_safeDictionaryForKey:a4->var2.var4];
    v12 = [DNDSModeAssertionLifetimeRecord recordForDictionary:v11 keys:a4];
    [(DNDSModeAssertionDetailsRecord *)v6 setLifetime:v12];

    v13 = [v5 bs_safeStringForKey:a4->var2.var5];

    [(DNDSModeAssertionDetailsRecord *)v6 setReason:v13];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)dictionaryWithKeys:(id *)a3 options:(unint64_t)a4
{
  v7 = [MEMORY[0x277CBEB38] dictionary];
  v8 = [(DNDSModeAssertionDetailsRecord *)self identifier];
  [v7 bs_setSafeObject:v8 forKey:a3->var2.var0];

  v9 = [(DNDSModeAssertionDetailsRecord *)self modeIdentifier];
  [v7 bs_setSafeObject:v9 forKey:a3->var2.var1];

  v10 = [(DNDSModeAssertionDetailsRecord *)self modeConfigurationModifiedDate];
  [v7 bs_setSafeObject:v10 forKey:a3->var2.var2];

  v11 = [(DNDSModeAssertionDetailsRecord *)self userVisibleEndDate];
  [v7 bs_setSafeObject:v11 forKey:a3->var2.var3];

  v12 = [(DNDSModeAssertionDetailsRecord *)self lifetime];
  v13 = [v12 dictionaryWithKeys:a3 options:a4];
  [v7 bs_setSafeObject:v13 forKey:a3->var2.var4];

  v14 = [(DNDSModeAssertionDetailsRecord *)self reason];
  [v7 bs_setSafeObject:v14 forKey:a3->var2.var5];

  if (a4)
  {
    v15 = [(DNDSModeAssertionDetailsRecord *)self userVisibleEndDate];
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@Local", a3->var2.var3];
    [v7 dnds_setSafeLocalDateForTimestamp:v15 key:v16];
  }

  return v7;
}

+ (id)recordForAssertionDetails:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = objc_alloc_init(DNDSModeAssertionDetailsRecord);
    v5 = [v3 identifier];
    [(DNDSModeAssertionDetailsRecord *)v4 setIdentifier:v5];

    v6 = [v3 modeIdentifier];
    [(DNDSModeAssertionDetailsRecord *)v4 setModeIdentifier:v6];

    v7 = MEMORY[0x277CCABB0];
    v8 = [v3 modeConfigurationModifiedDate];
    v9 = [v7 dnds_safeNumberWithDate:v8];
    [(DNDSModeAssertionDetailsRecord *)v4 setModeConfigurationModifiedDate:v9];

    v10 = MEMORY[0x277CCABB0];
    v11 = [v3 userVisibleEndDate];
    v12 = [v10 dnds_safeNumberWithDate:v11];
    [(DNDSModeAssertionDetailsRecord *)v4 setUserVisibleEndDate:v12];

    v13 = [v3 lifetime];
    v14 = [DNDSModeAssertionLifetimeRecord recordForAssertionLifetime:v13];
    [(DNDSModeAssertionDetailsRecord *)v4 setLifetime:v14];

    v15 = MEMORY[0x277CCACA8];
    v16 = [v3 reason];

    v17 = [v15 dnds_stringForAssertionReason:v16];
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
  v3 = [(DNDSModeAssertionDetailsRecord *)self identifier];
  v4 = [(DNDSModeAssertionDetailsRecord *)self modeIdentifier];
  v5 = [(DNDSModeAssertionDetailsRecord *)self lifetime];
  v6 = [v5 object];
  v7 = v6;
  v8 = 0;
  if (v3 && v4)
  {
    if (!v5 || v6)
    {
      v8 = objc_alloc_init(MEMORY[0x277D05A40]);
      [v8 setIdentifier:v3];
      [v8 setModeIdentifier:v4];
      v9 = [(DNDSModeAssertionDetailsRecord *)self modeConfigurationModifiedDate];
      v10 = v9;
      if (v9)
      {
        v11 = MEMORY[0x277CBEAA8];
        [v9 doubleValue];
        v12 = [v11 dateWithTimeIntervalSinceReferenceDate:?];
      }

      else
      {
        v12 = 0;
      }

      [v8 setModeConfigurationModifiedDate:v12];
      v13 = [(DNDSModeAssertionDetailsRecord *)self userVisibleEndDate];
      v14 = v13;
      if (v13)
      {
        v15 = MEMORY[0x277CBEAA8];
        [v13 doubleValue];
        v16 = [v15 dateWithTimeIntervalSinceReferenceDate:?];
      }

      else
      {
        v16 = 0;
      }

      [v8 setUserVisibleEndDate:v16];
      [v8 setLifetime:v7];
      v17 = [(DNDSModeAssertionDetailsRecord *)self reason];
      [v8 setReason:{objc_msgSend(v17, "dnds_assertionReasonValue")}];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

@end