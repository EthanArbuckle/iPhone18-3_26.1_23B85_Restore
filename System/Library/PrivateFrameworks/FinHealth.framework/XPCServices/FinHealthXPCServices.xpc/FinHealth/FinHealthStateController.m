@interface FinHealthStateController
- (BOOL)invalidateTransactionByTransaction:(id)a3;
- (BOOL)suggestAutoReload;
- (id)_checkEventDeletion;
- (id)_clientConnection;
- (id)_getRecurringChangeOverTimePeriod:(int64_t)a3;
- (id)_insertOrUpdateTransactionPostDirtyState:(id)a3;
- (id)_newClientConnection;
- (id)_processAggregateFeaturesWithHardReset:(BOOL)a3 forceStalenessCheck:(BOOL)a4;
- (id)_remoteObjectProxyWithErrorHandler;
- (id)featuresWithAmountSums:(id)a3 startDate:(id)a4 endDate:(id)a5;
- (id)generatePredictionWithModelType:(id)a3 withModelPathComponent:(id)a4;
- (id)getAllPredictedPeerPaymentsAfterDate:(id)a3;
- (id)getCompundFeaturesOverTimRangeFrom:(id)a3 to:(id)a4;
- (id)getDetailedCategoryAggregateRecordsWithCountryCode:(id)a3 timeWindow:(unint64_t)a4 timeOfDay:(unint64_t)a5;
- (id)getLostSavingsOverTime:(id)a3 from:(id)a4 to:(id)a5;
- (id)getLostSavingsValueFromCompoundFeatures:(id)a3;
- (id)getMerchantForTransactionId:(id)a3;
- (id)getRecurringChangeForMessagingOverTimePeriod:(int64_t)a3;
- (id)getTransactionByTransaction:(id)a3;
- (id)insertOrUpdateTransaction:(id)a3;
- (id)insertOrUpdateTransactions:(id)a3;
- (id)predictionLabelForModelName:(id)a3 modelVersion:(id)a4;
- (id)transactionsByGroupID:(id)a3;
- (id)transactionsInInternalAnyState:(unint64_t)a3 forPass:(id)a4;
- (void)_excludeRecurringFromEventTaggingCandidates:(id)a3;
- (void)_tagFlightTransactionsWithTripEvents:(id)a3;
- (void)_transactionWithTransactionID:(id)a3 completion:(id)a4;
- (void)aggregateFeaturesWithHandler:(id)a3;
- (void)aggregateFeaturesWithProcessSource:(id)a3 completion:(id)a4;
- (void)computeAndPersistDetailedCategoryRecords:(id)a3 withRecurringCounts:(id)a4;
- (void)countMerchantDetailedCategoryRecordsWithDictionary:(id)a3 fHTransaction:(id)a4;
- (void)countRecurringMerchantDetailedCategoryRecords:(id)a3;
- (void)deleteAllData:(id)a3;
- (void)deleteAllDataForPasses:(id)a3 force:(BOOL)a4 completion:(id)a5;
- (void)deleteAllDetailedCategoryRecords;
- (void)insertDetailedCategoryAggregateFeature:(id)a3 amountSpent:(id)a4 transactionCount:(unint64_t)a5 countryCode:(id)a6 recurringTransactionRatio:(double)a7 timeOfDay:(unint64_t)a8 timeWindow:(unint64_t)a9 startDate:(id)a10 endDate:(id)a11;
- (void)predictAndPersistCardPreselectPropensityModel;
- (void)removeAllEntriesFromTable:(id)a3;
- (void)transactionBatches:(unint64_t)a3 batch:(id)a4;
@end

@implementation FinHealthStateController

- (id)insertOrUpdateTransactions:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v16;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = [(FinHealthStateController *)self insertOrUpdateTransaction:*(*(&v15 + 1) + 8 * i)];
      }

      v9 += v8;
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  v13 = [NSString stringWithFormat:@"%@ :%lu", FHBatchInsertStatusSuccess, v9, v15];
  objc_autoreleasePoolPop(v5);

  return v13;
}

- (id)insertOrUpdateTransaction:(id)a3
{
  v4 = a3;
  v5 = FinHealthLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = [v4 identifier];
    [v4 accountType];
    v7 = FHTransactionAccountTypeToString();
    *buf = 136315650;
    *&buf[4] = "[FinHealthStateController insertOrUpdateTransaction:]";
    *&buf[12] = 2112;
    *&buf[14] = v6;
    *&buf[22] = 2112;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%s]. Received transaction.identifier: %@ accountType: %@", buf, 0x20u);
  }

  if (![v4 accountType] || objc_msgSend(v4, "accountType") != 2 && objc_msgSend(v4, "accountType") != 1 && objc_msgSend(v4, "accountType") != 4)
  {
    goto LABEL_10;
  }

  v8 = [(FHDatabaseManager *)self->_dbMgr getTransactionInternalState:v4];
  if (v8 == 1)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v14 = sub_100002F5C;
    v15 = sub_100002F6C;
    v16 = 0;
    v10 = [v4 identifier];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100002F74;
    v12[3] = &unk_100020A78;
    v12[4] = self;
    v12[5] = buf;
    [(FinHealthStateController *)self _transactionWithTransactionID:v10 completion:v12];

    v9 = *(*&buf[8] + 40);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    if (!v8 && ![(FHDatabaseManager *)self->_dbMgr insertTransactionInInternalStateDirty:v4])
    {
LABEL_10:
      v9 = 0;
      goto LABEL_13;
    }

    v9 = [(FinHealthStateController *)self _insertOrUpdateTransactionPostDirtyState:v4];
  }

LABEL_13:

  return v9;
}

