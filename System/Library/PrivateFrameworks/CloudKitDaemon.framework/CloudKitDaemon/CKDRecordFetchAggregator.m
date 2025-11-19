@interface CKDRecordFetchAggregator
- (CKDFetchRecordsOperation)currentFetchOp;
- (CKDRecordFetchAggregator)initWithOperationInfo:(id)a3 container:(id)a4;
- (OS_dispatch_queue)fetchQueue;
- (id)CKPropertiesDescription;
- (id)_fetchRecord:(id)a3 recordReadyHandle:(BOOL *)a4 withRecordCompletion:(id)a5;
- (id)activityCreate;
- (void)_addRecordFetchInfos:(id)a3;
- (void)_finishOnCallbackQueueWithError:(id)a3;
- (void)_finishRecordFetchAggregator;
- (void)_flushFetchedRecordsToConsumerLocked;
- (void)_flushFetchedRecordsToConsumerNoOrderingLocked;
- (void)_flushFetchedRecordsToConsumerOrderedLocked;
- (void)_lockedSendFetchRequest;
- (void)_performCallbackForFetchInfoLocked:(id)a3;
- (void)_recordFetchesAvailable;
- (void)dealloc;
- (void)fetchRecords:(id)a3 withPerRecordCompletion:(id)a4;
- (void)finishIfAppropriate;
- (void)main;
@end

@implementation CKDRecordFetchAggregator

