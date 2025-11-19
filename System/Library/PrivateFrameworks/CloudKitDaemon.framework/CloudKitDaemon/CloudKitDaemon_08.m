void sub_225191E18(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = objc_autoreleasePoolPush();
  v6 = objc_msgSend_container(v7, v4, v5);
  if (v6)
  {
    (*(*(a1 + 32) + 16))();
  }

  objc_autoreleasePoolPop(v3);
}

void sub_2251934B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose(&a55, 8);
  _Block_object_dispose(&a61, 8);
  _Unwind_Resume(a1);
}

void sub_225193560(uint64_t a1, const char *a2)
{
  v54[5] = *MEMORY[0x277D85DE8];
  v53[0] = @"success";
  v3 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], a2, *(*(*(a1 + 72) + 8) + 24));
  v54[0] = v3;
  v53[1] = @"process";
  v6 = objc_msgSend_processScopedClientProxy(*(a1 + 32), v4, v5);
  v9 = objc_msgSend_processBinaryName(v6, v7, v8);
  v12 = v9;
  v13 = @"unknown";
  if (v9)
  {
    v13 = v9;
  }

  v54[1] = v13;
  v53[2] = @"containerID";
  v14 = objc_msgSend_containerIdentifier(*(a1 + 40), v10, v11);
  v54[2] = v14;
  v53[3] = @"currentPersonaType";
  objc_msgSend_type(*(a1 + 48), v15, v16);
  v17 = CKPersonaTypeDescription();
  v54[3] = v17;
  v53[4] = @"targetPersonaType";
  objc_msgSend_type(*(*(*(a1 + 80) + 8) + 40), v18, v19);
  v20 = CKPersonaTypeDescription();
  v54[4] = v20;
  v22 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v21, v54, v53, 5);
  v25 = objc_msgSend_mutableCopy(v22, v23, v24);

  v28 = objc_msgSend_containerOptions(*(a1 + 56), v26, v27);
  v31 = objc_msgSend_persona(v28, v29, v30);

  if (v31)
  {
    v34 = objc_msgSend_containerOptions(*(a1 + 56), v32, v33);
    v37 = objc_msgSend_persona(v34, v35, v36);
    objc_msgSend_type(v37, v38, v39);
    v40 = CKPersonaTypeDescription();
    objc_msgSend_setObject_forKeyedSubscript_(v25, v41, v40, @"containerPersonaType");
  }

  v42 = *(*(*(a1 + 88) + 8) + 40);
  if (v42)
  {
    objc_msgSend_type(v42, v32, v33);
    v43 = CKPersonaTypeDescription();
    objc_msgSend_setObject_forKeyedSubscript_(v25, v44, v43, @"proximatePersonaType");
  }

  v45 = MEMORY[0x277CBC1E0];
  v46 = objc_msgSend_applicationBundleID(*(a1 + 64), v32, v33);
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = sub_22519383C;
  v50[3] = &unk_278548128;
  v51 = 0;
  v52 = v25;
  v47 = v25;
  objc_msgSend_reportWithEventType_event_bundleIdentifier_completionHandler_(v45, v48, @"GetContainerProxy", v47, v46, v50);

  v49 = *MEMORY[0x277D85DE8];
}

void sub_22519383C(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CBC878];
  v5 = *MEMORY[0x277CBC880];
  if (v3)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v4);
    }

    v6 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v11 = 138412290;
      v12 = v7;
      _os_log_error_impl(&dword_22506F000, v6, OS_LOG_TYPE_ERROR, "Failed to report telemetry with error: %@", &v11, 0xCu);
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v4);
    }

    v8 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v10 = *(a1 + 40);
      v11 = 138412290;
      v12 = v10;
      _os_log_debug_impl(&dword_22506F000, v8, OS_LOG_TYPE_DEBUG, "Successfully reported telemetry: %@", &v11, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_225193F14(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v2 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    *buf = 138543362;
    v12 = v5;
    _os_log_impl(&dword_22506F000, v2, OS_LOG_TYPE_INFO, "Connection from client %{public}@ is now active", buf, 0xCu);
  }

  v6 = objc_msgSend_containerAvailableQueue(*(a1 + 40), v3, v4);
  objc_msgSend_setSuspended_(v6, v7, 0);

  v8 = dispatch_get_global_queue(17, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_225194074;
  block[3] = &unk_278545A00;
  block[4] = *(a1 + 40);
  dispatch_async(v8, block);

  v9 = *MEMORY[0x277D85DE8];
}

void sub_225194074(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend_processScopedClientProxy(*(a1 + 32), a2, a3);
  objc_msgSend_noteSystemIsAvailable(v5, v3, v4);
}

void sub_22519425C(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend_processScopedClientProxy(*(a1 + 32), a2, a3);
  objc_msgSend_handleSignificantIssue_actions_(v5, v4, *(a1 + 40), 4);
}

void sub_225194420(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22519443C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = objc_msgSend_processScopedClientProxy(WeakRetained, v3, v4);
  IsAttached = objc_msgSend_processIsAttached(v5, v6, v7);

  if (IsAttached)
  {
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v15 = 0;
    v12 = objc_msgSend_containerProxyFromSetupInfo_containerScopedClientProxy_outError_(WeakRetained, v9, v10, v11, &v15);
    v13 = v15;
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  v14 = *(a1 + 48);
  if (v14)
  {
    (*(v14 + 16))(v14, v12, v13);
  }
}

void sub_2251945C4(uint64_t a1, const char *a2)
{
  v6 = objc_msgSend_deviceContextForTestDeviceReference_(CKDLogicalDeviceContext, a2, *(a1 + 32));
  v5 = objc_msgSend_deviceScopedStateManager(v6, v3, v4);
  (*(*(a1 + 40) + 16))();
}

void sub_2251946E8(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = objc_msgSend_sharedManager(CKDProcessScopedStateManager, a2, a3);
  (*(v3 + 16))(v3, v4);
}

void sub_225194800(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = objc_msgSend_adopterProcessScopedStateManager(*(a1 + 32), a2, a3);
  (*(v3 + 16))(v3, v4);
}

void sub_22519494C(uint64_t a1)
{
  v4 = NSClassFromString(&cfstr_Cloudkittestin.isa);
  if (!v4)
  {
    v5 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v2, v3);
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[CKDXPCConnection getDaemonTestServerManagerProxyCreatorWithCompletionHandler:]_block_invoke");
    objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v5, v8, v7, @"CKDXPCConnection.m", 534, @"Couldn't find CKDTestServerManager in test process");
  }

  v9 = objc_msgSend_sharedManager(v4, v2, v3);
  (*(*(a1 + 32) + 16))();
}

id sub_225194D4C(void *a1, int a2, void *a3)
{
  v7 = a3;
  if (a1)
  {
    v8 = objc_msgSend_xpcConnection(a1, v5, v6);
    v10 = v8;
    if (v8)
    {
      if (a2)
      {
        objc_msgSend_synchronousRemoteObjectProxyWithErrorHandler_(v8, v9, v7);
      }

      else
      {
        objc_msgSend_remoteObjectProxyWithErrorHandler_(v8, v9, v7);
      }
      v14 = ;
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v11 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        *v16 = 0;
        _os_log_error_impl(&dword_22506F000, v11, OS_LOG_TYPE_ERROR, "Couldn't get connection to client", v16, 2u);
      }

      v13 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v12, *MEMORY[0x277CBBF50], 1, @"Couldn't get connection to client");
      if (v7)
      {
        v7[2](v7, v13);
      }

      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

uint64_t sub_2251953EC()
{
  v0 = [CKDXPCConnectionManager alloc];
  qword_280D58188 = objc_msgSend_initInternal(v0, v1, v2);

  return MEMORY[0x2821F96F8]();
}

void sub_225195790(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_sharedConnectionManager(CKDXPCConnectionManager, a2, a3);
  objc_msgSend__dumpStatusReportToFileHandle_(v4, v3, 0);
}

void sub_2251957DC(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_sharedConnectionManager(CKDXPCConnectionManager, a2, a3);
  objc_msgSend_statusReportWithCompletionHandler_(v4, v3, 0);
}

_DWORD *sub_225195828(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) == 1)
  {
    return 0;
  }

  v3 = objc_autoreleasePoolPush();
  v6 = objc_msgSend_sharedConnectionManager(CKDXPCConnectionManager, v4, v5);
  v9 = objc_msgSend_CKStatusReportArray(v6, v7, v8);
  v11 = sub_2254044B4(v9, v10);

  objc_autoreleasePoolPop(v3);
  return v11;
}

void sub_225195ED0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location, os_activity_scope_state_s state)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

void sub_225195F2C(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v2 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    v4 = 138412290;
    v5 = WeakRetained;
    _os_log_impl(&dword_22506F000, v2, OS_LOG_TYPE_INFO, "Connection to client %@ was interrupted", &v4, 0xCu);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void sub_22519600C(uint64_t a1, const char *a2, uint64_t a3)
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_sharedConnectionManager(CKDXPCConnectionManager, a2, a3);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v6 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v43 = WeakRetained;
    _os_log_impl(&dword_22506F000, v6, OS_LOG_TYPE_INFO, "Connection to client %@ was invalidated", buf, 0xCu);
  }

  v7 = MEMORY[0x277CCA8C8];
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = sub_2251962F0;
  v39[3] = &unk_278545898;
  v8 = WeakRetained;
  v40 = v8;
  v9 = v4;
  v41 = v9;
  v11 = objc_msgSend_blockOperationWithBlock_(v7, v10, v39);
  v14 = objc_msgSend_processScopedClientProxy(v8, v12, v13);
  v17 = objc_msgSend_processBinaryName(v14, v15, v16);
  objc_msgSend_setName_(v11, v18, v17);

  v21 = objc_msgSend_tearDownOperations(v9, v19, v20);
  objc_sync_enter(v21);
  v24 = objc_msgSend_tearDownOperations(v9, v22, v23);
  objc_msgSend_addObject_(v24, v25, v11);

  objc_sync_exit(v21);
  objc_initWeak(buf, v11);
  v33 = MEMORY[0x277D85DD0];
  v34 = 3221225472;
  v35 = sub_225196444;
  v36 = &unk_2785483B8;
  v26 = v9;
  v37 = v26;
  objc_copyWeak(&v38, buf);
  objc_msgSend_setCompletionBlock_(v11, v27, &v33);
  v30 = objc_msgSend_clientConnectionQueue(v26, v28, v29, v33, v34, v35, v36);
  objc_msgSend_addOperation_(v30, v31, v11);

  objc_destroyWeak(&v38);
  objc_destroyWeak(buf);

  v32 = *MEMORY[0x277D85DE8];
}

void sub_2251962B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2251962F0(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v3 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v15 = 138412290;
    v16 = v6;
    _os_log_impl(&dword_22506F000, v3, OS_LOG_TYPE_INFO, "Client %@ has gone away", &v15, 0xCu);
  }

  objc_msgSend_invalidate(*(a1 + 32), v4, v5);
  objc_autoreleasePoolPop(v2);
  v9 = objc_msgSend_clientConnections(*(a1 + 40), v7, v8);
  objc_sync_enter(v9);
  v12 = objc_msgSend_clientConnections(*(a1 + 40), v10, v11);
  objc_msgSend_removeObject_(v12, v13, *(a1 + 32));

  objc_sync_exit(v9);
  v14 = *MEMORY[0x277D85DE8];
}

void sub_225196444(uint64_t a1, const char *a2, uint64_t a3)
{
  obj = objc_msgSend_tearDownOperations(*(a1 + 32), a2, a3);
  objc_sync_enter(obj);
  v6 = objc_msgSend_tearDownOperations(*(a1 + 32), v4, v5);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  objc_msgSend_removeObject_(v6, v8, WeakRetained);

  objc_sync_exit(obj);
}

uint64_t sub_225196BAC(uint64_t a1, void *a2, BOOL *a3)
{
  result = objc_msgSend_cachedEnvironment(a2, a2, a3);
  *(*(*(a1 + 32) + 8) + 24) = result;
  *a3 = *(*(*(a1 + 32) + 8) + 24) != -1;
  return result;
}

void sub_225197CD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_225197CF8(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = a2;
  if (v11)
  {
    v5 = objc_alloc(MEMORY[0x277D24440]);
    v7 = objc_msgSend_initWithSource_(v5, v6, v11);
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    objc_msgSend_setFlags_(*(*(*(a1 + 40) + 8) + 40), v10, 391);
  }

  else
  {
    NSLog(&cfstr_CouldnTOpenOsL.isa, a3);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_225197EC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_225197EE0(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = a2;
  if (v11)
  {
    v5 = objc_alloc(MEMORY[0x277D24420]);
    v7 = objc_msgSend_initWithLiveSource_(v5, v6, v11);
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    objc_msgSend_setFlags_(*(*(*(a1 + 40) + 8) + 40), v10, 391);
  }

  else
  {
    NSLog(&cfstr_CouldnTOpenOsL_0.isa, a3);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_22519865C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, id location)
{
  objc_destroyWeak((v38 + 40));
  objc_destroyWeak((v39 + 32));
  objc_destroyWeak((v41 + 32));
  objc_destroyWeak((v40 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2251986E4(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_autoreleasePoolPush();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = objc_msgSend_streamObservers(WeakRetained, v6, v7, 0);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v16, v20, 16);
  if (v10)
  {
    v12 = v10;
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v8);
        }

        objc_msgSend__handleEvent_(*(*(&v16 + 1) + 8 * v14++), v11, v3);
      }

      while (v12 != v14);
      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v16, v20, 16);
    }

    while (v12);
  }

  objc_autoreleasePoolPop(v5);
  v15 = *MEMORY[0x277D85DE8];
}

void sub_225198810(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_autoreleasePoolPush();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = objc_msgSend_streamObservers(WeakRetained, v6, v7, 0);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v16, v20, 16);
  if (v10)
  {
    v12 = v10;
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v8);
        }

        objc_msgSend__handleEvent_(*(*(&v16 + 1) + 8 * v14++), v11, v3);
      }

      while (v12 != v14);
      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v16, v20, 16);
    }

    while (v12);
  }

  objc_autoreleasePoolPop(v5);
  v15 = *MEMORY[0x277D85DE8];
}

void sub_22519893C(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = objc_msgSend_streamObservers(WeakRetained, v4, v5, 0);
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v22, v26, 16);
  if (v8)
  {
    v11 = v8;
    v12 = *v23;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v6);
        }

        objc_msgSend_finish(*(*(&v22 + 1) + 8 * i), v9, v10);
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v22, v26, 16);
    }

    while (v11);
  }

  if ((a2 & 0xFFFFFFFFFFFFFFFELL) == 4)
  {
    v16 = 0;
  }

  else
  {
    v16 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v14, @"IMadeUpThisErrorDomain", a2, 0);
  }

  v17 = objc_msgSend_completionHandler(WeakRetained, v14, v15);

  if (v17)
  {
    v20 = objc_msgSend_completionHandler(WeakRetained, v18, v19);
    (v20)[2](v20, v16);
  }

  v21 = *MEMORY[0x277D85DE8];
}

void sub_225198ABC(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = objc_msgSend_liveStream(WeakRetained, v4, v5);

  if (v6 && (a2 & 0xFFFFFFFFFFFFFFFELL) == 4)
  {
    v9 = objc_msgSend_liveStream(WeakRetained, v7, v8);
    objc_msgSend_activate(v9, v10, v11);
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

id sub_225198CA8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v10 = MEMORY[0x277CCACA8];
  v11 = a4;
  v12 = [v10 alloc];
  v14 = objc_msgSend_initWithFormat_arguments_(v12, v13, v11, &a9);

  if (v14)
  {
    v22 = *MEMORY[0x277CCA450];
    v23[0] = v14;
    v16 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v15, v23, &v22, 1);
  }

  else
  {
    v16 = 0;
  }

  v17 = objc_opt_class();
  v19 = objc_msgSend_errorWithDomain_code_userInfo_(v17, v18, @"CKLogDomain", a3, v16);

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

id sub_225198DB8(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = objc_opt_new();
  objc_msgSend_setDateFormat_(v4, v5, v3);

  objc_msgSend_setLenient_(v4, v6, 1);
  v9 = objc_msgSend_systemTimeZone(MEMORY[0x277CBEBB0], v7, v8);
  objc_msgSend_setTimeZone_(v4, v10, v9);

  v13 = objc_msgSend_currentLocale(MEMORY[0x277CBEAF8], v11, v12);
  objc_msgSend_setLocale_(v4, v14, v13);

  return v4;
}

id sub_225198E64(uint64_t a1, uint64_t a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_225199004;
  block[3] = &unk_278545AD0;
  block[4] = a1;
  if (qword_280D581A0 != -1)
  {
    dispatch_once(&qword_280D581A0, block);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = qword_280D58198;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v16, v21, 16);
  if (v7)
  {
    v9 = v7;
    v10 = *v17;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v12 = objc_msgSend_dateFromString_(*(*(&v16 + 1) + 8 * i), v8, v4, v16);
        if (v12)
        {
          v13 = v12;
          goto LABEL_13;
        }
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v16, v21, 16);
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_13:

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

void sub_225199004(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = qword_280D58198;
  qword_280D58198 = v2;

  for (i = 0; i != 5; ++i)
  {
    for (j = 0; j != 5; ++j)
    {
      v6 = objc_opt_new();
      objc_msgSend_setDateStyle_(v6, v7, i);
      objc_msgSend_setTimeStyle_(v6, v8, j);
      objc_msgSend_setLenient_(v6, v9, 1);
      v12 = objc_msgSend_systemTimeZone(MEMORY[0x277CBEBB0], v10, v11);
      objc_msgSend_setTimeZone_(v6, v13, v12);

      v16 = objc_msgSend_currentLocale(MEMORY[0x277CBEAF8], v14, v15);
      objc_msgSend_setLocale_(v6, v17, v16);

      objc_msgSend_addObject_(qword_280D58198, v18, v6);
    }
  }

  v20 = qword_280D58198;
  v21 = objc_msgSend_ck_dateFormatterWithString_(*(a1 + 32), v19, @"yyyy-MM-dd HH:mm");
  objc_msgSend_addObject_(v20, v22, v21);

  v23 = qword_280D58198;
  v25 = objc_msgSend_ck_dateFormatterWithString_(*(a1 + 32), v24, @"yyyy-MM-dd HH:mm:ss");
  objc_msgSend_addObject_(v23, v26, v25);

  v27 = qword_280D58198;
  v29 = objc_msgSend_ck_dateFormatterWithString_(*(a1 + 32), v28, @"HH:mm");
  objc_msgSend_addObject_(v27, v30, v29);

  v31 = qword_280D58198;
  v33 = objc_msgSend_ck_dateFormatterWithString_(*(a1 + 32), v32, @"HH:mm:ss");
  objc_msgSend_addObject_(v31, v34, v33);

  v35 = qword_280D58198;
  v37 = objc_msgSend_ck_dateFormatterWithString_(*(a1 + 32), v36, @"yyyy-MM-dd HH:mm ZZZ");
  objc_msgSend_addObject_(v35, v38, v37);

  v39 = qword_280D58198;
  v41 = objc_msgSend_ck_dateFormatterWithString_(*(a1 + 32), v40, @"yyyy-MM-dd HH:mm:ss ZZZ");
  objc_msgSend_addObject_(v39, v42, v41);

  v43 = qword_280D58198;
  v45 = objc_msgSend_ck_dateFormatterWithString_(*(a1 + 32), v44, @"yyyy-MM-dd HH:mm:ss.SSSSSSZZZ");
  objc_msgSend_addObject_(v43, v46, v45);

  v47 = qword_280D58198;
  v49 = objc_msgSend_ck_dateFormatterWithString_(*(a1 + 32), v48, @"HH:mm ZZZ");
  objc_msgSend_addObject_(v47, v50, v49);

  v51 = qword_280D58198;
  v54 = objc_msgSend_ck_dateFormatterWithString_(*(a1 + 32), v52, @"HH:mm:ss ZZZ");
  objc_msgSend_addObject_(v51, v53, v54);
}

void sub_2251992AC(void *a1, const char *a2, void *a3)
{
  v5 = objc_msgSend_dataUsingEncoding_(a3, a2, 4);
  objc_msgSend_writeData_(a1, v4, v5);
}

void sub_225199308(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v8 = objc_msgSend_description(a1, v5, v6);
  objc_msgSend_CKWriteString_(v4, v7, v8);
}

void sub_22519936C(void *a1, uint64_t a2, void *a3, int a4)
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = sub_225199564();
  objc_msgSend_writeData_(v6, v8, v7);

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v11 = objc_msgSend_allKeys(a1, v9, v10, 0);
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v33, v37, 16);
  if (v13)
  {
    v14 = v13;
    v15 = *v34;
    do
    {
      v16 = 0;
      do
      {
        if (*v34 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v33 + 1) + 8 * v16);
        v18 = objc_autoreleasePoolPush();
        v19 = sub_2251995B8();
        objc_msgSend_writeData_(v6, v20, v19);

        sub_22519960C(a4 + 1, v6);
        objc_msgSend__CKLogToFileHandle_atDepth_(v17, v21, v6, (a4 + 1));
        v22 = sub_225199878();
        objc_msgSend_writeData_(v6, v23, v22);

        v25 = objc_msgSend_objectForKeyedSubscript_(a1, v24, v17);
        objc_msgSend__CKLogToFileHandle_atDepth_(v25, v26, v6, (a4 + 1));

        objc_autoreleasePoolPop(v18);
        ++v16;
      }

      while (v14 != v16);
      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v27, &v33, v37, 16);
    }

    while (v14);
  }

  v28 = sub_2251995B8();
  objc_msgSend_writeData_(v6, v29, v28);

  sub_22519960C(a4, v6);
  v30 = sub_2251998CC();
  objc_msgSend_writeData_(v6, v31, v30);

  v32 = *MEMORY[0x277D85DE8];
}

id sub_225199564()
{
  if (qword_280D581D0 != -1)
  {
    dispatch_once(&qword_280D581D0, &unk_28385CFA0);
  }

  v1 = qword_280D581C8;

  return v1;
}

id sub_2251995B8()
{
  if (qword_280D581E0 != -1)
  {
    dispatch_once(&qword_280D581E0, &unk_28385CFC0);
  }

  v1 = qword_280D581D8;

  return v1;
}

void sub_22519960C(int a1, void *a2)
{
  v3 = a2;
  v14 = v3;
  if (a1 <= 3)
  {
    if (a1 <= 1)
    {
      if (!a1)
      {
        goto LABEL_31;
      }

      if (a1 == 1)
      {
        v5 = sub_22519D104();
        goto LABEL_11;
      }

LABEL_34:
      v8 = sub_22519D158();
      objc_msgSend_writeData_(v14, v9, v8);

      if (a1 >= 9)
      {
        v10 = a1 - 8;
        do
        {
          v11 = sub_22519D104();
          objc_msgSend_writeData_(v14, v12, v11);

          --v10;
        }

        while (v10);
      }

      goto LABEL_31;
    }

    if (a1 == 2)
    {
      if (qword_280D58200 != -1)
      {
        dispatch_once(&qword_280D58200, &unk_28385D000);
        v3 = v14;
      }

      objc_msgSend_writeData_(v3, v4, qword_280D581F8);
    }

    else
    {
      if (qword_280D58210 != -1)
      {
        dispatch_once(&qword_280D58210, &unk_28385D020);
        v3 = v14;
      }

      objc_msgSend_writeData_(v3, v4, qword_280D58208);
    }
  }

  else if (a1 <= 5)
  {
    if (a1 == 4)
    {
      if (qword_280D58220 != -1)
      {
        dispatch_once(&qword_280D58220, &unk_28385D040);
        v3 = v14;
      }

      objc_msgSend_writeData_(v3, v4, qword_280D58218);
    }

    else
    {
      if (qword_280D58230 != -1)
      {
        dispatch_once(&qword_280D58230, &unk_28385D060);
        v3 = v14;
      }

      objc_msgSend_writeData_(v3, v4, qword_280D58228);
    }
  }

  else
  {
    if (a1 != 6)
    {
      if (a1 == 7)
      {
        if (qword_280D58250 == -1)
        {
          objc_msgSend_writeData_(v3, v4, qword_280D58248);
        }

        else
        {
          dispatch_once(&qword_280D58250, &unk_28385D0A0);
          objc_msgSend_writeData_(v14, v13, qword_280D58248);
        }

        goto LABEL_31;
      }

      if (a1 == 8)
      {
        v5 = sub_22519D158();
LABEL_11:
        v7 = v5;
        objc_msgSend_writeData_(v14, v6, v5);

        goto LABEL_31;
      }

      goto LABEL_34;
    }

    if (qword_280D58240 != -1)
    {
      dispatch_once(&qword_280D58240, &unk_28385D080);
      v3 = v14;
    }

    objc_msgSend_writeData_(v3, v4, qword_280D58238);
  }

LABEL_31:
}

id sub_225199878()
{
  if (qword_280D58270 != -1)
  {
    dispatch_once(&qword_280D58270, &unk_28385D0E0);
  }

  v1 = qword_280D58268;

  return v1;
}

id sub_2251998CC()
{
  if (qword_280D58280 != -1)
  {
    dispatch_once(&qword_280D58280, &unk_28385D100);
  }

  v1 = qword_280D58278;

  return v1;
}

