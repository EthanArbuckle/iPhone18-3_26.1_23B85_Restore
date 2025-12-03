@interface FinHealthXPCServices
- (FinHealthXPCServices)initWithConnection:(id)connection;
- (void)_processFHTransactions:(id)transactions deferFeatureComputation:(BOOL)computation completion:(id)completion;
- (void)_sendTransactionFeaturesForApplication:(id)application withCompletion:(id)completion;
- (void)aggregateFeaturesWithProcessSource:(id)source completion:(id)completion;
- (void)allInsightsForDateRange:(id)range endDate:(id)date insightTypeItems:(id)items trendWindow:(int64_t)window sourceId:(id)id accountType:(int64_t)type completion:(id)completion;
- (void)deleteAllData:(id)data;
- (void)deleteDataForPasses:(id)passes completion:(id)completion;
- (void)deleteTransactionById:(id)id completion:(id)completion;
- (void)featureResponsesForApplication:(id)application completion:(id)completion;
- (void)featuresForApplication:(id)application withCompletion:(id)completion;
- (void)generatePredictionWithModelType:(id)type withModelPathComponent:(id)component completion:(id)completion;
- (void)getComputedFeaturesForTransactions:(BOOL)transactions completion:(id)completion;
- (void)getDisputeDocumentSuggestionsForTransactionId:(id)id completion:(id)completion;
- (void)getTopTransactionCategoriesWithCountryCode:(id)code timeWindow:(unint64_t)window minRegularTransactionRatio:(double)ratio discretizedTimeOfDay:(unint64_t)day completion:(id)completion;
- (void)paymentRingSuggestionsFromSearchFeatures:(id)features startDate:(id)date endDate:(id)endDate completion:(id)completion;
- (void)peerPaymentForecastingSignals:(id)signals withCompletion:(id)completion;
- (void)predictionsByModelName:(id)name modelVersion:(id)version completion:(id)completion;
- (void)recomputeFeaturesForTransactions:(id)transactions;
- (void)recordUserInteraction:(id)interaction completion:(id)completion;
- (void)recordUserInteractions:(id)interactions completion:(id)completion;
- (void)transactionBatch:(id)batch moreComing:(BOOL)coming readyForNextBatch:(id)nextBatch;
- (void)transactionUpdated:(id)updated deferFeatureComputation:(BOOL)computation completion:(id)completion;
- (void)transactionWithTransaction:(id)transaction completion:(id)completion;
- (void)transactionWithTransactionID:(id)d completion:(id)completion;
- (void)transactionsByGroupID:(id)d completion:(id)completion;
- (void)transactionsRequireSyncing:(id)syncing;
- (void)updatePeerPaymentAccountBalanceWithTransactionSourceId:(id)id amount:(id)amount currencyCode:(id)code completion:(id)completion;
- (void)updatePeerPaymentForecastingSuggestionStatus:(unint64_t)status counterpartHandle:(id)handle amount:(id)amount completion:(id)completion;
@end

@implementation FinHealthXPCServices

- (FinHealthXPCServices)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v13.receiver = self;
  v13.super_class = FinHealthXPCServices;
  v5 = [(FinHealthXPCServices *)&v13 init];
  if (v5)
  {
    v6 = objc_alloc_init(FinHealthStateController);
    finHealthStateController = v5->_finHealthStateController;
    v5->_finHealthStateController = v6;

    v8 = objc_alloc_init(PKPaymentService);
    paymentService = v5->_paymentService;
    v5->_paymentService = v8;

    [(PKPaymentService *)v5->_paymentService setDelegate:v5];
    v5->_batchesCount = 0;
    v5->_transactionsCount = 0;
    v10 = [[FinHealthEntitlementsChecker alloc] initWithConnection:connectionCopy];
    entitlementsChecker = v5->_entitlementsChecker;
    v5->_entitlementsChecker = v10;
  }

  return v5;
}

- (void)_processFHTransactions:(id)transactions deferFeatureComputation:(BOOL)computation completion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    v10 = completionCopy;
    v8 = [(FinHealthStateController *)self->_finHealthStateController insertOrUpdateTransactions:transactions];
    if ([v8 containsString:FHBatchInsertStatusFail])
    {
      v9 = [NSError errorWithDomain:FHErrorDomain code:10010 userInfo:0];
    }

    else
    {
      v9 = 0;
    }

    v10[2](v10, v8, v9);

    completionCopy = v10;
  }
}

