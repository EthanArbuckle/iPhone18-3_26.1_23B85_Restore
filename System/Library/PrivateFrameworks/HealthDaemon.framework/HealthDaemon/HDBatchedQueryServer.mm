@interface HDBatchedQueryServer
- (id)_queryCursorWithQueryCursor:(void *)cursor state:;
- (int64_t)batchObjectsWithEnumerator:(id)enumerator error:(id *)error handler:(id)handler;
- (int64_t)batchObjectsWithMultitypeQueryCursor:(id)cursor includeDeletedObjects:(BOOL)objects limit:(unint64_t)limit error:(id *)error batchHandler:(id)handler;
@end

@implementation HDBatchedQueryServer

- (int64_t)batchObjectsWithEnumerator:(id)enumerator error:(id *)error handler:(id)handler
{
  handlerCopy = handler;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __65__HDBatchedQueryServer_batchObjectsWithEnumerator_error_handler___block_invoke;
  v12[3] = &unk_278629470;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = [(HDBatchedQueryServer *)self batchObjectsWithEnumerator:enumerator includeDeletedObjects:0 error:error batchHandler:v12];

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

- (int64_t)batchObjectsWithMultitypeQueryCursor:(id)cursor includeDeletedObjects:(BOOL)objects limit:(unint64_t)limit error:(id *)error batchHandler:(id)handler
{
  objectsCopy = objects;
  v145 = *MEMORY[0x277D85DE8];
  cursorCopy = cursor;
  handlerCopy = handler;
  v133 = cursorCopy;
  queryDescriptors = [cursorCopy queryDescriptors];
  v12 = objc_alloc(MEMORY[0x277CBEB18]);
  v13 = [queryDescriptors count];
  v14 = v12;
  errorCopy = error;
  v131 = [v14 initWithCapacity:v13];
  v139 = 0u;
  v140 = 0u;
  v141 = 0u;
  v142 = 0u;
  v16 = queryDescriptors;
  v17 = [v16 countByEnumeratingWithState:&v139 objects:v144 count:16];
  v130 = v16;
  errorCopy2 = error;
  selfCopy = self;
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
        sampleType = [v22 sampleType];
        v24 = [(HDQueryServer *)self authorizationStatusRecordForType:sampleType error:errorCopy];

        if (!v24)
        {
          goto LABEL_49;
        }

        if (![v24 canRead])
        {
          goto LABEL_27;
        }

        if (objectsCopy && ([v24 restrictedBundleIdentifier], v25 = objc_claimAutoreleasedReturnValue(), v25, !v25))
        {
          v50 = MEMORY[0x277D10B18];
          [HDDataEntity disambiguatedSQLForProperty:@"data_id"];
          v52 = v51 = errorCopy;
          deletedObjectBaselineAnchor = [v24 deletedObjectBaselineAnchor];
          v137 = [v50 predicateWithProperty:v52 greaterThanValue:deletedObjectBaselineAnchor];

          errorCopy = v51;
          self = selfCopy;
        }

        else
        {
          v137 = 0;
        }

        sampleType2 = [v22 sampleType];
        v27 = v133;
        if (self)
        {
          v28 = sampleType2;
          client = [(HDQueryServer *)self client];
          authorizationOracle = [client authorizationOracle];
          v31 = [authorizationOracle additionalAuthorizationPredicateForObjectType:v28 error:errorCopy];

          if (v31)
          {
            followingAnchor = [v27 followingAnchor];

            if (followingAnchor)
            {
              v33 = MEMORY[0x277D10B70];
              v34 = MEMORY[0x277D10B18];
              v35 = MEMORY[0x277CCABB0];
              followingAnchor2 = [v27 followingAnchor];
              v37 = [v35 numberWithLongLong:{objc_msgSend(followingAnchor2, "_rowid")}];
              v38 = [v34 predicateWithProperty:@"data_id" greaterThanValue:v37];
              v39 = [v33 compoundPredicateWithPredicate:v31 otherPredicate:v38];

              v31 = v39;
            }

            upToAndIncludingAnchor = [v27 upToAndIncludingAnchor];

            if (!upToAndIncludingAnchor)
            {
              goto LABEL_25;
            }

            v41 = MEMORY[0x277D10B70];
            v42 = MEMORY[0x277D10B18];
            v43 = MEMORY[0x277CCABB0];
            upToAndIncludingAnchor2 = [v27 upToAndIncludingAnchor];
            v45 = [v43 numberWithLongLong:{objc_msgSend(upToAndIncludingAnchor2, "_rowid") + 1}];
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
              if (errorCopy2)
              {
                v49 = v48;
                v31 = 0;
                *errorCopy2 = v45;
              }

              else
              {
                _HKLogDroppedError();
                v31 = 0;
              }

              upToAndIncludingAnchor2 = v45;
            }

            else
            {
              upToAndIncludingAnchor2 = 0;
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
        sampleType3 = [v22 sampleType];
        v57 = [v55 setWithObject:sampleType3];
        restrictedSourceEntities = [v24 restrictedSourceEntities];
        sampleAuthorizationFilter = [(HDQueryServer *)selfCopy sampleAuthorizationFilter];
        _filter = [v22 _filter];
        v61 = [(HDQueryDescriptor *)v54 initWithSampleTypes:v57 encodingOptions:0 restrictedSourceEntities:restrictedSourceEntities authorizationFilter:sampleAuthorizationFilter filter:_filter samplePredicate:v31 deletedObjectsPredicate:v137];
        [v131 addObject:v61];

        self = selfCopy;
        errorCopy = errorCopy2;
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

  selfCopy2 = self;
  v65 = v131;
  v66 = v133;
  v138 = handlerCopy;
  if (!selfCopy2)
  {
    v92 = 0;
    v16 = v130;
    goto LABEL_98;
  }

  if (limit >= 0x32)
  {
    limitCopy = 50;
  }

  else
  {
    limitCopy = limit;
  }

  if (limit >= 1)
  {
    v68 = limitCopy;
  }

  else
  {
    v68 = 50;
  }

  v69 = MEMORY[0x277CCD9F0];
  sortDescriptors = [v66 sortDescriptors];
  v71 = sortDescriptors;
  if (sortDescriptors)
  {
    v72 = sortDescriptors;
  }

  else
  {
    v72 = MEMORY[0x277CBEBF8];
  }

  followingAnchor3 = [v66 followingAnchor];
  v74 = [v69 sortedQueryAnchorWithSortDescriptors:v72 objectID:{objc_msgSend(followingAnchor3, "_rowid")}];

  v75 = [HDMultiTypeSortedSampleIterator alloc];
  sortDescriptors2 = [v66 sortDescriptors];
  profile = [(HDQueryServer *)selfCopy2 profile];
  v127 = v74;
  v78 = [(HDMultiTypeSortedSampleIterator *)v75 initWithQueryDescriptors:v65 includeDeletedObjects:objectsCopy anchor:v74 sortDescriptors:sortDescriptors2 bufferSize:v68 profile:profile];

  distinctByKeyPaths = [v66 distinctByKeyPaths];
  v80 = [distinctByKeyPaths count];

  if (v80)
  {
    v81 = [HDDistinctByKeyPathsIterator alloc];
    distinctByKeyPaths2 = [v66 distinctByKeyPaths];
    v83 = [(HDDistinctByKeyPathsIterator *)v81 initWithSourceIterator:v78 keyPaths:distinctByKeyPaths2];

    v78 = v83;
  }

  state = [v66 state];

  if (state)
  {
    state2 = [v66 state];
    v86 = [(HDMultiTypeSortedSampleIterator *)v78 restoreIteratorStateFromData:state2 error:errorCopy2];

    if (!v86)
    {
      v92 = 1;
      v16 = v130;
      goto LABEL_97;
    }
  }

  v87 = _Block_copy(selfCopy->_unitTest_queryServerObjectEnumerationHandler);
  v129 = v66;
  followingAnchor4 = [v66 followingAnchor];
  _rowid = [followingAnchor4 _rowid];

  v90 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v125 = v65;
  if (objectsCopy)
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
    v136 = _rowid;
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
    _shouldStopProcessingQuery = [(HDQueryServer *)selfCopy _shouldStopProcessingQuery];
    if (_shouldStopProcessingQuery)
    {
      v136 = _rowid;
      v111 = v87;
      v113 = 0;
      goto LABEL_81;
    }

    if ([(HDQueryServer *)selfCopy _shouldSuspendQuery])
    {
      break;
    }

    v97 = [v90 count];
    if (([v91 count] + v97) >= 0xC8)
    {
      iteratorStateData = [(HDMultiTypeSortedSampleIterator *)v78 iteratorStateData];
      v99 = [(HDBatchedQueryServer *)selfCopy _queryCursorWithQueryCursor:v129 state:iteratorStateData];

      v138[2](v138, v90, v91, _rowid, v99, 0);
      v100 = objc_alloc_init(MEMORY[0x277CBEB18]);

      if (objectsCopy)
      {
        v101 = objc_alloc_init(MEMORY[0x277CBEB18]);
      }

      else
      {
        v101 = 0;
      }

      v90 = v100;
      v91 = v101;
      _rowid = 0;
    }

    object = [(HDMultiTypeSortedSampleIterator *)v78 object];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      sample = [(HDMultiTypeSortedSampleIterator *)v78 sample];
      v105 = v90;
    }

    else
    {
      if (!objectsCopy)
      {
        goto LABEL_67;
      }

      object2 = [(HDMultiTypeSortedSampleIterator *)v78 object];
      objc_opt_class();
      v107 = objc_opt_isKindOfClass();

      if ((v107 & 1) == 0)
      {
        goto LABEL_67;
      }

      sample = [(HDMultiTypeSortedSampleIterator *)v78 deletedObject];
      v105 = v91;
    }

    [v105 addObject:sample];

LABEL_67:
    if ([(HDMultiTypeSortedSampleIterator *)v78 objectID]> _rowid)
    {
      _rowid = [(HDMultiTypeSortedSampleIterator *)v78 objectID];
    }

    if (limit - 1 < v95)
    {
      goto LABEL_74;
    }

    if (v87)
    {
      object3 = [(HDMultiTypeSortedSampleIterator *)v78 object];
      (*(v87 + 2))(v87, selfCopy, object3, v95);
    }

    v143 = v94;
    v109 = [(HDMultiTypeSortedSampleIterator *)v78 advanceWithError:&v143];
    v110 = v143;

    ++v95;
    v94 = v110;
    if (!v109)
    {
      v136 = _rowid;
      v111 = v87;
      v112 = 0;
      v94 = v110;
      goto LABEL_75;
    }
  }

  v136 = _rowid;
  v111 = v87;
  v113 = objc_alloc_init(MEMORY[0x277CBEB18]);

  v90 = v91;
  if (objectsCopy)
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
  v112 = !_shouldStopProcessingQuery;

  v90 = v113;
LABEL_82:
  v114 = [v94 hk_isHealthKitErrorWithCode:900];
  v115 = v114;
  if (!v94 || (v114 & 1) != 0)
  {
    _shouldStopProcessingQuery2 = [(HDQueryServer *)selfCopy _shouldStopProcessingQuery];
    if (_shouldStopProcessingQuery2)
    {
      v92 = 4;
    }

    else
    {
      v92 = 3;
    }

    if (!v112 && !_shouldStopProcessingQuery2)
    {
      if (v115)
      {
        v118 = 0;
      }

      else
      {
        iteratorStateData2 = [(HDMultiTypeSortedSampleIterator *)v78 iteratorStateData];
        v118 = [(HDBatchedQueryServer *)selfCopy _queryCursorWithQueryCursor:v129 state:iteratorStateData2];

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
    if (errorCopy2)
    {
      v116 = v94;
      *errorCopy2 = v94;
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

- (id)_queryCursorWithQueryCursor:(void *)cursor state:
{
  v5 = a2;
  cursorCopy = cursor;
  if (!cursorCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:sel__queryCursorWithQueryCursor_state_ object:self file:@"HDBatchedQueryServer.m" lineNumber:378 description:{@"Invalid parameter not satisfying: %@", @"state"}];
  }

  v7 = objc_alloc(MEMORY[0x277CCD8C0]);
  queryDescriptors = [v5 queryDescriptors];
  sortDescriptors = [v5 sortDescriptors];
  followingAnchor = [v5 followingAnchor];
  upToAndIncludingAnchor = [v5 upToAndIncludingAnchor];
  distinctByKeyPaths = [v5 distinctByKeyPaths];
  v13 = [v7 initWithQueryDescriptors:queryDescriptors sortDescriptors:sortDescriptors followingAnchor:followingAnchor upToAndIncludingAnchor:upToAndIncludingAnchor distinctByKeyPaths:distinctByKeyPaths state:cursorCopy];

  return v13;
}

@end