void sub_225199920(void *a1, uint64_t a2, void *a3, int a4)
{
  v41 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = sub_225199CCC();
  objc_msgSend_writeData_(v6, v8, v7);

  v9 = sub_2251995B8();
  objc_msgSend_writeData_(v6, v10, v9);

  sub_22519960C(a4 + 1, v6);
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v11 = a1;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v36, v40, 16);
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    v16 = *v37;
    do
    {
      v17 = 0;
      v35 = v15;
      v18 = v15 + 1;
      do
      {
        if (*v37 != v16)
        {
          objc_enumerationMutation(v11);
        }

        v19 = *(*(&v36 + 1) + 8 * v17);
        v20 = objc_autoreleasePoolPush();
        objc_msgSend__CKLogToFileHandle_atDepth_(v19, v21, v6, (a4 + 1));
        if (v18 < objc_msgSend_count(v11, v22, v23))
        {
          v24 = sub_225199D20();
          objc_msgSend_writeData_(v6, v25, v24);

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            goto LABEL_10;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            goto LABEL_10;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            goto LABEL_10;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    objc_opt_class();
                    if ((objc_opt_isKindOfClass() & 1) == 0)
                    {
                      objc_opt_class();
                      if ((objc_opt_isKindOfClass() & 1) == 0)
                      {
                        objc_opt_class();
                        if ((objc_opt_isKindOfClass() & 1) == 0)
                        {
                          objc_opt_class();
                          if ((objc_opt_isKindOfClass() & 1) == 0)
                          {
                            objc_opt_class();
                            if ((objc_opt_isKindOfClass() & 1) == 0)
                            {
                              objc_opt_class();
                              if ((objc_opt_isKindOfClass() & 1) == 0)
                              {
LABEL_10:
                                v26 = sub_2251995B8();
                                objc_msgSend_writeData_(v6, v27, v26);

                                sub_22519960C(a4 + 1, v6);
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }

        objc_autoreleasePoolPop(v20);
        ++v17;
        ++v18;
      }

      while (v14 != v17);
      v15 = v14 + v35;
      v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v28, &v36, v40, 16);
      v14 = v29;
    }

    while (v29);
  }

  v30 = sub_2251995B8();
  objc_msgSend_writeData_(v6, v31, v30);

  sub_22519960C(a4, v6);
  v32 = sub_225199D74();
  objc_msgSend_writeData_(v6, v33, v32);

  v34 = *MEMORY[0x277D85DE8];
}

id sub_225199CCC()
{
  if (qword_280D58290 != -1)
  {
    dispatch_once(&qword_280D58290, &unk_28385D120);
  }

  v1 = qword_280D58288;

  return v1;
}

id sub_225199D20()
{
  if (qword_280D582A0 != -1)
  {
    dispatch_once(&qword_280D582A0, &unk_28385D140);
  }

  v1 = qword_280D58298;

  return v1;
}

id sub_225199D74()
{
  if (qword_280D582B0 != -1)
  {
    dispatch_once(&qword_280D582B0, &unk_28385D160);
  }

  v1 = qword_280D582A8;

  return v1;
}

void sub_225199DD8(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (qword_280D582C0 != -1)
  {
    dispatch_once(&qword_280D582C0, &unk_28385D180);
  }

  objc_msgSend_writeData_(v5, v4, qword_280D582B8);
  v6 = NSPageSize();
  v9 = objc_msgSend_length(a1, v7, v8);
  if (v9)
  {
    v11 = v9;
    v12 = 0;
    v13 = v9;
    do
    {
      v14 = v13 - v6;
      v15 = a1;
      objc_msgSend_bytes(v15, v16, v17);
      v18 = CKHexCharFromBytes();
      v19 = objc_alloc(MEMORY[0x277CBEA90]);
      v21 = objc_msgSend_initWithBytesNoCopy_length_freeWhenDone_(v19, v20, v18, 0, 1);
      objc_msgSend_writeData_(v5, v22, v21);
      v12 += v6;

      v13 = v14;
    }

    while (v12 < v11);
  }

  if (qword_280D582D0 != -1)
  {
    dispatch_once(&qword_280D582D0, &unk_28385D1A0);
  }

  objc_msgSend_writeData_(v5, v10, qword_280D582C8);
}

id sub_225199F30()
{
  if (qword_280D581B0 != -1)
  {
    dispatch_once(&qword_280D581B0, &unk_28385CF60);
  }

  v1 = qword_280D581A8;

  return v1;
}

uint64_t sub_225199F84(uint64_t a1, const char *a2, uint64_t a3)
{
  qword_280D581A8 = objc_msgSend_currentCalendar(MEMORY[0x277CBEA80], a2, a3);

  return MEMORY[0x2821F96F8]();
}

void sub_225199FC4(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = a3;
  if (qword_280D581C0 != -1)
  {
    dispatch_once(&qword_280D581C0, &unk_28385CF80);
  }

  v5 = *MEMORY[0x277CBC990];
  v6 = objc_msgSend_objectForKey_(qword_280D581B8, v4, *MEMORY[0x277CBC990]);
  if (!v6)
  {
    v6 = objc_alloc_init(MEMORY[0x277CCA968]);
    objc_msgSend_setDateFormat_(v6, v7, @"yyyy-MM-dd HH:mm:ss ZZZ");
    objc_msgSend_setObject_forKey_(qword_280D581B8, v8, v6, v5);
  }

  v9 = objc_autoreleasePoolPush();
  v11 = objc_msgSend_stringFromDate_(v6, v10, a1);
  objc_msgSend_CKWriteString_(v13, v12, v11);

  objc_autoreleasePoolPop(v9);
}

uint64_t sub_22519A0C4()
{
  qword_280D581B8 = objc_alloc_init(MEMORY[0x277CBEA78]);

  return MEMORY[0x2821F96F8]();
}

void sub_22519A100(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v8 = objc_msgSend_stringValue(a1, v5, v6);
  objc_msgSend_CKWriteString_(v4, v7, v8);
}

uint64_t sub_22519A164(void *a1, int a2, Ivar v)
{
  Name = ivar_getName(v);
  TypeEncoding = ivar_getTypeEncoding(v);
  if (strncmp(Name, "_has", 4uLL) && *TypeEncoding != 123)
  {
    v8 = MEMORY[0x277CCACA8];
    v9 = __toupper(Name[1]);
    v11 = objc_msgSend_stringWithFormat_(v8, v10, @"has%c%s", v9, Name + 2);
    v12 = NSSelectorFromString(v11);
    if (objc_opt_respondsToSelector())
    {
      v13 = objc_opt_class();
      MethodImplementation = class_getMethodImplementation(v13, v12);
      if (MethodImplementation)
      {
        v7 = (MethodImplementation)(a1, v12);
LABEL_16:

        return v7;
      }

LABEL_10:
      v7 = 0;
      goto LABEL_16;
    }

    v15 = object_getIvar(a1, v);
    if (!v15)
    {
      goto LABEL_10;
    }

    v16 = v15;
    if (objc_opt_respondsToSelector())
    {
      v19 = objc_msgSend_count(v16, v17, v18);
    }

    else
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        v7 = 1;
        goto LABEL_15;
      }

      v19 = objc_msgSend_length(v16, v20, v21);
    }

    v7 = v19 != 0;
LABEL_15:

    goto LABEL_16;
  }

  return 0;
}

void sub_22519A2C4(char *a1, uint64_t a2, void *a3, int a4)
{
  v96 = a4;
  v98 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  objc_msgSend_CKWriteString_(v5, v8, v7);

  v9 = sub_22519AA58();
  objc_msgSend_writeData_(v5, v10, v9);

  v11 = sub_225199564();
  objc_msgSend_writeData_(v5, v12, v11);

  outCount = 0;
  v13 = objc_opt_class();
  v14 = class_copyIvarList(v13, &outCount);
  v15 = 8 * outCount;
  v16 = (v95 - ((v15 + 15) & 0xFFFFFFFF0));
  if (v15 >= 0x200)
  {
    v17 = 512;
  }

  else
  {
    v17 = 8 * outCount;
  }

  bzero(v95 - ((v15 + 15) & 0xFFFFFFFF0), v17);
  if (!outCount)
  {
    goto LABEL_71;
  }

  v19 = 0;
  v20 = 0;
  do
  {
    v21 = v14[v19];
    if (objc_msgSend__CKHasIvar_(a1, v18, v21))
    {
      v16[v20++] = v21;
    }

    ++v19;
  }

  while (v19 < outCount);
  if (!v20)
  {
LABEL_71:
    v88 = sub_2251998CC();
    objc_msgSend_writeData_(v5, v89, v88);

    free(v14);
    goto LABEL_72;
  }

  v95[1] = v95;
  v22 = v20;
  do
  {
    v23 = objc_autoreleasePoolPush();
    v24 = sub_2251995B8();
    objc_msgSend_writeData_(v5, v25, v24);

    sub_22519960C(v96 + 1, v5);
    v26 = *v16;
    v27 = ivar_getName(*v16) + 1;
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, v27);
    objc_msgSend_CKWriteString_(v5, v30, v29);

    v31 = sub_225199878();
    objc_msgSend_writeData_(v5, v32, v31);

    v34 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v33, @"_%sCKLogValue", v27);
    v35 = NSSelectorFromString(v34);
    if (objc_opt_respondsToSelector())
    {
      v36 = objc_opt_class();
      MethodImplementation = class_getMethodImplementation(v36, v35);
      if (MethodImplementation)
      {
        v39 = (MethodImplementation)(a1, v35);
        if (v39)
        {
          goto LABEL_56;
        }
      }
    }

    v40 = *ivar_getTypeEncoding(v26);
    if (v40 > 0x52)
    {
      if (v40 > 104)
      {
        if (v40 > 112)
        {
          if (v40 == 113)
          {
            v82 = MEMORY[0x277CCABB0];
            Offset = ivar_getOffset(v26);
            v44 = objc_msgSend_numberWithLongLong_(v82, v84, *&a1[Offset]);
          }

          else
          {
            if (v40 != 115)
            {
              goto LABEL_57;
            }

            v61 = MEMORY[0x277CCABB0];
            v62 = ivar_getOffset(v26);
            v44 = objc_msgSend_numberWithShort_(v61, v63, *&a1[v62]);
          }
        }

        else if (v40 == 105)
        {
          v75 = MEMORY[0x277CCABB0];
          v76 = ivar_getOffset(v26);
          v44 = objc_msgSend_numberWithInt_(v75, v77, *&a1[v76]);
        }

        else
        {
          if (v40 != 108)
          {
            goto LABEL_57;
          }

          v48 = MEMORY[0x277CCABB0];
          v49 = ivar_getOffset(v26);
          v44 = objc_msgSend_numberWithLong_(v48, v50, *&a1[v49]);
        }
      }

      else if (v40 > 99)
      {
        if (v40 == 100)
        {
          v78 = MEMORY[0x277CCABB0];
          v79 = ivar_getOffset(v26);
          v44 = objc_msgSend_numberWithDouble_(v78, v80, v81, *&a1[v79]);
        }

        else
        {
          if (v40 != 102)
          {
            goto LABEL_57;
          }

          v57 = MEMORY[0x277CCABB0];
          LODWORD(v58) = *&a1[ivar_getOffset(v26)];
          v44 = objc_msgSend_numberWithFloat_(v57, v59, v60, v58);
        }
      }

      else if (v40 == 83)
      {
        v72 = MEMORY[0x277CCABB0];
        v73 = ivar_getOffset(v26);
        v44 = objc_msgSend_numberWithUnsignedShort_(v72, v74, *&a1[v73]);
      }

      else
      {
        if (v40 != 99)
        {
          goto LABEL_57;
        }

        v41 = MEMORY[0x277CCABB0];
        v42 = ivar_getOffset(v26);
        v44 = objc_msgSend_numberWithChar_(v41, v43, a1[v42]);
      }

LABEL_55:
      v39 = v44;
      if (!v44)
      {
        goto LABEL_57;
      }

LABEL_56:
      objc_msgSend__CKLogToFileHandle_atDepth_(v39, v38, v5, (v96 + 1));

      goto LABEL_57;
    }

    if (v40 > 66)
    {
      if (v40 > 75)
      {
        if (v40 == 76)
        {
          v67 = MEMORY[0x277CCABB0];
          v68 = ivar_getOffset(v26);
          v44 = objc_msgSend_numberWithUnsignedLong_(v67, v69, *&a1[v68]);
        }

        else
        {
          if (v40 != 81)
          {
            goto LABEL_57;
          }

          v54 = MEMORY[0x277CCABB0];
          v55 = ivar_getOffset(v26);
          v44 = objc_msgSend_numberWithUnsignedLongLong_(v54, v56, *&a1[v55]);
        }
      }

      else if (v40 == 67)
      {
        v64 = MEMORY[0x277CCABB0];
        v65 = ivar_getOffset(v26);
        v44 = objc_msgSend_numberWithUnsignedChar_(v64, v66, a1[v65]);
      }

      else
      {
        if (v40 != 73)
        {
          goto LABEL_57;
        }

        v45 = MEMORY[0x277CCABB0];
        v46 = ivar_getOffset(v26);
        v44 = objc_msgSend_numberWithUnsignedInt_(v45, v47, *&a1[v46]);
      }

      goto LABEL_55;
    }

    if (v40 == 42)
    {
      v85 = MEMORY[0x277CCACA8];
      v86 = ivar_getOffset(v26);
      v44 = objc_msgSend_stringWithUTF8String_(v85, v87, &a1[v86]);
      goto LABEL_55;
    }

    if (v40 != 64)
    {
      if (v40 != 66)
      {
        goto LABEL_57;
      }

      v51 = MEMORY[0x277CCABB0];
      v52 = ivar_getOffset(v26);
      v44 = objc_msgSend_numberWithBool_(v51, v53, a1[v52]);
      goto LABEL_55;
    }

    v70 = object_getIvar(a1, v26);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_47;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_47;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_47;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_70;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_70;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_70;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
LABEL_70:
      v39 = v70;
    }

    else
    {
LABEL_47:
      objc_msgSend__CKLogToFileHandle_atDepth_(v70, v71, v5, (v96 + 1));
      v39 = 0;
    }

    if (v39)
    {
      goto LABEL_56;
    }

LABEL_57:

    objc_autoreleasePoolPop(v23);
    ++v16;
    --v22;
  }

  while (v22);
  free(v14);
  v90 = sub_2251995B8();
  objc_msgSend_writeData_(v5, v91, v90);

  sub_22519960C(v96, v5);
  v92 = sub_2251998CC();
  objc_msgSend_writeData_(v5, v93, v92);

LABEL_72:
  v94 = *MEMORY[0x277D85DE8];
}

id sub_22519AA58()
{
  if (qword_280D582E0 != -1)
  {
    dispatch_once(&qword_280D582E0, &unk_28385D1C0);
  }

  v1 = qword_280D582D8;

  return v1;
}

id sub_22519AF58()
{
  if (qword_280D582F0 != -1)
  {
    dispatch_once(&qword_280D582F0, &unk_28385D1E0);
  }

  v1 = qword_280D582E8;

  return v1;
}

id sub_22519AFAC()
{
  if (qword_280D58300 != -1)
  {
    dispatch_once(&qword_280D58300, &unk_28385D200);
  }

  v1 = qword_280D582F8;

  return v1;
}

id sub_22519B000()
{
  if (qword_280D58310 != -1)
  {
    dispatch_once(&qword_280D58310, &unk_28385D220);
  }

  v1 = qword_280D58308;

  return v1;
}

void sub_22519B144(void *a1, uint64_t a2, void *a3)
{
  v24 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = sub_22519B000();
  objc_msgSend_writeData_(v24, v6, v5);

  v9 = objc_msgSend_name(a1, v7, v8);
  objc_msgSend_CKWriteString_(v24, v10, v9);

  v11 = sub_22519B000();
  objc_msgSend_writeData_(v24, v12, v11);

  v13 = sub_22519AA58();
  objc_msgSend_writeData_(v24, v14, v13);

  v15 = sub_22519AF58();
  objc_msgSend_writeData_(v24, v16, v15);

  v19 = objc_msgSend_type(a1, v17, v18);
  if ((v19 - 1) >= 8)
  {
    v21 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v20, @"(unknown: %i)", v19);
  }

  else
  {
    v21 = *(&off_278548558 + (v19 - 1));
  }

  objc_msgSend_CKWriteString_(v24, v20, v21);

  v22 = sub_22519AFAC();
  objc_msgSend_writeData_(v24, v23, v22);

  objc_autoreleasePoolPop(v4);
}

void sub_22519B2A4(void *a1, uint64_t a2, void *a3, int a4)
{
  v21 = a3;
  v6 = objc_autoreleasePoolPush();
  if (objc_msgSend_hasValue(a1, v7, v8))
  {
    v11 = objc_msgSend_value(a1, v9, v10);
    objc_msgSend__CKLogToFileHandle_atDepth_(v11, v12, v21, (a4 + 1));
  }

  v13 = sub_22519B378();
  objc_msgSend_writeData_(v21, v14, v13);

  if (objc_msgSend_hasZoneIdentifier(a1, v15, v16))
  {
    v19 = objc_msgSend_zoneIdentifier(a1, v17, v18);
    objc_msgSend__CKLogToFileHandle_atDepth_(v19, v20, v21, (a4 + 1));
  }

  objc_autoreleasePoolPop(v6);
}

id sub_22519B378()
{
  if (qword_280D58330 != -1)
  {
    dispatch_once(&qword_280D58330, &unk_28385D260);
  }

  v1 = qword_280D58328;

  return v1;
}

void sub_22519B3CC(void *a1, uint64_t a2, void *a3, int a4)
{
  v29 = a3;
  v6 = objc_autoreleasePoolPush();
  if (objc_msgSend_hasValue(a1, v7, v8))
  {
    v11 = objc_msgSend_value(a1, v9, v10);
    objc_msgSend__CKLogToFileHandle_atDepth_(v11, v12, v29, (a4 + 1));
  }

  v13 = sub_22519B378();
  objc_msgSend_writeData_(v29, v14, v13);

  if (objc_msgSend_hasOwnerIdentifier(a1, v15, v16))
  {
    v19 = objc_msgSend_ownerIdentifier(a1, v17, v18);
    objc_msgSend__CKLogToFileHandle_atDepth_(v19, v20, v29, (a4 + 1));
  }

  if (objc_msgSend_hasDatabaseType(a1, v17, v18))
  {
    v21 = sub_22519B378();
    objc_msgSend_writeData_(v29, v22, v21);

    v25 = objc_msgSend_databaseType(a1, v23, v24) - 1;
    if (v25 <= 3)
    {
      v26 = qword_225447D28[v25];
    }

    v27 = CKDatabaseScopeString();
    objc_msgSend__CKLogToFileHandle_atDepth_(v27, v28, v29, (a4 + 1));
  }

  objc_autoreleasePoolPop(v6);
}

void sub_22519BACC(void *a1, uint64_t a2, void *a3, int a4)
{
  v6 = MEMORY[0x277CBEAA8];
  v7 = a3;
  objc_msgSend_time(a1, v8, v9);
  v12 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(v6, v10, v11);
  objc_msgSend__CKLogToFileHandle_atDepth_(v12, v13, v7, (a4 + 1));

  v14 = sub_22519AA58();
  objc_msgSend_writeData_(v7, v15, v14);

  v16 = sub_22519AF58();
  objc_msgSend_writeData_(v7, v17, v16);

  v18 = MEMORY[0x277CCABB0];
  objc_msgSend_time(a1, v19, v20);
  v23 = objc_msgSend_numberWithDouble_(v18, v21, v22);
  objc_msgSend__CKLogToFileHandle_atDepth_(v23, v24, v7, (a4 + 1));

  v26 = sub_22519AFAC();
  objc_msgSend_writeData_(v7, v25, v26);
}

