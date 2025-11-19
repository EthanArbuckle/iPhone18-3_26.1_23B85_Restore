@interface HDQuantitySampleSeriesEntity
+ (BOOL)_deleteHFDSeriesIfFoundForPersistentID:(void *)a3 database:(uint64_t)a4 error:;
+ (BOOL)enumerateDataWithIdentifier:(id)a3 profile:(id)a4 error:(id *)a5 handler:(id)a6;
+ (BOOL)enumerateDataWithIdentifier:(id)a3 transaction:(id)a4 error:(id *)a5 handler:(id)a6;
+ (BOOL)enumerateDataWithTransaction:(id)a3 HFDKey:(int64_t)a4 error:(id *)a5 handler:(id)a6;
+ (BOOL)enumerateRawDataWithTransaction:(id)a3 HFDKey:(int64_t)a4 error:(id *)a5 handler:(id)a6;
+ (BOOL)insertValues:(id)a3 series:(id)a4 profile:(id)a5 error:(id *)a6;
+ (BOOL)performPostFirstJournalMergeCleanupWithTransaction:(id)a3 profile:(id)a4 error:(id *)a5;
+ (BOOL)primitiveInsertValues:(id)a3 seriesVersion:(int64_t)a4 HFDKey:(int64_t)a5 database:(id)a6 error:(id *)a7;
+ (BOOL)primitiveRemoveDatums:(id)a3 HFDKey:(int64_t)a4 transaction:(id)a5 error:(id *)a6;
+ (BOOL)replaceExistingObject:(id)a3 existingObjectID:(id)a4 replacementObject:(id)a5 replacementObjectID:(id)a6 profile:(id)a7 transaction:(id)a8 error:(id *)a9;
+ (BOOL)unitTesting_insertValues:(id)a3 quantitySample:(id)a4 seriesVersion:(int64_t)a5 profile:(id)a6 error:(id *)a7;
+ (const)columnDefinitionsWithCount:(unint64_t *)a3;
+ (id)_insertDataObject:(void *)a3 inDatabase:(void *)a4 persistentID:(uint64_t)a5 error:;
+ (id)disambiguatedSQLForProperty:(id)a3;
+ (id)entityEncoderForProfile:(id)a3 transaction:(id)a4 purpose:(int64_t)a5 encodingOptions:(id)a6 authorizationFilter:(id)a7;
+ (id)foreignKeys;
+ (id)freezeSeriesWithIdentifier:(id)a3 metadata:(id)a4 endDate:(id)a5 profile:(id)a6 error:(id *)a7;
+ (id)hasSeriesDataForHFDKey:(int64_t)a3 transaction:(id)a4 error:(id *)a5;
+ (id)indices;
+ (id)insertDataObject:(id)a3 withProvenance:(id)a4 inDatabase:(id)a5 persistentID:(id)a6 error:(id *)a7;
+ (id)joinClausesForProperty:(id)a3;
+ (id)mergeDataObject:(id)a3 provenance:(id)a4 profile:(id)a5 transaction:(id)a6 error:(id *)a7 insertHandler:(id)a8;
+ (id)objectInsertionFilterForProfile:(id)a3;
+ (id)orderingTermForSortDescriptor:(id)a3;
+ (id)privateSubEntities;
+ (id)quantitySampleSeriesEntitiesForAutoFreezeSQL;
+ (id)quantitySampleSeriesEntitiesForAutoFreezeWithTransaction:(id)a3 error:(id *)a4;
+ (id)removeValues:(id)a3 fromQuantitySeriesSample:(id)a4 profile:(id)a5 error:(id *)a6;
+ (int64_t)_hasSeriesDataWithDatabase:(id)a3 hfdKey:(unint64_t)a4 error:(id *)a5;
+ (uint64_t)_insertionEra;
- (BOOL)_getFirstTimeEndTimeCountWithTransaction:(uint64_t)a3 HFDKey:(uint64_t)a4 error:(void *)a5 handler:;
- (BOOL)_insertValues:(void *)a3 database:(uint64_t)a4 error:;
- (BOOL)deleteFromDatabase:(id)a3 error:(id *)a4;
- (BOOL)enumerateDataWithTransaction:(id)a3 error:(id *)a4 handler:(id)a5;
- (BOOL)insertValues:(id)a3 transaction:(id)a4 error:(id *)a5;
- (BOOL)startTimeEndTimeCountForSeriesWithTransaction:(id)a3 error:(id *)a4 handler:(id)a5;
- (BOOL)unitTesting_setInsertionEra:(int64_t)a3 profile:(id)a4 error:(id *)a5;
- (id)HFDKeyWithDatabase:(id)a3 error:(id *)a4;
- (id)_dataOriginProvenanceWithTransaction:(void *)a3 profile:(uint64_t)a4 error:;
- (id)_updatedSampleForQuantitySeriesSample:(uint64_t)a3 HFDKey:(void *)a4 endDate:(void *)a5 transaction:(uint64_t)a6 error:;
- (id)countForSeriesWithTransaction:(id)a3 error:(id *)a4;
- (id)freezeWithEndDate:(id)a3 transaction:(id)a4 profile:(id)a5 error:(id *)a6;
- (id)hasSeriesDataWithTransaction:(id)a3 error:(id *)a4;
- (uint64_t)_isFrozenInDatabase:(uint64_t)a3 error:;
- (uint64_t)_setHFDKey:(void *)a3 database:(uint64_t)a4 error:;
@end

@implementation HDQuantitySampleSeriesEntity

+ (const)columnDefinitionsWithCount:(unint64_t *)a3
{
  {
    v5 = a3;
    a3 = v5;
    if (v4)
    {
      __cxa_atexit(__cxx_global_array_dtor_1, 0, &dword_228986000);
      a3 = v5;
    }
  }

  *a3 = 5;
  return +[HDQuantitySampleSeriesEntity columnDefinitionsWithCount:]::columnDefinitions;
}

+ (id)foreignKeys
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"data_id";
  v2 = +[(HDDataEntity *)HDSampleEntity];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)indices
{
  v13[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCACA8];
  v3 = [HDQuantitySampleSeriesEntity disambiguatedSQLForProperty:@"insertion_era"];
  v4 = [v2 stringWithFormat:@"%@ IS NOT NULL", v3];

  v5 = objc_alloc(MEMORY[0x277D10B40]);
  v6 = objc_opt_class();
  v12 = @"insertion_era";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v12 count:1];
  v8 = [v5 initWithEntity:v6 name:@"unfrozen" columns:v7 unique:0 predicateString:v4];
  v13[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)joinClausesForProperty:(id)a3
{
  v4 = a3;
  objc_opt_self();
  v5 = [MEMORY[0x277CBEB98] setWithObjects:{@"count", @"insertion_era", @"hfd_key", 0}];
  v6 = [v5 containsObject:v4];

  if (v6)
  {
    v7 = MEMORY[0x277D10B50];
    v8 = [objc_msgSend(a1 "entityClassForEnumeration")];
    v9 = [v7 leftJoinClauseFromTable:v8 toTargetEntity:a1 as:0 localReference:@"data_id" targetKey:@"data_id"];

    v10 = [MEMORY[0x277CBEB98] setWithObject:v9];
LABEL_5:
    v15 = v10;

    goto LABEL_7;
  }

  v11 = +[HDQuantitySampleSeriesEntity _statisticsProperties];
  v12 = [v11 containsObject:v4];

  if (v12)
  {
    v13 = MEMORY[0x277D10B50];
    v14 = [a1 disambiguatedDatabaseTable];
    v9 = [v13 leftJoinClauseFromTable:v14 toTargetEntity:objc_opt_class() as:0 localReference:@"data_id" targetKey:@"owner_id"];

    v10 = [MEMORY[0x277CBEB98] setWithObject:v9];
    goto LABEL_5;
  }

  v15 = [objc_msgSend(a1 "entityClassForEnumeration")];
LABEL_7:

  return v15;
}

+ (id)orderingTermForSortDescriptor:(id)a3
{
  v4 = a3;
  v5 = [v4 key];
  v6 = [v4 ascending];
  if ([v5 isEqualToString:*MEMORY[0x277CCCD48]])
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = [(HDSQLiteSchemaEntity *)HDQuantitySampleStatisticsEntity disambiguatedSQLForProperty:@"most_recent_date"];
    v9 = [(HDDataEntity *)HDSampleEntity disambiguatedSQLForProperty:@"start_date"];
    v10 = [v7 stringWithFormat:@"IFNULL(%@, %@)", v8, v9];

    v11 = [objc_alloc(MEMORY[0x277D10B68]) initWithExpression:v10 ascending:v6];
LABEL_5:
    v16 = v11;

    goto LABEL_7;
  }

  if ([v5 isEqualToString:*MEMORY[0x277CCCD40]])
  {
    v12 = MEMORY[0x277CCACA8];
    v13 = [(HDSQLiteSchemaEntity *)HDQuantitySampleStatisticsEntity disambiguatedSQLForProperty:@"most_recent_date"];
    v14 = [(HDSQLiteSchemaEntity *)HDQuantitySampleStatisticsEntity disambiguatedSQLForProperty:@"most_recent_duration"];
    v15 = [(HDDataEntity *)HDSampleEntity disambiguatedSQLForProperty:@"end_date"];
    v10 = [v12 stringWithFormat:@"IFNULL(%@ + %@, %@)", v13, v14, v15];

    v11 = [objc_alloc(MEMORY[0x277D10B68]) initWithExpression:v10 ascending:v6];
    goto LABEL_5;
  }

  v18.receiver = a1;
  v18.super_class = &OBJC_METACLASS___HDQuantitySampleSeriesEntity;
  v16 = objc_msgSendSuper2(&v18, sel_orderingTermForSortDescriptor_, v4);
LABEL_7:

  return v16;
}

