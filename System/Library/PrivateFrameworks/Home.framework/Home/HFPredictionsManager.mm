@interface HFPredictionsManager
+ (double)normalizedScoreWithIndex:(int64_t)a3 predictionsCount:(int64_t)a4;
- (HFPredictionsManager)init;
- (HFPredictionsManager)initWithHome:(id)a3 predictionsController:(id)a4 delegate:(id)a5 predictionLimit:(unint64_t)a6 filterTypes:(id)a7;
- (HFPredictionsManagerDelegate)delegate;
- (id)_homeKitObjectForAccessoryUUID:(id)a3;
- (id)_homeKitObjectForMediaSystemUUID:(id)a3;
- (id)_homeKitObjectForSceneUUID:(id)a3;
- (id)_homeKitObjectForServiceGroupUUID:(id)a3;
- (id)_homeKitObjectForServiceUUID:(id)a3;
- (id)_processUserActionPredictions:(id)a3;
- (id)fetchUserActionPredictionsAndWaitForInitialUpdate:(BOOL)a3;
- (id)normalizedPredictionConfidenceForObject:(id)a3;
- (id)predictionConfidenceForObject:(id)a3;
- (id)predictionIndexForObject:(id)a3;
- (void)_didReceivePredictions:(id)a3;
- (void)_queryUserActionPredictions;
- (void)_queryUserActionPredictionsOnQueue;
- (void)home:(id)a3 didRemoveAccessory:(id)a4;
- (void)home:(id)a3 didRemoveActionSet:(id)a4;
- (void)home:(id)a3 didRemoveMediaSystem:(id)a4;
- (void)home:(id)a3 didRemoveServiceGroup:(id)a4;
- (void)invalidateUserActionPredictions;
- (void)prepopulateWithCache;
- (void)saveAnalyticsScoresForPredictions:(id)a3;
- (void)setFilterTypes:(id)a3;
- (void)submitPredictionsFetchEventWithDuration:(double)a3 numberOfPredictions:(unint64_t)a4 receivedBeforeModuleFreeze:(BOOL)a5;
- (void)userActionPredictionController:(id)a3 didUpdatePredictions:(id)a4;
@end

@implementation HFPredictionsManager

- (void)submitPredictionsFetchEventWithDuration:(double)a3 numberOfPredictions:(unint64_t)a4 receivedBeforeModuleFreeze:(BOOL)a5
{
  v8 = self;
  HFPredictionsManager.submitPredictionsFetchEvent(duration:numberOfPredictions:receivedBeforeModuleFreeze:)(a3, a4, a5);
}

+ (double)normalizedScoreWithIndex:(int64_t)a3 predictionsCount:(int64_t)a4
{
  sub_20DA1D190();
  sub_20DD63914();
  return result;
}

- (void)saveAnalyticsScoresForPredictions:(id)a3
{
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v13 - v7;
  sub_20D9D7510(0, &unk_280E01F40, 0x277CD1EE8);
  v9 = sub_20DD64FD4();
  v14 = self;
  if ([(HFPredictionsManager *)v14 submitsAnalytics])
  {
    v10 = sub_20DD65114();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = v9;
    v11[5] = v14;
    v11[6] = ObjectType;
    sub_20DA1C514(0, 0, v8, &unk_20DD94AD8, v11);
  }

  else
  {

    v12 = v14;
  }
}

- (HFPredictionsManager)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithHome_predictionsController_delegate_predictionLimit_);
  [v4 handleFailureInMethod:a2 object:self file:@"HFPredictionsManager.m" lineNumber:38 description:{@"%s is unavailable; use %@ instead", "-[HFPredictionsManager init]", v5}];

  return 0;
}

