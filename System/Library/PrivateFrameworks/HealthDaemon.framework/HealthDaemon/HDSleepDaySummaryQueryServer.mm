@interface HDSleepDaySummaryQueryServer
+ (BOOL)validateConfiguration:(id)configuration client:(id)client error:(id *)error;
- (HDSleepDaySummaryQueryServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate;
- (id)_newCachingSessionWithProfile:(id)profile cachingIdentifier:(id)identifier sourceEntity:(id)entity queryDescriptor:(id)descriptor cachedClass:(Class)class queryInterval:(id)interval anchorDate:(id)date intervalComponents:(id)self0 timeIntervalToBucketIndex:(id)self1;
- (id)_newGregorianCalendar;
- (id)objectTypes;
- (void)_queue_start;
@end

@implementation HDSleepDaySummaryQueryServer

- (HDSleepDaySummaryQueryServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate
{
  configurationCopy = configuration;
  v15.receiver = self;
  v15.super_class = HDSleepDaySummaryQueryServer;
  v12 = [(HDQueryServer *)&v15 initWithUUID:d configuration:configurationCopy client:client delegate:delegate];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_configuration, configuration);
  }

  return v13;
}

+ (BOOL)validateConfiguration:(id)configuration client:(id)client error:(id *)error
{
  clientCopy = client;
  entitlements = [clientCopy entitlements];
  v8 = *MEMORY[0x277CCC8B0];
  v9 = [entitlements hasEntitlement:*MEMORY[0x277CCC8B0]];

  if (v9 & 1) != 0 || ([clientCopy entitlements], v10 = objc_claimAutoreleasedReturnValue(), v11 = *MEMORY[0x277CCC8A0], v12 = objc_msgSend(v10, "hasPrivateAccessEntitlementWithIdentifier:", *MEMORY[0x277CCC8A0]), v10, (v12))
  {
    v13 = 1;
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:4 format:{@"Missing required entitlement: %@ for core apps or %@ for second-party access.", v8, v11}];
    v13 = 0;
  }

  return v13;
}

- (id)objectTypes
{
  v2 = MEMORY[0x277CBEB98];
  v3 = HKSleepDaySummarySampleTypes();
  v4 = [v2 setWithArray:v3];

  return v4;
}

