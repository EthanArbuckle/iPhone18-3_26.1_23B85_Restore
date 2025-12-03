@interface DNDSModeAssertionLifetimeRecord
+ (id)recordForAssertionLifetime:(id)lifetime;
+ (id)recordForDictionary:(id)dictionary keys:(id *)keys;
- (id)dictionaryWithKeys:(id *)keys options:(unint64_t)options;
- (id)object;
- (void)object;
@end

@implementation DNDSModeAssertionLifetimeRecord

+ (id)recordForDictionary:(id)dictionary keys:(id *)keys
{
  if (dictionary)
  {
    dictionaryCopy = dictionary;
    v6 = objc_alloc_init(DNDSModeAssertionLifetimeRecord);
    v7 = [dictionaryCopy bs_safeStringForKey:keys->var3.var0];
    [(DNDSModeAssertionLifetimeRecord *)v6 setLifetimeType:v7];

    v8 = [dictionaryCopy bs_safeStringForKey:keys->var3.var1];
    [(DNDSModeAssertionLifetimeRecord *)v6 setEventUniqueID:v8];

    v9 = [dictionaryCopy bs_safeNumberForKey:keys->var3.var2];
    [(DNDSModeAssertionLifetimeRecord *)v6 setOccurrenceDate:v9];

    v10 = [dictionaryCopy bs_safeNumberForKey:keys->var3.var3];
    [(DNDSModeAssertionLifetimeRecord *)v6 setOnlyDuringEvent:v10];

    v11 = [dictionaryCopy bs_safeNumberForKey:keys->var3.var4];
    [(DNDSModeAssertionLifetimeRecord *)v6 setStartDate:v11];

    v12 = [dictionaryCopy bs_safeNumberForKey:keys->var3.var5];
    [(DNDSModeAssertionLifetimeRecord *)v6 setEndDate:v12];

    v13 = [dictionaryCopy bs_safeStringForKey:keys->var3.var6];
    [(DNDSModeAssertionLifetimeRecord *)v6 setScheduleIdentifier:v13];

    v14 = [dictionaryCopy bs_safeStringForKey:keys->var3.var7];
    [(DNDSModeAssertionLifetimeRecord *)v6 setBehavior:v14];

    v15 = [dictionaryCopy bs_safeNumberForKey:keys->var3.var8];
    [(DNDSModeAssertionLifetimeRecord *)v6 setLatitude:v15];

    v16 = [dictionaryCopy bs_safeNumberForKey:keys->var3.var9];
    [(DNDSModeAssertionLifetimeRecord *)v6 setLongitude:v16];

    v17 = [dictionaryCopy bs_safeNumberForKey:keys->var3.var10];
    [(DNDSModeAssertionLifetimeRecord *)v6 setRadius:v17];

    v18 = [dictionaryCopy bs_safeStringForKey:keys->var3.var11];

    [(DNDSModeAssertionLifetimeRecord *)v6 setRegionIdentifier:v18];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)dictionaryWithKeys:(id *)keys options:(unint64_t)options
{
  optionsCopy = options;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  lifetimeType = [(DNDSModeAssertionLifetimeRecord *)self lifetimeType];
  [dictionary bs_setSafeObject:lifetimeType forKey:keys->var3.var0];

  eventUniqueID = [(DNDSModeAssertionLifetimeRecord *)self eventUniqueID];
  [dictionary bs_setSafeObject:eventUniqueID forKey:keys->var3.var1];

  occurrenceDate = [(DNDSModeAssertionLifetimeRecord *)self occurrenceDate];
  [dictionary bs_setSafeObject:occurrenceDate forKey:keys->var3.var2];

  onlyDuringEvent = [(DNDSModeAssertionLifetimeRecord *)self onlyDuringEvent];
  [dictionary bs_setSafeObject:onlyDuringEvent forKey:keys->var3.var3];

  startDate = [(DNDSModeAssertionLifetimeRecord *)self startDate];
  [dictionary bs_setSafeObject:startDate forKey:keys->var3.var4];

  endDate = [(DNDSModeAssertionLifetimeRecord *)self endDate];
  [dictionary bs_setSafeObject:endDate forKey:keys->var3.var5];

  scheduleIdentifier = [(DNDSModeAssertionLifetimeRecord *)self scheduleIdentifier];
  [dictionary bs_setSafeObject:scheduleIdentifier forKey:keys->var3.var6];

  behavior = [(DNDSModeAssertionLifetimeRecord *)self behavior];
  [dictionary bs_setSafeObject:behavior forKey:keys->var3.var7];

  latitude = [(DNDSModeAssertionLifetimeRecord *)self latitude];
  v17 = latitude;
  if ((optionsCopy & 2) != 0)
  {

    if (v17)
    {
      [dictionary bs_setSafeObject:@"<redacted>" forKey:keys->var3.var8];
    }

    longitude = [(DNDSModeAssertionLifetimeRecord *)self longitude];

    if (longitude)
    {
      [dictionary bs_setSafeObject:@"<redacted>" forKey:keys->var3.var9];
    }

    radius = [(DNDSModeAssertionLifetimeRecord *)self radius];

    if (radius)
    {
      [dictionary bs_setSafeObject:@"<redacted>" forKey:keys->var3.var10];
    }

    regionIdentifier = [(DNDSModeAssertionLifetimeRecord *)self regionIdentifier];

    if (regionIdentifier)
    {
      [dictionary bs_setSafeObject:@"<redacted>" forKey:keys->var3.var11];
    }
  }

  else
  {
    [dictionary bs_setSafeObject:latitude forKey:keys->var3.var8];

    longitude2 = [(DNDSModeAssertionLifetimeRecord *)self longitude];
    [dictionary bs_setSafeObject:longitude2 forKey:keys->var3.var9];

    radius2 = [(DNDSModeAssertionLifetimeRecord *)self radius];
    [dictionary bs_setSafeObject:radius2 forKey:keys->var3.var10];

    regionIdentifier2 = [(DNDSModeAssertionLifetimeRecord *)self regionIdentifier];
    [dictionary bs_setSafeObject:regionIdentifier2 forKey:keys->var3.var11];
  }

  if (optionsCopy)
  {
    startDate2 = [(DNDSModeAssertionLifetimeRecord *)self startDate];
    v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@Local", keys->var3.var4];
    [dictionary dnds_setSafeLocalDateForTimestamp:startDate2 key:v25];

    endDate2 = [(DNDSModeAssertionLifetimeRecord *)self endDate];
    v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@Local", keys->var3.var5];
    [dictionary dnds_setSafeLocalDateForTimestamp:endDate2 key:v27];
  }

  return dictionary;
}

+ (id)recordForAssertionLifetime:(id)lifetime
{
  lifetimeCopy = lifetime;
  if (!lifetimeCopy)
  {
    v4 = 0;
    goto LABEL_13;
  }

  v4 = objc_alloc_init(DNDSModeAssertionLifetimeRecord);
  lifetimeType = [lifetimeCopy lifetimeType];
  v6 = [MEMORY[0x277CCACA8] dnds_stringForLifetimeType:lifetimeType];
  [(DNDSModeAssertionLifetimeRecord *)v4 setLifetimeType:v6];

  if (lifetimeType > 3)
  {
    if (lifetimeType == 4)
    {
      v35 = lifetimeCopy;
      scheduleIdentifier = [v35 scheduleIdentifier];
      [(DNDSModeAssertionLifetimeRecord *)v4 setScheduleIdentifier:scheduleIdentifier];

      v37 = MEMORY[0x277CCACA8];
      behavior = [v35 behavior];

      region4 = [v37 dnds_stringForScheduleLifetimeBehavior:behavior];
      [(DNDSModeAssertionLifetimeRecord *)v4 setBehavior:region4];
    }

    else
    {
      if (lifetimeType != 5)
      {
        goto LABEL_13;
      }

      v16 = MEMORY[0x277CCABB0];
      v17 = lifetimeCopy;
      region = [v17 region];
      [region center];
      v19 = [v16 numberWithDouble:?];
      [(DNDSModeAssertionLifetimeRecord *)v4 setLatitude:v19];

      v20 = MEMORY[0x277CCABB0];
      region2 = [v17 region];
      [region2 center];
      v23 = [v20 numberWithDouble:v22];
      [(DNDSModeAssertionLifetimeRecord *)v4 setLongitude:v23];

      v24 = MEMORY[0x277CCABB0];
      region3 = [v17 region];
      [region3 radius];
      v26 = [v24 numberWithDouble:?];
      [(DNDSModeAssertionLifetimeRecord *)v4 setRadius:v26];

      region4 = [v17 region];

      identifier = [region4 identifier];
      [(DNDSModeAssertionLifetimeRecord *)v4 setRegionIdentifier:identifier];
    }
  }

  else if (lifetimeType == 1)
  {
    v28 = lifetimeCopy;
    eventUniqueID = [v28 eventUniqueID];
    [(DNDSModeAssertionLifetimeRecord *)v4 setEventUniqueID:eventUniqueID];

    v30 = MEMORY[0x277CCABB0];
    occurrenceDate = [v28 occurrenceDate];
    v32 = [v30 dnds_safeNumberWithDate:occurrenceDate];
    [(DNDSModeAssertionLifetimeRecord *)v4 setOccurrenceDate:v32];

    v33 = MEMORY[0x277CCABB0];
    isOnlyDuringEvent = [v28 isOnlyDuringEvent];

    region4 = [v33 numberWithBool:isOnlyDuringEvent];
    [(DNDSModeAssertionLifetimeRecord *)v4 setOnlyDuringEvent:region4];
  }

  else
  {
    if (lifetimeType != 2)
    {
      goto LABEL_13;
    }

    v7 = MEMORY[0x277CCABB0];
    v8 = lifetimeCopy;
    dateInterval = [v8 dateInterval];
    startDate = [dateInterval startDate];
    v11 = [v7 dnds_numberWithDate:startDate];
    [(DNDSModeAssertionLifetimeRecord *)v4 setStartDate:v11];

    v12 = MEMORY[0x277CCABB0];
    region4 = [v8 dateInterval];

    endDate = [region4 endDate];
    v15 = [v12 dnds_numberWithDate:endDate];
    [(DNDSModeAssertionLifetimeRecord *)v4 setEndDate:v15];
  }

LABEL_13:

  return v4;
}

- (id)object
{
  lifetimeType = [(DNDSModeAssertionLifetimeRecord *)self lifetimeType];
  dnds_lifetimeTypeValue = [lifetimeType dnds_lifetimeTypeValue];

  mEMORY[0x277D05948] = 0;
  if (dnds_lifetimeTypeValue <= 2)
  {
    if (dnds_lifetimeTypeValue == 1)
    {
      eventUniqueID = [(DNDSModeAssertionLifetimeRecord *)self eventUniqueID];
      occurrenceDate = [(DNDSModeAssertionLifetimeRecord *)self occurrenceDate];
      dnds_dateValue = [occurrenceDate dnds_dateValue];

      onlyDuringEvent = [(DNDSModeAssertionLifetimeRecord *)self onlyDuringEvent];
      bOOLValue = [onlyDuringEvent BOOLValue];

      if (eventUniqueID)
      {
        mEMORY[0x277D05948] = [objc_alloc(MEMORY[0x277D05940]) initWithEventUniqueID:eventUniqueID occurrenceDate:dnds_dateValue onlyDuringEvent:bOOLValue];
      }

      else
      {
        mEMORY[0x277D05948] = 0;
      }

      goto LABEL_24;
    }

    if (dnds_lifetimeTypeValue != 2)
    {
      goto LABEL_31;
    }

    startDate = [(DNDSModeAssertionLifetimeRecord *)self startDate];
    eventUniqueID = [startDate dnds_dateValue];

    endDate = [(DNDSModeAssertionLifetimeRecord *)self endDate];
    dnds_dateValue2 = [endDate dnds_dateValue];

    mEMORY[0x277D05948] = 0;
    if (eventUniqueID && dnds_dateValue2)
    {
      v26 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:eventUniqueID endDate:dnds_dateValue2];
      mEMORY[0x277D05948] = [objc_alloc(MEMORY[0x277D05950]) initWithDateInterval:v26];
    }

LABEL_19:

LABEL_24:
    goto LABEL_31;
  }

  switch(dnds_lifetimeTypeValue)
  {
    case 3:
      mEMORY[0x277D05948] = [MEMORY[0x277D05948] sharedInstance];
      break;
    case 4:
      eventUniqueID = [(DNDSModeAssertionLifetimeRecord *)self scheduleIdentifier];
      behavior = [(DNDSModeAssertionLifetimeRecord *)self behavior];
      dnds_dateValue2 = behavior;
      mEMORY[0x277D05948] = 0;
      if (eventUniqueID && behavior)
      {
        dnds_scheduleLifetimeBehaviorValue = [behavior dnds_scheduleLifetimeBehaviorValue];
        mEMORY[0x277D05948] = [objc_alloc(MEMORY[0x277D05978]) initWithScheduleIdentifier:eventUniqueID behavior:dnds_scheduleLifetimeBehaviorValue];
      }

      goto LABEL_19;
    case 5:
      latitude = [(DNDSModeAssertionLifetimeRecord *)self latitude];
      if (latitude)
      {
        v7 = latitude;
        radius = [(DNDSModeAssertionLifetimeRecord *)self radius];
        if (radius)
        {
          v9 = radius;
          regionIdentifier = [(DNDSModeAssertionLifetimeRecord *)self regionIdentifier];

          if (regionIdentifier)
          {
            latitude2 = [(DNDSModeAssertionLifetimeRecord *)self latitude];
            [latitude2 doubleValue];
            v13 = v12;
            longitude = [(DNDSModeAssertionLifetimeRecord *)self longitude];
            [longitude doubleValue];
            v16 = v15;

            radius2 = [(DNDSModeAssertionLifetimeRecord *)self radius];
            [radius2 doubleValue];
            v19 = v18;

            regionIdentifier2 = [(DNDSModeAssertionLifetimeRecord *)self regionIdentifier];
            v21 = [objc_alloc(MEMORY[0x277CBFBC8]) initWithCenter:regionIdentifier2 radius:v13 identifier:{v16, v19}];
            if (v21)
            {
              mEMORY[0x277D05948] = [objc_alloc(MEMORY[0x277D05960]) initWithRegion:v21];
            }

            else
            {
              mEMORY[0x277D05948] = 0;
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

      mEMORY[0x277D05948] = 0;
      break;
  }

LABEL_31:

  return mEMORY[0x277D05948];
}

- (void)object
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  selfCopy = self;
  _os_log_fault_impl(&dword_24912E000, a2, OS_LOG_TYPE_FAULT, "Missing parameters of region trigger: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end