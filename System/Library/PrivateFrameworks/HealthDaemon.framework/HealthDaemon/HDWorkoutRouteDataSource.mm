@interface HDWorkoutRouteDataSource
+ (id)requiredEntitlements;
- (HDWorkoutRouteDataSource)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6;
- (NSString)description;
- (id)_queue_createLocationDataCollectorWithConfiguration:(id)a3 workoutUUID:(id)a4;
- (id)_unitTest_locationDataCollector;
- (id)_workoutBuilderServer;
- (void)_queue_setupLocationDataCollector;
- (void)altitudeUpdated:(double)a3;
- (void)connectionInvalidated;
- (void)elevationUpdated:(unint64_t)a3;
- (void)remote_setupWithSessionIdentifier:(id)a3;
- (void)workoutDataDestination:(id)a3 didBeginActivity:(id)a4;
- (void)workoutDataDestination:(id)a3 didEndActivity:(id)a4;
- (void)workoutDataDestination:(id)a3 didUpdateConfiguration:(id)a4;
- (void)workoutDataDestination:(id)a3 requestsDataFrom:(id)a4 to:(id)a5;
- (void)workoutDataDestination:(id)a3 requestsFinalDataFrom:(id)a4 to:(id)a5 completion:(id)a6;
- (void)workoutRouteUpdated:(id)a3;
- (void)workoutSession:(id)a3 didChangeToState:(int64_t)a4 fromState:(int64_t)a5 date:(id)a6;
@end

@implementation HDWorkoutRouteDataSource

- (HDWorkoutRouteDataSource)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6
{
  v15.receiver = self;
  v15.super_class = HDWorkoutRouteDataSource;
  v6 = [(HDStandardTaskServer *)&v15 initWithUUID:a3 configuration:a4 client:a5 delegate:a6];
  if (v6)
  {
    v7 = HKCreateSerialDispatchQueue();
    queue = v6->_queue;
    v6->_queue = v7;

    v9 = [MEMORY[0x277CCDAB0] meterUnitWithMetricPrefix:5];
    elevationUnit = v6->_elevationUnit;
    v6->_elevationUnit = v9;

    _HKInitializeLogging();
    v11 = objc_alloc(MEMORY[0x277CCD2B0]);
    v12 = [v11 initWithProcessor:v6 sourceProtocol:&unk_283CBA250 destinationProtocol:&unk_283CD7C50 loggingCategory:*MEMORY[0x277CCC330]];
    workoutDataFlowLink = v6->_workoutDataFlowLink;
    v6->_workoutDataFlowLink = v12;
  }

  return v6;
}

+ (id)requiredEntitlements
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = *MEMORY[0x277CCC8B0];
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(HDStandardTaskServer *)self taskUUID];
  v6 = [v3 stringWithFormat:@"<%@:%p %@>", v4, self, v5];

  return v6;
}

- (void)remote_setupWithSessionIdentifier:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [v4 UUIDString];
    *buf = 138543618;
    v15 = self;
    v16 = 2114;
    v17 = v7;
    _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_DEFAULT, "[routes] Will setup route data source: %{public}@, session: %{public}@", buf, 0x16u);
  }

  v8 = [(HDStandardTaskServer *)self profile];
  v9 = [v8 workoutManager];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __62__HDWorkoutRouteDataSource_remote_setupWithSessionIdentifier___block_invoke;
  v12[3] = &unk_278613858;
  v12[4] = self;
  v13 = v4;
  v10 = v4;
  [v9 sessionServerFromSessionIdentifier:v10 completion:v12];

  v11 = *MEMORY[0x277D85DE8];
}

void __62__HDWorkoutRouteDataSource_remote_setupWithSessionIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 104);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__HDWorkoutRouteDataSource_remote_setupWithSessionIdentifier___block_invoke_2;
  block[3] = &unk_278613830;
  v9 = v3;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v5;
  v11 = v6;
  v7 = v3;
  dispatch_async(v4, block);
}

void __62__HDWorkoutRouteDataSource_remote_setupWithSessionIdentifier___block_invoke_2(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  if (v2)
  {
    objc_storeWeak((a1[6] + 40), v2);
    WeakRetained = objc_loadWeakRetained((a1[6] + 40));
    [WeakRetained addObserver:a1[6] queue:*(a1[6] + 104)];

    v4 = a1[6];
    v5 = *MEMORY[0x277D85DE8];

    [v4 _queue_setupLocationDataCollector];
  }

  else
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      v8 = a1[5];
      v9 = v6;
      v10 = [v8 UUIDString];
      v11 = 138543362;
      v12 = v10;
      _os_log_error_impl(&dword_228986000, v9, OS_LOG_TYPE_ERROR, "Couldn't link workout route data source to session %{public}@", &v11, 0xCu);
    }

    v7 = *MEMORY[0x277D85DE8];
  }
}