- (HFPredictionsManager)initWithHome:(id)a3 predictionsController:(id)a4 delegate:(id)a5 predictionLimit:(unint64_t)a6 filterTypes:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  v24.receiver = self;
  v24.super_class = HFPredictionsManager;
  v17 = [(HFPredictionsManager *)&v24 init];
  v18 = v17;
  if (v17)
  {
    objc_storeWeak(&v17->_delegate, v15);
    v18->_predictionLimit = a6;
    objc_storeStrong(&v18->_home, a3);
    objc_storeStrong(&v18->_predictionsController, a4);
    [(HFPredictionsController *)v18->_predictionsController setDelegate:v18];
    predictions = v18->_predictions;
    v18->_predictions = MEMORY[0x277CBEBF8];

    v18->_cachesRawPredictions = 0;
    v18->_moduleItemsFrozen = 0;
    v18->_submitsAnalytics = !+[HFUtilities isInternalTest];
    objc_storeStrong(&v18->_filterTypes, a7);
    v20 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v21 = dispatch_queue_create("com.apple.Home.predictionFetchQueue", v20);
    predictionQueue = v18->_predictionQueue;
    v18->_predictionQueue = v21;

    [(HFPredictionsManager *)v18 invalidateUserActionPredictions];
  }

  return v18;
}

- (id)predictionConfidenceForObject:(id)a3
{
  v4 = a3;
  v5 = [(HFPredictionsManager *)self predictionConfidence];
  v6 = [v4 uniqueIdentifier];

  v7 = [v5 objectForKey:v6];

  return v7;
}

- (void)prepopulateWithCache
{
  v3 = [(HFPredictionsManager *)self home];
  v4 = [v3 cachedPredictions];

  if ([(HFPredictionsManager *)self submitsAnalytics])
  {
    [(HFPredictionsManager *)self saveAnalyticsScoresForPredictions:v4];
  }

  if ([v4 count])
  {
    [(HFPredictionsManager *)self _didReceivePredictions:v4];
  }
}

- (id)predictionIndexForObject:(id)a3
{
  v4 = a3;
  v5 = [(HFPredictionsManager *)self predictionConfidence];
  v6 = [v4 uniqueIdentifier];
  v7 = [v5 objectForKey:v6];

  if (v7)
  {
    v8 = [(HFPredictionsManager *)self predictions];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __49__HFPredictionsManager_predictionIndexForObject___block_invoke;
    v12[3] = &unk_277DF9CC8;
    v13 = v4;
    v9 = [v8 indexOfObjectPassingTest:v12];

    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = 0;
    }

    else
    {
      v10 = [MEMORY[0x277CCABB0] numberWithInteger:v9];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t __49__HFPredictionsManager_predictionIndexForObject___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 uniqueIdentifier];
  v7 = [*(a1 + 32) uniqueIdentifier];
  v8 = [v6 isEqual:v7];

  if (v8)
  {
    *a4 = 1;
  }

  return v8;
}

