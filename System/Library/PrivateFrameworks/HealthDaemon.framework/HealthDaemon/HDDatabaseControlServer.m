@interface HDDatabaseControlServer
+ (id)requiredEntitlements;
- (void)remote_classifiedDeletedSampleInfoWithReferenceDate:(id)a3 anchor:(int64_t)a4 limit:(int64_t)a5 completion:(id)a6;
- (void)remote_classifiedDeletedSampleInfoWithReferenceDate:(id)a3 createdOnOrAfter:(id)a4 createdBefore:(id)a5 limit:(int64_t)a6 completion:(id)a7;
- (void)remote_deletedSampleDetailWithReferenceDate:(id)a3 matchingPredicatesOnly:(BOOL)a4 sampleUUID:(id)a5 completion:(id)a6;
- (void)remote_deletedSampleInfoWithReferenceDate:(id)a3 completion:(id)a4;
- (void)remote_deletedSamplesDetailWithReferenceDate:(id)a3 matchingPredicatesOnly:(BOOL)a4 samplesWithDifferentPruningOutcomesOnly:(BOOL)a5 anchor:(int64_t)a6 limit:(int64_t)a7 completion:(id)a8;
- (void)remote_deletedSamplesDetailWithReferenceDate:(id)a3 matchingPredicatesOnly:(BOOL)a4 samplesWithDifferentPruningOutcomesOnly:(BOOL)a5 createdOnOrAfter:(id)a6 createdBefore:(id)a7 limit:(int64_t)a8 completion:(id)a9;
- (void)remote_getHealthDatabaseIdentifierWithCompletion:(id)a3;
- (void)remote_getHealthDirectorySizeInBytesWithCompletion:(id)a3;
- (void)remote_hkqa_generateDemoDataWithDurationInDays:(int64_t)a3 completion:(id)a4;
- (void)remote_hkqa_statisticsWithCompletion:(id)a3;
- (void)remote_obliterateHealthDataWithOptions:(unint64_t)a3 completion:(id)a4;
- (void)remote_performMigrationWithCompletion:(id)a3;
- (void)remote_pruneSamplesWithReferenceDate:(id)a3 completion:(id)a4;
- (void)remote_showAndDeletedSampleInfoWithReferenceDate:(id)a3 completion:(id)a4;
- (void)remote_showWithReferenceDate:(id)a3 deletedSamplesOnly:(BOOL)a4 completion:(id)a5;
@end

@implementation HDDatabaseControlServer

- (void)remote_getHealthDatabaseIdentifierWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HDStandardTaskServer *)self profile];
  v6 = [v5 database];
  v9 = 0;
  v7 = [v6 databaseUUIDWithError:&v9];
  v8 = v9;

  if (!(v7 | v8))
  {
    v8 = [MEMORY[0x277CCA9B8] hk_error:11 format:@"No identifier found protected data may not exist."];;
  }

  v4[2](v4, v7, v8);
}

- (void)remote_getHealthDirectorySizeInBytesWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HDStandardTaskServer *)self profile];
  v6 = [v5 daemon];
  v7 = [v6 healthDirectorySizeInBytes];

  v4[2](v4, v7, 0);
}

- (void)remote_obliterateHealthDataWithOptions:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [(HDStandardTaskServer *)self client];
  v8 = *MEMORY[0x277CCC5C0];
  v21 = 0;
  v9 = [v7 hasRequiredEntitlement:v8 error:&v21];
  v10 = v21;

  if (v9)
  {
    v11 = [(HDStandardTaskServer *)self client];
    v12 = [v11 process];

    v13 = MEMORY[0x277CCACA8];
    v14 = [v12 name];
    v15 = [v13 stringWithFormat:@"Requested by %@ (%d)", v14, objc_msgSend(v12, "processIdentifier")];

    v16 = [(HDStandardTaskServer *)self profile];
    v17 = [v16 daemon];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __77__HDDatabaseControlServer_remote_obliterateHealthDataWithOptions_completion___block_invoke;
    v18[3] = &unk_278614008;
    v19 = 0;
    v20 = v6;
    [v17 obliterateAndTerminateWithOptions:a3 reason:v15 completion:v18];
  }

  else if (v6)
  {
    (*(v6 + 2))(v6, 0, v10);
  }
}

uint64_t __77__HDDatabaseControlServer_remote_obliterateHealthDataWithOptions_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 1, *(a1 + 32));
  }

  return result;
}