- (OS_dispatch_queue)fetchQueue
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_fetchQueue)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = objc_msgSend_QOSClass(v2, v4, v5);
    v7 = dispatch_queue_attr_make_with_qos_class(v3, v6, 0);
    v8 = dispatch_queue_create("com.apple.cloudkit.fetchAggregator.fetchQueue", v7);
    fetchQueue = v2->_fetchQueue;
    v2->_fetchQueue = v8;

    dispatch_queue_set_specific(v2->_fetchQueue, "com.apple.cloudkit.recordfetchaggregator", 1, 0);
  }

  objc_sync_exit(v2);

  v10 = v2->_fetchQueue;

  return v10;
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_22506F000, "daemon/record-fetch-aggregator", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (void)finishIfAppropriate
{
  v13 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v3 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v11 = 134217984;
    v12 = self;
    _os_log_debug_impl(&dword_22506F000, v3, OS_LOG_TYPE_DEBUG, "Finishing fetch aggregator: %p", &v11, 0xCu);
  }

  v4 = self;
  objc_sync_enter(v4);
  if (objc_msgSend_started(v4, v5, v6))
  {
    objc_sync_exit(v4);

    objc_msgSend__finishRecordFetchAggregator(v4, v8, v9);
  }

  else
  {
    objc_msgSend_setMarkedToFinishByParent_(v4, v7, 1);
    objc_sync_exit(v4);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)main
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  if (objc_msgSend_isMarkedToFinishByParent(v2, v3, v4))
  {
    objc_sync_exit(v2);

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v6 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v11 = v6;
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v16 = objc_msgSend_ckShortDescription(v2, v14, v15);
      v23 = 138543874;
      v24 = v13;
      v25 = 2048;
      v26 = v2;
      v27 = 2114;
      v28 = v16;
      _os_log_debug_impl(&dword_22506F000, v11, OS_LOG_TYPE_DEBUG, "Parent asked record fetch aggregator operation <%{public}@: %p; %{public}@> to finish before it started", &v23, 0x20u);
    }

    objc_msgSend__finishRecordFetchAggregator(v2, v7, v8);
  }

  else
  {
    objc_msgSend_setStarted_(v2, v5, 1);
    objc_sync_exit(v2);

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v9 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v17 = v9;
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      v22 = objc_msgSend_ckShortDescription(v2, v20, v21);
      v23 = 138543874;
      v24 = v19;
      v25 = 2048;
      v26 = v2;
      v27 = 2114;
      v28 = v22;
      _os_log_debug_impl(&dword_22506F000, v17, OS_LOG_TYPE_DEBUG, "Starting record fetch aggregator operation <%{public}@: %p; %{public}@>", &v23, 0x20u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_recordFetchesAvailable
{
  v4 = objc_msgSend_fetchQueue(self, a2, v2);
  dispatch_assert_queue_V2(v4);

  v13 = objc_msgSend_fetchInfosByOrder(self, v5, v6);
  if (objc_msgSend_count(v13, v7, v8))
  {
    v11 = objc_msgSend_currentFetchOp(self, v9, v10);

    if (!v11)
    {

      MEMORY[0x2821F9670](self, sel__lockedSendFetchRequest, v12);
    }
  }

  else
  {
  }
}

- (void)_flushFetchedRecordsToConsumerLocked
{
  v4 = objc_msgSend_fetchQueue(self, a2, v2);
  dispatch_assert_queue_V2(v4);

  if (objc_msgSend_preserveOrdering(self, v5, v6))
  {

    MEMORY[0x2821F9670](self, sel__flushFetchedRecordsToConsumerOrderedLocked, v7);
  }

  else
  {

    MEMORY[0x2821F9670](self, sel__flushFetchedRecordsToConsumerNoOrderingLocked, v7);
  }
}

- (void)_flushFetchedRecordsToConsumerOrderedLocked
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_fetchQueue(self, a2, v2);
  dispatch_assert_queue_V2(v4);
  while (1)
  {

    v7 = objc_msgSend_fetchInfosByOrder(self, v5, v6);
    v8 = MEMORY[0x277CCABB0];
    v11 = objc_msgSend_highestReturnedOrder(self, v9, v10);
    v13 = objc_msgSend_numberWithUnsignedInteger_(v8, v12, v11 + 1);
    v4 = objc_msgSend_objectForKeyedSubscript_(v7, v14, v13);

    if (!v4 || objc_msgSend_state(v4, v15, v16) != 3)
    {
      break;
    }

    objc_msgSend__performCallbackForFetchInfoLocked_(self, v17, v4);
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v18 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v20 = v18;
    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    v25 = objc_msgSend_ckShortDescription(self, v23, v24);
    v28 = 138544130;
    v29 = v22;
    v30 = 2048;
    v31 = self;
    v32 = 2114;
    v33 = v25;
    v34 = 2048;
    v35 = objc_msgSend_highestReturnedOrder(self, v26, v27);
    _os_log_debug_impl(&dword_22506F000, v20, OS_LOG_TYPE_DEBUG, "Done flushing record callbacks for <%{public}@: %p; %{public}@>. Current highest callback is %lu", &v28, 0x2Au);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  fetchSource = self->_fetchSource;
  if (fetchSource)
  {
    dispatch_source_cancel(fetchSource);
  }

  recordReadySource = self->_recordReadySource;
  if (recordReadySource)
  {
    dispatch_source_cancel(recordReadySource);
  }

  v5.receiver = self;
  v5.super_class = CKDRecordFetchAggregator;
  [(CKDOperation *)&v5 dealloc];
}

- (void)_finishRecordFetchAggregator
{
  v36 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_isFinished(self, a2, v2))
  {
    v27 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v5, v6);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v27, v28, a2, self, @"CKDRecordFetchAggregator.m", 556, @"You can't finish a CKDRecordFetchAggregator twice");
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v7 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v21 = v7;
    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    v26 = objc_msgSend_ckShortDescription(self, v24, v25);
    *buf = 138543874;
    v31 = v23;
    v32 = 2048;
    v33 = self;
    v34 = 2114;
    v35 = v26;
    _os_log_debug_impl(&dword_22506F000, v21, OS_LOG_TYPE_DEBUG, "Finishing fetch aggregator <%{public}@: %p; %{public}@>", buf, 0x20u);
  }

  v10 = objc_msgSend_fetchSource(self, v8, v9);
  dispatch_source_merge_data(v10, 1uLL);

  v13 = objc_msgSend_recordReadySource(self, v11, v12);
  dispatch_source_merge_data(v13, 1uLL);

  v16 = objc_msgSend_fetchGroup(self, v14, v15);
  v19 = objc_msgSend_callbackQueue(self, v17, v18);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22508806C;
  block[3] = &unk_278545A00;
  block[4] = self;
  dispatch_group_notify(v16, v19, block);

  v20 = *MEMORY[0x277D85DE8];
}

