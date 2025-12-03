@interface HDSampleAggregateCacheStore
- (BOOL)_indexInRangeOfQueryStartIndex:(void *)index endIndex:(uint64_t)endIndex bucketIndex:;
- (BOOL)deleteCachesForIndexes:(id)indexes generationNumber:(int64_t)number error:(id *)error;
- (BOOL)enumerateForInterval:(id)interval cachedClass:(Class)class anchorAfterDatabaseScan:(int64_t *)scan error:(id *)error cacheHandler:(id)handler;
- (BOOL)enumerateForInterval:(id)interval cachedClass:(Class)class anchorAfterDatabaseScan:(int64_t *)scan nowDate:(id)date calendar:(id)calendar error:(id *)error cacheHandler:(id)handler;
- (BOOL)saveCaches:(id)caches generationNumber:(int64_t)number error:(id *)error;
- (HDSampleAggregateCacheStore)initWithProfile:(id)profile queryDescriptor:(id)descriptor cachingIdentifier:(id)identifier sourceEntity:(id)entity anchorDate:(id)date intervalComponents:(id)components timeIntervalToBucketIndex:(id)index;
- (id)persistentAnchorDateWithError:(id *)error;
- (int64_t)cachesExistWithError:(id *)error;
@end

@implementation HDSampleAggregateCacheStore

- (HDSampleAggregateCacheStore)initWithProfile:(id)profile queryDescriptor:(id)descriptor cachingIdentifier:(id)identifier sourceEntity:(id)entity anchorDate:(id)date intervalComponents:(id)components timeIntervalToBucketIndex:(id)index
{
  profileCopy = profile;
  descriptorCopy = descriptor;
  identifierCopy = identifier;
  entityCopy = entity;
  dateCopy = date;
  componentsCopy = components;
  indexCopy = index;
  v37.receiver = self;
  v37.super_class = HDSampleAggregateCacheStore;
  v22 = [(HDSampleAggregateCacheStore *)&v37 init];
  v23 = v22;
  if (v22)
  {
    objc_storeWeak(&v22->_profile, profileCopy);
    v24 = [descriptorCopy copy];
    queryDescriptor = v23->_queryDescriptor;
    v23->_queryDescriptor = v24;

    v26 = [identifierCopy copy];
    cachingIdentifier = v23->_cachingIdentifier;
    v23->_cachingIdentifier = v26;

    v28 = [entityCopy copy];
    sourceEntity = v23->_sourceEntity;
    v23->_sourceEntity = v28;

    v30 = [indexCopy copy];
    timeIntervalToBucketIndex = v23->_timeIntervalToBucketIndex;
    v23->_timeIntervalToBucketIndex = v30;

    v32 = [dateCopy copy];
    anchorDate = v23->_anchorDate;
    v23->_anchorDate = v32;

    v34 = [componentsCopy copy];
    intervalComponents = v23->_intervalComponents;
    v23->_intervalComponents = v34;
  }

  return v23;
}

- (int64_t)cachesExistWithError:(id *)error
{
  cachingIdentifier = self->_cachingIdentifier;
  sourceEntity = self->_sourceEntity;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v7 = [HDSampleAggregateCacheEntity cachesExistForQueryIdentifier:cachingIdentifier sourceEntity:sourceEntity profile:WeakRetained error:error];

  return v7;
}

- (id)persistentAnchorDateWithError:(id *)error
{
  persistentAnchorDate = self->_persistentAnchorDate;
  if (persistentAnchorDate)
  {
    v4 = persistentAnchorDate;
  }

  else
  {
    cachingIdentifier = self->_cachingIdentifier;
    sourceEntity = self->_sourceEntity;
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v19 = 0;
    v10 = [HDCachedQueryMetadataEntity cachedQueryMetadataForQueryIdentifier:cachingIdentifier sourceEntity:sourceEntity profile:WeakRetained error:&v19];
    v11 = v19;

    if (v10)
    {
      v12 = 1;
    }

    else
    {
      v12 = v11 == 0;
    }

    if (v12)
    {
      if (v10)
      {
        anchorDate = [v10 anchorDate];
      }

      else
      {
        anchorDate = self->_anchorDate;
      }

      v17 = self->_persistentAnchorDate;
      self->_persistentAnchorDate = anchorDate;

      v4 = self->_persistentAnchorDate;
    }

    else
    {
      v14 = v11;
      v15 = v14;
      if (error)
      {
        v16 = v14;
        *error = v15;
      }

      else
      {
        _HKLogDroppedError();
      }

      v4 = 0;
    }
  }

  return v4;
}

