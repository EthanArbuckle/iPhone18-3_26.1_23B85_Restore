@interface HDQuantitySampleValueEnumerator
+ (BOOL)orderedQuantityValuesBySeriesForPredicate:(id)predicate profile:(id)profile options:(int64_t)options error:(id *)error handler:(id)handler;
+ (BOOL)orderedQuantityValuesBySeriesForPredicate:(id)predicate transaction:(id)transaction options:(int64_t)options error:(id *)error handler:(id)handler;
+ (BOOL)orderedQuantityValuesForPredicate:(id)predicate profile:(id)profile options:(int64_t)options error:(id *)error handler:(id)handler;
+ (BOOL)orderedQuantityValuesForPredicate:(id)predicate transaction:(id)transaction options:(int64_t)options error:(id *)error handler:(id)handler;
+ (BOOL)quantityValuesForType:(id)type from:(id)from to:(id)to transaction:(id)transaction error:(id *)error handler:(id)handler;
+ (BOOL)quantityValuesWithSourceForType:(id)type from:(id)from to:(id)to dataInterval:(id)interval table:(id)table transaction:(id)transaction error:(id *)error handler:(id)self0;
+ (BOOL)simplerOrderedQuantityValuesForPredicate:(id)predicate transaction:(id)transaction options:(int64_t)options error:(id *)error handler:(id)handler;
+ (id)_propertiesForEnumeration;
+ (id)_queryForEnumerationWithPredicate:(void *)predicate transaction:(char)transaction options:;
+ (uint64_t)_enumerateWithEnumerator:(void *)enumerator endTime:(void *)time error:(void *)error handler:;
+ (uint64_t)_enumerateWithEnumerator:(void *)enumerator endTime:(void *)time error:(void *)error sampleHandler:;
+ (uint64_t)_enumerateWithEnumerator:(void *)enumerator endTime:(void *)time error:(void *)error sourceHandler:;
@end

@implementation HDQuantitySampleValueEnumerator

+ (BOOL)orderedQuantityValuesBySeriesForPredicate:(id)predicate profile:(id)profile options:(int64_t)options error:(id *)error handler:(id)handler
{
  predicateCopy = predicate;
  handlerCopy = handler;
  database = [profile database];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __107__HDQuantitySampleValueEnumerator_orderedQuantityValuesBySeriesForPredicate_profile_options_error_handler___block_invoke;
  v18[3] = &unk_2786145D0;
  selfCopy = self;
  optionsCopy = options;
  v19 = predicateCopy;
  v20 = handlerCopy;
  v15 = handlerCopy;
  v16 = predicateCopy;
  LOBYTE(error) = [(HDHealthEntity *)HDQuantitySampleEntity performReadTransactionWithHealthDatabase:database error:error block:v18];

  return error;
}

+ (BOOL)orderedQuantityValuesBySeriesForPredicate:(id)predicate transaction:(id)transaction options:(int64_t)options error:(id *)error handler:(id)handler
{
  v56 = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  transactionCopy = transaction;
  handlerCopy = handler;
  v33 = transactionCopy;
  v30 = predicateCopy;
  optionsCopy = options;
  v13 = [(HDQuantitySampleValueEnumerator *)self _queryForEnumerationWithPredicate:predicateCopy transaction:transactionCopy options:options];
  v14 = +[HDQuantitySampleValueEnumerator _propertiesForEnumeration];
  v31 = [v14 indexOfObject:*MEMORY[0x277D10A40]];
  v15 = [v14 indexOfObject:@"uuid"];
  v16 = [v14 indexOfObject:@"data_type"];
  v17 = [v14 indexOfObject:@"quantity"];
  v18 = [v14 indexOfObject:@"data_provenances.source_id"];
  v19 = [v14 indexOfObject:@"start_date"];
  v20 = [v14 indexOfObject:@"end_date"];
  v21 = [v14 indexOfObject:@"count"];
  v22 = [v14 indexOfObject:@"hfd_key"];
  v50 = 0;
  v51 = &v50;
  v52 = 0x2020000000;
  v53 = 0;
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __111__HDQuantitySampleValueEnumerator_orderedQuantityValuesBySeriesForPredicate_transaction_options_error_handler___block_invoke;
  v36[3] = &unk_278625900;
  v40 = v31;
  v41 = v15;
  v42 = v16;
  v43 = v17;
  v44 = v19;
  v45 = v20;
  v46 = v18;
  v47 = v21;
  v48 = v22;
  v49 = optionsCopy;
  v23 = handlerCopy;
  v38 = v23;
  v24 = v33;
  v37 = v24;
  v39 = &v50;
  v25 = [v13 enumerateProperties:v14 error:error enumerationHandler:v36];
  if (v51[3] >= 1)
  {
    _HKInitializeLogging();
    v26 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
    {
      v29 = v51[3];
      *buf = 134217984;
      v55 = v29;
      _os_log_error_impl(&dword_228986000, v26, OS_LOG_TYPE_ERROR, "Skipped %ld missing sample histories during enumeration", buf, 0xCu);
    }
  }

  _Block_object_dispose(&v50, 8);
  v27 = *MEMORY[0x277D85DE8];
  return v25;
}

+ (id)_queryForEnumerationWithPredicate:(void *)predicate transaction:(char)transaction options:
{
  v19[1] = *MEMORY[0x277D85DE8];
  v6 = a2;
  predicateCopy = predicate;
  objc_opt_self();
  v8 = objc_opt_class();
  v9 = [predicateCopy databaseForEntityClass:v8];

  if ((transaction & 4) == 0)
  {
    additionalPredicateForEnumeration = [v8 additionalPredicateForEnumeration];
    v11 = [MEMORY[0x277D10B70] compoundPredicateWithPredicate:v6 otherPredicate:additionalPredicateForEnumeration];

    v6 = v11;
  }

  v12 = [MEMORY[0x277D10B68] orderingTermWithProperty:@"start_date" entityClass:objc_opt_class() ascending:1];
  v19[0] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];

  if ((transaction & 2) != 0)
  {
    v14 = [MEMORY[0x277D10B68] orderingTermWithProperty:@"uuid" entityClass:objc_opt_class() ascending:1];
    v15 = [v13 arrayByAddingObject:v14];

    v13 = v15;
  }

  v16 = [v8 queryWithDatabase:v9 predicate:v6 limit:0 orderingTerms:v13 groupBy:0];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (id)_propertiesForEnumeration
{
  v3[9] = *MEMORY[0x277D85DE8];
  objc_opt_self();
  v3[0] = *MEMORY[0x277D10A40];
  v3[1] = @"uuid";
  v3[2] = @"data_type";
  v3[3] = @"quantity";
  v3[4] = @"data_provenances.source_id";
  v3[5] = @"start_date";
  v3[6] = @"end_date";
  v3[7] = @"count";
  v3[8] = @"hfd_key";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:9];
  v1 = *MEMORY[0x277D85DE8];

  return v0;
}

