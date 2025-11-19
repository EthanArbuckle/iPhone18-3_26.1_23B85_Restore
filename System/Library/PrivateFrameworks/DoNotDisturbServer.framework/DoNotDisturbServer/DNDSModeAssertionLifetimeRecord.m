@interface DNDSModeAssertionLifetimeRecord
+ (id)recordForAssertionLifetime:(id)a3;
+ (id)recordForDictionary:(id)a3 keys:(id *)a4;
- (id)dictionaryWithKeys:(id *)a3 options:(unint64_t)a4;
- (id)object;
- (void)object;
@end

@implementation DNDSModeAssertionLifetimeRecord

+ (id)recordForDictionary:(id)a3 keys:(id *)a4
{
  if (a3)
  {
    v5 = a3;
    v6 = objc_alloc_init(DNDSModeAssertionLifetimeRecord);
    v7 = [v5 bs_safeStringForKey:a4->var3.var0];
    [(DNDSModeAssertionLifetimeRecord *)v6 setLifetimeType:v7];

    v8 = [v5 bs_safeStringForKey:a4->var3.var1];
    [(DNDSModeAssertionLifetimeRecord *)v6 setEventUniqueID:v8];

    v9 = [v5 bs_safeNumberForKey:a4->var3.var2];
    [(DNDSModeAssertionLifetimeRecord *)v6 setOccurrenceDate:v9];

    v10 = [v5 bs_safeNumberForKey:a4->var3.var3];
    [(DNDSModeAssertionLifetimeRecord *)v6 setOnlyDuringEvent:v10];

    v11 = [v5 bs_safeNumberForKey:a4->var3.var4];
    [(DNDSModeAssertionLifetimeRecord *)v6 setStartDate:v11];

    v12 = [v5 bs_safeNumberForKey:a4->var3.var5];
    [(DNDSModeAssertionLifetimeRecord *)v6 setEndDate:v12];

    v13 = [v5 bs_safeStringForKey:a4->var3.var6];
    [(DNDSModeAssertionLifetimeRecord *)v6 setScheduleIdentifier:v13];

    v14 = [v5 bs_safeStringForKey:a4->var3.var7];
    [(DNDSModeAssertionLifetimeRecord *)v6 setBehavior:v14];

    v15 = [v5 bs_safeNumberForKey:a4->var3.var8];
    [(DNDSModeAssertionLifetimeRecord *)v6 setLatitude:v15];

    v16 = [v5 bs_safeNumberForKey:a4->var3.var9];
    [(DNDSModeAssertionLifetimeRecord *)v6 setLongitude:v16];

    v17 = [v5 bs_safeNumberForKey:a4->var3.var10];
    [(DNDSModeAssertionLifetimeRecord *)v6 setRadius:v17];

    v18 = [v5 bs_safeStringForKey:a4->var3.var11];

    [(DNDSModeAssertionLifetimeRecord *)v6 setRegionIdentifier:v18];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)dictionaryWithKeys:(id *)a3 options:(unint64_t)a4
{
  v4 = a4;
  v7 = [MEMORY[0x277CBEB38] dictionary];
  v8 = [(DNDSModeAssertionLifetimeRecord *)self lifetimeType];
  [v7 bs_setSafeObject:v8 forKey:a3->var3.var0];

  v9 = [(DNDSModeAssertionLifetimeRecord *)self eventUniqueID];
  [v7 bs_setSafeObject:v9 forKey:a3->var3.var1];

  v10 = [(DNDSModeAssertionLifetimeRecord *)self occurrenceDate];
  [v7 bs_setSafeObject:v10 forKey:a3->var3.var2];

  v11 = [(DNDSModeAssertionLifetimeRecord *)self onlyDuringEvent];
  [v7 bs_setSafeObject:v11 forKey:a3->var3.var3];

  v12 = [(DNDSModeAssertionLifetimeRecord *)self startDate];
  [v7 bs_setSafeObject:v12 forKey:a3->var3.var4];

  v13 = [(DNDSModeAssertionLifetimeRecord *)self endDate];
  [v7 bs_setSafeObject:v13 forKey:a3->var3.var5];

  v14 = [(DNDSModeAssertionLifetimeRecord *)self scheduleIdentifier];
  [v7 bs_setSafeObject:v14 forKey:a3->var3.var6];

  v15 = [(DNDSModeAssertionLifetimeRecord *)self behavior];
  [v7 bs_setSafeObject:v15 forKey:a3->var3.var7];

  v16 = [(DNDSModeAssertionLifetimeRecord *)self latitude];
  v17 = v16;
  if ((v4 & 2) != 0)
  {

    if (v17)
    {
      [v7 bs_setSafeObject:@"<redacted>" forKey:a3->var3.var8];
    }

    v21 = [(DNDSModeAssertionLifetimeRecord *)self longitude];

    if (v21)
    {
      [v7 bs_setSafeObject:@"<redacted>" forKey:a3->var3.var9];
    }

    v22 = [(DNDSModeAssertionLifetimeRecord *)self radius];

    if (v22)
    {
      [v7 bs_setSafeObject:@"<redacted>" forKey:a3->var3.var10];
    }

    v23 = [(DNDSModeAssertionLifetimeRecord *)self regionIdentifier];

    if (v23)
    {
      [v7 bs_setSafeObject:@"<redacted>" forKey:a3->var3.var11];
    }
  }

  else
  {
    [v7 bs_setSafeObject:v16 forKey:a3->var3.var8];

    v18 = [(DNDSModeAssertionLifetimeRecord *)self longitude];
    [v7 bs_setSafeObject:v18 forKey:a3->var3.var9];

    v19 = [(DNDSModeAssertionLifetimeRecord *)self radius];
    [v7 bs_setSafeObject:v19 forKey:a3->var3.var10];

    v20 = [(DNDSModeAssertionLifetimeRecord *)self regionIdentifier];
    [v7 bs_setSafeObject:v20 forKey:a3->var3.var11];
  }

  if (v4)
  {
    v24 = [(DNDSModeAssertionLifetimeRecord *)self startDate];
    v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@Local", a3->var3.var4];
    [v7 dnds_setSafeLocalDateForTimestamp:v24 key:v25];

    v26 = [(DNDSModeAssertionLifetimeRecord *)self endDate];
    v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@Local", a3->var3.var5];
    [v7 dnds_setSafeLocalDateForTimestamp:v26 key:v27];
  }

  return v7;
}

+ (id)recordForAssertionLifetime:(id)a3
{
  v3 = a3;
  if (!v3)
  {
    v4 = 0;
    goto LABEL_13;
  }

  v4 = objc_alloc_init(DNDSModeAssertionLifetimeRecord);
  v5 = [v3 lifetimeType];
  v6 = [MEMORY[0x277CCACA8] dnds_stringForLifetimeType:v5];
  [(DNDSModeAssertionLifetimeRecord *)v4 setLifetimeType:v6];

  if (v5 > 3)
  {
    if (v5 == 4)
    {
      v35 = v3;
      v36 = [v35 scheduleIdentifier];
      [(DNDSModeAssertionLifetimeRecord *)v4 setScheduleIdentifier:v36];

      v37 = MEMORY[0x277CCACA8];
      v38 = [v35 behavior];

      v13 = [v37 dnds_stringForScheduleLifetimeBehavior:v38];
      [(DNDSModeAssertionLifetimeRecord *)v4 setBehavior:v13];
    }

    else
    {
      if (v5 != 5)
      {
        goto LABEL_13;
      }

      v16 = MEMORY[0x277CCABB0];
      v17 = v3;
      v18 = [v17 region];
      [v18 center];
      v19 = [v16 numberWithDouble:?];
      [(DNDSModeAssertionLifetimeRecord *)v4 setLatitude:v19];

      v20 = MEMORY[0x277CCABB0];
      v21 = [v17 region];
      [v21 center];
      v23 = [v20 numberWithDouble:v22];
      [(DNDSModeAssertionLifetimeRecord *)v4 setLongitude:v23];

      v24 = MEMORY[0x277CCABB0];
      v25 = [v17 region];
      [v25 radius];
      v26 = [v24 numberWithDouble:?];
      [(DNDSModeAssertionLifetimeRecord *)v4 setRadius:v26];

      v13 = [v17 region];

      v27 = [v13 identifier];
      [(DNDSModeAssertionLifetimeRecord *)v4 setRegionIdentifier:v27];
    }
  }

  else if (v5 == 1)
  {
    v28 = v3;
    v29 = [v28 eventUniqueID];
    [(DNDSModeAssertionLifetimeRecord *)v4 setEventUniqueID:v29];

    v30 = MEMORY[0x277CCABB0];
    v31 = [v28 occurrenceDate];
    v32 = [v30 dnds_safeNumberWithDate:v31];
    [(DNDSModeAssertionLifetimeRecord *)v4 setOccurrenceDate:v32];

    v33 = MEMORY[0x277CCABB0];
    v34 = [v28 isOnlyDuringEvent];

    v13 = [v33 numberWithBool:v34];
    [(DNDSModeAssertionLifetimeRecord *)v4 setOnlyDuringEvent:v13];
  }

  else
  {
    if (v5 != 2)
    {
      goto LABEL_13;
    }

    v7 = MEMORY[0x277CCABB0];
    v8 = v3;
    v9 = [v8 dateInterval];
    v10 = [v9 startDate];
    v11 = [v7 dnds_numberWithDate:v10];
    [(DNDSModeAssertionLifetimeRecord *)v4 setStartDate:v11];

    v12 = MEMORY[0x277CCABB0];
    v13 = [v8 dateInterval];

    v14 = [v13 endDate];
    v15 = [v12 dnds_numberWithDate:v14];
    [(DNDSModeAssertionLifetimeRecord *)v4 setEndDate:v15];
  }

LABEL_13:

  return v4;
}

- (id)object
{
  v3 = [(DNDSModeAssertionLifetimeRecord *)self lifetimeType];
  v4 = [v3 dnds_lifetimeTypeValue];

  v5 = 0;
  if (v4 <= 2)
  {
    if (v4 == 1)
    {
      v23 = [(DNDSModeAssertionLifetimeRecord *)self eventUniqueID];
      v29 = [(DNDSModeAssertionLifetimeRecord *)self occurrenceDate];
      v30 = [v29 dnds_dateValue];

      v31 = [(DNDSModeAssertionLifetimeRecord *)self onlyDuringEvent];
      v32 = [v31 BOOLValue];

      if (v23)
      {
        v5 = [objc_alloc(MEMORY[0x277D05940]) initWithEventUniqueID:v23 occurrenceDate:v30 onlyDuringEvent:v32];
      }

      else
      {
        v5 = 0;
      }

      goto LABEL_24;
    }

    if (v4 != 2)
    {
      goto LABEL_31;
    }

    v22 = [(DNDSModeAssertionLifetimeRecord *)self startDate];
    v23 = [v22 dnds_dateValue];

    v24 = [(DNDSModeAssertionLifetimeRecord *)self endDate];
    v25 = [v24 dnds_dateValue];

    v5 = 0;
    if (v23 && v25)
    {
      v26 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v23 endDate:v25];
      v5 = [objc_alloc(MEMORY[0x277D05950]) initWithDateInterval:v26];
    }

LABEL_19:

LABEL_24:
    goto LABEL_31;
  }

  switch(v4)
  {
    case 3:
      v5 = [MEMORY[0x277D05948] sharedInstance];
      break;
    case 4:
      v23 = [(DNDSModeAssertionLifetimeRecord *)self scheduleIdentifier];
      v27 = [(DNDSModeAssertionLifetimeRecord *)self behavior];
      v25 = v27;
      v5 = 0;
      if (v23 && v27)
      {
        v28 = [v27 dnds_scheduleLifetimeBehaviorValue];
        v5 = [objc_alloc(MEMORY[0x277D05978]) initWithScheduleIdentifier:v23 behavior:v28];
      }

      goto LABEL_19;
    case 5:
      v6 = [(DNDSModeAssertionLifetimeRecord *)self latitude];
      if (v6)
      {
        v7 = v6;
        v8 = [(DNDSModeAssertionLifetimeRecord *)self radius];
        if (v8)
        {
          v9 = v8;
          v10 = [(DNDSModeAssertionLifetimeRecord *)self regionIdentifier];

          if (v10)
          {
            v11 = [(DNDSModeAssertionLifetimeRecord *)self latitude];
            [v11 doubleValue];
            v13 = v12;
            v14 = [(DNDSModeAssertionLifetimeRecord *)self longitude];
            [v14 doubleValue];
            v16 = v15;

            v17 = [(DNDSModeAssertionLifetimeRecord *)self radius];
            [v17 doubleValue];
            v19 = v18;

            v20 = [(DNDSModeAssertionLifetimeRecord *)self regionIdentifier];
            v21 = [objc_alloc(MEMORY[0x277CBFBC8]) initWithCenter:v20 radius:v13 identifier:{v16, v19}];
            if (v21)
            {
              v5 = [objc_alloc(MEMORY[0x277D05960]) initWithRegion:v21];
            }

            else
            {
              v5 = 0;
            }

            break;
          }
        }

        else
        {
        }
      }

      v33 = DNDSLogAssertionStore;
      if (os_log_type_enabled(DNDSLogAssertionStore, OS_LOG_TYPE_FAULT))
      {
        [(DNDSModeAssertionLifetimeRecord *)self object];
      }

      v5 = 0;
      break;
  }

LABEL_31:

  return v5;
}

- (void)object
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_24912E000, a2, OS_LOG_TYPE_FAULT, "Missing parameters of region trigger: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end