uint64_t sub_22519D07C(uint64_t a1, const char *a2)
{
  qword_280D581C8 = objc_msgSend_dataUsingEncoding_(@"{ ", a2, 4);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_22519D0C0(uint64_t a1, const char *a2)
{
  qword_280D581D8 = objc_msgSend_dataUsingEncoding_(@"\n", a2, 4);

  return MEMORY[0x2821F96F8]();
}

id sub_22519D104()
{
  if (qword_280D581F0 != -1)
  {
    dispatch_once(&qword_280D581F0, &unk_28385CFE0);
  }

  v1 = qword_280D581E8;

  return v1;
}

id sub_22519D158()
{
  if (qword_280D58260 != -1)
  {
    dispatch_once(&qword_280D58260, &unk_28385D0C0);
  }

  v1 = qword_280D58258;

  return v1;
}

uint64_t sub_22519D1AC(uint64_t a1, const char *a2)
{
  qword_280D581E8 = objc_msgSend_dataUsingEncoding_(@"  ", a2, 4);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_22519D1F0(uint64_t a1, const char *a2)
{
  qword_280D581F8 = objc_msgSend_dataUsingEncoding_(@"    ", a2, 4);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_22519D234(uint64_t a1, const char *a2)
{
  qword_280D58208 = objc_msgSend_dataUsingEncoding_(@"      ", a2, 4);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_22519D278(uint64_t a1, const char *a2)
{
  qword_280D58218 = objc_msgSend_dataUsingEncoding_(@"        ", a2, 4);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_22519D2BC(uint64_t a1, const char *a2)
{
  qword_280D58228 = objc_msgSend_dataUsingEncoding_(@"          ", a2, 4);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_22519D300(uint64_t a1, const char *a2)
{
  qword_280D58238 = objc_msgSend_dataUsingEncoding_(@"            ", a2, 4);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_22519D344(uint64_t a1, const char *a2)
{
  qword_280D58248 = objc_msgSend_dataUsingEncoding_(@"              ", a2, 4);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_22519D388(uint64_t a1, const char *a2)
{
  qword_280D58258 = objc_msgSend_dataUsingEncoding_(@"                ", a2, 4);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_22519D3CC(uint64_t a1, const char *a2)
{
  qword_280D58268 = objc_msgSend_dataUsingEncoding_(@" = ", a2, 4);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_22519D410(uint64_t a1, const char *a2)
{
  qword_280D58278 = objc_msgSend_dataUsingEncoding_(@" }", a2, 4);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_22519D454(uint64_t a1, const char *a2)
{
  qword_280D58288 = objc_msgSend_dataUsingEncoding_(@"[ ", a2, 4);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_22519D498(uint64_t a1, const char *a2)
{
  qword_280D58298 = objc_msgSend_dataUsingEncoding_(@", ", a2, 4);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_22519D4DC(uint64_t a1, const char *a2)
{
  qword_280D582A8 = objc_msgSend_dataUsingEncoding_(@" ]", a2, 4);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_22519D520(uint64_t a1, const char *a2)
{
  qword_280D582B8 = objc_msgSend_dataUsingEncoding_(@"<", a2, 4);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_22519D564(uint64_t a1, const char *a2)
{
  qword_280D582C8 = objc_msgSend_dataUsingEncoding_(@">", a2, 4);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_22519D5A8(uint64_t a1, const char *a2)
{
  qword_280D582D8 = objc_msgSend_dataUsingEncoding_(@" ", a2, 4);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_22519D5EC(uint64_t a1, const char *a2)
{
  qword_280D582E8 = objc_msgSend_dataUsingEncoding_(@"("), a2, 4;

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_22519D630(uint64_t a1, const char *a2)
{
  qword_280D582F8 = objc_msgSend_dataUsingEncoding_(@""), a2, 4);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_22519D674(uint64_t a1, const char *a2)
{
  qword_280D58308 = objc_msgSend_dataUsingEncoding_(@"", a2, 4);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_22519D6B8(uint64_t a1, const char *a2)
{
  qword_280D58318 = objc_msgSend_dataUsingEncoding_(@": ", a2, 4);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_22519D6FC(uint64_t a1, const char *a2)
{
  qword_280D58328 = objc_msgSend_dataUsingEncoding_(@"|", a2, 4);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_22519D740(uint64_t a1, const char *a2)
{
  qword_280D58338 = objc_msgSend_dataUsingEncoding_(@"[", a2, 4);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_22519D784(uint64_t a1, const char *a2)
{
  qword_280D58348 = objc_msgSend_dataUsingEncoding_(@",", a2, 4);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_22519D7C8(uint64_t a1, const char *a2)
{
  qword_280D58358 = objc_msgSend_dataUsingEncoding_(@"]", a2, 4);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_22519DDF4(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v8 = objc_msgSend_size(v4, v6, v7);
  if (v8 <= objc_msgSend_size(v5, v9, v10))
  {
    v14 = objc_msgSend_size(v4, v11, v12);
    v13 = v14 < objc_msgSend_size(v5, v15, v16);
  }

  else
  {
    v13 = -1;
  }

  return v13;
}

uint64_t sub_22519DE78(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v8 = objc_msgSend_count(v4, v6, v7);
  if (v8 <= objc_msgSend_count(v5, v9, v10))
  {
    v14 = objc_msgSend_count(v4, v11, v12);
    v13 = v14 < objc_msgSend_count(v5, v15, v16);
  }

  else
  {
    v13 = -1;
  }

  return v13;
}

void sub_22519F2A4(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CCACA8]);
  v10 = objc_msgSend_substringFromIndex_(*(a1 + 32), v3, 12);
  v5 = objc_msgSend_initWithFormat_(v2, v4, @"%@", v10);
  v6 = v5;
  v9 = objc_msgSend_UTF8String(v6, v7, v8);
  printf("%s", v9);
}

void sub_22519F334(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CCACA8]);
  v8 = objc_msgSend_initWithFormat_(v2, v3, @"\n%@", *(a1 + 32));
  v4 = v8;
  v7 = objc_msgSend_UTF8String(v8, v5, v6);
  puts(v7);
}

void sub_22519FE88(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(a1 + 32);
  v7 = a4;
  objc_msgSend_addObject_(v5, v6, a2);
  v7[2]();
}

void sub_22519FEEC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(a1 + 32);
  v7 = a4;
  objc_msgSend_addObject_(v5, v6, a2);
  v7[2]();
}

void sub_22519FF50(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(a1 + 32);
  v7 = a4;
  objc_msgSend_addObject_(v5, v6, a2);
  v7[2]();
}

void sub_22519FFB4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    NSLog(&cfstr_CloudkitlogPar_7.isa, a2);
  }

  v3 = *(a1 + 32);

  dispatch_group_leave(v3);
}

void sub_2251A0004(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    NSLog(&cfstr_CloudkitlogPar_8.isa, a2);
  }

  v3 = *(a1 + 32);

  dispatch_group_leave(v3);
}

void sub_2251A009C()
{
  v0 = objc_alloc(MEMORY[0x277CCACA8]);
  v6 = objc_msgSend_initWithFormat_(v0, v1, @"Finished");
  v2 = v6;
  v5 = objc_msgSend_UTF8String(v6, v3, v4);
  puts(v5);
}

void sub_2251A03FC(uint64_t a1, void *a2)
{
  v198[3] = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v6 = objc_msgSend_uuid(v2, v4, v5);
  v8 = objc_msgSend_initWithFormat_(v3, v7, @"Traffic log for request %@", v6);
  v9 = v8;
  v12 = objc_msgSend_UTF8String(v9, v10, v11);
  puts(v12);

  v15 = objc_msgSend_requestTime(v2, v13, v14);
  if (v15)
  {
  }

  else
  {
    v20 = objc_msgSend_responseTime(v2, v16, v17);

    if (!v20)
    {
      goto LABEL_16;
    }
  }

  v21 = objc_msgSend_requestTime(v2, v18, v19);
  v24 = v21;
  if (v21)
  {
    v25 = v21;
  }

  else
  {
    v26 = objc_msgSend_responseTime(v2, v22, v23);
    v25 = objc_msgSend_dateByAddingTimeInterval_(v26, v27, v28, -900.0);
  }

  v31 = objc_msgSend_responseTime(v2, v29, v30);
  v34 = v31;
  if (v31)
  {
    v35 = v31;
  }

  else
  {
    v36 = objc_msgSend_requestTime(v2, v32, v33);
    v35 = objc_msgSend_dateByAddingTimeInterval_(v36, v37, v38, 900.0);
  }

  v39 = MEMORY[0x277CCACA8];
  v187 = v25;
  v42 = objc_msgSend_dateByAddingTimeInterval_(v25, v40, v41, -300.0);
  objc_msgSend_timeIntervalSince1970(v42, v43, v44);
  v47 = objc_msgSend_stringWithFormat_(v39, v45, @"%lf", v46);

  v48 = MEMORY[0x277CCACA8];
  v186 = v35;
  v51 = objc_msgSend_dateByAddingTimeInterval_(v35, v49, v50, 300.0);
  objc_msgSend_timeIntervalSince1970(v51, v52, v53);
  v56 = objc_msgSend_stringWithFormat_(v48, v54, @"%lf", v55);

  v57 = objc_opt_new();
  objc_msgSend_setScheme_(v57, v58, @"https");
  v61 = objc_msgSend_responseHeaders(v2, v59, v60);
  v63 = objc_msgSend_CKObjectForKeyCaseInsensitive_(v61, v62, 0x28387C7A0);
  hasPrefix = objc_msgSend_hasPrefix_(v63, v64, @"ICLOUD");

  if (hasPrefix)
  {
    objc_msgSend_setHost_(v57, v66, @"splunk-qa.icloud.apple.com");
  }

  else
  {
    objc_msgSend_setHost_(v57, v66, @"splunk.icloud.apple.com");
  }

  objc_msgSend_setPath_(v57, v67, @"/en-US/app/launcher/search");
  v69 = objc_msgSend_queryItemWithName_value_(MEMORY[0x277CCAD18], v68, @"earliest", v47);
  v198[0] = v69;
  v71 = objc_msgSend_queryItemWithName_value_(MEMORY[0x277CCAD18], v70, @"latest", v56);
  v198[1] = v71;
  v72 = MEMORY[0x277CCAD18];
  v73 = MEMORY[0x277CCACA8];
  v76 = objc_msgSend_uuid(v2, v74, v75);
  v78 = objc_msgSend_stringWithFormat_(v73, v77, @"search index=ck* %@", v76);
  v80 = objc_msgSend_queryItemWithName_value_(v72, v79, @"q", v78);
  v198[2] = v80;
  v82 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v81, v198, 3);
  objc_msgSend_setQueryItems_(v57, v83, v82);

  v86 = objc_msgSend_URL(v57, v84, v85);
  v89 = v86;
  if (v86)
  {
    v90 = objc_msgSend_absoluteString(v86, v87, v88);
    v92 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v90, v91, @"*", @"%2A");
    v93 = objc_alloc(MEMORY[0x277CCACA8]);
    v95 = objc_msgSend_initWithFormat_(v93, v94, @"%@", v92);
    v96 = v95;
    v99 = objc_msgSend_UTF8String(v96, v97, v98);
    puts(v99);
  }

LABEL_16:
  v100 = objc_msgSend_fileHandleWithStandardOutput(MEMORY[0x277CCA9F8], v18, v19);
  v101 = objc_alloc(MEMORY[0x277CCACA8]);
  v103 = objc_msgSend_initWithFormat_(v101, v102, @">>>>>>>> Request");
  v104 = v103;
  v107 = objc_msgSend_UTF8String(v104, v105, v106);
  puts(v107);

  v110 = objc_msgSend_requestTime(v2, v108, v109);
  objc_msgSend_CKLogToFileHandle_(v110, v111, v100);

  v112 = MEMORY[0x277CCACA8];
  v115 = objc_msgSend_requestMethod(v2, v113, v114);
  v118 = objc_msgSend_requestURL(v2, v116, v117);
  v120 = objc_msgSend_stringWithFormat_(v112, v119, @"%@ %@", v115, v118);
  objc_msgSend_CKLogToFileHandle_(v120, v121, v100);

  v124 = objc_msgSend_requestHeaders(v2, v122, v123);
  sub_2251A0B50(v124, v100);

  if (objc_msgSend_bodyStreamResetCount(v2, v125, v126) >= 1)
  {
    v129 = MEMORY[0x277CCACA8];
    v130 = objc_msgSend_bodyStreamResetCount(v2, v127, v128);
    v133 = objc_msgSend_bodyStreamResetCount(v2, v131, v132);
    v135 = @"s";
    if (v133 == 1)
    {
      v135 = &stru_28385ED00;
    }

    v136 = objc_msgSend_stringWithFormat_(v129, v134, @"\n=>=>=>=>=>Body stream was reset %li time%@. This was what was streamed the final time:", v130, v135);
    objc_msgSend_CKLogToFileHandle_(v136, v137, v100);
  }

  v194 = 0u;
  v195 = 0u;
  v192 = 0u;
  v193 = 0u;
  v138 = objc_msgSend_requestObjects(v2, v127, v128);
  v140 = objc_msgSend_countByEnumeratingWithState_objects_count_(v138, v139, &v192, v197, 16);
  if (v140)
  {
    v142 = v140;
    v143 = *v193;
    do
    {
      for (i = 0; i != v142; ++i)
      {
        if (*v193 != v143)
        {
          objc_enumerationMutation(v138);
        }

        objc_msgSend_CKLogToFileHandle_(*(*(&v192 + 1) + 8 * i), v141, v100);
      }

      v142 = objc_msgSend_countByEnumeratingWithState_objects_count_(v138, v141, &v192, v197, 16);
    }

    while (v142);
  }

  v145 = objc_alloc(MEMORY[0x277CCACA8]);
  v147 = objc_msgSend_initWithFormat_(v145, v146, @"\n<<<<<<<< Response");
  v148 = v147;
  v151 = objc_msgSend_UTF8String(v148, v149, v150);
  puts(v151);

  v154 = objc_msgSend_responseTime(v2, v152, v153);
  objc_msgSend_CKLogToFileHandle_(v154, v155, v100);

  v156 = MEMORY[0x277CCACA8];
  v159 = objc_msgSend_responseStatus(v2, v157, v158);
  v161 = objc_msgSend_stringWithFormat_(v156, v160, @"Status %lu", v159);
  objc_msgSend_CKLogToFileHandle_(v161, v162, v100);

  v165 = objc_msgSend_responseHeaders(v2, v163, v164);
  sub_2251A0B50(v165, v100);

  v190 = 0u;
  v191 = 0u;
  v188 = 0u;
  v189 = 0u;
  v168 = objc_msgSend_responseObjects(v2, v166, v167);
  v170 = objc_msgSend_countByEnumeratingWithState_objects_count_(v168, v169, &v188, v196, 16);
  if (v170)
  {
    v172 = v170;
    v173 = *v189;
    do
    {
      for (j = 0; j != v172; ++j)
      {
        if (*v189 != v173)
        {
          objc_enumerationMutation(v168);
        }

        objc_msgSend_CKLogToFileHandle_(*(*(&v188 + 1) + 8 * j), v171, v100);
      }

      v172 = objc_msgSend_countByEnumeratingWithState_objects_count_(v168, v171, &v188, v196, 16);
    }

    while (v172);
  }

  v175 = objc_alloc(MEMORY[0x277CCACA8]);
  v178 = objc_msgSend_uuid(v2, v176, v177);
  v180 = objc_msgSend_initWithFormat_(v175, v179, @"End traffic log for operation %@\n\n", v178);
  v181 = v180;
  v184 = objc_msgSend_UTF8String(v181, v182, v183);
  puts(v184);

  v185 = *MEMORY[0x277D85DE8];
}

void sub_2251A0B50(void *a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = objc_msgSend_allKeys(v3, v5, v6);
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v21, v25, 16);
  if (v8)
  {
    v10 = v8;
    v11 = *v22;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        v14 = MEMORY[0x277CCACA8];
        v15 = objc_msgSend_objectForKeyedSubscript_(v3, v9, v13);
        v17 = objc_msgSend_stringWithFormat_(v14, v16, @"%@: %@", v13, v15);
        objc_msgSend_CKLogToFileHandle_(v17, v18, v4);
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v21, v25, 16);
    }

    while (v10);
  }

  v19 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2251A1078(void *a1, uint64_t a2, void *a3, void *a4)
{
  buf[3] = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (objc_msgSend_needsEncryption(a1, v7, v8))
  {
    v11 = objc_msgSend_copy(v6, v9, v10);
    v14 = objc_msgSend_mergeableValueID(v11, v12, v13);

    if (!v14)
    {
      v17 = objc_msgSend_valueID(a1, v15, v16);
      objc_msgSend_setMergeableValueID_(v11, v18, v17);
    }

    v19 = objc_msgSend_metadata(a1, v15, v16);
    v22 = objc_msgSend_envelope(v19, v20, v21);

    if (v22)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v25 = *MEMORY[0x277CBC840];
      if (os_log_type_enabled(*MEMORY[0x277CBC840], OS_LOG_TYPE_DEBUG))
      {
        v50 = v25;
        v53 = objc_msgSend_deltaID(a1, v51, v52);
        LODWORD(buf[0]) = 138412290;
        *(buf + 4) = v53;
        _os_log_debug_impl(&dword_22506F000, v50, OS_LOG_TYPE_DEBUG, "Throwing away cached envelope for %@", buf, 0xCu);
      }

      v28 = objc_msgSend_metadata(a1, v26, v27);
      objc_msgSend_setEnvelope_(v28, v29, 0);
    }

    v30 = objc_msgSend_metadata(a1, v23, v24);
    v32 = objc_msgSend__encryptWithContext_error_(v30, v31, v11, a4);

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_2251A1438;
    aBlock[3] = &unk_278545AD0;
    aBlock[4] = v32;
    v35 = _Block_copy(aBlock);
    if (v32)
    {
      v36 = objc_msgSend_asset(a1, v33, v34);
      v37 = v36 == 0;

      if (!v37)
      {
LABEL_12:
        v39 = 1;
LABEL_24:
        v35[2](v35);

        goto LABEL_25;
      }

      buf[0] = 0;
      v54 = 0;
      v40 = objc_msgSend_dataWithError_(a1, v38, &v54);
      v43 = v54;
      if (v40)
      {
        objc_msgSend_shareProtection(v11, v41, v42);
        objc_msgSend_dataUsingEncoding_(@"payload", v44, 4);
        v46 = PCSKeyEnvelopeEncrypt();
        if (v46)
        {
          objc_msgSend_setEncryptedData_(a1, v45, v46);

          goto LABEL_12;
        }

        if (a4)
        {
          v47 = buf[0];
          *a4 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v45, *MEMORY[0x277CBC120], 1000, buf[0], @"Failed to encrypt delta payload");
        }
      }

      else
      {
        if (a4)
        {
          *a4 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v41, *MEMORY[0x277CBC120], 2003, v43, @"Mergeable delta encryption failed, missing delta payload");
        }
      }
    }

    v39 = 0;
    goto LABEL_24;
  }

  v39 = 1;
LABEL_25:

  v48 = *MEMORY[0x277D85DE8];
  return v39;
}

void sub_2251A1438(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t sub_2251A1448(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v9 = objc_msgSend_copy(v6, v7, v8);
  v12 = objc_msgSend_mergeableValueID(v9, v10, v11);

  if (!v12)
  {
    v15 = objc_msgSend_valueID(a1, v13, v14);
    objc_msgSend_setMergeableValueID_(v9, v16, v15);
  }

  v17 = objc_msgSend_metadata(a1, v13, v14);
  v20 = objc_msgSend_needsDecryption(v17, v18, v19);

  if (v20)
  {
    v23 = objc_msgSend_metadata(a1, v21, v22);
    v25 = objc_msgSend__decryptWithContext_error_(v23, v24, v9, a4);
  }

  else
  {
    v25 = 0;
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_2251A1720;
  aBlock[3] = &unk_278545AD0;
  aBlock[4] = v25;
  v26 = _Block_copy(aBlock);
  if (objc_msgSend_needsDecryption(a1, v27, v28))
  {
    if (v25)
    {
      v31 = objc_msgSend_asset(a1, v29, v30);

      if (v31)
      {
        v34 = objc_msgSend_shareProtection(v6, v32, v33);
        v37 = objc_msgSend_pcsManager(v6, v35, v36);
        v39 = objc_msgSend_unwrapAssetKeyWithShareProtection_pcsManager_error_(a1, v38, v34, v37, a4);

        if ((v39 & 1) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_14;
      }

      v42 = objc_msgSend_encryptedData(a1, v32, v33);
      if (v42)
      {
        objc_msgSend_shareProtection(v9, v40, v41);
        objc_msgSend_dataUsingEncoding_(@"payload", v43, 4);
        v45 = PCSKeyEnvelopeDecrypt();
        if (!v45)
        {
          if (a4)
          {
            *a4 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v44, *MEMORY[0x277CBC120], 5004, 0, @"Failed to decrypt mergeable delta payload");
          }

          goto LABEL_20;
        }

        objc_msgSend_set_data_(a1, v44, v45);
        objc_msgSend_setEncryptedData_(a1, v46, 0);

        goto LABEL_14;
      }

      if (a4)
      {
        objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v40, *MEMORY[0x277CBC120], 2003, @"Mergeable delta decryption failed, encrypted payload missing");
        *a4 = v47 = 0;
        goto LABEL_21;
      }
    }

LABEL_20:
    v47 = 0;
    goto LABEL_21;
  }

LABEL_14:
  v47 = 1;
LABEL_21:
  v26[2](v26);

  return v47;
}

void sub_2251A1720(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }
}

BOOL sub_2251A1730(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v8 = a4;
  v11 = objc_msgSend_asset(a1, v9, v10);
  v14 = objc_msgSend_valueID(a1, v12, v13);
  v17 = objc_msgSend_recordID(v14, v15, v16);

  if (v17)
  {
    v20 = objc_msgSend_valueID(a1, v18, v19);
    v23 = objc_msgSend_key(v20, v21, v22);

    if (v23)
    {
      if (v11)
      {
        v25 = [CKDWrappingContext alloc];
        v28 = objc_msgSend_valueID(a1, v26, v27);
        v31 = objc_msgSend_recordID(v28, v29, v30);
        objc_msgSend_valueID(a1, v32, v33);
        v34 = v60 = v8;
        v37 = objc_msgSend_key(v34, v35, v36);
        v40 = objc_msgSend_deltaID(a1, v38, v39);
        v43 = objc_msgSend_signature(v11, v41, v42);
        objc_msgSend_referenceSignature(v11, v44, v45);
        v46 = v59 = a3;
        v48 = objc_msgSend_initWithRecordID_fieldName_mergeableDeltaID_fileSignature_referenceSignature_(v25, v47, v31, v37, v40, v43, v46);

        v8 = v60;
        v51 = objc_msgSend_wrappedAssetKey(v11, v49, v50);
        v61 = 0;
        v53 = objc_msgSend_unwrapAssetKey_withRecordPCS_inContext_withError_(v60, v52, v51, v59, v48, &v61);
        v54 = v61;

        if (v53)
        {
          objc_msgSend_setAssetKey_(v11, v55, v53);
          v56 = 0;
        }

        else
        {
          v56 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v55, *MEMORY[0x277CBC120], 5004, v54, @"Failed to unwrap mergeable delta asset key");
        }
      }

      else
      {
        v56 = 0;
      }

      goto LABEL_12;
    }

    objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v24, *MEMORY[0x277CBC120], 1017, @"Can't unwrap asset key for mergeable delta with no field name");
  }

  else
  {
    objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v18, *MEMORY[0x277CBC120], 1017, @"Can't unwrap asset key for mergeable delta with no record ID");
  }
  v56 = ;
LABEL_12:
  if (a5)
  {
    v57 = v56;
    *a5 = v56;
  }

  return v56 == 0;
}

uint64_t sub_2251A19C4(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_valueID(a1, a2, a3);
  isEncrypted = objc_msgSend_isEncrypted(v3, v4, v5);

  return isEncrypted;
}

BOOL sub_2251A19FC(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_valueID(a1, a2, a3);
  isEncrypted = objc_msgSend_isEncrypted(v4, v5, v6);

  if (!isEncrypted)
  {
    return 0;
  }

  v10 = objc_msgSend_asset(a1, v8, v9);

  if (v10)
  {
    v13 = objc_msgSend_asset(a1, v11, v12);
    v16 = objc_msgSend_assetKey(v13, v14, v15);
    v17 = v16 == 0;
  }

  else
  {
    v13 = objc_msgSend_encryptedData(a1, v11, v12);
    v17 = v13 != 0;
  }

  return v17;
}

uint64_t sub_2251A1AF8(void *a1, uint64_t a2, void *a3, int a4, void *a5)
{
  v8 = a3;
  v11 = objc_msgSend_identifier(a1, v9, v10);
  v13 = objc_msgSend_envelopeContextWithIdentifier_error_(v8, v12, v11, a5);

  if (v13)
  {
    v18 = objc_msgSend_envelope(a1, v14, v15);
    if (v18)
    {
      objc_msgSend_shareProtection(v8, v16, v17);
      v19 = PCSKeyEnvelopeCreateWithValues();
      if (v19)
      {
        v21 = v19;
LABEL_17:

        goto LABEL_18;
      }

      if (a5)
      {
        objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v20, *MEMORY[0x277CBC120], 5004, 0, @"Failed to decrypt mergeable delta envelope");
        *a5 = LABEL_15:;
      }
    }

    else if (a4)
    {
      objc_msgSend_shareProtection(v8, v16, v17);
      v22 = PCSKeyEnvelopeCreate();
      if (v22)
      {
        v21 = v22;
        Envelope = PCSKeyEnvelopeGetEnvelope();
        objc_msgSend_setEnvelope_(a1, v25, Envelope);
        goto LABEL_17;
      }

      if (a5)
      {
        objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v23, *MEMORY[0x277CBC120], 1000, 0, @"Failed to create mergeable delta envelope");
        goto LABEL_15;
      }
    }

    else if (a5)
    {
      objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v16, *MEMORY[0x277CBC120], 2003, @"Mergeable delta envelope missing");
      *a5 = v21 = 0;
      goto LABEL_17;
    }

    v21 = 0;
    goto LABEL_17;
  }

  v21 = 0;
LABEL_18:

  return v21;
}

const void *sub_2251A1CA8(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v8 = objc_msgSend__envelopeWithContext_allowCreation_error_(a1, v7, v6, 1, a4);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_2251A1F28;
  aBlock[3] = &unk_278545AD0;
  aBlock[4] = v8;
  v11 = _Block_copy(aBlock);
  if (v8)
  {
    v12 = MEMORY[0x277CBC468];
    v13 = objc_msgSend_vectors(a1, v9, v10);
    v15 = objc_msgSend_pDistributedTimestampsFromDeltaMetadataVectors_(v12, v14, v13);

    v18 = objc_msgSend_data(v15, v16, v17);
    if (objc_msgSend_encryptMergeableValueMetadata(v6, v19, v20))
    {
      objc_msgSend_shareProtection(v6, v21, v22);
      objc_msgSend_dataUsingEncoding_(@"encryptedTimestamps", v23, 4);
      v25 = PCSKeyEnvelopeEncrypt();
      if (v25)
      {
        objc_msgSend_setEncryptedTimestamps_(a1, v24, v25);
LABEL_7:

        CFRetain(v8);
LABEL_14:

        goto LABEL_15;
      }

      if (a4)
      {
        v31 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v24, *MEMORY[0x277CBC120], 1000, 0, @"Failed to encrypt mergeable delta timestamps");
        goto LABEL_12;
      }
    }

    else
    {
      objc_msgSend_shareProtection(v6, v21, v22);
      v25 = PCSKeyEnvelopeAuthenticate();
      if (v25)
      {
        v27 = objc_alloc(MEMORY[0x277CBC7A0]);
        v29 = objc_msgSend_initWithObject1_object2_(v27, v28, v18, v25);
        objc_msgSend_setAuthenticatedTimestamps_(a1, v30, v29);

        goto LABEL_7;
      }

      if (a4)
      {
        v31 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v26, *MEMORY[0x277CBC120], 1000, 0, @"Failed to authenticate mergeable delta timestamps");
LABEL_12:
        *a4 = v31;
      }
    }

    v8 = 0;
    goto LABEL_14;
  }

LABEL_15:
  v11[2](v11);

  return v8;
}

void sub_2251A1F28(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }
}

BOOL sub_2251A1F38(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend__decryptWithContext_error_(a1, a2, a3);
  v4 = v3;
  if (v3)
  {
    CFRelease(v3);
  }

  return v4 != 0;
}

const void *sub_2251A1F70(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v8 = objc_msgSend__envelopeWithContext_allowCreation_error_(a1, v7, v6, 0, a4);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_2251A27A0;
  aBlock[3] = &unk_278545AD0;
  aBlock[4] = v8;
  v10 = _Block_copy(aBlock);
  if (v8)
  {
    v207 = objc_msgSend_standaloneTranslatorWithDatabaseScope_(CKDProtocolTranslator, v9, 2);
    v208 = objc_msgSend_authenticatedTimestamps(a1, v11, v12);
    if (!v208)
    {
      goto LABEL_13;
    }

    v210 = 0;
    objc_msgSend_shareProtection(v6, v13, v14);
    v17 = objc_msgSend_v2(v208, v15, v16);
    v20 = objc_msgSend_v1(v208, v18, v19);
    v21 = PCSKeyEnvelopeVerify();

    v209[0] = MEMORY[0x277D85DD0];
    v209[1] = 3221225472;
    v209[2] = sub_2251A27B0;
    v209[3] = &unk_278545AD0;
    v209[4] = v21;
    v23 = _Block_copy(v209);
    if (v21 && CFBooleanGetValue(v21))
    {
      v24 = objc_alloc(MEMORY[0x277CBC248]);
      v27 = objc_msgSend_v1(v208, v25, v26);
      v29 = objc_msgSend_initWithData_(v24, v28, v27);

      v205 = objc_msgSend_deltaMetadataVectorsFromPDistributedTimestamps_error_(v207, v30, v29, a4);
      if (v205)
      {
        v33 = objc_msgSend_vectors(a1, v31, v32);
        v36 = objc_msgSend_previous(v33, v34, v35);
        v203 = objc_msgSend_mutableCopy(v36, v37, v38);

        v41 = objc_msgSend_vectors(a1, v39, v40);
        v44 = objc_msgSend_contents(v41, v42, v43);
        v201 = objc_msgSend_mutableCopy(v44, v45, v46);

        v49 = objc_msgSend_vectors(a1, v47, v48);
        v52 = objc_msgSend_removals(v49, v50, v51);
        v199 = objc_msgSend_mutableCopy(v52, v53, v54);

        v57 = objc_msgSend_vectors(a1, v55, v56);
        v60 = objc_msgSend_dependencies(v57, v58, v59);
        v197 = objc_msgSend_mutableCopy(v60, v61, v62);

        v65 = objc_msgSend_backingVector(v203, v63, v64);
        v68 = objc_msgSend_previous(v205, v66, v67);
        v71 = objc_msgSend_backingVector(v68, v69, v70);
        objc_msgSend_addAllClockValuesFromVector_(v65, v72, v71);

        v75 = objc_msgSend_backingVector(v201, v73, v74);
        v78 = objc_msgSend_contents(v205, v76, v77);
        v81 = objc_msgSend_backingVector(v78, v79, v80);
        objc_msgSend_addAllClockValuesFromVector_(v75, v82, v81);

        v85 = objc_msgSend_backingVector(v199, v83, v84);
        v88 = objc_msgSend_removals(v205, v86, v87);
        v91 = objc_msgSend_backingVector(v88, v89, v90);
        objc_msgSend_addAllClockValuesFromVector_(v85, v92, v91);

        v95 = objc_msgSend_backingVector(v197, v93, v94);
        v98 = objc_msgSend_dependencies(v205, v96, v97);
        v101 = objc_msgSend_backingVector(v98, v99, v100);
        objc_msgSend_addAllClockValuesFromVector_(v95, v102, v101);

        v103 = objc_alloc(MEMORY[0x277CBC468]);
        v105 = objc_msgSend_initWithPreviousVector_contentsVector_removalsVector_dependenciesVector_(v103, v104, v203, v201, v199, v197);

        objc_msgSend_setVectors_(a1, v106, v105);
        v107 = 1;
      }

      else
      {
        v107 = 0;
      }
    }

    else
    {
      if (!a4)
      {
        v107 = 0;
        goto LABEL_12;
      }

      v29 = v210;
      objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v22, *MEMORY[0x277CBC120], 5004, v210, @"Failed to verify mergeable delta timestamps");
      *a4 = v107 = 0;
    }

LABEL_12:
    v23[2](v23);

    if ((v107 & 1) == 0)
    {
      v8 = 0;
LABEL_24:

      goto LABEL_25;
    }

LABEL_13:
    v110 = objc_msgSend_encryptedTimestamps(a1, v13, v14);
    if (v110)
    {
      v210 = 0;
      objc_msgSend_shareProtection(v6, v108, v109);
      objc_msgSend_dataUsingEncoding_(@"encryptedTimestamps", v111, 4);
      v113 = PCSKeyEnvelopeDecrypt();
      if (v113)
      {
        v114 = objc_alloc(MEMORY[0x277CBC248]);
        v116 = objc_msgSend_initWithData_(v114, v115, v113);
        v120 = objc_msgSend_deltaMetadataVectorsFromPDistributedTimestamps_error_(v207, v117, v116, a4);
        if (v120)
        {
          v121 = objc_msgSend_vectors(a1, v118, v119);
          v124 = objc_msgSend_previous(v121, v122, v123);
          v206 = objc_msgSend_mutableCopy(v124, v125, v126);

          v129 = objc_msgSend_vectors(a1, v127, v128);
          v132 = objc_msgSend_contents(v129, v130, v131);
          v204 = objc_msgSend_mutableCopy(v132, v133, v134);
          v198 = v116;

          v137 = objc_msgSend_vectors(a1, v135, v136);
          v140 = objc_msgSend_removals(v137, v138, v139);
          v202 = objc_msgSend_mutableCopy(v140, v141, v142);

          v145 = objc_msgSend_vectors(a1, v143, v144);
          v148 = objc_msgSend_dependencies(v145, v146, v147);
          v200 = objc_msgSend_mutableCopy(v148, v149, v150);

          v153 = objc_msgSend_backingVector(v206, v151, v152);
          v156 = objc_msgSend_previous(v120, v154, v155);
          v159 = objc_msgSend_backingVector(v156, v157, v158);
          objc_msgSend_addAllClockValuesFromVector_(v153, v160, v159);

          v163 = objc_msgSend_backingVector(v204, v161, v162);
          v166 = objc_msgSend_contents(v120, v164, v165);
          v169 = objc_msgSend_backingVector(v166, v167, v168);
          objc_msgSend_addAllClockValuesFromVector_(v163, v170, v169);

          v173 = objc_msgSend_backingVector(v202, v171, v172);
          v176 = objc_msgSend_removals(v120, v174, v175);
          v179 = objc_msgSend_backingVector(v176, v177, v178);
          objc_msgSend_addAllClockValuesFromVector_(v173, v180, v179);

          v183 = objc_msgSend_backingVector(v200, v181, v182);
          v186 = objc_msgSend_dependencies(v120, v184, v185);
          v189 = objc_msgSend_backingVector(v186, v187, v188);
          objc_msgSend_addAllClockValuesFromVector_(v183, v190, v189);

          v191 = objc_alloc(MEMORY[0x277CBC468]);
          v193 = objc_msgSend_initWithPreviousVector_contentsVector_removalsVector_dependenciesVector_(v191, v192, v206, v204, v202, v200);

          objc_msgSend_setVectors_(a1, v194, v193);
          goto LABEL_17;
        }
      }

      else if (a4)
      {
        v195 = v210;
        *a4 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v112, *MEMORY[0x277CBC120], 5004, v210, @"Failed to decrypt mergeable delta timestamps");
      }

      v8 = 0;
      goto LABEL_23;
    }

LABEL_17:
    CFRetain(v8);
LABEL_23:

    goto LABEL_24;
  }

LABEL_25:
  v10[2](v10);

  return v8;
}

void sub_2251A2724(_Unwind_Exception *a1)
{
  (*(v2 + 16))(v2);
  (*(v1 + 16))(v1);
  _Unwind_Resume(a1);
}

void sub_2251A27A0(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }
}

void sub_2251A27B0(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }
}

BOOL sub_2251A27C0(void *a1, const char *a2, uint64_t a3)
{
  v6 = objc_msgSend_encryptedTimestamps(a1, a2, a3);
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v8 = objc_msgSend_authenticatedTimestamps(a1, v4, v5);
    v7 = v8 == 0;
  }

  return v7;
}

BOOL sub_2251A2818(void *a1, const char *a2, uint64_t a3)
{
  v6 = objc_msgSend_encryptedTimestamps(a1, a2, a3);
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v8 = objc_msgSend_authenticatedTimestamps(a1, v4, v5);
    v7 = v8 != 0;
  }

  return v7;
}

void sub_2251A2A14(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_2251A2A30(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = objc_msgSend_infoFetchedGroup(WeakRetained, v2, v3);
  dispatch_group_leave(v4);
}

void sub_2251A2C0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, id a16)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a16);
  _Unwind_Resume(a1);
}

void sub_2251A2C44(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v6 = objc_msgSend_error(v3, v4, v5);

  if (v6)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v9 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v12 = v9;
      v15 = objc_msgSend_error(v3, v13, v14);
      v24 = 138412290;
      v25 = v15;
      _os_log_error_impl(&dword_22506F000, v12, OS_LOG_TYPE_ERROR, "Error fetching database URL from the server: %@", &v24, 0xCu);
LABEL_10:
    }
  }

  else
  {
    v16 = objc_msgSend_containerServerInfo(v3, v7, v8);
    objc_msgSend_setContainerServerInfo_(WeakRetained, v17, v16);

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v18 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v12 = v18;
      v15 = objc_msgSend_containerServerInfo(WeakRetained, v19, v20);
      v24 = 138412290;
      v25 = v15;
      _os_log_impl(&dword_22506F000, v12, OS_LOG_TYPE_INFO, "Fetched database URLS from the server: %@", &v24, 0xCu);
      goto LABEL_10;
    }
  }

  v21 = objc_msgSend_error(v3, v10, v11);
  objc_msgSend_finishWithError_(WeakRetained, v22, v21);

  v23 = *MEMORY[0x277D85DE8];
}

void sub_2251A3158(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_2251A3178(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = objc_msgSend_error(WeakRetained, v3, v4);

  if (v5)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v8 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v28 = v8;
      v31 = objc_msgSend_error(WeakRetained, v29, v30);
      v37 = 138412290;
      v38 = v31;
      _os_log_error_impl(&dword_22506F000, v28, OS_LOG_TYPE_ERROR, "Error fetching server certificates: %@", &v37, 0xCu);
    }

    v11 = objc_msgSend_error(WeakRetained, v9, v10);
    objc_msgSend_setError_(*(a1 + 32), v12, v11);
LABEL_13:

    goto LABEL_14;
  }

  v13 = objc_msgSend_validatedTrusts(WeakRetained, v6, v7);
  v16 = objc_msgSend_count(v13, v14, v15);

  if (v16)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v19 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v32 = *(a1 + 32);
      v33 = v19;
      v36 = objc_msgSend_validatedTrusts(v32, v34, v35);
      v37 = 138412290;
      v38 = v36;
      _os_log_debug_impl(&dword_22506F000, v33, OS_LOG_TYPE_DEBUG, "Fetched validated trusts: %@", &v37, 0xCu);
    }

    v20 = objc_alloc(MEMORY[0x277CBEA60]);
    v11 = objc_msgSend_validatedTrusts(WeakRetained, v21, v22);
    v24 = objc_msgSend_initWithArray_(v20, v23, v11);
    objc_msgSend_setValidatedTrusts_(*(a1 + 32), v25, v24);

    goto LABEL_13;
  }

LABEL_14:
  v26 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v17, v18);
  dispatch_group_leave(v26);

  v27 = *MEMORY[0x277D85DE8];
}

