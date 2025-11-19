void __BRPerformWithPersonaAndErrorForURLIfAble_block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 personaIdentifier];
  (*(v2 + 16))(v2, v5, 1, 1, v4);
}

uint64_t BRCurrentPersonaIdentifierLoggingString()
{
  v0 = [MEMORY[0x1E69DF068] sharedManager];
  v1 = [v0 currentPersona];

  v2 = [v1 userPersonaUniqueString];
  if ([v1 isDataSeparatedPersona])
  {
    v3 = @"-enterprise";
  }

  else
  {
    v3 = @"-personal";
  }

  v4 = [v2 stringByAppendingString:v3];

  v5 = [v4 UTF8String];
  return v5;
}

id BRPersonaSpecificName(void *a1, uint64_t a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a1;
  v5 = [v3 stringWithFormat:@"-%@", a2];
  v6 = [v4 stringByAppendingString:v5];

  return v6;
}

id initCKCurrentUserDefaultName()
{
  v11 = *MEMORY[0x1E69E9840];
  v0 = CloudKitLibrary_frameworkLibrary_0;
  if (!CloudKitLibrary_frameworkLibrary_0)
  {
    v0 = dlopen("/System/Library/Frameworks/CloudKit.framework/CloudKit", 2);
    CloudKitLibrary_frameworkLibrary_0 = v0;
    if (!v0)
    {
      v1 = brc_bread_crumbs("CloudKitLibrary", 17);
      v2 = brc_default_log(1, 0);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 136315394;
        v8 = dlerror();
        v9 = 2112;
        v10 = v1;
        _os_log_impl(&dword_1AE2A9000, v2, OS_LOG_TYPE_DEFAULT, "[WARNING] Can't open CloudKit : %s%@", &v7, 0x16u);
      }

      v0 = CloudKitLibrary_frameworkLibrary_0;
    }
  }

  v3 = dlsym(v0, "CKCurrentUserDefaultName");
  if (!v3)
  {
    initCKCurrentUserDefaultName_cold_1();
  }

  objc_storeStrong(&constantCKCurrentUserDefaultName, *v3);
  getCKCurrentUserDefaultName = CKCurrentUserDefaultNameFunction;
  v4 = constantCKCurrentUserDefaultName;
  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

void OUTLINED_FUNCTION_5_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_fault_impl(a1, log, OS_LOG_TYPE_FAULT, a4, va, 0x16u);
}

id getHomeDirectoryForUser(uid_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
LABEL_14:
    v11 = 0;
    goto LABEL_15;
  }

  if (sysconf(71) == -1)
  {
    v8 = *__error();
    v9 = brc_bread_crumbs("getHomeDirectoryForUser", 147);
    v10 = brc_default_log(0, 0);
    if (os_log_type_enabled(v10, 0x90u))
    {
      getHomeDirectoryForUser_cold_2(v8);
    }

    goto LABEL_14;
  }

  v2 = MEMORY[0x1EEE9AC00]();
  memset(&v16, 0, sizeof(v16));
  v15 = 0;
  if (getpwuid_r(a1, &v16, &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v3, &v15))
  {
    v4 = 1;
  }

  else
  {
    v4 = v15 == 0;
  }

  if (v4)
  {
    v5 = *__error();
    v6 = brc_bread_crumbs("getHomeDirectoryForUser", 155);
    v7 = brc_default_log(0, 0);
    if (os_log_type_enabled(v7, 0x90u))
    {
      getHomeDirectoryForUser_cold_1(v5);
    }

    v11 = 0;
  }

  else
  {
    v11 = [MEMORY[0x1E696AEC0] br_pathWithFileSystemRepresentation:v16.pw_dir];
  }

LABEL_15:
  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

void sub_1AE2DE948(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, 0x90u, a4, &a9, 0x1Cu);
}

void BRFetchCollaborationIdentifierForItemWithIdentifier(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = brc_bread_crumbs("BRFetchCollaborationIdentifierForItemWithIdentifier", 24);
  v6 = brc_default_log(1, 0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    BRFetchCollaborationIdentifierForItemWithIdentifier_cold_1();
  }

  v7 = +[BRDaemonConnection defaultConnection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __BRFetchCollaborationIdentifierForItemWithIdentifier_block_invoke;
  v14[3] = &unk_1E7A148D0;
  v8 = v4;
  v15 = v8;
  v9 = [v7 remoteObjectProxyWithErrorHandler:v14];

  v10 = [BRFileObjectID fileObjectIDWithString:v3];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __BRFetchCollaborationIdentifierForItemWithIdentifier_block_invoke_2;
  v12[3] = &unk_1E7A155E0;
  v13 = v8;
  v11 = v8;
  [v9 copyCollaborationIdentifierForFileObjectID:v10 reply:v12];
}

void BRFetchCollaborationIdentifierForItemAtURL(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = brc_bread_crumbs("BRFetchCollaborationIdentifierForItemAtURL", 36);
  v4 = brc_default_log(0, 0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    BRFetchCollaborationIdentifierForItemAtURL_cold_1(v3, v4);
  }

  v5 = [MEMORY[0x1E696ABC0] br_errorWithDomain:@"BRInternalErrorDomain" code:15 description:@"unreachable: BRFetchCollaborationIdentifierForItemAtURL should not run when FPFS enabled"];
  v2[2](v2, 0, v5);
}

void BRFetchCKShareForItemAtURL(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = objc_alloc_init(MEMORY[0x1E696ADC8]);
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = __Block_byref_object_copy__5;
  v16[4] = __Block_byref_object_dispose__5;
  v17 = 0;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x3032000000;
  v14[3] = __Block_byref_object_copy__5;
  v14[4] = __Block_byref_object_dispose__5;
  v15 = 0;
  v6 = brc_bread_crumbs("BRFetchCKShareForItemAtURL", 45);
  v7 = brc_default_log(1, 0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    BRFetchCKShareForItemAtURL_cold_1();
  }

  v8 = [[BRShareCopyOperation alloc] initWithURL:v3];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __BRFetchCKShareForItemAtURL_block_invoke;
  v10[3] = &unk_1E7A15608;
  v12 = v14;
  v13 = v16;
  v9 = v4;
  v11 = v9;
  [(BRShareCopyOperation *)v8 setRootShareCopyCompletionBlock:v10];
  [v5 addOperation:v8];

  _Block_object_dispose(v14, 8);
  _Block_object_dispose(v16, 8);
}

void sub_1AE2DEEE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void __BRFetchCKShareForItemAtURL_block_invoke(void *a1, void *a2, void *a3, void *a4)
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (v8)
  {
    objc_storeStrong((*(a1[6] + 8) + 40), a2);
    v11 = brc_bread_crumbs("BRFetchCKShareForItemAtURL_block_invoke", 55);
    v12 = brc_default_log(1, 0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v20 = *(*(a1[6] + 8) + 40);
      v21 = 138412802;
      v22 = v20;
      v23 = 2112;
      v24 = v9;
      v25 = 2112;
      v26 = v11;
      _os_log_debug_impl(&dword_1AE2A9000, v12, OS_LOG_TYPE_DEBUG, "[DEBUG] fetched existing share %@, root share URL is %@%@", &v21, 0x20u);
    }
  }

  else
  {
    v13 = brc_bread_crumbs("BRFetchCKShareForItemAtURL_block_invoke", 51);
    v14 = brc_default_log(1, 0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      __BRFetchCKShareForItemAtURL_block_invoke_cold_1();
    }

    v15 = *(a1[5] + 8);
    v16 = v10;
    v11 = *(v15 + 40);
    *(v15 + 40) = v16;
  }

  v17 = *(*(a1[6] + 8) + 40);
  v18 = *(*(a1[5] + 8) + 40);
  (*(a1[4] + 16))();

  v19 = *MEMORY[0x1E69E9840];
}

void sub_1AE2DF394(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1AE2DF654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_1AE2DFFD8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_1AE2E03E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  _BRRestorePersona(va);
  _Unwind_Resume(a1);
}