- (void)_queue_start
{
  v148 = *MEMORY[0x277D85DE8];
  configuration = [(HDQueryServer *)self configuration];
  debugIdentifier = [configuration debugIdentifier];

  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC320];
  if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    *buf = 138543618;
    *&buf[4] = objc_opt_class();
    *&buf[12] = 2114;
    *&buf[14] = debugIdentifier;
    v6 = *&buf[4];
    _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@:%{public}@] Query Started", buf, 0x16u);
  }

  v120.receiver = self;
  v120.super_class = HDSleepDaySummaryQueryServer;
  [(HDQueryServer *)&v120 _queue_start];
  clientProxy = [(HDQueryServer *)self clientProxy];
  remoteObjectProxy = [clientProxy remoteObjectProxy];

  client = [(HDQueryServer *)self client];
  authorizationOracle = [client authorizationOracle];
  objectTypes = [(HDSleepDaySummaryQueryServer *)self objectTypes];
  v119 = 0;
  v114 = [authorizationOracle authorizationStatusRecordsForTypes:objectTypes error:&v119];
  v111 = v119;

  if (!v114)
  {
    _HKInitializeLogging();
    v24 = *MEMORY[0x277CCC320];
    if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_ERROR))
    {
      v93 = v24;
      v94 = objc_opt_class();
      *buf = 138543874;
      *&buf[4] = v94;
      *&buf[12] = 2114;
      *&buf[14] = debugIdentifier;
      *&buf[22] = 2114;
      v140 = v111;
      v95 = v94;
      _os_log_error_impl(&dword_228986000, v93, OS_LOG_TYPE_ERROR, "[%{public}@:%{public}@] Unable to read authorization status due to error %{public}@", buf, 0x20u);
    }

    queryUUID = [(HDQueryServer *)self queryUUID];
    [remoteObjectProxy client_deliverError:v111 forQuery:queryUUID];
    goto LABEL_56;
  }

  client2 = [(HDQueryServer *)self client];
  authorizationOracle2 = [client2 authorizationOracle];
  clientHasAuthorizationForAllTypes = [authorizationOracle2 clientHasAuthorizationForAllTypes];

  if ((clientHasAuthorizationForAllTypes & 1) == 0)
  {
    v117 = 0u;
    v118 = 0u;
    v115 = 0u;
    v116 = 0u;
    allValues = [v114 allValues];
    v15 = [allValues countByEnumeratingWithState:&v115 objects:v138 count:16];
    if (v15)
    {
      v16 = *v116;
      canRead = 1;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v116 != v16)
          {
            objc_enumerationMutation(allValues);
          }

          if (canRead)
          {
            canRead = [*(*(&v115 + 1) + 8 * i) canRead];
          }

          else
          {
            canRead = 0;
          }
        }

        v15 = [allValues countByEnumeratingWithState:&v115 objects:v138 count:16];
      }

      while (v15);

      if ((canRead & 1) == 0)
      {
        _HKInitializeLogging();
        v19 = *MEMORY[0x277CCC320];
        if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
        {
          v20 = v19;
          v21 = objc_opt_class();
          *buf = 138543874;
          *&buf[4] = v21;
          *&buf[12] = 2114;
          *&buf[14] = debugIdentifier;
          *&buf[22] = 2114;
          v140 = v114;
          v22 = v21;
          _os_log_impl(&dword_228986000, v20, OS_LOG_TYPE_DEFAULT, "[%{public}@:%{public}@] Avoiding exposing health data due to missing authorization: %{public}@", buf, 0x20u);
        }

        queryUUID = [(HDQueryServer *)self queryUUID];
        [remoteObjectProxy client_deliverDaySummaries:MEMORY[0x277CBEBF8] clearPending:0 isFinalBatch:1 queryUUID:queryUUID];
LABEL_56:

        goto LABEL_57;
      }
    }

    else
    {
    }
  }

  v25 = *MEMORY[0x277CCC320];
  spid = _HKLogSignpostIDGenerate();
  _HKInitializeLogging();
  v26 = *MEMORY[0x277CCC320];
  if (os_signpost_enabled(*MEMORY[0x277CCC320]))
  {
    v27 = v26;
    v28 = v27;
    if ((spid - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
    {
      *buf = 138543362;
      *&buf[4] = debugIdentifier;
      _os_signpost_emit_with_name_impl(&dword_228986000, v28, OS_SIGNPOST_INTERVAL_BEGIN, spid, "sleep-day-summary-query", "name=%{public}@", buf, 0xCu);
    }
  }

  if (self)
  {
    v132 = 0;
    v133 = &v132;
    v134 = 0x3032000000;
    v135 = __Block_byref_object_copy__23;
    v136 = __Block_byref_object_dispose__23;
    v137 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v128 = 0;
    v129 = &v128;
    v130 = 0x2020000000;
    v131 = 1;
    v124 = 0;
    v125 = &v124;
    v126 = 0x2020000000;
    v127 = 0;
    v123[0] = 0;
    v123[1] = v123;
    v123[2] = 0x2020000000;
    v123[3] = 0;
    limit = [(HKSleepDaySummaryQueryConfiguration *)self->_configuration limit];
    _newGregorianCalendar = [(HDSleepDaySummaryQueryServer *)self _newGregorianCalendar];
    calendarOverrides = [(HKSleepDaySummaryQueryConfiguration *)self->_configuration calendarOverrides];
    v30 = calendarOverrides == 0;

    if (!v30)
    {
      calendarOverrides2 = [(HKSleepDaySummaryQueryConfiguration *)self->_configuration calendarOverrides];
      [_newGregorianCalendar setFirstWeekday:{objc_msgSend(calendarOverrides2, "firstWeekday")}];
    }

    clientProxy2 = [(HDQueryServer *)self clientProxy];
    remoteObjectProxy2 = [clientProxy2 remoteObjectProxy];

    profile = [(HDQueryServer *)self profile];
    sourceManager = [profile sourceManager];
    v122 = 0;
    v110 = [sourceManager localDeviceSourceWithError:&v122];
    v35 = v122;

    if (!v110)
    {
      queryUUID2 = [(HDQueryServer *)self queryUUID];
      [remoteObjectProxy2 client_deliverError:v35 forQuery:queryUUID2];
LABEL_49:

      _Block_object_dispose(v123, 8);
      _Block_object_dispose(&v124, 8);
      _Block_object_dispose(&v128, 8);
      _Block_object_dispose(&v132, 8);

      goto LABEL_50;
    }

    profile2 = [(HDQueryServer *)self profile];
    configuration = self->_configuration;
    v38 = profile2;
    v39 = configuration;
    v40 = v110;
    v41 = _newGregorianCalendar;
    debugIdentifier2 = [(HKSleepDaySummaryQueryConfiguration *)v39 debugIdentifier];
    daemon = [v38 daemon];
    behavior = [daemon behavior];
    supportsCachedSleepDaySummaryQueries = [behavior supportsCachedSleepDaySummaryQueries];

    if (supportsCachedSleepDaySummaryQueries)
    {
      cacheSettings = [(HKSleepDaySummaryQueryConfiguration *)v39 cacheSettings];
      v46 = cacheSettings == 0;

      if (v46)
      {
        _HKInitializeLogging();
        v58 = *MEMORY[0x277CCC320];
        if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEBUG))
        {
          v96 = v58;
          v97 = objc_opt_class();
          *buf = 138543618;
          *&buf[4] = v97;
          *&buf[12] = 2114;
          *&buf[14] = debugIdentifier2;
          v98 = v97;
          _os_log_debug_impl(&dword_228986000, v96, OS_LOG_TYPE_DEBUG, "[%{public}@:%{public}@] Query caching settings not provided; caching disabled", buf, 0x16u);
        }
      }

      else
      {
        cacheSettings2 = [(HKSleepDaySummaryQueryConfiguration *)v39 cacheSettings];
        v48 = [cacheSettings2 mode] == 1;

        if (!v48)
        {
          v83 = MEMORY[0x277CCA970];
          morningIndexRange = [(HKSleepDaySummaryQueryConfiguration *)v39 morningIndexRange];
          v102 = [v83 hk_sleepDayIntervalForMorningIndexRange:morningIndexRange calendar:{v85, v41}];
          v103 = objc_alloc_init(MEMORY[0x277CBEAB8]);
          [v103 setDay:1];
          cacheIdentifier = [(HKSleepDaySummaryQueryConfiguration *)v39 cacheIdentifier];
          _HKInitializeLogging();
          v86 = *MEMORY[0x277CCC320];
          if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
          {
            v87 = v86;
            v88 = objc_opt_class();
            *buf = 138543874;
            *&buf[4] = v88;
            *&buf[12] = 2114;
            *&buf[14] = debugIdentifier2;
            *&buf[22] = 2114;
            v140 = cacheIdentifier;
            v89 = v88;
            _os_log_impl(&dword_228986000, v87, OS_LOG_TYPE_DEFAULT, "[%{public}@:%{public}@] Creating caching session with ID: %{public}@", buf, 0x20u);
          }

          *buf = MEMORY[0x277D85DD0];
          *&buf[8] = 3221225472;
          *&buf[16] = __118__HDSleepDaySummaryQueryServer__newCachingSessionWithProfile_configuration_localDeviceSource_gregorianCalendar_error___block_invoke;
          v140 = &unk_2786163E8;
          selfCopy = v41;
          v100 = _Block_copy(buf);
          v99 = [HDSleepDaySummaryEnumerator sleepAnalysisQueryDescriptorForDateInterval:0 options:[(HKSleepDaySummaryQueryConfiguration *)v39 options]];
          v90 = objc_opt_class();
          startDate = [v102 startDate];
          v106 = [(HDSleepDaySummaryQueryServer *)self _newCachingSessionWithProfile:v38 cachingIdentifier:cacheIdentifier sourceEntity:v40 queryDescriptor:v99 cachedClass:v90 queryInterval:v102 anchorDate:startDate intervalComponents:v103 timeIntervalToBucketIndex:v100];

          v92 = [HDSleepDaySummaryEnumerator sleepTypesQueryDescriptorsForDateInterval:0 options:[(HKSleepDaySummaryQueryConfiguration *)v39 options]];
          [v106 setInvalidationQueryDescriptors:v92];

          goto LABEL_43;
        }

        _HKInitializeLogging();
        v49 = *MEMORY[0x277CCC320];
        if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEBUG))
        {
          v50 = v49;
          v51 = objc_opt_class();
          *buf = 138543618;
          *&buf[4] = v51;
          *&buf[12] = 2114;
          *&buf[14] = debugIdentifier2;
          v52 = v51;
          _os_log_debug_impl(&dword_228986000, v50, OS_LOG_TYPE_DEBUG, "[%{public}@:%{public}@] Query caching settings specified user interactive mode; caching disabled", buf, 0x16u);
        }
      }
    }

    else
    {
      _HKInitializeLogging();
      v54 = *MEMORY[0x277CCC320];
      if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEBUG))
      {
        v55 = v54;
        v56 = objc_opt_class();
        *buf = 138543618;
        *&buf[4] = v56;
        *&buf[12] = 2114;
        *&buf[14] = debugIdentifier2;
        v57 = v56;
        _os_log_debug_impl(&dword_228986000, v55, OS_LOG_TYPE_DEBUG, "[%{public}@:%{public}@] Query caching feature flag not enabled; caching disabled", buf, 0x16u);
      }
    }

    v106 = 0;