- (void)transactionBatch:(id)batch moreComing:(BOOL)coming readyForNextBatch:(id)nextBatch
{
  comingCopy = coming;
  batchCopy = batch;
  nextBatchCopy = nextBatch;
  v10 = FinHealthLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "transactionBatch:moreComing:readyForNextBatch: called", &buf, 2u);
  }

  p_batchesCount = &self->_batchesCount;
  ++self->_batchesCount;
  v12 = FinHealthLogObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v13 = *p_batchesCount;
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Received %lu batch", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v42 = 0x3032000000;
  v43 = sub_10000A6A4;
  v44 = sub_10000A6B4;
  v45 = objc_opt_new();
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_10000A6BC;
  v35[3] = &unk_100020E40;
  v35[4] = self;
  v35[5] = &buf;
  [batchCopy enumerateKeysAndObjectsUsingBlock:v35];
  self->_transactionsCount += [*(*(&buf + 1) + 40) count];
  v14 = FinHealthLogObject();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v15 = [*(*(&buf + 1) + 40) count];
    *v37 = 134217984;
    v38 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "Number of PKPaymentTransaction got: %lu", v37, 0xCu);
  }

  v16 = [NSArray arrayWithArray:*(*(&buf + 1) + 40)];
  [(FinHealthXPCServices *)self _processTransactionsFromWallet:v16 deferFeatureComputation:0];

  if (comingCopy)
  {
    v17 = FinHealthLogObject();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      batchesCount = self->_batchesCount;
      transactionsCount = self->_transactionsCount;
      *v37 = 134218240;
      v38 = batchesCount;
      v39 = 2048;
      v40 = transactionsCount;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Received %lu batch(es), %lu transaction(s)", v37, 0x16u);
    }

LABEL_21:

    goto LABEL_22;
  }

  v20 = FinHealthLogObject();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    v22 = self->_batchesCount;
    v21 = self->_transactionsCount;
    *v37 = 134218240;
    v38 = v21;
    v39 = 2048;
    v40 = v22;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "Received all the transactions. Total: %lu. Total batch(es): %lu", v37, 0x16u);
  }

  *p_batchesCount = 0;
  self->_transactionsCount = 0;
  processAggregateFeatures = [(FinHealthStateController *)self->_finHealthStateController processAggregateFeatures];
  if (self->_allFeaturesCompletionBlock)
  {
    [(FinHealthStateController *)self->_finHealthStateController updateGetAllStatus:1];
    v17 = [self->_allFeaturesCompletionBlock copy];
    allFeaturesCompletionBlock = self->_allFeaturesCompletionBlock;
    self->_allFeaturesCompletionBlock = 0;

    [(FinHealthStateController *)self->_finHealthStateController getTransactionsSmartFeatures];
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v25 = v32 = 0u;
    v26 = [v25 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v26)
    {
      v27 = *v32;
      do
      {
        v28 = 0;
        do
        {
          if (*v32 != v27)
          {
            objc_enumerationMutation(v25);
          }

          finHealthStateController = self->_finHealthStateController;
          transactionIdentifier = [*(*(&v31 + 1) + 8 * v28) transactionIdentifier];
          [(FinHealthStateController *)finHealthStateController updateDeleteFlagInTransactionFeatures:1 forID:transactionIdentifier];

          v28 = v28 + 1;
        }

        while (v26 != v28);
        v26 = [v25 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v26);
    }

    (v17[2].isa)(v17, v25, 0);
    goto LABEL_21;
  }

LABEL_22:
  if (nextBatchCopy)
  {
    nextBatchCopy[2](nextBatchCopy);
  }

  else
  {
    [(FinHealthStateController *)self->_finHealthStateController updateGetAllStatus:1];
  }

  _Block_object_dispose(&buf, 8);
}

- (void)transactionWithTransactionID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  paymentService = [(FinHealthXPCServices *)self paymentService];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000AEFC;
  v10[3] = &unk_100020CB0;
  v11 = completionCopy;
  v9 = completionCopy;
  [paymentService transactionWithTransactionIdentifier:dCopy completion:v10];
}

- (void)transactionWithTransaction:(id)transaction completion:(id)completion
{
  completionCopy = completion;
  if (transaction)
  {
    identifier = [transaction identifier];
    if (identifier)
    {
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_10000B178;
      v9[3] = &unk_100020CB0;
      v10 = completionCopy;
      [(FinHealthXPCServices *)self transactionWithTransactionID:identifier completion:v9];
    }

    else if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0);
    }
  }

  else
  {
    v8 = FinHealthLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v12 = "[FinHealthXPCServices transactionWithTransaction:completion:]";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s Received nil FHTransaction.", buf, 0xCu);
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0);
    }
  }
}

