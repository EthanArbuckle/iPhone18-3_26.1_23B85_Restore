@interface HDSampleQueryServer
- (BOOL)validateConfiguration:(id *)a3;
- (HDSampleQueryServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6;
- (id)diagnosticDescription;
- (id)objectTypes;
- (void)_queue_start;
@end

@implementation HDSampleQueryServer

- (void)_queue_start
{
  v57 = *MEMORY[0x277D85DE8];
  v52.receiver = self;
  v52.super_class = HDSampleQueryServer;
  [(HDQueryServer *)&v52 _queue_start];
  v50[0] = 0;
  v50[1] = v50;
  v50[2] = 0x2020000000;
  v51 = 0;
  if (self->_suspended)
  {
    v51 = 1;
    self->_suspended = 0;
    _HKInitializeLogging();
    v3 = *MEMORY[0x277CCC308];
    if (os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      *&buf[4] = self;
      _os_log_impl(&dword_228986000, v3, OS_LOG_TYPE_INFO, "%{public}@: Resuming from suspend", buf, 0xCu);
    }
  }

  [(HDQueryServer *)self setDataCount:0];
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __35__HDSampleQueryServer__queue_start__block_invoke;
  v48[3] = &unk_27862F720;
  v48[4] = self;
  v48[5] = v50;
  v49 = 0;
  v4 = v48;
  if ([(NSArray *)self->_queryDescriptors count]!= 1)
  {
    v23 = objc_alloc(MEMORY[0x277CCD8C0]);
    sortDescriptors = self->_sortDescriptors;
    v25 = self->_queryDescriptors;
    v5 = [v23 initWithQueryDescriptors:v25 sortDescriptors:sortDescriptors followingAnchor:0 upToAndIncludingAnchor:0 distinctByKeyPaths:0 state:0];

    limit = self->_limit;
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __58__HDSampleQueryServer_batchObjectsWithError_batchHandler___block_invoke;
    v55 = &unk_27861C648;
    v56 = v4;
    v27 = [(HDBatchedQueryServer *)self batchObjectsWithMultitypeQueryCursor:v5 includeDeletedObjects:0 limit:limit error:&v49 batchHandler:buf];
    v28 = v56;
    goto LABEL_33;
  }

  v5 = v4;
  v6 = [(HDQueryServer *)self newDataEntityEnumerator];
  v7 = [(HDQueryServer *)self filter];
  [v6 setFilter:v7];

  v8 = [(HDQueryServer *)self sampleAuthorizationFilter];
  [v6 setAuthorizationFilter:v8];

  v9 = [(HDQueryServer *)self sampleType];
  v10 = [v9 requiresPerObjectAuthorization];

  if ((v10 & 1) == 0)
  {
    [v6 setLimitCount:self->_limit];
  }

  [v6 setSortDescriptors:self->_sortDescriptors];
  if (self->_includeContributorInformation)
  {
    v11 = [(HDQueryServer *)self client];
    v12 = [v11 hasEntitlement:*MEMORY[0x277CCBB98]];

    if (v12)
    {
      [v6 setEncodingOption:MEMORY[0x277CBEC38] forKey:@"IncludeContributorInformation"];
    }
  }

  v13 = [(HDQueryServer *)self client];
  v14 = [v13 authorizationOracle];
  v15 = [(HDQueryServer *)self sampleType];
  *buf = 0;
  v16 = [v14 additionalAuthorizationPredicateForObjectType:v15 error:buf];
  v17 = *buf;

  if (!v16)
  {
    v29 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:sel_enumeratorForSingleSampleTypeWithError_ format:@"Unable to determine authorization status."];
    v30 = v29;
    if (v29)
    {
      v31 = v29;
      v49 = v30;
    }

    v28 = 0;
    v22 = v17;
    goto LABEL_30;
  }

  [v6 setPredicate:v16];
  if (self->_includeAutomaticTimeZones)
  {
    [v6 setEncodingOption:MEMORY[0x277CBEC38] forKey:@"IncludeAutomaticTimeZone"];
  }

  if ([MEMORY[0x277CCDD30] isAppleInternalInstall])
  {
    v18 = [MEMORY[0x277CCDD30] sharedBehavior];
    if ([v18 performsWorkoutCondensation])
    {
      v19 = [(HDQueryServer *)self objectType];
      if ([v19 code] == 79)
      {
        v20 = [(HDQueryServer *)self client];
        v21 = *MEMORY[0x277CCC8B0];
        v53 = v17;
        v46 = [v20 hasRequiredEntitlement:v21 error:&v53];
        v47 = v20;
        v22 = v53;

        if (v46)
        {
          [v6 setEncodingOption:MEMORY[0x277CBEC38] forKey:@"IncludeCondenserInfo"];
        }

        goto LABEL_25;
      }
    }
  }

  v22 = v17;
LABEL_25:
  v32 = [(HDQueryServer *)self objectType];
  if ([v32 code] == 273)
  {
    v33 = [(HDQueryServer *)self client];
    v34 = [v33 hasRequiredEntitlement:*MEMORY[0x277CCC8B0] error:0];

    if ((v34 & 1) == 0)
    {
      [v6 setEncodingOption:MEMORY[0x277CBEC38] forKey:@"HDMedicationDoseEventEntityEncodingOptionExcludePrivateMedicationInfo"];
    }
  }

  else
  {
  }

  v28 = v6;
LABEL_30:

  if (v28)
  {
    v27 = [(HDBatchedQueryServer *)self batchObjectsWithEnumerator:v28 error:&v49 handler:v5];
  }

  else
  {
    v27 = 1;
  }

LABEL_33:

  v35 = v49;
  v36 = v35;
  if (v27 == 1)
  {
    _HKInitializeLogging();
    v42 = *MEMORY[0x277CCC308];
    if (os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      *&buf[4] = self;
      *&buf[12] = 2114;
      *&buf[14] = v36;
      _os_log_error_impl(&dword_228986000, v42, OS_LOG_TYPE_ERROR, "%{public}@: Encountered error enumerating results: %{public}@", buf, 0x16u);
    }

    v37 = v36;
    if (!v36)
    {
      v37 = [MEMORY[0x277CCA9B8] hk_error:122 format:@"Sample enumeration failed without reporting an error."];
    }

    v43 = [(HDQueryServer *)self clientProxy];
    v44 = [(HDQueryServer *)self queryUUID];
    [v43 client_deliverError:v37 forQuery:v44];
  }

  else
  {
    if (v27 == 2)
    {
      _HKInitializeLogging();
      v39 = *MEMORY[0x277CCC308];
      if (os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        *&buf[4] = self;
        _os_log_impl(&dword_228986000, v39, OS_LOG_TYPE_INFO, "%{public}@: Client no longer authorized.", buf, 0xCu);
      }

      v40 = [(HDQueryServer *)self clientProxy];
      v41 = [(HDQueryServer *)self queryUUID];
      [v40 client_deliverSamples:MEMORY[0x277CBEBF8] clearPendingSamples:1 isFinalBatch:1 queryUUID:v41];

      goto LABEL_42;
    }

    v37 = v35;
    if (v27 == 3)
    {
      _HKInitializeLogging();
      v38 = *MEMORY[0x277CCC308];
      if (os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        *&buf[4] = self;
        _os_log_impl(&dword_228986000, v38, OS_LOG_TYPE_INFO, "%{public}@: Suspended during enumeration.", buf, 0xCu);
      }

      self->_suspended = 1;
LABEL_42:
      v37 = v36;
    }
  }

  _Block_object_dispose(v50, 8);
  v45 = *MEMORY[0x277D85DE8];
}