- (id)normalizedPredictionConfidenceForObject:(id)a3
{
  v4 = [(HFPredictionsManager *)self predictionIndexForObject:a3];
  if (v4)
  {
    v5 = [(HFPredictionsManager *)self predictions];
    v6 = [v5 count];

    if (v6 <= 20)
    {
      v7 = 20;
    }

    else
    {
      v7 = v6;
    }

    [v4 doubleValue];
    v9 = [MEMORY[0x277CCABB0] numberWithDouble:{fmax(fmin(1.0 - (v8 + 1.0 / v7), 1.0), 0.0)}];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)setFilterTypes:(id)a3
{
  objc_storeStrong(&self->_filterTypes, a3);
  if ([(HFPredictionsManager *)self cachesRawPredictions])
  {
    [(HFPredictionsManager *)self prepopulateWithCache];
  }

  [(HFPredictionsManager *)self _queryUserActionPredictions];
}

- (id)fetchUserActionPredictionsAndWaitForInitialUpdate:(BOOL)a3
{
  objc_initWeak(&location, self);
  v4 = [MEMORY[0x277D2C900] futureWithNoResult];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __74__HFPredictionsManager_fetchUserActionPredictionsAndWaitForInitialUpdate___block_invoke;
  v7[3] = &unk_277DF9CF0;
  objc_copyWeak(&v8, &location);
  v9 = a3;
  v5 = [v4 flatMap:v7];
  objc_destroyWeak(&v8);

  objc_destroyWeak(&location);

  return v5;
}

id __74__HFPredictionsManager_fetchUserActionPredictionsAndWaitForInitialUpdate___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained initialPredictionUpdateFuture];
  v4 = [v3 isFinished];

  if (v4)
  {
    goto LABEL_9;
  }

  v5 = HFLogForCategory(0x38uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [WeakRetained home];
    v17 = 138412290;
    v18 = v6;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "Fetch in-progress for %@", &v17, 0xCu);
  }

  [WeakRetained setWasQueriedForInFlightPredictions:1];
  if (*(a1 + 40) == 1 && ([WeakRetained predictionsController], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    v8 = HFLogForCategory(0x38uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [WeakRetained home];
      v17 = 138412290;
      v18 = v9;
      _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "Awaiting full fetch for %@", &v17, 0xCu);
    }

    v10 = [WeakRetained initialPredictionUpdateFuture];
  }

  else
  {
LABEL_9:
    v11 = HFLogForCategory(0x38uLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [WeakRetained home];
      v17 = 138412290;
      v18 = v12;
      _os_log_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_DEFAULT, "Returning current predictions for %@", &v17, 0xCu);
    }

    v13 = MEMORY[0x277D2C900];
    v14 = [WeakRetained predictions];
    v10 = [v13 futureWithResult:v14];
  }

  v15 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)invalidateUserActionPredictions
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = HFLogForCategory(0x38uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(HFPredictionsManager *)self home];
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_DEFAULT, "Invalidating predictions and performing full fetch for %@", &v7, 0xCu);
  }

  v5 = objc_alloc_init(MEMORY[0x277D2C900]);
  [(HFPredictionsManager *)self setInitialPredictionUpdateFuture:v5];

  [(HFPredictionsManager *)self _queryUserActionPredictions];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_queryUserActionPredictions
{
  if (+[HFUtilities isInternalTest])
  {

    [(HFPredictionsManager *)self _queryUserActionPredictionsOnQueue];
  }

  else
  {
    objc_initWeak(&location, self);
    v3 = [(HFPredictionsManager *)self predictionQueue];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __51__HFPredictionsManager__queryUserActionPredictions__block_invoke;
    v4[3] = &unk_277DF4460;
    objc_copyWeak(&v5, &location);
    dispatch_async(v3, v4);

    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

void __51__HFPredictionsManager__queryUserActionPredictions__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queryUserActionPredictionsOnQueue];
}

- (void)_queryUserActionPredictionsOnQueue
{
  v15 = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, self);
  v3 = HFLogForCategory(0x38uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(HFPredictionsManager *)self home];
    *buf = 138412290;
    v14 = v4;
    _os_log_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_DEFAULT, "Performing full fetch for %@", buf, 0xCu);
  }

  v5 = [MEMORY[0x277CBEAA8] date];
  v6 = [(HFPredictionsManager *)self predictionsController];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__HFPredictionsManager__queryUserActionPredictionsOnQueue__block_invoke;
  v9[3] = &unk_277DF9D18;
  objc_copyWeak(&v11, &location);
  v7 = v5;
  v10 = v7;
  [v6 fetchPredictionsWithCompletion:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
  v8 = *MEMORY[0x277D85DE8];
}

void __58__HFPredictionsManager__queryUserActionPredictionsOnQueue__block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if ([WeakRetained cachesRawPredictions])
  {
    v4 = [v10 count];
    v5 = [WeakRetained predictionLimit];
    if (v4 >= 2 * v5)
    {
      v4 = 2 * v5;
    }

    v6 = [WeakRetained home];
    v7 = [v10 subarrayWithRange:{0, v4}];
    [v6 setCachedPredictions:v7];
  }

  [*(a1 + 32) timeIntervalSinceNow];
  v9 = v8;
  if ([WeakRetained submitsAnalytics])
  {
    [WeakRetained submitPredictionsFetchEventWithDuration:objc_msgSend(v10 numberOfPredictions:"count") receivedBeforeModuleFreeze:{objc_msgSend(WeakRetained, "moduleItemsFrozen") ^ 1, fabs(v9)}];
  }

  [WeakRetained _didReceivePredictions:v10];
}