+ (id)disambiguatedSQLForProperty:(id)a3
{
  v4 = a3;
  if (([v4 isEqualToString:*MEMORY[0x277D10A40]] & 1) != 0 || objc_msgSend(v4, "isEqualToString:", @"data_id"))
  {
    v5 = [a1 entityClassForEnumeration];
LABEL_4:
    v6 = [v5 disambiguatedSQLForProperty:v4];
    goto LABEL_5;
  }

  v9 = +[HDQuantitySampleSeriesEntity _statisticsProperties];
  v10 = [v9 containsObject:v4];

  if (v10)
  {
    v5 = objc_opt_class();
    goto LABEL_4;
  }

  v11.receiver = a1;
  v11.super_class = &OBJC_METACLASS___HDQuantitySampleSeriesEntity;
  v6 = objc_msgSendSuper2(&v11, sel_disambiguatedSQLForProperty_, v4);
LABEL_5:
  v7 = v6;

  return v7;
}

+ (id)privateSubEntities
{
  v5[2] = *MEMORY[0x277D85DE8];
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:2];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (uint64_t)_insertionEra
{
  objc_opt_self();
  if (_MergedGlobals_210 != -1)
  {
    dispatch_once(&_MergedGlobals_210, &__block_literal_global_148);
  }

  return qword_280D67D28;
}

+ (id)insertDataObject:(id)a3 withProvenance:(id)a4 inDatabase:(id)a5 persistentID:(id)a6 error:(id *)a7
{
  v7 = [(HDQuantitySampleSeriesEntity *)a1 _insertDataObject:a3 inDatabase:a5 persistentID:a6 error:a7];

  return v7;
}

+ (id)_insertDataObject:(void *)a3 inDatabase:(void *)a4 persistentID:(uint64_t)a5 error:
{
  v64 = *MEMORY[0x277D85DE8];
  v8 = a2;
  v9 = a3;
  v44 = a4;
  v10 = objc_opt_self();
  if ([v8 count] == 1 && objc_msgSend(v8, "_frozen"))
  {
    v11 = v44;
    goto LABEL_21;
  }

  v12 = [v8 codableQuantitySample];
  if ([v12 hasFinal])
  {
    v13 = [v8 codableQuantitySample];
    v14 = [v13 final];

    if ((v14 & 1) == 0)
    {
      v15 = v8;
      v16 = @"insert";
      objc_opt_self();
      _HKInitializeLogging();
      v17 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v43 = [v15 quantityType];
        v41 = [v43 code];
        v40 = [v15 count];
        v42 = [v15 codableQuantitySample];
        v38 = [v42 frozen];
        v39 = [v15 codableQuantitySample];
        v18 = [v39 final];
        v19 = [v15 codableQuantitySample];
        v20 = [v19 quantitySeriesDatas];
        *buf = 138544898;
        v51 = @"insert";
        v52 = 2048;
        v53 = v41;
        v54 = 2048;
        v55 = v40;
        v56 = 1024;
        v57 = v38;
        v58 = 1024;
        v59 = v18;
        v60 = 2048;
        v61 = [v20 count];
        v62 = 2114;
        v63 = v15;
        _os_log_impl(&dword_228986000, v17, OS_LOG_TYPE_DEFAULT, "Non-final quantity sample %{public}@: type=%ld, count=%ld, frozen=%{BOOL}d, final=%{BOOL}d, datumsCount=%ld, sample=(%{public}@)", buf, 0x40u);
      }

      v21 = objc_opt_class();
      v22 = [v15 count];
      v23 = [v15 codableQuantitySample];
      v24 = [v23 quantitySeriesDatas];
      +[HDAutoBugCaptureReporter reportNotFinalSeriesSampleWithClass:count:datumCount:reason:](HDAutoBugCaptureReporter, "reportNotFinalSeriesSampleWithClass:count:datumCount:reason:", v21, v22, [v24 count], @"insert");

      v25 = 0;
      goto LABEL_11;
    }
  }

  else
  {
  }

  v25 = 1;
LABEL_11:
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __80__HDQuantitySampleSeriesEntity__insertDataObject_inDatabase_persistentID_error___block_invoke;
  v45[3] = &unk_278624780;
  v26 = v44;
  v46 = v26;
  v27 = v8;
  v47 = v27;
  v48 = v10;
  v49 = v25;
  if (([v9 executeSQL:@"INSERT INTO quantity_sample_series (data_id error:count bindingHandler:insertion_era enumerationHandler:{hfd_key, series_location) VALUES (?, ?, ?, (COALESCE((SELECT MAX(hfd_key) + 1 FROM quantity_sample_series), 1)), 2)", a5, v45, 0}] & 1) != 0 && ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || +[HDQuantitySampleStatisticsEntity setDiscreteQuantitySampleStatistics:persistentID:database:error:](HDQuantitySampleStatisticsEntity, "setDiscreteQuantitySampleStatistics:persistentID:database:error:", v27, v26, v9, a5)) && +[HDQuantitySampleSeriesEntity _deleteHFDSeriesIfFoundForPersistentID:database:error:](v10, v26, v9, a5))
  {
    v28 = [v27 codableQuantitySample];
    v29 = [v28 quantitySeriesDatas];
    v30 = v29 == 0;

    if (!v30)
    {
      v31 = [v27 codableQuantitySample];
      v32 = [v31 quantitySeriesDatas];
      v33 = [v32 hk_map:&__block_literal_global_361];

      v34 = -[HDSQLiteEntity initWithPersistentID:]([HDQuantitySampleSeriesEntity alloc], "initWithPersistentID:", [v26 longLongValue]);
      v35 = [(HDQuantitySampleSeriesEntity *)v34 _insertValues:v33 database:v9 error:a5];

      if (!v35)
      {
        v26 = 0;
      }
    }

    v11 = v26;
  }

  else
  {
    v11 = 0;
  }

LABEL_21:
  v36 = *MEMORY[0x277D85DE8];

  return v11;
}

uint64_t __80__HDQuantitySampleSeriesEntity__insertDataObject_inDatabase_persistentID_error___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, [*(a1 + 32) longLongValue]);
  sqlite3_bind_int64(a2, 2, [*(a1 + 40) count]);
  if ([*(a1 + 40) _frozen])
  {
    if (*(a1 + 56))
    {

      return sqlite3_bind_null(a2, 3);
    }

    v7 = *(a1 + 48);
    objc_opt_self();
    v6 = -+[HDQuantitySampleSeriesEntity _insertionEra];
  }

  else
  {
    v5 = *(a1 + 48);
    v6 = +[HDQuantitySampleSeriesEntity _insertionEra];
  }

  return sqlite3_bind_int64(a2, 3, v6);
}

+ (BOOL)_deleteHFDSeriesIfFoundForPersistentID:(void *)a3 database:(uint64_t)a4 error:
{
  v6 = a2;
  v7 = a3;
  objc_opt_self();
  v8 = [(HDSQLiteEntity *)HDQuantitySampleSeriesEntity entityWithPersistentID:v6];
  v9 = [v8 HFDKeyWithDatabase:v7 error:a4];

  if (v9)
  {
    v10 = +[HDQuantitySeriesDataEntity deleteSeriesDataWithIdentifier:database:error:](HDQuantitySeriesDataEntity, "deleteSeriesDataWithIdentifier:database:error:", [v9 longLongValue], v7, a4);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

id __80__HDQuantitySampleSeriesEntity__insertDataObject_inDatabase_persistentID_error___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 hasStartDate])
  {
    [v2 startDate];
  }

  else
  {
    [v2 endDate];
  }

  v4 = v3;
  v5 = -1.0;
  if ([v2 hasStartDate])
  {
    [v2 endDate];
    v7 = v6;
    [v2 startDate];
    v5 = v7 - v8;
  }

  v9 = MEMORY[0x277CCD180];
  [v2 value];
  *&v10 = v5;
  v12 = [v9 datumWithTimestamp:v4 value:v11 duration:v10];

  return v12;
}

- (BOOL)_insertValues:(void *)a3 database:(uint64_t)a4 error:
{
  v48[2] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  if (a1)
  {
    v9 = [a1 HFDKeyWithDatabase:v8 error:a4];
    if (v9)
    {
      v41 = 0;
      v42 = &v41;
      v43 = 0x3032000000;
      v44 = __Block_byref_object_copy__123;
      v45 = __Block_byref_object_dispose__123;
      v46 = 0;
      v37 = 0;
      v38 = &v37;
      v39 = 0x2020000000;
      v40 = -1;
      v48[0] = @"start_date";
      v48[1] = @"data_type";
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:2];
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __61__HDQuantitySampleSeriesEntity__insertValues_database_error___block_invoke;
      v36[3] = &unk_2786247C8;
      v36[4] = &v41;
      v36[5] = &v37;
      v11 = [a1 getValuesForProperties:v10 database:v8 error:a4 handler:v36];

      if (v11 && v42[5] && (v12 = v38[3], (_HKValidDataTypeCode() & 1) != 0))
      {
        v13 = [MEMORY[0x277CCD8D8] dataTypeWithCode:v38[3]];
        [v42[5] timeIntervalSinceReferenceDate];
        v15 = v14;
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v16 = v7;
        v17 = [v16 countByEnumeratingWithState:&v32 objects:v47 count:16];
        if (v17)
        {
          v18 = *v33;
LABEL_8:
          v19 = 0;
          while (1)
          {
            if (*v33 != v18)
            {
              objc_enumerationMutation(v16);
            }

            v20 = *(*(&v32 + 1) + 8 * v19);
            [v20 timeInterval];
            if (v21 < v15)
            {
              break;
            }

            [v20 duration];
            if (v22 < 0.0)
            {
              [v20 duration];
              if (v23 != -1.0)
              {
                [MEMORY[0x277CCA9B8] hk_assignError:a4 code:100 format:{@"Cannot insert datum (%@) because it has an invalid negative duration", v20}];
                goto LABEL_27;
              }
            }

            if ([v13 isMinimumDurationRestricted])
            {
              [v20 duration];
              v25 = v24;
              [v13 minimumAllowedDuration];
              if (v26 > v25)
              {
                v30 = MEMORY[0x277CCA9B8];
                [v13 minimumAllowedDuration];
                [v30 hk_assignError:a4 code:100 format:{@"Cannot insert datum (%@) because duration is too short. Minimum required duration for sample type %@ is %f", v20, v13, v31}];
                goto LABEL_27;
              }
            }

            if (v17 == ++v19)
            {
              v17 = [v16 countByEnumeratingWithState:&v32 objects:v47 count:16];
              if (v17)
              {
                goto LABEL_8;
              }

              goto LABEL_18;
            }
          }

          [MEMORY[0x277CCA9B8] hk_assignError:a4 code:100 format:{@"Cannot insert datum (%@) because it occurs before the series start time (%f)", v20, *&v15}];
LABEL_27:

          v27 = 0;
          goto LABEL_28;
        }

LABEL_18:

        v27 = +[HDQuantitySampleSeriesEntity primitiveInsertValues:seriesVersion:HFDKey:database:error:](HDQuantitySampleSeriesEntity, "primitiveInsertValues:seriesVersion:HFDKey:database:error:", v16, 1, [v9 longLongValue], v8, a4);
LABEL_28:
      }

      else
      {
        [MEMORY[0x277CCA9B8] hk_assignError:a4 code:100 format:{@"Unable to lookup %@ and %@ for %@ with persistentID %lld", @"start_date", @"data_type", objc_opt_class(), objc_msgSend(a1, "persistentID")}];
        v27 = 0;
      }

      _Block_object_dispose(&v37, 8);
      _Block_object_dispose(&v41, 8);
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    v27 = 0;
  }

  v28 = *MEMORY[0x277D85DE8];
  return v27;
}