- (void)transactionUpdated:(id)updated deferFeatureComputation:(BOOL)computation completion:(id)completion
{
  updatedCopy = updated;
  completionCopy = completion;
  if (completionCopy)
  {
    entitlementsChecker = [(FinHealthXPCServices *)self entitlementsChecker];
    fhAllAccess = [entitlementsChecker fhAllAccess];

    if (fhAllAccess)
    {
      v12 = [(FinHealthStateController *)self->_finHealthStateController insertOrUpdateTransaction:updatedCopy];
      completionCopy[2](completionCopy, v12, 0);
    }

    else
    {
      v13 = FinHealthLogObject();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = NSStringFromSelector(a2);
        v15 = 138412290;
        v16 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Client not entitled for method: %@", &v15, 0xCu);
      }

      v12 = [NSError errorWithDomain:FHErrorDomain code:10012 userInfo:0];
      (completionCopy)[2](completionCopy, 0, v12);
    }
  }
}

- (void)deleteDataForPasses:(id)passes completion:(id)completion
{
  completionCopy = completion;
  v7 = completionCopy;
  if (completionCopy)
  {
    finHealthStateController = self->_finHealthStateController;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10000B770;
    v9[3] = &unk_100020EA8;
    v10 = completionCopy;
    [(FinHealthStateController *)finHealthStateController deleteAllDataForPasses:passes force:1 completion:v9];
  }
}

- (void)deleteTransactionById:(id)id completion:(id)completion
{
  idCopy = id;
  completionCopy = completion;
  if (completionCopy)
  {
    if ([(FinHealthStateController *)self->_finHealthStateController invalidateTransactionByIdentifier:idCopy])
    {
      completionCopy[2](completionCopy, 0);
    }

    else
    {
      v7 = [NSError errorWithDomain:FHErrorDomain code:10006 userInfo:0];
      (completionCopy)[2](completionCopy, v7);
    }
  }
}

- (void)paymentRingSuggestionsFromSearchFeatures:(id)features startDate:(id)date endDate:(id)endDate completion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    v12 = completionCopy;
    v11 = [(FinHealthStateController *)self->_finHealthStateController featuresWithAmountSums:features startDate:date endDate:endDate];
    if (v11)
    {
      v12[2](v12, v11);
    }

    completionCopy = v12;
  }
}

- (void)generatePredictionWithModelType:(id)type withModelPathComponent:(id)component completion:(id)completion
{
  finHealthStateController = self->_finHealthStateController;
  completionCopy = completion;
  v10 = [(FinHealthStateController *)finHealthStateController generatePredictionWithModelType:type withModelPathComponent:component];
  (*(completion + 2))(completionCopy, v10);
}

- (void)predictionsByModelName:(id)name modelVersion:(id)version completion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    v10 = completionCopy;
    v9 = [(FinHealthStateController *)self->_finHealthStateController predictionsByModelName:name modelVersion:version];
    if (v9)
    {
      v10[2](v10, v9);
    }

    completionCopy = v10;
  }
}

- (void)transactionsByGroupID:(id)d completion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    v8 = completionCopy;
    v7 = [(FinHealthStateController *)self->_finHealthStateController transactionsByGroupID:d];
    if (v7)
    {
      v8[2](v8, v7);
    }

    completionCopy = v8;
  }
}

- (void)deleteAllData:(id)data
{
  dataCopy = data;
  entitlementsChecker = [(FinHealthXPCServices *)self entitlementsChecker];
  fhAllAccess = [entitlementsChecker fhAllAccess];

  if (fhAllAccess)
  {
    finHealthStateController = self->_finHealthStateController;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10000BC1C;
    v12[3] = &unk_100020EA8;
    v13 = dataCopy;
    [(FinHealthStateController *)finHealthStateController deleteAllData:v12];
    v9 = v13;
LABEL_7:

    goto LABEL_8;
  }

  v10 = FinHealthLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = NSStringFromSelector(a2);
    *buf = 138412290;
    v15 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Client not entitled for method: %@", buf, 0xCu);
  }

  if (dataCopy)
  {
    v9 = [NSError errorWithDomain:FHErrorDomain code:10012 userInfo:0];
    (*(dataCopy + 2))(dataCopy, 0, v9);
    goto LABEL_7;
  }

LABEL_8:
}