- (id)_insertOrUpdateTransactionPostDirtyState:(id)a3
{
  v4 = a3;
  if ([(FHDatabaseManager *)self->_dbMgr updateTransactionWholeRaw:v4])
  {
    dbMgr = self->_dbMgr;
    v6 = [v4 identifier];
    v7 = [(FHDatabaseManager *)dbMgr featuresForTransaction:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)countMerchantDetailedCategoryRecordsWithDictionary:(id)a3 fHTransaction:(id)a4
{
  v61 = a3;
  v5 = a4;
  context = objc_autoreleasePoolPush();
  v6 = [v5 merchantDetailedCategory];
  v7 = [v61 objectForKey:v6];

  if (!v7)
  {
    v8 = v5;
    v9 = objc_alloc_init(NSMutableDictionary);
    do
    {
      v10 = objc_alloc_init(NSMutableDictionary);
      for (i = 0; i != 5; ++i)
      {
        v12 = objc_autoreleasePoolPush();
        v13 = objc_alloc_init(NSMutableDictionary);
        v14 = [NSDecimalNumber numberWithUnsignedInteger:i];
        [v10 setObject:v13 forKey:v14];

        objc_autoreleasePoolPop(v12);
      }

      v15 = [NSDecimalNumber numberWithUnsignedInteger:v7];
      [v9 setObject:v10 forKey:v15];

      ++v7;
    }

    while (v7 != 4);
    v5 = v8;
    v16 = [v8 merchantDetailedCategory];
    [v61 setObject:v9 forKey:v16];
  }

  v17 = [v5 transactionDate];
  v18 = [v5 timeZone];
  TimeOfDay = GetTimeOfDay();

  v19 = GetProcessingDate();
  v20 = [v5 countryCode];
  v21 = v20;
  v22 = &stru_100021298;
  if (v20)
  {
    v22 = v20;
  }

  v23 = v22;

  v24 = 0;
  v59 = FHMapsRecordDictAmountKey;
  v54 = FHMapsRecordDictCountKey;
  v55 = v19;
  v25 = &MKCoordinateRegionMakeWithDistance_ptr;
  v60 = v23;
  v58 = v5;
  do
  {
    v26 = objc_autoreleasePoolPush();
    TimeWindowToSeconds();
    v27 = [v19 dateByAddingTimeInterval:?];
    v28 = [v5 transactionDate];
    v62 = v27;
    v29 = [v28 compare:v27];

    if (v29 == 1)
    {
      v57 = v26;
      v30 = [v5 merchantDetailedCategory];
      v31 = [v61 objectForKeyedSubscript:v30];
      v32 = [v25[169] numberWithUnsignedInteger:v24];
      v33 = [v31 objectForKeyedSubscript:v32];
      v34 = [v25[169] numberWithUnsignedInteger:TimeOfDay];
      v35 = [v33 objectForKeyedSubscript:v34];

      v36 = [v35 objectForKey:v60];

      if (!v36)
      {
        v37 = [[NSMutableDictionary alloc] initWithObjectsAndKeys:{&off_100021BA8, v59, &off_100021B58, v54, 0}];
        [v35 setObject:v37 forKey:v60];
      }

      v38 = [v35 objectForKeyedSubscript:v60];
      v39 = +[NSDecimalNumber one];
      [v38 setOrAddToDecimalValue:v39 forKey:v54];

      v40 = [v35 objectForKeyedSubscript:v60];
      v41 = [v58 amount];
      [v40 setOrAddToDecimalValue:v41 forKey:v59];

      v42 = [v58 merchantDetailedCategory];
      v43 = [v61 objectForKeyedSubscript:v42];
      v44 = [v25[169] numberWithUnsignedInteger:v24];
      v45 = [v43 objectForKeyedSubscript:v44];
      v46 = [v45 objectForKeyedSubscript:&off_100021B70];

      v23 = v60;
      v47 = [v46 objectForKey:v60];

      if (!v47)
      {
        v48 = [[NSMutableDictionary alloc] initWithObjectsAndKeys:{&off_100021BA8, v59, &off_100021B58, v54, 0}];
        [v46 setObject:v48 forKey:v60];
      }

      v49 = [v46 objectForKeyedSubscript:v60];
      v50 = +[NSDecimalNumber one];
      [v49 setOrAddToDecimalValue:v50 forKey:v54];

      v51 = [v46 objectForKeyedSubscript:v60];
      v52 = [v58 amount];
      [v51 setOrAddToDecimalValue:v52 forKey:v59];

      v5 = v58;
      v19 = v55;
      v25 = &MKCoordinateRegionMakeWithDistance_ptr;
      v26 = v57;
    }

    objc_autoreleasePoolPop(v26);
    ++v24;
  }

  while (v24 != 4);

  objc_autoreleasePoolPop(context);
}

- (void)countRecurringMerchantDetailedCategoryRecords:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [(FHDatabaseManager *)self->_dbMgr getRecurringTransactionIdentifiersByClass:9];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(FHDatabaseManager *)self->_dbMgr getTransactionByIdentifier:*(*(&v14 + 1) + 8 * v10)];
        v12 = v11;
        if (v11)
        {
          v13 = [v11 merchantDetailedCategory];

          if (v13)
          {
            [(FinHealthStateController *)self countMerchantDetailedCategoryRecordsWithDictionary:v4 fHTransaction:v12];
          }
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  objc_autoreleasePoolPop(v5);
}

- (void)computeAndPersistDetailedCategoryRecords:(id)a3 withRecurringCounts:(id)a4
{
  v5 = a3;
  v29 = a4;
  v28 = objc_autoreleasePoolPush();
  v37 = GetProcessingDate();
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = v5;
  v31 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
  if (v31)
  {
    v30 = *v47;
    v6 = FHMapsRecordDictCountKey;
    v35 = FHMapsRecordDictAmountKey;
    do
    {
      v7 = 0;
      do
      {
        if (*v47 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v8 = 0;
        v32 = v7;
        v39 = *(*(&v46 + 1) + 8 * v7);
        do
        {
          TimeWindowToSeconds();
          v38 = [v37 dateByAddingTimeInterval:?];
          v9 = 0;
          v40 = v8;
          do
          {
            context = objc_autoreleasePoolPush();
            v10 = [obj objectForKeyedSubscript:v39];
            v11 = [NSNumber numberWithUnsignedInteger:v8];
            v12 = [v10 objectForKeyedSubscript:v11];
            v41 = v9;
            v13 = [NSNumber numberWithUnsignedInteger:v9];
            v14 = [v12 objectForKeyedSubscript:v13];

            v44 = 0u;
            v45 = 0u;
            v42 = 0u;
            v43 = 0u;
            v15 = v14;
            v16 = [v15 countByEnumeratingWithState:&v42 objects:v50 count:16];
            if (v16)
            {
              v17 = v16;
              v18 = *v43;
              do
              {
                for (i = 0; i != v17; i = i + 1)
                {
                  if (*v43 != v18)
                  {
                    objc_enumerationMutation(v15);
                  }

                  v20 = *(*(&v42 + 1) + 8 * i);
                  v21 = [v15 objectForKeyedSubscript:v20];
                  v22 = [v21 objectForKeyedSubscript:v6];
                  v23 = [v22 intValue];

                  if (v23 >= 1)
                  {
                    v24 = [v15 objectForKeyedSubscript:v20];
                    v25 = [v24 objectForKeyedSubscript:v35];
                    v26 = [v15 objectForKeyedSubscript:v20];
                    v27 = [v26 objectForKeyedSubscript:v6];
                    -[FinHealthStateController insertDetailedCategoryAggregateFeature:amountSpent:transactionCount:countryCode:recurringTransactionRatio:timeOfDay:timeWindow:startDate:endDate:](self, "insertDetailedCategoryAggregateFeature:amountSpent:transactionCount:countryCode:recurringTransactionRatio:timeOfDay:timeWindow:startDate:endDate:", v39, v25, [v27 intValue], v20, v41, v40, 0.0, v38, v37, v28, v29);
                  }
                }

                v17 = [v15 countByEnumeratingWithState:&v42 objects:v50 count:16];
              }

              while (v17);
            }

            objc_autoreleasePoolPop(context);
            v8 = v40;
            v9 = v41 + 1;
          }

          while (v41 != 4);

          v8 = v40 + 1;
        }

        while (v40 != 3);
        v7 = v32 + 1;
      }

      while ((v32 + 1) != v31);
      v31 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
    }

    while (v31);
  }

  objc_autoreleasePoolPop(v28);
}

- (void)insertDetailedCategoryAggregateFeature:(id)a3 amountSpent:(id)a4 transactionCount:(unint64_t)a5 countryCode:(id)a6 recurringTransactionRatio:(double)a7 timeOfDay:(unint64_t)a8 timeWindow:(unint64_t)a9 startDate:(id)a10 endDate:(id)a11
{
  v17 = a3;
  v18 = a4;
  v19 = a6;
  v20 = a10;
  v21 = a11;
  v22 = [FHDatabaseEntity alloc];
  v23 = [v22 initWithEntity:FHDetailedCategoryAggregateFeaturesTableName];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_100003C70;
  v30[3] = &unk_100020AA0;
  v31 = v17;
  v32 = v18;
  v37 = a7;
  v38 = a8;
  v39 = a9;
  v33 = v19;
  v34 = v20;
  v35 = v21;
  v36 = a5;
  v24 = v21;
  v25 = v20;
  v26 = v19;
  v27 = v18;
  v28 = v17;
  v29 = [FHDatabaseInsertOrUpdateFromBuilder initWithBuilder:v30];
  [v23 insertOrUpdate:v29 upsert:1];
}

- (id)getDetailedCategoryAggregateRecordsWithCountryCode:(id)a3 timeWindow:(unint64_t)a4 timeOfDay:(unint64_t)a5
{
  v7 = a3;
  v8 = [FHDatabaseEntity alloc];
  v9 = [v8 initWithEntity:FHDetailedCategoryAggregateFeaturesTableName];
  v10 = [v9 fieldsInOrder];
  v11 = [v10 subarrayWithRange:{1, objc_msgSend(v10, "count") - 1}];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_10000406C;
  v32[3] = &unk_100020AC8;
  v34 = a4;
  v35 = a5;
  v12 = v7;
  v33 = v12;
  v13 = [FHDatabaseClauseFromBuilder initWithBuilder:v32];
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_100002F5C;
  v30 = sub_100002F6C;
  v31 = objc_opt_new();
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = sub_100002F5C;
  v24[4] = sub_100002F6C;
  v25 = objc_alloc_init(NSMutableDictionary);
  v14 = FHLogicalOperatorAnd;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100004104;
  v18[3] = &unk_100020AF0;
  v15 = v12;
  v22 = a4;
  v23 = a5;
  v19 = v15;
  v20 = v24;
  v21 = &v26;
  [v9 queryDataWithBlock:v13 logicalOperator:v14 selectFields:v11 usingBlock:v18];
  [v27[5] sortUsingComparator:&stru_100020B30];
  v16 = [v27[5] copy];

  _Block_object_dispose(v24, 8);
  _Block_object_dispose(&v26, 8);

  return v16;
}

- (void)deleteAllDetailedCategoryRecords
{
  v2 = [FHDatabaseEntity alloc];
  v3 = [v2 initWithEntity:FHDetailedCategoryAggregateFeaturesTableName];
  [v3 clearData];
}

- (id)generatePredictionWithModelType:(id)a3 withModelPathComponent:(id)a4
{
  v6 = a4;
  if ([a3 isEqualToString:FHModelIncomeClassificationName])
  {
    if (v6)
    {
      v7 = FHModelDirectory();
      v8 = [v7 stringByAppendingPathComponent:v6];
      v9 = [NSURL URLWithString:v8];
    }

    else
    {
      v9 = 0;
    }

    dbMgr = self->_dbMgr;
    v12 = [FinHealthIncomeClassifier loadIncomeClassifierWithURL:v9];
    v10 = [(FHDatabaseManager *)dbMgr predictAndPersistIncomeClassificationForAllGroups:v12];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)transactionsByGroupID:(id)a3
{
  v3 = [(FHDatabaseManager *)self->_dbMgr transactionsByGroupId:a3];
  v4 = [v3 copy];

  return v4;
}

- (void)aggregateFeaturesWithHandler:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000046DC;
    v6[3] = &unk_100020B58;
    v7 = v4;
    [(FinHealthStateController *)self aggregateFeaturesWithProcessSource:0 completion:v6];
  }
}

- (void)aggregateFeaturesWithProcessSource:(id)a3 completion:(id)a4
{
  v11 = a3;
  v6 = a4;
  if (v6)
  {
    if (v11)
    {
      v7 = [v11 isEqualToString:@"finhealthd"];
      v8 = 1;
      if (v7)
      {
        self->_bypassMapService = 1;
        v8 = 0;
      }
    }

    else
    {
      v8 = 1;
    }

    v9 = [(FinHealthStateController *)self _processAggregateFeaturesWithHardReset:1 forceStalenessCheck:v8];
    v10 = [v9 description];
    v6[2](v6, v10, 0);
  }
}

- (id)_processAggregateFeaturesWithHardReset:(BOOL)a3 forceStalenessCheck:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = FinHealthLogObject();
  v7 = FinHealthLogObject();
  v8 = os_signpost_id_make_with_pointer(v7, self);

  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, v8, "processAggregateFeatures", &unk_10001E283, buf, 2u);
  }

  v9 = FinHealthLogObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "BEGIN processAggregateFeatures", buf, 2u);
  }

  v69 = objc_opt_new();
  v10 = FHSmartFeatureCompoundTypePointsOfInterest;
  v11 = [(FHDatabaseManager *)self->_dbMgr processingTimeForFeature:FHSmartFeatureCompoundTypePointsOfInterest];
  v12 = +[NSDate now];
  [v12 timeIntervalSinceReferenceDate];
  v14 = v13;

  if (v4)
  {
    if (v11)
    {
      v15 = v14 - v11 >= secondsInDay * timePeriodNinetyDays;
    }

    else
    {
      v15 = 1;
    }

    v68 = v15;
  }

  else
  {
    v68 = 0;
  }

  v16 = FinHealthLogObject();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v17 = @"NO";
    if (v68)
    {
      v17 = @"YES";
    }

    *buf = 134218242;
    v94 = v11;
    v95 = 2112;
    v96 = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "lastProcessingDateForPOI: %lu, poiStalenessCheck: %@", buf, 0x16u);
  }

  if (v68)
  {
    [(FHDatabaseManager *)self->_dbMgr updateProcessingTimeForFeature:v10];
  }

  v18 = objc_alloc_init(NSMutableDictionary);
  v19 = objc_alloc_init(NSMutableDictionary);
  v63 = objc_alloc_init(NSMutableDictionary);
  v61 = objc_alloc_init(NSMutableDictionary);
  v60 = objc_alloc_init(NSMutableDictionary);
  v70 = objc_alloc_init(FinHealthRealtimeFeaturesRequest);
  if (v5)
  {
    v59 = objc_autoreleasePoolPush();
    v66 = objc_alloc_init(FinHealthGeoFeatures);
    bypassMapService = self->_bypassMapService;
    self->_bypassMapService = 1;
    v62 = [(FinHealthStateController *)self _checkEventDeletion];
    v65 = [v62 firstObject];
    v20 = [v62 objectAtIndexedSubscript:1];
    [(FinHealthRealtimeFeaturesRequest *)v70 setPastTimeRangesToRetagEvents:v20];

    v64 = [v62 lastObject];
    v21 = 0;
    v73 = 0;
    v72 = sqlDefaultBatchSize;
    while (1)
    {
      context = objc_autoreleasePoolPush();
      v22 = [(FHDatabaseManager *)self->_dbMgr getTransactionsByInternalState:v72 internalState:2 offSet:v73 addCompoundFeatures:!v68];

      v90 = 0u;
      v91 = 0u;
      v88 = 0u;
      v89 = 0u;
      v23 = v22;
      v24 = [v23 countByEnumeratingWithState:&v88 objects:v92 count:16];
      if (!v24)
      {
        goto LABEL_38;
      }

      v25 = *v89;
      do
      {
        for (i = 0; i != v24; i = i + 1)
        {
          if (*v89 != v25)
          {
            objc_enumerationMutation(v23);
          }

          v27 = *(*(&v88 + 1) + 8 * i);
          v28 = [v27 displayName];

          if (v28)
          {
            v29 = [v27 displayName];
            v30 = [v18 objectForKey:v29];
            if (v30)
            {
              v31 = [[NSDecimalNumber alloc] initWithInteger:{objc_msgSend(v30, "integerValue") + 1}];
            }

            else
            {
              v31 = +[NSDecimalNumber one];
            }

            [v18 setObject:v31 forKey:v29];
          }

          else
          {
            v32 = [v27 peerPaymentCounterpartHandle];

            if (!v32)
            {
              continue;
            }

            v33 = [v27 peerPaymentCounterpartHandle];
            v34 = [v19 objectForKey:v33];

            if (v34)
            {
              v29 = [[NSDecimalNumber alloc] initWithInteger:{objc_msgSend(v34, "integerValue") + 1}];
            }

            else
            {
              v29 = +[NSDecimalNumber one];
            }

            v31 = [v27 peerPaymentCounterpartHandle];
            [v19 setObject:v29 forKey:v31];
          }
        }

        v24 = [v23 countByEnumeratingWithState:&v88 objects:v92 count:16];
      }

      while (v24);
LABEL_38:

      v35 = FinHealthLogObject();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        v94 = v73;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEBUG, "Batch offSet: %lu", buf, 0xCu);
      }

      objc_initWeak(buf, self);
      v78[0] = _NSConcreteStackBlock;
      v78[1] = 3221225472;
      v78[2] = sub_1000053A0;
      v78[3] = &unk_100020BD0;
      objc_copyWeak(&v86, buf);
      v36 = v66;
      v79 = v36;
      v21 = v23;
      v80 = v21;
      v87 = bypassMapService;
      v37 = v65;
      v81 = v37;
      v82 = self;
      v38 = v70;
      v83 = v38;
      v39 = v64;
      v84 = v39;
      v85 = v69;
      [(FinHealthRealtimeFeaturesRequest *)v38 evaluateEventTagging:v21 bypassMapService:bypassMapService completion:v78];

      objc_destroyWeak(&v86);
      objc_destroyWeak(buf);
      objc_autoreleasePoolPop(context);
      if (v21)
      {
        v73 += v72;
        if ([v21 count])
        {
          continue;
        }
      }

      self->_bypassMapService = bypassMapService;
      [(FinHealthGeoFeatures *)v36 resetTotalRecordsProcessed];

      objc_autoreleasePoolPop(v59);
      break;
    }
  }

  v40 = objc_opt_new();
  os_unfair_lock_lock(&self->_lockAggregationComputation);
  v41 = [NSNumber numberWithBool:[(FHDatabaseManager *)self->_dbMgr computeMerchantAggregateFeatures]];
  [v40 addObject:v41];

  os_unfair_lock_unlock(&self->_lockAggregationComputation);
  os_unfair_lock_lock(&self->_lockAggregationComputation);
  v42 = [NSNumber numberWithBool:[(FHDatabaseManager *)self->_dbMgr computeAmountAggregateFeatures]];
  [v40 addObject:v42];

  os_unfair_lock_unlock(&self->_lockAggregationComputation);
  os_unfair_lock_lock(&self->_lockAggregationComputation);
  v43 = [NSNumber numberWithBool:[(FHDatabaseManager *)self->_dbMgr computeDatetimeAggregateFeatures]];
  [v40 addObject:v43];

  os_unfair_lock_unlock(&self->_lockAggregationComputation);
  os_unfair_lock_lock(&self->_lockAggregationComputation);
  v44 = objc_autoreleasePoolPush();
  dbMgr = self->_dbMgr;
  v46 = [v18 copy];
  [(FHDatabaseManager *)dbMgr computeRecurringClassesWithMerchantEntityCounts:v46 peerPaymentCounts:v19 merchantDetailedCategoryCounts:v63];

  objc_autoreleasePoolPop(v44);
  os_unfair_lock_unlock(&self->_lockAggregationComputation);
  os_unfair_lock_lock(&self->_lockAggregationComputation);
  v47 = [v69 allObjects];
  [(FinHealthStateController *)self _excludeRecurringFromEventTaggingCandidates:v47];

  os_unfair_lock_unlock(&self->_lockAggregationComputation);
  os_unfair_lock_lock(&self->_lockAggregationComputation);
  [(FinHealthStateController *)self _tagFlightTransactionsWithTripEvents:v70];
  os_unfair_lock_unlock(&self->_lockAggregationComputation);
  [NSNumber numberWithBool:1];
  v75[0] = _NSConcreteStackBlock;
  v75[1] = 3221225472;
  v75[2] = sub_100005CC8;
  v48 = v75[3] = &unk_100020BF8;
  v76 = v48;
  v77 = self;
  [v40 enumerateObjectsUsingBlock:v75];
  os_unfair_lock_lock(&self->_lockAggregationComputation);
  [(FHDatabaseManager *)self->_dbMgr predictRecurringTransactions];
  os_unfair_lock_unlock(&self->_lockAggregationComputation);
  os_unfair_lock_lock(&self->_lockAggregationComputation);
  [(FHDatabaseManager *)self->_dbMgr publishEventsToBiome];
  os_unfair_lock_unlock(&self->_lockAggregationComputation);
  os_unfair_lock_lock(&self->_lockAggregationComputation);
  [(FHDatabaseManager *)self->_dbMgr computePaymentFeatures];
  os_unfair_lock_unlock(&self->_lockAggregationComputation);
  os_unfair_lock_lock(&self->_lockAggregationComputation);
  [(FHDatabaseManager *)self->_dbMgr computeAndPersistDisputeFeaturesForPendingTransactions];
  os_unfair_lock_unlock(&self->_lockAggregationComputation);
  if (_os_feature_enabled_impl())
  {
    os_unfair_lock_lock(&self->_lockAggregationComputation);
    v49 = FinHealthLogObject();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEBUG, "Started computing trends..", buf, 2u);
    }

    v50 = [FHInsightsSpendingTrends alloc];
    v51 = [v18 copy];
    v52 = [v50 initWithMerchantCounts:v51];

    [v52 trendsWithCompletion:&stru_100020C38];
    os_unfair_lock_unlock(&self->_lockAggregationComputation);
  }

  if (_os_feature_enabled_impl())
  {
    os_unfair_lock_lock(&self->_lockAggregationComputation);
    [(FinHealthStateController *)self predictAndPersistCardPreselectPropensityModel];
    os_unfair_lock_unlock(&self->_lockAggregationComputation);
  }

  v53 = FinHealthLogObject();
  v54 = FinHealthLogObject();
  v55 = os_signpost_id_make_with_pointer(v54, self);

  if (v55 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v53))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v53, OS_SIGNPOST_INTERVAL_END, v55, "processAggregateFeatures", &unk_10001E283, buf, 2u);
  }

  v56 = FinHealthLogObject();
  if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_INFO, "END processAggregateFeatures", buf, 2u);
  }

  v57 = [NSArray arrayWithArray:v40];

  return v57;
}