void sub_2251A39D0(uint64_t a1, void *a2, void *a3)
{
  v62 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v8 = a3;
  v9 = *(a1 + 32);
  if (v8)
  {
    objc_msgSend_setError_(v9, v6, v8);
LABEL_3:
    v10 = 0;
    goto LABEL_4;
  }

  v16 = objc_msgSend_type(v9, v6, v7);
  if (!v16)
  {
    v27 = objc_msgSend_container(*(a1 + 32), v17, v18);
    v30 = objc_msgSend_containerID(v27, v28, v29);
    v32 = objc_msgSend_transcodeServerPublicKeyURLs_(v5, v31, v30);

    if (v32)
    {
      v35 = objc_msgSend_transcodeServerHostname(*(a1 + 32), v33, v34);
      v10 = objc_msgSend_objectForKeyedSubscript_(v32, v36, v35);

      if (v10)
      {

        goto LABEL_15;
      }

      v55 = MEMORY[0x277CBC560];
      v56 = *MEMORY[0x277CBC120];
      v53 = objc_msgSend_transcodeServerHostname(*(a1 + 32), v37, v38);
      v58 = objc_msgSend_errorWithDomain_code_format_(v55, v57, v56, 2005, @"Could not find assetKeyEncryption URL for template URL %@", v53);
      objc_msgSend_setError_(*(a1 + 32), v59, v58);
    }

    else
    {
      v53 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v33, *MEMORY[0x277CBC120], 2005, @"Server configuration did not contain assetKeyEncryption URL info");
      objc_msgSend_setError_(*(a1 + 32), v54, v53);
    }

    goto LABEL_3;
  }

  if (v16 != 1)
  {
    goto LABEL_3;
  }

  v19 = objc_msgSend_container(*(a1 + 32), v17, v18);
  v22 = objc_msgSend_containerID(v19, v20, v21);
  v10 = objc_msgSend_cloudMediaProcessingPublicKeyURLString_(v5, v23, v22);

  if (!v10)
  {
    v25 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v24, *MEMORY[0x277CBC120], 2005, @"Server configuration did not contain CMP public key URL");
    objc_msgSend_setError_(*(a1 + 32), v26, v25);

    goto LABEL_3;
  }

LABEL_15:
  v39 = objc_msgSend_URLWithString_(MEMORY[0x277CBEBC0], v24, v10);
  if (v39)
  {
    v41 = v39;
    objc_msgSend_setTranscodeServerPublicKeyURL_(*(a1 + 32), v40, v39);
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v42 = *MEMORY[0x277CBC830];
    if (!os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_22;
    }

    v43 = *(a1 + 32);
    v44 = v42;
    v47 = objc_msgSend_transcodeServerPublicKeyURL(v43, v45, v46);
    *buf = 138543362;
    v61 = v47;
    _os_log_debug_impl(&dword_22506F000, v44, OS_LOG_TYPE_DEBUG, "Transcode server public key hosted at %{public}@", buf, 0xCu);

LABEL_21:
LABEL_22:

    goto LABEL_7;
  }

  v51 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v40, *MEMORY[0x277CBC120], 1005, @"Couldn't create URL from transcode server URL string: %@", v10);
  objc_msgSend_setError_(*(a1 + 32), v52, v51);

LABEL_4:
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v11 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
  {
    v48 = *(a1 + 32);
    v41 = v11;
    v44 = objc_msgSend_error(v48, v49, v50);
    *buf = 138412290;
    v61 = v44;
    _os_log_error_impl(&dword_22506F000, v41, OS_LOG_TYPE_ERROR, "Error getting transcode server public key URL: %@", buf, 0xCu);
    goto LABEL_21;
  }

LABEL_7:
  v14 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v12, v13);
  dispatch_group_leave(v14);

  v15 = *MEMORY[0x277D85DE8];
}

void sub_2251A436C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2251A4394(uint64_t a1)
{
  v49 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v3 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v38 = v3;
    v41 = objc_msgSend_verifiedPublicKey(WeakRetained, v39, v40);
    v44 = objc_msgSend_error(WeakRetained, v42, v43);
    v45 = 138412546;
    v46 = v41;
    v47 = 2112;
    v48 = v44;
    _os_log_debug_impl(&dword_22506F000, v38, OS_LOG_TYPE_DEBUG, "Fetched transcode server public key %@ with error %@", &v45, 0x16u);
  }

  v6 = objc_msgSend_error(WeakRetained, v4, v5);
  objc_msgSend_setError_(*(a1 + 32), v7, v6);

  v12 = objc_msgSend_error(WeakRetained, v8, v9);
  if (v12)
  {
    goto LABEL_8;
  }

  v13 = objc_msgSend_verifiedPublicKey(WeakRetained, v10, v11);
  hasExpired = objc_msgSend_hasExpired(v13, v14, v15);

  if ((hasExpired & 1) == 0)
  {
    v19 = objc_msgSend_verifiedPublicKey(WeakRetained, v17, v18);
    objc_msgSend_setTranscodeServerPublicKey_(*(a1 + 32), v20, v19);

    v12 = objc_msgSend_deviceContext(*(a1 + 32), v21, v22);
    v25 = objc_msgSend_metadataCache(v12, v23, v24);
    v28 = objc_msgSend_verifiedPublicKey(WeakRetained, v26, v27);
    v31 = objc_msgSend_transcodeServerPublicKeyURL(*(a1 + 32), v29, v30);
    v34 = objc_msgSend_absoluteString(v31, v32, v33);
    objc_msgSend_setPublicKey_ofType_withIdentifier_(v25, v35, v28, @"transcodeServerPublicKey", v34);

LABEL_8:
  }

  v36 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v17, v18);
  dispatch_group_leave(v36);

  v37 = *MEMORY[0x277D85DE8];
}

void sub_2251A4A3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v18 - 56));
  _Unwind_Resume(a1);
}

void sub_2251A4A6C(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v6 = objc_msgSend_error(v3, v4, v5);

  if (v6)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v9 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v25 = v9;
      v28 = objc_msgSend_error(v3, v26, v27);
      v29 = 138412290;
      v30 = v28;
      _os_log_error_impl(&dword_22506F000, v25, OS_LOG_TYPE_ERROR, "Error fetching configuration from the server: %@", &v29, 0xCu);
    }

    v12 = objc_msgSend_error(v3, v10, v11);
    objc_msgSend_finishWithError_(WeakRetained, v13, v12);
  }

  else
  {
    v14 = objc_msgSend_configuration(v3, v7, v8);

    if (v14)
    {
      v17 = objc_msgSend_configuration(v3, v15, v16);
      objc_msgSend_setConfiguration_(WeakRetained, v18, v17);

      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v19 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
      {
        v20 = v19;
        v23 = objc_msgSend_configuration(WeakRetained, v21, v22);
        v29 = 138412290;
        v30 = v23;
        _os_log_impl(&dword_22506F000, v20, OS_LOG_TYPE_INFO, "Fetched configuration from the server: %@", &v29, 0xCu);
      }
    }

    objc_msgSend_finishWithError_(WeakRetained, v15, 0);
  }

  v24 = *MEMORY[0x277D85DE8];
}

void sub_2251A5178(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 64));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_2251A51C0(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = objc_msgSend_anonymousShareSavedBlock(WeakRetained, v7, v8);

  if (v9)
  {
    v12 = objc_msgSend_anonymousShareSavedBlock(WeakRetained, v10, v11);
    (v12)[2](v12, v13, v5);
  }
}

void sub_2251A5268(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v5 = MEMORY[0x277CBC830];
  v6 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    LOWORD(v23) = 0;
    _os_log_impl(&dword_22506F000, v6, OS_LOG_TYPE_INFO, "Completed CKDAnonymousShareAddURLRequest", &v23, 2u);
  }

  v9 = objc_msgSend_error(v3, v7, v8);

  if (v9)
  {
    if (*v4 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v12 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_INFO))
    {
      v15 = v12;
      v18 = objc_msgSend_error(v3, v16, v17);
      v23 = 138412290;
      v24 = v18;
      _os_log_impl(&dword_22506F000, v15, OS_LOG_TYPE_INFO, "Error CKDAnonymousShareAddURLRequest: %@", &v23, 0xCu);
    }

    v19 = objc_msgSend_error(v3, v13, v14);
    objc_msgSend_setError_(WeakRetained, v20, v19);
  }

  v21 = objc_msgSend_stateTransitionGroup(WeakRetained, v10, v11);
  dispatch_group_leave(v21);

  v22 = *MEMORY[0x277D85DE8];
}

void sub_2251A5910(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 64));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_2251A5958(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = objc_msgSend_anonymousShareRemovedBlock(WeakRetained, v7, v8);

  if (v9)
  {
    v12 = objc_msgSend_anonymousShareRemovedBlock(WeakRetained, v10, v11);
    (v12)[2](v12, v13, v5);
  }
}

void sub_2251A5A00(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v5 = MEMORY[0x277CBC830];
  v6 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    LOWORD(v23) = 0;
    _os_log_impl(&dword_22506F000, v6, OS_LOG_TYPE_INFO, "Completed CKDAnonymousShareRemoveURLRequest", &v23, 2u);
  }

  v9 = objc_msgSend_error(v3, v7, v8);

  if (v9)
  {
    if (*v4 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v12 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_INFO))
    {
      v15 = v12;
      v18 = objc_msgSend_error(v3, v16, v17);
      v23 = 138412290;
      v24 = v18;
      _os_log_impl(&dword_22506F000, v15, OS_LOG_TYPE_INFO, "Error CKDAnonymousShareRemoveURLRequest: %@", &v23, 0xCu);
    }

    v19 = objc_msgSend_error(v3, v13, v14);
    objc_msgSend_setError_(WeakRetained, v20, v19);
  }

  v21 = objc_msgSend_stateTransitionGroup(WeakRetained, v10, v11);
  dispatch_group_leave(v21);

  v22 = *MEMORY[0x277D85DE8];
}

void sub_2251A5EA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v16 - 40));
  _Unwind_Resume(a1);
}

void sub_2251A5EE0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  v5 = objc_msgSend_error(v2, v3, v4);

  if (v5)
  {
    v8 = objc_msgSend_error(v2, v6, v7);
    objc_msgSend_finishWithError_(WeakRetained, v9, v8);
  }

  else
  {
    objc_msgSend_finishWithError_(WeakRetained, v6, 0);
  }
}

id sub_2251A6A64(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = a2;
  v6 = objc_msgSend_itemID(v3, v4, v5);
  objc_msgSend_progress(v3, v7, v8);
  v10 = v9;
  v13 = objc_msgSend_signature(v3, v11, v12);
  if (objc_msgSend_finished(v3, v14, v15))
  {
    objc_msgSend_stringWithFormat_(v2, v16, @"<CKDMMCSItem %p itemID: %lu, progress %0.2f, signature: %@ %@>", v3, v6, v10, v13, @"finished");
  }

  else
  {
    objc_msgSend_stringWithFormat_(v2, v16, @"<CKDMMCSItem %p itemID: %lu, progress %0.2f, signature: %@ %@>", v3, v6, v10, v13, &stru_28385ED00);
  }
  v17 = ;

  return v17;
}

id sub_2251A6B2C(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = a2;
  v6 = objc_msgSend_itemID(v3, v4, v5);
  objc_msgSend_progress(v3, v7, v8);
  v10 = v9;
  v13 = objc_msgSend_signature(v3, v11, v12);
  if (objc_msgSend_finished(v3, v14, v15))
  {
    objc_msgSend_stringWithFormat_(v2, v16, @"<CKDMMCSItem %p itemID: %lu, progress %0.2f, signature: %@ %@>", v3, v6, v10, v13, @"finished");
  }

  else
  {
    objc_msgSend_stringWithFormat_(v2, v16, @"<CKDMMCSItem %p itemID: %lu, progress %0.2f, signature: %@ %@>", v3, v6, v10, v13, &stru_28385ED00);
  }
  v17 = ;

  return v17;
}

void sub_2251A707C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_downloadPreparationBlock(*(a1 + 32), a2, a3);

  if (v4)
  {
    v7 = objc_msgSend_downloadPreparationBlock(*(a1 + 32), v5, v6);
    v7[2](v7, *(a1 + 40));
  }
}

void sub_2251A720C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_downloadProgressBlock(*(a1 + 32), a2, a3);

  if (v4)
  {
    v7 = objc_msgSend_downloadProgressBlock(*(a1 + 32), v5, v6);
    v7[2](v7, *(a1 + 40), *(a1 + 48));
  }
}

void sub_2251A7444(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_downloadCommandBlock(*(a1 + 32), a2, a3);

  if (v4)
  {
    v7 = objc_msgSend_downloadCommandBlock(*(a1 + 32), v5, v6);
    (*(v7 + 2))(v7, *(a1 + 40), *(a1 + 48));
  }
}

void sub_2251A75F0(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_downloadCompletionBlock(*(a1 + 32), a2, a3);

  if (v4)
  {
    v7 = objc_msgSend_downloadCompletionBlock(*(a1 + 32), v5, v6);
    (*(v7 + 2))(v7, *(a1 + 40), *(a1 + 48));
  }
}

void *sub_2251A88B0(void *result, const char *a2, uint64_t a3)
{
  if (result)
  {
    v3 = objc_msgSend_operationInfo(result, a2, a3);
    v6 = objc_msgSend_fetchingAssetsForRereference(v3, v4, v5);

    return v6;
  }

  return result;
}

void sub_2251A99AC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  MMCSOperationMetricCombineMetrics();
  v12 = objc_msgSend_date(MEMORY[0x277CBEAA8], v4, v5);
  v8 = objc_msgSend_startDate(v3, v6, v7);
  objc_msgSend_timeIntervalSinceDate_(v12, v9, v8);
  objc_msgSend_setDuration_(v3, v10, v11);
}

void sub_2251AB450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60)
{
  _Block_object_dispose(&a54, 8);
  _Block_object_dispose(&a60, 8);
  _Block_object_dispose((v60 - 224), 8);
  _Unwind_Resume(a1);
}

void sub_2251AB4EC(uint64_t a1, const char *a2, _BYTE *a3)
{
  v69 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v64 = 0;
  v7 = objc_msgSend_itemAtIndex_error_(v6, a2, a2, &v64);
  v8 = v64;
  v11 = v64;
  if (v11 && (v12 = *(*(a1 + 48) + 8), v14 = *(v12 + 40), v13 = (v12 + 40), !v14))
  {
    objc_storeStrong(v13, v8);
    *a3 = 1;
  }

  else
  {
    v15 = objc_msgSend_sectionIndex(v7, v9, v10);
    v16 = MEMORY[0x277CCABB0];
    v19 = objc_msgSend_sectionIndex(*(a1 + 40), v17, v18);
    v21 = objc_msgSend_numberWithUnsignedLongLong_(v16, v20, v19);
    isEqual = objc_msgSend_isEqual_(v15, v22, v21);

    if (isEqual)
    {
      v24 = [CKDMMCSItem alloc];
      v26 = objc_msgSend_initWithPackage_(v24, v25, *(a1 + 32));
      v29 = objc_msgSend_signature(v7, v27, v28);
      objc_msgSend_setSignature_(v26, v30, v29);

      v33 = objc_msgSend_size(v7, v31, v32);
      objc_msgSend_setFileSize_(v26, v34, v33);
      v37 = objc_msgSend_paddedSize(v7, v35, v36);
      objc_msgSend_setPaddedFileSize_(v26, v38, v37);
      v41 = objc_msgSend_zeroSizeFileSignature(CKDMMCS, v39, v40);
      v44 = objc_msgSend_signature(v26, v42, v43);
      isEqualToData = objc_msgSend_isEqualToData_(v41, v45, v44);

      if (isEqualToData)
      {
        if (objc_msgSend_fileSize(v26, v47, v48))
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v50 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_FAULT))
          {
            v60 = v50;
            v63 = objc_msgSend_fileSize(v26, v61, v62);
            *buf = 138412546;
            v66 = v7;
            v67 = 2048;
            v68 = v63;
            _os_log_fault_impl(&dword_22506F000, v60, OS_LOG_TYPE_FAULT, "Package section item %@ has zero file signature and non-zero size %llu", buf, 0x16u);
          }
        }

        objc_msgSend_setFileSize_(v26, v49, 0);
      }

      v51 = objc_msgSend_offset(v7, v47, v48);
      objc_msgSend_setOffset_(v26, v52, v51);
      objc_msgSend_setPackageIndex_(v26, v53, a2);
      v56 = objc_msgSend_fileSize(v26, v54, v55);
      v58 = 56;
      if (!v56)
      {
        v58 = 64;
      }

      objc_msgSend_addObject_(*(*(*(a1 + v58) + 8) + 40), v57, v26);
    }
  }

  v59 = *MEMORY[0x277D85DE8];
}

void sub_2251AB7B4(uint64_t a1, void *a2)
{
  v19 = a2;
  v5 = objc_msgSend_error(v19, v3, v4);

  if (!v5)
  {
    v8 = *(a1 + 32);
    objc_msgSend_progress(v19, v6, v7);
    objc_msgSend_updateProgressWithItem_progress_(v8, v9, v19);
    v11 = v10;
    objc_msgSend_progress(*(a1 + 40), v12, v13);
    if (v16 < v11)
    {
      v16 = v11;
    }

    objc_msgSend_setProgress_(*(a1 + 40), v14, v15, v16);
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    objc_msgSend__didMakeProgressForMMCSSectionItem_task_(WeakRetained, v18, *(a1 + 40), *(a1 + 48));
  }
}

void sub_2251AB860(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = objc_msgSend_error(v3, v4, v5);
  v9 = objc_msgSend_queue(*(a1 + 32), v7, v8);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_2251AB990;
  v14[3] = &unk_278548890;
  v22 = *(a1 + 72);
  v15 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = *(a1 + 32);
  v16 = v10;
  v17 = v11;
  v18 = v3;
  v19 = *(a1 + 56);
  v20 = v6;
  v21 = *(a1 + 64);
  v12 = v6;
  v13 = v3;
  dispatch_async(v9, v14);
}

void sub_2251AB990(uint64_t a1, const char *a2, uint64_t a3)
{
  v17[1] = *MEMORY[0x277D85DE8];
  if (objc_msgSend_count(*(*(*(a1 + 88) + 8) + 40), a2, a3))
  {
    v6 = objc_msgSend_assetCache(*(a1 + 32), v4, v5);
    v8 = objc_msgSend_trackCachedButNotRegisteredMMCSItems_error_(v6, v7, *(*(*(a1 + 88) + 8) + 40), 0);
  }

  v9 = objc_msgSend_sectionItems(*(a1 + 40), v4, v5);
  objc_msgSend_addObjectsFromArray_(v9, v10, *(*(*(a1 + 88) + 8) + 40));

  objc_msgSend__collectMetricsFromCompletedItemGroup_(*(a1 + 48), v11, *(a1 + 56));
  v12 = *(a1 + 48);
  v17[0] = *(a1 + 40);
  v14 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v13, v17, 1);
  objc_msgSend__didDownloadMMCSSectionItems_task_error_(v12, v15, v14, *(a1 + 64), *(a1 + 72));

  dispatch_group_leave(*(a1 + 80));
  v16 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2251ABA9C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_cancelTokens(*(a1 + 32), a2, a3);
  objc_msgSend_removeCancelToken_(v4, v5, *(a1 + 40));

  result = *(a1 + 48);
  if (result)
  {
    v7 = *(result + 16);

    return v7();
  }

  return result;
}

void sub_2251AC3E4(void *a1, const char *a2, _BYTE *a3)
{
  v5 = a1[4];
  v17 = 0;
  v6 = objc_msgSend_itemAtIndex_error_(v5, a2, a2, &v17);
  v7 = v17;
  v10 = v17;
  if (v10)
  {
    objc_storeStrong((*(a1[6] + 8) + 40), v7);
    *a3 = 1;
  }

  else
  {
    v11 = a1[5];
    v12 = objc_msgSend_sectionIndex(v6, v8, v9);
    v15 = objc_msgSend_unsignedIntegerValue(v12, v13, v14);
    objc_msgSend_addIndex_(v11, v16, v15);
  }
}

uint64_t sub_2251AC4AC(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_error(*(a1 + 32), a2, a3);

  if (!v4)
  {
    v7 = objc_msgSend_manifestAsset(*(a1 + 32), v5, v6);
    v10 = objc_msgSend_downloaded(v7, v8, v9);

    if (*(a1 + 72))
    {
      v11 = 0;
      do
      {
        v12 = objc_msgSend_assets(*(a1 + 40), v5, v6);
        v15 = objc_msgSend_count(v12, v13, v14);
        v16 = v11 + 1;

        if (v15 > v11 + 1)
        {
          v17 = objc_msgSend_assets(*(a1 + 40), v5, v6);
          v19 = objc_msgSend_objectAtIndex_(v17, v18, v11 + 1);

          if (objc_msgSend_containsIndex_(*(a1 + 48), v20, v11))
          {
            if (v10)
            {
              LOBYTE(v10) = objc_msgSend_downloaded(v19, v21, v22);
            }

            else
            {
              LOBYTE(v10) = 0;
            }
          }

          else
          {
            v23 = objc_msgSend_progressTracker(*(a1 + 32), v21, v22);
            objc_msgSend_updateProgressWithItem_progress_(v23, v24, v19, 1.0);
            v26 = v25;

            objc_msgSend__didMakeProgressForAsset_progress_(*(a1 + 56), v27, *(a1 + 40), v26);
          }
        }

        v11 = v16;
      }

      while (v16 < *(a1 + 72));
    }
  }

  v28 = *(a1 + 56);
  v29 = *(a1 + 40);
  v30 = objc_msgSend_error(*(a1 + 32), v5, v6);
  objc_msgSend__didDownloadAsset_error_(v28, v31, v29, v30);

  result = *(a1 + 64);
  if (result)
  {
    v33 = *(result + 16);

    return v33();
  }

  return result;
}

void sub_2251AC840(uint64_t a1, const char *a2)
{
  v46 = *MEMORY[0x277D85DE8];
  objc_msgSend_removeObjectsInArray_(*(a1 + 32), a2, *(a1 + 40));
  v5 = objc_msgSend_maxPackageDownloadsPerBatch(*(a1 + 48), v3, v4);
  v6 = objc_alloc(MEMORY[0x277CBEB18]);
  v9 = objc_msgSend_count(*(a1 + 32), v7, v8);
  if (v5 >= v5 - v9)
  {
    v11 = objc_msgSend_initWithCapacity_(v6, v10, v5 - v9);
  }

  else
  {
    v11 = objc_msgSend_initWithCapacity_(v6, v10, v5);
  }

  v14 = v11;
  v15 = objc_msgSend_objectEnumerator(*(a1 + 56), v12, v13);
  v18 = objc_msgSend_count(*(a1 + 32), v16, v17);
  v21 = v5 - v18;
  if (v5 > v18)
  {
    do
    {
      v22 = objc_msgSend_nextObject(v15, v19, v20);
      if (!v22)
      {
        break;
      }

      v23 = v22;
      objc_msgSend_addObject_(v14, v19, v22);

      --v21;
    }

    while (v21);
  }

  v37 = v15;
  objc_msgSend_removeObjectsInArray_(*(a1 + 56), v19, v14);
  objc_msgSend_addObjectsFromArray_(*(a1 + 32), v24, v14);
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v25 = v14;
  v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v26, &v41, v45, 16);
  if (v27)
  {
    v30 = v27;
    v31 = *v42;
    do
    {
      v32 = 0;
      do
      {
        if (*v42 != v31)
        {
          objc_enumerationMutation(v25);
        }

        v33 = *(*(&v41 + 1) + 8 * v32);
        objc_msgSend_qualityOfService(*(a1 + 48), v28, v29);
        v34 = CKGetGlobalQueue();
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_2251ACA90;
        block[3] = &unk_2785463D0;
        v35 = *(a1 + 56);
        block[4] = *(a1 + 48);
        block[5] = v33;
        v39 = v35;
        v40 = *(a1 + 32);
        dispatch_async(v34, block);

        ++v32;
      }

      while (v30 != v32);
      v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v28, &v41, v45, 16);
    }

    while (v30);
  }

  v36 = *MEMORY[0x277D85DE8];
}

void sub_2251ACA90(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_cancelTokens(*(a1 + 32), a2, a3);
  objc_msgSend_addCancelToken_withOperation_(v4, v5, *(a1 + 40), *(a1 + 32));

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2251ACB64;
  v11[3] = &unk_2785463D0;
  v10 = *(a1 + 32);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  v12 = v10;
  v13 = v8;
  objc_msgSend__downloadPackageSectionsWithTask_completionBlock_(v10, v9, *(&v10 + 1), v11);
}

void sub_2251ACB64(uint64_t a1, const char *a2, uint64_t a3)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_cancelTokens(*(a1 + 32), a2, a3);
  objc_msgSend_removeCancelToken_(v4, v5, *(a1 + 40));

  v8 = objc_msgSend_cancelTokens(*(a1 + 40), v6, v7);
  objc_msgSend_removeAllCancelTokens(v8, v9, v10);

  v13 = objc_msgSend_group(*(a1 + 40), v11, v12);
  dispatch_group_leave(v13);

  v14 = *(a1 + 48);
  v15 = *(a1 + 56);
  v16 = *(a1 + 32);
  v21[0] = *(a1 + 40);
  v18 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v17, v21, 1);
  objc_msgSend__downloadPackageSectionsWithPendingTasks_downloadingTasks_completedTasks_(v16, v19, v14, v15, v18);

  v20 = *MEMORY[0x277D85DE8];
}

void sub_2251AD85C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak(&STACK[0x330]);
  _Unwind_Resume(a1);
}

void sub_2251AD88C(uint64_t a1)
{
  v53 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v3 = MEMORY[0x277CBC830];
  v4 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v30 = *(a1 + 32);
    v31 = v4;
    v34 = objc_msgSend_package(v30, v32, v33);
    v37 = objc_msgSend_UUID(v34, v35, v36);
    *buf = 138543362;
    v48 = v37;
    _os_log_debug_impl(&dword_22506F000, v31, OS_LOG_TYPE_DEBUG, "Finished downloading manifest for package %{public}@", buf, 0xCu);
  }

  v7 = objc_msgSend_group(*(a1 + 32), v5, v6);
  dispatch_group_enter(v7);

  v10 = objc_msgSend_package(*(a1 + 32), v8, v9);
  v12 = objc_msgSend_size_(v10, v11, 0);

  v15 = objc_msgSend_package(*(a1 + 32), v13, v14);
  v18 = objc_msgSend_UUID(v15, v16, v17);

  v21 = objc_msgSend_group(*(a1 + 32), v19, v20);
  v24 = objc_msgSend_queue(*(a1 + 40), v22, v23);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2251ADB74;
  block[3] = &unk_278545E20;
  v46 = v12;
  v25 = v18;
  v44 = v25;
  v45 = *(a1 + 48);
  dispatch_group_notify(v21, v24, block);

  objc_msgSend_addObject_(*(a1 + 56), v26, *(a1 + 32));
  if (*v2 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v27 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEBUG))
  {
    v38 = *(a1 + 56);
    v39 = v27;
    v42 = objc_msgSend_count(v38, v40, v41);
    *buf = 134218498;
    v48 = v42;
    v49 = 2048;
    v50 = v12;
    v51 = 2114;
    v52 = v25;
    _os_log_debug_impl(&dword_22506F000, v39, OS_LOG_TYPE_DEBUG, "Starting download %lu tasks (%llu sections) for package %{public}@", buf, 0x20u);
  }

  objc_msgSend__downloadPackageSectionsWithPendingTasks_downloadingTasks_completedTasks_(*(a1 + 40), v28, *(a1 + 56), *(a1 + 64), 0);

  v29 = *MEMORY[0x277D85DE8];
}

void sub_2251ADB74(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v2 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v4 = *(a1 + 48);
    v5 = *(a1 + 32);
    v6 = 134218242;
    v7 = v4;
    v8 = 2114;
    v9 = v5;
    _os_log_debug_impl(&dword_22506F000, v2, OS_LOG_TYPE_DEBUG, "Finished downloading %llu sections for package %{public}@", &v6, 0x16u);
  }

  dispatch_group_leave(*(a1 + 40));
  v3 = *MEMORY[0x277D85DE8];
}

void sub_2251ADC68(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend__didMakeProgressForMMCSItem_inMemory_(WeakRetained, v4, v3, *(a1 + 40));
}

void sub_2251ADCC8(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = objc_msgSend_asset(v6, v7, v8);

  objc_msgSend__didCommandForAsset_command_(WeakRetained, v10, v9, v5);
}

