@interface CKDXPCConnectionManager
+ (id)sharedConnectionManager;
+ (void)clouddStarted;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (id)CKStatusReportArray;
- (id)initInternal;
- (id)previousProcTearDownOperations:(id)a3;
- (void)_dumpStatusReportArrayToOsTrace:(id)a3;
- (void)_dumpStatusReportToFileHandle:(id)a3;
- (void)activate;
- (void)dealloc;
- (void)dumpStatusReportToFileHandle:(id)a3;
- (void)enumerateConnections:(id)a3;
- (void)statusReportWithCompletionHandler:(id)a3;
@end

@implementation CKDXPCConnectionManager

+ (id)sharedConnectionManager
{
  if (qword_280D58190 != -1)
  {
    dispatch_once(&qword_280D58190, &unk_28385CEC0);
  }

  v3 = qword_280D58188;

  return v3;
}

+ (void)clouddStarted
{
  qword_280D54E90 = os_transaction_create();

  MEMORY[0x2821F96F8]();
}

- (id)initInternal
{
  v51.receiver = self;
  v51.super_class = CKDXPCConnectionManager;
  v4 = [(CKDXPCConnectionManager *)&v51 init];
  if (v4)
  {
    objc_msgSend_enableTransactions(MEMORY[0x277CCAE98], v2, v3);
    v7 = objc_msgSend_currentProcess(CKDDaemonProcess, v5, v6);
    v10 = objc_msgSend_processType(v7, v8, v9);

    if (v10 > 2)
    {
      v13 = 0;
    }

    else
    {
      v13 = **(&unk_278548428 + v10);
    }

    v14 = objc_msgSend_currentProcess(CKDDaemonProcess, v11, v12);
    isSystemInstalledBinary = objc_msgSend_isSystemInstalledBinary(v14, v15, v16);

    if ((isSystemInstalledBinary & 1) == 0)
    {
      v19 = objc_msgSend_stringByAppendingString_(v13, v18, @".debug");

      v13 = v19;
    }

    v20 = objc_alloc(MEMORY[0x277CCAE98]);
    v22 = objc_msgSend_initWithMachServiceName_(v20, v21, v13);
    v23 = *(v4 + 1);
    *(v4 + 1) = v22;

    objc_msgSend_setDelegate_(*(v4 + 1), v24, v4);
    v25 = objc_opt_new();
    v26 = *(v4 + 2);
    *(v4 + 2) = v25;

    v27 = objc_opt_new();
    v28 = *(v4 + 5);
    *(v4 + 5) = v27;

    objc_msgSend_setMaxConcurrentOperationCount_(*(v4 + 5), v29, 10);
    v30 = objc_opt_new();
    v31 = *(v4 + 3);
    *(v4 + 3) = v30;

    v32 = objc_opt_new();
    v33 = *(v4 + 10);
    *(v4 + 10) = v32;

    v34 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v35 = dispatch_queue_attr_make_with_qos_class(v34, QOS_CLASS_UTILITY, 0);
    v36 = dispatch_queue_create("com.apple.cloudkit.connectionManager.statusreport.callback", v35);
    v37 = *(v4 + 9);
    *(v4 + 9) = v36;

    v38 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v39 = dispatch_queue_attr_make_with_qos_class(v38, QOS_CLASS_UTILITY, 0);
    v40 = dispatch_queue_create("com.apple.cloudkit.connectionManager.statusreport", v39);
    v41 = *(v4 + 8);
    *(v4 + 8) = v40;

    v42 = dispatch_source_create(MEMORY[0x277D85CE8], 0, 0, *(v4 + 8));
    v43 = *(v4 + 7);
    *(v4 + 7) = v42;

    v44 = *(v4 + 7);
    handler = MEMORY[0x277D85DD0];
    v53 = 3221225472;
    v54 = sub_225087848;
    v55 = &unk_2785456A0;
    v56 = &unk_28385CEE0;
    dispatch_source_set_event_handler(v44, &handler);

    dispatch_resume(*(v4 + 7));
    v45 = CKGetGlobalQueue();
    v46 = dispatch_source_create(MEMORY[0x277D85D30], 0x1DuLL, 0, v45);
    v47 = *(v4 + 4);
    *(v4 + 4) = v46;

    v48 = *(v4 + 4);
    handler = MEMORY[0x277D85DD0];
    v53 = 3221225472;
    v54 = sub_225087848;
    v55 = &unk_2785456A0;
    v56 = &unk_28385CF00;
    dispatch_source_set_event_handler(v48, &handler);

    dispatch_resume(*(v4 + 4));
    v49 = dispatch_get_global_queue(0, 0);
    *(v4 + 6) = os_state_add_handler();
  }

  return v4;
}

