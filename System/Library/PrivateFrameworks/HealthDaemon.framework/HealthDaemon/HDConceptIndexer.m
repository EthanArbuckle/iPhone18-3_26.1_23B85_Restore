@interface HDConceptIndexer
+ (BOOL)indexSamplesForProfile:(id)a3 limit:(unint64_t)a4 outIndexedSamplesCount:(int64_t *)a5 error:(id *)a6;
+ (BOOL)resetIndexManagerStateForProfile:(id)a3 withError:(id *)a4;
+ (BOOL)storeState:(id)a3 profile:(id)a4 transaction:(id)a5 error:(id *)a6;
+ (HDConceptIndexState)_stateWithKeyValueDomain:(uint64_t)a1 transaction:(void *)a2 error:(void *)a3;
+ (HDKeyValueDomain)_keyValueDomainWithProfile:(uint64_t)a1;
+ (id)stateWithProfile:(id)a3 transaction:(id)a4 error:(id *)a5;
+ (uint64_t)_storeState:(uint64_t)a1 keyValueDomain:(void *)a2 transaction:(void *)a3 error:(uint64_t)a4;
- (HDConceptIndexer)init;
@end

@implementation HDConceptIndexer

- (HDConceptIndexer)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

+ (BOOL)indexSamplesForProfile:(id)a3 limit:(unint64_t)a4 outIndexedSamplesCount:(int64_t *)a5 error:(id *)a6
{
  v10 = a3;
  v11 = [v10 database];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __78__HDConceptIndexer_indexSamplesForProfile_limit_outIndexedSamplesCount_error___block_invoke;
  v14[3] = &unk_278629D48;
  v17 = a4;
  v18 = a5;
  v15 = v10;
  v16 = a1;
  v12 = v10;
  LOBYTE(a6) = [(HDHealthEntity *)HDMedicalRecordEntity performWriteTransactionWithHealthDatabase:v11 error:a6 block:v14];

  return a6;
}

