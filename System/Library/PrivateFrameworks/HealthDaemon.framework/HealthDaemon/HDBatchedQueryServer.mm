@interface HDBatchedQueryServer
- (id)_queryCursorWithQueryCursor:(void *)a3 state:;
- (int64_t)batchObjectsWithEnumerator:(id)a3 error:(id *)a4 handler:(id)a5;
- (int64_t)batchObjectsWithMultitypeQueryCursor:(id)a3 includeDeletedObjects:(BOOL)a4 limit:(unint64_t)a5 error:(id *)a6 batchHandler:(id)a7;
@end

@implementation HDBatchedQueryServer

- (int64_t)batchObjectsWithEnumerator:(id)a3 error:(id *)a4 handler:(id)a5
{
  v8 = a5;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __65__HDBatchedQueryServer_batchObjectsWithEnumerator_error_handler___block_invoke;
  v12[3] = &unk_278629470;
  v13 = v8;
  v9 = v8;
  v10 = [(HDBatchedQueryServer *)self batchObjectsWithEnumerator:a3 includeDeletedObjects:0 error:a4 batchHandler:v12];

  return v10;
}

void __92__HDBatchedQueryServer_batchObjectsWithEnumerator_includeDeletedObjects_error_batchHandler___block_invoke(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = a1[4];
  v8 = a1[5];
  v10 = *(*(a1[7] + 8) + 24);
  v11 = *(v8 + 16);
  v12 = a3;
  v13 = a2;
  v11(v8, v9, v13, a5, v10);
  (*(a1[6] + 16))();
}

uint64_t __92__HDBatchedQueryServer_batchObjectsWithEnumerator_includeDeletedObjects_error_batchHandler___block_invoke_297(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  if ([*(a1 + 32) _shouldStopProcessingQuery])
  {
    v9 = *(*(a1 + 56) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = 0;

LABEL_3:
    v11 = 0;
    goto LABEL_33;
  }

  if (![*(a1 + 32) _shouldSuspendQuery])
  {
    if (v7 | v8)
    {
      if (!v7)
      {
        v11 = 1;
        if (!v8 || (*(a1 + 104) & 1) == 0)
        {
          goto LABEL_33;
        }
      }

      v16 = a1 + 56;
      v17 = [*(*(*(a1 + 56) + 8) + 40) count];
      if (([*(*(*(a1 + 72) + 8) + 40) count] + v17) >= 0xC8)
      {
        v18 = *(*(*(a1 + 56) + 8) + 40);
        v19 = *(*(*(a1 + 72) + 8) + 40);
        v20 = *(*(*(a1 + 80) + 8) + 24);
        (*(*(a1 + 40) + 16))();
        v21 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:200];
        v22 = *(*(a1 + 56) + 8);
        v23 = *(v22 + 40);
        *(v22 + 40) = v21;

        v24 = *(a1 + 104);
        if (v24 == 1)
        {
          v25 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:200];
        }

        else
        {
          v25 = 0;
        }

        objc_storeStrong((*(*(a1 + 72) + 8) + 40), v25);
        if (v24)
        {
        }

        *(*(*(a1 + 80) + 8) + 24) = 0;
      }

      v26 = v7;
      if (v7 || v8 && (v16 = a1 + 72, v26 = v8, (*(a1 + 104) & 1) != 0))
      {
        [*(*(*v16 + 8) + 40) addObject:v26];
      }

      ++*(*(*(a1 + 88) + 8) + 24);
      v27 = *(*(a1 + 80) + 8);
      if (*(v27 + 24) < a4)
      {
        *(v27 + 24) = a4;
      }

      v28 = *(a1 + 48);
      if (v28)
      {
        if (v7)
        {
          v29 = v7;
        }

        else
        {
          v29 = v8;
        }

        (*(v28 + 16))(v28, *(a1 + 32), v29, *(*(*(a1 + 88) + 8) + 24));
      }
    }

    else
    {
      v31 = [MEMORY[0x277CCA890] currentHandler];
      [v31 handleFailureInMethod:*(a1 + 96) object:*(a1 + 32) file:@"HDBatchedQueryServer.m" lineNumber:111 description:{@"Invalid parameter not satisfying: %@", @"sample != nil || deletedObject != nil"}];
    }

    v11 = 1;
    goto LABEL_33;
  }

  *(*(*(a1 + 64) + 8) + 24) = 1;
  v12 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:200];
  v13 = *(*(a1 + 56) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;

  v11 = *(a1 + 104);
  if (v11 == 1)
  {
    v15 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:200];
  }

  else
  {
    v15 = 0;
  }

  objc_storeStrong((*(*(a1 + 72) + 8) + 40), v15);
  if (v11)
  {

    goto LABEL_3;
  }