+ (BOOL)insertValues:(id)a3 series:(id)a4 profile:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [[HDInsertValuesToQuantitySampleSeriesOperation alloc] initWithSeries:v10 values:v9];
  LOBYTE(a6) = [(HDJournalableOperation *)v12 performOrJournalWithProfile:v11 error:a6];

  return a6;
}

+ (id)objectInsertionFilterForProfile:(id)a3
{
  v4 = a3;
  v11.receiver = a1;
  v11.super_class = &OBJC_METACLASS___HDQuantitySampleSeriesEntity;
  v5 = objc_msgSendSuper2(&v11, sel_objectInsertionFilterForProfile_, v4);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __64__HDQuantitySampleSeriesEntity_objectInsertionFilterForProfile___block_invoke;
  aBlock[3] = &unk_27861FFB8;
  v10 = v5;
  v6 = v5;
  v7 = _Block_copy(aBlock);

  return v7;
}

uint64_t __64__HDQuantitySampleSeriesEntity_objectInsertionFilterForProfile___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    if ([v4 _frozen])
    {
      v5 = (*(*(a1 + 32) + 16))();
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)insertValues:(id)a3 transaction:(id)a4 error:(id *)a5
{
  v9 = a3;
  v10 = a4;
  v11 = v10;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v18 = [MEMORY[0x277CCA890] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"HDQuantitySampleSeriesEntity.mm" lineNumber:349 description:{@"Invalid parameter not satisfying: %@", @"values != nil"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  v19 = [MEMORY[0x277CCA890] currentHandler];
  [v19 handleFailureInMethod:a2 object:self file:@"HDQuantitySampleSeriesEntity.mm" lineNumber:350 description:{@"Invalid parameter not satisfying: %@", @"transaction != nil"}];

LABEL_3:
  v12 = [v11 protectedDatabase];
  v20 = 0;
  v13 = [(HDQuantitySampleSeriesEntity *)self _isFrozenInDatabase:v12 error:&v20];
  v14 = v20;

  if (v13 == 2)
  {
    v15 = [v11 protectedDatabase];
    v16 = [(HDQuantitySampleSeriesEntity *)self _insertValues:v9 database:v15 error:a5];
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a5 code:3 description:@"Unable to add data to a frozen series." underlyingError:v14];
    v16 = 0;
  }

  return v16;
}

- (uint64_t)_isFrozenInDatabase:(uint64_t)a3 error:
{
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    v11[4] = &v13;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __58__HDQuantitySampleSeriesEntity__isFrozenInDatabase_error___block_invoke;
    v12[3] = &unk_278615580;
    v12[4] = a1;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __58__HDQuantitySampleSeriesEntity__isFrozenInDatabase_error___block_invoke_2;
    v11[3] = &unk_278615530;
    v7 = [v5 executeSQL:@"SELECT insertion_era FROM quantity_sample_series WHERE data_id = ?" error:a3 bindingHandler:v12 enumerationHandler:v11];
    v8 = 1;
    if (!*(v14 + 24))
    {
      v8 = 2;
    }

    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t __58__HDQuantitySampleSeriesEntity__isFrozenInDatabase_error___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = [*(a1 + 32) persistentID];

  return sqlite3_bind_int64(a2, 1, v3);
}

uint64_t __58__HDQuantitySampleSeriesEntity__isFrozenInDatabase_error___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x22AAC6CD0](a2, 0))
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return 0;
}

- (id)HFDKeyWithDatabase:(id)a3 error:(id *)a4
{
  v17[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v17[0] = @"hfd_key";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __57__HDQuantitySampleSeriesEntity_HFDKeyWithDatabase_error___block_invoke;
  v12[3] = &unk_278620008;
  v12[4] = &v13;
  v8 = [(HDSQLiteEntity *)self getValuesForProperties:v7 database:v6 error:a4 handler:v12];

  if (v8)
  {
    if (v14[3])
    {
      v9 = [MEMORY[0x277CCABB0] numberWithLongLong:?];
      goto LABEL_6;
    }

    [MEMORY[0x277CCA9B8] hk_assignError:a4 code:100 format:{@"Unable to get %@ for %@ with persistentID %lld", @"hfd_key", objc_opt_class(), -[HDSQLiteEntity persistentID](self, "persistentID")}];
  }

  v9 = 0;
LABEL_6:
  _Block_object_dispose(&v13, 8);

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

uint64_t __57__HDQuantitySampleSeriesEntity_HFDKeyWithDatabase_error___block_invoke(uint64_t a1)
{
  result = HDSQLiteColumnAsInt64();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (uint64_t)_setHFDKey:(void *)a3 database:(uint64_t)a4 error:
{
  v13[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v13[0] = @"hfd_key";
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __58__HDQuantitySampleSeriesEntity__setHFDKey_database_error___block_invoke;
  v12[3] = &__block_descriptor_40_e34_v16__0__HDSQLiteStatementBinder__8l;
  v12[4] = a2;
  v9 = [a1 updateProperties:v8 database:v7 error:a4 bindingHandler:v12];

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t __61__HDQuantitySampleSeriesEntity__insertValues_database_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x22AAC6C40](a3, 0);
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  result = HDSQLiteColumnAsInt64();
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

+ (BOOL)primitiveInsertValues:(id)a3 seriesVersion:(int64_t)a4 HFDKey:(int64_t)a5 database:(id)a6 error:(id *)a7
{
  v30 = a7;
  v37 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a6;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v13)
  {
    v14 = *v33;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v33 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v32 + 1) + 8 * i);
        [v16 value];
        v18 = v17;
        v19 = -1.0;
        if (a4 == 1 && [v16 hasDuration])
        {
          [v16 duration];
          v19 = v20;
        }

        [v16 timeInterval];
        v31 = 0;
        v22 = [HDQuantitySeriesDataEntity insertOrReplaceEntity:1 database:v11 value:a5 duration:&v31 timestamp:v18 identifier:v19 error:v21];
        v23 = v31;
        if (!v22)
        {
          v25 = v23;
          v26 = v25;
          if (v25)
          {
            if (v30)
            {
              v27 = v25;
              *v30 = v26;
            }

            else
            {
              _HKLogDroppedError();
            }
          }

          v24 = 0;
          goto LABEL_18;
        }
      }

      v13 = [v12 countByEnumeratingWithState:&v32 objects:v36 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v24 = 1;
LABEL_18:

  v28 = *MEMORY[0x277D85DE8];
  return v24;
}

+ (id)freezeSeriesWithIdentifier:(id)a3 metadata:(id)a4 endDate:(id)a5 profile:(id)a6 error:(id *)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [[HDFreezeQuantitySampleSeriesOperation alloc] initWithIdentifier:v11 metadata:v12 endDate:v13];
  if ([(HDJournalableOperation *)v15 performOrJournalWithProfile:v14 error:a7])
  {
    v16 = [HDSeriesFreezeResult alloc];
    v17 = [(HDFreezeQuantitySampleSeriesOperation *)v15 freezeResult];
    v18 = [(HDFreezeQuantitySampleSeriesOperation *)v15 frozenIdentifier];
    v19 = [(HDSeriesFreezeResult *)v16 initWithStatus:v17 frozenIdentifier:v18];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

+ (BOOL)performPostFirstJournalMergeCleanupWithTransaction:(id)a3 profile:(id)a4 error:(id *)a5
{
  v41 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v28 = a4;
  v29 = v7;
  v35 = 0;
  v8 = [a1 quantitySampleSeriesEntitiesForAutoFreezeWithTransaction:v7 error:&v35];
  v9 = v35;
  v26 = v8;
  if (v8)
  {
    _HKInitializeLogging();
    v10 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v8 count];
      *buf = 134217984;
      v37 = v11;
      _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_DEFAULT, "Will freeze %lu quantity sample series for post journal merge", buf, 0xCu);
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = v8;
    v12 = [obj countByEnumeratingWithState:&v31 objects:v40 count:16];
    if (v12)
    {
      v13 = *v32;
      do
      {
        v14 = 0;
        v15 = v9;
        do
        {
          if (*v32 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v31 + 1) + 8 * v14);
          v17 = objc_autoreleasePoolPush();
          v18 = [v29 protectedDatabase];
          v19 = [v16 UUIDForProperty:@"uuid" database:v18];

          v30 = v15;
          v20 = [HDQuantitySampleSeriesEntity freezeSeriesWithIdentifier:v19 metadata:0 endDate:0 profile:v28 error:&v30];
          v9 = v30;

          if (!v20)
          {
            _HKInitializeLogging();
            v21 = *MEMORY[0x277CCC2A0];
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              v22 = [v16 persistentID];
              *buf = 134218242;
              v37 = v22;
              v38 = 2114;
              v39 = v9;
              _os_log_error_impl(&dword_228986000, v21, OS_LOG_TYPE_ERROR, "Failed to freeze quantity sample series %lld during post-journal-merge cleanup: %{public}@", buf, 0x16u);
            }
          }

          objc_autoreleasePoolPop(v17);
          ++v14;
          v15 = v9;
        }

        while (v12 != v14);
        v12 = [obj countByEnumeratingWithState:&v31 objects:v40 count:16];
      }

      while (v12);
    }
  }

  else
  {
    _HKInitializeLogging();
    v23 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v37 = v9;
      _os_log_error_impl(&dword_228986000, v23, OS_LOG_TYPE_ERROR, "Failed to enumerate quantity sample series requiring auto-freeze during post-journal-merge cleanup: %{public}@", buf, 0xCu);
    }
  }

  v24 = *MEMORY[0x277D85DE8];
  return 1;
}