- (CKDFetchRecordsOperation)currentFetchOp
{
  WeakRetained = objc_loadWeakRetained(&self->_currentFetchOp);

  return WeakRetained;
}

- (void)_lockedSendFetchRequest
{
  v130 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_fetchQueue(self, a2, v2);
  dispatch_assert_queue_V2(v5);

  v8 = objc_msgSend_currentFetchOp(self, v6, v7);

  if (v8)
  {
    v107 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v9, v10);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v107, v108, a2, self, @"CKDRecordFetchAggregator.m", 317, @"Can't send a fetch request when another one is still outstanding");
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v109 = a2;
  v11 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v101 = v11;
    v102 = objc_opt_class();
    v103 = NSStringFromClass(v102);
    v106 = objc_msgSend_ckShortDescription(self, v104, v105);
    *buf = 138543874;
    v122 = v103;
    v123 = 2048;
    v124 = self;
    v125 = 2114;
    v126 = v106;
    _os_log_debug_impl(&dword_22506F000, v101, OS_LOG_TYPE_DEBUG, "Sending fetch requests for <%{public}@: %p; %{public}@>", buf, 0x20u);
  }

  v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v117 = 0u;
  v118 = 0u;
  v119 = 0u;
  v120 = 0u;
  v110 = self;
  v17 = objc_msgSend_fetchInfosByOrder(self, v15, v16);
  v20 = objc_msgSend_allValues(v17, v18, v19);

  v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v21, &v117, v129, 16);
  if (v22)
  {
    v25 = v22;
    v26 = *v118;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v118 != v26)
        {
          objc_enumerationMutation(v20);
        }

        v28 = *(*(&v117 + 1) + 8 * i);
        if (objc_msgSend_state(v28, v23, v24) == 1)
        {
          v29 = objc_msgSend_record(v28, v23, v24);

          if (v29)
          {
            v32 = objc_msgSend_record(v28, v30, v31);
            objc_msgSend_addObject_(v13, v33, v32);
          }

          else
          {
            v32 = objc_msgSend_recordID(v28, v30, v31);
            objc_msgSend_addObject_(v12, v34, v32);
          }

          v37 = objc_msgSend_recordID(v28, v35, v36);
          v39 = objc_msgSend_objectForKeyedSubscript_(v14, v38, v37);

          if (v39)
          {
            objc_msgSend_addObject_(v39, v40, v28);
          }

          else
          {
            v39 = objc_msgSend_arrayWithObject_(MEMORY[0x277CBEB18], v40, v28);
            v44 = objc_msgSend_recordID(v28, v42, v43);
            objc_msgSend_setObject_forKeyedSubscript_(v14, v45, v39, v44);
          }

          objc_msgSend_setState_(v28, v41, 2);
        }
      }

      v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v23, &v117, v129, 16);
    }

    while (v25);
  }

  v46 = v12;
  if (objc_msgSend_count(v12, v47, v48) || objc_msgSend_count(v13, v49, v50))
  {
    if (objc_msgSend_count(v12, v49, v50))
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v53 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
      {
        v54 = v53;
        v55 = objc_opt_class();
        v56 = NSStringFromClass(v55);
        v59 = objc_msgSend_ckShortDescription(v110, v57, v58);
        *buf = 138544130;
        v122 = v56;
        v123 = 2048;
        v124 = v110;
        v125 = 2114;
        v126 = v59;
        v127 = 2112;
        v128 = v12;
        _os_log_impl(&dword_22506F000, v54, OS_LOG_TYPE_INFO, "Fetching the following record IDs from the server for operation <%{public}@: %p; %{public}@>: %@", buf, 0x2Au);
      }
    }

    if (objc_msgSend_count(v13, v51, v52))
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v60 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
      {
        v61 = v60;
        v62 = objc_opt_class();
        v63 = NSStringFromClass(v62);
        v66 = objc_msgSend_ckShortDescription(v110, v64, v65);
        v68 = objc_msgSend_valueForKeyPath_(v13, v67, @"recordID");
        *buf = 138544130;
        v122 = v63;
        v123 = 2048;
        v124 = v110;
        v125 = 2114;
        v126 = v66;
        v127 = 2112;
        v128 = v68;
        _os_log_impl(&dword_22506F000, v61, OS_LOG_TYPE_INFO, "Running the following full records through a fetch records operation for <%{public}@: %p; %{public}@>: %@", buf, 0x2Au);
      }
    }

    v69 = objc_opt_new();
    v72 = objc_msgSend_allObjects(v12, v70, v71);
    objc_msgSend_setRecordIDs_(v69, v73, v72);

    v76 = objc_msgSend_desiredKeys(v110, v74, v75);
    v79 = objc_msgSend_allObjects(v76, v77, v78);
    objc_msgSend_setDesiredKeys_(v69, v80, v79);

    v83 = objc_msgSend_assetTransferOptionsByRecordTypeAndKey(v110, v81, v82);
    objc_msgSend_setAssetTransferOptionsByRecordTypeAndKey_(v69, v84, v83);

    AssetContents = objc_msgSend_fetchAssetContents(v110, v85, v86);
    objc_msgSend_setShouldFetchAssetContent_(v69, v88, AssetContents);
    MergeableValues = objc_msgSend_fetchMergeableValues(v110, v89, v90);
    objc_msgSend_setShouldFetchMergeableValues_(v69, v92, MergeableValues);
    v95 = objc_msgSend_databaseScope(v110, v93, v94);
    objc_msgSend_setDatabaseScope_(v69, v96, v95);
    v97 = objc_opt_class();
    v111[0] = MEMORY[0x277D85DD0];
    v111[1] = 3221225472;
    v111[2] = sub_22509FA5C;
    v111[3] = &unk_27854B280;
    v112 = v13;
    v113 = v110;
    v116 = v109;
    v114 = v69;
    v115 = v14;
    v98 = v69;
    objc_msgSend_spawnAndRunOperationOfClass_operationInfo_operationConfigurationBlock_(v110, v99, v97, v98, v111);
  }

  v100 = *MEMORY[0x277D85DE8];
}