- (id)_checkEventDeletion
{
  v3 = [(FHDatabaseManager *)self->_dbMgr getTaggedPastCalendarEvents];
  v4 = objc_opt_new();
  v54 = objc_opt_new();
  v53 = objc_opt_new();
  if ([v3 count])
  {
    v50 = v4;
    v5 = FHFeatureEventDateRangeKey;
    v6 = [NSString stringWithFormat:@"@distinctUnionOfObjects.%@", FHFeatureEventDateRangeKey];
    v7 = [v3 valueForKeyPath:v6];
    v52 = [NSMutableArray arrayWithArray:v7];

    v8 = [[EKEventStore alloc] initWithEKOptions:128];
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v51 = v3;
    obj = v3;
    v9 = [obj countByEnumeratingWithState:&v64 objects:v77 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v65;
      v12 = FHFeatureEventIdKey;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v65 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v64 + 1) + 8 * i);
          v15 = [v14 valueForKey:v5];
          v16 = [v14 valueForKey:v12];
          v17 = [v8 eventWithIdentifier:v16];

          if (!v17)
          {
            [v53 addObject:v16];
            [v52 removeObject:v15];
            [v54 addObject:v15];
          }
        }

        v10 = [obj countByEnumeratingWithState:&v64 objects:v77 count:16];
      }

      while (v10);
    }

    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v18 = v54;
    v19 = [v18 countByEnumeratingWithState:&v60 objects:v76 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v61;
      v22 = FHComparisonOperatorEquals;
      do
      {
        for (j = 0; j != v20; j = j + 1)
        {
          if (*v61 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v24 = *(*(&v60 + 1) + 8 * j);
          dbMgr = self->_dbMgr;
          v26 = [v24 firstObject];
          v27 = [v24 lastObject];
          [(FHDatabaseManager *)dbMgr deleteTaggedEventsInTimeRange:v22 startDate:v26 comparatorOfEndDate:v22 endDate:v27];
        }

        v20 = [v18 countByEnumeratingWithState:&v60 objects:v76 count:16];
      }

      while (v20);
    }

    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v28 = v52;
    v29 = [v28 countByEnumeratingWithState:&v56 objects:v75 count:16];
    v4 = v50;
    if (v29)
    {
      v30 = v29;
      v31 = *v57;
      do
      {
        for (k = 0; k != v30; k = k + 1)
        {
          if (*v57 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v33 = *(*(&v56 + 1) + 8 * k);
          v34 = self->_dbMgr;
          v35 = [v33 firstObject];
          v36 = [v33 lastObject];
          v37 = [(FHDatabaseManager *)v34 getTransactionIdsInTimeRangeFrom:v35 to:v36];
          [v50 addObjectsFromArray:v37];
        }

        v30 = [v28 countByEnumeratingWithState:&v56 objects:v75 count:16];
      }

      while (v30);
    }

    v38 = FinHealthLogObject();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v70 = obj;
      v71 = 2112;
      v72 = v28;
      v73 = 2112;
      v74 = v50;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEBUG, "taggedPastEvents %@, dateRanges :%@, transactionIdsWithValidPastEvents %@", buf, 0x20u);
    }

    v3 = v51;
  }

  v39 = self->_dbMgr;
  v40 = FHComparisonOperatorGreaterThanOrEquals;
  v41 = +[NSDate now];
  v42 = [v41 dateByAddingTimeInterval:-secondsInOneYear];
  v43 = FHComparisonOperatorLessThanOrEquals;
  v44 = +[NSDate now];
  [(FHDatabaseManager *)v39 deleteTaggedEventsInTimeRange:v40 startDate:v42 comparatorOfEndDate:v43 endDate:v44];

  v45 = [v4 allObjects];
  v68[0] = v45;
  v46 = [v54 allObjects];
  v68[1] = v46;
  v47 = [v53 allObjects];
  v68[2] = v47;
  v48 = [NSArray arrayWithObjects:v68 count:3];

  return v48;
}