LABEL_43:

    v59 = v35;
    v60 = v41;
    v61 = [HDSleepDaySummaryEnumerator alloc];
    profile3 = [(HDQueryServer *)self profile];
    morningIndexRange2 = [(HKSleepDaySummaryQueryConfiguration *)self->_configuration morningIndexRange];
    v65 = v64;
    ascending = [(HKSleepDaySummaryQueryConfiguration *)self->_configuration ascending];
    options = [(HKSleepDaySummaryQueryConfiguration *)self->_configuration options];
    debugIdentifier3 = [(HKSleepDaySummaryQueryConfiguration *)self->_configuration debugIdentifier];
    v69 = [(HDSleepDaySummaryEnumerator *)v61 initWithProfile:profile3 cachingSession:v106 gregorianCalendar:v60 morningIndexRange:morningIndexRange2 ascending:v65 options:ascending debugIdentifier:options, debugIdentifier3];

    v121 = v59;
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __58__HDSleepDaySummaryQueryServer__queue_surfaceDaySummaries__block_invoke;
    v140 = &unk_2786163C0;
    selfCopy = self;
    v143 = &v124;
    v144 = &v132;
    v70 = remoteObjectProxy2;
    v142 = v70;
    v145 = &v128;
    v146 = v123;
    v147 = limit;
    v71 = [(HDSleepDaySummaryEnumerator *)v69 enumerateWithError:&v121 handler:buf];
    v72 = v121;

    if ((v125[3] & 1) == 0)
    {
      if (v71)
      {
        v73 = v133[5];
        v74 = *(v129 + 24);
        queryUUID3 = [(HDQueryServer *)self queryUUID];
        [v70 client_deliverDaySummaries:v73 clearPending:v74 isFinalBatch:1 queryUUID:queryUUID3];
      }

      else
      {
        queryUUID3 = [(HDQueryServer *)self queryUUID];
        [v70 client_deliverError:v72 forQuery:queryUUID3];
      }
    }

    v35 = v72;
    queryUUID2 = v106;
    goto LABEL_49;
  }