- (void)workoutSession:(id)a3 didChangeToState:(int64_t)a4 fromState:(int64_t)a5 date:(id)a6
{
  v13 = a3;
  dispatch_assert_queue_V2(self->_queue);
  if (a4 > 8)
  {
    if (a4 == 9)
    {
      v9 = [v13 workoutConfiguration];
      v10 = [v9 activityType];
      if (v10 == 67 || v10 == 61) && (_os_feature_enabled_impl())
      {

        [(HDLocationDataCollector *)self->_locationDataCollector pauseUpdatesAfterDelay:15];
      }

      else
      {
      }
    }

    else if (a4 == 11 || a4 == 17 && (a5 & 0xFFFFFFFFFFFFFFFDLL) == 8)
    {
      [(HDLocationDataCollector *)self->_locationDataCollector stopUpdates];
    }

    goto LABEL_21;
  }

  if (a4 != 7)
  {
    if (a4 == 8)
    {
      [(HDLocationDataCollector *)self->_locationDataCollector pauseUpdates];
    }

    goto LABEL_21;
  }

  if ((a5 & 0xFFFFFFFFFFFFFFFDLL) == 8)
  {
LABEL_19:
    [(HDLocationDataCollector *)self->_locationDataCollector resumeUpdates];
    goto LABEL_21;
  }

  v11 = [v13 workoutConfiguration];
  v12 = [v11 activityType];
  if ((v12 == 67 || v12 == 61) && _os_feature_enabled_impl())
  {

    goto LABEL_19;
  }

  if (a5 != 9)
  {
    [(HDLocationDataCollector *)self->_locationDataCollector startUpdates];
  }

LABEL_21:
}

- (void)elevationUpdated:(unint64_t)a3
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __45__HDWorkoutRouteDataSource_elevationUpdated___block_invoke;
  v4[3] = &unk_2786138F8;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(queue, v4);
}

void __45__HDWorkoutRouteDataSource_elevationUpdated___block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCD7E8] quantityWithUnit:*(*(a1 + 32) + 64) doubleValue:*(a1 + 40)];
  _HKInitializeLogging();
  v3 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(*(a1 + 32) + 72);
    *buf = 138412546;
    v34 = v2;
    v35 = 2112;
    v36 = v4;
    _os_log_impl(&dword_228986000, v3, OS_LOG_TYPE_DEFAULT, "[routes] Add elevation: %@ to elevation: %@", buf, 0x16u);
  }

  v5 = *(a1 + 32);
  v6 = *(v5 + 72);
  if (v6)
  {
    v7 = [v6 _quantityByAddingQuantity:v2];
    v8 = *(a1 + 32);
    v9 = *(v8 + 72);
    *(v8 + 72) = v7;
  }

  else
  {
    v10 = v2;
    v9 = *(v5 + 72);
    *(v5 + 72) = v10;
  }

  v31 = *MEMORY[0x277CCC488];
  v32 = *(*(a1 + 32) + 72);
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
  v12 = [*(*(a1 + 32) + 96) UUID];
  v13 = v12;
  v14 = *(*(a1 + 32) + 56);
  if (v12)
  {
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __45__HDWorkoutRouteDataSource_elevationUpdated___block_invoke_2;
    v25[3] = &unk_2786138A8;
    v15 = &v26;
    v26 = v12;
    v16 = v11;
    v17 = *(a1 + 32);
    v27 = v16;
    v28 = v17;
    [v14 sendToDestinationProcessors:v25];
  }

  else
  {
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __45__HDWorkoutRouteDataSource_elevationUpdated___block_invoke_421;
    v29[3] = &unk_278613880;
    v15 = v30;
    v18 = v11;
    v19 = *(a1 + 32);
    v30[0] = v18;
    v30[1] = v19;
    [v14 sendToDestinationProcessors:v29];
  }

  v20 = [*(a1 + 32) client];
  v21 = [v20 connection];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __45__HDWorkoutRouteDataSource_elevationUpdated___block_invoke_3;
  v24[3] = &unk_2786138D0;
  v24[4] = *(a1 + 32);
  v22 = [v21 remoteObjectProxyWithErrorHandler:v24];

  [v22 clientRemote_didUpdateElevation:*(*(a1 + 32) + 72)];
  v23 = *MEMORY[0x277D85DE8];
}

