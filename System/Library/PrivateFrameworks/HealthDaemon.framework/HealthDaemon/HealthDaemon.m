void HDPowerLogForClient(void *a1, void *a2, void *a3)
{
  v16[2] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v5 = a3;
    v6 = a1;
    v7 = [a2 process];
    v8 = [v5 mutableCopy];

    v9 = [v7 applicationIdentifier];
    if (!v9)
    {
      v9 = [v7 name];
    }

    v10 = @"missing";
    if (v9)
    {
      v10 = v9;
    }

    v11 = v10;

    v15[0] = @"clientId";
    v12 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v7, "processIdentifier")}];
    v15[1] = @"bundleId";
    v16[0] = v12;
    v16[1] = v11;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];

    [v8 addEntriesFromDictionary:v13];
    PLLogRegisteredEvent();
  }

  v14 = *MEMORY[0x277D85DE8];
}

id HDSampleEntityPredicateForEndDate(uint64_t a1)
{
  v2 = MEMORY[0x277D10B18];
  v3 = _HDSQLiteValueForDate();
  v4 = [v2 predicateWithProperty:@"end_date" value:v3 comparisonType:a1];

  return v4;
}

id HDSampleEntityPredicateForDataTypes(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277CBEB58] set];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(*(&v12 + 1) + 8 * i), "code", v12)}];
        [v2 addObject:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  if ([v2 count])
  {
    v9 = [MEMORY[0x277D10B28] containsPredicateWithProperty:@"data_type" values:v2];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

id HDSourceEntityPredicateForAppleWatchSources()
{
  v0 = [MEMORY[0x277D10B18] predicateWithProperty:@"product_type" likeValue:@"Watch%%"];
  v1 = _HDSourceEntityPredicateForNotDeletedWithPredicate(v0);

  return v1;
}

id HDDataEntityPredicateForSourceEntitySet(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [MEMORY[0x277CBEB58] set];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(*(*(&v14 + 1) + 8 * i), "persistentID", v14)}];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v11 = HDDataEntityPredicateForSourceIdentifierSet(a1, v4);

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

id HDDataEntityPredicateForSourceIdentifierSet(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  switch(a1)
  {
    case 7:
      goto LABEL_17;
    case 2:
      if ([v3 count])
      {
        [MEMORY[0x277D10B28] doesNotContainPredicateWithProperty:@"data_provenances.source_id" values:v4];
      }

      else
      {
        [MEMORY[0x277D10B70] truePredicate];
      }

      goto LABEL_6;
    case 1:
LABEL_17:
      if ([v3 count])
      {
        [MEMORY[0x277D10B28] containsPredicateWithProperty:@"data_provenances.source_id" values:v4];
      }

      else
      {
        [MEMORY[0x277D10B70] falsePredicate];
      }

      v5 = LABEL_6:;
      v6 = v5;
      goto LABEL_12;
  }

  v6 = 0;
LABEL_12:

  return v6;
}

id HDDataEntityPredicateForType(uint64_t a1)
{
  v1 = MEMORY[0x277D10B18];
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:a1];
  v3 = _HDSQLiteValueForNumber();
  v4 = [v1 predicateWithProperty:@"type" equalToValue:v3];

  return v4;
}

id HDDeletedObjectPredicateForDeletionDate(uint64_t a1)
{
  v2 = MEMORY[0x277D10B18];
  v3 = _HDSQLiteValueForDate();
  v4 = [v2 predicateWithProperty:@"creation_date" value:v3 comparisonType:a1];

  return v4;
}

id HDDataCollectorEnumerateBatches(void *a1, void *a2, void *a3, double a4, double a5)
{
  v72 = *MEMORY[0x277D85DE8];
  v9 = a1;
  v10 = a2;
  v11 = a3;
  if (!v11)
  {
    v55 = [MEMORY[0x277CCA890] currentHandler];
    v56 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id<HDSensorDatum> HDDataCollectorEnumerateBatches(NSArray<id<HDSensorDatum>> *__strong, __strong id<HDSensorDatum>, NSTimeInterval, NSTimeInterval, __strong HDDataCollectorBatchingCallback)"}];
    [v55 handleFailureInFunction:v56 file:@"HDDataCollector.m" lineNumber:919 description:{@"Invalid parameter not satisfying: %@", @"block != nil"}];
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __HDDataCollectorEnumerateBatches_block_invoke;
  aBlock[3] = &__block_descriptor_40_e53___NSDate_24__0___HDSensorDatum__8___HDSensorDatum__16l;
  *&aBlock[4] = a5;
  v12 = _Block_copy(aBlock);
  v13 = [MEMORY[0x277CBEAA8] date];
  v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v15 = v10;
  v67 = [v15 endDate];
  v66 = v15;
  if (![v9 count])
  {
    v18 = v15;
    goto LABEL_41;
  }

  v16 = 0;
  v65 = 1;
  v17 = MEMORY[0x277CCC298];
  v18 = v15;
  while (1)
  {
    v19 = [v9 objectAtIndexedSubscript:v16];
    v20 = [v19 endDate];
    [v20 timeIntervalSinceReferenceDate];
    v22 = v21;

    if (v22 >= 0.0)
    {
      break;
    }

    _HKInitializeLogging();
    v23 = *v17;
    if (os_log_type_enabled(*v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v71 = v19;
      _os_log_debug_impl(&dword_228986000, v23, OS_LOG_TYPE_DEBUG, "Skipping invalid datum: %@", buf, 0xCu);
    }

    ++v16;
LABEL_9:

    if (v16 >= [v9 count])
    {
      goto LABEL_41;
    }
  }

  if (!v16 && ((objc_opt_respondsToSelector() & 1) == 0 || [v19 recordID] >= 2) && !v18)
  {
    v24 = v19;

    v18 = v24;
  }

  if (![v14 count])
  {
    [v14 addObject:v19];
  }

  v64 = v18;
  if (v65)
  {
    v25 = [v14 firstObject];
    v26 = v12[2](v12, v25, v18);

    v67 = v26;
  }

  v27 = [v19 endDate];
  if ([v27 compare:v13] != 1)
  {
    [v27 timeIntervalSinceDate:v67];
    v65 = v28 > a4;
    if (v28 <= a4)
    {
      if (v28 >= 0.0)
      {
        [v14 addObject:v19];
        ++v16;
        v18 = v64;
      }

      else
      {
        v61 = v12;
        v58 = [v14 lastObject];
        v35 = [v58 endDate];
        v36 = v67;
        v37 = v36;
        v63 = v11;
        if (v36 && v35)
        {
          if ([v36 compare:v35] == 1)
          {
            v38 = v35;
          }

          else
          {
            v38 = v37;
          }
        }

        else if (v36)
        {
          v38 = v36;
        }

        else
        {
          v38 = v35;
        }

        v68 = v38;

        v39 = [v14 copy];
        v63[2](v63, v39, v64, v68, v35);

        [v14 removeAllObjects];
        v40 = v58;

        v41 = v35;
        v67 = v41;

        v18 = v40;
        v11 = v63;
        v12 = v61;
      }
    }

    else
    {
      v59 = v13;
      v60 = v12;
      if (v28 < a5)
      {
        [v14 addObject:v19];
        ++v16;
      }

      v29 = [v14 lastObject];
      v30 = [v14 copy];
      v57 = v29;
      v31 = [v29 endDate];
      v62 = v11;
      v32 = v11[2](v11, v30, v64, v67, v31);

      if (v32)
      {
        [v14 removeAllObjects];
        v33 = v57;

        v34 = [v33 endDate];

        v67 = v34;
      }

      else
      {
        v33 = [v14 firstObject];

        [v14 removeObjectAtIndex:0];
      }

      v18 = v33;
      v12 = v60;

      v11 = v62;
      v13 = v59;
    }

    goto LABEL_9;
  }

  _HKInitializeLogging();
  v54 = *v17;
  if (os_log_type_enabled(*v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v71 = v19;
    _os_log_impl(&dword_228986000, v54, OS_LOG_TYPE_DEFAULT, "Received sensor datum in the future, aborting (%@)", buf, 0xCu);
  }

  v18 = v64;
LABEL_41:
  [v13 timeIntervalSinceDate:v67];
  v43 = v42;
  v44 = [v14 count];
  if (v43 > a4 && v44 != 0)
  {
    v46 = v13;
    v47 = [v14 lastObject];
    v48 = [v47 endDate];

    v49 = [v14 copy];
    v50 = v18;
    v51 = v11[2](v11, v49, v18, v67, v48);

    if (v51)
    {
      v18 = [v14 lastObject];
    }

    else
    {
      v18 = v50;
    }

    v13 = v46;
  }

  v52 = *MEMORY[0x277D85DE8];

  return v18;
}

id __HDDataCollectorEnumerateBatches_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [v6 endDate];
  v8 = [v5 endDate];

  [v7 timeIntervalSinceDate:v8];
  v10 = v9;

  if (v10 >= *(a1 + 32))
  {
    v10 = *(a1 + 32);
  }

  v11 = [v6 endDate];

  v12 = [v11 dateByAddingTimeInterval:-v10];

  return v12;
}

void sub_22898B00C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id location)
{
  objc_destroyWeak((v10 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22898BAFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id HDSampleEntityPredicateForStartDate(uint64_t a1)
{
  v2 = MEMORY[0x277D10B18];
  v3 = _HDSQLiteValueForDate();
  v4 = [v2 predicateWithProperty:@"start_date" value:v3 comparisonType:a1];

  return v4;
}

id HDCategorySampleEntityPredicateForValue(uint64_t a1)
{
  v2 = MEMORY[0x277D10B18];
  v3 = _HDSQLiteValueForNumber();
  v4 = [v2 predicateWithProperty:@"value" value:v3 comparisonType:a1];

  return v4;
}

void sub_22898E78C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t HDCodableObjectCollectionReadFrom(uint64_t a1, void *a2)
{
  v4 = a2;
  while (2)
  {
    v5 = [v4 position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      return [a2 hasError] ^ 1;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      LOBYTE(v17) = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v17 & 0x7F) << v6;
      if ((v17 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      if (v7++ >= 9)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    switch((v13 >> 3))
    {
      case 1u:
        v14 = PBReaderReadString();
        v15 = *(a1 + 160);
        *(a1 + 160) = v14;
        goto LABEL_92;
      case 2u:
        v15 = objc_alloc_init(HDCodableSource);
        objc_storeStrong((a1 + 152), v15);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !HDCodableSourceReadFrom(v15, a2))
        {
          goto LABEL_97;
        }

        goto LABEL_91;
      case 3u:
        v15 = objc_alloc_init(HDCodableCategorySample);
        [a1 addCategorySamples:v15];
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !HDCodableCategorySampleReadFrom(v15, a2))
        {
          goto LABEL_97;
        }

        goto LABEL_91;
      case 4u:
        v15 = objc_alloc_init(HDCodableQuantitySample);
        [a1 addQuantitySamples:v15];
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !HDCodableQuantitySampleReadFrom(v15, a2))
        {
          goto LABEL_97;
        }

        goto LABEL_91;
      case 5u:
        v15 = objc_alloc_init(HDCodableWorkout);
        [a1 addWorkouts:v15];
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !HDCodableWorkoutReadFrom(v15, a2))
        {
          goto LABEL_97;
        }

        goto LABEL_91;
      case 6u:
        v15 = objc_alloc_init(HDCodableCorrelation);
        [a1 addCorrelations:v15];
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !HDCodableCorrelationReadFrom(v15, a2))
        {
          goto LABEL_97;
        }

        goto LABEL_91;
      case 7u:
        v15 = objc_alloc_init(HDCodableActivityCache);
        [a1 addActivityCaches:v15];
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !HDCodableActivityCacheReadFrom(v15, a2))
        {
          goto LABEL_97;
        }

        goto LABEL_91;
      case 8u:
        v15 = objc_alloc_init(HDCodableBinarySample);
        [a1 addBinarySamples:v15];
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !HDCodableBinarySampleReadFrom(v15, a2))
        {
          goto LABEL_97;
        }

        goto LABEL_91;
      case 9u:
        v15 = objc_alloc_init(HDCodableDeletedSample);
        [a1 addDeletedSamples:v15];
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !HDCodableDeletedSampleReadFrom(v15, a2))
        {
          goto LABEL_97;
        }

        goto LABEL_91;
      case 0xAu:
        v15 = objc_alloc_init(HDCodableLocationSeries);
        [a1 addLocationSeries:v15];
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !HDCodableLocationSeriesReadFrom(v15, a2))
        {
          goto LABEL_97;
        }

        goto LABEL_91;
      case 0xBu:
        v15 = objc_alloc_init(HDCodableCDADocumentSample);
        [a1 addCdaDocumentSamples:v15];
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !HDCodableCDADocumentSampleReadFrom(v15, a2))
        {
          goto LABEL_97;
        }

        goto LABEL_91;
      case 0xDu:
        v15 = objc_alloc_init(HDCodableFitnessFriendActivitySnapshot);
        [a1 addFitnessFriendActivitySnapshots:v15];
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !HDCodableFitnessFriendActivitySnapshotReadFrom(v15, a2))
        {
          goto LABEL_97;
        }

        goto LABEL_91;
      case 0xEu:
        v15 = objc_alloc_init(HDCodableFitnessFriendAchievement);
        [a1 addFitnessFriendAchievements:v15];
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !HDCodableFitnessFriendAchievementReadFrom(v15, a2))
        {
          goto LABEL_97;
        }

        goto LABEL_91;
      case 0xFu:
        v15 = objc_alloc_init(HDCodableFitnessFriendWorkout);
        [a1 addFitnessFriendWorkouts:v15];
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !HDCodableFitnessFriendWorkoutReadFrom(v15, a2))
        {
          goto LABEL_97;
        }

        goto LABEL_91;
      case 0x12u:
        v15 = objc_alloc_init(HDCodableGeneratedObjectCollection);
        objc_storeStrong((a1 + 96), v15);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !HDCodableGeneratedObjectCollectionReadFrom(v15, a2))
        {
          goto LABEL_97;
        }

        goto LABEL_91;
      case 0x14u:
        v15 = objc_alloc_init(HDCodableProvenance);
        objc_storeStrong((a1 + 120), v15);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !HDCodableProvenanceReadFrom(v15, a2))
        {
          goto LABEL_97;
        }

        goto LABEL_91;
      case 0x15u:
        v15 = objc_alloc_init(HDCodableSleepSchedule);
        [a1 addSleepSchedules:v15];
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !HDCodableSleepScheduleReadFrom(v15, a2))
        {
          goto LABEL_97;
        }

        goto LABEL_91;
      case 0x16u:
        v15 = objc_alloc_init(HDCodableECGSample);
        [a1 addEcgSamples:v15];
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !HDCodableECGSampleReadFrom(v15, a2))
        {
          goto LABEL_97;
        }

        goto LABEL_91;
      case 0x17u:
        v15 = objc_alloc_init(HDCodableVisionSample);
        [a1 addVisionSamples:v15];
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !HDCodableVisionSampleReadFrom(v15, a2))
        {
          goto LABEL_97;
        }

        goto LABEL_91;
      case 0x19u:
        v15 = objc_alloc_init(HDCodableStateOfMind);
        [a1 addStateOfMindLogs:v15];
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !HDCodableStateOfMindReadFrom(v15, a2))
        {
          goto LABEL_97;
        }

        goto LABEL_91;
      case 0x1Au:
        v15 = objc_alloc_init(HDCodableSyncIdentity);
        objc_storeStrong((a1 + 176), v15);
        v17 = 0;
        v18 = 0;
        if (PBReaderPlaceMark() && HDCodableSyncIdentityReadFrom(v15, a2))
        {
          goto LABEL_91;
        }

        goto LABEL_97;
      case 0x1Bu:
        v15 = objc_alloc_init(HDCodableScoredAssessment);
        [a1 addScoredAssessmentSamples:v15];
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !HDCodableScoredAssessmentReadFrom(v15, a2))
        {
          goto LABEL_97;
        }

        goto LABEL_91;
      case 0x1Cu:
        v15 = objc_alloc_init(HDCodableWorkoutZones);
        [a1 addWorkoutZones:v15];
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !HDCodableWorkoutZonesReadFrom(v15, a2))
        {
          goto LABEL_97;
        }

        goto LABEL_91;
      case 0x1Du:
        v15 = objc_alloc_init(HDCodableActivityGoalSchedule);
        [a1 addActivityGoalSchedules:v15];
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !HDCodableActivityGoalScheduleReadFrom(v15, a2))
        {
          goto LABEL_97;
        }

        goto LABEL_91;
      case 0x1Eu:
        v15 = objc_alloc_init(HDCodablePauseRingsSchedule);
        [a1 addPauseRingsSchedules:v15];
        v17 = 0;
        v18 = 0;
        if (PBReaderPlaceMark() && HDCodablePauseRingsScheduleReadFrom(v15, a2))
        {
LABEL_91:
          PBReaderRecallMark();
LABEL_92:

LABEL_93:
          v4 = a2;
          continue;
        }

LABEL_97:

        return 0;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_93;
    }
  }
}

uint64_t HDCodableQuantitySampleReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 >= [a2 length])
  {
    return [a2 hasError] ^ 1;
  }

  while (2)
  {
    if ([a2 hasError])
    {
      return [a2 hasError] ^ 1;
    }

    v5 = 0;
    v6 = 0;
    v7 = 0;
    while (1)
    {
      LOBYTE(v62) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v62 & 0x7F) << v5;
      if ((v62 & 0x80) == 0)
      {
        break;
      }

      v5 += 7;
      v11 = v6++ >= 9;
      if (v11)
      {
        v12 = 0;
        goto LABEL_15;
      }
    }

    v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    switch((v12 >> 3))
    {
      case 1u:
        v13 = objc_alloc_init(HDCodableSample);
        objc_storeStrong((a1 + 88), v13);
        v62 = 0;
        v63 = 0;
        if (PBReaderPlaceMark() && HDCodableSampleReadFrom(v13, a2))
        {
          goto LABEL_23;
        }

        goto LABEL_101;
      case 2u:
        *(a1 + 100) |= 0x40u;
        v62 = 0;
        v31 = [a2 position] + 8;
        if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 8, v32 <= objc_msgSend(a2, "length")))
        {
          v57 = [a2 data];
          [v57 getBytes:&v62 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v52 = v62;
        v53 = 56;
        goto LABEL_98;
      case 3u:
        *(a1 + 100) |= 0x80u;
        v62 = 0;
        v25 = [a2 position] + 8;
        if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 8, v26 <= objc_msgSend(a2, "length")))
        {
          v55 = [a2 data];
          [v55 getBytes:&v62 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v52 = v62;
        v53 = 64;
        goto LABEL_98;
      case 4u:
        v27 = PBReaderReadString();
        v28 = *(a1 + 72);
        *(a1 + 72) = v27;

        goto LABEL_99;
      case 5u:
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 100) |= 0x200u;
        while (1)
        {
          LOBYTE(v62) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v62 & 0x7F) << v14;
          if ((v62 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            LOBYTE(v20) = 0;
            goto LABEL_76;
          }
        }

        v20 = (v16 != 0) & ~[a2 hasError];
LABEL_76:
        v50 = 97;
        goto LABEL_83;
      case 6u:
        v33 = 0;
        v34 = 0;
        v35 = 0;
        *(a1 + 100) |= 1u;
        while (1)
        {
          LOBYTE(v62) = 0;
          v36 = [a2 position] + 1;
          if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 1, v37 <= objc_msgSend(a2, "length")))
          {
            v38 = [a2 data];
            [v38 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v35 |= (v62 & 0x7F) << v33;
          if ((v62 & 0x80) == 0)
          {
            break;
          }

          v33 += 7;
          v11 = v34++ >= 9;
          if (v11)
          {
            v39 = 0;
            goto LABEL_80;
          }
        }

        if ([a2 hasError])
        {
          v39 = 0;
        }

        else
        {
          v39 = v35;
        }

LABEL_80:
        *(a1 + 8) = v39;
        goto LABEL_99;
      case 7u:
        v40 = 0;
        v41 = 0;
        v42 = 0;
        *(a1 + 100) |= 0x100u;
        while (1)
        {
          LOBYTE(v62) = 0;
          v43 = [a2 position] + 1;
          if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 1, v44 <= objc_msgSend(a2, "length")))
          {
            v45 = [a2 data];
            [v45 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v42 |= (v62 & 0x7F) << v40;
          if ((v62 & 0x80) == 0)
          {
            break;
          }

          v40 += 7;
          v11 = v41++ >= 9;
          if (v11)
          {
            LOBYTE(v20) = 0;
            goto LABEL_82;
          }
        }

        v20 = (v42 != 0) & ~[a2 hasError];
LABEL_82:
        v50 = 96;
LABEL_83:
        *(a1 + v50) = v20;
        goto LABEL_99;
      case 8u:
        *(a1 + 100) |= 4u;
        v62 = 0;
        v29 = [a2 position] + 8;
        if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 8, v30 <= objc_msgSend(a2, "length")))
        {
          v56 = [a2 data];
          [v56 getBytes:&v62 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v52 = v62;
        v53 = 24;
        goto LABEL_98;
      case 9u:
        *(a1 + 100) |= 2u;
        v62 = 0;
        v48 = [a2 position] + 8;
        if (v48 >= [a2 position] && (v49 = objc_msgSend(a2, "position") + 8, v49 <= objc_msgSend(a2, "length")))
        {
          v59 = [a2 data];
          [v59 getBytes:&v62 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v52 = v62;
        v53 = 16;
        goto LABEL_98;
      case 0xAu:
        *(a1 + 100) |= 8u;
        v62 = 0;
        v23 = [a2 position] + 8;
        if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 8, v24 <= objc_msgSend(a2, "length")))
        {
          v54 = [a2 data];
          [v54 getBytes:&v62 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v52 = v62;
        v53 = 32;
        goto LABEL_98;
      case 0xBu:
        *(a1 + 100) |= 0x10u;
        v62 = 0;
        v46 = [a2 position] + 8;
        if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 8, v47 <= objc_msgSend(a2, "length")))
        {
          v58 = [a2 data];
          [v58 getBytes:&v62 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v52 = v62;
        v53 = 40;
        goto LABEL_98;
      case 0xCu:
        v13 = objc_alloc_init(HDCodableQuantitySeriesDatum);
        [a1 addQuantitySeriesData:v13];
        v62 = 0;
        v63 = 0;
        if (PBReaderPlaceMark() && HDCodableQuantitySeriesDatumReadFrom(v13, a2))
        {
LABEL_23:
          PBReaderRecallMark();

LABEL_99:
          v60 = [a2 position];
          if (v60 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

LABEL_101:

        return 0;
      case 0xDu:
        *(a1 + 100) |= 0x20u;
        v62 = 0;
        v21 = [a2 position] + 8;
        if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 8, v22 <= objc_msgSend(a2, "length")))
        {
          v51 = [a2 data];
          [v51 getBytes:&v62 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v52 = v62;
        v53 = 48;
LABEL_98:
        *(a1 + v53) = v52;
        goto LABEL_99;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_99;
    }
  }
}

uint64_t HDCodableSampleReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v32[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v32 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v32[0] & 0x7F) << v5;
        if ((v32[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        break;
      }

      if (v13 != 1)
      {
        if (v13 == 2)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 40) |= 1u;
          while (1)
          {
            LOBYTE(v32[0]) = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:v32 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v32[0] & 0x7F) << v14;
            if ((v32[0] & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_45;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v16;
          }

LABEL_45:
          *(a1 + 8) = v20;
          goto LABEL_51;
        }

LABEL_34:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_51;
      }

      v23 = objc_alloc_init(HDCodableHealthObject);
      objc_storeStrong((a1 + 32), v23);
      v32[0] = 0;
      v32[1] = 0;
      if (!PBReaderPlaceMark() || !HDCodableHealthObjectReadFrom(v23, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_51:
      v30 = [a2 position];
      if (v30 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 3)
    {
      *(a1 + 40) |= 4u;
      v32[0] = 0;
      v24 = [a2 position] + 8;
      if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 8, v25 <= objc_msgSend(a2, "length")))
      {
        v29 = [a2 data];
        [v29 getBytes:v32 range:{objc_msgSend(a2, "position"), 8}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
      }

      else
      {
        [a2 _setError];
      }

      v27 = v32[0];
      v28 = 24;
      goto LABEL_50;
    }

    if (v13 == 4)
    {
      *(a1 + 40) |= 2u;
      v32[0] = 0;
      v21 = [a2 position] + 8;
      if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 8, v22 <= objc_msgSend(a2, "length")))
      {
        v26 = [a2 data];
        [v26 getBytes:v32 range:{objc_msgSend(a2, "position"), 8}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
      }

      else
      {
        [a2 _setError];
      }

      v27 = v32[0];
      v28 = 16;
LABEL_50:
      *(a1 + v28) = v27;
      goto LABEL_51;
    }

    goto LABEL_34;
  }

  return [a2 hasError] ^ 1;
}

uint64_t HDCodableCategorySampleReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v23[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v23[0] & 0x7F) << v5;
        if ((v23[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 24) |= 1u;
        while (1)
        {
          LOBYTE(v23[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v23[0] & 0x7F) << v14;
          if ((v23[0] & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_36;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_36:
        *(a1 + 8) = v20;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(HDCodableSample);
        objc_storeStrong((a1 + 16), v13);
        v23[0] = 0;
        v23[1] = 0;
        if (!PBReaderPlaceMark() || !HDCodableSampleReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_228990FC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t HDCodableFitnessFriendActivitySnapshotReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v87[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v87 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v87[0] & 0x7F) << v5;
        if ((v87[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 39)
      {
        break;
      }

      if (v13 > 5)
      {
        if (v13 <= 20)
        {
          if (v13 == 6)
          {
            v57 = 0;
            v58 = 0;
            v59 = 0;
            *(a1 + 168) |= 0x2000u;
            while (1)
            {
              LOBYTE(v87[0]) = 0;
              v60 = [a2 position] + 1;
              if (v60 >= [a2 position] && (v61 = objc_msgSend(a2, "position") + 1, v61 <= objc_msgSend(a2, "length")))
              {
                v62 = [a2 data];
                [v62 getBytes:v87 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v59 |= (v87[0] & 0x7F) << v57;
              if ((v87[0] & 0x80) == 0)
              {
                break;
              }

              v57 += 7;
              v11 = v58++ >= 9;
              if (v11)
              {
                v26 = 0;
                goto LABEL_133;
              }
            }

            if ([a2 hasError])
            {
              v26 = 0;
            }

            else
            {
              v26 = v59;
            }

LABEL_133:
            v69 = 112;
LABEL_142:
            *(a1 + v69) = v26;
            goto LABEL_170;
          }

          if (v13 == 20)
          {
            *(a1 + 168) |= 0x40u;
            v87[0] = 0;
            v31 = [a2 position] + 8;
            if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 8, v32 <= objc_msgSend(a2, "length")))
            {
              v83 = [a2 data];
              [v83 getBytes:v87 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v71 = v87[0];
            v72 = 56;
            goto LABEL_169;
          }
        }

        else
        {
          switch(v13)
          {
            case 0x15:
              *(a1 + 168) |= 0x80u;
              v87[0] = 0;
              v50 = [a2 position] + 8;
              if (v50 >= [a2 position] && (v51 = objc_msgSend(a2, "position") + 8, v51 <= objc_msgSend(a2, "length")))
              {
                v76 = [a2 data];
                [v76 getBytes:v87 range:{objc_msgSend(a2, "position"), 8}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
              }

              else
              {
                [a2 _setError];
              }

              v71 = v87[0];
              v72 = 64;
              goto LABEL_169;
            case 0x1E:
              *(a1 + 168) |= 8u;
              v87[0] = 0;
              v43 = [a2 position] + 8;
              if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 8, v44 <= objc_msgSend(a2, "length")))
              {
                v73 = [a2 data];
                [v73 getBytes:v87 range:{objc_msgSend(a2, "position"), 8}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
              }

              else
              {
                [a2 _setError];
              }

              v71 = v87[0];
              v72 = 32;
              goto LABEL_169;
            case 0x1F:
              *(a1 + 168) |= 0x10u;
              v87[0] = 0;
              v18 = [a2 position] + 8;
              if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 8, v19 <= objc_msgSend(a2, "length")))
              {
                v81 = [a2 data];
                [v81 getBytes:v87 range:{objc_msgSend(a2, "position"), 8}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
              }

              else
              {
                [a2 _setError];
              }

              v71 = v87[0];
              v72 = 40;
              goto LABEL_169;
          }
        }

LABEL_124:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_170;
      }

      if (v13 > 2)
      {
        if (v13 != 3)
        {
          if (v13 != 4)
          {
            *(a1 + 168) |= 0x20u;
            v87[0] = 0;
            v14 = [a2 position] + 8;
            if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
            {
              v79 = [a2 data];
              [v79 getBytes:v87 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v71 = v87[0];
            v72 = 48;
LABEL_169:
            *(a1 + v72) = v71;
            goto LABEL_170;
          }

          v35 = 0;
          v36 = 0;
          v37 = 0;
          *(a1 + 168) |= 0x800u;
          while (1)
          {
            LOBYTE(v87[0]) = 0;
            v38 = [a2 position] + 1;
            if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
            {
              v40 = [a2 data];
              [v40 getBytes:v87 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v37 |= (v87[0] & 0x7F) << v35;
            if ((v87[0] & 0x80) == 0)
            {
              break;
            }

            v35 += 7;
            v11 = v36++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_129;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v37;
          }

LABEL_129:
          v69 = 96;
          goto LABEL_142;
        }

        v27 = PBReaderReadData();
        v28 = 160;
        goto LABEL_90;
      }

      if (v13 != 1)
      {
        if (v13 == 2)
        {
          v27 = PBReaderReadData();
          v28 = 144;
LABEL_90:
          v47 = *(a1 + v28);
          *(a1 + v28) = v27;

          goto LABEL_170;
        }

        goto LABEL_124;
      }

      v54 = objc_alloc_init(HDCodableSample);
      objc_storeStrong((a1 + 152), v54);
      v87[0] = 0;
      v87[1] = 0;
      if (!PBReaderPlaceMark() || !HDCodableSampleReadFrom(v54, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_170:
      v85 = [a2 position];
      if (v85 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 > 60)
    {
      if (v13 <= 79)
      {
        if (v13 == 61)
        {
          v63 = 0;
          v64 = 0;
          v65 = 0;
          *(a1 + 168) |= 0x10000u;
          while (1)
          {
            LOBYTE(v87[0]) = 0;
            v66 = [a2 position] + 1;
            if (v66 >= [a2 position] && (v67 = objc_msgSend(a2, "position") + 1, v67 <= objc_msgSend(a2, "length")))
            {
              v68 = [a2 data];
              [v68 getBytes:v87 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v65 |= (v87[0] & 0x7F) << v63;
            if ((v87[0] & 0x80) == 0)
            {
              break;
            }

            v63 += 7;
            v11 = v64++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_137;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v65;
          }

LABEL_137:
          v69 = 136;
          goto LABEL_142;
        }

        if (v13 == 70)
        {
          *(a1 + 168) |= 0x4000u;
          v87[0] = 0;
          v33 = [a2 position] + 8;
          if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 8, v34 <= objc_msgSend(a2, "length")))
          {
            v84 = [a2 data];
            [v84 getBytes:v87 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v71 = v87[0];
          v72 = 120;
          goto LABEL_169;
        }
      }

      else
      {
        switch(v13)
        {
          case 'P':
            *(a1 + 168) |= 0x200u;
            v87[0] = 0;
            v52 = [a2 position] + 8;
            if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 8, v53 <= objc_msgSend(a2, "length")))
            {
              v77 = [a2 data];
              [v77 getBytes:v87 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v71 = v87[0];
            v72 = 80;
            goto LABEL_169;
          case 'Q':
            *(a1 + 168) |= 0x100u;
            v87[0] = 0;
            v45 = [a2 position] + 8;
            if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 8, v46 <= objc_msgSend(a2, "length")))
            {
              v74 = [a2 data];
              [v74 getBytes:v87 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v71 = v87[0];
            v72 = 72;
            goto LABEL_169;
          case 'R':
            v20 = 0;
            v21 = 0;
            v22 = 0;
            *(a1 + 168) |= 4u;
            while (1)
            {
              LOBYTE(v87[0]) = 0;
              v23 = [a2 position] + 1;
              if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
              {
                v25 = [a2 data];
                [v25 getBytes:v87 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v22 |= (v87[0] & 0x7F) << v20;
              if ((v87[0] & 0x80) == 0)
              {
                break;
              }

              v20 += 7;
              v11 = v21++ >= 9;
              if (v11)
              {
                v26 = 0;
                goto LABEL_141;
              }
            }

            if ([a2 hasError])
            {
              v26 = 0;
            }

            else
            {
              v26 = v22;
            }

LABEL_141:
            v69 = 24;
            goto LABEL_142;
        }
      }
    }

    else if (v13 <= 49)
    {
      if (v13 == 40)
      {
        *(a1 + 168) |= 1u;
        v87[0] = 0;
        v55 = [a2 position] + 8;
        if (v55 >= [a2 position] && (v56 = objc_msgSend(a2, "position") + 8, v56 <= objc_msgSend(a2, "length")))
        {
          v78 = [a2 data];
          [v78 getBytes:v87 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v71 = v87[0];
        v72 = 8;
        goto LABEL_169;
      }

      if (v13 == 41)
      {
        *(a1 + 168) |= 2u;
        v87[0] = 0;
        v29 = [a2 position] + 8;
        if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 8, v30 <= objc_msgSend(a2, "length")))
        {
          v82 = [a2 data];
          [v82 getBytes:v87 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v71 = v87[0];
        v72 = 16;
        goto LABEL_169;
      }
    }

    else
    {
      switch(v13)
      {
        case '2':
          *(a1 + 168) |= 0x8000u;
          v87[0] = 0;
          v48 = [a2 position] + 8;
          if (v48 >= [a2 position] && (v49 = objc_msgSend(a2, "position") + 8, v49 <= objc_msgSend(a2, "length")))
          {
            v75 = [a2 data];
            [v75 getBytes:v87 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v71 = v87[0];
          v72 = 128;
          goto LABEL_169;
        case '3':
          *(a1 + 168) |= 0x1000u;
          v87[0] = 0;
          v41 = [a2 position] + 8;
          if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 8, v42 <= objc_msgSend(a2, "length")))
          {
            v70 = [a2 data];
            [v70 getBytes:v87 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v71 = v87[0];
          v72 = 104;
          goto LABEL_169;
        case '<':
          *(a1 + 168) |= 0x400u;
          v87[0] = 0;
          v16 = [a2 position] + 8;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 8, v17 <= objc_msgSend(a2, "length")))
          {
            v80 = [a2 data];
            [v80 getBytes:v87 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v71 = v87[0];
          v72 = 88;
          goto LABEL_169;
      }
    }

    goto LABEL_124;
  }

  return [a2 hasError] ^ 1;
}

uint64_t HDCodableFitnessFriendAchievementReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v35[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v35 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v35[0] & 0x7F) << v5;
        if ((v35[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 4)
      {
        break;
      }

      if (v13 != 1)
      {
        if (v13 == 2)
        {
          v16 = PBReaderReadData();
          v17 = 32;
          goto LABEL_37;
        }

        if (v13 == 4)
        {
          *(a1 + 56) |= 1u;
          v35[0] = 0;
          v14 = [a2 position] + 8;
          if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
          {
            v32 = [a2 data];
            [v32 getBytes:v35 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v30 = v35[0];
          v31 = 8;
LABEL_55:
          *(a1 + v31) = v30;
          goto LABEL_56;
        }

LABEL_34:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_56;
      }

      v18 = objc_alloc_init(HDCodableSample);
      objc_storeStrong((a1 + 40), v18);
      v35[0] = 0;
      v35[1] = 0;
      if (!PBReaderPlaceMark() || !HDCodableSampleReadFrom(v18, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_56:
      v33 = [a2 position];
      if (v33 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v13)
    {
      case 5:
        *(a1 + 56) |= 2u;
        v35[0] = 0;
        v19 = [a2 position] + 8;
        if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 8, v20 <= objc_msgSend(a2, "length")))
        {
          v29 = [a2 data];
          [v29 getBytes:v35 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v30 = v35[0];
        v31 = 16;
        goto LABEL_55;
      case 6:
        v22 = 0;
        v23 = 0;
        v24 = 0;
        *(a1 + 56) |= 4u;
        while (1)
        {
          LOBYTE(v35[0]) = 0;
          v25 = [a2 position] + 1;
          if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
          {
            v27 = [a2 data];
            [v27 getBytes:v35 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v24 |= (v35[0] & 0x7F) << v22;
          if ((v35[0] & 0x80) == 0)
          {
            break;
          }

          v22 += 7;
          v11 = v23++ >= 9;
          if (v11)
          {
            v28 = 0;
            goto LABEL_50;
          }
        }

        if ([a2 hasError])
        {
          v28 = 0;
        }

        else
        {
          v28 = v24;
        }

LABEL_50:
        *(a1 + 24) = v28;
        goto LABEL_56;
      case 0xA:
        v16 = PBReaderReadString();
        v17 = 48;
LABEL_37:
        v21 = *(a1 + v17);
        *(a1 + v17) = v16;

        goto LABEL_56;
    }

    goto LABEL_34;
  }

  return [a2 hasError] ^ 1;
}

uint64_t HDCodableMetadataDictionaryReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(HDCodableMetadataKeyValuePair);
        [a1 addKeyValuePairs:v13];
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !HDCodableMetadataKeyValuePairReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t HDCodableMetadataKeyValuePairReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v35[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v35 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v35[0] & 0x7F) << v5;
        if ((v35[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 3)
      {
        switch(v13)
        {
          case 1:
            v18 = PBReaderReadString();
            v19 = 40;
            goto LABEL_49;
          case 2:
            v18 = PBReaderReadString();
            v19 = 56;
            goto LABEL_49;
          case 3:
            *(a1 + 64) |= 1u;
            v35[0] = 0;
            v16 = [a2 position] + 8;
            if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 8, v17 <= objc_msgSend(a2, "length")))
            {
              v32 = [a2 data];
              [v32 getBytes:v35 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v30 = v35[0];
            v31 = 8;
            goto LABEL_58;
        }

        goto LABEL_34;
      }

      if (v13 <= 5)
      {
        break;
      }

      if (v13 != 6)
      {
        if (v13 == 7)
        {
          v18 = PBReaderReadData();
          v19 = 32;
LABEL_49:
          v28 = *(a1 + v19);
          *(a1 + v19) = v18;

          goto LABEL_59;
        }

        goto LABEL_34;
      }

      v27 = objc_alloc_init(HDCodableQuantity);
      objc_storeStrong((a1 + 48), v27);
      v35[0] = 0;
      v35[1] = 0;
      if (!PBReaderPlaceMark() || !HDCodableQuantityReadFrom(v27, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_59:
      v33 = [a2 position];
      if (v33 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 4)
    {
      v20 = 0;
      v21 = 0;
      v22 = 0;
      *(a1 + 64) |= 4u;
      while (1)
      {
        LOBYTE(v35[0]) = 0;
        v23 = [a2 position] + 1;
        if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
        {
          v25 = [a2 data];
          [v25 getBytes:v35 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v22 |= (v35[0] & 0x7F) << v20;
        if ((v35[0] & 0x80) == 0)
        {
          break;
        }

        v20 += 7;
        v11 = v21++ >= 9;
        if (v11)
        {
          v26 = 0;
          goto LABEL_53;
        }
      }

      if ([a2 hasError])
      {
        v26 = 0;
      }

      else
      {
        v26 = v22;
      }

LABEL_53:
      *(a1 + 24) = v26;
      goto LABEL_59;
    }

    if (v13 == 5)
    {
      *(a1 + 64) |= 2u;
      v35[0] = 0;
      v14 = [a2 position] + 8;
      if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
      {
        v29 = [a2 data];
        [v29 getBytes:v35 range:{objc_msgSend(a2, "position"), 8}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
      }

      else
      {
        [a2 _setError];
      }

      v30 = v35[0];
      v31 = 16;
LABEL_58:
      *(a1 + v31) = v30;
      goto LABEL_59;
    }

LABEL_34:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_59;
  }

  return [a2 hasError] ^ 1;
}

void sub_2289947C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a41, 8);
  _Unwind_Resume(a1);
}

id HDSampleEntityPredicateForDataType(void *a1)
{
  v1 = MEMORY[0x277D10B18];
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(a1, "code")}];
  v3 = [v1 predicateWithProperty:@"data_type" equalToValue:v2];

  return v3;
}

id HDSourceEntityPredicateForLocalDeviceSource()
{
  v0 = [MEMORY[0x277D10B18] predicateWithProperty:@"local_device" equalToValue:MEMORY[0x277CBEC38]];
  v1 = _HDSourceEntityPredicateForNotDeletedWithPredicate(v0);

  return v1;
}

id HDActivityCacheEntityPredicateForCacheIndex(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x277D10B18];
  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:a1];
  v5 = [v3 predicateWithProperty:@"cache_index" value:v4 comparisonType:a2];

  return v5;
}

id HDActivityCacheEntityPredicateForCachesInDateComponentsRange(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _HKCacheIndexFromDateComponents();
  v4 = _HKCacheIndexFromDateComponents();

  v5 = HDActivityCacheEntityPredicateForCacheIndex(v3, 6);
  v6 = HDActivityCacheEntityPredicateForCacheIndex(v4, 4);
  v7 = [MEMORY[0x277D10B70] compoundPredicateWithPredicate:v5 otherPredicate:v6];

  return v7;
}

id HDDataEntityPredicateForDataUUID()
{
  v0 = MEMORY[0x277D10B18];
  v1 = _HDSQLiteValueForUUID();
  v2 = [v0 predicateWithProperty:@"uuid" equalToValue:v1];

  return v2;
}

uint64_t HDSyncAnchorRangeMake(uint64_t a1, uint64_t a2)
{
  if (a2 < a1)
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"HDSyncAnchorRange HDSyncAnchorRangeMake(HDSyncAnchor, HDSyncAnchor)"}];
    [v4 handleFailureInFunction:v5 file:@"HDSyncSupport.m" lineNumber:14 description:{@"Invalid parameter not satisfying: %@", @"end >= start"}];
  }

  return a1;
}

void SetInPersistentUserInfo(void *a1, void *a2)
{
  v8 = a1;
  v3 = a2;
  v4 = [v3 copyForPersistentUserInfo];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 data];
    v7 = [objc_opt_class() persistentUserInfoKey];
    [v8 setObject:v6 forKeyedSubscript:v7];
  }
}

id GetFromPersistentUserInfo(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 persistentUserInfoKey];
  v5 = [v3 objectForKeyedSubscript:v4];

  if (v5)
  {
    v6 = [[a2 alloc] initWithData:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t HDCodableNanoSyncChangeSetReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v29) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v29 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v29 & 0x7F) << v5;
        if ((v29 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v25 = objc_alloc_init(HDCodableNanoSyncChange);
          [a1 addChanges:v25];
          v29 = 0;
          v30 = 0;
          if (!PBReaderPlaceMark() || !HDCodableNanoSyncChangeReadFrom(v25, a2))
          {
LABEL_52:

            return 0;
          }

          goto LABEL_41;
        }

        if (v13 == 2)
        {
          v21 = PBReaderReadData();
          v22 = *(a1 + 32);
          *(a1 + 32) = v21;

          goto LABEL_50;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            *(a1 + 44) |= 1u;
            v29 = 0;
            v23 = [a2 position] + 8;
            if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 8, v24 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:&v29 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            *(a1 + 8) = v29;
            goto LABEL_50;
          case 4:
            v25 = objc_alloc_init(HDCodableError);
            objc_storeStrong((a1 + 24), v25);
            v29 = 0;
            v30 = 0;
            if (!PBReaderPlaceMark() || !HDCodableErrorReadFrom(v25, a2))
            {
              goto LABEL_52;
            }

LABEL_41:
            PBReaderRecallMark();

            goto LABEL_50;
          case 5:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 44) |= 2u;
            while (1)
            {
              LOBYTE(v29) = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v29 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v29 & 0x7F) << v14;
              if ((v29 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_47;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v16;
            }

LABEL_47:
            *(a1 + 40) = v20;
            goto LABEL_50;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_50:
      v27 = [a2 position];
    }

    while (v27 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t HDCodableNanoSyncChangeReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v58) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v58 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v58 & 0x7F) << v5;
        if ((v58 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 5)
      {
        if (v13 <= 7)
        {
          if (v13 == 6)
          {
            v35 = 0;
            v36 = 0;
            v37 = 0;
            *(a1 + 76) |= 0x20u;
            while (1)
            {
              LOBYTE(v58) = 0;
              v38 = [a2 position] + 1;
              if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
              {
                v40 = [a2 data];
                [v40 getBytes:&v58 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v37 |= (v58 & 0x7F) << v35;
              if ((v58 & 0x80) == 0)
              {
                break;
              }

              v35 += 7;
              v11 = v36++ >= 9;
              if (v11)
              {
                LOBYTE(v41) = 0;
                goto LABEL_111;
              }
            }

            v41 = (v37 != 0) & ~[a2 hasError];
LABEL_111:
            v55 = 73;
            goto LABEL_119;
          }

          if (v13 == 7)
          {
            v22 = 0;
            v23 = 0;
            v24 = 0;
            *(a1 + 76) |= 2u;
            while (1)
            {
              LOBYTE(v58) = 0;
              v25 = [a2 position] + 1;
              if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
              {
                v27 = [a2 data];
                [v27 getBytes:&v58 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v24 |= (v58 & 0x7F) << v22;
              if ((v58 & 0x80) == 0)
              {
                break;
              }

              v22 += 7;
              v11 = v23++ >= 9;
              if (v11)
              {
                v21 = 0;
                goto LABEL_105;
              }
            }

            if ([a2 hasError])
            {
              v21 = 0;
            }

            else
            {
              v21 = v24;
            }

LABEL_105:
            v54 = 16;
            goto LABEL_116;
          }
        }

        else
        {
          switch(v13)
          {
            case 8:
              v48 = 0;
              v49 = 0;
              v50 = 0;
              *(a1 + 76) |= 0x10u;
              while (1)
              {
                LOBYTE(v58) = 0;
                v51 = [a2 position] + 1;
                if (v51 >= [a2 position] && (v52 = objc_msgSend(a2, "position") + 1, v52 <= objc_msgSend(a2, "length")))
                {
                  v53 = [a2 data];
                  [v53 getBytes:&v58 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v50 |= (v58 & 0x7F) << v48;
                if ((v58 & 0x80) == 0)
                {
                  break;
                }

                v48 += 7;
                v11 = v49++ >= 9;
                if (v11)
                {
                  LOBYTE(v41) = 0;
                  goto LABEL_118;
                }
              }

              v41 = (v50 != 0) & ~[a2 hasError];
LABEL_118:
              v55 = 72;
LABEL_119:
              *(a1 + v55) = v41;
              goto LABEL_120;
            case 9:
              v14 = objc_alloc_init(HDCodableEntityIdentifier);
              objc_storeStrong((a1 + 32), v14);
              v58 = 0;
              v59 = 0;
              if (!PBReaderPlaceMark() || !HDCodableEntityIdentifierReadFrom(v14, a2))
              {
LABEL_122:

                return 0;
              }

              goto LABEL_94;
            case 0xA:
              v14 = objc_alloc_init(HDCodableSyncVersionRange);
              objc_storeStrong((a1 + 64), v14);
              v58 = 0;
              v59 = 0;
              if (!PBReaderPlaceMark() || !HDCodableSyncVersionRangeReadFrom(v14, a2))
              {
                goto LABEL_122;
              }

              goto LABEL_94;
          }
        }
      }

      else if (v13 <= 2)
      {
        if (v13 == 1)
        {
          v28 = 0;
          v29 = 0;
          v30 = 0;
          *(a1 + 76) |= 8u;
          while (1)
          {
            LOBYTE(v58) = 0;
            v31 = [a2 position] + 1;
            if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
            {
              v33 = [a2 data];
              [v33 getBytes:&v58 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v30 |= (v58 & 0x7F) << v28;
            if ((v58 & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            v11 = v29++ >= 9;
            if (v11)
            {
              v34 = 0;
              goto LABEL_109;
            }
          }

          if ([a2 hasError])
          {
            v34 = 0;
          }

          else
          {
            v34 = v30;
          }

LABEL_109:
          *(a1 + 48) = v34;
          goto LABEL_120;
        }

        if (v13 == 2)
        {
          v15 = 0;
          v16 = 0;
          v17 = 0;
          *(a1 + 76) |= 4u;
          while (1)
          {
            LOBYTE(v58) = 0;
            v18 = [a2 position] + 1;
            if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
            {
              v20 = [a2 data];
              [v20 getBytes:&v58 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v17 |= (v58 & 0x7F) << v15;
            if ((v58 & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v11 = v16++ >= 9;
            if (v11)
            {
              v21 = 0;
              goto LABEL_101;
            }
          }

          if ([a2 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v17;
          }

LABEL_101:
          v54 = 24;
          goto LABEL_116;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v42 = 0;
            v43 = 0;
            v44 = 0;
            *(a1 + 76) |= 1u;
            while (1)
            {
              LOBYTE(v58) = 0;
              v45 = [a2 position] + 1;
              if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
              {
                v47 = [a2 data];
                [v47 getBytes:&v58 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v44 |= (v58 & 0x7F) << v42;
              if ((v58 & 0x80) == 0)
              {
                break;
              }

              v42 += 7;
              v11 = v43++ >= 9;
              if (v11)
              {
                v21 = 0;
                goto LABEL_115;
              }
            }

            if ([a2 hasError])
            {
              v21 = 0;
            }

            else
            {
              v21 = v44;
            }

LABEL_115:
            v54 = 8;
LABEL_116:
            *(a1 + v54) = v21;
            goto LABEL_120;
          case 4:
            v14 = PBReaderReadData();
            if (v14)
            {
              [a1 addObjectData:v14];
            }

            goto LABEL_95;
          case 5:
            v14 = objc_alloc_init(HDCodableNanoSyncAnchor);
            [a1 addRequiredAnchors:v14];
            v58 = 0;
            v59 = 0;
            if (!PBReaderPlaceMark() || !HDCodableNanoSyncAnchorReadFrom(v14, a2))
            {
              goto LABEL_122;
            }

LABEL_94:
            PBReaderRecallMark();
LABEL_95:

            goto LABEL_120;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_120:
      v56 = [a2 position];
    }

    while (v56 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id HDNanoSyncDescriptionWithArray(void *a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        v9 = [v8 nanoSyncDescription];
        v10 = v9;
        if (v9)
        {
          v11 = v9;
        }

        else
        {
          v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"<%@:%p>", objc_opt_class(), v8, v18];
        }

        v12 = v11;

        [v2 addObject:v12];
      }

      v5 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v5);
  }

  v13 = MEMORY[0x277CCACA8];
  v14 = [v2 componentsJoinedByString:{@", "}];
  v15 = [v13 stringWithFormat:@"(%@)", v14];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

id FormattedMessageDescription(int a1, int a2, int a3, void *a4, void *a5)
{
  v9 = a5;
  v10 = a4;
  v11 = HDNanoSyncMessageIDString(a1);
  v12 = "outgoing";
  if (a2)
  {
    v12 = "incoming";
  }

  v13 = "response";
  if (a3)
  {
    v13 = "request";
  }

  v14 = &stru_283BF39C8;
  if (v9)
  {
    v14 = v9;
  }

  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s %@ %s %@ %@", v12, v11, v13, v10, v14];

  return v15;
}

__CFString *HDNanoSyncMessageIDString(int a1)
{
  if ((a1 - 1) > 0xC)
  {
    return @"Unknown";
  }

  else
  {
    return off_2786232F8[(a1 - 1)];
  }
}

uint64_t HDCodableNanoSyncMessageReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v27) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v27 & 0x7F) << v5;
        if ((v27 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 7)
      {
        if (v13 > 9)
        {
          if (v13 == 10)
          {
            v16 = objc_alloc_init(HDCodableSyncEntityVersionMap);
            objc_storeStrong((a1 + 32), v16);
            v27 = 0;
            v28 = 0;
            if (!PBReaderPlaceMark() || !HDCodableSyncEntityVersionMapReadFrom(v16, a2))
            {
LABEL_64:

              return 0;
            }

            goto LABEL_54;
          }

          if (v13 == 11)
          {
            v16 = objc_alloc_init(HDCodableSyncIdentity);
            objc_storeStrong((a1 + 24), v16);
            v27 = 0;
            v28 = 0;
            if (!PBReaderPlaceMark() || !HDCodableSyncIdentityReadFrom(v16, a2))
            {
              goto LABEL_64;
            }

            goto LABEL_54;
          }
        }

        else
        {
          if (v13 == 8)
          {
            v16 = objc_alloc_init(HDCodableNanoSyncStatus);
            objc_storeStrong((a1 + 56), v16);
            v27 = 0;
            v28 = 0;
            if (!PBReaderPlaceMark() || !HDCodableNanoSyncStatusReadFrom(v16, a2))
            {
              goto LABEL_64;
            }

            goto LABEL_54;
          }

          if (v13 == 9)
          {
            v16 = objc_alloc_init(HDCodableNanoSyncActivationRestore);
            objc_storeStrong((a1 + 8), v16);
            v27 = 0;
            v28 = 0;
            if (!PBReaderPlaceMark() || !HDCodableNanoSyncActivationRestoreReadFrom(v16, a2))
            {
              goto LABEL_64;
            }

            goto LABEL_54;
          }
        }
      }

      else if (v13 > 3)
      {
        if (v13 == 4)
        {
          v14 = PBReaderReadData();
          v15 = 40;
          goto LABEL_51;
        }

        if (v13 == 7)
        {
          v16 = objc_alloc_init(HDCodableNanoSyncChangeSet);
          objc_storeStrong((a1 + 16), v16);
          v27 = 0;
          v28 = 0;
          if (!PBReaderPlaceMark() || !HDCodableNanoSyncChangeSetReadFrom(v16, a2))
          {
            goto LABEL_64;
          }

LABEL_54:
          PBReaderRecallMark();

          goto LABEL_55;
        }
      }

      else
      {
        if (v13 == 2)
        {
          v17 = 0;
          v18 = 0;
          v19 = 0;
          *(a1 + 68) |= 1u;
          while (1)
          {
            LOBYTE(v27) = 0;
            v20 = [a2 position] + 1;
            if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
            {
              v22 = [a2 data];
              [v22 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v19 |= (v27 & 0x7F) << v17;
            if ((v27 & 0x80) == 0)
            {
              break;
            }

            v17 += 7;
            v11 = v18++ >= 9;
            if (v11)
            {
              v23 = 0;
              goto LABEL_62;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v19;
          }

LABEL_62:
          *(a1 + 64) = v23;
          goto LABEL_55;
        }

        if (v13 == 3)
        {
          v14 = PBReaderReadData();
          v15 = 48;
LABEL_51:
          v24 = *(a1 + v15);
          *(a1 + v15) = v14;

          goto LABEL_55;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_55:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t HDCodableNanoSyncStatusReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v23[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v23[0] & 0x7F) << v5;
        if ((v23[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v20 = objc_alloc_init(HDCodableNanoSyncAnchor);
        [a1 addAnchors:v20];
        v23[0] = 0;
        v23[1] = 0;
        if (!PBReaderPlaceMark() || !HDCodableNanoSyncAnchorReadFrom(v20, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          LOBYTE(v23[0]) = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23[0] & 0x7F) << v13;
          if ((v23[0] & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_36;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v15;
        }

LABEL_36:
        *(a1 + 16) = v19;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t HDCodableNanoSyncAnchorReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v31[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v31[0] & 0x7F) << v5;
        if ((v31[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v28 = objc_alloc_init(HDCodableEntityIdentifier);
        objc_storeStrong((a1 + 16), v28);
        v31[0] = 0;
        v31[1] = 0;
        if (!PBReaderPlaceMark() || !HDCodableEntityIdentifierReadFrom(v28, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if (v13 == 2)
      {
        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 28) |= 1u;
        while (1)
        {
          LOBYTE(v31[0]) = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v31[0] & 0x7F) << v21;
          if ((v31[0] & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v11 = v22++ >= 9;
          if (v11)
          {
            v27 = 0;
            goto LABEL_46;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v23;
        }

LABEL_46:
        *(a1 + 8) = v27;
      }

      else if (v13 == 1)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 28) |= 2u;
        while (1)
        {
          LOBYTE(v31[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v31[0] & 0x7F) << v14;
          if ((v31[0] & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_50;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_50:
        *(a1 + 24) = v20;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v29 = [a2 position];
    }

    while (v29 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id HDNanoSyncDescriptionSafe(void *a1)
{
  v1 = a1;
  if ([v1 conformsToProtocol:&unk_283CC4C58])
  {
    v2 = [v1 nanoSyncDescription];
  }

  else
  {
    v3 = objc_opt_class();

    v2 = NSStringFromClass(v3);
  }

  return v2;
}

void sub_22899B020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id HKWorkoutLocationBundle()
{
  if (qword_280D67E18 != -1)
  {
    dispatch_once(&qword_280D67E18, &__block_literal_global_212);
  }

  v1 = _MergedGlobals_222;

  return v1;
}

uint64_t __HKWorkoutLocationBundle_block_invoke()
{
  _MergedGlobals_222 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/LocationBundles/AppleWatchWorkout.bundle"];

  return MEMORY[0x2821F96F8]();
}

void HDSetHealthInUseDefaultWithReason(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 BOOLForKey:@"HDHealthInUse"];

  if ((v3 & 1) == 0)
  {
    _HKInitializeLogging();
    v4 = *MEMORY[0x277CCC2B0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_DEBUG))
    {
      v7 = 138543362;
      v8 = v1;
      _os_log_debug_impl(&dword_228986000, v4, OS_LOG_TYPE_DEBUG, "Marking health as in use: %{public}@", &v7, 0xCu);
    }

    v5 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [v5 setValue:MEMORY[0x277CBEC38] forKey:@"HDHealthInUse"];
  }

  v6 = *MEMORY[0x277D85DE8];
}

void health::DataStore::accessSampleHistoryWithIdentifierForWriting<LocationHistoryBehaviorV1>(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = a3;
  operator new();
}

void sub_22899B560(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<BOOL ()(health::DataStore::WriteTransaction &)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t health::DataStore::performWriteTransactionWithLambda(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = &unk_283BF2148;
  v5[1] = a1;
  v5[2] = a2;
  v5[3] = v5;
  v2 = health::BlockAccessFile::performWriteTransactionWithLambda(a1, v5);
  std::__function::__value_func<BOOL ()(health::BlockAccessFile::WriteTransaction &)>::~__value_func[abi:ne200100](v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void sub_22899B600(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<BOOL ()(health::BlockAccessFile::WriteTransaction &)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t health::BlockAccessFile::performWriteTransactionWithLambda(uint64_t a1, uint64_t a2)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v6[0] = &unk_283BEA080;
  v6[1] = a1;
  v6[2] = a2;
  v6[3] = v6;
  health::TransactionalFile::writeTransactionWithLambda(a1, v6);
  v3 = v2;
  std::__function::__value_func<BOOL ()(health::TransactionalFile::WriteTransaction &)>::~__value_func[abi:ne200100](v6);
  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

void sub_22899B6A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<BOOL ()(health::TransactionalFile::WriteTransaction &)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void health::TransactionalFile::writeTransactionWithLambda(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v18.__m_ = (a1 + 584);
  v18.__owns_ = 1;
  std::mutex::lock((a1 + 584));
  if (!*(a1 + 328))
  {
    v4 = *MEMORY[0x277CCC2A0];
    std::string::basic_string[abi:ne200100]<0>(v17, "isOpen()");
    std::string::basic_string[abi:ne200100]<0>(v16, "writeTransactionWithLambda");
    std::string::basic_string[abi:ne200100]<0>(v15, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDTransactionalFile.cpp");
    health::FormatString<>("File has not yet been opened.", &__p);
    health::_HDAssertImplementation<health::transaction_error>(v4, v17, v16, v15, 259, &__p);
  }

  v5 = pthread_self();
  v6 = std::__tree<std::__value_type<std::__thread_id,health::TransactionalFile::ReadTransaction *>,std::__map_value_compare<std::__thread_id,std::__value_type<std::__thread_id,health::TransactionalFile::ReadTransaction *>,std::less<std::__thread_id>,true>,std::allocator<std::__value_type<std::__thread_id,health::TransactionalFile::ReadTransaction *>>>::find<std::__thread_id>(a1 + 768, v5);
  if (a1 + 776 == v6)
  {
    if (a1 + 704 == std::__tree<std::__value_type<std::__thread_id,health::TransactionalFile::ReadTransaction *>,std::__map_value_compare<std::__thread_id,std::__value_type<std::__thread_id,health::TransactionalFile::ReadTransaction *>,std::less<std::__thread_id>,true>,std::allocator<std::__value_type<std::__thread_id,health::TransactionalFile::ReadTransaction *>>>::find<std::__thread_id>(a1 + 696, v5))
    {
      health::TransactionalFile::_transactionMutex_waitForAvailableWriteTransaction(a1, &v18);
      if (*(a1 + 344) != 1)
      {
        v9 = *(a1 + 376);
        v10 = *(a1 + 408);
        operator new();
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Write transaction attempted after file was closed.");
    }

    else
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Unable to upgrade from a read transaction to a write transaction.");
    }

    exception->__vftable = &unk_283BE6F28;
  }

  v7 = v6;
  std::mutex::unlock(v18.__m_);
  v18.__owns_ = 0;
  v8 = *(a2 + 24);
  if (!v8)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  if (((*(*v8 + 48))(v8, *(v7 + 40)) & 1) == 0)
  {
    v12 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v12, "Nested write transaction failed.");
    __cxa_throw(v12, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (v18.__owns_)
  {
    std::mutex::unlock(v18.__m_);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void sub_22899BB48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t health::POSIXFile::truncate(health::POSIXFile *this, char *a2)
{
  v10 = a2;
  result = ftruncate(*(this + 2), a2);
  if (result)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v4 = *__error();
    v5 = std::system_category();
    v6 = __error();
    v7 = __error();
    v8 = strerror(*v7);
    health::FormatString<long long &,int &,char *>(&v9, &v10, v6, &v8);
    MEMORY[0x22AAC8340](exception, v4, v5, &v9);
    __cxa_throw(exception, MEMORY[0x277D82718], MEMORY[0x277D82650]);
  }

  return result;
}

void sub_22899BCBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v16);
  goto LABEL_6;
}

uint64_t health::VirtualFile::write<health::WriteAheadLog::LogHeader>(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v10 = 0;
  v11 = 24;
  v7[0] = v9;
  v7[1] = v9;
  v7[2] = 24;
  LODWORD(v8) = *a2;
  health::SerializationBuffer::appendRaw<unsigned int>(v7, &v8);
  LODWORD(v8) = *(a2 + 4);
  health::SerializationBuffer::appendRaw<unsigned int>(v7, &v8);
  v8 = *(a2 + 8);
  health::SerializationBuffer::appendRaw<unsigned long long>(v7, &v8);
  v8 = *(a2 + 16);
  health::SerializationBuffer::appendRaw<unsigned long long>(v7, &v8);
  if (v11 <= 0x3FF)
  {
    v4 = v9;
  }

  else
  {
    v4 = v10;
  }

  (*(*a1 + 24))(a1, 0, v4);
  result = v10;
  v10 = 0;
  if (result)
  {
    result = MEMORY[0x22AAC8570](result, 0x1000C8077774924);
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_22899BE24(_Unwind_Exception *a1)
{
  v2 = STACK[0x428];
  STACK[0x428] = 0;
  if (v2)
  {
    MEMORY[0x22AAC8570](v2, 0x1000C8077774924);
  }

  _Unwind_Resume(a1);
}

uint64_t health::SerializationBuffer::appendRaw<unsigned int>(uint64_t result, _DWORD *a2)
{
  if (*(result + 16) <= 3uLL)
  {
    v2 = *MEMORY[0x277CCC2A0];
    std::string::basic_string[abi:ne200100]<0>(v7, "sizeof(T) <= _length");
    std::string::basic_string[abi:ne200100]<0>(v6, "appendRaw");
    std::string::basic_string[abi:ne200100]<0>(v5, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/Utility/HDEncoder.h");
    health::FormatString<>("Append would overflow serialization buffer.", &__p);
    health::_HDAssertImplementation<std::out_of_range>(v2, v7, v6, v5, 35, &__p);
  }

  **(result + 8) = *a2;
  v3 = *(result + 16) - 4;
  *(result + 8) += 4;
  *(result + 16) = v3;
  return result;
}

void sub_22899BF58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (*(v26 - 33) < 0)
  {
    operator delete(*(v26 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t health::SerializationBuffer::appendRaw<unsigned long long>(uint64_t result, void *a2)
{
  if (*(result + 16) <= 7uLL)
  {
    v2 = *MEMORY[0x277CCC2A0];
    std::string::basic_string[abi:ne200100]<0>(v7, "sizeof(T) <= _length");
    std::string::basic_string[abi:ne200100]<0>(v6, "appendRaw");
    std::string::basic_string[abi:ne200100]<0>(v5, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/Utility/HDEncoder.h");
    health::FormatString<>("Append would overflow serialization buffer.", &__p);
    health::_HDAssertImplementation<std::out_of_range>(v2, v7, v6, v5, 35, &__p);
  }

  **(result + 8) = *a2;
  v3 = *(result + 16) - 8;
  *(result + 8) += 8;
  *(result + 16) = v3;
  return result;
}

void sub_22899C0C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (*(v26 - 33) < 0)
  {
    operator delete(*(v26 - 56));
  }

  _Unwind_Resume(exception_object);
}

ssize_t health::POSIXFile::write(health::POSIXFile *this, char *a2, const unsigned __int8 *__buf, char *__nbyte)
{
  v12 = __nbyte;
  v13 = a2;
  result = pwrite(*(this + 2), __buf, __nbyte, a2);
  if (result < 0)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v6 = *__error();
    v7 = std::system_category();
    v8 = __error();
    v9 = __error();
    v10 = strerror(*v9);
    health::FormatString<unsigned long &,long long &,int &,char *>(&v11, "Error occurred writing {0} bytes at {1}: {2} {3}", &v12, &v13, v8, &v10);
    MEMORY[0x22AAC8340](exception, v6, v7, &v11);
    __cxa_throw(exception, MEMORY[0x277D82718], MEMORY[0x277D82650]);
  }

  return result;
}

void sub_22899C204(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

unint64_t health::VirtualFile::write<health::WriteAheadLog::LogEntryHeader>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v16 = 0;
  v17 = 36;
  v11 = v15;
  v12 = v15;
  v13 = 36;
  LODWORD(v14) = *a3;
  health::SerializationBuffer::appendRaw<unsigned int>(&v11, &v14);
  v14 = *(a3 + 8);
  health::SerializationBuffer::appendRaw<unsigned long long>(&v11, &v14);
  v14 = *(a3 + 16);
  health::SerializationBuffer::appendRaw<unsigned long long>(&v11, &v14);
  v14 = *(a3 + 24);
  health::SerializationBuffer::appendRaw<unsigned long long>(&v11, &v14);
  LODWORD(v14) = *(a3 + 32);
  health::SerializationBuffer::appendRaw<unsigned int>(&v11, &v14);
  LODWORD(v14) = health::FletcherChecksum(v11, (v12 - v11));
  health::SerializationBuffer::appendRaw<unsigned int>(&v11, &v14);
  v6 = v17;
  if (v17 <= 0x3FF)
  {
    v7 = v15;
  }

  else
  {
    v7 = v16;
  }

  (*(*a1 + 24))(a1, a2, v7, v17);
  v8 = v16;
  v16 = 0;
  if (v8)
  {
    MEMORY[0x22AAC8570](v8, 0x1000C8077774924);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

void sub_22899C3A8(_Unwind_Exception *a1)
{
  v2 = STACK[0x428];
  STACK[0x428] = 0;
  if (v2)
  {
    MEMORY[0x22AAC8570](v2, 0x1000C8077774924);
  }

  _Unwind_Resume(a1);
}

uint64_t health::FletcherChecksum(health *this, char *a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = 0;
  v3 = 0;
  v4 = 0;
  do
  {
    if (a2 >= 0x16A0A9A)
    {
      v5 = 23726746;
    }

    else
    {
      v5 = a2;
    }

    v6 = this + v3;
    v7 = v5;
    do
    {
      v8 = *v6++;
      v2 += v8;
      v4 += v2;
      --v7;
    }

    while (v7);
    v3 += v5;
    v2 %= 0xFFFFuLL;
    v4 %= 0xFFFFuLL;
    a2 -= v5;
  }

  while (a2);
  return v4 | (v2 << 16);
}

uint64_t std::deque<health::BlockPointer>::deque(uint64_t result, void *a2)
{
  *(result + 16) = 0u;
  *(result + 32) = 0u;
  *result = 0u;
  v2 = a2[1];
  if (a2[2] != v2)
  {
    v3 = a2[4];
    v4 = (v3 >> 5) & 0x7FFFFFFFFFFFFF8;
    v5 = (v2 + v4);
    v6 = (*(v2 + v4) + 16 * v3);
    v7 = a2[5] + v3;
    v8 = (v7 >> 5) & 0x7FFFFFFFFFFFFF8;
    if ((*(v2 + v8) + 16 * v7) != v6)
    {
      v9 = a2[4];
      v10 = (*(a2 + 40) + v3) | (32 * (v8 - v4));
      v11 = v10 - v9;
      if (v10 != v9)
      {
        if (v11 == 0xFF)
        {
          v12 = (v11 + 1) >> 8;
        }

        else
        {
          v12 = ((v11 + 1) >> 8) + 1;
        }

        if (v12)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<statistics::Interval>>>(result, v12);
        }

        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = v11 + (-MEMORY[0] >> 4);
        if (v16 < 1)
        {
          v18 = 255 - v16;
          LOBYTE(v16) = ~(-1 - v16);
          v17 = -8 * (v18 >> 8);
        }

        else
        {
          v17 = 8 * (v16 >> 8);
        }

        v19 = *v17 + 16 * v16;
        while (v13 != v19)
        {
          v20 = v19;
          if (v15 != v17)
          {
            v20 = *v15 + 4096;
          }

          if (v13 == v20)
          {
            v20 = v13;
          }

          else
          {
            v21 = v13;
            do
            {
              v22 = *v6++;
              *v21 = v22;
              if ((v6 - *v5) == 4096)
              {
                v23 = v5[1];
                ++v5;
                v6 = v23;
              }

              ++v21;
            }

            while (v21 != v20);
            v14 = *(result + 40);
          }

          v14 += (v20 - v13) >> 4;
          *(result + 40) = v14;
          if (v15 == v17)
          {
            break;
          }

          v24 = v15[1];
          ++v15;
          v13 = v24;
        }
      }
    }
  }

  return result;
}

uint64_t health::DataStore::MutableSampleHistory<LocationHistoryBehaviorV1>::loadHistoryRoot(uint64_t a1, ObjectIdentifier *a2, int a3)
{
  *(a1 + 72) = *a2;
  if ((health::DataStore::ReadTransaction::retrieveObjectWithIdentifier<health::DataStore::SampleHistory<LocationHistoryBehaviorV1>::SampleHistoryRoot>(*(a1 + 96), a1, a2) & 1) == 0)
  {
    if (!a3)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      _ZN6health15not_found_errorCI1St13runtime_errorEPKc(exception, "The requested sample history does not exist.");
    }

    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 48) = 0;
    health::DataStore::MutableSampleHistory<LocationHistoryBehaviorV1>::_updateHistoryRoot(a1);
  }

  return 1;
}

uint64_t health::DataStore::ReadTransaction::retrieveObjectWithIdentifier<health::DataStore::SampleHistory<LocationHistoryBehaviorV1>::SampleHistoryRoot>(health::DataStore::ReadTransaction *a1, void *a2, ObjectIdentifier *a3)
{
  health::DataStore::ReadTransaction::_pointerForObject(a1, a3, v9);
  v5 = v10;
  if (v10 == 1)
  {
    v6 = *(a1 + 3);
    v7 = health::Optional<health::BlockPointer>::get(v9);
    health::BlockAccessFile::ReadTransaction::retrieveObject<health::DataStore::SampleHistory<LocationHistoryBehaviorV1>::SampleHistoryRoot>(v6, *v7, *(v7 + 8), a2);
  }

  return v5;
}

double health::bplustree::Tree<health::BlockAccessFile::ReadTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::valueForKey<health::DataStore::ObjectIdentifier>@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v8 = *(a1 + 16);
  bzero(v10, 0x223uLL);
  health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>>(*(v8 + 16), *a1, *(a1 + 8), v10);
  return health::bplustree::Tree<health::BlockAccessFile::ReadTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::_valueForKey<health::DataStore::ObjectIdentifier>(a1, 0, v10, a2, a3, a4);
}

uint64_t health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>>(uint64_t *a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  v15 = *MEMORY[0x277D85DE8];
  v13 = 0;
  v14 = 547;
  health::RawBuffer::RawBuffer(v11, v12, 547);
  health::BlockAccessFile::ReadTransaction::retrieveBlock(a1, a2, a3, v11);
  v8 = v12;
  if (v14 > 0x3FF)
  {
    v8 = v13;
  }

  v11[0] = v8;
  v11[1] = v8;
  v11[2] = 547;
  health::DeserializeValues<health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>,unsigned short,BOOL>(v11, a4, (a4 + 544), (a4 + 546));
  result = v13;
  v13 = 0;
  if (result)
  {
    result = MEMORY[0x22AAC8570](result, 0x1000C8077774924);
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_22899C9E8(_Unwind_Exception *a1)
{
  v2 = STACK[0x418];
  STACK[0x418] = 0;
  if (v2)
  {
    MEMORY[0x22AAC8570](v2, 0x1000C8077774924);
  }

  _Unwind_Resume(a1);
}

void *health::RawBuffer::RawBuffer(void *this, unsigned __int8 *a2, uint64_t a3)
{
  *this = a2;
  this[1] = a3;
  if (!a2)
  {
    if (a3)
    {
      v3 = *MEMORY[0x277CCC2A0];
      std::string::basic_string[abi:ne200100]<0>(v7, "_buffer != nullptr || _length == 0");
      std::string::basic_string[abi:ne200100]<0>(v6, "RawBuffer");
      std::string::basic_string[abi:ne200100]<0>(v5, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/Utility/HDRawBuffer.h");
      health::FormatString<>("Unable to create a raw buffer of length > 0 at nullptr", &__p);
      health::_HDAssertImplementation<std::out_of_range>(v3, v7, v6, v5, 27, &__p);
    }
  }

  return this;
}

void sub_22899CAF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (*(v26 - 17) < 0)
  {
    operator delete(*(v26 - 40));
  }

  _Unwind_Resume(exception_object);
}

void health::TransactionalFile::ReadTransaction::readBufferAtOffset(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  health::RawBuffer::RawBuffer(v6, *a2, *(a2 + 8));
  health::TransactionalFile::_readBufferAtOffset(v4, v5, v6, a3);
}

double health::WriteAheadLog::Transaction::pageAtOffset@<D0>(health::WriteAheadLog::Transaction *this@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(this + 5);
  if (v3)
  {
    v4 = (this + 40);
    do
    {
      v5 = v3[4];
      v6 = v5 >= a2;
      v7 = v5 < a2;
      if (v6)
      {
        v4 = v3;
      }

      v3 = v3[v7];
    }

    while (v3);
    if (v4 != (this + 40) && v4[4] <= a2)
    {
      health::_PageForEntry(this + 1, a2, (v4 + 5), a3);
    }
  }

  result = 0.0;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  return result;
}

uint64_t health::TransactionalCache<unsigned long long,health::FilePage>::_touchCacheEntry(uint64_t result, uint64_t a2)
{
  if (*(result + 56) != a2 || *(result + 64) != a2)
  {
    v2 = *(a2 + 88);
    if (v2)
    {
      v3 = *(v2 + 88);
      v4 = *(a2 + 80);
      if (v3)
      {
        *(v3 + 80) = a2;
      }

      *(v2 + 80) = v4;
      *(v2 + 88) = a2;
      *(a2 + 80) = v2;
      *(a2 + 88) = v3;
      if (v4)
      {
        *(v4 + 88) = v2;
        v3 = *(a2 + 88);
      }

      if (!v3)
      {
        *(result + 56) = a2;
      }

      if (!*(v2 + 80))
      {
        *(result + 64) = v2;
      }
    }
  }

  return result;
}

uint64_t health::Optional<health::TransactionalCache<unsigned long long,health::FilePage>::CacheEntryDescriptor>::operator->(uint64_t result)
{
  if ((*(result + 56) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Attempt to indirect through to the value of an invalid optional.");
    __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
  }

  return result;
}

void *health::RawBuffer::slice@<X0>(health::RawBuffer *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if ((a3 + a2) > *(this + 1))
  {
    v4 = *MEMORY[0x277CCC2A0];
    std::string::basic_string[abi:ne200100]<0>(v9, "(start + length) <= _length");
    std::string::basic_string[abi:ne200100]<0>(v8, "slice");
    std::string::basic_string[abi:ne200100]<0>(v7, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/Utility/HDRawBuffer.h");
    health::FormatString<>("Slice extends beyond end of buffer.", &__p);
    health::_HDAssertImplementation<std::out_of_range>(v4, v9, v8, v7, 61, &__p);
  }

  return health::RawBuffer::RawBuffer(a4, (*this + a2), a3);
}

void sub_22899CDEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  _Unwind_Resume(exception_object);
}

void *health::FilePage::slice@<X0>(health::FilePage *this@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  if (*this > a2)
  {
    v7 = *MEMORY[0x277CCC2A0];
    std::string::basic_string[abi:ne200100]<0>(v24, "offset >= _offset");
    std::string::basic_string[abi:ne200100]<0>(v23, "slice");
    std::string::basic_string[abi:ne200100]<0>(v22, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/Utility/HDFilePage.h");
    health::FormatString<>("Attempt to slice starting before the page start.", &v21);
    health::_HDAssertImplementation<std::out_of_range>(v7, v24, v23, v22, 82, &v21);
  }

  v8 = a2 - *this;
  if (*(this + 1) - v8 < a3)
  {
    v9 = *MEMORY[0x277CCC2A0];
    std::string::basic_string[abi:ne200100]<0>(v20, "length <= (_length - localOffset)");
    std::string::basic_string[abi:ne200100]<0>(v19, "slice");
    std::string::basic_string[abi:ne200100]<0>(v18, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/Utility/HDFilePage.h");
    health::FormatString<>("Attempt to slice beyond page end", &__p);
    health::_HDAssertImplementation<std::out_of_range>(v9, v20, v19, v18, 84, &__p);
  }

  v10 = *(this + 2);
  if (!v10)
  {
    v10 = (*(**(this + 4) + 16))(*(this + 4));
    if (!v10)
    {
      v11 = *MEMORY[0x277CCC2A0];
      std::string::basic_string[abi:ne200100]<0>(v16, "rawBytes != nullptr");
      std::string::basic_string[abi:ne200100]<0>(v15, "slice");
      std::string::basic_string[abi:ne200100]<0>(v14, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/Utility/HDFilePage.h");
      health::FormatString<>("Attempt to slice an invalid page.", &v13);
      health::_HDAssertImplementation<std::out_of_range>(v11, v16, v15, v14, 86, &v13);
    }
  }

  return health::RawBuffer::RawBuffer(a4, (v10 + v8), a3);
}

void sub_22899D0F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, char a51, uint64_t a52, int a53, __int16 a54, char a55, char a56)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  _Unwind_Resume(exception_object);
}

void *health::RawBuffer::copyFrom(health::RawBuffer *this, const health::RawBuffer *a2)
{
  if (*(a2 + 1) != *(this + 1))
  {
    v2 = *MEMORY[0x277CCC2A0];
    std::string::basic_string[abi:ne200100]<0>(v17, "source._length == _length");
    std::string::basic_string[abi:ne200100]<0>(v16, "copyFrom");
    std::string::basic_string[abi:ne200100]<0>(v15, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/Utility/HDRawBuffer.h");
    health::FormatString<>("Cannot copy buffers of unequal sizes.", &v14);
    health::_HDAssertImplementation<std::out_of_range>(v2, v17, v16, v15, 73, &v14);
  }

  if (!*this)
  {
    v3 = *MEMORY[0x277CCC2A0];
    std::string::basic_string[abi:ne200100]<0>(v13, "_buffer != nullptr");
    std::string::basic_string[abi:ne200100]<0>(v12, "copyFrom");
    std::string::basic_string[abi:ne200100]<0>(v11, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/Utility/HDRawBuffer.h");
    health::FormatString<>("Canot copy to an invalid buffer.", &__p);
    health::_HDAssertImplementation<std::logic_error>(v3, v13, v12, v11, 74, &__p);
  }

  if (!*a2)
  {
    v4 = *MEMORY[0x277CCC2A0];
    std::string::basic_string[abi:ne200100]<0>(v9, "source._buffer != nullptr");
    std::string::basic_string[abi:ne200100]<0>(v8, "copyFrom");
    std::string::basic_string[abi:ne200100]<0>(v7, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/Utility/HDRawBuffer.h");
    health::FormatString<>("Cannot copy from an invalid buffer.", &v6);
    health::_HDAssertImplementation<std::logic_error>(v4, v9, v8, v7, 75, &v6);
  }

  return memcpy(*this, *a2, *(this + 1));
}

void sub_22899D46C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  _Unwind_Resume(exception_object);
}

uint64_t health::DeserializeValues<health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>,unsigned short,BOOL>(uint64_t a1, uint64_t a2, _WORD *a3, BOOL *a4)
{
  for (i = 0; i != 17; ++i)
  {
    v9 = health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a2, i);
    v11 = 0;
    health::DeserializationBuffer::extractRaw<long long>(a1, &v11);
    *v9 = v11;
    v11 = 0;
    health::DeserializationBuffer::extractRaw<unsigned long long>(a1, &v11);
    v9[1] = v11;
    v11 = 0;
    health::DeserializationBuffer::extractRaw<unsigned long long>(a1, &v11);
    v9[2] = v11;
    v11 = 0;
    health::DeserializationBuffer::extractRaw<unsigned long long>(a1, &v11);
    v9[3] = v11;
  }

  LOWORD(v11) = 0;
  health::DeserializationBuffer::extractRaw<unsigned short>(a1, &v11);
  *a3 = v11;
  LOBYTE(v11) = 0;
  result = health::DeserializationBuffer::extractRaw<unsigned char>(a1, &v11);
  *a4 = v11 != 0;
  return result;
}

uint64_t health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>::operator[](uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x11)
  {
    v2 = *MEMORY[0x277CCC2A0];
    std::string::basic_string[abi:ne200100]<0>(v7, "index < Length");
    std::string::basic_string[abi:ne200100]<0>(v6, "operator[]");
    std::string::basic_string[abi:ne200100]<0>(v5, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/Utility/HDStaticArray.h");
    health::FormatString<>("Index out of bounds.", &__p);
    health::_HDAssertImplementation<std::out_of_range>(v2, v7, v6, v5, 43, &__p);
  }

  return a1 + 32 * a2;
}

{
  if (a2 >= 0x11)
  {
    v2 = *MEMORY[0x277CCC2A0];
    std::string::basic_string[abi:ne200100]<0>(v7, "index < Length");
    std::string::basic_string[abi:ne200100]<0>(v6, "operator[]");
    std::string::basic_string[abi:ne200100]<0>(v5, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/Utility/HDStaticArray.h");
    health::FormatString<>("Index out of bounds.", &__p);
    health::_HDAssertImplementation<std::out_of_range>(v2, v7, v6, v5, 50, &__p);
  }

  return a1 + 32 * a2;
}

void sub_22899D770(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (*(v26 - 33) < 0)
  {
    operator delete(*(v26 - 56));
  }

  _Unwind_Resume(exception_object);
}

void *health::StaticArray<health::bplustree::LeafNode<health::DataStore::ObjectIdentifier,health::BlockPointer,health::BlockPointer,17>::ValueEntry,17ul>::copyElementsFromArrayToIndex(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((a5 + a2) >= 0x12)
  {
    v5 = *MEMORY[0x277CCC2A0];
    std::string::basic_string[abi:ne200100]<0>(v15, "destinationIndex + elementCount <= Length");
    std::string::basic_string[abi:ne200100]<0>(v14, "copyElementsFromArrayToIndex");
    std::string::basic_string[abi:ne200100]<0>(v13, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/Utility/HDStaticArray.h");
    health::FormatString<>("Copy would overflow destination.", &__p);
    health::_HDAssertImplementation<std::out_of_range>(v5, v15, v14, v13, 79, &__p);
  }

  if ((a5 + a4) >= 0x12)
  {
    v6 = *MEMORY[0x277CCC2A0];
    std::string::basic_string[abi:ne200100]<0>(v11, "sourceIndex + elementCount <= Length");
    std::string::basic_string[abi:ne200100]<0>(v10, "copyElementsFromArrayToIndex");
    std::string::basic_string[abi:ne200100]<0>(v9, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/Utility/HDStaticArray.h");
    health::FormatString<>("Copy would overflow source.", &v8);
    health::_HDAssertImplementation<std::out_of_range>(v6, v11, v10, v9, 80, &v8);
  }

  return memcpy((a1 + 32 * a2), (a3 + 32 * a4), 32 * a5);
}

void sub_22899D99C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  _Unwind_Resume(exception_object);
}

void *health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>::deleteElementAtIndex(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x11)
  {
    v2 = *MEMORY[0x277CCC2A0];
    std::string::basic_string[abi:ne200100]<0>(v7, "index < Length");
    std::string::basic_string[abi:ne200100]<0>(v6, "deleteElementAtIndex");
    std::string::basic_string[abi:ne200100]<0>(v5, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/Utility/HDStaticArray.h");
    health::FormatString<>("Index out of bounds.", &__p);
    health::_HDAssertImplementation<std::out_of_range>(v2, v7, v6, v5, 65, &__p);
  }

  return memmove((a1 + 32 * a2), (a1 + 32 * a2 + 32), 512 - 32 * a2);
}

void sub_22899DB58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (*(v26 - 33) < 0)
  {
    operator delete(*(v26 - 56));
  }

  _Unwind_Resume(exception_object);
}

__n128 health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>::insertElementAtIndex(uint64_t a1, __n128 *a2, unint64_t a3)
{
  if (a3 >= 0x11)
  {
    v4 = *MEMORY[0x277CCC2A0];
    std::string::basic_string[abi:ne200100]<0>(v10, "index < Length");
    std::string::basic_string[abi:ne200100]<0>(v9, "insertElementAtIndex");
    std::string::basic_string[abi:ne200100]<0>(v8, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/Utility/HDStaticArray.h");
    health::FormatString<>("Index out of bounds.", &__p);
    health::_HDAssertImplementation<std::out_of_range>(v4, v10, v9, v8, 57, &__p);
  }

  v5 = (a1 + 32 * a3);
  memmove(&v5[2], v5, 512 - 32 * a3);
  result = a2[1];
  *v5 = *a2;
  v5[1] = result;
  return result;
}

void sub_22899DCC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (*(v26 - 33) < 0)
  {
    operator delete(*(v26 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t health::DeserializationBuffer::extractRaw<long long>(uint64_t result, void *a2)
{
  if (*(result + 16) <= 7uLL)
  {
    v2 = *MEMORY[0x277CCC2A0];
    std::string::basic_string[abi:ne200100]<0>(v7, "sizeof(T) <= _length");
    std::string::basic_string[abi:ne200100]<0>(v6, "extractRaw");
    std::string::basic_string[abi:ne200100]<0>(v5, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/Utility/HDEncoder.h");
    health::FormatString<>("Extract would overflow deserialization buffer.", &__p);
    health::_HDAssertImplementation<std::out_of_range>(v2, v7, v6, v5, 63, &__p);
  }

  *a2 = **(result + 8);
  v3 = *(result + 16) - 8;
  *(result + 8) += 8;
  *(result + 16) = v3;
  return result;
}

void sub_22899DE2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (*(v26 - 33) < 0)
  {
    operator delete(*(v26 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t health::DeserializationBuffer::extractRaw<unsigned long long>(uint64_t result, void *a2)
{
  if (*(result + 16) <= 7uLL)
  {
    v2 = *MEMORY[0x277CCC2A0];
    std::string::basic_string[abi:ne200100]<0>(v7, "sizeof(T) <= _length");
    std::string::basic_string[abi:ne200100]<0>(v6, "extractRaw");
    std::string::basic_string[abi:ne200100]<0>(v5, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/Utility/HDEncoder.h");
    health::FormatString<>("Extract would overflow deserialization buffer.", &__p);
    health::_HDAssertImplementation<std::out_of_range>(v2, v7, v6, v5, 63, &__p);
  }

  *a2 = **(result + 8);
  v3 = *(result + 16) - 8;
  *(result + 8) += 8;
  *(result + 16) = v3;
  return result;
}

void sub_22899DF94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (*(v26 - 33) < 0)
  {
    operator delete(*(v26 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t health::DeserializationBuffer::extractRaw<unsigned short>(uint64_t result, _WORD *a2)
{
  if (*(result + 16) <= 1uLL)
  {
    v2 = *MEMORY[0x277CCC2A0];
    std::string::basic_string[abi:ne200100]<0>(v7, "sizeof(T) <= _length");
    std::string::basic_string[abi:ne200100]<0>(v6, "extractRaw");
    std::string::basic_string[abi:ne200100]<0>(v5, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/Utility/HDEncoder.h");
    health::FormatString<>("Extract would overflow deserialization buffer.", &__p);
    health::_HDAssertImplementation<std::out_of_range>(v2, v7, v6, v5, 63, &__p);
  }

  *a2 = **(result + 8);
  v3 = *(result + 16) - 2;
  *(result + 8) += 2;
  *(result + 16) = v3;
  return result;
}

void sub_22899E0FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (*(v26 - 33) < 0)
  {
    operator delete(*(v26 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t health::DeserializationBuffer::extractRaw<unsigned char>(uint64_t result, _BYTE *a2)
{
  if (!*(result + 16))
  {
    v2 = *MEMORY[0x277CCC2A0];
    std::string::basic_string[abi:ne200100]<0>(v7, "sizeof(T) <= _length");
    std::string::basic_string[abi:ne200100]<0>(v6, "extractRaw");
    std::string::basic_string[abi:ne200100]<0>(v5, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/Utility/HDEncoder.h");
    health::FormatString<>("Extract would overflow deserialization buffer.", &__p);
    health::_HDAssertImplementation<std::out_of_range>(v2, v7, v6, v5, 63, &__p);
  }

  *a2 = **(result + 8);
  v3 = *(result + 16) - 1;
  ++*(result + 8);
  *(result + 16) = v3;
  return result;
}

void sub_22899E260(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (*(v26 - 33) < 0)
  {
    operator delete(*(v26 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::childForKey(uint64_t a1, void *a2)
{
  if (!*(a1 + 544))
  {
    v4 = *MEMORY[0x277CCC2A0];
    std::string::basic_string[abi:ne200100]<0>(v11, "childCount > 0");
    std::string::basic_string[abi:ne200100]<0>(v10, "childForKey");
    std::string::basic_string[abi:ne200100]<0>(v9, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDBPlusTree.hpp");
    health::FormatString<>("Looking for child for key in an empty node.", &__p);
    health::_HDAssertImplementation<health::btree_access_error>(v4, v11, v10, v9, 58, &__p);
  }

  if (*(a1 + 544) == 1)
  {
LABEL_9:
    LOWORD(v5) = 0;
  }

  else
  {
    v5 = (*(a1 + 544) - 1);
    while (1)
    {
      v6 = health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a1, v5);
      if (*a2 > *v6 || *a2 >= *v6 && a2[1] >= v6[1])
      {
        break;
      }

      if (!--v5)
      {
        goto LABEL_9;
      }
    }
  }

  return v5;
}

void sub_22899E400(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (*(v26 - 33) < 0)
  {
    operator delete(*(v26 - 56));
  }

  _Unwind_Resume(exception_object);
}

void sub_22899E54C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (*(v26 - 33) < 0)
  {
    operator delete(*(v26 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::LeafNode<health::DataStore::ObjectIdentifier,health::BlockPointer,health::BlockPointer,17>>(uint64_t *a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  v15 = *MEMORY[0x277D85DE8];
  v13 = 0;
  v14 = 578;
  health::RawBuffer::RawBuffer(v11, v12, 578);
  health::BlockAccessFile::ReadTransaction::retrieveBlock(a1, a2, a3, v11);
  v8 = v12;
  if (v14 > 0x3FF)
  {
    v8 = v13;
  }

  v11[0] = v8;
  v11[1] = v8;
  v11[2] = 578;
  health::DeserializeValues<health::StaticArray<health::bplustree::LeafNode<health::DataStore::ObjectIdentifier,health::BlockPointer,health::BlockPointer,17>::ValueEntry,17ul>,unsigned short,health::BlockPointer,health::BlockPointer>(v11, a4, (a4 + 544), (a4 + 552), (a4 + 568));
  result = v13;
  v13 = 0;
  if (result)
  {
    result = MEMORY[0x22AAC8570](result, 0x1000C8077774924);
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_22899E6A8(_Unwind_Exception *a1)
{
  v2 = STACK[0x418];
  STACK[0x418] = 0;
  if (v2)
  {
    MEMORY[0x22AAC8570](v2, 0x1000C8077774924);
  }

  _Unwind_Resume(a1);
}

uint64_t health::DeserializeValues<health::StaticArray<health::bplustree::LeafNode<health::DataStore::ObjectIdentifier,health::BlockPointer,health::BlockPointer,17>::ValueEntry,17ul>,unsigned short,health::BlockPointer,health::BlockPointer>(uint64_t a1, uint64_t a2, _WORD *a3, void *a4, void *a5)
{
  for (i = 0; i != 17; ++i)
  {
    v11 = health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a2, i);
    v13 = 0;
    health::DeserializationBuffer::extractRaw<long long>(a1, &v13);
    *v11 = v13;
    v13 = 0;
    health::DeserializationBuffer::extractRaw<unsigned long long>(a1, &v13);
    v11[1] = v13;
    v13 = 0;
    health::DeserializationBuffer::extractRaw<unsigned long long>(a1, &v13);
    v11[2] = v13;
    v13 = 0;
    health::DeserializationBuffer::extractRaw<unsigned long long>(a1, &v13);
    v11[3] = v13;
  }

  LOWORD(v13) = 0;
  health::DeserializationBuffer::extractRaw<unsigned short>(a1, &v13);
  *a3 = v13;
  v13 = 0;
  health::DeserializationBuffer::extractRaw<unsigned long long>(a1, &v13);
  *a4 = v13;
  v13 = 0;
  health::DeserializationBuffer::extractRaw<unsigned long long>(a1, &v13);
  a4[1] = v13;
  v13 = 0;
  health::DeserializationBuffer::extractRaw<unsigned long long>(a1, &v13);
  *a5 = v13;
  v13 = 0;
  result = health::DeserializationBuffer::extractRaw<unsigned long long>(a1, &v13);
  a5[1] = v13;
  return result;
}

uint64_t health::bplustree::LeafNode<health::DataStore::ObjectIdentifier,health::BlockPointer,health::BlockPointer,17>::indexForKey(uint64_t a1, void *a2)
{
  v4 = *(a1 + 544);
  if (!*(a1 + 544))
  {
    v5 = *MEMORY[0x277CCC2A0];
    std::string::basic_string[abi:ne200100]<0>(v15, "valueCount > 0");
    std::string::basic_string[abi:ne200100]<0>(v14, "indexForKey");
    std::string::basic_string[abi:ne200100]<0>(v13, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDBPlusTree.hpp");
    health::FormatString<>("Looking for index for key in an empty node.", &__p);
    health::_HDAssertImplementation<health::btree_access_error>(v5, v15, v14, v13, 72, &__p);
  }

  v6 = v4 - 1;
  while (1)
  {
    LOWORD(v4) = v4 - 1;
    v7 = health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a1, v6);
    if (*a2 > *v7)
    {
      v10 = 0x200000000;
      return v10 | v6;
    }

    if (*a2 >= *v7 && a2[1] > v7[1])
    {
      v10 = 0x200000000;
      goto LABEL_14;
    }

    v8 = health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a1, v6);
    if (*a2 == *v8 && a2[1] == v8[1])
    {
      break;
    }

    if (!v6--)
    {
      LOWORD(v6) = 0;
      v10 = 0x100000000;
      return v10 | v6;
    }
  }

  v10 = 0;
LABEL_14:
  LOWORD(v6) = v4;
  return v10 | v6;
}

void sub_22899E9BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  _Unwind_Resume(exception_object);
}

uint64_t health::DataStore::WriteTransaction::storeObjectWithIdentifier<health::DataStore::SampleHistory<LocationHistoryBehaviorV1>::SampleHistoryRoot>(uint64_t a1, void *a2, __n128 *a3)
{
  v17 = *(a1 + 32);
  v18 = a1 + 48;
  health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::valueForKey<health::DataStore::ObjectIdentifier>(&v17, a3, 0, v15);
  if (v16)
  {
    v6 = *(health::Optional<health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::LookupResult>::operator->(v15) + 24);
    v7 = health::Optional<health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::LookupResult>::operator->(v15);
    v8 = *(v7 + 16);
    v9 = *(v7 + 24);
    if (v6 == 56)
    {
      return health::BlockAccessFile::WriteTransaction::updateObject<health::DataStore::SampleHistory<LocationHistoryBehaviorV1>::SampleHistoryRoot>(a1 + 80, v8, v9, a2);
    }

    health::BlockAccessFile::WriteTransaction::freeBlock(a1 + 80, v8, v9);
  }

  v11 = health::BlockAccessFile::WriteTransaction::_requestBlockOfLength((a1 + 80), 56);
  v13 = v12;
  health::BlockAccessFile::WriteTransaction::updateObject<health::DataStore::SampleHistory<LocationHistoryBehaviorV1>::SampleHistoryRoot>(a1 + 80, v11, v12, a2);
  v14.n128_u64[0] = v11;
  v14.n128_u64[1] = v13;
  return health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::setValueForKey(&v17, a3, &v14);
}

double health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::valueForKey<health::DataStore::ObjectIdentifier>@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v8 = *(a1 + 16);
  bzero(v10, 0x223uLL);
  health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>>(*(v8 + 24), *a1, *(a1 + 8), v10);
  return health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::_valueForKey<health::DataStore::ObjectIdentifier>(a1, 0, v10, a2, a3, a4);
}

uint64_t health::BlockAccessFile::WriteTransaction::_requestBlockOfLength(health::BlockAccessFile::WriteTransaction *this, uint64_t a2)
{
  v9 = a2;
  v10 = 0;
  v4 = *(this + 3);
  v5 = *(v4 + 4);
  if ((*(this + 48) & 1) == 0)
  {
    *(this + 48) = 0;
  }

  if (v5 <= 1)
  {
    v6 = a2;
  }

  else
  {
    v6 = a2 + 12;
  }

  v7 = *(v4 + 16);
  *(v4 + 16) = v7 + v6;
  health::TransactionalFile::WriteTransaction::storeObjectAtOffset<health::BlockAccessFile::BlockAccessFileHeader &>(*(this + 2), v4, 0);
  health::TransactionalFile::WriteTransaction::storeObjectAtOffset<health::BlockAccessFile::BlockHeader &>(*(this + 2), &v9, v7);
  return v7;
}

uint64_t health::TransactionalFile::ReadTransaction::readObjectAtOffset<health::BTreeNode<unsigned long long,health::BlockAccessFile::FreeSpaceList,unsigned long long,17>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = *MEMORY[0x277D85DE8];
  health::SmartBuffer::SmartBuffer(v22, 0x6F2uLL);
  if (v24 <= 0x3FF)
  {
    v6 = v22;
  }

  else
  {
    v6 = v23;
  }

  v20[0] = v6;
  v20[1] = v6;
  v20[2] = 1778;
  health::RawBuffer::RawBuffer(v19, v6, v24);
  health::RawBuffer::RawBuffer(v18, v19[0], v19[1]);
  v9 = a1 + 8;
  v7 = *(a1 + 8);
  v8 = *(v9 + 8);
  health::RawBuffer::RawBuffer(v21, v18[0], v18[1]);
  health::TransactionalFile::_readBufferAtOffset(v8, v7, v21, a3);
  for (i = 0; i != 17; ++i)
  {
    v11 = health::StaticArray<health::BTreeNode<unsigned long long,health::BlockAccessFile::FreeSpaceList,unsigned long long,17>::ValueEntry,17ul>::operator[](a2, i);
    v21[0] = 0;
    health::DeserializationBuffer::extractRaw<unsigned long long>(v20, v21);
    v12 = 0;
    *v11 = v21[0];
    do
    {
      v13 = health::StaticArray<unsigned long long,10ul>::operator[]((v11 + 1), v12);
      v21[0] = 0;
      health::DeserializationBuffer::extractRaw<unsigned long long>(v20, v21);
      *v13 = v21[0];
      ++v12;
    }

    while (v12 != 10);
    v21[0] = 0;
    health::DeserializationBuffer::extractRaw<unsigned long long>(v20, v21);
    v11[11] = v21[0];
  }

  for (j = 0; j != 18; ++j)
  {
    v15 = health::StaticArray<unsigned long long,18ul>::operator[](a2 + 1632, j);
    v21[0] = 0;
    health::DeserializationBuffer::extractRaw<unsigned long long>(v20, v21);
    *v15 = v21[0];
  }

  LOWORD(v21[0]) = 0;
  health::DeserializationBuffer::extractRaw<unsigned short>(v20, v21);
  *(a2 + 1776) = v21[0];
  result = v23;
  v23 = 0;
  if (result)
  {
    result = MEMORY[0x22AAC8570](result, 0x1000C8077774924);
  }

  v17 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t health::StaticArray<health::BTreeNode<unsigned long long,health::BlockAccessFile::FreeSpaceList,unsigned long long,17>::ValueEntry,17ul>::operator[](uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x11)
  {
    v2 = *MEMORY[0x277CCC2A0];
    std::string::basic_string[abi:ne200100]<0>(v7, "index < Length");
    std::string::basic_string[abi:ne200100]<0>(v6, "operator[]");
    std::string::basic_string[abi:ne200100]<0>(v5, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/Utility/HDStaticArray.h");
    health::FormatString<>("Index out of bounds.", &__p);
    health::_HDAssertImplementation<std::out_of_range>(v2, v7, v6, v5, 43, &__p);
  }

  return a1 + 96 * a2;
}

void sub_22899EF04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (*(v26 - 33) < 0)
  {
    operator delete(*(v26 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t health::StaticArray<unsigned long long,10ul>::operator[](uint64_t a1, unint64_t a2)
{
  if (a2 >= 0xA)
  {
    v2 = *MEMORY[0x277CCC2A0];
    std::string::basic_string[abi:ne200100]<0>(v7, "index < Length");
    std::string::basic_string[abi:ne200100]<0>(v6, "operator[]");
    std::string::basic_string[abi:ne200100]<0>(v5, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/Utility/HDStaticArray.h");
    health::FormatString<>("Index out of bounds.", &__p);
    health::_HDAssertImplementation<std::out_of_range>(v2, v7, v6, v5, 43, &__p);
  }

  return a1 + 8 * a2;
}

void sub_22899F050(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (*(v26 - 33) < 0)
  {
    operator delete(*(v26 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t health::StaticArray<unsigned long long,18ul>::operator[](uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x12)
  {
    v2 = *MEMORY[0x277CCC2A0];
    std::string::basic_string[abi:ne200100]<0>(v7, "index < Length");
    std::string::basic_string[abi:ne200100]<0>(v6, "operator[]");
    std::string::basic_string[abi:ne200100]<0>(v5, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/Utility/HDStaticArray.h");
    health::FormatString<>("Index out of bounds.", &__p);
    health::_HDAssertImplementation<std::out_of_range>(v2, v7, v6, v5, 43, &__p);
  }

  return a1 + 8 * a2;
}

void sub_22899F19C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (*(v26 - 33) < 0)
  {
    operator delete(*(v26 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t health::BlockAccessFile::WriteTransaction::_allocateBlockOfLength(health::BlockAccessFile::WriteTransaction *this, uint64_t a2)
{
  v5 = this + 16;
  v3 = *(this + 2);
  v4 = *(v5 + 1);
  v6 = *(v4 + 16);
  *(v4 + 16) = v6 + a2;
  health::TransactionalFile::WriteTransaction::storeObjectAtOffset<health::BlockAccessFile::BlockAccessFileHeader &>(v3, v4, 0);
  return v6;
}

uint64_t health::TransactionalFile::WriteTransaction::storeObjectAtOffset<health::BlockAccessFile::BlockAccessFileHeader &>(health::TransactionalFile::WriteTransaction *a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v11 = 0;
  v12 = 68;
  v9[0] = v10;
  v9[1] = v10;
  v9[2] = 68;
  health::BlockAccessFile::BlockAccessFileHeader::serialize(a2, v9);
  if (v12 <= 0x3FF)
  {
    v5 = v10;
  }

  else
  {
    v5 = v11;
  }

  health::RawBuffer::RawBuffer(v8, v5, v12);
  health::TransactionalFile::WriteTransaction::writeBufferAtOffset(a1, v8, a3);
  result = v11;
  v11 = 0;
  if (result)
  {
    result = MEMORY[0x22AAC8570](result, 0x1000C8077774924);
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_22899F310(_Unwind_Exception *a1)
{
  v2 = STACK[0x428];
  STACK[0x428] = 0;
  if (v2)
  {
    MEMORY[0x22AAC8570](v2, 0x1000C8077774924);
  }

  _Unwind_Resume(a1);
}

void health::TransactionalFile::WriteTransaction::writeBufferAtOffset(health::TransactionalFile::WriteTransaction *this, const health::RawBuffer *a2, uint64_t a3)
{
  health::TransactionalFile::_writeBufferAtOffset(*(this + 4), *(this + 1), a2, a3);
  v6 = *(a2 + 1) + a3 + *(this + 3);
  if (v6 > *(this + 5))
  {
    *(this + 5) = v6;
  }
}

void health::FilePage::copy(health::FilePage *this, void *a2)
{
  v2 = a2[1];
  *this = *a2;
  *(this + 1) = v2;
  operator new[]();
}

void sub_22899F51C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (*(v27 - 33) < 0)
  {
    operator delete(*(v27 - 56));
  }

  health::FilePage::~FilePage(v26);
  _Unwind_Resume(a1);
}

void health::TransactionalCache<unsigned long long,health::FilePage>::setValueForKey(void *a1, unint64_t a2, unint64_t *a3, __int128 *a4, unint64_t a5, int a6)
{
  v41[0] = a3;
  v12 = std::__hash_table<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(a1 + 2, *a3);
  for (i = v12[3]; ; ++i)
  {
    if (i == v12[4])
    {
      v36 = *a4;
      v14 = *(a4 + 3);
      v35 = *(a4 + 2);
      if (v14)
      {
        atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
      }

      v15 = *(a4 + 5);
      v34 = *(a4 + 4);
      if (v15)
      {
        atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
      }

      health::TransactionalCache<unsigned long long,health::FilePage>::_pruneIfNeeded(a1, 0, a5);
      v41[0] = a3;
      v16 = std::__hash_table<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(a1 + 2, *a3);
      v18 = v16[3];
      v17 = v16[4];
      if (v18 != v17)
      {
        do
        {
          if (*(*v18 + 8) > a2)
          {
            goto LABEL_13;
          }

          v18 += 8;
        }

        while (v18 != v17);
        v19 = v16[4];
      }

LABEL_13:
      operator new();
    }

    if (*(*i + 8) == a2)
    {
      break;
    }
  }

  v37 = *a4;
  v21 = *(a4 + 2);
  v20 = *(a4 + 3);
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v23 = *(a4 + 4);
  v22 = *(a4 + 5);
  if (v22)
  {
    atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (a6 != 1 && **i)
  {
    v24 = *MEMORY[0x277CCC2A0];
    std::string::basic_string[abi:ne200100]<0>(v41, "(state == CacheEntryState::Dirty) || (entry->state == CacheEntryState::Clean)");
    std::string::basic_string[abi:ne200100]<0>(&v40, "_replaceValueForEntry");
    std::string::basic_string[abi:ne200100]<0>(v39, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/Utility/HDTransactionalCache.hpp");
    health::FormatString<>("Unable to replace a dirty entry with a clean one.", &__p);
    health::_HDAssertImplementation<std::logic_error>(v24, v41, &v40, v39, 89, &__p);
  }

  v25 = a6;
  v26 = *i;
  v27 = *(*i + 16);
  *(*i + 32) = v37;
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v28 = v26[7];
  v26[6] = v21;
  v26[7] = v20;
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  if (v22)
  {
    atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v29 = v26[9];
  v26[8] = v23;
  v26[9] = v22;
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  v30 = *i;
  *(v30 + 16) = a5;
  *v30 = v25;
  health::TransactionalCache<unsigned long long,health::FilePage>::_touchCacheEntry(a1, v30);
  if (v27 != a5)
  {
    v31 = a1[1];
    v32 = v31 >= v27;
    v33 = v31 - v27;
    if (!v32)
    {
      v33 = 0;
    }

    a1[1] = v33 + a5;
    health::TransactionalCache<unsigned long long,health::FilePage>::_pruneIfNeeded(a1, 0, 0);
  }

  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }
}

void sub_22899FB3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  std::__split_buffer<std::unique_ptr<health::TransactionalCache<unsigned long long,health::FilePage>::CacheEntry,std::default_delete<health::TransactionalCache<unsigned long long,health::FilePage>::CacheEntry>>>::~__split_buffer(&a37);
  std::unique_ptr<health::TransactionalCache<unsigned long long,health::FilePage>::CacheEntry,std::default_delete<health::TransactionalCache<unsigned long long,health::FilePage>::CacheEntry>>::reset[abi:ne200100](&a31, 0);
  health::FilePage::~FilePage(&a13);
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<std::unique_ptr<health::TransactionalCache<unsigned long long,health::FilePage>::CacheEntry,std::default_delete<health::TransactionalCache<unsigned long long,health::FilePage>::CacheEntry>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    std::unique_ptr<health::TransactionalCache<unsigned long long,health::FilePage>::CacheEntry,std::default_delete<health::TransactionalCache<unsigned long long,health::FilePage>::CacheEntry>>::reset[abi:ne200100]((i - 8), 0);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::LeafNode<health::DataStore::ObjectIdentifier,health::BlockPointer,health::BlockPointer,17>>(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v15 = *MEMORY[0x277D85DE8];
  v13 = 0;
  v14 = 578;
  v11[0] = v12;
  v11[1] = v12;
  v11[2] = 578;
  health::SerializeValues<health::StaticArray<health::bplustree::LeafNode<health::DataStore::ObjectIdentifier,health::BlockPointer,health::BlockPointer,17>::ValueEntry,17ul>,unsigned short,health::BlockPointer,health::BlockPointer>(v11, a4, (a4 + 544), (a4 + 552), (a4 + 568));
  if (v14 <= 0x3FF)
  {
    v7 = v12;
  }

  else
  {
    v7 = v13;
  }

  health::RawBuffer::RawBuffer(v10, v7, v14);
  health::BlockAccessFile::WriteTransaction::updateBlock(a1, a2, a3, v10);
  result = v13;
  v13 = 0;
  if (result)
  {
    result = MEMORY[0x22AAC8570](result, 0x1000C8077774924);
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_22899FD20(_Unwind_Exception *a1)
{
  v2 = STACK[0x428];
  STACK[0x428] = 0;
  if (v2)
  {
    MEMORY[0x22AAC8570](v2, 0x1000C8077774924);
  }

  _Unwind_Resume(a1);
}

uint64_t health::SerializeValues<health::StaticArray<health::bplustree::LeafNode<health::DataStore::ObjectIdentifier,health::BlockPointer,health::BlockPointer,17>::ValueEntry,17ul>,unsigned short,health::BlockPointer,health::BlockPointer>(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t *a4, uint64_t *a5)
{
  for (i = 0; i != 17; ++i)
  {
    v11 = health::StaticArray<health::bplustree::InteriorNode<health::DataStore::ObjectIdentifier,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a2, i);
    v13 = *v11;
    health::SerializationBuffer::appendRaw<unsigned long long>(a1, &v13);
    v13 = v11[1];
    health::SerializationBuffer::appendRaw<unsigned long long>(a1, &v13);
    v13 = v11[2];
    health::SerializationBuffer::appendRaw<unsigned long long>(a1, &v13);
    v13 = v11[3];
    health::SerializationBuffer::appendRaw<unsigned long long>(a1, &v13);
  }

  LOWORD(v13) = *a3;
  health::SerializationBuffer::appendRaw<unsigned short>(a1, &v13);
  v13 = *a4;
  health::SerializationBuffer::appendRaw<unsigned long long>(a1, &v13);
  v13 = a4[1];
  health::SerializationBuffer::appendRaw<unsigned long long>(a1, &v13);
  v13 = *a5;
  health::SerializationBuffer::appendRaw<unsigned long long>(a1, &v13);
  v13 = a5[1];
  return health::SerializationBuffer::appendRaw<unsigned long long>(a1, &v13);
}

uint64_t health::SerializationBuffer::appendRaw<unsigned short>(uint64_t result, _WORD *a2)
{
  if (*(result + 16) <= 1uLL)
  {
    v2 = *MEMORY[0x277CCC2A0];
    std::string::basic_string[abi:ne200100]<0>(v7, "sizeof(T) <= _length");
    std::string::basic_string[abi:ne200100]<0>(v6, "appendRaw");
    std::string::basic_string[abi:ne200100]<0>(v5, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/Utility/HDEncoder.h");
    health::FormatString<>("Append would overflow serialization buffer.", &__p);
    health::_HDAssertImplementation<std::out_of_range>(v2, v7, v6, v5, 35, &__p);
  }

  **(result + 8) = *a2;
  v3 = *(result + 16) - 2;
  *(result + 8) += 2;
  *(result + 16) = v3;
  return result;
}

void sub_22899FF78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (*(v26 - 33) < 0)
  {
    operator delete(*(v26 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<std::__thread_id *>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

void *health::WriteAheadLog::Transaction::updatedPage(health::WriteAheadLog::Transaction *this, const health::FilePage *a2)
{
  v4 = *(this + 5);
  v5 = *a2;
  if (!v4)
  {
    goto LABEL_13;
  }

  v6 = (this + 40);
  do
  {
    v7 = v4[4];
    v8 = v7 >= v5;
    v9 = v7 < v5;
    if (v8)
    {
      v6 = v4;
    }

    v4 = v4[v9];
  }

  while (v4);
  if (v6 != (this + 40) && v5 >= v6[4] && (v10 = v6[7], v10 == *(a2 + 1)))
  {
    v11 = *this;
    v26 = 3;
    v27 = v11;
    v28 = v5;
    v29 = v10;
    v30 = health::FilePage::checksum(a2);
    v12 = v6[6];
    v13 = health::VirtualFile::write<health::WriteAheadLog::LogEntryHeader>(*(this + 1), v12, &v26);
    v14 = *(this + 1);
    v15 = *(a2 + 2);
    if (!v15)
    {
      v15 = (*(**(a2 + 4) + 16))(*(a2 + 4));
    }

    return (*(*v14 + 24))(v14, v13 + v12, v15, *(a2 + 1));
  }

  else
  {
LABEL_13:
    v17 = this + 32;
    v18 = *this;
    v26 = 3;
    v27 = v18;
    v28 = v5;
    v29 = *(a2 + 1);
    v30 = health::FilePage::checksum(a2);
    v19 = (*(**(this + 1) + 48))(*(this + 1));
    v20 = health::VirtualFile::write<health::WriteAheadLog::LogEntryHeader>(*(this + 1), v19, &v26);
    v21 = *(this + 1);
    v22 = *(a2 + 2);
    if (!v22)
    {
      v22 = (*(**(a2 + 4) + 16))(*(a2 + 4));
    }

    (*(*v21 + 24))(v21, v20 + v19, v22, *(a2 + 1));
    v23 = *this;
    v24 = *(a2 + 1);
    v25 = *a2;
    v31 = &v25;
    result = std::__tree<std::__value_type<unsigned long long,health::WriteAheadLog::PageEntry>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,health::WriteAheadLog::PageEntry>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,health::WriteAheadLog::PageEntry>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(v17, v25);
    result[5] = v23;
    result[6] = v19;
    result[7] = v24;
  }

  return result;
}

unint64_t health::WriteAheadLog::Transaction::_writeCompletionEntryOfType(unint64_t result, int a2)
{
  v3 = result;
  if (*(result + 56))
  {
    v4 = *MEMORY[0x277CCC2A0];
    std::string::basic_string[abi:ne200100]<0>(v19, "_transactionStatus == Status::Active");
    std::string::basic_string[abi:ne200100]<0>(v18, "_writeCompletionEntryOfType");
    std::string::basic_string[abi:ne200100]<0>(v17, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDWriteAheadLog.cpp");
    health::WriteAheadLog::EntryTypeToString(&__p, a2);
    health::FormatString<std::string,unsigned long long &>(&v16, "Attempt to {0} transaction {1} but it has already completed.", &__p, v3);
    health::_HDAssertImplementation<health::transaction_error>(v4, v19, v18, v17, 600, &v16);
  }

  if (a2 == 1)
  {
    v5 = 1;
  }

  else
  {
    if (a2 != 2)
    {
      v6 = *MEMORY[0x277CCC2A0];
      std::string::basic_string[abi:ne200100]<0>(v15, "false");
      std::string::basic_string[abi:ne200100]<0>(v14, "_writeCompletionEntryOfType");
      std::string::basic_string[abi:ne200100]<0>(v13, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDWriteAheadLog.cpp");
      health::WriteAheadLog::EntryTypeToString(&__p, a2);
      health::FormatString<std::string,unsigned long long &>(&v12, "Attempt to {0} a transaction {1} with an invalid entry type {0}", &__p, v3);
      health::_HDAssertImplementation<health::transaction_error>(v6, v15, v14, v13, 609, &v12);
    }

    v5 = 2;
  }

  *(result + 56) = v5;
  if (*(result + 60) != 1)
  {
    LODWORD(__p.__r_.__value_.__l.__data_) = a2;
    __p.__r_.__value_.__r.__words[2] = 0;
    v10 = 0;
    v7 = *(result + 8);
    __p.__r_.__value_.__l.__size_ = *result;
    v11 = 0;
    v8 = (*(*v7 + 48))(v7);
    return health::VirtualFile::write<health::WriteAheadLog::LogEntryHeader>(v7, v8, &__p);
  }

  return result;
}

void sub_2289A04A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a41 < 0)
  {
    operator delete(a36);
  }

  _Unwind_Resume(exception_object);
}

uint64_t health::POSIXFile::sync(health::POSIXFile *this)
{
  result = fcntl(*(this + 2), 85);
  if (result)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v3 = *__error();
    v4 = std::system_category();
    v5 = __error();
    v6 = __error();
    v7 = strerror(*v6);
    health::FormatString<int &,char *>(&v8, "Error occurred while attempting to sync a file: {0} {1}", v5, &v7);
    MEMORY[0x22AAC8340](exception, v3, v4, &v8);
    __cxa_throw(exception, MEMORY[0x277D82718], MEMORY[0x277D82650]);
  }

  return result;
}

void sub_2289A0660(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

uint64_t health::VirtualFile::read<health::WriteAheadLog::LogEntryHeader>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v18 = 0;
  v19 = 36;
  v12 = &v16;
  v4 = (*(*a1 + 32))(a1, a2, &v16, 36);
  v13 = &v17;
  v14 = 32;
  *a3 = v16;
  v15 = 0;
  health::DeserializationBuffer::extractRaw<unsigned long long>(&v12, &v15);
  *(a3 + 8) = v15;
  v15 = 0;
  health::DeserializationBuffer::extractRaw<unsigned long long>(&v12, &v15);
  *(a3 + 16) = v15;
  v15 = 0;
  health::DeserializationBuffer::extractRaw<unsigned long long>(&v12, &v15);
  *(a3 + 24) = v15;
  LODWORD(v15) = 0;
  health::DeserializationBuffer::extractRaw<unsigned int>(&v12, &v15);
  *(a3 + 32) = v15;
  v6 = v12;
  v5 = v13;
  LODWORD(v15) = 0;
  health::DeserializationBuffer::extractRaw<unsigned int>(&v12, &v15);
  v7 = (v5 - v6);
  LODWORD(v5) = v15;
  if (health::FletcherChecksum(v12, v7) != v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Invalid checksum on read object.");
    exception->__vftable = &unk_283BE6EE8;
  }

  v8 = v18;
  v18 = 0;
  if (v8)
  {
    MEMORY[0x22AAC8570](v8, 0x1000C8077774924);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v4;
}

void sub_2289A085C(_Unwind_Exception *a1)
{
  __cxa_free_exception(v1);
  v3 = STACK[0x428];
  STACK[0x428] = 0;
  if (v3)
  {
    MEMORY[0x22AAC8570](v3, 0x1000C8077774924);
  }

  _Unwind_Resume(a1);
}

ssize_t health::POSIXFile::read(health::POSIXFile *this, char *a2, unsigned __int8 *__buf, char *__nbyte)
{
  v12 = __nbyte;
  v13 = a2;
  result = pread(*(this + 2), __buf, __nbyte, a2);
  if (result < 0)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v6 = *__error();
    v7 = std::system_category();
    v8 = __error();
    v9 = __error();
    v10 = strerror(*v9);
    health::FormatString<unsigned long &,long long &,int &,char *>(&v11, "Error occurred attempting to read {0} bytes at {1}: {2} {3}", &v12, &v13, v8, &v10);
    MEMORY[0x22AAC8340](exception, v6, v7, &v11);
    __cxa_throw(exception, MEMORY[0x277D82718], MEMORY[0x277D82650]);
  }

  return result;
}

void sub_2289A0978(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

uint64_t health::DeserializationBuffer::extractRaw<unsigned int>(uint64_t result, _DWORD *a2)
{
  if (*(result + 16) <= 3uLL)
  {
    v2 = *MEMORY[0x277CCC2A0];
    std::string::basic_string[abi:ne200100]<0>(v7, "sizeof(T) <= _length");
    std::string::basic_string[abi:ne200100]<0>(v6, "extractRaw");
    std::string::basic_string[abi:ne200100]<0>(v5, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/Utility/HDEncoder.h");
    health::FormatString<>("Extract would overflow deserialization buffer.", &__p);
    health::_HDAssertImplementation<std::out_of_range>(v2, v7, v6, v5, 63, &__p);
  }

  *a2 = **(result + 8);
  v3 = *(result + 16) - 4;
  *(result + 8) += 4;
  *(result + 16) = v3;
  return result;
}

void sub_2289A0ABC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (*(v26 - 33) < 0)
  {
    operator delete(*(v26 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__shared_ptr_pointer<unsigned char  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    JUMPOUT(0x22AAC8570);
  }

  return result;
}

uint64_t std::function<void ()(unsigned long long)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t health::VirtualFile::write<health::TransactionalFile::FileHeader>(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v10 = 0;
  v11 = 36;
  v7[0] = v9;
  v7[1] = v9;
  v7[2] = 36;
  LODWORD(v8) = *a2;
  health::SerializationBuffer::appendRaw<unsigned int>(v7, &v8);
  LODWORD(v8) = *(a2 + 4);
  health::SerializationBuffer::appendRaw<unsigned int>(v7, &v8);
  LODWORD(v8) = *(a2 + 8);
  health::SerializationBuffer::appendRaw<unsigned int>(v7, &v8);
  v8 = *(a2 + 16);
  health::SerializationBuffer::appendRaw<unsigned long long>(v7, &v8);
  v8 = *(a2 + 24);
  health::SerializationBuffer::appendRaw<unsigned long long>(v7, &v8);
  v8 = *(a2 + 32);
  health::SerializationBuffer::appendRaw<unsigned long long>(v7, &v8);
  if (v11 <= 0x3FF)
  {
    v4 = v9;
  }

  else
  {
    v4 = v10;
  }

  (*(*a1 + 24))(a1, 0, v4);
  result = v10;
  v10 = 0;
  if (result)
  {
    result = MEMORY[0x22AAC8570](result, 0x1000C8077774924);
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2289A0CE8(_Unwind_Exception *a1)
{
  v2 = STACK[0x428];
  STACK[0x428] = 0;
  if (v2)
  {
    MEMORY[0x22AAC8570](v2, 0x1000C8077774924);
  }

  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<health::WriteAheadLog::Transaction>::__on_zero_shared(uint64_t a1)
{
  std::__tree<long>::destroy(*(a1 + 64));
  v2 = *(a1 + 40);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

uint64_t health::Optional<health::bplustree::Tree<health::BlockAccessFile::ReadTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::LookupResult>::operator->(uint64_t result)
{
  if ((*(result + 40) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Attempt to indirect through to the value of an invalid optional.");
    __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
  }

  return result;
}

uint64_t health::BlockAccessFile::ReadTransaction::retrieveObject<health::DataStore::SampleHistory<LocationHistoryBehaviorV1>::SampleHistoryRoot>(uint64_t *a1, uint64_t a2, unsigned __int8 *a3, void *a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v14 = 0;
  v15 = 56;
  health::RawBuffer::RawBuffer(v11, v13, 56);
  health::BlockAccessFile::ReadTransaction::retrieveBlock(a1, a2, a3, v11);
  v8 = v13;
  if (v15 > 0x3FF)
  {
    v8 = v14;
  }

  v11[0] = v8;
  v11[1] = v8;
  v11[2] = 56;
  v12 = 0;
  health::DeserializationBuffer::extractRaw<unsigned long long>(v11, &v12);
  *a4 = v12;
  v12 = 0;
  health::DeserializationBuffer::extractRaw<unsigned long long>(v11, &v12);
  a4[1] = v12;
  v12 = 0;
  health::DeserializationBuffer::extractRaw<unsigned long long>(v11, &v12);
  a4[2] = v12;
  v12 = 0;
  health::DeserializationBuffer::extractRaw<unsigned long long>(v11, &v12);
  a4[3] = v12;
  v12 = 0;
  health::DeserializationBuffer::extractRaw<unsigned long long>(v11, &v12);
  a4[4] = v12;
  v12 = 0;
  health::DeserializationBuffer::extractRaw<unsigned long long>(v11, &v12);
  a4[5] = v12;
  v12 = 0;
  health::DeserializationBuffer::extractRaw<long long>(v11, &v12);
  a4[6] = v12;
  result = v14;
  v14 = 0;
  if (result)
  {
    result = MEMORY[0x22AAC8570](result, 0x1000C8077774924);
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2289A11B8(_Unwind_Exception *a1)
{
  v2 = STACK[0x428];
  STACK[0x428] = 0;
  if (v2)
  {
    MEMORY[0x22AAC8570](v2, 0x1000C8077774924);
  }

  _Unwind_Resume(a1);
}

double health::DataStore::MutableSampleHistory<LocationHistoryBehaviorV1>::insertSample(uint64_t a1, double *a2, uint64_t a3)
{
  v6 = (*(a1 + 96) + 80);
  v38[0] = 0;
  v38[1] = 0;
  v38[2] = v6;
  v38[3] = v6;
  v8 = *(a1 + 16);
  v7 = *(a1 + 24);
  if (!v8)
  {
    if (v7)
    {
      v8 = 0;
    }

    else
    {
      v36 = 0u;
      memset(v37, 0, sizeof(v37));
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v13 = 0u;
      v8 = health::BlockAccessFile::WriteTransaction::_requestBlockOfLength(v6, 411);
      v7 = v9;
      health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::InteriorNode<double,health::BlockPointer,17>>(v6, v8, v9, &v13);
      *(a1 + 16) = v8;
      *(a1 + 24) = v7;
    }
  }

  *&v13 = v8;
  *(&v13 + 1) = v7;
  *&v14 = v38;
  v10 = health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<double,_HDRawLocationDatumV1>>::setValueForKey(&v13, a2, a3);
  v11 = *(a1 + 48);
  if (v11)
  {
    if (!v10)
    {
      *(a1 + 48) = v11 + 1;
    }
  }

  else
  {
    *(a1 + 48) = 1;
    *a1 = xmmword_229165BA0;
  }

  *&result = health::DataStore::MutableSampleHistory<LocationHistoryBehaviorV1>::_updateHistoryRoot(a1).n128_u64[0];
  return result;
}

uint64_t health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::operator[](uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x11)
  {
    v2 = *MEMORY[0x277CCC2A0];
    std::string::basic_string[abi:ne200100]<0>(v7, "index < Length");
    std::string::basic_string[abi:ne200100]<0>(v6, "operator[]");
    std::string::basic_string[abi:ne200100]<0>(v5, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/Utility/HDStaticArray.h");
    health::FormatString<>("Index out of bounds.", &__p);
    health::_HDAssertImplementation<std::out_of_range>(v2, v7, v6, v5, 50, &__p);
  }

  return a1 + 24 * a2;
}

{
  if (a2 >= 0x11)
  {
    v2 = *MEMORY[0x277CCC2A0];
    std::string::basic_string[abi:ne200100]<0>(v7, "index < Length");
    std::string::basic_string[abi:ne200100]<0>(v6, "operator[]");
    std::string::basic_string[abi:ne200100]<0>(v5, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/Utility/HDStaticArray.h");
    health::FormatString<>("Index out of bounds.", &__p);
    health::_HDAssertImplementation<std::out_of_range>(v2, v7, v6, v5, 43, &__p);
  }

  return a1 + 24 * a2;
}

void sub_2289A1400(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (*(v26 - 33) < 0)
  {
    operator delete(*(v26 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t health::SerializationBuffer::appendRaw<unsigned char>(uint64_t result, _BYTE *a2)
{
  if (!*(result + 16))
  {
    v2 = *MEMORY[0x277CCC2A0];
    std::string::basic_string[abi:ne200100]<0>(v7, "sizeof(T) <= _length");
    std::string::basic_string[abi:ne200100]<0>(v6, "appendRaw");
    std::string::basic_string[abi:ne200100]<0>(v5, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/Utility/HDEncoder.h");
    health::FormatString<>("Append would overflow serialization buffer.", &__p);
    health::_HDAssertImplementation<std::out_of_range>(v2, v7, v6, v5, 35, &__p);
  }

  **(result + 8) = *a2;
  v3 = *(result + 16) - 1;
  ++*(result + 8);
  *(result + 16) = v3;
  return result;
}

void sub_2289A1564(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (*(v26 - 33) < 0)
  {
    operator delete(*(v26 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<double,_HDRawLocationDatumV1>>::setValueForKey(uint64_t a1, double *a2, uint64_t a3)
{
  v6 = *(a1 + 16);
  memset(v15, 0, 411);
  health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::InteriorNode<double,health::BlockPointer,17>>(*(v6 + 24), *a1, *(a1 + 8), v15);
  result = health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<double,_HDRawLocationDatumV1>>::_setValueForKey(a1, 0, a1, v15, a2, a3);
  if (result >= 2)
  {
    v8 = *(a1 + 16);
    memset(__src, 0, 411);
    health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::InteriorNode<double,health::BlockPointer,17>>(*(v8 + 24), *a1, *(a1 + 8), __src);
    memcpy(v13, __src, sizeof(v13));
    v9 = *(*(a1 + 16) + 24);
    v10 = health::BlockAccessFile::WriteTransaction::_requestBlockOfLength(v9, 411);
    v12 = v11;
    health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::InteriorNode<double,health::BlockPointer,17>>(v9, v10, v11, v13);
    WORD4(__src[25]) = 1;
    *(&__src[0] + 1) = v10;
    *&__src[1] = v12;
    BYTE10(__src[25]) = 0;
    health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::InteriorNode<double,health::BlockPointer,17>>(*(*(a1 + 16) + 24), *a1, *(a1 + 8), __src);
    return health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<double,_HDRawLocationDatumV1>>::setValueForKey(a1, a2, a3);
  }

  return result;
}

uint64_t health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::InteriorNode<double,health::BlockPointer,17>>(uint64_t *a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  v15 = *MEMORY[0x277D85DE8];
  v13 = 0;
  v14 = 411;
  health::RawBuffer::RawBuffer(v11, v12, 411);
  health::BlockAccessFile::ReadTransaction::retrieveBlock(a1, a2, a3, v11);
  v8 = v12;
  if (v14 > 0x3FF)
  {
    v8 = v13;
  }

  v11[0] = v8;
  v11[1] = v8;
  v11[2] = 411;
  health::DeserializeValue<health::bplustree::InteriorNode<double,health::BlockPointer,17>>(a4, v11);
  result = v13;
  v13 = 0;
  if (result)
  {
    result = MEMORY[0x22AAC8570](result, 0x1000C8077774924);
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2289A185C(_Unwind_Exception *a1)
{
  v2 = STACK[0x418];
  STACK[0x418] = 0;
  if (v2)
  {
    MEMORY[0x22AAC8570](v2, 0x1000C8077774924);
  }

  _Unwind_Resume(a1);
}

void sub_2289A1978(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (*(v26 - 33) < 0)
  {
    operator delete(*(v26 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t health::SerializeValues<health::StaticArray<health::bplustree::LeafNode<double,_HDRawLocationDatumV1,health::BlockPointer,17>::ValueEntry,17ul>,unsigned short,health::BlockPointer,health::BlockPointer>(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t *a4, uint64_t *a5)
{
  for (i = 0; i != 17; ++i)
  {
    v11 = health::StaticArray<health::bplustree::LeafNode<double,_HDRawLocationDatumV1,health::BlockPointer,17>::ValueEntry,17ul>::operator[](a2, i);
    v13 = *v11;
    health::SerializationBuffer::appendRaw<unsigned long long>(a1, &v13);
    v13 = *(v11 + 8);
    health::SerializationBuffer::appendRaw<unsigned long long>(a1, &v13);
    v13 = *(v11 + 16);
    health::SerializationBuffer::appendRaw<unsigned long long>(a1, &v13);
    LODWORD(v13) = *(v11 + 24);
    health::SerializationBuffer::appendRaw<unsigned int>(a1, &v13);
    LODWORD(v13) = *(v11 + 28);
    health::SerializationBuffer::appendRaw<unsigned int>(a1, &v13);
    LODWORD(v13) = *(v11 + 32);
    health::SerializationBuffer::appendRaw<unsigned int>(a1, &v13);
    LODWORD(v13) = *(v11 + 36);
    health::SerializationBuffer::appendRaw<unsigned int>(a1, &v13);
    LODWORD(v13) = *(v11 + 40);
    health::SerializationBuffer::appendRaw<unsigned int>(a1, &v13);
  }

  LOWORD(v13) = *a3;
  health::SerializationBuffer::appendRaw<unsigned short>(a1, &v13);
  v13 = *a4;
  health::SerializationBuffer::appendRaw<unsigned long long>(a1, &v13);
  v13 = a4[1];
  health::SerializationBuffer::appendRaw<unsigned long long>(a1, &v13);
  v13 = *a5;
  health::SerializationBuffer::appendRaw<unsigned long long>(a1, &v13);
  v13 = a5[1];
  return health::SerializationBuffer::appendRaw<unsigned long long>(a1, &v13);
}

uint64_t health::StaticArray<health::bplustree::LeafNode<double,_HDRawLocationDatumV1,health::BlockPointer,17>::ValueEntry,17ul>::operator[](uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x11)
  {
    v2 = *MEMORY[0x277CCC2A0];
    std::string::basic_string[abi:ne200100]<0>(v7, "index < Length");
    std::string::basic_string[abi:ne200100]<0>(v6, "operator[]");
    std::string::basic_string[abi:ne200100]<0>(v5, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/Utility/HDStaticArray.h");
    health::FormatString<>("Index out of bounds.", &__p);
    health::_HDAssertImplementation<std::out_of_range>(v2, v7, v6, v5, 50, &__p);
  }

  return a1 + 48 * a2;
}

{
  if (a2 >= 0x11)
  {
    v2 = *MEMORY[0x277CCC2A0];
    std::string::basic_string[abi:ne200100]<0>(v7, "index < Length");
    std::string::basic_string[abi:ne200100]<0>(v6, "operator[]");
    std::string::basic_string[abi:ne200100]<0>(v5, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/Utility/HDStaticArray.h");
    health::FormatString<>("Index out of bounds.", &__p);
    health::_HDAssertImplementation<std::out_of_range>(v2, v7, v6, v5, 43, &__p);
  }

  return a1 + 48 * a2;
}

void sub_2289A1C3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (*(v26 - 33) < 0)
  {
    operator delete(*(v26 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::InteriorNode<double,health::BlockPointer,17>>(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = 0;
  v18 = *MEMORY[0x277D85DE8];
  v16 = 0;
  v17 = 411;
  v14[0] = v15;
  v14[1] = v15;
  v14[2] = 411;
  do
  {
    v9 = health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a4, v8);
    v13[0] = *v9;
    health::SerializationBuffer::appendRaw<unsigned long long>(v14, v13);
    v13[0] = v9[1];
    health::SerializationBuffer::appendRaw<unsigned long long>(v14, v13);
    v13[0] = v9[2];
    health::SerializationBuffer::appendRaw<unsigned long long>(v14, v13);
    ++v8;
  }

  while (v8 != 17);
  LOWORD(v13[0]) = *(a4 + 408);
  health::SerializationBuffer::appendRaw<unsigned short>(v14, v13);
  LOBYTE(v13[0]) = *(a4 + 410);
  health::SerializationBuffer::appendRaw<unsigned char>(v14, v13);
  if (v17 <= 0x3FF)
  {
    v10 = v15;
  }

  else
  {
    v10 = v16;
  }

  health::RawBuffer::RawBuffer(v13, v10, v17);
  health::BlockAccessFile::WriteTransaction::updateBlock(a1, a2, a3, v13);
  result = v16;
  v16 = 0;
  if (result)
  {
    result = MEMORY[0x22AAC8570](result, 0x1000C8077774924);
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2289A1E04(_Unwind_Exception *a1)
{
  v2 = STACK[0x428];
  STACK[0x428] = 0;
  if (v2)
  {
    MEMORY[0x22AAC8570](v2, 0x1000C8077774924);
  }

  _Unwind_Resume(a1);
}

uint64_t health::Optional<health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::LookupResult>::operator->(uint64_t result)
{
  if ((*(result + 40) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Attempt to indirect through to the value of an invalid optional.");
    __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
  }

  return result;
}

uint64_t health::BlockAccessFile::WriteTransaction::updateObject<health::DataStore::SampleHistory<LocationHistoryBehaviorV1>::SampleHistoryRoot>(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v14 = 0;
  v15 = 56;
  v12[0] = v13;
  v12[1] = v13;
  v12[2] = 56;
  v11[0] = *a4;
  health::SerializationBuffer::appendRaw<unsigned long long>(v12, v11);
  v11[0] = a4[1];
  health::SerializationBuffer::appendRaw<unsigned long long>(v12, v11);
  v11[0] = a4[2];
  health::SerializationBuffer::appendRaw<unsigned long long>(v12, v11);
  v11[0] = a4[3];
  health::SerializationBuffer::appendRaw<unsigned long long>(v12, v11);
  v11[0] = a4[4];
  health::SerializationBuffer::appendRaw<unsigned long long>(v12, v11);
  v11[0] = a4[5];
  health::SerializationBuffer::appendRaw<unsigned long long>(v12, v11);
  v11[0] = a4[6];
  health::SerializationBuffer::appendRaw<unsigned long long>(v12, v11);
  if (v15 <= 0x3FF)
  {
    v8 = v13;
  }

  else
  {
    v8 = v14;
  }

  health::RawBuffer::RawBuffer(v11, v8, v15);
  health::BlockAccessFile::WriteTransaction::updateBlock(a1, a2, a3, v11);
  result = v14;
  v14 = 0;
  if (result)
  {
    result = MEMORY[0x22AAC8570](result, 0x1000C8077774924);
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2289A200C(_Unwind_Exception *a1)
{
  v2 = STACK[0x428];
  STACK[0x428] = 0;
  if (v2)
  {
    MEMORY[0x22AAC8570](v2, 0x1000C8077774924);
  }

  _Unwind_Resume(a1);
}

uint64_t health::bplustree::InteriorNode<double,health::BlockPointer,17>::childForKey(uint64_t a1, double *a2)
{
  if (!*(a1 + 408))
  {
    v4 = *MEMORY[0x277CCC2A0];
    std::string::basic_string[abi:ne200100]<0>(v11, "childCount > 0");
    std::string::basic_string[abi:ne200100]<0>(v10, "childForKey");
    std::string::basic_string[abi:ne200100]<0>(v9, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDBPlusTree.hpp");
    health::FormatString<>("Looking for child for key in an empty node.", &__p);
    health::_HDAssertImplementation<health::btree_access_error>(v4, v11, v10, v9, 58, &__p);
  }

  v5 = *(a1 + 408);
  do
  {
    if (!--v5)
    {
      break;
    }

    v6 = *a2;
  }

  while (v6 < *health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a1, v5));
  return v5;
}

void sub_2289A2158(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  _Unwind_Resume(exception_object);
}

uint64_t health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::LeafNode<double,_HDRawLocationDatumV1,health::BlockPointer,17>>(uint64_t *a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  v15 = *MEMORY[0x277D85DE8];
  v13 = 0;
  v14 = 782;
  health::RawBuffer::RawBuffer(v11, v12, 782);
  health::BlockAccessFile::ReadTransaction::retrieveBlock(a1, a2, a3, v11);
  v8 = v12;
  if (v14 > 0x3FF)
  {
    v8 = v13;
  }

  v11[0] = v8;
  v11[1] = v8;
  v11[2] = 782;
  health::DeserializeValues<health::StaticArray<health::bplustree::LeafNode<double,_HDRawLocationDatumV1,health::BlockPointer,17>::ValueEntry,17ul>,unsigned short,health::BlockPointer,health::BlockPointer>(v11, a4, (a4 + 816), (a4 + 824), (a4 + 840));
  result = v13;
  v13 = 0;
  if (result)
  {
    result = MEMORY[0x22AAC8570](result, 0x1000C8077774924);
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2289A22B4(_Unwind_Exception *a1)
{
  v2 = STACK[0x418];
  STACK[0x418] = 0;
  if (v2)
  {
    MEMORY[0x22AAC8570](v2, 0x1000C8077774924);
  }

  _Unwind_Resume(a1);
}

uint64_t health::DeserializeValues<health::StaticArray<health::bplustree::LeafNode<double,_HDRawLocationDatumV1,health::BlockPointer,17>::ValueEntry,17ul>,unsigned short,health::BlockPointer,health::BlockPointer>(uint64_t a1, uint64_t a2, _WORD *a3, void *a4, void *a5)
{
  for (i = 0; i != 17; ++i)
  {
    v11 = health::StaticArray<health::bplustree::LeafNode<double,_HDRawLocationDatumV1,health::BlockPointer,17>::ValueEntry,17ul>::operator[](a2, i);
    v13 = 0;
    health::DeserializationBuffer::extractRaw<long long>(a1, &v13);
    *v11 = v13;
    v13 = 0;
    health::DeserializationBuffer::extractRaw<long long>(a1, &v13);
    *(v11 + 8) = v13;
    v13 = 0;
    health::DeserializationBuffer::extractRaw<long long>(a1, &v13);
    *(v11 + 16) = v13;
    LODWORD(v13) = 0;
    health::DeserializationBuffer::extractRaw<int>(a1, &v13);
    *(v11 + 24) = v13;
    LODWORD(v13) = 0;
    health::DeserializationBuffer::extractRaw<int>(a1, &v13);
    *(v11 + 28) = v13;
    LODWORD(v13) = 0;
    health::DeserializationBuffer::extractRaw<int>(a1, &v13);
    *(v11 + 32) = v13;
    LODWORD(v13) = 0;
    health::DeserializationBuffer::extractRaw<int>(a1, &v13);
    *(v11 + 36) = v13;
    LODWORD(v13) = 0;
    health::DeserializationBuffer::extractRaw<int>(a1, &v13);
    *(v11 + 40) = v13;
  }

  LOWORD(v13) = 0;
  health::DeserializationBuffer::extractRaw<unsigned short>(a1, &v13);
  *a3 = v13;
  v13 = 0;
  health::DeserializationBuffer::extractRaw<unsigned long long>(a1, &v13);
  *a4 = v13;
  v13 = 0;
  health::DeserializationBuffer::extractRaw<unsigned long long>(a1, &v13);
  a4[1] = v13;
  v13 = 0;
  health::DeserializationBuffer::extractRaw<unsigned long long>(a1, &v13);
  *a5 = v13;
  v13 = 0;
  result = health::DeserializationBuffer::extractRaw<unsigned long long>(a1, &v13);
  a5[1] = v13;
  return result;
}

void sub_2289A2578(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (*(v26 - 33) < 0)
  {
    operator delete(*(v26 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t health::DeserializationBuffer::extractRaw<int>(uint64_t result, _DWORD *a2)
{
  if (*(result + 16) <= 3uLL)
  {
    v2 = *MEMORY[0x277CCC2A0];
    std::string::basic_string[abi:ne200100]<0>(v7, "sizeof(T) <= _length");
    std::string::basic_string[abi:ne200100]<0>(v6, "extractRaw");
    std::string::basic_string[abi:ne200100]<0>(v5, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/Utility/HDEncoder.h");
    health::FormatString<>("Extract would overflow deserialization buffer.", &__p);
    health::_HDAssertImplementation<std::out_of_range>(v2, v7, v6, v5, 63, &__p);
  }

  *a2 = **(result + 8);
  v3 = *(result + 16) - 4;
  *(result + 8) += 4;
  *(result + 16) = v3;
  return result;
}

void sub_2289A26E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (*(v26 - 33) < 0)
  {
    operator delete(*(v26 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t health::bplustree::LeafNode<double,_HDRawLocationDatumV1,health::BlockPointer,17>::indexForKey(uint64_t a1, double *a2)
{
  v4 = *(a1 + 816);
  if (!*(a1 + 816))
  {
    v5 = *MEMORY[0x277CCC2A0];
    std::string::basic_string[abi:ne200100]<0>(v15, "valueCount > 0");
    std::string::basic_string[abi:ne200100]<0>(v14, "indexForKey");
    std::string::basic_string[abi:ne200100]<0>(v13, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDBPlusTree.hpp");
    health::FormatString<>("Looking for index for key in an empty node.", &__p);
    health::_HDAssertImplementation<health::btree_access_error>(v5, v15, v14, v13, 72, &__p);
  }

  v6 = v4 - 1;
  while (1)
  {
    v7 = *a2;
    if (v7 > *health::StaticArray<health::bplustree::LeafNode<double,_HDRawLocationDatumV1,health::BlockPointer,17>::ValueEntry,17ul>::operator[](a1, v6))
    {
      v10 = 0x200000000;
      return v10 | v6;
    }

    LOWORD(v4) = v4 - 1;
    v8 = *a2;
    if (v8 == *health::StaticArray<health::bplustree::LeafNode<double,_HDRawLocationDatumV1,health::BlockPointer,17>::ValueEntry,17ul>::operator[](a1, v6))
    {
      break;
    }

    if (!v6--)
    {
      LOWORD(v6) = 0;
      v10 = 0x100000000;
      return v10 | v6;
    }
  }

  v10 = 0;
  LOWORD(v6) = v4;
  return v10 | v6;
}

void sub_2289A28BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  _Unwind_Resume(exception_object);
}

__n128 health::StaticArray<health::bplustree::LeafNode<double,_HDRawLocationDatumV1,health::BlockPointer,17>::ValueEntry,17ul>::insertElementAtIndex(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >= 0x11)
  {
    v4 = *MEMORY[0x277CCC2A0];
    std::string::basic_string[abi:ne200100]<0>(v11, "index < Length");
    std::string::basic_string[abi:ne200100]<0>(v10, "insertElementAtIndex");
    std::string::basic_string[abi:ne200100]<0>(v9, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/Utility/HDStaticArray.h");
    health::FormatString<>("Index out of bounds.", &__p);
    health::_HDAssertImplementation<std::out_of_range>(v4, v11, v10, v9, 57, &__p);
  }

  v5 = (a1 + 48 * a3);
  memmove(v5 + 3, v5, 48 * (16 - a3));
  v7 = *(a2 + 16);
  result = *(a2 + 32);
  *v5 = *a2;
  v5[1] = v7;
  v5[2] = result;
  return result;
}

void sub_2289A2A3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (*(v26 - 33) < 0)
  {
    operator delete(*(v26 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::LeafNode<double,_HDRawLocationDatumV1,health::BlockPointer,17>>(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v15 = *MEMORY[0x277D85DE8];
  v13 = 0;
  v14 = 782;
  v11[0] = v12;
  v11[1] = v12;
  v11[2] = 782;
  health::SerializeValues<health::StaticArray<health::bplustree::LeafNode<double,_HDRawLocationDatumV1,health::BlockPointer,17>::ValueEntry,17ul>,unsigned short,health::BlockPointer,health::BlockPointer>(v11, a4, (a4 + 816), (a4 + 824), (a4 + 840));
  if (v14 <= 0x3FF)
  {
    v7 = v12;
  }

  else
  {
    v7 = v13;
  }

  health::RawBuffer::RawBuffer(v10, v7, v14);
  health::BlockAccessFile::WriteTransaction::updateBlock(a1, a2, a3, v10);
  result = v13;
  v13 = 0;
  if (result)
  {
    result = MEMORY[0x22AAC8570](result, 0x1000C8077774924);
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2289A2B8C(_Unwind_Exception *a1)
{
  v2 = STACK[0x428];
  STACK[0x428] = 0;
  if (v2)
  {
    MEMORY[0x22AAC8570](v2, 0x1000C8077774924);
  }

  _Unwind_Resume(a1);
}

void *health::StaticArray<health::bplustree::LeafNode<double,_HDRawLocationDatumV1,health::BlockPointer,17>::ValueEntry,17ul>::copyElementsFromArrayToIndex(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((a5 + a2) >= 0x12)
  {
    v5 = *MEMORY[0x277CCC2A0];
    std::string::basic_string[abi:ne200100]<0>(v15, "destinationIndex + elementCount <= Length");
    std::string::basic_string[abi:ne200100]<0>(v14, "copyElementsFromArrayToIndex");
    std::string::basic_string[abi:ne200100]<0>(v13, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/Utility/HDStaticArray.h");
    health::FormatString<>("Copy would overflow destination.", &__p);
    health::_HDAssertImplementation<std::out_of_range>(v5, v15, v14, v13, 79, &__p);
  }

  if ((a5 + a4) >= 0x12)
  {
    v6 = *MEMORY[0x277CCC2A0];
    std::string::basic_string[abi:ne200100]<0>(v11, "sourceIndex + elementCount <= Length");
    std::string::basic_string[abi:ne200100]<0>(v10, "copyElementsFromArrayToIndex");
    std::string::basic_string[abi:ne200100]<0>(v9, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/Utility/HDStaticArray.h");
    health::FormatString<>("Copy would overflow source.", &v8);
    health::_HDAssertImplementation<std::out_of_range>(v6, v11, v10, v9, 80, &v8);
  }

  return memcpy((a1 + 48 * a2), (a3 + 48 * a4), 48 * a5);
}

void sub_2289A2D8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  _Unwind_Resume(exception_object);
}

__n128 health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::insertElementAtIndex(uint64_t a1, __n128 *a2, unint64_t a3)
{
  if (a3 >= 0x11)
  {
    v4 = *MEMORY[0x277CCC2A0];
    std::string::basic_string[abi:ne200100]<0>(v11, "index < Length");
    std::string::basic_string[abi:ne200100]<0>(v10, "insertElementAtIndex");
    std::string::basic_string[abi:ne200100]<0>(v9, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/Utility/HDStaticArray.h");
    health::FormatString<>("Index out of bounds.", &__p);
    health::_HDAssertImplementation<std::out_of_range>(v4, v11, v10, v9, 57, &__p);
  }

  v5 = (a1 + 24 * a3);
  memmove(&v5[1].n128_i8[8], v5, 24 * (16 - a3));
  v6 = a2[1].n128_u64[0];
  result = *a2;
  *v5 = *a2;
  v5[1].n128_u64[0] = v6;
  return result;
}

void sub_2289A2F6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (*(v26 - 33) < 0)
  {
    operator delete(*(v26 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t HDCodableErrorReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v26 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26 & 0x7F) << v5;
        if ((v26 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v14 = PBReaderReadString();
        v15 = 24;
      }

      else
      {
        if (v13 == 2)
        {
          v16 = 0;
          v17 = 0;
          v18 = 0;
          *(a1 + 32) |= 1u;
          while (1)
          {
            v27 = 0;
            v19 = [a2 position] + 1;
            if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
            {
              v21 = [a2 data];
              [v21 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v18 |= (v27 & 0x7F) << v16;
            if ((v27 & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v11 = v17++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_37;
            }
          }

          if ([a2 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v18;
          }

LABEL_37:
          *(a1 + 8) = v22;
          goto LABEL_38;
        }

        if (v13 != 1)
        {
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_38;
        }

        v14 = PBReaderReadString();
        v15 = 16;
      }

      v23 = *(a1 + v15);
      *(a1 + v15) = v14;

LABEL_38:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t HDDispatchQueueName(void *a1, void *a2)
{
  v3 = MEMORY[0x277CCACA8];
  v4 = *MEMORY[0x277CCE408];
  v5 = a2;
  v6 = a1;
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = v8;
  v10 = @".";
  v11 = &stru_283BF39C8;
  if (v5)
  {
    v11 = v5;
  }

  else
  {
    v10 = &stru_283BF39C8;
  }

  v12 = [v3 stringWithFormat:@"%@.%@%@%@.%p", v4, v8, v10, v11, v6];

  v13 = [v12 UTF8String];
  return v13;
}

id HDDataEntityPredicateForSourceEntity(void *a1)
{
  if (a1)
  {
    v1 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(a1, "persistentID")}];
    v2 = [MEMORY[0x277D10B18] predicateWithProperty:@"data_provenances.source_id" equalToValue:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_2289A61C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

id HDPredicateForMetadataValues(void *a1)
{
  v67 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if ([v1 count])
  {
    v2 = [MEMORY[0x277CBEB18] array];
    v3 = [MEMORY[0x277CBEB18] array];
    v56 = [MEMORY[0x277CBEB18] array];
    v55 = [MEMORY[0x277CBEB18] array];
    [MEMORY[0x277CBEB18] array];
    v53 = v52 = v1;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v4 = v1;
    v5 = [v4 countByEnumeratingWithState:&v61 objects:v66 count:16];
    v54 = v3;
    if (v5)
    {
      v6 = v5;
      v7 = *v62;
      do
      {
        v8 = 0;
        do
        {
          if (*v62 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v61 + 1) + 8 * v8);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v10 = _HDSQLiteValueForString();
            v11 = v2;
            goto LABEL_13;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v10 = _HDSQLiteValueForNumber();
            v11 = v3;
            goto LABEL_13;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v10 = _HDSQLiteValueForDate();
            v11 = v56;
            goto LABEL_13;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v10 = _HDSQLiteValueForData();
              v11 = v53;
LABEL_13:
              [v11 addObject:v10];
            }

            else
            {
              v10 = [MEMORY[0x277CCA890] currentHandler];
              v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"HDSQLitePredicate * _Nonnull HDPredicateForMetadataValues(NSSet * _Nonnull __strong)"];
              [v10 handleFailureInFunction:v12 file:@"HDMetadataValueEntity.m" lineNumber:784 description:@"Unsupported metadata value type!"];

              v3 = v54;
            }

            goto LABEL_15;
          }

          [v55 addObject:v9];
LABEL_15:
          ++v8;
        }

        while (v6 != v8);
        v13 = [v4 countByEnumeratingWithState:&v61 objects:v66 count:16];
        v6 = v13;
      }

      while (v13);
    }

    v14 = [MEMORY[0x277CBEB18] array];
    if ([v2 count])
    {
      v15 = MEMORY[0x277D10B18];
      v16 = _HDSQLiteValueForNumber();
      v17 = [v15 predicateWithProperty:@"value_type" equalToValue:v16];

      v18 = [MEMORY[0x277D10B28] containsPredicateWithProperty:@"string_value" values:v2];
      v19 = [MEMORY[0x277D10B70] compoundPredicateWithPredicate:v17 otherPredicate:v18];
      [v14 addObject:v19];
    }

    else
    {
      v17 = 0;
      v18 = 0;
    }

    if ([v54 count])
    {
      v21 = MEMORY[0x277D10B18];
      v22 = _HDSQLiteValueForNumber();
      v23 = [v21 predicateWithProperty:@"value_type" equalToValue:v22];

      v24 = [MEMORY[0x277D10B28] containsPredicateWithProperty:@"numerical_value" values:v54];

      v25 = [MEMORY[0x277D10B70] compoundPredicateWithPredicate:v23 otherPredicate:v24];
      [v14 addObject:v25];

      v17 = v23;
      v18 = v24;
    }

    v26 = v55;
    if ([v56 count])
    {
      v27 = MEMORY[0x277D10B18];
      v28 = _HDSQLiteValueForNumber();
      v29 = [v27 predicateWithProperty:@"value_type" equalToValue:v28];

      v30 = [MEMORY[0x277D10B28] containsPredicateWithProperty:@"date_value" values:v56];

      v31 = [MEMORY[0x277D10B70] compoundPredicateWithPredicate:v29 otherPredicate:v30];
      [v14 addObject:v31];

      v17 = v29;
      v18 = v30;
    }

    if ([v55 count])
    {
      v51 = v14;
      v32 = MEMORY[0x277D10B18];
      v33 = _HDSQLiteValueForNumber();
      v34 = [v32 predicateWithProperty:@"value_type" equalToValue:v33];

      v35 = [MEMORY[0x277CBEB18] array];
      v57 = 0u;
      v58 = 0u;
      v59 = 0u;
      v60 = 0u;
      v36 = v55;
      v37 = [v36 countByEnumeratingWithState:&v57 objects:v65 count:16];
      if (v37)
      {
        v38 = v37;
        v39 = *v58;
        do
        {
          for (i = 0; i != v38; ++i)
          {
            if (*v58 != v39)
            {
              objc_enumerationMutation(v36);
            }

            v41 = _HDMetadataQuantityComparisonPredicate(1, *(*(&v57 + 1) + 8 * i));
            [v35 addObject:v41];
          }

          v38 = [v36 countByEnumeratingWithState:&v57 objects:v65 count:16];
        }

        while (v38);
      }

      v42 = [MEMORY[0x277D10B20] predicateMatchingAnyPredicates:v35];

      v43 = [MEMORY[0x277D10B70] compoundPredicateWithPredicate:v34 otherPredicate:v42];
      v14 = v51;
      [v51 addObject:v43];

      v18 = v42;
      v26 = v55;
    }

    else
    {
      v34 = v17;
    }

    if ([v53 count])
    {
      v44 = MEMORY[0x277D10B18];
      v45 = _HDSQLiteValueForNumber();
      v46 = [v44 predicateWithProperty:@"value_type" equalToValue:v45];

      v47 = [MEMORY[0x277D10B28] containsPredicateWithProperty:@"data_value" values:v53];

      v48 = [MEMORY[0x277D10B70] compoundPredicateWithPredicate:v46 otherPredicate:v47];
      [v14 addObject:v48];

      v34 = v46;
      v18 = v47;
    }

    v20 = [MEMORY[0x277D10B20] predicateMatchingAnyPredicates:v14];

    v1 = v52;
  }

  else
  {
    v20 = [MEMORY[0x277D10B20] falsePredicate];
  }

  v49 = *MEMORY[0x277D85DE8];

  return v20;
}

uint64_t HDSampleEntityClassForDataType(void *a1)
{
  v1 = [a1 dataObjectClass];

  return [v1 hd_dataEntityClass];
}

uint64_t HDCodableActivityCacheReadFrom(uint64_t a1, void *a2)
{
  v4 = a2;
  while (2)
  {
    v5 = [v4 position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      return [a2 hasError] ^ 1;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      LOBYTE(v117) = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v117 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v117 & 0x7F) << v6;
      if ((v117 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    switch((v13 >> 3))
    {
      case 1u:
        v14 = objc_alloc_init(HDCodableSample);
        objc_storeStrong((a1 + 208), v14);
        v117 = 0;
        v118 = 0;
        if (PBReaderPlaceMark() && HDCodableSampleReadFrom(v14, a2))
        {
          goto LABEL_111;
        }

        goto LABEL_219;
      case 2u:
        v62 = 0;
        v63 = 0;
        v64 = 0;
        *(a1 + 220) |= 0x80u;
        while (1)
        {
          LOBYTE(v117) = 0;
          v65 = [a2 position] + 1;
          if (v65 >= [a2 position] && (v66 = objc_msgSend(a2, "position") + 1, v66 <= objc_msgSend(a2, "length")))
          {
            v67 = [a2 data];
            [v67 getBytes:&v117 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v64 |= (v117 & 0x7F) << v62;
          if ((v117 & 0x80) == 0)
          {
            break;
          }

          v62 += 7;
          v12 = v63++ >= 9;
          if (v12)
          {
            v23 = 0;
            goto LABEL_180;
          }
        }

        if ([a2 hasError])
        {
          v23 = 0;
        }

        else
        {
          v23 = v64;
        }

LABEL_180:
        v99 = 64;
        goto LABEL_185;
      case 3u:
        *(a1 + 220) |= 0x200u;
        v117 = 0;
        v42 = [a2 position] + 8;
        if (v42 >= [a2 position] && (v43 = objc_msgSend(a2, "position") + 8, v43 <= objc_msgSend(a2, "length")))
        {
          v106 = [a2 data];
          [v106 getBytes:&v117 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v101 = v117;
        v102 = 80;
        goto LABEL_216;
      case 4u:
        *(a1 + 220) |= 0x10u;
        v117 = 0;
        v78 = [a2 position] + 8;
        if (v78 >= [a2 position] && (v79 = objc_msgSend(a2, "position") + 8, v79 <= objc_msgSend(a2, "length")))
        {
          v109 = [a2 data];
          [v109 getBytes:&v117 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v101 = v117;
        v102 = 40;
        goto LABEL_216;
      case 5u:
        *(a1 + 220) |= 1u;
        v117 = 0;
        v80 = [a2 position] + 8;
        if (v80 >= [a2 position] && (v81 = objc_msgSend(a2, "position") + 8, v81 <= objc_msgSend(a2, "length")))
        {
          v110 = [a2 data];
          [v110 getBytes:&v117 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v101 = v117;
        v102 = 8;
        goto LABEL_216;
      case 6u:
        v44 = 0;
        v45 = 0;
        v46 = 0;
        *(a1 + 220) |= 0x40000u;
        while (1)
        {
          LOBYTE(v117) = 0;
          v47 = [a2 position] + 1;
          if (v47 >= [a2 position] && (v48 = objc_msgSend(a2, "position") + 1, v48 <= objc_msgSend(a2, "length")))
          {
            v49 = [a2 data];
            [v49 getBytes:&v117 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v46 |= (v117 & 0x7F) << v44;
          if ((v117 & 0x80) == 0)
          {
            break;
          }

          v44 += 7;
          v12 = v45++ >= 9;
          if (v12)
          {
            v23 = 0;
            goto LABEL_168;
          }
        }

        if ([a2 hasError])
        {
          v23 = 0;
        }

        else
        {
          v23 = v46;
        }

LABEL_168:
        v99 = 152;
        goto LABEL_185;
      case 7u:
        *(a1 + 220) |= 0x400u;
        v117 = 0;
        v68 = [a2 position] + 8;
        if (v68 >= [a2 position] && (v69 = objc_msgSend(a2, "position") + 8, v69 <= objc_msgSend(a2, "length")))
        {
          v107 = [a2 data];
          [v107 getBytes:&v117 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v101 = v117;
        v102 = 88;
        goto LABEL_216;
      case 8u:
        *(a1 + 220) |= 0x100000u;
        v117 = 0;
        v70 = [a2 position] + 8;
        if (v70 >= [a2 position] && (v71 = objc_msgSend(a2, "position") + 8, v71 <= objc_msgSend(a2, "length")))
        {
          v108 = [a2 data];
          [v108 getBytes:&v117 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v101 = v117;
        v102 = 168;
        goto LABEL_216;
      case 9u:
        *(a1 + 220) |= 0x800u;
        v117 = 0;
        v84 = [a2 position] + 8;
        if (v84 >= [a2 position] && (v85 = objc_msgSend(a2, "position") + 8, v85 <= objc_msgSend(a2, "length")))
        {
          v112 = [a2 data];
          [v112 getBytes:&v117 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v101 = v117;
        v102 = 96;
        goto LABEL_216;
      case 0x12u:
        *(a1 + 220) |= 0x100u;
        v117 = 0;
        v82 = [a2 position] + 8;
        if (v82 >= [a2 position] && (v83 = objc_msgSend(a2, "position") + 8, v83 <= objc_msgSend(a2, "length")))
        {
          v111 = [a2 data];
          [v111 getBytes:&v117 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v101 = v117;
        v102 = 72;
        goto LABEL_216;
      case 0x14u:
        v26 = 0;
        v27 = 0;
        v28 = 0;
        *(a1 + 220) |= 0x10000u;
        while (1)
        {
          LOBYTE(v117) = 0;
          v29 = [a2 position] + 1;
          if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 1, v30 <= objc_msgSend(a2, "length")))
          {
            v31 = [a2 data];
            [v31 getBytes:&v117 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v28 |= (v117 & 0x7F) << v26;
          if ((v117 & 0x80) == 0)
          {
            break;
          }

          v26 += 7;
          v12 = v27++ >= 9;
          if (v12)
          {
            v23 = 0;
            goto LABEL_160;
          }
        }

        if ([a2 hasError])
        {
          v23 = 0;
        }

        else
        {
          v23 = v28;
        }

LABEL_160:
        v99 = 136;
        goto LABEL_185;
      case 0x16u:
        v50 = 0;
        v51 = 0;
        v52 = 0;
        *(a1 + 220) |= 0x1000u;
        while (1)
        {
          LOBYTE(v117) = 0;
          v53 = [a2 position] + 1;
          if (v53 >= [a2 position] && (v54 = objc_msgSend(a2, "position") + 1, v54 <= objc_msgSend(a2, "length")))
          {
            v55 = [a2 data];
            [v55 getBytes:&v117 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v52 |= (v117 & 0x7F) << v50;
          if ((v117 & 0x80) == 0)
          {
            break;
          }

          v50 += 7;
          v12 = v51++ >= 9;
          if (v12)
          {
            v23 = 0;
            goto LABEL_172;
          }
        }

        if ([a2 hasError])
        {
          v23 = 0;
        }

        else
        {
          v23 = v52;
        }

LABEL_172:
        v99 = 104;
        goto LABEL_185;
      case 0x18u:
        v34 = 0;
        v35 = 0;
        v36 = 0;
        *(a1 + 220) |= 0x200000u;
        while (1)
        {
          LOBYTE(v117) = 0;
          v37 = [a2 position] + 1;
          if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
          {
            v39 = [a2 data];
            [v39 getBytes:&v117 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v36 |= (v117 & 0x7F) << v34;
          if ((v117 & 0x80) == 0)
          {
            break;
          }

          v34 += 7;
          v12 = v35++ >= 9;
          if (v12)
          {
            v23 = 0;
            goto LABEL_164;
          }
        }

        if ([a2 hasError])
        {
          v23 = 0;
        }

        else
        {
          v23 = v36;
        }

LABEL_164:
        v99 = 176;
        goto LABEL_185;
      case 0x1Fu:
        v14 = objc_alloc_init(HDCodableActivityStatisticsQuantityInfo);
        [a1 addDailyEnergyBurnedStatistics:v14];
        goto LABEL_109;
      case 0x20u:
        v14 = objc_alloc_init(HDCodableActivityStatisticsQuantityInfo);
        [a1 addDailyBriskMinutesStatistics:v14];
        goto LABEL_109;
      case 0x21u:
        v72 = 0;
        v73 = 0;
        v74 = 0;
        *(a1 + 220) |= 0x20000u;
        while (1)
        {
          LOBYTE(v117) = 0;
          v75 = [a2 position] + 1;
          if (v75 >= [a2 position] && (v76 = objc_msgSend(a2, "position") + 1, v76 <= objc_msgSend(a2, "length")))
          {
            v77 = [a2 data];
            [v77 getBytes:&v117 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v74 |= (v117 & 0x7F) << v72;
          if ((v117 & 0x80) == 0)
          {
            break;
          }

          v72 += 7;
          v12 = v73++ >= 9;
          if (v12)
          {
            v23 = 0;
            goto LABEL_184;
          }
        }

        if ([a2 hasError])
        {
          v23 = 0;
        }

        else
        {
          v23 = v74;
        }

LABEL_184:
        v99 = 144;
        goto LABEL_185;
      case 0x22u:
        *(a1 + 220) |= 0x20u;
        v117 = 0;
        v88 = [a2 position] + 8;
        if (v88 >= [a2 position] && (v89 = objc_msgSend(a2, "position") + 8, v89 <= objc_msgSend(a2, "length")))
        {
          v114 = [a2 data];
          [v114 getBytes:&v117 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v101 = v117;
        v102 = 48;
        goto LABEL_216;
      case 0x23u:
        *(a1 + 220) |= 2u;
        v117 = 0;
        v86 = [a2 position] + 8;
        if (v86 >= [a2 position] && (v87 = objc_msgSend(a2, "position") + 8, v87 <= objc_msgSend(a2, "length")))
        {
          v113 = [a2 data];
          [v113 getBytes:&v117 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v101 = v117;
        v102 = 16;
        goto LABEL_216;
      case 0x24u:
        *(a1 + 220) |= 0x2000u;
        v117 = 0;
        v15 = [a2 position] + 8;
        if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 8, v16 <= objc_msgSend(a2, "length")))
        {
          v100 = [a2 data];
          [v100 getBytes:&v117 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v101 = v117;
        v102 = 112;
        goto LABEL_216;
      case 0x25u:
        *(a1 + 220) |= 0x4000u;
        v117 = 0;
        v40 = [a2 position] + 8;
        if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 8, v41 <= objc_msgSend(a2, "length")))
        {
          v105 = [a2 data];
          [v105 getBytes:&v117 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v101 = v117;
        v102 = 120;
        goto LABEL_216;
      case 0x26u:
        *(a1 + 220) |= 0x8000u;
        v117 = 0;
        v90 = [a2 position] + 8;
        if (v90 >= [a2 position] && (v91 = objc_msgSend(a2, "position") + 8, v91 <= objc_msgSend(a2, "length")))
        {
          v115 = [a2 data];
          [v115 getBytes:&v117 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v101 = v117;
        v102 = 128;
        goto LABEL_216;
      case 0x27u:
        v14 = objc_alloc_init(HDCodableActivityStatisticsQuantityInfo);
        [a1 addDailyMoveMinutesStatistics:v14];
LABEL_109:
        v117 = 0;
        v118 = 0;
        if (PBReaderPlaceMark() && HDCodableActivityStatisticsQuantityInfoReadFrom(v14, a2))
        {
LABEL_111:
          PBReaderRecallMark();

LABEL_217:
          v4 = a2;
          continue;
        }

LABEL_219:

        return 0;
      case 0x28u:
        *(a1 + 220) |= 0x40u;
        v117 = 0;
        v32 = [a2 position] + 8;
        if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 8, v33 <= objc_msgSend(a2, "length")))
        {
          v104 = [a2 data];
          [v104 getBytes:&v117 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v101 = v117;
        v102 = 56;
        goto LABEL_216;
      case 0x29u:
        *(a1 + 220) |= 4u;
        v117 = 0;
        v24 = [a2 position] + 8;
        if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 8, v25 <= objc_msgSend(a2, "length")))
        {
          v103 = [a2 data];
          [v103 getBytes:&v117 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v101 = v117;
        v102 = 24;
LABEL_216:
        *(a1 + v102) = v101;
        goto LABEL_217;
      case 0x2Au:
        v56 = 0;
        v57 = 0;
        v58 = 0;
        *(a1 + 220) |= 8u;
        while (1)
        {
          LOBYTE(v117) = 0;
          v59 = [a2 position] + 1;
          if (v59 >= [a2 position] && (v60 = objc_msgSend(a2, "position") + 1, v60 <= objc_msgSend(a2, "length")))
          {
            v61 = [a2 data];
            [v61 getBytes:&v117 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v58 |= (v117 & 0x7F) << v56;
          if ((v117 & 0x80) == 0)
          {
            break;
          }

          v56 += 7;
          v12 = v57++ >= 9;
          if (v12)
          {
            v23 = 0;
            goto LABEL_176;
          }
        }

        if ([a2 hasError])
        {
          v23 = 0;
        }

        else
        {
          v23 = v58;
        }

LABEL_176:
        v99 = 32;
        goto LABEL_185;
      case 0x2Bu:
        v17 = 0;
        v18 = 0;
        v19 = 0;
        *(a1 + 220) |= 0x80000u;
        while (1)
        {
          LOBYTE(v117) = 0;
          v20 = [a2 position] + 1;
          if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
          {
            v22 = [a2 data];
            [v22 getBytes:&v117 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v19 |= (v117 & 0x7F) << v17;
          if ((v117 & 0x80) == 0)
          {
            break;
          }

          v17 += 7;
          v12 = v18++ >= 9;
          if (v12)
          {
            v23 = 0;
            goto LABEL_156;
          }
        }

        if ([a2 hasError])
        {
          v23 = 0;
        }

        else
        {
          v23 = v19;
        }

LABEL_156:
        v99 = 160;
LABEL_185:
        *(a1 + v99) = v23;
        goto LABEL_217;
      case 0x2Cu:
        v92 = 0;
        v93 = 0;
        v94 = 0;
        *(a1 + 220) |= 0x400000u;
        while (1)
        {
          LOBYTE(v117) = 0;
          v95 = [a2 position] + 1;
          if (v95 >= [a2 position] && (v96 = objc_msgSend(a2, "position") + 1, v96 <= objc_msgSend(a2, "length")))
          {
            v97 = [a2 data];
            [v97 getBytes:&v117 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v94 |= (v117 & 0x7F) << v92;
          if ((v117 & 0x80) == 0)
          {
            break;
          }

          v92 += 7;
          v12 = v93++ >= 9;
          if (v12)
          {
            LOBYTE(v98) = 0;
            goto LABEL_187;
          }
        }

        v98 = (v94 != 0) & ~[a2 hasError];
LABEL_187:
        *(a1 + 216) = v98;
        goto LABEL_217;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_217;
    }
  }
}

id HDWorkoutEntityPredicateForWorkoutActivityType(uint64_t a1)
{
  v1 = MEMORY[0x277D10B18];
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1];
  v3 = [v1 predicateWithProperty:@"activities.activity_type" value:v2 comparisonType:1];

  return v3;
}

id HDNanoSyncEntityClassForObjectType(int a1)
{
  v2 = a1 - 1;
  if (a1 - 1) <= 0x31 && ((0x3E1000067FFAFuLL >> v2))
  {
    v3 = *off_278623130[v2];
    v4 = objc_opt_class();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t HDCodableSourceReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v37[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v37 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v37[0] & 0x7F) << v5;
        if ((v37[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 4)
      {
        break;
      }

      if (v13 <= 6)
      {
        if (v13 == 5)
        {
          v15 = PBReaderReadData();
          v16 = 64;
          goto LABEL_58;
        }

        if (v13 == 6)
        {
          *(a1 + 76) |= 1u;
          v37[0] = 0;
          v24 = [a2 position] + 8;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 8, v25 <= objc_msgSend(a2, "length")))
          {
            v35 = [a2 data];
            [v35 getBytes:v37 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          *(a1 + 8) = v37[0];
          goto LABEL_59;
        }

LABEL_61:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_59;
      }

      if (v13 == 7)
      {
        v26 = 0;
        v27 = 0;
        v28 = 0;
        *(a1 + 76) |= 4u;
        while (1)
        {
          LOBYTE(v37[0]) = 0;
          v29 = [a2 position] + 1;
          if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 1, v30 <= objc_msgSend(a2, "length")))
          {
            v31 = [a2 data];
            [v31 getBytes:v37 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v28 |= (v37[0] & 0x7F) << v26;
          if ((v37[0] & 0x80) == 0)
          {
            break;
          }

          v26 += 7;
          v11 = v27++ >= 9;
          if (v11)
          {
            LOBYTE(v32) = 0;
            goto LABEL_68;
          }
        }

        v32 = (v28 != 0) & ~[a2 hasError];
LABEL_68:
        *(a1 + 72) = v32;
        goto LABEL_59;
      }

      if (v13 == 8)
      {
        v15 = PBReaderReadString();
        v16 = 40;
        goto LABEL_58;
      }

      if (v13 != 9)
      {
        goto LABEL_61;
      }

      v14 = objc_alloc_init(HDCodableSyncIdentity);
      objc_storeStrong((a1 + 56), v14);
      v37[0] = 0;
      v37[1] = 0;
      if (!PBReaderPlaceMark() || !HDCodableSyncIdentityReadFrom(v14, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_59:
      v34 = [a2 position];
      if (v34 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 > 2)
    {
      if (v13 == 3)
      {
        v15 = PBReaderReadString();
        v16 = 48;
        goto LABEL_58;
      }

      if (v13 == 4)
      {
        v17 = 0;
        v18 = 0;
        v19 = 0;
        *(a1 + 76) |= 2u;
        while (1)
        {
          LOBYTE(v37[0]) = 0;
          v20 = [a2 position] + 1;
          if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
          {
            v22 = [a2 data];
            [v22 getBytes:v37 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v19 |= (v37[0] & 0x7F) << v17;
          if ((v37[0] & 0x80) == 0)
          {
            break;
          }

          v17 += 7;
          v11 = v18++ >= 9;
          if (v11)
          {
            v23 = 0;
            goto LABEL_66;
          }
        }

        if ([a2 hasError])
        {
          v23 = 0;
        }

        else
        {
          v23 = v19;
        }

LABEL_66:
        *(a1 + 16) = v23;
        goto LABEL_59;
      }
    }

    else
    {
      if (v13 == 1)
      {
        v15 = PBReaderReadString();
        v16 = 32;
        goto LABEL_58;
      }

      if (v13 == 2)
      {
        v15 = PBReaderReadString();
        v16 = 24;
LABEL_58:
        v33 = *(a1 + v16);
        *(a1 + v16) = v15;

        goto LABEL_59;
      }
    }

    goto LABEL_61;
  }

  return [a2 hasError] ^ 1;
}

uint64_t HDCodableProvenanceReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v39 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v39 & 0x7F) << v5;
        if ((v39 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 6)
      {
        if (v13 <= 8)
        {
          if (v13 != 7)
          {
            if (v13 != 8)
            {
LABEL_65:
              result = PBReaderSkipValueWithTag();
              if (!result)
              {
                return result;
              }

              goto LABEL_80;
            }

            v16 = 0;
            v17 = 0;
            v18 = 0;
            *(a1 + 80) |= 1u;
            while (1)
            {
              v42 = 0;
              v19 = [a2 position] + 1;
              if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
              {
                v21 = [a2 data];
                [v21 getBytes:&v42 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v18 |= (v42 & 0x7F) << v16;
              if ((v42 & 0x80) == 0)
              {
                break;
              }

              v16 += 7;
              v11 = v17++ >= 9;
              if (v11)
              {
                v22 = 0;
                goto LABEL_70;
              }
            }

            if ([a2 hasError])
            {
              v22 = 0;
            }

            else
            {
              v22 = v18;
            }

LABEL_70:
            v37 = 32;
            goto LABEL_79;
          }

          v14 = PBReaderReadString();
          v15 = 72;
        }

        else
        {
          if (v13 == 9)
          {
            v23 = 0;
            v24 = 0;
            v25 = 0;
            *(a1 + 80) |= 2u;
            while (1)
            {
              v41 = 0;
              v26 = [a2 position] + 1;
              if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
              {
                v28 = [a2 data];
                [v28 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v25 |= (v41 & 0x7F) << v23;
              if ((v41 & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v11 = v24++ >= 9;
              if (v11)
              {
                v22 = 0;
                goto LABEL_74;
              }
            }

            if ([a2 hasError])
            {
              v22 = 0;
            }

            else
            {
              v22 = v25;
            }

LABEL_74:
            v37 = 36;
            goto LABEL_79;
          }

          if (v13 == 10)
          {
            v30 = 0;
            v31 = 0;
            v32 = 0;
            *(a1 + 80) |= 4u;
            while (1)
            {
              v40 = 0;
              v33 = [a2 position] + 1;
              if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
              {
                v35 = [a2 data];
                [v35 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v32 |= (v40 & 0x7F) << v30;
              if ((v40 & 0x80) == 0)
              {
                break;
              }

              v30 += 7;
              v11 = v31++ >= 9;
              if (v11)
              {
                v22 = 0;
                goto LABEL_78;
              }
            }

            if ([a2 hasError])
            {
              v22 = 0;
            }

            else
            {
              v22 = v32;
            }

LABEL_78:
            v37 = 40;
LABEL_79:
            *(a1 + v37) = v22;
            goto LABEL_80;
          }

          if (v13 != 11)
          {
            goto LABEL_65;
          }

          v14 = PBReaderReadData();
          v15 = 8;
        }
      }

      else if (v13 <= 3)
      {
        if (v13 == 1)
        {
          v14 = PBReaderReadString();
          v15 = 24;
        }

        else
        {
          if (v13 != 3)
          {
            goto LABEL_65;
          }

          v14 = PBReaderReadData();
          v15 = 56;
        }
      }

      else
      {
        switch(v13)
        {
          case 4:
            v14 = PBReaderReadData();
            v15 = 16;
            break;
          case 5:
            v14 = PBReaderReadString();
            v15 = 64;
            break;
          case 6:
            v14 = PBReaderReadString();
            v15 = 48;
            break;
          default:
            goto LABEL_65;
        }
      }

      v29 = *(a1 + v15);
      *(a1 + v15) = v14;

LABEL_80:
      v38 = [a2 position];
    }

    while (v38 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}