- (CKDRecordFetchAggregator)initWithOperationInfo:(id)a3 container:(id)a4
{
  v6 = a3;
  v7 = a4;
  v52.receiver = self;
  v52.super_class = CKDRecordFetchAggregator;
  v10 = [(CKDDatabaseOperation *)&v52 initWithOperationInfo:v6 container:v7];
  if (v10)
  {
    *(v10 + 489) = objc_msgSend_fetchAssetContents(v6, v8, v9);
    *(v10 + 490) = objc_msgSend_fetchMergeableValues(v6, v11, v12);
    *(v10 + 491) = objc_msgSend_preserveOrdering(v6, v13, v14);
    v17 = objc_msgSend_desiredKeys(v6, v15, v16);
    v20 = objc_msgSend_copy(v17, v18, v19);
    v21 = *(v10 + 64);
    *(v10 + 64) = v20;

    v24 = objc_msgSend_assetTransferOptionsByRecordTypeAndKey(v6, v22, v23);
    v25 = *(v10 + 63);
    *(v10 + 63) = v24;

    *(v10 + 494) = objc_msgSend_forceDecryptionAttempt(v6, v26, v27);
    *(v10 + 488) = 1;
    objc_initWeak(&location, v10);
    v28 = dispatch_group_create();
    v29 = *(v10 + 68);
    *(v10 + 68) = v28;

    v32 = objc_msgSend_fetchQueue(v10, v30, v31);
    v33 = dispatch_source_create(MEMORY[0x277D85CE8], 0, 0, v32);
    v34 = *(v10 + 67);
    *(v10 + 67) = v33;

    v35 = *(v10 + 67);
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = sub_22525C2F4;
    v49[3] = &unk_278547098;
    objc_copyWeak(&v50, &location);
    v36 = v49;
    handler = MEMORY[0x277D85DD0];
    v54 = 3221225472;
    v55 = sub_225087894;
    v56 = &unk_2785456A0;
    v57 = v36;
    dispatch_source_set_event_handler(v35, &handler);

    dispatch_resume(*(v10 + 67));
    v39 = objc_msgSend_fetchQueue(v10, v37, v38);
    v40 = dispatch_source_create(MEMORY[0x277D85CE8], 0, 0, v39);
    v41 = *(v10 + 65);
    *(v10 + 65) = v40;

    v42 = *(v10 + 65);
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = sub_22525C370;
    v47[3] = &unk_278547098;
    objc_copyWeak(&v48, &location);
    v43 = v47;
    handler = MEMORY[0x277D85DD0];
    v54 = 3221225472;
    v55 = sub_225087894;
    v56 = &unk_2785456A0;
    v57 = v43;
    dispatch_source_set_event_handler(v42, &handler);

    dispatch_resume(*(v10 + 65));
    v44 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v45 = *(v10 + 69);
    *(v10 + 69) = v44;

    objc_destroyWeak(&v48);
    objc_destroyWeak(&v50);
    objc_destroyWeak(&location);
  }

  return v10;
}