void __45__HDWorkoutRouteDataSource_elevationUpdated___block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 updateActivityWithUUID:a1[4] addMedatata:a1[5] dataSource:a1[6]];
  }
}

void __45__HDWorkoutRouteDataSource_elevationUpdated___block_invoke_3(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = v3;
    _os_log_error_impl(&dword_228986000, v4, OS_LOG_TYPE_ERROR, "%{public}@: Failed to notify client of elevation update: %{public}@", &v7, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)workoutRouteUpdated:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__HDWorkoutRouteDataSource_workoutRouteUpdated___block_invoke;
  v7[3] = &unk_278613920;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __48__HDWorkoutRouteDataSource_workoutRouteUpdated___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 56);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __48__HDWorkoutRouteDataSource_workoutRouteUpdated___block_invoke_2;
  v9[3] = &unk_278613880;
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v10 = v3;
  v11 = v4;
  [v2 sendToDestinationProcessors:v9];
  v5 = [*(a1 + 32) client];
  v6 = [v5 connection];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__HDWorkoutRouteDataSource_workoutRouteUpdated___block_invoke_3;
  v8[3] = &unk_2786138D0;
  v8[4] = *(a1 + 32);
  v7 = [v6 remoteObjectProxyWithErrorHandler:v8];

  [v7 clientRemote_didUpdateRoute:*(a1 + 40)];
}

void __48__HDWorkoutRouteDataSource_workoutRouteUpdated___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 32);
  v3 = MEMORY[0x277CBEA60];
  v4 = a2;
  v5 = [v3 arrayWithObjects:&v7 count:1];
  [v4 addOtherSamples:v5 dataSource:{*(a1 + 40), v7, v8}];

  v6 = *MEMORY[0x277D85DE8];
}

void __48__HDWorkoutRouteDataSource_workoutRouteUpdated___block_invoke_3(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = v3;
    _os_log_error_impl(&dword_228986000, v4, OS_LOG_TYPE_ERROR, "%{public}@: Failed to notify client of route update: %{public}@", &v7, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)altitudeUpdated:(double)a3
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44__HDWorkoutRouteDataSource_altitudeUpdated___block_invoke;
  v4[3] = &unk_2786138F8;
  *&v4[5] = a3;
  v4[4] = self;
  dispatch_async(queue, v4);
}

void __44__HDWorkoutRouteDataSource_altitudeUpdated___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CCD7E8];
  v3 = [MEMORY[0x277CCDAB0] meterUnit];
  v4 = [v2 quantityWithUnit:v3 doubleValue:*(a1 + 40)];

  v5 = *(a1 + 32);
  v6 = *(v5 + 80);
  v7 = &unk_229165000;
  if (!v6)
  {
    v9 = v4;
    goto LABEL_6;
  }

  if ([v6 compare:v4])
  {
    v5 = *(a1 + 32);
    v8 = v4;
    if (!v5)
    {
LABEL_15:

      v19 = [*(a1 + 32) client];
      v20 = [v19 connection];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = v7[323];
      v22[2] = __44__HDWorkoutRouteDataSource_altitudeUpdated___block_invoke_2;
      v22[3] = &unk_2786138D0;
      v22[4] = *(a1 + 32);
      v21 = [v20 remoteObjectProxyWithErrorHandler:v22];

      [v21 clientRemote_didUpdateAltitude:v4];
      objc_storeStrong((*(a1 + 32) + 80), v4);

      goto LABEL_16;
    }

LABEL_6:
    v10 = [(HDWorkoutRouteDataSource *)v5 _workoutBuilderServer];
    v11 = [v10 currentMetadata];
    v12 = *MEMORY[0x277CCE198];
    v13 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCE198]];

    v14 = [v10 currentMetadata];
    v15 = *MEMORY[0x277CCE190];
    v16 = [v14 objectForKeyedSubscript:*MEMORY[0x277CCE190]];

    v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
    if (!v13 || [v13 compare:v4] == 1)
    {
      [v17 setObject:v4 forKeyedSubscript:v12];
    }

    if (!v16 || [v16 compare:v4] == -1)
    {
      [v17 setObject:v4 forKeyedSubscript:v15];
    }

    v7 = &unk_229165000;
    if ([v17 count])
    {
      v18 = *(v5 + 56);
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __52__HDWorkoutRouteDataSource__updateMetadataIfNeeded___block_invoke;
      v23[3] = &unk_278613880;
      v24 = v17;
      v25 = v5;
      [v18 sendToDestinationProcessors:v23];
    }

    goto LABEL_15;
  }