- (BOOL)saveCaches:(id)caches generationNumber:(int64_t)number error:(id *)error
{
  cachesCopy = caches;
  v20 = 0;
  v9 = [(HDSampleAggregateCacheStore *)self persistentAnchorDateWithError:&v20];
  v10 = v20;
  v11 = v10;
  if (v9)
  {
    cachingIdentifier = self->_cachingIdentifier;
    sourceEntity = self->_sourceEntity;
    intervalComponents = self->_intervalComponents;
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v16 = [HDSampleAggregateCacheEntity insertCachedData:cachesCopy forQueryIdentifier:cachingIdentifier sourceEntity:sourceEntity generationNumber:number persistentAnchorDate:v9 intervalComponents:intervalComponents profile:WeakRetained error:error];
  }

  else
  {
    v18 = v10;
    WeakRetained = v18;
    if (v18)
    {
      if (error)
      {
        v19 = v18;
        v16 = 0;
        *error = WeakRetained;
      }

      else
      {
        _HKLogDroppedError();
        v16 = 0;
      }
    }

    else
    {
      v16 = 1;
    }
  }

  return v16;
}

- (BOOL)deleteCachesForIndexes:(id)indexes generationNumber:(int64_t)number error:(id *)error
{
  indexesCopy = indexes;
  v20 = 0;
  v9 = [(HDSampleAggregateCacheStore *)self persistentAnchorDateWithError:&v20];
  v10 = v20;
  v11 = v10;
  if (!v9)
  {
    v17 = v10;
    WeakRetained = v17;
    if (v17)
    {
      if (error)
      {
        v18 = v17;
        v16 = 0;
        *error = WeakRetained;
        goto LABEL_8;
      }

      _HKLogDroppedError();
    }

    v16 = 0;
    goto LABEL_8;
  }

  cachingIdentifier = self->_cachingIdentifier;
  sourceEntity = self->_sourceEntity;
  intervalComponents = self->_intervalComponents;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v16 = [HDSampleAggregateCacheEntity deleteCacheForBucketIndexes:indexesCopy forQueryIdentifier:cachingIdentifier sourceEntity:sourceEntity generationNumber:number persistentAnchorDate:v9 intervalComponents:intervalComponents profile:WeakRetained error:error];
LABEL_8:

  return v16;
}

- (BOOL)enumerateForInterval:(id)interval cachedClass:(Class)class anchorAfterDatabaseScan:(int64_t *)scan error:(id *)error cacheHandler:(id)handler
{
  intervalCopy = interval;
  handlerCopy = handler;
  v14 = [MEMORY[0x277CBEAA8] now];
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  LOBYTE(error) = [(HDSampleAggregateCacheStore *)self enumerateForInterval:intervalCopy cachedClass:class anchorAfterDatabaseScan:scan nowDate:v14 calendar:currentCalendar error:error cacheHandler:handlerCopy];

  return error;
}

- (BOOL)enumerateForInterval:(id)interval cachedClass:(Class)class anchorAfterDatabaseScan:(int64_t *)scan nowDate:(id)date calendar:(id)calendar error:(id *)error cacheHandler:(id)handler
{
  intervalCopy = interval;
  dateCopy = date;
  calendarCopy = calendar;
  handlerCopy = handler;
  if (!intervalCopy)
  {
    v28 = calendarCopy;
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDSampleAggregateCacheStore.mm" lineNumber:147 description:{@"Invalid parameter not satisfying: %@", @"interval != nil"}];

    calendarCopy = v28;
  }

  scanCopy = scan;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  database = [WeakRetained database];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __124__HDSampleAggregateCacheStore_enumerateForInterval_cachedClass_anchorAfterDatabaseScan_nowDate_calendar_error_cacheHandler___block_invoke;
  v31[3] = &unk_278616698;
  v31[4] = self;
  v21 = intervalCopy;
  v32 = v21;
  classCopy = class;
  v22 = dateCopy;
  v33 = v22;
  v23 = calendarCopy;
  v34 = v23;
  v24 = handlerCopy;
  v35 = v24;
  v37 = scanCopy;
  v25 = [(HDHealthEntity *)HDSampleAggregateCacheEntity performReadTransactionWithHealthDatabase:database error:error block:v31];

  return v25;
}

