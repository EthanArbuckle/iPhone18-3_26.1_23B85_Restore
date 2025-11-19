@interface CKDPCSFetchAggregator
- (BOOL)fetchRequestForExistingOperation:(id)a3 isDependentOnOperation:(id)a4;
- (CKDContainer)container;
- (CKDPCSFetchAggregator)init;
- (CKDPCSFetchAggregator)initWithContainer:(id)a3;
- (id)_lockedGetQueuedFetchForOperation:(id)a3 ofClass:(Class)a4;
- (void)_lockedFetchesAreReady;
- (void)_lockedRescheduleFetchTimer;
- (void)_lockedTearDownFetchTimer;
- (void)cancelAllOperations;
- (void)dealloc;
- (void)requestFetchOfRecordWithID:(id)a3 forOperation:(id)a4 withCompletionHandler:(id)a5;
- (void)requestFetchOfShareWithID:(id)a3 forOperation:(id)a4 withCompletionHandler:(id)a5;
- (void)requestFetchOfZoneWithID:(id)a3 forOperation:(id)a4 withCompletionHandler:(id)a5;
@end

@implementation CKDPCSFetchAggregator

- (CKDPCSFetchAggregator)init
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = objc_alloc(MEMORY[0x277CBC360]);
  v6 = objc_msgSend_initWithName_format_(v4, v5, *MEMORY[0x277CBE660], @"You must call [%@ initWithContainer:]", v3);
  objc_exception_throw(v6);
}

- (CKDPCSFetchAggregator)initWithContainer:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = CKDPCSFetchAggregator;
  v5 = [(CKDPCSFetchAggregator *)&v24 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_container, v4);
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.cloudkit.pcs.fetchAggregator", v7);
    opQueue = v6->_opQueue;
    v6->_opQueue = v8;

    v10 = objc_alloc_init(MEMORY[0x277CCABD8]);
    queue = v6->_queue;
    v6->_queue = v10;

    v12 = objc_opt_new();
    queuedFetches = v6->_queuedFetches;
    v6->_queuedFetches = v12;

    v14 = objc_opt_new();
    runningFetches = v6->_runningFetches;
    v6->_runningFetches = v14;

    objc_initWeak(&location, v6);
    v16 = objc_alloc(MEMORY[0x277CBC1E8]);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = sub_225285824;
    v21[3] = &unk_278547F50;
    objc_copyWeak(&v22, &location);
    v18 = objc_msgSend_initWithActivityDelay_maxActivityDelay_coalescingInterval_processingDelay_notifyBlock_(v16, v17, 10000000, 100000000, 0, 0, v21);
    fetchCoalescer = v6->_fetchCoalescer;
    v6->_fetchCoalescer = v18;

    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  return v6;
}

- (void)dealloc
{
  timerSource = self->_timerSource;
  if (timerSource)
  {
    dispatch_source_cancel(timerSource);
  }

  v4.receiver = self;
  v4.super_class = CKDPCSFetchAggregator;
  [(CKDPCSFetchAggregator *)&v4 dealloc];
}

