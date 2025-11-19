@interface HDHeartbeatSeriesFeatureStatusManagerServer
+ (id)createTaskServerWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6 error:(id *)a7;
+ (id)requiredEntitlements;
- (HDHeartbeatSeriesFeatureStatusManagerServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6;
- (id)_clientRemoteObjectProxy;
- (void)heartbeatSeriesFeatureStatusManager:(id)a3 didFailToUpdateWithError:(id)a4;
- (void)heartbeatSeriesFeatureStatusManager:(id)a3 didUpdatePredominantFeature:(int64_t)a4;
- (void)remote_startObservingChangesWithCompletion:(id)a3;
@end

@implementation HDHeartbeatSeriesFeatureStatusManagerServer

+ (id)createTaskServerWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6 error:(id *)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [v13 profile];
  v16 = [v15 profileExtensionWithIdentifier:*MEMORY[0x277D12F10]];

  if (v16)
  {
    v17 = [[HDHeartbeatSeriesFeatureStatusManagerServer alloc] initWithUUID:v11 configuration:v12 client:v13 delegate:v14];
  }

  else
  {
    v18 = [MEMORY[0x277CCA9B8] hk_error:3 format:{@"No profile extension found for %@", objc_opt_class()}];
    if (v18)
    {
      if (a7)
      {
        v19 = v18;
        *a7 = v18;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v17 = 0;
  }

  return v17;
}

- (HDHeartbeatSeriesFeatureStatusManagerServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6
{
  v10 = a5;
  v15.receiver = self;
  v15.super_class = HDHeartbeatSeriesFeatureStatusManagerServer;
  v11 = [(HDStandardTaskServer *)&v15 initWithUUID:a3 configuration:a4 client:v10 delegate:a6];
  if (v11)
  {
    v12 = [[HDHeartbeatSeriesFeatureStatusManager alloc] initWithClient:v10];
    manager = v11->_manager;
    v11->_manager = v12;
  }

  return v11;
}

- (void)remote_startObservingChangesWithCompletion:(id)a3
{
  manager = self->_manager;
  v5 = a3;
  [(HDHeartbeatSeriesFeatureStatusManager *)manager startObservingChangesWithDelegate:self];
  [(HDHeartbeatSeriesFeatureStatusManager *)self->_manager getPredominantFeatureWithCompletion:v5];
}

- (void)heartbeatSeriesFeatureStatusManager:(id)a3 didUpdatePredominantFeature:(int64_t)a4
{
  _HKInitializeLogging();
  v6 = HKLogHeartRateCategory();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);

  if (v7)
  {
    v8 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [HDHeartbeatSeriesFeatureStatusManagerServer heartbeatSeriesFeatureStatusManager:didUpdatePredominantFeature:];
    }
  }

  v9 = [(HDHeartbeatSeriesFeatureStatusManagerServer *)self _clientRemoteObjectProxy];
  [v9 client_heartbeatSeriesFeatureStatusManagerDidUpdatePredominantFeature:a4];
}

- (void)heartbeatSeriesFeatureStatusManager:(id)a3 didFailToUpdateWithError:(id)a4
{
  v5 = a4;
  _HKInitializeLogging();
  v6 = HKLogHeartRateCategory();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);

  if (v7)
  {
    v8 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [HDHeartbeatSeriesFeatureStatusManagerServer heartbeatSeriesFeatureStatusManager:didFailToUpdateWithError:];
    }
  }

  v9 = [(HDHeartbeatSeriesFeatureStatusManagerServer *)self _clientRemoteObjectProxy];
  [v9 client_heartbeatSeriesFeatureStatusManagerDidFailToUpdateWithError:v5];
}

- (id)_clientRemoteObjectProxy
{
  v2 = [(HDStandardTaskServer *)self client];
  v3 = [v2 connection];
  v4 = [v3 remoteObjectProxy];

  return v4;
}

+ (id)requiredEntitlements
{
  v6[2] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CCC1F0];
  v6[0] = *MEMORY[0x277CCC1B8];
  v6[1] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];
  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)heartbeatSeriesFeatureStatusManager:didUpdatePredominantFeature:.cold.1()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = NSStringFromHKHeartbeatSeriesFeature();
  v9 = HKSensitiveLogItem();
  OUTLINED_FUNCTION_0_6(&dword_229486000, v2, v3, "[%{public}@] Received notification of predominant feature update: %{public}@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)heartbeatSeriesFeatureStatusManager:didFailToUpdateWithError:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  OUTLINED_FUNCTION_0_6(&dword_229486000, v1, v2, "[%{public}@] Received notification of update error: %{public}@", v3, v4, v5, v6, 2u);

  v7 = *MEMORY[0x277D85DE8];
}

@end