BOOL __78__HDConceptIndexer_indexSamplesForProfile_limit_outIndexedSamplesCount_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v175 = *MEMORY[0x277D85DE8];
  v121 = *(a1 + 48);
  v110 = *(a1 + 56);
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v7 = a2;
  objc_opt_self();
  v8 = v6;
  v9 = v7;
  v10 = objc_opt_self();
  v11 = [(HDConceptIndexer *)v10 _keyValueDomainWithProfile:v8];
  v113 = a3;
  v12 = [HDConceptIndexer _stateWithKeyValueDomain:v10 transaction:v11 error:a3];
  if (!v12)
  {

LABEL_98:
    v103 = 0;
    goto LABEL_99;
  }

  v112 = v11;
  v119 = v9;
  v123 = v12;
  v13 = [v12 anchor];
  v120 = v8;
  v14 = [v8 daemon];
  v15 = [v14 behavior];
  v16 = [v15 futureMigrationsEnabled];
  v17 = v13;
  v117 = v10;
  objc_opt_self();
  if (v17)
  {
    v18 = MEMORY[0x277D10B18];
    v19 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v17, "_rowid")}];
    v20 = [v18 predicateWithProperty:@"data_id" greaterThanValue:v19];
  }

  else
  {
    v20 = 0;
  }

  v21 = [MEMORY[0x277CCD848] medicalRecordDescriptionsWithPredicate:0 futureMigrationsEnabled:v16];
  *&v171 = MEMORY[0x277D85DD0];
  *(&v171 + 1) = 3221225472;
  v172 = __76__HDConceptIndexer__queryDescriptorsFollowingAnchor_futureMigrationEnabled___block_invoke;
  v173 = &unk_278629D70;
  v174 = v20;
  v22 = v20;
  v23 = [v21 hk_map:&v171];

  v111 = v23;
  v8 = v120;
  v24 = [[HDMultiTypeSortedSampleIterator alloc] initWithQueryDescriptors:v23 includeDeletedObjects:0 anchor:0 sortDescriptors:0 bufferSize:v121 profile:v120];
  v116 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v142 = 0;
  v25 = [(HDMultiTypeSortedSampleIterator *)v24 advanceWithError:&v142];
  v26 = v142;
  v27 = v26;
  v118 = v24;
  if (v25)
  {
    v126 = 0;
    v122 = 0;
    v28 = 0x277CCD000;
    v29 = v26;
    while (1)
    {
      if (v121 && v126 >= v121)
      {
        v27 = v29;
        goto LABEL_80;
      }

      v125 = v29;
      v30 = [(HDMultiTypeSortedSampleIterator *)v24 sample];
      v141 = 0;
      v31 = v30;
      v32 = v8;
      v33 = v119;
      objc_opt_self();
      v124 = v33;
      if ([v31 conformsToProtocol:&unk_283D34DC8])
      {
        v115 = v31;
        v34 = v31;
        v140 = [v32 internalContentDatabaseManager];
        v137 = [v140 ontologyContentVersionWithError:&v141];
        if (v137)
        {
          v114 = v32;
          v136 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v35 = [HDConceptResolutionConfiguration alloc];
          v36 = [v34 country];
          v37 = HKCurrentLocaleCountryCodeIfUnknown();
          v127 = -[HDConceptResolutionConfiguration initWithCountryCode:recordCategoryType:options:](v35, "initWithCountryCode:recordCategoryType:options:", v37, [v34 recordCategoryType], 0);

          v163 = 0u;
          v164 = 0u;
          v161 = 0u;
          v162 = 0u;
          obj = [objc_opt_class() indexableConceptKeyPaths];
          v38 = [obj countByEnumeratingWithState:&v161 objects:&v171 count:16];
          v132 = v34;
          if (v38)
          {
            v39 = v38;
            v40 = *v162;
            v129 = 1;
            while (2)
            {
              for (i = 0; i != v39; ++i)
              {
                if (*v162 != v40)
                {
                  objc_enumerationMutation(obj);
                }

                v42 = *(*(&v161 + 1) + 8 * i);
                v160 = 0;
                v43 = [v34 codingsForKeyPath:v42 error:&v160];
                v44 = v160;
                if (!v43)
                {
                  _HKInitializeLogging();
                  v56 = HKLogConceptIndex();
                  if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
                  {
                    v91 = HKSensitiveLogItem();
                    *buf = 138543362;
                    *&buf[4] = v91;
                    _os_log_error_impl(&dword_228986000, v56, OS_LOG_TYPE_ERROR, "Failed to index sample with error %{public}@", buf, 0xCu);
                  }

                  v129 = 0;
                  goto LABEL_34;
                }

                v157[0] = MEMORY[0x277D85DD0];
                v157[1] = 3221225472;
                v157[2] = __59__HDConceptIndexer__indexSample_profile_transaction_error___block_invoke;
                v157[3] = &unk_278629D98;
                v158 = v140;
                v159 = v127;
                v45 = [v43 hk_map:v157];
                v156 = 0;
                v46 = [v34 applyConcepts:v45 forKeyPath:v42 error:&v156];
                v47 = v156;
                if (v46)
                {
                  v152[0] = MEMORY[0x277D85DD0];
                  v152[1] = 3221225472;
                  v152[2] = __59__HDConceptIndexer__indexSample_profile_transaction_error___block_invoke_395;
                  v152[3] = &unk_278629DC0;
                  v153 = v34;
                  v154 = v42;
                  v155 = v137;
                  v48 = [v45 hk_map:v152];
                  [v136 addObjectsFromArray:v48];

                  v49 = v153;
                }

                else
                {
                  _HKInitializeLogging();
                  v49 = HKLogConceptIndex();
                  if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
                  {
                    v50 = [v132 UUID];
                    v134 = HKSensitiveLogItem();
                    *buf = 138543618;
                    *&buf[4] = v50;
                    v169 = 2114;
                    v170 = v134;
                    _os_log_error_impl(&dword_228986000, v49, OS_LOG_TYPE_ERROR, "Failed to apply concepts to sample with UUID %{public}@ with error %{public}@", buf, 0x16u);
                  }

                  v129 = 0;
                }

                if (!v46)
                {
                  v28 = 0x277CCD000uLL;
                  v34 = v132;
                  goto LABEL_34;
                }

                v28 = 0x277CCD000;
                v34 = v132;
              }

              v39 = [obj countByEnumeratingWithState:&v161 objects:&v171 count:16];
              if (v39)
              {
                continue;
              }

              break;
            }
          }

          else
          {
            v129 = 1;
          }

LABEL_34:

          v151 = 0u;
          v149 = 0u;
          v150 = 0u;
          v148 = 0u;
          v128 = [objc_opt_class() cachedConceptRelationshipKeyPaths];
          v131 = [v128 countByEnumeratingWithState:&v148 objects:buf count:16];
          if (v131)
          {
            v130 = *v149;
            while (2)
            {
              for (j = 0; j != v131; ++j)
              {
                if (*v149 != v130)
                {
                  objc_enumerationMutation(v128);
                }

                obja = *(*(&v148 + 1) + 8 * j);
                v58 = [obja componentsSeparatedByString:@"."];
                v59 = v34;
                v144 = 0u;
                v145 = 0u;
                v146 = 0u;
                v147 = 0u;
                v60 = v58;
                v61 = [v60 countByEnumeratingWithState:&v144 objects:v167 count:16];
                if (v61)
                {
                  v62 = v61;
                  v133 = v59;
                  v135 = j;
                  v63 = *v145;
                  while (2)
                  {
                    for (k = 0; k != v62; ++k)
                    {
                      if (*v145 != v63)
                      {
                        objc_enumerationMutation(v60);
                      }

                      v65 = *(*(&v144 + 1) + 8 * k);
                      v66 = objc_autoreleasePoolPush();
                      v67 = *(v28 + 432);
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v68 = v59;
                        v59 = v68;
                        if (([v68 relationshipsAreLoaded] & 1) == 0)
                        {
                          v69 = [v68 identifier];
                          v143 = 0;
                          v70 = [v140 relationshipsForConceptWithIdentifier:v69 error:&v143];
                          v71 = v143;

                          if (!v70)
                          {
                            _HKInitializeLogging();
                            v73 = HKLogConceptIndex();
                            if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
                            {
                              v79 = HKSensitiveLogItem();
                              *v165 = 138543362;
                              v166 = v79;
                              _os_log_error_impl(&dword_228986000, v73, OS_LOG_TYPE_ERROR, "error loading relationships for concept: %{public}@", v165, 0xCu);
                            }

                            objc_autoreleasePoolPop(v66);
                            v129 = 0;
                            v28 = 0x277CCD000;
                            goto LABEL_55;
                          }

                          v59 = [v68 copyWithRelationships:v70];

                          v28 = 0x277CCD000;
                        }
                      }

                      v72 = v59;
                      objc_autoreleasePoolPop(v66);
                      v59 = [v59 valueForKey:v65];
                    }

                    v62 = [v60 countByEnumeratingWithState:&v144 objects:v167 count:16];
                    if (v62)
                    {
                      continue;
                    }

                    break;
                  }

                  v68 = v59;
LABEL_55:
                  v34 = v132;
                  v59 = v133;
                  j = v135;
                }

                else
                {
                  v68 = v59;
                }

                v74 = *(v28 + 432);
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  _HKInitializeLogging();
                  v80 = HKLogConceptIndex();
                  if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
                  {
                    v89 = objc_opt_class();
                    v90 = NSStringFromClass(v89);
                    *v165 = 138543362;
                    v166 = v90;
                    _os_log_error_impl(&dword_228986000, v80, OS_LOG_TYPE_ERROR, "Encountered an unsupported class %{public}@ when generating concept relationship cache", v165, 0xCu);
                  }

                  goto LABEL_65;
                }

                v75 = [HDConceptIndexEntry alloc];
                v76 = [v59 UUID];
                v77 = [v68 identifier];
                v78 = -[HDConceptIndexEntry initWithSampleUUID:conceptIdentifier:conceptVersion:keyPath:compoundIndex:type:ontologyVersion:](v75, "initWithSampleUUID:conceptIdentifier:conceptVersion:keyPath:compoundIndex:type:ontologyVersion:", v76, [v77 rawIdentifier], objc_msgSend(v68, "version"), obja, 0, 1, v137);
                [v136 addObject:v78];
              }

              v131 = [v128 countByEnumeratingWithState:&v148 objects:buf count:16];
              if (v131)
              {
                continue;
              }

              break;
            }
          }

          if (v129)
          {
            v55 = v136;
            v8 = v120;
          }

          else
          {
LABEL_65:
            _HKInitializeLogging();
            v81 = HKLogConceptIndex();
            v8 = v120;
            if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
            {
              v88 = [v34 UUID];
              *v165 = 138412290;
              v166 = v88;
              _os_log_error_impl(&dword_228986000, v81, OS_LOG_TYPE_ERROR, "Failed to index sample with UUID %@", v165, 0xCu);
            }

            v55 = 0;
          }

          v32 = v114;
        }

        else
        {
          v55 = 0;
        }

        v31 = v115;
      }

      else
      {
        v51 = v32;
        v52 = MEMORY[0x277CCA9B8];
        v53 = objc_opt_class();
        v34 = NSStringFromClass(v53);
        v54 = v52;
        v32 = v51;
        [v54 hk_assignError:&v141 code:3 format:{@"Unsupported sample class (%@) when generating concept index", v34}];
        v55 = 0;
      }

      v82 = v141;
      if (v55)
      {
        [v116 addObjectsFromArray:v55];
        v24 = v118;
        v83 = [MEMORY[0x277CCD840] _anchorWithRowid:{-[HDMultiTypeSortedSampleIterator objectID](v118, "objectID")}];

        v84 = v123;
        v85 = [v123 copyWithAnchor:v83];
        v122 = v83;
        v8 = v120;
        v123 = v85;
      }

      else
      {
        if ([v82 hk_isDatabaseAccessibilityError])
        {

          v97 = 0;
          v27 = v125;
          v9 = v119;
          goto LABEL_96;
        }

        _HKInitializeLogging();
        v84 = HKLogConceptIndex();
        if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
        {
          v87 = HKSensitiveLogItem();
          LODWORD(v171) = 138543362;
          *(&v171 + 4) = v87;
          _os_log_error_impl(&dword_228986000, v84, OS_LOG_TYPE_ERROR, "Failed to index sample with error %{public}@", &v171, 0xCu);

          v8 = v120;
        }

        v24 = v118;
      }

      ++v126;

      v142 = v125;
      v86 = [(HDMultiTypeSortedSampleIterator *)v24 advanceWithError:&v142];
      v27 = v142;

      v29 = v27;
      if (!v86)
      {
        goto LABEL_80;
      }
    }
  }

  v126 = 0;
  v122 = 0;