uint64_t __124__HDSampleAggregateCacheStore_enumerateForInterval_cachedClass_anchorAfterDatabaseScan_nowDate_calendar_error_cacheHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v239 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v187 = 0;
  v7 = *(a1 + 64);
  v8 = *(a1 + 72);
  v168 = v3;
  v166 = v5;
  v163 = v6;
  v161 = v7;
  if (v4)
  {
    v154 = v8;
    v9 = *(v4 + 16);
    v10 = *(v4 + 24);
    v184 = v4;
    WeakRetained = objc_loadWeakRetained((v4 + 8));
    v193 = 0;
    v12 = v9;
    v13 = WeakRetained;
    v165 = [HDCachedQueryMetadataEntity cachedQueryMetadataForQueryIdentifier:v12 sourceEntity:v10 profile:WeakRetained error:&v193];
    v14 = v193;

    if (v165)
    {
      v15 = 1;
    }

    else
    {
      v15 = v14 == 0;
    }

    if (!v15)
    {
      v21 = v14;
      v22 = v21;
      v23 = 0;
      v24 = v21;
      v187 = v21;
      v164 = v21;
LABEL_86:

      goto LABEL_87;
    }

    if (v165)
    {
      v16 = [v165 generationNumber];
      v17 = v4;
      if (v16)
      {
LABEL_11:
        v18 = *(v17 + 16);
        v19 = *(v17 + 24);
        v20 = objc_loadWeakRetained((v17 + 8));
        v192 = v14;
        v159 = [HDCachedQueryMetadataEntity lastUpdatedDateForQueryIdentifier:v18 sourceEntity:v19 profile:v20 error:&v192];
        v164 = v192;

        if (!v159 && v164)
        {
          v187 = v164;

          v23 = 0;
LABEL_85:

          v24 = v165;
          goto LABEL_86;
        }

        v25 = v165;
        v151 = v159;
        v26 = v163;
        v27 = v166;
        v155 = v25;
        v28 = [v25 anchorDate];
        v29 = v184;
        if (!v28)
        {
          goto LABEL_19;
        }

        v30 = *(v184 + 32);
        v31 = [v25 anchorDate];
        v32 = v30;
        v33 = v31;
        if (([v32 isEqual:v33] & 1) == 0)
        {
          [v32 timeIntervalSinceReferenceDate];
          v39 = v38;
          [v33 timeIntervalSinceReferenceDate];
          v41 = v40;
          [*(v184 + 48) hk_approximateDuration];
          v43 = ((v39 - v41) / v42);
          v44 = v43;
          v45 = v43 - 2;
          while (1)
          {
            v46 = [*(v29 + 48) hk_dateByAddingInterval:v44 toDate:v33];
            v47 = [v46 isEqual:v32];

            v29 = v184;
            if (v47)
            {
              break;
            }

            if (++v45 > v44)
            {

              goto LABEL_24;
            }
          }
        }

        v34 = [v155 intervalComponents];
        v28 = v34;
        v35 = *(v184 + 48);
        if (v34 == v35)
        {
        }

        else
        {
          if (!v35)
          {
LABEL_24:
            v150 = 0;
LABEL_28:
            v148 = 1;
LABEL_29:

            goto LABEL_30;
          }

          v36 = [v155 intervalComponents];
          v37 = [v36 isEqual:*(v184 + 48)];

          if ((v37 & 1) == 0)
          {
LABEL_19:
            v150 = 0;
            v148 = 1;
LABEL_30:

            v48 = [v155 anchorDate];
            v49 = v48;
            if (!v48)
            {
              v49 = *(v184 + 32);
            }

            objc_storeStrong((v184 + 40), v49);

            v191 = 0;
            v188[0] = 0;
            v188[1] = v188;
            v188[2] = 0x4812000000;
            v188[3] = __Block_byref_object_copy__24;
            v188[4] = __Block_byref_object_dispose__24;
            v188[5] = &unk_22929BC4D;
            v190[0] = 0;
            v190[1] = 0;
            v189 = v190;
            v156 = v168;
            v157 = v155;
            v50 = [v156 startDate];
            [v50 timeIntervalSinceReferenceDate];
            v52 = v51;

            v53 = [v156 endDate];
            [v53 timeIntervalSinceReferenceDate];
            v55 = v54;

            [v157 queryStartIndex];
            v57 = v56 = v184;
            if (v57)
            {
              v58 = [v156 startDate];
              v59 = v58 == 0;

              v56 = v184;
              if (!v59)
              {
                v60 = *(v184 + 40);
                v61 = (*(*(v184 + 72) + 16))(v52);
                v62 = [v157 queryStartIndex];
                v63 = [v62 integerValue];

                v56 = v184;
                if (v61 < v63)
                {
                  v227[0] = v61;
                  do
                  {
                    std::__tree<long>::__emplace_unique_key_args<long,long const&>(&v189, v61++);
                    v227[0] = v61;
                  }

                  while (v63 != v61);
                }
              }
            }

            v64 = [v157 queryEndIndex];
            if (v64)
            {
              v65 = [v156 endDate];
              v66 = v65 == 0;

              v56 = v184;
              if (!v66)
              {
                v67 = *(v184 + 40);
                v68 = (*(*(v184 + 72) + 16))(v55);
                v69 = [v157 queryEndIndex];
                v70 = [v69 integerValue];

                v56 = v184;
                if (v68 > v70)
                {
                  v71 = v70 + 1;
                  v227[0] = v70 + 1;
                  do
                  {
                    std::__tree<long>::__emplace_unique_key_args<long,long const&>(&v189, v71);
                    v227[0] = v71 + 1;
                    v15 = v71++ == v68;
                  }

                  while (!v15);
                }
              }
            }

            v72 = *(v56 + 64);
            if (v72)
            {
              [v72 arrayByAddingObject:*(v56 + 56)];
            }

            else
            {
              v225 = *(v56 + 56);
              [MEMORY[0x277CBEA60] arrayWithObjects:&v225 count:1];
            }
            v73 = ;
            v203 = 0;
            v204 = &v203;
            v205 = 0x4812000000;
            v206 = __Block_byref_object_copy__319;
            v207 = __Block_byref_object_dispose__320;
            v208 = &unk_22929BC4D;
            v211 = 0;
            __p = 0;
            v210 = 0;
            v199 = 0u;
            v200 = 0u;
            v201 = 0u;
            v202 = 0u;
            obj = v73;
            v147 = [obj countByEnumeratingWithState:&v199 objects:aBlock count:16];
            if (v147)
            {
              v149 = *v200;
              do
              {
                for (i = 0; i != v147; ++i)
                {
                  if (*v200 != v149)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v74 = *(*(&v199 + 1) + 8 * i);
                  v175 = [v157 maxAnchor];
                  v75 = v74;
                  v181 = v156;
                  v76 = objc_alloc_init(MEMORY[0x277CBEB18]);
                  v214 = 0u;
                  v215 = 0u;
                  v212 = 0u;
                  v213 = 0u;
                  v178 = v76;
                  v77 = [v75 sampleTypes];
                  v171 = v77;
                  v78 = [v77 countByEnumeratingWithState:&v212 objects:v227 count:16];
                  if (v78)
                  {
                    v79 = *v213;
                    do
                    {
                      for (j = 0; j != v78; ++j)
                      {
                        if (*v213 != v79)
                        {
                          objc_enumerationMutation(v171);
                        }

                        v81 = *(*(&v212 + 1) + 8 * j);
                        v82 = objc_loadWeakRetained((v184 + 8));
                        v83 = [HDSampleEntity entityEnumeratorWithType:v81 profile:v82];

                        v84 = [MEMORY[0x277CCABB0] numberWithLongLong:v175];
                        [v83 setAnchor:v84];

                        v85 = HDSampleEntityPredicateForDateInterval(v181, v81);
                        v86 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v85, 0}];
                        v87 = [v75 samplePredicate];
                        LOBYTE(v84) = v87 == 0;

                        if ((v84 & 1) == 0)
                        {
                          v88 = [v75 samplePredicate];
                          [v86 addObject:v88];
                        }

                        v89 = [MEMORY[0x277D10B20] predicateMatchingAllPredicates:v86];
                        [v83 setPredicate:v89];

                        v226[0] = v85;
                        v90 = [MEMORY[0x277D10B60] isNullPredicateWithProperty:@"start_date"];
                        v226[1] = v90;
                        v91 = [MEMORY[0x277D10B60] isNullPredicateWithProperty:@"end_date"];
                        v226[2] = v91;
                        v92 = [MEMORY[0x277CBEA60] arrayWithObjects:v226 count:3];

                        v93 = [MEMORY[0x277D10B20] predicateMatchingAnyPredicates:v92];
                        [v83 setDeletedObjectsPredicate:v93];

                        [v178 addObject:v83];
                      }

                      v77 = v171;
                      v78 = [v171 countByEnumeratingWithState:&v212 objects:v227 count:16];
                    }

                    while (v78);
                  }

                  v94 = [v178 copy];
                  v195 = 0u;
                  v196 = 0u;
                  v197 = 0u;
                  v198 = 0u;
                  v95 = v94;
                  v96 = [v95 countByEnumeratingWithState:&v195 objects:v216 count:16];
                  if (v96)
                  {
                    v97 = *v196;
                    while (2)
                    {
                      for (k = 0; k != v96; ++k)
                      {
                        if (*v196 != v97)
                        {
                          objc_enumerationMutation(v95);
                        }

                        v99 = *(*(&v195 + 1) + 8 * k);
                        v194[0] = MEMORY[0x277D85DD0];
                        v194[1] = 3221225472;
                        v194[2] = __126__HDSampleAggregateCacheStore__bucketIndexesWithSampleChanges_forInterval_queryMetadata_deletedObjectWithoutDatesAdded_error___block_invoke;
                        v194[3] = &unk_278616738;
                        *&v194[6] = v52;
                        *&v194[7] = v55;
                        v194[5] = &v191;
                        v194[4] = &v203;
                        if (([v99 enumerateSampleTimesIncludingDeletedObjects:1 error:&v187 handler:v194] & 1) == 0)
                        {

                          v23 = 0;
                          goto LABEL_78;
                        }
                      }

                      v96 = [v95 countByEnumeratingWithState:&v195 objects:v216 count:16];
                      if (v96)
                      {
                        continue;
                      }

                      break;
                    }
                  }
                }

                v147 = [obj countByEnumeratingWithState:&v199 objects:aBlock count:16];
              }

              while (v147);
            }

            v100 = v204[6];
            v101 = v204[7];
            while (v100 != v101)
            {
              v102 = objc_autoreleasePoolPush();
              v103 = *(v184 + 40);
              v104 = (*(*(v184 + 72) + 16))(*v100);
              v105 = *(v184 + 40);
              v106 = (*(*(v184 + 72) + 16))(v100[1]);
              v227[0] = v104;
              if (v104 <= v106)
              {
                do
                {
                  std::__tree<long>::__emplace_unique_key_args<long,long const&>(&v189, v104);
                  v227[0] = v104 + 1;
                  v15 = v104++ == v106;
                }

                while (!v15);
              }

              objc_autoreleasePoolPop(v102);
              v100 += 2;
            }

            v23 = 1;
LABEL_78:
            _Block_object_dispose(&v203, 8);
            if (__p)
            {
              v210 = __p;
              operator delete(__p);
            }

            if (v23)
            {
              aBlock[0] = MEMORY[0x277D85DD0];
              aBlock[1] = 3221225472;
              aBlock[2] = __101__HDSampleAggregateCacheStore__enumerateForInterval_cachedClass_nowDate_calendar_error_cacheHandler___block_invoke;
              aBlock[3] = &unk_2786166C0;
              aBlock[4] = v184;
              v107 = v157;
              v221 = v107;
              v222 = v188;
              v223 = v148;
              v224 = v191;
              v179 = _Block_copy(aBlock);
              v216[0] = MEMORY[0x277D85DD0];
              v216[1] = 3221225472;
              v216[2] = __101__HDSampleAggregateCacheStore__enumerateForInterval_cachedClass_nowDate_calendar_error_cacheHandler___block_invoke_2;
              v216[3] = &unk_2786166E8;
              v216[4] = v184;
              v176 = v107;
              v217 = v176;
              v218 = v188;
              v219 = v150;
              v182 = _Block_copy(v216);
              v108 = *(v184 + 72);
              v109 = [v156 startDate];
              [v109 timeIntervalSinceReferenceDate];
              v110 = (*(v108 + 16))(v108, *(v184 + 40));

              v111 = *(v184 + 72);
              v112 = [v156 endDate];
              [v112 timeIntervalSinceReferenceDate];
              v113 = (*(v111 + 16))(v111, *(v184 + 40));

              v203 = 0;
              v204 = &v203;
              v205 = 0x2020000000;
              v206 = v110;
              v115 = *(v184 + 16);
              v114 = *(v184 + 24);
              v116 = objc_loadWeakRetained((v184 + 8));
              v227[0] = MEMORY[0x277D85DD0];
              v227[1] = 3221225472;
              v227[2] = __101__HDSampleAggregateCacheStore__enumerateForInterval_cachedClass_nowDate_calendar_error_cacheHandler___block_invoke_3;
              v227[3] = &unk_278616710;
              v234 = v110;
              v235 = v113;
              v236 = sel__enumerateForInterval_cachedClass_nowDate_calendar_error_cacheHandler_;
              v227[4] = v184;
              v232 = &v203;
              v117 = v161;
              v229 = v117;
              v118 = v182;
              v230 = v118;
              v237 = v154;
              v228 = v176;
              v119 = v179;
              v238 = v150;
              v185 = v119;
              v231 = v119;
              v233 = v188;
              [HDSampleAggregateCacheEntity enumerateCachedDataForQueryIdentifier:v115 sourceEntity:v114 profile:v116 startIndex:v110 endIndex:v113 error:&v187 enumerationHandler:v227];

              if (v204[3] < v113)
              {
                do
                {
                  v120 = objc_autoreleasePoolPush();
                  v121 = (*(v118 + 2))(v118, v204[3]);
                  (*(v117 + 2))(v117, 0, v121, v204[3], 0);
                  objc_autoreleasePoolPop(v120);
                  v122 = v204[3] + 1;
                  v204[3] = v122;
                }

                while (v122 < v113);
              }

              _Block_object_dispose(&v203, 8);
            }

            _Block_object_dispose(v188, 8);
            std::__tree<long>::destroy(v190[0]);
            goto LABEL_85;
          }
        }

        v28 = [v26 hk_dateBySubtractingDays:*MEMORY[0x277CCBC20] - 1 fromDate:v27];
        if ([v151 hk_isBeforeOrEqualToDate:v28])
        {
          goto LABEL_27;
        }

        v180 = [v155 buildVersion];
        v183 = objc_loadWeakRetained((v184 + 8));
        v177 = [v183 daemon];
        v174 = [v177 behavior];
        v138 = [v174 currentOSBuild];
        v139 = v138;
        if (v180 == v138)
        {
        }

        else
        {
          v173 = objc_loadWeakRetained((v184 + 8));
          v140 = [v173 daemon];
          v141 = [v140 behavior];
          v142 = [v141 currentOSBuild];
          if (!v142)
          {

            goto LABEL_27;
          }

          v170 = v140;
          v172 = [v155 buildVersion];
          v143 = objc_loadWeakRetained((v184 + 8));
          v144 = [v143 daemon];
          v145 = [v144 behavior];
          v146 = [v145 currentOSBuild];
          v158 = [v172 isEqualToString:v146];

          if ((v158 & 1) == 0)
          {
LABEL_27:
            v150 = 1;
            goto LABEL_28;
          }
        }

        v148 = 0;
        v150 = 1;
        goto LABEL_29;
      }
    }

    v165 = 0;
    v17 = v4;
    goto LABEL_11;
  }

  v23 = 0;
