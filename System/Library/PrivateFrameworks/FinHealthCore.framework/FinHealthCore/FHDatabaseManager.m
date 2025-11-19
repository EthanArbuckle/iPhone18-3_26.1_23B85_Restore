@interface FHDatabaseManager
- (BOOL)_computeSingleAmountAggregateFeature:(id)a3;
- (BOOL)_computeSingleDatetimeAggregateFeature:(id)a3;
- (BOOL)_computeSingleMerchantAggregateFeature:(id)a3;
- (BOOL)_execute:(id)a3;
- (BOOL)_executeRaw:(id)a3;
- (BOOL)_hasDeterministicRealtime:(id)a3;
- (BOOL)_insertOrUpdateTransactionFeatures:(id)a3 compoundFeatures:(id)a4 transactionID:(id)a5 financeTransactionID:(id)a6;
- (BOOL)_isDatabaseCorrupt;
- (BOOL)_isEligibleForSchemaMigration;
- (BOOL)_predictAndPersistIncomeClassification:(id)a3 dataId:(id)a4 dataType:(int64_t)a5 features:(id)a6;
- (BOOL)_truncateDatabase;
- (BOOL)_updateTransaction:(id)a3 withNewInternalState:(unint64_t)a4;
- (BOOL)computeAmountAggregateFeatures;
- (BOOL)computeDatetimeAggregateFeatures;
- (BOOL)computeMerchantAggregateFeatures;
- (BOOL)deleteAllFeatureRecordsForTransaction:(id)a3;
- (BOOL)deleteAllMarkedTransactionFeatures;
- (BOOL)deleteAllRecordsFromTransactionFeatures;
- (BOOL)deleteAllRecordsInAccountInfoForTransactionSource:(id)a3;
- (BOOL)deleteAllRecordsInPeerPaymentFeatures:(id)a3;
- (BOOL)deleteAllRecordsInTransactions:(id)a3;
- (BOOL)deleteBankConnectTransactionWithFinanceTransactionIdentifier:(id)a3;
- (BOOL)deleteDatabase:(id *)a3;
- (BOOL)deleteTaggedButDeletedEvent:(id)a3;
- (BOOL)deleteTaggedEventsInTimeRange:(id)a3 startDate:(id)a4 comparatorOfEndDate:(id)a5 endDate:(id)a6;
- (BOOL)deleteTransactionWithIdentifier:(id)a3;
- (BOOL)deleteWithRollBack:(BOOL)a3 SQL:(id)a4 args:(char *)a5;
- (BOOL)executeAsPreparedStatement:(id)a3 values:(id)a4;
- (BOOL)groupingSchemaUpdate;
- (BOOL)insertFeatures:(id)a3 realtimeFeatures:(id)a4;
- (BOOL)insertFeaturesCompoundRealtime:(id)a3 realtimeFeatures:(id)a4;
- (BOOL)insertFeaturesCompoundRealtimeWithoutEvents:(id)a3 realtimeFeatures:(id)a4;
- (BOOL)insertFeaturesDeterminiticRealtime:(id)a3 realtimeFeatures:(id)a4;
- (BOOL)insertFeaturesEvents:(id)a3;
- (BOOL)insertFeaturesPredictedRealtime:(id)a3 realtimeFeatures:(id)a4;
- (BOOL)insertGroupForTransaction:(id)a3 withGroup:(id)a4 type:(unint64_t)a5;
- (BOOL)insertInstrumentationRecord:(id)a3;
- (BOOL)insertModelPredictionLabel:(id)a3 modelVersion:(id)a4 label:(id)a5;
- (BOOL)insertModelRecord:(id)a3;
- (BOOL)insertOrUpdateBankConnectAccount:(id)a3;
- (BOOL)insertReceiptData:(id)a3 identifier:(id)a4 title:(id)a5 subtitle:(id)a6 quantity:(unint64_t)a7 amount:(id)a8 currencyCode:(id)a9 adamIdentifier:(unint64_t)a10;
- (BOOL)insertTransactionInInternalStateDirty:(id)a3;
- (BOOL)recordPeerPaymentForecastingStatus:(unint64_t)a3 counterpartHandle:(id)a4 amount:(id)a5;
- (BOOL)shouldCallGetAllTransactions;
- (BOOL)updateFinanceIdentifiers:(id)a3;
- (BOOL)updateGetAllStatus:(unint64_t)a3;
- (BOOL)updatePeerPaymentAccountBalance:(id)a3 amount:(id)a4 currencyCode:(id)a5;
- (BOOL)updateStateForTransaction:(id)a3 newState:(unint64_t)a4;
- (BOOL)updateTransactionInternalStateByIdentifier:(id)a3 newInternalState:(unint64_t)a4;
- (BOOL)updateTransactionsInternalStateToState:(id)a3 oldInternalState:(unint64_t)a4 newInternalState:(unint64_t)a5;
- (FHFetchAllTransactionsDelegate)delegate;
- (id)_buildTransactionIdFilter:(id)a3;
- (id)_columnNamesForTable:(id)a3;
- (id)_computeDisputeFeaturesForTransaction:(id)a3;
- (id)_computePaymentFeaturesForTransaction:(id)a3;
- (id)_createFeatureResponseFromFeatures:(id)a3 compoundFeatures:(id)a4 locale:(id)a5 forTxnID:(id)a6 forApplication:(id)a7;
- (id)_fetch:(id)a3;
- (id)_fetchv:(id)a3 args:(char *)a4;
- (id)_filterAggregateFeatureByCurrentWindow:(id)a3;
- (id)_filterPeriodicCategories:(id)a3;
- (id)_getAllTransactions:(unint64_t)a3 limit:(unint64_t)a4;
- (id)_getDisputeFeaturesForTransaction:(id)a3;
- (id)_getTransactionByIdentifier:(id)a3;
- (id)_getTransactionsMarkedForRecurrChange;
- (id)_lockFreeFetch:(id)a3;
- (id)_predictAndPersistIncomeClassificationForGroupId:(id)a3 transactionIds:(id)a4 finHealthIncomeClassifier:(id)a5;
- (id)compoundFeaturesForTransaction:(id)a3;
- (id)computeAndPersistTransactionGroupings;
- (id)featuresForTransaction:(id)a3;
- (id)getAllPeerPaymentSignalsFilterDismissed:(BOOL)a3;
- (id)getCurrentCashBalance;
- (id)getExpectedWeeklySpend;
- (id)getFHAccounts;
- (id)getFHSmartFeatureByAmountType:(id)a3;
- (id)getFHSmartFeatureByDateTimeType:(id)a3;
- (id)getFHSmartFeatureByMerchantType:(id)a3;
- (id)getFeaturePredicate:(id)a3 FHSmartFeatureAggregateType:(id)a4;
- (id)getFilteredPeerPaymentForecastingSignals;
- (id)getRecurringTransactionIdentifiersByClass:(unint64_t)a3;
- (id)getTaggedPastCalendarEvents;
- (id)getTransactionByFinanceTransactionIdentifier:(id)a3;
- (id)getTransactionIdByServiceId:(id)a3;
- (id)getTransactionIdsInTimeRangeFrom:(id)a3 to:(id)a4;
- (id)getTransactionSmartFeaturesForApplication:(id)a3;
- (id)getTransactionsByDetailedCategory:(id)a3;
- (id)getTransactionsByInternalState:(unint64_t)a3 internalState:(unint64_t)a4 offSet:(unint64_t)a5 addCompoundFeatures:(BOOL)a6;
- (id)predictAndPersistIncomeClassificationForAllGroups:(id)a3;
- (id)processingDataForFeature:(id)a3;
- (id)reconstructTransaction:(id)a3;
- (id)retrieveGroups;
- (id)transactionsByGroupId:(id)a3;
- (int)streamTransactionsWithLimit:(unint64_t)a3 internalState:(unint64_t)a4 offSet:(unint64_t)a5 onTransaction:(id)a6;
- (int64_t)_mostRecentTransactionDate;
- (int64_t)_startingDateSmartFeatureComputation;
- (int64_t)getAccountCategoryForIdentifier:(id)a3;
- (unint64_t)getTransactionInternalState:(id)a3;
- (unint64_t)processingTimeForFeature:(id)a3;
- (unint64_t)streamGenericSQLFetch:(id)a3 predicate:(id)a4 sqlFetchQuery:(id)a5;
- (unint64_t)streamQueryResults:(id)a3 usingFetchHandler:(id)a4;
- (void)_addColumnIfNotExists:(id)a3 columnName:(id)a4 columnType:(id)a5;
- (void)_checkUniqueConstraints:(id)a3 uniqueConstraintSet:(id)a4;
- (void)_computeAllAggregateFeaturesWithTransactionId:(id)a3;
- (void)_createDataDirectory;
- (void)_executeFeatureQuery:(id)a3 aggregatedFeatures:(id)a4;
- (void)_executeSeparateQueriesForTransactionId:(id)a3 amountQueries:(id)a4 dateTimeQueries:(id)a5 merchantQueries:(id)a6 multiClassQuery:(id)a7;
- (void)_executeSeparateQueriesForTransactionIds:(id)a3 amountQueries:(id)a4 dateTimeQueries:(id)a5 merchantQueries:(id)a6 multiClassQuery:(id)a7;
- (void)_instrumentationTableMigration;
- (void)_invertFeaturesForTransaction:(id)a3 featuresString:(id)a4 compoundFeatures:(id)a5;
- (void)_logSchema:(id)a3;
- (void)_populateMerchantEntityRecurringClassHistograms:(id)a3 transaction:(id)a4;
- (void)_rebuildTablesAndIndexes:(BOOL)a3;
- (void)_updateAggregateTablesSchema;
- (void)clearCardProcessingHistory;
- (void)closeAndUnlock:(id)a3;
- (void)computeAndPersistDisputeFeaturesForPendingTransactions;
- (void)computePaymentFeatures;
- (void)computeRecurringClassesWithMerchantEntityCounts:(id)a3 peerPaymentCounts:(id)a4 merchantDetailedCategoryCounts:(id)a5;
- (void)dealloc;
- (void)deleteAllDataForTransactionSourceIdentifier:(id)a3 force:(BOOL)a4 completion:(id)a5;
- (void)populateRecurringClassHistogramsWithMerchantDetailedCategoryCounts:(id)a3 histogram:(id)a4 transaction:(id)a5;
- (void)populateRecurringClassHistogramsWithPeerPaymentsCounts:(id)a3 histogram:(id)a4 transaction:(id)a5;
- (void)predictRecurringTransactions;
- (void)publishEventsToBiome;
- (void)retrieveAll;
- (void)updateProcessingTimeForFeature:(id)a3;
- (void)updateProcessingTimeForFeature:(id)a3 data:(id)a4;
@end

@implementation FHDatabaseManager

- (void)_createDataDirectory
{
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [(FHDatabaseManager *)self _getDataDirectory];
  v5 = 0;
  [v3 createDirectoryAtPath:v4 withIntermediateDirectories:1 attributes:0 error:&v5];
}

- (BOOL)_isEligibleForSchemaMigration
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [(FHDatabaseManager *)self _fetch:@"select sch_version_id, sch_upgrade_status from fh_schema order by sch_id desc limit %d", 1];;
  v4 = [MEMORY[0x277CCA980] decimalNumberWithString:@"11.11"];
  v5 = [MEMORY[0x277CCA980] decimalNumberWithString:@"0.0"];
  if ([v3 next])
  {
    v6 = MEMORY[0x277CCA980];
    v7 = [v3 stringAtIndex:0];
    v8 = [v6 decimalNumberWithString:v7];

    v9 = [v3 unsignedIntegerAtIndex:1] == 2;
    v5 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = [MEMORY[0x277CCA980] decimalNumberWithString:@"0.0"];
  v11 = [v5 isEqual:v10];

  if (v11)
  {
    v12 = [MEMORY[0x277CBEAA8] now];
    [v12 timeIntervalSinceReferenceDate];
    v14 = v13;

    v15 = [(FHDatabaseManager *)self _execute:@"insert into fh_schema (sch_version_id, sch_upgrade_status, sch_date, sch_getall_status) values (%@, %d, %d, %d)", @"11.11", 2, v14, 0];
    v16 = FinHealthLogObject(@"FinHealthCore");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v17 = @"Fail";
      if (v15)
      {
        v17 = @"Success";
      }

      *buf = 138412290;
      v22 = v17;
      _os_log_impl(&dword_226DD4000, v16, OS_LOG_TYPE_DEBUG, "createSchemaVersionRecord: %@", buf, 0xCu);
    }
  }

  [(FHDatabaseManager *)self closeAndUnlock:v3];
  v18 = [v5 isEqual:v4];

  v19 = *MEMORY[0x277D85DE8];
  return v18 & v9 ^ 1;
}

- (void)_logSchema:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = [(FHDatabaseManager *)self _fetch:@"select sql from sqlite_master where type='table' and name=%@", a3];;
  if ([v4 next])
  {
    v5 = FinHealthLogObject(@"FinHealthCore");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = [v4 stringAtIndex:0];
      *buf = 138412290;
      v9 = v6;
      _os_log_impl(&dword_226DD4000, v5, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }
  }

  [(FHDatabaseManager *)self closeAndUnlock:v4];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_updateAggregateTablesSchema
{
  v49 = *MEMORY[0x277D85DE8];
  v3 = [(FHDatabaseManager *)self _fetch:@"select count(*) from PRAGMA_TABLE_INFO('features_datetime')"];;
  if ([v3 next])
  {
    v4 = [v3 intAtIndex:0];
    [(FHDatabaseManager *)self closeAndUnlock:v3];
    if (v4 <= 4)
    {
      v5 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"features_datetime", @"features_amount", @"features_detailed_category", 0}];
      v6 = FinHealthLogObject(@"FinHealthCore");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_226DD4000, v6, OS_LOG_TYPE_DEBUG, "Aggreagate tables are out of date. Drop and re-create", buf, 2u);
      }

      v7 = FinHealthLogObject(@"FinHealthCore");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_226DD4000, v7, OS_LOG_TYPE_DEBUG, "Schema before change:", buf, 2u);
      }

      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v8 = v5;
      v9 = [v8 countByEnumeratingWithState:&v42 objects:v48 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v43;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v43 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v42 + 1) + 8 * i);
            [(FHDatabaseManager *)self _logSchema:v13];
            v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"drop table if exists %@", v13];;
            [(FHDatabaseManager *)self _executeRaw:v14];
          }

          v10 = [v8 countByEnumeratingWithState:&v42 objects:v48 count:16];
        }

        while (v10);
      }

      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"create table %@ %@", @"features_merchant", @"(merchant_aggregate_id integer primary key autoincrement, merchant_aggregate_type text, merchant_aggregate_value text, start_date integer, end_date integer, UNIQUE(merchant_aggregate_type, start_date, end_date))"];;
      [(FHDatabaseManager *)self _executeRaw:v15];

      v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"create table %@ %@", @"features_detailed_category", @"(category_aggregate_id integer primary key autoincrement, detailed_category text, amount integer, transaction_count integer, country_code text, recurring_transaction_ratio real, time_of_day integer, time_window integer, start_date real, end_date real, UNIQUE(detailed_category, time_of_day, time_window, country_code))"];;
      [(FHDatabaseManager *)self _executeRaw:v16];

      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"create table %@ %@", @"features_datetime", @"(datetime_aggregate_id integer primary key autoincrement, datetime_aggregate_type text, datetime_aggregate_value_start_date integer, datetime_aggregate_value_end_date integer, start_date integer, end_date integer, UNIQUE(datetime_aggregate_type, start_date, end_date))"];;
      [(FHDatabaseManager *)self _executeRaw:v17];

      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"create table %@ %@", @"features_amount", @"(amount_aggregate_id integer primary key autoincrement, amount_aggregate_type text, amount_aggregate_value integer, comparison_operator text, start_date integer, end_date integer, UNIQUE(amount_aggregate_type, start_date, end_date))"];;
      [(FHDatabaseManager *)self _executeRaw:v18];

      v19 = FinHealthLogObject(@"FinHealthCore");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_226DD4000, v19, OS_LOG_TYPE_DEBUG, "Schema after change:", buf, 2u);
      }

      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v20 = v8;
      v21 = [v20 countByEnumeratingWithState:&v38 objects:v47 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v39;
        do
        {
          for (j = 0; j != v22; ++j)
          {
            if (*v39 != v23)
            {
              objc_enumerationMutation(v20);
            }

            [(FHDatabaseManager *)self _logSchema:*(*(&v38 + 1) + 8 * j)];
          }

          v22 = [v20 countByEnumeratingWithState:&v38 objects:v47 count:16];
        }

        while (v22);
      }
    }
  }

  else
  {
    [(FHDatabaseManager *)self closeAndUnlock:v3];
  }

  v25 = [(PQLConnection *)self->_db fetch:@"select sql from sqlite_master where type='table' and name=%@;", @"features_events"];

  if ([v25 next])
  {
    v26 = [v25 stringAtIndex:0];
  }

  else
  {
    v26 = &stru_283A7B918;
  }

  v37 = v25;
  [v25 close];
  v27 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@""];;
  v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"create table %@ %@", @"features_events", @"(e_id integer primary key autoincrement, e_identifier text, start_date integer, end_date integer, UNIQUE(e_identifier, start_date, end_date))"];;
  v36 = v26;
  v29 = [(__CFString *)v26 lowercaseString];
  v30 = [v29 stringByTrimmingCharactersInSet:v27];
  v31 = [v28 lowercaseString];
  v32 = [v31 stringByTrimmingCharactersInSet:v27];
  v33 = [v30 isEqualToString:v32];

  if ((v33 & 1) == 0)
  {
    [(FHDatabaseManager *)self _logSchema:@"features_events"];
    v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"drop table if exists %@", @"features_events"];;
    [(FHDatabaseManager *)self _executeRaw:v34];

    [(FHDatabaseManager *)self _executeRaw:v28];
    [(FHDatabaseManager *)self _logSchema:@"features_events"];
  }

  v35 = *MEMORY[0x277D85DE8];
}

void __48__FHDatabaseManager_init_multiThreadingEnabled___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  v8 = FinHealthLogObject(@"FinHealthCore");
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
  if (a3)
  {
    if (v9)
    {
LABEL_7:
      v11 = 138543618;
      v12 = v7;
      v13 = 2080;
      v14 = "[FHDatabaseManager init:multiThreadingEnabled:]_block_invoke";
      _os_log_impl(&dword_226DD4000, v8, OS_LOG_TYPE_ERROR, "Sqlite error: [%{public}@], %s", &v11, 0x16u);
    }
  }

  else
  {
    if (v9)
    {
      v11 = 138543618;
      v12 = v6;
      v13 = 2080;
      v14 = "[FHDatabaseManager init:multiThreadingEnabled:]_block_invoke";
      _os_log_impl(&dword_226DD4000, v8, OS_LOG_TYPE_ERROR, "Sqlite [no statement available] failed on %{public}@:, %s", &v11, 0x16u);
    }

    v8 = FinHealthLogObject(@"FinHealthCore");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

BOOL __48__FHDatabaseManager_init_multiThreadingEnabled___block_invoke_120(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = FinHealthLogObject(@"FinHealthCore");
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
  if (a3 >= 0xA)
  {
    if (v5)
    {
      v8 = 67109378;
      v9 = a3;
      v10 = 2080;
      v11 = "[FHDatabaseManager init:multiThreadingEnabled:]_block_invoke";
      _os_log_impl(&dword_226DD4000, v4, OS_LOG_TYPE_ERROR, "Exhautsed all retries :%d, %s", &v8, 0x12u);
    }
  }

  else
  {
    if (v5)
    {
      v8 = 67109378;
      v9 = a3;
      v10 = 2080;
      v11 = "[FHDatabaseManager init:multiThreadingEnabled:]_block_invoke";
      _os_log_impl(&dword_226DD4000, v4, OS_LOG_TYPE_ERROR, "Database is locked, retrying. retries :%d, %s", &v8, 0x12u);
    }

    sqlite3_sleep(200);
  }

  result = a3 < 0xA;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void __48__FHDatabaseManager_init_multiThreadingEnabled___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [v3 enableMerchantCounts];
    [v3 setDatabaseManager:WeakRetained];
    [v3 addInternalState:2];
  }

  else
  {
    v5 = FinHealthLogObject(@"FinHealthCore");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315138;
      v8 = "[FHDatabaseManager init:multiThreadingEnabled:]_block_invoke_2";
      _os_log_impl(&dword_226DD4000, v5, OS_LOG_TYPE_ERROR, "%s strongSelf is nil", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)insertTransactionInInternalStateDirty:(id)a3
{
  v4 = a3;
  v5 = [v4 transactionServiceIdentifier];

  if (v5)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __59__FHDatabaseManager_insertTransactionInInternalStateDirty___block_invoke;
    v11[3] = &unk_2785CB058;
    v12 = v4;
    v6 = [FHDatabaseClauseFromBuilder initWithBuilder:v11];
    [(FHDatabaseEntity *)self->_transactionsEntity clearDataWithClauseBuilder:v6];
  }

  v7 = [v4 identifier];
  v8 = [v4 transactionServiceIdentifier];
  v9 = [(FHDatabaseManager *)self _execute:@"insert into transactions (t_identifier, t_service_identifier, t_fh_internal_state) values (%@, %@, %d)", v7, v8, 1];

  return v9;
}

void __59__FHDatabaseManager_insertTransactionInInternalStateDirty___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 transactionServiceIdentifier];
  [v3 addStringClause:@"==" fieldName:@"transactions.t_service_identifier" expression:v4];
}

- (BOOL)updateFinanceIdentifiers:(id)a3
{
  v4 = a3;
  v5 = [v4 financeTransactionIdentifier];
  v6 = [v4 financeAccountIdentifier];
  v7 = [v4 transactionServiceIdentifier];

  LOBYTE(self) = [(FHDatabaseManager *)self _execute:@"update transactions set t_finance_transaction_id = %@, a_finance_account_id = %@ where t_service_identifier == %@", v5, v6, v7];
  return self;
}

- (BOOL)updateTransactionInternalStateByIdentifier:(id)a3 newInternalState:(unint64_t)a4
{
  v6 = [(FHDatabaseManager *)self getTransactionByIdentifier:a3];
  LOBYTE(a4) = [(FHDatabaseManager *)self _updateTransaction:v6 withNewInternalState:a4];

  return a4;
}

- (BOOL)_updateTransaction:(id)a3 withNewInternalState:(unint64_t)a4
{
  v5 = a3;
  if (!self->_descriptionCleaner)
  {
    v6 = FinHealthLogObject(@"FinHealthCore");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_226DD4000, v6, OS_LOG_TYPE_DEBUG, "Creating FHBankConnectDescriptionCleaner", buf, 2u);
    }

    v7 = objc_alloc_init(FHBankConnectDescriptionCleaner);
    descriptionCleaner = self->_descriptionCleaner;
    self->_descriptionCleaner = v7;
  }

  v9 = MEMORY[0x277CCA980];
  v10 = [v5 amount];
  v11 = v10;
  if (v10)
  {
    [v10 decimalValue];
  }

  else
  {
    *buf = 0;
    v104 = 0;
    v105 = 0;
  }

  v12 = [v9 decimalNumberWithDecimal:buf];

  v13 = [MEMORY[0x277CCA980] defaultDatabaseAmountMultiplier];
  v14 = [v12 decimalNumberByMultiplyingBy:v13];
  v83 = [v14 intValue];

  v15 = [v5 transactionDate];
  [v15 timeIntervalSinceReferenceDate];
  v17 = v16;

  v18 = [v5 transactionStatusChangedDate];
  [v18 timeIntervalSinceReferenceDate];
  v20 = v19;

  if ([v5 mapsMerchantID])
  {
    v102 = [MEMORY[0x277CCACA8] stringWithFormat:@"%llu", objc_msgSend(v5, "mapsMerchantID")];
  }

  else
  {
    v102 = 0;
  }

  if ([v5 mapsMerchantBrandID])
  {
    v101 = [MEMORY[0x277CCACA8] stringWithFormat:@"%llu", objc_msgSend(v5, "mapsMerchantBrandID")];
  }

  else
  {
    v101 = 0;
  }

  v21 = [v5 merchantDetailedCategory];
  if (v21)
  {
    v22 = [v5 merchantDetailedCategory];
  }

  else
  {
    v22 = @"undefined";
  }

  v100 = v22;

  v23 = [v5 timeZone];
  if (v23)
  {
    v24 = MEMORY[0x277CCABB0];
    v25 = [v5 timeZone];
    v99 = [v24 numberWithInteger:{objc_msgSend(v25, "secondsFromGMT")}];
  }

  else
  {
    v99 = 0;
  }

  v26 = [v5 peerPaymentCounterpartHandle];
  if (v26)
  {
    v98 = [v5 peerPaymentCounterpartHandle];
  }

  else
  {
    v98 = 0;
  }

  if ([v5 peerPaymentType])
  {
    v81 = [v5 peerPaymentType];
  }

  else
  {
    v81 = 0;
  }

  v96 = [v5 transactionDescription];
  v27 = [v5 processedDescription];
  v28 = v27;
  v82 = self;
  if (v27 && [v27 length])
  {
    v97 = v28;
  }

  else
  {
    v29 = [(FHBankConnectDescriptionCleaner *)self->_descriptionCleaner cleanDescriptionForTransaction:v5];

    v97 = v29;
  }

  v80 = v20;
  v79 = v17;
  v77 = [v5 recurring];
  v30 = [v5 disputeOpenDate];
  [v30 timeIntervalSinceReferenceDate];
  v76 = v31;

  v32 = [v5 disputeLastUpdatedDate];
  [v32 timeIntervalSinceReferenceDate];
  v74 = v33;

  v34 = [v5 financeAccountIdentifier];
  v35 = v34;
  v36 = &stru_283A7B918;
  if (v34)
  {
    v36 = v34;
  }

  v78 = v36;

  v94 = [v5 transactionServiceIdentifier];
  v93 = [v5 financeTransactionIdentifier];
  v92 = [v5 financeTransactionSharedIdentifier];
  v75 = [v5 financeTransactionSource];
  v95 = [v5 paymentHash];
  v90 = [v5 transactionSourceIdentifier];
  v89 = [v5 currencyCode];
  v73 = [v5 transactionStatus];
  v72 = [v5 transactionSource];
  v71 = [v5 cardType];
  v70 = [v5 transactionType];
  v68 = [v5 accountType];
  v87 = [v5 altDSID];
  v88 = [v5 receiptIdentifier];
  v91 = [v5 associatedReceiptUniqueID];
  v86 = [v5 merchantUniqueIdentifier];
  v62 = [v5 industryCode];
  v56 = [v5 name];
  v69 = [v5 rawName];
  v57 = [v5 category];
  v55 = [v5 displayName];
  v66 = [v5 street];
  v65 = [v5 city];
  v63 = [v5 state];
  v54 = [v5 zip];
  v60 = [v5 countryCode];
  v59 = [v5 country];
  v37 = [v5 mapsMerchantResultProviderID];
  v38 = [v5 mapsMerchantBrandResultProviderID];
  v67 = [v5 location];
  [v67 coordinate];
  v40 = v39;
  v64 = [v5 location];
  [v64 coordinate];
  v42 = v41;
  v61 = [v5 location];
  [v61 verticalAccuracy];
  v44 = v43;
  v58 = [v5 location];
  [v58 horizontalAccuracy];
  v46 = v45;
  v47 = [v5 disputeType];
  v48 = [v5 disputeStatus];
  v53 = [v5 proprietaryBankTransactionCode];
  v49 = [v5 proprietaryBankTransactionIssuer];
  [v5 identifier];
  v50 = v52 = v47;
  v85 = [(FHDatabaseManager *)v82 _execute:@"update transactions set t_service_identifier = %@, t_finance_transaction_id = %@, t_finance_transaction_shared_id = %@, t_finance_transaction_source = %d, a_finance_account_id = %@, t_payment_hash = %@, t_source_identifier = %@, t_amount = %d, t_currencycode = %@, t_timezone = %@, t_date = %d, t_status = %d, t_status_changed_date = %d, t_source = %d, t_card_type = %d, t_type = %d, a_type = %d, t_altDSID = %@, t_receipt_identifier = %@, t_associated_receipt_unique_id = %@, t_fh_internal_state = %d, m_merchant_identifier = %@, m_industrycode = %d, m_name = %@, m_raw_name = %@, m_category = %d, m_detailed_category = %@, m_displayname = %@, m_street = %@, m_city = %@, m_state = %@, m_zip = %@, m_country_code = %@, m_country = %@, m_maps_merchant_id = %@, m_maps_merchant_result_id = %d, m_maps_merchant_brand_id = %@, m_maps_merchant_brand_result_id = %d, lat = %f, long = %f, v_accuracy = %f, h_accuracy = %f, dispute_type = %d, dispute_status = %d, peer_pay_counterpart = %@, peer_pay_type = %d, t_description = %@, processed_description = %@, peer_pay_is_recurring = %d, dispute_open_date = %d, dispute_last_updated_date = %d, proprietary_bank_transaction_code = %@, proprietary_bank_transaction_issuer = %@ where t_identifier == %@", v94, v93, v92, v75, v78, v95, v90, v83, v89, v99, v79, v73, v80, v72, v71, v70, v68, v87, v88, v91, a4, v86, v62, v56, v69, v57, v100, v55, v66, v65, v63, v54, v60, v59, v102, v37, v101, v38, v40, v42, v44, v46, v52, v48, v98, v81, v96, v97, v77, v76, v74, v53, v49, v50];

  return v85;
}

- (BOOL)updateTransactionsInternalStateToState:(id)a3 oldInternalState:(unint64_t)a4 newInternalState:(unint64_t)a5
{
  v8 = MEMORY[0x277CCACA8];
  v9 = a3;
  v10 = [v8 stringWithFormat:@"update transactions set t_fh_internal_state = %d where t_date >= %d and t_date <= %d and t_fh_internal_state %@ %d and t_fh_internal_state != %d", a5, -[FHDatabaseManager _startingDateSmartFeatureComputation](self, "_startingDateSmartFeatureComputation"), -[FHDatabaseManager mostRecentTransactionDate](self, "mostRecentTransactionDate"), v9, a4, 6];

  LOBYTE(a4) = [(FHDatabaseManager *)self _executeRaw:v10];
  return a4;
}

- (BOOL)updateStateForTransaction:(id)a3 newState:(unint64_t)a4
{
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"update transactions set t_fh_internal_state = %d where t_identifier == '%@'", a4, a3];
  LOBYTE(self) = [(FHDatabaseManager *)self _executeRaw:v5];

  return self;
}

- (BOOL)insertInstrumentationRecord:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = FinHealthLogObject(@"FinHealthCore");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v24 = v4;
    _os_log_impl(&dword_226DD4000, v5, OS_LOG_TYPE_DEBUG, "instrumentationRecord: %@", buf, 0xCu);
  }

  v6 = [v4 objectForKey:@"Source"];
  v7 = [v6 unsignedIntegerValue];

  v8 = [v4 objectForKey:@"TagType"];
  v9 = [v8 unsignedIntegerValue];

  v10 = [v4 objectForKey:@"PassType"];
  v11 = [v10 unsignedIntegerValue];

  v12 = [MEMORY[0x277CBEAA8] now];
  [v12 timeIntervalSinceReferenceDate];
  v14 = v13;

  v15 = [v4 objectForKey:@"HeuristicIdentifier"];
  v16 = [v4 objectForKey:@"AccountState"];
  v17 = [v16 unsignedIntegerValue];

  v18 = [v4 objectForKey:@"PaidUsingRing"];
  v19 = [v18 unsignedIntegerValue];

  v20 = [(FHDatabaseManager *)self _execute:@"insert into features_instrumentation (tag_source, tag_type, tag_click_date, pass_type, heuristics_identifier, account_state, paid_using_ring) values (%d, %d, %d, %d, %@, %d, %d)", v7, v9, v14, v11, v15, v17, v19];
  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