+ (id)quantitySampleSeriesEntitiesForAutoFreezeWithTransaction:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = [a1 quantitySampleSeriesEntitiesForAutoFreezeSQL];
  v9 = +[HDQuantitySampleSeriesEntity _insertionEra];
  v10 = [v6 protectedDatabase];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __95__HDQuantitySampleSeriesEntity_quantitySampleSeriesEntitiesForAutoFreezeWithTransaction_error___block_invoke;
  v16[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
  v16[4] = v9;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __95__HDQuantitySampleSeriesEntity_quantitySampleSeriesEntitiesForAutoFreezeWithTransaction_error___block_invoke_2;
  v14[3] = &unk_2786247F0;
  v11 = v7;
  v15 = v11;
  LOBYTE(a4) = [v10 executeSQL:v8 error:a4 bindingHandler:v16 enumerationHandler:v14];

  if (a4)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

uint64_t __95__HDQuantitySampleSeriesEntity_quantitySampleSeriesEntitiesForAutoFreezeWithTransaction_error___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, *(a1 + 32));
  sqlite3_bind_int64(a2, 2, *(a1 + 32));

  return sqlite3_bind_int64(a2, 3, 1209600);
}

uint64_t __95__HDQuantitySampleSeriesEntity_quantitySampleSeriesEntitiesForAutoFreezeWithTransaction_error___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [(HDSQLiteEntity *)[HDQuantitySampleSeriesEntity alloc] initWithPersistentID:HDSQLiteColumnAsInt64()];
  [v1 addObject:v2];

  return 1;
}

+ (id)quantitySampleSeriesEntitiesForAutoFreezeSQL
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [a1 disambiguatedDatabaseTable];
  v4 = [v2 stringWithFormat:@"SELECT %@ FROM %@ WHERE ((%@ IS NOT NULL) AND (%@ != ?) AND ((%@ > 0) OR (ABS(? + %@) > ?)))", @"data_id", v3, @"insertion_era", @"insertion_era", @"insertion_era", @"insertion_era"];

  return v4;
}

- (id)freezeWithEndDate:(id)a3 transaction:(id)a4 profile:(id)a5 error:(id *)a6
{
  v70 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v11 protectedDatabase];
  v14 = [(HDQuantitySampleSeriesEntity *)self HFDKeyWithDatabase:v13 error:a6];
  if (!v14)
  {
    v23 = 0;
    goto LABEL_32;
  }

  v56 = v13;
  v57 = v14;
  v58 = v11;
  v59 = v10;
  v54 = v12;
  v15 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[HDSQLiteEntity persistentID](self, "persistentID")}];
  v16 = v12;
  v64 = 0;
  v65 = &v64;
  v66 = 0x3032000000;
  v67 = __Block_byref_object_copy__123;
  v68 = __Block_byref_object_dispose__123;
  v69 = 0;
  v17 = [objc_opt_self() entityEnumeratorWithProfile:v16];
  v18 = HDDataEntityPredicateForRowID(v15, 1);
  [v17 setPredicate:v18];

  [v17 setIgnoreEntityClassAdditionalPredicateForEnumeration:1];
  v62 = 0;
  v63[0] = MEMORY[0x277D85DD0];
  v63[1] = 3221225472;
  v63[2] = __82__HDQuantitySampleSeriesEntity__quantitySampleWithID_canBeUnfrozen_profile_error___block_invoke;
  v63[3] = &unk_278624678;
  v63[4] = &v64;
  [v17 enumerateWithError:&v62 handler:v63];
  v19 = v62;
  v20 = v19;
  v21 = *(v65 + 40);
  v60 = v21;
  if (v21)
  {
    v22 = v21;
    goto LABEL_12;
  }

  if (v19)
  {
    v20 = v19;
    goto LABEL_8;
  }

  v20 = [MEMORY[0x277CCA9B8] hk_error:100 format:{@"Could not find series with ID %@", v15}];
  if (v20)
  {
LABEL_8:
    if (a6)
    {
      v24 = v20;
      *a6 = v20;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

LABEL_12:
  _Block_object_dispose(&v64, 8);

  v25 = [v60 UUID];
  v55 = [v25 copy];

  v26 = [v57 longLongValue];
  v27 = [v57 longLongValue];
  v61 = v60;
  v28 = v59;
  v29 = v11;
  v30 = v16;
  v53 = v26;
  if (self)
  {
    v31 = [(HDQuantitySampleSeriesEntity *)self _dataOriginProvenanceWithTransaction:v29 profile:v30 error:a6];
    if (v31)
    {
      v32 = [(HDQuantitySampleSeriesEntity *)self _updatedSampleForQuantitySeriesSample:v61 HFDKey:v27 endDate:v28 transaction:v29 error:a6];
      v33 = v32;
      if (!v32)
      {
        goto LABEL_17;
      }

      [v32 _setFreezing];
      v34 = [v30 dataManager];
      v64 = v33;
      v35 = [MEMORY[0x277CBEA60] arrayWithObjects:&v64 count:1];
      v36 = [v34 insertDataObjects:v35 withProvenance:v31 creationDate:a6 error:CFAbsoluteTimeGetCurrent()];

      if (v36)
      {
        v37 = [v33 UUID];
      }

      else
      {
LABEL_17:
        v37 = 0;
      }
    }

    else
    {
      v37 = 0;
    }
  }

  else
  {
    v37 = 0;
  }

  if (v37)
  {
    v38 = HDDataEntityPredicateForDataUUID();
    v39 = [(HDDataEntity *)HDQuantitySampleSeriesEntity anyInDatabase:v56 predicate:v38 error:a6];

    if (v39)
    {
      v40 = objc_opt_class();
      v41 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[HDSQLiteEntity persistentID](self, "persistentID")}];
      v42 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v39, "persistentID")}];
      v43 = [v40 replaceObjectID:v41 replacementObjectID:v42 deleteOriginalSeriesData:0 profile:v30 transaction:v29 error:a6];

      if (v43)
      {
        v44 = v39;
        v45 = v55;
        v46 = v56;
        objc_opt_self();
        v63[0] = @"uuid";
        v47 = [MEMORY[0x277CBEA60] arrayWithObjects:v63 count:1];
        v64 = MEMORY[0x277D85DD0];
        v65 = 3221225472;
        v66 = __136__HDQuantitySampleSeriesEntity__updateFrozenEntityToMatchReplacedUnfrozenEntity_unfrozenSeriesUUID_unfrozenSeriesHFDKey_database_error___block_invoke;
        v67 = &unk_2786246A0;
        v48 = v45;
        v68 = v48;
        v49 = [v44 updateProperties:v47 database:v46 error:a6 bindingHandler:&v64];

        if (v49)
        {
          v50 = [(HDQuantitySampleSeriesEntity *)v44 _setHFDKey:v53 database:v46 error:a6];

          if (v50)
          {
            v23 = v44;
LABEL_30:

            goto LABEL_31;
          }
        }

        else
        {
        }
      }
    }

    v23 = 0;
    goto LABEL_30;
  }

  v23 = 0;
LABEL_31:

  v11 = v58;
  v10 = v59;
  v12 = v54;
  v13 = v56;
  v14 = v57;
LABEL_32:

  v51 = *MEMORY[0x277D85DE8];

  return v23;
}

- (id)_dataOriginProvenanceWithTransaction:(void *)a3 profile:(uint64_t)a4 error:
{
  v7 = a2;
  v8 = a3;
  v9 = [v7 protectedDatabase];
  v10 = [a1 valueForProperty:@"provenance" database:v9];

  if (v10)
  {
    v11 = [v8 dataProvenanceManager];
    v12 = [v11 originProvenanceForPersistentID:v10 transaction:v7 error:a4];

    if (v12)
    {
      v13 = v12;
    }
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a4 code:100 format:{@"Unable to get %@ for %@ with persistentID %lld", @"provenance", objc_opt_class(), objc_msgSend(a1, "persistentID")}];
    v12 = 0;
  }

  return v12;
}