- (void)_didReceivePredictions:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_initWeak(&location, self);
  if ([(HFPredictionsManager *)self submitsAnalytics])
  {
    [(HFPredictionsManager *)self saveAnalyticsScoresForPredictions:v4];
  }

  v5 = HFLogForCategory(0x38uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 count];
    v7 = [(HFPredictionsManager *)self home];
    v8 = [v4 hf_prettyDescription];
    *buf = 134218498;
    v20 = v6;
    v21 = 2112;
    v22 = v7;
    v23 = 2112;
    v24 = v8;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "Fetched %lu predictions for home %@: %@", buf, 0x20u);
  }

  v9 = [(HFPredictionsManager *)self _processUserActionPredictions:v4];
  v10 = [MEMORY[0x277D2C938] mainThreadScheduler];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __47__HFPredictionsManager__didReceivePredictions___block_invoke;
  v14[3] = &unk_277DF6458;
  objc_copyWeak(&v17, &location);
  v11 = v4;
  v15 = v11;
  v12 = v9;
  v16 = v12;
  [v10 performBlock:v14];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);

  v13 = *MEMORY[0x277D85DE8];
}

void __47__HFPredictionsManager__didReceivePredictions___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if ([WeakRetained submitsAnalytics])
  {
    +[HFAnalyticsCCPredictionEvent sendMetricsForPredictionEventAtStage:withCount:](HFAnalyticsCCPredictionEvent, "sendMetricsForPredictionEventAtStage:withCount:", 1, [*(a1 + 32) count]);
  }

  [WeakRetained setPredictions:*(a1 + 40)];
  if ([WeakRetained submitsAnalytics])
  {
    v3 = [WeakRetained predictions];
    +[HFAnalyticsCCPredictionEvent sendMetricsForPredictionEventAtStage:withCount:](HFAnalyticsCCPredictionEvent, "sendMetricsForPredictionEventAtStage:withCount:", 2, [v3 count]);
  }

  if ([WeakRetained wasQueriedForInFlightPredictions])
  {
    v4 = HFLogForCategory(0x38uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "Notifying delegate of full fetch", v10, 2u);
    }

    v5 = [WeakRetained delegate];
    [v5 predictionsManagerDidUpdatePredictions:WeakRetained];

    [WeakRetained setWasQueriedForInFlightPredictions:0];
  }

  v6 = [WeakRetained initialPredictionUpdateFuture];
  v7 = [v6 isFinished];

  if ((v7 & 1) == 0)
  {
    v8 = [WeakRetained initialPredictionUpdateFuture];
    v9 = [WeakRetained predictions];
    [v8 finishWithResult:v9];
  }
}