- (BOOL)insertReceiptData:(id)a3 identifier:(id)a4 title:(id)a5 subtitle:(id)a6 quantity:(unint64_t)a7 amount:(id)a8 currencyCode:(id)a9 adamIdentifier:(unint64_t)a10
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a9;
  v19 = MEMORY[0x277CCA980];
  if (a8)
  {
    [a8 decimalValue];
  }

  else
  {
    v27[0] = 0;
    v27[1] = 0;
    v28 = 0;
  }

  v20 = [v19 decimalNumberWithDecimal:v27];
  v21 = [MEMORY[0x277CCA980] defaultDatabaseAmountMultiplier];
  v22 = [v20 decimalNumberByMultiplyingBy:v21];
  v23 = [v22 intValue];

  LOBYTE(v23) = [(FHDatabaseManager *)self _execute:@"insert into fh_receipt_data(receiptIdentifier, line_item_index, title, subtitle, quantity, amount, currencyCode, adamIdentifier) values (%@, %@, %@, %@, %d, %d, %@, %d)", v14, v15, v16, v17, a7, v23, v18, a10];
  return v23;
}

- (BOOL)insertModelRecord:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKey:@"modelName"];
  v6 = [v4 objectForKey:@"modelVersion"];
  v7 = [v4 objectForKey:@"dataType"];
  v8 = [v7 unsignedIntegerValue];

  v9 = [v4 objectForKey:@"dataIdentifier"];
  v10 = [v4 objectForKey:@"predictedScore"];
  [v10 doubleValue];
  v12 = v11;

  LOBYTE(self) = [(FHDatabaseManager *)self _execute:@"insert or replace into features_predicted_realtime (identifier, feature_name, feature_predicted_class, version, data_type, predicted_score) values (%@, %@, %d, %@, %d, %f)", v9, v5, 0, v6, v8, v12];
  [FHModel recordModelScore:v4];

  return self;
}

- (unint64_t)getTransactionInternalState:(id)a3
{
  v4 = [a3 identifier];
  v5 = [(FHDatabaseManager *)self _fetch:@"select * from transactions t where t.t_identifier == %@ order by t_date desc limit %d", v4, 1];

  if ([v5 next])
  {
    v6 = [v5 unsignedIntegerAtIndex:22];
  }

  else
  {
    v6 = 0;
  }

  [(FHDatabaseManager *)self closeAndUnlock:v5];

  return v6;
}

- (id)getTransactionByFinanceTransactionIdentifier:(id)a3
{
  v4 = [(PQLConnection *)self->_db fetch:@"select * from transactions where t_finance_transaction_id == %@", a3];
  if ([v4 next])
  {
    v5 = [(FHDatabaseManager *)self reconstructTransaction:v4];
  }

  else
  {
    v5 = 0;
  }

  [v4 close];

  return v5;
}

- (id)getTransactionIdByServiceId:(id)a3
{
  v4 = a3;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __49__FHDatabaseManager_getTransactionIdByServiceId___block_invoke;
  v17[3] = &unk_2785CB058;
  v5 = v4;
  v18 = v5;
  v6 = [FHDatabaseClauseFromBuilder initWithBuilder:v17];
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = 0;
  transactionsEntity = self->_transactionsEntity;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __49__FHDatabaseManager_getTransactionIdByServiceId___block_invoke_146;
  v10[3] = &unk_2785CB080;
  v10[4] = &v11;
  [(FHDatabaseEntity *)transactionsEntity queryDataWithBlock:v6 logicalOperator:@"AND" selectFields:&unk_283A88128 usingBlock:v10];
  v8 = [v12[5] copy];
  _Block_object_dispose(&v11, 8);

  return v8;
}

uint64_t __49__FHDatabaseManager_getTransactionIdByServiceId___block_invoke_146(uint64_t a1, void *a2)
{
  v3 = [a2 stringAtIndex:0];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8]();
}

- (id)_getTransactionByIdentifier:(id)a3
{
  v4 = [(PQLConnection *)self->_db fetch:@"select * from transactions t where t.t_identifier == %@ order by t_date desc limit %d", a3, 1];
  if ([v4 next])
  {
    v5 = [(FHDatabaseManager *)self reconstructTransaction:v4];
  }

  else
  {
    v5 = 0;
  }

  [v4 close];

  return v5;
}

- (id)transactionsByGroupId:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = [(FHDatabaseManager *)self _fetch:@"select t_identifier from fh_grouping where group_id == %@", v4];
  if ([v6 next])
  {
    do
    {
      v7 = [v6 objectAtIndex:0];
      v8 = [v7 stringValue];

      v9 = [(FHDatabaseManager *)self getTransactionByIdentifier:v8];
      [v5 addObject:v9];
    }

    while (([v6 next] & 1) != 0);
  }

  [(FHDatabaseManager *)self closeAndUnlock:v6];
  v10 = [v5 copy];

  return v10;
}

- (int)streamTransactionsWithLimit:(unint64_t)a3 internalState:(unint64_t)a4 offSet:(unint64_t)a5 onTransaction:(id)a6
{
  v10 = a6;
  v11 = [(FHDatabaseManager *)self _fetch:@"select * from transactions t where t_fh_internal_state == %d order by t_date desc limit %d offset %d", a4, a3, a5];
  v12 = 0;
  if ([v11 next])
  {
    do
    {
      v13 = objc_autoreleasePoolPush();
      v14 = [(FHDatabaseManager *)self reconstructTransaction:v11];
      v10[2](v10, v14);
      ++v12;

      objc_autoreleasePoolPop(v13);
    }

    while (([v11 next] & 1) != 0);
  }

  [(FHDatabaseManager *)self closeAndUnlock:v11];

  return v12;
}

- (id)getTransactionsByInternalState:(unint64_t)a3 internalState:(unint64_t)a4 offSet:(unint64_t)a5 addCompoundFeatures:(BOOL)a6
{
  v6 = a6;
  v39 = *MEMORY[0x277D85DE8];
  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12 = [(FHDatabaseManager *)self _fetch:@"select * from transactions t where t_fh_internal_state == %d order by t_date desc limit %d offset %d", a4, a3, a5];
  if ([v12 next])
  {
    do
    {
      v13 = [(FHDatabaseManager *)self reconstructTransaction:v12];
      if ([v13 transactionType])
      {
        v14 = 0;
      }

      else
      {
        v14 = [v13 transactionStatus] == 1;
      }

      v15 = [v13 transactionType];
      if (v14 || v15 == 3 || [v13 transactionType] == 20 || objc_msgSend(v13, "transactionType") == 19 || objc_msgSend(v13, "transactionType") == 21)
      {
        [v11 addObject:v13];
      }
    }

    while (([v12 next] & 1) != 0);
  }

  [(FHDatabaseManager *)self closeAndUnlock:v12];
  if (v6)
  {
    v31 = v12;
    v32 = v11;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = v11;
    v16 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v35;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v35 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v34 + 1) + 8 * i);
          v21 = [v20 identifier];
          v22 = [(FHDatabaseManager *)self compoundFeaturesForTransaction:v21];

          v23 = [v22 objectForKey:@"FHSmartFeatureCompoundTypePointsOfInterest"];
          v24 = v23;
          if (v23 && [v23 count])
          {
            v25 = objc_alloc(MEMORY[0x277CBEAC0]);
            v26 = [MEMORY[0x277CBEA60] arrayWithArray:v24];
            v27 = [v25 initWithObjectsAndKeys:{v26, @"FHSmartFeatureCompoundTypePointsOfInterest", 0}];

            [v20 setCompoundFeatures:v27];
          }
        }

        v17 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v17);
    }

    v12 = v31;
    v11 = v32;
  }

  v28 = [MEMORY[0x277CBEA60] arrayWithArray:v11];

  v29 = *MEMORY[0x277D85DE8];

  return v28;
}

- (id)getTransactionsByDetailedCategory:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [(FHDatabaseManager *)self _fetch:@"select * from transactions where m_detailed_category == %@ order by t_date desc", v4];
  if ([v6 next])
  {
    do
    {
      v7 = [(FHDatabaseManager *)self reconstructTransaction:v6];
      [v5 addObject:v7];
    }

    while (([v6 next] & 1) != 0);
  }

  [(FHDatabaseManager *)self closeAndUnlock:v6];
  v8 = [MEMORY[0x277CBEA60] arrayWithArray:v5];

  return v8;
}

- (id)getRecurringTransactionIdentifiersByClass:(unint64_t)a3
{
  v5 = objc_opt_new();
  v6 = [(FHDatabaseManager *)self _fetch:@"select identifier from features_predicted_realtime where feature_name='FHSmartFeatureAggregateTypeRecurring' and feature_predicted_class=%d limit %d", a3, -1];
  if ([v6 next])
  {
    do
    {
      v7 = [v6 stringAtIndex:0];
      [v5 addObject:v7];
    }

    while (([v6 next] & 1) != 0);
  }

  [(FHDatabaseManager *)self closeAndUnlock:v6];
  v8 = [MEMORY[0x277CBEA60] arrayWithArray:v5];

  return v8;
}

- (id)getTransactionIdsInTimeRangeFrom:(id)a3 to:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  [v6 timeIntervalSinceReferenceDate];
  v10 = v9;
  [v7 timeIntervalSinceReferenceDate];
  v12 = [(FHDatabaseManager *)self _fetch:@"select * from transactions t where t_date >= %d and t_date <= %d and a_type == %d order by t_date desc limit %d", v10, v11, 2, -1];
  if ([v12 next])
  {
    do
    {
      v13 = [v12 stringAtIndex:1];
      [v8 addObject:v13];
    }

    while (([v12 next] & 1) != 0);
  }

  [(FHDatabaseManager *)self closeAndUnlock:v12];
  v14 = [MEMORY[0x277CBEA60] arrayWithArray:v8];

  return v14;
}

- (BOOL)insertFeatures:(id)a3 realtimeFeatures:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 identifier];
  v9 = [v7 accountType];

  v10 = v9 == 2 && [(FHDatabaseManager *)self insertFeaturesDeterminiticRealtime:v8 realtimeFeatures:v6]&& [(FHDatabaseManager *)self insertFeaturesPredictedRealtime:v8 realtimeFeatures:v6]&& [(FHDatabaseManager *)self insertFeaturesCompoundRealtime:v8 realtimeFeatures:v6];
  return v10;
}

- (BOOL)insertFeaturesDeterminiticRealtime:(id)a3 realtimeFeatures:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 timeOfDay];
  v9 = [v6 transactionDateAtZerothHour];
  v10 = [v6 merchantCategory];
  v11 = [v6 isInternationalSpend];
  v12 = [v6 isTapToPay];

  LOBYTE(self) = [(FHDatabaseManager *)self _execute:@"insert or replace into features_deterministic_realtime (t_identifier, a, b, c, f, g) values (%@, %d, %d, %d, %d, %d)", v7, v8, v9, v10, v11, v12];
  return self;
}

- (BOOL)insertFeaturesPredictedRealtime:(id)a3 realtimeFeatures:(id)a4
{
  v6 = a3;
  v7 = a4;
  [v7 repeatingPatternClass];
  if ([v7 repeatingPatternClass] <= 2)
  {
    [(FHDatabaseManager *)self deleteWithSQL:@"delete from features_predicted_realtime where identifier == %@ and feature_name == %@", v6, @"FHSmartFeatureAggregateTypeRecurring"];
  }

  v8 = -[FHDatabaseManager _execute:](self, "_execute:", @"insert or replace into features_predicted_realtime (identifier, feature_name, feature_predicted_class, version, data_type, predicted_score) values (%@, %@, %d, %@, %d, %f)", v6, @"FHSmartFeatureAggregateTypeRecurring", [v7 repeatingPatternClass], @"0", 0, 0);

  return v8;
}

- (BOOL)insertFeaturesCompoundRealtime:(id)a3 realtimeFeatures:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 smartCompoundFeatures];
  if (!v8)
  {
    goto LABEL_6;
  }

  v9 = v8;
  v10 = [v7 smartCompoundFeatures];
  v11 = [v10 objectForKey:@"FHSmartFeatureCompoundTypeEventTagging"];
  if (!v11)
  {
    v12 = [v7 smartCompoundFeatures];
    v13 = [v12 objectForKey:@"FHSmartFeatureCompoundTypeTripEvents"];

    if (v13)
    {
      goto LABEL_5;
    }

LABEL_6:
    v17 = 1;
    goto LABEL_7;
  }

LABEL_5:
  v14 = MEMORY[0x277CBEA60];
  v15 = [v7 smartCompoundFeatures];
  v16 = [v14 arrayWithObject:v15];
  v17 = [(FHDatabaseManager *)self insertFeaturesEvents:v16];

LABEL_7:
  v18 = [(FHDatabaseManager *)self insertFeaturesCompoundRealtimeWithoutEvents:v6 realtimeFeatures:v7];

  return v17 && v18;
}

- (BOOL)insertFeaturesCompoundRealtimeWithoutEvents:(id)a3 realtimeFeatures:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = MEMORY[0x277CCAAA0];
  v10 = [v7 smartCompoundFeaturesDictionaryForJson];
  v18 = 0;
  v11 = [v9 dataWithJSONObject:v10 options:0 error:&v18];
  v12 = v18;

  if (v11)
  {
    v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v11 encoding:4];
    v14 = [(FHDatabaseManager *)self _execute:@"insert or replace into features_compound_realtime (t_identifier, t_compound_feature_value) values (%@, %@)", v6, v13];
  }

  else
  {
    v13 = FinHealthLogObject(@"FinHealthCore");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v15 = [v12 localizedDescription];
      *buf = 138412290;
      v20 = v15;
      _os_log_impl(&dword_226DD4000, v13, OS_LOG_TYPE_DEBUG, "Failed to parse smartCompoundFeaturesDictionaryForJson: %@", buf, 0xCu);
    }

    v14 = 0;
  }

  objc_autoreleasePoolPop(v8);
  v16 = *MEMORY[0x277D85DE8];
  return v14;
}

- (BOOL)insertFeaturesEvents:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277CBEB58];
  v6 = [v4 valueForKeyPath:@"@distinctUnionOfArrays.FHSmartFeatureCompoundTypeEventTagging"];
  v7 = [v5 setWithArray:v6];

  v8 = [v4 valueForKeyPath:@"@distinctUnionOfArrays.FHSmartFeatureCompoundTypeTripEvents"];
  [v7 addObjectsFromArray:v8];

  if ([v7 count])
  {
    v9 = FinHealthLogObject(@"FinHealthCore");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v40 = v7;
      _os_log_impl(&dword_226DD4000, v9, OS_LOG_TYPE_DEBUG, "Distinct event ranked values: %@", buf, 0xCu);
    }
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v7;
  v28 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v28)
  {
    v27 = *v34;
    v10 = 1;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v34 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v33 + 1) + 8 * i);
        v13 = [v12 eventStartDate];
        [v13 timeIntervalSinceReferenceDate];
        v15 = v14;

        v16 = [v12 eventEndDate];
        [v16 timeIntervalSinceReferenceDate];
        v18 = v17;

        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v19 = [v12 eventIdentifiers];
        v20 = [v19 countByEnumeratingWithState:&v29 objects:v37 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v30;
          do
          {
            for (j = 0; j != v21; ++j)
            {
              if (*v30 != v22)
              {
                objc_enumerationMutation(v19);
              }

              v10 &= [(FHDatabaseManager *)self _execute:@"insert or replace into features_events (e_identifier, start_date, end_date) values (%@, %d, %d)", *(*(&v29 + 1) + 8 * j), v15, v18];
            }

            v21 = [v19 countByEnumeratingWithState:&v29 objects:v37 count:16];
          }

          while (v21);
        }
      }

      v28 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v28);
  }

  else
  {
    LOBYTE(v10) = 1;
  }

  v24 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

- (BOOL)insertGroupForTransaction:(id)a3 withGroup:(id)a4 type:(unint64_t)a5
{
  v8 = MEMORY[0x277CCACA8];
  v9 = MEMORY[0x277CCA980];
  v10 = a4;
  v11 = a3;
  v12 = [v9 zero];
  v13 = [v12 stringValue];
  v14 = [v8 stringWithFormat:@"insert or replace into fh_grouping (t_identifier, group_id, similarity_score, group_type) values ('%@', '%@', %@, %d)", v11, v10, v13, a5];

  LOBYTE(v11) = [(FHDatabaseManager *)self _execute:v14];
  return v11;
}

- (id)getTaggedPastCalendarEvents
{
  v3 = objc_opt_new();
  v4 = [MEMORY[0x277CBEAA8] now];
  v5 = [v4 dateByAddingTimeInterval:-31536000.0];
  [v5 timeIntervalSinceReferenceDate];
  v7 = v6;

  v18 = self;
  v8 = [(FHDatabaseManager *)self _fetch:@"select * from features_events where end_date < %d limit %d", v7, -1];
  if ([v8 next])
  {
    do
    {
      v9 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:{objc_msgSend(v8, "unsignedIntAtIndex:", 2)}];
      v10 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:{objc_msgSend(v8, "unsignedIntAtIndex:", 3)}];
      v11 = MEMORY[0x277CBEAC0];
      [v8 stringAtIndex:1];
      v13 = v12 = v3;
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:{v9, v10, 0}];
      v15 = [v11 dictionaryWithObjectsAndKeys:{v13, @"featureEventIdentifiers", v9, @"featureEventStartDate", v10, @"featureEventEndDate", v14, @"featureEventDateRangeKey", 0}];

      v3 = v12;
      [v12 addObject:v15];
    }

    while (([v8 next] & 1) != 0);
  }

  [(FHDatabaseManager *)v18 closeAndUnlock:v8];
  v16 = [MEMORY[0x277CBEA60] arrayWithArray:v3];

  return v16;
}

- (id)getFeaturePredicate:(id)a3 FHSmartFeatureAggregateType:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = FHSmartFeaturesDict();
  v8 = [v7 objectForKey:v6];

  v9 = [v8 objectForKey:v5];

  v10 = [v9 objectForKey:@"predicate"];

  if (v10)
  {
    v11 = MEMORY[0x277CCACA8];
    v12 = [v10 objectForKey:@"index"];
    v13 = [v10 objectForKey:@"filteringOperator"];
    v14 = [v10 objectForKey:@"match"];
    v15 = [v11 stringWithFormat:@"SELF[%@] %@ '%@'", v12, v13, v14];

    v16 = [MEMORY[0x277CCAC30] predicateWithFormat:v15];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (BOOL)_computeSingleMerchantAggregateFeature:(id)a3
{
  v45 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = FHSmartFeaturesDict();
  v6 = [v5 objectForKey:@"FHMerchantSmartFeatures"];
  v7 = [v6 objectForKey:v4];

  v8 = [v7 objectForKey:@"featureValueIndex"];
  v39 = [v8 intValue];

  v9 = [(FHDatabaseManager *)self getFeaturePredicate:@"FHMerchantSmartFeatures" FHSmartFeatureAggregateType:v4];
  v40 = v7;
  v10 = [v7 objectForKey:@"aggrWindow"];
  if (!v10)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", 30];
  }

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v10];
  v12 = [(NSMutableDictionary *)self->_merchantAggregatesCache objectForKey:v11];
  v13 = [v10 intValue];
  v14 = [(FHDatabaseManager *)self mostRecentTransactionDate];
  v15 = v14 - 86400 * v13;
  v37 = v14;
  if (v12)
  {
    v16 = FinHealthLogObject(@"FinHealthCore");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v42 = "[FHDatabaseManager _computeSingleMerchantAggregateFeature:]";
      v43 = 2112;
      v44 = v11;
      _os_log_impl(&dword_226DD4000, v16, OS_LOG_TYPE_DEBUG, "%s resultArray for %@ is already cached", buf, 0x16u);
    }
  }

  else
  {
    v17 = v14;
    v35 = v9;
    v36 = v4;
    v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v18 = [(FHDatabaseManager *)self _fetch:@"select m_displayname, count(*) c, m_detailed_category from transactions where transactions.t_date >= %d and transactions.t_date <= %d and transactions.t_type == %lu and transactions.t_status == %lu and transactions.a_type == %d group by m_displayname order by c desc", v15, v17, 0, 1, 2];
    if ([v18 next])
    {
      do
      {
        v19 = MEMORY[0x277CBEA60];
        v20 = [v18 stringAtIndex:0];
        v21 = [v18 stringAtIndex:1];
        v22 = [v18 stringAtIndex:2];
        v23 = [v19 arrayWithObjects:{v20, v21, v22, 0}];

        if ([v23 count])
        {
          [v16 addObject:v23];
        }
      }

      while (([v18 next] & 1) != 0);
    }

    [(FHDatabaseManager *)self closeAndUnlock:v18];
    v12 = [MEMORY[0x277CBEA60] arrayWithArray:v16];
    [(NSMutableDictionary *)self->_merchantAggregatesCache setObject:v12 forKey:v11];
    v24 = FinHealthLogObject(@"FinHealthCore");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v42 = "[FHDatabaseManager _computeSingleMerchantAggregateFeature:]";
      v43 = 2112;
      v44 = v11;
      _os_log_impl(&dword_226DD4000, v24, OS_LOG_TYPE_DEBUG, "%s resultArray %@ added to cache", buf, 0x16u);
    }

    v9 = v35;
    v4 = v36;
  }

  v25 = [v12 filteredArrayUsingPredicate:v9];
  if ([v25 count])
  {
    v26 = v9;
    v27 = [v25 firstObject];
    v28 = [v27 count];

    if (v28 <= v39)
    {
      v32 = 1;
    }

    else
    {
      v38 = v15;
      v29 = v4;
      v30 = [v25 firstObject];
      v31 = [v30 objectAtIndex:v39];

      if (v31)
      {
        v4 = v29;
        v32 = [(FHDatabaseManager *)self _execute:@"insert or replace into features_merchant (merchant_aggregate_type, merchant_aggregate_value, start_date, end_date) values (%@, %@, %d, %d)", v29, v31, v38, v37];
      }

      else
      {
        v32 = 1;
        v4 = v29;
      }
    }

    v9 = v26;
  }

  else
  {
    v32 = 1;
  }

  v33 = *MEMORY[0x277D85DE8];
  return v32;
}

- (BOOL)computeMerchantAggregateFeatures
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  v3 = FHMerchantSmartFeaturesArray();
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __53__FHDatabaseManager_computeMerchantAggregateFeatures__block_invoke;
  v5[3] = &unk_2785CB0A8;
  v5[4] = self;
  v5[5] = &v6;
  [v3 enumerateObjectsUsingBlock:v5];

  [(NSMutableDictionary *)self->_merchantAggregatesCache removeAllObjects];
  LOBYTE(self) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return self;
}

uint64_t __53__FHDatabaseManager_computeMerchantAggregateFeatures__block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) _computeSingleMerchantAggregateFeature:a2];
  if ((result & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  return result;
}

- (BOOL)_computeSingleDatetimeAggregateFeature:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = FHSmartFeaturesDict();
  v6 = [v5 objectForKey:@"FHDateTimeSmartFeatures"];
  v7 = [v6 objectForKey:v4];

  v8 = [v7 objectForKey:@"featureValueIndex"];
  v37 = [v8 intValue];

  v38 = v7;
  v9 = [v7 objectForKey:@"aggrWindow"];
  if (!v9)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", 30];
  }

  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v9];
  v11 = [(NSMutableDictionary *)self->_dateTimeAggregatesCache objectForKey:v10];
  v12 = [v9 intValue];
  v13 = [(FHDatabaseManager *)self mostRecentTransactionDate];
  v14 = v13 - 86400 * v12;
  v35 = v14;
  v36 = v13;
  if (v11)
  {
    v15 = FinHealthLogObject(@"FinHealthCore");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v40 = "[FHDatabaseManager _computeSingleDatetimeAggregateFeature:]";
      v41 = 2112;
      v42 = v10;
      _os_log_impl(&dword_226DD4000, v15, OS_LOG_TYPE_DEBUG, "%s resultArray for %@ is already cached", buf, 0x16u);
    }
  }

  else
  {
    v16 = v13;
    v34 = v4;
    v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v18 = [(FHDatabaseManager *)self _fetch:@"select sum(t.t_amount) daily_spend, f.b from transactions t inner join features_deterministic_realtime f on t.t_identifier = f.t_identifier where t.t_date >= %d and t.t_date <= %d and t.t_type == %lu and t.t_status == %lu and t.a_type == %d group by f.b order by daily_spend desc limit %d", v14, v16, 0, 1, 2, 1];
    if ([v18 next])
    {
      do
      {
        v19 = MEMORY[0x277CBEA60];
        v20 = [v18 numberAtIndex:0];
        v21 = [v18 numberAtIndex:1];
        v22 = [v19 arrayWithObjects:{v20, v21, 0}];

        [v17 addObject:v22];
      }

      while (([v18 next] & 1) != 0);
    }

    [(FHDatabaseManager *)self closeAndUnlock:v18];
    v11 = [MEMORY[0x277CBEA60] arrayWithArray:v17];
    [(NSMutableDictionary *)self->_dateTimeAggregatesCache setObject:v11 forKey:v10];

    v4 = v34;
  }

  v23 = [(FHDatabaseManager *)self getFeaturePredicate:@"FHDateTimeSmartFeatures" FHSmartFeatureAggregateType:v4];
  if (v23)
  {
    v24 = [v11 filteredArrayUsingPredicate:v23];
  }

  else
  {
    v24 = v11;
  }

  v25 = v24;
  if ([v24 count] && (objc_msgSend(v25, "firstObject"), v26 = objc_claimAutoreleasedReturnValue(), v27 = objc_msgSend(v26, "count"), v26, v27 > v37))
  {
    v28 = v4;
    v29 = [v25 firstObject];
    v30 = [v29 objectAtIndex:v37];

    if (v30)
    {
      v4 = v28;
      v31 = -[FHDatabaseManager _execute:](self, "_execute:", @"insert or replace into features_datetime (datetime_aggregate_type, datetime_aggregate_value_start_date, datetime_aggregate_value_end_date, start_date, end_date) values (%@, %d, %d, %d, %d)", v28, [v30 intValue], objc_msgSend(v30, "intValue") + 86399, v35, v36);
    }

    else
    {
      v31 = 0;
      v4 = v28;
    }
  }

  else
  {
    v31 = 0;
  }

  v32 = *MEMORY[0x277D85DE8];
  return v31;
}

- (BOOL)computeDatetimeAggregateFeatures
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  v3 = FHDateTimeSmartFeaturesArray();
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __53__FHDatabaseManager_computeDatetimeAggregateFeatures__block_invoke;
  v5[3] = &unk_2785CB0A8;
  v5[4] = self;
  v5[5] = &v6;
  [v3 enumerateObjectsUsingBlock:v5];

  [(NSMutableDictionary *)self->_dateTimeAggregatesCache removeAllObjects];
  LOBYTE(self) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return self;
}

uint64_t __53__FHDatabaseManager_computeDatetimeAggregateFeatures__block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) _computeSingleDatetimeAggregateFeature:a2];
  if ((result & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  return result;
}

- (BOOL)_computeSingleAmountAggregateFeature:(id)a3
{
  v48 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = FHSmartFeaturesDict();
  v6 = [v5 objectForKey:@"FHAmountSmartFeatures"];
  v40 = v4;
  v7 = [v6 objectForKey:v4];

  v8 = [v7 objectForKey:@"expression"];
  v9 = [v7 objectForKey:@"aggrWindow"];
  if (!v9)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", 30];
  }

  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v9];
  v11 = [(NSMutableDictionary *)self->_amountAggregatesCache objectForKey:v10];
  v12 = [v9 intValue];
  v13 = [(FHDatabaseManager *)self mostRecentTransactionDate];
  v14 = v13;
  v15 = v13 - 86400 * v12;
  if (v11)
  {
    v16 = FinHealthLogObject(@"FinHealthCore");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v45 = "[FHDatabaseManager _computeSingleAmountAggregateFeature:]";
      v46 = 2112;
      v47 = v10;
      _os_log_impl(&dword_226DD4000, v16, OS_LOG_TYPE_DEBUG, "%s resultArray for %@ is already cached", buf, 0x16u);
    }
  }

  else
  {
    v36 = v13;
    v38 = v8;
    v17 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v13];
    v35 = v15;
    v18 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v15];
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __58__FHDatabaseManager__computeSingleAmountAggregateFeature___block_invoke;
    v41[3] = &unk_2785CB0D0;
    v41[4] = self;
    v19 = v18;
    v42 = v19;
    v20 = v17;
    v43 = v20;
    v21 = [FHBatchProcessor initWithBuilder:v41];
    [v21 fetchAndProcessInBatchMode];
    v11 = [v21 filteredTransaction];
    [(NSMutableDictionary *)self->_amountAggregatesCache setObject:v11 forKey:v10];
    v22 = FinHealthLogObject(@"FinHealthCore");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v45 = "[FHDatabaseManager _computeSingleAmountAggregateFeature:]";
      v46 = 2112;
      v47 = v10;
      _os_log_impl(&dword_226DD4000, v22, OS_LOG_TYPE_DEBUG, "%s resultArray %@ added to cache", buf, 0x16u);
    }

    v14 = v36;
    v8 = v38;
    v15 = v35;
    if (!v11)
    {
      goto LABEL_15;
    }
  }

  if (![v11 count])
  {
LABEL_15:
    v32 = 1;
    goto LABEL_18;
  }

  v39 = v10;
  v23 = objc_opt_new();
  v24 = [v8 componentsSeparatedByString:@"%@"];
  v25 = [v24 count] - 1;

  if (v25 >= 1)
  {
    do
    {
      [v23 addObject:v11];
      --v25;
    }

    while (v25);
  }

  v37 = v7;
  v26 = [v7 objectForKey:@"comparator"];
  v27 = v8;
  v28 = [MEMORY[0x277CCA9C0] expressionWithFormat:v8 argumentArray:v23];
  v29 = [v28 expressionValueWithObject:0 context:0];
  v30 = v29;
  if (v29)
  {
    [v29 doubleValue];
    v32 = [(FHDatabaseManager *)self _execute:@"insert or replace into features_amount (amount_aggregate_type, amount_aggregate_value, comparison_operator, start_date, end_date) values (%@, %d, %@, %d, %d)", v40, v31, v26, v15, v14];
  }

  else
  {
    v32 = 1;
  }

  v8 = v27;
  v7 = v37;
  v10 = v39;
LABEL_18:

  v33 = *MEMORY[0x277D85DE8];
  return v32;
}

void __58__FHDatabaseManager__computeSingleAmountAggregateFeature___block_invoke(uint64_t *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  [v4 setDatabaseManager:v3];
  [v4 addInternalState:2];
  [v4 setMostRecentTransactionFromDatabase:{objc_msgSend(a1[4], "mostRecentTransactionDate")}];
  [v4 setStartDate:a1[5]];
  [v4 setEndDate:a1[6]];
}

- (BOOL)computeAmountAggregateFeatures
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  v3 = FHAmountSmartFeaturesArray();
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __51__FHDatabaseManager_computeAmountAggregateFeatures__block_invoke;
  v5[3] = &unk_2785CB0A8;
  v5[4] = self;
  v5[5] = &v6;
  [v3 enumerateObjectsUsingBlock:v5];

  [(NSMutableDictionary *)self->_amountAggregatesCache removeAllObjects];
  LOBYTE(self) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return self;
}