LABEL_80:
  v92 = v8;
  v93 = v116;
  objc_opt_self();
  *buf = 0;
  v94 = [HDConceptIndexEntity insertConceptIndexEntries:v93 profile:v92 error:buf];

  v95 = *buf;
  v96 = v95;
  if (!v94)
  {
    _HKInitializeLogging();
    v98 = HKLogConceptIndex();
    if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
    {
      v108 = HKSensitiveLogItem();
      LODWORD(v171) = 138543362;
      *(&v171 + 4) = v108;
      _os_log_error_impl(&dword_228986000, v98, OS_LOG_TYPE_ERROR, "Failed to store concept index entries with error %{public}@", &v171, 0xCu);
    }

    v99 = v96;
    v100 = v99;
    v9 = v119;
    v8 = v120;
    if (v99)
    {
      if (v113)
      {
        v101 = v99;
        *v113 = v100;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    goto LABEL_95;
  }

  v9 = v119;
  if (![HDConceptIndexer _storeState:v117 keyValueDomain:v123 transaction:v112 error:v113])
  {
    v97 = 0;
    v8 = v120;
    goto LABEL_96;
  }

  if (v110)
  {
    *v110 = v126;
  }

  v8 = v120;
  if (!v27 || ([v27 hk_isHealthKitErrorWithCode:900] & 1) != 0)
  {
    v97 = 1;
    goto LABEL_96;
  }

  _HKInitializeLogging();
  v106 = HKLogConceptIndex();
  if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
  {
    v109 = HKSensitiveLogItem();
    LODWORD(v171) = 138543362;
    *(&v171 + 4) = v109;
    _os_log_error_impl(&dword_228986000, v106, OS_LOG_TYPE_ERROR, "Failed to index samples with error %{public}@", &v171, 0xCu);

    v9 = v119;
  }

  if (!v113)
  {
    _HKLogDroppedError();
LABEL_95:
    v97 = 0;
    goto LABEL_96;
  }

  v107 = v27;
  v97 = 0;
  *v113 = v27;
LABEL_96:

  if (!v97)
  {
    goto LABEL_98;
  }

  v102 = [v8 internalContentDatabaseManager];
  v103 = [HDAdHocConceptEntity deleteNonIndexedConceptsWithTransaction:v9 internalContentDatabaseManager:v102 error:v113];

LABEL_99:
  v104 = *MEMORY[0x277D85DE8];
  return v103;
}

+ (BOOL)resetIndexManagerStateForProfile:(id)a3 withError:(id *)a4
{
  v5 = a3;
  v6 = objc_alloc_init(HDConceptIndexResetOperation);
  LOBYTE(a4) = [(HDJournalableOperation *)v6 performOrJournalWithProfile:v5 error:a4];

  return a4;
}

+ (id)stateWithProfile:(id)a3 transaction:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [(HDConceptIndexer *)a1 _keyValueDomainWithProfile:a3];
  v10 = [HDConceptIndexer _stateWithKeyValueDomain:a1 transaction:v9 error:a5];

  return v10;
}