- (void)_tagFlightTransactionsWithTripEvents:(id)a3
{
  v54 = a3;
  v4 = [v54 getEvents];
  v33 = [NSPredicate predicateWithFormat:@"self isKindOfClass: %@", objc_opt_class()];
  v34 = [v4 filteredArrayUsingPredicate:?];
  if ([v34 count])
  {
    v57 = [(FHDatabaseManager *)self->_dbMgr getTransactionsByDetailedCategory:merchantDetailedCategoryAirline];
    if ([v57 count])
    {
      v32 = v4;
      v46 = [[EKEventStore alloc] initWithEKOptions:128];
      v72 = 0u;
      v73 = 0u;
      v74 = 0u;
      v75 = 0u;
      obj = v34;
      v37 = [obj countByEnumeratingWithState:&v72 objects:v79 count:16];
      if (v37)
      {
        v36 = *v73;
        v45 = eventMetadataKey;
        v44 = eventMetadataSchemaOrgKey;
        v55 = FHSmartFeatureCompoundTypeTripEvents;
        v56 = self;
        do
        {
          v5 = 0;
          do
          {
            if (*v73 != v36)
            {
              objc_enumerationMutation(obj);
            }

            v38 = v5;
            v6 = *(*(&v72 + 1) + 8 * v5);
            v68 = 0u;
            v69 = 0u;
            v70 = 0u;
            v71 = 0u;
            v53 = v6;
            v41 = [v6 tripParts];
            v7 = [v41 countByEnumeratingWithState:&v68 objects:v78 count:16];
            if (v7)
            {
              v8 = v7;
              v9 = *v69;
              v39 = *v69;
              do
              {
                v10 = 0;
                v40 = v8;
                do
                {
                  if (*v69 != v9)
                  {
                    objc_enumerationMutation(v41);
                  }

                  v11 = *(*(&v68 + 1) + 8 * v10);
                  if ([v11 tripMode] == 1)
                  {
                    v42 = v10;
                    v66 = 0u;
                    v67 = 0u;
                    v64 = 0u;
                    v65 = 0u;
                    v43 = [v11 eventIdentifiers];
                    v48 = [v43 countByEnumeratingWithState:&v64 objects:v77 count:16];
                    if (v48)
                    {
                      v47 = *v65;
                      do
                      {
                        v12 = 0;
                        do
                        {
                          if (*v65 != v47)
                          {
                            objc_enumerationMutation(v43);
                          }

                          v51 = v12;
                          v50 = [v46 eventWithIdentifier:*(*(&v64 + 1) + 8 * v12)];
                          v13 = [v50 customObjectForKey:v45];
                          v60 = 0u;
                          v61 = 0u;
                          v62 = 0u;
                          v63 = 0u;
                          v49 = v13;
                          v52 = [v13 valueForKey:v44];
                          v59 = [v52 countByEnumeratingWithState:&v60 objects:v76 count:16];
                          if (v59)
                          {
                            v58 = *v61;
                            do
                            {
                              for (i = 0; i != v59; i = i + 1)
                              {
                                if (*v61 != v58)
                                {
                                  objc_enumerationMutation(v52);
                                }

                                v15 = [*(*(&v60 + 1) + 8 * i) objectForKeyedSubscript:@"reservationFor"];
                                v16 = [v15 objectForKeyedSubscript:@"airline"];
                                v17 = [v16 objectForKeyedSubscript:@"name"];

                                v18 = [NSPredicate predicateWithFormat:@"displayName CONTAINS[c] %@", v17];
                                v19 = [v57 filteredArrayUsingPredicate:v18];
                                if ([v19 count])
                                {
                                  v20 = [FHSmartCompoundFeatureRankedValue alloc];
                                  v21 = [v54 tripEventTitleNomalization:v53];
                                  v22 = [[NSDecimalNumber alloc] initWithInteger:300];
                                  v23 = [v20 initWithLabelAndRank:v21 featureRank:v22];

                                  v24 = [v19 firstObject];
                                  v25 = [v24 identifier];

                                  v26 = objc_alloc_init(FHRealtimeFeaturesResponse);
                                  v27 = [(FinHealthStateController *)self compoundFeaturesForTransaction:v25];
                                  v28 = [NSMutableDictionary dictionaryWithDictionary:v27];

                                  v29 = [v28 valueForKey:v55];
                                  v30 = [NSMutableArray arrayWithArray:v29];

                                  if (([v30 containsObject:v23] & 1) == 0)
                                  {
                                    [v30 addObject:v23];
                                    v31 = [NSArray arrayWithArray:v30];
                                    [v28 setObject:v31 forKey:v55];

                                    [v26 setSmartCompoundFeatures:v28];
                                    [(FHDatabaseManager *)v56->_dbMgr insertFeaturesCompoundRealtime:v25 realtimeFeatures:v26];
                                  }

                                  self = v56;
                                }
                              }

                              v59 = [v52 countByEnumeratingWithState:&v60 objects:v76 count:16];
                            }

                            while (v59);
                          }

                          v12 = v51 + 1;
                        }

                        while ((v51 + 1) != v48);
                        v48 = [v43 countByEnumeratingWithState:&v64 objects:v77 count:16];
                      }

                      while (v48);
                    }

                    v9 = v39;
                    v8 = v40;
                    v10 = v42;
                  }

                  v10 = v10 + 1;
                }

                while (v10 != v8);
                v8 = [v41 countByEnumeratingWithState:&v68 objects:v78 count:16];
              }

              while (v8);
            }

            v5 = v38 + 1;
          }

          while ((v38 + 1) != v37);
          v37 = [obj countByEnumeratingWithState:&v72 objects:v79 count:16];
        }

        while (v37);
      }

      v4 = v32;
    }
  }
}