uint64_t __51__FHDatabaseManager_computeAmountAggregateFeatures__block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) _computeSingleAmountAggregateFeature:a2];
  if ((result & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  return result;
}

- (id)getFHSmartFeatureByMerchantType:(id)a3
{
  v4 = [(FHDatabaseManager *)self _fetch:@"select merchant_aggregate_value, start_date, end_date from features_merchant where merchant_aggregate_type == %@ order by end_date desc", a3];
  if ([v4 next])
  {
    v5 = objc_opt_new();
    v6 = [v4 stringAtIndex:0];
    [v5 setMerchantDisplayName:v6];

    v7 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:{objc_msgSend(v4, "integerAtIndex:", 1)}];
    [v5 setProcessingWindowStartDate:v7];

    v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:{objc_msgSend(v4, "integerAtIndex:", 2)}];
    [v5 setProcessingWindowEndDate:v8];
  }

  else
  {
    v5 = 0;
  }

  [(FHDatabaseManager *)self closeAndUnlock:v4];

  return v5;
}

- (id)getFHSmartFeatureByAmountType:(id)a3
{
  v4 = [(FHDatabaseManager *)self _fetch:@"select amount_aggregate_value, comparison_operator, start_date, end_date from features_amount where amount_aggregate_type == %@ order by end_date desc", a3];
  if ([v4 next])
  {
    v5 = objc_opt_new();
    [v5 setAmount:{objc_msgSend(v4, "integerAtIndex:", 0)}];
    v6 = [v4 stringAtIndex:1];
    [v5 setComparator:v6];

    v7 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:{objc_msgSend(v4, "integerAtIndex:", 2)}];
    [v5 setProcessingWindowStartDate:v7];

    v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:{objc_msgSend(v4, "integerAtIndex:", 3)}];
    [v5 setProcessingWindowEndDate:v8];
  }

  else
  {
    v5 = 0;
  }

  [(FHDatabaseManager *)self closeAndUnlock:v4];

  return v5;
}

- (id)getFHSmartFeatureByDateTimeType:(id)a3
{
  v4 = [(FHDatabaseManager *)self _fetch:@"select datetime_aggregate_value_start_date, datetime_aggregate_value_end_date, start_date, end_date from features_datetime where datetime_aggregate_type == %@ order by end_date desc", a3];
  if ([v4 next])
  {
    v5 = objc_opt_new();
    v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:{objc_msgSend(v4, "integerAtIndex:", 0)}];
    [v5 setStartDate:v6];

    v7 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:{objc_msgSend(v4, "integerAtIndex:", 1)}];
    [v5 setEndDate:v7];

    v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:{objc_msgSend(v4, "integerAtIndex:", 2)}];
    [v5 setProcessingWindowStartDate:v8];

    v9 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:{objc_msgSend(v4, "integerAtIndex:", 3)}];
    [v5 setProcessingWindowEndDate:v9];
  }

  else
  {
    v5 = 0;
  }

  [(FHDatabaseManager *)self closeAndUnlock:v4];

  return v5;
}

- (BOOL)deleteAllFeatureRecordsForTransaction:(id)a3
{
  v4 = a3;
  v5 = [[FHDatabaseEntity alloc] initWithEntity:@"fh_recurring_predictions" databaseManager:self];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __59__FHDatabaseManager_deleteAllFeatureRecordsForTransaction___block_invoke;
  v13 = &unk_2785CB058;
  v6 = v4;
  v14 = v6;
  v7 = [FHDatabaseClauseFromBuilder initWithBuilder:&v10];
  v8 = [(FHDatabaseManager *)self deleteWithSQL:@"delete from features_deterministic_realtime where t_identifier in (select t_identifier from transactions t where t.t_source_identifier == %@)", v6, v10, v11, v12, v13]&& [(FHDatabaseManager *)self deleteWithSQL:@"delete from features_predicted_realtime where identifier in (select t_identifier from transactions t where t.t_source_identifier == %@)", v6]&& [(FHDatabaseManager *)self deleteWithSQL:@"delete from features_compound_realtime where t_identifier in (select t_identifier from transactions t where t.t_source_identifier == %@)", v6]&& [(FHDatabaseManager *)self deleteWithSQL:@"delete from features_heuristics where t_identifier in (select t_identifier from transactions t where t.t_source_identifier == %@)", v6]&& [(FHDatabaseEntity *)v5 clearDataWithClauseBuilder:v7];

  return v8;
}

- (BOOL)deleteAllRecordsInTransactions:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __52__FHDatabaseManager_deleteAllRecordsInTransactions___block_invoke;
  v8[3] = &unk_2785CB058;
  v9 = v4;
  v5 = v4;
  v6 = [FHDatabaseClauseFromBuilder initWithBuilder:v8];
  LOBYTE(self) = [(FHDatabaseEntity *)self->_transactionsEntity clearDataWithClauseBuilder:v6];

  return self;
}

- (BOOL)deleteTransactionWithIdentifier:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__FHDatabaseManager_deleteTransactionWithIdentifier___block_invoke;
  v8[3] = &unk_2785CB058;
  v9 = v4;
  v5 = v4;
  v6 = [FHDatabaseClauseFromBuilder initWithBuilder:v8];
  LOBYTE(self) = [(FHDatabaseEntity *)self->_transactionsEntity clearDataWithClauseBuilder:v6];

  return self;
}

- (BOOL)deleteBankConnectTransactionWithFinanceTransactionIdentifier:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __82__FHDatabaseManager_deleteBankConnectTransactionWithFinanceTransactionIdentifier___block_invoke;
  v8[3] = &unk_2785CB058;
  v9 = v4;
  v5 = v4;
  v6 = [FHDatabaseClauseFromBuilder initWithBuilder:v8];
  LOBYTE(self) = [(FHDatabaseEntity *)self->_transactionsEntity clearDataWithClauseBuilder:v6];

  return self;
}

void __82__FHDatabaseManager_deleteBankConnectTransactionWithFinanceTransactionIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 addStringClause:@"==" fieldName:@"transactions.t_identifier" expression:v3];
  [v4 addStringClause:@"==" fieldName:@"transactions.t_finance_transaction_id" expression:*(a1 + 32)];
}

- (BOOL)deleteAllRecordsInPeerPaymentFeatures:(id)a3
{
  v4 = a3;
  v5 = [[FHDatabaseEntity alloc] initWithEntity:@"features_peer_payments" databaseManager:self];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __59__FHDatabaseManager_deleteAllRecordsInPeerPaymentFeatures___block_invoke;
  v10[3] = &unk_2785CB058;
  v11 = v4;
  v6 = v4;
  v7 = [FHDatabaseClauseFromBuilder initWithBuilder:v10];
  v8 = [(FHDatabaseEntity *)v5 clearDataWithClauseBuilder:v7];

  return v8;
}

- (BOOL)deleteAllRecordsInAccountInfoForTransactionSource:(id)a3
{
  v4 = a3;
  v5 = [[FHDatabaseEntity alloc] initWithEntity:@"fh_account_information" databaseManager:self];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __71__FHDatabaseManager_deleteAllRecordsInAccountInfoForTransactionSource___block_invoke;
  v10[3] = &unk_2785CB058;
  v11 = v4;
  v6 = v4;
  v7 = [FHDatabaseClauseFromBuilder initWithBuilder:v10];
  v8 = [(FHDatabaseEntity *)v5 clearDataWithClauseBuilder:v7];

  return v8;
}

- (void)deleteAllDataForTransactionSourceIdentifier:(id)a3 force:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v15 = a3;
  v8 = a5;
  if (v6)
  {
    v9 = 3;
  }

  else
  {
    v9 = 1;
  }

  v10 = objc_opt_new();
  if (v8)
  {
    while (![(FHDatabaseManager *)self deleteAllFeatureRecordsForTransaction:v15])
    {
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"features_deterministic_realtime for id %@", v15];
      [v10 addObject:v12];

      if (![(FHDatabaseManager *)self deleteAllRecordsInTransactionFeatures:v15])
      {
        goto LABEL_12;
      }

LABEL_14:
      if (v9 == 1)
      {
        v14 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
        v8[2](v8, 0, v14);
      }

      if (!--v9)
      {
        goto LABEL_17;
      }
    }

    if ([(FHDatabaseManager *)self deleteAllRecordsInTransactionFeatures:v15])
    {
      if ([(FHDatabaseManager *)self deleteAllRecordsInTransactions:v15]&& [(FHDatabaseManager *)self deleteAllRecordsInPeerPaymentFeatures:v15]&& [(FHDatabaseManager *)self deleteAllRecordsInAccountInfoForTransactionSource:v15])
      {
        v8[2](v8, 1, 0);
        goto LABEL_17;
      }

      v11 = @"transactions for id %@";
    }

    else
    {
LABEL_12:
      v11 = @"transaction_features for id %@";
    }

    v13 = [MEMORY[0x277CCACA8] stringWithFormat:v11, v15];
    [v10 addObject:v13];

    goto LABEL_14;
  }

LABEL_17:
}

- (BOOL)updateGetAllStatus:(unint64_t)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = [(FHDatabaseManager *)self _execute:@"update fh_schema set sch_getall_status = %d where sch_version_id == %@", a3, @"11.11"];
  v5 = FinHealthLogObject(@"FinHealthCore");
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_226DD4000, v6, OS_LOG_TYPE_DEBUG, "updateGetAllStatus successful", buf, 2u);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v7 = [(PQLConnection *)self->_db lastError];
    v8 = [v7 localizedDescription];
    *buf = 138412290;
    v12 = v8;
    _os_log_impl(&dword_226DD4000, v6, OS_LOG_TYPE_ERROR, "Update failed with error: %@", buf, 0xCu);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v4;
}

- (BOOL)shouldCallGetAllTransactions
{
  v3 = [(FHDatabaseManager *)self _fetch:@"select sch_getall_status from fh_schema where sch_version_id == %@", @"11.11"];;
  if ([v3 next])
  {
    v4 = [v3 unsignedIntegerAtIndex:0] != 1;
  }

  else
  {
    v4 = 1;
  }

  [(FHDatabaseManager *)self closeAndUnlock:v3];

  return v4;
}

- (id)compoundFeaturesForTransaction:(id)a3
{
  v4 = [(FHDatabaseManager *)self _fetch:@"select t_identifier, t_compound_feature_value from features_compound_realtime where t_identifier == %@", a3];
  v5 = objc_alloc_init(MEMORY[0x277CBEAC0]);
  if ([v4 next])
  {
    v6 = [v4 stringAtIndex:1];
    v7 = [FinHealthFeatureHelper reconstructCompoundFeatures:v6];

    v5 = v7;
  }

  [(FHDatabaseManager *)self closeAndUnlock:v4];

  return v5;
}

- (id)reconstructTransaction:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(FHTransaction);
  v5 = [v3 intAtIndex:9];
  v6 = [objc_alloc(MEMORY[0x277CCA980]) initWithInteger:v5];
  v7 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:{objc_msgSend(v3, "unsignedIntAtIndex:", 12)}];
  v8 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:{objc_msgSend(v3, "unsignedIntAtIndex:", 14)}];
  v9 = [v3 stringAtIndex:1];
  [(FHTransaction *)v4 setIdentifier:v9];

  v10 = [v3 stringAtIndex:2];
  [(FHTransaction *)v4 setTransactionServiceIdentifier:v10];

  v11 = [v3 stringAtIndex:6];
  [(FHTransaction *)v4 setFinanceAccountIdentifier:v11];

  v12 = [v3 stringAtIndex:3];
  [(FHTransaction *)v4 setFinanceTransactionIdentifier:v12];

  v13 = [v3 stringAtIndex:7];
  [(FHTransaction *)v4 setPaymentHash:v13];

  v14 = [v3 stringAtIndex:8];
  [(FHTransaction *)v4 setTransactionSourceIdentifier:v14];

  v15 = [MEMORY[0x277CCA980] defaultDatabaseAmountMultiplier];
  v16 = [v6 decimalNumberByDividingBy:v15];
  [(FHTransaction *)v4 setAmount:v16];

  [(FHTransaction *)v4 setAmountFromDatabase:v5];
  v17 = [v3 stringAtIndex:10];
  [(FHTransaction *)v4 setCurrencyCode:v17];

  [(FHTransaction *)v4 setTransactionDate:v7];
  -[FHTransaction setTransactionStatus:](v4, "setTransactionStatus:", [v3 intAtIndex:13]);
  [(FHTransaction *)v4 setTransactionStatusChangedDate:v8];
  -[FHTransaction setTransactionSource:](v4, "setTransactionSource:", [v3 intAtIndex:15]);
  -[FHTransaction setCardType:](v4, "setCardType:", [v3 intAtIndex:16]);
  -[FHTransaction setTransactionType:](v4, "setTransactionType:", [v3 intAtIndex:17]);
  -[FHTransaction setAccountType:](v4, "setAccountType:", [v3 intAtIndex:18]);
  v18 = [v3 stringAtIndex:19];
  [(FHTransaction *)v4 setAltDSID:v18];

  v19 = [v3 stringAtIndex:20];
  [(FHTransaction *)v4 setReceiptIdentifier:v19];

  -[FHTransaction setTransactionInternalState:](v4, "setTransactionInternalState:", [v3 intAtIndex:22]);
  v20 = [v3 stringAtIndex:23];
  [(FHTransaction *)v4 setMerchantUniqueIdentifier:v20];

  -[FHTransaction setIndustryCode:](v4, "setIndustryCode:", [v3 intAtIndex:24]);
  v21 = [v3 stringAtIndex:25];
  [(FHTransaction *)v4 setName:v21];

  v22 = [v3 stringAtIndex:26];
  [(FHTransaction *)v4 setRawName:v22];

  -[FHTransaction setCategory:](v4, "setCategory:", [v3 intAtIndex:27]);
  v23 = [v3 stringAtIndex:28];
  [(FHTransaction *)v4 setMerchantDetailedCategory:v23];

  v24 = [v3 stringAtIndex:29];
  [(FHTransaction *)v4 setDisplayName:v24];

  v25 = [v3 stringAtIndex:30];
  [(FHTransaction *)v4 setStreet:v25];

  v26 = [v3 stringAtIndex:31];
  [(FHTransaction *)v4 setCity:v26];

  v27 = [v3 stringAtIndex:32];
  [(FHTransaction *)v4 setState:v27];

  v28 = [v3 stringAtIndex:33];
  [(FHTransaction *)v4 setZip:v28];

  v29 = [v3 stringAtIndex:34];
  [(FHTransaction *)v4 setCountryCode:v29];

  v30 = [v3 stringAtIndex:35];
  [(FHTransaction *)v4 setCountry:v30];

  v31 = [v3 stringAtIndex:36];
  -[FHTransaction setMapsMerchantID:](v4, "setMapsMerchantID:", [v31 longLongValue]);

  -[FHTransaction setMapsMerchantResultProviderID:](v4, "setMapsMerchantResultProviderID:", [v3 intAtIndex:37]);
  v32 = [v3 stringAtIndex:38];
  -[FHTransaction setMapsMerchantBrandID:](v4, "setMapsMerchantBrandID:", [v32 longLongValue]);

  -[FHTransaction setMapsMerchantBrandResultProviderID:](v4, "setMapsMerchantBrandResultProviderID:", [v3 intAtIndex:39]);
  v33 = [v3 stringAtIndex:46];
  [(FHTransaction *)v4 setPeerPaymentCounterpartHandle:v33];

  -[FHTransaction setPeerPaymentType:](v4, "setPeerPaymentType:", [v3 intAtIndex:47]);
  v34 = [v3 stringAtIndex:48];
  [(FHTransaction *)v4 setTransactionDescription:v34];

  v35 = [v3 stringAtIndex:49];
  [(FHTransaction *)v4 setProcessedDescription:v35];

  -[FHTransaction setRecurring:](v4, "setRecurring:", [v3 intAtIndex:50] != 0);
  v36 = [v3 stringAtIndex:53];
  [(FHTransaction *)v4 setProprietaryBankTransactionCode:v36];

  v37 = [v3 stringAtIndex:54];
  [(FHTransaction *)v4 setProprietaryBankTransactionIssuer:v37];

  [v3 doubleAtIndex:40];
  v39 = v38;
  [v3 doubleAtIndex:41];
  v41 = v40;
  v42 = CLLocationCoordinate2DMake(v39, v40);
  if ((v39 != 0.0 || v41 != 0.0) && CLLocationCoordinate2DIsValid(v42))
  {
    v43 = objc_alloc(MEMORY[0x277CE41F8]);
    [v3 doubleAtIndex:43];
    v45 = v44;
    [v3 doubleAtIndex:42];
    v47 = v46;
    v48 = [MEMORY[0x277CBEAA8] now];
    v49 = [v43 initWithCoordinate:v48 altitude:v42.latitude horizontalAccuracy:v42.longitude verticalAccuracy:0.0 timestamp:{v45, v47}];
    [(FHTransaction *)v4 setLocation:v49];
  }

  if ([v3 intAtIndex:11])
  {
    v50 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:{objc_msgSend(v3, "intAtIndex:", 11)}];
    [(FHTransaction *)v4 setTimeZone:v50];
  }

  -[FHTransaction setDisputeType:](v4, "setDisputeType:", [v3 intAtIndex:44]);
  -[FHTransaction setDisputeStatus:](v4, "setDisputeStatus:", [v3 intAtIndex:45]);
  v51 = [v3 stringAtIndex:46];
  [(FHTransaction *)v4 setPeerPaymentCounterpartHandle:v51];

  -[FHTransaction setPeerPaymentType:](v4, "setPeerPaymentType:", [v3 intAtIndex:47]);
  v52 = [v3 unsignedIntAtIndex:51];
  v53 = [v3 unsignedIntAtIndex:52];
  if (v52 >= 1)
  {
    v54 = v53;
    if (v53 >= 1)
    {
      v55 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:v52];
      [(FHTransaction *)v4 setDisputeOpenDate:v55];

      v56 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:v54];
      [(FHTransaction *)v4 setDisputeLastUpdatedDate:v56];
    }
  }

  return v4;
}

- (id)featuresForTransaction:(id)a3
{
  v4 = a3;
  v5 = [(FHDatabaseManager *)self getTransactionByIdentifier:v4];
  if (-[FHDatabaseManager _hasDeterministicRealtime:](self, "_hasDeterministicRealtime:", v4) && ![v5 transactionType] && objc_msgSend(v5, "transactionStatus") == 1 && objc_msgSend(v5, "accountType") == 2)
  {
    [(FHDatabaseManager *)self _computeAllAggregateFeaturesWithTransactionId:v4];
    v6 = [(FHDatabaseManager *)self _fetch:@"select t_features, t_compound_features, locale from transaction_features where t_identifier == %@", v4];
    if ([v6 next])
    {
      v7 = [v6 stringAtIndex:0];
      v8 = [v6 stringAtIndex:1];
      v9 = [v6 stringAtIndex:2];
      v10 = [(FHDatabaseManager *)self _createFeatureResponseFromFeatures:v7 compoundFeatures:v8 locale:v9 forTxnID:v4];
    }

    else
    {
      v10 = 0;
    }

    [(FHDatabaseManager *)self closeAndUnlock:v6];
    goto LABEL_16;
  }

  if ([v5 transactionType] == 10 && objc_msgSend(v5, "accountType") == 2)
  {
    v11 = [(FHDatabaseManager *)self _computePaymentFeaturesForTransaction:v5];
    goto LABEL_10;
  }

  v6 = [(FHDatabaseManager *)self _getDisputeFeaturesForTransaction:v5];
  if (!v6 || [v5 transactionType] || objc_msgSend(v5, "transactionStatus"))
  {
    goto LABEL_15;
  }

  v15 = [v5 accountType];

  if (v15 == 2)
  {
    v11 = [(FHDatabaseManager *)self _computeDisputeFeaturesForTransaction:v5];
LABEL_10:
    v6 = v11;
    if (v11)
    {
      v12 = [v11 allObjects];
      v13 = [v12 componentsJoinedByString:@"|"];
      v10 = [(FHDatabaseManager *)self _createFeatureResponseFromFeatures:v13 compoundFeatures:0 locale:0 forTxnID:v4];

LABEL_16:
      goto LABEL_17;
    }

LABEL_15:
    v10 = 0;
    goto LABEL_16;
  }

  v10 = 0;
LABEL_17:

  return v10;
}

- (BOOL)_hasDeterministicRealtime:(id)a3
{
  v4 = [(FHDatabaseManager *)self _fetch:@"select * from features_deterministic_realtime where t_identifier == %@", a3];
  v5 = [v4 next];
  [(FHDatabaseManager *)self closeAndUnlock:v4];

  return v5;
}

- (id)_filterAggregateFeatureByCurrentWindow:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_timeIntervalSinceReferenceDate);
  v6 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(SELF.%K == nil and SELF.%K == nil) or %lu - SELF.%K.%K < SELF.%K.%K - SELF.%K.%K", @"processingWindowStartDate", @"processingWindowEndDate", -[FHDatabaseManager _mostRecentTransactionDate](self, "_mostRecentTransactionDate"), @"processingWindowEndDate", v5, @"processingWindowEndDate", v5, @"processingWindowStartDate", v5];
  v7 = [v4 filteredArrayUsingPredicate:v6];

  v8 = [v7 valueForKey:@"name"];

  return v8;
}

- (id)_createFeatureResponseFromFeatures:(id)a3 compoundFeatures:(id)a4 locale:(id)a5 forTxnID:(id)a6 forApplication:(id)a7
{
  v75 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = objc_opt_new();
  v61 = v12;
  v60 = [v12 componentsSeparatedByString:@"|"];
  v18 = [FinHealthFeatureHelper reconstructAggregateFeaturesWithProcessingWindow:?];
  v19 = FHApplicationToTagsMapping();
  v20 = [v19 objectForKey:v16];
  v21 = [v20 objectForKey:@"featuresWithIds"];

  v22 = v18;
  v23 = [MEMORY[0x277CCAC30] predicateWithFormat:@"SELF.%K in %@", @"name", v21];
  v24 = [v18 filteredArrayUsingPredicate:v23];
  v58 = [(FHDatabaseManager *)self _filterAggregateFeatureByCurrentWindow:v24];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __104__FHDatabaseManager__createFeatureResponseFromFeatures_compoundFeatures_locale_forTxnID_forApplication___block_invoke;
  aBlock[3] = &unk_2785CB0F8;
  v56 = v21;
  v67 = v56;
  v57 = v17;
  v68 = v57;
  v59 = v14;
  v69 = v59;
  v25 = _Block_copy(aBlock);
  if ([v13 length])
  {
    v25[2](v25, v13);
  }

  if (_os_feature_enabled_impl())
  {
    v26 = FHDataDirectory();
    v27 = [v26 stringByAppendingString:@"/inferred_merchants.txt"];

    v28 = [MEMORY[0x277CCAA00] defaultManager];
    v55 = v27;
    if ([v28 fileExistsAtPath:v27])
    {
      inferredMerchants = self->_inferredMerchants;

      if (inferredMerchants)
      {
LABEL_8:
        if (self->_inferredMerchants)
        {
          v50 = v24;
          v51 = v23;
          v52 = v22;
          v53 = v15;
          v54 = v13;
          v49 = [(FHDatabaseManager *)self _getTransactionByIdentifier:v15];
          v33 = [v49 displayName];
          v62 = 0u;
          v63 = 0u;
          v64 = 0u;
          v65 = 0u;
          v34 = self->_inferredMerchants;
          v35 = [(NSArray *)v34 countByEnumeratingWithState:&v62 objects:v74 count:16];
          if (v35)
          {
            v36 = v35;
            v37 = *v63;
            do
            {
              for (i = 0; i != v36; ++i)
              {
                if (*v63 != v37)
                {
                  objc_enumerationMutation(v34);
                }

                if (v33)
                {
                  v39 = *(*(&v62 + 1) + 8 * i);
                  if ([v39 containsString:v33])
                  {
                    v40 = [v39 rangeOfString:@"###"];
                    if (v40 != 0x7FFFFFFFFFFFFFFFLL)
                    {
                      v41 = [v39 substringFromIndex:v40 + 3];
                      v42 = v25;
                      v25[2](v25, v41);
                      v43 = FinHealthLogObject(@"FinHealthCore");
                      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
                      {
                        *buf = 138412546;
                        v71 = v39;
                        v72 = 2112;
                        v73 = v41;
                        _os_log_impl(&dword_226DD4000, v43, OS_LOG_TYPE_DEBUG, "inferredMerchantEntry: %@, productsWithLabels: %@", buf, 0x16u);
                      }

                      v25 = v42;
                    }
                  }
                }
              }

              v36 = [(NSArray *)v34 countByEnumeratingWithState:&v62 objects:v74 count:16];
            }

            while (v36);
          }

          v15 = v53;
          v13 = v54;
          v22 = v52;
          v24 = v50;
          v23 = v51;
          v44 = v55;
          v45 = v49;
        }

        else
        {
          v45 = FinHealthLogObject(@"FinHealthCore");
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v44 = v55;
            v71 = v55;
            _os_log_impl(&dword_226DD4000, v45, OS_LOG_TYPE_DEBUG, "check finalFilePath: %@", buf, 0xCu);
          }

          else
          {
            v44 = v55;
          }
        }

        goto LABEL_27;
      }

      v28 = [MEMORY[0x277CCACA8] stringWithContentsOfFile:v55 encoding:4 error:0];
      v30 = [MEMORY[0x277CCA900] newlineCharacterSet];
      v31 = [v28 componentsSeparatedByCharactersInSet:v30];
      v32 = self->_inferredMerchants;
      self->_inferredMerchants = v31;
    }

    goto LABEL_8;
  }

LABEL_27:
  v46 = [[FHFeaturesResponse alloc] initWithSmartFeatures:v58 aggregateFeatureswithProcessingWindow:v24 compoundFeatures:v57 transactionID:v15];

  v47 = *MEMORY[0x277D85DE8];

  return v46;
}

void __104__FHDatabaseManager__createFeatureResponseFromFeatures_compoundFeatures_locale_forTxnID_forApplication___block_invoke(uint64_t a1, void *a2)
{
  v51 = *MEMORY[0x277D85DE8];
  v3 = [a2 dataUsingEncoding:4];
  v48 = 0;
  v4 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v3 options:0 error:&v48];
  v5 = v48;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && !v5)
  {
    v31 = v4;
    v32 = v3;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v35 = v4;
    obj = [v35 allKeys];
    v6 = [obj countByEnumeratingWithState:&v44 objects:v50 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v45;
      v33 = *v45;
      v34 = a1;
      do
      {
        v9 = 0;
        v36 = v7;
        do
        {
          if (*v45 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v44 + 1) + 8 * v9);
          if ([*(a1 + 32) containsObject:v10])
          {
            v39 = v9;
            v11 = objc_opt_new();
            v40 = 0u;
            v41 = 0u;
            v42 = 0u;
            v43 = 0u;
            v38 = v10;
            v12 = [v35 objectForKey:v10];
            v13 = [v12 countByEnumeratingWithState:&v40 objects:v49 count:16];
            if (v13)
            {
              v14 = v13;
              v15 = *v41;
              do
              {
                for (i = 0; i != v14; ++i)
                {
                  if (*v41 != v15)
                  {
                    objc_enumerationMutation(v12);
                  }

                  v17 = *(*(&v40 + 1) + 8 * i);
                  v18 = [v17 objectForKey:@"featureLabel"];
                  v19 = MEMORY[0x277CCACA8];
                  v20 = [v17 objectForKey:@"featureRank"];
                  [v20 doubleValue];
                  v22 = [v19 stringWithFormat:@"%f", v21];

                  v23 = [FHSmartCompoundFeatureRankedValue alloc];
                  v24 = [objc_alloc(MEMORY[0x277CCA980]) initWithString:v22];
                  v25 = [(FHSmartCompoundFeatureRankedValue *)v23 initWithLabelAndRank:v18 featureRank:v24];
                  [v11 addObject:v25];
                }

                v14 = [v12 countByEnumeratingWithState:&v40 objects:v49 count:16];
              }

              while (v14);
            }

            a1 = v34;
            if ([v11 count])
            {
              v26 = *(v34 + 40);
              v27 = [FHSmartCompoundFeature alloc];
              v28 = [MEMORY[0x277CBEA60] arrayWithArray:v11];
              v29 = [(FHSmartCompoundFeature *)v27 initWithCompoundFeatureKey:v38 smartCompoundFeatures:v28 locale:*(v34 + 48)];
              [v26 addObject:v29];
            }

            v8 = v33;
            v7 = v36;
            v9 = v39;
          }

          ++v9;
        }

        while (v9 != v7);
        v7 = [obj countByEnumeratingWithState:&v44 objects:v50 count:16];
      }

      while (v7);
    }

    v4 = v31;
    v3 = v32;
    v5 = 0;
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (int64_t)_mostRecentTransactionDate
{
  v3 = [(PQLConnection *)self->_db fetch:@"select * from transactions t where t.t_type == %lu and t.t_status == %lu and t.a_type == %d order by t_date desc limit %d", 0, 1, 2, 1];
  if ([v3 next])
  {
    v4 = [(FHDatabaseManager *)self reconstructTransaction:v3];
    v5 = [v4 transactionDate];
    [v5 timeIntervalSinceReferenceDate];
    v7 = v6;
  }

  else
  {
    v7 = -1;
  }

  [v3 close];

  return v7;
}

- (int64_t)_startingDateSmartFeatureComputation
{
  if ([(FHDatabaseManager *)self mostRecentTransactionDate]== -1)
  {
    return -1;
  }

  else
  {
    return 0;
  }
}