- (void)remote_performMigrationWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HDStandardTaskServer *)self profile];
  v6 = [v5 database];
  v7 = +[HDDatabaseTransactionContext contextForWritingProtectedData];
  v10 = 0;
  v8 = [v6 performTransactionWithContext:v7 error:&v10 block:&__block_literal_global_5 inaccessibilityHandler:0];
  v9 = v10;

  v4[2](v4, v8, v9);
}

- (void)remote_hkqa_generateDemoDataWithDurationInDays:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = HKCreateSerialDispatchQueue();
  v8 = [HDDemoDataGenerator alloc];
  v9 = [(HDStandardTaskServer *)self profile];
  v10 = [(HDDemoDataGenerator *)v8 initWithProfile:v9 queue:v7];

  v11 = [(HDDemoDataGenerator *)v10 configuration];
  [v11 setGenerationPeriodInDays:a3];
  v12 = +[HDDemoDataPerson defaultPersonWithBiologicalSex:](HDDemoDataPerson, "defaultPersonWithBiologicalSex:", [v11 biologicalSex]);
  v13 = [(HDDemoDataGenerator *)v10 gregorianCalendar];
  v14 = [v12 birthDateComponents];
  v15 = [v13 dateFromComponents:v14];
  [v12 setBirthDate:v15];

  [v12 setNutritionTrackingType:{objc_msgSend(v11, "nutritionTrackingType")}];
  [v12 setResultsTrackingType:{objc_msgSend(v11, "resultsTrackingType")}];
  [v12 applyProfileType:{objc_msgSend(v11, "profileType")}];
  [v12 setHighFidelityGeneration:{objc_msgSend(v11, "highFidelityGeneration")}];
  [(HDDemoDataGenerator *)v10 setDemoPerson:v12];
  v16 = [MEMORY[0x277CBEAA8] date];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __85__HDDatabaseControlServer_remote_hkqa_generateDemoDataWithDurationInDays_completion___block_invoke;
  v18[3] = &unk_278614050;
  v19 = v6;
  v17 = v6;
  [(HDDemoDataGenerator *)v10 generateThroughEndDate:v16 completion:v18];
}

uint64_t __68__HDDatabaseControlServer__queryDistinctTypesWithTransaction_error___block_invoke(uint64_t a1)
{
  v2 = HDSQLiteColumnAsInt64();
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:v2];
  [v3 addObject:v4];

  return 1;
}

uint64_t __66__HDDatabaseControlServer__queryTypeCounts_withTransaction_error___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCD830] _quantityTypeWithCode:{objc_msgSend(*(a1 + 32), "integerValue")}];
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:HDSQLiteColumnAsInt64()];
  [*(a1 + 40) setObject:v3 forKeyedSubscript:v2];

  return 1;
}

- (void)remote_hkqa_statisticsWithCompletion:(id)a3
{
  v4 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__5;
  v18 = __Block_byref_object_dispose__5;
  v19 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __64__HDDatabaseControlServer_remote_hkqa_statisticsWithCompletion___block_invoke;
  aBlock[3] = &unk_278614110;
  aBlock[4] = self;
  aBlock[5] = &v14;
  v5 = _Block_copy(aBlock);
  v6 = [(HDStandardTaskServer *)self profile];
  v7 = [v6 database];
  v8 = +[HDDatabaseTransactionContext contextForReadingProtectedData];
  v12 = 0;
  v9 = [v7 performTransactionWithContext:v8 error:&v12 block:v5 inaccessibilityHandler:0];
  v10 = v12;

  if (v9)
  {
    v11 = v15[5];
  }

  else
  {
    v11 = 0;
  }

  v4[2](v4, v11, v10);

  _Block_object_dispose(&v14, 8);
}