- (id)CKPropertiesDescription
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_2250740F0;
  v18 = sub_225073604;
  v19 = 0;
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_22525C568;
  aBlock[3] = &unk_278546A08;
  aBlock[4] = self;
  v4 = v3;
  v12 = v4;
  v13 = &v14;
  v5 = _Block_copy(aBlock);
  if (dispatch_get_specific("com.apple.cloudkit.recordfetchaggregator"))
  {
    v5[2](v5);
  }

  else
  {
    v8 = objc_msgSend_fetchQueue(self, v6, v7);
    dispatch_sync(v8, v5);
  }

  v9 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v9;
}

- (void)_performCallbackForFetchInfoLocked:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v7 = objc_msgSend_fetchQueue(self, v5, v6);
  dispatch_assert_queue_V2(v7);

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v8 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v38 = v4;
    _os_log_debug_impl(&dword_22506F000, v8, OS_LOG_TYPE_DEBUG, "Performing callback for fetch info %@", buf, 0xCu);
  }

  v11 = objc_msgSend_highestReturnedOrder(self, v9, v10);
  Order = objc_msgSend_fetchOrder(v4, v12, v13);
  if (v11 <= Order)
  {
    objc_msgSend_setHighestReturnedOrder_(self, v15, Order);
  }

  else
  {
    objc_msgSend_setHighestReturnedOrder_(self, v15, v11);
  }

  v18 = objc_msgSend_callbackQueue(self, v16, v17);
  v31 = MEMORY[0x277D85DD0];
  v32 = 3221225472;
  v33 = sub_22525CA10;
  v34 = &unk_278545898;
  v35 = v4;
  v36 = self;
  v19 = v4;
  dispatch_async(v18, &v31);

  v22 = objc_msgSend_fetchInfosByOrder(self, v20, v21, v31, v32, v33, v34);
  v23 = MEMORY[0x277CCABB0];
  v26 = objc_msgSend_fetchOrder(v19, v24, v25);
  v28 = objc_msgSend_numberWithUnsignedInteger_(v23, v27, v26);
  objc_msgSend_setObject_forKeyedSubscript_(v22, v29, 0, v28);

  v30 = *MEMORY[0x277D85DE8];
}