void sub_2251ADD58(uint64_t a1, void *a2)
{
  v53 = *MEMORY[0x277D85DE8];
  v3 = a2;
  objc_msgSend__collectMetricsFromCompletedItemGroupSet_(*(a1 + 32), v4, v3);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 56);
  v10 = objc_msgSend_error(v3, v8, v9);
  objc_msgSend__didDownloadMMCSItems_inMemory_error_(v5, v11, v6, v7, v10);

  v14 = objc_msgSend_operationInfo(*(a1 + 32), v12, v13);
  v17 = objc_msgSend_cloneContextReturnBlock(v14, v15, v16);

  if (v17)
  {
    v40 = a1;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    obj = objc_msgSend_itemsGroups(v3, v18, v19);
    v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v20, &v47, v52, 16);
    if (v21)
    {
      v24 = v21;
      v42 = *v48;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v48 != v42)
          {
            objc_enumerationMutation(obj);
          }

          v26 = *(*(&v47 + 1) + 8 * i);
          v27 = objc_msgSend_cloneContext(v26, v22, v23);
          v43 = 0u;
          v44 = 0u;
          v45 = 0u;
          v46 = 0u;
          v30 = objc_msgSend_items(v26, v28, v29);
          v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v31, &v43, v51, 16);
          if (v32)
          {
            v35 = v32;
            v36 = *v44;
            do
            {
              for (j = 0; j != v35; ++j)
              {
                if (*v44 != v36)
                {
                  objc_enumerationMutation(v30);
                }

                v38 = objc_msgSend_signature(*(*(&v43 + 1) + 8 * j), v33, v34);
                (v17)[2](v17, v38, v27);
              }

              v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v33, &v43, v51, 16);
            }

            while (v35);
          }
        }

        v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v22, &v47, v52, 16);
      }

      while (v24);
    }

    a1 = v40;
  }

  dispatch_group_leave(*(a1 + 48));

  v39 = *MEMORY[0x277D85DE8];
}

void sub_2251ADFAC(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_cancelTokens(*(a1 + 32), a2, a3);
  objc_msgSend_removeCancelToken_(v4, v5, *(a1 + 40));

  v8 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v6, v7);
  dispatch_group_leave(v8);
}

void sub_2251AEAA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2251AEACC(uint64_t a1, const char *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v5[0] = xmmword_225447D68;
  v5[1] = unk_225447D78;
  v2 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], a2, v5, 32);
  v3 = qword_280D54F98;
  qword_280D54F98 = v2;

  v4 = *MEMORY[0x277D85DE8];
}

void sub_2251AEB4C(id *a1, void *a2)
{
  location[3] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v5 = v3;
  if (*MEMORY[0x277CBC810] == 1)
  {
    objc_msgSend_checkAndClearUnitTestOverrides_(v3, v4, @"DownloadAssetsFromTranscodingService");
  }

  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v7 = v5;
    objc_initWeak(location, v7);
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = sub_2251AEED8;
    v26[3] = &unk_278548A18;
    v27 = a1[5];
    objc_msgSend_setReplaceLocalSerializationsBlobs_(v7, v8, v26);
    objc_msgSend_setInitialResponseReceivedCallback_(v7, v9, &unk_28385D400);
    objc_msgSend_setReplaceWireSerializations_(v7, v10, &unk_28385D420);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = sub_2251AF248;
    v23[3] = &unk_278548A80;
    objc_copyWeak(&v25, a1 + 6);
    v24 = a1[4];
    objc_msgSend_setRecordFetchCommandBlock_(v7, v11, v23);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = sub_2251AF2E0;
    v21[3] = &unk_278548AA8;
    v22 = a1[4];
    objc_msgSend_setRecordFetchCompletionBlock_(v7, v12, v21);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_2251AF5BC;
    v17[3] = &unk_278548AD0;
    objc_copyWeak(&v19, a1 + 6);
    objc_copyWeak(&v20, location);
    v18 = a1[4];
    objc_msgSend_setCompletionBlock_(v7, v13, v17);

    objc_destroyWeak(&v20);
    objc_destroyWeak(&v19);

    objc_destroyWeak(&v25);
    objc_destroyWeak(location);
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v14 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v16 = a1[4];
      LODWORD(location[0]) = 138412290;
      *(location + 4) = v16;
      _os_log_debug_impl(&dword_22506F000, v14, OS_LOG_TYPE_DEBUG, "The self is not strong with the transcoding operation for %@", location, 0xCu);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void sub_2251AEE84(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 112));
  _Unwind_Resume(a1);
}

void sub_2251AEED8(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a5;
  v9 = a3;
  v12 = objc_msgSend_firstObject(a2, v10, v11);
  v15 = objc_msgSend_firstObject(v9, v13, v14);

  if (v12)
  {
    v16 = objc_opt_new();
    objc_msgSend_setWireSerialization_(v16, v17, v12);
    if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_msgSend_setEncryptedMasterKey_(v16, v18, v15);
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v19 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        *v25 = 0;
        _os_log_error_impl(&dword_22506F000, v19, OS_LOG_TYPE_ERROR, "Couldn't get encrypted master key for transcoding record", v25, 2u);
      }
    }

    objc_msgSend_setRecord_(*(a1 + 32), v20, v16);
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v21 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_22506F000, v21, OS_LOG_TYPE_ERROR, "No wire serialization for transcoding record", buf, 2u);
    }
  }

  v24 = objc_msgSend_data(*(a1 + 32), v22, v23);
  v8[2](v8, v24, 0);
}

void sub_2251AF0CC(uint64_t a1, void *a2, void *a3)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = a2;
  v6 = [CKDPTranscodeResponse alloc];
  v8 = objc_msgSend_initWithData_(v6, v7, v5);

  v11 = objc_msgSend_record(v8, v9, v10);
  v14 = objc_msgSend_wireSerialization(v11, v12, v13);

  if (v14)
  {
    v20[0] = v14;
    v16 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v15, v20, 1);
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v17 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *v19 = 0;
      _os_log_error_impl(&dword_22506F000, v17, OS_LOG_TYPE_ERROR, "No wire serialization when handling intial transcoding response", v19, 2u);
    }

    v16 = 0;
  }

  v4[2](v4, v16, 0);

  v18 = *MEMORY[0x277D85DE8];
}

void sub_2251AF248(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = objc_msgSend_downloadCommandBlock(WeakRetained, v5, v6);

  if (v7)
  {
    v10 = objc_msgSend_downloadCommandBlock(WeakRetained, v8, v9);
    (v10)[2](v10, *(a1 + 32), v11);
  }
}

void sub_2251AF2E0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v51 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v11 = a4;
  if (v11)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v12 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 32);
      v47 = 138412546;
      v48 = v13;
      v49 = 2112;
      v50 = v11;
      _os_log_error_impl(&dword_22506F000, v12, OS_LOG_TYPE_ERROR, "Error fetching transcoded asset %@: %@", &v47, 0x16u);
    }
  }

  else
  {
    v14 = objc_msgSend_recordKey(*(a1 + 32), v9, v10);
    v16 = objc_msgSend_objectForKeyedSubscript_(v7, v15, v14);

    v17 = *MEMORY[0x277CBC878];
    v18 = *MEMORY[0x277CBC880];
    if (v16)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v17);
      }

      v19 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        v46 = *(a1 + 32);
        v47 = 138412546;
        v48 = v16;
        v49 = 2112;
        v50 = v46;
        _os_log_debug_impl(&dword_22506F000, v19, OS_LOG_TYPE_DEBUG, "Transferring data from transcoded asset %@ to the response record's asset %@", &v47, 0x16u);
      }

      v22 = objc_msgSend_fileURL(v16, v20, v21);
      objc_msgSend_setFileURL_(*(a1 + 32), v23, v22);

      v26 = objc_msgSend_size(v16, v24, v25);
      objc_msgSend_setSize_(*(a1 + 32), v27, v26);
      v30 = objc_msgSend_paddedFileSize(v16, v28, v29);
      objc_msgSend_setPaddedFileSize_(*(a1 + 32), v31, v30);
      v34 = objc_msgSend_UUID(v16, v32, v33);
      objc_msgSend_setUUID_(*(a1 + 32), v35, v34);

      v38 = objc_msgSend_downloaded(v16, v36, v37);
      objc_msgSend_setDownloaded_(*(a1 + 32), v39, v38);
      v42 = objc_msgSend_wasCached(v16, v40, v41);
      objc_msgSend_setWasCached_(*(a1 + 32), v43, v42);
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v17);
      }

      v44 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        LOWORD(v47) = 0;
        _os_log_error_impl(&dword_22506F000, v44, OS_LOG_TYPE_ERROR, "No transcoded asset after fetching from transcoder", &v47, 2u);
      }
    }
  }

  v45 = *MEMORY[0x277D85DE8];
}

void sub_2251AF5BC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v11 = WeakRetained;
    v3 = objc_loadWeakRetained((a1 + 48));
    v6 = objc_msgSend_error(v3, v4, v5);

    objc_msgSend__didDownloadAsset_error_(v11, v7, *(a1 + 32), v6);
    v10 = objc_msgSend_stateTransitionGroup(v11, v8, v9);
    dispatch_group_leave(v10);

    WeakRetained = v11;
  }
}

void sub_2251B0074(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, *(a1 + 32));
  objc_initWeak(&from, v3);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_2251B0224;
  v13[3] = &unk_278548B38;
  objc_copyWeak(&v14, &from);
  objc_copyWeak(&v15, &location);
  objc_msgSend_setRecordFetchCompletionBlock_(v3, v4, v13);
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = sub_2251B03CC;
  v10 = &unk_278548748;
  objc_copyWeak(&v11, &location);
  objc_copyWeak(&v12, &from);
  objc_msgSend_setCompletionBlock_(v3, v5, &v7);
  objc_msgSend_setFetchOperation_(*(a1 + 32), v6, v3, v7, v8, v9, v10);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void sub_2251B01DC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 64));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_2251B0224(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = objc_loadWeakRetained((a1 + 40));
  v11 = v9;
  if (v7)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v12 = *MEMORY[0x277CBC838];
    if (os_log_type_enabled(*MEMORY[0x277CBC838], OS_LOG_TYPE_ERROR))
    {
      v15 = v12;
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      v20 = objc_msgSend_ckShortDescription(WeakRetained, v18, v19);
      v21 = 138544130;
      v22 = v17;
      v23 = 2048;
      v24 = WeakRetained;
      v25 = 2114;
      v26 = v20;
      v27 = 2112;
      v28 = v7;
      _os_log_error_impl(&dword_22506F000, v15, OS_LOG_TYPE_ERROR, "Simulate asset corruption operation <%{public}@: %p; %{public}@> could not fetch record with error %@", &v21, 0x2Au);
    }

    objc_msgSend_setError_(v11, v13, v7);
  }

  else
  {
    objc_msgSend_setRecord_(v9, v10, v6);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void sub_2251B03CC(uint64_t a1)
{
  v42 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v6 = objc_msgSend_error(v3, v4, v5);

  v7 = *MEMORY[0x277CBC878];
  v8 = *MEMORY[0x277CBC880];
  if (v6)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v7);
    }

    v9 = *MEMORY[0x277CBC838];
    if (os_log_type_enabled(*MEMORY[0x277CBC838], OS_LOG_TYPE_ERROR))
    {
      v20 = v9;
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      v25 = objc_msgSend_ckShortDescription(v3, v23, v24);
      v28 = objc_msgSend_error(v3, v26, v27);
      v34 = 138544130;
      v35 = v22;
      v36 = 2048;
      v37 = v3;
      v38 = 2114;
      v39 = v25;
      v40 = 2112;
      v41 = v28;
      _os_log_error_impl(&dword_22506F000, v20, OS_LOG_TYPE_ERROR, "Simulate asset corruption operation <%{public}@: %p; %{public}@> completed fetch record with error %@", &v34, 0x2Au);
    }

    v12 = objc_msgSend_error(v3, v10, v11);
    objc_msgSend_setError_(WeakRetained, v13, v12);
    goto LABEL_7;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], v7);
  }

  v15 = *MEMORY[0x277CBC838];
  if (os_log_type_enabled(*MEMORY[0x277CBC838], OS_LOG_TYPE_DEBUG))
  {
    v12 = v15;
    v29 = objc_opt_class();
    v30 = NSStringFromClass(v29);
    v33 = objc_msgSend_ckShortDescription(v3, v31, v32);
    v34 = 138543874;
    v35 = v30;
    v36 = 2048;
    v37 = v3;
    v38 = 2114;
    v39 = v33;
    _os_log_debug_impl(&dword_22506F000, v12, OS_LOG_TYPE_DEBUG, "Simulate asset corruption operation <%{public}@: %p; %{public}@> completed fetch record", &v34, 0x20u);

LABEL_7:
  }

  objc_msgSend_setFetchOperation_(WeakRetained, v14, 0);
  v18 = objc_msgSend_stateTransitionGroup(WeakRetained, v16, v17);
  dispatch_group_leave(v18);

  v19 = *MEMORY[0x277D85DE8];
}

void sub_2251B0824(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, *(a1 + 32));
  objc_initWeak(&from, v3);
  objc_msgSend_setUseEncryption_(v3, v4, 0);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_2251B09E8;
  v14[3] = &unk_278548B88;
  objc_copyWeak(&v15, &location);
  objc_copyWeak(&v16, &from);
  objc_msgSend_setRecordZoneFetchedProgressBlock_(v3, v5, v14);
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = sub_2251B0BA0;
  v11 = &unk_278548748;
  objc_copyWeak(&v12, &location);
  objc_copyWeak(&v13, &from);
  objc_msgSend_setCompletionBlock_(v3, v6, &v8);
  objc_msgSend_setZoneFetchOperation_(*(a1 + 32), v7, v3, v8, v9, v10, v11);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void sub_2251B0998(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 64));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_2251B09E8(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = objc_loadWeakRetained((a1 + 40));
  if (v7 && objc_msgSend_code(v7, v9, v10) != 2036)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v12 = *MEMORY[0x277CBC838];
    if (os_log_type_enabled(*MEMORY[0x277CBC838], OS_LOG_TYPE_ERROR))
    {
      v15 = v12;
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      v20 = objc_msgSend_ckShortDescription(v11, v18, v19);
      v21 = 138544130;
      v22 = v17;
      v23 = 2048;
      v24 = v11;
      v25 = 2114;
      v26 = v20;
      v27 = 2112;
      v28 = v7;
      _os_log_error_impl(&dword_22506F000, v15, OS_LOG_TYPE_ERROR, "Simulate asset corruption operation <%{public}@: %p; %{public}@> could not fetch repair zone with error %@", &v21, 0x2Au);
    }

    objc_msgSend_setError_(WeakRetained, v13, v7);
  }

  else
  {
    objc_msgSend_setRepairZone_(WeakRetained, v9, v6);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void sub_2251B0BA0(uint64_t a1)
{
  v42 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v6 = objc_msgSend_error(v3, v4, v5);

  v7 = *MEMORY[0x277CBC878];
  v8 = *MEMORY[0x277CBC880];
  if (v6)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v7);
    }

    v9 = *MEMORY[0x277CBC838];
    if (os_log_type_enabled(*MEMORY[0x277CBC838], OS_LOG_TYPE_ERROR))
    {
      v20 = v9;
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      v25 = objc_msgSend_ckShortDescription(v3, v23, v24);
      v28 = objc_msgSend_error(v3, v26, v27);
      v34 = 138544130;
      v35 = v22;
      v36 = 2048;
      v37 = v3;
      v38 = 2114;
      v39 = v25;
      v40 = 2112;
      v41 = v28;
      _os_log_error_impl(&dword_22506F000, v20, OS_LOG_TYPE_ERROR, "Simulate asset corruption operation <%{public}@: %p; %{public}@> completed repair zone fetch with error %@", &v34, 0x2Au);
    }

    v12 = objc_msgSend_error(v3, v10, v11);
    objc_msgSend_setError_(WeakRetained, v13, v12);
    goto LABEL_7;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], v7);
  }

  v15 = *MEMORY[0x277CBC838];
  if (os_log_type_enabled(*MEMORY[0x277CBC838], OS_LOG_TYPE_DEBUG))
  {
    v12 = v15;
    v29 = objc_opt_class();
    v30 = NSStringFromClass(v29);
    v33 = objc_msgSend_ckShortDescription(v3, v31, v32);
    v34 = 138543874;
    v35 = v30;
    v36 = 2048;
    v37 = v3;
    v38 = 2114;
    v39 = v33;
    _os_log_debug_impl(&dword_22506F000, v12, OS_LOG_TYPE_DEBUG, "Simulate asset corruption operation <%{public}@: %p; %{public}@> completed repair zone fetch", &v34, 0x20u);

LABEL_7:
  }

  objc_msgSend_setZoneFetchOperation_(WeakRetained, v14, 0);
  v18 = objc_msgSend_stateTransitionGroup(WeakRetained, v16, v17);
  dispatch_group_leave(v18);

  v19 = *MEMORY[0x277D85DE8];
}

void sub_2251B101C(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, *(a1 + 32));
  objc_initWeak(&from, v3);
  v6 = objc_msgSend_bypassPCSEncryptionForTouchRepairZone(*(a1 + 32), v4, v5);
  objc_msgSend_setUseEncryption_(v3, v7, v6 ^ 1u);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_2251B11E8;
  v17[3] = &unk_278548BB0;
  objc_copyWeak(&v18, &location);
  objc_copyWeak(&v19, &from);
  objc_msgSend_setSaveCompletionBlock_(v3, v8, v17);
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = sub_2251B1368;
  v14 = &unk_278548748;
  objc_copyWeak(&v15, &location);
  objc_copyWeak(&v16, &from);
  objc_msgSend_setCompletionBlock_(v3, v9, &v11);
  objc_msgSend_setZoneCreateOperation_(*(a1 + 32), v10, v3, v11, v12, v13, v14);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&v19);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void sub_2251B1198(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 64));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_2251B11E8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = objc_loadWeakRetained((a1 + 40));
  if (v5)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v8 = *MEMORY[0x277CBC838];
    if (os_log_type_enabled(*MEMORY[0x277CBC838], OS_LOG_TYPE_ERROR))
    {
      v11 = v8;
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v16 = objc_msgSend_ckShortDescription(v7, v14, v15);
      v17 = 138544130;
      v18 = v13;
      v19 = 2048;
      v20 = v7;
      v21 = 2114;
      v22 = v16;
      v23 = 2112;
      v24 = v5;
      _os_log_error_impl(&dword_22506F000, v11, OS_LOG_TYPE_ERROR, "Simulate asset corruption operation <%{public}@: %p; %{public}@> could not save repair zone with error %@", &v17, 0x2Au);
    }

    objc_msgSend_setError_(WeakRetained, v9, v5);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void sub_2251B1368(uint64_t a1)
{
  v42 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v6 = objc_msgSend_error(v3, v4, v5);

  v7 = *MEMORY[0x277CBC878];
  v8 = *MEMORY[0x277CBC880];
  if (v6)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v7);
    }

    v9 = *MEMORY[0x277CBC838];
    if (os_log_type_enabled(*MEMORY[0x277CBC838], OS_LOG_TYPE_ERROR))
    {
      v20 = v9;
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      v25 = objc_msgSend_ckShortDescription(v3, v23, v24);
      v28 = objc_msgSend_error(v3, v26, v27);
      v34 = 138544130;
      v35 = v22;
      v36 = 2048;
      v37 = v3;
      v38 = 2114;
      v39 = v25;
      v40 = 2112;
      v41 = v28;
      _os_log_error_impl(&dword_22506F000, v20, OS_LOG_TYPE_ERROR, "Simulate asset corruption operation <%{public}@: %p; %{public}@> completed repair zone touch with error %@", &v34, 0x2Au);
    }

    v12 = objc_msgSend_error(v3, v10, v11);
    objc_msgSend_setError_(WeakRetained, v13, v12);
    goto LABEL_7;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], v7);
  }

  v15 = *MEMORY[0x277CBC838];
  if (os_log_type_enabled(*MEMORY[0x277CBC838], OS_LOG_TYPE_DEBUG))
  {
    v12 = v15;
    v29 = objc_opt_class();
    v30 = NSStringFromClass(v29);
    v33 = objc_msgSend_ckShortDescription(v3, v31, v32);
    v34 = 138543874;
    v35 = v30;
    v36 = 2048;
    v37 = v3;
    v38 = 2114;
    v39 = v33;
    _os_log_debug_impl(&dword_22506F000, v12, OS_LOG_TYPE_DEBUG, "Simulate asset corruption operation <%{public}@: %p; %{public}@> completed repair zone touch", &v34, 0x20u);

LABEL_7:
  }

  objc_msgSend_setZoneCreateOperation_(WeakRetained, v14, 0);
  v18 = objc_msgSend_stateTransitionGroup(WeakRetained, v16, v17);
  dispatch_group_leave(v18);

  v19 = *MEMORY[0x277D85DE8];
}

id sub_2251B1A44(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBC1C0];
  v3 = a2;
  v4 = [v2 alloc];
  v7 = objc_msgSend_signature(v3, v5, v6);
  v10 = objc_msgSend_referenceSignature(v3, v8, v9);

  v12 = objc_msgSend_initWithFileSignature_referenceSignature_assetKey_(v4, v11, v7, v10, 0);

  return v12;
}

void sub_2251B1ADC(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, *(a1 + 32));
  objc_initWeak(&from, v3);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_2251B1C8C;
  v13[3] = &unk_278548BF8;
  objc_copyWeak(&v14, &location);
  objc_copyWeak(&v15, &from);
  objc_msgSend_setSaveCompletionBlock_(v3, v4, v13);
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = sub_2251B1E0C;
  v10 = &unk_278548748;
  objc_copyWeak(&v11, &location);
  objc_copyWeak(&v12, &from);
  objc_msgSend_setCompletionBlock_(v3, v5, &v7);
  objc_msgSend_setCorruptOperation_(*(a1 + 32), v6, v3, v7, v8, v9, v10);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void sub_2251B1C44(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 64));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_2251B1C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = objc_loadWeakRetained((a1 + 40));
  if (v6)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v9 = *MEMORY[0x277CBC838];
    if (os_log_type_enabled(*MEMORY[0x277CBC838], OS_LOG_TYPE_ERROR))
    {
      v12 = v9;
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v17 = objc_msgSend_ckShortDescription(v8, v15, v16);
      v18 = 138544130;
      v19 = v14;
      v20 = 2048;
      v21 = v8;
      v22 = 2114;
      v23 = v17;
      v24 = 2112;
      v25 = v6;
      _os_log_error_impl(&dword_22506F000, v12, OS_LOG_TYPE_ERROR, "Simulate asset corruption operation <%{public}@: %p; %{public}@> could not upload corrupted asset with error %@", &v18, 0x2Au);
    }

    objc_msgSend_setError_(WeakRetained, v10, v6);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void sub_2251B1E0C(uint64_t a1)
{
  v42 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v6 = objc_msgSend_error(v3, v4, v5);

  v7 = *MEMORY[0x277CBC878];
  v8 = *MEMORY[0x277CBC880];
  if (v6)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v7);
    }

    v9 = *MEMORY[0x277CBC838];
    if (os_log_type_enabled(*MEMORY[0x277CBC838], OS_LOG_TYPE_ERROR))
    {
      v20 = v9;
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      v25 = objc_msgSend_ckShortDescription(v3, v23, v24);
      v28 = objc_msgSend_error(v3, v26, v27);
      v34 = 138544130;
      v35 = v22;
      v36 = 2048;
      v37 = v3;
      v38 = 2114;
      v39 = v25;
      v40 = 2112;
      v41 = v28;
      _os_log_error_impl(&dword_22506F000, v20, OS_LOG_TYPE_ERROR, "Simulate asset corruption operation <%{public}@: %p; %{public}@> completed uploading corrupted asset with error %@", &v34, 0x2Au);
    }

    v12 = objc_msgSend_error(v3, v10, v11);
    objc_msgSend_setError_(WeakRetained, v13, v12);
    goto LABEL_7;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], v7);
  }

  v15 = *MEMORY[0x277CBC838];
  if (os_log_type_enabled(*MEMORY[0x277CBC838], OS_LOG_TYPE_DEBUG))
  {
    v12 = v15;
    v29 = objc_opt_class();
    v30 = NSStringFromClass(v29);
    v33 = objc_msgSend_ckShortDescription(v3, v31, v32);
    v34 = 138543874;
    v35 = v30;
    v36 = 2048;
    v37 = v3;
    v38 = 2114;
    v39 = v33;
    _os_log_debug_impl(&dword_22506F000, v12, OS_LOG_TYPE_DEBUG, "Simulate asset corruption operation <%{public}@: %p; %{public}@> completed corrupted asset upload", &v34, 0x20u);

LABEL_7:
  }

  objc_msgSend_setCorruptOperation_(WeakRetained, v14, 0);
  v18 = objc_msgSend_stateTransitionGroup(WeakRetained, v16, v17);
  dispatch_group_leave(v18);

  v19 = *MEMORY[0x277D85DE8];
}

void sub_2251B27D4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [CKDMarkAssetBrokenURLRequest alloc];
  v5 = *(a1 + 32);
  v8 = objc_msgSend_writeRepairRecord(*(a1 + 40), v6, v7);
  v10 = objc_msgSend_initWithOperation_assetOrPackageMetadata_writeRepairRecord_(v4, v9, v3, v5, v8);
  objc_initWeak(&location, *(a1 + 40));
  objc_initWeak(&v23, v3);
  objc_initWeak(&from, v10);
  objc_msgSend_setUseEncryption_(v3, v11, 0);
  objc_msgSend_setUrlRequest_(v3, v12, v10);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_2251B29FC;
  v19[3] = &unk_278548C20;
  objc_copyWeak(&v20, &location);
  objc_copyWeak(&v21, &from);
  objc_msgSend_setAssetBrokenBlock_(v10, v13, v19);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_2251B2DDC;
  v16[3] = &unk_278548748;
  objc_copyWeak(&v17, &location);
  objc_copyWeak(&v18, &v23);
  objc_msgSend_setCompletionBlock_(v3, v14, v16);
  objc_msgSend_setWrapperOperation_(*(a1 + 40), v15, v3);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&v17);
  objc_destroyWeak(&v21);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&from);
  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

void sub_2251B29A4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 88));
  objc_destroyWeak((v3 - 80));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_2251B29FC(uint64_t a1, void *a2, void *a3)
{
  v48 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = objc_loadWeakRetained((a1 + 40));
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v9 = *MEMORY[0x277CBC838];
  if (os_log_type_enabled(*MEMORY[0x277CBC838], OS_LOG_TYPE_DEBUG))
  {
    v38 = v9;
    *buf = 134217984;
    v47 = objc_msgSend_code(v6, v39, v40);
    _os_log_debug_impl(&dword_22506F000, v38, OS_LOG_TYPE_DEBUG, "Marked asset broken with response code %ld", buf, 0xCu);
  }

  if (objc_msgSend_code(v6, v10, v11) == 1)
  {
    v14 = objc_msgSend_assetOrPackageMarkedBrokenBlock(WeakRetained, v12, v13);

    if (v14)
    {
      v17 = objc_msgSend_callbackQueue(WeakRetained, v15, v16);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_2251B2D7C;
      block[3] = &unk_278545898;
      block[4] = WeakRetained;
      v42 = v5;
      dispatch_async(v17, block);
    }
  }

  else
  {
    v18 = MEMORY[0x277CBC560];
    v19 = *MEMORY[0x277CBC120];
    v20 = sub_2253962A4(v6);
    v21 = sub_225395734(v8, v6);
    v24 = objc_msgSend_error(v6, v22, v23);
    v27 = objc_msgSend_errorDescription(v24, v25, v26);
    v29 = objc_msgSend_errorWithDomain_code_userInfo_format_(v18, v28, v19, v20, v21, @"Error marking asset as broken: %@", v27);

    objc_msgSend_setError_(WeakRetained, v30, v29);
    v33 = objc_msgSend_assetOrPackageMarkedBrokenBlock(WeakRetained, v31, v32);

    if (v33)
    {
      v36 = objc_msgSend_callbackQueue(WeakRetained, v34, v35);
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = sub_2251B2D20;
      v43[3] = &unk_278546990;
      v43[4] = WeakRetained;
      v44 = v5;
      v45 = v29;
      dispatch_async(v36, v43);
    }
  }

  v37 = *MEMORY[0x277D85DE8];
}

void sub_2251B2D20(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_assetOrPackageMarkedBrokenBlock(*(a1 + 32), a2, a3);
  (*(v4 + 2))(v4, *(a1 + 40), *(a1 + 48));
}

void sub_2251B2D7C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_assetOrPackageMarkedBrokenBlock(*(a1 + 32), a2, a3);
  (*(v4 + 2))(v4, *(a1 + 40), 0);
}

void sub_2251B2DDC(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v6 = objc_msgSend_error(v3, v4, v5);

  v7 = *MEMORY[0x277CBC878];
  v8 = *MEMORY[0x277CBC880];
  if (v6)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v7);
    }

    v9 = *MEMORY[0x277CBC838];
    if (os_log_type_enabled(*MEMORY[0x277CBC838], OS_LOG_TYPE_INFO))
    {
      v12 = v9;
      v15 = objc_msgSend_error(v3, v13, v14);
      v24 = 138412290;
      v25 = v15;
      _os_log_impl(&dword_22506F000, v12, OS_LOG_TYPE_INFO, "Error breaking asset: %@", &v24, 0xCu);
    }

    v16 = objc_msgSend_error(v3, v10, v11);
    objc_msgSend_setMarkAssetBrokenError_(WeakRetained, v17, v16);
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v7);
    }

    v19 = *MEMORY[0x277CBC838];
    if (os_log_type_enabled(*MEMORY[0x277CBC838], OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v24) = 0;
      _os_log_debug_impl(&dword_22506F000, v19, OS_LOG_TYPE_DEBUG, "Completed marking asset broken", &v24, 2u);
    }
  }

  objc_msgSend_setWrapperOperation_(WeakRetained, v18, 0);
  v22 = objc_msgSend_stateTransitionGroup(WeakRetained, v20, v21);
  dispatch_group_leave(v22);

  v23 = *MEMORY[0x277D85DE8];
}

