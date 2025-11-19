@interface HDRaceRouteLocationSeriesQueryServer
+ (id)requiredEntitlements;
- (HDRaceRouteLocationSeriesQueryServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6;
- (void)_queue_start;
@end

@implementation HDRaceRouteLocationSeriesQueryServer

- (HDRaceRouteLocationSeriesQueryServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6
{
  v10 = a4;
  v18.receiver = self;
  v18.super_class = HDRaceRouteLocationSeriesQueryServer;
  v11 = [(HDQueryServer *)&v18 initWithUUID:a3 configuration:v10 client:a5 delegate:a6];
  if (v11)
  {
    v12 = [v10 clusterUUID];
    clusterUUID = v11->_clusterUUID;
    v11->_clusterUUID = v12;

    v11->_workoutSelection = [v10 workoutSelection];
    v14 = [v10 workoutUUID];
    workoutUUID = v11->_workoutUUID;
    v11->_workoutUUID = v14;

    [v10 timestampAnchor];
    v11->_timestampAnchor = v16;
    v11->_limit = [v10 limit];
  }

  return v11;
}

+ (id)requiredEntitlements
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = *MEMORY[0x277CCC8B0];
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)_queue_start
{
  v32.receiver = self;
  v32.super_class = HDRaceRouteLocationSeriesQueryServer;
  [(HDQueryServer *)&v32 _queue_start];
  v3 = [(HDQueryServer *)self queryUUID];
  v4 = [(HDQueryServer *)self clientProxy];
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__49;
  v30 = __Block_byref_object_dispose__49;
  v31 = objc_alloc_init(MEMORY[0x277CBEB18]);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __52__HDRaceRouteLocationSeriesQueryServer__queue_start__block_invoke;
  aBlock[3] = &unk_27861AA58;
  v25 = &v26;
  v5 = v4;
  v23 = v5;
  v6 = v3;
  v24 = v6;
  v7 = _Block_copy(aBlock);
  workoutUUID = self->_workoutUUID;
  if (!workoutUUID)
  {
    clusterUUID = self->_clusterUUID;
    workoutSelection = self->_workoutSelection;
    timestampAnchor = self->_timestampAnchor;
    limit = self->_limit;
    v18 = [(HDQueryServer *)self profile];
    v20 = 0;
    v19 = [HDRaceRouteClusterEntity enumerateRoutePointsForClusterUUID:clusterUUID workoutSelection:workoutSelection timestampAnchor:limit limit:v18 profile:&v20 error:v7 dataHandler:timestampAnchor];
    v13 = v20;

    if (v19)
    {
      goto LABEL_3;
    }

LABEL_5:
    [v5 client_deliverError:v13 forQuery:v6];
    goto LABEL_6;
  }

  v9 = self->_timestampAnchor;
  v10 = self->_limit;
  v11 = [(HDQueryServer *)self profile];
  v21 = 0;
  v12 = [HDRaceRouteWorkoutEntity enumerateRoutePointsForWorkoutUUID:workoutUUID timestampAnchor:v10 limit:v11 profile:&v21 error:v7 dataHandler:v9];
  v13 = v21;

  if (!v12)
  {
    goto LABEL_5;
  }

LABEL_3:
  [v5 client_deliverRaceRouteLocations:v27[5] isFinal:1 query:v6];
LABEL_6:

  _Block_object_dispose(&v26, 8);
}

uint64_t __52__HDRaceRouteLocationSeriesQueryServer__queue_start__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(*(*(a1 + 48) + 8) + 40) count] >= 0xC8)
  {
    [*(a1 + 32) client_deliverRaceRouteLocations:*(*(*(a1 + 48) + 8) + 40) isFinal:0 query:*(a1 + 40)];
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v5 = *(*(a1 + 48) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  [*(*(*(a1 + 48) + 8) + 40) addObject:v3];

  return 1;
}

@end