- (void)_excludeRecurringFromEventTaggingCandidates:(id)a3
{
  v4 = [NSMutableSet setWithArray:a3];
  v5 = [(FHDatabaseManager *)self->_dbMgr getRecurringTransactionIdentifiers];
  v6 = [NSSet setWithArray:v5];
  [v4 intersectSet:v6];

  v17 = v4;
  [v4 allObjects];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v22 = 0u;
  v7 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    v10 = FHSmartFeatureCompoundTypeEventTagging;
    v11 = FHSmartFeatureCompoundTypeTripEvents;
    do
    {
      v12 = 0;
      do
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v19 + 1) + 8 * v12);
        v14 = objc_alloc_init(FHRealtimeFeaturesResponse);
        v15 = [(FinHealthStateController *)self compoundFeaturesForTransaction:v13];
        v16 = [NSMutableDictionary dictionaryWithDictionary:v15];

        [v16 removeObjectForKey:v10];
        [v16 removeObjectForKey:v11];
        [v14 setSmartCompoundFeatures:v16];
        [(FHDatabaseManager *)self->_dbMgr insertFeaturesCompoundRealtime:v13 realtimeFeatures:v14];

        v12 = v12 + 1;
      }

      while (v8 != v12);
      v8 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }
}

- (void)deleteAllDataForPasses:(id)a3 force:(BOOL)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 1;
  v10 = objc_opt_new();
  v11 = v10;
  if (v9)
  {
    v14 = _NSConcreteStackBlock;
    v15 = 3221225472;
    v16 = sub_100006D64;
    v17 = &unk_100020C88;
    v21 = a4;
    v18 = self;
    v20 = &v22;
    v12 = v10;
    v19 = v12;
    [v8 enumerateObjectsUsingBlock:&v14];
    [(FinHealthStateController *)self removeAllEntriesFromTable:FHFeaturesEventsTableName, v14, v15, v16, v17, v18];
    [(FinHealthStateController *)self removeAllEntriesFromTable:FHMerchantAggregateFeaturesTableName];
    [(FinHealthStateController *)self removeAllEntriesFromTable:FHDetailedCategoryAggregateFeaturesTableName];
    [(FinHealthStateController *)self removeAllEntriesFromTable:FHAmountAggregateFeaturesTableName];
    [(FinHealthStateController *)self removeAllEntriesFromTable:FHDateTimeAggregateFeaturesTableName];
    [(FinHealthStateController *)self removeAllEntriesFromTable:FHFeaturesInstrumentationTableName];
    [(FHDatabaseManager *)self->_dbMgr clearCardProcessingHistory];
    if (*(v23 + 24) == 1)
    {
      v9[2](v9, 1, 0);
    }

    else
    {
      v13 = [NSError errorWithDomain:FHErrorDomain code:10004 userInfo:v12];
      (v9)[2](v9, 0, v13);
    }
  }

  _Block_object_dispose(&v22, 8);
}