void sub_1AE2E2024(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_1AE2E2538(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_1AE2E2B78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void dispatch_async_with_logs(void *a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = objc_autoreleasePoolPush();
  v18 = 0uLL;
  v19 = 0;
  __brc_create_section(0, "dispatch_async_with_logs", 283, 0, &v18);
  v6 = brc_bread_crumbs("dispatch_async_with_logs", 283);
  v7 = brc_default_log(1, 0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v11 = v18;
    label = dispatch_queue_get_label(v3);
    *buf = 134218498;
    *&buf[4] = v11;
    *&buf[12] = 2080;
    *&buf[14] = label;
    *&buf[22] = 2112;
    v21 = v6;
    _os_log_debug_impl(&dword_1AE2A9000, v7, OS_LOG_TYPE_DEBUG, "[DEBUG] ┣%llx dispatching to %s%@", buf, 0x20u);
  }

  *&buf[16] = v19;
  *buf = v18;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __dispatch_async_with_logs_block_invoke_0;
  v13[3] = &unk_1E7A14A30;
  v16 = v18;
  v17 = v19;
  v8 = v3;
  v14 = v8;
  v9 = v4;
  v15 = v9;
  dispatch_async(v8, v13);

  objc_autoreleasePoolPop(v5);
  v10 = *MEMORY[0x1E69E9840];
}

void sub_1AE2E3020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_1AE2E34D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void __br_notify_register_dispatch_block_invoke_4(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  if (([*(a1 + 32) isEqualToString:@"__defaultPersonaID__"] & 1) != 0 || (v2 = *(a1 + 32)) == 0)
  {
    if (_block_invoke_2___personaOnceToken != -1)
    {
      __br_notify_register_dispatch_block_invoke_cold_1_3();
    }

    v3 = _block_invoke_2___personalPersona;
    v4 = 1;
  }

  else
  {
    v3 = v2;
    v4 = 0;
  }

  v5 = [MEMORY[0x1E69DF068] sharedManager];
  v6 = [v5 currentPersona];

  v28 = 0;
  v7 = [v6 userPersonaUniqueString];
  v8 = v7;
  if (v7 == v3 || ([v7 isEqualToString:v3] & 1) != 0)
  {
    goto LABEL_9;
  }

  if (!voucher_process_can_use_arbitrary_personas())
  {
    if (v4 && ([v6 isDataSeparatedPersona] & 1) == 0)
    {
      v22 = brc_bread_crumbs("br_notify_register_dispatch_block_invoke", 110);
      v23 = brc_default_log(1, 0);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        [BRAccount containerWithPendingChanges];
      }
    }

    else
    {
      v18 = brc_bread_crumbs("br_notify_register_dispatch_block_invoke", 110);
      v19 = brc_default_log(1, 0);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        [BRAccount containerWithPendingChanges];
      }

      v15 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
      if (v15)
      {
        goto LABEL_25;
      }
    }

LABEL_9:
    (*(*(a1 + 40) + 16))();
    goto LABEL_10;
  }

  v27 = 0;
  v10 = [v6 copyCurrentPersonaContextWithError:&v27];
  v11 = v27;
  v12 = v28;
  v28 = v10;

  if (v11)
  {
    v13 = brc_bread_crumbs("br_notify_register_dispatch_block_invoke", 110);
    v14 = brc_default_log(0, 0);
    if (os_log_type_enabled(v14, 0x90u))
    {
      __61__BRNotificationReceiver__obtainNotificationSenderFromDaemon__block_invoke_22_cold_4();
    }
  }

  v15 = [v6 br_generateAndRestorePersonaContextWithPersonaUniqueString:v3];

  if (!v15)
  {
    goto LABEL_9;
  }

  v16 = brc_bread_crumbs("br_notify_register_dispatch_block_invoke", 110);
  v17 = brc_default_log(0, 0);
  if (os_log_type_enabled(v17, 0x90u))
  {
    v26 = *(a1 + 32);
    *buf = 138412802;
    v30 = v26;
    v31 = 2112;
    v32 = v15;
    v33 = 2112;
    v34 = v16;
    _os_log_error_impl(&dword_1AE2A9000, v17, 0x90u, "[ERROR] Can't adopt persona %@: %@%@", buf, 0x20u);
  }

LABEL_25:
  v20 = brc_bread_crumbs("br_notify_register_dispatch_block_invoke", 112);
  v21 = brc_default_log(0, 0);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
  {
    v24 = *(a1 + 48);
    v25 = [v15 localizedDescription];
    *buf = 136315650;
    v30 = v24;
    v31 = 2112;
    v32 = v25;
    v33 = 2112;
    v34 = v20;
    _os_log_fault_impl(&dword_1AE2A9000, v21, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Failed to adopt persona for notification %s due to %@%@", buf, 0x20u);
  }

LABEL_10:
  _BRRestorePersona(&v28);

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1AE2E3AF8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  _BRRestorePersona(va);
  _Unwind_Resume(a1);
}

void __br_notify_register_dispatch_block_invoke_2_3()
{
  v2 = [MEMORY[0x1E69DF088] personaAttributesForPersonaType:0];
  v0 = [v2 userPersonaUniqueString];
  v1 = _block_invoke_2___personalPersona;
  _block_invoke_2___personalPersona = v0;
}

void __dispatch_async_with_logs_block_invoke_0(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 48);
  v7 = *(a1 + 64);
  v2 = brc_bread_crumbs("dispatch_async_with_logs_block_invoke", 285);
  v3 = brc_default_log(1, 0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    label = dispatch_queue_get_label(*(a1 + 32));
    *buf = 134218498;
    v9 = v6;
    v10 = 2080;
    v11 = label;
    v12 = 2112;
    v13 = v2;
    _os_log_debug_impl(&dword_1AE2A9000, v3, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx continuing on %s%@", buf, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
  __brc_leave_section(&v6);
  v4 = *MEMORY[0x1E69E9840];
}

void sub_1AE2E6DC0(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

void sub_1AE2E7DAC(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

void sub_1AE2E7F40(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

void sub_1AE2E86F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_1AE2EA4B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t init_SIGetLastUsedDate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = MobileSpotlightIndexLibrary();
  v7 = dlsym(v6, "_SIGetLastUsedDate");
  softLink_SIGetLastUsedDate = v7;
  if (!v7)
  {
    v9 = brc_bread_crumbs("init_SIGetLastUsedDate", 22);
    v10 = brc_default_log(0, 0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      init_SIGetLastUsedDate_cold_1();
    }

    __assert_rtn("init_SIGetLastUsedDate", "/Library/Caches/com.apple.xbs/Sources/CloudDocs/framework/SpotlightIndex_SoftLinking.m", 22, "Can't find _SIGetLastUsedDate in MobileSpotlightIndex framework");
  }

  return (v7)(a1, a2, a3);
}

void *MobileSpotlightIndexLibrary()
{
  result = MobileSpotlightIndexLibrary_frameworkLibrary;
  if (!MobileSpotlightIndexLibrary_frameworkLibrary)
  {
    result = dlopen("/System/Library/PrivateFrameworks/MobileSpotlightIndex.framework/MobileSpotlightIndex", 2);
    MobileSpotlightIndexLibrary_frameworkLibrary = result;
    if (!result)
    {
      MobileSpotlightIndexLibrary_cold_1();
    }
  }

  return result;
}

uint64_t init_SISetLastUsedDate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = MobileSpotlightIndexLibrary();
  v7 = dlsym(v6, "_SISetLastUsedDate");
  softLink_SISetLastUsedDate = v7;
  if (!v7)
  {
    v9 = brc_bread_crumbs("init_SISetLastUsedDate", 23);
    v10 = brc_default_log(0, 0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      init_SISetLastUsedDate_cold_1();
    }

    __assert_rtn("init_SISetLastUsedDate", "/Library/Caches/com.apple.xbs/Sources/CloudDocs/framework/SpotlightIndex_SoftLinking.m", 23, "Can't find _SISetLastUsedDate in MobileSpotlightIndex framework");
  }

  return (v7)(a1, a2, a3);
}

uint64_t init_SIActivityDump(uint64_t a1, uint64_t a2)
{
  v4 = MobileSpotlightIndexLibrary();
  v5 = dlsym(v4, "_SIActivityDump");
  softLink_SIActivityDump = v5;
  if (!v5)
  {
    v7 = brc_bread_crumbs("init_SIActivityDump", 24);
    v8 = brc_default_log(0, 0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      init_SIActivityDump_cold_1();
    }

    __assert_rtn("init_SIActivityDump", "/Library/Caches/com.apple.xbs/Sources/CloudDocs/framework/SpotlightIndex_SoftLinking.m", 24, "Can't find _SIActivityDump in MobileSpotlightIndex framework");
  }

  return (v5)(a1, a2);
}

void OUTLINED_FUNCTION_1_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0x16u);
}

id BRCXPCBRItemServiceProtocolInterface()
{
  if (BRCXPCBRItemServiceProtocolInterface_once != -1)
  {
    BRCXPCBRItemServiceProtocolInterface_cold_1();
  }

  v1 = BRCXPCBRItemServiceProtocolInterface_iface;

  return v1;
}

void __BRCXPCBRItemServiceProtocolInterface_block_invoke()
{
  v11[2] = *MEMORY[0x1E69E9840];
  v0 = objc_opt_new();
  v1 = BRCXPCBRItemServiceProtocolInterface_iface;
  BRCXPCBRItemServiceProtocolInterface_iface = v0;

  [BRCXPCBRItemServiceProtocolInterface_iface setProtocol:&unk_1F240B3C8];
  BRCSetupGenericOperations(&unk_1F240B3C8, BRCXPCBRItemServiceProtocolInterface_iface);
  v11[0] = objc_opt_class();
  v11[1] = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  v3 = BRCXPCBRItemServiceProtocolInterface_iface;
  v4 = [MEMORY[0x1E695DFD8] setWithArray:v2];
  [v3 setClasses:v4 forSelector:sel_getAttributeValues_reply_ argumentIndex:0 ofReply:0];

  v10[0] = objc_opt_class();
  v10[1] = objc_opt_class();
  v10[2] = objc_opt_class();
  v10[3] = objc_opt_class();
  v10[4] = objc_opt_class();
  v10[5] = objc_opt_class();
  v10[6] = objc_opt_class();
  CKRecordIDClass = getCKRecordIDClass();
  if (!CKRecordIDClass)
  {
    CKRecordIDClass = objc_opt_class();
  }

  v10[7] = CKRecordIDClass;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:8];

  v7 = BRCXPCBRItemServiceProtocolInterface_iface;
  v8 = [MEMORY[0x1E695DFD8] setWithArray:v6];
  [v7 setClasses:v8 forSelector:sel_getAttributeValues_reply_ argumentIndex:0 ofReply:1];

  v9 = *MEMORY[0x1E69E9840];
}

id BRCXPCICDFileProviderClientSideCollaborationProtocolInterface()
{
  if (BRCXPCICDFileProviderClientSideCollaborationProtocolInterface_once != -1)
  {
    BRCXPCICDFileProviderClientSideCollaborationProtocolInterface_cold_1();
  }

  v1 = BRCXPCICDFileProviderClientSideCollaborationProtocolInterface_iface;

  return v1;
}

void __BRCXPCICDFileProviderClientSideCollaborationProtocolInterface_block_invoke()
{
  v0 = objc_opt_new();
  v1 = BRCXPCICDFileProviderClientSideCollaborationProtocolInterface_iface;
  BRCXPCICDFileProviderClientSideCollaborationProtocolInterface_iface = v0;

  [BRCXPCICDFileProviderClientSideCollaborationProtocolInterface_iface setProtocol:&unk_1F240B428];
  v2 = BRCXPCICDFileProviderClientSideCollaborationProtocolInterface_iface;

  BRCSetupGenericOperations(&unk_1F240B428, v2);
}

id BRCXPCSharingOperationInterface()
{
  if (BRCXPCSharingOperationInterface_once != -1)
  {
    BRCXPCSharingOperationInterface_cold_1();
  }

  v1 = BRCXPCSharingOperationInterface_iface;

  return v1;
}

void __BRCXPCSharingOperationInterface_block_invoke()
{
  v0 = objc_opt_new();
  v1 = BRCXPCSharingOperationInterface_iface;
  BRCXPCSharingOperationInterface_iface = v0;

  [BRCXPCSharingOperationInterface_iface setProtocol:&unk_1F240B1E8];
  BRCSetupGenericOperations(&unk_1F240B1E8, BRCXPCSharingOperationInterface_iface);
  v2 = BRCXPCSharingOperationInterface_iface;

  BRCSetupGenericOperations(&unk_1F2404ED8, v2);
}