- (void)featuresForApplication:(id)application withCompletion:(id)completion
{
  applicationCopy = application;
  completionCopy = completion;
  v9 = FinHealthLogObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v93 = "[FinHealthXPCServices featuresForApplication:withCompletion:]";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
  }

  entitlementsChecker = [(FinHealthXPCServices *)self entitlementsChecker];
  fhAllAccess = [entitlementsChecker fhAllAccess];

  if (fhAllAccess)
  {
LABEL_8:
    v15 = FHApplications();
    v63 = applicationCopy;
    if ([v15 containsObject:applicationCopy])
    {
      v16 = applicationCopy;
    }

    else
    {
      v16 = FHApplicationFromProcessName();
    }

    v17 = v16;
    v62 = completionCopy;

    v18 = FHApplicationToTagsMapping();
    v19 = [v18 objectForKey:v17];

    v60 = v19;
    v20 = [v19 objectForKey:FHApplicationFeaturesWithoutIdsKey];
    v21 = FinHealthLogObject();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v93 = v17;
      v94 = 2112;
      v95 = v20;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "Application[%@] is asking for tags: %@", buf, 0x16u);
    }

    v22 = objc_opt_new();
    v61 = v17;
    if ([v17 isEqualToString:FHApplicationMessaging])
    {
      v86 = 0uLL;
      v87 = 0uLL;
      v84 = 0uLL;
      v85 = 0uLL;
      v23 = v20;
      v24 = [v23 countByEnumeratingWithState:&v84 objects:v91 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v85;
        v27 = FHSmartFeatureCompoundTypeLostSavings;
        v65 = timePeriodFifteenDays;
        v70 = FHSmartFeatureCompoundTypeRecurringChange;
        v71 = timePeriodThirtyDays;
        v68 = FHPropensityCreditAccountRank;
        v69 = FHPeerPaymentSuggestAutoTopUp;
        v64 = FHCardPreselectPropensityModelName;
        v66 = v23;
        do
        {
          v28 = 0;
          v67 = v25;
          do
          {
            if (*v85 != v26)
            {
              objc_enumerationMutation(v23);
            }

            v29 = *(*(&v84 + 1) + 8 * v28);
            if ([v29 isEqualToString:v27])
            {
              v30 = objc_alloc_init(FinHealthLostSavingsTag);
              v31 = +[NSDate now];
              [(FinHealthLostSavingsTag *)v30 lostSavingsOverTimeForMerchant:0 timePeriod:v65 currentDate:v31 stateController:self->_finHealthStateController];
              v32 = v27;
              v33 = v20;
              v35 = v34 = v26;
              [v22 safelySetObject:v35 forKey:FHMessagingTagLostSavingFifteenDays];

              v36 = [(FinHealthLostSavingsTag *)v30 lostSavingsOverTimeForMerchant:0 timePeriod:v71 currentDate:v31 stateController:self->_finHealthStateController];
              [v22 safelySetObject:v36 forKey:FHMessagingTagLostSavingThirtyDays];

              v26 = v34;
              v20 = v33;
              v27 = v32;

              v23 = v66;
              v25 = v67;
            }

            if ([v29 isEqualToString:v70])
            {
              v37 = [(FinHealthStateController *)self->_finHealthStateController getRecurringChangeForMessagingOverTimePeriod:v71];
              [v22 safelySetObject:v37 forKey:FHMessagingTagPriceIncrease];
            }

            if ([v29 isEqualToString:v69])
            {
              v38 = [NSDecimalNumber numberWithBool:[(FinHealthStateController *)self->_finHealthStateController suggestAutoReload]];
              [v22 safelySetObject:v38 forKey:FHMessagingTagSuggestAutoTopUp];
            }

            if ([v29 isEqualToString:v68])
            {
              v39 = [(FinHealthStateController *)self->_finHealthStateController predictionLabelForModelName:v64 modelVersion:0];
              [v22 safelySetObject:v39 forKey:FHMessagingTagCreditAccountPropensityRank];
            }

            v28 = v28 + 1;
          }

          while (v25 != v28);
          v25 = [v23 countByEnumeratingWithState:&v84 objects:v91 count:16];
        }

        while (v25);
      }
    }

    else
    {
      v82 = 0uLL;
      v83 = 0uLL;
      v80 = 0uLL;
      v81 = 0uLL;
      v40 = FHMerchantSmartFeaturesArray();
      v41 = [v40 countByEnumeratingWithState:&v80 objects:v90 count:16];
      if (v41)
      {
        v42 = v41;
        v43 = *v81;
        do
        {
          for (i = 0; i != v42; i = i + 1)
          {
            if (*v81 != v43)
            {
              objc_enumerationMutation(v40);
            }

            v45 = *(*(&v80 + 1) + 8 * i);
            if ([v20 containsObject:v45])
            {
              v46 = [(FinHealthStateController *)self->_finHealthStateController getFHMerchantSmartFeatureByType:v45];
              [v22 safelySetObject:v46 forKey:v45];
            }
          }

          v42 = [v40 countByEnumeratingWithState:&v80 objects:v90 count:16];
        }

        while (v42);
      }

      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v47 = FHAmountSmartFeaturesArray();
      v48 = [v47 countByEnumeratingWithState:&v76 objects:v89 count:16];
      if (v48)
      {
        v49 = v48;
        v50 = *v77;
        do
        {
          for (j = 0; j != v49; j = j + 1)
          {
            if (*v77 != v50)
            {
              objc_enumerationMutation(v47);
            }

            v52 = *(*(&v76 + 1) + 8 * j);
            if ([v20 containsObject:v52])
            {
              v53 = [(FinHealthStateController *)self->_finHealthStateController getFHAmountSmartFeatureByType:v52];
              [v22 safelySetObject:v53 forKey:v52];
            }
          }

          v49 = [v47 countByEnumeratingWithState:&v76 objects:v89 count:16];
        }

        while (v49);
      }

      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v23 = FHDateTimeSmartFeaturesArray();
      v54 = [v23 countByEnumeratingWithState:&v72 objects:v88 count:16];
      if (v54)
      {
        v55 = v54;
        v56 = *v73;
        completionCopy = v62;
        do
        {
          for (k = 0; k != v55; k = k + 1)
          {
            if (*v73 != v56)
            {
              objc_enumerationMutation(v23);
            }

            v58 = *(*(&v72 + 1) + 8 * k);
            if ([v20 containsObject:v58])
            {
              v59 = [(FinHealthStateController *)self->_finHealthStateController getFHDateTimeSmartFeatureByType:v58];
              [v22 safelySetObject:v59 forKey:v58];
            }
          }

          v55 = [v23 countByEnumeratingWithState:&v72 objects:v88 count:16];
        }

        while (v55);
        goto LABEL_59;
      }
    }

    completionCopy = v62;
