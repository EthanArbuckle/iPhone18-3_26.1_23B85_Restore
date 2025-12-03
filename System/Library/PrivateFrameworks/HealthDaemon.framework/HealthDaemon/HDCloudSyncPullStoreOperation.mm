@interface HDCloudSyncPullStoreOperation
- (BOOL)_copyAnchorsOfType:(void *)type from:(void *)from to:(void *)to error:(uint64_t)error;
- (HDCloudSyncPullStoreOperation)initWithConfiguration:(id)configuration cloudState:(id)state;
- (HDCloudSyncPullStoreOperation)initWithConfiguration:(id)configuration cloudState:(id)state target:(id)target;
- (uint64_t)_requiresSyncForSequence:(uint64_t)sequence error:;
- (void)main;
@end

@implementation HDCloudSyncPullStoreOperation

- (HDCloudSyncPullStoreOperation)initWithConfiguration:(id)configuration cloudState:(id)state
{
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE660];
  v7 = NSStringFromSelector(a2);
  [v5 raise:v6 format:{@"The -%@ method is not available on %@", v7, objc_opt_class()}];

  return 0;
}

- (HDCloudSyncPullStoreOperation)initWithConfiguration:(id)configuration cloudState:(id)state target:(id)target
{
  targetCopy = target;
  v13.receiver = self;
  v13.super_class = HDCloudSyncPullStoreOperation;
  v10 = [(HDCloudSyncOperation *)&v13 initWithConfiguration:configuration cloudState:state];
  v11 = v10;
  if (v10)
  {
    v10->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v10->_target, target);
    v11->_hasAppliedChange = 0;
  }

  return v11;
}