NSObject *BRCopyBundleIdentifierForURLInContainer(NSObject *a1)
{
  v46 = *MEMORY[0x1E69E9840];
  v2 = _CFURLPromiseCopyPhysicalURL();
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = a1;
  }

  if (![v4 br_isInSyncedLocation])
  {
    v17 = 0;
    goto LABEL_33;
  }

  memset(v37, 0, sizeof(v37));
  __brc_create_section(0, "_BRCopyBundleIdentifierForURLInContainer", 41, 0, v37);
  v5 = brc_bread_crumbs("_BRCopyBundleIdentifierForURLInContainer", 41);
  v6 = brc_default_log(1, 0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218754;
    v39 = v37[0];
    v40 = 2080;
    v41 = "_BRCopyBundleIdentifierForURLInContainer";
    v42 = 2112;
    v43 = v4;
    v44 = 2112;
    v45 = v5;
    _os_log_debug_impl(&dword_1AE2A9000, v6, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx %s %@%@", buf, 0x2Au);
  }

  v7 = objc_autoreleasePoolPush();
  v8 = v4;
  v36 = 0;
  v9 = *MEMORY[0x1E695DB78];
  v35 = 0;
  v10 = [v8 getPromisedItemResourceValue:&v36 forKey:v9 error:&v35];
  v11 = v36;
  v12 = v35;
  if ((v10 & 1) == 0)
  {
    v15 = brc_bread_crumbs("_BRCopyBundleIdentifierForURLInContainer", 82);
    v18 = brc_default_log(1, 0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v8 path];
      *buf = 138412802;
      v39 = v19;
      v40 = 2112;
      v41 = v12;
      v42 = 2112;
      v43 = v15;
      _os_log_impl(&dword_1AE2A9000, v18, OS_LOG_TYPE_DEFAULT, "[WARNING] failed to get NSURLIsDirectoryKey on '%@': %@%@", buf, 0x20u);
    }

    v17 = 0;
    goto LABEL_32;
  }

  if ([v11 BOOLValue])
  {
    v34 = 0;
    v13 = *MEMORY[0x1E695DBA0];
    v33 = v12;
    v14 = [v8 getPromisedItemResourceValue:&v34 forKey:v13 error:&v33];
    v15 = v34;
    v16 = v33;

    if ((v14 & 1) == 0)
    {
      v18 = brc_bread_crumbs("_BRCopyBundleIdentifierForURLInContainer", 89);
      v22 = brc_default_log(1, 0);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v26 = [v8 path];
        *buf = 138412802;
        v39 = v26;
        v40 = 2112;
        v41 = v16;
        v42 = 2112;
        v43 = v18;
        _os_log_impl(&dword_1AE2A9000, v22, OS_LOG_TYPE_DEFAULT, "[WARNING] failed to get NSURLIsPackageKey on dir at '%@': %@%@", buf, 0x20u);
      }

      goto LABEL_29;
    }

    if (([v15 BOOLValue]& 1) == 0)
    {
      v18 = brc_bread_crumbs("_BRCopyBundleIdentifierForURLInContainer", 93);
      v22 = brc_default_log(1, 0);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        v27 = [v8 path];
        BRCopyBundleIdentifierForURLInContainer_cold_1(v27, v18, buf, v22);
      }

      goto LABEL_29;
    }
  }

  else
  {
    v16 = v12;
  }

  v15 = [v8 br_cloudDocsContainer];
  v20 = [v15 identifier];
  v21 = [v20 isEqualToString:@"com.apple.CloudDocs"];

  if (v21)
  {
    v18 = brc_bread_crumbs("_BRCopyBundleIdentifierForURLInContainer", 102);
    v22 = brc_default_log(1, 0);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      v30 = [v15 identifier];
      v31 = [v8 path];
      *buf = 138412802;
      v39 = v30;
      v40 = 2112;
      v41 = v31;
      v42 = 2112;
      v43 = v18;
      _os_log_debug_impl(&dword_1AE2A9000, v22, OS_LOG_TYPE_DEBUG, "[DEBUG] path in container %@ at '%@'%@", buf, 0x20u);
    }

LABEL_29:

    goto LABEL_30;
  }

  v23 = [v15 bundleIdentifiers];
  v18 = [v23 anyObject];

  if (v18)
  {
    v24 = brc_bread_crumbs("_BRCopyBundleIdentifierForURLInContainer", 159);
    v25 = brc_default_log(1, 0);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      v32 = [v8 path];
      *buf = 138413058;
      v39 = v18;
      v40 = 2112;
      v41 = v32;
      v42 = 2112;
      v43 = v15;
      v44 = 2112;
      v45 = v24;
      _os_log_debug_impl(&dword_1AE2A9000, v25, OS_LOG_TYPE_DEBUG, "[DEBUG] bundle %@ can open '%@' in container %@%@", buf, 0x2Au);
    }

    v18 = v18;
    v17 = v18;
    goto LABEL_31;
  }

LABEL_30:
  v17 = 0;
LABEL_31:
  v12 = v16;
LABEL_32:

  objc_autoreleasePoolPop(v7);
  __brc_leave_section(v37);
LABEL_33:
  if (v3)
  {
    CFRelease(v3);
  }

  v28 = *MEMORY[0x1E69E9840];
  return v17;
}

void sub_1AE2EC5EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

NSObject *BRIsURLInCloudDocsContainer(NSObject *result, NSObject **a2)
{
  if (result)
  {
    v3 = BRCopyBundleIdentifierForURLInContainer(result);
    *a2 = v3;
    return (v3 != 0);
  }

  return result;
}

uint64_t BRCopyUbiquitousBookmarkDataForDocumentAtURL(void *a1, uint64_t a2)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v4 = objc_autoreleasePoolPush();
  v5 = dispatch_semaphore_create(0);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __BRCopyUbiquitousBookmarkDataForDocumentAtURL_block_invoke;
  v9[3] = &unk_1E7A15B98;
  v11 = &v13;
  v12 = a2;
  v6 = v5;
  v10 = v6;
  [a1 br_bookmarkableStringWithEtag:0 completion:v9];
  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);

  objc_autoreleasePoolPop(v4);
  v7 = v14[3];
  _Block_object_dispose(&v13, 8);
  return v7;
}

void sub_1AE2EC794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __BRCopyUbiquitousBookmarkDataForDocumentAtURL_block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = v6;
  *(*(*(a1 + 40) + 8) + 24) = v8;
  if (v7 && *(a1 + 48))
  {
    **(a1 + 48) = v7;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

uint64_t BRCopyDocumentURLForUbiquitousBookmarkData(uint64_t a1, void *a2)
{
  v4 = objc_autoreleasePoolPush();
  v9 = 0;
  v5 = [MEMORY[0x1E695DFF8] br_documentURLFromBookmarkableString:a1 error:&v9];
  v6 = v9;
  v7 = v6;
  if (a2 && v6)
  {
    *a2 = v6;
  }

  objc_autoreleasePoolPop(v4);
  return v5;
}

uint64_t BRCopyResolvedURLForExternalDocumentReferenceAtURL(void *a1, void *a2)
{
  v4 = objc_autoreleasePoolPush();
  v9 = 0;
  v5 = [a1 br_URLByResolvingExternalDocumentReferenceWithError:&v9];
  v6 = v9;
  v7 = v6;
  if (a2 && !v5)
  {
    *a2 = v6;
  }

  objc_autoreleasePoolPop(v4);
  return v5;
}

uint64_t BRCopyRepresentedFileNameForFaultFileURL(void *a1)
{
  if (!_CFURLIsItemPromiseAtURL())
  {
    return 0;
  }

  v2 = _CFURLCopyLogicalNameOfPromiseAtURL();
  if (!v2)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = [a1 lastPathComponent];
    v5 = v4;
    if (v4 && [(__CFString *)v4 length]>= 9)
    {
      v6 = *MEMORY[0x1E695E480];
      v8.length = [(__CFString *)v5 length]- 8;
      v8.location = 1;
      v2 = CFStringCreateWithSubstring(v6, v5, v8);
    }

    else
    {
      v2 = 0;
    }

    objc_autoreleasePoolPop(v3);
  }

  return v2;
}

uint64_t BRTrashExternalDocumentReference(void *a1, void *a2, uint64_t a3, CFErrorRef *a4)
{
  v51 = *MEMORY[0x1E69E9840];
  if (BRTrashExternalDocumentReference_onceToken != -1)
  {
    BRTrashExternalDocumentReference_cold_1();
  }

  v7 = objc_autoreleasePoolPush();
  v8 = [MEMORY[0x1E696AC08] defaultManager];
  v9 = [a2 path];
  memset(v42, 0, sizeof(v42));
  __brc_create_section(0, "BRTrashExternalDocumentReference", 333, 0, v42);
  v10 = brc_bread_crumbs("BRTrashExternalDocumentReference", 333);
  v11 = brc_default_log(1, 0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218754;
    v44 = v42[0];
    v45 = 2080;
    v46 = "BRTrashExternalDocumentReference";
    v47 = 2112;
    v48 = v9;
    v49 = 2112;
    v50 = v10;
    _os_log_debug_impl(&dword_1AE2A9000, v11, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx %s: %@%@", buf, 0x2Au);
  }

  v41 = 0;
  v12 = *MEMORY[0x1E695DB68];
  v40 = 0;
  v13 = [a1 getResourceValue:&v41 forKey:v12 error:&v40];
  v14 = v41;
  v15 = v40;
  if (v13)
  {
    if ([v14 BOOLValue])
    {
      v39 = 0;
      v16 = *MEMORY[0x1E695DC30];
      v38 = 0;
      v17 = [a1 getResourceValue:&v39 forKey:v16 error:&v38];
      v33 = v39;

      v18 = v38;
      if (v17)
      {
        if ([v33 hasPrefix:@"."] && (objc_msgSend(v33, "hasSuffix:", @".alias") & 1) != 0)
        {
          if (!v9)
          {
            a2 = [a1 br_URLByResolvingExternalDocumentReferenceWithError:0];
            v9 = [a2 path];
          }

          if (![v9 containsString:{BRTrashExternalDocumentReference_sharedDocsContainerPartialPath, v33}])
          {
            goto LABEL_33;
          }

          v19 = brc_bread_crumbs("BRTrashExternalDocumentReference", 361);
          v20 = brc_default_log(1, 0);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            BRTrashExternalDocumentReference_cold_2();
          }

          v37 = v18;
          v21 = [v8 removeItemAtPath:v9 error:&v37];
          v22 = v37;

          if (v21)
          {
            v18 = v22;
LABEL_33:
            v35 = v18;
            v28 = [v8 removeItemAtURL:a1 error:&v35];
            v15 = v35;

            if (v28)
            {
              v24 = 1;
LABEL_35:
              v14 = v33;
              goto LABEL_27;
            }

            v29 = brc_bread_crumbs("BRTrashExternalDocumentReference", 371);
            v30 = brc_default_log(1, 0);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
            {
              BRTrashExternalDocumentReference_cold_3();
            }

            v34 = v15;
            v31 = BRRemoveItemAtURL(a1, &v34);
            v32 = v34;

            if (v31)
            {
              v24 = 1;
LABEL_45:
              v14 = v33;
              v15 = v32;
              goto LABEL_27;
            }

            if (!a4)
            {
              v24 = 0;
              goto LABEL_45;
            }

            v15 = v32;
            goto LABEL_24;
          }

          v36 = v22;
          v27 = BRRemoveItemAtURL(a2, &v36);
          v15 = v36;

          if (v27)
          {
            v18 = v15;
            goto LABEL_33;
          }

          if (!a4)
          {
            v24 = 0;
            goto LABEL_35;
          }

LABEL_24:
          v14 = v33;
          goto LABEL_25;
        }

        if (a4)
        {
          v23 = CFErrorCreate(*MEMORY[0x1E695E480], *MEMORY[0x1E695E628], 259, 0);
          v14 = v33;
          v15 = v18;
          goto LABEL_26;
        }
      }

      else if (a4)
      {
        v15 = v18;
        goto LABEL_24;
      }

      v24 = 0;
      v14 = v33;
      v15 = v18;
      goto LABEL_27;
    }

    if (a4)
    {
      v23 = CFErrorCreate(*MEMORY[0x1E695E480], *MEMORY[0x1E695E628], 259, 0);
LABEL_26:
      v24 = 0;
      *a4 = v23;
      goto LABEL_27;
    }
  }

  else if (a4)
  {
LABEL_25:
    v23 = v15;
    v15 = v23;
    goto LABEL_26;
  }

  v24 = 0;
LABEL_27:
  __brc_leave_section(v42);

  objc_autoreleasePoolPop(v7);
  v25 = *MEMORY[0x1E69E9840];
  return v24;
}

void sub_1AE2ECF00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

uint64_t __BRTrashExternalDocumentReference_block_invoke()
{
  BRTrashExternalDocumentReference_sharedDocsContainerPartialPath = [MEMORY[0x1E696AEC0] stringWithFormat:@"/Mobile Documents/%@/", @"com~apple~SharedDocs"];

  return MEMORY[0x1EEE66BB8]();
}