LABEL_50:
  _HKInitializeLogging();
  v76 = *MEMORY[0x277CCC320];
  if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
  {
    v77 = v76;
    v78 = objc_opt_class();
    *buf = 138543618;
    *&buf[4] = v78;
    *&buf[12] = 2114;
    *&buf[14] = debugIdentifier;
    v79 = v78;
    _os_log_impl(&dword_228986000, v77, OS_LOG_TYPE_DEFAULT, "[%{public}@:%{public}@] Query complete", buf, 0x16u);
  }

  _HKInitializeLogging();
  v80 = *MEMORY[0x277CCC320];
  if (os_signpost_enabled(*MEMORY[0x277CCC320]))
  {
    v81 = v80;
    queryUUID = v81;
    if ((spid - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v81))
    {
      *buf = 138543362;
      *&buf[4] = debugIdentifier;
      _os_signpost_emit_with_name_impl(&dword_228986000, queryUUID, OS_SIGNPOST_INTERVAL_END, spid, "sleep-day-summary-query", "name=%{public}@", buf, 0xCu);
    }

    goto LABEL_56;
  }

LABEL_57:

  v82 = *MEMORY[0x277D85DE8];
}

void __58__HDSleepDaySummaryQueryServer__queue_surfaceDaySummaries__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v13 = a2;
  if (([*(a1 + 32) _shouldStopProcessingQuery] & 1) != 0 || objc_msgSend(*(a1 + 32), "_shouldSuspendQuery"))
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
LABEL_4:
    *a3 = 1;
    goto LABEL_5;
  }

  if ([*(*(*(a1 + 56) + 8) + 40) count] >= 0x190)
  {
    v5 = *(*(*(a1 + 56) + 8) + 40);
    v6 = *(*(*(a1 + 64) + 8) + 24);
    v7 = *(a1 + 40);
    v8 = [*(a1 + 32) queryUUID];
    [v7 client_deliverDaySummaries:v5 clearPending:v6 isFinalBatch:0 queryUUID:v8];

    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v10 = *(*(a1 + 56) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    *(*(*(a1 + 64) + 8) + 24) = 0;
  }

  [*(*(*(a1 + 56) + 8) + 40) addObject:v13];
  ++*(*(*(a1 + 72) + 8) + 24);
  v12 = *(a1 + 80);
  if (v12 && *(*(*(a1 + 72) + 8) + 24) >= v12)
  {
    goto LABEL_4;
  }

LABEL_5:
}