uint64_t __111__HDQuantitySampleValueEnumerator_orderedQuantityValuesBySeriesForPredicate_transaction_options_error_handler___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v70 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = *(a1 + 56);
  v9 = HDSQLiteColumnAsInt64();
  v10 = MEMORY[0x22AAC6C20](a3, *(a1 + 64));
  v11 = *(a1 + 72);
  v12 = HDSQLiteColumnAsInt64();
  v13 = MEMORY[0x22AAC6C50](a3, *(a1 + 80));
  v14 = MEMORY[0x22AAC6C50](a3, *(a1 + 88));
  v15 = MEMORY[0x22AAC6C50](a3, *(a1 + 96));
  v16 = *(a1 + 104);
  v17 = HDSQLiteColumnAsInt64();
  if (MEMORY[0x22AAC6CD0](a3, *(a1 + 112)))
  {
    v18 = 1;
  }

  else
  {
    v19 = *(a1 + 112);
    v18 = HDSQLiteColumnAsInt64();
  }

  v20 = MEMORY[0x22AAC6CD0](a3, *(a1 + 120));
  if ((*(a1 + 128) & 1) != 0 && !v20)
  {
    v21 = *(a1 + 120);
    v38 = HDSQLiteColumnAsInt64();
    v64 = 0;
    v65 = &v64;
    v66 = 0x2020000000;
    v67 = 0;
    v58 = 0;
    v59 = &v58;
    v60 = 0x3032000000;
    v61 = __Block_byref_object_copy__131;
    v62 = __Block_byref_object_dispose__131;
    v63 = 0;
    v54 = 0;
    v55 = &v54;
    v56 = 0x2020000000;
    v57 = 0;
    v53[0] = 0;
    v53[1] = v53;
    v53[2] = 0x2020000000;
    *&v53[3] = v14;
    v22 = v9;
    v23 = v7;
    v52 = 0;
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __111__HDQuantitySampleValueEnumerator_orderedQuantityValuesBySeriesForPredicate_transaction_options_error_handler___block_invoke_294;
    v39[3] = &unk_2786258D8;
    v41 = v53;
    v42 = &v64;
    v24 = *(a1 + 32);
    v25 = *(a1 + 40);
    v46 = v12;
    v47 = v10;
    v48 = v14;
    v49 = v15;
    v50 = v17;
    v51 = v18;
    v40 = v25;
    v43 = &v54;
    v44 = &v58;
    v45 = v22;
    v26 = v24;
    v7 = v23;
    v27 = [HDQuantitySampleSeriesEntity enumerateRawDataWithTransaction:v26 HFDKey:v38 error:&v52 handler:v39];
    v28 = v52;
    if (v27)
    {
      if (!v55[3])
      {
        _HKInitializeLogging();
        v35 = *MEMORY[0x277CCC2A0];
        if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEBUG))
        {
          *buf = 134349056;
          v69 = v38;
          _os_log_debug_impl(&dword_228986000, v35, OS_LOG_TYPE_DEBUG, "Skipping missing quantity sample history during enumeration: %{public}lld", buf, 0xCu);
        }

        ++*(*(*(a1 + 48) + 8) + 24);
        v30 = (*(*(a1 + 40) + 16))(v14, v15, v13, v14, v15);
        goto LABEL_22;
      }

      v29 = v59;
      if (*(v65 + 24) == 1 && !v59[5])
      {
        v30 = 1;
LABEL_22:

        _Block_object_dispose(v53, 8);
        _Block_object_dispose(&v54, 8);
        _Block_object_dispose(&v58, 8);

        _Block_object_dispose(&v64, 8);
        goto LABEL_23;
      }
    }

    else
    {
      v29 = v59;
    }

    v31 = v29[5];
    if (v31)
    {
      v32 = v31;
      v33 = v32;
      if (a4)
      {
        v34 = v32;
        *a4 = v33;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v30 = 0;
    goto LABEL_22;
  }

  v30 = (*(*(a1 + 40) + 16))(v14, v15, v13, v14, v15);
LABEL_23:

  v36 = *MEMORY[0x277D85DE8];
  return v30;
}

uint64_t __111__HDQuantitySampleValueEnumerator_orderedQuantityValuesBySeriesForPredicate_transaction_options_error_handler___block_invoke_294(uint64_t a1, double a2, double a3, float a4, __n128 a5)
{
  a5.n128_f64[0] = a2;
  if (a4 == -1.0)
  {
    a5.n128_u64[0] = *(*(*(a1 + 40) + 8) + 24);
    v6 = a2;
  }

  else
  {
    v6 = a4 + a2;
  }

  v7 = *(a1 + 72);
  v8 = *(a1 + 80);
  v9 = *(a1 + 88);
  v10 = *(a1 + 112);
  v11 = *(a1 + 120);
  v12 = *(*(*(a1 + 56) + 8) + 24);
  v13 = *(*(a1 + 64) + 8);
  obj = *(v13 + 40);
  v14 = (*(*(a1 + 32) + 16))(*(a1 + 96), *(a1 + 104), a3, a5, v6);
  objc_storeStrong((v13 + 40), obj);
  *(*(*(a1 + 48) + 8) + 24) = v14;
  ++*(*(*(a1 + 56) + 8) + 24);
  *(*(*(a1 + 40) + 8) + 24) = v6;
  return *(*(*(a1 + 48) + 8) + 24);
}

