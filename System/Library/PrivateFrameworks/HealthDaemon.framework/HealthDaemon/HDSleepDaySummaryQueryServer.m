@interface HDSleepDaySummaryQueryServer
+ (BOOL)validateConfiguration:(id)a3 client:(id)a4 error:(id *)a5;
- (HDSleepDaySummaryQueryServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6;
- (id)_newCachingSessionWithProfile:(id)a3 cachingIdentifier:(id)a4 sourceEntity:(id)a5 queryDescriptor:(id)a6 cachedClass:(Class)a7 queryInterval:(id)a8 anchorDate:(id)a9 intervalComponents:(id)a10 timeIntervalToBucketIndex:(id)a11;
- (id)_newGregorianCalendar;
- (id)objectTypes;
- (void)_queue_start;
@end

@implementation HDSleepDaySummaryQueryServer

- (HDSleepDaySummaryQueryServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6
{
  v11 = a4;
  v15.receiver = self;
  v15.super_class = HDSleepDaySummaryQueryServer;
  v12 = [(HDQueryServer *)&v15 initWithUUID:a3 configuration:v11 client:a5 delegate:a6];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_configuration, a4);
  }

  return v13;
}

+ (BOOL)validateConfiguration:(id)a3 client:(id)a4 error:(id *)a5
{
  v6 = a4;
  v7 = [v6 entitlements];
  v8 = *MEMORY[0x277CCC8B0];
  v9 = [v7 hasEntitlement:*MEMORY[0x277CCC8B0]];

  if (v9 & 1) != 0 || ([v6 entitlements], v10 = objc_claimAutoreleasedReturnValue(), v11 = *MEMORY[0x277CCC8A0], v12 = objc_msgSend(v10, "hasPrivateAccessEntitlementWithIdentifier:", *MEMORY[0x277CCC8A0]), v10, (v12))
  {
    v13 = 1;
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a5 code:4 format:{@"Missing required entitlement: %@ for core apps or %@ for second-party access.", v8, v11}];
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
  v3 = [(HDQueryServer *)self configuration];
  v113 = [v3 debugIdentifier];

  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC320];
  if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    *buf = 138543618;
    *&buf[4] = objc_opt_class();
    *&buf[12] = 2114;
    *&buf[14] = v113;
    v6 = *&buf[4];
    _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@:%{public}@] Query Started", buf, 0x16u);
  }

  v120.receiver = self;
  v120.super_class = HDSleepDaySummaryQueryServer;
  [(HDQueryServer *)&v120 _queue_start];
  v7 = [(HDQueryServer *)self clientProxy];
  v112 = [v7 remoteObjectProxy];

  v8 = [(HDQueryServer *)self client];
  v9 = [v8 authorizationOracle];
  v10 = [(HDSleepDaySummaryQueryServer *)self objectTypes];
  v119 = 0;
  v114 = [v9 authorizationStatusRecordsForTypes:v10 error:&v119];
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
      *&buf[14] = v113;
      *&buf[22] = 2114;
      v140 = v111;
      v95 = v94;
      _os_log_error_impl(&dword_228986000, v93, OS_LOG_TYPE_ERROR, "[%{public}@:%{public}@] Unable to read authorization status due to error %{public}@", buf, 0x20u);
    }

    v23 = [(HDQueryServer *)self queryUUID];
    [v112 client_deliverError:v111 forQuery:v23];
    goto LABEL_56;
  }

  v11 = [(HDQueryServer *)self client];
  v12 = [v11 authorizationOracle];
  v13 = [v12 clientHasAuthorizationForAllTypes];

  if ((v13 & 1) == 0)
  {
    v117 = 0u;
    v118 = 0u;
    v115 = 0u;
    v116 = 0u;
    v14 = [v114 allValues];
    v15 = [v14 countByEnumeratingWithState:&v115 objects:v138 count:16];
    if (v15)
    {
      v16 = *v116;
      v17 = 1;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v116 != v16)
          {
            objc_enumerationMutation(v14);
          }

          if (v17)
          {
            v17 = [*(*(&v115 + 1) + 8 * i) canRead];
          }

          else
          {
            v17 = 0;
          }
        }

        v15 = [v14 countByEnumeratingWithState:&v115 objects:v138 count:16];
      }

      while (v15);

      if ((v17 & 1) == 0)
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
          *&buf[14] = v113;
          *&buf[22] = 2114;
          v140 = v114;
          v22 = v21;
          _os_log_impl(&dword_228986000, v20, OS_LOG_TYPE_DEFAULT, "[%{public}@:%{public}@] Avoiding exposing health data due to missing authorization: %{public}@", buf, 0x20u);
        }

        v23 = [(HDQueryServer *)self queryUUID];
        [v112 client_deliverDaySummaries:MEMORY[0x277CBEBF8] clearPending:0 isFinalBatch:1 queryUUID:v23];
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
      *&buf[4] = v113;
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
    v105 = [(HKSleepDaySummaryQueryConfiguration *)self->_configuration limit];
    v109 = [(HDSleepDaySummaryQueryServer *)self _newGregorianCalendar];
    v29 = [(HKSleepDaySummaryQueryConfiguration *)self->_configuration calendarOverrides];
    v30 = v29 == 0;

    if (!v30)
    {
      v31 = [(HKSleepDaySummaryQueryConfiguration *)self->_configuration calendarOverrides];
      [v109 setFirstWeekday:{objc_msgSend(v31, "firstWeekday")}];
    }

    v32 = [(HDQueryServer *)self clientProxy];
    v108 = [v32 remoteObjectProxy];

    v33 = [(HDQueryServer *)self profile];
    v34 = [v33 sourceManager];
    v122 = 0;
    v110 = [v34 localDeviceSourceWithError:&v122];
    v35 = v122;

    if (!v110)
    {
      v53 = [(HDQueryServer *)self queryUUID];
      [v108 client_deliverError:v35 forQuery:v53];
LABEL_49:

      _Block_object_dispose(v123, 8);
      _Block_object_dispose(&v124, 8);
      _Block_object_dispose(&v128, 8);
      _Block_object_dispose(&v132, 8);

      goto LABEL_50;
    }

    v36 = [(HDQueryServer *)self profile];
    configuration = self->_configuration;
    v38 = v36;
    v39 = configuration;
    v40 = v110;
    v41 = v109;
    v104 = [(HKSleepDaySummaryQueryConfiguration *)v39 debugIdentifier];
    v42 = [v38 daemon];
    v43 = [v42 behavior];
    v44 = [v43 supportsCachedSleepDaySummaryQueries];

    if (v44)
    {
      v45 = [(HKSleepDaySummaryQueryConfiguration *)v39 cacheSettings];
      v46 = v45 == 0;

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
          *&buf[14] = v104;
          v98 = v97;
          _os_log_debug_impl(&dword_228986000, v96, OS_LOG_TYPE_DEBUG, "[%{public}@:%{public}@] Query caching settings not provided; caching disabled", buf, 0x16u);
        }
      }

      else
      {
        v47 = [(HKSleepDaySummaryQueryConfiguration *)v39 cacheSettings];
        v48 = [v47 mode] == 1;

        if (!v48)
        {
          v83 = MEMORY[0x277CCA970];
          v84 = [(HKSleepDaySummaryQueryConfiguration *)v39 morningIndexRange];
          v102 = [v83 hk_sleepDayIntervalForMorningIndexRange:v84 calendar:{v85, v41}];
          v103 = objc_alloc_init(MEMORY[0x277CBEAB8]);
          [v103 setDay:1];
          v101 = [(HKSleepDaySummaryQueryConfiguration *)v39 cacheIdentifier];
          _HKInitializeLogging();
          v86 = *MEMORY[0x277CCC320];
          if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
          {
            v87 = v86;
            v88 = objc_opt_class();
            *buf = 138543874;
            *&buf[4] = v88;
            *&buf[12] = 2114;
            *&buf[14] = v104;
            *&buf[22] = 2114;
            v140 = v101;
            v89 = v88;
            _os_log_impl(&dword_228986000, v87, OS_LOG_TYPE_DEFAULT, "[%{public}@:%{public}@] Creating caching session with ID: %{public}@", buf, 0x20u);
          }

          *buf = MEMORY[0x277D85DD0];
          *&buf[8] = 3221225472;
          *&buf[16] = __118__HDSleepDaySummaryQueryServer__newCachingSessionWithProfile_configuration_localDeviceSource_gregorianCalendar_error___block_invoke;
          v140 = &unk_2786163E8;
          v141 = v41;
          v100 = _Block_copy(buf);
          v99 = [HDSleepDaySummaryEnumerator sleepAnalysisQueryDescriptorForDateInterval:0 options:[(HKSleepDaySummaryQueryConfiguration *)v39 options]];
          v90 = objc_opt_class();
          v91 = [v102 startDate];
          v106 = [(HDSleepDaySummaryQueryServer *)self _newCachingSessionWithProfile:v38 cachingIdentifier:v101 sourceEntity:v40 queryDescriptor:v99 cachedClass:v90 queryInterval:v102 anchorDate:v91 intervalComponents:v103 timeIntervalToBucketIndex:v100];

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
          *&buf[14] = v104;
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
        *&buf[14] = v104;
        v57 = v56;
        _os_log_debug_impl(&dword_228986000, v55, OS_LOG_TYPE_DEBUG, "[%{public}@:%{public}@] Query caching feature flag not enabled; caching disabled", buf, 0x16u);
      }
    }

    v106 = 0;