LABEL_59:

    if (completionCopy)
    {
      completionCopy[2](completionCopy, v22, 0);
    }

    applicationCopy = v63;
    goto LABEL_62;
  }

  v12 = FinHealthLogObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v13 = NSStringFromSelector(a2);
    *buf = 138412290;
    v93 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Client not entitled for method: %@", buf, 0xCu);
  }

  if (completionCopy)
  {
    v14 = [NSError errorWithDomain:FHErrorDomain code:10012 userInfo:0];
    (completionCopy)[2](completionCopy, 0, v14);

    goto LABEL_8;
  }

LABEL_62:
}

- (void)featureResponsesForApplication:(id)application completion:(id)completion
{
  applicationCopy = application;
  completionCopy = completion;
  v9 = FinHealthLogObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v18 = 136315394;
    v19 = "[FinHealthXPCServices featureResponsesForApplication:completion:]";
    v20 = 2112;
    v21 = applicationCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%s process name:%@", &v18, 0x16u);
  }

  entitlementsChecker = [(FinHealthXPCServices *)self entitlementsChecker];
  fhAllAccess = [entitlementsChecker fhAllAccess];

  if (fhAllAccess)
  {
    goto LABEL_8;
  }

  v12 = FinHealthLogObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v13 = NSStringFromSelector(a2);
    v18 = 138412290;
    v19 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Client not entitled for method: %@", &v18, 0xCu);
  }

  if (completionCopy)
  {
    v14 = [NSError errorWithDomain:FHErrorDomain code:10012 userInfo:0];
    completionCopy[2](completionCopy, 0, v14);

LABEL_8:
    v15 = FHApplications();
    if ([v15 containsObject:applicationCopy])
    {
      v16 = applicationCopy;
    }

    else
    {
      v16 = FHApplicationFromProcessName();
    }

    v17 = v16;

    [(FinHealthXPCServices *)self _sendTransactionFeaturesForApplication:v17 withCompletion:completionCopy];
  }
}

- (void)getComputedFeaturesForTransactions:(BOOL)transactions completion:(id)completion
{
  transactionsCopy = transactions;
  completionCopy = completion;
  entitlementsChecker = [(FinHealthXPCServices *)self entitlementsChecker];
  fhAllAccess = [entitlementsChecker fhAllAccess];

  if ((fhAllAccess & 1) == 0)
  {
    v10 = FinHealthLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = NSStringFromSelector(a2);
      v18 = 138412290;
      v19 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Client not entitled for method: %@", &v18, 0xCu);
    }

    if (!completionCopy)
    {
      goto LABEL_16;
    }

    v12 = [NSError errorWithDomain:FHErrorDomain code:10012 userInfo:0];
    completionCopy[2](completionCopy, 0, v12);
  }

  if (transactionsCopy)
  {
    v13 = FinHealthLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v18 = 136315138;
      v19 = "[FinHealthXPCServices getComputedFeaturesForTransactions:completion:]";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%s", &v18, 0xCu);
    }

    if ([(FinHealthStateController *)self->_finHealthStateController shouldCallGetAllTransactions])
    {
      v14 = FinHealthLogObject();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v18) = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "First time setup. Getting all transactions first", &v18, 2u);
      }

      v15 = objc_retainBlock(completionCopy);
      allFeaturesCompletionBlock = self->_allFeaturesCompletionBlock;
      self->_allFeaturesCompletionBlock = v15;

      [(FinHealthXPCServices *)self getAllPaymentTransactions];
      goto LABEL_16;
    }

    processAggregateFeatures = [(FinHealthStateController *)self->_finHealthStateController processAggregateFeatures];
  }

  if (completionCopy)
  {
    [(FinHealthXPCServices *)self _sendTransactionFeaturesWithCompletion:completionCopy];
  }