- (id)_processUserActionPredictions:(id)a3
{
  v49 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v39 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[HFPredictionsManager predictionLimit](self, "predictionLimit")}];
  v5 = [MEMORY[0x277CBEB58] setWithCapacity:{-[HFPredictionsManager predictionLimit](self, "predictionLimit")}];
  v37 = [MEMORY[0x277CBEB38] dictionary];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v40 objects:v48 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v41;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v41 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v40 + 1) + 8 * i);
        v11 = HFLogForCategory(0x38uLL);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = [v10 hf_prettyDescription];
          *buf = 138412290;
          v45 = v12;
          _os_log_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_DEFAULT, "Processing user action prediction: %@", buf, 0xCu);
        }

        v13 = [(HFPredictionsManager *)self filterTypes];
        if (v13)
        {
          v14 = v13;
          v15 = [(HFPredictionsManager *)self filterTypes];
          v16 = v5;
          v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v10, "predictionType")}];
          v18 = [v15 containsObject:v17];

          v5 = v16;
          if ((v18 & 1) == 0)
          {
            v22 = HFLogForCategory(0x38uLL);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              v23 = [v10 predictionType];
              *buf = 134217984;
              v45 = v23;
              _os_log_impl(&dword_20D9BF000, v22, OS_LOG_TYPE_DEFAULT, "Skipping prediction that does not match any of the filtered types: %lu", buf, 0xCu);
            }

            continue;
          }
        }

        v19 = [v10 predictionType];
        if (v19 <= 1)
        {
          if (!v19)
          {
            goto LABEL_31;
          }

          if (v19 != 1)
          {
LABEL_25:
            v25 = NSStringFromHMUserActionPredictionType([v10 predictionType]);
            NSLog(&cfstr_UnhandledPredi.isa, v25);

            goto LABEL_31;
          }

          v20 = [v10 predictionTargetUUID];
          v21 = [(HFPredictionsManager *)self _homeKitObjectForSceneUUID:v20];
        }

        else
        {
          switch(v19)
          {
            case 2:
              v24 = [v10 targetServiceUUID];

              if (v24)
              {
                v20 = [v10 targetServiceUUID];
                [(HFPredictionsManager *)self _homeKitObjectForServiceUUID:v20];
              }

              else
              {
                v20 = [v10 predictionTargetUUID];
                [(HFPredictionsManager *)self _homeKitObjectForAccessoryUUID:v20];
              }
              v21 = ;
              break;
            case 3:
              v20 = [v10 predictionTargetUUID];
              v21 = [(HFPredictionsManager *)self _homeKitObjectForServiceGroupUUID:v20];
              break;
            case 4:
              v20 = [v10 predictionTargetUUID];
              v21 = [(HFPredictionsManager *)self _homeKitObjectForMediaSystemUUID:v20];
              break;
            default:
              goto LABEL_25;
          }
        }

        v26 = v21;

        if (v26)
        {
          v27 = [v26 uniqueIdentifier];
          v28 = [v27 UUIDString];

          if ([v5 containsObject:v28])
          {
            v29 = HFLogForCategory(0x38uLL);
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v45 = v26;
              _os_log_impl(&dword_20D9BF000, v29, OS_LOG_TYPE_DEFAULT, "HomeKit object %@ already added, skipping", buf, 0xCu);
            }
          }

          else
          {
            [v5 addObject:v28];
            [v39 addObject:v26];
            v30 = MEMORY[0x277CCABB0];
            [v10 predictionScore];
            v29 = [v30 numberWithDouble:?];
            v31 = [v26 uniqueIdentifier];
            [v37 setObject:v29 forKey:v31];
          }

          goto LABEL_35;
        }

LABEL_31:
        v26 = HFLogForCategory(0x38uLL);
        if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_36;
        }

        v28 = [(HFPredictionsManager *)self home];
        *buf = 138412546;
        v45 = v10;
        v46 = 2112;
        v47 = v28;
        _os_log_error_impl(&dword_20D9BF000, v26, OS_LOG_TYPE_ERROR, "Prediction %@ couldn't be mapped to a HomeKit object in home: %@", buf, 0x16u);
LABEL_35:

LABEL_36:
        v32 = [v39 count];
        if (v32 >= [(HFPredictionsManager *)self predictionLimit])
        {
          goto LABEL_39;
        }
      }

      v7 = [obj countByEnumeratingWithState:&v40 objects:v48 count:16];
    }

    while (v7);
  }

LABEL_39:

  v33 = [v37 copy];
  [(HFPredictionsManager *)self setPredictionConfidence:v33];

  v34 = [MEMORY[0x277CBEA60] arrayWithArray:v39];

  v35 = *MEMORY[0x277D85DE8];

  return v34;
}