- (void)_lockedFetchesAreReady
{
  v148 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_opQueue(self, a2, v2);
  dispatch_assert_queue_V2(v4);

  v5 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v6 = MEMORY[0x277CBC830];
  v7 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v107 = v7;
    v110 = objc_msgSend_runningFetches(self, v108, v109);
    v113 = objc_msgSend_queuedFetches(self, v111, v112);
    *buf = 138412546;
    v145 = v110;
    v146 = 2112;
    v147 = v113;
    _os_log_debug_impl(&dword_22506F000, v107, OS_LOG_TYPE_DEBUG, "Cleaning up finished fetches and starting pending fetches. Running fetches are %@ and pending fetches are %@", buf, 0x16u);
  }

  v137 = 0u;
  v138 = 0u;
  v135 = 0u;
  v136 = 0u;
  v10 = objc_msgSend_runningFetches(self, v8, v9);
  v13 = objc_msgSend_mutableCopy(v10, v11, v12);

  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v135, v143, 16);
  if (v15)
  {
    v18 = v15;
    v19 = *v136;
    do
    {
      v20 = 0;
      do
      {
        if (*v136 != v19)
        {
          objc_enumerationMutation(v13);
        }

        v21 = *(*(&v135 + 1) + 8 * v20);
        if (objc_msgSend_isFinished(v21, v16, v17))
        {
          if (*v5 != -1)
          {
            dispatch_once(v5, *MEMORY[0x277CBC878]);
          }

          v22 = *v6;
          if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v145 = v21;
            _os_log_debug_impl(&dword_22506F000, v22, OS_LOG_TYPE_DEBUG, "Fetch %@ is finished. Removing it now.", buf, 0xCu);
          }

          v25 = objc_msgSend_runningFetches(self, v23, v24);
          objc_msgSend_removeObject_(v25, v26, v21);
        }

        ++v20;
      }

      while (v18 != v20);
      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v16, &v135, v143, 16);
    }

    while (v18);
  }

  v115 = objc_opt_new();
  v131 = 0u;
  v132 = 0u;
  v133 = 0u;
  v134 = 0u;
  obj = objc_msgSend_queuedFetches(self, v27, v28);
  v118 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v29, &v131, v142, 16);
  if (v118)
  {
    v117 = *v132;
    *&v32 = 138412290;
    v114 = v32;
    do
    {
      v33 = 0;
      do
      {
        if (*v132 != v117)
        {
          objc_enumerationMutation(obj);
        }

        v34 = *(*(&v131 + 1) + 8 * v33);
        v127 = 0u;
        v128 = 0u;
        v129 = 0u;
        v130 = 0u;
        v35 = objc_msgSend_runningFetches(self, v30, v31, v114);
        v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v36, &v127, v141, 16);
        if (v37)
        {
          v39 = v37;
          v40 = v6;
          v41 = v5;
          v42 = *v128;
LABEL_25:
          v43 = 0;
          while (1)
          {
            if (*v128 != v42)
            {
              objc_enumerationMutation(v35);
            }

            v44 = *(*(&v127 + 1) + 8 * v43);
            if (objc_msgSend_canBeUsedForPendingFetch_(v44, v38, v34))
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                break;
              }
            }

            if (v39 == ++v43)
            {
              v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v38, &v127, v141, 16);
              if (v39)
              {
                goto LABEL_25;
              }

              v45 = 1;
              v5 = v41;
              v6 = v40;
              goto LABEL_57;
            }
          }

          v5 = v41;
          if (*v41 != -1)
          {
            dispatch_once(v41, *MEMORY[0x277CBC878]);
          }

          v6 = v40;
          v46 = *v40;
          if (os_log_type_enabled(*v40, OS_LOG_TYPE_DEBUG))
          {
            *buf = v114;
            v145 = v34;
            _os_log_debug_impl(&dword_22506F000, v46, OS_LOG_TYPE_DEBUG, "Holding queued fetch %@ because an equivalent fetch is already running", buf, 0xCu);
          }

          objc_msgSend_setEquivalentRunningFetch_(v34, v47, v44);

          if ((objc_msgSend_skipQueuedFetchCycleDetection(self, v48, v49) & 1) == 0)
          {
            v125 = 0u;
            v126 = 0u;
            v123 = 0u;
            v124 = 0u;
            v35 = objc_msgSend_runningFetches(self, v50, v51);
            v53 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v52, &v123, v140, 16);
            if (v53)
            {
              v55 = v53;
              v56 = *v124;
LABEL_40:
              v57 = 0;
              while (1)
              {
                if (*v124 != v56)
                {
                  objc_enumerationMutation(v35);
                }

                if (objc_msgSend_dependentOperationListContainsRunningFetch_(v34, v54, *(*(&v123 + 1) + 8 * v57)))
                {
                  break;
                }

                if (v55 == ++v57)
                {
                  v55 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v54, &v123, v140, 16);
                  v6 = v40;
                  if (v55)
                  {
                    goto LABEL_40;
                  }

                  goto LABEL_46;
                }
              }

              v5 = v41;
              if (*v41 != -1)
              {
                dispatch_once(v41, *MEMORY[0x277CBC878]);
              }

              v6 = v40;
              v74 = *v40;
              if (os_log_type_enabled(*v40, OS_LOG_TYPE_DEBUG))
              {
                *buf = v114;
                v145 = v34;
                v72 = v74;
                v73 = "Firing queued fetch %@ immediately since a running fetch is waiting on it";
                goto LABEL_69;
              }

              goto LABEL_56;
            }