LABEL_16:
}

- (void)recomputeFeaturesForTransactions:(id)transactions
{
  transactionsCopy = transactions;
  entitlementsChecker = [(FinHealthXPCServices *)self entitlementsChecker];
  fhAllAccess = [entitlementsChecker fhAllAccess];

  if (fhAllAccess)
  {
    goto LABEL_6;
  }

  v8 = FinHealthLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = NSStringFromSelector(a2);
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Client not entitled for method: %@", &buf, 0xCu);
  }

  if (transactionsCopy)
  {
    v10 = [NSError errorWithDomain:FHErrorDomain code:10012 userInfo:0];
    transactionsCopy[2](transactionsCopy, 0, v10);

LABEL_6:
    v11 = FinHealthLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "[FinHealthXPCServices recomputeFeaturesForTransactions:]";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%s", &buf, 0xCu);
    }

    if ([(FinHealthStateController *)self->_finHealthStateController shouldCallGetAllTransactions])
    {
      v12 = FinHealthLogObject();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Upgrade entire FinHealth database & Ask Wallet to re-send all transactions", &buf, 2u);
      }

      v13 = objc_retainBlock(transactionsCopy);
      allFeaturesCompletionBlock = self->_allFeaturesCompletionBlock;
      self->_allFeaturesCompletionBlock = v13;

      [(FinHealthXPCServices *)self getAllPaymentTransactions];
    }

    else if ([(FinHealthStateController *)self->_finHealthStateController updateTransactionsInternalStateToState:FHComparisonOperatorGreaterThan oldInternalState:2 newInternalState:2])
    {
      if ([(FinHealthStateController *)self->_finHealthStateController deleteAllRecordsFromTransactionFeatures])
      {
        processAggregateFeatures = [(FinHealthStateController *)self->_finHealthStateController processAggregateFeatures];
        v16 = [NSNumber numberWithBool:1];
        *&buf = 0;
        *(&buf + 1) = &buf;
        v27 = 0x2020000000;
        v28 = 1;
        v20 = _NSConcreteStackBlock;
        v21 = 3221225472;
        v22 = sub_10000CC74;
        v23 = &unk_100020ED0;
        v17 = v16;
        v24 = v17;
        p_buf = &buf;
        [processAggregateFeatures enumerateObjectsUsingBlock:&v20];
        if (*(*(&buf + 1) + 24) == 1)
        {
          [(FinHealthStateController *)self->_finHealthStateController updateTransactionsInternalStateToState:FHComparisonOperatorEquals oldInternalState:2 newInternalState:3, v20, v21, v22, v23];
        }

        if (transactionsCopy)
        {
          [(FinHealthXPCServices *)self _sendTransactionFeaturesWithCompletion:transactionsCopy];
        }

        _Block_object_dispose(&buf, 8);
      }

      else
      {
        v19 = [NSError errorWithDomain:FHErrorDomain code:10008 userInfo:0];
        transactionsCopy[2](transactionsCopy, 0, v19);
      }
    }

    else
    {
      v18 = [NSError errorWithDomain:FHErrorDomain code:10009 userInfo:0];
      transactionsCopy[2](transactionsCopy, 0, v18);
    }
  }
}

- (void)_sendTransactionFeaturesForApplication:(id)application withCompletion:(id)completion
{
  applicationCopy = application;
  completionCopy = completion;
  v8 = FinHealthLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v23 = "[FinHealthXPCServices _sendTransactionFeaturesForApplication:withCompletion:]";
    v24 = 2112;
    v25 = applicationCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s Application[%@]", buf, 0x16u);
  }

  v9 = [(FinHealthStateController *)self->_finHealthStateController getTransactionSmartFeaturesForApplication:applicationCopy];
  if ([applicationCopy isEqualToString:FHApplicationSearch])
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v18;
      do
      {
        v14 = 0;
        do
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(v10);
          }

          finHealthStateController = self->_finHealthStateController;
          transactionIdentifier = [*(*(&v17 + 1) + 8 * v14) transactionIdentifier];
          [(FinHealthStateController *)finHealthStateController updateDeleteFlagInTransactionFeatures:1 forID:transactionIdentifier];

          v14 = v14 + 1;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v12);
    }
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, v9, 0);
  }
}