BOOL __64__HDDatabaseControlServer_remote_hkqa_statisticsWithCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v59 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v45 = 0;
  v41 = a1;
  if (!*(a1 + 32))
  {
    v31 = 0;
    goto LABEL_28;
  }

  aBlock = MEMORY[0x277D85DD0];
  v55 = 3221225472;
  v56 = __67__HDDatabaseControlServer__querySampleCount_withTransaction_error___block_invoke;
  v57 = &__block_descriptor_40_e26_B24__0__HDSQLiteRow__8__16l;
  v58 = &v45;
  v40 = v4;
  v5 = v4;
  v6 = _Block_copy(&aBlock);
  v7 = [v5 protectedDatabase];

  v8 = [v7 executeSQL:@"SELECT COUNT(*) FROM samples JOIN objects USING (data_id) WHERE type=1;" error:a3 bindingHandler:0 enumerationHandler:v6];
  if (v8)
  {
    v9 = *(v41 + 32);
    if (v9)
    {
      v10 = MEMORY[0x277CBEB18];
      v11 = v5;
      v12 = [v10 array];
      aBlock = MEMORY[0x277D85DD0];
      v55 = 3221225472;
      v56 = __68__HDDatabaseControlServer__queryDistinctTypesWithTransaction_error___block_invoke;
      v57 = &unk_278614098;
      v58 = v12;
      v13 = v12;
      v14 = _Block_copy(&aBlock);
      v15 = [v11 protectedDatabase];

      v16 = [v15 executeSQL:@"SELECT DISTINCT data_type FROM samples JOIN objects USING (data_id) WHERE type=1;" error:a3 bindingHandler:0 enumerationHandler:v14];
      if (v16)
      {
        v17 = v13;
      }

      else
      {
        v17 = 0;
      }

      v18 = v17;

      if (v18)
      {
        v19 = *(v41 + 32);
        v39 = v18;
        v43 = v11;
        if (v19)
        {
          v20 = [MEMORY[0x277CBEB38] dictionary];
          v52 = 0u;
          v53 = 0u;
          v50 = 0u;
          v51 = 0u;
          obj = v39;
          v21 = [obj countByEnumeratingWithState:&v50 objects:&aBlock count:16];
          if (v21)
          {
            v22 = *v51;
            v23 = MEMORY[0x277D85DD0];
            while (2)
            {
              v24 = 0;
              do
              {
                if (*v51 != v22)
                {
                  objc_enumerationMutation(obj);
                }

                v25 = *(*(&v50 + 1) + 8 * v24);
                v49[0] = 0;
                v49[1] = v49;
                v49[2] = 0x2020000000;
                v49[3] = [v25 integerValue];
                v47[0] = v23;
                v47[1] = 3221225472;
                v47[2] = __66__HDDatabaseControlServer__queryTypeCounts_withTransaction_error___block_invoke;
                v47[3] = &unk_2786140C0;
                v47[4] = v25;
                v48 = v20;
                v26 = _Block_copy(v47);
                v46[0] = v23;
                v46[1] = 3221225472;
                v46[2] = __66__HDDatabaseControlServer__queryTypeCounts_withTransaction_error___block_invoke_2;
                v46[3] = &unk_2786140E8;
                v46[4] = v49;
                v27 = _Block_copy(v46);
                v28 = [v43 protectedDatabase];
                v29 = [v28 executeSQL:@"SELECT COUNT(*) FROM samples JOIN objects USING (data_id) WHERE type = 1 AND data_type = ?;" error:a3 bindingHandler:v27 enumerationHandler:v26];

                _Block_object_dispose(v49, 8);
                if ((v29 & 1) == 0)
                {

                  v30 = 0;
                  goto LABEL_20;
                }

                ++v24;
              }

              while (v21 != v24);
              v21 = [obj countByEnumeratingWithState:&v50 objects:&aBlock count:16];
              if (v21)
              {
                continue;
              }

              break;
            }
          }

          v30 = v20;
LABEL_20:
        }

        else
        {
          v30 = 0;
        }

        v31 = v30 != 0;
        if (v30)
        {
          v32 = objc_alloc(MEMORY[0x277CCD7D8]);
          v33 = [MEMORY[0x277CCABB0] numberWithInteger:v45];
          v34 = [v32 initWithSampleCount:v33 sampleCountByType:v30];
          v35 = *(*(v41 + 40) + 8);
          v36 = *(v35 + 40);
          *(v35 + 40) = v34;
        }

        v9 = v39;
        goto LABEL_26;
      }

      v9 = 0;
    }

    v31 = 0;
LABEL_26:

    goto LABEL_27;
  }

  v31 = 0;
LABEL_27:
  v4 = v40;
LABEL_28:

  v37 = *MEMORY[0x277D85DE8];
  return v31;
}

- (void)remote_showWithReferenceDate:(id)a3 deletedSamplesOnly:(BOOL)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = dispatch_get_global_queue(0, 0);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __86__HDDatabaseControlServer_remote_showWithReferenceDate_deletedSamplesOnly_completion___block_invoke;
  v13[3] = &unk_278614138;
  v16 = a4;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, v13);
}