LABEL_46:

            v5 = v41;
          }

          v35 = objc_msgSend_date(MEMORY[0x277CBEAA8], v50, v51);
          v60 = objc_msgSend_queuedDate(v34, v58, v59);
          objc_msgSend_timeIntervalSinceDate_(v35, v61, v60);
          v63 = v62;
          v66 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v64, v65);
          objc_msgSend_maximumQueuedFetchWaitTime(v66, v67, v68);
          v70 = v69;

          if (v63 <= v70)
          {
            v45 = 0;
            goto LABEL_57;
          }

          if (*v5 != -1)
          {
            dispatch_once(v5, *MEMORY[0x277CBC878]);
          }

          v71 = *v6;
          if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEBUG))
          {
            *buf = v114;
            v145 = v34;
            v72 = v71;
            v73 = "Firing queued fetch %@ immediately since its been waiting too long";
LABEL_69:
            _os_log_debug_impl(&dword_22506F000, v72, OS_LOG_TYPE_DEBUG, v73, buf, 0xCu);
          }
        }

LABEL_56:
        v45 = 1;
LABEL_57:

        if (*v5 != -1)
        {
          dispatch_once(v5, *MEMORY[0x277CBC878]);
        }

        v75 = *v6;
        if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543618;
          v79 = @"not ";
          if (v45)
          {
            v79 = &stru_28385ED00;
          }

          v145 = v79;
          v146 = 2112;
          v147 = v34;
          _os_log_debug_impl(&dword_22506F000, v75, OS_LOG_TYPE_DEBUG, "Fetch is %{public}@ready to fire: %@", buf, 0x16u);
          if (v45)
          {
LABEL_61:
            objc_msgSend_setEquivalentRunningFetch_(v34, v76, 0);
            objc_msgSend_addObject_(v115, v78, v34);
            goto LABEL_66;
          }
        }

        else if (v45)
        {
          goto LABEL_61;
        }

        objc_msgSend__lockedRescheduleFetchTimer(self, v76, v77);
LABEL_66:
        ++v33;
      }

      while (v33 != v118);
      v80 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v30, &v131, v142, 16);
      v118 = v80;
    }

    while (v80);
  }

  v121 = 0u;
  v122 = 0u;
  v119 = 0u;
  v120 = 0u;
  v81 = v115;
  v83 = objc_msgSend_countByEnumeratingWithState_objects_count_(v81, v82, &v119, v139, 16);
  if (v83)
  {
    v86 = v83;
    v87 = *v120;
    do
    {
      for (i = 0; i != v86; ++i)
      {
        if (*v120 != v87)
        {
          objc_enumerationMutation(v81);
        }

        v89 = *(*(&v119 + 1) + 8 * i);
        v90 = objc_msgSend_runningFetches(self, v84, v85);
        objc_msgSend_addObject_(v90, v91, v89);

        v94 = objc_msgSend_queuedFetches(self, v92, v93);
        objc_msgSend_removeObject_(v94, v95, v89);

        objc_msgSend_start(v89, v96, v97);
      }

      v86 = objc_msgSend_countByEnumeratingWithState_objects_count_(v81, v84, &v119, v139, 16);
    }

    while (v86);
  }

  v100 = objc_msgSend_queuedFetches(self, v98, v99);
  v103 = objc_msgSend_count(v100, v101, v102);

  if (!v103)
  {
    objc_msgSend__lockedTearDownFetchTimer(self, v104, v105);
  }

  v106 = *MEMORY[0x277D85DE8];
}