- (void)transactionsRequireSyncing:(id)syncing
{
  syncingCopy = syncing;
  if (syncingCopy)
  {
    v6 = syncingCopy;
    if ([(FinHealthStateController *)self->_finHealthStateController updateGetAllStatus:0])
    {
      v6[2](v6, 0);
    }

    else
    {
      v5 = [NSError errorWithDomain:FHErrorDomain code:10009 userInfo:0];
      (v6)[2](v6, v5);
    }
  }

  _objc_release_x1();
}

- (void)aggregateFeaturesWithProcessSource:(id)source completion:(id)completion
{
  completionCopy = completion;
  v7 = completionCopy;
  if (completionCopy)
  {
    finHealthStateController = self->_finHealthStateController;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10000D008;
    v9[3] = &unk_100020B58;
    v10 = completionCopy;
    [(FinHealthStateController *)finHealthStateController aggregateFeaturesWithProcessSource:source completion:v9];
  }
}

- (void)recordUserInteractions:(id)interactions completion:(id)completion
{
  interactionsCopy = interactions;
  completionCopy = completion;
  v8 = completionCopy;
  if (completionCopy)
  {
    v15 = completionCopy;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v9 = [interactionsCopy countByEnumeratingWithState:&v16 objects:v24 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(interactionsCopy);
          }

          v13 = *(*(&v16 + 1) + 8 * i);
          v14 = FinHealthLogObject();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            v21 = "[FinHealthXPCServices recordUserInteractions:completion:]";
            v22 = 2112;
            v23 = v13;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "%s instrumentationRecord [%@]", buf, 0x16u);
          }

          [(FinHealthStateController *)self->_finHealthStateController insertInstrumentationRecord:v13];
        }

        v10 = [interactionsCopy countByEnumeratingWithState:&v16 objects:v24 count:16];
      }

      while (v10);
    }

    v8 = v15;
    v15[2](v15);
  }
}

- (void)recordUserInteraction:(id)interaction completion:(id)completion
{
  interactionCopy = interaction;
  if (completion)
  {
    completionCopy = completion;
    v8 = FinHealthLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = 136315394;
      v10 = "[FinHealthXPCServices recordUserInteraction:completion:]";
      v11 = 2112;
      v12 = interactionCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s instrumentationRecord [%@]", &v9, 0x16u);
    }

    [(FinHealthStateController *)self->_finHealthStateController insertInstrumentationRecord:interactionCopy];
    completionCopy[2](completionCopy);
  }
}

- (void)peerPaymentForecastingSignals:(id)signals withCompletion:(id)completion
{
  signalsCopy = signals;
  completionCopy = completion;
  if (completionCopy)
  {
    entitlementsChecker = [(FinHealthXPCServices *)self entitlementsChecker];
    fhAllAccess = [entitlementsChecker fhAllAccess];

    if ((fhAllAccess & 1) == 0)
    {
      v11 = FinHealthLogObject();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = NSStringFromSelector(a2);
        v15 = 138412290;
        v16 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Client not entitled for method: %@", &v15, 0xCu);
      }

      v13 = [NSError errorWithDomain:FHErrorDomain code:10012 userInfo:0];
      completionCopy[2](completionCopy, 0, v13);
    }

    v14 = [(FinHealthStateController *)self->_finHealthStateController getAllPredictedPeerPaymentsAfterDate:signalsCopy];
    (completionCopy)[2](completionCopy, v14, 0);
  }
}

- (void)updatePeerPaymentForecastingSuggestionStatus:(unint64_t)status counterpartHandle:(id)handle amount:(id)amount completion:(id)completion
{
  handleCopy = handle;
  amountCopy = amount;
  completionCopy = completion;
  if (completionCopy)
  {
    v13 = FinHealthLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v15 = 136315906;
      v16 = "[FinHealthXPCServices updatePeerPaymentForecastingSuggestionStatus:counterpartHandle:amount:completion:]";
      v17 = 2048;
      statusCopy = status;
      v19 = 2112;
      v20 = handleCopy;
      v21 = 2112;
      v22 = amountCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%s suggestionStatus [%lu], counterpartHandle [%@], amount [%@]", &v15, 0x2Au);
    }

    if ([(FinHealthStateController *)self->_finHealthStateController recordPeerPaymentForecastingSuggestionStatus:status counterpartHandle:handleCopy amount:amountCopy])
    {
      completionCopy[2](completionCopy, 1, 0);
    }

    else
    {
      v14 = [NSError errorWithDomain:FHErrorDomain code:10010 userInfo:0];
      (completionCopy)[2](completionCopy, 0, v14);
    }
  }
}