- (void)deleteAllData:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = FHDataDirectory();
    v6 = [v5 stringByAppendingString:FHRelativeInferredProductsFileName];

    v7 = +[NSFileManager defaultManager];
    v16 = 0;
    [v7 removeItemAtPath:v6 error:&v16];
    v8 = v16;

    v9 = FinHealthLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = [v8 localizedDescription];
      *buf = 138412546;
      v18 = v6;
      v19 = 2112;
      v20 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "filePath: %@ delete error: %@", buf, 0x16u);
    }

    dbMgr = self->_dbMgr;
    v15 = v8;
    v12 = [(FHDatabaseManager *)dbMgr deleteDatabase:&v15];
    v13 = v15;

    if (v12)
    {
      v14 = self->_dbMgr;
      self->_dbMgr = 0;

      [(FinHealthStateController *)self _createDBManagerAndAssociatedProperties:0];
    }

    v4[2](v4, v12, v13);
  }
}

- (void)_transactionWithTransactionID:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = FinHealthLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v14 = "[FinHealthStateController _transactionWithTransactionID:completion:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
  }

  v9 = [(FinHealthStateController *)self _remoteObjectProxyWithErrorHandler];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000071A8;
  v11[3] = &unk_100020CB0;
  v12 = v6;
  v10 = v6;
  [v9 transactionWithTransactionID:v7 completion:v11];
}

- (id)getTransactionByTransaction:(id)a3
{
  dbMgr = self->_dbMgr;
  v4 = [a3 identifier];
  v5 = [(FHDatabaseManager *)dbMgr getTransactionByIdentifier:v4];

  return v5;
}

- (id)transactionsInInternalAnyState:(unint64_t)a3 forPass:(id)a4
{
  v6 = a4;
  v7 = objc_opt_new();
  for (i = 0; i != 8; ++i)
  {
    v9 = [(FHDatabaseManager *)self->_dbMgr getTransactionsByInternalState:a3 internalState:i];
    [v7 addObjectsFromArray:v9];
  }

  v10 = +[FHTransaction fhProperties];
  v11 = [v10 containsObject:@"transactionSourceIdentifier"];

  if (v11)
  {
    v12 = [NSPredicate predicateWithFormat:@"SELF.%K == %@", @"transactionSourceIdentifier", v6];
    v13 = [v7 filteredArrayUsingPredicate:v12];
    v14 = [NSArray arrayWithArray:v13];
  }

  else
  {
    v15 = FinHealthLogObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v18 = @"transactionSourceIdentifier";
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "predicateKey: %@ invalid", buf, 0xCu);
    }

    v14 = v7;
  }

  return v14;
}

- (BOOL)invalidateTransactionByTransaction:(id)a3
{
  dbMgr = self->_dbMgr;
  v4 = [a3 identifier];
  LOBYTE(dbMgr) = [(FHDatabaseManager *)dbMgr updateTransactionInternalStateByIdentifier:v4 newInternalState:6];

  return dbMgr;
}

- (void)transactionBatches:(unint64_t)a3 batch:(id)a4
{
  v6 = a4;
  v7 = objc_alloc_init(NSMutableArray);
  dbMgr = self->_dbMgr;
  v9 = sqlRowLimitUnlimited;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000075A8;
  v13[3] = &unk_100020CD8;
  v15 = v6;
  v16 = a3;
  v14 = v7;
  v10 = v6;
  v11 = v7;
  [(FHDatabaseManager *)dbMgr streamTransactionsWithLimit:v9 internalState:2 onTransaction:v13];
  v12 = [v11 copy];
  v10[2](v10, v12);
}

- (id)_clientConnection
{
  v3 = FinHealthLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v9 = 136315138;
    v10 = "[FinHealthStateController _clientConnection]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s", &v9, 0xCu);
  }

  os_unfair_lock_lock(&self->_lockConnection);
  v4 = [(FinHealthStateController *)self connection];

  v5 = FinHealthLogObject();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
  if (v4)
  {
    if (v6)
    {
      v9 = 136315138;
      v10 = "[FinHealthStateController _clientConnection]";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s, reusing _clientConnection", &v9, 0xCu);
    }
  }

  else
  {
    if (v6)
    {
      v9 = 136315138;
      v10 = "[FinHealthStateController _clientConnection]";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s, _clientConnection nil", &v9, 0xCu);
    }

    v5 = [(FinHealthStateController *)self _newClientConnection];
    [(FinHealthStateController *)self setConnection:v5];
  }

  os_unfair_lock_unlock(&self->_lockConnection);
  v7 = [(FinHealthStateController *)self connection];

  return v7;
}

- (id)_newClientConnection
{
  v3 = FinHealthLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v15 = "[FinHealthStateController _newClientConnection]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
  }

  v4 = [[NSXPCConnection alloc] initWithServiceName:@"com.apple.FinHealth.FinHealthXPCServices"];
  v5 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___FinHealthXPCServicesProtocol];
  [v4 setRemoteObjectInterface:v5];

  objc_initWeak(buf, self);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100007A28;
  v12[3] = &unk_100020D00;
  objc_copyWeak(&v13, buf);
  [v4 setInvalidationHandler:v12];
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_100007AF8;
  v10 = &unk_100020D00;
  objc_copyWeak(&v11, buf);
  [v4 setInterruptionHandler:&v7];
  [v4 resume];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&v13);
  objc_destroyWeak(buf);
  return v4;
}