void __86__HDDatabaseControlServer_remote_showWithReferenceDate_deletedSamplesOnly_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) profile];
  v3 = *(a1 + 56);
  v4 = *(a1 + 40);
  v7 = 0;
  v5 = [HDDatabasePruningShow showWithProfile:v2 deletedSamplesOnly:v3 referenceDate:v4 error:&v7];
  v6 = v7;

  (*(*(a1 + 48) + 16))();
}

- (void)remote_showAndDeletedSampleInfoWithReferenceDate:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __87__HDDatabaseControlServer_remote_showAndDeletedSampleInfoWithReferenceDate_completion___block_invoke;
  block[3] = &unk_278614160;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __87__HDDatabaseControlServer_remote_showAndDeletedSampleInfoWithReferenceDate_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) profile];
  v3 = *(a1 + 40);
  v6 = 0;
  v4 = [HDDatabasePruningShow showAndDeletedSampleInfoWithProfile:v2 referenceDate:v3 error:&v6];
  v5 = v6;

  (*(*(a1 + 48) + 16))();
}

- (void)remote_deletedSampleInfoWithReferenceDate:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__HDDatabaseControlServer_remote_deletedSampleInfoWithReferenceDate_completion___block_invoke;
  block[3] = &unk_278614160;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __80__HDDatabaseControlServer_remote_deletedSampleInfoWithReferenceDate_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) profile];
  v3 = *(a1 + 40);
  v6 = 0;
  v4 = [HDDatabasePruningShow deletedSampleInfoWithProfile:v2 referenceDate:v3 error:&v6];
  v5 = v6;

  (*(*(a1 + 48) + 16))();
}

- (void)remote_classifiedDeletedSampleInfoWithReferenceDate:(id)a3 anchor:(int64_t)a4 limit:(int64_t)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __103__HDDatabaseControlServer_remote_classifiedDeletedSampleInfoWithReferenceDate_anchor_limit_completion___block_invoke;
  block[3] = &unk_278614188;
  block[4] = self;
  v16 = v10;
  v18 = a4;
  v19 = a5;
  v17 = v11;
  v13 = v11;
  v14 = v10;
  dispatch_async(v12, block);
}

void __103__HDDatabaseControlServer_remote_classifiedDeletedSampleInfoWithReferenceDate_anchor_limit_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) profile];
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v8 = 0;
  v6 = [HDDatabasePruningShow classifiedDeletedSampleInfoWithProfile:v2 referenceDate:v3 anchor:v4 limit:v5 error:&v8];
  v7 = v8;

  (*(*(a1 + 48) + 16))();
}

- (void)remote_classifiedDeletedSampleInfoWithReferenceDate:(id)a3 createdOnOrAfter:(id)a4 createdBefore:(id)a5 limit:(int64_t)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = dispatch_get_global_queue(0, 0);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __127__HDDatabaseControlServer_remote_classifiedDeletedSampleInfoWithReferenceDate_createdOnOrAfter_createdBefore_limit_completion___block_invoke;
  v21[3] = &unk_2786141B0;
  v21[4] = self;
  v22 = v12;
  v23 = v13;
  v24 = v14;
  v25 = v15;
  v26 = a6;
  v17 = v15;
  v18 = v14;
  v19 = v13;
  v20 = v12;
  dispatch_async(v16, v21);
}

void __127__HDDatabaseControlServer_remote_classifiedDeletedSampleInfoWithReferenceDate_createdOnOrAfter_createdBefore_limit_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) profile];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 72);
  v9 = 0;
  v7 = [HDDatabasePruningShow classifiedDeletedSampleInfoWithProfile:v2 referenceDate:v3 createdOnOrAfter:v4 createdBefore:v5 limit:v6 error:&v9];
  v8 = v9;

  (*(*(a1 + 64) + 16))();
}

- (void)remote_deletedSampleDetailWithReferenceDate:(id)a3 matchingPredicatesOnly:(BOOL)a4 sampleUUID:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __116__HDDatabaseControlServer_remote_deletedSampleDetailWithReferenceDate_matchingPredicatesOnly_sampleUUID_completion___block_invoke;
  block[3] = &unk_2786141D8;
  v21 = a4;
  block[4] = self;
  v18 = v10;
  v19 = v11;
  v20 = v12;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  dispatch_async(v13, block);
}

void __116__HDDatabaseControlServer_remote_deletedSampleDetailWithReferenceDate_matchingPredicatesOnly_sampleUUID_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) profile];
  v3 = *(a1 + 64);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v8 = 0;
  v6 = [HDDatabasePruningShow deletedSampleDetailWithProfile:v2 matchingPredicatesOnly:v3 referenceDate:v4 sampleUUID:v5 error:&v8];
  v7 = v8;

  (*(*(a1 + 56) + 16))();
}