- (void)updatePeerPaymentAccountBalanceWithTransactionSourceId:(id)id amount:(id)amount currencyCode:(id)code completion:(id)completion
{
  idCopy = id;
  amountCopy = amount;
  codeCopy = code;
  if (completion)
  {
    completionCopy = completion;
    v14 = FinHealthLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = 138412802;
      v16 = amountCopy;
      v17 = 2112;
      v18 = codeCopy;
      v19 = 2112;
      v20 = idCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "Received updated cash balance of %@ (FHDatabaseAmount) %@, for source_identifier=%@", &v15, 0x20u);
    }

    completionCopy[2](completionCopy, [(FinHealthStateController *)self->_finHealthStateController updatePeerPaymentAccountBalance:idCopy amount:amountCopy currencyCode:codeCopy], 0);
  }
}

- (void)getDisputeDocumentSuggestionsForTransactionId:(id)id completion:(id)completion
{
  idCopy = id;
  completionCopy = completion;
  entitlementsChecker = [(FinHealthXPCServices *)self entitlementsChecker];
  fhAllAccess = [entitlementsChecker fhAllAccess];

  if (fhAllAccess)
  {
    if (!completionCopy)
    {
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  v11 = FinHealthLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = NSStringFromSelector(a2);
    v17 = 138412290;
    v18 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Client not entitled for method: %@", &v17, 0xCu);
  }

  if (completionCopy)
  {
    v13 = [NSError errorWithDomain:FHErrorDomain code:10012 userInfo:0];
    completionCopy[2](completionCopy, 0, v13);

LABEL_8:
    v14 = +[FinHealthDisputeDocumentProcessing sharedInstance];
    v15 = [(FinHealthStateController *)self->_finHealthStateController getTransactionByIdentifier:idCopy];
    if (v15)
    {
      v16 = [v14 getDisputeDocumentSuggestionsForTransaction:v15];
      (completionCopy)[2](completionCopy, v16, 0);
    }

    else
    {
      v16 = [NSError errorWithDomain:FHErrorDomain code:10015 userInfo:0];
      completionCopy[2](completionCopy, 0, v16);
    }
  }

LABEL_12:
}

- (void)allInsightsForDateRange:(id)range endDate:(id)date insightTypeItems:(id)items trendWindow:(int64_t)window sourceId:(id)id accountType:(int64_t)type completion:(id)completion
{
  rangeCopy = range;
  dateCopy = date;
  itemsCopy = items;
  idCopy = id;
  completionCopy = completion;
  entitlementsChecker = [(FinHealthXPCServices *)self entitlementsChecker];
  fhAllAccess = [entitlementsChecker fhAllAccess];

  if (fhAllAccess)
  {
    if (_os_feature_enabled_impl())
    {
      if (completionCopy)
      {
        v23 = +[FHInsightsFetcher sharedInstance];
        v24 = [v23 retrieveSpendInsightsWithStartDate:rangeCopy endDate:dateCopy insightTypeItems:itemsCopy trendWindow:window sourceId:idCopy accountType:type];

        v25 = FinHealthLogObject();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          v28 = 138412290;
          v29 = v24;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "Spending Insights :%@", &v28, 0xCu);
        }

        goto LABEL_11;
      }
    }

    else if (completionCopy)
    {
      v25 = +[FHInsightsFetcher sharedInstance];
      v24 = [v25 retrieveInsightsWithStartDate:rangeCopy endDate:dateCopy insightTypeItems:itemsCopy trendWindow:window];
LABEL_11:

      completionCopy[2](completionCopy, v24);
    }
  }

  else
  {
    v26 = FinHealthLogObject();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = NSStringFromSelector(a2);
      v28 = 138412290;
      v29 = v27;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Client not entitled for method: %@", &v28, 0xCu);
    }

    completionCopy[2](completionCopy, 0);
  }
}

- (void)getTopTransactionCategoriesWithCountryCode:(id)code timeWindow:(unint64_t)window minRegularTransactionRatio:(double)ratio discretizedTimeOfDay:(unint64_t)day completion:(id)completion
{
  completionCopy = completion;
  entitlementsChecker = [(FinHealthXPCServices *)self entitlementsChecker];
  fhAllAccess = [entitlementsChecker fhAllAccess];

  if (fhAllAccess)
  {
    goto LABEL_6;
  }

  v12 = FinHealthLogObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v13 = NSStringFromSelector(a2);
    v18 = 138412290;
    v19 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Client not entitled for method: %@", &v18, 0xCu);
  }

  if (completionCopy)
  {
    v14 = [NSError errorWithDomain:FHErrorDomain code:10012 userInfo:0];
    completionCopy[2](completionCopy, 0, v14);

LABEL_6:
    v15 = FinHealthLogObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = NSStringFromSelector(a2);
      v18 = 138412290;
      v19 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Feature flag not enabled for method: %@", &v18, 0xCu);
    }

    if (completionCopy)
    {
      v17 = [NSError errorWithDomain:FHErrorDomain code:40003 userInfo:0];
      completionCopy[2](completionCopy, 0, v17);
    }
  }
}

@end