@interface HDDeletedSampleSyncEntity
+ (id)_basePruningPredicateForDate:(id)date profile:(id)profile;
+ (id)_predicateForSyncSession:(id)session;
@end

@implementation HDDeletedSampleSyncEntity

+ (id)_predicateForSyncSession:(id)session
{
  v75[2] = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  v5 = HDDataEntityPredicateForType(2);
  syncPredicate = [sessionCopy syncPredicate];
  dateInterval = [syncPredicate dateInterval];

  selfCopy = self;
  if (dateInterval)
  {
    startDate = [dateInterval startDate];
    endDate = [dateInterval endDate];
    v70 = [(HDDataSyncEntity *)self _predicateForDateIntervalStartDate:startDate endDate:endDate];
  }

  else
  {
    v70 = 0;
  }

  syncPredicate2 = [sessionCopy syncPredicate];
  shouldIncludeDatelessObjects = [syncPredicate2 shouldIncludeDatelessObjects];

  if (shouldIncludeDatelessObjects)
  {
    v12 = MEMORY[0x277D10B20];
    v13 = [MEMORY[0x277D10B60] isNullPredicateWithProperty:@"start_date"];
    v75[0] = v13;
    v14 = [MEMORY[0x277D10B60] isNullPredicateWithProperty:@"end_date"];
    v75[1] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v75 count:2];
    v16 = [v12 predicateMatchingAnyPredicates:v15];

    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = MEMORY[0x277D10B20];
  v69 = v17;
  v19 = [MEMORY[0x277D10B20] disjunctionWithPredicate:v70 otherPredicate:?];
  v20 = [v18 compoundPredicateWithPredicate:v5 otherPredicate:v19];

  syncPredicate3 = [sessionCopy syncPredicate];
  defaultMaximumTombstoneAge = [syncPredicate3 defaultMaximumTombstoneAge];

  v68 = defaultMaximumTombstoneAge;
  if (defaultMaximumTombstoneAge)
  {
    v23 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v24 = MEMORY[0x277CBEAA8];
    [defaultMaximumTombstoneAge doubleValue];
    v26 = [v24 dateWithTimeIntervalSinceNow:-v25];
    HDDeletedObjectPredicateForDeletionDate(6);
    v28 = v27 = v20;
    v65 = v23;
    [v23 addObject:v28];

    activityGoalScheduleType = [MEMORY[0x277CCD720] activityGoalScheduleType];
    v74[0] = activityGoalScheduleType;
    pauseRingsScheduleType = [MEMORY[0x277CCD720] pauseRingsScheduleType];
    v74[1] = pauseRingsScheduleType;
    [MEMORY[0x277CBEA60] arrayWithObjects:v74 count:2];
    v31 = v66 = dateInterval;
    v32 = HDSampleEntityPredicateForDataTypes(v31);
    [v23 addObject:v32];

    v33 = [MEMORY[0x277D10B20] predicateMatchingAnyPredicates:v23];
    v34 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v35 = [MEMORY[0x277D10B60] isNullPredicateWithProperty:@"end_date"];
    [v34 addObject:v35];

    syncPredicate4 = [sessionCopy syncPredicate];
    maximumObjectAgeByType = [syncPredicate4 maximumObjectAgeByType];
    syncPredicate5 = [sessionCopy syncPredicate];
    defaultMaximumObjectAge = [syncPredicate5 defaultMaximumObjectAge];
    startDate2 = [sessionCopy startDate];
    v41 = [(HDSampleSyncEntity *)selfCopy _predicateForSampleAgeWithMaximumObjectAgeByType:maximumObjectAgeByType defaultMaxAge:defaultMaximumObjectAge sessionStartDate:startDate2];
    [v34 hk_addNonNilObject:v41];

    v20 = v27;
    v42 = MEMORY[0x277D10B70];
    v43 = [MEMORY[0x277D10B18] predicateWithProperty:@"data_type" equalToValue:&unk_283CB40F8];
    v44 = HDDataEntityPredicateForObjectsFromAppleWatchSources(1);
    v45 = [v42 compoundPredicateWithPredicate:v43 otherPredicate:v44];
    [v34 addObject:v45];

    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    heartRateType = [MEMORY[0x277CCD830] heartRateType];
    v73 = heartRateType;
    v48 = [MEMORY[0x277CBEA60] arrayWithObjects:&v73 count:1];
    startDate3 = [sessionCopy startDate];
    v50 = [currentCalendar hd_predicateForSamplesWithTypes:v48 endingAfterDate:startDate3 minusDays:*MEMORY[0x277CCCED8]];
    [v34 addObject:v50];

    v51 = [MEMORY[0x277D10B20] predicateMatchingAnyPredicates:v34];
    v52 = MEMORY[0x277D10B20];
    v72[0] = v27;
    v72[1] = v33;
    v72[2] = v51;
    v53 = [MEMORY[0x277CBEA60] arrayWithObjects:v72 count:3];
    v54 = [v52 predicateMatchingAllPredicates:v53];

    dateInterval = v66;
  }

  else
  {
    v54 = v20;
  }

  if (_isCompanionSyncToUSLegallyCompliantOxygenSaturationDeviceForSyncSession(sessionCopy))
  {
    v55 = [MEMORY[0x277CCD720] categoryTypeForIdentifier:*MEMORY[0x277CCBAE0]];
    [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCBE8]];
    v57 = v56 = v20;
    unprocessedBloodOxygenDataType = [MEMORY[0x277CCD720] unprocessedBloodOxygenDataType];
    v71[0] = unprocessedBloodOxygenDataType;
    v71[1] = v57;
    v71[2] = v55;
    v59 = [MEMORY[0x277CBEA60] arrayWithObjects:v71 count:3];
    v60 = HDSampleEntityPredicateForDataTypes(v59);

    v61 = [MEMORY[0x277D10B20] negatedPredicate:v60];
    v62 = [MEMORY[0x277D10B20] compoundPredicateWithPredicate:v54 otherPredicate:v61];

    v20 = v56;
    v54 = v62;
  }

  v63 = *MEMORY[0x277D85DE8];

  return v54;
}

+ (id)_basePruningPredicateForDate:(id)date profile:(id)profile
{
  v4 = MEMORY[0x277CBEA80];
  dateCopy = date;
  currentCalendar = [v4 currentCalendar];
  v7 = [currentCalendar hd_predicateForDeletedObjectsCreatedBeforeDate:dateCopy minusDays:*MEMORY[0x277CCBC20]];

  return v7;
}

@end