- (id)_updatedSampleForQuantitySeriesSample:(uint64_t)a3 HFDKey:(void *)a4 endDate:(void *)a5 transaction:(uint64_t)a6 error:
{
  v11 = a2;
  v12 = a4;
  v13 = a5;
  v86 = 0;
  v87 = &v86;
  v88 = 0x2020000000;
  v89 = 0;
  v82 = 0;
  v83 = &v82;
  v84 = 0x2020000000;
  v85 = 0;
  v78 = 0;
  v79 = &v78;
  v80 = 0x2020000000;
  v81 = 0;
  v77[0] = MEMORY[0x277D85DD0];
  v77[1] = 3221225472;
  v77[2] = __103__HDQuantitySampleSeriesEntity__updatedSampleForQuantitySeriesSample_HFDKey_endDate_transaction_error___block_invoke;
  v77[3] = &unk_278624628;
  v77[4] = &v86;
  v77[5] = &v82;
  v77[6] = &v78;
  if (![(HDQuantitySampleSeriesEntity *)a1 _getFirstTimeEndTimeCountWithTransaction:v13 HFDKey:a3 error:a6 handler:v77])
  {
    goto LABEL_8;
  }

  v14 = v87[3];
  [v11 _startTimestamp];
  if (v14 < v15)
  {
    v16 = MEMORY[0x277CCA9B8];
    v17 = *(v87 + 3);
    [v11 _startTimestamp];
    v19 = @"Cannot freeze series %@ because the first quantity time (%f) is before the sample start time (%f)";
    v20 = 100;
LABEL_7:
    [v16 hk_assignError:a6 code:v20 format:{v19, v11, v17, v18}];
LABEL_8:
    v23 = 0;
    goto LABEL_9;
  }

  if (!v12)
  {
    v25 = v83;
    v26 = *(v83 + 3);
    goto LABEL_23;
  }

  [v12 timeIntervalSinceReferenceDate];
  [v12 timeIntervalSinceReferenceDate];
  if (v21 < v83[3])
  {
    v16 = MEMORY[0x277CCA9B8];
    [v12 timeIntervalSinceReferenceDate];
    v17 = v22;
    v18 = *(v83 + 3);
    v19 = @"Cannot freeze series %@ because the specifed sample endTime (%f) is before the last quantity end time (%f)";
    v20 = 3;
    goto LABEL_7;
  }

  v27 = [v11 quantityType];
  if (([v27 isMaximumDurationRestricted] & 1) == 0)
  {

    goto LABEL_17;
  }

  [v12 timeIntervalSinceReferenceDate];
  v29 = v28;
  [v11 _startTimestamp];
  v31 = v30;
  v32 = [v11 quantityType];
  [v32 maximumAllowedDuration];
  v34 = v33;

  if (v29 - v31 <= v34)
  {
LABEL_17:
    v38 = [v11 quantityType];
    if ([v38 isMinimumDurationRestricted])
    {
      [v12 timeIntervalSinceReferenceDate];
      v40 = v39;
      [v11 _startTimestamp];
      v42 = v41;
      v43 = [v11 quantityType];
      [v43 minimumAllowedDuration];
      v45 = v44;

      if (v40 - v42 < v45)
      {
        v46 = MEMORY[0x277CCA9B8];
        v36 = [v11 startDate];
        v37 = [v11 quantityType];
        [v46 hk_assignError:a6 code:3 format:{@"Cannot freeze series %@ because the duration between the series start date (%@) and specified endDate (%@) falls below the minimum allowed duration for sample type (%@)", v11, v36, v12, v37}];
        goto LABEL_20;
      }
    }

    else
    {
    }

    [v12 timeIntervalSinceReferenceDate];
    v25 = v83;
LABEL_23:
    *(v25 + 3) = v26;
    v47 = [v11 copy];
    v37 = [MEMORY[0x277CCAD78] UUID];
    [v47 _setUUID:v37];
    [v47 _setEndTimestamp:v83[3]];
    [v47 _setCount:v79[3]];
    if (v79[3] < 1)
    {
LABEL_52:
      v36 = v47;
      v23 = v36;
      goto LABEL_53;
    }

    v36 = v47;
    v74 = v13;
    v75 = v37;
    objc_opt_self();
    v48 = [v36 quantityType];
    v49 = [v48 aggregationStyle];

    if (v49 >= 4)
    {
      v50 = 0;
    }

    else
    {
      v50 = qword_22916DD88[v49];
    }

    v51 = [v36 quantityType];
    v52 = [HDStatisticsCollectionCalculator calculatorForQuantityType:v51 intervalCollection:0 options:v50 mergeStrategy:1];

    v53 = v52;
    v54 = v74;
    objc_opt_self();
    v90[0] = MEMORY[0x277D85DD0];
    v90[1] = 3221225472;
    v90[2] = __93__HDQuantitySampleSeriesEntity__statisticsWithHFDKey_statisticsCalculator_transaction_error___block_invoke;
    v90[3] = &unk_278624840;
    v93 = a3;
    v76 = v54;
    v91 = v76;
    v55 = v53;
    v92 = v55;
    if ([v55 performInitialStatisticsTransaction:v90 error:a6])
    {
      v56 = [v55 currentStatistics];
      v57 = v56;
      if (v56)
      {
        v58 = v56;
      }

      else
      {
        [MEMORY[0x277CCA9B8] hk_assignError:a6 code:100 format:{@"No statistics for quantity sample series with HFDKey (%lld)", a3}];
      }
    }

    else
    {
      v57 = 0;
    }

    if (!v57)
    {

      v23 = 0;
      v37 = v75;
      goto LABEL_53;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v59 = v57;
      v60 = v36;
      objc_opt_self();
      v61 = [v59 averageQuantity];

      if (v61)
      {
        v62 = [v59 averageQuantity];
        [v60 _setAverageQuantity:v62];
      }

      v63 = [v59 minimumQuantity];

      if (v63)
      {
        v64 = [v59 minimumQuantity];
        [v60 _setMinimumQuantity:v64];
      }

      v65 = [v59 maximumQuantity];

      if (v65)
      {
        v66 = [v59 maximumQuantity];
        [v60 _setMaximumQuantity:v66];
      }

      v67 = [v59 mostRecentQuantity];

      if (v67)
      {
        v68 = [v59 mostRecentQuantity];
        [v60 _setMostRecentQuantity:v68];
      }

      v69 = [v59 mostRecentQuantityDateInterval];

      if (!v69)
      {
        goto LABEL_50;
      }

      v70 = [v59 mostRecentQuantityDateInterval];
      [v60 _setMostRecentQuantityDateInterval:v70];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
LABEL_51:

        v37 = v75;
        goto LABEL_52;
      }

      v71 = v57;
      v72 = v36;
      objc_opt_self();
      v73 = [v71 sumQuantity];

      if (!v73)
      {
LABEL_50:

        goto LABEL_51;
      }

      v70 = [v71 sumQuantity];
      [v72 _setSumQuantity:v70];
    }

    goto LABEL_50;
  }

  v35 = MEMORY[0x277CCA9B8];
  v36 = [v11 startDate];
  v37 = [v11 quantityType];
  [v35 hk_assignError:a6 code:3 format:{@"Cannot freeze series %@ because the series start date (%@) and specified endDate (%@) exceed the maximum allowed duration for sample type (%@)", v11, v36, v12, v37}];
LABEL_20:
  v23 = 0;
LABEL_53:

LABEL_9:
  _Block_object_dispose(&v78, 8);
  _Block_object_dispose(&v82, 8);
  _Block_object_dispose(&v86, 8);

  return v23;
}

+ (BOOL)replaceExistingObject:(id)a3 existingObjectID:(id)a4 replacementObject:(id)a5 replacementObjectID:(id)a6 profile:(id)a7 transaction:(id)a8 error:(id *)a9
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v27 = [MEMORY[0x277CCA890] currentHandler];
    [v27 handleFailureInMethod:a2 object:a1 file:@"HDQuantitySampleSeriesEntity.mm" lineNumber:746 description:{@"Invalid parameter not satisfying: %@", @"[existingObject isKindOfClass:[HKQuantitySample class]]"}];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v28 = [MEMORY[0x277CCA890] currentHandler];
    [v28 handleFailureInMethod:a2 object:a1 file:@"HDQuantitySampleSeriesEntity.mm" lineNumber:747 description:{@"Invalid parameter not satisfying: %@", @"[replacementObject isKindOfClass:[HKQuantitySample class]]"}];
  }

  v22 = v16;
  v23 = v18;
  if (([v22 _frozen] & 1) != 0 || !objc_msgSend(v23, "_frozen"))
  {
    v29.receiver = a1;
    v29.super_class = &OBJC_METACLASS___HDQuantitySampleSeriesEntity;
    v24 = objc_msgSendSuper2(&v29, sel_replaceExistingObject_existingObjectID_replacementObject_replacementObjectID_profile_transaction_error_, v22, v17, v23, v19, v20, v21, a9);
  }

  else
  {
    v24 = [a1 replaceObjectID:v17 replacementObjectID:v19 deleteOriginalSeriesData:0 profile:v20 transaction:v21 error:a9];
  }

  v25 = v24;

  return v25;
}

void *__103__HDQuantitySampleSeriesEntity__updatedSampleForQuantitySeriesSample_HFDKey_endDate_transaction_error___block_invoke(void *result, uint64_t a2, double a3, double a4)
{
  *(*(result[4] + 8) + 24) = a3;
  *(*(result[5] + 8) + 24) = a4;
  *(*(result[6] + 8) + 24) = a2;
  return result;
}