LABEL_87:

  v123 = v187;
  v124 = v123;
  if (v123)
  {
    v125 = v23;
  }

  else
  {
    v125 = 1;
  }

  if (v125)
  {
    v126 = objc_loadWeakRetained((*(a1 + 32) + 8));
    v127 = [v126 database];
    v186 = v124;
    v167 = [(HDHealthEntity *)HDSampleEntity maxRowIDForPredicate:0 healthDatabase:v127 error:&v186];
    v169 = v186;

    v128 = v167;
    if (v167)
    {
      v129 = 1;
    }

    else
    {
      v129 = v169 == 0;
    }

    v130 = v129;
    if (v129)
    {
      if (*(a1 + 80))
      {
        **(a1 + 80) = [v167 longLongValue];
      }
    }

    else
    {
      v133 = v169;
      v134 = v133;
      if (a3)
      {
        v135 = v133;
        *a3 = v134;
      }

      else
      {
        _HKLogDroppedError();
      }

      v128 = v167;
    }
  }

  else
  {
    v131 = v123;
    v128 = v131;
    if (a3)
    {
      v132 = v131;
      v130 = 0;
      *a3 = v128;
    }

    else
    {
      _HKLogDroppedError();
      v130 = 0;
    }

    v169 = v128;
  }

  v136 = *MEMORY[0x277D85DE8];
  return v130;
}