+ (BOOL)orderedQuantityValuesForPredicate:(id)predicate profile:(id)profile options:(int64_t)options error:(id *)error handler:(id)handler
{
  predicateCopy = predicate;
  handlerCopy = handler;
  database = [profile database];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __99__HDQuantitySampleValueEnumerator_orderedQuantityValuesForPredicate_profile_options_error_handler___block_invoke;
  v18[3] = &unk_2786145D0;
  selfCopy = self;
  optionsCopy = options;
  v19 = predicateCopy;
  v20 = handlerCopy;
  v15 = handlerCopy;
  v16 = predicateCopy;
  LOBYTE(error) = [(HDHealthEntity *)HDQuantitySampleEntity performReadTransactionWithHealthDatabase:database error:error block:v18];

  return error;
}

+ (BOOL)simplerOrderedQuantityValuesForPredicate:(id)predicate transaction:(id)transaction options:(int64_t)options error:(id *)error handler:(id)handler
{
  optionsCopy = options;
  v51 = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  transactionCopy = transaction;
  handlerCopy = handler;
  v29 = predicateCopy;
  v33 = [(HDQuantitySampleValueEnumerator *)self _queryForEnumerationWithPredicate:predicateCopy transaction:transactionCopy options:optionsCopy];
  objc_opt_self();
  v46 = *MEMORY[0x277D10A40];
  v13 = v46;
  v47 = @"quantity";
  v48 = @"start_date";
  v49 = @"end_date";
  v50 = @"hfd_key";
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v46 count:5];
  v15 = [v14 indexOfObject:v13];
  v16 = [v14 indexOfObject:@"quantity"];
  v17 = [v14 indexOfObject:@"start_date"];
  v18 = [v14 indexOfObject:@"end_date"];
  v19 = [v14 indexOfObject:@"hfd_key"];
  v20 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v46 = 0;
  v47 = &v46;
  v48 = 0x2020000000;
  LOBYTE(v49) = 1;
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __110__HDQuantitySampleValueEnumerator_simplerOrderedQuantityValuesForPredicate_transaction_options_error_handler___block_invoke_2;
  v34[3] = &unk_278625948;
  v40 = v15;
  v41 = v16;
  v42 = v17;
  v43 = v18;
  v44 = v19;
  v31 = transactionCopy;
  v35 = v31;
  v21 = v20;
  v36 = v21;
  v37 = &__block_literal_global_163;
  selfCopy = self;
  v22 = handlerCopy;
  v38 = v22;
  v39 = &v46;
  if ([v33 enumerateProperties:v14 error:error enumerationHandler:v34])
  {
    if (LOBYTE(v47->length) == 1)
    {
      while (1)
      {
        if (![v21 count])
        {
          goto LABEL_10;
        }

        v23 = [v21 hk_firstSortedObjectWithComparison:&__block_literal_global_163];
        [v23 nextDatumTime];
        v25 = [(HDQuantitySampleValueEnumerator *)v24 _enumerateWithEnumerator:self endTime:v23 error:error sampleHandler:v22];
        if ([v23 done])
        {
          [v21 removeObject:v23];
        }

        if (!v25)
        {
          break;
        }

        if (v25 == 1)
        {
          v26 = 1;
LABEL_13:

          goto LABEL_14;
        }
      }

      v26 = 0;
      goto LABEL_13;
    }

LABEL_10:
    v26 = 1;
  }

  else
  {
    v26 = 0;
  }

LABEL_14:

  _Block_object_dispose(&v46, 8);
  v27 = *MEMORY[0x277D85DE8];
  return v26;
}

uint64_t __110__HDQuantitySampleValueEnumerator_simplerOrderedQuantityValuesForPredicate_transaction_options_error_handler___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 72);
  v8 = HDSQLiteColumnAsInt64();
  v9 = MEMORY[0x22AAC6C50](a3, *(a1 + 80));
  v10 = MEMORY[0x22AAC6C50](a3, *(a1 + 88));
  v11 = MEMORY[0x22AAC6C50](a3, *(a1 + 96));
  v12 = MEMORY[0x22AAC6CD0](a3, *(a1 + 104));
  if (v12)
  {
    v13 = 0;
    while ([*(a1 + 40) count])
    {
      v15 = [*(a1 + 40) hk_firstSortedObjectWithComparison:*(a1 + 48)];
      if (!v12 || (v21 = v10, [*(a1 + 40) count] != 1))
      {
        [(HDQuantitySampleSeriesDataEnumerator *)v15 nextDatumTime];
        if (v10 >= v22)
        {
          v21 = v22;
        }

        else
        {
          v21 = v10;
        }
      }

      [(HDQuantitySampleSeriesDataEnumerator *)v15 nextDatumTime];
      if (v21 < v23)
      {

        break;
      }

      v24 = [(HDQuantitySampleValueEnumerator *)v21 _enumerateWithEnumerator:v15 endTime:a4 error:*(a1 + 56) sampleHandler:?];
      if ([(HDQuantitySampleSeriesDataEnumerator *)v15 done])
      {
        [*(a1 + 40) removeObject:v15];
      }

      if (v24 <= 1)
      {
        *(*(*(a1 + 64) + 8) + 24) = 0;
        goto LABEL_24;
      }

LABEL_12:
    }

    if ((v12 | v13) == 1 && *(*(*(a1 + 64) + 8) + 24) == 1)
    {
      *(*(*(a1 + 64) + 8) + 24) = (*(*(a1 + 56) + 16))(v9, v10, v11);
    }

    v25 = *(*(*(a1 + 64) + 8) + 24);
  }

  else
  {
    v14 = *(a1 + 104);
    v15 = [[HDQuantitySampleSeriesDataEnumerator alloc] initWithTransaction:*(a1 + 32) persistentID:v8 startTime:HDSQLiteColumnAsInt64() endTime:v10 HFDKey:v11];
    v27 = 0;
    v16 = [(HDQuantitySampleSeriesDataEnumerator *)v15 primeEnumeratorWithError:&v27];
    v17 = v27;
    v18 = v17;
    if (v16)
    {
      v13 = [(HDQuantitySampleSeriesDataEnumerator *)v15 done];
      if (!v13)
      {
        [*(a1 + 40) addObject:v15];
      }

      goto LABEL_12;
    }

    v19 = v17;
    if (v19)
    {
      if (a4)
      {
        v20 = v19;
        *a4 = v19;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

LABEL_24:
    v25 = 0;
  }

  return v25 & 1;
}

+ (uint64_t)_enumerateWithEnumerator:(void *)enumerator endTime:(void *)time error:(void *)error sampleHandler:
{
  enumeratorCopy = enumerator;
  errorCopy = error;
  objc_opt_self();
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__131;
  v29 = __Block_byref_object_dispose__131;
  v30 = 0;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __88__HDQuantitySampleValueEnumerator__enumerateWithEnumerator_endTime_error_sampleHandler___block_invoke;
  v19[3] = &unk_278625998;
  v22 = &v35;
  v23 = &v31;
  v10 = errorCopy;
  v21 = v10;
  v11 = enumeratorCopy;
  v20 = v11;
  v24 = &v25;
  v12 = [v11 enumerateDataToTime:time error:v19 handler:self];
  v13 = v26[5];
  if (!v12)
  {
    if (!v13)
    {
LABEL_11:
      v14 = 0;
      goto LABEL_12;
    }

LABEL_7:
    v15 = v13;
    v16 = v15;
    if (time)
    {
      v17 = v15;
      *time = v16;
    }

    else
    {
      _HKLogDroppedError();
    }

    goto LABEL_11;
  }

  if (v13)
  {
    goto LABEL_7;
  }

  if (*(v36 + 24) == 1 && *(v32 + 24) != 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = 3;
  }

LABEL_12:

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v35, 8);

  return v14;
}