- (void)_flushFetchedRecordsToConsumerNoOrderingLocked
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_fetchQueue(self, a2, v2);
  dispatch_assert_queue_V2(v4);

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = objc_msgSend_fetchInfosByOrder(self, v5, v6, 0);
  v10 = objc_msgSend_allValues(v7, v8, v9);

  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v20, v24, 16);
  if (v12)
  {
    v15 = v12;
    v16 = *v21;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(v10);
        }

        v18 = *(*(&v20 + 1) + 8 * i);
        if (objc_msgSend_state(v18, v13, v14) == 3)
        {
          objc_msgSend__performCallbackForFetchInfoLocked_(self, v13, v18);
        }
      }

      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v20, v24, 16);
    }

    while (v15);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_addRecordFetchInfos:(id)a3
{
  v5 = a3;
  v8 = objc_msgSend_fetchQueue(self, v6, v7);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22525CC60;
  block[3] = &unk_278545E20;
  v11 = v5;
  v12 = self;
  v13 = a2;
  v9 = v5;
  dispatch_sync(v8, block);
}

- (id)_fetchRecord:(id)a3 recordReadyHandle:(BOOL *)a4 withRecordCompletion:(id)a5
{
  v194 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a5;
  if (objc_msgSend_isFinished(self, v11, v12))
  {
    v186 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v13, v14);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v186, v187, a2, self, @"CKDRecordFetchAggregator.m", 462, @"Can't enqueue a new fetch after we've already finished");
  }

  v17 = objc_msgSend_recordID(v9, v13, v14);
  if (v17)
  {
    goto LABEL_4;
  }

  v20 = objc_msgSend_record(v9, v15, v16);
  v23 = objc_msgSend_recordID(v20, v21, v22);

  if (!v23)
  {
    v17 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v18, v19);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v17, v164, a2, self, @"CKDRecordFetchAggregator.m", 463, @"Can't fetch a record without a record ID");