- (void)_computeAllAggregateFeaturesWithTransactionId:(id)a3
{
  v34 = a3;
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v7 = FinHealthLogObject(@"FinHealthCore");
  v8 = FinHealthLogObject(@"FinHealthCore");
  v9 = os_signpost_id_make_with_pointer(v8, self);

  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_226DD4000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v9, "_computeAllAggregateFeaturesWithTransactionId", "", buf, 2u);
  }

  v10 = FinHealthLogObject(@"FinHealthCore");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_226DD4000, v10, OS_LOG_TYPE_INFO, "BEGIN _computeAllAggregateFeaturesWithTransactionId", buf, 2u);
  }

  v11 = FHAmountSmartFeaturesArray();
  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = __67__FHDatabaseManager__computeAllAggregateFeaturesWithTransactionId___block_invoke;
  v53[3] = &unk_2785CB120;
  v53[4] = self;
  v12 = v4;
  v54 = v12;
  [v11 enumerateObjectsUsingBlock:v53];

  v13 = FHDateTimeSmartFeaturesArray();
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __67__FHDatabaseManager__computeAllAggregateFeaturesWithTransactionId___block_invoke_2;
  v51[3] = &unk_2785CB120;
  v51[4] = self;
  v14 = v5;
  v52 = v14;
  [v13 enumerateObjectsUsingBlock:v51];

  v15 = FHMerchantSmartFeaturesArray();
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __67__FHDatabaseManager__computeAllAggregateFeaturesWithTransactionId___block_invoke_3;
  v49[3] = &unk_2785CB120;
  v49[4] = self;
  v16 = v6;
  v50 = v16;
  [v15 enumerateObjectsUsingBlock:v49];

  v17 = MEMORY[0x277CCACA8];
  v18 = [(FHDatabaseManager *)self _startingDateSmartFeatureComputation];
  v19 = [(FHDatabaseManager *)self mostRecentTransactionDate];
  v20 = FHMultiClassPredictionsSmartFeaturesAsString();
  v21 = [v17 stringWithFormat:@"select f.identifier, l.smart_feature_name FHSmartFeatureAggregateType from features_predicted_realtime f inner join features_prediction_labels l on f.feature_name = l.feature_name and l.feature_predicted_class = f.feature_predicted_class where f.identifier in (select t_identifier from transactions where t_date >= %lu and t_date <= %lu and t_fh_internal_state == %lu) and f.feature_name in (%@)", v18, v19, 2, v20];

  v22 = v34;
  v36 = v21;
  if (v34)
  {
    [(FHDatabaseManager *)self _executeSeparateQueriesForTransactionId:v34 amountQueries:v12 dateTimeQueries:v14 merchantQueries:v16 multiClassQuery:v21];
  }

  else
  {
    v35 = v14;
    *buf = 0;
    v44 = buf;
    v45 = 0x3032000000;
    v46 = __Block_byref_object_copy_;
    v47 = __Block_byref_object_dispose_;
    v23 = 0;
    v48 = objc_alloc_init(MEMORY[0x277CBEB18]);
    do
    {
      v24 = objc_autoreleasePoolPush();
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __67__FHDatabaseManager__computeAllAggregateFeaturesWithTransactionId___block_invoke_4;
      v37[3] = &unk_2785CB148;
      v42 = buf;
      v37[4] = self;
      v25 = v12;
      v38 = v25;
      v26 = v35;
      v39 = v26;
      v27 = v16;
      v40 = v27;
      v28 = v36;
      v41 = v28;
      v29 = [(FHDatabaseManager *)self streamTransactionsWithLimit:25 internalState:2 offSet:v23 onTransaction:v37];

      objc_autoreleasePoolPop(v24);
      v23 += 25;
    }

    while (v29 == 25);
    if ([*(v44 + 5) count])
    {
      [(FHDatabaseManager *)self _executeSeparateQueriesForTransactionIds:*(v44 + 5) amountQueries:v25 dateTimeQueries:v26 merchantQueries:v27 multiClassQuery:v28];
    }

    _Block_object_dispose(buf, 8);

    v22 = 0;
    v14 = v35;
  }

  v30 = FinHealthLogObject(@"FinHealthCore");
  v31 = FinHealthLogObject(@"FinHealthCore");
  v32 = os_signpost_id_make_with_pointer(v31, self);

  if (v32 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v30))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_226DD4000, v30, OS_SIGNPOST_INTERVAL_END, v32, "_computeAllAggregateFeaturesWithTransactionId", "", buf, 2u);
  }

  v33 = FinHealthLogObject(@"FinHealthCore");
  if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_226DD4000, v33, OS_LOG_TYPE_INFO, "END _computeAllAggregateFeaturesWithTransactionId", buf, 2u);
  }
}

void __67__FHDatabaseManager__computeAllAggregateFeaturesWithTransactionId___block_invoke(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = [*(a1 + 32) getFHSmartFeatureByAmountType:?];
  v4 = [v3 comparator];
  v5 = [v3 amount];
  v6 = [v3 processingWindowStartDate];
  [v6 timeIntervalSinceReferenceDate];
  v8 = v7;

  v9 = [v3 processingWindowEndDate];
  [v9 timeIntervalSinceReferenceDate];
  v11 = v10;

  if (v4)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = *(a1 + 40);
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"select t_identifier, '%@, %lu, %lu' FHSmartFeatureAggregateType from transactions where t_amount %@ %lu", v15, v8, v11, v4, v5];
    [v13 addObject:v14];

    objc_autoreleasePoolPop(v12);
  }
}

void __67__FHDatabaseManager__computeAllAggregateFeaturesWithTransactionId___block_invoke_2(uint64_t a1, void *a2)
{
  v18 = a2;
  v3 = [*(a1 + 32) getFHSmartFeatureByDateTimeType:v18];
  v4 = [v3 startDate];
  [v4 timeIntervalSinceReferenceDate];
  v6 = v5;

  v7 = [v3 endDate];
  [v7 timeIntervalSinceReferenceDate];
  v9 = v8;

  v10 = [v3 processingWindowStartDate];
  [v10 timeIntervalSinceReferenceDate];
  v12 = v11;

  v13 = [v3 processingWindowEndDate];
  [v13 timeIntervalSinceReferenceDate];
  v15 = v14;

  v16 = objc_autoreleasePoolPush();
  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"select t_identifier, '%@, %lu, %lu' FHSmartFeatureAggregateType from transactions where t_date >= %lu and t_date <= %lu and a_type == %d", v18, v12, v15, v6, v9, 2];
  [*(a1 + 40) addObject:v17];

  objc_autoreleasePoolPop(v16);
}

void __67__FHDatabaseManager__computeAllAggregateFeaturesWithTransactionId___block_invoke_3(uint64_t a1, void *a2)
{
  v14 = a2;
  v3 = [*(a1 + 32) getFHSmartFeatureByMerchantType:v14];
  v4 = [v3 processingWindowStartDate];
  [v4 timeIntervalSinceReferenceDate];
  v6 = v5;

  v7 = [v3 processingWindowEndDate];
  [v7 timeIntervalSinceReferenceDate];
  v9 = v8;

  v10 = objc_autoreleasePoolPush();
  v11 = MEMORY[0x277CCACA8];
  v12 = [v3 merchantDisplayName];
  v13 = [v11 stringWithFormat:@"select t_identifier, '%@, %lu, %lu' FHSmartFeatureAggregateType from transactions where m_displayname == %@", v14, v6, v9, v12];

  [*(a1 + 40) addObject:v13];
  objc_autoreleasePoolPop(v10);
}

void __67__FHDatabaseManager__computeAllAggregateFeaturesWithTransactionId___block_invoke_4(uint64_t a1, void *a2)
{
  v6 = a2;
  if ([*(*(*(a1 + 72) + 8) + 40) count] == 5)
  {
    [*(a1 + 32) _executeSeparateQueriesForTransactionIds:*(*(*(a1 + 72) + 8) + 40) amountQueries:*(a1 + 40) dateTimeQueries:*(a1 + 48) merchantQueries:*(a1 + 56) multiClassQuery:*(a1 + 64)];
    [*(*(*(a1 + 72) + 8) + 40) removeAllObjects];
  }

  if (![v6 transactionType] && objc_msgSend(v6, "transactionStatus") == 1 && objc_msgSend(v6, "accountType") == 2)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = *(*(*(a1 + 72) + 8) + 40);
    v5 = [v6 identifier];
    [v4 addObject:v5];

    objc_autoreleasePoolPop(v3);
  }
}

- (void)_executeSeparateQueriesForTransactionId:(id)a3 amountQueries:(id)a4 dateTimeQueries:(id)a5 merchantQueries:(id)a6 multiClassQuery:(id)a7
{
  v21 = *MEMORY[0x277D85DE8];
  v20 = a3;
  v12 = MEMORY[0x277CBEA60];
  v13 = a7;
  v14 = a6;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  v18 = [v12 arrayWithObjects:&v20 count:1];

  [(FHDatabaseManager *)self _executeSeparateQueriesForTransactionIds:v18 amountQueries:v16 dateTimeQueries:v15 merchantQueries:v14 multiClassQuery:v13, v20, v21];
  v19 = *MEMORY[0x277D85DE8];
}

- (void)_executeSeparateQueriesForTransactionIds:(id)a3 amountQueries:(id)a4 dateTimeQueries:(id)a5 merchantQueries:(id)a6 multiClassQuery:(id)a7
{
  v77 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v51 = a7;
  v16 = objc_opt_new();
  v50 = v12;
  v55 = [(FHDatabaseManager *)self _buildTransactionIdFilter:v12];
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  obj = v13;
  v17 = [obj countByEnumeratingWithState:&v69 objects:v76 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v70;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v70 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ AND t_identifier IN (%@)", *(*(&v69 + 1) + 8 * i), v55];
        [(FHDatabaseManager *)self _executeFeatureQuery:v21 aggregatedFeatures:v16];
      }

      v18 = [obj countByEnumeratingWithState:&v69 objects:v76 count:16];
    }

    while (v18);
  }

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v53 = v14;
  v22 = [v53 countByEnumeratingWithState:&v65 objects:v75 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v66;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v66 != v24)
        {
          objc_enumerationMutation(v53);
        }

        v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ AND t_identifier IN (%@)", *(*(&v65 + 1) + 8 * j), v55];
        [(FHDatabaseManager *)self _executeFeatureQuery:v26 aggregatedFeatures:v16];
      }

      v23 = [v53 countByEnumeratingWithState:&v65 objects:v75 count:16];
    }

    while (v23);
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v27 = v15;
  v28 = [v27 countByEnumeratingWithState:&v61 objects:v74 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v62;
    do
    {
      for (k = 0; k != v29; ++k)
      {
        if (*v62 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ AND t_identifier IN (%@)", *(*(&v61 + 1) + 8 * k), v55];
        [(FHDatabaseManager *)self _executeFeatureQuery:v32 aggregatedFeatures:v16];
      }

      v29 = [v27 countByEnumeratingWithState:&v61 objects:v74 count:16];
    }

    while (v29);
  }

  v48 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ AND f.identifier IN (%@)", v51, v55];
  [FHDatabaseManager _executeFeatureQuery:"_executeFeatureQuery:aggregatedFeatures:" aggregatedFeatures:?];
  v47 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT t_identifier, t_compound_feature_value FROM features_compound_realtime WHERE t_identifier IN (%@)", v55];
  v33 = [(FHDatabaseManager *)self _lockFreeFetch:-1];
  v56 = objc_opt_new();
  if ([v33 next])
  {
    do
    {
      v34 = [v33 stringAtIndex:0];
      v35 = [v33 stringAtIndex:1];
      v36 = v35;
      if (v34 && v35)
      {
        [v56 setObject:v35 forKeyedSubscript:v34];
      }
    }

    while (([v33 next] & 1) != 0);
  }

  v46 = v33;
  v49 = v27;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v52 = [v16 allKeys];
  v37 = [v52 countByEnumeratingWithState:&v57 objects:v73 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v58;
    do
    {
      for (m = 0; m != v38; ++m)
      {
        if (*v58 != v39)
        {
          objc_enumerationMutation(v52);
        }

        v41 = *(*(&v57 + 1) + 8 * m);
        v42 = [v16 objectForKeyedSubscript:v41];
        v43 = [v42 componentsJoinedByString:@"|||"];
        v44 = [v56 objectForKeyedSubscript:v41];
        [(FHDatabaseManager *)self _invertFeaturesForTransaction:v41 featuresString:v43 compoundFeatures:v44];
      }

      v38 = [v52 countByEnumeratingWithState:&v57 objects:v73 count:16];
    }

    while (v38);
  }

  v45 = *MEMORY[0x277D85DE8];
}

- (id)_buildTransactionIdFilter:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
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

        v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"'%@'", *(*(&v14 + 1) + 8 * i)];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v11 = [v4 componentsJoinedByString:{@", "}];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)_executeFeatureQuery:(id)a3 aggregatedFeatures:(id)a4
{
  v15 = a3;
  v6 = a4;
  v7 = [(FHDatabaseManager *)self _lockFreeFetch:v15, -1];
  if ([v7 next])
  {
    do
    {
      v8 = objc_autoreleasePoolPush();
      v9 = [v7 stringAtIndex:0];
      v10 = [v7 stringAtIndex:1];
      v11 = v10;
      if (v9 && v10)
      {
        v12 = [v6 objectForKeyedSubscript:v9];

        if (!v12)
        {
          v13 = objc_opt_new();
          [v6 setObject:v13 forKeyedSubscript:v9];
        }

        v14 = [v6 objectForKeyedSubscript:v9];
        [v14 addObject:v11];
      }

      objc_autoreleasePoolPop(v8);
    }

    while (([v7 next] & 1) != 0);
  }
}

- (void)_invertFeaturesForTransaction:(id)a3 featuresString:(id)a4 compoundFeatures:(id)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(FHDatabaseManager *)self _getTransactionByIdentifier:v8];
  if (![v11 transactionType] && objc_msgSend(v11, "transactionStatus") == 1 && objc_msgSend(v11, "accountType") == 2)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = MEMORY[0x277CBEB98];
    v14 = [v9 componentsSeparatedByString:@"|||"];
    v15 = [v13 setWithArray:v14];

    v16 = [(FHDatabaseManager *)self _getDisputeFeaturesForTransaction:v11];
    if (v16)
    {
      v17 = [v15 setByAddingObjectsFromSet:v16];

      v15 = v17;
    }

    if (!v8)
    {
      goto LABEL_16;
    }

    v18 = [v15 count];
    if (!v10 && !v18)
    {
      goto LABEL_16;
    }

    v19 = [v11 financeTransactionIdentifier];
    v20 = [(FHDatabaseManager *)self _insertOrUpdateTransactionFeatures:v15 compoundFeatures:v10 transactionID:v8 financeTransactionID:v19];

    v21 = FinHealthLogObject(@"FinHealthCore");
    v22 = v21;
    if (v20)
    {
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v28) = 0;
        v23 = "_insertOrUpdateTransactionFeatures success";
        v24 = v22;
        v25 = OS_LOG_TYPE_DEBUG;
        v26 = 2;
LABEL_14:
        _os_log_impl(&dword_226DD4000, v24, v25, v23, &v28, v26);
      }
    }

    else if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v28 = 138412290;
      v29 = v8;
      v23 = "_insertOrUpdateTransactionFeatures fails for transactionID %@";
      v24 = v22;
      v25 = OS_LOG_TYPE_ERROR;
      v26 = 12;
      goto LABEL_14;
    }

LABEL_16:
    objc_autoreleasePoolPop(v12);
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)clearCardProcessingHistory
{
  v15 = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, self);
  v2 = [FHDatabaseEntity alloc];
  v3 = objc_loadWeakRetained(&location);
  v4 = [(FHDatabaseEntity *)v2 initWithEntity:@"fh_processing_history" databaseManager:v3];

  v5 = [FHDatabaseClauseFromBuilder initWithBuilder:&__block_literal_global_229];
  v6 = [(FHDatabaseEntity *)v4 clearDataWithClauseBuilder:v5];
  v7 = FinHealthLogObject(@"FinHealthClient");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = @"Failed to perform";
    if (v6)
    {
      v8 = @"Successfully performed operation";
    }

    *buf = 138412546;
    v12 = v8;
    v13 = 2112;
    v14 = @"FHSmartFeatureCompoundTypePointsOfInterest";
    _os_log_impl(&dword_226DD4000, v7, OS_LOG_TYPE_DEBUG, "%@: delete all card processing history records of feature %@", buf, 0x16u);
  }

  objc_destroyWeak(&location);
  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)_insertOrUpdateTransactionFeatures:(id)a3 compoundFeatures:(id)a4 transactionID:(id)a5 financeTransactionID:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v12)
  {
    goto LABEL_13;
  }

  v33 = v11;
  v14 = [v10 allObjects];
  v15 = [v14 componentsJoinedByString:@"|"];

  v34 = self;
  v16 = [(PQLConnection *)self->_db fetch:@"select t_features, t_compound_features, locale from transaction_features where t_identifier == %@", v12];
  if (![v16 next])
  {
    v26 = v33;
    goto LABEL_11;
  }

  v32 = v11;
  v17 = MEMORY[0x277CBEB58];
  v18 = [v16 stringAtIndex:0];
  v19 = [v18 componentsSeparatedByString:@"|"];
  v20 = [v17 setWithArray:v19];

  v21 = FHRepeatingAggregateFeatureSet();
  if (![v20 intersectsSet:v21])
  {
    goto LABEL_6;
  }

  v22 = FHRepeatingAggregateFeatureSet();
  v23 = [v10 intersectsSet:v22];

  if (v23)
  {
    v21 = FHRepeatingAggregateFeatureSet();
    [v20 minusSet:v21];
LABEL_6:
  }

  [v20 unionSet:v10];
  v24 = [v20 allObjects];
  v25 = [v24 componentsJoinedByString:@"|"];

  v26 = v33;
  if (!v33)
  {
    v26 = [v16 stringAtIndex:1];
  }

  v15 = v25;
  v11 = v32;
LABEL_11:
  [v16 close];
  v27 = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
  v28 = [v27 localeIdentifier];
  v29 = [(FHDatabaseManager *)v34 _execute:@"insert or replace into transaction_features (t_identifier, t_features, t_compound_features, locale, t_mark_for_delete, t_finance_transaction_id) values (%@, %@, %@, %@, %d, %@)", v12, v15, v26, v28, 0, v13];

  if (!v29)
  {
LABEL_13:
    v30 = 0;
    goto LABEL_14;
  }

  v30 = 1;
LABEL_14:

  return v30;
}

- (id)getTransactionSmartFeaturesForApplication:(id)a3
{
  v50 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v6 = FHApplications();
  v7 = [v6 containsObject:v4];

  if (v7)
  {
    v8 = FHApplicationToTagsMapping();
    v9 = [v8 objectForKey:v4];
    v10 = [v9 objectForKey:@"featuresWithIds"];

    v28 = @"FinHealthCore";
    v11 = FinHealthLogObject(@"FinHealthCore");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v39 = "[FHDatabaseManager getTransactionSmartFeaturesForApplication:]";
      v40 = 2112;
      v41 = v4;
      v42 = 2112;
      v43 = v10;
      _os_log_impl(&dword_226DD4000, v11, OS_LOG_TYPE_DEBUG, "%s Application[%@] is asking for tags with transaction ids: %@", buf, 0x20u);
    }

    v12 = MEMORY[0x277CCAC30];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __63__FHDatabaseManager_getTransactionSmartFeaturesForApplication___block_invoke;
    v35[3] = &unk_2785CB190;
    v29 = v10;
    v30 = v4;
    v36 = v29;
    v13 = v4;
    v37 = v13;
    v31 = [v12 predicateWithBlock:v35];
    if ([v13 isEqual:@"Search"])
    {
      self->_transactionFeaturesOffset = 0;
    }

    [v5 addObjectsFromArray:self->_transactionFeaturesCache];
    [(NSMutableArray *)self->_transactionFeaturesCache removeAllObjects];
    v14 = 0;
    while (1)
    {
      v15 = [v5 count];
      if (v15 >= 0x64)
      {
        break;
      }

      v16 = [v13 isEqualToString:@"Search"];
      transactionFeaturesOffset = self->_transactionFeaturesOffset;
      if (v16)
      {
        [MEMORY[0x277CCACA8] stringWithFormat:@"select t_identifier, t_features, t_compound_features, locale from transaction_features where t_mark_for_delete = %d limit %d offset %d", 0, 100, transactionFeaturesOffset, v28, v29];
      }

      else
      {
        [MEMORY[0x277CCACA8] stringWithFormat:@"select t_identifier, t_features, t_compound_features, locale from transaction_features limit %d offset %d", 100, transactionFeaturesOffset, v27, v28, v29];
      }
      v18 = ;

      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __63__FHDatabaseManager_getTransactionSmartFeaturesForApplication___block_invoke_2;
      v32[3] = &unk_2785CB1B8;
      v32[4] = self;
      v33 = v13;
      v34 = v5;
      v19 = [(FHDatabaseManager *)self streamGenericSQLFetch:v32 predicate:v31 sqlFetchQuery:v18];
      self->_transactionFeaturesOffset += v19;

      v14 = v18;
      if (!v19)
      {
        [(NSMutableArray *)self->_transactionFeaturesCache removeAllObjects];
        goto LABEL_15;
      }
    }

    v18 = v14;
LABEL_15:
    v21 = FinHealthLogObject(v28);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v22 = [v5 count];
      v23 = self->_transactionFeaturesOffset;
      v24 = @"True";
      *buf = 136316418;
      v39 = "[FHDatabaseManager getTransactionSmartFeaturesForApplication:]";
      if (v15 < 0x64)
      {
        v24 = @"False";
      }

      v40 = 2112;
      v41 = v13;
      v42 = 2048;
      v43 = v22;
      v44 = 2112;
      v45 = v24;
      v46 = 2048;
      v47 = v23;
      v48 = 2112;
      v49 = v5;
      _os_log_impl(&dword_226DD4000, v21, OS_LOG_TYPE_DEBUG, "%s Transaction features for Application[%@] count[%lu] moreComing[%@] scanOffset[%lu] :%@", buf, 0x3Eu);
    }

    if ([v5 count])
    {
      v20 = [MEMORY[0x277CBEA60] arrayWithArray:v5];
    }

    else
    {
      v20 = 0;
    }

    v4 = v30;
  }

  else
  {
    v20 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];

  return v20;
}

uint64_t __63__FHDatabaseManager_getTransactionSmartFeaturesForApplication___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    v16 = a1;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v17 + 1) + 8 * v8);
        v10 = [v3 objectForKey:@"t_features"];
        if ([v10 containsString:v9])
        {

LABEL_13:
          v13 = 1;
          goto LABEL_14;
        }

        v11 = [v3 objectForKey:@"t_compound_features"];
        v12 = [v11 containsString:v9];

        if (v12)
        {
          goto LABEL_13;
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
      a1 = v16;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  if ([*(a1 + 40) isEqualToString:@"Search"])
  {
    v4 = [v3 objectForKey:@"t_features"];
    v13 = [v4 isEqualToString:&stru_283A7B918];
LABEL_14:
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

void __63__FHDatabaseManager_getTransactionSmartFeaturesForApplication___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 objectAtIndexedSubscript:1];
  v6 = [v5 stringValue];
  v7 = [v4 objectAtIndexedSubscript:2];
  v8 = [v7 stringValue];
  v9 = [v4 objectAtIndexedSubscript:3];
  v10 = [v9 stringValue];
  v11 = [v4 objectAtIndexedSubscript:0];

  v12 = [v11 stringValue];
  v14 = [v3 _createFeatureResponseFromFeatures:v6 compoundFeatures:v8 locale:v10 forTxnID:v12 forApplication:*(a1 + 40)];

  v13 = (a1 + 48);
  if ([*(a1 + 48) count] >= 0x64)
  {
    v13 = (*(a1 + 32) + 96);
  }

  [*v13 addObject:v14];
}

- (BOOL)deleteAllMarkedTransactionFeatures
{
  objc_initWeak(&location, self);
  v2 = [FHDatabaseEntity alloc];
  v3 = objc_loadWeakRetained(&location);
  v4 = [(FHDatabaseEntity *)v2 initWithEntity:@"transaction_features" databaseManager:v3];

  v5 = [FHDatabaseClauseFromBuilder initWithBuilder:&__block_literal_global_249];
  v6 = [(FHDatabaseEntity *)v4 clearDataWithClauseBuilder:v5];

  objc_destroyWeak(&location);
  return v6;
}

- (BOOL)deleteAllRecordsFromTransactionFeatures
{
  v2 = [[FHDatabaseEntity alloc] initWithEntity:@"transaction_features" databaseManager:self];
  v3 = [(FHDatabaseEntity *)v2 clearData];

  return v3;
}

- (BOOL)deleteTaggedButDeletedEvent:(id)a3
{
  v4 = a3;
  v5 = [[FHDatabaseEntity alloc] initWithEntity:@"features_events" databaseManager:self];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __49__FHDatabaseManager_deleteTaggedButDeletedEvent___block_invoke;
  v10[3] = &unk_2785CB058;
  v11 = v4;
  v6 = v4;
  v7 = [FHDatabaseClauseFromBuilder initWithBuilder:v10];
  v8 = [(FHDatabaseEntity *)v5 clearDataWithClauseBuilder:v7];

  return v8;
}

- (BOOL)deleteTaggedEventsInTimeRange:(id)a3 startDate:(id)a4 comparatorOfEndDate:(id)a5 endDate:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [[FHDatabaseEntity alloc] initWithEntity:@"features_events" databaseManager:self];
  v22 = MEMORY[0x277D85DD0];
  v23 = 3221225472;
  v24 = __89__FHDatabaseManager_deleteTaggedEventsInTimeRange_startDate_comparatorOfEndDate_endDate___block_invoke;
  v25 = &unk_2785CB1E0;
  v26 = v10;
  v27 = v11;
  v28 = v12;
  v29 = v13;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  v19 = [FHDatabaseClauseFromBuilder initWithBuilder:&v22];
  v20 = [(FHDatabaseEntity *)v14 clearDataWithClauseBuilder:v19, v22, v23, v24, v25];

  return v20;
}

void __89__FHDatabaseManager_deleteTaggedEventsInTimeRange_startDate_comparatorOfEndDate_endDate___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  [v5 addDateClause:v3 fieldName:@"features_events.start_date" expression:v4];
  [v5 addDateClause:a1[6] fieldName:@"features_events.end_date" expression:a1[7]];
}

- (void)computeRecurringClassesWithMerchantEntityCounts:(id)a3 peerPaymentCounts:(id)a4 merchantDetailedCategoryCounts:(id)a5
{
  v92 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = FinHealthLogObject(@"FinHealthCore");
  v12 = FinHealthLogObject(@"FinHealthCore");
  v13 = os_signpost_id_make_with_pointer(v12, self);

  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_226DD4000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v13, "processAggregateFeatures:computeRecurringHistograms", "", buf, 2u);
  }

  v14 = FinHealthLogObject(@"FinHealthCore");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_226DD4000, v14, OS_LOG_TYPE_INFO, "BEGIN processAggregateFeatures:computeRecurringHistograms", buf, 2u);
  }

  *buf = 0;
  v84 = buf;
  v85 = 0x3032000000;
  v86 = __Block_byref_object_copy_;
  v87 = __Block_byref_object_dispose_;
  v88 = self->_decimalRmseThreshold;
  v81[0] = 0;
  v81[1] = v81;
  v81[2] = 0x3032000000;
  v81[3] = __Block_byref_object_copy_;
  v81[4] = __Block_byref_object_dispose_;
  v82 = self->_secondsInDay;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __118__FHDatabaseManager_computeRecurringClassesWithMerchantEntityCounts_peerPaymentCounts_merchantDetailedCategoryCounts___block_invoke;
  aBlock[3] = &unk_2785CB278;
  aBlock[5] = buf;
  aBlock[6] = v81;
  aBlock[4] = self;
  v42 = _Block_copy(aBlock);
  v74 = 0;
  v75 = &v74;
  v76 = 0x3032000000;
  v77 = __Block_byref_object_copy_;
  v78 = __Block_byref_object_dispose_;
  v79 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v68 = 0;
  v69 = &v68;
  v70 = 0x3032000000;
  v71 = __Block_byref_object_copy_;
  v72 = __Block_byref_object_dispose_;
  v73 = objc_opt_new();
  v62 = 0;
  v63 = &v62;
  v64 = 0x3032000000;
  v65 = __Block_byref_object_copy_;
  v66 = __Block_byref_object_dispose_;
  v67 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v40 = objc_opt_new();
  v56 = 0;
  v57 = &v56;
  v58 = 0x3032000000;
  v59 = __Block_byref_object_copy_;
  v60 = __Block_byref_object_dispose_;
  v61 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v41 = objc_opt_new();
  v39 = [v8 keysOfEntriesPassingTest:&__block_literal_global_273];
  v15 = [v39 allObjects];
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __118__FHDatabaseManager_computeRecurringClassesWithMerchantEntityCounts_peerPaymentCounts_merchantDetailedCategoryCounts___block_invoke_2_274;
  v47[3] = &unk_2785CB2C0;
  v47[4] = self;
  v36 = v9;
  v48 = v36;
  v52 = &v74;
  v38 = v15;
  v49 = v38;
  v53 = &v62;
  v37 = v10;
  v50 = v37;
  v54 = &v56;
  v55 = &v68;
  v35 = v8;
  v51 = v35;
  [(FHDatabaseManager *)self streamTransactionsWithLimit:-1 internalState:2 onTransaction:v47];
  v42[2](v42, v75[5], v69[5]);
  [v75[5] removeAllObjects];
  if ([v63[5] count])
  {
    v42[2](v42, v63[5], v40);
    [v63[5] removeAllObjects];
  }

  v42[2](v42, v57[5], v41);
  [v57[5] removeAllObjects];
  [(FHDatabaseManager *)self _getTransactionsMarkedForRecurrChange];
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v16 = v44 = 0u;
  v17 = [v16 countByEnumeratingWithState:&v43 objects:v91 count:16];
  if (v17)
  {
    v18 = *v44;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v44 != v18)
        {
          objc_enumerationMutation(v16);
        }

        v20 = *(*(&v43 + 1) + 8 * i);
        v21 = objc_alloc_init(FHRealtimeFeaturesResponse);
        v22 = objc_alloc(MEMORY[0x277CBEB38]);
        v23 = [(FHDatabaseManager *)self compoundFeaturesForTransaction:v20];
        v24 = [v22 initWithDictionary:v23];

        v25 = [v16 objectForKey:v20];
        [v24 setObject:v25 forKey:@"FHSmartFeatureCompoundTypeRecurringChange"];
        [(FHRealtimeFeaturesResponse *)v21 setSmartCompoundFeatures:v24];
        if ([(FHDatabaseManager *)self insertFeaturesCompoundRealtime:v20 realtimeFeatures:v21])
        {
          v26 = FinHealthLogObject(@"FinHealthCore");
          if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_19;
          }

          *v89 = 138412290;
          v90 = v25;
          v27 = v26;
          v28 = OS_LOG_TYPE_DEBUG;
          v29 = "insertSuccess: smartFeatureValues: %@";
        }

        else
        {
          v26 = FinHealthLogObject(@"FinHealthCore");
          if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_19;
          }

          *v89 = 138412290;
          v90 = v25;
          v27 = v26;
          v28 = OS_LOG_TYPE_ERROR;
          v29 = "insertFailure smartFeatureValues: %@";
        }

        _os_log_impl(&dword_226DD4000, v27, v28, v29, v89, 0xCu);
LABEL_19:
      }

      v17 = [v16 countByEnumeratingWithState:&v43 objects:v91 count:16];
    }

    while (v17);
  }

  v30 = FinHealthLogObject(@"FinHealthCore");
  v31 = FinHealthLogObject(@"FinHealthCore");
  v32 = os_signpost_id_make_with_pointer(v31, self);

  if (v32 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v30))
  {
    *v89 = 0;
    _os_signpost_emit_with_name_impl(&dword_226DD4000, v30, OS_SIGNPOST_INTERVAL_END, v32, "processAggregateFeatures:computeRecurringHistograms", "", v89, 2u);
  }

  v33 = FinHealthLogObject(@"FinHealthCore");
  if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
  {
    *v89 = 0;
    _os_log_impl(&dword_226DD4000, v33, OS_LOG_TYPE_INFO, "END processAggregateFeatures:computeRecurringHistograms", v89, 2u);
  }

  _Block_object_dispose(&v56, 8);
  _Block_object_dispose(&v62, 8);

  _Block_object_dispose(&v68, 8);
  _Block_object_dispose(&v74, 8);

  _Block_object_dispose(v81, 8);
  _Block_object_dispose(buf, 8);

  v34 = *MEMORY[0x277D85DE8];
}

void __118__FHDatabaseManager_computeRecurringClassesWithMerchantEntityCounts_peerPaymentCounts_merchantDetailedCategoryCounts___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __118__FHDatabaseManager_computeRecurringClassesWithMerchantEntityCounts_peerPaymentCounts_merchantDetailedCategoryCounts___block_invoke_2;
  v7[3] = &unk_2785CB250;
  v9 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v5;
  [a2 enumerateKeysAndObjectsUsingBlock:v7];
}