- (void)_lockedTearDownFetchTimer
{
  v4 = objc_msgSend_timerSource(self, a2, v2);

  if (v4)
  {
    v7 = objc_msgSend_timerSource(self, v5, v6);
    dispatch_source_cancel(v7);

    objc_msgSend_setTimerSource_(self, v8, 0);
  }
}

- (void)_lockedRescheduleFetchTimer
{
  v31 = *MEMORY[0x277D85DE8];
  objc_msgSend__lockedTearDownFetchTimer(self, a2, v2);
  v6 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v4, v5);
  objc_msgSend_maximumQueuedFetchWaitTime(v6, v7, v8);
  v10 = v9;

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v11 = v10;
  v12 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    location = 134217984;
    location_4 = v11;
    _os_log_debug_impl(&dword_22506F000, v12, OS_LOG_TYPE_DEBUG, "Rescheduling queued fetch timer to fire after %.2f seconds", &location, 0xCu);
  }

  v13 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_opQueue);
  objc_msgSend_setTimerSource_(self, v14, v13);

  objc_initWeak(&location, self);
  v17 = objc_msgSend_timerSource(self, v15, v16);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = sub_2252864C4;
  handler[3] = &unk_278547098;
  objc_copyWeak(&v28, &location);
  dispatch_source_set_event_handler(v17, handler);

  v20 = objc_msgSend_timerSource(self, v18, v19);
  v21 = v11 * 1000000000.0;
  v22 = dispatch_time(0, v21);
  dispatch_source_set_timer(v20, v22, 0xFFFFFFFFFFFFFFFFLL, v21);

  v25 = objc_msgSend_timerSource(self, v23, v24);
  dispatch_resume(v25);

  objc_destroyWeak(&v28);
  objc_destroyWeak(&location);
  v26 = *MEMORY[0x277D85DE8];
}

- (id)_lockedGetQueuedFetchForOperation:(id)a3 ofClass:(Class)a4
{
  v64 = *MEMORY[0x277D85DE8];
  v6 = a3;
  val = self;
  v9 = objc_msgSend_opQueue(self, v7, v8);
  dispatch_assert_queue_V2(v9);

  if (*MEMORY[0x277CBC810] == 1)
  {
    v12 = objc_msgSend_unitTestOverrides(v6, v10, v11);
    v14 = objc_msgSend_objectForKeyedSubscript_(v12, v13, @"ForceNoQueuedFetchCycleDetection");

    if (v14)
    {
      objc_msgSend_setSkipQueuedFetchCycleDetection_(self, v10, 1);
    }
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v15 = objc_msgSend_queuedFetches(self, v10, v11);
  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v56, v63, 16);
  if (v18)
  {
    v19 = *v57;
LABEL_6:
    v20 = 0;
    while (1)
    {
      if (*v57 != v19)
      {
        objc_enumerationMutation(v15);
      }

      v21 = *(*(&v56 + 1) + 8 * v20);
      if (objc_msgSend_canBeUsedForOperation_(v21, v17, v6))
      {
        if (objc_opt_isKindOfClass())
        {
          if (*MEMORY[0x277CBC810] != 1)
          {
            break;
          }

          v23 = objc_msgSend_unitTestOverrides(v6, v17, v22);
          v25 = objc_msgSend_objectForKeyedSubscript_(v23, v24, @"ForceNoQueuedFetchReuse");
          v26 = v25 == 0;

          if (v26)
          {
            break;
          }
        }
      }

      if (v18 == ++v20)
      {
        v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v17, &v56, v63, 16);
        if (v18)
        {
          goto LABEL_6;
        }

        goto LABEL_15;
      }
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v27 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v49 = v27;
      v52 = objc_msgSend_operationID(v6, v50, v51);
      *location = 138412546;
      *&location[4] = v21;
      v61 = 2114;
      v62 = v52;
      _os_log_debug_impl(&dword_22506F000, v49, OS_LOG_TYPE_DEBUG, "Re-using fetch request %@ for operation %{public}@", location, 0x16u);
    }

    v28 = v21;

    if (v28)
    {
      goto LABEL_26;
    }
  }

  else
  {
LABEL_15:
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v29 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v45 = v29;
    v48 = objc_msgSend_operationID(v6, v46, v47);
    *location = 138543362;
    *&location[4] = v48;
    _os_log_debug_impl(&dword_22506F000, v45, OS_LOG_TYPE_DEBUG, "Creating a new fetch request for operation %{public}@", location, 0xCu);
  }

  v30 = [a4 alloc];
  v33 = objc_msgSend_container(val, v31, v32);
  v36 = objc_msgSend_queue(val, v34, v35);
  v28 = objc_msgSend_initWithOperation_container_operationQueue_(v30, v37, v6, v33, v36);

  objc_initWeak(location, val);
  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = sub_22528698C;
  v54[3] = &unk_278547098;
  objc_copyWeak(&v55, location);
  objc_msgSend_setCompletionHandler_(v28, v38, v54);
  v41 = objc_msgSend_queuedFetches(val, v39, v40);
  objc_msgSend_addObject_(v41, v42, v28);

  objc_destroyWeak(&v55);
  objc_destroyWeak(location);