- (void)dealloc
{
  v4 = objc_msgSend_sighandlerSource(self, a2, v2);
  dispatch_source_cancel(v4);

  v7 = objc_msgSend_statusReportRequestSource(self, v5, v6);
  dispatch_source_cancel(v7);

  if (objc_msgSend_stateHandle(self, v8, v9))
  {
    objc_msgSend_stateHandle(self, v10, v11);
    os_state_remove_handler();
  }

  while (1)
  {
    v14 = objc_msgSend_sighandlerSource(self, v10, v11);
    if (dispatch_source_testcancel(v14))
    {
      break;
    }

    v12 = objc_msgSend_statusReportRequestSource(self, v15, v16);
    v13 = dispatch_source_testcancel(v12);

    if (v13)
    {
      goto LABEL_7;
    }

    usleep(0xAu);
  }

LABEL_7:
  v17.receiver = self;
  v17.super_class = CKDXPCConnectionManager;
  [(CKDXPCConnectionManager *)&v17 dealloc];
}

- (void)activate
{
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v3 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_22506F000, v3, OS_LOG_TYPE_DEFAULT, "Activating connection manager", v10, 2u);
  }

  v6 = objc_msgSend_xpcListener(self, v4, v5);
  objc_msgSend_activate(v6, v7, v8);

  v9 = qword_280D54E90;
  qword_280D54E90 = 0;
}

- (id)previousProcTearDownOperations:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v7 = objc_opt_new();
  if (v4)
  {
    v8 = objc_msgSend_tearDownOperations(self, v5, v6);
    objc_sync_enter(v8);
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v11 = objc_msgSend_tearDownOperations(self, v9, v10, 0);
    v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v24, v28, 16);
    if (v15)
    {
      v16 = *v25;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v25 != v16)
          {
            objc_enumerationMutation(v11);
          }

          v18 = *(*(&v24 + 1) + 8 * i);
          v19 = objc_msgSend_name(v18, v13, v14);
          isEqualToString = objc_msgSend_isEqualToString_(v19, v20, v4);

          if (isEqualToString)
          {
            objc_msgSend_addObject_(v7, v13, v18);
          }
        }

        v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v13, &v24, v28, 16);
      }

      while (v15);
    }

    objc_sync_exit(v8);
  }

  v22 = *MEMORY[0x277D85DE8];

  return v7;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v44 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = _os_activity_create(&dword_22506F000, "xpcConnection", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v9, &state);
  v12 = objc_msgSend_CKXPCDaemonToClientMuxerInterface(MEMORY[0x277CBC7D8], v10, v11);
  objc_msgSend_setRemoteObjectInterface_(v7, v13, v12);

  v16 = objc_msgSend_CKXPCClientToDaemonMuxerInterface(MEMORY[0x277CBC7D8], v14, v15);
  objc_msgSend_setExportedInterface_(v7, v17, v16);

  v18 = [CKDXPCConnection alloc];
  v20 = objc_msgSend_initWithXPCConnection_(v18, v19, v7);
  objc_msgSend_setExportedObject_(v7, v21, v20);
  objc_initWeak(&location, v20);
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v22 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v43 = v20;
    _os_log_impl(&dword_22506F000, v22, OS_LOG_TYPE_INFO, "New connection from client %@", buf, 0xCu);
  }

  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = sub_225195F2C;
  v38[3] = &unk_278547098;
  objc_copyWeak(&v39, &location);
  objc_msgSend_setInterruptionHandler_(v7, v23, v38);
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = sub_22519600C;
  v36[3] = &unk_278547098;
  objc_copyWeak(&v37, &location);
  objc_msgSend_setInvalidationHandler_(v7, v24, v36);
  v27 = objc_msgSend_clientConnections(self, v25, v26);
  objc_sync_enter(v27);
  v30 = objc_msgSend_clientConnections(self, v28, v29);
  objc_msgSend_addObject_(v30, v31, v20);

  objc_sync_exit(v27);
  objc_msgSend_resume(v7, v32, v33);
  objc_destroyWeak(&v37);
  objc_destroyWeak(&v39);
  objc_destroyWeak(&location);

  os_activity_scope_leave(&state);
  objc_autoreleasePoolPop(v8);

  v34 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)enumerateConnections:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_clientConnections(self, v5, v6);
  objc_sync_enter(v7);
  v10 = objc_msgSend_clientConnections(self, v8, v9);
  v13 = objc_msgSend_copy(v10, v11, v12);

  objc_sync_exit(v7);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_2251965D4;
  v16[3] = &unk_2785483E0;
  v17 = v4;
  v14 = v4;
  objc_msgSend_enumerateObjectsUsingBlock_(v13, v15, v16);
}