- (id)_remoteObjectProxyWithErrorHandler
{
  objc_initWeak(&location, self);
  v3 = [(FinHealthStateController *)self _clientConnection];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100007CC4;
  v6[3] = &unk_100020D28;
  objc_copyWeak(&v7, &location);
  v4 = [v3 remoteObjectProxyWithErrorHandler:v6];
  objc_destroyWeak(&v7);

  objc_destroyWeak(&location);

  return v4;
}

- (void)removeAllEntriesFromTable:(id)a3
{
  v3 = a3;
  v4 = [[FHDatabaseEntity alloc] initWithEntity:v3];
  v5 = [v4 clearData];
  v6 = FinHealthLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = @"Failed to perform";
    if (v5)
    {
      v7 = @"Successfully performed operation";
    }

    v8 = 138412546;
    v9 = v7;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%@: delete all records on table: %@", &v8, 0x16u);
  }
}

- (id)getMerchantForTransactionId:(id)a3
{
  v3 = [(FHDatabaseManager *)self->_dbMgr getTransactionByIdentifier:a3];
  v4 = [v3 displayName];

  return v4;
}

- (id)getCompundFeaturesOverTimRangeFrom:(id)a3 to:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(NSMutableDictionary);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = [(FHDatabaseManager *)self->_dbMgr getTransactionIdsInTimeRangeFrom:v6 to:v7, 0];
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        v15 = [(FHDatabaseManager *)self->_dbMgr compoundFeaturesForTransaction:v14];
        [v8 setObject:v15 forKey:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  return v8;
}

- (id)getLostSavingsValueFromCompoundFeatures:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && (v5 = FHSmartFeatureCompoundTypeLostSavings, [v3 objectForKeyedSubscript:FHSmartFeatureCompoundTypeLostSavings], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = [v4 objectForKeyedSubscript:v5];
    v8 = [v7 objectAtIndex:0];
    v9 = [v8 featureRank];
  }

  else
  {
    v9 = +[NSDecimalNumber zero];
  }

  return v9;
}

- (id)getLostSavingsOverTime:(id)a3 from:(id)a4 to:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_opt_new();
  v30 = v10;
  v31 = v9;
  v12 = [(FinHealthStateController *)self getCompundFeaturesOverTimRangeFrom:v9 to:v10];
  v13 = v12;
  if (v8)
  {
    v38 = 0uLL;
    v39 = 0uLL;
    v36 = 0uLL;
    v37 = 0uLL;
    v14 = [v12 countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v37;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v37 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v36 + 1) + 8 * i);
          v19 = [(FinHealthStateController *)self getMerchantForTransactionId:v18];
          if ([v19 isEqualToString:v8])
          {
            v20 = [v13 objectForKeyedSubscript:v18];
            v21 = [(FinHealthStateController *)self getLostSavingsValueFromCompoundFeatures:v20];
            [v11 addObject:v21];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v15);
    }
  }

  else
  {
    v34 = 0uLL;
    v35 = 0uLL;
    v32 = 0uLL;
    v33 = 0uLL;
    v22 = [v12 countByEnumeratingWithState:&v32 objects:v40 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v33;
      do
      {
        for (j = 0; j != v23; j = j + 1)
        {
          if (*v33 != v24)
          {
            objc_enumerationMutation(v13);
          }

          v26 = [v13 objectForKeyedSubscript:*(*(&v32 + 1) + 8 * j)];
          v27 = [(FinHealthStateController *)self getLostSavingsValueFromCompoundFeatures:v26];
          [v11 addObject:v27];
        }

        v23 = [v13 countByEnumeratingWithState:&v32 objects:v40 count:16];
      }

      while (v23);
    }
  }

  v28 = [NSArray arrayWithArray:v11];

  return v28;
}

- (id)getRecurringChangeForMessagingOverTimePeriod:(int64_t)a3
{
  v3 = [(FinHealthStateController *)self _getRecurringChangeOverTimePeriod:a3];
  v4 = objc_opt_new();
  v5 = [v3 count];
  v6 = messagingQueryKeyAmount;
  v7 = messagingPriceIncreaseCount;
  if (v5)
  {
    v8 = 0;
    v9 = 0.0;
    v10 = 0.0;
    do
    {
      v11 = [v3 objectAtIndexedSubscript:v8];
      v12 = [v11 objectForKey:v6];
      [v12 doubleValue];
      v14 = v13;

      v9 = v9 + v14;
      if (v7 > v8)
      {
        v10 = v10 + v14;
      }

      ++v8;
    }

    while ([v3 count] > v8);
  }

  else
  {
    v10 = 0.0;
    v9 = 0.0;
  }

  v15 = [[NSDecimalNumber alloc] initWithDouble:v10];
  [v4 setObject:v15 forKey:messagingQueryKeySumForTopThree];

  v16 = [[NSDecimalNumber alloc] initWithDouble:v9];
  [v4 setObject:v16 forKey:messagingQueryKeySumForAll];

  v17 = messagingQueryKeyMerchant;
  v18 = +[NSDecimalNumber zero];
  v19 = [NSDictionary dictionaryWithObjectsAndKeys:&stru_100021298, v17, v18, v6, 0];

  v20 = [NSArray arrayWithObjects:messagingQueryKeyMax, messagingQueryKeySecondMax, messagingQueryKeyThirdMax, 0];
  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      if ([v3 count] <= i)
      {
        v22 = [v20 objectAtIndexedSubscript:i];
        [v4 setObject:v19 forKey:v22];
      }

      else
      {
        v22 = [v3 objectAtIndexedSubscript:i];
        v23 = [v20 objectAtIndexedSubscript:i];
        [v4 setObject:v22 forKey:v23];
      }
    }
  }

  v24 = [NSDictionary dictionaryWithDictionary:v4];

  return v24;
}

- (id)_getRecurringChangeOverTimePeriod:(int64_t)a3
{
  v37 = objc_opt_new();
  v5 = objc_opt_new();
  v6 = +[NSDate now];
  v7 = objc_alloc_init(NSDateComponents);
  [v7 setDay:-a3];
  v29 = +[NSCalendar currentCalendar];
  v30 = v7;
  v28 = [v29 dateByAddingComponents:v7 toDate:v6 options:0];
  v31 = v6;
  v8 = [FinHealthStateController getCompundFeaturesOverTimRangeFrom:"getCompundFeaturesOverTimRangeFrom:to:" to:?];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v39;
    v12 = FHSmartFeatureCompoundTypeRecurringChange;
    v33 = messagingQueryKeyMerchant;
    v32 = messagingQueryKeyAmount;
    v35 = v5;
    v36 = self;
    v34 = FHSmartFeatureCompoundTypeRecurringChange;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v39 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v38 + 1) + 8 * i);
        v15 = [(FinHealthStateController *)self getMerchantForTransactionId:v14];
        v16 = [v8 objectForKey:v14];
        v17 = [v16 objectForKey:v12];
        v18 = v17;
        if (v17 && [v17 count] && (objc_msgSend(v5, "containsObject:", v15) & 1) == 0)
        {
          v19 = v10;
          v20 = v11;
          v21 = [v18 firstObject];
          [v21 featureRank];
          v23 = v22 = v8;
          v24 = [NSDictionary dictionaryWithObjectsAndKeys:v15, v33, v23, v32, 0];
          [v37 addObject:v24];

          v11 = v20;
          v10 = v19;
          v12 = v34;

          v8 = v22;
          v5 = v35;
          self = v36;
          [v35 addObject:v15];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v38 objects:v44 count:16];
    }

    while (v10);
  }

  v25 = [v37 sortedArrayUsingComparator:&stru_100020D68];
  v26 = FinHealthLogObject();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v43 = v25;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "priceIncrease rankedArray %@", buf, 0xCu);
  }

  return v25;
}