+ (HDKeyValueDomain)_keyValueDomainWithProfile:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  v3 = [[HDKeyValueDomain alloc] initWithCategory:0 domainName:@"com.apple.health.records" profile:v2];

  return v3;
}

+ (HDConceptIndexState)_stateWithKeyValueDomain:(uint64_t)a1 transaction:(void *)a2 error:(void *)a3
{
  v4 = a2;
  objc_opt_self();
  v12 = 0;
  v5 = [v4 dataForKey:@"Indexer-State" error:&v12];

  v6 = v12;
  v7 = v6;
  if (v5)
  {
    v8 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v5 error:a3];
    [v8 setClass:objc_opt_class() forClassName:@"HDConceptIndexManagerState"];
    v9 = [v8 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCA308]];
  }

  else if (v6)
  {
    if (a3)
    {
      v11 = v6;
      v9 = 0;
      *a3 = v7;
    }

    else
    {
      _HKLogDroppedError();
      v9 = 0;
    }
  }

  else
  {
    v9 = objc_alloc_init(HDConceptIndexState);
  }

  return v9;
}

+ (BOOL)storeState:(id)a3 profile:(id)a4 transaction:(id)a5 error:(id *)a6
{
  v10 = a5;
  v11 = a3;
  v12 = [(HDConceptIndexer *)a1 _keyValueDomainWithProfile:a4];
  LOBYTE(a6) = [HDConceptIndexer _storeState:a1 keyValueDomain:v11 transaction:v12 error:a6];

  return a6;
}