- (void)main
{
  v282 = *MEMORY[0x277D85DE8];
  storeRecord = [(HDCloudSyncTarget *)self->_target storeRecord];
  requiredProtocolVersion = [storeRecord requiredProtocolVersion];

  if (requiredProtocolVersion >= 2)
  {
    _HKInitializeLogging();
    v4 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      target = self->_target;
      v54 = v4;
      storeRecord2 = [(HDCloudSyncTarget *)target storeRecord];
      requiredProtocolVersion2 = [storeRecord2 requiredProtocolVersion];
      storeRecord3 = [(HDCloudSyncTarget *)self->_target storeRecord];
      systemBuildVersion = [storeRecord3 systemBuildVersion];
      storeRecord4 = [(HDCloudSyncTarget *)self->_target storeRecord];
      productType = [storeRecord4 productType];
      storeRecord5 = [(HDCloudSyncTarget *)self->_target storeRecord];
      deviceName = [storeRecord5 deviceName];
      *buf = 138544386;
      *&buf[4] = self;
      *&buf[12] = 2048;
      *&buf[14] = requiredProtocolVersion2;
      *&buf[22] = 2114;
      v274 = systemBuildVersion;
      *v275 = 2114;
      *&v275[2] = productType;
      *&v275[10] = 2114;
      *&v275[12] = deviceName;
      _os_log_error_impl(&dword_228986000, v54, OS_LOG_TYPE_ERROR, "%{public}@: Found incomprehensible required protocol version %ld (from %{public}@ on a %{public}@: '%{public}@')", buf, 0x34u);
    }

    v5 = [MEMORY[0x277CCA9B8] hk_error:703 format:@"Health data from a future system version is present in iCloud and cannot be handled by this device."];
    v265[0] = *MEMORY[0x277CCBD98];
    storeRecord6 = [(HDCloudSyncTarget *)self->_target storeRecord];
    deviceName2 = [storeRecord6 deviceName];
    v8 = deviceName2;
    if (deviceName2)
    {
      v9 = deviceName2;
    }

    else
    {
      v9 = &stru_283BF39C8;
    }

    v266[0] = v9;
    v265[1] = *MEMORY[0x277CCBDA0];
    storeRecord7 = [(HDCloudSyncTarget *)self->_target storeRecord];
    productType2 = [storeRecord7 productType];
    v12 = productType2;
    if (productType2)
    {
      v13 = productType2;
    }

    else
    {
      v13 = &stru_283BF39C8;
    }

    v266[1] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v266 forKeys:v265 count:2];
    v15 = [v5 hk_errorByAddingEntriesToUserInfo:v14];

    [(HDCloudSyncPullStoreOperation *)self finishWithSuccess:0 error:v15];
    goto LABEL_142;
  }

  storeRecord8 = [(HDCloudSyncTarget *)self->_target storeRecord];
  orderedSequenceRecords = [storeRecord8 orderedSequenceRecords];
  v18 = [orderedSequenceRecords count];

  if (v18)
  {
    storeRecord9 = [(HDCloudSyncTarget *)self->_target storeRecord];
    orderedSequenceRecords2 = [storeRecord9 orderedSequenceRecords];
    v21 = [orderedSequenceRecords2 count];
    progress = [(HDCloudSyncOperation *)self progress];
    [progress setTotalUnitCount:300 * v21 + 200];

    store = [(HDCloudSyncTarget *)self->_target store];
    v241 = 0;
    v222 = [store persistedStateWithError:&v241];
    v220 = v241;

    if (!v222)
    {
      [(HDCloudSyncPullStoreOperation *)self finishWithSuccess:0 error:v220];
      goto LABEL_141;
    }

    _HKInitializeLogging();
    v24 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v25 = self->_target;
      v26 = v24;
      storeRecord10 = [(HDCloudSyncTarget *)v25 storeRecord];
      shortDescription = [storeRecord10 shortDescription];
      *buf = 138543618;
      *&buf[4] = self;
      *&buf[12] = 2114;
      *&buf[14] = shortDescription;
      _os_log_impl(&dword_228986000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@: Store: %{public}@", buf, 0x16u);
    }

    _HKInitializeLogging();
    v29 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v30 = self->_target;
      v31 = v29;
      storeRecord11 = [(HDCloudSyncTarget *)v30 storeRecord];
      activeSequenceHeaderRecord = [storeRecord11 activeSequenceHeaderRecord];
      *buf = 138543618;
      *&buf[4] = self;
      *&buf[12] = 2114;
      *&buf[14] = activeSequenceHeaderRecord;
      _os_log_impl(&dword_228986000, v31, OS_LOG_TYPE_DEFAULT, "%{public}@: Sequence: %{public}@", buf, 0x16u);
    }

    if ([v222 syncProtocolVersion] > 16)
    {
      v233 = v220;
      goto LABEL_34;
    }

    _HKInitializeLogging();
    v34 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v35 = v34;
      syncProtocolVersion = [v222 syncProtocolVersion];
      *buf = 138543874;
      *&buf[4] = self;
      *&buf[12] = 1024;
      *&buf[14] = syncProtocolVersion;
      *&buf[18] = 1024;
      *&buf[20] = 17;
      _os_log_impl(&dword_228986000, v35, OS_LOG_TYPE_DEFAULT, "%{public}@: detected sync protocol version change %d -> %d", buf, 0x18u);
    }

    v240 = v220;
    v37 = v222;
    v38 = [HDCloudSyncCachedZone alloc];
    zoneIdentifier = [(HDCloudSyncTarget *)self->_target zoneIdentifier];
    configuration = [(HDCloudSyncOperation *)self configuration];
    repository = [configuration repository];
    configuration2 = [(HDCloudSyncOperation *)self configuration];
    accessibilityAssertion = [configuration2 accessibilityAssertion];
    v44 = [(HDCloudSyncCachedZone *)v38 initForZoneIdentifier:zoneIdentifier repository:repository accessibilityAssertion:accessibilityAssertion];

    v267 = 0;
    v268 = &v267;
    v269 = 0x2020000000;
    LOBYTE(v270) = 0;
    v45 = objc_opt_class();
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __55__HDCloudSyncPullStoreOperation__resetPullState_error___block_invoke;
    v274 = &unk_27862F118;
    *v275 = self;
    v46 = v37;
    *&v275[8] = v46;
    *&v275[16] = &v267;
    if ([v44 recordsForClass:v45 epoch:0 error:&v240 enumerationHandler:buf])
    {
      if (*(v268 + 24) != 1)
      {
        _HKInitializeLogging();
        v63 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
        {
          *v276 = 138543362;
          *&v276[4] = self;
          _os_log_impl(&dword_228986000, v63, OS_LOG_TYPE_DEFAULT, "%{public}@: detected sync protocol version, but none of the change records have a greater protocol version. Skipping re-ingest.", v276, 0xCu);
        }

        goto LABEL_32;
      }

      store2 = [(HDCloudSyncTarget *)self->_target store];
      v48 = [store2 resetReceivedSyncAnchorMapWithError:&v240];

      if (v48)
      {
        configuration3 = [(HDCloudSyncOperation *)self configuration];
        operationGroup = [configuration3 operationGroup];
        [operationGroup setExpectedReceiveSize:3];

LABEL_32:
        v64 = [v46 stateWithSyncProtocolVersion:17];

        store3 = [(HDCloudSyncTarget *)self->_target store];
        v52 = [store3 persistState:v64 error:&v240];

        v46 = v64;
LABEL_33:

        _Block_object_dispose(&v267, 8);
        v233 = v240;

        if ((v52 & 1) == 0)
        {
          [(HDCloudSyncPullStoreOperation *)self finishWithSuccess:0 error:v233];
          v220 = v233;
          goto LABEL_141;
        }

LABEL_34:
        storeRecord12 = [(HDCloudSyncTarget *)self->_target storeRecord];
        activeSequenceHeaderRecord2 = [storeRecord12 activeSequenceHeaderRecord];
        baselineEpoch = [activeSequenceHeaderRecord2 baselineEpoch];
        LODWORD(baselineEpoch) = baselineEpoch > [v222 baselineEpoch];

        if (baselineEpoch)
        {
          v239 = v233;
          v235 = v222;
          _HKInitializeLogging();
          v69 = *MEMORY[0x277CCC328];
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
          {
            v70 = v69;
            baselineEpoch2 = [v235 baselineEpoch];
            storeRecord13 = [(HDCloudSyncTarget *)self->_target storeRecord];
            activeSequenceHeaderRecord3 = [storeRecord13 activeSequenceHeaderRecord];
            baselineEpoch3 = [activeSequenceHeaderRecord3 baselineEpoch];
            *buf = 138543874;
            *&buf[4] = self;
            *&buf[12] = 2048;
            *&buf[14] = baselineEpoch2;
            *&buf[22] = 2048;
            v274 = baselineEpoch3;
            _os_log_impl(&dword_228986000, v70, OS_LOG_TYPE_DEFAULT, "%{public}@: detected this is a pull of a new epoch %llu -> %llu", buf, 0x20u);
          }

          v226 = [_HDCloudSyncStorePersistableState alloc];
          storeRecord14 = [(HDCloudSyncTarget *)self->_target storeRecord];
          activeSequenceHeaderRecord4 = [storeRecord14 activeSequenceHeaderRecord];
          baselineEpoch4 = [activeSequenceHeaderRecord4 baselineEpoch];
          rebaseDeadline = [v235 rebaseDeadline];
          lastSyncDate = [v235 lastSyncDate];
          emptyZoneDateByZoneID = [v235 emptyZoneDateByZoneID];
          lastCheckDate = [v235 lastCheckDate];
          storeRecord15 = [(HDCloudSyncTarget *)self->_target storeRecord];
          ownerIdentifier = [storeRecord15 ownerIdentifier];
          container = [(HDCloudSyncTarget *)self->_target container];
          containerIdentifier = [container containerIdentifier];
          storeRecord16 = [(HDCloudSyncTarget *)self->_target storeRecord];
          syncIdentity = [storeRecord16 syncIdentity];
          LODWORD(v208) = [v235 syncProtocolVersion];
          v85 = [(_HDCloudSyncStorePersistableState *)v226 initWithServerChangeToken:0 baselineEpoch:baselineEpoch4 rebaseDeadline:rebaseDeadline lastSyncDate:lastSyncDate emptyZones:emptyZoneDateByZoneID lastCheckDate:lastCheckDate ownerIdentifier:ownerIdentifier containerIdentifier:containerIdentifier syncIdentity:syncIdentity syncProtocolVersion:v208];

          store4 = [(HDCloudSyncTarget *)self->_target store];
          storeRecord17 = [(HDCloudSyncTarget *)self->_target storeRecord];
          activeSequenceHeaderRecord5 = [storeRecord17 activeSequenceHeaderRecord];
          v89 = [store4 syncStoreForEpoch:{objc_msgSend(activeSequenceHeaderRecord5, "baselineEpoch")}];

          if ([v235 hasEncounteredGapInCurrentEpoch])
          {
            v90 = [(_HDCloudSyncStorePersistableState *)v85 stateWithGapEncountered:0];

            if (([v89 resetReceivedSyncAnchorMapWithError:&v239] & 1) == 0)
            {
              goto LABEL_56;
            }
          }

          else
          {
            store5 = [(HDCloudSyncTarget *)self->_target store];
            v98 = [HDCloudSyncPullStoreOperation _copyAnchorsOfType:store5 from:v89 to:&v239 error:?];

            if (!v98 || ([(HDCloudSyncTarget *)self->_target store], v99 = objc_claimAutoreleasedReturnValue(), v100 = [HDCloudSyncPullStoreOperation _copyAnchorsOfType:v99 from:v89 to:&v239 error:?], v99, !v100))
            {
              buf[0] = 0;
              v90 = v85;
              goto LABEL_58;
            }

            v90 = v85;
          }

          if (([v89 persistState:v90 error:&v239] & 1) == 0)
          {
LABEL_56:
            buf[0] = 0;
            goto LABEL_58;
          }

          serverChangeToken = [v90 serverChangeToken];
          v102 = serverChangeToken == 0;

          if (v102)
          {
            configuration4 = [(HDCloudSyncOperation *)self configuration];
            operationGroup2 = [configuration4 operationGroup];
            [operationGroup2 setExpectedReceiveSize:3];
          }

          buf[0] = 1;
LABEL_58:

          v105 = buf[0];
          v220 = v239;

          if ((v105 & 1) == 0)
          {
            [(HDCloudSyncPullStoreOperation *)self finishWithSuccess:0 error:v220];
            goto LABEL_141;
          }

          goto LABEL_59;
        }

        v238 = v233;
        storeRecord18 = [(HDCloudSyncTarget *)self->_target storeRecord];
        tombstoneSequenceRecord = [storeRecord18 tombstoneSequenceRecord];

        if (tombstoneSequenceRecord)
        {
          v93 = [(HDCloudSyncPullStoreOperation *)&self->super.super.isa _requiresSyncForSequence:tombstoneSequenceRecord error:&v238];
          if (!v93)
          {

            v220 = v238;
            goto LABEL_68;
          }

          if (v93 == 1)
          {

            v220 = v238;
LABEL_59:
            storeRecord19 = [(HDCloudSyncTarget *)self->_target storeRecord];
            isChild = [storeRecord19 isChild];

            if (isChild)
            {
              v237 = v220;
              *buf = 0;
              *&buf[8] = buf;
              *&buf[16] = 0x3032000000;
              v274 = __Block_byref_object_copy__202;
              *v275 = __Block_byref_object_dispose__202;
              *&v275[8] = 0;
              v108 = +[HDDatabaseTransactionContext contextForReading];
              profile = [(HDCloudSyncOperation *)self profile];
              database = [profile database];
              v267 = MEMORY[0x277D85DD0];
              v268 = 3221225472;
              v269 = __63__HDCloudSyncPullStoreOperation__childSyncIdentitiesWithError___block_invoke;
              v270 = &unk_278619398;
              v272 = buf;
              selfCopy = self;
              v111 = [database performTransactionWithContext:v108 error:&v237 block:&v267 inaccessibilityHandler:0];

              if (v111)
              {
                v112 = *(*&buf[8] + 40);
              }

              else
              {
                v112 = 0;
              }

              _Block_object_dispose(buf, 8);
              if (v112 && (-[HDCloudSyncTarget storeRecord](self->_target, "storeRecord"), v114 = objc_claimAutoreleasedReturnValue(), [v114 syncIdentity], v115 = objc_claimAutoreleasedReturnValue(), v116 = objc_msgSend(v112, "containsObject:", v115), v115, v114, v116))
              {
                v117 = objc_alloc_init(HDSyncAnchorMap);
                store6 = [(HDCloudSyncTarget *)self->_target store];
                configuration5 = [(HDCloudSyncOperation *)self configuration];
                repository2 = [configuration5 repository];
                profile2 = [repository2 profile];
                legacyRepositoryProfile = [profile2 legacyRepositoryProfile];
                v123 = [HDSyncAnchorEntity getSyncAnchorsOfType:4 anchorMap:v117 store:store6 profile:legacyRepositoryProfile error:&v237];

                if (v123)
                {
                  configuration6 = [(HDCloudSyncOperation *)self configuration];
                  syncDate = [configuration6 syncDate];
                  store7 = [(HDCloudSyncTarget *)self->_target store];
                  configuration7 = [(HDCloudSyncOperation *)self configuration];
                  repository3 = [configuration7 repository];
                  profile3 = [repository3 profile];
                  legacyRepositoryProfile2 = [profile3 legacyRepositoryProfile];
                  v123 = [HDSyncAnchorEntity updateSyncAnchorsWithMap:v117 type:3 updateDate:syncDate store:store7 updatePolicy:2 resetInvalid:0 profile:legacyRepositoryProfile2 error:&v237];
                }
              }

              else
              {
                v123 = 0;
              }

              v131 = v237;
              if (v123)
              {
                _HKInitializeLogging();
                v132 = *MEMORY[0x277CCC328];
                if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543362;
                  *&buf[4] = self;
                  _os_log_impl(&dword_228986000, v132, OS_LOG_TYPE_DEFAULT, "%{public}@: Skipping pull from own child, updated received anchors", buf, 0xCu);
                }

                [(HDCloudSyncPullStoreOperation *)self finishWithSuccess:1 error:0];
                v220 = v131;
                goto LABEL_141;
              }

              v220 = v131;
            }

            v133 = [HDCloudSyncCachedZone alloc];
            zoneIdentifier2 = [(HDCloudSyncTarget *)self->_target zoneIdentifier];
            configuration8 = [(HDCloudSyncOperation *)self configuration];
            repository4 = [configuration8 repository];
            configuration9 = [(HDCloudSyncOperation *)self configuration];
            accessibilityAssertion2 = [configuration9 accessibilityAssertion];
            v210 = [(HDCloudSyncCachedZone *)v133 initForZoneIdentifier:zoneIdentifier2 repository:repository4 accessibilityAssertion:accessibilityAssertion2];

            v139 = objc_opt_class();
            v242[0] = MEMORY[0x277D85DD0];
            v242[1] = 3221225472;
            v242[2] = __52__HDCloudSyncPullStoreOperation__fetchChangeRecords__block_invoke;
            v242[3] = &unk_2786235E8;
            v242[4] = self;
            v243 = 0;
            v211 = [v210 recordsForClass:v139 error:&v243 filter:v242];
            v209 = v243;
            if (!v211)
            {
              _HKInitializeLogging();
              v199 = *MEMORY[0x277CCC328];
              if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
              {
                v205 = self->_target;
                v206 = v199;
                zoneIdentifier3 = [(HDCloudSyncTarget *)v205 zoneIdentifier];
                *buf = 138543874;
                *&buf[4] = self;
                *&buf[12] = 2114;
                *&buf[14] = zoneIdentifier3;
                *&buf[22] = 2114;
                v274 = v209;
                _os_log_error_impl(&dword_228986000, v206, OS_LOG_TYPE_ERROR, "%{public}@ Failed to get change records for %{public}@, %{public}@", buf, 0x20u);
              }

              [(HDCloudSyncPullStoreOperation *)self finishWithSuccess:0 error:v209];
              goto LABEL_140;
            }

            if (![v211 count])
            {
              _HKInitializeLogging();
              v200 = *MEMORY[0x277CCC328];
              if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
              {
                v201 = self->_target;
                v202 = v200;
                zoneIdentifier4 = [(HDCloudSyncTarget *)v201 zoneIdentifier];
                *buf = 138543874;
                *&buf[4] = self;
                *&buf[12] = 2114;
                *&buf[14] = zoneIdentifier4;
                *&buf[22] = 2114;
                v274 = v209;
                _os_log_impl(&dword_228986000, v202, OS_LOG_TYPE_DEFAULT, "%{public}@ No change records fetched from cache for %{public}@, %{public}@", buf, 0x20u);
              }

              [(HDCloudSyncPullStoreOperation *)self finishWithSuccess:1 error:0];
              goto LABEL_140;
            }

            v140 = v211;
            storeRecord20 = [(HDCloudSyncTarget *)self->_target storeRecord];
            orderedSequenceRecords3 = [storeRecord20 orderedSequenceRecords];
            *buf = MEMORY[0x277D85DD0];
            *&buf[8] = 3221225472;
            *&buf[16] = __97__HDCloudSyncPullStoreOperation__orderedChangeRecordsBySequenceRecordIDWithFetchedChangeRecords___block_invoke;
            v274 = &unk_27862F168;
            v143 = v140;
            *v275 = v143;
            v215 = [orderedSequenceRecords3 hk_mapToDictionary:buf];

            v144 = [HDCloudSyncCompoundOperation alloc];
            configuration10 = [(HDCloudSyncOperation *)self configuration];
            v212 = [(HDCloudSyncCompoundOperation *)v144 initWithConfiguration:configuration10 cloudState:0 name:@"Pull Sequences" continueOnSubOperationError:0];

            v247 = 0u;
            v245 = 0u;
            v246 = 0u;
            v244 = 0u;
            storeRecord21 = [(HDCloudSyncTarget *)self->_target storeRecord];
            obj = [storeRecord21 orderedSequenceRecords];

            v216 = [obj countByEnumeratingWithState:&v244 objects:&v267 count:16];
            if (!v216)
            {
LABEL_131:

              *buf = MEMORY[0x277D85DD0];
              *&buf[8] = 3221225472;
              *&buf[16] = __55__HDCloudSyncPullStoreOperation__fetchedChangeRecords___block_invoke;
              v274 = &unk_278613088;
              *v275 = self;
              [(HDCloudSyncOperation *)v212 setOnError:buf];
              *v276 = MEMORY[0x277D85DD0];
              *&v276[8] = 3221225472;
              *&v276[16] = __55__HDCloudSyncPullStoreOperation__fetchedChangeRecords___block_invoke_2;
              v277 = &unk_278613060;
              *&v278 = self;
              [(HDCloudSyncOperation *)v212 setOnSuccess:v276];
              progress2 = [(HDCloudSyncOperation *)self progress];
              progress3 = [(HDCloudSyncOperation *)v212 progress];
              progress4 = [(HDCloudSyncOperation *)self progress];
              totalUnitCount = [progress4 totalUnitCount];
              progress5 = [(HDCloudSyncOperation *)self progress];
              [progress2 addChild:progress3 withPendingUnitCount:{totalUnitCount - objc_msgSend(progress5, "completedUnitCount")}];

              [(HDCloudSyncCompoundOperation *)v212 start];
              goto LABEL_139;
            }

            v214 = *v245;
            while (1)
            {
              v147 = 0;
              do
              {
                if (*v245 != v214)
                {
                  v148 = v147;
                  objc_enumerationMutation(obj);
                  v147 = v148;
                }

                v218 = v147;
                v149 = *(*(&v244 + 1) + 8 * v147);
                recordID = [v149 recordID];
                v221 = [v215 objectForKeyedSubscript:recordID];

                if ([v221 count])
                {
                  v151 = v221;
                  v219 = v149;
                  v225 = objc_alloc_init(MEMORY[0x277CBEB18]);
                  store8 = [(HDCloudSyncTarget *)self->_target store];
                  v232 = [store8 syncStoreForEpoch:{objc_msgSend(v219, "baselineEpoch")}];

                  v254 = 0;
                  v234 = [v232 receivedSyncAnchorMapWithError:&v254];
                  v217 = v254;
                  v153 = v234;
                  if (!v234)
                  {
                    _HKInitializeLogging();
                    v154 = *MEMORY[0x277CCC328];
                    v153 = 0;
                    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138543618;
                      *&buf[4] = self;
                      *&buf[12] = 2114;
                      *&buf[14] = v217;
                      _os_log_error_impl(&dword_228986000, v154, OS_LOG_TYPE_ERROR, "%{public}@: error calling receivedSyncAnchorMapWithError: %{public}@", buf, 0x16u);
                    }
                  }

                  v230 = [v153 copy];
                  v252 = 0u;
                  v253 = 0u;
                  v250 = 0u;
                  v251 = 0u;
                  v223 = v151;
                  v236 = [v223 countByEnumeratingWithState:&v250 objects:buf count:16];
                  if (v236)
                  {
                    v228 = *v251;
                    do
                    {
                      for (i = 0; i != v236; ++i)
                      {
                        if (*v251 != v228)
                        {
                          objc_enumerationMutation(v223);
                        }

                        v156 = *(*(&v250 + 1) + 8 * i);
                        decodedSyncAnchorRangeMap = [v156 decodedSyncAnchorRangeMap];
                        shardPredicate = [v232 shardPredicate];
                        v159 = [shardPredicate type] == 2;
                        v160 = decodedSyncAnchorRangeMap;
                        v161 = v230;
                        if (v160 && (![v160 anchorRangeCount] ? (v162 = 1) : (v162 = v230 == 0), !v162))
                        {
                          configuration11 = [(HDCloudSyncOperation *)self configuration];
                          repository5 = [configuration11 repository];
                          profile4 = [repository5 profile];
                          legacyRepositoryProfile3 = [profile4 legacyRepositoryProfile];

                          v261 = 0;
                          v262 = &v261;
                          v263 = 0x2020000000;
                          v264 = 1;
                          v255 = 0;
                          v256 = &v255;
                          v257 = 0x3032000000;
                          v258 = __Block_byref_object_copy__202;
                          v259 = __Block_byref_object_dispose__202;
                          v260 = 0;
                          *v276 = MEMORY[0x277D85DD0];
                          *&v276[8] = 3221225472;
                          *&v276[16] = __93__HDCloudSyncPullStoreOperation__isValidAnchorRangeMap_lastAnchorMap_allowStartingGap_error___block_invoke;
                          v277 = &unk_27862F190;
                          v169 = legacyRepositoryProfile3;
                          *&v278 = v169;
                          v170 = v161;
                          v281 = v159;
                          *(&v278 + 1) = v170;
                          v279 = &v255;
                          v280 = &v261;
                          [v160 enumerateAnchorRangesAndEntityIdentifiersWithBlock:v276];
                          v171 = v256[5];
                          v163 = v171;
                          if (v171)
                          {
                            v172 = v171;
                          }

                          v164 = *(v262 + 24);
                          _Block_object_dispose(&v255, 8);

                          _Block_object_dispose(&v261, 8);
                        }

                        else
                        {
                          v163 = 0;
                          v164 = 1;
                        }

                        v173 = v163;
                        if ((v164 & 1) == 0)
                        {
                          _HKInitializeLogging();
                          v174 = *MEMORY[0x277CCC328];
                          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
                          {
                            v183 = v174;
                            changeIndex = [v156 changeIndex];
                            *v276 = 138544130;
                            *&v276[4] = self;
                            *&v276[12] = 2048;
                            *&v276[14] = changeIndex;
                            *&v276[22] = 2114;
                            v277 = v160;
                            LOWORD(v278) = 2114;
                            *(&v278 + 2) = v173;
                            _os_log_error_impl(&dword_228986000, v183, OS_LOG_TYPE_ERROR, "%{public}@: %lld %{public}@ - failed validity check: %{public}@", v276, 0x2Au);
                          }
                        }

                        v175 = v160 == 0;
                        v248[0] = MEMORY[0x277D85DD0];
                        v248[1] = 3221225472;
                        v248[2] = __95__HDCloudSyncPullStoreOperation__requiredRecordsWithOrderedChangeRecords_sequenceRecord_error___block_invoke;
                        v248[3] = &unk_278615E50;
                        v249 = v161;
                        [v160 enumerateAnchorRangesAndEntityIdentifiersWithBlock:v248];
                        v176 = v160;
                        v177 = v234;
                        if (!v175 && [v176 anchorRangeCount] && objc_msgSend(v177, "anchorCount"))
                        {
                          v255 = 0;
                          v256 = &v255;
                          v257 = 0x2020000000;
                          LOBYTE(v258) = 0;
                          *v276 = MEMORY[0x277D85DD0];
                          *&v276[8] = 3221225472;
                          *&v276[16] = __78__HDCloudSyncPullStoreOperation__shouldApplyAnchorRangeMap_receivedAnchorMap___block_invoke;
                          v277 = &unk_278616070;
                          v178 = v177;
                          *&v278 = v178;
                          *(&v278 + 1) = &v255;
                          [v176 enumerateAnchorRangesAndEntityIdentifiersWithBlock:v276];
                          v179 = *(v256 + 24);

                          _Block_object_dispose(&v255, 8);
                          if ((v179 & 1) == 0)
                          {
                            goto LABEL_118;
                          }
                        }

                        else
                        {
                        }

                        _HKInitializeLogging();
                        v180 = *MEMORY[0x277CCC328];
                        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
                        {
                          v181 = v180;
                          changeIndex2 = [v156 changeIndex];
                          *v276 = 138543874;
                          *&v276[4] = self;
                          *&v276[12] = 2048;
                          *&v276[14] = changeIndex2;
                          *&v276[22] = 2114;
                          v277 = v176;
                          _os_log_impl(&dword_228986000, v181, OS_LOG_TYPE_DEFAULT, "%{public}@: %lld %{public}@", v276, 0x20u);
                        }

                        [v225 addObject:v156];
LABEL_118:
                      }

                      v236 = [v223 countByEnumeratingWithState:&v250 objects:buf count:16];
                    }

                    while (v236);
                  }

                  if (!v225)
                  {
                    [(HDCloudSyncPullStoreOperation *)self finishWithSuccess:0 error:0];

LABEL_139:
LABEL_140:

LABEL_141:
LABEL_142:
                    v204 = *MEMORY[0x277D85DE8];
                    return;
                  }

                  _HKInitializeLogging();
                  v185 = *MEMORY[0x277CCC328];
                  if (os_log_type_enabled(v185, OS_LOG_TYPE_DEFAULT))
                  {
                    slot = [v219 slot];
                    if ((slot - 1) >= 3)
                    {
                      v186 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", slot];
                    }

                    else
                    {
                      v186 = off_27862F1B0[(slot - 1)];
                    }

                    v188 = v186;
                    v189 = [v225 count];
                    v190 = [v223 count];
                    *buf = 138544130;
                    *&buf[4] = self;
                    *&buf[12] = 2114;
                    *&buf[14] = v186;
                    *&buf[22] = 2048;
                    v274 = v189;
                    *v275 = 2048;
                    *&v275[2] = v190;
                    _os_log_impl(&dword_228986000, v185, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@: %lu/%lu required changes.", buf, 0x2Au);
                  }

                  if ([v225 count])
                  {
                    v191 = [HDCloudSyncPullSequenceOperation alloc];
                    configuration12 = [(HDCloudSyncOperation *)self configuration];
                    v193 = [(HDCloudSyncPullSequenceOperation *)v191 initWithConfiguration:configuration12 cloudState:0 target:self->_target sequence:v219 changes:v225];

                    [(HDCloudSyncCompoundOperation *)v212 addOperation:v193 transitionHandler:0];
                  }
                }

                v147 = v218 + 1;
              }

              while (v218 + 1 != v216);
              v216 = [obj countByEnumeratingWithState:&v244 objects:&v267 count:16];
              if (!v216)
              {
                goto LABEL_131;
              }
            }
          }
        }

        storeRecord22 = [(HDCloudSyncTarget *)self->_target storeRecord];
        sequenceRecord = [storeRecord22 sequenceRecord];

        if (!sequenceRecord)
        {

          v220 = v238;
          goto LABEL_64;
        }

        v96 = [(HDCloudSyncPullStoreOperation *)&self->super.super.isa _requiresSyncForSequence:sequenceRecord error:&v238];

        v220 = v238;
        if (v96)
        {
          if (v96 != 2)
          {
            goto LABEL_59;
          }

LABEL_64:
          _HKInitializeLogging();
          v113 = *MEMORY[0x277CCC328];
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            *&buf[4] = self;
            _os_log_impl(&dword_228986000, v113, OS_LOG_TYPE_DEFAULT, "%{public}@: Skipping pull; local anchors are up-to-date.", buf, 0xCu);
          }

          [(HDCloudSyncPullStoreOperation *)self finishWithSuccess:1 error:0];
          goto LABEL_141;
        }

