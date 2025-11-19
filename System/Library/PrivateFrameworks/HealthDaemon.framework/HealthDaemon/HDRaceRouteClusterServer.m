@interface HDRaceRouteClusterServer
+ (id)createTaskServerWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6 error:(id *)a7;
+ (id)requiredEntitlements;
- (void)remote_fetchRaceRouteClustersForActivityType:(unint64_t)a3 completion:(id)a4;
@end

@implementation HDRaceRouteClusterServer

+ (id)createTaskServerWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6 error:(id *)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [v13 profile];
  v16 = [v15 profileExtensionWithIdentifier:@"com.apple.health.RacePreviousRoute"];

  v17 = [v16 raceRouteClusterManager];
  if (v17)
  {
    v18 = [(HDStandardTaskServer *)[HDRaceRouteClusterServer alloc] initWithUUID:v11 configuration:v12 client:v13 delegate:v14];
    v19 = v17;
    raceRouteClusterManager = v18->_raceRouteClusterManager;
    v18->_raceRouteClusterManager = v19;
  }

  else
  {
    raceRouteClusterManager = [MEMORY[0x277CCA9B8] hk_featureUnavailableForProfileError];
    if (raceRouteClusterManager)
    {
      if (a7)
      {
        v21 = raceRouteClusterManager;
        *a7 = raceRouteClusterManager;
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

- (void)remote_fetchRaceRouteClustersForActivityType:(unint64_t)a3 completion:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  raceRouteClusterManager = self->_raceRouteClusterManager;
  v15 = 0;
  v6 = a4;
  v7 = [(HDRaceRouteClusterManager *)raceRouteClusterManager raceRouteClustersForActivityType:a3 error:&v15];
  v8 = v15;
  _HKInitializeLogging();
  v9 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = [v7 count];
    v12 = HKStringFromBool();
    v13 = [v8 localizedDescription];
    *buf = 134218754;
    v17 = a3;
    v18 = 2048;
    v19 = v11;
    v20 = 2114;
    v21 = v12;
    v22 = 2114;
    v23 = v13;
    _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_DEFAULT, "Fetched racing clusters (activity-type %lu, count %lu) with success=%{public}@, error=%{public}@", buf, 0x2Au);
  }

  v6[2](v6, v7, v8);

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