- (BOOL)_getFirstTimeEndTimeCountWithTransaction:(uint64_t)a3 HFDKey:(uint64_t)a4 error:(void *)a5 handler:
{
  v9 = a2;
  v10 = a5;
  v11 = v10;
  if (a1)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __94__HDQuantitySampleSeriesEntity__getFirstTimeEndTimeCountWithTransaction_HFDKey_error_handler___block_invoke;
    v14[3] = &unk_2786248E0;
    v15 = v10;
    v12 = [HDQuantitySeriesDataEntity getRangeAndCountForSeriesIdentifier:a3 transaction:v9 error:a4 handler:v14];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

BOOL __93__HDQuantitySampleSeriesEntity__statisticsWithHFDKey_statisticsCalculator_transaction_error___block_invoke(uint64_t a1, void *a2)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__123;
  v18 = __Block_byref_object_dispose__123;
  v19 = 0;
  v3 = *(a1 + 32);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __93__HDQuantitySampleSeriesEntity__statisticsWithHFDKey_statisticsCalculator_transaction_error___block_invoke_2;
  v11[3] = &unk_278624818;
  v4 = *(a1 + 48);
  v12 = *(a1 + 40);
  v13 = &v14;
  v5 = [HDQuantitySeriesDataEntity enumerateSeries:v4 transaction:v3 error:a2 handler:v11];
  if (!v5)
  {
    v6 = v15[5];
    if (v6)
    {
      v7 = v6;
      v8 = v7;
      if (a2)
      {
        v9 = v7;
        *a2 = v8;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  _Block_object_dispose(&v14, 8);
  return v5;
}

uint64_t __93__HDQuantitySampleSeriesEntity__statisticsWithHFDKey_statisticsCalculator_transaction_error___block_invoke_2(uint64_t a1, double a2, double a3, double a4)
{
  v5 = a2 + a4;
  if (a4 == -1.0)
  {
    v6 = a2;
  }

  else
  {
    v6 = v5;
  }

  v7 = *(a1 + 32);
  v8 = *(*(a1 + 40) + 8);
  obj = *(v8 + 40);
  v9 = [v7 addSampleValue:0 startTime:&obj endTime:a3 sourceID:a2 error:v6];
  objc_storeStrong((v8 + 40), obj);
  return v9;
}

+ (BOOL)enumerateDataWithIdentifier:(id)a3 profile:(id)a4 error:(id *)a5 handler:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = [a4 database];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __82__HDQuantitySampleSeriesEntity_enumerateDataWithIdentifier_profile_error_handler___block_invoke;
  v16[3] = &unk_2786246F0;
  v19 = a1;
  v13 = v10;
  v17 = v13;
  v14 = v11;
  v18 = v14;
  LOBYTE(a5) = [(HDHealthEntity *)HDQuantitySampleSeriesEntity performReadTransactionWithHealthDatabase:v12 error:a5 block:v16];

  return a5;
}

+ (BOOL)enumerateDataWithIdentifier:(id)a3 transaction:(id)a4 error:(id *)a5 handler:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [v10 protectedDatabase];
  v13 = HDDataEntityPredicateForDataUUID();
  v19 = 0;
  v14 = [(HDDataEntity *)HDQuantitySampleSeriesEntity anyInDatabase:v12 predicate:v13 error:&v19];
  v15 = v19;

  if (!v14)
  {
    if (v15)
    {
      v15 = v15;
    }

    else
    {
      v15 = [MEMORY[0x277CCA9B8] hk_error:100 format:{@"Could not find frozen series with ID %@", v9}];
      if (!v15)
      {
LABEL_9:

        v16 = 0;
        goto LABEL_10;
      }
    }

    if (a5)
    {
      v17 = v15;
      *a5 = v15;
    }

    else
    {
      _HKLogDroppedError();
    }

    goto LABEL_9;
  }

  v16 = [v14 enumerateDataWithTransaction:v10 error:a5 handler:v11];
LABEL_10:

  return v16;
}

+ (id)entityEncoderForProfile:(id)a3 transaction:(id)a4 purpose:(int64_t)a5 encodingOptions:(id)a6 authorizationFilter:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = a7;
  v15 = [(HDEntityEncoder *)[_HDQuantitySampleSeriesEntityEncoder alloc] initWithHealthEntityClass:objc_opt_class() profile:v11 transaction:v12 purpose:a5 encodingOptions:v13 authorizationFilter:v14];

  return v15;
}

+ (id)hasSeriesDataForHFDKey:(int64_t)a3 transaction:(id)a4 error:(id *)a5
{
  v7 = a4;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __73__HDQuantitySampleSeriesEntity_hasSeriesDataForHFDKey_transaction_error___block_invoke;
  v10[3] = &unk_278624868;
  v10[4] = &v11;
  if ([HDQuantitySeriesDataEntity enumerateSeries:a3 transaction:v7 error:a5 handler:v10])
  {
    v8 = [MEMORY[0x277CCABB0] numberWithBool:*(v12 + 24)];
  }

  else
  {
    v8 = 0;
  }

  _Block_object_dispose(&v11, 8);

  return v8;
}

- (id)hasSeriesDataWithTransaction:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 protectedDatabase];
  v8 = [(HDQuantitySampleSeriesEntity *)self HFDKeyWithDatabase:v7 error:a4];

  if (v8)
  {
    v9 = [objc_opt_class() hasSeriesDataForHFDKey:objc_msgSend(v8 transaction:"longLongValue") error:{v6, a4}];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)countForSeriesWithTransaction:(id)a3 error:(id *)a4
{
  v6 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__123;
  v20 = __Block_byref_object_dispose__123;
  v21 = 0;
  v14[4] = &v16;
  v15 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __68__HDQuantitySampleSeriesEntity_countForSeriesWithTransaction_error___block_invoke;
  v14[3] = &unk_278624560;
  LODWORD(self) = [(HDQuantitySampleSeriesEntity *)self startTimeEndTimeCountForSeriesWithTransaction:v6 error:&v15 handler:v14];
  v7 = v15;
  v8 = v7;
  if (self)
  {
    v9 = v17[5];
  }

  else if ([v7 hk_isHealthKitErrorWithCode:1100])
  {
    v9 = &unk_283CB3C00;
  }

  else
  {
    v10 = v8;
    v11 = v10;
    if (v10)
    {
      if (a4)
      {
        v12 = v10;
        *a4 = v11;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v9 = 0;
  }

  _Block_object_dispose(&v16, 8);

  return v9;
}

uint64_t __68__HDQuantitySampleSeriesEntity_countForSeriesWithTransaction_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CCABB0] numberWithLongLong:a2];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8](v3, v5);
}

- (BOOL)startTimeEndTimeCountForSeriesWithTransaction:(id)a3 error:(id *)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [v8 protectedDatabase];
  v11 = [(HDQuantitySampleSeriesEntity *)self HFDKeyWithDatabase:v10 error:a4];

  if (v11)
  {
    v12 = [v8 protectedDatabase];
    v13 = [(HDSQLiteEntity *)self dateForProperty:@"start_date" database:v12];

    if (v13)
    {
      v14 = [v11 longLongValue];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __92__HDQuantitySampleSeriesEntity_startTimeEndTimeCountForSeriesWithTransaction_error_handler___block_invoke;
      v17[3] = &unk_278624890;
      v19 = v9;
      v18 = v13;
      v15 = [(HDQuantitySampleSeriesEntity *)self _getFirstTimeEndTimeCountWithTransaction:v8 HFDKey:v14 error:a4 handler:v17];
    }

    else
    {
      [MEMORY[0x277CCA9B8] hk_assignError:a4 code:100 format:{@"Unable to get %@ for %@ with persistentID %lld", @"start_date", objc_opt_class(), -[HDSQLiteEntity persistentID](self, "persistentID")}];
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

uint64_t __92__HDQuantitySampleSeriesEntity_startTimeEndTimeCountForSeriesWithTransaction_error_handler___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  [*(a1 + 32) timeIntervalSinceReferenceDate];
  v4 = *(v3 + 16);

  return v4(v3, a2);
}

- (BOOL)enumerateDataWithTransaction:(id)a3 error:(id *)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [v8 protectedDatabase];
  v11 = [(HDQuantitySampleSeriesEntity *)self HFDKeyWithDatabase:v10 error:a4];

  if (v11)
  {
    v12 = [objc_opt_class() enumerateDataWithTransaction:v8 HFDKey:objc_msgSend(v11 error:"longLongValue") handler:{a4, v9}];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (BOOL)enumerateDataWithTransaction:(id)a3 HFDKey:(int64_t)a4 error:(id *)a5 handler:(id)a6
{
  v10 = a6;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __82__HDQuantitySampleSeriesEntity_enumerateDataWithTransaction_HFDKey_error_handler___block_invoke;
  v13[3] = &unk_27861A0B8;
  v14 = v10;
  v11 = v10;
  LOBYTE(a5) = [a1 enumerateRawDataWithTransaction:a3 HFDKey:a4 error:a5 handler:v13];

  return a5;
}

uint64_t __82__HDQuantitySampleSeriesEntity_enumerateDataWithTransaction_HFDKey_error_handler___block_invoke(uint64_t a1, double a2, double a3, float a4)
{
  v4 = *(a1 + 32);
  if (a4 == -1.0)
  {
    [MEMORY[0x277CCD180] datumWithValue:a3 timeInterval:a2];
  }

  else
  {
    [MEMORY[0x277CCD180] datumWithTimestamp:a2 value:? duration:?];
  }
  v5 = ;
  v6 = (*(v4 + 16))(v4, v5);

  return v6;
}

+ (BOOL)enumerateRawDataWithTransaction:(id)a3 HFDKey:(int64_t)a4 error:(id *)a5 handler:(id)a6
{
  v9 = a6;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __85__HDQuantitySampleSeriesEntity_enumerateRawDataWithTransaction_HFDKey_error_handler___block_invoke;
  v12[3] = &unk_2786248B8;
  v13 = v9;
  v10 = v9;
  LOBYTE(a5) = [HDQuantitySeriesDataEntity enumerateSeries:a4 transaction:a3 error:a5 handler:v12];

  return a5;
}

- (BOOL)deleteFromDatabase:(id)a3 error:(id *)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = v6;
  if (!self)
  {

    goto LABEL_5;
  }

  if (![(HDSQLiteEntity *)self existsInDatabase:v6])
  {

    goto LABEL_10;
  }

  v17 = 0;
  v8 = [(HDQuantitySampleSeriesEntity *)self HFDKeyWithDatabase:v7 error:&v17];
  v9 = v17;
  if (!v8)
  {
    _HKInitializeLogging();
    v12 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v15 = [(HDSQLiteEntity *)self persistentID];
      *buf = 134218242;
      v19 = v15;
      v20 = 2114;
      v21 = v9;
      _os_log_error_impl(&dword_228986000, v12, OS_LOG_TYPE_ERROR, "Failed to find HFD Key when deleting object with persistent id %lld: %{public}@", buf, 0x16u);
    }

    goto LABEL_10;
  }

  v10 = +[HDQuantitySeriesDataEntity deleteSeriesDataWithIdentifier:database:error:](HDQuantitySeriesDataEntity, "deleteSeriesDataWithIdentifier:database:error:", [v8 longLongValue], v7, a4);

  if (v10)
  {
LABEL_10:
    v16.receiver = self;
    v16.super_class = HDQuantitySampleSeriesEntity;
    v11 = [(HDSQLiteEntity *)&v16 deleteFromDatabase:v7 error:a4];
    goto LABEL_11;
  }

LABEL_5:
  v11 = 0;
LABEL_11:

  v13 = *MEMORY[0x277D85DE8];
  return v11;
}