uint64_t __101__HDSampleAggregateCacheStore__enumerateForInterval_cachedClass_nowDate_calendar_error_cacheHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) queryStartIndex];
  v8 = [*(a1 + 40) queryEndIndex];
  v9 = [(HDSampleAggregateCacheStore *)v6 _indexInRangeOfQueryStartIndex:v7 endIndex:v8 bucketIndex:a2];

  v10 = [*(a1 + 40) generationNumber];
  v11 = *(*(a1 + 48) + 8);
  v14 = *(v11 + 56);
  v12 = v11 + 56;
  v13 = v14;
  if (!v14)
  {
    goto LABEL_8;
  }

  v15 = v12;
  do
  {
    if (*(v13 + 32) >= a2)
    {
      v15 = v13;
    }

    v13 = *(v13 + 8 * (*(v13 + 32) < a2));
  }

  while (v13);
  if (v15 == v12 || *(v15 + 32) > a2)
  {
LABEL_8:
    v15 = v12;
  }

  v16 = v10 >= a3 && v9;
  if (v16 == 1)
  {
    if ((*(a1 + 56) & 1) == 0 && v15 == v12)
    {
      LOBYTE(v16) = *(a1 + 57);
    }
  }

  else
  {
    LOBYTE(v16) = 1;
  }

  return v16 & 1;
}