+ (BOOL)orderedQuantityValuesForPredicate:(id)predicate transaction:(id)transaction options:(int64_t)options error:(id *)error handler:(id)handler
{
  optionsCopy = options;
  predicateCopy = predicate;
  transactionCopy = transaction;
  handlerCopy = handler;
  v29 = predicateCopy;
  v33 = [(HDQuantitySampleValueEnumerator *)self _queryForEnumerationWithPredicate:predicateCopy transaction:transactionCopy options:optionsCopy | 2];
  v13 = +[HDQuantitySampleValueEnumerator _propertiesForEnumeration];
  v32 = [v13 indexOfObject:*MEMORY[0x277D10A40]];
  v31 = [v13 indexOfObject:@"uuid"];
  v30 = [v13 indexOfObject:@"data_type"];
  v14 = [v13 indexOfObject:@"quantity"];
  v15 = [v13 indexOfObject:@"data_provenances.source_id"];
  v16 = [v13 indexOfObject:@"start_date"];
  v17 = [v13 indexOfObject:@"end_date"];
  v18 = [v13 indexOfObject:@"count"];
  v19 = [v13 indexOfObject:@"hfd_key"];
  v20 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v55 = 1;
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __103__HDQuantitySampleValueEnumerator_orderedQuantityValuesForPredicate_transaction_options_error_handler___block_invoke_2;
  v36[3] = &unk_278625970;
  v42 = v32;
  v43 = v31;
  v44 = v30;
  v45 = v14;
  v46 = v16;
  v47 = v17;
  v48 = v15;
  v49 = v18;
  v50 = v19;
  v21 = transactionCopy;
  v37 = v21;
  v22 = v20;
  v38 = v22;
  v39 = &__block_literal_global_301_2;
  selfCopy = self;
  v23 = handlerCopy;
  v40 = v23;
  v41 = &v52;
  if ([v33 enumerateProperties:v13 error:error enumerationHandler:v36])
  {
    if (*(v53 + 24) == 1)
    {
      while (1)
      {
        if (![v22 count])
        {
          goto LABEL_10;
        }

        v24 = [v22 hk_firstSortedObjectWithComparison:&__block_literal_global_301_2];
        [v24 nextDatumTime];
        v26 = [(HDQuantitySampleValueEnumerator *)v25 _enumerateWithEnumerator:self endTime:v24 error:error handler:v23];
        if ([v24 done])
        {
          [v22 removeObject:v24];
        }

        if (!v26)
        {
          break;
        }

        if (v26 == 1)
        {
          v27 = 1;
LABEL_13:

          goto LABEL_14;
        }
      }

      v27 = 0;
      goto LABEL_13;
    }

LABEL_10:
    v27 = 1;
  }

  else
  {
    v27 = 0;
  }

LABEL_14:

  _Block_object_dispose(&v52, 8);
  return v27;
}

