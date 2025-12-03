@interface HDCloudSyncStateSampleWindowUpdater
+ (BOOL)_fetchPersistedDeletedSamples:(uint64_t)samples withSampleUUIDs:(void *)ds profile:(void *)profile transaction:(void *)transaction timeWindow:(void *)window error:(uint64_t)error;
+ (BOOL)_generateSyncCodableContributors:(void *)contributors fromCollectionByProvenance:(void *)provenance profile:(void *)profile transaction:(uint64_t)transaction error:;
+ (BOOL)_generateSyncCodableDevices:(void *)devices fromCollectionByProvenance:(void *)provenance profile:(void *)profile transaction:(uint64_t)transaction error:;
+ (BOOL)updateDataWithStateStorage:(id)storage configuration:(id)configuration profile:(id)profile transaction:(id)transaction error:(id *)error;
+ (HDCodableSyncState)_codableSyncStateFromExistingSyncState:(void *)state forDomain:(void *)domain key:;
+ (id)_healthObjectUUIDsFromMergedStateSyncCollection:(void *)collection configuration:;
+ (uint64_t)_decodeCloudData:(objc_class *)data ofClass:(void *)class forKey:(void *)key dataVersion:(HDCodableSyncState *)version currentSyncVersion:(NSObject *)syncVersion configuration:(uint64_t *)configuration codableSyncState:codableCollection:error:;
@end

@implementation HDCloudSyncStateSampleWindowUpdater