+ (BOOL)primitiveRemoveDatums:(id)a3 HFDKey:(int64_t)a4 transaction:(id)a5 error:(id *)a6
{
  v9 = a5;
  v10 = [a3 hk_map:&__block_literal_global_467];
  v11 = [v9 protectedDatabase];
  LOBYTE(a6) = [HDQuantitySeriesDataEntity deleteSeriesDataWithIdentifier:a4 timestamps:v10 database:v11 error:a6];

  return a6;
}

id __79__HDQuantitySampleSeriesEntity_primitiveRemoveDatums_HFDKey_transaction_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 startDate];

  return v2;
}

+ (id)mergeDataObject:(id)a3 provenance:(id)a4 profile:(id)a5 transaction:(id)a6 error:(id *)a7 insertHandler:(id)a8
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v33 = 0;
    goto LABEL_43;
  }

  v15 = [v14 databaseForEntityClass:a1];
  v16 = [a1 dataEntityForObject:v12 transaction:v14 error:a7];
  if (v16)
  {
    v17 = v15;
    v18 = [v16 existsInDatabase:v17];

    if (v18)
    {
      v19 = v12;
      v53 = v13;
      v50 = v17;
      v52 = [v19 codableQuantitySample];
      v56 = 0;
      v54 = v50;
      v20 = [(HDQuantitySampleSeriesEntity *)v16 _isFrozenInDatabase:v54 error:&v56];
      v21 = v56;
      v22 = v21;
      if (v20)
      {
        if (v20 == 2)
        {

          goto LABEL_7;
        }

        v36 = v54;
        v51 = v19;
        v38 = [v16 HFDKeyWithDatabase:v36 error:a7];
        v39 = v38;
        if (v38)
        {
          v40 = +[HDQuantitySampleSeriesEntity _hasSeriesDataWithDatabase:hfdKey:error:](HDQuantitySampleSeriesEntity, "_hasSeriesDataWithDatabase:hfdKey:error:", v36, [v38 longLongValue], a7);

          if (v40)
          {
            if (v40 != 2)
            {
              v19 = v51;
              _HKInitializeLogging();
              v43 = *MEMORY[0x277CCC2A0];
              if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_228986000, v43, OS_LOG_TYPE_INFO, "Cannot merge series data with frozen & final series", buf, 2u);
              }

              v23 = v52;
              v44 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v16, "persistentID")}];
              goto LABEL_35;
            }

            v19 = v51;
            v41 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v16, "persistentID")}];
            v49 = [HDQuantitySampleSeriesEntity _deleteHFDSeriesIfFoundForPersistentID:v41 database:v36 error:a7];

            if (!v49)
            {
              v33 = 0;
LABEL_39:
              v23 = v52;
              goto LABEL_40;
            }

LABEL_7:
            v23 = v52;
            v24 = [v52 quantitySeriesDatas];

            if (v24)
            {
              v25 = [v52 quantitySeriesDatas];
              v26 = [v25 hk_map:&__block_literal_global_469];

              LODWORD(v25) = [(HDQuantitySampleSeriesEntity *)v16 _insertValues:v26 database:v54 error:a7];
              if (!v25)
              {
                v33 = 0;
LABEL_40:
                v42 = v54;
                goto LABEL_41;
              }
            }

            if (![v52 hasFinal] || objc_msgSend(v52, "final"))
            {
              v27 = objc_opt_class();
              v28 = [v19 UUID];
              v56 = 0;
              v29 = [v27 freezeSeriesWithIdentifier:v28 metadata:0 endDate:0 profile:v53 error:&v56];
              v48 = v56;

              if ([v29 status] == 1 && (objc_msgSend(v29, "frozenIdentifier"), v30 = objc_claimAutoreleasedReturnValue(), v30, v30))
              {
                v46 = [v29 frozenIdentifier];
                v31 = HDDataEntityPredicateForDataUUID();
                *buf = 0;
                v47 = [(HDDataEntity *)HDQuantitySampleSeriesEntity anyInDatabase:v54 predicate:v31 error:buf];
                v32 = *buf;

                if (v47)
                {
                  v33 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v47, "persistentID")}];
                }

                else
                {
                  [MEMORY[0x277CCA9B8] hk_assignError:a7 code:100 description:@"Failed to lookup frozen series entity during merge operation." underlyingError:v32];
                  v33 = 0;
                }
              }

              else
              {
                [MEMORY[0x277CCA9B8] hk_assignError:a7 code:100 description:@"Failed to insert frozen series during merge operation." underlyingError:v48];
                v33 = 0;
              }

              goto LABEL_39;
            }

            v44 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v16, "persistentID")}];
LABEL_35:
            v33 = v44;
            goto LABEL_40;
          }

LABEL_30:

          v42 = v54;
          v33 = 0;
          v19 = v51;
          v23 = v52;
LABEL_41:

          goto LABEL_42;
        }
      }

      else
      {
        v35 = v21;
        v36 = v35;
        v51 = v19;
        if (v35)
        {
          if (a7)
          {
            v37 = v35;
            *a7 = v36;
          }

          else
          {
            _HKLogDroppedError();
          }
        }
      }

      goto LABEL_30;
    }

    v34 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v16, "persistentID")}];
    v33 = [(HDQuantitySampleSeriesEntity *)a1 _insertDataObject:v12 inDatabase:v17 persistentID:v34 error:a7];
  }

  else
  {
    v33 = 0;
  }

LABEL_42:

LABEL_43:

  return v33;
}

id __103__HDQuantitySampleSeriesEntity__mergeCodableSeriesDataFromQuantitySampleSeries_profile_database_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 hasStartDate])
  {
    [v2 startDate];
  }

  else
  {
    [v2 endDate];
  }

  v4 = v3;
  v5 = -1.0;
  if ([v2 hasStartDate])
  {
    [v2 endDate];
    v7 = v6;
    [v2 startDate];
    v5 = v7 - v8;
  }

  v9 = MEMORY[0x277CCD180];
  [v2 value];
  *&v10 = v5;
  v12 = [v9 datumWithTimestamp:v4 value:v11 duration:v10];

  return v12;
}