uint64_t __103__HDQuantitySampleValueEnumerator_orderedQuantityValuesForPredicate_transaction_options_error_handler___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 72);
  v8 = HDSQLiteColumnAsInt64();
  v35 = MEMORY[0x22AAC6C20](a3, *(a1 + 80));
  v9 = *(a1 + 88);
  v10 = HDSQLiteColumnAsInt64();
  v11 = MEMORY[0x22AAC6C50](a3, *(a1 + 96));
  v12 = MEMORY[0x22AAC6C50](a3, *(a1 + 104));
  v13 = MEMORY[0x22AAC6C50](a3, *(a1 + 112));
  v14 = *(a1 + 120);
  v15 = HDSQLiteColumnAsInt64();
  if (MEMORY[0x22AAC6CD0](a3, *(a1 + 128)))
  {
    v16 = 1;
  }

  else
  {
    v17 = *(a1 + 128);
    v16 = HDSQLiteColumnAsInt64();
  }

  v18 = MEMORY[0x22AAC6CD0](a3, *(a1 + 136));
  if (v18)
  {
    v19 = v8;
    v20 = 0;
    while ([*(a1 + 40) count])
    {
      v22 = [*(a1 + 40) hk_firstSortedObjectWithComparison:*(a1 + 48)];
      if (!v18 || (v28 = v12, [*(a1 + 40) count] != 1))
      {
        [(HDQuantitySampleSeriesDataEnumerator *)v22 nextDatumTime];
        if (v12 >= v29)
        {
          v28 = v29;
        }

        else
        {
          v28 = v12;
        }
      }

      [(HDQuantitySampleSeriesDataEnumerator *)v22 nextDatumTime];
      if (v28 < v30)
      {

        break;
      }

      v31 = [(HDQuantitySampleValueEnumerator *)v28 _enumerateWithEnumerator:v22 endTime:a4 error:*(a1 + 56) handler:?];
      if ([(HDQuantitySampleSeriesDataEnumerator *)v22 done])
      {
        [*(a1 + 40) removeObject:v22];
      }

      if (v31 <= 1)
      {
        *(*(*(a1 + 64) + 8) + 24) = 0;
        goto LABEL_27;
      }

LABEL_15:
    }

    if ((v18 | v20) == 1 && *(*(*(a1 + 64) + 8) + 24) == 1)
    {
      if (v20)
      {
        v33 = 1;
      }

      else
      {
        v33 = v16;
      }

      *(*(*(a1 + 64) + 8) + 24) = (*(*(a1 + 56) + 16))(*(a1 + 56), v19, v10, v35, v15, v33, 0, a4, v12, v13, v11, v12, v13);
    }

    v32 = *(*(*(a1 + 64) + 8) + 24);
  }

  else
  {
    v21 = *(a1 + 136);
    v19 = v8;
    v22 = [[HDQuantitySampleSeriesDataEnumerator alloc] initWithTransaction:*(a1 + 32) persistentID:v8 dataTypeCode:v10 UUIDBytes:v35 startTime:v16 endTime:v15 count:v12 sourceID:v13 HFDKey:HDSQLiteColumnAsInt64() bufferSize:119];
    v36 = 0;
    v23 = [(HDQuantitySampleSeriesDataEnumerator *)v22 primeEnumeratorWithError:&v36];
    v24 = v36;
    v25 = v24;
    if (v23)
    {
      v20 = [(HDQuantitySampleSeriesDataEnumerator *)v22 done];
      if (!v20)
      {
        [*(a1 + 40) addObject:v22];
      }

      goto LABEL_15;
    }

    v26 = v24;
    if (v26)
    {
      if (a4)
      {
        v27 = v26;
        *a4 = v26;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

LABEL_27:
    v32 = 0;
  }

  return v32 & 1;
}

+ (uint64_t)_enumerateWithEnumerator:(void *)enumerator endTime:(void *)time error:(void *)error handler:
{
  enumeratorCopy = enumerator;
  errorCopy = error;
  objc_opt_self();
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__131;
  v29 = __Block_byref_object_dispose__131;
  v30 = 0;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __82__HDQuantitySampleValueEnumerator__enumerateWithEnumerator_endTime_error_handler___block_invoke;
  v19[3] = &unk_278625998;
  v22 = &v35;
  v23 = &v31;
  v10 = errorCopy;
  v21 = v10;
  v11 = enumeratorCopy;
  v20 = v11;
  v24 = &v25;
  v12 = [v11 enumerateDataToTime:time error:v19 handler:self];
  v13 = v26[5];
  if (!v12)
  {
    if (!v13)
    {
LABEL_11:
      v14 = 0;
      goto LABEL_12;
    }

LABEL_7:
    v15 = v13;
    v16 = v15;
    if (time)
    {
      v17 = v15;
      *time = v16;
    }

    else
    {
      _HKLogDroppedError();
    }

    goto LABEL_11;
  }

  if (v13)
  {
    goto LABEL_7;
  }

  if (*(v36 + 24) == 1 && *(v32 + 24) != 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = 3;
  }

LABEL_12:

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v35, 8);

  return v14;
}

uint64_t __88__HDQuantitySampleValueEnumerator__enumerateWithEnumerator_endTime_error_sampleHandler___block_invoke(uint64_t a1, double a2, double a3, double a4)
{
  *(*(*(a1 + 48) + 8) + 24) = 1;
  v8 = *(a1 + 40);
  v9 = [*(a1 + 32) persistentID];
  v10 = *(*(a1 + 64) + 8);
  obj = *(v10 + 40);
  LOBYTE(v8) = (*(v8 + 16))(v8, v9, &obj, a4, a2, a3);
  objc_storeStrong((v10 + 40), obj);
  *(*(*(a1 + 56) + 8) + 24) = v8;
  return *(*(*(a1 + 56) + 8) + 24);
}

+ (uint64_t)_enumerateWithEnumerator:(void *)enumerator endTime:(void *)time error:(void *)error sourceHandler:
{
  enumeratorCopy = enumerator;
  errorCopy = error;
  objc_opt_self();
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__131;
  v29 = __Block_byref_object_dispose__131;
  v30 = 0;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __88__HDQuantitySampleValueEnumerator__enumerateWithEnumerator_endTime_error_sourceHandler___block_invoke;
  v19[3] = &unk_278625998;
  v22 = &v35;
  v23 = &v31;
  v10 = errorCopy;
  v21 = v10;
  v11 = enumeratorCopy;
  v20 = v11;
  v24 = &v25;
  v12 = [v11 enumerateDataToTime:time error:v19 handler:self];
  v13 = v26[5];
  if (!v12)
  {
    if (!v13)
    {
LABEL_11:
      v14 = 0;
      goto LABEL_12;
    }

LABEL_7:
    v15 = v13;
    v16 = v15;
    if (time)
    {
      v17 = v15;
      *time = v16;
    }

    else
    {
      _HKLogDroppedError();
    }

    goto LABEL_11;
  }

  if (v13)
  {
    goto LABEL_7;
  }

  if (*(v36 + 24) == 1 && *(v32 + 24) != 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = 3;
  }

LABEL_12:

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v35, 8);

  return v14;
}

uint64_t __88__HDQuantitySampleValueEnumerator__enumerateWithEnumerator_endTime_error_sourceHandler___block_invoke(uint64_t a1, uint64_t a2, double a3, double a4, double a5)
{
  *(*(*(a1 + 48) + 8) + 24) = 1;
  v10 = *(a1 + 40);
  v11 = [*(a1 + 32) persistentID];
  v12 = [*(a1 + 32) sourceID];
  v13 = *(*(a1 + 64) + 8);
  obj = *(v13 + 40);
  LOBYTE(a2) = (*(v10 + 16))(v10, v11, v12, a2, &obj, a5, a3, a4);
  objc_storeStrong((v13 + 40), obj);
  *(*(*(a1 + 56) + 8) + 24) = a2;
  return *(*(*(a1 + 56) + 8) + 24);
}