uint64_t __118__HDSleepDaySummaryQueryServer__newCachingSessionWithProfile_configuration_localDeviceSource_gregorianCalendar_error___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:?];
  v3 = [v2 hk_morningIndexWithCalendar:*(a1 + 32)];

  return v3;
}

- (id)_newCachingSessionWithProfile:(id)profile cachingIdentifier:(id)identifier sourceEntity:(id)entity queryDescriptor:(id)descriptor cachedClass:(Class)class queryInterval:(id)interval anchorDate:(id)date intervalComponents:(id)self0 timeIntervalToBucketIndex:(id)self1
{
  indexCopy = index;
  componentsCopy = components;
  intervalCopy = interval;
  descriptorCopy = descriptor;
  entityCopy = entity;
  identifierCopy = identifier;
  profileCopy = profile;
  v24 = [HDSampleAggregateCachingSession alloc];
  startDate = [intervalCopy startDate];
  v26 = [(HDSampleAggregateCachingSession *)v24 initWithProfile:profileCopy cachingIdentifier:identifierCopy sourceEntity:entityCopy queryDescriptor:descriptorCopy cachedClass:class queryInterval:intervalCopy anchorDate:startDate intervalComponents:componentsCopy timeIntervalToBucketIndex:indexCopy];

  return v26;
}

- (id)_newGregorianCalendar
{
  hk_gregorianCalendar = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
  defaultTimeZone = [MEMORY[0x277CBEBB0] defaultTimeZone];
  [hk_gregorianCalendar setTimeZone:defaultTimeZone];

  return hk_gregorianCalendar;
}

@end