void sub_1AE2ED0C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSDBuildInfoClass_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  if (!SeedingLibraryCore_frameworkLibrary)
  {
    SeedingLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = objc_getClass("SDBuildInfo");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSDBuildInfoClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __SeedingLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  SeedingLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void OUTLINED_FUNCTION_2_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, 0x90u, a4, &a9, 0x16u);
}

void sub_1AE2F0B68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1AE2F22B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a46, 8);
  _Unwind_Resume(a1);
}

void sub_1AE2F269C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void __dispatch_group_async_with_logs_block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 48);
  v7 = *(a1 + 64);
  v2 = brc_bread_crumbs("dispatch_group_async_with_logs_block_invoke", 316);
  v3 = brc_default_log(1, 0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    label = dispatch_queue_get_label(*(a1 + 32));
    *buf = 134218498;
    v9 = v6;
    v10 = 2080;
    v11 = label;
    v12 = 2112;
    v13 = v2;
    _os_log_debug_impl(&dword_1AE2A9000, v3, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx continuing on %s%@", buf, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
  __brc_leave_section(&v6);
  v4 = *MEMORY[0x1E69E9840];
}

void sub_1AE2F31F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1AE2F3840(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _BRRestorePersona(va);
  _Unwind_Resume(a1);
}

void LBDeleteItemAtURL(uint64_t a1, NSObject *a2, void *a3)
{
  v4 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __LBDeleteItemAtURL_block_invoke;
  block[3] = &unk_1E7A14BB8;
  v7 = v4;
  v5 = v4;
  dispatch_async(a2, block);
}

void LBEvictItemAtURL(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __LBEvictItemAtURL_block_invoke;
  v9[3] = &unk_1E7A15168;
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  BREvictItemAtURL(a1, v9);
}

void __LBEvictItemAtURL_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __LBEvictItemAtURL_block_invoke_2;
  v7[3] = &unk_1E7A15078;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void LBStartSyncForItem(uint64_t a1, void *a2, void *a3)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v9[0] = a1;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  }

  else
  {
    v7 = 0;
  }

  LBStartDownloadForItems(v7, v5, v6);

  v8 = *MEMORY[0x1E69E9840];
}

void LBStartDownloadForItems(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  active_platform = dyld_get_active_platform();
  if ((active_platform & 0xFFFFFFFB) == 2 || active_platform == 11 || active_platform == 1)
  {
    v8 = dyld_program_sdk_at_least();
  }

  else
  {
    syslog(5, "Unknown platform linking against CloudDocs framework %d", active_platform);
    v8 = 1;
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __LBStartDownloadForItems_block_invoke;
  v12[3] = &unk_1E7A15168;
  v9 = v8;
  v13 = v5;
  v14 = v6;
  v10 = v6;
  v11 = v5;
  BRStartDownloadForItemsWithOptions(a1, v9, v12);
}

void __LBStartDownloadForItems_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __LBStartDownloadForItems_block_invoke_2;
  v7[3] = &unk_1E7A15078;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void LBSetSyncEnabledForItem(uint64_t a1, char a2, uint64_t a3, void *a4, void *a5)
{
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (a1 && a3)
  {
    v12 = dispatch_get_global_queue(0, 0);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __LBSetSyncEnabledForItem_block_invoke_2;
    v14[3] = &unk_1E7A15D90;
    v19 = a2;
    v17 = a1;
    v18 = a3;
    v13 = &v15;
    v15 = v9;
    v16 = v11;
    dispatch_async(v12, v14);
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __LBSetSyncEnabledForItem_block_invoke;
    block[3] = &unk_1E7A14BB8;
    v13 = &v21;
    v21 = v10;
    dispatch_async(v9, block);
  }
}

void __LBSetSyncEnabledForItem_block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696ABC0] br_errorWithPOSIXCode:22];
  (*(*(a1 + 32) + 16))();
}

void __LBSetSyncEnabledForItem_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 56);
  v4 = *(a1 + 48);
  v5 = v3;
  v6 = [MEMORY[0x1E696AC08] defaultManager];
  if ([v6 isUbiquitousItemAtURL:v4] == v2)
  {
    v13 = _NSErrorWithFilePathErrnoAndVariant();
    v11 = 0;
    v9 = 0;
  }

  else
  {
    v25 = 0;
    v7 = *MEMORY[0x1E695DB20];
    v24 = 0;
    v8 = [v4 getResourceValue:&v25 forKey:v7 error:&v24];
    v9 = v25;
    v10 = v24;
    v11 = v10;
    if (v8)
    {
      if (([v9 isEqual:*MEMORY[0x1E695DB18]] & 1) == 0 && (objc_msgSend(v9, "isEqual:", *MEMORY[0x1E695DB30]) & 1) == 0)
      {
        v12 = _NSErrorWithFilePathErrnoAndVariant();
        goto LABEL_13;
      }

      if ([v5 checkResourceIsReachableAndReturnError:0])
      {
        v12 = _NSErrorWithFilePathAndErrno();
LABEL_13:
        v13 = v12;
        goto LABEL_14;
      }

      v23 = v11;
      v15 = [v6 moveItemAtURL:v4 toURL:v5 error:&v23];
      v16 = v23;

      if (v15)
      {
        v13 = 0;
        v11 = v16;
        goto LABEL_14;
      }

      v14 = v16;
    }

    else
    {
      v14 = v10;
    }

    v13 = v14;
    v11 = v14;
  }

LABEL_14:

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __LBSetSyncEnabledForItem_block_invoke_3;
  block[3] = &unk_1E7A15078;
  v17 = *(a1 + 32);
  v18 = *(a1 + 40);
  v21 = v13;
  v22 = v18;
  v19 = v13;
  dispatch_async(v17, block);
}

void LBIsSyncEnabledForItem(void *a1, uint64_t a2, void *a3)
{
  v4 = *MEMORY[0x1E695DBD8];
  v8 = 0;
  v5 = a3;
  v6 = BRGetAttributeValueForItem(a1, v4, &v8);
  v7 = v8;
  v5[2](v5, [v6 BOOLValue], v7);
}

void LBGetURLForPublishedItem(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __LBGetURLForPublishedItem_block_invoke;
  v9[3] = &unk_1E7A15DE0;
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  BRGetURLForPublishedItem(a1, v9);
}

void __LBGetURLForPublishedItem_block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __LBGetURLForPublishedItem_block_invoke_2;
  v15[3] = &unk_1E7A151E0;
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v16 = v7;
  v17 = v8;
  v18 = v9;
  v19 = v11;
  v12 = v9;
  v13 = v8;
  v14 = v7;
  dispatch_async(v10, v15);
}

void LBCalculateSpaceReclaimableByEviction(NSObject *a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __LBCalculateSpaceReclaimableByEviction_block_invoke;
  block[3] = &unk_1E7A14BB8;
  v6 = v3;
  v4 = v3;
  dispatch_async(a1, block);
}

void LBEvictItemsToReclaimSpace(uint64_t a1, NSObject *a2, void *a3)
{
  v4 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __LBEvictItemsToReclaimSpace_block_invoke;
  block[3] = &unk_1E7A14BB8;
  v7 = v4;
  v5 = v4;
  dispatch_async(a2, block);
}

void LBEvictItemsToReclaimSpaceWithUrgency(uint64_t a1, uint64_t a2, NSObject *a3, void *a4)
{
  v5 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __LBEvictItemsToReclaimSpaceWithUrgency_block_invoke;
  block[3] = &unk_1E7A14BB8;
  v8 = v5;
  v6 = v5;
  dispatch_async(a3, block);
}

void LBGetTotalApplicationDocumentUsage(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __LBGetTotalApplicationDocumentUsage_block_invoke;
  v7[3] = &unk_1E7A15E08;
  v8 = v3;
  v9 = v4;
  v5 = v4;
  v6 = v3;
  BRGetTotalApplicationDocumentUsage(v7);
}

void __LBGetTotalApplicationDocumentUsage_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __LBGetTotalApplicationDocumentUsage_block_invoke_2;
  block[3] = &unk_1E7A15190;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

void LBNoteConfigurationProfileUpdate(NSObject *a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __LBNoteConfigurationProfileUpdate_block_invoke;
  block[3] = &unk_1E7A14BB8;
  v6 = v3;
  v4 = v3;
  dispatch_async(a1, block);
}

void LBGetApplicationDocumentUsageInformation(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __LBGetApplicationDocumentUsageInformation_block_invoke;
  v9[3] = &unk_1E7A15E08;
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  BRGetApplicationDocumentUsageInformation(a1, v9);
}

void __LBGetApplicationDocumentUsageInformation_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __LBGetApplicationDocumentUsageInformation_block_invoke_2;
  block[3] = &unk_1E7A15190;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