- (id)_homeKitObjectForSceneUUID:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HFPredictionsManager *)self home];
  v6 = [v5 hf_actionSetWithUUID:v4];

  v7 = HFLogForCategory(0x38uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v6;
    _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "Found scene object: %@", &v10, 0xCu);
  }

  v8 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)_homeKitObjectForServiceUUID:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HFPredictionsManager *)self home];
  v6 = [v5 hf_serviceWithIdentifier:v4];

  v7 = HFLogForCategory(0x38uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 138412290;
    v26 = v6;
    _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "Found initial service object: %@", &v25, 0xCu);
  }

  if ([v6 hf_isChildService])
  {
    v8 = [v6 hf_parentService];

    v9 = HFLogForCategory(0x38uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v25 = 138412290;
      v26 = v8;
      _os_log_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_DEFAULT, "Child service - using parent service instead: %@", &v25, 0xCu);
    }
  }

  else
  {
    v8 = v6;
  }

  if (![v8 hf_isVisible] || !objc_msgSend(v8, "hf_showsAsServiceInControlCentre"))
  {
    v14 = HFLogForCategory(0x38uLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v25 = 138412290;
      v26 = v8;
      _os_log_impl(&dword_20D9BF000, v14, OS_LOG_TYPE_DEFAULT, "Service %@ is non visible, so skipping this service entirely", &v25, 0xCu);
    }

    goto LABEL_16;
  }

  v10 = [v8 accessory];
  v11 = [v10 hf_showAsAccessoryTile];

  if (v11)
  {
    v12 = [v8 accessory];
    v13 = [v12 hf_isCamera];

    if (v13)
    {
      v14 = HFLogForCategory(0x38uLL);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [v8 accessory];
        v25 = 138412290;
        v26 = v15;
        v16 = "Service is normally shown as accessory, but accessory %@ is a camera, so skipping this service entirely";
LABEL_28:
        _os_log_impl(&dword_20D9BF000, v14, OS_LOG_TYPE_DEFAULT, v16, &v25, 0xCu);

        goto LABEL_16;
      }

      goto LABEL_16;
    }

    v21 = [v8 accessory];
    v22 = [v21 hf_isVisibleAccessory];

    v14 = HFLogForCategory(0x38uLL);
    v23 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if ((v22 & 1) == 0)
    {
      if (v23)
      {
        v15 = [v8 accessory];
        v25 = 138412290;
        v26 = v15;
        v16 = "Service is normally shown as accessory, but accessory %@ is non visible, so skipping this service entirely";
        goto LABEL_28;
      }

LABEL_16:

      v17 = 0;
      goto LABEL_17;
    }

    if (v23)
    {
      v24 = [v8 accessory];
      v25 = 138412290;
      v26 = v24;
      _os_log_impl(&dword_20D9BF000, v14, OS_LOG_TYPE_DEFAULT, "Service is normally shown as accessory, using accessory %@ instead", &v25, 0xCu);
    }

    v20 = [v8 accessory];
  }

  else
  {
    v20 = v8;
  }

  v17 = v20;
LABEL_17:

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)_homeKitObjectForServiceGroupUUID:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HFPredictionsManager *)self home];
  v6 = [v5 hf_serviceGroupWithIdentifier:v4];

  v7 = HFLogForCategory(0x38uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v6;
    _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "Found service group object: %@", &v10, 0xCu);
  }

  v8 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)_homeKitObjectForAccessoryUUID:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HFPredictionsManager *)self home];
  v6 = [v5 hf_accessoryWithIdentifier:v4];

  v7 = HFLogForCategory(0x38uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = v6;
    _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "Found accessory object: %@", &v12, 0xCu);
  }

  if ([v6 hf_showsAsAccessoryInControlCentre])
  {
    v8 = v6;
  }

  else
  {
    v9 = HFLogForCategory(0x38uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v6;
      _os_log_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_DEFAULT, "Accessory %@ is non visible, so skipping this service entirely", &v12, 0xCu);
    }

    v8 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)_homeKitObjectForMediaSystemUUID:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HFPredictionsManager *)self home];
  v6 = [v5 hf_mediaSystemWithIdentifier:v4];

  v7 = HFLogForCategory(0x38uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v6;
    _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "Found media system object: %@", &v10, 0xCu);
  }

  v8 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)userActionPredictionController:(id)a3 didUpdatePredictions:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = HFLogForCategory(0x38uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 count];
    v8 = [v5 hf_prettyDescription];
    *buf = 134218242;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "Predictions manager updated with %lu predictions: %@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __76__HFPredictionsManager_userActionPredictionController_didUpdatePredictions___block_invoke;
  v11[3] = &unk_277DF3A68;
  objc_copyWeak(&v13, buf);
  v12 = v5;
  v9 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v11);

  objc_destroyWeak(&v13);
  objc_destroyWeak(buf);
  v10 = *MEMORY[0x277D85DE8];
}

void __76__HFPredictionsManager_userActionPredictionController_didUpdatePredictions___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained saveAnalyticsScoresForPredictions:*(a1 + 32)];
  v2 = [WeakRetained _processUserActionPredictions:*(a1 + 32)];
  [WeakRetained setPredictions:v2];

  v3 = [WeakRetained delegate];
  [v3 predictionsManagerDidUpdatePredictions:WeakRetained];
}