LABEL_43:

    v59 = v35;
    v60 = v41;
    v61 = [HDSleepDaySummaryEnumerator alloc];
    v62 = [(HDQueryServer *)self profile];
    v63 = [(HKSleepDaySummaryQueryConfiguration *)self->_configuration morningIndexRange];
    v65 = v64;
    v66 = [(HKSleepDaySummaryQueryConfiguration *)self->_configuration ascending];
    v67 = [(HKSleepDaySummaryQueryConfiguration *)self->_configuration options];
    v68 = [(HKSleepDaySummaryQueryConfiguration *)self->_configuration debugIdentifier];
    v69 = [(HDSleepDaySummaryEnumerator *)v61 initWithProfile:v62 cachingSession:v106 gregorianCalendar:v60 morningIndexRange:v63 ascending:v65 options:v66 debugIdentifier:v67, v68];

    v121 = v59;
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __58__HDSleepDaySummaryQueryServer__queue_surfaceDaySummaries__block_invoke;
    v140 = &unk_2786163C0;
    v141 = self;
    v143 = &v124;
    v144 = &v132;
    v70 = v108;
    v142 = v70;
    v145 = &v128;
    v146 = v123;
    v147 = v105;
    v71 = [(HDSleepDaySummaryEnumerator *)v69 enumerateWithError:&v121 handler:buf];
    v72 = v121;

    if ((v125[3] & 1) == 0)
    {
      if (v71)
      {
        v73 = v133[5];
        v74 = *(v129 + 24);
        v75 = [(HDQueryServer *)self queryUUID];
        [v70 client_deliverDaySummaries:v73 clearPending:v74 isFinalBatch:1 queryUUID:v75];
      }

      else
      {
        v75 = [(HDQueryServer *)self queryUUID];
        [v70 client_deliverError:v72 forQuery:v75];
      }
    }

    v35 = v72;
    v53 = v106;
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
    *&buf[14] = v113;
    v79 = v78;
    _os_log_impl(&dword_228986000, v77, OS_LOG_TYPE_DEFAULT, "[%{public}@:%{public}@] Query complete", buf, 0x16u);
  }

  _HKInitializeLogging();
  v80 = *MEMORY[0x277CCC320];
  if (os_signpost_enabled(*MEMORY[0x277CCC320]))
  {
    v81 = v80;
    v23 = v81;
    if ((spid - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v81))
    {
      *buf = 138543362;
      *&buf[4] = v113;
      _os_signpost_emit_with_name_impl(&dword_228986000, v23, OS_SIGNPOST_INTERVAL_END, spid, "sleep-day-summary-query", "name=%{public}@", buf, 0xCu);
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

- (id)_newCachingSessionWithProfile:(id)a3 cachingIdentifier:(id)a4 sourceEntity:(id)a5 queryDescriptor:(id)a6 cachedClass:(Class)a7 queryInterval:(id)a8 anchorDate:(id)a9 intervalComponents:(id)a10 timeIntervalToBucketIndex:(id)a11
{
  v17 = a11;
  v18 = a10;
  v19 = a8;
  v20 = a6;
  v21 = a5;
  v22 = a4;
  v23 = a3;
  v24 = [HDSampleAggregateCachingSession alloc];
  v25 = [v19 startDate];
  v26 = [(HDSampleAggregateCachingSession *)v24 initWithProfile:v23 cachingIdentifier:v22 sourceEntity:v21 queryDescriptor:v20 cachedClass:a7 queryInterval:v19 anchorDate:v25 intervalComponents:v18 timeIntervalToBucketIndex:v17];

  return v26;
}

- (id)_newGregorianCalendar
{
  v2 = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
  v3 = [MEMORY[0x277CBEBB0] defaultTimeZone];
  [v2 setTimeZone:v3];

  return v2;
}

@end