void sub_2251B3A08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2251B3A30(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_msgSend_urlRequest(WeakRetained, v1, v2);
  v6 = objc_msgSend_error(v3, v4, v5);

  if (v6)
  {
    v9 = objc_msgSend_urlRequest(WeakRetained, v7, v8);
    v12 = objc_msgSend_error(v9, v10, v11);
    objc_msgSend_finishWithError_(WeakRetained, v13, v12);
  }

  else
  {
    objc_msgSend_finishWithError_(WeakRetained, v7, 0);
  }
}

void sub_2251B498C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_assetPublishedBlock(*(a1 + 32), a2, a3);

  if (v4)
  {
    v7 = objc_msgSend_assetPublishedBlock(*(a1 + 32), v5, v6);
    (*(v7 + 2))(v7, *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64));
  }
}

void sub_2251B4C3C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_assetPublishedBlock(*(a1 + 32), a2, a3);

  if (v4)
  {
    v10 = objc_msgSend_assetPublishedBlock(*(a1 + 32), v5, v6);
    v9 = objc_msgSend_recordID(*(a1 + 40), v7, v8);
    (*(v10 + 2))(v10, v9, *(a1 + 48), *(a1 + 56), 0);
  }
}

void sub_2251B4EDC(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v8 = a3;
  if (v8)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v9 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v12 = *(a1 + 32);
      *buf = 138412546;
      v32 = v12;
      v33 = 2112;
      v34 = v8;
      _os_log_impl(&dword_22506F000, v9, OS_LOG_TYPE_INFO, "Error publish assets for record %@: %@", buf, 0x16u);
    }

    v13 = objc_msgSend_callbackQueue(*(a1 + 40), v10, v11);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2251B50DC;
    block[3] = &unk_278546990;
    v29 = vextq_s8(*(a1 + 32), *(a1 + 32), 8uLL);
    v30 = v8;
    dispatch_async(v13, block);

    v16 = objc_msgSend_stateTransitionGroup(*(a1 + 40), v14, v15);
    dispatch_group_leave(v16);
  }

  else
  {
    v17 = objc_msgSend_URLOptions(*(a1 + 40), v6, v7);
    v20 = *(a1 + 40);
    v21 = *(a1 + 48);
    if ((v17 & 2) != 0)
    {
      objc_msgSend__finishPublishAssetsForRecord_(*(a1 + 40), v18, *(a1 + 48));
    }

    else
    {
      v22 = objc_msgSend_pcs(v5, v18, v19);
      objc_msgSend__dispatchAssetURLsForRecord_pcs_(v20, v23, v21, v22);
    }

    v26 = objc_msgSend_stateTransitionGroup(*(a1 + 40), v24, v25);
    dispatch_group_leave(v26);
  }

  v27 = *MEMORY[0x277D85DE8];
}

void sub_2251B50DC(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_assetPublishedBlock(*(a1 + 32), a2, a3);

  if (v4)
  {
    v7 = objc_msgSend_assetPublishedBlock(*(a1 + 32), v5, v6);
    (*(v7 + 2))(v7, *(a1 + 40), 0, 0, *(a1 + 48));
  }
}

void sub_2251B5358(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_msgSend_setUseCachedEtags_(v3, v4, 0);
  objc_initWeak(&location, *(a1 + 32));
  objc_initWeak(&from, v3);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_2251B550C;
  v14[3] = &unk_278548CC0;
  objc_copyWeak(&v15, &location);
  objc_msgSend_setRecordFetchCompletionBlock_(v3, v5, v14);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2251B59A8;
  v11[3] = &unk_278548748;
  objc_copyWeak(&v12, &location);
  objc_copyWeak(&v13, &from);
  objc_msgSend_setCompletionBlock_(v3, v6, v11);
  objc_msgSend_setFetchRecordsOperation_(*(a1 + 32), v7, v3);
  v10 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v8, v9);
  dispatch_group_enter(v10);

  objc_destroyWeak(&v13);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void sub_2251B54CC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 64));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_2251B550C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v52 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = MEMORY[0x277CBC878];
  v12 = *MEMORY[0x277CBC878];
  v13 = MEMORY[0x277CBC880];
  v14 = *MEMORY[0x277CBC880];
  v15 = MEMORY[0x277CBC830];
  if (v9)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v12);
    }

    v16 = *v15;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v49 = v8;
      v50 = 2112;
      v51 = v9;
      _os_log_error_impl(&dword_22506F000, v16, OS_LOG_TYPE_ERROR, "Failed to fetch record %@: %@", buf, 0x16u);
    }

    goto LABEL_6;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], v12);
  }

  v22 = *v15;
  if (os_log_type_enabled(*v15, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v49 = v8;
    _os_log_debug_impl(&dword_22506F000, v22, OS_LOG_TYPE_DEBUG, "Fetched record %@", buf, 0xCu);
    if (v7)
    {
      goto LABEL_12;
    }

LABEL_30:
    v9 = 0;
    goto LABEL_6;
  }

  if (!v7)
  {
    goto LABEL_30;
  }

LABEL_12:
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v23 = objc_msgSend_fileNamesByAssetFieldNames(WeakRetained, v17, v18);
  v26 = objc_msgSend_allKeys(v23, v24, v25);

  v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v27, &v43, v47, 16);
  if (v29)
  {
    v30 = *v44;
LABEL_14:
    v31 = 0;
    while (1)
    {
      if (*v44 != v30)
      {
        objc_enumerationMutation(v26);
      }

      v32 = objc_msgSend_objectForKeyedSubscript_(v7, v28, *(*(&v43 + 1) + 8 * v31));

      if (v32)
      {
        break;
      }

      if (v29 == ++v31)
      {
        v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v28, &v43, v47, 16);
        if (v29)
        {
          goto LABEL_14;
        }

        goto LABEL_20;
      }
    }

    v9 = 0;
    if (!v8)
    {
      goto LABEL_6;
    }
  }

  else
  {
LABEL_20:

    v33 = MEMORY[0x277CBC830];
    if (*v13 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *v11);
    }

    v34 = *v33;
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v49 = v8;
      _os_log_impl(&dword_22506F000, v34, OS_LOG_TYPE_INFO, "Warn: Record %@ contained no matching asset fields to publish", buf, 0xCu);
    }

    v9 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v35, *MEMORY[0x277CBC120], 2003, @"Record %@ contained no matching asset fields to publish", v8);
    if (!v8)
    {
      goto LABEL_6;
    }
  }

  if (!v9)
  {
    v20 = objc_msgSend_fetchedRecordsByID(WeakRetained, v17, v18);
    objc_sync_enter(v20);
    v38 = objc_msgSend_fetchedRecordsByID(WeakRetained, v36, v37);
    objc_msgSend_setObject_forKeyedSubscript_(v38, v39, v7, v8);

    objc_sync_exit(v20);
    goto LABEL_7;
  }

LABEL_6:
  v19 = objc_msgSend_callbackQueue(WeakRetained, v17, v18);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2251B591C;
  block[3] = &unk_278546990;
  block[4] = WeakRetained;
  v41 = v8;
  v42 = v9;
  v20 = v9;
  dispatch_async(v19, block);

LABEL_7:
  v21 = *MEMORY[0x277D85DE8];
}

void sub_2251B591C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_assetPublishedBlock(*(a1 + 32), a2, a3);

  if (v4)
  {
    v7 = objc_msgSend_assetPublishedBlock(*(a1 + 32), v5, v6);
    (*(v7 + 2))(v7, *(a1 + 40), 0, 0, *(a1 + 48));
  }
}

void sub_2251B59A8(uint64_t a1)
{
  v42 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v6 = objc_msgSend_error(v3, v4, v5);

  v7 = *MEMORY[0x277CBC878];
  v8 = *MEMORY[0x277CBC880];
  if (v6)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v7);
    }

    v9 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v12 = v9;
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v17 = objc_msgSend_ckShortDescription(v3, v15, v16);
      v20 = objc_msgSend_error(v3, v18, v19);
      v34 = 138544130;
      v35 = v14;
      v36 = 2048;
      v37 = v3;
      v38 = 2114;
      v39 = v17;
      v40 = 2112;
      v41 = v20;
      _os_log_impl(&dword_22506F000, v12, OS_LOG_TYPE_INFO, "Fetch records operation <%{public}@: %p; %{public}@> finished with error %@", &v34, 0x2Au);
    }

    v21 = objc_msgSend_error(v3, v10, v11);
    objc_msgSend_setError_(WeakRetained, v22, v21);
    goto LABEL_7;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], v7);
  }

  v24 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v21 = v24;
    v29 = objc_opt_class();
    v30 = NSStringFromClass(v29);
    v33 = objc_msgSend_ckShortDescription(v3, v31, v32);
    v34 = 138543874;
    v35 = v30;
    v36 = 2048;
    v37 = v3;
    v38 = 2114;
    v39 = v33;
    _os_log_debug_impl(&dword_22506F000, v21, OS_LOG_TYPE_DEBUG, "Fetch records operation <%{public}@: %p; %{public}@> succeeded", &v34, 0x20u);

LABEL_7:
  }

  objc_msgSend_setFetchRecordsOperation_(WeakRetained, v23, 0);
  v27 = objc_msgSend_stateTransitionGroup(WeakRetained, v25, v26);
  dispatch_group_leave(v27);

  v28 = *MEMORY[0x277D85DE8];
}

void sub_2251B66CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2251B66F8(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, *(a1 + 32));
  objc_initWeak(&from, v3);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_2251B68C0;
  v14[3] = &unk_278548D00;
  objc_copyWeak(&v16, &from);
  objc_copyWeak(v17, &location);
  v17[1] = *(a1 + 48);
  v15 = *(a1 + 32);
  objc_msgSend_setRecordFetchCompletionBlock_(v3, v4, v14);
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = sub_2251B6B38;
  v10 = &unk_278548AD0;
  objc_copyWeak(&v12, &location);
  objc_copyWeak(&v13, &from);
  v11 = *(a1 + 32);
  objc_msgSend_setCompletionBlock_(v3, v5, &v7);
  objc_msgSend_setFetchOperation_(*(a1 + 32), v6, v3, v7, v8, v9, v10);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&v12);
  objc_destroyWeak(v17);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void sub_2251B6878(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v3 - 64));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_2251B68C0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v48 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v12 = objc_loadWeakRetained((a1 + 56));
  if (v9)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v13 = *MEMORY[0x277CBC838];
    if (os_log_type_enabled(*MEMORY[0x277CBC838], OS_LOG_TYPE_ERROR))
    {
      v21 = v13;
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      v26 = objc_msgSend_ckShortDescription(WeakRetained, v24, v25);
      v27 = objc_opt_class();
      v28 = NSStringFromClass(v27);
      v31 = objc_msgSend_ckShortDescription(v12, v29, v30);
      v34 = 138544898;
      v35 = v23;
      v36 = 2048;
      v37 = WeakRetained;
      v38 = 2114;
      v39 = v26;
      v40 = 2114;
      v41 = v28;
      v42 = 2048;
      v43 = v12;
      v44 = 2114;
      v45 = v31;
      v46 = 2112;
      v47 = v9;
      _os_log_error_impl(&dword_22506F000, v21, OS_LOG_TYPE_ERROR, "Repair records operation <%{public}@: %p; %{public}@> for operation <%{public}@: %p; %{public}@> could not fetch original record with error %@", &v34, 0x48u);
    }

    objc_msgSend_setError_(v12, v14, v9);
  }

  else
  {
    v17 = objc_msgSend_objectForKeyedSubscript_(*(*(*(a1 + 40) + 8) + 40), v11, v8);
    if (!v17)
    {
      v32 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v15, v16);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v32, v33, *(a1 + 64), *(a1 + 32), @"CKDRepairAssetsOperation.m", 164, @"recordIDToUUID can never produce a nil value here");
    }

    v18 = objc_msgSend_assetOrPackageUUIDToOriginalRecord(v12, v15, v16);
    objc_msgSend_setObject_forKeyedSubscript_(v18, v19, v7, v17);
  }

  v20 = *MEMORY[0x277D85DE8];
}

void sub_2251B6B38(void **a1)
{
  v58 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  v3 = objc_loadWeakRetained(a1 + 6);
  v6 = objc_msgSend_error(v3, v4, v5);

  v7 = *MEMORY[0x277CBC878];
  v8 = *MEMORY[0x277CBC880];
  if (v6)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v7);
    }

    v9 = *MEMORY[0x277CBC838];
    if (os_log_type_enabled(*MEMORY[0x277CBC838], OS_LOG_TYPE_ERROR))
    {
      v20 = v9;
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      v25 = objc_msgSend_ckShortDescription(v3, v23, v24);
      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      v30 = objc_msgSend_ckShortDescription(WeakRetained, v28, v29);
      v33 = objc_msgSend_error(v3, v31, v32);
      v44 = 138544898;
      v45 = v22;
      v46 = 2048;
      v47 = v3;
      v48 = 2114;
      v49 = v25;
      v50 = 2114;
      v51 = v27;
      v52 = 2048;
      v53 = WeakRetained;
      v54 = 2114;
      v55 = v30;
      v56 = 2112;
      v57 = v33;
      _os_log_error_impl(&dword_22506F000, v20, OS_LOG_TYPE_ERROR, "Repair records sub-operation <%{public}@: %p; %{public}@> for operation <%{public}@: %p; %{public}@> completed fetch original records with error %@", &v44, 0x48u);
    }

    v12 = objc_msgSend_error(v3, v10, v11);
    objc_msgSend_setError_(WeakRetained, v13, v12);
    goto LABEL_7;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], v7);
  }

  v15 = *MEMORY[0x277CBC838];
  if (os_log_type_enabled(*MEMORY[0x277CBC838], OS_LOG_TYPE_DEBUG))
  {
    v12 = v15;
    v34 = objc_opt_class();
    v35 = NSStringFromClass(v34);
    v38 = objc_msgSend_ckShortDescription(v3, v36, v37);
    v39 = objc_opt_class();
    v40 = NSStringFromClass(v39);
    v43 = objc_msgSend_ckShortDescription(WeakRetained, v41, v42);
    v44 = 138544642;
    v45 = v35;
    v46 = 2048;
    v47 = v3;
    v48 = 2114;
    v49 = v38;
    v50 = 2114;
    v51 = v40;
    v52 = 2048;
    v53 = WeakRetained;
    v54 = 2114;
    v55 = v43;
    _os_log_debug_impl(&dword_22506F000, v12, OS_LOG_TYPE_DEBUG, "Repair records sub-operation <%{public}@: %p; %{public}@> for operation <%{public}@: %p; %{public}@> completed fetch original records", &v44, 0x3Eu);

LABEL_7:
  }

  objc_msgSend_setFetchOperation_(WeakRetained, v14, 0);
  v18 = objc_msgSend_stateTransitionGroup(a1[4], v16, v17);
  dispatch_group_leave(v18);

  v19 = *MEMORY[0x277D85DE8];
}

void sub_2251B75DC(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, *(a1 + 32));
  objc_initWeak(&from, v3);
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x3032000000;
  v25[3] = sub_225073FE0;
  v25[4] = sub_22507357C;
  v26 = objc_opt_new();
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x3032000000;
  v23[3] = sub_225073FE0;
  v23[4] = sub_22507357C;
  v24 = objc_opt_new();
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_2251B790C;
  v21[3] = &unk_278547718;
  objc_copyWeak(&v22, &location);
  objc_msgSend_setSaveProgressBlock_(v3, v4, v21);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_2251B7A5C;
  v18[3] = &unk_278548D50;
  objc_copyWeak(&v19, &location);
  objc_copyWeak(v20, &from);
  v5 = *(a1 + 40);
  v18[4] = *(a1 + 32);
  v18[5] = v23;
  v20[1] = v5;
  v18[6] = v25;
  objc_msgSend_setSaveCompletionBlock_(v3, v6, v18);
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = sub_2251B7ED0;
  v12 = &unk_278548D78;
  objc_copyWeak(&v16, &location);
  objc_copyWeak(&v17, &from);
  v14 = v23;
  v15 = v25;
  v13 = *(a1 + 32);
  objc_msgSend_setCompletionBlock_(v3, v7, &v9);
  objc_msgSend_setUploadOperation_(*(a1 + 32), v8, v3, v9, v10, v11, v12);
  objc_destroyWeak(&v17);
  objc_destroyWeak(&v16);
  objc_destroyWeak(v20);
  objc_destroyWeak(&v19);
  objc_destroyWeak(&v22);
  _Block_object_dispose(v23, 8);

  _Block_object_dispose(v25, 8);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void sub_2251B788C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  objc_destroyWeak((v35 + 64));
  objc_destroyWeak((v35 + 56));
  objc_destroyWeak((v34 + 64));
  objc_destroyWeak((v34 + 56));
  objc_destroyWeak((v33 + 32));
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v36 - 144), 8);
  objc_destroyWeak((v36 - 96));
  objc_destroyWeak((v36 - 88));
  _Unwind_Resume(a1);
}

void sub_2251B790C(uint64_t a1, void *a2, double a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = objc_msgSend_recordName(v5, v7, v8);

  v12 = objc_msgSend_UUIDToAssetOrPackage(WeakRetained, v10, v11);
  v14 = objc_msgSend_objectForKeyedSubscript_(v12, v13, v9);

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v15 = *MEMORY[0x277CBC838];
  if (os_log_type_enabled(*MEMORY[0x277CBC838], OS_LOG_TYPE_DEBUG))
  {
    v17 = 138412546;
    v18 = v14;
    v19 = 2048;
    v20 = a3;
    _os_log_debug_impl(&dword_22506F000, v15, OS_LOG_TYPE_DEBUG, "Progress for upload of repaired asset %@: %.2f", &v17, 0x16u);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void sub_2251B7A5C(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v61 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v51 = a3;
  v10 = a4;
  v11 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v13 = objc_loadWeakRetained((a1 + 64));
  v16 = objc_msgSend_recordName(v9, v14, v15);
  v19 = objc_msgSend_UUIDToAssetOrPackage(WeakRetained, v17, v18);
  v21 = objc_msgSend_objectForKeyedSubscript_(v19, v20, v16);

  if (!v21)
  {
    v46 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v22, v23);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v46, v47, *(a1 + 72), *(a1 + 32), @"CKDRepairAssetsOperation.m", 280, @"Expected non-nil asset or package in %@", v13);
  }

  v24 = objc_msgSend_assetOrPackageUUIDToMetadata(WeakRetained, v22, v23);
  v26 = objc_msgSend_objectForKeyedSubscript_(v24, v25, v16);

  if (!v26)
  {
    v48 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v27, v28);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v48, v49, *(a1 + 72), *(a1 + 32), @"CKDRepairAssetsOperation.m", 282, @"Expected non-nil metadata for asset or package %@ in %@", v21, v13);
  }

  v29 = *MEMORY[0x277CBC878];
  v30 = *MEMORY[0x277CBC880];
  if (v11)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v29);
    }

    v31 = *MEMORY[0x277CBC838];
    if (os_log_type_enabled(*MEMORY[0x277CBC838], OS_LOG_TYPE_ERROR))
    {
      log = v31;
      v45 = objc_msgSend_operationID(WeakRetained, v43, v44);
      *buf = 138412802;
      v56 = v21;
      v57 = 2114;
      v58 = v45;
      v59 = 2112;
      v60 = v11;
      _os_log_error_impl(&dword_22506F000, log, OS_LOG_TYPE_ERROR, "Failed to upload asset or package %@ with operation %{public}@: %@", buf, 0x20u);
    }

    v32 = *(*(*(a1 + 40) + 8) + 40);
    objc_sync_enter(v32);
    objc_msgSend_setObject_forKeyedSubscript_(*(*(*(a1 + 40) + 8) + 40), v33, v11, v16);
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v29);
    }

    v34 = *MEMORY[0x277CBC838];
    if (os_log_type_enabled(*MEMORY[0x277CBC838], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v56 = v21;
      _os_log_debug_impl(&dword_22506F000, v34, OS_LOG_TYPE_DEBUG, "Successfully uploaded asset or package %@", buf, 0xCu);
    }

    v32 = *(*(*(a1 + 48) + 8) + 40);
    objc_sync_enter(v32);
    objc_msgSend_addObject_(*(*(*(a1 + 48) + 8) + 40), v35, v16);
  }

  objc_sync_exit(v32);

  v38 = objc_msgSend_assetOrPackageRepairedBlock(WeakRetained, v36, v37);

  if (v38)
  {
    v41 = objc_msgSend_callbackQueue(WeakRetained, v39, v40);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2251B7E74;
    block[3] = &unk_278546990;
    block[4] = WeakRetained;
    v53 = v26;
    v54 = v11;
    dispatch_async(v41, block);
  }

  v42 = *MEMORY[0x277D85DE8];
}

void sub_2251B7E74(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_assetOrPackageRepairedBlock(*(a1 + 32), a2, a3);
  (*(v4 + 2))(v4, *(a1 + 40), *(a1 + 48));
}

void sub_2251B7ED0(uint64_t a1)
{
  v60 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = objc_loadWeakRetained((a1 + 64));
  v6 = objc_msgSend_error(v3, v4, v5);

  v7 = *MEMORY[0x277CBC878];
  v8 = *MEMORY[0x277CBC880];
  if (v6)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v7);
    }

    v9 = *MEMORY[0x277CBC838];
    if (os_log_type_enabled(*MEMORY[0x277CBC838], OS_LOG_TYPE_ERROR))
    {
      v22 = v9;
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      v27 = objc_msgSend_ckShortDescription(v3, v25, v26);
      v28 = objc_opt_class();
      v29 = NSStringFromClass(v28);
      v32 = objc_msgSend_ckShortDescription(WeakRetained, v30, v31);
      v35 = objc_msgSend_error(v3, v33, v34);
      v46 = 138544898;
      v47 = v24;
      v48 = 2048;
      v49 = v3;
      v50 = 2114;
      v51 = v27;
      v52 = 2114;
      v53 = v29;
      v54 = 2048;
      v55 = WeakRetained;
      v56 = 2114;
      v57 = v32;
      v58 = 2112;
      v59 = v35;
      _os_log_error_impl(&dword_22506F000, v22, OS_LOG_TYPE_ERROR, "Repair records sub-operation <%{public}@: %p; %{public}@> for operation <%{public}@: %p; %{public}@> finished with error %@", &v46, 0x48u);
    }

    v12 = objc_msgSend_error(v3, v10, v11);
    objc_msgSend_setError_(WeakRetained, v13, v12);
    goto LABEL_7;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], v7);
  }

  v15 = *MEMORY[0x277CBC838];
  if (os_log_type_enabled(*MEMORY[0x277CBC838], OS_LOG_TYPE_DEBUG))
  {
    v12 = v15;
    v36 = objc_opt_class();
    v37 = NSStringFromClass(v36);
    v40 = objc_msgSend_ckShortDescription(v3, v38, v39);
    v41 = objc_opt_class();
    v42 = NSStringFromClass(v41);
    v45 = objc_msgSend_ckShortDescription(WeakRetained, v43, v44);
    v46 = 138544642;
    v47 = v37;
    v48 = 2048;
    v49 = v3;
    v50 = 2114;
    v51 = v40;
    v52 = 2114;
    v53 = v42;
    v54 = 2048;
    v55 = WeakRetained;
    v56 = 2114;
    v57 = v45;
    _os_log_debug_impl(&dword_22506F000, v12, OS_LOG_TYPE_DEBUG, "Repair records sub-operation <%{public}@: %p; %{public}@> for operation <%{public}@: %p; %{public}@> succeeded", &v46, 0x3Eu);

LABEL_7:
  }

  objc_msgSend_setAssetOrPackageUUIDToUploadError_(WeakRetained, v14, *(*(*(a1 + 40) + 8) + 40));
  objc_msgSend_setUploadedAssetOrPackageUUIDs_(WeakRetained, v16, *(*(*(a1 + 48) + 8) + 40));
  objc_msgSend_setUploadOperation_(WeakRetained, v17, 0);
  v20 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v18, v19);
  dispatch_group_leave(v20);

  v21 = *MEMORY[0x277D85DE8];
}

void sub_2251B8C04(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, *(a1 + 32));
  objc_initWeak(&from, v3);
  objc_msgSend_setUseEncryption_(v3, v4, 0);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2251B8D40;
  v7[3] = &unk_278548AD0;
  objc_copyWeak(&v8, &location);
  objc_copyWeak(&v9, &from);
  v7[4] = *(a1 + 32);
  objc_msgSend_setCompletionBlock_(v3, v5, v7);
  objc_msgSend_setUpdateOperation_(*(a1 + 32), v6, v3);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void sub_2251B8D08(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_2251B8D40(void **a1)
{
  v58 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  v3 = objc_loadWeakRetained(a1 + 6);
  v6 = objc_msgSend_error(v3, v4, v5);

  v7 = *MEMORY[0x277CBC878];
  v8 = *MEMORY[0x277CBC880];
  if (v6)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v7);
    }

    v9 = *MEMORY[0x277CBC838];
    if (os_log_type_enabled(*MEMORY[0x277CBC838], OS_LOG_TYPE_ERROR))
    {
      v20 = v9;
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      v25 = objc_msgSend_ckShortDescription(v3, v23, v24);
      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      v30 = objc_msgSend_ckShortDescription(WeakRetained, v28, v29);
      v33 = objc_msgSend_error(v3, v31, v32);
      v44 = 138544898;
      v45 = v22;
      v46 = 2048;
      v47 = v3;
      v48 = 2114;
      v49 = v25;
      v50 = 2114;
      v51 = v27;
      v52 = 2048;
      v53 = WeakRetained;
      v54 = 2114;
      v55 = v30;
      v56 = 2112;
      v57 = v33;
      _os_log_error_impl(&dword_22506F000, v20, OS_LOG_TYPE_ERROR, "Repair asset sub-operation <%{public}@: %p; %{public}@> for operation <%{public}@: %p; %{public}@> completed repair record update with error %@", &v44, 0x48u);
    }

    v12 = objc_msgSend_error(v3, v10, v11);
    objc_msgSend_setError_(WeakRetained, v13, v12);
    goto LABEL_7;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], v7);
  }

  v15 = *MEMORY[0x277CBC838];
  if (os_log_type_enabled(*MEMORY[0x277CBC838], OS_LOG_TYPE_DEBUG))
  {
    v12 = v15;
    v34 = objc_opt_class();
    v35 = NSStringFromClass(v34);
    v38 = objc_msgSend_ckShortDescription(v3, v36, v37);
    v39 = objc_opt_class();
    v40 = NSStringFromClass(v39);
    v43 = objc_msgSend_ckShortDescription(WeakRetained, v41, v42);
    v44 = 138544642;
    v45 = v35;
    v46 = 2048;
    v47 = v3;
    v48 = 2114;
    v49 = v38;
    v50 = 2114;
    v51 = v40;
    v52 = 2048;
    v53 = WeakRetained;
    v54 = 2114;
    v55 = v43;
    _os_log_debug_impl(&dword_22506F000, v12, OS_LOG_TYPE_DEBUG, "Repair asset sub-operation <%{public}@: %p; %{public}@> for operaiton <%{public}@: %p; %{public}@> completed repair record update", &v44, 0x3Eu);

LABEL_7:
  }

  objc_msgSend_setUpdateOperation_(WeakRetained, v14, 0);
  v18 = objc_msgSend_stateTransitionGroup(a1[4], v16, v17);
  dispatch_group_leave(v18);

  v19 = *MEMORY[0x277D85DE8];
}

void sub_2251B9D94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, id a16)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a16);
  _Unwind_Resume(a1);
}

void sub_2251B9DCC(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v5 = MEMORY[0x277CBC838];
  v6 = *MEMORY[0x277CBC838];
  if (os_log_type_enabled(*MEMORY[0x277CBC838], OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v23) = 0;
    _os_log_debug_impl(&dword_22506F000, v6, OS_LOG_TYPE_DEBUG, "Completed updating missing asset status", &v23, 2u);
  }

  v9 = objc_msgSend_error(v3, v7, v8);

  if (v9)
  {
    if (*v4 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v12 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_INFO))
    {
      v15 = v12;
      v18 = objc_msgSend_error(v3, v16, v17);
      v23 = 138412290;
      v24 = v18;
      _os_log_impl(&dword_22506F000, v15, OS_LOG_TYPE_INFO, "Error updating missing asset status: %@", &v23, 0xCu);
    }

    v19 = objc_msgSend_error(v3, v13, v14);
    objc_msgSend_setError_(WeakRetained, v20, v19);
  }

  v21 = objc_msgSend_stateTransitionGroup(WeakRetained, v10, v11);
  dispatch_group_leave(v21);

  v22 = *MEMORY[0x277D85DE8];
}