LABEL_68:
        [(HDCloudSyncPullStoreOperation *)self finishWithSuccess:0 error:v220];
        goto LABEL_141;
      }
    }

    v52 = 0;
    goto LABEL_33;
  }

  v51 = *MEMORY[0x277D85DE8];

  [(HDCloudSyncPullStoreOperation *)self finishWithSuccess:1 error:0];
}

uint64_t __52__HDCloudSyncPullStoreOperation__fetchChangeRecords__block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [a2 record];
    v4 = [*(v2 + 112) storeRecord];
    v5 = [v4 tombstoneSequenceRecord];
    if (v5)
    {
      v6 = [*(v2 + 112) storeRecord];
      v7 = [v6 tombstoneSequenceRecord];
      v8 = [HDCloudSyncChangeRecord isChangeRecord:v3 inSequence:v7];
    }

    else
    {
      v8 = 0;
    }

    v9 = [*(v2 + 112) storeRecord];
    v10 = [v9 sequenceRecord];

    v11 = v8 | [HDCloudSyncChangeRecord isChangeRecord:v3 inSequence:v10];
    if ((v11 & 1) == 0)
    {
      _HKInitializeLogging();
      v12 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEBUG))
      {
        v15 = v12;
        v16 = [v3 recordID];
        v17 = 138543618;
        v18 = v2;
        v19 = 2114;
        v20 = v16;
        _os_log_debug_impl(&dword_228986000, v15, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@: is not in tombstone sequence or pull sequence, do not add", &v17, 0x16u);
      }
    }
  }

  else
  {
    v11 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v11 & 1;
}