LABEL_4:
  }

  v24 = objc_msgSend_recordID(v9, v18, v19);
  v27 = v24;
  if (v24)
  {
    v28 = v24;
  }

  else
  {
    v29 = objc_msgSend_record(v9, v25, v26);
    v28 = objc_msgSend_recordID(v29, v30, v31);
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v32 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v171 = v32;
    v174 = objc_msgSend_ckShortDescription(v28, v172, v173);
    *buf = 138412290;
    v193 = v174;
    _os_log_debug_impl(&dword_22506F000, v171, OS_LOG_TYPE_DEBUG, "Enqueuing a record fetch for record %@", buf, 0xCu);
  }

  v33 = [CKDRecordFetchInfo alloc];
  v35 = objc_msgSend_initWithAggregator_(v33, v34, self);
  Order = objc_msgSend_curFetchOrder(self, v36, v37);
  objc_msgSend_setCurFetchOrder_(self, v39, Order + 1);
  objc_msgSend_setFetchOrder_(v35, v40, Order + 1);
  v191 = v28;
  objc_msgSend_setRecordID_(v35, v41, v28);
  v44 = objc_msgSend_record(v9, v42, v43);
  objc_msgSend_setRecord_(v35, v45, v44);

  v48 = objc_msgSend_etag(v9, v46, v47);
  objc_msgSend_setEtag_(v35, v49, v48);

  v52 = objc_msgSend_forceDecryptionAttempt(self, v50, v51);
  objc_msgSend_setIgnoreErrors_(v35, v53, v52);
  v56 = objc_msgSend_container(self, v54, v55);
  v59 = objc_msgSend_entitlements(v56, v57, v58);
  hasProtectionDataEntitlement = objc_msgSend_hasProtectionDataEntitlement(v59, v60, v61);
  v65 = objc_msgSend_record(v35, v63, v64);
  objc_msgSend_setSerializeProtectionData_(v65, v66, hasProtectionDataEntitlement);

  v69 = objc_msgSend_record(v35, v67, v68);
  objc_opt_class();
  LOBYTE(v59) = objc_opt_isKindOfClass();

  if (v59)
  {
    v188 = a4;
    v189 = v10;
    v72 = objc_msgSend_container(self, v70, v71);
    v75 = objc_msgSend_entitlements(v72, v73, v74);
    hasOutOfProcessUIEntitlement = objc_msgSend_hasOutOfProcessUIEntitlement(v75, v76, v77);
    if (hasOutOfProcessUIEntitlement)
    {
      hasParticipantPIIEntitlement = 1;
    }

    else
    {
      a4 = objc_msgSend_container(self, v78, v79);
      v69 = objc_msgSend_entitlements(a4, v82, v83);
      hasParticipantPIIEntitlement = objc_msgSend_hasParticipantPIIEntitlement(v69, v84, v85);
    }

    v86 = objc_msgSend_record(v35, v78, v79);
    objc_msgSend_setSerializePersonalInfo_(v86, v87, hasParticipantPIIEntitlement);

    if ((hasOutOfProcessUIEntitlement & 1) == 0)
    {
    }

    v90 = objc_msgSend_container(self, v88, v89);
    shouldSerializeOwnerInfo = objc_msgSend_shouldSerializeOwnerInfo(v90, v91, v92);
    v96 = objc_msgSend_record(v35, v94, v95);
    objc_msgSend_setSerializeOwnerInfo_(v96, v97, shouldSerializeOwnerInfo);

    a4 = v188;
    v10 = v189;
  }

  objc_msgSend_setCompletionBlock_(v35, v70, v10);
  v100 = objc_msgSend_fetchGroup(self, v98, v99);
  dispatch_group_enter(v100);

  objc_msgSend_setState_(v35, v101, 1);
  v104 = objc_msgSend_record(v9, v102, v103);
  if (!v104)
  {
    goto LABEL_26;
  }

  v107 = v104;
  v108 = objc_msgSend_record(v9, v105, v106);
  if (objc_msgSend_containsAssetValues(v108, v109, v110))
  {
LABEL_25:

    goto LABEL_26;
  }

  v113 = v10;
  v114 = objc_msgSend_record(v9, v111, v112);
  if (objc_msgSend_hasEncryptedData(v114, v115, v116) & 1) != 0 || (objc_msgSend_forceDecryptionAttempt(self, v117, v118))
  {

    v10 = v113;
    goto LABEL_25;
  }

  v165 = objc_msgSend_record(v9, v119, v120);
  if (objc_msgSend_containsMergeableValues(v165, v166, v167))
  {
    MergeableValues = objc_msgSend_fetchMergeableValues(self, v168, v169);

    v10 = v113;
    if ((MergeableValues & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_26:
    v123 = objc_msgSend_etag(v9, v105, v106);
    if (!v123)
    {
      goto LABEL_42;
    }

    v124 = objc_msgSend_useRecordCache(self, v121, v122);

    if (!v124)
    {
      LOBYTE(v123) = 0;
      goto LABEL_42;
    }

    v190 = v10;
    v127 = a4;
    v128 = objc_msgSend_container(self, v125, v126);
    v131 = objc_msgSend_recordCache(v128, v129, v130);
    v134 = objc_msgSend_databaseScope(self, v132, v133);
    v137 = objc_msgSend_recordID(v35, v135, v136);
    v140 = objc_msgSend_desiredKeys(self, v138, v139);
    v142 = objc_msgSend_etagForRecordID_container_requiredKeys_scope_(v131, v141, v137, v128, v140, v134);

    v145 = objc_msgSend_etag(v9, v143, v144);
    LODWORD(v140) = objc_msgSend_isEqualToString_(v142, v146, v145);

    if (!v140)
    {
      LOBYTE(v123) = 0;
      goto LABEL_41;
    }

    v149 = objc_msgSend_recordID(v35, v147, v148);
    v152 = objc_msgSend_desiredKeys(self, v150, v151);
    v154 = objc_msgSend_recordWithID_container_requiredKeys_scope_(v131, v153, v149, v128, v152, v134);

    if (v154)
    {
      if ((objc_msgSend_containsAssetValues(v154, v155, v156) & 1) == 0 && (objc_msgSend_hasEncryptedData(v154, v157, v158) & 1) == 0 && !objc_msgSend_forceDecryptionAttempt(self, v159, v160))
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v175 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
        {
          v182 = v175;
          v185 = objc_msgSend_recordID(v35, v183, v184);
          *buf = 138412290;
          v193 = v185;
          _os_log_debug_impl(&dword_22506F000, v182, OS_LOG_TYPE_DEBUG, "Found record %@ in the cache. Returning that record", buf, 0xCu);
        }

        objc_msgSend_setRecord_(v35, v176, v154);
        objc_msgSend_setState_(v35, v177, 3);
        LOBYTE(v123) = 1;
        goto LABEL_38;
      }

      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v161 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        v178 = v161;
        v181 = objc_msgSend_recordID(v35, v179, v180);
        *buf = 138412290;
        v193 = v181;
        _os_log_debug_impl(&dword_22506F000, v178, OS_LOG_TYPE_DEBUG, "Found record %@ in the cache, but it needs decryption.  Going through the fetch flow.", buf, 0xCu);
      }
    }

    LOBYTE(v123) = 0;
LABEL_38:

LABEL_41:
    a4 = v127;

    v10 = v190;
    goto LABEL_42;
  }

  v10 = v113;