- (BOOL)_indexInRangeOfQueryStartIndex:(void *)index endIndex:(uint64_t)endIndex bucketIndex:
{
  v7 = a2;
  indexCopy = index;
  v9 = indexCopy;
  if (self)
  {
    self = 0;
    if (v7)
    {
      if (indexCopy)
      {
        integerValue = [v7 integerValue];
        integerValue2 = [v9 integerValue];
        self = integerValue <= endIndex && integerValue2 >= endIndex;
      }
    }
  }

  return self;
}

uint64_t __101__HDSampleAggregateCacheStore__enumerateForInterval_cachedClass_nowDate_calendar_error_cacheHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) queryStartIndex];
  v6 = [*(a1 + 40) queryEndIndex];
  v7 = [(HDSampleAggregateCacheStore *)v4 _indexInRangeOfQueryStartIndex:v5 endIndex:v6 bucketIndex:a2];

  v8 = *(*(a1 + 48) + 8);
  v11 = *(v8 + 56);
  v9 = v8 + 56;
  v10 = v11;
  if (!v11)
  {
    goto LABEL_8;
  }

  v12 = v9;
  do
  {
    if (*(v10 + 32) >= a2)
    {
      v12 = v10;
    }

    v10 = *(v10 + 8 * (*(v10 + 32) < a2));
  }

  while (v10);
  if (v12 == v9 || *(v12 + 32) > a2)
  {
LABEL_8:
    v12 = v9;
  }

  return (v12 != v9) | ((*(a1 + 56) & v7 & 1) == 0);
}