uint64_t __55__HDCloudSyncPullStoreOperation__resetPullState_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 record];
  v5 = [*(*(a1 + 32) + 112) storeRecord];
  v6 = [v5 currentSequenceHeaderRecord];
  if ([HDCloudSyncChangeRecord isChangeRecord:v4 inSequence:v6])
  {
  }

  else
  {
    v7 = [v3 record];
    v8 = [*(*(a1 + 32) + 112) storeRecord];
    v9 = [v8 oldSequenceHeaderRecord];
    v10 = [HDCloudSyncChangeRecord isChangeRecord:v7 inSequence:v9];

    if (!v10)
    {
      v12 = 1;
      goto LABEL_7;
    }
  }

  v11 = [v3 protocolVersion];
  v12 = 1;
  if (v11 > [*(a1 + 40) syncProtocolVersion])
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    v12 = 0;
  }

LABEL_7:

  return v12;
}

- (BOOL)_copyAnchorsOfType:(void *)type from:(void *)from to:(void *)to error:(uint64_t)error
{
  toCopy = to;
  fromCopy = from;
  v8 = objc_alloc_init(HDSyncAnchorMap);
  configuration = [type configuration];
  repository = [configuration repository];
  profile = [repository profile];
  legacyRepositoryProfile = [profile legacyRepositoryProfile];
  v13 = [HDSyncAnchorEntity getSyncAnchorsOfType:3 anchorMap:v8 store:fromCopy profile:legacyRepositoryProfile error:error];

  if (v13)
  {
    configuration2 = [type configuration];
    syncDate = [configuration2 syncDate];
    configuration3 = [type configuration];
    repository2 = [configuration3 repository];
    profile2 = [repository2 profile];
    legacyRepositoryProfile2 = [profile2 legacyRepositoryProfile];
    v20 = toCopy;
    v21 = [HDSyncAnchorEntity updateSyncAnchorsWithMap:v8 type:3 updateDate:syncDate store:toCopy updatePolicy:2 resetInvalid:0 profile:legacyRepositoryProfile2 error:error];
  }

  else
  {
    v21 = 0;
    v20 = toCopy;
  }

  return v21;
}