void __35__HDSampleQueryServer__queue_start__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = [*(a1 + 32) filteredSamplesForClientWithSamples:a2];
  v6 = [v5 count];
  v7 = *(*(a1 + 32) + 232);
  if (v6 > v7 && v7 != 0)
  {
    v9 = [v5 subarrayWithRange:0];

    v5 = v9;
  }

  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v11 = v5;
  v12 = [v11 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v27;
    do
    {
      v15 = 0;
      do
      {
        if (*v27 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(a1 + 32) sanitizedSampleForQueryClient:{*(*(&v26 + 1) + 8 * v15), v26}];
        [v10 addObject:v16];

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v13);
  }

  _HKInitializeLogging();
  v17 = *MEMORY[0x277CCC308];
  if (os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_INFO))
  {
    v18 = *(a1 + 32);
    v19 = v17;
    v20 = [v11 count];
    *buf = 138543618;
    v31 = v18;
    v32 = 2048;
    v33 = v20;
    _os_log_impl(&dword_228986000, v19, OS_LOG_TYPE_INFO, "%{public}@ delivering %lu samples to client", buf, 0x16u);
  }

  v21 = *(a1 + 32);
  if (v21)
  {
    v22 = [v21 clientProxy];
    v21 = *(a1 + 32);
  }

  else
  {
    v22 = 0;
  }

  v23 = *(*(*(a1 + 40) + 8) + 24);
  v24 = [v21 queryUUID];
  [v22 client_deliverSamples:v10 clearPendingSamples:v23 isFinalBatch:a3 queryUUID:v24];

  *(*(*(a1 + 40) + 8) + 24) = 0;
  [*(a1 + 32) setDataCount:{objc_msgSend(*(a1 + 32), "dataCount") + objc_msgSend(v10, "count")}];

  v25 = *MEMORY[0x277D85DE8];
}