uint64_t __82__HDQuantitySampleValueEnumerator__enumerateWithEnumerator_endTime_error_handler___block_invoke(uint64_t a1, uint64_t a2, double a3, double a4, double a5)
{
  *(*(*(a1 + 48) + 8) + 24) = 1;
  v10 = *(a1 + 40);
  v11 = [*(a1 + 32) persistentID];
  v12 = [*(a1 + 32) dataTypeCode];
  v13 = [*(a1 + 32) UUIDBytesPtr];
  [*(a1 + 32) startTime];
  v15 = v14;
  [*(a1 + 32) endTime];
  v17 = v16;
  v18 = [*(a1 + 32) sourceID];
  v19 = [*(a1 + 32) count];
  v20 = *(*(a1 + 64) + 8);
  obj = *(v20 + 40);
  LOBYTE(a2) = (*(v10 + 16))(v10, v11, v12, v13, v18, v19, a2, &obj, v15, v17, a5, a3, a4);
  objc_storeStrong((v20 + 40), obj);
  *(*(*(a1 + 56) + 8) + 24) = a2;
  return *(*(*(a1 + 56) + 8) + 24);
}

+ (BOOL)quantityValuesWithSourceForType:(id)type from:(id)from to:(id)to dataInterval:(id)interval table:(id)table transaction:(id)transaction error:(id *)error handler:(id)self0
{
  typeCopy = type;
  fromCopy = from;
  toCopy = to;
  intervalCopy = interval;
  tableCopy = table;
  transactionCopy = transaction;
  handlerCopy = handler;
  v22 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(typeCopy, "code")}];
  v66 = &stru_283BF39C8;
  v45 = handlerCopy;
  v57 = transactionCopy;
  if (fromCopy && toCopy)
  {
    v23 = v22;
    if (intervalCopy)
    {
      v24 = MEMORY[0x277CCACA8];
      [intervalCopy timeIntervalSinceReferenceDate];
      v66 = [v24 stringWithFormat:@"AND samples.start_date >= %f", v25 + -0.001];
    }
  }

  else
  {
    v23 = v22;
  }

  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  features = [mEMORY[0x277CCDD30] features];
  workoutTempTableChanges = [features workoutTempTableChanges];

  v44 = typeCopy;
  v60 = tableCopy;
  v61 = v23;
  if (workoutTempTableChanges)
  {
    v65 = [MEMORY[0x277CCACA8] stringWithFormat:@"AND (%@.sample_type = %@)", tableCopy, v23];
  }

  else
  {
    v65 = &stru_283BF39C8;
  }

  v58 = MEMORY[0x277CCACA8];
  v64 = +[(HDSQLiteSchemaEntity *)HDSampleEntity];
  v63 = +[(HDSQLiteSchemaEntity *)HDQuantitySampleEntity];
  v62 = +[(HDSQLiteSchemaEntity *)HDDataProvenanceEntity];
  v56 = +[(HDSQLiteSchemaEntity *)HDSampleEntity];
  v55 = +[(HDSQLiteSchemaEntity *)HDSampleEntity];
  v54 = +[(HDSQLiteSchemaEntity *)HDQuantitySampleSeriesEntity];
  v53 = +[(HDSQLiteSchemaEntity *)HDQuantitySampleSeriesEntity];
  v52 = +[(HDSQLiteSchemaEntity *)HDDataEntity];
  v49 = +[(HDSQLiteSchemaEntity *)HDSampleEntity];
  v51 = +[(HDSQLiteSchemaEntity *)HDQuantitySampleEntity];
  v48 = +[(HDSQLiteSchemaEntity *)HDQuantitySampleSeriesEntity];
  v47 = +[(HDSQLiteSchemaEntity *)HDDataProvenanceEntity];
  v29 = +[(HDSQLiteSchemaEntity *)HDDataEntity];
  v50 = +[(HDSQLiteSchemaEntity *)HDDataProvenanceEntity];
  v30 = *MEMORY[0x277D10A40];
  v31 = +[(HDSQLiteSchemaEntity *)HDSampleEntity];
  +[(HDSQLiteSchemaEntity *)HDSampleEntity];
  v32 = v43 = v30;
  v59 = [v58 stringWithFormat:@"SELECT                      %@.%@, %@.%@, %@.%@, %@.%@, %@.%@, %@.%@, %@.%@                      FROM %@                      INNER JOIN %@ USING(%@)                      INNER JOIN %@ USING(%@)                      INNER JOIN %@ USING(%@)                      LEFT JOIN %@ USING(%@)                      INNER JOIN %@ ON %@.%@=%@.%@                      WHERE(                     (%@.%@ = %@)                      %@                      %@                     )                      ORDER BY %@.%@ ASC", v64, @"data_id", v63, @"quantity", v62, @"source_id", v56, @"start_date", v55, @"end_date", v54, @"hfd_key", v53, @"insertion_era", tableCopy, v52, @"uuid", v49, @"data_id", v51, @"data_id", v48, @"data_id", v47, v29, @"provenance", v50, v43, v31, @"data_type", v23, v66, v65, v32, @"start_date"];

  v33 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v74 = 0;
  v75 = &v74;
  v76 = 0x2020000000;
  v77 = 1;
  v34 = [v57 databaseForEntityClass:objc_opt_class()];
  v67[0] = MEMORY[0x277D85DD0];
  v67[1] = 3221225472;
  v67[2] = __120__HDQuantitySampleValueEnumerator_quantityValuesWithSourceForType_from_to_dataInterval_table_transaction_error_handler___block_invoke_2;
  v67[3] = &unk_2786259C0;
  v35 = v57;
  v68 = v35;
  v36 = v33;
  v69 = v36;
  v70 = &__block_literal_global_322_1;
  selfCopy = self;
  v37 = v45;
  v71 = v37;
  v72 = &v74;
  if ([v34 executeUncachedSQL:v59 error:error bindingHandler:0 enumerationHandler:v67])
  {
    if (*(v75 + 24) == 1)
    {
      while (1)
      {
        if (![v36 count])
        {
          goto LABEL_18;
        }

        v38 = [v36 hk_firstSortedObjectWithComparison:&__block_literal_global_322_1];
        [v38 nextDatumTime];
        v40 = [(HDQuantitySampleValueEnumerator *)v39 _enumerateWithEnumerator:self endTime:v38 error:error sourceHandler:v37];
        if ([v38 done])
        {
          [v36 removeObject:v38];
        }

        if (!v40)
        {
          break;
        }

        if (v40 == 1)
        {
          v41 = 1;
LABEL_21:

          goto LABEL_22;
        }
      }

      v41 = 0;
      goto LABEL_21;
    }

LABEL_18:
    v41 = 1;
  }

  else
  {
    v41 = 0;
  }

