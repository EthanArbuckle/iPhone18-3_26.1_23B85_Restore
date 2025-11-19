@interface HDDeletedSampleSyncEntity
+ (id)_basePruningPredicateForDate:(id)a3 profile:(id)a4;
+ (id)_predicateForSyncSession:(id)a3;
@end

@implementation HDDeletedSampleSyncEntity

+ (id)_predicateForSyncSession:(id)a3
{
  v75[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HDDataEntityPredicateForType(2);
  v6 = [v4 syncPredicate];
  v7 = [v6 dateInterval];

  v67 = a1;
  if (v7)
  {
    v8 = [v7 startDate];
    v9 = [v7 endDate];
    v70 = [(HDDataSyncEntity *)a1 _predicateForDateIntervalStartDate:v8 endDate:v9];
  }

  else
  {
    v70 = 0;
  }

  v10 = [v4 syncPredicate];
  v11 = [v10 shouldIncludeDatelessObjects];

  if (v11)
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

  v21 = [v4 syncPredicate];
  v22 = [v21 defaultMaximumTombstoneAge];

  v68 = v22;
  if (v22)
  {
    v23 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v24 = MEMORY[0x277CBEAA8];
    [v22 doubleValue];
    v26 = [v24 dateWithTimeIntervalSinceNow:-v25];
    HDDeletedObjectPredicateForDeletionDate(6);
    v28 = v27 = v20;
    v65 = v23;
    [v23 addObject:v28];

    v29 = [MEMORY[0x277CCD720] activityGoalScheduleType];
    v74[0] = v29;
    v30 = [MEMORY[0x277CCD720] pauseRingsScheduleType];
    v74[1] = v30;
    [MEMORY[0x277CBEA60] arrayWithObjects:v74 count:2];
    v31 = v66 = v7;
    v32 = HDSampleEntityPredicateForDataTypes(v31);
    [v23 addObject:v32];

    v33 = [MEMORY[0x277D10B20] predicateMatchingAnyPredicates:v23];
    v34 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v35 = [MEMORY[0x277D10B60] isNullPredicateWithProperty:@"end_date"];
    [v34 addObject:v35];

    v36 = [v4 syncPredicate];
    v37 = [v36 maximumObjectAgeByType];
    v38 = [v4 syncPredicate];
    v39 = [v38 defaultMaximumObjectAge];
    v40 = [v4 startDate];
    v41 = [(HDSampleSyncEntity *)v67 _predicateForSampleAgeWithMaximumObjectAgeByType:v37 defaultMaxAge:v39 sessionStartDate:v40];
    [v34 hk_addNonNilObject:v41];

    v20 = v27;
    v42 = MEMORY[0x277D10B70];
    v43 = [MEMORY[0x277D10B18] predicateWithProperty:@"data_type" equalToValue:&unk_283CB40F8];
    v44 = HDDataEntityPredicateForObjectsFromAppleWatchSources(1);
    v45 = [v42 compoundPredicateWithPredicate:v43 otherPredicate:v44];
    [v34 addObject:v45];

    v46 = [MEMORY[0x277CBEA80] currentCalendar];
    v47 = [MEMORY[0x277CCD830] heartRateType];
    v73 = v47;
    v48 = [MEMORY[0x277CBEA60] arrayWithObjects:&v73 count:1];
    v49 = [v4 startDate];
    v50 = [v46 hd_predicateForSamplesWithTypes:v48 endingAfterDate:v49 minusDays:*MEMORY[0x277CCCED8]];
    [v34 addObject:v50];

    v51 = [MEMORY[0x277D10B20] predicateMatchingAnyPredicates:v34];
    v52 = MEMORY[0x277D10B20];
    v72[0] = v27;
    v72[1] = v33;
    v72[2] = v51;
    v53 = [MEMORY[0x277CBEA60] arrayWithObjects:v72 count:3];
    v54 = [v52 predicateMatchingAllPredicates:v53];

    v7 = v66;
  }

  else
  {
    v54 = v20;
  }

  if (_isCompanionSyncToUSLegallyCompliantOxygenSaturationDeviceForSyncSession(v4))
  {
    v55 = [MEMORY[0x277CCD720] categoryTypeForIdentifier:*MEMORY[0x277CCBAE0]];
    [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCBE8]];
    v57 = v56 = v20;
    v58 = [MEMORY[0x277CCD720] unprocessedBloodOxygenDataType];
    v71[0] = v58;
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

+ (id)_basePruningPredicateForDate:(id)a3 profile:(id)a4
{
  v4 = MEMORY[0x277CBEA80];
  v5 = a3;
  v6 = [v4 currentCalendar];
  v7 = [v6 hd_predicateForDeletedObjectsCreatedBeforeDate:v5 minusDays:*MEMORY[0x277CCBC20]];

  return v7;
}

@end