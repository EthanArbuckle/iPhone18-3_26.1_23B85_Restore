@interface HDHeartbeatSeriesFeatureStatusManagerServer
+ (id)createTaskServerWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate error:(id *)error;
+ (id)requiredEntitlements;
- (HDHeartbeatSeriesFeatureStatusManagerServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate;
- (id)_clientRemoteObjectProxy;
- (void)heartbeatSeriesFeatureStatusManager:(id)manager didFailToUpdateWithError:(id)error;
- (void)heartbeatSeriesFeatureStatusManager:(id)manager didUpdatePredominantFeature:(int64_t)feature;
- (void)remote_startObservingChangesWithCompletion:(id)completion;
@end

@implementation HDHeartbeatSeriesFeatureStatusManagerServer

+ (id)createTaskServerWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate error:(id *)error
{
  dCopy = d;
  configurationCopy = configuration;
  clientCopy = client;
  delegateCopy = delegate;
  profile = [clientCopy profile];
  v16 = [profile profileExtensionWithIdentifier:*MEMORY[0x277D12F10]];

  if (v16)
  {
    v17 = [[HDHeartbeatSeriesFeatureStatusManagerServer alloc] initWithUUID:dCopy configuration:configurationCopy client:clientCopy delegate:delegateCopy];
  }

  else
  {
    v18 = [MEMORY[0x277CCA9B8] hk_error:3 format:{@"No profile extension found for %@", objc_opt_class()}];
    if (v18)
    {
      if (error)
      {
        v19 = v18;
        *error = v18;
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

- (HDHeartbeatSeriesFeatureStatusManagerServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate
{
  clientCopy = client;
  v15.receiver = self;
  v15.super_class = HDHeartbeatSeriesFeatureStatusManagerServer;
  v11 = [(HDStandardTaskServer *)&v15 initWithUUID:d configuration:configuration client:clientCopy delegate:delegate];
  if (v11)
  {
    v12 = [[HDHeartbeatSeriesFeatureStatusManager alloc] initWithClient:clientCopy];
    manager = v11->_manager;
    v11->_manager = v12;
  }

  return v11;
}

- (void)remote_startObservingChangesWithCompletion:(id)completion
{
  manager = self->_manager;
  completionCopy = completion;
  [(HDHeartbeatSeriesFeatureStatusManager *)manager startObservingChangesWithDelegate:self];
  [(HDHeartbeatSeriesFeatureStatusManager *)self->_manager getPredominantFeatureWithCompletion:completionCopy];
}

- (void)heartbeatSeriesFeatureStatusManager:(id)manager didUpdatePredominantFeature:(int64_t)feature
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

  _clientRemoteObjectProxy = [(HDHeartbeatSeriesFeatureStatusManagerServer *)self _clientRemoteObjectProxy];
  [_clientRemoteObjectProxy client_heartbeatSeriesFeatureStatusManagerDidUpdatePredominantFeature:feature];
}

- (void)heartbeatSeriesFeatureStatusManager:(id)manager didFailToUpdateWithError:(id)error
{
  errorCopy = error;
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

  _clientRemoteObjectProxy = [(HDHeartbeatSeriesFeatureStatusManagerServer *)self _clientRemoteObjectProxy];
  [_clientRemoteObjectProxy client_heartbeatSeriesFeatureStatusManagerDidFailToUpdateWithError:errorCopy];
}

- (id)_clientRemoteObjectProxy
{
  client = [(HDStandardTaskServer *)self client];
  connection = [client connection];
  remoteObjectProxy = [connection remoteObjectProxy];

  return remoteObjectProxy;
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