- (uint64_t)_requiresSyncForSequence:(uint64_t)sequence error:
{
  v5 = a2;
  store = [self[14] store];
  v30 = v5;
  v7 = [store syncStoreForEpoch:{objc_msgSend(v5, "baselineEpoch")}];

  configuration = [self configuration];
  repository = [configuration repository];
  syncEngine = [repository syncEngine];
  configuration2 = [self configuration];
  repository2 = [configuration2 repository];
  profile = [repository2 profile];
  legacyRepositoryProfile = [profile legacyRepositoryProfile];
  sequenceCopy = sequence;
  LODWORD(sequence) = [syncEngine updateLocalVersionsForStore:v7 profile:legacyRepositoryProfile error:sequence];

  if (sequence)
  {
    v15 = v30;
    syncAnchorMap = [v30 syncAnchorMap];
    v17 = objc_alloc_init(HDSyncAnchorMap);
    configuration3 = [self configuration];
    repository3 = [configuration3 repository];
    profile2 = [repository3 profile];
    legacyRepositoryProfile2 = [profile2 legacyRepositoryProfile];
    v22 = [HDSyncAnchorEntity getSyncAnchorsOfType:3 anchorMap:v17 store:v7 profile:legacyRepositoryProfile2 error:sequenceCopy];

    v23 = v7;
    if (v22)
    {
      v34 = 0;
      v35 = &v34;
      v36 = 0x3032000000;
      v37 = __Block_byref_object_copy__202;
      v38 = __Block_byref_object_dispose__202;
      v39 = objc_alloc_init(MEMORY[0x277CBEB38]);
      orderedSyncEntities = [v7 orderedSyncEntities];
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __64__HDCloudSyncPullStoreOperation__requiresSyncForSequence_error___block_invoke;
      v31[3] = &unk_278628868;
      v25 = orderedSyncEntities;
      v32 = v25;
      v33 = &v34;
      [syncAnchorMap enumerateAnchorsAndEntityIdentifiersWithBlock:v31];
      v26 = [HDSyncAnchorMap syncAnchorMapWithDictionary:v35[5]];
      if (HDSyncAnchorMapIsSuperset(v26, v17))
      {
        v27 = 2;
      }

      else
      {
        v27 = 1;
      }

      _Block_object_dispose(&v34, 8);
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    v27 = 0;
    v15 = v30;
    v23 = v7;
  }

  return v27;
}

void __64__HDCloudSyncPullStoreOperation__requiresSyncForSequence_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __64__HDCloudSyncPullStoreOperation__requiresSyncForSequence_error___block_invoke_2;
  v9[3] = &unk_278623A30;
  v7 = v5;
  v10 = v7;
  if ([v6 hk_containsObjectPassingTest:v9])
  {
    v8 = [MEMORY[0x277CCABB0] numberWithLongLong:a3];
    [*(*(*(a1 + 40) + 8) + 40) setObject:v8 forKeyedSubscript:v7];
  }
}