uint64_t LBRefreshUbiquityAccountToken()
{
  v0 = +[BRAccount refreshCurrentLoggedInAccount];
  v1 = [BRAccount currentCachedLoggedInAccountWithError:0];
  v2 = [v1 perAppAccountIdentifier];
  if (v0 || ([LBRefreshUbiquityAccountToken_lastReturnedAccountToken isEqualToData:v2] & 1) == 0)
  {
    objc_storeStrong(&LBRefreshUbiquityAccountToken_lastReturnedAccountToken, v2);
    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void LBRegisterInitialSyncHandlerForURL(uint64_t a1, NSObject *a2, void *a3)
{
  v4 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __LBRegisterInitialSyncHandlerForURL_block_invoke;
  block[3] = &unk_1E7A14BB8;
  v7 = v4;
  v5 = v4;
  dispatch_async(a2, block);
}

void LBNoteAccountUpdate(NSObject *a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __LBNoteAccountUpdate_block_invoke;
  block[3] = &unk_1E7A14BB8;
  v6 = v3;
  v4 = v3;
  dispatch_async(a1, block);
}

void sub_1AE2F6AF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AE2F6C7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AE2F6DD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AE2F7F6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_1AE2F8344(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AE2F8490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AE2F891C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AE2F8A4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AE2F8DB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AE2F8F78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AE2F9204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AE2F9494(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AE2FA1EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_1AE2FAB00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1AE2FB140(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

id fileProgressSubscribeQueue()
{
  if (fileProgressSubscribeQueue_onceToken != -1)
  {
    fileProgressSubscribeQueue_cold_1();
  }

  v1 = fileProgressSubscribeQueue_fileProgressSubscribeQueue;

  return v1;
}

void sub_1AE2FC8C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __fileProgressSubscribeQueue_block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.clouddocs.file-progresss-registration", v0);

  v2 = fileProgressSubscribeQueue_fileProgressSubscribeQueue;
  fileProgressSubscribeQueue_fileProgressSubscribeQueue = v1;
}

void OUTLINED_FUNCTION_4_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, a5, 0xCu);
}

void sub_1AE2FE4F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void less_exit_handler()
{
  v0 = 0;
    ;
  }

  exit(0);
}

uint64_t brc_backtrace_snprint(char *a1, size_t a2)
{
  v13[24] = *MEMORY[0x1E69E9840];
  result = backtrace(v13, 24);
  if (result)
  {
    v5 = 0;
    v6 = result;
    do
    {
      memset(&v12, 0, sizeof(v12));
      if (v5)
      {
        if (dladdr(v13[v5], &v12))
        {
          dli_sname = v12.dli_sname;
          v8 = rindex(v12.dli_fname, 47);
          dli_fname = v12.dli_fname;
          if (v8)
          {
            dli_fname = v8 + 1;
          }
        }

        else
        {
          dli_sname = "";
          dli_fname = "";
        }

        result = snprintf(a1, a2, "frame %d: %lld %s in %s\n", v5, v13[v5], dli_sname, dli_fname);
        v10 = a2 > result;
        a2 -= result;
        if (!v10)
        {
          break;
        }

        a1 += result;
      }

      ++v5;
    }

    while (v6 != v5);
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

id brc_backtrace()
{
  MEMORY[0x1EEE9AC00]();
  v4 = *MEMORY[0x1E69E9840];
  brc_backtrace_snprint(v3, 0x2000uLL);
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v3];
  v1 = *MEMORY[0x1E69E9840];

  return v0;
}

id brc_backtrace_non_detailed_but_fast()
{
  MEMORY[0x1EEE9AC00]();
  v4 = *MEMORY[0x1E69E9840];
  brc_backtrace_snprint(v3, 0x2000uLL);
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v3];
  v1 = *MEMORY[0x1E69E9840];

  return v0;
}

void brc_backtrace_exception_snprint(char *a1, size_t a2, void *a3)
{
  v6 = [a3 callStackSymbols];
  v5 = [v6 description];
  snprintf(a1, a2, "%s", [v5 UTF8String]);
}

id BRGenerateDatabaseRestoreManager(void *a1)
{
  v1 = getBRCDatabaseRestoreManagerClass;
  v2 = a1;
  v3 = [objc_alloc(v1()) initWithUserURL:v2];

  return v3;
}

id BRGenerateDatabaseBackupManager(void *a1, void *a2)
{
  v3 = getBRCDatabaseBackupManagerClass;
  v4 = a2;
  v5 = a1;
  v6 = [objc_alloc(v3()) initWithUserURL:v5 outputUserURL:v4];

  return v6;
}

Class initBRCDatabaseRestoreManager()
{
  iCloudDriveCoreLibrary();
  Class = objc_getClass("BRCDatabaseRestoreManager");
  classBRCDatabaseRestoreManager = Class;
  if (!Class)
  {
    initBRCDatabaseRestoreManager_cold_1();
  }

  getBRCDatabaseRestoreManagerClass = BRCDatabaseRestoreManagerFunction;

  return Class;
}

void iCloudDriveCoreLibrary()
{
  if (!iCloudDriveCoreLibrary_frameworkLibrary)
  {
    iCloudDriveCoreLibrary_frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/iCloudDriveCore.framework/iCloudDriveCore", 2);
    if (!iCloudDriveCoreLibrary_frameworkLibrary)
    {
      iCloudDriveCoreLibrary_cold_1();
    }
  }
}

Class initBRCDatabaseBackupManager()
{
  iCloudDriveCoreLibrary();
  Class = objc_getClass("BRCDatabaseBackupManager");
  classBRCDatabaseBackupManager = Class;
  if (!Class)
  {
    initBRCDatabaseBackupManager_cold_1();
  }

  getBRCDatabaseBackupManagerClass = BRCDatabaseBackupManagerFunction;

  return Class;
}

void sub_1AE300894(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AE302078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_1AE3028C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  objc_sync_exit(v10);
  __brc_leave_section(&a10);
  _Unwind_Resume(a1);
}

void sub_1AE3029FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AE302BE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AE304CE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AE305130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BRContainer *BRContainerIfDirectoryInHomeURLIsSynced(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [a1 URLByAppendingPathComponent:a2];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 path];
    v9 = getxattr([v8 fileSystemRepresentation], objc_msgSend(@"com.apple.icloud.desktop", "UTF8String"), 0, 0, 0, 0);

    if ((v9 & 0x8000000000000000) == 0)
    {
      v10 = [[BRContainer alloc] initWithDocsOrDesktopContainerID:v5];
      goto LABEL_10;
    }

    if (*__error() != 93 && *__error() != 2)
    {
      v11 = brc_bread_crumbs("BRContainerIfDirectoryInHomeURLIsSynced", 1413);
      v12 = brc_default_log(0, 0);
      if (os_log_type_enabled(v12, 0x90u))
      {
        BRContainerIfDirectoryInHomeURLIsSynced_cold_1(v7, v11, v12);
      }
    }
  }

  v10 = 0;
LABEL_10:

  return v10;
}

void sub_1AE305FE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1AE306750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AE308AC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60)
{
  _Block_object_dispose((v60 - 160), 8);
  __brc_leave_section(&a60);
  _Unwind_Resume(a1);
}

void sub_1AE30C04C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id a33)
{
  objc_destroyWeak((v33 + 32));
  objc_destroyWeak(&a22);
  objc_destroyWeak(&a28);
  objc_destroyWeak(&a33);
  objc_destroyWeak((v34 - 184));
  _Unwind_Resume(a1);
}

void sub_1AE30C180(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_1AE30C268(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_1AE30CC10(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  _BRRestorePersona(va);
  _Unwind_Resume(a1);
}

void sub_1AE30DC5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_1AE30E2A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1AE30E5F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __brc_block_perform_once_and_set_block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  if ((*v1 & 1) == 0)
  {
    *v1 = 1;
    return (*(*(result + 32) + 16))();
  }

  return result;
}

uint64_t initCGImageSourceCreateWithURL(uint64_t a1, uint64_t a2)
{
  v4 = ImageIOLibrary();
  v5 = dlsym(v4, "CGImageSourceCreateWithURL");
  softLinkCGImageSourceCreateWithURL = v5;
  if (!v5)
  {
    v7 = brc_bread_crumbs("initCGImageSourceCreateWithURL", 58);
    v8 = brc_default_log(0, 0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      initCGImageSourceCreateWithURL_cold_1();
    }

    __assert_rtn("initCGImageSourceCreateWithURL", "/Library/Caches/com.apple.xbs/Sources/CloudDocs/framework/BRContainer.m", 58, "Can't find CGImageSourceCreateWithURL in ImageIO framework");
  }

  return (v5)(a1, a2);
}

void *ImageIOLibrary()
{
  result = ImageIOLibrary_frameworkLibrary;
  if (!ImageIOLibrary_frameworkLibrary)
  {
    result = dlopen("/System/Library/Frameworks/ImageIO.framework/ImageIO", 2);
    ImageIOLibrary_frameworkLibrary = result;
    if (!result)
    {
      ImageIOLibrary_cold_1();
    }
  }

  return result;
}

id initkCGImageSourceShouldCache()
{
  v0 = ImageIOLibrary();
  v1 = dlsym(v0, "kCGImageSourceShouldCache");
  if (!v1)
  {
    initkCGImageSourceShouldCache_cold_1();
  }

  objc_storeStrong(&constantkCGImageSourceShouldCache, *v1);
  getkCGImageSourceShouldCache = kCGImageSourceShouldCacheFunction;
  v2 = constantkCGImageSourceShouldCache;

  return v2;
}

id initkCGImageSourceSkipMetadata()
{
  v0 = ImageIOLibrary();
  v1 = dlsym(v0, "kCGImageSourceSkipMetadata");
  if (!v1)
  {
    initkCGImageSourceSkipMetadata_cold_1();
  }

  objc_storeStrong(&constantkCGImageSourceSkipMetadata, *v1);
  getkCGImageSourceSkipMetadata = kCGImageSourceSkipMetadataFunction;
  v2 = constantkCGImageSourceSkipMetadata;

  return v2;
}

uint64_t initCGImageSourceCreateImageAtIndex(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ImageIOLibrary();
  v7 = dlsym(v6, "CGImageSourceCreateImageAtIndex");
  softLinkCGImageSourceCreateImageAtIndex = v7;
  if (!v7)
  {
    v9 = brc_bread_crumbs("initCGImageSourceCreateImageAtIndex", 59);
    v10 = brc_default_log(0, 0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      initCGImageSourceCreateImageAtIndex_cold_1();
    }

    __assert_rtn("initCGImageSourceCreateImageAtIndex", "/Library/Caches/com.apple.xbs/Sources/CloudDocs/framework/BRContainer.m", 59, "Can't find CGImageSourceCreateImageAtIndex in ImageIO framework");
  }

  return (v7)(a1, a2, a3);
}

uint64_t initCGImageGetWidth(uint64_t a1)
{
  v2 = ImageIOLibrary();
  v3 = dlsym(v2, "CGImageGetWidth");
  softLinkCGImageGetWidth = v3;
  if (!v3)
  {
    v5 = brc_bread_crumbs("initCGImageGetWidth", 60);
    v6 = brc_default_log(0, 0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      initCGImageGetWidth_cold_1();
    }

    __assert_rtn("initCGImageGetWidth", "/Library/Caches/com.apple.xbs/Sources/CloudDocs/framework/BRContainer.m", 60, "Can't find CGImageGetWidth in ImageIO framework");
  }

  return (v3)(a1);
}

Class initUIImage()
{
  UIKitLibrary();
  Class = objc_getClass("UIImage");
  classUIImage = Class;
  if (!Class)
  {
    initUIImage_cold_1();
  }

  getUIImageClass = UIImageFunction;

  return Class;
}

void *UIKitLibrary()
{
  result = UIKitLibrary_frameworkLibrary;
  if (!UIKitLibrary_frameworkLibrary)
  {
    result = dlopen("/System/Library/Frameworks/UIKit.framework/UIKit", 2);
    UIKitLibrary_frameworkLibrary = result;
    if (!result)
    {
      UIKitLibrary_cold_1();
    }
  }

  return result;
}

uint64_t initUIGraphicsBeginImageContextWithOptions(uint64_t a1, double a2, double a3, double a4)
{
  v8 = UIKitLibrary();
  v9 = dlsym(v8, "UIGraphicsBeginImageContextWithOptions");
  softLinkUIGraphicsBeginImageContextWithOptions = v9;
  if (!v9)
  {
    v14 = brc_bread_crumbs("initUIGraphicsBeginImageContextWithOptions", 81);
    v15 = brc_default_log(0, 0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      initUIGraphicsBeginImageContextWithOptions_cold_1();
    }

    __assert_rtn("initUIGraphicsBeginImageContextWithOptions", "/Library/Caches/com.apple.xbs/Sources/CloudDocs/framework/BRContainer.m", 81, "Can't find UIGraphicsBeginImageContextWithOptions in UIKit framework");
  }

  v10.n128_f64[0] = a2;
  v11.n128_f64[0] = a3;
  v12.n128_f64[0] = a4;

  return (v9)(a1, v10, v11, v12);
}

uint64_t initCGContextClipToMask(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v12 = CoreGraphicsLibrary_frameworkLibrary;
  if (!CoreGraphicsLibrary_frameworkLibrary)
  {
    v12 = dlopen("/System/Library/Frameworks/CoreGraphics.framework/CoreGraphics", 2);
    CoreGraphicsLibrary_frameworkLibrary = v12;
    if (!v12)
    {
      initCGContextClipToMask_cold_2();
    }
  }

  v13 = dlsym(v12, "CGContextClipToMask");
  softLinkCGContextClipToMask = v13;
  if (!v13)
  {
    v19 = brc_bread_crumbs("initCGContextClipToMask", 69);
    v20 = brc_default_log(0, 0);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      initCGContextClipToMask_cold_1();
    }

    __assert_rtn("initCGContextClipToMask", "/Library/Caches/com.apple.xbs/Sources/CloudDocs/framework/BRContainer.m", 69, "Can't find CGContextClipToMask in CoreGraphics framework");
  }

  v14.n128_f64[0] = a3;
  v15.n128_f64[0] = a4;
  v16.n128_f64[0] = a5;
  v17.n128_f64[0] = a6;

  return (v13)(a1, a2, v14, v15, v16, v17);
}