void __118__FHDatabaseManager_computeRecurringClassesWithMerchantEntityCounts_peerPaymentCounts_merchantDetailedCategoryCounts___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [v6 sortUsingComparator:&__block_literal_global_264];
  if ([v6 count] >= 3)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = [v6 copy];
    v9 = *(*(*(a1 + 48) + 8) + 40);
    v10 = *(*(*(a1 + 56) + 8) + 40);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __118__FHDatabaseManager_computeRecurringClassesWithMerchantEntityCounts_peerPaymentCounts_merchantDetailedCategoryCounts___block_invoke_4;
    v13[3] = &unk_2785CB228;
    v11 = v6;
    v12 = *(a1 + 32);
    v14 = v11;
    v15 = v12;
    v16 = v5;
    v17 = *(a1 + 40);
    [FinHealthRecurringHelper rootMeanSquareErrorForSlidingWindowWithCompletion:v8 slidingWindowWidth:3 decimalThreshold:v9 decimalDenominator:v10 decimalKeyEntry:@"transactionDate" completion:v13];

    objc_autoreleasePoolPop(v7);
  }
}

uint64_t __118__FHDatabaseManager_computeRecurringClassesWithMerchantEntityCounts_peerPaymentCounts_merchantDetailedCategoryCounts___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [v5 objectForKey:@"repeatingClass"];
  LODWORD(a2) = [v6 intValue];

  v7 = [v4 objectForKey:@"repeatingClass"];
  LODWORD(v6) = [v7 intValue];

  v8 = [v5 objectForKey:@"transactionDate"];

  [v8 doubleValue];
  v10 = v9;

  v11 = [v4 objectForKey:@"transactionDate"];

  [v11 doubleValue];
  v13 = v12;

  v14 = (a2 - v6);
  if (a2 == v6)
  {
    return (v13 - v10);
  }

  return v14;
}

void __118__FHDatabaseManager_computeRecurringClassesWithMerchantEntityCounts_peerPaymentCounts_merchantDetailedCategoryCounts___block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v21 = a3;
  v5 = 3;
  do
  {
    v6 = [*(a1 + 32) objectAtIndex:a2];
    context = objc_autoreleasePoolPush();
    v7 = [v6 objectForKey:@"identifier"];
    v8 = [v6 objectForKey:@"transactionDate"];
    [v8 doubleValue];
    v10 = v9;

    v11 = [v6 objectForKey:@"repeatingClass"];
    v12 = [v11 intValue];
    v13 = *(a1 + 40);
    v14 = *(a1 + 48);
    [v21 doubleValue];
    if (([v13 _execute:{@"insert or replace into features_heuristics (t_identifier, t_heuristics_identifier, t_heuristics_value, t_heuristics_score) values (%@, %@, %d, %f)", v7, v14, v10, v15}] & 1) == 0)
    {
      v16 = FinHealthLogObject(@"FinHealthCore");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v24 = v7;
        _os_log_impl(&dword_226DD4000, v16, OS_LOG_TYPE_ERROR, "FHInsertOrUpdateIntoFeaturesHeuristics failed for %@", buf, 0xCu);
      }
    }

    v17 = v12;
    v18 = objc_alloc_init(FHRealtimeFeaturesResponse);
    [(FHRealtimeFeaturesResponse *)v18 setRepeatingPatternClass:v17];
    if (([*(a1 + 40) insertFeaturesPredictedRealtime:v7 realtimeFeatures:v18] & 1) == 0)
    {
      v19 = FinHealthLogObject(@"FinHealthCore");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v24 = v7;
        _os_log_impl(&dword_226DD4000, v19, OS_LOG_TYPE_ERROR, "FHInsertIntoFeaturesPredictedRealTime failed for %@", buf, 0xCu);
      }
    }

    [*(a1 + 56) addObject:v7];

    objc_autoreleasePoolPop(context);
    ++a2;
    --v5;
  }

  while (v5);

  v20 = *MEMORY[0x277D85DE8];
}

void __118__FHDatabaseManager_computeRecurringClassesWithMerchantEntityCounts_peerPaymentCounts_merchantDetailedCategoryCounts___block_invoke_2_274(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  [*(a1 + 32) populateRecurringClassHistogramsWithPeerPaymentsCounts:*(a1 + 40) histogram:*(*(*(a1 + 72) + 8) + 40) transaction:v3];
  objc_autoreleasePoolPop(v4);
  if ([v3 accountType] == 2)
  {
    v5 = *(a1 + 48);
    v6 = [v3 displayName];
    LODWORD(v5) = [v5 containsObject:v6];

    if (v5)
    {
      [*(a1 + 32) _populateMerchantEntityRecurringClassHistograms:*(*(*(a1 + 80) + 8) + 40) transaction:v3];
    }
  }

  v7 = [v3 displayName];
  if (v7)
  {
    v8 = v7;
    v9 = [v3 displayName];
    if ([v9 length] && !objc_msgSend(v3, "transactionType"))
    {
      v11 = [v3 transactionStatus];

      if (v11 == 1)
      {
        v12 = objc_autoreleasePoolPush();
        v13 = [v3 identifier];
        if (([*(*(*(a1 + 96) + 8) + 40) containsObject:v13] & 1) == 0)
        {
          v14 = [v3 displayName];
          v15 = [*(a1 + 64) objectForKey:v14];
          if ([v15 integerValue] >= 3)
          {
            v16 = 1;
          }

          else
          {
            v16 = 2;
          }

          v17 = objc_alloc_init(FHRealtimeFeaturesResponse);
          [(FHRealtimeFeaturesResponse *)v17 setRepeatingPatternClass:v16];
          if (([*(a1 + 32) insertFeaturesPredictedRealtime:v13 realtimeFeatures:v17] & 1) == 0)
          {
            v18 = FinHealthLogObject(@"FinHealthCore");
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              v19 = 138412290;
              v20 = v13;
              _os_log_impl(&dword_226DD4000, v18, OS_LOG_TYPE_ERROR, "FHInsertIntoFeaturesPredictedRealTime failed for %@", &v19, 0xCu);
            }
          }
        }

        objc_autoreleasePoolPop(v12);
      }
    }

    else
    {
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)populateRecurringClassHistogramsWithPeerPaymentsCounts:(id)a3 histogram:(id)a4 transaction:(id)a5
{
  v45 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v9 peerPaymentCounterpartHandle];
  if ([v9 transactionType] == 3)
  {
    v11 = [v7 objectForKey:v10];
    if ([v11 integerValue] >= 3)
    {
      v12 = [v9 recurring] ^ 1;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = [v9 accountType] == 1 && objc_msgSend(v9, "transactionType") == 6;
  if ((v12 | v13))
  {
    v31 = v10;
    v32 = v7;
    context = objc_autoreleasePoolPush();
    [FinHealthRecurringHelper histogramKeysForTransaction:v9];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    obj = v41 = 0u;
    v35 = [obj countByEnumeratingWithState:&v38 objects:v44 count:16];
    if (v35)
    {
      v34 = *v39;
      do
      {
        for (i = 0; i != v35; ++i)
        {
          if (*v39 != v34)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v38 + 1) + 8 * i);
          v16 = [v15 featureLabel];
          v17 = [v8 objectForKey:v16];
          v18 = [v9 transactionDate];
          [v18 timeIntervalSinceReferenceDate];
          v20 = v19;

          v21 = MEMORY[0x277CCA980];
          v22 = [MEMORY[0x277CCABB0] numberWithDouble:v20];
          v23 = v22;
          if (v22)
          {
            [v22 decimalValue];
          }

          else
          {
            v36[0] = 0;
            v36[1] = 0;
            v37 = 0;
          }

          v24 = [v21 decimalNumberWithDecimal:v36];

          v43[0] = v24;
          v42[0] = @"transactionDate";
          v42[1] = @"identifier";
          v25 = [v9 identifier];
          v43[1] = v25;
          v42[2] = @"transactionSourceIdentifier";
          v26 = [v9 transactionSourceIdentifier];
          v43[2] = v26;
          v42[3] = @"repeatingClass";
          v27 = [v15 featureRank];
          v43[3] = v27;
          v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:4];

          if (v17)
          {
            [v17 addObject:v28];
          }

          else
          {
            v17 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v28, 0}];
          }

          [v8 setValue:v17 forKey:v16];
        }

        v35 = [obj countByEnumeratingWithState:&v38 objects:v44 count:16];
      }

      while (v35);
    }

    objc_autoreleasePoolPop(context);
    v10 = v31;
    v7 = v32;
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)_populateMerchantEntityRecurringClassHistograms:(id)a3 transaction:(id)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_autoreleasePoolPush();
  v8 = [v6 displayName];
  v9 = [v6 accountType];
  if (v8 && [v8 length] && !objc_msgSend(v6, "transactionType") && objc_msgSend(v6, "transactionStatus") == 1 && !objc_msgSend(v6, "transactionSource") && (objc_msgSend(v6, "cardType") == 7 || objc_msgSend(v6, "cardType") == 6) || v9 == 4)
  {
    v27 = v8;
    v28 = v7;
    context = objc_autoreleasePoolPush();
    [FinHealthRecurringHelper histogramKeysForTransaction:v6];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = v37 = 0u;
    v31 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
    if (v31)
    {
      v30 = *v35;
      do
      {
        for (i = 0; i != v31; ++i)
        {
          if (*v35 != v30)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v34 + 1) + 8 * i);
          v12 = [v11 featureLabel];
          v13 = [v5 objectForKey:v12];
          v14 = [v6 transactionDate];
          [v14 timeIntervalSinceReferenceDate];
          v16 = v15;

          v17 = MEMORY[0x277CCA980];
          v18 = [MEMORY[0x277CCABB0] numberWithDouble:v16];
          v19 = v18;
          if (v18)
          {
            [v18 decimalValue];
          }

          else
          {
            v32[0] = 0;
            v32[1] = 0;
            v33 = 0;
          }

          v20 = [v17 decimalNumberWithDecimal:v32];

          v39[0] = v20;
          v38[0] = @"transactionDate";
          v38[1] = @"identifier";
          v21 = [v6 identifier];
          v39[1] = v21;
          v38[2] = @"transactionSourceIdentifier";
          v22 = [v6 transactionSourceIdentifier];
          v39[2] = v22;
          v38[3] = @"repeatingClass";
          v23 = [v11 featureRank];
          v39[3] = v23;
          v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:4];

          if (v13)
          {
            [v13 addObject:v24];
          }

          else
          {
            v13 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v24, 0}];
          }

          [v5 setValue:v13 forKey:v12];
        }

        v31 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
      }

      while (v31);
    }

    objc_autoreleasePoolPop(context);
    v8 = v27;
    v7 = v28;
  }

  objc_autoreleasePoolPop(v7);
  v25 = *MEMORY[0x277D85DE8];
}

- (void)populateRecurringClassHistogramsWithMerchantDetailedCategoryCounts:(id)a3 histogram:(id)a4 transaction:(id)a5
{
  v48 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v9 merchantDetailedCategory];
  v11 = v10;
  if (v10 && ([v10 isEqualToString:@"undefined"] & 1) == 0 && objc_msgSend(v11, "length") && (objc_msgSend(v9, "accountType") == 2 || objc_msgSend(v9, "accountType") == 4) && !objc_msgSend(v9, "transactionType") && objc_msgSend(v9, "transactionStatus") == 1)
  {
    v12 = [v7 objectForKey:v11];
    v13 = [v12 integerValue];

    if (v13 >= 3)
    {
      v35 = v7;
      context = objc_autoreleasePoolPush();
      v14 = [v9 transactionSourceIdentifier];
      v15 = [v9 amount];
      v34 = v11;
      v16 = +[FinHealthRecurringHelper histogramKeysForMerchantDetailedCategoryTransaction:transactionSourceIdentifier:transactionAmount:transactionType:amountFromDatabase:](FinHealthRecurringHelper, "histogramKeysForMerchantDetailedCategoryTransaction:transactionSourceIdentifier:transactionAmount:transactionType:amountFromDatabase:", v11, v14, v15, 0, [v9 amountFromDatabase]);

      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      obj = v16;
      v38 = [obj countByEnumeratingWithState:&v41 objects:v47 count:16];
      if (v38)
      {
        v37 = *v42;
        do
        {
          for (i = 0; i != v38; ++i)
          {
            if (*v42 != v37)
            {
              objc_enumerationMutation(obj);
            }

            v18 = *(*(&v41 + 1) + 8 * i);
            v19 = [v18 featureLabel];
            v20 = [v8 objectForKey:v19];
            v21 = [v9 transactionDate];
            [v21 timeIntervalSinceReferenceDate];
            v23 = v22;

            v24 = MEMORY[0x277CCA980];
            v25 = [MEMORY[0x277CCABB0] numberWithDouble:v23];
            v26 = v25;
            if (v25)
            {
              [v25 decimalValue];
            }

            else
            {
              v39[0] = 0;
              v39[1] = 0;
              v40 = 0;
            }

            v27 = [v24 decimalNumberWithDecimal:v39];

            v46[0] = v27;
            v45[0] = @"transactionDate";
            v45[1] = @"identifier";
            v28 = [v9 identifier];
            v46[1] = v28;
            v45[2] = @"transactionSourceIdentifier";
            v29 = [v9 transactionSourceIdentifier];
            v46[2] = v29;
            v45[3] = @"repeatingClass";
            v30 = [v18 featureRank];
            v46[3] = v30;
            v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:4];

            if (v20)
            {
              [v20 addObject:v31];
            }

            else
            {
              v20 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v31, 0}];
            }

            [v8 setValue:v20 forKey:v19];
          }

          v38 = [obj countByEnumeratingWithState:&v41 objects:v47 count:16];
        }

        while (v38);
      }

      objc_autoreleasePoolPop(context);
      v11 = v34;
      v7 = v35;
    }
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (void)retrieveAll
{
  v3 = [(FHDatabaseManager *)self delegate];
  if (v3)
  {
    v12 = v3;
    v4 = [(FHDatabaseManager *)self delegate];
    if ([v4 conformsToProtocol:&unk_283A8EEC0])
    {
      v5 = [(FHDatabaseManager *)self delegate];
      v6 = objc_opt_respondsToSelector();

      if (v6)
      {
        v7 = 0;
        do
        {
          v8 = objc_autoreleasePoolPush();
          v9 = [(FHDatabaseManager *)self _getAllTransactions:v7 limit:25];
          v10 = [(FHDatabaseManager *)self delegate];
          [v10 processBatch:v9];

          v11 = [v9 count];
          objc_autoreleasePoolPop(v8);
          v7 += 25;
        }

        while (v11);
      }
    }

    else
    {
    }
  }
}

- (id)_getAllTransactions:(unint64_t)a3 limit:(unint64_t)a4
{
  v7 = objc_opt_new();
  v8 = [(FHDatabaseManager *)self _fetch:@"select * from transactions limit %d, %d", a3, a4];
  if ([v8 next])
  {
    do
    {
      v9 = [(FHDatabaseManager *)self reconstructTransaction:v8];
      [v7 addObject:v9];
    }

    while (([v8 next] & 1) != 0);
  }

  [(FHDatabaseManager *)self closeAndUnlock:v8];
  v10 = [MEMORY[0x277CBEA60] arrayWithArray:v7];

  return v10;
}

- (BOOL)deleteDatabase:(id *)a3
{
  os_unfair_lock_lock(&self->_lockDatabaseBookKeeping);
  [(FHDatabaseManager *)self _rebuildTablesAndIndexes:1];
  os_unfair_lock_unlock(&self->_lockDatabaseBookKeeping);
  return 1;
}

- (BOOL)_execute:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lockDatabaseExecute);
  v5 = [(PQLConnection *)self->_db execute:v4 args:&v7];

  os_unfair_lock_unlock(&self->_lockDatabaseExecute);
  return v5;
}

- (BOOL)deleteWithRollBack:(BOOL)a3 SQL:(id)a4 args:(char *)a5
{
  v6 = a3;
  v8 = a4;
  os_unfair_lock_lock(&self->_lockDatabaseExecute);
  db = self->_db;
  if (!v6)
  {
    v12 = [(PQLConnection *)db execute:v8 args:a5];
    goto LABEL_8;
  }

  if (![(PQLConnection *)db execute:@"BEGIN"])
  {
LABEL_7:
    v12 = 0;
    goto LABEL_8;
  }

  v10 = [(PQLConnection *)self->_db execute:v8 args:a5];
  v11 = self->_db;
  if (!v10)
  {
    [(PQLConnection *)v11 execute:@"ROLLBACK"];
    goto LABEL_7;
  }

  [(PQLConnection *)v11 execute:@"COMMIT"];
  v12 = 1;
LABEL_8:
  os_unfair_lock_unlock(&self->_lockDatabaseExecute);

  return v12;
}

- (BOOL)executeAsPreparedStatement:(id)a3 values:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock(&self->_lockDatabaseExecute);
  ppStmt = 0;
  if (sqlite3_prepare_v2(-[PQLConnection dbHandle](self->_db, "dbHandle"), [v6 UTF8String], -1, &ppStmt, 0))
  {
    v8 = FinHealthLogObject(@"FinHealthCore");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v20 = v6;
      _os_log_impl(&dword_226DD4000, v8, OS_LOG_TYPE_DEBUG, "Failed to prepare sql statement %@", buf, 0xCu);
    }
  }

  else
  {
    if ([v7 count])
    {
      v10 = 0;
      *&v9 = 138412802;
      v17 = v9;
      do
      {
        v11 = [v7 objectAtIndex:{v10, v17}];
        v12 = v10 + 1;
        if (sqlite3_bind_text(ppStmt, v10 + 1, [v11 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL))
        {
          v13 = FinHealthLogObject(@"FinHealthCore");
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            *buf = v17;
            v20 = v6;
            v21 = 2112;
            v22 = v11;
            v23 = 2048;
            v24 = v10;
            _os_log_impl(&dword_226DD4000, v13, OS_LOG_TYPE_DEBUG, "sql statement %@ failed to bind %@ at index %lu", buf, 0x20u);
          }
        }

        ++v10;
      }

      while (v12 < [v7 count]);
    }

    sqlite3_step(ppStmt);
  }

  v14 = sqlite3_finalize(ppStmt);
  os_unfair_lock_unlock(&self->_lockDatabaseExecute);

  v15 = *MEMORY[0x277D85DE8];
  return v14 == 0;
}

- (BOOL)_executeRaw:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lockDatabaseExecute);
  v5 = [(PQLConnection *)self->_db executeRaw:v4];

  os_unfair_lock_unlock(&self->_lockDatabaseExecute);
  return v5;
}

- (id)_fetch:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lockDatabaseFetch);
  v5 = [(PQLConnection *)self->_db fetch:v4 args:&v8];

  return v5;
}

- (id)_fetchv:(id)a3 args:(char *)a4
{
  v6 = a3;
  os_unfair_lock_lock(&self->_lockDatabaseFetch);
  v7 = [(PQLConnection *)self->_db fetch:v6 args:a4];

  return v7;
}

- (id)_lockFreeFetch:(id)a3
{
  v3 = [(PQLConnection *)self->_db fetch:a3 args:&v6];

  return v3;
}

- (void)closeAndUnlock:(id)a3
{
  [a3 close];

  os_unfair_lock_unlock(&self->_lockDatabaseFetch);
}

- (BOOL)_isDatabaseCorrupt
{
  v14 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lockDatabaseFetch);
  v3 = [(FHDatabaseManager *)self _getDataDirectory];
  v4 = [MEMORY[0x277CBEAA8] date];
  v5 = [v3 stringByAppendingPathComponent:@"finhealth.db"];
  [v5 UTF8String];
  v6 = _sqlite3_integrity_check();

  v7 = [MEMORY[0x277CBEAA8] date];
  v8 = FinHealthLogObject(@"FinHealthCore");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [v7 timeIntervalSinceDate:v4];
    v12 = 134217984;
    v13 = v9;
    _os_log_impl(&dword_226DD4000, v8, OS_LOG_TYPE_DEBUG, "Integrity check time: %f", &v12, 0xCu);
  }

  os_unfair_lock_unlock(&self->_lockDatabaseFetch);
  v10 = *MEMORY[0x277D85DE8];
  return v6 == 11;
}

- (BOOL)_truncateDatabase
{
  v13 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lockDatabaseExecute);
  v3 = [(PQLConnection *)self->_db dbHandle];
  v4 = _sqlite3_db_truncate();
  if (v4)
  {
    v5 = FinHealthLogObject(@"FinHealthCore");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8[0] = 67109634;
      v8[1] = v4;
      v9 = 2080;
      v10 = sqlite3_errmsg(v3);
      v11 = 1024;
      v12 = sqlite3_extended_errcode(v3);
      _os_log_impl(&dword_226DD4000, v5, OS_LOG_TYPE_ERROR, "Failed to truncate database %d (%s, %d)", v8, 0x18u);
    }
  }

  os_unfair_lock_unlock(&self->_lockDatabaseExecute);
  v6 = *MEMORY[0x277D85DE8];
  return v4 == 0;
}

- (id)_columnNamesForTable:(id)a3
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"PRAGMA table_info('%@')", @"features_instrumentation"];;
  v5 = [(FHDatabaseManager *)self _fetch:v4];

  v6 = objc_opt_new();
  if ([v5 next])
  {
    do
    {
      v7 = [v5 stringAtIndex:1];
      [v6 addObject:v7];
    }

    while (([v5 next] & 1) != 0);
  }

  [(FHDatabaseManager *)self closeAndUnlock:v5];

  return v6;
}

- (void)_addColumnIfNotExists:(id)a3 columnName:(id)a4 columnType:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(FHDatabaseManager *)self _columnNamesForTable:v12];
  if (([v10 containsObject:v8] & 1) == 0)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"alter table %@ add column %@ %@", v12, v8, v9];;
    [(FHDatabaseManager *)self _executeRaw:v11];
  }
}

- (void)_rebuildTablesAndIndexes:(BOOL)a3
{
  v3 = a3;
  v46 = *MEMORY[0x277D85DE8];
  v5 = [(FHDatabaseManager *)self _isEligibleForSchemaMigration];
  v6 = FinHealthLogObject(@"FinHealthCore");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = @"NO";
    if (v5)
    {
      v7 = @"YES";
    }

    *buf = 138412290;
    v45 = v7;
    _os_log_impl(&dword_226DD4000, v6, OS_LOG_TYPE_DEBUG, "isEligibleForSchemaMigration: %@", buf, 0xCu);
  }

  if (v3 || v5)
  {
    if ([(FHDatabaseManager *)self _isDatabaseCorrupt])
    {
      v8 = FinHealthLogObject(@"FinHealthCore");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_226DD4000, v8, OS_LOG_TYPE_ERROR, "DB corrupted. Truncating", buf, 2u);
      }

      [(FHDatabaseManager *)self _truncateDatabase];
    }

    v33 = v5;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v9 = DropTablesAndIndexes();
    v10 = [v9 countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v39;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v39 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v38 + 1) + 8 * i);
          v15 = FinHealthLogObject(@"FinHealthCore");
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v45 = v14;
            _os_log_impl(&dword_226DD4000, v15, OS_LOG_TYPE_DEBUG, "sqlExecuteCommand: %@", buf, 0xCu);
          }

          [(FHDatabaseManager *)self _executeRaw:v14];
        }

        v11 = [v9 countByEnumeratingWithState:&v38 objects:v43 count:16];
      }

      while (v11);
    }

    v16 = FinHealthLogObject(@"FinHealthCore");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_226DD4000, v16, OS_LOG_TYPE_INFO, "Recreating database", buf, 2u);
    }

    v5 = v33;
  }

  [(FHDatabaseManager *)self _instrumentationTableMigration];
  v17 = [MEMORY[0x277CBEB98] setWithObjects:{@"t_identifier", @"t_heuristics_identifier", 0}];
  [(FHDatabaseManager *)self _checkUniqueConstraints:@"features_heuristics" uniqueConstraintSet:v17];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v18 = CreateTablesAndIndexes();
  v19 = [v18 countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v35;
    v22 = 1;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v35 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v22 &= [(FHDatabaseManager *)self _executeRaw:*(*(&v34 + 1) + 8 * j)];
      }

      v20 = [v18 countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v20);
  }

  else
  {
    v22 = 1;
  }

  [(FHDatabaseManager *)self _addColumnIfNotExists:@"features_instrumentation" columnName:@"pass_type" columnType:@"integer"];
  [(FHDatabaseManager *)self _addColumnIfNotExists:@"features_instrumentation" columnName:@"heuristics_identifier" columnType:@"text"];
  [(FHDatabaseManager *)self _addColumnIfNotExists:@"features_instrumentation" columnName:@"account_state" columnType:@"integer"];
  [(FHDatabaseManager *)self _addColumnIfNotExists:@"features_instrumentation" columnName:@"paid_using_ring" columnType:@"integer"];
  if (v3 || (v5 & v22) != 0)
  {
    v24 = [MEMORY[0x277CBEAA8] now];
    [v24 timeIntervalSinceReferenceDate];
    v26 = v25;

    v27 = [(FHDatabaseManager *)self _execute:@"insert into fh_schema (sch_version_id, sch_upgrade_status, sch_date, sch_getall_status) values (%@, %d, %d, %d)", @"11.11", 2, v26, 0];
    v28 = FinHealthLogObject(@"FinHealthCore");
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v29 = @"Fail";
      if (v27)
      {
        v29 = @"Success";
      }

      *buf = 138412290;
      v45 = v29;
      _os_log_impl(&dword_226DD4000, v28, OS_LOG_TYPE_INFO, "createSchemaVersionRecord: %@", buf, 0xCu);
    }
  }

  for (k = 0; k != 11; ++k)
  {
    v31 = FHTransactionRepeatingPatternClassToFHSmartFeature(k);
    [(FHDatabaseManager *)self _execute:@"insert or replace into features_prediction_labels (feature_name, feature_predicted_class, smart_feature_name) values (%@, %d, %@)", @"FHSmartFeatureAggregateTypeRecurring", k, v31];
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (void)_instrumentationTableMigration
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"PRAGMA table_info('%@')", @"features_instrumentation"];;
  v4 = [(FHDatabaseManager *)self _fetch:v3];

  if ([v4 next])
  {
    v5 = 0;
    do
    {
      v6 = [v4 stringAtIndex:1];
      v7 = [v6 isEqualToString:@"source_identifier"];

      v5 |= v7;
    }

    while (([v4 next] & 1) != 0);
    [(FHDatabaseManager *)self closeAndUnlock:v4];
    if (v5)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"drop table if exists %@", @"features_instrumentation"];;
      [(FHDatabaseManager *)self _executeRaw:v8];

      v9 = FinHealthLogObject(@"FinHealthCore");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v12 = @"features_instrumentation";
        _os_log_impl(&dword_226DD4000, v9, OS_LOG_TYPE_DEBUG, "Drop table %@", buf, 0xCu);
      }
    }
  }

  else
  {
    [(FHDatabaseManager *)self closeAndUnlock:v4];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_checkUniqueConstraints:(id)a3 uniqueConstraintSet:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"PRAGMA index_info('%@')", v6];;
  v9 = [(FHDatabaseManager *)self _fetch:v8];

  if ([v9 next])
  {
    v10 = [v9 stringAtIndex:1];
    [(FHDatabaseManager *)self closeAndUnlock:v9];
    if (v10)
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"PRAGMA index_list('%@')", v10];;
      v12 = [(FHDatabaseManager *)self _fetch:v11];

      v13 = 0;
      if ([v12 next])
      {
        do
        {
          v14 = [v12 stringAtIndex:2];
          v15 = [v7 containsObject:v14];

          v13 += v15;
        }

        while (([v12 next] & 1) != 0);
      }

      if (v13 != [v7 count])
      {
        v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"drop table if exists %@", v6];;
        [(FHDatabaseManager *)self _executeRaw:v16];

        v17 = FinHealthLogObject(@"FinHealthCore");
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v20 = v6;
          _os_log_impl(&dword_226DD4000, v17, OS_LOG_TYPE_DEBUG, "Drop table %@", buf, 0xCu);
        }
      }

      [(FHDatabaseManager *)self closeAndUnlock:v12];
    }
  }

  else
  {
    [(FHDatabaseManager *)self closeAndUnlock:v9];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (unint64_t)streamGenericSQLFetch:(id)a3 predicate:(id)a4 sqlFetchQuery:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  os_unfair_lock_lock(&self->_lockSQLStreaming);
  v24 = v10;
  v11 = [(FHDatabaseManager *)self _fetchv:v10 args:&v25];
  if ([v11 next])
  {
    do
    {
      v12 = objc_autoreleasePoolPush();
      v13 = objc_opt_new();
      v14 = objc_opt_new();
      if ([v11 columns])
      {
        v15 = 0;
        do
        {
          v16 = [v11 objectAtIndex:v15];
          if (v16)
          {
            v17 = v16;
          }

          else
          {
            v17 = &stru_283A7B918;
          }

          if (v9)
          {
            v18 = [v11 columnNameAtIndex:v15];
            [v14 setObject:v17 forKey:v18];
          }

          [v13 addObject:v17];

          ++v15;
        }

        while ([v11 columns] > v15);
      }

      if (v9)
      {
        v19 = [MEMORY[0x277CBEA60] arrayWithObject:v14];
        v20 = [v19 filteredArrayUsingPredicate:v9];

        if ([v20 count])
        {
          v21 = [MEMORY[0x277CBEA60] arrayWithArray:v13];
          v8[2](v8, v21);
        }
      }

      else
      {
        v20 = [MEMORY[0x277CBEA60] arrayWithArray:v13];
        v8[2](v8, v20);
      }

      objc_autoreleasePoolPop(v12);
    }

    while (([v11 next] & 1) != 0);
  }

  v22 = [v11 rowNumber];
  [(FHDatabaseManager *)self closeAndUnlock:v11];
  os_unfair_lock_unlock(&self->_lockSQLStreaming);

  return v22;
}

- (unint64_t)streamQueryResults:(id)a3 usingFetchHandler:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __58__FHDatabaseManager_streamQueryResults_usingFetchHandler___block_invoke;
  v10[3] = &unk_2785CB2E8;
  v11 = v6;
  v7 = v6;
  v8 = [(FHDatabaseManager *)self streamGenericSQLFetch:v10 predicate:0 sqlFetchQuery:a3, 0];

  return v8;
}

- (unint64_t)processingTimeForFeature:(id)a3
{
  v4 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"select feature_processing_date, feature_data from fh_processing_history where feature_name == '%@'", v4];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __46__FHDatabaseManager_processingTimeForFeature___block_invoke;
  v8[3] = &unk_2785CB310;
  v8[4] = &v9;
  [(FHDatabaseManager *)self streamGenericSQLFetch:v8 predicate:0 sqlFetchQuery:v5, 0];
  v6 = v10[3];

  _Block_object_dispose(&v9, 8);
  return v6;
}

void __46__FHDatabaseManager_processingTimeForFeature___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectAtIndex:0];
  *(*(*(a1 + 32) + 8) + 24) = [v3 unsignedIntegerValue];
}

- (id)processingDataForFeature:(id)a3
{
  v4 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy_;
  v13 = __Block_byref_object_dispose_;
  v14 = 0;
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"select feature_processing_date, feature_data from fh_processing_history where feature_name == '%@'", v4];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __46__FHDatabaseManager_processingDataForFeature___block_invoke;
  v8[3] = &unk_2785CB310;
  v8[4] = &v9;
  [(FHDatabaseManager *)self streamGenericSQLFetch:v8 predicate:0 sqlFetchQuery:v5, 0];
  v6 = v10[5];

  _Block_object_dispose(&v9, 8);

  return v6;
}

uint64_t __46__FHDatabaseManager_processingDataForFeature___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectAtIndex:1];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8]();
}

- (void)updateProcessingTimeForFeature:(id)a3
{
  v4 = MEMORY[0x277CBEAA8];
  v8 = a3;
  v5 = [v4 now];
  [v5 timeIntervalSinceReferenceDate];
  v7 = v6;

  [(FHDatabaseManager *)self _updateProcessingTimeForFeature:v8 processingDate:v7 data:0];
}