uint64_t __64__HDCloudSyncPullStoreOperation__requiresSyncForSequence_error___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = [a2 syncEntityIdentifier];
  v5 = *(a1 + 32);
  if (v4 == v5)
  {
    v7 = 1;
  }

  else if (v5)
  {
    v6 = [a2 syncEntityIdentifier];
    v7 = [v6 isEqual:*(a1 + 32)];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __97__HDCloudSyncPullStoreOperation__orderedChangeRecordsBySequenceRecordIDWithFetchedChangeRecords___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __97__HDCloudSyncPullStoreOperation__orderedChangeRecordsBySequenceRecordIDWithFetchedChangeRecords___block_invoke_2;
  v12[3] = &unk_27862F140;
  v8 = v5;
  v13 = v8;
  v9 = [v7 hk_filter:v12];
  v10 = [v9 sortedArrayUsingSelector:sel_compare_];

  if ([v10 count])
  {
    v11 = [v8 recordID];
    v6[2](v6, v11, v10);
  }
}

uint64_t __97__HDCloudSyncPullStoreOperation__orderedChangeRecordsBySequenceRecordIDWithFetchedChangeRecords___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 sequenceRecordID];
  v4 = [*(a1 + 32) recordID];
  v5 = [v3 isEqual:v4];

  return v5;
}

