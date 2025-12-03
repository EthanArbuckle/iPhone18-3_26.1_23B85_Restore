@interface HDRaceRouteClusterServer
+ (id)createTaskServerWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate error:(id *)error;
+ (id)requiredEntitlements;
- (void)remote_fetchRaceRouteClustersForActivityType:(unint64_t)type completion:(id)completion;
@end

@implementation HDRaceRouteClusterServer

+ (id)createTaskServerWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate error:(id *)error
{
  dCopy = d;
  configurationCopy = configuration;
  clientCopy = client;
  delegateCopy = delegate;
  profile = [clientCopy profile];
  v16 = [profile profileExtensionWithIdentifier:@"com.apple.health.RacePreviousRoute"];

  raceRouteClusterManager = [v16 raceRouteClusterManager];
  if (raceRouteClusterManager)
  {
    v18 = [(HDStandardTaskServer *)[HDRaceRouteClusterServer alloc] initWithUUID:dCopy configuration:configurationCopy client:clientCopy delegate:delegateCopy];
    v19 = raceRouteClusterManager;
    raceRouteClusterManager = v18->_raceRouteClusterManager;
    v18->_raceRouteClusterManager = v19;
  }

  else
  {
    raceRouteClusterManager = [MEMORY[0x277CCA9B8] hk_featureUnavailableForProfileError];
    if (raceRouteClusterManager)
    {
      if (error)
      {
        v21 = raceRouteClusterManager;
        *error = raceRouteClusterManager;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v18 = 0;
  }

  return v18;
}

- (void)remote_fetchRaceRouteClustersForActivityType:(unint64_t)type completion:(id)completion
{
  v24 = *MEMORY[0x277D85DE8];
  raceRouteClusterManager = self->_raceRouteClusterManager;
  v15 = 0;
  completionCopy = completion;
  v7 = [(HDRaceRouteClusterManager *)raceRouteClusterManager raceRouteClustersForActivityType:type error:&v15];
  v8 = v15;
  _HKInitializeLogging();
  v9 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = [v7 count];
    v12 = HKStringFromBool();
    localizedDescription = [v8 localizedDescription];
    *buf = 134218754;
    typeCopy = type;
    v18 = 2048;
    v19 = v11;
    v20 = 2114;
    v21 = v12;
    v22 = 2114;
    v23 = localizedDescription;
    _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_DEFAULT, "Fetched racing clusters (activity-type %lu, count %lu) with success=%{public}@, error=%{public}@", buf, 0x2Au);
  }

  completionCopy[2](completionCopy, v7, v8);

  v14 = *MEMORY[0x277D85DE8];
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