- (void)updateProcessingTimeForFeature:(id)a3 data:(id)a4
{
  v6 = MEMORY[0x277CBEAA8];
  v7 = a4;
  v11 = a3;
  v8 = [v6 now];
  [v8 timeIntervalSinceReferenceDate];
  v10 = v9;

  [(FHDatabaseManager *)self _updateProcessingTimeForFeature:v11 processingDate:v10 data:v7];
}

- (id)_getTransactionsMarkedForRecurrChange
{
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x3032000000;
  v25[3] = __Block_byref_object_copy_;
  v25[4] = __Block_byref_object_dispose_;
  v26 = 0;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x3032000000;
  v23[3] = __Block_byref_object_copy_;
  v23[4] = __Block_byref_object_dispose_;
  v24 = objc_opt_new();
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2020000000;
  v22[3] = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = objc_opt_new();
  v3 = dispatch_semaphore_create(0);
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__FHDatabaseManager__getTransactionsMarkedForRecurrChange__block_invoke;
  v8[3] = &unk_2785CB338;
  objc_copyWeak(&v14, &location);
  v8[4] = self;
  v10 = v25;
  v11 = v23;
  v12 = v22;
  v13 = &v16;
  v4 = v3;
  v9 = v4;
  [(FHDatabaseManager *)self streamGenericSQLFetch:v8 predicate:0 sqlFetchQuery:@"select distinct t.t_identifier, ifnull(h.t_heuristics_score, -1) from transactions t left join features_heuristics h on t.t_identifier == h.t_identifier order by t.m_displayname asc, t.t_date asc limit %d", -1];
  v5 = dispatch_time(0, 3000000000);
  dispatch_semaphore_wait(v4, v5);
  v6 = [v17[5] copy];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(v22, 8);
  _Block_object_dispose(v23, 8);

  _Block_object_dispose(v25, 8);

  return v6;
}

void __58__FHDatabaseManager__getTransactionsMarkedForRecurrChange__block_invoke(uint64_t a1, void *a2)
{
  v49 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v5 = WeakRetained;
  if (v3 && WeakRetained)
  {
    v6 = [v3 firstObject];
    v7 = [v6 stringValue];

    v8 = [*(a1 + 32) getTransactionByIdentifier:v7];
    v9 = [v8 displayName];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", @"Price Increase for", v9];
    v11 = [v3 lastObject];
    [v11 doubleValue];
    v13 = v12;

    v14 = *(*(a1 + 48) + 8);
    v15 = *(v14 + 40);
    if (v15)
    {
      v16 = [v15 displayName];
      v17 = v16;
      if (v9 && v16 && [v9 length] && objc_msgSend(v17, "length") && (objc_msgSend(v9, "isEqualToString:", v17) & 1) != 0)
      {
        if (*(*(*(a1 + 64) + 8) + 24) != -1)
        {
          v18 = FinHealthLogObject(@"FinHealthCore");
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            v19 = *(*(*(a1 + 64) + 8) + 24);
            *buf = 134217984;
            v46 = v19;
            _os_log_impl(&dword_226DD4000, v18, OS_LOG_TYPE_DEBUG, "previousPreComputedRmseValue: %f", buf, 0xCu);
          }

          v20 = [v8 transactionDate];
          [v20 timeIntervalSinceReferenceDate];
          v43 = v21;

          v22 = [*(*(*(a1 + 48) + 8) + 40) transactionDate];
          [v22 timeIntervalSinceReferenceDate];
          v41 = v23;

          v24 = MEMORY[0x277CCA980];
          v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"%f", (v43 - v41)];
          v26 = [v24 decimalNumberWithString:v25];

          v44 = [v26 decimalNumberByDividingBy:v5[2]];
          [*(*(*(a1 + 56) + 8) + 40) addObject:?];
          if (v13 == -1 && [*(*(*(a1 + 56) + 8) + 40) count] >= 3)
          {
            v42 = v26;
            v27 = +[FinHealthRecurringHelper rootMeanSquareError:startIndex:arrayLength:](FinHealthRecurringHelper, "rootMeanSquareError:startIndex:arrayLength:", *(*(*(a1 + 56) + 8) + 40), [*(*(*(a1 + 56) + 8) + 40) count] - 3, 3);
            if ([v27 lessThan:v5[3]])
            {
              v28 = [v8 amount];
              v38 = [*(*(*(a1 + 48) + 8) + 40) amount];
              v39 = v28;
              v40 = [v28 decimalNumberBySubtracting:?];
              if ([v40 isPositive])
              {
                v36 = *(*(*(a1 + 72) + 8) + 40);
                v29 = MEMORY[0x277CBEA60];
                v37 = v27;
                v30 = [[FHSmartCompoundFeatureRankedValue alloc] initWithLabelAndRank:v10 featureRank:v40];
                v31 = [v29 arrayWithObjects:{v30, 0}];
                [v36 setObject:v31 forKey:v7];

                v27 = v37;
              }

              v32 = FinHealthLogObject(@"FinHealthCore");
              if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412546;
                v46 = v7;
                v47 = 2112;
                v48 = v40;
                _os_log_impl(&dword_226DD4000, v32, OS_LOG_TYPE_DEBUG, "currentTransactionId: %@, changeInAmount: %@", buf, 0x16u);
              }
            }

            v26 = v42;
          }
        }
      }

      else
      {
        [*(*(*(a1 + 56) + 8) + 40) removeAllObjects];
      }

      v14 = *(*(a1 + 48) + 8);
    }

    v33 = *(v14 + 40);
    *(v14 + 40) = v8;
    v34 = v8;

    *(*(*(a1 + 64) + 8) + 24) = v13;
LABEL_28:

    goto LABEL_29;
  }

  if (!WeakRetained)
  {
    v7 = FinHealthLogObject(@"FinHealthCore");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v46 = "[FHDatabaseManager _getTransactionsMarkedForRecurrChange]_block_invoke";
      _os_log_impl(&dword_226DD4000, v7, OS_LOG_TYPE_ERROR, "%s strongSelf is nil", buf, 0xCu);
    }

    goto LABEL_28;
  }

LABEL_29:
  dispatch_semaphore_signal(*(a1 + 40));

  v35 = *MEMORY[0x277D85DE8];
}

- (void)publishEventsToBiome
{
  v39 = *MEMORY[0x277D85DE8];
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v3 = [(FHDatabaseManager *)self processingTimeForFeature:@"FHProcessingHistoryInstrumentation"];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __41__FHDatabaseManager_publishEventsToBiome__block_invoke;
  v30[3] = &unk_2785CB310;
  v30[4] = &v31;
  [(FHDatabaseManager *)self streamGenericSQLFetch:v30 predicate:0 sqlFetchQuery:@"select * from features_instrumentation", 0];
  v4 = v32[3];
  if (v4)
  {
    v5 = v4 - 2592000;
    v6 = [MEMORY[0x277CCAC30] predicateWithFormat:@"SELF.%K > %lu AND SELF.%K <= %lu", @"tag_click_date", v4 - 2592000, @"tag_click_date", v4];
    if (v3 != v32[3])
    {
      v7 = FinHealthLogObject(@"FinHealthCore");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v8 = v32[3];
        *buf = 136315650;
        *&buf[4] = "[FHDatabaseManager publishEventsToBiome]";
        *&buf[12] = 2048;
        *&buf[14] = v5;
        *&buf[22] = 2048;
        v36 = v8;
        _os_log_impl(&dword_226DD4000, v7, OS_LOG_TYPE_DEBUG, "[%s] starting instrumentation streaming to Biome: leastRecentInstrumentationEntryDate: %lu, mostRecentInstrumentationEntryDate: %lu", buf, 0x20u);
      }

      [(FHDatabaseManager *)self _updateProcessingTimeForFeature:@"FHProcessingHistoryInstrumentation" processingDate:v32[3]];
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v36 = __Block_byref_object_copy_;
      v37 = __Block_byref_object_dispose_;
      v9 = BiomeLibrary();
      v10 = [v9 WalletPaymentsCommerce];
      v11 = [v10 FinancialInsights];
      v38 = [v11 Search];

      v28[0] = 0;
      v28[1] = v28;
      v28[2] = 0x3032000000;
      v28[3] = __Block_byref_object_copy_;
      v28[4] = __Block_byref_object_dispose_;
      v12 = BiomeLibrary();
      v13 = [v12 WalletPaymentsCommerce];
      v14 = [v13 FinancialInsights];
      v29 = [v14 PaymentRingSuggestions];

      v26[0] = 0;
      v26[1] = v26;
      v26[2] = 0x3032000000;
      v26[3] = __Block_byref_object_copy_;
      v26[4] = __Block_byref_object_dispose_;
      v15 = BiomeLibrary();
      v16 = [v15 WalletPaymentsCommerce];
      v17 = [v16 FinancialInsights];
      v27 = [v17 RecurringSendSuggestions];

      v18 = [(FHDatabaseManager *)self getAllPeerPaymentSignalsFilterDismissed:0];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __41__FHDatabaseManager_publishEventsToBiome__block_invoke_341;
      v21[3] = &unk_2785CB388;
      v23 = buf;
      v24 = v28;
      v19 = v18;
      v22 = v19;
      v25 = v26;
      [(FHDatabaseManager *)self streamGenericSQLFetch:v21 predicate:v6 sqlFetchQuery:@"select * from features_instrumentation", 0];

      _Block_object_dispose(v26, 8);
      _Block_object_dispose(v28, 8);

      _Block_object_dispose(buf, 8);
    }
  }

  else
  {
    v6 = FinHealthLogObject(@"FinHealthCore");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      *&buf[4] = "[FHDatabaseManager publishEventsToBiome]";
      _os_log_impl(&dword_226DD4000, v6, OS_LOG_TYPE_DEBUG, "%s No instrumentation records found", buf, 0xCu);
    }
  }

  _Block_object_dispose(&v31, 8);
  v20 = *MEMORY[0x277D85DE8];
}

void __41__FHDatabaseManager_publishEventsToBiome__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v9 = v3;
    v4 = [v3 count] == 8;
    v3 = v9;
    if (v4)
    {
      v5 = [v9 objectAtIndex:3];
      v6 = [v5 intValue];

      v3 = v9;
      v7 = *(*(a1 + 32) + 8);
      v8 = *(v7 + 24);
      if (v8 <= v6)
      {
        v8 = v6;
      }

      *(v7 + 24) = v8;
    }
  }
}

void __41__FHDatabaseManager_publishEventsToBiome__block_invoke_341(uint64_t a1, void *a2)
{
  v63 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (v3 && [v3 count] == 8)
  {
    v5 = [v4 objectAtIndex:1];
    v6 = [v5 intValue];

    v7 = [v4 objectAtIndex:2];
    v8 = [v7 intValue];

    v9 = [v4 objectAtIndex:4];
    v10 = [v9 intValue];

    v11 = MEMORY[0x277CCABB0];
    v12 = [v4 objectAtIndex:3];
    v13 = [v11 numberWithInt:{objc_msgSend(v12, "intValue")}];

    if (v10 == 2 && v6 <= 199)
    {
      v14 = [objc_alloc(MEMORY[0x277CF1718]) initWithTagSource:v6 tagType:v8 passType:2 tagClickDate:v13];
      v15 = FinHealthLogObject(@"FinHealthCore");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        *&buf[4] = "[FHDatabaseManager publishEventsToBiome]_block_invoke";
        *&buf[12] = 2112;
        *&buf[14] = v14;
        _os_log_impl(&dword_226DD4000, v15, OS_LOG_TYPE_DEBUG, "%s FH_BIOME_REPORTING search event: %@", buf, 0x16u);
      }

      v16 = [*(*(*(a1 + 40) + 8) + 40) source];
      [v16 sendEvent:v14];
    }

    else
    {
      if ((v6 - 200) <= 4)
      {
        v17 = [v4 objectAtIndex:6];
        v18 = [v17 intValue];

        v19 = [v4 objectAtIndex:7];
        v20 = [v19 intValue];

        v21 = [v4 objectAtIndex:2];
        v22 = [v21 intValue];

        v23 = [v4 objectAtIndex:1];
        v24 = [v23 intValue] - 200;

        v25 = [objc_alloc(MEMORY[0x277CF1708]) initWithAccountState:v18 paidUsingRing:v20 lastPaymentCategory:v22 paymentAction:v24];
        v26 = FinHealthLogObject(@"FinHealthCore");
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          *&buf[4] = "[FHDatabaseManager publishEventsToBiome]_block_invoke";
          *&buf[12] = 2112;
          *&buf[14] = v25;
          _os_log_impl(&dword_226DD4000, v26, OS_LOG_TYPE_DEBUG, "%s FH_BIOME_REPORTING payment ring event: %@", buf, 0x16u);
        }

        v27 = [*(*(*(a1 + 48) + 8) + 40) source];
        [v27 sendEvent:v25];
      }

      if (v10 == 1)
      {
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v60 = __Block_byref_object_copy_;
        v61 = __Block_byref_object_dispose_;
        v62 = [v4 objectAtIndex:5];
        v54[0] = MEMORY[0x277D85DD0];
        v54[1] = 3221225472;
        v54[2] = __41__FHDatabaseManager_publishEventsToBiome__block_invoke_344;
        v54[3] = &unk_2785CB360;
        v54[4] = buf;
        v53 = [MEMORY[0x277CCAC30] predicateWithBlock:v54];
        v28 = [*(a1 + 32) filteredArrayUsingPredicate:?];
        v29 = [MEMORY[0x277CBEAA8] now];
        [v29 timeIntervalSinceReferenceDate];
        v31 = v30;

        if ([v28 count])
        {
          v32 = [v28 objectAtIndex:0];
          v33 = [v32 periodicCategory];
          v52 = FHRecurringPeerPaymentPeriodicCategoryTypeFromString(v33);

          v34 = [v32 signalDate];

          v35 = v34 - v31;
          if (v35 <= 0x93A80)
          {
            v36 = 2;
          }

          else
          {
            v36 = 3;
          }

          if (v35 <= 0x3F480)
          {
            v37 = 1;
          }

          else
          {
            v37 = v36;
          }

          v38 = [v4 objectAtIndex:4];
          v39 = [v38 intValue];

          v40 = [v4 objectAtIndex:1];
          v41 = [v40 intValue];

          v42 = MEMORY[0x277CCABB0];
          v43 = [v4 objectAtIndex:3];
          v44 = [v42 numberWithInt:{objc_msgSend(v43, "intValue")}];

          v45 = [*(a1 + 32) count];
          v46 = objc_alloc(MEMORY[0x277CF1710]);
          if (v45 <= 1)
          {
            v47 = 1;
          }

          else
          {
            v47 = 2;
          }

          v48 = [v46 initWithUserSelection:v41 passType:v39 tagClickDate:v44 frequency:v52 suggestionsRange:v47 dayRange:v37];
          v49 = FinHealthLogObject(@"FinHealthCore");
          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
          {
            *v55 = 136315394;
            v56 = "[FHDatabaseManager publishEventsToBiome]_block_invoke_2";
            v57 = 2112;
            v58 = v48;
            _os_log_impl(&dword_226DD4000, v49, OS_LOG_TYPE_DEBUG, "%s FH_BIOME_REPORTING recurring send suggestion event: %@", v55, 0x16u);
          }

          v50 = [*(*(*(a1 + 56) + 8) + 40) source];
          [v50 sendEvent:v48];
        }

        _Block_object_dispose(buf, 8);
      }
    }
  }

  v51 = *MEMORY[0x277D85DE8];
}

uint64_t __41__FHDatabaseManager_publishEventsToBiome__block_invoke_344(uint64_t a1, void *a2)
{
  v3 = [a2 peerPaymentHeuristicIds];
  v4 = [MEMORY[0x277CBEB70] orderedSetWithSet:v3];
  v5 = [v4 firstObject];
  v6 = [v5 isEqual:*(*(*(a1 + 32) + 8) + 40)];

  return v6;
}

- (void)predictRecurringTransactions
{
  v3 = FinHealthLogObject(@"FinHealthCore");
  v4 = FinHealthLogObject(@"FinHealthCore");
  ptr = self;
  v5 = os_signpost_id_make_with_pointer(v4, self);

  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_226DD4000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v5, "processAggregateFeatures:computeRecurringCashTransactions", "", buf, 2u);
  }

  v6 = FinHealthLogObject(@"FinHealthCore");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_226DD4000, v6, OS_LOG_TYPE_INFO, "BEGIN processAggregateFeatures:computeRecurringCashTransactions", buf, 2u);
  }

  *buf = 0;
  v104 = buf;
  v105 = 0x3032000000;
  v106 = __Block_byref_object_copy_;
  v107 = __Block_byref_object_dispose_;
  v108 = objc_opt_new();
  v86 = 0;
  v87 = &v86;
  v88 = 0x2020000000;
  v7 = 3;
  v89 = 3;
  do
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"select identifier from features_predicted_realtime where feature_name='FHSmartFeatureAggregateTypeRecurring' and feature_predicted_class=%d limit %d", v7, -1];
    v9 = objc_autoreleasePoolPush();
    v102[0] = MEMORY[0x277D85DD0];
    v102[1] = 3221225472;
    v102[2] = __49__FHDatabaseManager_predictRecurringTransactions__block_invoke;
    v102[3] = &unk_2785CB3B0;
    v102[4] = &v86;
    v102[5] = buf;
    [(FHDatabaseManager *)self streamGenericSQLFetch:v102 predicate:0 sqlFetchQuery:v8, 0];
    objc_autoreleasePoolPop(v9);

    v7 = v87[3] + 1;
    v87[3] = v7;
  }

  while (v7 < 0xB);
  _Block_object_dispose(&v86, 8);
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:*(v104 + 5)];
  v53 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", @"select * from features_heuristics order by t_heuristics_identifier asc, t_heuristics_value asc"];
  v101[0] = 0;
  v101[1] = v101;
  v101[2] = 0x2020000000;
  v101[3] = 0;
  v97 = 0;
  v98 = &v97;
  v99 = 0x2020000000;
  v100 = 0;
  v93 = 0;
  v94 = &v93;
  v95 = 0x2020000000;
  v96 = 0;
  v92[0] = 0;
  v92[1] = v92;
  v92[2] = 0x2020000000;
  v92[3] = 0;
  v86 = 0;
  v87 = &v86;
  v88 = 0x3032000000;
  v89 = __Block_byref_object_copy_;
  v90 = __Block_byref_object_dispose_;
  v91 = 0;
  v80 = 0;
  v81 = &v80;
  v82 = 0x3032000000;
  v83 = __Block_byref_object_copy_;
  v84 = __Block_byref_object_dispose_;
  v85 = 0;
  v74 = 0;
  v75 = &v74;
  v76 = 0x3032000000;
  v77 = __Block_byref_object_copy_;
  v78 = __Block_byref_object_dispose_;
  v79 = 0;
  v70 = 0;
  v71 = &v70;
  v72 = 0x2020000000;
  v73 = 0x8000000000000000;
  v68[0] = 0;
  v68[1] = v68;
  v68[2] = 0x3032000000;
  v68[3] = __Block_byref_object_copy_;
  v68[4] = __Block_byref_object_dispose_;
  v69 = objc_opt_new();
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = __49__FHDatabaseManager_predictRecurringTransactions__block_invoke_2;
  v56[3] = &unk_2785CB3D8;
  v11 = v10;
  v57 = v11;
  v58 = self;
  v59 = &v86;
  v60 = &v74;
  v61 = &v93;
  v62 = &v97;
  v63 = v101;
  v64 = &v70;
  v65 = v68;
  v66 = &v80;
  v67 = v92;
  [(FHDatabaseManager *)self streamGenericSQLFetch:v56 predicate:0 sqlFetchQuery:v53, 0];
  v12 = v98[3];
  v13 = v94[3];
  v14 = [v81[5] integerValue];
  v15 = [(FHDatabaseManager *)ptr getTransactionByIdentifier:v75[5]];
  v16 = v71[3];
  v17 = [v15 amountFromDatabase];
  if (v16 <= v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = v16;
  }

  v71[3] = v18;
  v19 = [v15 displayName];
  v20 = v19;
  v21 = v12 / v13;
  if (v19)
  {
    v22 = v19;
  }

  v23 = v21;
  if (v14 <= 6)
  {
    if (v14 == 3)
    {
      v24 = v11;
      v28 = [v15 transactionSourceIdentifier];
      v29 = [v15 peerPaymentCounterpartHandle];
      v33 = [v15 amountFromDatabase];
      v34 = [v15 peerPaymentType];
      v31 = [v15 transactionDate];
      [v31 timeIntervalSinceReferenceDate];
      [(FHDatabaseManager *)ptr _execute:@"insert or replace into features_peer_payments (source_identifier, peer_pay_counterpart, amount, frequency, peer_pay_type, forecast_date, forecast_signal_type, heuristics_identifier) values (%@, %@, %d, %f, %d, %f, %d, %@)", v28, v29, v33, v21, v34, v35 + v23, 3, v87[5]];
    }

    else
    {
      if (v14 == 4)
      {
        v24 = v11;
        v28 = [v15 transactionSourceIdentifier];
        v29 = [v15 peerPaymentCounterpartHandle];
        v44 = v71[3];
        v45 = [v15 peerPaymentType];
        v31 = [v15 transactionDate];
        [v31 timeIntervalSinceReferenceDate];
        [(FHDatabaseManager *)ptr _execute:@"insert or replace into features_peer_payments (source_identifier, peer_pay_counterpart, amount, frequency, peer_pay_type, forecast_date, forecast_signal_type, heuristics_identifier) values (%@, %@, %d, %f, %d, %f, %d, %@)", v28, v29, v44, *&v23, v45, v46 + v23, 2, v87[5]];
        goto LABEL_31;
      }

      v24 = v11;
      if (v14 != 5)
      {
        goto LABEL_32;
      }

      v26 = MEMORY[0x277CCACA8];
      v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu-%f", objc_msgSend(v15, "amountFromDatabase"), v21];
      v28 = [v26 stringWithFormat:@"%lu", objc_msgSend(v27, "hash")];

      v29 = [v15 transactionSourceIdentifier];
      v30 = [v15 amountFromDatabase];
      v31 = [v15 transactionDate];
      [v31 timeIntervalSinceReferenceDate];
      [(FHDatabaseManager *)ptr _execute:@"insert or replace into features_peer_payments (source_identifier, peer_pay_counterpart, amount, frequency, peer_pay_type, forecast_date, forecast_signal_type, heuristics_identifier) values (%@, %@, %d, %f, %d, %f, %d, %@)", v29, v28, v30, v21, 0, v32 + v23, 6, v87[5]];
    }

LABEL_31:

    goto LABEL_32;
  }

  if (v14 <= 8)
  {
    v24 = v11;
    if (v14 == 7)
    {
      v25 = 2;
    }

    else
    {
      v25 = 1;
    }

LABEL_26:
    v52 = v71[3];
    goto LABEL_28;
  }

  if (v14 != 9)
  {
    v24 = v11;
    if (v14 != 10)
    {
      goto LABEL_32;
    }

    v25 = 3;
    goto LABEL_26;
  }

  v24 = v11;
  v52 = [v15 amountFromDatabase];
  v25 = 4;
LABEL_28:
  v36 = [v15 transactionDate];
  v37 = [v36 dateByAddingTimeInterval:v23];
  v38 = [MEMORY[0x277CBEAA8] date];
  v39 = [v37 compare:v38];

  if (v39 == 1)
  {
    v28 = [v15 transactionSourceIdentifier];
    v29 = [v15 displayName];
    v31 = [v15 merchantDetailedCategory];
    v40 = [v15 transactionType];
    v41 = [v15 transactionSource];
    v42 = [v15 transactionDate];
    [v42 timeIntervalSinceReferenceDate];
    [(FHDatabaseManager *)ptr _execute:@"insert or replace into fh_recurring_predictions (source_identifier, merchant_entity, detailed_category, amount, frequency, transaction_type, transaction_source, forecast_date, forecast_signal_type, heuristic_identifier) values (%@, %@, %@, %d, %f, %d, %d, %f, %d, %@)", v28, v29, v31, v52, *&v23, v40, v41, v43 + v23, v25, v87[5]];

    goto LABEL_31;
  }

LABEL_32:
  v47 = FinHealthLogObject(@"FinHealthCore");
  v48 = v24;
  v49 = FinHealthLogObject(@"FinHealthCore");
  v50 = os_signpost_id_make_with_pointer(v49, ptr);

  if (v50 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v47))
  {
    *v55 = 0;
    _os_signpost_emit_with_name_impl(&dword_226DD4000, v47, OS_SIGNPOST_INTERVAL_END, v50, "processAggregateFeatures:computeRecurringCashTransactions", "", v55, 2u);
  }

  v51 = FinHealthLogObject(@"FinHealthCore");
  if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
  {
    *v55 = 0;
    _os_log_impl(&dword_226DD4000, v51, OS_LOG_TYPE_INFO, "END processAggregateFeatures:computeRecurringCashTransactions", v55, 2u);
  }

  _Block_object_dispose(v68, 8);
  _Block_object_dispose(&v70, 8);
  _Block_object_dispose(&v74, 8);

  _Block_object_dispose(&v80, 8);
  _Block_object_dispose(&v86, 8);

  _Block_object_dispose(v92, 8);
  _Block_object_dispose(&v93, 8);
  _Block_object_dispose(&v97, 8);
  _Block_object_dispose(v101, 8);

  _Block_object_dispose(buf, 8);
}

void __49__FHDatabaseManager_predictRecurringTransactions__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectAtIndex:0];
  v4 = [v3 stringValue];

  v5 = MEMORY[0x277CCA980];
  v6 = [MEMORY[0x277CCA980] numberWithInteger:*(*(*(a1 + 32) + 8) + 24)];
  v7 = v6;
  if (v6)
  {
    [v6 decimalValue];
  }

  else
  {
    v13[0] = 0;
    v13[1] = 0;
    v14 = 0;
  }

  v8 = [v5 decimalNumberWithDecimal:v13];

  v9 = [*(*(*(a1 + 40) + 8) + 40) objectForKey:v4];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = [MEMORY[0x277CCA980] maximumDecimalNumber];
  }

  v12 = v11;

  if ([v8 compare:v12] == -1)
  {
    [*(*(*(a1 + 40) + 8) + 40) setObject:v8 forKey:v4];
  }
}

void __49__FHDatabaseManager_predictRecurringTransactions__block_invoke_2(uint64_t a1, void *a2)
{
  v106 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 objectAtIndex:1];
  v5 = [v4 stringValue];

  v6 = [v3 objectAtIndex:2];
  v7 = [v6 stringValue];

  v8 = [v3 objectAtIndex:3];
  v100 = [v8 integerValue];

  v9 = [*(a1 + 32) objectForKey:v5];
  v99 = v5;
  v10 = [*(a1 + 40) getTransactionByIdentifier:v5];
  v11 = [MEMORY[0x277CCA980] numberWithInt:7];
  v12 = [v9 isEqualToNumber:v11];

  if (v12)
  {
    v94 = v3;
    v13 = [v10 merchantDetailedCategory];
    v14 = [v10 transactionSourceIdentifier];
    v15 = [v10 amount];
    v16 = +[FinHealthRecurringHelper histogramKeysForMerchantDetailedCategoryTransaction:transactionSourceIdentifier:transactionAmount:transactionType:amountFromDatabase:](FinHealthRecurringHelper, "histogramKeysForMerchantDetailedCategoryTransaction:transactionSourceIdentifier:transactionAmount:transactionType:amountFromDatabase:", v13, v14, v15, 0, [v10 amountFromDatabase]);

    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    v17 = v16;
    v18 = [v17 countByEnumeratingWithState:&v101 objects:v105 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v102;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v102 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v101 + 1) + 8 * i);
          v23 = [v22 featureLabel];
          if ([v23 isEqualToString:v7])
          {
            v24 = [v22 featureRank];

            v9 = v24;
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v101 objects:v105 count:16];
      }

      while (v19);
    }

    v3 = v94;
  }

  v25 = [v10 transactionDate];
  [v25 timeIntervalSinceReferenceDate];
  v27 = v26;

  v28 = *(*(a1 + 48) + 8);
  if (*(v28 + 40))
  {
    v29 = [*(a1 + 40) getTransactionByIdentifier:*(*(*(a1 + 56) + 8) + 40)];
    v30 = [v29 displayName];
    v31 = v30;
    if (v30)
    {
      v32 = v30;
    }

    v33 = [v29 amountFromDatabase];
    if ([*(*(*(a1 + 48) + 8) + 40) isEqualToString:v7])
    {
      ++*(*(*(a1 + 64) + 8) + 24);
      *(*(*(a1 + 72) + 8) + 24) += v100 - *(*(*(a1 + 80) + 8) + 24);
      v34 = *(*(a1 + 88) + 8);
      v35 = *(v34 + 24);
      if (v35 <= v33)
      {
        v35 = v33;
      }

      *(v34 + 24) = v35;
      v36 = *(*(*(a1 + 96) + 8) + 40);
      v37 = [MEMORY[0x277CCABB0] numberWithInteger:v100 - *(*(*(a1 + 80) + 8) + 24)];
      [v36 addObject:v37];
      goto LABEL_45;
    }

    if ([*(*(*(a1 + 96) + 8) + 40) count] >= 3)
    {
      v37 = [*(*(*(a1 + 96) + 8) + 40) subarrayWithRange:{objc_msgSend(*(*(*(a1 + 96) + 8) + 40), "count") - 3, 3}];
    }

    else
    {
      v37 = 0;
    }

    [*(*(*(a1 + 96) + 8) + 40) removeAllObjects];
    if (v37)
    {
      v38 = [v37 valueForKeyPath:@"@sum.self"];
      [v38 doubleValue];
      v40 = v39 / 3uLL;
    }

    else
    {
      v40 = 0.0;
    }

    *(*(*(a1 + 64) + 8) + 24) = 0;
    *(*(*(a1 + 72) + 8) + 24) = 0;
    v41 = [*(*(*(a1 + 104) + 8) + 40) integerValue];
    if (v41 > 6)
    {
      v93 = v31;
      if (v41 <= 8)
      {
        v42 = v3;
        v88 = *(*(*(a1 + 88) + 8) + 24);
        v90 = v37;
        if (v41 == 7)
        {
          v43 = 2;
        }

        else
        {
          v43 = 1;
        }

        goto LABEL_39;
      }

      if (v41 == 9)
      {
        v90 = v37;
        v42 = v3;
        v88 = [v29 amountFromDatabase];
        v43 = 4;
        goto LABEL_39;
      }

      if (v41 == 10)
      {
        v42 = v3;
        v88 = *(*(*(a1 + 88) + 8) + 24);
        v90 = v37;
        v43 = 3;
LABEL_39:
        v83 = v43;
        v52 = [v29 transactionDate];
        v53 = [v52 dateByAddingTimeInterval:v40];
        v54 = [MEMORY[0x277CBEAA8] date];
        v55 = [v53 compare:v54];

        v56 = v55 == 1;
        v3 = v42;
        v37 = v90;
        v31 = v93;
        if (!v56)
        {
          goto LABEL_44;
        }

        v82 = *(a1 + 40);
        v86 = [v29 transactionSourceIdentifier];
        v57 = [v29 displayName];
        v58 = [v29 merchantDetailedCategory];
        v81 = [v29 transactionType];
        v59 = [v29 transactionSource];
        [v29 transactionDate];
        v60 = v97 = v3;
        [v60 timeIntervalSinceReferenceDate];
        v80 = v59;
        v37 = v90;
        v49 = v86;
        v75 = v58;
        v77 = v88;
        v89 = v58;
        v46 = v57;
        [v82 _execute:{@"insert or replace into fh_recurring_predictions (source_identifier, merchant_entity, detailed_category, amount, frequency, transaction_type, transaction_source, forecast_date, forecast_signal_type, heuristic_identifier) values (%@, %@, %@, %d, %f, %d, %d, %f, %d, %@)", v86, v57, v75, v77, *&v40, v81, v80, v40 + v61, v83, *(*(*(a1 + 48) + 8) + 40)}];

        v31 = v93;
        v3 = v97;
        goto LABEL_43;
      }

LABEL_44:
      *(*(*(a1 + 88) + 8) + 24) = 0x8000000000000000;
LABEL_45:

      v28 = *(*(a1 + 48) + 8);
      goto LABEL_46;
    }

    switch(v41)
    {
      case 3:
        v96 = *(a1 + 40);
        v85 = [v29 transactionSourceIdentifier];
        v46 = [v29 peerPaymentCounterpartHandle];
        v91 = [v29 amountFromDatabase];
        v50 = [v29 peerPaymentType];
        v89 = [v29 transactionDate];
        [v89 timeIntervalSinceReferenceDate];
        v78 = v50;
        v49 = v85;
        [v96 _execute:{@"insert or replace into features_peer_payments (source_identifier, peer_pay_counterpart, amount, frequency, peer_pay_type, forecast_date, forecast_signal_type, heuristics_identifier) values (%@, %@, %d, %f, %d, %f, %d, %@)", v85, v46, v91, *&v40, v78, v40 + v51, 3, *(*(*(a1 + 48) + 8) + 40)}];
        break;
      case 4:
        v98 = *(a1 + 40);
        v87 = [v29 transactionSourceIdentifier];
        v46 = [v29 peerPaymentCounterpartHandle];
        v92 = v37;
        v62 = *(*(*(a1 + 88) + 8) + 24);
        v63 = [v29 peerPaymentType];
        v89 = [v29 transactionDate];
        [v89 timeIntervalSinceReferenceDate];
        v79 = v63;
        v49 = v87;
        v76 = v62;
        v37 = v92;
        [v98 _execute:{@"insert or replace into features_peer_payments (source_identifier, peer_pay_counterpart, amount, frequency, peer_pay_type, forecast_date, forecast_signal_type, heuristics_identifier) values (%@, %@, %d, %f, %d, %f, %d, %@)", v87, v46, v76, *&v40, v79, v40 + v64, 2, *(*(*(a1 + 48) + 8) + 40)}];
        break;
      case 5:
        v44 = MEMORY[0x277CCACA8];
        v45 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu-%f", objc_msgSend(v29, "amountFromDatabase"), *&v40];
        v84 = [v44 stringWithFormat:@"%lu", objc_msgSend(v45, "hash")];

        v95 = *(a1 + 40);
        v46 = [v29 transactionSourceIdentifier];
        v47 = [v29 amountFromDatabase];
        v89 = [v29 transactionDate];
        [v89 timeIntervalSinceReferenceDate];
        v74 = v47;
        v49 = v84;
        [v95 _execute:{@"insert or replace into features_peer_payments (source_identifier, peer_pay_counterpart, amount, frequency, peer_pay_type, forecast_date, forecast_signal_type, heuristics_identifier) values (%@, %@, %d, %f, %d, %f, %d, %@)", v46, v84, v74, *&v40, 0, v40 + v48, 6, *(*(*(a1 + 48) + 8) + 40)}];
        break;
      default:
        goto LABEL_44;
    }

LABEL_43:

    goto LABEL_44;
  }

