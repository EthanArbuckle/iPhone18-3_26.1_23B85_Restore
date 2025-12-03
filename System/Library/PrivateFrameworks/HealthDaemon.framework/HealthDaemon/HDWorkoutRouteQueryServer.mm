@interface HDWorkoutRouteQueryServer
- (HDWorkoutRouteQueryServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate;
- (void)_queue_start;
@end

@implementation HDWorkoutRouteQueryServer

- (HDWorkoutRouteQueryServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate
{
  configurationCopy = configuration;
  v19.receiver = self;
  v19.super_class = HDWorkoutRouteQueryServer;
  v11 = [(HDQueryServer *)&v19 initWithUUID:d configuration:configurationCopy client:client delegate:delegate];
  if (v11)
  {
    workoutRoute = [configurationCopy workoutRoute];
    locationSeries = v11->_locationSeries;
    v11->_locationSeries = workoutRoute;

    workoutUUID = [configurationCopy workoutUUID];
    workoutUUID = v11->_workoutUUID;
    v11->_workoutUUID = workoutUUID;

    dateInterval = [configurationCopy dateInterval];
    dateInterval = v11->_dateInterval;
    v11->_dateInterval = dateInterval;

    v11->_batchThreshold = 100;
  }

  return v11;
}

- (void)_queue_start
{
  v30.receiver = self;
  v30.super_class = HDWorkoutRouteQueryServer;
  [(HDQueryServer *)&v30 _queue_start];
  queryUUID = [(HDQueryServer *)self queryUUID];
  clientProxy = [(HDQueryServer *)self clientProxy];
  workoutRouteType = [MEMORY[0x277CCD920] workoutRouteType];
  v29 = 0;
  v6 = [(HDQueryServer *)self authorizationStatusRecordForType:workoutRouteType error:&v29];
  v7 = v29;

  if (!v6)
  {
    [clientProxy client_deliverError:v7 forQuery:queryUUID];
LABEL_7:
    v13 = v7;
    goto LABEL_10;
  }

  if (([v6 canRead] & 1) == 0)
  {
    [clientProxy client_deliverWorkoutRouteLocations:MEMORY[0x277CBEBF8] isFinal:1 query:queryUUID];
    goto LABEL_7;
  }

  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__115;
  v27 = __Block_byref_object_dispose__115;
  v28 = objc_alloc_init(MEMORY[0x277CBEB18]);
  profile = [(HDQueryServer *)self profile];
  database = [profile database];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __41__HDWorkoutRouteQueryServer__queue_start__block_invoke;
  v17 = &unk_27861A500;
  selfCopy = self;
  v21 = &v23;
  v22 = v7;
  v10 = clientProxy;
  v19 = v10;
  v11 = queryUUID;
  v20 = v11;
  v12 = [(HDHealthEntity *)HDLocationSeriesSampleEntity performReadTransactionWithHealthDatabase:database error:&v22 block:&v14];
  v13 = v22;

  if (v12)
  {
    [v10 client_deliverWorkoutRouteLocations:v24[5] isFinal:1 query:{v11, v14, v15, v16, v17, selfCopy, v19}];
  }

  else
  {
    [v10 client_deliverError:v13 forQuery:{v11, v14, v15, v16, v17, selfCopy, v19}];
  }

  _Block_object_dispose(&v23, 8);
LABEL_10:
}

uint64_t __41__HDWorkoutRouteQueryServer__queue_start__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v73[1] = *MEMORY[0x277D85DE8];
  v58 = a2;
  v5 = *(a1 + 32);
  if (v5[27])
  {
    v72 = v5[27];
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v72 count:1];
  }

  else
  {
    v34 = [v5 client];
    v35 = [v34 hasRequiredEntitlement:*MEMORY[0x277CCC8B0] error:a3];

    if (!v35)
    {
      goto LABEL_26;
    }

    v36 = [*(a1 + 32) profile];
    v37 = [v36 metadataManager];
    v38 = *MEMORY[0x277CCE118];
    v39 = [*(*(a1 + 32) + 224) UUIDString];
    v40 = [v37 predicateWithMetadataKey:v38 value:v39 operatorType:4];

    v33 = *(a1 + 32);
    if (!v33)
    {

      goto LABEL_34;
    }

    v41 = MEMORY[0x277CBEB18];
    v42 = v40;
    v43 = objc_alloc_init(v41);
    v44 = [MEMORY[0x277CCD8D8] dataTypeWithCode:102];
    v45 = [v33 profile];
    v46 = [HDSampleEntity entityEnumeratorWithType:v44 profile:v45];

    [v46 setPredicate:v42];
    v47 = [MEMORY[0x277D10B68] orderingTermWithProperty:@"start_date" entityClass:objc_opt_class() ascending:1];
    v73[0] = v47;
    v48 = [MEMORY[0x277CBEA60] arrayWithObjects:v73 count:1];
    [v46 setOrderingTerms:v48];

    [v46 setIgnoreEntityClassAdditionalPredicateForEnumeration:1];
    v69[0] = MEMORY[0x277D85DD0];
    v69[1] = 3221225472;
    v69[2] = __67__HDWorkoutRouteQueryServer__workoutRoutesMatchingPredicate_error___block_invoke;
    v69[3] = &unk_2786204C8;
    v70 = v43;
    v6 = v43;
    v49 = [v46 enumerateWithError:a3 handler:v69] ? v6 : 0;
    v50 = v49;

    if (!v50)
    {
LABEL_26:
      v33 = 0;
      goto LABEL_34;
    }
  }

  v57 = [v58 databaseForEntityClass:objc_opt_class()];
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  obj = v6;
  v7 = [obj countByEnumeratingWithState:&v65 objects:v71 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v66;
    v55 = a3;
    v10 = 0x280D58000uLL;
LABEL_5:
    v11 = 0;
    while (1)
    {
      if (*v66 != v9)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v65 + 1) + 8 * v11);
      v13 = *(v10 + 3916);
      if (!*(*(a1 + 32) + v13))
      {
        goto LABEL_13;
      }

      v14 = [*(*(&v65 + 1) + 8 * v11) endDate];
      v15 = [*(*(a1 + 32) + v13) startDate];
      v16 = [v14 hk_isBeforeDate:v15];

      if ((v16 & 1) == 0)
      {
        v17 = [v12 startDate];
        v18 = [*(*(a1 + 32) + v13) endDate];
        v19 = [v17 hk_isAfterDate:v18];

        if ((v19 & 1) == 0)
        {
          break;
        }
      }

LABEL_17:
      if (v8 == ++v11)
      {
        v8 = [obj countByEnumeratingWithState:&v65 objects:v71 count:16];
        if (v8)
        {
          goto LABEL_5;
        }

        goto LABEL_19;
      }
    }

    v20 = [*(*(a1 + 32) + v13) startDate];
    v21 = [v12 startDate];
    v22 = [v20 hk_isAfterDate:v21];

    if (v22)
    {
      v23 = [*(*(a1 + 32) + v13) startDate];
    }

    else
    {
LABEL_13:
      v23 = 0;
    }

    v24 = [v12 UUID];
    v25 = HDDataEntityPredicateForDataUUID();

    v64 = 0;
    v26 = [(HDDataEntity *)HDLocationSeriesSampleEntity anyInDatabase:v57 predicate:v25 error:&v64];
    v27 = v64;
    v28 = v27;
    if (!v26)
    {
      if (v27)
      {
        if (v55)
        {
          v51 = v27;
          *v55 = v28;
        }

        else
        {
          _HKLogDroppedError();
        }
      }

      else
      {
        v52 = MEMORY[0x277CCA9B8];
        v28 = [v12 UUID];
        [v52 hk_assignError:v55 code:100 format:{@"Did not find the expected sample with UUID=%@", v28, v61}];
      }

LABEL_32:

      v33 = 0;
      goto LABEL_33;
    }

    v29 = [*(*(a1 + 32) + v13) endDate];
    v60[0] = MEMORY[0x277D85DD0];
    v60[1] = 3221225472;
    v61[0] = __41__HDWorkoutRouteQueryServer__queue_start__block_invoke_2;
    v61[1] = &unk_278623C90;
    v30 = *(a1 + 56);
    v59 = *(a1 + 32);
    v31 = *(&v59 + 1);
    *&v32 = *(a1 + 48);
    *(&v32 + 1) = v30;
    v62 = v59;
    v63 = v32;
    LOBYTE(v30) = [v26 enumerateLocationDataInTransaction:v58 startDate:v23 endDate:v29 error:v55 handler:v60];

    if ((v30 & 1) == 0)
    {
      goto LABEL_32;
    }

    v10 = 0x280D58000;
    goto LABEL_17;
  }

LABEL_19:
  v33 = 1;
LABEL_33:

LABEL_34:
  v53 = *MEMORY[0x277D85DE8];
  return v33;
}

uint64_t __41__HDWorkoutRouteQueryServer__queue_start__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(*(*(a1 + 56) + 8) + 40) count] >= *(*(a1 + 32) + 208))
  {
    [*(a1 + 40) client_deliverWorkoutRouteLocations:*(*(*(a1 + 56) + 8) + 40) isFinal:0 query:*(a1 + 48)];
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v5 = *(*(a1 + 56) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  [*(*(*(a1 + 56) + 8) + 40) addObject:v3];

  return 1;
}

uint64_t __67__HDWorkoutRouteQueryServer__workoutRoutesMatchingPredicate_error___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) addObject:a2];
  }

  return 1;
}

@end