- (HDSampleQueryServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6
{
  v10 = a4;
  v17.receiver = self;
  v17.super_class = HDSampleQueryServer;
  v11 = [(HDQueryServer *)&v17 initWithUUID:a3 configuration:v10 client:a5 delegate:a6];
  if (v11)
  {
    v11->_limit = [v10 limit];
    v12 = [v10 sortDescriptors];
    sortDescriptors = v11->_sortDescriptors;
    v11->_sortDescriptors = v12;

    v11->_includeAutomaticTimeZones = [v10 includeAutomaticTimeZones];
    v11->_includeContributorInformation = [v10 includeContributorInformation];
    v14 = [v10 queryDescriptors];
    queryDescriptors = v11->_queryDescriptors;
    v11->_queryDescriptors = v14;
  }

  return v11;
}

- (id)objectTypes
{
  if (self)
  {
    self = self->_queryDescriptors;
  }

  return [(HDSampleQueryServer *)self hk_mapToSet:&__block_literal_global_242];
}

- (BOOL)validateConfiguration:(id *)a3
{
  v13.receiver = self;
  v13.super_class = HDSampleQueryServer;
  v5 = [(HDQueryServer *)&v13 validateConfiguration:?];
  if (v5)
  {
    if (self->_includeAutomaticTimeZones && (-[HDQueryServer client](self, "client"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 hasPrivateMetadataAccess], v6, (v7 & 1) == 0))
    {
      v8 = MEMORY[0x277CCA9B8];
      v9 = @"Unauthorized use of includeAutomaticTimeZones";
      v10 = a3;
      v11 = 4;
    }

    else
    {
      if ([(NSArray *)self->_queryDescriptors count])
      {
        LOBYTE(v5) = 1;
        return v5;
      }

      v8 = MEMORY[0x277CCA9B8];
      v9 = @"Missing sample type for query";
      v10 = a3;
      v11 = 3;
    }

    [v8 hk_assignError:v10 code:v11 description:v9];
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (id)diagnosticDescription
{
  if (self->_limit)
  {
    v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%lu", self->_limit];
  }

  else
  {
    v3 = @"none";
  }

  if ([(NSArray *)self->_sortDescriptors count])
  {
    v4 = [(NSArray *)self->_sortDescriptors hk_map:&__block_literal_global_311_0];
    v5 = [v4 componentsJoinedByString:{@", "}];
  }

  else
  {
    v5 = @"none";
  }

  v9.receiver = self;
  v9.super_class = HDSampleQueryServer;
  v6 = [(HDQueryServer *)&v9 diagnosticDescription];
  v7 = [v6 stringByAppendingFormat:@"\n\tlimit: %@ - sort: %@", v3, v5];

  return v7;
}

id __44__HDSampleQueryServer_diagnosticDescription__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 key];
  v4 = [v2 ascending];

  if (v4)
  {
    v5 = @" ASC";
  }

  else
  {
    v5 = @" DESC";
  }

  v6 = [v3 stringByAppendingString:v5];

  return v6;
}

@end