LABEL_16:
}

void __44__HDWorkoutRouteDataSource_altitudeUpdated___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = v3;
    _os_log_error_impl(&dword_228986000, v4, OS_LOG_TYPE_ERROR, "%{public}@: Failed to notify client of altitude update: %{public}@", &v7, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (id)_workoutBuilderServer
{
  if (a1)
  {
    v1 = [*(a1 + 56) allDestinationProcessors];
    v2 = [v1 hk_firstObjectPassingTest:&__block_literal_global_1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void __58__HDWorkoutRouteDataSource__queue_recoverCurrentElevation__block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = v3;
    _os_log_error_impl(&dword_228986000, v4, OS_LOG_TYPE_ERROR, "%{public}@: Failed to notify client of elevation update: %{public}@", &v7, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

uint64_t __49__HDWorkoutRouteDataSource__workoutBuilderServer__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)_queue_setupLocationDataCollector
{
  v33 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  if (!self->_locationDataCollector)
  {
    v3 = [(HDWorkoutRouteDataSource *)self _workoutBuilderServer];
    if (!v3)
    {
      goto LABEL_18;
    }

    WeakRetained = objc_loadWeakRetained(&self->_sessionServer);

    if (!WeakRetained)
    {
      goto LABEL_18;
    }

    v5 = objc_loadWeakRetained(&self->_sessionServer);
    v6 = [v5 currentActivity];
    v7 = [v6 workoutConfiguration];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v10 = objc_loadWeakRetained(&self->_sessionServer);
      v9 = [v10 workoutConfiguration];
    }

    [v9 locationType];
    [v9 activityType];
    [v9 swimmingLocationType];
    if ((_HKWorkoutActivityTypeIsRouteable() & 1) == 0)
    {
      _HKInitializeLogging();
      v23 = *MEMORY[0x277CCC330];
      if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
      {
        v24 = v23;
        v25 = objc_loadWeakRetained(&self->_sessionServer);
        v26 = [v25 identifier];
        *v30 = 138543618;
        *&v30[4] = v26;
        *&v30[12] = 2112;
        *&v30[14] = v9;
        _os_log_impl(&dword_228986000, v24, OS_LOG_TYPE_DEFAULT, "[routes] Workout route will not be tracked because activity is not routeable for session %{public}@, workout configuration %@", v30, 0x16u);
      }

      goto LABEL_17;
    }

    dispatch_assert_queue_V2(self->_queue);
    v11 = [(HDWorkoutRouteDataSource *)self _workoutBuilderServer];
    v12 = v11;
    if (v11)
    {
      v13 = [v11 currentMetadata];
      v14 = [v13 objectForKeyedSubscript:*MEMORY[0x277CCC488]];
      currentElevation = self->_currentElevation;
      self->_currentElevation = v14;

      if (self->_currentElevation)
      {
        v16 = [(HDStandardTaskServer *)self client];
        v17 = [v16 connection];
        *v30 = MEMORY[0x277D85DD0];
        *&v30[8] = 3221225472;
        *&v30[16] = __58__HDWorkoutRouteDataSource__queue_recoverCurrentElevation__block_invoke;
        v31 = &unk_2786138D0;
        v32 = self;
        v18 = [v17 remoteObjectProxyWithErrorHandler:v30];

        [v18 clientRemote_didUpdateElevation:self->_currentElevation];
      }
    }

    v19 = [v3 taskUUID];
    v20 = [(HDWorkoutRouteDataSource *)self _queue_createLocationDataCollectorWithConfiguration:v9 workoutUUID:v19];
    locationDataCollector = self->_locationDataCollector;
    self->_locationDataCollector = v20;

    [(HDLocationDataCollector *)self->_locationDataCollector setDelegate:self];
    v22 = objc_loadWeakRetained(&self->_sessionServer);
    if ([v22 state] == 7)
    {
    }

    else
    {
      v27 = objc_loadWeakRetained(&self->_sessionServer);
      v28 = [v27 state];

      if (v28 != 9)
      {
LABEL_17:

LABEL_18:
        goto LABEL_19;
      }
    }

    [(HDLocationDataCollector *)self->_locationDataCollector startUpdates];
    goto LABEL_17;
  }

LABEL_19:
  v29 = *MEMORY[0x277D85DE8];
}

- (id)_queue_createLocationDataCollectorWithConfiguration:(id)a3 workoutUUID:(id)a4
{
  queue = self->_queue;
  v7 = a4;
  v8 = a3;
  dispatch_assert_queue_V2(queue);
  v9 = [HDLocationDataCollector alloc];
  v10 = [(HDStandardTaskServer *)self profile];
  v11 = [(HDStandardTaskServer *)self delegate];
  v12 = [v11 sampleSavingDelegate];
  v13 = [(HDLocationDataCollector *)v9 initWithProfile:v10 sampleSavingDelegate:v12 configuration:v8 workoutUUID:v7];

  return v13;
}

- (void)connectionInvalidated
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__HDWorkoutRouteDataSource_connectionInvalidated__block_invoke;
  block[3] = &unk_278613968;
  block[4] = self;
  dispatch_async(queue, block);
}

void __49__HDWorkoutRouteDataSource_connectionInvalidated__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 48) stopUpdates];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 40));
  [WeakRetained removeObserver:*(a1 + 32)];
}