LABEL_26:

  v43 = *MEMORY[0x277D85DE8];

  return v28;
}

- (BOOL)fetchRequestForExistingOperation:(id)a3 isDependentOnOperation:(id)a4
{
  v7 = a3;
  v8 = a4;
  v11 = objc_msgSend_opQueue(self, v9, v10);
  dispatch_assert_queue_not_V2(v11);

  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x3032000000;
  v23[3] = sub_225074130;
  v23[4] = sub_225073624;
  v12 = v8;
  v24 = v12;
  v15 = objc_msgSend_opQueue(self, v13, v14);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_225286B90;
  block[3] = &unk_27854BAE8;
  block[4] = self;
  v19 = v7;
  v20 = v23;
  v21 = &v25;
  v22 = a2;
  v16 = v7;
  dispatch_sync(v15, block);

  LOBYTE(v7) = *(v26 + 24);
  _Block_object_dispose(v23, 8);

  _Block_object_dispose(&v25, 8);
  return v7;
}

- (void)requestFetchOfRecordWithID:(id)a3 forOperation:(id)a4 withCompletionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v13 = objc_msgSend_opQueue(self, v11, v12);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_225286ED0;
  v17[3] = &unk_2785488E0;
  v18 = v8;
  v19 = self;
  v20 = v9;
  v21 = v10;
  v14 = v10;
  v15 = v9;
  v16 = v8;
  dispatch_async(v13, v17);
}

- (void)requestFetchOfShareWithID:(id)a3 forOperation:(id)a4 withCompletionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v13 = objc_msgSend_opQueue(self, v11, v12);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_2252874C8;
  v17[3] = &unk_2785488E0;
  v18 = v8;
  v19 = self;
  v20 = v9;
  v21 = v10;
  v14 = v10;
  v15 = v9;
  v16 = v8;
  dispatch_async(v13, v17);
}

- (void)requestFetchOfZoneWithID:(id)a3 forOperation:(id)a4 withCompletionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v13 = objc_msgSend_opQueue(self, v11, v12);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_225287980;
  v17[3] = &unk_2785488E0;
  v18 = v8;
  v19 = self;
  v20 = v9;
  v21 = v10;
  v14 = v10;
  v15 = v9;
  v16 = v8;
  dispatch_async(v13, v17);
}

- (void)cancelAllOperations
{
  v4 = objc_msgSend_opQueue(self, a2, v2);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_225287D44;
  block[3] = &unk_278545A00;
  block[4] = self;
  dispatch_async(v4, block);
}

- (CKDContainer)container
{
  WeakRetained = objc_loadWeakRetained(&self->_container);

  return WeakRetained;
}

@end