uint64_t initUIGraphicsGetCurrentContext()
{
  v0 = UIKitLibrary();
  v1 = dlsym(v0, "UIGraphicsGetCurrentContext");
  softLinkUIGraphicsGetCurrentContext = v1;
  if (!v1)
  {
    v3 = brc_bread_crumbs("initUIGraphicsGetCurrentContext", 80);
    v4 = brc_default_log(0, 0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      initUIGraphicsGetCurrentContext_cold_1();
    }

    __assert_rtn("initUIGraphicsGetCurrentContext", "/Library/Caches/com.apple.xbs/Sources/CloudDocs/framework/BRContainer.m", 80, "Can't find UIGraphicsGetCurrentContext in UIKit framework");
  }

  return v1();
}

uint64_t initUIGraphicsGetImageFromCurrentImageContext()
{
  v0 = UIKitLibrary();
  v1 = dlsym(v0, "UIGraphicsGetImageFromCurrentImageContext");
  softLinkUIGraphicsGetImageFromCurrentImageContext = v1;
  if (!v1)
  {
    v3 = brc_bread_crumbs("initUIGraphicsGetImageFromCurrentImageContext", 82);
    v4 = brc_default_log(0, 0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      initUIGraphicsGetImageFromCurrentImageContext_cold_1();
    }

    __assert_rtn("initUIGraphicsGetImageFromCurrentImageContext", "/Library/Caches/com.apple.xbs/Sources/CloudDocs/framework/BRContainer.m", 82, "Can't find UIGraphicsGetImageFromCurrentImageContext in UIKit framework");
  }

  return v1();
}

uint64_t initUIGraphicsEndImageContext()
{
  v0 = UIKitLibrary();
  v1 = dlsym(v0, "UIGraphicsEndImageContext");
  softLinkUIGraphicsEndImageContext = v1;
  if (!v1)
  {
    v3 = brc_bread_crumbs("initUIGraphicsEndImageContext", 83);
    v4 = brc_default_log(0, 0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      initUIGraphicsEndImageContext_cold_1();
    }

    __assert_rtn("initUIGraphicsEndImageContext", "/Library/Caches/com.apple.xbs/Sources/CloudDocs/framework/BRContainer.m", 83, "Can't find UIGraphicsEndImageContext in UIKit framework");
  }

  return v1();
}

id initUIImagePNGRepresentation(void *a1)
{
  v1 = a1;
  v2 = UIKitLibrary();
  v3 = dlsym(v2, "UIImagePNGRepresentation");
  softLinkUIImagePNGRepresentation = v3;
  if (!v3)
  {
    v6 = brc_bread_crumbs("initUIImagePNGRepresentation", 79);
    v7 = brc_default_log(0, 0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      initUIImagePNGRepresentation_cold_1();
    }

    __assert_rtn("initUIImagePNGRepresentation", "/Library/Caches/com.apple.xbs/Sources/CloudDocs/framework/BRContainer.m", 79, "Can't find UIImagePNGRepresentation in UIKit framework");
  }

  v4 = (v3)(v1);

  return v4;
}

void __br_notify_register_dispatch_block_invoke_5(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  if (([*(a1 + 32) isEqualToString:@"__defaultPersonaID__"] & 1) != 0 || (v2 = *(a1 + 32)) == 0)
  {
    if (softLinkUIImagePNGRepresentation_block_invoke___personaOnceToken != -1)
    {
      __br_notify_register_dispatch_block_invoke_cold_1_4();
    }

    v3 = softLinkUIImagePNGRepresentation_block_invoke___personalPersona;
    v4 = 1;
  }

  else
  {
    v3 = v2;
    v4 = 0;
  }

  v5 = [MEMORY[0x1E69DF068] sharedManager];
  v6 = [v5 currentPersona];

  v28 = 0;
  v7 = [v6 userPersonaUniqueString];
  v8 = v7;
  if (v7 == v3 || ([v7 isEqualToString:v3] & 1) != 0)
  {
    goto LABEL_9;
  }

  if (!voucher_process_can_use_arbitrary_personas())
  {
    if (v4 && ([v6 isDataSeparatedPersona] & 1) == 0)
    {
      v22 = brc_bread_crumbs("br_notify_register_dispatch_block_invoke", 110);
      v23 = brc_default_log(1, 0);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        [BRAccount containerWithPendingChanges];
      }
    }

    else
    {
      v18 = brc_bread_crumbs("br_notify_register_dispatch_block_invoke", 110);
      v19 = brc_default_log(1, 0);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        [BRAccount containerWithPendingChanges];
      }

      v15 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
      if (v15)
      {
        goto LABEL_25;
      }
    }

LABEL_9:
    (*(*(a1 + 40) + 16))();
    goto LABEL_10;
  }

  v27 = 0;
  v10 = [v6 copyCurrentPersonaContextWithError:&v27];
  v11 = v27;
  v12 = v28;
  v28 = v10;

  if (v11)
  {
    v13 = brc_bread_crumbs("br_notify_register_dispatch_block_invoke", 110);
    v14 = brc_default_log(0, 0);
    if (os_log_type_enabled(v14, 0x90u))
    {
      [BRAccount containerWithPendingChanges];
    }
  }

  v15 = [v6 br_generateAndRestorePersonaContextWithPersonaUniqueString:v3];

  if (!v15)
  {
    goto LABEL_9;
  }

  v16 = brc_bread_crumbs("br_notify_register_dispatch_block_invoke", 110);
  v17 = brc_default_log(0, 0);
  if (os_log_type_enabled(v17, 0x90u))
  {
    v26 = *(a1 + 32);
    *buf = 138412802;
    v30 = v26;
    v31 = 2112;
    v32 = v15;
    v33 = 2112;
    v34 = v16;
    _os_log_error_impl(&dword_1AE2A9000, v17, 0x90u, "[ERROR] Can't adopt persona %@: %@%@", buf, 0x20u);
  }

LABEL_25:
  v20 = brc_bread_crumbs("br_notify_register_dispatch_block_invoke", 112);
  v21 = brc_default_log(0, 0);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
  {
    v24 = *(a1 + 48);
    v25 = [v15 localizedDescription];
    *buf = 136315650;
    v30 = v24;
    v31 = 2112;
    v32 = v25;
    v33 = 2112;
    v34 = v20;
    _os_log_fault_impl(&dword_1AE2A9000, v21, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Failed to adopt persona for notification %s due to %@%@", buf, 0x20u);
  }

LABEL_10:
  _BRRestorePersona(&v28);

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1AE30F4F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  _BRRestorePersona(va);
  _Unwind_Resume(a1);
}

void __br_notify_register_dispatch_block_invoke_2_4()
{
  v2 = [MEMORY[0x1E69DF088] personaAttributesForPersonaType:0];
  v0 = [v2 userPersonaUniqueString];
  v1 = softLinkUIImagePNGRepresentation_block_invoke___personalPersona;
  softLinkUIImagePNGRepresentation_block_invoke___personalPersona = v0;
}

void OUTLINED_FUNCTION_12(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_DEFAULT, a4, &a9, 0x16u);
}

uint64_t OUTLINED_FUNCTION_14@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 8);
  return result;
}

void sub_1AE310D54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_1AE31155C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  objc_sync_exit(v9);
  __brc_leave_section(&a9);
  _Unwind_Resume(a1);
}

void sub_1AE3120D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_1AE312584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_1AE312AD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_1AE313270(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1AE3135D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_1AE313AF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);
  __brc_leave_section(&a20);
  _Unwind_Resume(a1);
}

void sub_1AE314200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_1AE314748(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_1AE315420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_1AE316200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_1AE316840(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_1AE316A08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_1AE316C60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_1AE316F50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_1AE3172C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id initUIApplicationWillResignActiveNotification()
{
  v0 = UIKitLibrary_0();
  v1 = dlsym(v0, "UIApplicationWillResignActiveNotification");
  if (!v1)
  {
    initUIApplicationWillResignActiveNotification_cold_1();
  }

  objc_storeStrong(&constantUIApplicationWillResignActiveNotification, *v1);
  getUIApplicationWillResignActiveNotification = UIApplicationWillResignActiveNotificationFunction;
  v2 = constantUIApplicationWillResignActiveNotification;

  return v2;
}

void *UIKitLibrary_0()
{
  result = UIKitLibrary_frameworkLibrary_0;
  if (!UIKitLibrary_frameworkLibrary_0)
  {
    result = dlopen("/System/Library/Frameworks/UIKit.framework/UIKit", 2);
    UIKitLibrary_frameworkLibrary_0 = result;
    if (!result)
    {
      UIKitLibrary_cold_1_0();
    }
  }

  return result;
}

id initUIApplicationDidBecomeActiveNotification()
{
  v0 = UIKitLibrary_0();
  v1 = dlsym(v0, "UIApplicationDidBecomeActiveNotification");
  if (!v1)
  {
    initUIApplicationDidBecomeActiveNotification_cold_1();
  }

  objc_storeStrong(&constantUIApplicationDidBecomeActiveNotification, *v1);
  getUIApplicationDidBecomeActiveNotification = UIApplicationDidBecomeActiveNotificationFunction;
  v2 = constantUIApplicationDidBecomeActiveNotification;

  return v2;
}

void OUTLINED_FUNCTION_10_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_fault_impl(a1, v5, OS_LOG_TYPE_FAULT, a4, v4, 0xCu);
}

void sub_1AE31B798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_1AE31BED8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_1AE31E1E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1AE31EA8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1AE31F184(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1AE321174(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AE321444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AE322B54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 160), 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_4_5@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 32);
  return result;
}