LABEL_33:

  return v11;
}

void __68__HDBatchedQueryServer__processBatchHandlerForResearchAppECGAccess___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 hk_map:&__block_literal_global_196];
  (*(*(a1 + 32) + 16))();
}

id __68__HDBatchedQueryServer__processBatchHandlerForResearchAppECGAccess___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 metadata];
  if (v3)
  {
    v4 = [v2 metadata];
    v5 = [v4 mutableCopy];
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v2, "privateClassification")}];
  [v5 setObject:v6 forKeyedSubscript:*MEMORY[0x277CCDFD8]];

  [v2 _setMetadata:v5];

  return v2;
}

- (int64_t)batchObjectsWithMultitypeQueryCursor:(id)a3 includeDeletedObjects:(BOOL)a4 limit:(unint64_t)a5 error:(id *)a6 batchHandler:(id)a7
{
  v132 = a4;
  v145 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v123 = a7;
  v133 = v10;
  v11 = [v10 queryDescriptors];
  v12 = objc_alloc(MEMORY[0x277CBEB18]);
  v13 = [v11 count];
  v14 = v12;
  v15 = a6;
  v131 = [v14 initWithCapacity:v13];
  v139 = 0u;
  v140 = 0u;
  v141 = 0u;
  v142 = 0u;
  v16 = v11;
  v17 = [v16 countByEnumeratingWithState:&v139 objects:v144 count:16];
  v130 = v16;
  v134 = a6;
  v135 = self;
  if (v17)
  {
    v18 = v17;
    v19 = *v140;
    v20 = &selRef__queue_enqueueConceptAuthorizationRequestWithIdentifier_bundleIdentifier_objectType_promptIfNeeded_authorizationNeededHandler_completionHandler_;
    v126 = *v140;
    do
    {
      v21 = 0;
      v124 = v20[43];
      v128 = v18;
      do
      {
        if (*v140 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v22 = *(*(&v139 + 1) + 8 * v21);
        v23 = [v22 sampleType];
        v24 = [(HDQueryServer *)self authorizationStatusRecordForType:v23 error:v15];

        if (!v24)
        {
          goto LABEL_49;
        }

        if (![v24 canRead])
        {
          goto LABEL_27;
        }

        if (v132 && ([v24 restrictedBundleIdentifier], v25 = objc_claimAutoreleasedReturnValue(), v25, !v25))
        {
          v50 = MEMORY[0x277D10B18];
          [HDDataEntity disambiguatedSQLForProperty:@"data_id"];
          v52 = v51 = v15;
          v53 = [v24 deletedObjectBaselineAnchor];
          v137 = [v50 predicateWithProperty:v52 greaterThanValue:v53];

          v15 = v51;
          self = v135;
        }

        else
        {
          v137 = 0;
        }

        v26 = [v22 sampleType];
        v27 = v133;
        if (self)
        {
          v28 = v26;
          v29 = [(HDQueryServer *)self client];
          v30 = [v29 authorizationOracle];
          v31 = [v30 additionalAuthorizationPredicateForObjectType:v28 error:v15];

          if (v31)
          {
            v32 = [v27 followingAnchor];

            if (v32)
            {
              v33 = MEMORY[0x277D10B70];
              v34 = MEMORY[0x277D10B18];
              v35 = MEMORY[0x277CCABB0];
              v36 = [v27 followingAnchor];
              v37 = [v35 numberWithLongLong:{objc_msgSend(v36, "_rowid")}];
              v38 = [v34 predicateWithProperty:@"data_id" greaterThanValue:v37];
              v39 = [v33 compoundPredicateWithPredicate:v31 otherPredicate:v38];

              v31 = v39;
            }

            v40 = [v27 upToAndIncludingAnchor];

            if (!v40)
            {
              goto LABEL_25;
            }

            v41 = MEMORY[0x277D10B70];
            v42 = MEMORY[0x277D10B18];
            v43 = MEMORY[0x277CCABB0];
            v44 = [v27 upToAndIncludingAnchor];
            v45 = [v43 numberWithLongLong:{objc_msgSend(v44, "_rowid") + 1}];
            v46 = [v42 predicateWithProperty:@"data_id" lessThanValue:v45];
            v47 = [v41 compoundPredicateWithPredicate:v31 otherPredicate:v46];

            v31 = v47;
          }

          else
          {
            v48 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:v124 format:@"Unable to determine authorization status."];
            v45 = v48;
            if (v48)
            {
              if (v134)
              {
                v49 = v48;
                v31 = 0;
                *v134 = v45;
              }

              else
              {
                _HKLogDroppedError();
                v31 = 0;
              }

              v44 = v45;
            }

            else
            {
              v44 = 0;
              v31 = 0;
            }
          }
        }

        else
        {
          v31 = 0;
        }

LABEL_25:

        if (!v31)
        {

          v16 = v130;
LABEL_49:

          v92 = 1;
          v63 = v131;
          goto LABEL_99;
        }

        v54 = [HDQueryDescriptor alloc];
        v55 = MEMORY[0x277CBEB98];
        v56 = [v22 sampleType];
        v57 = [v55 setWithObject:v56];
        v58 = [v24 restrictedSourceEntities];
        v59 = [(HDQueryServer *)v135 sampleAuthorizationFilter];
        v60 = [v22 _filter];
        v61 = [(HDQueryDescriptor *)v54 initWithSampleTypes:v57 encodingOptions:0 restrictedSourceEntities:v58 authorizationFilter:v59 filter:v60 samplePredicate:v31 deletedObjectsPredicate:v137];
        [v131 addObject:v61];

        self = v135;
        v15 = v134;
        v18 = v128;
        v16 = v130;
        v19 = v126;
LABEL_27:

        ++v21;
      }

      while (v18 != v21);
      v62 = [v16 countByEnumeratingWithState:&v139 objects:v144 count:16];
      v18 = v62;
      v20 = &selRef__queue_enqueueConceptAuthorizationRequestWithIdentifier_bundleIdentifier_objectType_promptIfNeeded_authorizationNeededHandler_completionHandler_;
    }

    while (v62);
  }

  v63 = v131;
  if (![v131 count])
  {
    v92 = 2;
    goto LABEL_99;
  }

  v64 = self;
  v65 = v131;
  v66 = v133;
  v138 = v123;
  if (!v64)
  {
    v92 = 0;
    v16 = v130;
    goto LABEL_98;
  }

  if (a5 >= 0x32)
  {
    v67 = 50;
  }

  else
  {
    v67 = a5;
  }

  if (a5 >= 1)
  {
    v68 = v67;
  }

  else
  {
    v68 = 50;
  }

  v69 = MEMORY[0x277CCD9F0];
  v70 = [v66 sortDescriptors];
  v71 = v70;
  if (v70)
  {
    v72 = v70;
  }

  else
  {
    v72 = MEMORY[0x277CBEBF8];
  }

  v73 = [v66 followingAnchor];
  v74 = [v69 sortedQueryAnchorWithSortDescriptors:v72 objectID:{objc_msgSend(v73, "_rowid")}];

  v75 = [HDMultiTypeSortedSampleIterator alloc];
  v76 = [v66 sortDescriptors];
  v77 = [(HDQueryServer *)v64 profile];
  v127 = v74;
  v78 = [(HDMultiTypeSortedSampleIterator *)v75 initWithQueryDescriptors:v65 includeDeletedObjects:v132 anchor:v74 sortDescriptors:v76 bufferSize:v68 profile:v77];

  v79 = [v66 distinctByKeyPaths];
  v80 = [v79 count];

  if (v80)
  {
    v81 = [HDDistinctByKeyPathsIterator alloc];
    v82 = [v66 distinctByKeyPaths];
    v83 = [(HDDistinctByKeyPathsIterator *)v81 initWithSourceIterator:v78 keyPaths:v82];

    v78 = v83;
  }

  v84 = [v66 state];

  if (v84)
  {
    v85 = [v66 state];
    v86 = [(HDMultiTypeSortedSampleIterator *)v78 restoreIteratorStateFromData:v85 error:v134];

    if (!v86)
    {
      v92 = 1;
      v16 = v130;
      goto LABEL_97;
    }
  }

  v87 = _Block_copy(v135->_unitTest_queryServerObjectEnumerationHandler);
  v129 = v66;
  v88 = [v66 followingAnchor];
  v89 = [v88 _rowid];

  v90 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v125 = v65;
  if (v132)
  {
    v91 = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  else
  {
    v91 = 0;
  }

  v143 = 0;
  v93 = [(HDMultiTypeSortedSampleIterator *)v78 advanceWithError:&v143];
  v94 = v143;
  if (!v93)
  {
LABEL_74:
    v136 = v89;
    v111 = v87;
    v112 = 0;
LABEL_75:
    v16 = v130;
    v74 = v127;
    goto LABEL_82;
  }

  v95 = 1;
  while (1)
  {
    v96 = [(HDQueryServer *)v135 _shouldStopProcessingQuery];
    if (v96)
    {
      v136 = v89;
      v111 = v87;
      v113 = 0;
      goto LABEL_81;
    }

    if ([(HDQueryServer *)v135 _shouldSuspendQuery])
    {
      break;
    }

    v97 = [v90 count];
    if (([v91 count] + v97) >= 0xC8)
    {
      v98 = [(HDMultiTypeSortedSampleIterator *)v78 iteratorStateData];
      v99 = [(HDBatchedQueryServer *)v135 _queryCursorWithQueryCursor:v129 state:v98];

      v138[2](v138, v90, v91, v89, v99, 0);
      v100 = objc_alloc_init(MEMORY[0x277CBEB18]);

      if (v132)
      {
        v101 = objc_alloc_init(MEMORY[0x277CBEB18]);
      }

      else
      {
        v101 = 0;
      }

      v90 = v100;
      v91 = v101;
      v89 = 0;
    }

    v102 = [(HDMultiTypeSortedSampleIterator *)v78 object];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v104 = [(HDMultiTypeSortedSampleIterator *)v78 sample];
      v105 = v90;
    }

    else
    {
      if (!v132)
      {
        goto LABEL_67;
      }

      v106 = [(HDMultiTypeSortedSampleIterator *)v78 object];
      objc_opt_class();
      v107 = objc_opt_isKindOfClass();

      if ((v107 & 1) == 0)
      {
        goto LABEL_67;
      }

      v104 = [(HDMultiTypeSortedSampleIterator *)v78 deletedObject];
      v105 = v91;
    }

    [v105 addObject:v104];

LABEL_67:
    if ([(HDMultiTypeSortedSampleIterator *)v78 objectID]> v89)
    {
      v89 = [(HDMultiTypeSortedSampleIterator *)v78 objectID];
    }

    if (a5 - 1 < v95)
    {
      goto LABEL_74;
    }

    if (v87)
    {
      v108 = [(HDMultiTypeSortedSampleIterator *)v78 object];
      (*(v87 + 2))(v87, v135, v108, v95);
    }

    v143 = v94;
    v109 = [(HDMultiTypeSortedSampleIterator *)v78 advanceWithError:&v143];
    v110 = v143;

    ++v95;
    v94 = v110;
    if (!v109)
    {
      v136 = v89;
      v111 = v87;
      v112 = 0;
      v94 = v110;
      goto LABEL_75;
    }
  }

  v136 = v89;
  v111 = v87;
  v113 = objc_alloc_init(MEMORY[0x277CBEB18]);

  v90 = v91;
  if (v132)
  {
    v91 = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  else
  {
    v91 = 0;
  }

LABEL_81:
  v16 = v130;
  v74 = v127;
  v112 = !v96;

  v90 = v113;
LABEL_82:
  v114 = [v94 hk_isHealthKitErrorWithCode:900];
  v115 = v114;
  if (!v94 || (v114 & 1) != 0)
  {
    v117 = [(HDQueryServer *)v135 _shouldStopProcessingQuery];
    if (v117)
    {
      v92 = 4;
    }

    else
    {
      v92 = 3;
    }

    if (!v112 && !v117)
    {
      if (v115)
      {
        v118 = 0;
      }

      else
      {
        v119 = [(HDMultiTypeSortedSampleIterator *)v78 iteratorStateData];
        v118 = [(HDBatchedQueryServer *)v135 _queryCursorWithQueryCursor:v129 state:v119];

        if (!v118)
        {
          goto LABEL_93;
        }
      }

      v138[2](v138, v90, v91, v136, v118, 1);

      v92 = 0;
    }
  }

  else
  {
    if (v134)
    {
      v116 = v94;
      *v134 = v94;
    }

    else
    {
      _HKLogDroppedError();
    }

LABEL_93:
    v92 = 1;
  }

  v63 = v131;
  v65 = v125;
  v66 = v129;
LABEL_97:

LABEL_98:
LABEL_99:

  v120 = *MEMORY[0x277D85DE8];
  return v92;
}

- (id)_queryCursorWithQueryCursor:(void *)a3 state:
{
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:sel__queryCursorWithQueryCursor_state_ object:a1 file:@"HDBatchedQueryServer.m" lineNumber:378 description:{@"Invalid parameter not satisfying: %@", @"state"}];
  }

  v7 = objc_alloc(MEMORY[0x277CCD8C0]);
  v8 = [v5 queryDescriptors];
  v9 = [v5 sortDescriptors];
  v10 = [v5 followingAnchor];
  v11 = [v5 upToAndIncludingAnchor];
  v12 = [v5 distinctByKeyPaths];
  v13 = [v7 initWithQueryDescriptors:v8 sortDescriptors:v9 followingAnchor:v10 upToAndIncludingAnchor:v11 distinctByKeyPaths:v12 state:v6];

  return v13;
}

@end