- (id)featuresWithAmountSums:(id)a3 startDate:(id)a4 endDate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_opt_new();
  v55 = v8;
  v12 = [(FHDatabaseManager *)self->_dbMgr getTransactionSmartFeaturesForApplication:v8];
  v54 = objc_opt_new();
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v13 = v12;
  v58 = v13;
  v59 = v10;
  v63 = [v13 countByEnumeratingWithState:&v77 objects:v86 count:16];
  if (v63)
  {
    v62 = *v78;
    v56 = self;
    v57 = v9;
    do
    {
      v14 = 0;
      do
      {
        if (*v78 != v62)
        {
          objc_enumerationMutation(v13);
        }

        v64 = v14;
        v15 = *(*(&v77 + 1) + 8 * v14);
        dbMgr = self->_dbMgr;
        v17 = [v15 transactionIdentifier];
        v18 = [(FHDatabaseManager *)dbMgr getTransactionByIdentifier:v17];

        v19 = [v18 transactionDate];
        [v10 timeIntervalSinceDate:v9];
        if (v20 >= 0.0)
        {
          [v19 timeIntervalSinceDate:v9];
          if (v21 >= 0.0)
          {
            [v10 timeIntervalSinceDate:v19];
            if (v22 > 0.0)
            {
              v60 = v15;
              v61 = v19;
              v75 = 0u;
              v76 = 0u;
              v73 = 0u;
              v74 = 0u;
              v23 = [v15 aggregateFeatures];
              v24 = [v23 countByEnumeratingWithState:&v73 objects:v85 count:16];
              if (v24)
              {
                v25 = v24;
                v26 = *v74;
                do
                {
                  for (i = 0; i != v25; i = i + 1)
                  {
                    if (*v74 != v26)
                    {
                      objc_enumerationMutation(v23);
                    }

                    v28 = *(*(&v73 + 1) + 8 * i);
                    v29 = [v11 objectForKey:v28];
                    v30 = [v18 amount];
                    if (v29)
                    {
                      v31 = [v29 decimalNumberByAdding:v30];

                      v30 = v31;
                    }

                    [v11 setObject:v30 forKey:v28];
                  }

                  v25 = [v23 countByEnumeratingWithState:&v73 objects:v85 count:16];
                }

                while (v25);
              }

              v71 = 0u;
              v72 = 0u;
              v69 = 0u;
              v70 = 0u;
              v32 = [v60 compoundFeatures];
              v33 = [v32 countByEnumeratingWithState:&v69 objects:v84 count:16];
              if (v33)
              {
                v34 = v33;
                v35 = *v70;
                do
                {
                  for (j = 0; j != v34; j = j + 1)
                  {
                    if (*v70 != v35)
                    {
                      objc_enumerationMutation(v32);
                    }

                    v37 = *(*(&v69 + 1) + 8 * j);
                    v38 = [v37 compoundFeatureKey];
                    v39 = [v11 objectForKey:v38];

                    v40 = [v18 amount];
                    if (v39)
                    {
                      v41 = [v39 decimalNumberByAdding:v40];

                      v40 = v41;
                    }

                    v42 = [v37 compoundFeatureKey];
                    [v11 setObject:v40 forKey:v42];
                  }

                  v34 = [v32 countByEnumeratingWithState:&v69 objects:v84 count:16];
                }

                while (v34);
              }

              v9 = v57;
              v13 = v58;
              v10 = v59;
              self = v56;
              v19 = v61;
            }
          }
        }

        v14 = v64 + 1;
      }

      while ((v64 + 1) != v63);
      v63 = [v13 countByEnumeratingWithState:&v77 objects:v86 count:16];
    }

    while (v63);
  }

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v43 = [v11 allKeys];
  v44 = [v43 countByEnumeratingWithState:&v65 objects:v83 count:16];
  if (v44)
  {
    v45 = v44;
    v46 = *v66;
    do
    {
      for (k = 0; k != v45; k = k + 1)
      {
        if (*v66 != v46)
        {
          objc_enumerationMutation(v43);
        }

        v48 = *(*(&v65 + 1) + 8 * k);
        v49 = [v11 objectForKey:v48];
        v50 = [[FHSmartCompoundFeatureRankedValue alloc] initWithLabelAndRank:v48 featureRank:v49];
        [v54 addObject:v50];
      }

      v45 = [v43 countByEnumeratingWithState:&v65 objects:v83 count:16];
    }

    while (v45);
  }

  v51 = FinHealthLogObject();
  if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v82 = v54;
    _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEBUG, "rankedValues: %@", buf, 0xCu);
  }

  v52 = [NSArray arrayWithArray:v54];

  return v52;
}

- (id)getAllPredictedPeerPaymentsAfterDate:(id)a3
{
  v4 = [NSPredicate predicateWithFormat:@"SELF.%K >= %@", FHPeerPaymentForecastingSignalDateKey, a3];
  v5 = [(FHDatabaseManager *)self->_dbMgr getFilteredPeerPaymentForecastingSignals];
  v6 = [v5 filteredArrayUsingPredicate:v4];
  v7 = [v6 sortedArrayUsingComparator:&stru_100020DA8];

  return v7;
}

- (BOOL)suggestAutoReload
{
  v3 = [(FHDatabaseManager *)self->_dbMgr getCurrentCashBalance];
  v4 = +[NSDecimalNumber defaultDatabaseAmountMultiplier];
  v5 = [v3 decimalNumberByDividingBy:v4];

  v6 = +[NSDecimalNumber zero];
  v7 = [v5 compare:v6];

  if (v7 == -1)
  {
    v11 = 1;
  }

  else
  {
    v8 = [(FHDatabaseManager *)self->_dbMgr getExpectedWeeklySpend];
    v9 = [v5 decimalNumberByAdding:v8];
    v10 = +[NSDecimalNumber zero];
    v11 = [v9 compare:v10] == -1;
  }

  return v11;
}

- (id)predictionLabelForModelName:(id)a3 modelVersion:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (!v6)
  {
    v6 = [FHModel retrievePersistedModelVersion:v5];
  }

  v7 = [FHModel predictionLabelForModelName:v5 modelVersion:v6];

  return v7;
}

- (void)predictAndPersistCardPreselectPropensityModel
{
  v3 = objc_autoreleasePoolPush();
  v4 = objc_alloc_init(FHCardPreselectPropensityModel);
  dbMgr = self->_dbMgr;
  v6 = [v4 modelName];
  v7 = [v4 modelVersion];
  v8 = [NSString stringWithFormat:@"%@:%@", v6, v7];
  v9 = [v4 trialId];
  [(FHDatabaseManager *)dbMgr updateProcessingTimeForFeature:v8 data:v9];

  v10 = +[PKDiscoveryService sharedInstance];
  v11 = [v4 featureSet];
  v12 = [v11 array];

  v13 = FinHealthLogObject();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v19 = "[FinHealthStateController predictAndPersistCardPreselectPropensityModel]";
    v20 = 2112;
    v21 = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%s CardPreselect Feature Set %@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000965C;
  v15[3] = &unk_100020DD0;
  objc_copyWeak(&v17, buf);
  v14 = v4;
  v16 = v14;
  [v10 fetchUserProperties:v12 withParameters:0 completion:v15];

  objc_destroyWeak(&v17);
  objc_destroyWeak(buf);

  objc_autoreleasePoolPop(v3);
}

@end