void sub_1AE325474(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id BRContainerIconNameForCKAssetKey(void *a1)
{
  v1 = a1;
  v2 = [v1 substringToIndex:4];
  v3 = [v2 isEqualToString:@"icon"];

  if ((v3 & 1) == 0)
  {
    BRContainerIconNameForCKAssetKey_cold_1();
  }

  v4 = [v1 substringFromIndex:4];

  return v4;
}

id BRContainerIconNameForSizeAndScale(double a1, double a2, double a3)
{
  v21[2] = *MEMORY[0x1E69E9840];
  v21[0] = @"iOS";
  v21[1] = @"OSX";
  [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v19 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v17 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%dx%d_%@", (a1 * a3), (a2 * a3), *(*(&v16 + 1) + 8 * v10)];
      v12 = _BRContainerIconSupportedNames();
      v13 = [v12 containsObject:v11];

      if (v13)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v11 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v11;
}

id _BRContainerIconSupportedNames()
{
  if (_BRContainerIconSupportedNames_once != -1)
  {
    _BRContainerIconSupportedNames_cold_1();
  }

  v1 = _BRContainerIconSupportedNames_iconNames;

  return v1;
}

double BRContainerIconSizeForName(void *a1)
{
  __endptr = 0;
  v1 = strtoll([a1 UTF8String], &__endptr, 0);
  if (__endptr && *__endptr == 120)
  {
    v2 = v1;
    v6 = 0;
    strtoll(__endptr + 1, &v6, 0);
    if (v6 && *v6 == 95)
    {
      return v2;
    }

    v4 = brc_bread_crumbs("BRContainerIconSizeForName", 89);
    v5 = brc_default_log(0, 0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      BRContainerIconSizeForName_cold_1();
    }
  }

  else
  {
    v4 = brc_bread_crumbs("BRContainerIconSizeForName", 84);
    v5 = brc_default_log(0, 0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      BRContainerIconSizeForName_cold_1();
    }
  }

  return 0.0;
}

double BRContainerIconScaleForName(void *a1)
{
  v1 = strchr([a1 UTF8String], 64);
  if (v1)
  {
    return strtoll(v1 + 1, 0, 0);
  }

  else
  {
    return 1.0;
  }
}

id BRContainerIconCKAssetKeys()
{
  if (BRContainerIconCKAssetKeys_once != -1)
  {
    BRContainerIconCKAssetKeys_cold_1();
  }

  v1 = BRContainerIconCKAssetKeys_iconKeys;

  return v1;
}

void __BRContainerIconCKAssetKeys_block_invoke()
{
  v15 = *MEMORY[0x1E69E9840];
  v0 = _BRContainerIconSupportedNames();
  v1 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v0, "count")}];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = v0;
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [@"icon" stringByAppendingString:{*(*(&v10 + 1) + 8 * v6), v10}];
        [v1 addObject:v7];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  v8 = BRContainerIconCKAssetKeys_iconKeys;
  BRContainerIconCKAssetKeys_iconKeys = v1;

  v9 = *MEMORY[0x1E69E9840];
}

void br_pacer_pretend_event_handler_fired_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_1AE2A9000, a2, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: nil pacer fired%@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void brc_notify_post_cold_1()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = brc_bread_crumbs("brc_notify_post", 35);
  v1 = brc_default_log(0, 0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    v3 = 138412290;
    v4 = v0;
    _os_log_fault_impl(&dword_1AE2A9000, v1, OS_LOG_TYPE_FAULT, "[CRIT] Assertion failed: name%@", &v3, 0xCu);
  }

  v2 = *MEMORY[0x1E69E9840];
}

void __brc_leave_section_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 134218242;
  v5 = a2;
  v6 = 2112;
  v7 = a1;
  _os_log_debug_impl(&dword_1AE2A9000, log, OS_LOG_TYPE_DEBUG, "[DEBUG] ┗%llx %@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

void brc_xattr_set_string_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_1AE2A9000, v0, 0x90u, "[ERROR] can't set xattr %s [value is too long]%@", v2, 0x16u);
  v1 = *MEMORY[0x1E69E9840];
}

void _BRLocalizedString_cold_1()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = brc_bread_crumbs("_BRLocalizedString", 33);
  v1 = brc_default_log(0, 0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    v3 = 138412290;
    v4 = v0;
    _os_log_fault_impl(&dword_1AE2A9000, v1, OS_LOG_TYPE_FAULT, "[CRIT] Assertion failed: key != nil%@", &v3, 0xCu);
  }

  v2 = *MEMORY[0x1E69E9840];
}

void __OSVersion_block_invoke_cold_1(uint64_t a1, int a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 67109378;
  v4[1] = a2;
  v5 = 2112;
  v6 = a1;
  _os_log_error_impl(&dword_1AE2A9000, log, 0x90u, "[ERROR] sysctl(kern.osversion) failed %{errno}d%@", v4, 0x12u);
  v3 = *MEMORY[0x1E69E9840];
}

void BRTelemetryReportAddPeopleDisplayed_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 138412546;
  *&v4[4] = a1;
  *&v4[12] = 2112;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_6(&dword_1AE2A9000, a2, a3, "[DEBUG] BRTelemetry sending new Add People display with access = %@%@", *v4, *&v4[8], *&v4[16], *MEMORY[0x1E69E9840]);
  v3 = *MEMORY[0x1E69E9840];
}

void BRTelemetryReportSettingUpiCloudDriveDisplay_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 134218242;
  *&v4[4] = a2;
  *&v4[12] = 2112;
  *&v4[14] = a1;
  OUTLINED_FUNCTION_6(&dword_1AE2A9000, a2, a3, "[DEBUG] BRTelemetry sending new Setting Up iCloud Drive display with duration = %f%@", *v4, *&v4[8], *&v4[16], *MEMORY[0x1E69E9840]);
  v3 = *MEMORY[0x1E69E9840];
}

void __br_notify_register_dispatch_block_invoke_cold_2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&dword_1AE2A9000, v0, OS_LOG_TYPE_DEBUG, "[DEBUG] Not allowed to adopt persona but data-separatedness matches%@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void __br_notify_register_dispatch_block_invoke_cold_3()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&dword_1AE2A9000, v0, OS_LOG_TYPE_DEBUG, "[DEBUG] Not allowed to adopt persona - should fallback persona%@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void __br_notify_register_dispatch_block_invoke_cold_4()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  v4 = 2112;
  v5 = v0;
  _os_log_error_impl(&dword_1AE2A9000, v1, 0x90u, "[ERROR] won't restore persona: %@%@", v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

void CloudKitLibrary_cold_1()
{
  v4 = *MEMORY[0x1E69E9840];
  v0 = brc_bread_crumbs("CloudKitLibrary", 22);
  v1 = brc_default_log(1, 0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    dlerror();
    OUTLINED_FUNCTION_1();
    v3 = v0;
    _os_log_impl(&dword_1AE2A9000, v1, OS_LOG_TYPE_DEFAULT, "[WARNING] Can't open CloudKit : %s%@", v2, 0x16u);
  }

  __assert_rtn("CloudKitLibrary", "/Library/Caches/com.apple.xbs/Sources/CloudDocs/framework/operations/BRShareOperations.m", 22, "Can't open CloudKit");
}

void BRCopyUbiquityContainerIdentifiersForCurrentProcess_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_8_0(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x20u);
  v6 = *MEMORY[0x1E69E9840];
}

void BRCopyUbiquityContainerIdentifiersForCurrentProcess_cold_3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void BRGetProcessMobileContainerForID_cold_2(uint64_t *a1)
{
  OUTLINED_FUNCTION_8_0(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void __BRGetProcessMobileContainerForID_block_invoke_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_1AE2A9000, v0, v1, "[DEBUG] We've refreshed the container metadata in the last 10 seconds, ignoring the request%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void BRSynchronousEvictItemAtURLWithOptions_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_fault_impl(&dword_1AE2A9000, v0, OS_LOG_TYPE_FAULT, "[CRIT] BRSynchronousEvictItemAtURLWithOptions is deprecated in FPFS%@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void BRThumbnailChangedAtURL_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_fault_impl(&dword_1AE2A9000, v0, OS_LOG_TYPE_FAULT, "[CRIT] BRThumbnailChangedAtURL is deprecated in FPFS%@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void BRGetAttributeValuesForItem_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void BRGetAttributeValuesForItem_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void BRiWorkSharingSetSharingState_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_7_0(&dword_1AE2A9000, v0, v1, "[ERROR] Need a completion block and queue%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void BRiWorkSharingSetSharingState_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_7_0(&dword_1AE2A9000, v0, v1, "[ERROR] no file URL provided%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void BRSharingCopyCurrentUserIdentifier_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_7_0(&dword_1AE2A9000, v0, v1, "[ERROR] No completion handler or queue provided%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void BRSharingCopyCurrentUserNameAndDisplayHandleForURL_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_7_0(&dword_1AE2A9000, v0, v1, "[ERROR] No completion handler provided%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void BRSetMigrationStatusForDSIDInPref_cold_1()
{
  v16 = *MEMORY[0x1E69E9840];
  brc_bread_crumbs("BRSetMigrationStatusForDSIDInPref", 1596);
  objc_claimAutoreleasedReturnValue();
  v1 = OUTLINED_FUNCTION_6_0();
  v3 = brc_default_log(v1, v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    HIDWORD(v15) = HIDWORD(v0);
    OUTLINED_FUNCTION_10(&dword_1AE2A9000, v4, v5, "[CRIT] Assertion failed: dsid%@", v6, v7, v8, v9, 2u);
  }

  brc_bread_crumbs("BRSetMigrationStatusForDSIDInPref", 1598);
  objc_claimAutoreleasedReturnValue();
  v10 = OUTLINED_FUNCTION_6_0();
  v12 = brc_default_log(v10, v11);
  if (os_log_type_enabled(v12, 0x90u))
  {
    v14 = 138412290;
    v15 = v0;
    _os_log_error_impl(&dword_1AE2A9000, v12, 0x90u, "[ERROR] BRSetMigrationStatusForDSIDInPref called with nil dsid%@", &v14, 0xCu);
  }

  v13 = *MEMORY[0x1E69E9840];
}

void BRSetMigrationStatusForDSIDInPref_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_1AE2A9000, v0, v1, "[DEBUG] ignoring status refused on iOS%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void BRPrimaryiCloudAccountCopyStatus_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_8_0(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void BRPrimaryiCloudAccountCopyStatus_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void BRPrimaryiCloudAccountCopyStatus_cold_3(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_1AE2A9000, log, 0x90u, "[ERROR] unable to get primary account status; %@%@", buf, 0x16u);
}

void BRCloudDocsCanBeEnabledForCurrentUser_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_8_0(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x20u);
  v6 = *MEMORY[0x1E69E9840];
}

void __BRCloudDocsCanBeEnabledForCurrentUser_block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void __BRCloudDocsCanBeEnabledForCurrentUser_block_invoke_cold_2()
{
  v11 = *MEMORY[0x1E69E9840];
  brc_bread_crumbs("BRCloudDocsCanBeEnabledStateForURL", 1751);
  objc_claimAutoreleasedReturnValue();
  v1 = OUTLINED_FUNCTION_6_0();
  v3 = brc_default_log(v1, v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_10(&dword_1AE2A9000, v4, v5, "[CRIT] Assertion failed: volumeURL%@", v6, v7, v8, v9, 2u);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __BRCloudDocsCanBeEnabledForCurrentUser_block_invoke_cold_3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_1AE2A9000, v0, v1, "[DEBUG] no home%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __BRCloudDocsCanBeEnabledForCurrentUser_block_invoke_cold_4()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void __br_notify_register_dispatch_block_invoke_cold_4_0()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_1AE2A9000, v0, 0x90u, "[ERROR] won't restore persona: %@%@", v2, 0x16u);
  v1 = *MEMORY[0x1E69E9840];
}

void brc_default_log_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5(&dword_1AE2A9000, v0, v1, "[CRIT] Assertion failed: isDataSeparated%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void abc_report_assert_with_signature_cold_2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0(&dword_1AE2A9000, v0, v1, "[ERROR] Failed to send snapshot for signature %@%@");
  v2 = *MEMORY[0x1E69E9840];
}

void abc_report_assert_with_signature_cold_3()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6(&dword_1AE2A9000, v0, v1, "[DEBUG] Sent snapshot for signature %@%@");
  v2 = *MEMORY[0x1E69E9840];
}

void __abc_report_assert_with_signature_block_invoke_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6(&dword_1AE2A9000, v0, v1, "[DEBUG] got response from diagnosticReporter - %@%@");
  v2 = *MEMORY[0x1E69E9840];
}

void abc_report_panic_with_signature_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0(&dword_1AE2A9000, v0, v1, "[ERROR] Failed to send panic snapshot for signature %@%@");
  v2 = *MEMORY[0x1E69E9840];
}

void abc_report_panic_with_signature_cold_2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6(&dword_1AE2A9000, v0, v1, "[DEBUG] Sent panic snapshot for signature %@%@");
  v2 = *MEMORY[0x1E69E9840];
}