LABEL_46:
  v65 = *(v28 + 40);
  *(v28 + 40) = v7;
  v66 = v7;

  *(*(*(a1 + 80) + 8) + 24) = v100;
  v67 = *(*(a1 + 104) + 8);
  v68 = *(v67 + 40);
  *(v67 + 40) = v9;
  v69 = v9;

  v70 = *(*(a1 + 56) + 8);
  v71 = *(v70 + 40);
  *(v70 + 40) = v99;
  v72 = v99;

  *(*(*(a1 + 112) + 8) + 24) = v27;
  v73 = *MEMORY[0x277D85DE8];
}

- (id)getFilteredPeerPaymentForecastingSignals
{
  v3 = [(FHDatabaseManager *)self getAllPeerPaymentSignalsFilterDismissed:1];
  v4 = [(FHDatabaseManager *)self _filterPeriodicCategories:v3];

  return v4;
}

- (id)_filterPeriodicCategories:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        v11 = objc_autoreleasePoolPush();
        if ([v10 forecastingType] == 3)
        {
          v12 = v10;
          v13 = [v12 direction];
          v14 = [v12 frequency];
          v15 = GetPeriodicCategoryFromFrequency(v14);
          LODWORD(v13) = [(FHDatabaseManager *)self _signalMatchesSendSuggestionCriteria:v13 periodicCategory:FHRecurringPeerPaymentPeriodicCategoryTypeFromString(v15)];

          if (v13)
          {
            [v19 addObject:v12];
          }
        }

        objc_autoreleasePoolPop(v11);
      }

      v7 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v7);
  }

  v16 = [v19 copy];
  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)getAllPeerPaymentSignalsFilterDismissed:(BOOL)a3
{
  v3 = a3;
  v86 = *MEMORY[0x277D85DE8];
  v76 = 0;
  v77 = &v76;
  v78 = 0x3032000000;
  v79 = __Block_byref_object_copy_;
  v80 = __Block_byref_object_dispose_;
  v81 = objc_opt_new();
  v5 = objc_opt_new();
  if (v3)
  {
    v69 = 0;
    v70 = &v69;
    v71 = 0x2020000000;
    v72 = 0;
    v75[0] = MEMORY[0x277D85DD0];
    v75[1] = 3221225472;
    v75[2] = __61__FHDatabaseManager_getAllPeerPaymentSignalsFilterDismissed___block_invoke;
    v75[3] = &unk_2785CB3B0;
    v75[4] = &v69;
    v75[5] = &v76;
    [(FHDatabaseManager *)self streamGenericSQLFetch:v75 predicate:0 sqlFetchQuery:@"select * from features_instrumentation", 0];
    _Block_object_dispose(&v69, 8);
  }

  v69 = 0;
  v70 = &v69;
  v71 = 0x3032000000;
  v72 = __Block_byref_object_copy_;
  v73 = __Block_byref_object_dispose_;
  v74 = 0;
  v63 = 0;
  v64 = &v63;
  v65 = 0x3032000000;
  v66 = __Block_byref_object_copy_;
  v67 = __Block_byref_object_dispose_;
  v68 = 0;
  v57 = 0;
  v58 = &v57;
  v59 = 0x3032000000;
  v60 = __Block_byref_object_copy_;
  v61 = __Block_byref_object_dispose_;
  v62 = 0;
  v51 = 0;
  v52 = &v51;
  v53 = 0x3032000000;
  v54 = __Block_byref_object_copy_;
  v55 = __Block_byref_object_dispose_;
  v56 = 0;
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = __Block_byref_object_copy_;
  v49 = __Block_byref_object_dispose_;
  v50 = 0;
  v44[0] = 0;
  v44[1] = v44;
  v44[2] = 0x2020000000;
  v44[3] = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy_;
  v34 = __Block_byref_object_dispose_;
  v35 = objc_opt_new();
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __61__FHDatabaseManager_getAllPeerPaymentSignalsFilterDismissed___block_invoke_2;
  v18[3] = &unk_2785CB400;
  v20 = &v69;
  v21 = &v30;
  v22 = &v63;
  v23 = v44;
  v24 = &v76;
  v25 = &v40;
  v26 = &v51;
  v27 = &v45;
  v28 = &v57;
  v29 = &v36;
  v6 = v5;
  v19 = v6;
  [(FHDatabaseManager *)self streamGenericSQLFetch:v18 predicate:0 sqlFetchQuery:@"select * from features_peer_payments order by peer_pay_counterpart, amount, frequency, peer_pay_type, forecast_date, forecast_signal_type limit %lu", -1];
  if (v70[5] && ([v77[5] containsObject:v64[5]] & 1) == 0)
  {
    [v31[5] addObject:v64[5]];
    v7 = FinHealthLogObject(@"FinHealthCore");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = v70[5];
      v9 = v31[5];
      *buf = 138412546;
      v83 = v8;
      v84 = 2112;
      v85 = v9;
      _os_log_impl(&dword_226DD4000, v7, OS_LOG_TYPE_DEBUG, "heuristicIdentifierSetByPeerPaymentHandleAndAmount %@, %@", buf, 0x16u);
    }

    v10 = v41[3];
    switch(v10)
    {
      case 2:
        v11 = objc_alloc_init(FHPeerPaymentForecastingSignalPerson);
        [(FHPeerPaymentForecastingSignalPerson *)v11 setPersonId:v70[5]];
        [(FHPeerPaymentForecastingSignal *)v11 setFrequency:v46[5]];
        [(FHPeerPaymentForecastingSignal *)v11 setSignalDate:v58[5]];
        [(FHPeerPaymentForecastingSignalPerson *)v11 setDirection:v37[3]];
        v14 = [v31[5] copy];
        [(FHPeerPaymentForecastingSignal *)v11 setPeerPaymentHeuristicIds:v14];

        [v6 addObject:v11];
        break;
      case 6:
        v11 = objc_alloc_init(FHPeerPaymentForecastingSignalTopUpWithAmount);
        [(FHPeerPaymentForecastingSignalPersonWithAmount *)v11 setAmount:v52[5]];
        [(FHPeerPaymentForecastingSignal *)v11 setFrequency:v46[5]];
        [(FHPeerPaymentForecastingSignal *)v11 setSignalDate:v58[5]];
        v13 = [v31[5] copy];
        [(FHPeerPaymentForecastingSignal *)v11 setPeerPaymentHeuristicIds:v13];

        [v6 addObject:v11];
        break;
      case 3:
        v11 = objc_alloc_init(FHPeerPaymentForecastingSignalPersonWithAmount);
        [(FHPeerPaymentForecastingSignalPerson *)v11 setPersonId:v70[5]];
        [(FHPeerPaymentForecastingSignalPersonWithAmount *)v11 setAmount:v52[5]];
        [(FHPeerPaymentForecastingSignal *)v11 setFrequency:v46[5]];
        [(FHPeerPaymentForecastingSignal *)v11 setSignalDate:v58[5]];
        [(FHPeerPaymentForecastingSignalPerson *)v11 setDirection:v37[3]];
        v12 = [v31[5] copy];
        [(FHPeerPaymentForecastingSignal *)v11 setPeerPaymentHeuristicIds:v12];

        [v6 addObject:v11];
        break;
      default:
        goto LABEL_14;
    }
  }

LABEL_14:
  v15 = [v6 copy];

  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(v44, 8);
  _Block_object_dispose(&v45, 8);

  _Block_object_dispose(&v51, 8);
  _Block_object_dispose(&v57, 8);

  _Block_object_dispose(&v63, 8);
  _Block_object_dispose(&v69, 8);

  _Block_object_dispose(&v76, 8);
  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

void __61__FHDatabaseManager_getAllPeerPaymentSignalsFilterDismissed___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = objc_autoreleasePoolPush();
  *(*(*(a1 + 32) + 8) + 24) = [v9 unsignedIntAtIndex:4];
  v4 = [v9 stringAtIndex:5];
  v5 = v4;
  v6 = *(*(*(a1 + 32) + 8) + 24) != 1 || v4 == 0;
  if (!v6 && [v4 length] >= 2)
  {
    v7 = *(*(*(a1 + 40) + 8) + 40);
    v8 = [v9 stringAtIndex:5];
    [v7 addObject:v8];
  }

  objc_autoreleasePoolPop(v3);
}

void __61__FHDatabaseManager_getAllPeerPaymentSignalsFilterDismissed___block_invoke_2(uint64_t a1, void *a2)
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = a2;
  context = objc_autoreleasePoolPush();
  v4 = [v3 stringAtIndex:2];
  v5 = [v3 stringAtIndex:8];
  v6 = MEMORY[0x277CBEAA8];
  v7 = [v3 objectAtIndex:6];
  [v7 doubleValue];
  v40 = [v6 dateWithTimeIntervalSinceReferenceDate:?];

  v8 = [v3 intAtIndex:3];
  v9 = [objc_alloc(MEMORY[0x277CCA980]) initWithInteger:v8];
  v10 = [MEMORY[0x277CCA980] defaultDatabaseAmountMultiplier];
  v11 = [v9 decimalNumberByDividingBy:v10];

  v12 = objc_alloc(MEMORY[0x277CCA980]);
  v13 = [v3 objectAtIndex:4];
  [v13 doubleValue];
  v39 = [v12 initWithDouble:?];

  v14 = [v3 unsignedIntAtIndex:5];
  v15 = [v3 unsignedIntAtIndex:7];
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    [*(*(*(a1 + 48) + 8) + 40) addObject:*(*(*(a1 + 56) + 8) + 40)];
    if ((![v4 isEqualToString:*(*(*(a1 + 40) + 8) + 40)] || *(*(*(a1 + 64) + 8) + 24) != v8) && (objc_msgSend(*(*(*(a1 + 72) + 8) + 40), "containsObject:", *(*(*(a1 + 56) + 8) + 40)) & 1) == 0)
    {
      v16 = FinHealthLogObject(@"FinHealthCore");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v17 = *(*(*(a1 + 40) + 8) + 40);
        v18 = *(*(*(a1 + 48) + 8) + 40);
        *buf = 138412546;
        v43 = v17;
        v44 = 2112;
        v45 = v18;
        _os_log_impl(&dword_226DD4000, v16, OS_LOG_TYPE_DEBUG, "heuristicIdentifierByPeerPaymentHandleAndAmount %@, %@", buf, 0x16u);
      }

      v19 = *(*(*(a1 + 80) + 8) + 24);
      switch(v19)
      {
        case 2:
          v20 = objc_alloc_init(FHPeerPaymentForecastingSignalPerson);
          [(FHPeerPaymentForecastingSignalPerson *)v20 setPersonId:*(*(*(a1 + 40) + 8) + 40)];
          break;
        case 6:
          v20 = objc_alloc_init(FHPeerPaymentForecastingSignalTopUpWithAmount);
          [(FHPeerPaymentForecastingSignalPersonWithAmount *)v20 setAmount:*(*(*(a1 + 88) + 8) + 40)];
          [(FHPeerPaymentForecastingSignal *)v20 setFrequency:*(*(*(a1 + 96) + 8) + 40)];
          [(FHPeerPaymentForecastingSignal *)v20 setSignalDate:*(*(*(a1 + 104) + 8) + 40)];
LABEL_14:
          v21 = [*(*(*(a1 + 48) + 8) + 40) copy];
          [(FHPeerPaymentForecastingSignal *)v20 setPeerPaymentHeuristicIds:v21];

          [*(a1 + 32) addObject:v20];
          goto LABEL_15;
        case 3:
          v20 = objc_alloc_init(FHPeerPaymentForecastingSignalPersonWithAmount);
          [(FHPeerPaymentForecastingSignalPerson *)v20 setPersonId:*(*(*(a1 + 40) + 8) + 40)];
          [(FHPeerPaymentForecastingSignalPersonWithAmount *)v20 setAmount:*(*(*(a1 + 88) + 8) + 40)];
          break;
        default:
LABEL_15:
          [*(*(*(a1 + 48) + 8) + 40) removeAllObjects];
          goto LABEL_16;
      }

      [(FHPeerPaymentForecastingSignal *)v20 setFrequency:*(*(*(a1 + 96) + 8) + 40)];
      [(FHPeerPaymentForecastingSignal *)v20 setSignalDate:*(*(*(a1 + 104) + 8) + 40)];
      [(FHPeerPaymentForecastingSignalPerson *)v20 setDirection:*(*(*(a1 + 112) + 8) + 24)];
      goto LABEL_14;
    }
  }

LABEL_16:
  v22 = v15;
  v23 = v14;
  v24 = *(*(a1 + 40) + 8);
  v25 = *(v24 + 40);
  *(v24 + 40) = v4;
  v26 = v4;

  v27 = *(*(a1 + 56) + 8);
  v28 = *(v27 + 40);
  *(v27 + 40) = v5;
  v29 = v5;

  v30 = *(*(a1 + 104) + 8);
  v31 = *(v30 + 40);
  *(v30 + 40) = v40;
  v32 = v40;

  *(*(*(a1 + 64) + 8) + 24) = v8;
  v33 = *(*(a1 + 88) + 8);
  v34 = *(v33 + 40);
  *(v33 + 40) = v11;
  v35 = v11;

  *(*(*(a1 + 112) + 8) + 24) = v23;
  *(*(*(a1 + 80) + 8) + 24) = v22;
  v36 = *(*(a1 + 96) + 8);
  v37 = *(v36 + 40);
  *(v36 + 40) = v39;

  objc_autoreleasePoolPop(context);
  v38 = *MEMORY[0x277D85DE8];
}

- (id)getExpectedWeeklySpend
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCA980] zero];
  v4 = [MEMORY[0x277CBEAA8] now];
  [(FHDatabaseManager *)self getAllPeerPaymentSignalsFilterDismissed:0];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v5 = v38 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v36;
    v34 = v5;
    do
    {
      v9 = 0;
      do
      {
        if (*v36 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v35 + 1) + 8 * v9);
        v11 = objc_autoreleasePoolPush();
        v12 = [v10 forecastingType];
        v13 = [v10 signalDate];
        v14 = v13;
        if (v12 == 6)
        {
          [v13 timeIntervalSinceDate:v4];
          if (v25 > 0.0)
          {
            v26 = [v4 dateByAddingTimeInterval:0x93A80uLL];
            [v26 timeIntervalSinceDate:v14];
            v28 = v27;

            if (v28 > 0.0)
            {
              v22 = v10;
              v20 = [v22 amount];
              v23 = v3;
              v24 = v20;
LABEL_16:
              v29 = [v23 decimalNumberByAdding:v24];
LABEL_17:
              v19 = v29;

              goto LABEL_18;
            }
          }
        }

        else if (v12 == 3)
        {
          [v13 timeIntervalSinceDate:v4];
          if (v15 > 0.0)
          {
            v16 = [v4 dateByAddingTimeInterval:0x93A80uLL];
            [v16 timeIntervalSinceDate:v14];
            v18 = v17;

            if (v18 > 0.0)
            {
              v19 = v3;
              v20 = v10;
              v21 = [v20 direction];
              v22 = [v20 amount];
              if (v21 == 1)
              {
                v3 = v19;
                v29 = [v19 decimalNumberBySubtracting:v22];
                goto LABEL_17;
              }

              if (v21 == 2)
              {
                v3 = v19;
                v23 = v19;
                v24 = v22;
                goto LABEL_16;
              }

LABEL_18:
              v3 = v19;

              v5 = v34;
            }
          }
        }

        objc_autoreleasePoolPop(v11);
        ++v9;
      }

      while (v7 != v9);
      v30 = [v5 countByEnumeratingWithState:&v35 objects:v39 count:16];
      v7 = v30;
    }

    while (v30);
  }

  v31 = v3;
  v32 = *MEMORY[0x277D85DE8];
  return v3;
}

- (BOOL)recordPeerPaymentForecastingStatus:(unint64_t)a3 counterpartHandle:(id)a4 amount:(id)a5
{
  v47 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v9 = [objc_alloc(MEMORY[0x277CCA980]) initWithInteger:100];
  v10 = [v8 decimalNumberByMultiplyingBy:v9];
  v11 = [v10 intValue];

  v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v13 = FinHealthLogObject(@"FinHealthCore");
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG);
  if (v7)
  {
    if (v14)
    {
      *buf = 134218498;
      v42 = a3;
      v43 = 2112;
      v44 = v7;
      v45 = 2112;
      v46 = v8;
      _os_log_impl(&dword_226DD4000, v13, OS_LOG_TYPE_DEBUG, "Recurring peer payment setup={FHPeerPaymentSuggestionStatusType: %lu, counterpartHandle: %@, Amount: %@}", buf, 0x20u);
    }

    v15 = [FinHealthRecurringHelper histogramKeysForPeerPaymentTransaction:v7 transactionAmount:v8 transactionPeerPaymentSubtype:1 amountFromDatabase:v11];
  }

  else
  {
    if (v14)
    {
      *buf = 134218242;
      v42 = a3;
      v43 = 2112;
      v44 = v8;
      _os_log_impl(&dword_226DD4000, v13, OS_LOG_TYPE_DEBUG, "Threshold based top up setup={FHPeerPaymentSuggestionStatusType: %lu, Amount: %@}", buf, 0x16u);
    }

    v15 = [FinHealthRecurringHelper histogramKeysForTopUpTransaction:v8 amountFromDatabase:v11];
  }

  v16 = v15;
  v17 = [v15 copy];

  v18 = FinHealthLogObject(@"FinHealthCore");
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v42 = v17;
    _os_log_impl(&dword_226DD4000, v18, OS_LOG_TYPE_DEBUG, "Forecasting signal uniqueHistogramIds=%@", buf, 0xCu);
  }

  v19 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v17;
  v20 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v20)
  {
    v21 = v20;
    v32 = v8;
    v34 = *v37;
    while (2)
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v37 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v36 + 1) + 8 * i);
        [v19 removeAllObjects];
        v24 = [MEMORY[0x277CCABB0] numberWithInteger:3];
        [v19 setObject:v24 forKey:@"TagType"];

        v25 = [MEMORY[0x277CCABB0] numberWithInteger:1];
        [v19 setObject:v25 forKey:@"PassType"];

        v26 = [MEMORY[0x277CCABB0] numberWithInteger:101];
        [v19 setObject:v26 forKey:@"Source"];

        v27 = [v23 featureLabel];
        [v19 setObject:v27 forKey:@"HeuristicIdentifier"];

        v28 = [v19 copy];
        LODWORD(v26) = [(FHDatabaseManager *)self insertInstrumentationRecord:v28];

        if (!v26)
        {
          v29 = 0;
          goto LABEL_20;
        }
      }

      v21 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
      if (v21)
      {
        continue;
      }

      break;
    }

    v29 = 1;
LABEL_20:
    v8 = v32;
  }

  else
  {
    v29 = 1;
  }

  v30 = *MEMORY[0x277D85DE8];
  return v29;
}

- (BOOL)insertOrUpdateBankConnectAccount:(id)a3
{
  v3 = a3;
  v4 = [v3 accountBalance];
  v5 = [MEMORY[0x277CCA980] defaultDatabaseAmountMultiplier];
  v33 = [v4 decimalNumberByMultiplyingBy:v5];

  v6 = [v3 creditLimit];
  v7 = [MEMORY[0x277CCA980] defaultDatabaseAmountMultiplier];
  v32 = [v6 decimalNumberByMultiplyingBy:v7];

  v8 = [v3 minimumPaymentAmount];
  v9 = [MEMORY[0x277CCA980] defaultDatabaseAmountMultiplier];
  v25 = [v8 decimalNumberByMultiplyingBy:v9];

  v10 = [v3 overduePaymentAmount];
  v11 = [MEMORY[0x277CCA980] defaultDatabaseAmountMultiplier];
  v24 = [v10 decimalNumberByMultiplyingBy:v11];

  v30 = [v3 accountID];
  v29 = [v3 accountType];
  v28 = [v3 sourceType];
  v27 = [v3 currency];
  v31 = [MEMORY[0x277CBEAA8] now];
  [v31 timeIntervalSinceReferenceDate];
  v26 = v12;
  v13 = [v3 accountCategory];
  v14 = [v3 accountDescription];
  v15 = [v3 accountStatus];
  v16 = [v3 nextPaymentDate];
  [v16 timeIntervalSinceReferenceDate];
  v18 = v17;
  v19 = [v3 institutionName];
  v20 = [v3 institutionID];
  v21 = [v3 uniqueAccountID];

  v22 = [(FHDatabaseManager *)self _execute:@"insert or replace into fh_account_information (source_identifier, account_type, account_balance, source_type, account_currency_code, account_date, account_category, account_description, account_status, credit_limit, next_payment_date, minimum_payment_amount, overdue_payment_amount, institution_name, institution_id, unique_account_id) values (%@, %d, %@, %d, %@, %d, %d, %@, %d, %@, %f, %@, %@, %@, %@, %@)", v30, v29, v33, v28, v27, v26, v13, v14, v15, v32, v18, v25, v24, v19, v20, v21];
  return v22;
}

- (id)getFHAccounts
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __34__FHDatabaseManager_getFHAccounts__block_invoke;
  v5[3] = &unk_2785CB310;
  v5[4] = &v6;
  [(FHDatabaseManager *)self streamGenericSQLFetch:v5 predicate:0 sqlFetchQuery:@"select * from fh_account_information", 0];
  v3 = [v7[5] copy];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __34__FHDatabaseManager_getFHAccounts__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v25 = objc_alloc_init(FHAccount);
  v4 = [v3 stringAtIndex:0];
  [(FHAccount *)v25 setAccountID:v4];

  v5 = [objc_alloc(MEMORY[0x277CCA980]) initWithInteger:{objc_msgSend(v3, "intAtIndex:", 2)}];
  v6 = [MEMORY[0x277CCA980] defaultDatabaseAmountMultiplier];
  v7 = [v5 decimalNumberByDividingBy:v6];
  [(FHAccount *)v25 setAccountBalance:v7];

  -[FHAccount setSourceType:](v25, "setSourceType:", [v3 intAtIndex:3]);
  v8 = [v3 stringAtIndex:4];
  [(FHAccount *)v25 setCurrency:v8];

  -[FHAccount setAccountCategory:](v25, "setAccountCategory:", [v3 intAtIndex:6]);
  -[FHAccount setAccountType:](v25, "setAccountType:", [v3 intAtIndex:1]);
  v9 = [v3 stringAtIndex:7];
  [(FHAccount *)v25 setAccountDescription:v9];

  -[FHAccount setAccountStatus:](v25, "setAccountStatus:", [v3 intAtIndex:8]);
  v10 = [v3 decimalNumberAtIndex:9];
  v11 = [MEMORY[0x277CCA980] defaultDatabaseAmountMultiplier];
  v12 = [v10 decimalNumberByDividingBy:v11];
  [(FHAccount *)v25 setCreditLimit:v12];

  v13 = MEMORY[0x277CBEAA8];
  v14 = [v3 objectAtIndex:10];
  [v14 doubleValue];
  v15 = [v13 dateWithTimeIntervalSinceReferenceDate:?];
  [(FHAccount *)v25 setNextPaymentDate:v15];

  v16 = [v3 decimalNumberAtIndex:11];
  v17 = [MEMORY[0x277CCA980] defaultDatabaseAmountMultiplier];
  v18 = [v16 decimalNumberByDividingBy:v17];
  [(FHAccount *)v25 setMinimumPaymentAmount:v18];

  v19 = [v3 decimalNumberAtIndex:12];
  v20 = [MEMORY[0x277CCA980] defaultDatabaseAmountMultiplier];
  v21 = [v19 decimalNumberByDividingBy:v20];
  [(FHAccount *)v25 setOverduePaymentAmount:v21];

  v22 = [v3 stringAtIndex:13];
  [(FHAccount *)v25 setInstitutionName:v22];

  v23 = [v3 stringAtIndex:14];
  [(FHAccount *)v25 setInstitutionID:v23];

  v24 = [v3 stringAtIndex:15];

  [(FHAccount *)v25 setUniqueAccountID:v24];
  [*(*(*(a1 + 32) + 8) + 40) addObject:v25];
}

- (BOOL)updatePeerPaymentAccountBalance:(id)a3 amount:(id)a4 currencyCode:(id)a5
{
  v35 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = -1;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x2020000000;
  v24[3] = 0;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __73__FHDatabaseManager_updatePeerPaymentAccountBalance_amount_currencyCode___block_invoke;
  v23[3] = &unk_2785CB3B0;
  v23[4] = v24;
  v23[5] = &v25;
  [(FHDatabaseManager *)self streamGenericSQLFetch:v23 predicate:0 sqlFetchQuery:@"select * from fh_account_information", 0];
  v11 = [MEMORY[0x277CBEAA8] now];
  [v11 timeIntervalSinceReferenceDate];
  v13 = v12;

  v14 = [MEMORY[0x277CCA980] defaultDatabaseAmountMultiplier];
  v15 = [v9 decimalNumberByMultiplyingBy:v14];

  LODWORD(v14) = *(v26 + 6);
  if (v14 != [v15 intValue] || *(v26 + 6) == -1)
  {
    v16 = [(FHDatabaseManager *)self _execute:@"insert or replace into fh_account_information (source_identifier, account_type, account_balance, account_currency_code, account_date) values (%@, %d, %@, %@, %d)", v8, 1, v15, v10, v13];
    if (v16)
    {
      v17 = FinHealthLogObject(@"FinHealthCore");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412802;
        v30 = v15;
        v31 = 2112;
        v32 = v10;
        v33 = 2112;
        v34 = v8;
        v18 = "Updating balance of %@ %@ for transactionSourceIdentifier=%@ in fh_acount_information database table: success";
        v19 = v17;
        v20 = OS_LOG_TYPE_DEBUG;
LABEL_9:
        _os_log_impl(&dword_226DD4000, v19, v20, v18, buf, 0x20u);
      }
    }

    else
    {
      v17 = FinHealthLogObject(@"FinHealthCore");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v30 = v15;
        v31 = 2112;
        v32 = v10;
        v33 = 2112;
        v34 = v8;
        v18 = "Updating balance of %@ %@ for transactionSourceIdentifier=%@ in fh_acount_information database table: failed";
        v19 = v17;
        v20 = OS_LOG_TYPE_ERROR;
        goto LABEL_9;
      }
    }

    goto LABEL_11;
  }

  LOBYTE(v16) = 1;
LABEL_11:

  _Block_object_dispose(v24, 8);
  _Block_object_dispose(&v25, 8);

  v21 = *MEMORY[0x277D85DE8];
  return v16;
}

void __73__FHDatabaseManager_updatePeerPaymentAccountBalance_amount_currencyCode___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 unsignedIntAtIndex:5];
  if (*(*(*(a1 + 32) + 8) + 24) <= v3)
  {
    v4 = v3;
    if ([v5 intAtIndex:1] == 1)
    {
      *(*(*(a1 + 32) + 8) + 24) = v4;
      *(*(*(a1 + 40) + 8) + 24) = [v5 unsignedIntAtIndex:2];
    }
  }
}

- (id)getCurrentCashBalance
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = -1;
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x2020000000;
  v6[3] = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__FHDatabaseManager_getCurrentCashBalance__block_invoke;
  v5[3] = &unk_2785CB3B0;
  v5[4] = v6;
  v5[5] = &v7;
  [(FHDatabaseManager *)self streamGenericSQLFetch:v5 predicate:0 sqlFetchQuery:@"select * from fh_account_information", 0];
  v2 = objc_alloc(MEMORY[0x277CCA980]);
  v3 = [v2 initWithInteger:*(v8 + 6)];
  _Block_object_dispose(v6, 8);
  _Block_object_dispose(&v7, 8);

  return v3;
}

void __42__FHDatabaseManager_getCurrentCashBalance__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 unsignedIntAtIndex:5];
  if (*(*(*(a1 + 32) + 8) + 24) <= v3)
  {
    v4 = v3;
    if ([v5 intAtIndex:1] == 1)
    {
      *(*(*(a1 + 32) + 8) + 24) = v4;
      *(*(*(a1 + 40) + 8) + 24) = [v5 unsignedIntAtIndex:2];
    }
  }
}