LABEL_22:

  _Block_object_dispose(&v74, 8);
  return v41;
}

uint64_t __120__HDQuantitySampleValueEnumerator_quantityValuesWithSourceForType_from_to_dataInterval_table_transaction_error_handler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = HDSQLiteColumnAsInt64();
  v7 = MEMORY[0x22AAC6C50](a2, 1);
  HDSQLiteColumnAsInt64();
  v8 = MEMORY[0x22AAC6C50](a2, 3);
  v9 = MEMORY[0x22AAC6C50](a2, 4);
  v10 = MEMORY[0x22AAC6CD0](a2, 5);
  if (v10)
  {
    v11 = 0;
    while ([*(a1 + 40) count])
    {
      v12 = [*(a1 + 40) hk_firstSortedObjectWithComparison:*(a1 + 48)];
      if (!v10 || (v18 = v8, [*(a1 + 40) count] != 1))
      {
        [(HDQuantitySampleSeriesDataEnumerator *)v12 nextDatumTime];
        if (v8 >= v19)
        {
          v18 = v19;
        }

        else
        {
          v18 = v8;
        }
      }

      [(HDQuantitySampleSeriesDataEnumerator *)v12 nextDatumTime];
      if (v18 < v20)
      {

        break;
      }

      v21 = [(HDQuantitySampleValueEnumerator *)v18 _enumerateWithEnumerator:v12 endTime:a3 error:*(a1 + 56) sourceHandler:?];
      if ([(HDQuantitySampleSeriesDataEnumerator *)v12 done])
      {
        [*(a1 + 40) removeObject:v12];
      }

      if (v21 <= 1)
      {
        *(*(*(a1 + 64) + 8) + 24) = 0;
        goto LABEL_24;
      }

LABEL_12:
    }

    if ((v10 | v11) == 1 && *(*(*(a1 + 64) + 8) + 24) == 1)
    {
      *(*(*(a1 + 64) + 8) + 24) = (*(*(a1 + 56) + 16))(v7, v8, v9);
    }

    v22 = *(*(*(a1 + 64) + 8) + 24);
  }

  else
  {
    v12 = [[HDQuantitySampleSeriesDataEnumerator alloc] initWithTransaction:*(a1 + 32) persistentID:v6 startTime:HDSQLiteColumnAsInt64() endTime:v8 HFDKey:v9];
    v24 = 0;
    v13 = [(HDQuantitySampleSeriesDataEnumerator *)v12 primeEnumeratorWithError:&v24];
    v14 = v24;
    v15 = v14;
    if (v13)
    {
      v11 = [(HDQuantitySampleSeriesDataEnumerator *)v12 done];
      if (!v11)
      {
        [*(a1 + 40) addObject:v12];
      }

      goto LABEL_12;
    }

    v16 = v14;
    if (v16)
    {
      if (a3)
      {
        v17 = v16;
        *a3 = v16;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

LABEL_24:
    v22 = 0;
  }

  return v22 & 1;
}

+ (BOOL)quantityValuesForType:(id)type from:(id)from to:(id)to transaction:(id)transaction error:(id *)error handler:(id)handler
{
  typeCopy = type;
  fromCopy = from;
  toCopy = to;
  transactionCopy = transaction;
  handlerCopy = handler;
  v16 = objc_alloc_init(MEMORY[0x277CCAB68]);
  if (toCopy)
  {
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"AND %@ <= %@", @"start_date", @"end_date"];
    [v16 appendString:v17];
  }

  v39 = toCopy;
  v40 = fromCopy;
  v43 = handlerCopy;
  if (fromCopy)
  {
    v18 = [fromCopy dateByAddingTimeInterval:-86400.0];
    v19 = MEMORY[0x277CCACA8];
    [v18 timeIntervalSinceReferenceDate];
    v21 = [v19 stringWithFormat:@" AND %@ >= %f", @"start_date", v20];
    [v16 appendString:v21];
    v22 = MEMORY[0x277CCACA8];
    [fromCopy timeIntervalSinceReferenceDate];
    v24 = [v22 stringWithFormat:@" AND %@ >= %f", @"end_date", v23];
    [v16 appendString:v24];
  }

  v41 = typeCopy;
  v42 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(typeCopy, "code")}];
  v56 = MEMORY[0x277CCACA8];
  v55 = +[(HDSQLiteSchemaEntity *)HDQuantitySampleEntity];
  v54 = +[(HDSQLiteSchemaEntity *)HDQuantitySampleEntity];
  v53 = +[(HDSQLiteSchemaEntity *)HDQuantitySampleSeriesEntity];
  v52 = +[(HDSQLiteSchemaEntity *)HDSampleEntity];
  v51 = +[(HDSQLiteSchemaEntity *)HDSampleEntity];
  v50 = +[(HDSQLiteSchemaEntity *)HDQuantitySampleEntity];
  v59 = +[(HDSQLiteSchemaEntity *)HDQuantitySampleSeriesEntity];
  v49 = +[(HDSQLiteSchemaEntity *)HDQuantitySampleEntity];
  v48 = +[(HDSQLiteSchemaEntity *)HDQuantitySampleSeriesEntity];
  v47 = +[(HDSQLiteSchemaEntity *)HDSampleEntity];
  v46 = +[(HDSQLiteSchemaEntity *)HDSampleEntity];
  v45 = +[(HDSQLiteSchemaEntity *)HDSampleEntity];
  v25 = +[(HDSQLiteSchemaEntity *)HDSampleEntity];
  v26 = +[(HDSQLiteSchemaEntity *)HDSampleEntity];
  v27 = +[(HDSQLiteSchemaEntity *)HDQuantitySampleEntity];
  v58 = [v56 stringWithFormat:@"SELECT %@.data_id, %@.quantity, sam.%@, sam.%@, %@.hfd_key                                                  FROM                                                     (SELECT %@, %@, %@                                                         FROM %@                                                         WHERE %@.data_type  = ?                                                         %@) sam                                                         INNER JOIN %@ USING(%@)                                                         LEFT JOIN %@ USING(%@)                                                                                                   UNION                                                                                                   SELECT sam.%@, %@.quantity, sam.%@, sam.%@, series.%@                                                  FROM                                                     (SELECT %@, %@                                                     FROM %@                                                     WHERE %@ is NOT NULL) series                                                  CROSS JOIN(                                                 SELECT %@.%@, %@.%@, %@.%@                                                  FROM %@                                                  WHERE %@.%@ = ?) sam ON sam.%@ = series.%@                                                  INNER JOIN %@ USING(%@)", v55, v54, @"start_date", @"end_date", v53, @"data_id", @"start_date", @"end_date", v52, v51, v16, v50, @"data_id", v59, @"data_id", @"data_id", v49, @"start_date", @"end_date", @"hfd_key", @"data_id", @"hfd_key", v48, @"insertion_era", v47, @"data_id", v46, @"start_date", v45, @"end_date", v25, v26, @"data_type", @"data_id", @"data_id", v27, @"data_id", 0];

  v28 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v70 = 0;
  v71 = &v70;
  v72 = 0x2020000000;
  v73 = 1;
  v29 = [transactionCopy databaseForEntityClass:objc_opt_class()];
  v68[0] = MEMORY[0x277D85DD0];
  v68[1] = 3221225472;
  v68[2] = __91__HDQuantitySampleValueEnumerator_quantityValuesForType_from_to_transaction_error_handler___block_invoke_2;
  v68[3] = &unk_278614860;
  v30 = v42;
  v69 = v30;
  v61[0] = MEMORY[0x277D85DD0];
  v61[1] = 3221225472;
  v61[2] = __91__HDQuantitySampleValueEnumerator_quantityValuesForType_from_to_transaction_error_handler___block_invoke_3;
  v61[3] = &unk_2786259C0;
  v31 = transactionCopy;
  v62 = v31;
  v32 = v28;
  v63 = v32;
  v64 = &__block_literal_global_335;
  selfCopy = self;
  v33 = v43;
  v65 = v33;
  v66 = &v70;
  if ([v29 executeSQL:v58 error:error bindingHandler:v68 enumerationHandler:v61])
  {
    if (*(v71 + 24) == 1)
    {
      while (1)
      {
        if (![v32 count])
        {
          goto LABEL_14;
        }

        v34 = [v32 hk_firstSortedObjectWithComparison:&__block_literal_global_335];
        [v34 nextDatumTime];
        v36 = [(HDQuantitySampleValueEnumerator *)v35 _enumerateWithEnumerator:self endTime:v34 error:error sampleHandler:v33];
        if ([v34 done])
        {
          [v32 removeObject:v34];
        }

        if (!v36)
        {
          break;
        }

        if (v36 == 1)
        {
          v37 = 1;
LABEL_17:

          goto LABEL_18;
        }
      }

      v37 = 0;
      goto LABEL_17;
    }

LABEL_14:
    v37 = 1;
  }

  else
  {
    v37 = 0;
  }