void __93__HDCloudSyncPullStoreOperation__isValidAnchorRangeMap_lastAnchorMap_allowStartingGap_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v9 = a2;
  v10 = [*(a1 + 32) syncEngine];
  v11 = [v10 allSyncEntitiesByIdentifier];
  v12 = [v11 objectForKeyedSubscript:v9];

  if (v12)
  {
    v13 = [*(a1 + 40) anchorForSyncEntityIdentifier:v9];
    if (a3 > v13)
    {
      v14 = v13;
      if (v13 > 0 || (*(a1 + 64) & 1) == 0)
      {
        v15 = MEMORY[0x277CCA9B8];
        v16 = *(*(a1 + 48) + 8);
        obj = *(v16 + 40);
        v17 = HDSyncAnchorRangeDescription(a3, a4);
        [v15 hk_assignError:&obj code:1400 format:{@"anchor range %@ invalid for %@, last anchor %lld", v17, v9, v14}];
        objc_storeStrong((v16 + 40), obj);

        *(*(*(a1 + 56) + 8) + 24) = 0;
        *a5 = 1;
      }
    }
  }
}

uint64_t __78__HDCloudSyncPullStoreOperation__shouldApplyAnchorRangeMap_receivedAnchorMap___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = [*(a1 + 32) anchorForSyncEntityIdentifier:a2];
  if (a4 > result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a5 = 1;
  }

  return result;
}

BOOL __63__HDCloudSyncPullStoreOperation__childSyncIdentitiesWithError___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 profile];
  v8 = [v7 syncIdentityManager];
  v9 = [v8 childIdentitiesForCurrentSyncIdentityWithTransaction:v6 error:a3];

  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  return *(*(*(a1 + 40) + 8) + 40) != 0;
}

@end