- (void)remote_deletedSamplesDetailWithReferenceDate:(id)a3 matchingPredicatesOnly:(BOOL)a4 samplesWithDifferentPruningOutcomesOnly:(BOOL)a5 anchor:(int64_t)a6 limit:(int64_t)a7 completion:(id)a8
{
  v14 = a3;
  v15 = a8;
  v16 = dispatch_get_global_queue(0, 0);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __159__HDDatabaseControlServer_remote_deletedSamplesDetailWithReferenceDate_matchingPredicatesOnly_samplesWithDifferentPruningOutcomesOnly_anchor_limit_completion___block_invoke;
  v19[3] = &unk_278614200;
  v24 = a4;
  v25 = a5;
  v19[4] = self;
  v20 = v14;
  v22 = a6;
  v23 = a7;
  v21 = v15;
  v17 = v15;
  v18 = v14;
  dispatch_async(v16, v19);
}

void __159__HDDatabaseControlServer_remote_deletedSamplesDetailWithReferenceDate_matchingPredicatesOnly_samplesWithDifferentPruningOutcomesOnly_anchor_limit_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) profile];
  v3 = *(a1 + 72);
  v4 = *(a1 + 73);
  v5 = *(a1 + 40);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v10 = 0;
  v8 = [HDDatabasePruningShow deletedSamplesDetailWithProfile:v2 matchingPredicatesOnly:v3 samplesWithDifferentPruningOutcomesOnly:v4 referenceDate:v5 anchor:v6 limit:v7 error:&v10];
  v9 = v10;

  (*(*(a1 + 48) + 16))();
}

- (void)remote_deletedSamplesDetailWithReferenceDate:(id)a3 matchingPredicatesOnly:(BOOL)a4 samplesWithDifferentPruningOutcomesOnly:(BOOL)a5 createdOnOrAfter:(id)a6 createdBefore:(id)a7 limit:(int64_t)a8 completion:(id)a9
{
  v15 = a3;
  v16 = a6;
  v17 = a7;
  v18 = a9;
  v19 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __183__HDDatabaseControlServer_remote_deletedSamplesDetailWithReferenceDate_matchingPredicatesOnly_samplesWithDifferentPruningOutcomesOnly_createdOnOrAfter_createdBefore_limit_completion___block_invoke;
  block[3] = &unk_278614228;
  v30 = a4;
  v31 = a5;
  block[4] = self;
  v25 = v15;
  v26 = v16;
  v27 = v17;
  v28 = v18;
  v29 = a8;
  v20 = v18;
  v21 = v17;
  v22 = v16;
  v23 = v15;
  dispatch_async(v19, block);
}

void __183__HDDatabaseControlServer_remote_deletedSamplesDetailWithReferenceDate_matchingPredicatesOnly_samplesWithDifferentPruningOutcomesOnly_createdOnOrAfter_createdBefore_limit_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) profile];
  v3 = *(a1 + 80);
  v4 = *(a1 + 81);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 72);
  v11 = 0;
  v9 = [HDDatabasePruningShow deletedSamplesDetailWithProfile:v2 matchingPredicatesOnly:v3 samplesWithDifferentPruningOutcomesOnly:v4 referenceDate:v5 createdOnOrAfter:v6 createdBefore:v7 limit:v8 error:&v11];
  v10 = v11;

  (*(*(a1 + 64) + 16))();
}

- (void)remote_pruneSamplesWithReferenceDate:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [HDDatabasePruningTask alloc];
  v9 = [(HDStandardTaskServer *)self profile];
  v10 = [(HDDatabasePruningTask *)v8 initWithProfile:v9];

  v11 = [(HDStandardTaskServer *)self profile];
  v12 = [v11 daemon];
  v13 = [v12 maintenanceWorkCoordinator];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __75__HDDatabaseControlServer_remote_pruneSamplesWithReferenceDate_completion___block_invoke;
  v15[3] = &unk_278614250;
  v16 = v6;
  v14 = v6;
  [(HDDatabasePruningTask *)v10 enqueueMaintenanceOperationOnCoordinator:v13 takeAccessibilityAssertion:0 nowDate:v7 shouldDefer:0 completion:v15];
}

+ (id)requiredEntitlements
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = *MEMORY[0x277CCC8B0];
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end