LABEL_52:
  objc_msgSend_setState_(v35, v105, 3);
  LOBYTE(v123) = 1;
LABEL_42:
  if (a4)
  {
    *a4 = v123;
  }

  v162 = *MEMORY[0x277D85DE8];

  return v35;
}

- (void)fetchRecords:(id)a3 withPerRecordCompletion:(id)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v11 = objc_msgSend_array(MEMORY[0x277CBEB18], v9, v10);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v12 = v7;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v35, v39, 16);
  if (v14)
  {
    v16 = v14;
    v33 = a2;
    v17 = 0;
    v18 = *v36;
    v19 = 0x277CCA000uLL;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v36 != v18)
        {
          objc_enumerationMutation(v12);
        }

        v21 = *(*(&v35 + 1) + 8 * i);
        v34 = 0;
        v24 = objc_msgSend__fetchRecord_recordReadyHandle_withRecordCompletion_(self, v15, v21, &v34, v8, v33);
        if (!v24)
        {
          v25 = objc_msgSend_currentHandler(*(v19 + 2192), v22, v23);
          objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v25, v26, v33, self, @"CKDRecordFetchAggregator.m", 528, @"Failed to initialize fetchInfo");

          v19 = 0x277CCA000;
        }

        v17 += v34;
        objc_msgSend_addObject_(v11, v22, v24);
      }

      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v15, &v35, v39, 16);
    }

    while (v16);

    objc_msgSend__addRecordFetchInfos_(self, v27, v11);
    if (v17)
    {
      v30 = objc_msgSend_recordReadySource(self, v28, v29);
      dispatch_source_merge_data(v30, 1uLL);
    }
  }

  else
  {

    objc_msgSend__addRecordFetchInfos_(self, v31, v11);
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (void)_finishOnCallbackQueueWithError:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_fetchAggregatorCompletionBlock(self, v5, v6);

  if (v7)
  {
    v10 = objc_msgSend_fetchAggregatorCompletionBlock(self, v8, v9);
    (v10)[2](v10, v4);

    objc_msgSend_setFetchAggregatorCompletionBlock_(self, v11, 0);
  }

  v12.receiver = self;
  v12.super_class = CKDRecordFetchAggregator;
  [(CKDOperation *)&v12 _finishOnCallbackQueueWithError:v4];
}

@end