- (void)workoutDataDestination:(id)a3 requestsDataFrom:(id)a4 to:(id)a5
{
  v6 = a3;
  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __71__HDWorkoutRouteDataSource_workoutDataDestination_requestsDataFrom_to___block_invoke;
  v9[3] = &unk_278613920;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(queue, v9);
}

void __71__HDWorkoutRouteDataSource_workoutDataDestination_requestsDataFrom_to___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = MEMORY[0x277CCC330];
  v3 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v10 = 138543618;
    v11 = v4;
    v12 = 2114;
    v13 = v5;
    _os_log_impl(&dword_228986000, v3, OS_LOG_TYPE_DEFAULT, "[routes] Data destination requests data from route data source: %{public}@, data destination: %{public}@", &v10, 0x16u);
  }

  v6 = *(a1 + 40);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) _queue_setupLocationDataCollector];
  }

  else
  {
    _HKInitializeLogging();
    v7 = *v2;
    if (os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v10 = 138543362;
      v11 = v9;
      _os_log_error_impl(&dword_228986000, v7, OS_LOG_TYPE_ERROR, "%{public}@, Expected HDWorkoutBuilderServer as a direct data destination", &v10, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)workoutDataDestination:(id)a3 requestsFinalDataFrom:(id)a4 to:(id)a5 completion:(id)a6
{
  v7 = a6;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __87__HDWorkoutRouteDataSource_workoutDataDestination_requestsFinalDataFrom_to_completion___block_invoke;
  block[3] = &unk_278613658;
  v11 = v7;
  v9 = v7;
  dispatch_async(queue, block);
}

- (void)workoutDataDestination:(id)a3 didUpdateConfiguration:(id)a4
{
  if ([a4 locationType] == 2)
  {
    _HKInitializeLogging();
    v5 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, "[routes] Workout configuration updated to Indoor", v6, 2u);
    }

    [(HDLocationDataCollector *)self->_locationDataCollector stopUpdatesAndDiscardData];
  }
}

- (void)workoutDataDestination:(id)a3 didBeginActivity:(id)a4
{
  v5 = a4;
  v6 = [(HKWorkoutActivity *)v5 workoutConfiguration];
  [v6 locationType];
  [v6 activityType];
  [v6 swimmingLocationType];
  if ((_HKWorkoutActivityTypeIsRouteable() & 1) == 0)
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_DEFAULT, "[routes] Workout activity updated to Indoor. Stopping location updates", v9, 2u);
    }

    [(HDLocationDataCollector *)self->_locationDataCollector stopUpdates];
  }

  currentActivity = self->_currentActivity;
  self->_currentActivity = v5;
}

- (void)workoutDataDestination:(id)a3 didEndActivity:(id)a4
{
  currentActivity = self->_currentActivity;
  self->_currentActivity = 0;
  MEMORY[0x2821F96F8]();
}

- (id)_unitTest_locationDataCollector
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__3;
  v10 = __Block_byref_object_dispose__3;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __59__HDWorkoutRouteDataSource__unitTest_locationDataCollector__block_invoke;
  v5[3] = &unk_278613990;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

@end