void offsetOfPackageRootFilenameInPath_cold_1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4_0();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

void notifyNameWithPrefixedContainerID_cold_1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4_0();
  _os_log_fault_impl(v0, v1, OS_LOG_TYPE_FAULT, v2, v3, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

void __br_notify_register_dispatch_block_invoke_cold_2_0(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_1AE2A9000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] Not allowed to adopt persona but data-separatedness matches%@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void __br_notify_register_dispatch_block_invoke_cold_3_0(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_1AE2A9000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] Not allowed to adopt persona - should fallback persona%@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void __br_notify_register_dispatch_block_invoke_cold_4_1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, 0x90u, v2, v3, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

void BRPerformWithPersonaAndError_cold_4(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_1AE2A9000, log, 0x90u, "[ERROR] won't restore persona: %@%@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

void getHomeDirectoryForUser_cold_1(int a1)
{
  v9 = *MEMORY[0x1E69E9840];
  strerror(a1);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_2(&dword_1AE2A9000, v1, v2, "[ERROR] can't get home dir path %s (%d)%@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

void getHomeDirectoryForUser_cold_2(int a1)
{
  v9 = *MEMORY[0x1E69E9840];
  strerror(a1);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_2(&dword_1AE2A9000, v1, v2, "[ERROR] can't get home dir path size %s (%d)%@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

void BRFetchCollaborationIdentifierForItemWithIdentifier_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6(&dword_1AE2A9000, v0, v1, "[DEBUG] group activity sharing item with %@%@");
  v2 = *MEMORY[0x1E69E9840];
}

void BRFetchCollaborationIdentifierForItemAtURL_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_1AE2A9000, a2, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: BRFetchCollaborationIdentifierForItemAtURL should not run when FPFS enabled%@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void BRFetchCKShareForItemAtURL_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6(&dword_1AE2A9000, v0, v1, "[DEBUG] group activity getting share at %@%@");
  v2 = *MEMORY[0x1E69E9840];
}

void __BRFetchCKShareForItemAtURL_block_invoke_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6(&dword_1AE2A9000, v0, v1, "[DEBUG] file is not shared, error: %@%@");
  v2 = *MEMORY[0x1E69E9840];
}

void init_SIGetLastUsedDate_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  dlerror();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_3(&dword_1AE2A9000, v0, v1, "[CRIT] Can't find _SIGetLastUsedDate in MobileSpotlightIndex framework :%s%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void MobileSpotlightIndexLibrary_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  v0 = brc_bread_crumbs("MobileSpotlightIndexLibrary", 21);
  v1 = brc_default_log(1, 0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315394;
    v3 = dlerror();
    v4 = 2112;
    v5 = v0;
    _os_log_impl(&dword_1AE2A9000, v1, OS_LOG_TYPE_DEFAULT, "[WARNING] Can't open MobileSpotlightIndex : %s%@", &v2, 0x16u);
  }

  __assert_rtn("MobileSpotlightIndexLibrary", "/Library/Caches/com.apple.xbs/Sources/CloudDocs/framework/SpotlightIndex_SoftLinking.m", 21, "Can't open MobileSpotlightIndex");
}

void init_SISetLastUsedDate_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  dlerror();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_3(&dword_1AE2A9000, v0, v1, "[CRIT] Can't find _SISetLastUsedDate in MobileSpotlightIndex framework :%s%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void init_SIActivityDump_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  dlerror();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_3(&dword_1AE2A9000, v0, v1, "[CRIT] Can't find _SIActivityDump in MobileSpotlightIndex framework :%s%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void BRCopyBundleIdentifierForURLInContainer_cold_1(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_debug_impl(&dword_1AE2A9000, log, OS_LOG_TYPE_DEBUG, "[DEBUG] non-package directory at '%@'%@", buf, 0x16u);
}

void BRTrashExternalDocumentReference_cold_2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6(&dword_1AE2A9000, v0, v1, "[DEBUG] target path is within the sharedDocs container, deleting target at %@%@");
  v2 = *MEMORY[0x1E69E9840];
}

void BRTrashExternalDocumentReference_cold_3()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6(&dword_1AE2A9000, v0, v1, "[DEBUG] deleting alias at %@%@");
  v2 = *MEMORY[0x1E69E9840];
}

void iCloudDriveCoreLibrary_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  v0 = brc_bread_crumbs("iCloudDriveCoreLibrary", 15);
  v1 = brc_default_log(1, 0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315394;
    v3 = dlerror();
    v4 = 2112;
    v5 = v0;
    _os_log_impl(&dword_1AE2A9000, v1, OS_LOG_TYPE_DEFAULT, "[WARNING] Can't open iCloudDriveCore : %s%@", &v2, 0x16u);
  }

  __assert_rtn("iCloudDriveCoreLibrary", "/Library/Caches/com.apple.xbs/Sources/CloudDocs/framework/BRDeviceToDevice.m", 15, "Can't open iCloudDriveCore");
}

void BRContainerIfDirectoryInHomeURLIsSynced_cold_1(void *a1, uint64_t a2, NSObject *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = [a1 path];
  v6 = *__error();
  v8 = 138412802;
  v9 = v5;
  v10 = 1024;
  v11 = v6;
  v12 = 2112;
  v13 = a2;
  _os_log_error_impl(&dword_1AE2A9000, a3, 0x90u, "[ERROR] can't get xattr on %@: %{errno}d%@", &v8, 0x1Cu);

  v7 = *MEMORY[0x1E69E9840];
}

void initCGImageSourceCreateWithURL_cold_1()
{
  OUTLINED_FUNCTION_10_1();
  v6 = *MEMORY[0x1E69E9840];
  dlerror();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_4();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void ImageIOLibrary_cold_1()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = brc_bread_crumbs("ImageIOLibrary", 56);
  v1 = brc_default_log(1, 0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    dlerror();
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_12(&dword_1AE2A9000, v2, v3, "[WARNING] Can't open ImageIO : %s%@", v4, v5, v6, v7, v8);
  }

  __assert_rtn("ImageIOLibrary", "/Library/Caches/com.apple.xbs/Sources/CloudDocs/framework/BRContainer.m", 56, "Can't open ImageIO");
}

void initCGImageSourceCreateImageAtIndex_cold_1()
{
  OUTLINED_FUNCTION_10_1();
  v6 = *MEMORY[0x1E69E9840];
  dlerror();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_4();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void initCGImageGetWidth_cold_1()
{
  OUTLINED_FUNCTION_10_1();
  v6 = *MEMORY[0x1E69E9840];
  dlerror();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_4();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void UIKitLibrary_cold_1()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = brc_bread_crumbs("UIKitLibrary", 75);
  v1 = brc_default_log(1, 0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    dlerror();
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_12(&dword_1AE2A9000, v2, v3, "[WARNING] Can't open UIKit : %s%@", v4, v5, v6, v7, v8);
  }

  __assert_rtn("UIKitLibrary", "/Library/Caches/com.apple.xbs/Sources/CloudDocs/framework/BRContainer.m", 75, "Can't open UIKit");
}

void initUIGraphicsBeginImageContextWithOptions_cold_1()
{
  OUTLINED_FUNCTION_10_1();
  v6 = *MEMORY[0x1E69E9840];
  dlerror();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_4();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void initCGContextClipToMask_cold_1()
{
  OUTLINED_FUNCTION_10_1();
  v6 = *MEMORY[0x1E69E9840];
  dlerror();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_4();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void initCGContextClipToMask_cold_2()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = brc_bread_crumbs("CoreGraphicsLibrary", 67);
  v1 = brc_default_log(1, 0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    dlerror();
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_12(&dword_1AE2A9000, v2, v3, "[WARNING] Can't open CoreGraphics : %s%@", v4, v5, v6, v7, v8);
  }

  __assert_rtn("CoreGraphicsLibrary", "/Library/Caches/com.apple.xbs/Sources/CloudDocs/framework/BRContainer.m", 67, "Can't open CoreGraphics");
}

void initUIGraphicsGetCurrentContext_cold_1()
{
  OUTLINED_FUNCTION_10_1();
  v6 = *MEMORY[0x1E69E9840];
  dlerror();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_4();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void initUIGraphicsGetImageFromCurrentImageContext_cold_1()
{
  OUTLINED_FUNCTION_10_1();
  v6 = *MEMORY[0x1E69E9840];
  dlerror();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_4();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void initUIGraphicsEndImageContext_cold_1()
{
  OUTLINED_FUNCTION_10_1();
  v6 = *MEMORY[0x1E69E9840];
  dlerror();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_4();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void initUIImagePNGRepresentation_cold_1()
{
  OUTLINED_FUNCTION_10_1();
  v6 = *MEMORY[0x1E69E9840];
  dlerror();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_4();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void UIKitLibrary_cold_1_0()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = brc_bread_crumbs("UIKitLibrary", 43);
  v1 = brc_default_log(1, 0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    dlerror();
    OUTLINED_FUNCTION_2();
    v3 = 2112;
    v4 = v0;
    _os_log_impl(&dword_1AE2A9000, v1, OS_LOG_TYPE_DEFAULT, "[WARNING] Can't open UIKit : %s%@", v2, 0x16u);
  }

  __assert_rtn("UIKitLibrary", "/Library/Caches/com.apple.xbs/Sources/CloudDocs/framework/notifs/BRQuery.m", 43, "Can't open UIKit");
}

void ___preComputeURLSForPersona_block_invoke_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6(&dword_1AE2A9000, v0, v1, "[DEBUG] Running in a ICD File Provider, optimizing flow for URL cache based on home directory. Home Directory: %@%@");
  v2 = *MEMORY[0x1E69E9840];
}

void ___preComputeURLSForPersona_block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_1AE2A9000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] Cannot get home directory%@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void BRContainerIconNameForCKAssetKey_cold_1()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = brc_bread_crumbs("BRContainerIconNameForCKAssetKey", 31);
  v1 = brc_default_log(0, 0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    v3 = 138412290;
    v4 = v0;
    _os_log_fault_impl(&dword_1AE2A9000, v1, OS_LOG_TYPE_FAULT, "[CRIT] Assertion failed: [[assetKey substringToIndex:4] isEqualToString:@icon]%@", &v3, 0xCu);
  }

  v2 = *MEMORY[0x1E69E9840];
}

void BRContainerIconSizeForName_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5_1(&dword_1AE2A9000, v0, v1, "[CRIT] UNREACHABLE: invalid key '%s'%@");
  v2 = *MEMORY[0x1E69E9840];
}