+ (BOOL)updateDataWithStateStorage:(id)storage configuration:(id)configuration profile:(id)profile transaction:(id)transaction error:(id *)error
{
  v212 = *MEMORY[0x277D85DE8];
  storageCopy = storage;
  configurationCopy = configuration;
  profileCopy = profile;
  transactionCopy = transaction;
  v205 = 0;
  sampleOriginKey = [configurationCopy sampleOriginKey];
  v16 = [storageCopy data:&v205 forKey:sampleOriginKey error:error];
  v17 = v205;

  if (v16)
  {
    v178 = transactionCopy;
    v204 = 0;
    v18 = [configurationCopy key];
    v19 = [storageCopy data:&v204 forKey:v18 error:error];
    loggingCategory16 = v204;

    if ((v19 & 1) == 0)
    {
      _HKInitializeLogging();
      loggingCategory = [configurationCopy loggingCategory];
      if (os_log_type_enabled(&loggingCategory->super.super, OS_LOG_TYPE_ERROR))
      {
        v43 = [configurationCopy key];
        v44 = *error;
        *buf = 138543874;
        *&buf[4] = self;
        *&buf[12] = 2114;
        *&buf[14] = v43;
        *&buf[22] = 2114;
        v211 = v44;
        _os_log_error_impl(&dword_228986000, &loggingCategory->super.super, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to fetch cloud data for key: %{public}@, with error: %{public}@", buf, 0x20u);
      }

      v36 = 0;
      goto LABEL_27;
    }

    v21 = objc_opt_class();
    sampleOriginKey2 = [configurationCopy sampleOriginKey];
    v202 = 0;
    v203 = 0;
    v23 = [HDCloudSyncStateSampleWindowUpdater _decodeCloudData:self ofClass:v17 forKey:v21 dataVersion:sampleOriginKey2 currentSyncVersion:configurationCopy configuration:&v203 codableSyncState:&v202 codableCollection:error error:?];
    loggingCategory = v203;
    v25 = v202;

    if (v23 != 2)
    {
      v36 = v23 == 1;
LABEL_26:

LABEL_27:
      transactionCopy = v178;
      goto LABEL_28;
    }

    v26 = objc_opt_class();
    v27 = [configurationCopy key];
    v200 = 0;
    v201 = 0;
    selfCopy = self;
    v28 = [HDCloudSyncStateSampleWindowUpdater _decodeCloudData:self ofClass:loggingCategory16 forKey:v26 dataVersion:v27 currentSyncVersion:configurationCopy configuration:&v201 codableSyncState:&v200 codableCollection:error error:?];
    v174 = v201;
    v175 = v200;

    if (v28 != 2)
    {
      _HKInitializeLogging();
      loggingCategory2 = [configurationCopy loggingCategory];
      if (os_log_type_enabled(loggingCategory2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        *&buf[4] = self;
        *&buf[12] = 1026;
        *&buf[14] = v28;
        _os_log_impl(&dword_228986000, loggingCategory2, OS_LOG_TYPE_DEFAULT, "[%{public}@] Decode finished with error?: %{public}i", buf, 0x12u);
      }

      v36 = v28 == 1;
      goto LABEL_24;
    }

    v179 = configurationCopy;
    v172 = v25;
    v173 = loggingCategory;
    if (v25)
    {
      v29 = v25;
      v30 = profileCopy;
      v31 = objc_opt_self();
      devices = [v29 devices];
      if (![HDDeviceEntity insertCodableDevices:devices syncProvenance:0 profile:v30 error:error])
      {
LABEL_11:

        _HKInitializeLogging();
        configurationCopy = v179;
        loggingCategory3 = [v179 loggingCategory];
        if (os_log_type_enabled(loggingCategory3, OS_LOG_TYPE_ERROR))
        {
          v135 = *error;
          *buf = 138543618;
          *&buf[4] = selfCopy;
          *&buf[12] = 2114;
          *&buf[14] = v135;
          _os_log_error_impl(&dword_228986000, loggingCategory3, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to save sample origins with error: %{public}@", buf, 0x16u);
        }

        v36 = 0;
        v25 = v172;
LABEL_24:
        v38 = v175;
LABEL_25:

        goto LABEL_26;
      }

      v170 = loggingCategory16;
      contributors = [v29 contributors];
      if ([HDSyncSampleOriginUtilities ingestContributorSyncObjects:contributors syncStore:0 profile:v30 error:error]== 1)
      {
        _HKInitializeLogging();
        v34 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
        {
          v143 = *error;
          *buf = 138543618;
          *&buf[4] = v31;
          *&buf[12] = 2114;
          *&buf[14] = v143;
          _os_log_error_impl(&dword_228986000, v34, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to ingest contributor sync object with error: %{public}@", buf, 0x16u);
        }

        loggingCategory16 = v170;
        goto LABEL_11;
      }

      configurationCopy = v179;
      loggingCategory16 = v170;
    }

    v168 = storageCopy;
    v169 = v17;
    v171 = loggingCategory16;
    if (v175)
    {
      v198 = 0u;
      v199 = 0u;
      v196 = 0u;
      v197 = 0u;
      deletedSampleCollections = [v175 deletedSampleCollections];
      v46 = [deletedSampleCollections countByEnumeratingWithState:&v196 objects:v209 count:16];
      if (v46)
      {
        v47 = v46;
        v48 = 0;
        v49 = 0;
        v50 = *v197;
        do
        {
          for (i = 0; i != v47; ++i)
          {
            if (*v197 != v50)
            {
              objc_enumerationMutation(deletedSampleCollections);
            }

            v52 = *(*(&v196 + 1) + 8 * i);
            if (!+[HDDataSyncUtilities insertDeletedObjectsFromCodableObjectCollection:syncEntityClass:syncStore:profile:error:](HDDataSyncUtilities, "insertDeletedObjectsFromCodableObjectCollection:syncEntityClass:syncStore:profile:error:", v52, +[HDDataSyncUtilities deletedSampleSyncEntityClass], 0, profileCopy, error))
            {
              _HKInitializeLogging();
              loggingCategory4 = [v179 loggingCategory];
              if (os_log_type_enabled(loggingCategory4, OS_LOG_TYPE_ERROR))
              {
                v54 = *error;
                *buf = 138543618;
                *&buf[4] = selfCopy;
                *&buf[12] = 2114;
                *&buf[14] = v54;
                _os_log_error_impl(&dword_228986000, loggingCategory4, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to save deleted samples with error: %{public}@", buf, 0x16u);
              }

              v49 = 1;
            }

            v48 += [v52 deletedSamplesCount];
          }

          v47 = [deletedSampleCollections countByEnumeratingWithState:&v196 objects:v209 count:16];
        }

        while (v47);

        configurationCopy = v179;
        v17 = v169;
        loggingCategory16 = v171;
        if (v49)
        {
          _HKInitializeLogging();
          loggingCategory5 = [v179 loggingCategory];
          v25 = v172;
          loggingCategory = v173;
          if (os_log_type_enabled(loggingCategory5, OS_LOG_TYPE_ERROR))
          {
            v146 = *error;
            *buf = 138543618;
            *&buf[4] = selfCopy;
            *&buf[12] = 2114;
            *&buf[14] = v146;
            _os_log_error_impl(&dword_228986000, loggingCategory5, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to insert a deleted sample with error: %{public}@", buf, 0x16u);
          }

          v36 = 0;
          goto LABEL_24;
        }
      }

      else
      {

        v48 = 0;
      }

      _HKInitializeLogging();
      loggingCategory6 = [configurationCopy loggingCategory];
      v57 = selfCopy;
      if (os_log_type_enabled(loggingCategory6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        *&buf[4] = selfCopy;
        *&buf[12] = 1024;
        *&buf[14] = v48;
        _os_log_impl(&dword_228986000, loggingCategory6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Persist %i deleted samples for state sync", buf, 0x12u);
      }

      v194 = 0u;
      v195 = 0u;
      v192 = 0u;
      v193 = 0u;
      v38 = v175;
      sampleCollections = [v175 sampleCollections];
      v59 = [sampleCollections countByEnumeratingWithState:&v192 objects:v208 count:16];
      if (v59)
      {
        v60 = v59;
        v61 = 0;
        v62 = 0;
        v63 = *v193;
        do
        {
          for (j = 0; j != v60; ++j)
          {
            if (*v193 != v63)
            {
              objc_enumerationMutation(sampleCollections);
            }

            v65 = *(*(&v192 + 1) + 8 * j);
            if (!+[HDDataSyncUtilities insertObjectsFromCodableObjectCollection:syncEntityClass:syncStore:profile:error:](HDDataSyncUtilities, "insertObjectsFromCodableObjectCollection:syncEntityClass:syncStore:profile:error:", v65, [v179 syncEntityClass], 0, profileCopy, error))
            {
              _HKInitializeLogging();
              loggingCategory7 = [v179 loggingCategory];
              if (os_log_type_enabled(loggingCategory7, OS_LOG_TYPE_ERROR))
              {
                v68 = *error;
                *buf = 138543618;
                *&buf[4] = selfCopy;
                *&buf[12] = 2114;
                *&buf[14] = v68;
                _os_log_error_impl(&dword_228986000, loggingCategory7, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to save samples with error: %{public}@", buf, 0x16u);
              }

              v62 = 1;
            }

            v67 = [v65 count];
            v61 += v67 - [v65 deletedSamplesCount];
          }

          v60 = [sampleCollections countByEnumeratingWithState:&v192 objects:v208 count:16];
        }

        while (v60);

        v17 = v169;
        loggingCategory16 = v171;
        v38 = v175;
        v57 = selfCopy;
        if (v62)
        {
          _HKInitializeLogging();
          configurationCopy = v179;
          loggingCategory8 = [v179 loggingCategory];
          v25 = v172;
          loggingCategory = v173;
          if (os_log_type_enabled(loggingCategory8, OS_LOG_TYPE_ERROR))
          {
            v148 = *error;
            *buf = 138543618;
            *&buf[4] = selfCopy;
            *&buf[12] = 2114;
            *&buf[14] = v148;
            _os_log_error_impl(&dword_228986000, loggingCategory8, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to insert a sample with error: %{public}@", buf, 0x16u);
          }

          v36 = 0;
          goto LABEL_25;
        }
      }

      else
      {

        v61 = 0;
      }

      _HKInitializeLogging();
      loggingCategory9 = [v179 loggingCategory];
      if (os_log_type_enabled(loggingCategory9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        *&buf[4] = v57;
        *&buf[12] = 1024;
        *&buf[14] = v61;
        _os_log_impl(&dword_228986000, loggingCategory9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Persist %i sample events for state sync", buf, 0x12u);
      }

      v71 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v188 = 0u;
      v189 = 0u;
      v190 = 0u;
      v191 = 0u;
      sampleCollections2 = [v38 sampleCollections];
      v73 = [sampleCollections2 countByEnumeratingWithState:&v188 objects:v207 count:16];
      configurationCopy = v179;
      if (v73)
      {
        v74 = v73;
        v75 = *v189;
        do
        {
          for (k = 0; k != v74; ++k)
          {
            if (*v189 != v75)
            {
              objc_enumerationMutation(sampleCollections2);
            }

            v77 = [v179 sampleUUIDsFromCodableObjectCollection:*(*(&v188 + 1) + 8 * k)];
            [v71 addObjectsFromArray:v77];
          }

          v74 = [sampleCollections2 countByEnumeratingWithState:&v188 objects:v207 count:16];
        }

        while (v74);
      }

      v187 = 0;
      timeWindow = [v179 timeWindow];
      v79 = [HDCloudSyncStateSampleWindowUpdater _fetchPersistedDeletedSamples:&v187 withSampleUUIDs:v71 profile:profileCopy transaction:timeWindow timeWindow:error error:?];
      v176 = v187;

      if (!v79)
      {
        _HKInitializeLogging();
        loggingCategory10 = [v179 loggingCategory];
        if (os_log_type_enabled(loggingCategory10, OS_LOG_TYPE_ERROR))
        {
          v147 = *error;
          *buf = 138543618;
          *&buf[4] = selfCopy;
          *&buf[12] = 2114;
          *&buf[14] = v147;
          _os_log_error_impl(&dword_228986000, loggingCategory10, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to fetch deleted samples with error: %{public}@", buf, 0x16u);
        }

        v36 = 0;
        v17 = v169;
        v38 = v175;
        goto LABEL_144;
      }
    }

    else
    {
      v176 = 0;
    }

    v80 = configurationCopy;
    v81 = profileCopy;
    objc_opt_self();
    sampleType = [v80 sampleType];
    v83 = HDSampleEntityPredicateForDataType(sampleType);
    v84 = MEMORY[0x277D10B20];
    v85 = HDDataEntityPredicateForType(2);
    v86 = [v84 negatedPredicate:v85];

    timeWindow2 = [v80 timeWindow];
    v88 = HDSampleEntityPredicateForDateInterval(timeWindow2, sampleType);

    v89 = MEMORY[0x277D10B20];
    v163 = v86;
    v165 = v83;
    *buf = v83;
    *&buf[8] = v88;
    *&buf[16] = v86;
    v90 = [MEMORY[0x277CBEA60] arrayWithObjects:buf count:3];
    v91 = [v89 predicateMatchingAllPredicates:v90];

    sampleType2 = [v80 sampleType];
    v167 = v80;

    v93 = [objc_msgSend(sampleType2 "dataObjectClass")];
    v94 = [HDDataSyncUtilities generateCodableObjectCollectionsForEntityClass:v93 predicate:v91 profile:v81 error:error];
    log = v81;

    if (v94 && [v94 count])
    {
      v95 = v94;
      v96 = v94;
    }

    else
    {
      v96 = 0;
    }

    v17 = v169;
    v97 = selfCopy;

    v98 = v96;
    v71 = v98;
    if (!v94)
    {
      _HKInitializeLogging();
      loggingCategory10 = [v80 loggingCategory];
      storageCopy = v168;
      v38 = v175;
      if (os_log_type_enabled(loggingCategory10, OS_LOG_TYPE_ERROR))
      {
        v145 = *error;
        *buf = 138543618;
        *&buf[4] = selfCopy;
        *&buf[12] = 2114;
        *&buf[14] = v145;
        _os_log_error_impl(&dword_228986000, loggingCategory10, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to fetch samples with error: %{public}@", buf, 0x16u);
      }

      v36 = 0;
      configurationCopy = v179;
      goto LABEL_144;
    }

    allValues = [v98 allValues];
    allValues2 = [v176 allValues];
    v183 = 0u;
    v184 = 0u;
    v185 = 0u;
    v186 = 0u;
    loggingCategory10 = allValues;
    v101 = [loggingCategory10 countByEnumeratingWithState:&v183 objects:v206 count:16];
    if (v101)
    {
      v102 = v101;
      v103 = 0;
      v104 = 0;
      v105 = *v184;
      do
      {
        for (m = 0; m != v102; ++m)
        {
          if (*v184 != v105)
          {
            objc_enumerationMutation(loggingCategory10);
          }

          v107 = *(*(&v183 + 1) + 8 * m);
          deletedSamplesCount = [v107 deletedSamplesCount];
          v104 += [v107 count] - deletedSamplesCount;
          v103 += deletedSamplesCount;
        }

        v102 = [loggingCategory10 countByEnumeratingWithState:&v183 objects:v206 count:16];
      }

      while (v102);
      v97 = selfCopy;
    }

    else
    {
      v103 = 0;
      v104 = 0;
    }

    _HKInitializeLogging();
    loggingCategory11 = [v167 loggingCategory];
    v38 = v175;
    if (os_log_type_enabled(loggingCategory11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      *&buf[4] = v97;
      *&buf[12] = 1024;
      *&buf[14] = v104;
      *&buf[18] = 1024;
      *&buf[20] = v103;
      _os_log_impl(&dword_228986000, loggingCategory11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Fetch %i local samples and %i deleted samples for state sync", buf, 0x18u);
    }

    if (loggingCategory10)
    {
      v110 = objc_alloc_init(HDCodableStateSyncCollection);
      v111 = [loggingCategory10 mutableCopy];
      [v110 setSampleCollections:v111];

      if (!allValues2)
      {
LABEL_106:
        v113 = [(HDCloudSyncStateSampleWindowUpdater *)v97 _healthObjectUUIDsFromMergedStateSyncCollection:v175 configuration:v167];
        v114 = v97;
        v115 = v113;
        v164 = v110;
        v159 = [(HDCloudSyncStateSampleWindowUpdater *)v114 _healthObjectUUIDsFromMergedStateSyncCollection:v110 configuration:v167];
        v160 = v115;
        v116 = [v115 isEqualToSet:v159];
        v117 = (v175 | v110) == 0;
        _HKInitializeLogging();
        loggingCategory12 = [v167 loggingCategory];
        v119 = os_log_type_enabled(loggingCategory12, OS_LOG_TYPE_DEFAULT);
        if ((v116 & 1) != 0 || v117)
        {
          v158 = loggingCategory12;
          if (v119)
          {
            *buf = 138543362;
            *&buf[4] = selfCopy;
            _os_log_impl(&dword_228986000, loggingCategory12, OS_LOG_TYPE_DEFAULT, "[%{public}@] Steady state reached for samples.", buf, 0xCu);
          }

          v36 = 1;
          storageCopy = v168;
          v17 = v169;
          configurationCopy = v179;
          v123 = v164;
          v133 = v159;
          goto LABEL_143;
        }

        if (v119)
        {
          *buf = 138543874;
          *&buf[4] = selfCopy;
          *&buf[12] = 1024;
          *&buf[14] = v104;
          *&buf[18] = 1024;
          *&buf[20] = v103;
          _os_log_impl(&dword_228986000, loggingCategory12, OS_LOG_TYPE_DEFAULT, "[%{public}@] Set %i samples and %i deleted samples in cloud state for state sync", buf, 0x18u);
        }

        domain = [v167 domain];
        v121 = [v167 key];
        v122 = [(HDCloudSyncStateSampleWindowUpdater *)selfCopy _codableSyncStateFromExistingSyncState:v174 forDomain:domain key:v121];

        [v122 setVersionRange:0x100000001];
        v123 = v164;
        [v122 setCodableObject:v164 version:1 profile:log];
        v158 = v122;
        data = [v122 data];
        v125 = [v167 key];
        storageCopy = v168;
        v126 = [v168 setData:data forKey:v125 error:error];

        if ((v126 & 1) == 0)
        {
          _HKInitializeLogging();
          loggingCategory13 = [v167 loggingCategory];
          configurationCopy = v179;
          v17 = v169;
          v157 = loggingCategory13;
          if (os_log_type_enabled(loggingCategory13, OS_LOG_TYPE_ERROR))
          {
            v150 = [v167 key];
            v151 = *error;
            *buf = 138543874;
            *&buf[4] = selfCopy;
            *&buf[12] = 2114;
            *&buf[14] = v150;
            *&buf[22] = 2114;
            v211 = v151;
            _os_log_error_impl(&dword_228986000, loggingCategory13, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to set merged data for key: %{public}@, with error: %{public}@", buf, 0x20u);
          }

          v36 = 0;
          v38 = v175;
          v133 = v159;
          v115 = v160;
          goto LABEL_142;
        }

        configurationCopy = v179;
        v17 = v169;
        if (v71)
        {
          v182 = 0;
          v127 = [HDCloudSyncStateSampleWindowUpdater _generateSyncCodableDevices:v71 fromCollectionByProvenance:log profile:v178 transaction:error error:?];
          v157 = v182;
          if (!v127)
          {
            _HKInitializeLogging();
            loga = [v167 loggingCategory];
            v38 = v175;
            v115 = v160;
            if (os_log_type_enabled(loga, OS_LOG_TYPE_ERROR))
            {
              v152 = *error;
              *buf = 138543618;
              *&buf[4] = selfCopy;
              *&buf[12] = 2114;
              *&buf[14] = v152;
              _os_log_error_impl(&dword_228986000, loga, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to generate merged devices with error: %{public}@", buf, 0x16u);
            }

            v36 = 0;
            goto LABEL_133;
          }

          v181 = 0;
          v36 = [HDCloudSyncStateSampleWindowUpdater _generateSyncCodableContributors:v71 fromCollectionByProvenance:log profile:v178 transaction:error error:?];
          v128 = v181;
          v129 = v128;
          if (v36)
          {
            v130 = objc_alloc_init(HDCodableSampleOriginCollection);
            [(HDCodableSampleOriginCollection *)v130 setDevices:v157];
            [(HDCodableSampleOriginCollection *)v130 setContributors:v129];
            v156 = v130;
            v131 = [v172 isEqual:v130];
            if (v172 | v130 && !v131)
            {

              v132 = v130;
              storageCopy = v168;
              goto LABEL_125;
            }

            loga = v129;
            _HKInitializeLogging();
            loggingCategory14 = [v167 loggingCategory];
            if (os_log_type_enabled(loggingCategory14, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              *&buf[4] = selfCopy;
              _os_log_impl(&dword_228986000, loggingCategory14, OS_LOG_TYPE_DEFAULT, "[%{public}@] Steady state reached for sample origin.", buf, 0xCu);
            }

            storageCopy = v168;
            configurationCopy = v179;
            v133 = v159;
            v115 = v160;
            p_super = &v156->super.super;
          }

          else
          {
            loga = v128;
            _HKInitializeLogging();
            p_super = [v167 loggingCategory];
            v115 = v160;
            if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
            {
              v155 = *error;
              *buf = 138543618;
              *&buf[4] = selfCopy;
              *&buf[12] = 2114;
              *&buf[14] = v155;
              _os_log_error_impl(&dword_228986000, p_super, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to generate merged contributors with error: %{public}@", buf, 0x16u);
            }

            v133 = v159;
          }

          v38 = v175;
          goto LABEL_141;
        }

        v132 = 0;
LABEL_125:
        domain2 = [v167 domain];
        sampleOriginKey3 = [v167 sampleOriginKey];
        v138 = [(HDCloudSyncStateSampleWindowUpdater *)selfCopy _codableSyncStateFromExistingSyncState:v173 forDomain:domain2 key:sampleOriginKey3];

        [v138 setVersionRange:0x100000001];
        v36 = 1;
        v157 = &v132->super.super;
        [v138 setCodableObject:v132 version:1 profile:log];
        loga = v138;
        data2 = [v138 data];
        sampleOriginKey4 = [v167 sampleOriginKey];
        v141 = [storageCopy setData:data2 forKey:sampleOriginKey4 error:error];

        if (v141)
        {
          configurationCopy = v179;
          v38 = v175;
          v123 = v164;
          v115 = v160;
        }

        else
        {
          _HKInitializeLogging();
          loggingCategory15 = [v167 loggingCategory];
          v38 = v175;
          v115 = v160;
          if (os_log_type_enabled(loggingCategory15, OS_LOG_TYPE_ERROR))
          {
            sampleOriginKey5 = [v167 sampleOriginKey];
            v154 = *error;
            *buf = 138543874;
            *&buf[4] = selfCopy;
            *&buf[12] = 2114;
            *&buf[14] = sampleOriginKey5;
            *&buf[22] = 2114;
            v211 = v154;
            _os_log_error_impl(&dword_228986000, loggingCategory15, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to set merged data for key: %{public}@, with error: %{public}@", buf, 0x20u);

            v38 = v175;
          }

          v36 = 0;
          configurationCopy = v179;
          v123 = v164;
        }

LABEL_133:
        v133 = v159;
LABEL_141:

LABEL_142:
LABEL_143:

LABEL_144:
        loggingCategory16 = v171;
        v25 = v172;
        loggingCategory = v173;
        goto LABEL_25;
      }

      if (v110)
      {
LABEL_105:
        v112 = [allValues2 mutableCopy];
        [v110 setDeletedSampleCollections:v112];

        goto LABEL_106;
      }
    }

    else if (!allValues2)
    {
      v110 = 0;
      goto LABEL_106;
    }

    v110 = objc_alloc_init(HDCodableStateSyncCollection);
    goto LABEL_105;
  }

  _HKInitializeLogging();
  loggingCategory16 = [configurationCopy loggingCategory];
  if (os_log_type_enabled(loggingCategory16, OS_LOG_TYPE_ERROR))
  {
    sampleOriginKey6 = [configurationCopy sampleOriginKey];
    v42 = *error;
    *buf = 138543874;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = sampleOriginKey6;
    *&buf[22] = 2114;
    v211 = v42;
    _os_log_error_impl(&dword_228986000, loggingCategory16, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to fetch cloud data for key: %{public}@, with error: %{public}@", buf, 0x20u);
  }

  v36 = 0;
LABEL_28:

  v39 = *MEMORY[0x277D85DE8];
  return v36;
}

+ (uint64_t)_decodeCloudData:(objc_class *)data ofClass:(void *)class forKey:(void *)key dataVersion:(HDCodableSyncState *)version currentSyncVersion:(NSObject *)syncVersion configuration:(uint64_t *)configuration codableSyncState:codableCollection:error:
{
  v76 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  classCopy = class;
  v13 = a2;
  v14 = objc_opt_self();
  v15 = v13;
  v16 = classCopy;
  v17 = keyCopy;
  v18 = objc_opt_self();
  if (!v15)
  {
    v30 = 0;
    v31 = 1;
    goto LABEL_26;
  }

  v19 = v18;
  v20 = [[HDCodableSyncState alloc] initWithData:v15];
  v21 = v20;
  if (v20)
  {
    domain = [(HDCodableSyncState *)v20 domain];
    domain2 = [v17 domain];
    v24 = domain2;
    dataCopy = data;
    v65 = v14;
    if (domain == domain2)
    {
    }

    else
    {
      v63 = v19;
      domain3 = [v17 domain];
      if (!domain3)
      {

LABEL_15:
        v38 = MEMORY[0x277CCA9B8];
        v39 = [(HDCodableSyncState *)v21 key];
        domain4 = [v17 domain];
        [v38 hk_assignError:configuration code:129 format:{@"Deserialized domain %@ does not match expected value %@", v39, domain4}];

        v30 = 0;
        v31 = 0;
        data = dataCopy;
        v14 = v65;
        goto LABEL_25;
      }

      v26 = domain3;
      domain5 = [(HDCodableSyncState *)v21 domain];
      domain6 = [v17 domain];
      v29 = [domain5 isEqualToString:domain6];

      v19 = v63;
      if ((v29 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    v34 = [(HDCodableSyncState *)v21 key];
    v35 = v34;
    if (v34 == v16)
    {

      data = dataCopy;
    }

    else
    {
      if (!v16)
      {

        data = dataCopy;
LABEL_23:
        v45 = MEMORY[0x277CCA9B8];
        v46 = [(HDCodableSyncState *)v21 key];
        domain7 = [v17 domain];
        [v45 hk_assignError:configuration code:129 format:{@"Deserialized key %@ does not match %@ for domain %@", v46, v16, domain7}];

        v30 = 0;
        v31 = 0;
LABEL_24:
        v14 = v65;
        goto LABEL_25;
      }

      v36 = [(HDCodableSyncState *)v21 key];
      v37 = [v36 isEqualToString:v16];

      data = dataCopy;
      if ((v37 & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    if ([(HDCodableSyncState *)v21 versionRange]< 2)
    {
      v44 = v21;
      v31 = 1;
      v30 = v21;
    }

    else
    {
      _HKInitializeLogging();
      loggingCategory = [v17 loggingCategory];
      if (os_log_type_enabled(loggingCategory, OS_LOG_TYPE_DEFAULT))
      {
        versionRange = [(HDCodableSyncState *)v21 versionRange];
        domain8 = [v17 domain];
        *buf = 138544386;
        v71 = v19;
        v72 = 1024;
        *v73 = versionRange;
        *&v73[4] = 2048;
        *&v73[6] = 1;
        *&v73[14] = 2114;
        *&v73[16] = domain8;
        v74 = 2114;
        v75 = v16;
        _os_log_impl(&dword_228986000, loggingCategory, OS_LOG_TYPE_DEFAULT, "[%{public}@] Codable state has minimum version %d but current version for OS is %ld for (%{public}@, %{public}@) ", buf, 0x30u);
      }

      v30 = 0;
      v31 = 2;
    }

    goto LABEL_24;
  }

  v32 = MEMORY[0x277CCA9B8];
  domain9 = [v17 domain];
  [v32 hk_assignError:configuration code:129 format:{@"Unable to decode state sync data for domain %@ key %@", domain9, v16}];

  v30 = 0;
  v31 = 0;
LABEL_25:

LABEL_26:
  v48 = v30;
  v49 = v48;
  if (v31 == 2)
  {
    _HKInitializeLogging();
    loggingCategory2 = [v17 loggingCategory];
    if (os_log_type_enabled(loggingCategory2, OS_LOG_TYPE_DEFAULT))
    {
      v53 = NSStringFromClass(data);
      *buf = 138543618;
      v71 = v14;
      v72 = 2114;
      *v73 = v53;
      _os_log_impl(&dword_228986000, loggingCategory2, OS_LOG_TYPE_DEFAULT, "[%{public}@] Decode finished without error but could not decode sync state codable of class: %{public}@.", buf, 0x16u);
    }

    v54 = 1;
  }

  else
  {
    if (!v31)
    {
      _HKInitializeLogging();
      loggingCategory2 = [v17 loggingCategory];
      if (os_log_type_enabled(loggingCategory2, OS_LOG_TYPE_ERROR))
      {
        v51 = NSStringFromClass(data);
        v52 = *configuration;
        *buf = 138543874;
        v71 = v14;
        v72 = 2114;
        *v73 = v51;
        *&v73[8] = 2114;
        *&v73[10] = v52;
        _os_log_error_impl(&dword_228986000, loggingCategory2, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to decode cloud sync state codable of class: %{public}@, with error: %{public}@", buf, 0x20u);
      }

LABEL_38:
      v54 = 0;
      goto LABEL_45;
    }

    if (v48)
    {
      v69 = 0;
      v55 = [(HDCodableSyncState *)v48 decodedObjectOfClass:data version:1 decodedObject:&v69 error:configuration];
      loggingCategory2 = v69;
      if (!v55)
      {
        _HKInitializeLogging();
        loggingCategory3 = [v17 loggingCategory];
        if (os_log_type_enabled(loggingCategory3, OS_LOG_TYPE_ERROR))
        {
          v61 = NSStringFromClass(data);
          v62 = *configuration;
          *buf = 138543874;
          v71 = v14;
          v72 = 2114;
          *v73 = v61;
          *&v73[8] = 2114;
          *&v73[10] = v62;
          _os_log_error_impl(&dword_228986000, loggingCategory3, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to decode codable cloud collection of class: %{public}@, with error: %{public}@", buf, 0x20u);
        }

        goto LABEL_38;
      }
    }

    else
    {
      loggingCategory2 = 0;
    }

    if (version)
    {
      v57 = v49;
      *version = v49;
    }

    if (syncVersion)
    {
      v58 = loggingCategory2;
      *syncVersion = loggingCategory2;
    }

    v54 = 2;
  }

LABEL_45:

  v59 = *MEMORY[0x277D85DE8];
  return v54;
}

+ (BOOL)_fetchPersistedDeletedSamples:(uint64_t)samples withSampleUUIDs:(void *)ds profile:(void *)profile transaction:(void *)transaction timeWindow:(void *)window error:(uint64_t)error
{
  v29[4] = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  transactionCopy = transaction;
  windowCopy = window;
  objc_opt_self();
  if ([profileCopy count])
  {
    v12 = HDDataEntityPredicateForType(2);
    v13 = HDDataEntityPredicateForDataUUIDs(profileCopy);
    endDate = [windowCopy endDate];
    v15 = HDSampleEntityPredicateForStartDate(3);

    startDate = [windowCopy startDate];
    v17 = HDSampleEntityPredicateForEndDate(6);

    v27 = v12;
    v29[0] = v12;
    v29[1] = v13;
    v29[2] = v15;
    v29[3] = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:4];
    v19 = [MEMORY[0x277D10B20] predicateMatchingAllPredicates:v18];
    v20 = +[HDDataSyncUtilities generateCodableObjectCollectionsForEntityClass:predicate:profile:error:](HDDataSyncUtilities, "generateCodableObjectCollectionsForEntityClass:predicate:profile:error:", +[HDDataSyncUtilities deletedSampleEntityClass], v19, transactionCopy, error);
    v21 = v20;
    v22 = v20 != 0;
    if (v20)
    {
      v23 = [v20 count];
      if (ds)
      {
        if (v23)
        {
          v24 = v21;
          *ds = v21;
        }
      }
    }
  }

  else
  {
    v22 = 1;
  }

  v25 = *MEMORY[0x277D85DE8];
  return v22;
}

+ (id)_healthObjectUUIDsFromMergedStateSyncCollection:(void *)collection configuration:
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a2;
  collectionCopy = collection;
  objc_opt_self();
  v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
  sampleCollections = [v4 sampleCollections];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [sampleCollections countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(sampleCollections);
        }

        v12 = [collectionCopy sampleUUIDsFromCodableObjectCollection:*(*(&v15 + 1) + 8 * i)];
        [v6 addObjectsFromArray:v12];
      }

      v9 = [sampleCollections countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (HDCodableSyncState)_codableSyncStateFromExistingSyncState:(void *)state forDomain:(void *)domain key:
{
  v6 = a2;
  stateCopy = state;
  domainCopy = domain;
  objc_opt_self();
  if (v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = objc_alloc_init(HDCodableSyncState);
    [(HDCodableSyncState *)v9 setDomain:stateCopy];
    [(HDCodableSyncState *)v9 setKey:domainCopy];
  }

  return v9;
}

+ (BOOL)_generateSyncCodableDevices:(void *)devices fromCollectionByProvenance:(void *)provenance profile:(void *)profile transaction:(uint64_t)transaction error:
{
  v34 = *MEMORY[0x277D85DE8];
  devicesCopy = devices;
  provenanceCopy = provenance;
  profileCopy = profile;
  objc_opt_self();
  v13 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(devicesCopy, "count")}];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v14 = devicesCopy;
  v15 = [v14 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v30;
    while (2)
    {
      v18 = 0;
      do
      {
        if (*v30 != v17)
        {
          objc_enumerationMutation(v14);
        }

        deviceID = [*(*(&v29 + 1) + 8 * v18) deviceID];
        if (!deviceID)
        {
          [MEMORY[0x277CCA9B8] hk_assignError:transaction code:3 format:@"DataOriginProvenance's deviceID is unexpectedly nil."];
          v22 = 0;
          v24 = v14;
          goto LABEL_14;
        }

        v20 = deviceID;
        [v13 addObject:deviceID];

        ++v18;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  v21 = [MEMORY[0x277D10B28] containsPredicateWithProperty:*MEMORY[0x277D10A40] values:v13];
  v28 = 0;
  v22 = [HDSyncSampleOriginUtilities generateStateSyncCodableDevices:&v28 predicate:v21 profile:provenanceCopy transaction:profileCopy error:transaction];
  v23 = v28;
  v24 = v23;
  if (a2 && v22)
  {
    v25 = v23;
    *a2 = v24;
  }

LABEL_14:
  v26 = *MEMORY[0x277D85DE8];
  return v22;
}

+ (BOOL)_generateSyncCodableContributors:(void *)contributors fromCollectionByProvenance:(void *)provenance profile:(void *)profile transaction:(uint64_t)transaction error:
{
  transactionCopy = transaction;
  v38 = *MEMORY[0x277D85DE8];
  contributorsCopy = contributors;
  provenanceCopy = provenance;
  profileCopy = profile;
  v9 = objc_opt_self();
  v10 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(contributorsCopy, "count")}];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v11 = contributorsCopy;
  v12 = [v11 countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v32;
    v15 = MEMORY[0x277CCC328];
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v32 != v14)
        {
          objc_enumerationMutation(v11);
        }

        contributorID = [*(*(&v31 + 1) + 8 * i) contributorID];
        if (contributorID)
        {
          [v10 addObject:contributorID];
        }

        else
        {
          _HKInitializeLogging();
          v18 = *v15;
          if (os_log_type_enabled(*v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v36 = v9;
            _os_log_impl(&dword_228986000, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@] Contributor persistentID is nil", buf, 0xCu);
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v31 objects:v37 count:16];
    }

    while (v13);
  }

  v19 = [MEMORY[0x277D10B28] containsPredicateWithProperty:*MEMORY[0x277D10A40] values:v10];
  v30 = 0;
  v20 = [HDSyncSampleOriginUtilities generateStateSyncCodableContributors:&v30 predicate:v19 profile:provenanceCopy transaction:profileCopy error:transactionCopy];
  v21 = v30;
  v22 = v21;
  if (a2 && v20)
  {
    v23 = v21;
    *a2 = v22;
  }

  v24 = *MEMORY[0x277D85DE8];
  return v20;
}

@end