+ (int64_t)_hasSeriesDataWithDatabase:(id)a3 hfdKey:(unint64_t)a4 error:(id *)a5
{
  v7 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v8 = [HDQuantitySeriesDataEntity predicateForSeriesIdentifier:a4];
  v16[4] = &v18;
  v17 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __72__HDQuantitySampleSeriesEntity__hasSeriesDataWithDatabase_hfdKey_error___block_invoke;
  v16[3] = &unk_278624868;
  v9 = [HDQuantitySeriesDataEntity enumerateWithDatabase:v7 predicate:v8 error:&v17 handler:v16];
  v10 = v17;

  if (v9)
  {
    if (*(v19 + 24))
    {
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }
  }

  else
  {
    v12 = v10;
    v13 = v12;
    if (v12)
    {
      if (a5)
      {
        v14 = v12;
        *a5 = v13;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v11 = 0;
  }

  _Block_object_dispose(&v18, 8);
  return v11;
}

+ (id)removeValues:(id)a3 fromQuantitySeriesSample:(id)a4 profile:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__123;
  v30 = __Block_byref_object_dispose__123;
  v31 = 0;
  v13 = [v12 database];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __84__HDQuantitySampleSeriesEntity_removeValues_fromQuantitySeriesSample_profile_error___block_invoke;
  v20[3] = &unk_278624928;
  v24 = &v26;
  v25 = a1;
  v14 = v10;
  v21 = v14;
  v15 = v11;
  v22 = v15;
  v16 = v12;
  v23 = v16;
  LODWORD(a6) = [a1 performWriteTransactionWithHealthDatabase:v13 error:a6 block:v20];

  if (a6)
  {
    v17 = v27[5];
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;

  _Block_object_dispose(&v26, 8);

  return v18;
}

BOOL __84__HDQuantitySampleSeriesEntity_removeValues_fromQuantitySeriesSample_profile_error___block_invoke(void *a1, void *a2, void *a3)
{
  v86[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a1[8];
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  v84 = 0;
  v83 = v7;
  v10 = v8;
  v11 = v5;
  v82 = v9;
  objc_opt_self();
  v12 = [v11 protectedDatabase];
  v13 = [v10 UUID];
  v14 = HDDataEntityPredicateForDataUUID();
  v85 = 0;
  v15 = [(HDDataEntity *)HDQuantitySampleSeriesEntity anyInDatabase:v12 predicate:v14 error:&v85];
  v16 = v85;

  if (!v15)
  {
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v22 = MEMORY[0x277CCA9B8];
      v23 = objc_opt_class();
      v24 = [v10 UUID];
      v25 = [v22 hk_errorForInvalidArgument:@"@" class:v23 selector:sel__removeValues_fromQuantitySeriesSample_transaction_profile_error_ format:{@"No quantity series sample found with UUID %@", v24}];

      v18 = v25;
      if (!v18)
      {
        v16 = 0;
LABEL_18:
        v21 = 0;
        goto LABEL_39;
      }
    }

    v26 = v18;
    v21 = 0;
    v84 = v18;
    v16 = v18;
    goto LABEL_39;
  }

  v17 = [v11 protectedDatabase];
  v18 = [v15 HFDKeyWithDatabase:v17 error:&v84];

  if (!v18 || !+[HDQuantitySampleSeriesEntity primitiveRemoveDatums:HFDKey:transaction:error:](HDQuantitySampleSeriesEntity, "primitiveRemoveDatums:HFDKey:transaction:error:", v83, [v18 longLongValue], v11, &v84))
  {
    goto LABEL_18;
  }

  v19 = [v15 countForSeriesWithTransaction:v11 error:&v84];
  if (v19)
  {
    v81 = v19;
    v20 = [v19 integerValue];
    if (v20 == [v10 count])
    {
      v21 = v10;
LABEL_37:
      v19 = v81;
      goto LABEL_38;
    }

    if (!v20)
    {
      v80 = [v82 dataManager];
      v34 = [v10 UUID];
      v86[0] = v34;
      v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v86 count:1];
      v36 = objc_alloc_init(HDDataDeletionConfiguration);
      [v80 deleteObjectsWithUUIDCollection:v35 configuration:v36 error:&v84];

      v21 = 0;
      goto LABEL_37;
    }

    v64 = [v18 longLongValue];
    v27 = v10;
    v67 = v15;
    v68 = v11;
    v69 = v82;
    v66 = v27;
    objc_opt_self();
    v28 = [v27 UUID];
    v61 = v20;
    v70 = [v28 copy];

    v74 = v66;
    v78 = v67;
    v79 = v68;
    v75 = v69;
    objc_opt_self();
    v29 = [(HDQuantitySampleSeriesEntity *)v78 _dataOriginProvenanceWithTransaction:v79 profile:v75 error:&v84];
    if (v29)
    {
      v71 = v29;
      v30 = [v74 endDate];
      v31 = [(HDQuantitySampleSeriesEntity *)v78 _updatedSampleForQuantitySeriesSample:v74 HFDKey:v64 endDate:v30 transaction:v79 error:&v84];

      if (!v31)
      {
        goto LABEL_20;
      }

      v76 = [v75 dataManager];
      v86[0] = v31;
      v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v86 count:1];
      v33 = [v76 insertDataObjects:v32 withProvenance:v71 creationDate:&v84 error:CFAbsoluteTimeGetCurrent()];

      if (v33)
      {
        v77 = [v31 UUID];
      }

      else
      {
LABEL_20:
        v77 = 0;
      }

      v29 = v71;
    }

    else
    {
      v77 = 0;
    }

    if (!v77)
    {
      v21 = 0;
LABEL_36:

      goto LABEL_37;
    }

    v37 = [v79 protectedDatabase];
    v38 = HDDataEntityPredicateForDataUUID();
    v72 = [(HDDataEntity *)HDQuantitySampleSeriesEntity anyInDatabase:v37 predicate:v38 error:&v84];

    if (!v72)
    {
      goto LABEL_34;
    }

    if (v61 < 2)
    {
      goto LABEL_28;
    }

    v62 = v78;
    v59 = v72;
    v39 = v79;
    v40 = [v39 databaseForEntityClass:objc_opt_self()];
    if (([(HDQuantitySampleSeriesEntity *)v62 _setHFDKey:v40 database:&v84 error:?]& 1) == 0)
    {

      goto LABEL_34;
    }

    v41 = [(HDQuantitySampleSeriesEntity *)v59 _setHFDKey:v64 database:v40 error:&v84];

    if (v41)
    {
LABEL_28:
      v42 = v78;
      v60 = v70;
      v63 = v72;
      v65 = v75;
      v58 = v42;
      objc_opt_self();
      v43 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v42, "persistentID")}];
      v44 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v63, "persistentID")}];
      v45 = [HDAssociationEntity copyAssociationsFromChildID:v43 toObjectID:v44 profile:v65 error:&v84];

      if (v45)
      {
        v46 = [v65 dataManager];
        v86[0] = v60;
        v73 = v46;
        v47 = [MEMORY[0x277CBEA60] arrayWithObjects:v86 count:1];
        v48 = objc_alloc_init(HDDataDeletionConfiguration);
        LOBYTE(v46) = [v46 deleteObjectsWithUUIDCollection:v47 configuration:v48 error:&v84];

        if (v46)
        {
          v21 = [(HDDataEntity *)HDQuantitySampleSeriesEntity objectWithUUID:v77 encodingOptions:0 profile:v65 error:&v84];
LABEL_35:

          goto LABEL_36;
        }
      }

      else
      {
      }
    }

LABEL_34:
    v21 = 0;
    goto LABEL_35;
  }

  v21 = 0;
LABEL_38:

LABEL_39:
  v49 = v84;
  v50 = *(a1[7] + 8);
  v51 = *(v50 + 40);
  *(v50 + 40) = v21;

  v52 = v49;
  v53 = v52;
  if (v52)
  {
    if (a3)
    {
      v54 = v52;
      *a3 = v53;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  if (*(*(a1[7] + 8) + 40))
  {
    v55 = 1;
  }

  else
  {
    v55 = v53 == 0;
  }

  v56 = *MEMORY[0x277D85DE8];
  return v55;
}

+ (BOOL)unitTesting_insertValues:(id)a3 quantitySample:(id)a4 seriesVersion:(int64_t)a5 profile:(id)a6 error:(id *)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a6;
  if (!v13)
  {
    v22 = [MEMORY[0x277CCA890] currentHandler];
    [v22 handleFailureInMethod:a2 object:a1 file:@"HDQuantitySampleSeriesEntity.mm" lineNumber:1690 description:{@"Invalid parameter not satisfying: %@", @"values != nil"}];
  }

  v16 = [v14 UUID];
  v17 = [v15 database];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __100__HDQuantitySampleSeriesEntity_unitTesting_insertValues_quantitySample_seriesVersion_profile_error___block_invoke;
  v23[3] = &unk_278624950;
  v18 = v16;
  v24 = v18;
  v26 = a1;
  v27 = a2;
  v19 = v13;
  v25 = v19;
  v28 = a5;
  v20 = [a1 performWriteTransactionWithHealthDatabase:v17 error:a7 block:v23];

  return v20;
}

BOOL __100__HDQuantitySampleSeriesEntity_unitTesting_insertValues_quantitySample_seriesVersion_profile_error___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [v5 protectedDatabase];
  v7 = a1[4];
  v8 = HDDataEntityPredicateForDataUUID();
  v25 = 0;
  v9 = [(HDDataEntity *)HDQuantitySampleSeriesEntity anyInDatabase:v6 predicate:v8 error:&v25];
  v10 = v25;

  if (v9)
  {
    v11 = [v5 protectedDatabase];
    v24 = 0;
    v12 = [(HDQuantitySampleSeriesEntity *)v9 _isFrozenInDatabase:v11 error:&v24];
    v13 = v24;

    if (v12 == 2)
    {
      v14 = [v5 protectedDatabase];
      v15 = [v9 HFDKeyWithDatabase:v14 error:a3];

      if (v15)
      {
        v16 = a1[5];
        v23 = a1[8];
        v17 = [v15 longLongValue];
        v18 = [v5 protectedDatabase];
        v19 = [HDQuantitySampleSeriesEntity primitiveInsertValues:v16 seriesVersion:v23 HFDKey:v17 database:v18 error:a3];
      }

      else
      {
        v19 = 0;
      }

      goto LABEL_16;
    }

    [MEMORY[0x277CCA9B8] hk_assignError:a3 code:3 description:@"Unable to add data to a frozen series." underlyingError:v13];
LABEL_8:
    v19 = 0;
    goto LABEL_16;
  }

  if (v10)
  {
    v13 = v10;
  }

  else
  {
    v20 = a1[6];
    v13 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a1[7] format:{@"Unable to find quantity series '%@'", a1[4]}];
    if (!v13)
    {
      v10 = 0;
      goto LABEL_8;
    }
  }

  if (a3)
  {
    v21 = v13;
    v19 = 0;
    *a3 = v13;
  }

  else
  {
    _HKLogDroppedError();
    v19 = 0;
  }

  v10 = v13;
LABEL_16:

  return v19;
}

- (BOOL)unitTesting_setInsertionEra:(int64_t)a3 profile:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = objc_opt_class();
  v10 = [v8 database];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __74__HDQuantitySampleSeriesEntity_unitTesting_setInsertionEra_profile_error___block_invoke;
  v12[3] = &unk_278623FA8;
  v12[4] = self;
  v12[5] = a3;
  LOBYTE(a5) = [v9 performWriteTransactionWithHealthDatabase:v10 error:a5 block:v12];

  return a5;
}

uint64_t __74__HDQuantitySampleSeriesEntity_unitTesting_setInsertionEra_profile_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = [a2 protectedDatabase];
  if (v4)
  {
    v12[0] = @"insertion_era";
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __64__HDQuantitySampleSeriesEntity__setInsertionEra_database_error___block_invoke;
    v11[3] = &__block_descriptor_40_e34_v16__0__HDSQLiteStatementBinder__8l;
    v11[4] = v5;
    v8 = [v4 updateProperties:v7 database:v6 error:a3 bindingHandler:v11];
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

@end