id sub_2251BA2A0(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (objc_msgSend_isReference(a1, v5, v6))
  {
    objc_msgSend__prepareReferenceAssetForUpload_(v4, v7, a1);
  }

  else
  {
    objc_msgSend__prepareAssetForUpload_(v4, v7, a1);
  }
  v8 = ;

  return v8;
}

id sub_2251BA690(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = objc_msgSend_allMMCSItems(a2, a2, a3);
  v5 = objc_msgSend_CKMap_(v3, v4, &unk_28385D480);

  return v5;
}

id sub_2251BA6E8(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = a2;
  v6 = objc_msgSend_itemID(v3, v4, v5);
  objc_msgSend_progress(v3, v7, v8);
  v10 = v9;
  v13 = objc_msgSend_signature(v3, v11, v12);
  if (objc_msgSend_finished(v3, v14, v15))
  {
    objc_msgSend_stringWithFormat_(v2, v16, @"<CKDMMCSItem %p itemID: %lu, progress %0.2f, signature: %@ %@>", v3, v6, v10, v13, @"finished");
  }

  else
  {
    objc_msgSend_stringWithFormat_(v2, v16, @"<CKDMMCSItem %p itemID: %lu, progress %0.2f, signature: %@ %@>", v3, v6, v10, v13, &stru_28385ED00);
  }
  v17 = ;

  return v17;
}

void sub_2251BAB4C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_uploadPreparationBlock(*(a1 + 32), a2, a3);

  if (v4)
  {
    v7 = objc_msgSend_uploadPreparationBlock(*(a1 + 32), v5, v6);
    v7[2](v7, *(a1 + 40));
  }
}

void sub_2251BACDC(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_uploadProgressBlock(*(a1 + 32), a2, a3);

  if (v4)
  {
    v7 = objc_msgSend_uploadProgressBlock(*(a1 + 32), v5, v6);
    v7[2](v7, *(a1 + 40), *(a1 + 48));
  }
}

void sub_2251BAEE0(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_uploadCompletionBlock(*(a1 + 32), a2, a3);

  if (v4)
  {
    v7 = objc_msgSend_uploadCompletionBlock(*(a1 + 32), v5, v6);
    (*(v7 + 2))(v7, *(a1 + 40), *(a1 + 48));
  }
}

id sub_2251BBE00(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [CKDMMCSItem alloc];
  v5 = *(a1 + 32);
  v8 = objc_msgSend_temporary(*(a1 + 40), v6, v7);
  v10 = objc_msgSend_initWithPackage_temporary_(v4, v9, v5, v8);
  v13 = objc_msgSend_UUID(*(a1 + 32), v11, v12);
  objc_msgSend_setTrackingUUID_(v10, v14, v13);

  v17 = objc_msgSend_fileURL(v3, v15, v16);
  objc_msgSend_setFileURL_(v10, v18, v17);

  v21 = objc_msgSend_fileID(v3, v19, v20);
  objc_msgSend_setFileID_(v10, v22, v21);

  v25 = objc_msgSend_generationID(v3, v23, v24);
  objc_msgSend_setGenerationID_(v10, v26, v25);

  v29 = objc_msgSend_deviceID(v3, v27, v28);
  objc_msgSend_setDeviceID_(v10, v30, v29);

  v33 = objc_msgSend_itemTypeHint(v3, v31, v32);
  objc_msgSend_setItemTypeHint_(v10, v34, v33);

  v37 = objc_msgSend_packageIndex(v3, v35, v36);
  objc_msgSend_setPackageIndex_(v10, v38, v37);

  return v10;
}

intptr_t sub_2251BBF50(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = objc_msgSend_error(a2, a2, a3);
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *(a1 + 32);

  return dispatch_semaphore_signal(v7);
}

void sub_2251BC9E0(uint64_t a1, const char *a2, uint64_t a3)
{
  if (a3)
  {
    objc_msgSend_setError_(*(a1 + 32), a2, a3);
  }

  v4 = objc_msgSend_stateTransitionGroup(*(a1 + 32), a2, a3);
  dispatch_group_leave(v4);
}

void sub_2251BE618(void **a1, void *a2, uint64_t a3)
{
  v20 = objc_msgSend_error(a2, a2, a3);
  v6 = objc_msgSend_anyObject(a1[4], v4, v5);
  v9 = objc_msgSend_authPutRequest(v6, v7, v8);

  if (v9)
  {
    v12 = objc_msgSend_authPutRequest(v6, v10, v11);
    objc_msgSend_setAuthPutRequest_(a1[5], v13, v12);
  }

  objc_msgSend__didPrepareAssetBatch_error_(a1[6], v10, a1[5], v20);
  v16 = objc_msgSend_error(a1[6], v14, v15);

  if (!v16 && v20)
  {
    objc_msgSend_setError_(a1[6], v17, v20);
  }

  v19 = objc_msgSend_stateTransitionGroup(a1[6], v17, v18);
  dispatch_group_leave(v19);
}

void sub_2251BF828(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v4, v5);
  dispatch_group_enter(v6);

  objc_initWeak(&location, *(a1 + 32));
  objc_initWeak(&from, v3);
  objc_initWeak(&v12, *(a1 + 40));
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2251BF988;
  v8[3] = &unk_278548EA0;
  objc_copyWeak(&v9, &from);
  objc_copyWeak(&v10, &location);
  objc_copyWeak(&v11, &v12);
  objc_msgSend_setCompletionBlock_(v3, v7, v8);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void sub_2251BF94C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak(v16 + 6);
  objc_destroyWeak(v16 + 5);
  objc_destroyWeak(v16 + 4);
  objc_destroyWeak(&location);
  objc_destroyWeak((v17 - 48));
  objc_destroyWeak((v17 - 40));
  _Unwind_Resume(a1);
}

void sub_2251BF988(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  v3 = objc_loadWeakRetained(a1 + 5);
  v4 = objc_loadWeakRetained(a1 + 6);
  v7 = objc_msgSend_error(v3, v5, v6);

  if (!v7)
  {
    v10 = objc_msgSend_error(WeakRetained, v8, v9);
    objc_msgSend_setError_(v3, v11, v10);
  }

  v12 = objc_msgSend_error(WeakRetained, v8, v9);
  v20 = 0;
  UploadTokensForAssetTokenRequest_error_newError = objc_msgSend__didFetchUploadTokensForAssetTokenRequest_error_newError_(v3, v13, v4, v12, &v20);
  v15 = v20;

  if ((UploadTokensForAssetTokenRequest_error_newError & 1) == 0)
  {
    v18 = objc_msgSend_error(v3, v16, v17);

    if (!v18)
    {
      objc_msgSend_setError_(v3, v16, v15);
    }
  }

  v19 = objc_msgSend_stateTransitionGroup(v3, v16, v17);
  dispatch_group_leave(v19);
}

void sub_2251C09A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, id a41)
{
  objc_destroyWeak(&a41);
  objc_destroyWeak((v41 - 176));
  _Unwind_Resume(a1);
}

void sub_2251C09EC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [CKDMMCSItem alloc];
  v5 = *(a1 + 32);
  v8 = objc_msgSend_temporary(*(a1 + 40), v6, v7);
  v47 = objc_msgSend_initWithPackage_temporary_(v4, v9, v5, v8);
  v12 = objc_msgSend_UUID(*(a1 + 32), v10, v11);
  objc_msgSend_setTrackingUUID_(v47, v13, v12);

  v16 = objc_msgSend_itemID(v3, v14, v15);
  objc_msgSend_setItemID_(v47, v17, v16);
  v20 = objc_msgSend_fileURL(v3, v18, v19);
  objc_msgSend_setFileURL_(v47, v21, v20);

  v24 = objc_msgSend_deviceID(v3, v22, v23);
  objc_msgSend_setDeviceID_(v47, v25, v24);

  v28 = objc_msgSend_fileID(v3, v26, v27);
  objc_msgSend_setFileID_(v47, v29, v28);

  v32 = objc_msgSend_generationID(v3, v30, v31);
  objc_msgSend_setGenerationID_(v47, v33, v32);

  v36 = objc_msgSend_itemTypeHint(v3, v34, v35);
  objc_msgSend_setItemTypeHint_(v47, v37, v36);

  v40 = objc_msgSend_packageIndex(v3, v38, v39);
  objc_msgSend_setPackageIndex_(v47, v41, v40);
  v44 = objc_msgSend_size(v3, v42, v43);

  v46 = 48;
  if (!v44)
  {
    v46 = 56;
  }

  objc_msgSend_addObject_(*(a1 + v46), v45, v47);
}

void sub_2251C0B7C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  objc_msgSend__didMakeProgressForMMCSSectionItem_task_(WeakRetained, v4, v3, *(a1 + 32));
}

void sub_2251C0BDC(uint64_t a1, void *a2)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v6 = objc_msgSend_error(v3, v4, v5);
  v9 = objc_msgSend_sectionItems(*(a1 + 32), v7, v8);
  objc_msgSend_addObjectsFromArray_(v9, v10, *(a1 + 40));

  objc_msgSend__collectMetricsFromCompletedItemGroup_(*(a1 + 48), v11, v3);
  v12 = *(a1 + 48);
  v17[0] = *(a1 + 32);
  v14 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v13, v17, 1);
  objc_msgSend__didUploadMMCSSectionItems_task_error_(v12, v15, v14, *(a1 + 56), v6);

  dispatch_group_leave(*(a1 + 64));
  v16 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2251C0CC4(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_cancelTokens(*(a1 + 32), a2, a3);
  objc_msgSend_removeCancelToken_(v4, v5, *(a1 + 40));

  result = *(a1 + 48);
  if (result)
  {
    v7 = *(result + 16);

    return v7();
  }

  return result;
}

uint64_t sub_2251C1368(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_2251C157C(uint64_t a1, const char *a2)
{
  v46 = *MEMORY[0x277D85DE8];
  objc_msgSend_removeObjectsInArray_(*(a1 + 32), a2, *(a1 + 40));
  v5 = objc_msgSend_maxPackageUploadsPerBatch(*(a1 + 48), v3, v4);
  v6 = objc_alloc(MEMORY[0x277CBEB18]);
  v9 = objc_msgSend_count(*(a1 + 32), v7, v8);
  if (v5 >= v5 - v9)
  {
    v11 = objc_msgSend_initWithCapacity_(v6, v10, v5 - v9);
  }

  else
  {
    v11 = objc_msgSend_initWithCapacity_(v6, v10, v5);
  }

  v14 = v11;
  v15 = objc_msgSend_objectEnumerator(*(a1 + 56), v12, v13);
  v18 = objc_msgSend_count(*(a1 + 32), v16, v17);
  v21 = v5 - v18;
  if (v5 > v18)
  {
    do
    {
      v22 = objc_msgSend_nextObject(v15, v19, v20);
      if (!v22)
      {
        break;
      }

      v23 = v22;
      objc_msgSend_addObject_(v14, v19, v22);

      --v21;
    }

    while (v21);
  }

  v37 = v15;
  objc_msgSend_removeObjectsInArray_(*(a1 + 56), v19, v14);
  objc_msgSend_addObjectsFromArray_(*(a1 + 32), v24, v14);
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v25 = v14;
  v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v26, &v41, v45, 16);
  if (v27)
  {
    v30 = v27;
    v31 = *v42;
    do
    {
      v32 = 0;
      do
      {
        if (*v42 != v31)
        {
          objc_enumerationMutation(v25);
        }

        v33 = *(*(&v41 + 1) + 8 * v32);
        objc_msgSend_qualityOfService(*(a1 + 48), v28, v29);
        v34 = CKGetGlobalQueue();
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_2251C17CC;
        block[3] = &unk_2785463D0;
        v35 = *(a1 + 56);
        block[4] = *(a1 + 48);
        block[5] = v33;
        v39 = v35;
        v40 = *(a1 + 32);
        dispatch_async(v34, block);

        ++v32;
      }

      while (v30 != v32);
      v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v28, &v41, v45, 16);
    }

    while (v30);
  }

  v36 = *MEMORY[0x277D85DE8];
}

void sub_2251C17CC(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_cancelTokens(*(a1 + 32), a2, a3);
  objc_msgSend_addCancelToken_withOperation_(v4, v5, *(a1 + 40), *(a1 + 32));

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2251C18A0;
  v11[3] = &unk_2785463D0;
  v10 = *(a1 + 32);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  v12 = v10;
  v13 = v8;
  objc_msgSend__uploadPackageSectionsWithTask_completionBlock_(v10, v9, *(&v10 + 1), v11);
}

void sub_2251C18A0(uint64_t a1, const char *a2, uint64_t a3)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_cancelTokens(*(a1 + 32), a2, a3);
  objc_msgSend_removeCancelToken_(v4, v5, *(a1 + 40));

  v8 = objc_msgSend_cancelTokens(*(a1 + 40), v6, v7);
  objc_msgSend_removeAllCancelTokens(v8, v9, v10);

  v13 = objc_msgSend_group(*(a1 + 40), v11, v12);
  dispatch_group_leave(v13);

  v14 = *(a1 + 48);
  v15 = *(a1 + 56);
  v16 = *(a1 + 32);
  v21[0] = *(a1 + 40);
  v18 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v17, v21, 1);
  objc_msgSend__uploadPackageSectionsWithPendingTasks_uploadingTasks_completedTasks_(v16, v19, v14, v15, v18);

  v20 = *MEMORY[0x277D85DE8];
}

void sub_2251C1DF4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  MMCSOperationMetricCombineMetrics();
  v12 = objc_msgSend_date(MEMORY[0x277CBEAA8], v4, v5);
  v8 = objc_msgSend_startDate(v3, v6, v7);
  objc_msgSend_timeIntervalSinceDate_(v12, v9, v8);
  objc_msgSend_setDuration_(v3, v10, v11);
}

void sub_2251C3740(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak(&STACK[0x570]);
  _Unwind_Resume(a1);
}

void sub_2251C3768(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_cancelTokens(*(a1 + 32), a2, a3);
  objc_msgSend_removeAllCancelTokens(v4, v5, v6);

  v9 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v7, v8);
  dispatch_group_leave(v9);
}

void sub_2251C37D0(uint64_t a1, const char *a2)
{
  objc_msgSend__didUploadPackageWithTask_(*(a1 + 32), a2, *(a1 + 40));
  v3 = *(a1 + 48);

  dispatch_group_leave(v3);
}

BOOL sub_2251C3810(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = objc_msgSend_uploadReceipt(a2, a2, a3);
  v4 = v3 != 0;

  return v4;
}

BOOL sub_2251C3848(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = objc_msgSend_uploadReceipt(a2, a2, a3);
  v4 = v3 == 0;

  return v4;
}

void sub_2251C3880(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend__didMakeProgressForMMCSItem_(WeakRetained, v4, v3);
}

void sub_2251C38DC(uint64_t a1, void *a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = a2;
  objc_msgSend__collectMetricsFromCompletedItemGroupSet_(*(a1 + 32), v4, v3);
  v7 = objc_msgSend_error(v3, v5, v6);
  v8 = *(a1 + 32);
  v11 = objc_msgSend_allMMCSItems(*(a1 + 40), v9, v10);
  objc_msgSend__didUploadMMCSItems_error_(v8, v12, v11, v7);

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v15 = objc_msgSend_allMMCSAndSectionItems(*(a1 + 40), v13, v14, 0);
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v33, v37, 16);
  if (v17)
  {
    v20 = v17;
    v21 = *v34;
    do
    {
      v22 = 0;
      do
      {
        if (*v34 != v21)
        {
          objc_enumerationMutation(v15);
        }

        v25 = objc_msgSend_package(*(*(&v33 + 1) + 8 * v22), v18, v19);
        if (v25)
        {
          v26 = objc_msgSend_uploadTasksByPackages(*(a1 + 32), v23, v24);
          v28 = objc_msgSend_objectForKey_(v26, v27, v25);

          v31 = objc_msgSend_group(v28, v29, v30);
          dispatch_group_leave(v31);
        }

        ++v22;
      }

      while (v20 != v22);
      v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v18, &v33, v37, 16);
    }

    while (v20);
  }

  dispatch_group_leave(*(a1 + 48));
  v32 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2251C42E4(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v8 = objc_msgSend_storageGroupingPolicy(v4, v6, v7);
  v11 = objc_msgSend_storageGroupingPolicy(v5, v9, v10);
  if (v8 < v11)
  {
    goto LABEL_2;
  }

  if (v11 < v8)
  {
    goto LABEL_4;
  }

  if (v8 != 1)
  {
    goto LABEL_10;
  }

  v15 = objc_msgSend_recordKey(v4, v12, v13);
  v18 = objc_msgSend_recordKey(v5, v16, v17);
  if (!v15 || (v20 = v18) == 0)
  {
    __assert_rtn("CKSortedForUpload_block_invoke", "CKDUploadAssetsOperation.m", 72, "key1 && key2");
  }

  v14 = objc_msgSend_compare_(v15, v19, v18);

  if (!v14)
  {
LABEL_10:
    v22 = objc_msgSend_uploadRank(v4, v12, v13);
    v25 = objc_msgSend_uploadRank(v5, v23, v24);
    if (v22 < v25)
    {
LABEL_2:
      v14 = -1;
      goto LABEL_9;
    }

    if (v25 < v22)
    {
LABEL_4:
      v14 = 1;
      goto LABEL_9;
    }

    if (v8 == 1)
    {
      goto LABEL_16;
    }

    v28 = objc_msgSend_recordKey(v4, v26, v27);
    v31 = objc_msgSend_recordKey(v5, v29, v30);
    if (!v28 || (v33 = v31) == 0)
    {
      __assert_rtn("CKSortedForUpload_block_invoke", "CKDUploadAssetsOperation.m", 92, "key1 && key2");
    }

    v14 = objc_msgSend_compare_(v28, v32, v31);

    if (!v14)
    {
LABEL_16:
      v34 = objc_msgSend_record(v4, v26, v27);
      v37 = objc_msgSend_recordID(v34, v35, v36);
      v40 = objc_msgSend_record(v5, v38, v39);
      v43 = objc_msgSend_recordID(v40, v41, v42);
      v14 = objc_msgSend_compareToRecordID_(v37, v44, v43);

      if (!v14)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          __assert_rtn("CKSortedForUpload_block_invoke", "CKDUploadAssetsOperation.m", 101, "[obj1 isKindOfClass:[CKAsset class]] && [obj2 isKindOfClass:[CKAsset class]]");
        }

        v47 = objc_msgSend_mergeableDeltaID(v4, v45, v46);
        v50 = objc_msgSend_deltaIdentifier(v47, v48, v49);

        v53 = objc_msgSend_mergeableDeltaID(v5, v51, v52);
        v56 = objc_msgSend_deltaIdentifier(v53, v54, v55);

        if (!v50 || !v56 || (v14 = objc_msgSend_compare_(v50, v57, v56)) == 0)
        {
          v59 = objc_msgSend_arrayIndex(v4, v57, v58);
          v62 = objc_msgSend_arrayIndex(v5, v60, v61);
          if ((v59 & 0x8000000000000000) != 0 || (v62 & 0x8000000000000000) != 0)
          {
            __assert_rtn("CKSortedForUpload_block_invoke", "CKDUploadAssetsOperation.m", 113, "0 <= index1 && 0 <= index2");
          }

          if (v59 < v62)
          {
            v14 = -1;
          }

          else
          {
            v14 = v62 < v59;
          }
        }
      }
    }
  }

LABEL_9:

  return v14;
}

void sub_2251C52C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id location)
{
  objc_destroyWeak((v31 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2251C52F4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = objc_msgSend_stateTransitionGroup(WeakRetained, v5, v6);
  dispatch_group_enter(v7);

  v8 = v3;
  objc_initWeak(&location, v8);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_2251C546C;
  v13[3] = &unk_278548FA8;
  objc_copyWeak(&v14, (a1 + 32));
  objc_msgSend_setSaveCompletionBlock_(v8, v9, v13);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2251C54D0;
  v11[3] = &unk_2785476F0;
  objc_copyWeak(&v12, &location);
  v11[4] = WeakRetained;
  objc_msgSend_setCompletionBlock_(v8, v10, v11);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void sub_2251C5440(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_2251C546C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a5)
  {
    v6 = a5;
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    objc_msgSend_setError_(WeakRetained, v7, v6);
  }
}

void sub_2251C54D0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = objc_msgSend_error(WeakRetained, v2, v3);

  if (v4)
  {
    v7 = objc_msgSend_error(WeakRetained, v5, v6);
    objc_msgSend_setError_(*(a1 + 32), v8, v7);
  }

  v9 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v5, v6);
  dispatch_group_leave(v9);
}

void sub_2251C57C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2251C57E4(uint64_t a1, void *a2)
{
  v25[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = objc_msgSend_stateTransitionGroup(WeakRetained, v5, v6);
  dispatch_group_enter(v7);

  v8 = v3;
  objc_initWeak(&location, v8);
  v25[0] = 0;
  v25[1] = 0;
  v11 = objc_msgSend_UUID(MEMORY[0x277CCAD78], v9, v10);
  objc_msgSend_getUUIDBytes_(v11, v12, v25);

  v14 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v13, v25, 16);
  objc_msgSend_setAttestationEntropy_(v8, v15, v14);

  objc_msgSend_setReplaceLocalSerializationsBlobs_(v8, v16, &unk_28385D520);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_2251C5A7C;
  v22[3] = &unk_278549018;
  objc_copyWeak(&v23, &location);
  v22[4] = WeakRetained;
  objc_msgSend_setInitialResponseReceivedCallback_(v8, v17, v22);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_2251C5E3C;
  v20[3] = &unk_2785476F0;
  objc_copyWeak(&v21, &location);
  v20[4] = WeakRetained;
  objc_msgSend_setCompletionBlock_(v8, v18, v20);
  objc_destroyWeak(&v21);
  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);

  v19 = *MEMORY[0x277D85DE8];
}

void sub_2251C59C0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 80));
  _Unwind_Resume(a1);
}

void sub_2251C5A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (**a5)(void, void, void))
{
  v6 = a5;
  v7 = objc_opt_new();
  (a5)[2](v6, v7, 0);
}

void sub_2251C5A7C(uint64_t a1, void *a2, void *a3)
{
  v84 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v10 = objc_msgSend_error(WeakRetained, v8, v9);

  if (v10)
  {
    v13 = objc_msgSend_error(WeakRetained, v11, v12);
    objc_msgSend_setError_(*(a1 + 32), v14, v13);
  }

  else
  {
    v16 = [CKDPCodeFunctionInvokeResponseAttestationResponse alloc];
    v18 = objc_msgSend_initWithData_(v16, v17, v5);
    v21 = objc_msgSend_attestations(v18, v19, v20);
    v24 = objc_msgSend_count(v21, v22, v23);

    if (!v24)
    {
      v71 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v25, *MEMORY[0x277CBC120], 9000, @"Did not receive attestation from server");
      v6[2](v6, 0, v71);

      goto LABEL_4;
    }

    v74 = WeakRetained;
    v75 = v6;
    v76 = v5;
    v26 = objc_alloc(MEMORY[0x277CBEB18]);
    v29 = objc_msgSend_attestations(v18, v27, v28);
    v32 = objc_msgSend_count(v29, v30, v31);
    v78 = objc_msgSend_initWithCapacity_(v26, v33, v32);

    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v73 = v18;
    obj = objc_msgSend_attestations(v18, v34, v35);
    v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v36, &v79, v83, 16);
    if (v37)
    {
      v38 = v37;
      v39 = *v80;
      do
      {
        for (i = 0; i != v38; ++i)
        {
          if (*v80 != v39)
          {
            objc_enumerationMutation(obj);
          }

          v41 = *(*(&v79 + 1) + 8 * i);
          v42 = [PCCAttestation alloc];
          v45 = objc_msgSend_pckCertificate(v41, v43, v44);
          v48 = objc_msgSend_appQuote(v41, v46, v47);
          v51 = objc_msgSend_aqeQuote(v41, v49, v50);
          v54 = objc_msgSend_routingToken(v41, v52, v53);
          v56 = objc_msgSend_initWithCertificate_applicationEnclaveQuote_quotingEnclaveQuote_routingToken_(v42, v55, v45, v48, v51, v54);

          v57 = [PCCWrappedKey alloc];
          v60 = objc_msgSend_pccKey(*(a1 + 32), v58, v59);
          v63 = objc_msgSend_permittedRemoteMeasurement(*(a1 + 32), v61, v62);
          v65 = objc_msgSend_initWithKey_permittedRemoteMeasurement_attestation_(v57, v64, v60, v63, v56);

          if (v65)
          {
            objc_msgSend_addObject_(v78, v66, v65);
          }
        }

        v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v67, &v79, v83, 16);
      }

      while (v38);
    }

    WeakRetained = v74;
    if (!objc_msgSend_count(v78, v68, v69))
    {
      v72 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v70, *MEMORY[0x277CBC120], 9001, @"Could not verify attestation using the permittedRemoteMeasurement provided");
      v6 = v75;
      v75[2](v75, 0, v72);

      v5 = v76;
      goto LABEL_4;
    }

    objc_msgSend_setPccWrappedKeys_(*(a1 + 32), v70, v78);

    v6 = v75;
    v5 = v76;
  }

  v6[2](v6, MEMORY[0x277CBEBF8], 0);
LABEL_4:

  v15 = *MEMORY[0x277D85DE8];
}

void sub_2251C5E3C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = objc_msgSend_error(WeakRetained, v2, v3);

  if (v4)
  {
    v7 = objc_msgSend_error(WeakRetained, v5, v6);
    objc_msgSend_setError_(*(a1 + 32), v8, v7);
  }

  v9 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v5, v6);
  dispatch_group_leave(v9);
}

void sub_2251C6068(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2251C608C(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, v3);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_2251C6180;
  v5[3] = &unk_278548AD0;
  objc_copyWeak(&v6, &location);
  objc_copyWeak(&v7, (a1 + 40));
  v5[4] = *(a1 + 32);
  objc_msgSend_setCompletionBlock_(v3, v4, v5);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void sub_2251C615C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_2251C6180(void **a1)
{
  v38 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  v3 = objc_loadWeakRetained(a1 + 6);
  v6 = objc_msgSend_transcodeServerPublicKey(WeakRetained, v4, v5);
  v9 = objc_msgSend_error(WeakRetained, v7, v8);

  if (v9 || !v6)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v24 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v27 = v24;
      v30 = objc_msgSend_error(WeakRetained, v28, v29);
      *buf = 138412290;
      v37 = v30;
      _os_log_impl(&dword_22506F000, v27, OS_LOG_TYPE_INFO, "Failed to fetch public key from trusted target: %@", buf, 0xCu);
    }
  }

  else
  {
    v12 = objc_msgSend_trustedTargetKey(a1[4], v10, v11);
    v15 = objc_msgSend_key(v12, v13, v14);
    v34 = 0;
    v35 = 0;
    v16 = CKEncryptWithPublicKey(v6, v15, 0, &v35, &v34);
    v17 = v35;
    v18 = v34;

    if (v16 && v17)
    {
      v20 = [CKDTrustedTargetWrappedKey alloc];
      v22 = objc_msgSend_initWithWrappedKey_publicKey_(v20, v21, v17, v6);
      objc_msgSend_setTrustedTargetWrappedKey_(a1[4], v23, v22);
    }

    else
    {
      v22 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v19, *MEMORY[0x277CBC120], 1000, v18, @"Failed to wrap invocation key");
      objc_msgSend_setError_(v3, v31, v22);
    }
  }

  v32 = objc_msgSend_stateTransitionGroup(v3, v25, v26);
  dispatch_group_leave(v32);

  v33 = *MEMORY[0x277D85DE8];
}