uint64_t __101__HDSampleAggregateCacheStore__enumerateForInterval_cachedClass_nowDate_calendar_error_cacheHandler___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (*(a1 + 88) > a3 || *(a1 + 96) < a3)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:*(a1 + 104) object:*(a1 + 32) file:@"HDSampleAggregateCacheStore.mm" lineNumber:278 description:{@"Invalid parameter not satisfying: %@", @"bucketIndex >= requestedStartIndex && bucketIndex <= requestedEndIndex"}];
  }

  while (*(*(*(a1 + 72) + 8) + 24) < a3)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 48);
    v9 = *(*(*(a1 + 72) + 8) + 24);
    v10 = (*(*(a1 + 56) + 16))();
    (*(v8 + 16))(v8, 0, v10, *(*(*(a1 + 72) + 8) + 24), 0);
    objc_autoreleasePoolPop(v7);
    ++*(*(*(a1 + 72) + 8) + 24);
  }

  v11 = *(a1 + 112);
  v29 = 0;
  v12 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:v11 fromData:v5 error:&v29];
  v13 = v29;
  if (v12)
  {
    v14 = (*(*(a1 + 64) + 16))();
    v15 = *(a1 + 48);
    if (v14)
    {
      if (*(a1 + 120))
      {
        v16 = v12;
      }

      else
      {
        v16 = 0;
      }

      (*(v15 + 16))(v15, v16, 1, a3, 0);
      v17 = *(*(a1 + 80) + 8);
      v18 = v17[7];
      if (v18)
      {
        v19 = v17 + 7;
        v20 = v17[7];
        do
        {
          if (v20[4] >= a3)
          {
            v19 = v20;
          }

          v20 = v20[v20[4] < a3];
        }

        while (v20);
        if (v19 != v17 + 7 && v19[4] <= a3)
        {
          v21 = v19[1];
          if (v21)
          {
            do
            {
              v22 = v21;
              v21 = *v21;
            }

            while (v21);
          }

          else
          {
            v26 = v19;
            do
            {
              v22 = v26[2];
              v27 = *v22 == v26;
              v26 = v22;
            }

            while (!v27);
          }

          if (v17[6] == v19)
          {
            v17[6] = v22;
          }

          --v17[8];
          std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v18, v19);
          operator delete(v19);
        }
      }
    }

    else
    {
      (*(v15 + 16))(v15, v12, 0, a3, 0);
    }
  }

  else
  {
    _HKInitializeLogging();
    v23 = *MEMORY[0x277CCC308];
    if (os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_ERROR))
    {
      v28 = *(a1 + 40);
      *buf = 138412290;
      v31 = v28;
      _os_log_error_impl(&dword_228986000, v23, OS_LOG_TYPE_ERROR, "Failure to decode cache for query %@", buf, 0xCu);
    }

    (*(*(a1 + 48) + 16))();
  }

  ++*(*(*(a1 + 72) + 8) + 24);

  v24 = *MEMORY[0x277D85DE8];
  return 1;
}

BOOL __126__HDSampleAggregateCacheStore__bucketIndexesWithSampleChanges_forInterval_queryMetadata_deletedObjectWithoutDatesAdded_error___block_invoke(uint64_t a1, double a2, double a3)
{
  v3 = a3 != 2.22507386e-308 && a2 != 2.22507386e-308;
  if (v3)
  {
    v4 = *(a1 + 48);
    if (v4 <= a2)
    {
      v4 = a2;
    }

    if (*(a1 + 56) <= a3)
    {
      a3 = *(a1 + 56);
    }

    if (v4 <= a3)
    {
      if (v4 >= a3)
      {
        a3 = v4;
      }

      HKIntervalMask<double>::_insertInterval((*(*(a1 + 32) + 8) + 48), v4, a3);
    }
  }

  else
  {
    **(a1 + 40) = 1;
  }

  return v3;
}

@end