- (void)computePaymentFeatures
{
  v3 = objc_alloc(MEMORY[0x277CBEA80]);
  v4 = [v3 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
  v5 = [v4 fh_dateWithStartOfDayByAddingDaysFromNow:-7];
  v6 = [MEMORY[0x277CBEAA8] now];
  [v6 timeIntervalSinceReferenceDate];
  v8 = v7;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __43__FHDatabaseManager_computePaymentFeatures__block_invoke;
  v11[3] = &unk_2785CB1B8;
  v12 = v5;
  v13 = v6;
  v14 = self;
  v9 = v6;
  v10 = v5;
  [(FHDatabaseManager *)self streamGenericSQLFetch:v11 predicate:0 sqlFetchQuery:@"select * from transactions t where t_type = %d and t_date >= %d and t_date <= %d and a_type == %d order by t_date desc limit %d", 10, 0, v8, 2, -1];
}

void __43__FHDatabaseManager_computePaymentFeatures__block_invoke(uint64_t a1, void *a2)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 objectAtIndex:1];
  v5 = [v3 objectAtIndex:3];
  v6 = objc_alloc(MEMORY[0x277CBEAA8]);
  v7 = [v3 unsignedIntAtIndex:12];

  v8 = [v6 initWithTimeIntervalSinceReferenceDate:v7];
  if ([v8 compare:*(a1 + 32)] == -1 || objc_msgSend(v8, "compare:", *(a1 + 40)) == 1)
  {
    v9 = 0;
  }

  else
  {
    v10 = MEMORY[0x277CBEB98];
    v20[0] = @"FHSmartFeatureAggregateTypeRecentPayment";
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
    v9 = [v10 setWithArray:v11];
  }

  v12 = [*(a1 + 48) _insertOrUpdateTransactionFeatures:v9 compoundFeatures:0 transactionID:v4 financeTransactionID:v5];
  v13 = FinHealthLogObject(@"FinHealthCore");
  v14 = v13;
  if (v12)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *v19 = 0;
      v15 = "Insert Payment Features : succeess";
      v16 = v14;
      v17 = OS_LOG_TYPE_DEBUG;
LABEL_10:
      _os_log_impl(&dword_226DD4000, v16, v17, v15, v19, 2u);
    }
  }

  else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *v19 = 0;
    v15 = "Insert Payment Features : failed";
    v16 = v14;
    v17 = OS_LOG_TYPE_ERROR;
    goto LABEL_10;
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (id)_computePaymentFeaturesForTransaction:(id)a3
{
  v26[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x277CBEA80]);
  v6 = [v5 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
  v7 = [v6 fh_dateWithStartOfDayByAddingDaysFromNow:-7];
  v8 = [v4 identifier];
  v9 = [v4 transactionDate];
  if ([v4 transactionType] != 10 || objc_msgSend(v9, "compare:", v7) == -1 || (objc_msgSend(MEMORY[0x277CBEAA8], "now"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v9, "compare:", v10), v10, v11 == 1))
  {
    v12 = 0;
    goto LABEL_5;
  }

  v15 = MEMORY[0x277CBEB98];
  v26[0] = @"FHSmartFeatureAggregateTypeRecentPayment";
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
  v12 = [v15 setWithArray:v16];

  v17 = [v4 financeTransactionIdentifier];
  v18 = [(FHDatabaseManager *)self _insertOrUpdateTransactionFeatures:v12 compoundFeatures:0 transactionID:v8 financeTransactionID:v17];

  v19 = FinHealthLogObject(@"FinHealthCore");
  v20 = v19;
  if (v18)
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v24 = 138412290;
      v25 = v8;
      v21 = "Insert Payment Features for transaction id %@:  success";
      v22 = v20;
      v23 = OS_LOG_TYPE_DEBUG;
LABEL_13:
      _os_log_impl(&dword_226DD4000, v22, v23, v21, &v24, 0xCu);
    }
  }

  else if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v24 = 138412290;
    v25 = v8;
    v21 = "Insert Payment Features for transaction id %@: failed";
    v22 = v20;
    v23 = OS_LOG_TYPE_ERROR;
    goto LABEL_13;
  }

LABEL_5:
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)computeAndPersistDisputeFeaturesForPendingTransactions
{
  v3 = [(FHDatabaseManager *)self mostRecentTransactionDate];
  v4 = [MEMORY[0x277CCAC30] predicateWithFormat:@"SELF.%K > %lu", @"t_date", v3 - 7776000];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __75__FHDatabaseManager_computeAndPersistDisputeFeaturesForPendingTransactions__block_invoke;
  v5[3] = &unk_2785CB428;
  v5[4] = self;
  [(FHDatabaseManager *)self streamGenericSQLFetch:v5 predicate:v4 sqlFetchQuery:@"select * from transactions t where t.t_type == %lu and t.t_status == %lu and t.a_type == %d order by t_date desc limit %d", 0, 0, 2, -1];
}

void __75__FHDatabaseManager_computeAndPersistDisputeFeaturesForPendingTransactions__block_invoke(uint64_t a1, void *a2)
{
  v4 = TransactionFromArray(a2);
  v3 = [*(a1 + 32) _computeDisputeFeaturesForTransaction:v4];
}

- (id)_computeDisputeFeaturesForTransaction:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(FHDatabaseManager *)self _getDisputeFeaturesForTransaction:v4];
  v6 = v5;
  if (v5 && [v5 count])
  {
    v7 = [v4 identifier];
    v8 = [v4 financeTransactionIdentifier];
    v9 = [(FHDatabaseManager *)self _insertOrUpdateTransactionFeatures:v6 compoundFeatures:0 transactionID:v7 financeTransactionID:v8];

    v10 = FinHealthLogObject(@"FinHealthCore");
    v11 = v10;
    if (v9)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v17 = 138412290;
        v18 = v7;
        v12 = "computeDisputeFeaturesForTransaction: _insertOrUpdateTransactionFeatures success for transactionID %@ ";
        v13 = v11;
        v14 = OS_LOG_TYPE_DEBUG;
LABEL_8:
        _os_log_impl(&dword_226DD4000, v13, v14, v12, &v17, 0xCu);
      }
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v17 = 138412290;
      v18 = v7;
      v12 = "computeDisputeFeaturesForTransaction: _insertOrUpdateTransactionFeatures fails for transactionID %@";
      v13 = v11;
      v14 = OS_LOG_TYPE_ERROR;
      goto LABEL_8;
    }
  }

  v15 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)_getDisputeFeaturesForTransaction:(id)a3
{
  v3 = a3;
  if (_getDisputeFeaturesForTransaction__onceToken != -1)
  {
    [FHDatabaseManager _getDisputeFeaturesForTransaction:];
  }

  if (![v3 disputeStatus])
  {
    v10 = 0;
    goto LABEL_10;
  }

  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  [v4 addObject:@"FHSmartFeatureAggregateTypeDispute"];
  v5 = objc_alloc(MEMORY[0x277CBEA80]);
  v6 = [v5 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
  v7 = [v6 fh_dateWithStartOfDayByAddingDaysFromNow:-60];
  v8 = _getDisputeFeaturesForTransaction__openDisputeStatuses;
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v3, "disputeStatus")}];
  if ([v8 containsObject:v9])
  {

LABEL_8:
    [v4 addObject:@"FHSmartFeatureAggregateTypeRecentDispute"];
    goto LABEL_9;
  }

  v11 = [v3 disputeLastUpdatedDate];
  v12 = [v11 compare:v7];

  if (v12 != -1)
  {
    goto LABEL_8;
  }

LABEL_9:
  v10 = [v4 copy];

LABEL_10:

  return v10;
}

uint64_t __55__FHDatabaseManager__getDisputeFeaturesForTransaction___block_invoke()
{
  _getDisputeFeaturesForTransaction__openDisputeStatuses = [MEMORY[0x277CBEB98] setWithArray:&unk_283A88140];

  return MEMORY[0x2821F96F8]();
}

- (id)computeAndPersistTransactionGroupings
{
  v23[1] = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = __Block_byref_object_copy_;
  v21[4] = __Block_byref_object_dispose_;
  v22 = 0;
  v4 = objc_alloc(MEMORY[0x277CD89D8]);
  v23[0] = *MEMORY[0x277CD8978];
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
  v6 = [v4 initWithTagSchemes:v5];

  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy_;
  v19 = __Block_byref_object_dispose_;
  v20 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __58__FHDatabaseManager_computeAndPersistTransactionGroupings__block_invoke;
  v11[3] = &unk_2785CB478;
  v11[4] = self;
  v7 = v6;
  v12 = v7;
  v13 = v21;
  v14 = &v15;
  [(FHDatabaseManager *)self streamGenericSQLFetch:v11 predicate:0 sqlFetchQuery:@"select t_identifier, processed_description from fts_transactions where a_type == %d AND processed_description IS NOT NULL order by t_date asc", 4];
  v8 = [v16[5] copy];

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(v21, 8);

  objc_autoreleasePoolPop(v3);
  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

void __58__FHDatabaseManager_computeAndPersistTransactionGroupings__block_invoke(uint64_t a1, void *a2)
{
  v143[3] = *MEMORY[0x277D85DE8];
  v2 = a2;
  context = objc_autoreleasePoolPush();
  v96 = v2;
  v97 = [v2 objectAtIndex:0];
  v98 = [*(a1 + 32) _lockFreeFetch:v97];
  v3 = v98;
  if (([v98 next] & 1) == 0)
  {
    v4 = [v96 objectAtIndex:1];
    v5 = [v4 stringValue];

    v6 = [v5 stringByReplacingOccurrencesOfString:@"'" withString:@"''"];

    v124 = 0;
    v125 = &v124;
    v126 = 0x3032000000;
    v127 = __Block_byref_object_copy_;
    v128 = __Block_byref_object_dispose_;
    v129 = objc_alloc_init(MEMORY[0x277CBEA60]);
    [*(a1 + 40) setString:v6];
    v7 = *(a1 + 40);
    v8 = [v6 length];
    v9 = *MEMORY[0x277CD8978];
    v121[0] = MEMORY[0x277D85DD0];
    v121[1] = 3221225472;
    v121[2] = __58__FHDatabaseManager_computeAndPersistTransactionGroupings__block_invoke_2;
    v121[3] = &unk_2785CB450;
    v90 = v6;
    v122 = v90;
    v123 = &v124;
    [v7 enumerateTagsInRange:0 unit:v8 scheme:0 options:v9 usingBlock:{46, v121}];
    v10 = MEMORY[0x277CCACA8];
    v11 = [v125[5] componentsJoinedByString:@" OR "];
    v93 = [v10 stringWithFormat:@"%@", v11];

    v12 = MEMORY[0x277CCACA8];
    v13 = [v125[5] componentsJoinedByString:@" "];
    v92 = [v12 stringWithFormat:@"%@", v13];

    v91 = [MEMORY[0x277CCACA8] stringWithFormat:@"    SELECT         txns.t_identifier, txns.t_description, txns.t_date, txns.t_amount, txns.a_type, txns.proprietary_bank_transaction_issuer, txns.proprietary_bank_transaction_code, accs.account_category, txns.t_type, txns.t_currencycode, fts.rank     FROM         fts_transactions fts         INNER JOIN transactions txns ON fts.t_identifier = txns.t_identifier         LEFT JOIN fh_account_information accs ON txns.t_source_identifier = accs.source_identifier     WHERE         fts_transactions match '^%@'         AND fts.a_type == %d     UNION     SELECT         txns.t_identifier, txns.t_description, txns.t_date, txns.t_amount, txns.a_type, txns.proprietary_bank_transaction_issuer, txns.proprietary_bank_transaction_code, accs.account_category, txns.t_type, txns.t_currencycode, fts.rank     FROM         fts_transactions fts         INNER JOIN transactions txns ON fts.t_identifier = txns.t_identifier         LEFT JOIN fh_account_information accs ON txns.t_source_identifier = accs.source_identifier     WHERE         fts_transactions match '%@' AND rank < %f         AND fts.a_type == %d     ORDER BY txns.t_date ASC", v92, 4, v93, 0xC024000000000000, 4];;
    v99 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v101 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v100 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v105 = [*(a1 + 32) _lockFreeFetch:v91];
    v102 = objc_alloc_init(MEMORY[0x277CCACA8]);
    v103 = objc_alloc_init(MEMORY[0x277CBEB38]);
    while ([v105 next])
    {
      v14 = [v105 stringAtIndex:0];
      v15 = [*(a1 + 32) _lockFreeFetch:{@"select group_id, group_type from fh_grouping where t_identifier == %@", v14}];
      v106 = [v105 stringAtIndex:1];
      v16 = [v105 integerAtIndex:2];
      [v105 doubleAtIndex:3];
      v18 = v17;
      v19 = [v105 integerAtIndex:4];
      obj = [v105 stringAtIndex:5];
      v111 = [v105 stringAtIndex:6];
      v20 = [v105 integerAtIndex:7];
      v21 = [v105 integerAtIndex:8];
      v109 = [v105 stringAtIndex:9];
      [v105 doubleAtIndex:10];
      v23 = v22;
      v24 = [MEMORY[0x277CCABB0] numberWithDouble:?];
      v143[0] = v24;
      v25 = v18 / 100.0;
      v26 = [MEMORY[0x277CCABB0] numberWithDouble:v25];
      v143[1] = v26;
      v27 = [MEMORY[0x277CCABB0] numberWithInteger:v16];
      v143[2] = v27;
      v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v143 count:3];

      v29 = checkIfIncomeCandidate(v19, v20, obj, v111, v21, v109, v25);
      if ([v15 next])
      {
        v30 = [v15 stringAtIndex:0];
        v31 = [v15 intAtIndex:1];
        v32 = [v103 objectForKey:v30];
        v33 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v16];
        if (v32)
        {
          [(FHTransactionAdditiveGroup *)v32 addTransactionId:v14];
          [(FHTransactionAdditiveGroup *)v32 addAggSimilarityScore:v23];
        }

        else
        {
          v142 = v14;
          v36 = [MEMORY[0x277CBEA60] arrayWithObjects:&v142 count:1];
          v37 = [objc_alloc(MEMORY[0x277CCA980]) initWithDouble:v23];
          v32 = [[FHTransactionAdditiveGroup alloc] initWithAggSimilarityScore:v37 latestTransactionDate:v33 groupIdentifier:v30 transactionIds:v36 groupingMethod:v31 creditDebitType:0 category:0];
        }

        [v103 setObject:v32 forKey:v30];
      }

      else
      {
        if (v29)
        {
          [v100 setObject:v28 forKey:v14];
          [v99 addObject:v106];
        }

        v34 = [objc_alloc(MEMORY[0x277CCA980]) initWithDouble:v23];
        [v101 setObject:v34 forKey:v14];

        v30 = v102;
        if ([v101 count] == 1)
        {
          v35 = v14;
        }

        else
        {
          v35 = v102;
        }

        v102 = v35;
      }

      [v15 close];
    }

    [v105 close];
    v112 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", objc_msgSend(v102, "hash")];
    v94 = [*(a1 + 32) sortGroupsByMode:v103];
    if ([v94 count])
    {
      v38 = [v94 objectAtIndex:0];

      v39 = [v103 objectForKey:v38];
      v40 = [v39 groupingMethod];
      v89 = v39;
      if (v40 == 3 || v40 == 6)
      {
        v40 = 6;
      }

      v110 = v40;
      v88 = [MEMORY[0x277CCACA8] stringWithFormat:@"select fh_grouping.t_identifier, transactions.t_description, transactions.t_date, transactions.t_amount, transactions.a_type, transactions.proprietary_bank_transaction_issuer, transactions.proprietary_bank_transaction_code, accs.account_category, transactions.t_type, transactions.t_currencycode from fh_grouping INNER JOIN transactions ON fh_grouping.t_identifier == transactions.t_identifier LEFT JOIN fh_account_information accs ON transactions.t_source_identifier == accs.source_identifier where fh_grouping.group_id == '%@'", v38];
      v41 = [*(a1 + 32) _lockFreeFetch:?];
      while ([v41 next])
      {
        v113 = [v41 stringAtIndex:0];
        v107 = [v41 stringAtIndex:1];
        v42 = [v41 integerAtIndex:2];
        [v41 doubleAtIndex:3];
        v44 = v43;
        v104 = [v41 integerAtIndex:4];
        obja = [v41 stringAtIndex:5];
        v45 = [v41 stringAtIndex:6];
        v46 = [v41 integerAtIndex:7];
        v47 = [v41 integerAtIndex:8];
        v48 = [v41 stringAtIndex:9];
        v49 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
        v141[0] = v49;
        v50 = v44 / 100.0;
        v51 = [MEMORY[0x277CCABB0] numberWithDouble:v50];
        v141[1] = v51;
        v52 = [MEMORY[0x277CCABB0] numberWithInteger:v42];
        v141[2] = v52;
        v53 = [MEMORY[0x277CBEA60] arrayWithObjects:v141 count:3];

        if (checkIfIncomeCandidate(v104, v46, obja, v45, v47, v48, v50))
        {
          [v100 setObject:v53 forKey:v113];
          [v99 addObject:v107];
        }
      }

      [v41 close];

      v112 = v38;
    }

    else
    {
      v110 = 3;
    }

    v119 = 0u;
    v120 = 0u;
    v117 = 0u;
    v118 = 0u;
    objb = v101;
    v54 = [objb countByEnumeratingWithState:&v117 objects:v140 count:16];
    if (v54)
    {
      v55 = *v118;
      do
      {
        for (i = 0; i != v54; ++i)
        {
          if (*v118 != v55)
          {
            objc_enumerationMutation(objb);
          }

          v57 = *(*(&v117 + 1) + 8 * i);
          v58 = FinHealthLogObject(@"FinHealthCore");
          if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
          {
            v59 = [objb objectForKey:v57];
            v60 = [v59 stringValue];
            *buf = 136316162;
            v131 = "[FHDatabaseManager computeAndPersistTransactionGroupings]_block_invoke";
            v132 = 2112;
            v133 = v112;
            v134 = 2112;
            v135 = v57;
            v136 = 2112;
            v137 = v60;
            v138 = 2048;
            v139 = v110;
            _os_log_impl(&dword_226DD4000, v58, OS_LOG_TYPE_DEBUG, "%s Group: groupId %@ transactionId %@ similarityScore %@ GroupMethod %lu", buf, 0x34u);
          }

          v61 = MEMORY[0x277CCACA8];
          v62 = [objb objectForKey:v57];
          v63 = [v62 stringValue];
          v64 = [v61 stringWithFormat:@"insert or replace into fh_grouping (t_identifier, group_id, similarity_score, group_type) values ('%@', '%@', %@, %d)", v57, v112, v63, v110];

          [*(a1 + 32) _execute:v64];
        }

        v54 = [objb countByEnumeratingWithState:&v117 objects:v140 count:16];
      }

      while (v54);
    }

    if (_os_feature_enabled_impl() && [v100 count])
    {
      v65 = a1;
      v66 = *(*(*(a1 + 48) + 8) + 40);
      if (!v66)
      {
        v67 = objc_alloc_init(FinHealthIncomeClassifier);
        v68 = *(*(a1 + 48) + 8);
        v69 = *(v68 + 40);
        *(v68 + 40) = v67;

        v70 = *(a1 + 32);
        v71 = MEMORY[0x277CCACA8];
        v72 = [*(*(*(a1 + 48) + 8) + 40) modelName];
        v73 = [*(*(*(a1 + 48) + 8) + 40) modelVersion];
        v74 = [v71 stringWithFormat:@"%@:%@", v72, v73];
        v75 = [*(*(*(a1 + 48) + 8) + 40) trialId];
        [v70 updateProcessingTimeForFeature:v74 data:v75];

        v65 = a1;
        v66 = *(*(*(a1 + 48) + 8) + 40);
      }

      v76 = *(v65 + 32);
      v77 = [v100 copy];
      v78 = [v99 copy];
      v79 = [FinHealthIncomeClassifier generateFeatures:v77 withDescriptions:v78];
      v80 = [v76 _predictAndPersistIncomeClassification:v66 dataId:v112 dataType:2 features:v79];

      if (v80)
      {
        v81 = [*(*(*(a1 + 56) + 8) + 40) objectForKey:@"INCOME-INSIGHTS"];
        v82 = v81;
        if (v81)
        {
          v83 = v81;
        }

        else
        {
          v83 = objc_opt_new();
        }

        v84 = v83;

        v85 = *(*(*(a1 + 56) + 8) + 40);
        v86 = [v84 setByAddingObject:v112];
        [v85 setObject:v86 forKey:@"INCOME-INSIGHTS"];
      }
    }

    _Block_object_dispose(&v124, 8);
    v3 = v98;
  }

  [v3 close];

  objc_autoreleasePoolPop(context);
  v87 = *MEMORY[0x277D85DE8];
}

void __58__FHDatabaseManager_computeAndPersistTransactionGroupings__block_invoke_2(uint64_t a1)
{
  v5 = [*(a1 + 32) substringWithRange:?];
  v2 = [*(*(*(a1 + 40) + 8) + 40) arrayByAddingObject:v5];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (BOOL)groupingSchemaUpdate
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCA980] decimalNumberWithString:@"1.3"];
  v4 = [(FHDatabaseManager *)self processingDataForFeature:@"FHProcessingHistoryGrouping"];
  v5 = FinHealthLogObject(@"FinHealthCore");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v15 = 138412290;
    v16 = v4;
    _os_log_impl(&dword_226DD4000, v5, OS_LOG_TYPE_DEBUG, "Current Grouping Version: %@", &v15, 0xCu);
  }

  if (v4 && ([MEMORY[0x277CCA980] decimalNumberWithString:v4], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "lessThan:", v3), v6, !v7))
  {
    LOBYTE(v12) = 0;
  }

  else
  {
    v8 = FinHealthLogObject(@"FinHealthCore");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v15 = 138412290;
      v16 = v3;
      _os_log_impl(&dword_226DD4000, v8, OS_LOG_TYPE_DEBUG, "Grouping Schema Will Update to %@", &v15, 0xCu);
    }

    v9 = [[FHDatabaseEntity alloc] initWithEntity:@"fh_grouping"];
    v10 = [[FHDatabaseEntity alloc] initWithEntity:@"features_predicted_realtime"];
    v11 = [FHDatabaseClauseFromBuilder initWithBuilder:&__block_literal_global_396];
    v12 = [(FHDatabaseEntity *)v9 clearData];
    if (v12)
    {
      [(FHDatabaseManager *)self updateProcessingTimeForFeature:@"FHProcessingHistoryGrouping" data:@"1.3"];
      [(FHDatabaseEntity *)v10 clearDataWithClauseBuilder:v11];
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t __38__FHDatabaseManager_sortGroupsByMode___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 transactionIds];
  v7 = [v6 count];

  v8 = [v5 transactionIds];
  v9 = [v8 count];

  if (v7 >= v9)
  {
    if (v7 > v9)
    {
      v10 = -1;
    }

    else
    {
      v11 = [v4 aggSimilarityScore];
      v12 = [v5 aggSimilarityScore];
      v13 = [v11 compare:v12];
      v10 = v13;
      if (!v13)
      {
        v14 = [v4 transactionIds];
        v15 = [v14 lastObject];

        v16 = [v5 transactionIds];
        v17 = [v16 lastObject];

        v10 = [v17 compare:v15];
      }
    }
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (id)predictAndPersistIncomeClassificationForAllGroups:(id)a3
{
  v33[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy_;
  v31 = __Block_byref_object_dispose_;
  v32 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy_;
  v25 = __Block_byref_object_dispose_;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy_;
  v19 = __Block_byref_object_dispose_;
  v5 = v4;
  v20 = v5;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __71__FHDatabaseManager_predictAndPersistIncomeClassificationForAllGroups___block_invoke;
  v14[3] = &unk_2785CB388;
  v14[4] = self;
  v14[5] = &v21;
  v14[6] = &v15;
  v14[7] = &v27;
  [(FHDatabaseManager *)self streamGenericSQLFetch:v14 predicate:0 sqlFetchQuery:@"select t_identifier, group_id from fh_grouping order by group_id", 0];
  if ([v28[5] count])
  {
    v6 = [(FHDatabaseManager *)self _predictAndPersistIncomeClassificationForGroupId:v22[5] transactionIds:v28[5] finHealthIncomeClassifier:v16[5]];
    v7 = v16[5];
    v16[5] = v6;
  }

  v8 = v16[5];

  if (v8)
  {
    v9 = [v8 modelName];
    v33[0] = v9;
    v10 = [v8 modelVersion];
    v33[1] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:2];
  }

  else
  {
    v11 = 0;
  }

  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

void __71__FHDatabaseManager_predictAndPersistIncomeClassificationForAllGroups___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectAtIndex:0];
  v12 = [v4 stringValue];

  v5 = [v3 stringAtIndex:1];

  if (([v5 isEqualToString:*(*(*(a1 + 40) + 8) + 40)] & 1) == 0)
  {
    v6 = [*(a1 + 32) _predictAndPersistIncomeClassificationForGroupId:*(*(*(a1 + 40) + 8) + 40) transactionIds:*(*(*(a1 + 56) + 8) + 40) finHealthIncomeClassifier:*(*(*(a1 + 48) + 8) + 40)];
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v5);
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v10 = *(*(a1 + 56) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  [*(*(*(a1 + 56) + 8) + 40) addObject:v12];
}

- (BOOL)insertModelPredictionLabel:(id)a3 modelVersion:(id)a4 label:(id)a5
{
  v8 = MEMORY[0x277CCACA8];
  v9 = a5;
  v10 = [v8 stringWithFormat:@"%@:%@", a3, a4];
  LOBYTE(a3) = [(FHDatabaseManager *)self _execute:@"insert or replace into features_prediction_labels (feature_name, feature_predicted_class, smart_feature_name) values (%@, %d, %@)", v10, 0, v9];

  return a3;
}

- (id)_predictAndPersistIncomeClassificationForGroupId:(id)a3 transactionIds:(id)a4 finHealthIncomeClassifier:(id)a5
{
  v47 = *MEMORY[0x277D85DE8];
  v28 = a3;
  v7 = a4;
  v27 = a5;
  v30 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v29 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = v7;
  v34 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v34)
  {
    v32 = *v42;
    do
    {
      for (i = 0; i != v34; ++i)
      {
        if (*v42 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [(FHDatabaseManager *)self getTransactionByIdentifier:*(*(&v41 + 1) + 8 * i)];
        v39 = [v9 identifier];
        v38 = [v9 transactionDescription];
        v10 = [v9 transactionDate];
        v11 = [v9 amount];
        [v11 doubleValue];
        v13 = v12;

        v37 = [v9 accountType];
        v40 = [v9 transactionSourceIdentifier];
        v36 = [(FHDatabaseManager *)self getAccountCategoryForIdentifier:?];
        v14 = [v9 proprietaryBankTransactionIssuer];
        v15 = [v9 proprietaryBankTransactionCode];
        v35 = [v9 transactionType];
        v16 = [v9 currencyCode];
        v17 = [MEMORY[0x277CCA980] notANumber];
        v45[0] = v17;
        v18 = [MEMORY[0x277CCABB0] numberWithDouble:v13];
        v45[1] = v18;
        v19 = MEMORY[0x277CCABB0];
        [v10 timeIntervalSinceReferenceDate];
        v20 = [v19 numberWithDouble:?];
        v45[2] = v20;
        v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:3];

        if (checkIfIncomeCandidate(v37, v36, v14, v15, v35, v16, v13))
        {
          [v30 addObject:v38];
          [v29 setObject:v21 forKey:v39];
        }
      }

      v34 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
    }

    while (v34);
  }

  if ([v29 count])
  {
    v22 = [v29 copy];
    v23 = [v30 copy];
    v24 = [FinHealthIncomeClassifier generateFeatures:v22 withDescriptions:v23];
    [(FHDatabaseManager *)self _predictAndPersistIncomeClassification:v27 dataId:v28 dataType:2 features:v24];
  }

  v25 = *MEMORY[0x277D85DE8];

  return v27;
}

- (BOOL)_predictAndPersistIncomeClassification:(id)a3 dataId:(id)a4 dataType:(int64_t)a5 features:(id)a6
{
  v10 = a3;
  v11 = a4;
  if (a6)
  {
    v12 = [v10 incomeProbabilityWithMultiArray:a6];
    if (v12)
    {
      v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v14 = [v10 modelName];
      [v13 setObject:v14 forKey:@"modelName"];

      v15 = [v10 modelVersion];
      [v13 setObject:v15 forKey:@"modelVersion"];

      [v13 setObject:v11 forKey:@"dataIdentifier"];
      v16 = [MEMORY[0x277CCABB0] numberWithInteger:a5];
      [v13 setObject:v16 forKey:@"dataType"];

      [v13 setObject:v12 forKey:@"predictedScore"];
      v17 = [v10 trialId];
      [v13 setObject:v17 forKey:@"trialIdentifier"];

      v18 = [v13 copy];
      [(FHDatabaseManager *)self insertModelRecord:v18];

      [v12 doubleValue];
      v20 = v19 > 0.8;
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (id)retrieveGroups
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __35__FHDatabaseManager_retrieveGroups__block_invoke;
  v5[3] = &unk_2785CB310;
  v5[4] = &v6;
  [(FHDatabaseManager *)self streamGenericSQLFetch:v5 predicate:0 sqlFetchQuery:@"select t_identifier, group_id from fh_grouping order by group_id", 0];
  v3 = [v7[5] copy];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __35__FHDatabaseManager_retrieveGroups__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectAtIndex:0];
  v10 = [v4 stringValue];

  v5 = [v3 stringAtIndex:1];

  v6 = [*(*(*(a1 + 32) + 8) + 40) objectForKey:v5];

  if (v6)
  {
    v7 = [*(*(*(a1 + 32) + 8) + 40) objectForKey:v5];
    v8 = *(*(*(a1 + 32) + 8) + 40);
    v9 = [v7 arrayByAddingObject:v10];
    [v8 setObject:v9 forKey:v5];
  }

  else
  {
    v7 = [MEMORY[0x277CBEA60] arrayWithObject:v10];
    [*(*(*(a1 + 32) + 8) + 40) setObject:v7 forKey:v5];
  }
}

- (int64_t)getAccountCategoryForIdentifier:(id)a3
{
  v3 = a3;
  v4 = [[FHDatabaseEntity alloc] initWithEntity:@"fh_account_information"];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = -1;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __53__FHDatabaseManager_getAccountCategoryForIdentifier___block_invoke;
  v10[3] = &unk_2785CB058;
  v5 = v3;
  v11 = v5;
  v6 = [FHDatabaseClauseFromBuilder initWithBuilder:v10];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__FHDatabaseManager_getAccountCategoryForIdentifier___block_invoke_2;
  v9[3] = &unk_2785CB080;
  v9[4] = &v12;
  [(FHDatabaseEntity *)v4 queryDataWithBlock:v6 logicalOperator:@"AND" limit:1 selectFields:&unk_283A88158 orderby:0 usingBlock:v9];
  v7 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v7;
}

uint64_t __53__FHDatabaseManager_getAccountCategoryForIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  result = [a2 intAtIndex:0];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (void)dealloc
{
  v12 = *MEMORY[0x277D85DE8];
  db = self->_db;
  if (db)
  {
    v9 = 0;
    [(PQLConnection *)db close:&v9];
    v4 = v9;
    v5 = FinHealthLogObject(@"FinHealthCore");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = [v4 description];
      *buf = 138412290;
      v11 = v6;
      _os_log_impl(&dword_226DD4000, v5, OS_LOG_TYPE_DEBUG, "db dealloced, %@", buf, 0xCu);
    }
  }

  v8.receiver = self;
  v8.super_class = FHDatabaseManager;
  [(FHDatabaseManager *)&v8 dealloc];
  v7 = *MEMORY[0x277D85DE8];
}

- (FHFetchAllTransactionsDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end