void sub_2251C6584(uint64_t a1, void *a2, void *a3)
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v8 = a3;
  v9 = MEMORY[0x277CBC880];
  v10 = MEMORY[0x277CBC830];
  if (v8)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v11 = *v10;
    if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
    {
      v40 = 138412290;
      v41 = v8;
      _os_log_error_impl(&dword_22506F000, v11, OS_LOG_TYPE_ERROR, "Error fetching configuration to check if we should send record keys: %@", &v40, 0xCu);
    }

    v14 = 0;
  }

  else
  {
    v15 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v6, v7);
    isAppleInternalInstall = objc_msgSend_isAppleInternalInstall(v15, v16, v17);

    if (isAppleInternalInstall)
    {
      if (*v9 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v21 = *v10;
      if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v40) = 0;
        _os_log_debug_impl(&dword_22506F000, v21, OS_LOG_TYPE_DEBUG, "Always sending record keys for internal installs", &v40, 2u);
      }

      v14 = 1;
    }

    else
    {
      v22 = objc_msgSend_containerID(*(a1 + 32), v19, v20);
      v14 = objc_msgSend_allowCloudMediaProcessingOffloadForGM_(v5, v23, v22);
    }
  }

  if (*MEMORY[0x277CBC810] == 1)
  {
    v24 = objc_msgSend_unitTestOverrides(*(a1 + 32), v12, v13);
    v26 = objc_msgSend_objectForKeyedSubscript_(v24, v25, @"AllowSendingRecordKeysForCMP");

    if (v26)
    {
      if (*v9 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v27 = *v10;
      if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEBUG))
      {
        v36 = v27;
        v39 = objc_msgSend_BOOLValue(v26, v37, v38);
        v40 = 67109120;
        LODWORD(v41) = v39;
        _os_log_debug_impl(&dword_22506F000, v36, OS_LOG_TYPE_DEBUG, "Overriding allowSendingRecordPCSKeys = %d", &v40, 8u);
      }

      v14 = objc_msgSend_BOOLValue(v26, v28, v29);
    }
  }

  if (*v9 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v30 = *v10;
  if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEBUG))
  {
    v40 = 67109120;
    LODWORD(v41) = v14;
    _os_log_debug_impl(&dword_22506F000, v30, OS_LOG_TYPE_DEBUG, "Setting shouldSendRecordPCSKeys = %d", &v40, 8u);
  }

  objc_msgSend_setShouldSendRecordPCSKeys_(*(a1 + 32), v31, v14);
  v34 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v32, v33);
  dispatch_group_leave(v34);

  v35 = *MEMORY[0x277D85DE8];
}

void sub_2251C6D4C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  dispatch_group_enter(*(a1 + 32));
  objc_initWeak(&location, *(a1 + 40));
  v8 = objc_msgSend_container(*(a1 + 40), v6, v7);
  v11 = objc_msgSend_pcsCache(v8, v9, v10);
  v14 = objc_msgSend_recordID(v5, v12, v13);
  v15 = *(a1 + 40);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_2251C6EC8;
  v18[3] = &unk_278549090;
  objc_copyWeak(v22, &location);
  v16 = v5;
  v19 = v16;
  v20 = *(a1 + 48);
  v22[1] = a3;
  v21 = *(a1 + 32);
  objc_msgSend_fetchPCSForRecordWithID_forOperation_options_withCompletionHandler_(v11, v17, v14, v15, 0, v18);

  objc_destroyWeak(v22);
  objc_destroyWeak(&location);
}

void sub_2251C6EA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2251C6EC8(uint64_t a1, void *a2, void *a3)
{
  v58 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v10 = objc_msgSend_pcs(v6, v8, v9);

  if (WeakRetained)
  {
    if (v5)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v11 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        v12 = *(a1 + 32);
        v13 = v11;
        v16 = objc_msgSend_recordID(v12, v14, v15);
        v54 = 138412546;
        v55 = v16;
        v56 = 2112;
        v57 = v5;
        _os_log_error_impl(&dword_22506F000, v13, OS_LOG_TYPE_ERROR, "Error fetching PCS data in secure compute operation for %@: %@", &v54, 0x16u);
        goto LABEL_25;
      }
    }

    else
    {
      if (v10)
      {
        v13 = PCSFPGetCurrentMasterKey();
        if (*MEMORY[0x277CBC810] == 1)
        {
          v20 = objc_msgSend_unitTestOverrides(WeakRetained, v18, v19);
          v22 = objc_msgSend_objectForKeyedSubscript_(v20, v21, @"SendFakeEncryptedMasterKeysInRecordTransports");
          v25 = objc_msgSend_BOOLValue(v22, v23, v24);

          if (v25)
          {
            v28 = objc_msgSend_UUID(MEMORY[0x277CCAD78], v26, v27);
            v31 = objc_msgSend_UUIDString(v28, v29, v30);
            v33 = objc_msgSend_dataUsingEncoding_(v31, v32, 4);

            v13 = v33;
          }
        }

        v34 = *MEMORY[0x277CBC878];
        v35 = *MEMORY[0x277CBC880];
        if (v13)
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], v34);
          }

          v36 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
          {
            v45 = *(a1 + 32);
            v46 = v36;
            v49 = objc_msgSend_recordID(v45, v47, v48);
            v54 = 138412290;
            v55 = v49;
            _os_log_debug_impl(&dword_22506F000, v46, OS_LOG_TYPE_DEBUG, "Setting master key on secure compute operation for %@", &v54, 0xCu);
          }

          v16 = objc_msgSend_encryptData_(WeakRetained, v37, v13);
          objc_msgSend_setObject_atIndexedSubscript_(*(a1 + 40), v38, v16, *(a1 + 64));
        }

        else
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], v34);
          }

          v43 = *MEMORY[0x277CBC830];
          if (!os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_29;
          }

          v50 = *(a1 + 32);
          v16 = v43;
          v53 = objc_msgSend_recordID(v50, v51, v52);
          v54 = 138412290;
          v55 = v53;
          _os_log_debug_impl(&dword_22506F000, v16, OS_LOG_TYPE_DEBUG, "Couldn't get master key in secure compute operation for %@", &v54, 0xCu);
        }

LABEL_25:

LABEL_29:
        goto LABEL_30;
      }

      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v39 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
      {
        v40 = *(a1 + 32);
        v13 = v39;
        v16 = objc_msgSend_recordID(v40, v41, v42);
        v54 = 138412290;
        v55 = v16;
        _os_log_impl(&dword_22506F000, v13, OS_LOG_TYPE_INFO, "No error, but also no PCS data during secure compute operation for record %@", &v54, 0xCu);
        goto LABEL_25;
      }
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v17 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      LOWORD(v54) = 0;
      _os_log_error_impl(&dword_22506F000, v17, OS_LOG_TYPE_ERROR, "We lost ourself trying to fetch PCS to get record keys for secure compute", &v54, 2u);
    }
  }

LABEL_30:
  dispatch_group_leave(*(a1 + 48));

  v44 = *MEMORY[0x277D85DE8];
}

void sub_2251C7344(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_pccKey(*(a1 + 32), a2, a3);
  objc_msgSend_clear(v4, v5, v6);

  objc_msgSend_setPccKey_(*(a1 + 32), v7, 0);
  v10 = objc_msgSend_replaceLocalSerializationsBlobs(*(a1 + 32), v8, v9);
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_2251C7408;
  v14[3] = &unk_2785490E0;
  v14[4] = *(a1 + 32);
  (v10)[2](v10, v11, v12, v13, v14);
}

void sub_2251C7408(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = a3;
  objc_msgSend_setSerializedArguments_(*(a1 + 32), v5, a2);
  if (v9)
  {
    objc_msgSend_setError_(*(a1 + 32), v6, v9);
  }

  v8 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v6, v7);
  dispatch_group_leave(v8);
}

void sub_2251C7744(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 96));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

void sub_2251C778C(uint64_t a1, void *a2, void *a3)
{
  v48 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = objc_loadWeakRetained((a1 + 40));
  v11 = objc_msgSend_translator(v8, v9, v10);
  objc_msgSend_setTranslator_(WeakRetained, v12, v11);

  v15 = objc_msgSend_code(v6, v13, v14);
  v16 = *MEMORY[0x277CBC878];
  v17 = *MEMORY[0x277CBC880];
  if (v15 == 1)
  {
    if (v17 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v16);
    }

    v18 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_22506F000, v18, OS_LOG_TYPE_DEBUG, "Function invocation completed", buf, 2u);
    }

    objc_msgSend_setSerializedResponse_(WeakRetained, v19, v5);
  }

  else
  {
    if (v17 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v16);
    }

    v45 = v5;
    v20 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v47 = v6;
      _os_log_debug_impl(&dword_22506F000, v20, OS_LOG_TYPE_DEBUG, "Error %@ when invoking function", buf, 0xCu);
    }

    v44 = MEMORY[0x277CBC560];
    v21 = *MEMORY[0x277CBC120];
    v22 = sub_2253962A4(v6);
    v25 = objc_msgSend_request(WeakRetained, v23, v24);
    v26 = sub_225395734(v25, v6);
    v29 = objc_msgSend_functionName(WeakRetained, v27, v28);
    v32 = objc_msgSend_serviceName(WeakRetained, v30, v31);
    v35 = objc_msgSend_error(v6, v33, v34);
    v38 = objc_msgSend_errorDescription(v35, v36, v37);
    v40 = objc_msgSend_errorWithDomain_code_userInfo_format_(v44, v39, v21, v22, v26, @"Error %@ when invoking function %@ on service %@: %@", v6, v29, v32, v38);

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v5 = v45;
    v41 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v47 = v40;
      _os_log_debug_impl(&dword_22506F000, v41, OS_LOG_TYPE_DEBUG, "Error %@", buf, 0xCu);
    }

    objc_msgSend_setError_(WeakRetained, v42, v40);
  }

  v43 = *MEMORY[0x277D85DE8];
}

void sub_2251C7ABC(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v6 = objc_msgSend_error(v3, v4, v5);
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v7 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    v10 = @" with error ";
    v11 = &stru_28385ED00;
    if (v6)
    {
      v11 = v6;
    }

    else
    {
      v10 = &stru_28385ED00;
    }

    v17 = 138543618;
    v18 = v10;
    v19 = 2112;
    v20 = v11;
    _os_log_impl(&dword_22506F000, v7, OS_LOG_TYPE_INFO, "CKCode Function invocation finished%{public}@%@", &v17, 0x16u);
  }

  v12 = objc_msgSend_error(WeakRetained, v8, v9);

  if (!v12)
  {
    objc_msgSend_setError_(WeakRetained, v13, v6);
  }

  v15 = objc_msgSend_stateTransitionGroup(WeakRetained, v13, v14);
  dispatch_group_leave(v15);

  v16 = *MEMORY[0x277D85DE8];
}

void sub_2251C7EB0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 80));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_2251C7EF8(uint64_t a1, void *a2, void *a3)
{
  v127 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = objc_loadWeakRetained((a1 + 40));
  v11 = objc_msgSend_translator(v8, v9, v10);
  objc_msgSend_setTranslator_(WeakRetained, v12, v11);

  hasCode = objc_msgSend_hasCode(v6, v13, v14);
  v16 = *MEMORY[0x277CBC878];
  v17 = *MEMORY[0x277CBC880];
  if (hasCode)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v16);
    }

    v18 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v126 = v6;
      _os_log_debug_impl(&dword_22506F000, v18, OS_LOG_TYPE_DEBUG, "Error %@ when invoking function", buf, 0xCu);
    }

    v21 = objc_msgSend_code(v6, v19, v20);
    v22 = 1000;
    if (v21 == 2)
    {
      v22 = 6000;
    }

    if (v21 == 1)
    {
      v22 = 1013;
    }

    v119 = v22;
    v23 = objc_opt_new();
    if (objc_msgSend_hasMessage(v6, v24, v25))
    {
      v28 = objc_msgSend_message(v6, v26, v27);
      objc_msgSend_setObject_forKeyedSubscript_(v23, v29, v28, @"ServerMessage");
    }

    if (objc_msgSend_hasAuxiliaryDomain(v6, v26, v27))
    {
      v32 = objc_msgSend_auxiliaryDomain(v6, v30, v31);
      if (!objc_msgSend_length(v32, v33, v34) || !objc_msgSend_hasAuxiliaryCode(v6, v35, v36))
      {
        goto LABEL_49;
      }

      v39 = objc_msgSend_auxiliaryCode(v6, v37, v38);

      if (v39)
      {
        if (!objc_msgSend_auxiliaryUserInfosCount(v6, v30, v31))
        {
          v32 = 0;
          goto LABEL_48;
        }

        v117 = v23;
        v118 = v5;
        v42 = objc_alloc(MEMORY[0x277CBEB38]);
        v45 = objc_msgSend_auxiliaryUserInfosCount(v6, v43, v44);
        v32 = objc_msgSend_initWithCapacity_(v42, v46, v45);
        v120 = 0u;
        v121 = 0u;
        v122 = 0u;
        v123 = 0u;
        v49 = objc_msgSend_auxiliaryUserInfos(v6, v47, v48);
        v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(v49, v50, &v120, v124, 16);
        if (!v51)
        {
          goto LABEL_39;
        }

        v54 = v51;
        v55 = *v121;
        while (1)
        {
          for (i = 0; i != v54; ++i)
          {
            if (*v121 != v55)
            {
              objc_enumerationMutation(v49);
            }

            v57 = *(*(&v120 + 1) + 8 * i);
            if (objc_msgSend_hasKey(v57, v52, v53))
            {
              v58 = objc_msgSend_key(v57, v52, v53);
              if (objc_msgSend_length(v58, v59, v60))
              {
                hasValue = objc_msgSend_hasValue(v57, v61, v62);

                if (!hasValue)
                {
                  continue;
                }

                v58 = objc_msgSend_value(v57, v52, v53);
                if (objc_msgSend_hasDoubleValue(v58, v64, v65))
                {
                  v68 = MEMORY[0x277CCABB0];
                  objc_msgSend_doubleValue(v58, v66, v67);
                  v71 = objc_msgSend_numberWithDouble_(v68, v69, v70);
                  goto LABEL_35;
                }

                if (objc_msgSend_hasInt64Value(v58, v66, v67))
                {
                  v76 = MEMORY[0x277CCABB0];
                  v77 = objc_msgSend_int64Value(v58, v74, v75);
                  v71 = objc_msgSend_numberWithInteger_(v76, v78, v77);
                  goto LABEL_35;
                }

                if (objc_msgSend_hasBoolValue(v58, v74, v75))
                {
                  v81 = MEMORY[0x277CCABB0];
                  v82 = objc_msgSend_BOOLValue(v58, v79, v80);
                  v71 = objc_msgSend_numberWithBool_(v81, v83, v82);
                  goto LABEL_35;
                }

                if (objc_msgSend_hasStringValue(v58, v79, v80))
                {
                  v71 = objc_msgSend_stringValue(v58, v84, v85);
                  goto LABEL_35;
                }

                if (objc_msgSend_hasBytesValue(v58, v84, v85))
                {
                  v71 = objc_msgSend_bytesValue(v58, v86, v87);
LABEL_35:
                  v88 = v71;
                  v89 = objc_msgSend_key(v57, v72, v73);
                  objc_msgSend_setObject_forKeyedSubscript_(v32, v90, v88, v89);
                }
              }

              continue;
            }
          }

          v54 = objc_msgSend_countByEnumeratingWithState_objects_count_(v49, v52, &v120, v124, 16);
          if (!v54)
          {
LABEL_39:

            if (!objc_msgSend_count(v32, v91, v92))
            {

              v32 = 0;
            }

            v23 = v117;
            v5 = v118;
LABEL_48:
            v95 = MEMORY[0x277CCA9B8];
            v96 = objc_msgSend_auxiliaryDomain(v6, v40, v41);
            v99 = objc_msgSend_auxiliaryCode(v6, v97, v98);
            v101 = objc_msgSend_errorWithDomain_code_userInfo_(v95, v100, v96, v99, v32);

            objc_msgSend_setObject_forKeyedSubscript_(v23, v102, v101, *MEMORY[0x277CCA7E8]);
            objc_msgSend_setObject_forKeyedSubscript_(v23, v103, v101, *MEMORY[0x277CBC130]);

LABEL_49:
            break;
          }
        }
      }
    }

    if (!objc_msgSend_count(v23, v30, v31))
    {

      v23 = 0;
    }

    v106 = MEMORY[0x277CBC560];
    v107 = *MEMORY[0x277CBC120];
    v108 = objc_msgSend_functionName(WeakRetained, v104, v105);
    v111 = objc_msgSend_serviceName(WeakRetained, v109, v110);
    v113 = objc_msgSend_errorWithDomain_code_userInfo_format_(v106, v112, v107, v119, v23, @"Error when locally invoking function %@ on service %@", v108, v111);

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v114 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v126 = v113;
      _os_log_debug_impl(&dword_22506F000, v114, OS_LOG_TYPE_DEBUG, "Error %@", buf, 0xCu);
    }

    objc_msgSend_setError_(WeakRetained, v115, v113);
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v16);
    }

    v93 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_22506F000, v93, OS_LOG_TYPE_DEBUG, "Function invocation completed", buf, 2u);
    }

    objc_msgSend_setSerializedResponse_(WeakRetained, v94, v5);
  }

  v116 = *MEMORY[0x277D85DE8];
}

void sub_2251C8514(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v6 = objc_msgSend_error(v3, v4, v5);
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v7 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    v10 = @" with error ";
    v11 = &stru_28385ED00;
    if (v6)
    {
      v11 = v6;
    }

    else
    {
      v10 = &stru_28385ED00;
    }

    v17 = 138543618;
    v18 = v10;
    v19 = 2112;
    v20 = v11;
    _os_log_impl(&dword_22506F000, v7, OS_LOG_TYPE_INFO, "CKCode Local Function invocation finished%{public}@%@", &v17, 0x16u);
  }

  v12 = objc_msgSend_error(WeakRetained, v8, v9);

  if (!v12)
  {
    objc_msgSend_setError_(WeakRetained, v13, v6);
  }

  v15 = objc_msgSend_stateTransitionGroup(WeakRetained, v13, v14);
  dispatch_group_leave(v15);

  v16 = *MEMORY[0x277D85DE8];
}

void sub_2251C87AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2251C87D0(void **a1, void *a2, void *a3)
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (v6)
  {
    objc_msgSend_setError_(a1[4], v7, v6);
  }

  else if (objc_msgSend_count(v5, v7, v8))
  {
    v32 = v5;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = v5;
    v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v11, &v35, v39, 16);
    if (v12)
    {
      v13 = v12;
      v14 = *v36;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v36 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v35 + 1) + 8 * i);
          v17 = [CKDPRecord alloc];
          v19 = objc_msgSend_initWithData_(v17, v18, v16);
          v22 = objc_msgSend_translator(WeakRetained, v20, v21);
          v34 = 0;
          v24 = objc_msgSend_recordFromPRecord_error_(v22, v23, v19, &v34);
          v25 = v34;

          if (!v24)
          {
            if (!v25)
            {
              v25 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v26, *MEMORY[0x277CBC120], 1017, @"Invalid pRecord: %@", v19);
            }

            objc_msgSend_setError_(a1[4], v26, v25);

            goto LABEL_16;
          }

          objc_msgSend_addObject_(a1[5], v26, v24);
        }

        v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v27, &v35, v39, 16);
        if (v13)
        {
          continue;
        }

        break;
      }
    }

LABEL_16:

    v5 = v32;
  }

  objc_msgSend_setResponseRecords_(a1[4], v10, a1[5]);
  v30 = objc_msgSend_stateTransitionGroup(a1[4], v28, v29);
  dispatch_group_leave(v30);

  v31 = *MEMORY[0x277D85DE8];
}

void sub_2251C8B1C(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = objc_msgSend_responseRecords(*(a1 + 32), v4, v5);
  objc_msgSend_setFullRecordsToFetch_(v3, v7, v6);

  objc_msgSend_setUseRecordCache_(v3, v8, 0);
  objc_initWeak(&location, *(a1 + 32));
  objc_initWeak(&from, v3);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_2251C8DC0;
  v20[3] = &unk_278547768;
  objc_copyWeak(&v22, &location);
  v21 = *(a1 + 40);
  objc_msgSend_setRecordFetchCompletionBlock_(v3, v9, v20);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_2251C8F08;
  v18[3] = &unk_278547718;
  objc_copyWeak(&v19, &location);
  objc_msgSend_setRecordFetchProgressBlock_(v3, v10, v18);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_2251C8FA4;
  v16[3] = &unk_278547AC8;
  objc_copyWeak(&v17, &location);
  objc_msgSend_setRecordFetchCommandBlock_(v3, v11, v16);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_2251C904C;
  v13[3] = &unk_278548748;
  objc_copyWeak(&v14, &location);
  objc_copyWeak(&v15, &from);
  objc_msgSend_setCompletionBlock_(v3, v12, v13);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&v17);
  objc_destroyWeak(&v19);

  objc_destroyWeak(&v22);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void sub_2251C8D64(_Unwind_Exception *a1)
{
  objc_destroyWeak((v4 + 40));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v5 - 80));
  objc_destroyWeak((v5 - 72));
  _Unwind_Resume(a1);
}

void sub_2251C8DC0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v25 = a2;
  v7 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v12 = objc_msgSend_container(WeakRetained, v10, v11);
  v15 = objc_msgSend_options(v12, v13, v14);
  if (objc_msgSend_returnPCSMetadata(v15, v16, v17))
  {
    v18 = CKIsPCSError();

    if ((v18 & 1) == 0)
    {
      objc_msgSend_fillOutPCSMetadataInfo(v25, v19, v20);
    }
  }

  else
  {
  }

  if (v25 && v7)
  {
    objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 32), v19, v25, v7);
  }

  if (v8)
  {
    objc_msgSend_setError_(WeakRetained, v19, v8);
  }

  v21 = objc_msgSend_recordFetchCompletionBlock(WeakRetained, v19, v20);

  if (v21)
  {
    v24 = objc_msgSend_recordFetchCompletionBlock(WeakRetained, v22, v23);
    (v24)[2](v24, v25, v7, v8);
  }
}

void sub_2251C8F08(uint64_t a1, void *a2, double a3)
{
  v12 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = objc_msgSend_recordFetchProgressBlock(WeakRetained, v6, v7);

  if (v8)
  {
    v11 = objc_msgSend_recordFetchProgressBlock(WeakRetained, v9, v10);
    (v11)[2](v11, v12, a3);
  }
}

void sub_2251C8FA4(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = objc_msgSend_recordFetchCommandBlock(WeakRetained, v7, v8);

  if (v9)
  {
    v12 = objc_msgSend_recordFetchCommandBlock(WeakRetained, v10, v11);
    (v12)[2](v12, v13, v5);
  }
}

void sub_2251C904C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  v5 = objc_msgSend_error(v2, v3, v4);

  if (v5)
  {
    v8 = objc_msgSend_error(v2, v6, v7);
    objc_msgSend_setError_(WeakRetained, v9, v8);
  }

  else
  {
    v8 = objc_msgSend_replaceWireSerializations(WeakRetained, v6, v7);
    v12 = objc_msgSend_responseRecords(WeakRetained, v10, v11);
    (v8)[2](v8, v12);
  }

  objc_msgSend_setResponseRecords_(WeakRetained, v13, 0);
  v16 = objc_msgSend_stateTransitionGroup(WeakRetained, v14, v15);
  dispatch_group_leave(v16);
}

id sub_2251CA1D4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_msgSend_needsEncryption(v3, v4, v5))
  {
    v10 = objc_msgSend_valueID(v3, v6, v7);
    if (!v10 && !*(*(*(a1 + 32) + 8) + 40))
    {
      v11 = objc_msgSend_errorWithDomain_code_userInfo_format_(MEMORY[0x277CBC560], v8, *MEMORY[0x277CBC120], 1017, 0, @"Unable to upload mergeable delta without a value ID");
      v12 = *(*(a1 + 32) + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;
    }

    v15 = objc_msgSend_recordID(v10, v8, v9);
    if (!v15 && !*(*(*(a1 + 32) + 8) + 40))
    {
      v16 = objc_msgSend_errorWithDomain_code_userInfo_format_(MEMORY[0x277CBC560], v14, *MEMORY[0x277CBC120], 1017, 0, @"Unable to upload mergeable delta without a record ID");
      v17 = *(*(a1 + 32) + 8);
      v18 = *(v17 + 40);
      *(v17 + 40) = v16;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

void sub_2251CA2F8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  dispatch_group_enter(*(a1 + 32));
  v9 = objc_msgSend_container(*(a1 + 40), v7, v8);
  v12 = objc_msgSend_pcsCache(v9, v10, v11);
  v13 = *(a1 + 40);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_2251CA438;
  v16[3] = &unk_2785491D8;
  objc_copyWeak(&v20, (a1 + 56));
  v19 = *(a1 + 48);
  v14 = v6;
  v17 = v14;
  v18 = *(a1 + 32);
  objc_msgSend_fetchPCSForRecordWithID_forOperation_options_withCompletionHandler_(v12, v15, v5, v13, 0, v16);

  objc_destroyWeak(&v20);
}

void sub_2251CA438(uint64_t a1, void *a2, void *a3)
{
  v66 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    if (v5)
    {
      v54 = v6;
      v8 = objc_alloc_init(CKDKeyEnvelopeContext);
      v55 = v5;
      v11 = objc_msgSend_pcs(v5, v9, v10);
      objc_msgSend_setShareProtection_(v8, v12, v11);
      v53 = WeakRetained;
      v15 = objc_msgSend_container(WeakRetained, v13, v14);
      v18 = objc_msgSend_options(v15, v16, v17);
      objc_msgSend_encryptMergeableValueMetadata(v18, v19, v20);

      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v21 = *(a1 + 32);
      v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v57, v65, 16);
      if (v23)
      {
        v26 = v23;
        v27 = *v58;
        while (2)
        {
          for (i = 0; i != v26; ++i)
          {
            if (*v58 != v27)
            {
              objc_enumerationMutation(v21);
            }

            v29 = *(*(&v57 + 1) + 8 * i);
            objc_msgSend_encryptMetadataTernary(v29, v24, v25);
            v30 = CKBoolFromCKTernaryWithDefault();
            objc_msgSend_setEncryptMergeableValueMetadata_(v8, v31, v30);
            v56 = 0;
            v33 = objc_msgSend_encryptWithContext_error_(v29, v32, v8, &v56);
            v34 = v56;
            v35 = v34;
            if ((v33 & 1) == 0)
            {
              if (*MEMORY[0x277CBC880] != -1)
              {
                dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
              }

              v36 = *MEMORY[0x277CBC840];
              if (os_log_type_enabled(*MEMORY[0x277CBC840], OS_LOG_TYPE_ERROR))
              {
                v46 = v36;
                v49 = objc_msgSend_metadata(v29, v47, v48);
                v52 = objc_msgSend_identifier(v49, v50, v51);
                *buf = 138412546;
                v62 = v52;
                v63 = 2112;
                v64 = v35;
                _os_log_error_impl(&dword_22506F000, v46, OS_LOG_TYPE_ERROR, "Failed to encrypt delta, %@, with error: %@", buf, 0x16u);
              }

              if (!*(*(*(a1 + 48) + 8) + 40))
              {
                v38 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v37, *MEMORY[0x277CBC120], 5004, v35, @"Failed to encrypt mergeable delta");
                v39 = *(*(a1 + 48) + 8);
                v40 = *(v39 + 40);
                *(v39 + 40) = v38;
              }

              goto LABEL_19;
            }
          }

          v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v24, &v57, v65, 16);
          if (v26)
          {
            continue;
          }

          break;
        }
      }

LABEL_19:

      v6 = v54;
      v5 = v55;
      WeakRetained = v53;
      goto LABEL_20;
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v41 = *MEMORY[0x277CBC840];
    if (os_log_type_enabled(*MEMORY[0x277CBC840], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v62 = v6;
      _os_log_error_impl(&dword_22506F000, v41, OS_LOG_TYPE_ERROR, "Error fetching PCS to encrypt deltas: %@", buf, 0xCu);
    }

    if (!*(*(*(a1 + 48) + 8) + 40))
    {
      v44 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v42, *MEMORY[0x277CBC120], 5001, v6, @"Failed to fetch PCS to encrypt mergeable delta");
      v45 = *(*(a1 + 48) + 8);
      v8 = *(v45 + 40);
      *(v45 + 40) = v44;
LABEL_20:
    }
  }

  dispatch_group_leave(*(a1 + 40));

  v43 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2251CA810(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v2 = *MEMORY[0x277CBC840];
  if (os_log_type_enabled(*MEMORY[0x277CBC840], OS_LOG_TYPE_DEBUG))
  {
    v5 = a1[4];
    v6 = v2;
    v9 = objc_msgSend_operationID(v5, v7, v8);
    v10 = 138543362;
    v11 = v9;
    _os_log_debug_impl(&dword_22506F000, v6, OS_LOG_TYPE_DEBUG, "Did encrypt mergeable deltas for operation %{public}@", &v10, 0xCu);
  }

  result = a1[5];
  if (result)
  {
    result = (*(result + 16))(result, *(*(a1[6] + 8) + 40));
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}