+ (uint64_t)_storeState:(uint64_t)a1 keyValueDomain:(void *)a2 transaction:(void *)a3 error:(uint64_t)a4
{
  v6 = a3;
  v7 = a2;
  objc_opt_self();
  v8 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v7 requiringSecureCoding:1 error:a4];

  if (v8)
  {
    v9 = [v6 setData:v8 forKey:@"Indexer-State" error:a4];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

HDQueryDescriptor *__76__HDConceptIndexer__queryDescriptorsFollowingAnchor_futureMigrationEnabled___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [HDQueryDescriptor alloc];
  v5 = MEMORY[0x277CBEB98];
  v6 = [v3 sampleType];
  v7 = [v5 setWithObject:v6];
  v8 = [v3 _filter];

  v9 = [(HDQueryDescriptor *)v4 initWithSampleTypes:v7 encodingOptions:0 restrictedSourceEntities:0 authorizationFilter:0 filter:v8 samplePredicate:*(a1 + 32) deletedObjectsPredicate:0];

  return v9;
}

id __59__HDConceptIndexer__indexSample_profile_transaction_error___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 object];
  v6 = *(a1 + 40);
  v15 = 0;
  v7 = [v4 conceptForCodingCollection:v5 configuration:v6 error:&v15];
  v8 = v15;

  if (v7)
  {
    v9 = [MEMORY[0x277CCD548] indexableObjectWithObject:v7 compoundIndex:{objc_msgSend(v3, "compoundIndex")}];
  }

  else
  {
    _HKInitializeLogging();
    v10 = HKLogConceptIndex();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = HKSensitiveLogItem();
      v14 = HKSensitiveLogItem();
      *buf = 138543618;
      v17 = v13;
      v18 = 2114;
      v19 = v14;
      _os_log_error_impl(&dword_228986000, v10, OS_LOG_TYPE_ERROR, "Failed to resolve concept for coding collection %{public}@ with error %{public}@", buf, 0x16u);
    }

    v9 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v9;
}

HDConceptIndexEntry *__59__HDConceptIndexer__indexSample_profile_transaction_error___block_invoke_395(uint64_t a1, void *a2)
{
  v3 = a2;
  v14 = [HDConceptIndexEntry alloc];
  v4 = [*(a1 + 32) UUID];
  v5 = [v3 object];
  v6 = [v5 identifier];
  v7 = [v6 rawIdentifier];
  v8 = [v3 object];
  v9 = [v8 version];
  v10 = *(a1 + 40);
  v11 = [v3 compoundIndex];

  v12 = [(HDConceptIndexEntry *)v14 initWithSampleUUID:v4 conceptIdentifier:v7 conceptVersion:v9 keyPath:v10 compoundIndex:v11 type:0 ontologyVersion:*(a1 + 48)];

  return v12;
}

@end