LABEL_18:

  _Block_object_dispose(&v70, 8);
  return v37;
}

uint64_t __91__HDQuantitySampleValueEnumerator_quantityValuesForType_from_to_transaction_error_handler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  HDSQLiteBindFoundationValueToStatement();
  v3 = *(a1 + 32);

  return HDSQLiteBindFoundationValueToStatement();
}

uint64_t __91__HDQuantitySampleValueEnumerator_quantityValuesForType_from_to_transaction_error_handler___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = HDSQLiteColumnAsInt64();
  v7 = MEMORY[0x22AAC6C50](a2, 1);
  v8 = MEMORY[0x22AAC6C50](a2, 2);
  v9 = MEMORY[0x22AAC6C50](a2, 3);
  v10 = MEMORY[0x22AAC6CD0](a2, 4);
  if (v10)
  {
    v11 = 0;
    while ([*(a1 + 40) count])
    {
      v12 = [*(a1 + 40) hk_firstSortedObjectWithComparison:*(a1 + 48)];
      if (!v10 || (v18 = v8, [*(a1 + 40) count] != 1))
      {
        [(HDQuantitySampleSeriesDataEnumerator *)v12 nextDatumTime];
        if (v8 >= v19)
        {
          v18 = v19;
        }

        else
        {
          v18 = v8;
        }
      }

      [(HDQuantitySampleSeriesDataEnumerator *)v12 nextDatumTime];
      if (v18 < v20)
      {

        break;
      }

      v21 = [(HDQuantitySampleValueEnumerator *)v18 _enumerateWithEnumerator:v12 endTime:a3 error:*(a1 + 56) sampleHandler:?];
      if ([(HDQuantitySampleSeriesDataEnumerator *)v12 done])
      {
        [*(a1 + 40) removeObject:v12];
      }

      if (v21 <= 1)
      {
        *(*(*(a1 + 64) + 8) + 24) = 0;
        goto LABEL_24;
      }

LABEL_12:
    }

    if ((v10 | v11) == 1 && *(*(*(a1 + 64) + 8) + 24) == 1)
    {
      *(*(*(a1 + 64) + 8) + 24) = (*(*(a1 + 56) + 16))(v7, v8, v9);
    }

    v22 = *(*(*(a1 + 64) + 8) + 24);
  }

  else
  {
    v12 = [[HDQuantitySampleSeriesDataEnumerator alloc] initWithTransaction:*(a1 + 32) persistentID:v6 startTime:HDSQLiteColumnAsInt64() endTime:v8 HFDKey:v9];
    v24 = 0;
    v13 = [(HDQuantitySampleSeriesDataEnumerator *)v12 primeEnumeratorWithError:&v24];
    v14 = v24;
    v15 = v14;
    if (v13)
    {
      v11 = [(HDQuantitySampleSeriesDataEnumerator *)v12 done];
      if (!v11)
      {
        [*(a1 + 40) addObject:v12];
      }

      goto LABEL_12;
    }

    v16 = v14;
    if (v16)
    {
      if (a3)
      {
        v17 = v16;
        *a3 = v16;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

LABEL_24:
    v22 = 0;
  }

  return v22 & 1;
}

@end