- (id)CKStatusReportArray
{
  v126 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v109 = objc_msgSend_sharedMonitor(CKDSystemAvailabilityMonitor, v4, v5);
  v6 = MEMORY[0x277CCACA8];
  v9 = objc_msgSend_availabilityDescription(v109, v7, v8);
  v11 = objc_msgSend_stringWithFormat_(v6, v10, @"System Availability: %@", v9);
  objc_msgSend_addObject_(v3, v12, v11);

  v15 = objc_msgSend_clientConnections(self, v13, v14);
  objc_sync_enter(v15);
  v18 = objc_msgSend_clientConnections(self, v16, v17);
  v21 = objc_msgSend_copy(v18, v19, v20);

  objc_sync_exit(v15);
  v22 = MEMORY[0x277CCACA8];
  v25 = objc_msgSend_count(v21, v23, v24);
  v27 = objc_msgSend_stringWithFormat_(v22, v26, @"\n%lu connected clients", v25);
  objc_msgSend_addObject_(v3, v28, v27);

  v120 = 0;
  v121 = &v120;
  v122 = 0x2020000000;
  v123 = -1;
  v116 = 0u;
  v117 = 0u;
  v118 = 0u;
  v119 = 0u;
  obj = v21;
  v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v29, &v116, v125, 16);
  if (v30)
  {
    v31 = *v117;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v117 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v33 = *(*(&v116 + 1) + 8 * i);
        v34 = objc_autoreleasePoolPush();
        v37 = objc_msgSend_CKStatusReportArray(v33, v35, v36);
        objc_msgSend_addObject_(v3, v38, v37);

        if (v121[3] == -1)
        {
          v115[0] = MEMORY[0x277D85DD0];
          v115[1] = 3221225472;
          v115[2] = sub_225196BAC;
          v115[3] = &unk_278548408;
          v115[4] = &v120;
          objc_msgSend_enumerateContainersWithOptions_usingBlock_(v33, v39, 4, v115);
        }

        objc_autoreleasePoolPop(v34);
      }

      v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v40, &v116, v125, 16);
    }

    while (v30);
  }

  objc_msgSend_addObject_(v3, v41, @"------ Shared Foreground Queue Operations -------");
  v44 = objc_msgSend_sharedClientThrottlingOperationQueue(CKDContainer, v42, v43);
  v47 = objc_msgSend_operations(v44, v45, v46);

  if (objc_msgSend_count(v47, v48, v49))
  {
    v52 = MEMORY[0x277CCACA8];
    v53 = objc_msgSend_count(v47, v50, v51);
    v56 = objc_msgSend_sharedClientThrottlingOperationQueue(CKDContainer, v54, v55);
    v59 = objc_msgSend_maxConcurrentOperationCount(v56, v57, v58);
    v61 = objc_msgSend_stringWithFormat_(v52, v60, @"%lu/%ld {", v53, v59);
    objc_msgSend_addObject_(v3, v62, v61);

    v113 = 0u;
    v114 = 0u;
    v111 = 0u;
    v112 = 0u;
    v63 = v47;
    v65 = objc_msgSend_countByEnumeratingWithState_objects_count_(v63, v64, &v111, v124, 16);
    if (v65)
    {
      v66 = *v112;
      do
      {
        for (j = 0; j != v65; ++j)
        {
          if (*v112 != v66)
          {
            objc_enumerationMutation(v63);
          }

          v68 = *(*(&v111 + 1) + 8 * j);
          v69 = objc_autoreleasePoolPush();
          v72 = objc_msgSend_operationStatusReport_(CKDContainer, v70, v68);
          if (v72)
          {
            objc_msgSend_addObject_(v3, v71, v72);
          }

          objc_autoreleasePoolPop(v69);
        }

        v65 = objc_msgSend_countByEnumeratingWithState_objects_count_(v63, v73, &v111, v124, 16);
      }

      while (v65);
    }

    objc_msgSend_addObject_(v3, v74, @"}");
  }

  else
  {
    objc_msgSend_addObject_(v3, v50, @"No operations.");
  }

  objc_msgSend_addObject_(v3, v75, @"------ Global Configuration Manager -------");
  v78 = objc_msgSend_sharedManager(CKDServerConfigurationManager, v76, v77);
  v81 = objc_msgSend_CKStatusReportArray(v78, v79, v80);
  objc_msgSend_addObject_(v3, v82, v81);

  objc_msgSend_addObject_(v3, v83, @"-------------------------------------------");
  if (objc_msgSend_availabilityState(v109, v84, v85))
  {
    v88 = objc_msgSend_existingDefaultContext(CKDLogicalDeviceContext, v86, v87);
    v91 = objc_msgSend_throttleManager(v88, v89, v90);
    v94 = objc_msgSend_CKStatusReportArray(v91, v92, v93);

    if (objc_msgSend_count(v94, v95, v96))
    {
      objc_msgSend_addObject_(v3, v97, &stru_28385ED00);
      objc_msgSend_addObject_(v3, v98, @"------ Active Throttles -------");
      objc_msgSend_addObject_(v3, v99, v94);
      objc_msgSend_addObject_(v3, v100, @"-------------------------------------------");
    }
  }

  v101 = MEMORY[0x277CCACA8];
  v102 = v121[3];
  v103 = CKStringFromServerEnvironment();
  v105 = objc_msgSend_stringWithFormat_(v101, v104, @"Cached environment is %@", v103);
  objc_msgSend_addObject_(v3, v106, v105);

  _Block_object_dispose(&v120, 8);
  v107 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)_dumpStatusReportArrayToOsTrace:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v7 = objc_msgSend_statusReportQueue(self, v5, v6);
  dispatch_assert_queue_V2(v7);

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = v4;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v21, v27, 16);
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    v13 = MEMORY[0x277CBC880];
    v14 = MEMORY[0x277CBC870];
    do
    {
      v15 = 0;
      do
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v16 = *(*(&v21 + 1) + 8 * v15);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_msgSend__dumpStatusReportArrayToOsTrace_(self, v17, v16);
        }

        else
        {
          if (*v13 != -1)
          {
            dispatch_once(v13, *MEMORY[0x277CBC878]);
          }

          v19 = *v14;
          if (os_log_type_enabled(*v14, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v26 = v16;
            _os_log_impl(&dword_22506F000, v19, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
          }
        }

        ++v15;
      }

      while (v11 != v15);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v18, &v21, v27, 16);
    }

    while (v11);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_dumpStatusReportToFileHandle:(id)a3
{
  v51 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v7 = objc_msgSend_statusReportQueue(self, v5, v6);
  dispatch_assert_queue_V2(v7);

  v11 = objc_msgSend_CKStatusReportArray(self, v8, v9);
  if (v4)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = MEMORY[0x277CCACA8];
    v15 = objc_msgSend_CKComponentsAndSubcomponentsJoinedByString_(v11, v14, @"\n");
    v17 = objc_msgSend_stringWithFormat_(v13, v16, @"%@", v15);

    v19 = objc_msgSend_dataUsingEncoding_(v17, v18, 4);
    objc_msgSend_writeData_(v4, v20, v19);

    objc_autoreleasePoolPop(v12);
  }

  else
  {
    objc_msgSend__dumpStatusReportArrayToOsTrace_(self, v10, v11);
  }

  v21 = *MEMORY[0x277CBC988];
  v22 = CKNotificationKey();
  v25 = objc_msgSend_UTF8String(v22, v23, v24);
  notify_post(v25);
  if (!v4)
  {
    obj = objc_msgSend_statusReportCallbacks(self, v26, v27);
    objc_sync_enter(obj);
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v30 = objc_msgSend_statusReportCallbacks(self, v28, v29);
    v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v31, &v46, v50, 16);
    if (v34)
    {
      v35 = *v47;
      do
      {
        for (i = 0; i != v34; ++i)
        {
          if (*v47 != v35)
          {
            objc_enumerationMutation(v30);
          }

          v37 = *(*(&v46 + 1) + 8 * i);
          v38 = objc_msgSend_statusReportCallbackQueue(self, v32, v33);
          dispatch_async(v38, v37);
        }

        v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v32, &v46, v50, 16);
      }

      while (v34);
    }

    v41 = objc_msgSend_statusReportCallbacks(self, v39, v40);
    objc_msgSend_removeAllObjects(v41, v42, v43);

    objc_sync_exit(obj);
  }

  v44 = *MEMORY[0x277D85DE8];
}

- (void)dumpStatusReportToFileHandle:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_statusReportQueue(self, v5, v6);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2251970FC;
  v9[3] = &unk_278545898;
  v9[4] = self;
  v10 = v4;
  v8 = v4;
  dispatch_sync(v7, v9);
}

- (void)statusReportWithCompletionHandler:(id)a3
{
  aBlock = a3;
  if (aBlock)
  {
    v6 = objc_msgSend_statusReportCallbacks(self, v4, v5);
    objc_sync_enter(v6);
    v9 = objc_msgSend_statusReportCallbacks(self, v7, v8);
    v10 = _Block_copy(aBlock);
    objc_msgSend_addObject_(v9, v11, v10);

    objc_sync_exit(v6);
  }

  v12 = objc_msgSend_statusReportRequestSource(self, v4, v5);
  dispatch_source_merge_data(v12, 1uLL);
}

@end