- (void)home:(id)a3 didRemoveAccessory:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v8 = [(HFPredictionsManager *)self predictions];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __48__HFPredictionsManager_home_didRemoveAccessory___block_invoke;
  v15 = &unk_277DF9D40;
  v9 = v7;
  v16 = v9;
  v17 = &v18;
  v10 = [v8 na_filter:&v12];
  [(HFPredictionsManager *)self setPredictions:v10, v12, v13, v14, v15];

  if (*(v19 + 24) == 1)
  {
    v11 = [(HFPredictionsManager *)self delegate];
    [v11 predictionsManagerDidUpdatePredictions:self];

    [(HFPredictionsManager *)self _queryUserActionPredictions];
  }

  _Block_object_dispose(&v18, 8);
}

uint64_t __48__HFPredictionsManager_home_didRemoveAccessory___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 uniqueIdentifier];
  v5 = [*(a1 + 32) uniqueIdentifier];

  if (v4 != v5 || (objc_opt_respondsToSelector() & 1) != 0 && ([v3 hf_associatedAccessories], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "containsObject:", *(a1 + 32)), v7, v8))
  {
    v6 = 0;
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (void)home:(id)a3 didRemoveMediaSystem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v8 = [(HFPredictionsManager *)self predictions];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __50__HFPredictionsManager_home_didRemoveMediaSystem___block_invoke;
  v15 = &unk_277DF9D40;
  v9 = v7;
  v16 = v9;
  v17 = &v18;
  v10 = [v8 na_filter:&v12];
  [(HFPredictionsManager *)self setPredictions:v10, v12, v13, v14, v15];

  if (*(v19 + 24) == 1)
  {
    v11 = [(HFPredictionsManager *)self delegate];
    [v11 predictionsManagerDidUpdatePredictions:self];

    [(HFPredictionsManager *)self _queryUserActionPredictions];
  }

  _Block_object_dispose(&v18, 8);
}

BOOL __50__HFPredictionsManager_home_didRemoveMediaSystem___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [*(a1 + 32) uniqueIdentifier];

  if (v3 == v4)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return v3 != v4;
}

- (void)home:(id)a3 didRemoveServiceGroup:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v8 = [(HFPredictionsManager *)self predictions];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __51__HFPredictionsManager_home_didRemoveServiceGroup___block_invoke;
  v15 = &unk_277DF9D40;
  v9 = v7;
  v16 = v9;
  v17 = &v18;
  v10 = [v8 na_filter:&v12];
  [(HFPredictionsManager *)self setPredictions:v10, v12, v13, v14, v15];

  if (*(v19 + 24) == 1)
  {
    v11 = [(HFPredictionsManager *)self delegate];
    [v11 predictionsManagerDidUpdatePredictions:self];

    [(HFPredictionsManager *)self _queryUserActionPredictions];
  }

  _Block_object_dispose(&v18, 8);
}

BOOL __51__HFPredictionsManager_home_didRemoveServiceGroup___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [*(a1 + 32) uniqueIdentifier];

  if (v3 == v4)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return v3 != v4;
}

- (void)home:(id)a3 didRemoveActionSet:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v8 = [(HFPredictionsManager *)self predictions];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __48__HFPredictionsManager_home_didRemoveActionSet___block_invoke;
  v15 = &unk_277DF9D40;
  v9 = v7;
  v16 = v9;
  v17 = &v18;
  v10 = [v8 na_filter:&v12];
  [(HFPredictionsManager *)self setPredictions:v10, v12, v13, v14, v15];

  if (*(v19 + 24) == 1)
  {
    v11 = [(HFPredictionsManager *)self delegate];
    [v11 predictionsManagerDidUpdatePredictions:self];

    [(HFPredictionsManager *)self _queryUserActionPredictions];
  }

  _Block_object_dispose(&v18, 8);
}

BOOL __48__HFPredictionsManager_home_didRemoveActionSet___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [*(a1 + 32) uniqueIdentifier];

  if (v3 == v4)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return v3 != v4;
}

- (HFPredictionsManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end