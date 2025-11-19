uint64_t _CalDatabaseCommitHook(uint64_t a1)
{
  _CalDatabaseReportIntegrityErrors(a1);
  if (!*(a1 + 104))
  {
    v5 = CDBLogHandle;
    if (!os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    v10 = 0;
    v6 = "The calendar database was committed, but we can't find the CPRecordStoreRef on it.";
    v7 = &v10;
LABEL_9:
    _os_log_impl(&dword_1DEBB1000, v5, OS_LOG_TYPE_ERROR, v6, v7, 2u);
    return 0;
  }

  Context = CPRecordStoreGetContext();
  if (!Context)
  {
    v5 = CDBLogHandle;
    if (!os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    v9 = 0;
    v6 = "The calendar database was committed, but we can't find the CalDatabaseRef on the record store.";
    v7 = &v9;
    goto LABEL_9;
  }

  v3 = Context;
  if ((*(Context + 363) & 1) == 0)
  {
    v4 = *(Context + 312);
    [v4 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_618];
    [*(v3 + 312) removeAllObjects];
  }

  return 0;
}

void CalDatabaseDatabaseDeletedHandler(uint64_t a1, int a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = CDBLogHandle;
  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
  {
    v9[0] = 67109120;
    v9[1] = a2;
    _os_log_impl(&dword_1DEBB1000, v4, OS_LOG_TYPE_ERROR, "Opening the database caused it to be deleted for reason: %d", v9, 8u);
  }

  if (!*(a1 + 104))
  {
    v6 = CDBLogHandle;
    if (!os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    LOWORD(v9[0]) = 0;
    v7 = "The calendar database was deleted when opened, but we can't find the CPRecordStoreRef to notify!";
LABEL_10:
    _os_log_impl(&dword_1DEBB1000, v6, OS_LOG_TYPE_ERROR, v7, v9, 2u);
    goto LABEL_11;
  }

  Context = CPRecordStoreGetContext();
  if (!Context)
  {
    v6 = CDBLogHandle;
    if (!os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    LOWORD(v9[0]) = 0;
    v7 = "The calendar database was deleted when opened, but we can't find the CalDatabaseRef to notify!";
    goto LABEL_10;
  }

  *(Context + 361) = 1;
LABEL_11:
  v8 = *MEMORY[0x1E69E9840];
}

void __CalDatabaseCreateWithConfiguration_block_invoke_89(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    pthread_mutex_lock(WeakRetained + 3);
    v3 = *&v2[2].__opaque[48];
    if (v3)
    {
      (*(v3 + 16))();
    }

    pthread_mutex_unlock(v2 + 3);

    CFRelease(v2);
  }
}

void _CalDatabaseStatementCompilationFailureHandler(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v19 = *MEMORY[0x1E69E9840];
  if (*(a1 + 8) == a2)
  {
    if (a3 == 1)
    {
      if (([MEMORY[0x1E6992F90] hasBeenUnlockedSinceBoot] & 1) == 0)
      {
        v5 = CDBLogHandle;
        if (!os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_16;
        }

        LOWORD(v17) = 0;
        v6 = "Ignoring statement creation failure because device has never unlocked.";
        goto LABEL_4;
      }

      _CalDatabaseValidateSchemaDeleteDBAndAbortOnFailure(a1, a2);
      v12 = CDBLogHandle;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_FAULT))
      {
        v17 = 136315394;
        *v18 = a4;
        *&v18[8] = 2080;
        *&v18[10] = a5;
        _os_log_impl(&dword_1DEBB1000, v12, OS_LOG_TYPE_FAULT, "Failed to compile sql statement %s: %s", &v17, 0x16u);
      }

      if (*(a1 + 104))
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          _CalDatabaseIntegrityError(Context, @"SQL Compile Error");
        }
      }
    }

    else
    {
      v14 = CDBLogHandle;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
      {
        v15 = v14;
        v17 = 67109378;
        *v18 = a3;
        *&v18[4] = 2082;
        *&v18[6] = sqlite3_errstr(a3);
        _os_log_impl(&dword_1DEBB1000, v15, OS_LOG_TYPE_ERROR, "Ignoring statement creation failure for error %i (%{public}s)", &v17, 0x12u);
      }
    }
  }

  else
  {
    v5 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v17) = 0;
      v6 = "Ignoring statement creation failure because the connection is read-only";
LABEL_4:
      _os_log_impl(&dword_1DEBB1000, v5, OS_LOG_TYPE_ERROR, v6, &v17, 2u);
    }
  }

LABEL_16:
  v16 = *MEMORY[0x1E69E9840];
}

void _CalDatabaseChangedExternally(uint64_t a1, uint64_t a2)
{
  v2 = _CalDatabaseCopyDatabaseIfValid(a2);
  if (!v2)
  {
    return;
  }

  v3 = v2;
  os_unfair_lock_lock(v2 + 20);
  v4 = *(v3 + 120);
  v5 = __OFSUB__(v4, 1);
  v6 = v4 - 1;
  if (v6 < 0 != v5)
  {
    goto LABEL_21;
  }

  *(v3 + 120) = v6;
  if (CDBLockingAssertionsEnabled == 1 && *(v3 + 24) != 0)
  {
    v8 = *(v3 + 24);
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      os_unfair_lock_assert_owner(Context + 20);
    }
  }

  LastSequenceNumber = CPRecordStoreGetLastSequenceNumber();
  if (LastSequenceNumber == -1)
  {
    LastSequenceNumber = *(v3 + 124);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    if (*(v3 + 24))
    {
      v11 = *(v3 + 24);
      v12 = CPRecordStoreGetContext();
      if (v12)
      {
        os_unfair_lock_assert_owner(v12 + 20);
      }
    }
  }

  if (CPRecordStoreGetSequenceNumber() != LastSequenceNumber)
  {
    *(v3 + 120) = 0;
LABEL_21:
    if ((*(v3 + 16) & 4) == 0)
    {
      _CalDatabaseRevertInternal(v3, 0);
    }

    if (CDBLockingAssertionsEnabled == 1)
    {
      os_unfair_lock_assert_owner((v3 + 80));
    }

    os_unfair_lock_unlock((v3 + 80));
    LocalCenter = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterPostNotification(LocalCenter, @"kCalDatabaseChangedExternallyNotification", v3, 0, 1u);
    goto LABEL_26;
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner((v3 + 80));
  }

  os_unfair_lock_unlock((v3 + 80));
LABEL_26:

  CFRelease(v3);
}

void CalDatabaseReceivedSQLProfileLoggingEnabledNotification(uint64_t a1, uint64_t a2, __CFString *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = CDBLogHandle;
  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v13 = 138412290;
    v14 = a3;
    _os_log_impl(&dword_1DEBB1000, v5, OS_LOG_TYPE_DEBUG, "Received notification: [%@]", &v13, 0xCu);
  }

  v6 = _CalDatabaseCopyDatabaseIfValid(a2);
  if (v6)
  {
    v7 = v6;
    v8 = [*(v6 + 296) get_sqlProfileLoggingEnabled];
    v9 = ct_green_tea_logging_enabled();
    v10 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v11 = @"Disabling";
      if (v8)
      {
        v11 = @"Enabling";
      }

      v13 = 138412546;
      v14 = v11;
      v15 = 2048;
      v16 = v7;
      _os_log_impl(&dword_1DEBB1000, v10, OS_LOG_TYPE_DEBUG, "[%@] profile logging for database: [%p]", &v13, 0x16u);
    }

    CalDatabaseSetProfilingEnabled(v7, v8, v9, 1);
    CFRelease(v7);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void CalDatabaseReceivedGreenTeaLoggingEnabledNotification(uint64_t a1, uint64_t a2, __CFString *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = CDBLogHandle;
  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v13 = 138412290;
    v14 = a3;
    _os_log_impl(&dword_1DEBB1000, v5, OS_LOG_TYPE_DEBUG, "Received notification: [%@]", &v13, 0xCu);
  }

  v6 = _CalDatabaseCopyDatabaseIfValid(a2);
  if (v6)
  {
    v7 = v6;
    v8 = [*(v6 + 296) get_sqlProfileLoggingEnabled];
    v9 = ct_green_tea_logging_enabled();
    v10 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v11 = @"Disabling";
      if (v9)
      {
        v11 = @"Enabling";
      }

      v13 = 138412546;
      v14 = v11;
      v15 = 2048;
      v16 = v7;
      _os_log_impl(&dword_1DEBB1000, v10, OS_LOG_TYPE_DEBUG, "[%@] greentea logging for database: [%p]", &v13, 0x16u);
    }

    CalDatabaseSetProfilingEnabled(v7, v8, v9, 1);
    CFRelease(v7);
  }

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t CalDatabaseCreateWithOptionsAndDatabaseDirectory(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = [MEMORY[0x1E695DFF8] fileURLWithPath:a2];
  }

  else
  {
    v3 = 0;
  }

  v4 = CalDatabaseCreateWithOptionsAndDatabaseDirectoryURL(a1, v3);

  return v4;
}

uint64_t CalDatabaseCreateWithOptionsAndDatabaseDirectoryURL(uint64_t a1, void *a2)
{
  v3 = a2;
  IfNeeded = CalDatabaseCopyDirectoryPathForDatabaseCreateIfNeeded(0, 0);
  if ((a1 & 0x800) != 0 || !v3 || ([v3 path], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isEqualToString:", IfNeeded), v5, v6))
  {
    v7 = [MEMORY[0x1E6993090] sharedInstance];
  }

  else
  {
    v8 = [v3 URLByAppendingPathComponent:*MEMORY[0x1E6993110] isDirectory:1];
    v7 = [objc_alloc(MEMORY[0x1E6992FF8]) initWithCalendarDataContainerURL:v8];
  }

  v9 = CalDatabaseCreateWithOptionsDatabaseDirectoryURLAndContainerProvider(a1, v3, v7);

  return v9;
}

CalDatabaseInitializationConfiguration *CalDatabaseCopyInitializationConfiguration(uint64_t a1)
{
  v2 = objc_alloc_init(CalDatabaseInitializationConfiguration);
  [(CalDatabaseInitializationConfiguration *)v2 setOptions:*(a1 + 16)];
  v3 = *(a1 + 136);
  if (!v3)
  {
    if (*(a1 + 128))
    {
      v3 = [MEMORY[0x1E695DFF8] fileURLWithPath:?];
    }

    else
    {
      v3 = 0;
    }
  }

  [(CalDatabaseInitializationConfiguration *)v2 setDirectoryURL:v3];
  [(CalDatabaseInitializationConfiguration *)v2 setDataContainerProvider:*(a1 + 288)];
  [(CalDatabaseInitializationConfiguration *)v2 setPreferences:*(a1 + 296)];

  return v2;
}

void CalDatabaseSetClientIdentifier(uint64_t a1, const void *a2)
{
  os_unfair_lock_lock((a1 + 80));
  v4 = *(a1 + 144);
  if (v4 != a2)
  {
    if (v4)
    {
      CFRelease(v4);
    }

    if (a2)
    {
      v5 = CFRetain(a2);
    }

    else
    {
      v5 = 0;
    }

    *(a1 + 144) = v5;
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner((a1 + 80));
  }

  os_unfair_lock_unlock((a1 + 80));
}

CFTypeRef CalDatabaseCopyClientIdentifierOptionalLock(uint64_t a1, char a2)
{
  if (a2)
  {
    os_unfair_lock_lock((a1 + 80));
    v3 = [*(a1 + 144) copy];
    if (CDBLockingAssertionsEnabled == 1)
    {
      os_unfair_lock_assert_owner((a1 + 80));
    }

    os_unfair_lock_unlock((a1 + 80));
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v3 = [*(a1 + 144) copy];
    if (!v3)
    {
LABEL_7:
      v3 = CalDatabaseGetProcessName();
    }
  }

  v4 = CFRetain(v3);

  return v4;
}

id CalDatabaseGetProcessName()
{
  v5 = *MEMORY[0x1E69E9840];
  buffer[0] = 0;
  v0 = getpid();
  proc_name(v0, buffer, 0x400u);
  v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:buffer];
  v2 = *MEMORY[0x1E69E9840];

  return v1;
}

uint64_t CalDatabaseSaveAndFlushCaches(uint64_t a1)
{
  cf = 0;
  if (!a1)
  {
    return 1;
  }

  v1 = 1;
  CalDatabaseSaveInternalWithOptions(a1, 1, 0, &cf, 4);
  if (cf)
  {
    CFRelease(cf);
    return 0;
  }

  return v1;
}

CFTypeRef CalDatabaseSaveAndFlushCachesWithConflictPolicy(CFTypeRef result, unsigned __int16 a2)
{
  v2 = 0;
  if (result)
  {
    CalDatabaseSaveInternalWithOptions(result, 1, a2, &v2, 4);
    return v2;
  }

  return result;
}

void CalDatabaseSaveInternalWithOptions(uint64_t a1, int a2, int a3, CFTypeRef *a4, char a5)
{
  v299 = *MEMORY[0x1E69E9840];
  v6 = (a5 & 2) == 0;
  v261 = CalDatabaseCopyClientIdentifierOptionalLock(a1, v6);
  v266 = a1;
  v262 = CalDatabaseCopyClientName(a1, v6);
  v7 = CDBLogHandle;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = CalBooleanAsString();
    *buf = 138543874;
    *&buf[4] = v261;
    *&buf[12] = 2114;
    *&buf[14] = v262;
    *&buf[22] = 2114;
    *&buf[24] = v8;
    _os_log_impl(&dword_1DEBB1000, v7, OS_LOG_TYPE_DEFAULT, "Commencing database save for client with identifier [%{public}@], name [%{public}@].  Commit: [%{public}@]", buf, 0x20u);
  }

  v264 = objc_alloc_init(MEMORY[0x1E6993060]);
  [v264 start];
  cf = 0;
  if ((a5 & 2) == 0)
  {
    os_unfair_lock_lock((v266 + 80));
  }

  *(v266 + 366) = (a5 & 4) != 0;
  _CalDatabaseTrimConsumedSequences(v266);
  v9 = v266;
  if (*(v266 + 24))
  {
    if (CDBLockingAssertionsEnabled == 1)
    {
      v10 = *(v266 + 24);
      Context = CPRecordStoreGetContext();
      if (Context)
      {
        os_unfair_lock_assert_owner(Context + 20);
      }
    }

    v12 = CPRecordStoreCopyAddedRecords();
    if (CDBLockingAssertionsEnabled == 1)
    {
      v13 = CPRecordStoreGetContext();
      if (v13)
      {
        os_unfair_lock_assert_owner(v13 + 20);
      }
    }

    v14 = CPRecordStoreCopyChangedRecords();
    if (CDBLockingAssertionsEnabled == 1)
    {
      v15 = CPRecordStoreGetContext();
      if (v15)
      {
        os_unfair_lock_assert_owner(v15 + 20);
      }
    }

    v16 = CPRecordStoreCopyDeletedRecords();
    v17 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1DEBB1000, v17, OS_LOG_TYPE_DEBUG, "Commencing log of changes to be saved.", buf, 2u);
      if (v12)
      {
        Count = CFArrayGetCount(v12);
        if (Count >= 1)
        {
          for (i = 0; i != Count; ++i)
          {
            v20 = objc_autoreleasePoolPush();
            ValueAtIndex = CFArrayGetValueAtIndex(v12, i);
            v22 = CDBLogHandle;
            if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEBUG))
            {
              v23 = v22;
              DebugDescription = _CalEntityGetDebugDescription(ValueAtIndex);
              *buf = 138412290;
              *&buf[4] = DebugDescription;
              _os_log_impl(&dword_1DEBB1000, v23, OS_LOG_TYPE_DEBUG, "Added entity: [%@]", buf, 0xCu);
            }

            objc_autoreleasePoolPop(v20);
          }
        }
      }

      if (v14)
      {
        v25 = CFArrayGetCount(v14);
        if (v25 >= 1)
        {
          for (j = 0; j != v25; ++j)
          {
            v27 = objc_autoreleasePoolPush();
            v28 = CFArrayGetValueAtIndex(v14, j);
            v29 = CDBLogHandle;
            if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEBUG))
            {
              v30 = v29;
              v31 = _CalEntityGetDebugDescription(v28);
              *buf = 138412290;
              *&buf[4] = v31;
              _os_log_impl(&dword_1DEBB1000, v30, OS_LOG_TYPE_DEBUG, "Updated entity: [%@]", buf, 0xCu);
            }

            objc_autoreleasePoolPop(v27);
          }
        }
      }

      if (v16)
      {
        v32 = CFArrayGetCount(v16);
        if (v32 >= 1)
        {
          for (k = 0; k != v32; ++k)
          {
            v34 = objc_autoreleasePoolPush();
            v35 = CFArrayGetValueAtIndex(v16, k);
            v36 = CDBLogHandle;
            if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEBUG))
            {
              v37 = v36;
              v38 = _CalEntityGetDebugDescription(v35);
              *buf = 138412290;
              *&buf[4] = v38;
              _os_log_impl(&dword_1DEBB1000, v37, OS_LOG_TYPE_DEBUG, "Deleted entity: [%@]", buf, 0xCu);
            }

            objc_autoreleasePoolPop(v34);
          }
        }
      }

      v39 = CDBLogHandle;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_1DEBB1000, v39, OS_LOG_TYPE_DEBUG, "Completed log of changes to be saved.", buf, 2u);
      }
    }

    v298 = 0;
    v296 = 0u;
    v297 = 0u;
    v294 = 0u;
    v295 = 0u;
    v293 = 0u;
    memset(buf, 0, sizeof(buf));
    v291 = 0;
    v289 = 0u;
    v290 = 0u;
    v287 = 0u;
    v288 = 0u;
    v285 = 0u;
    v286 = 0u;
    v284 = 0u;
    v283 = 0;
    v281 = 0u;
    v282 = 0u;
    v279 = 0u;
    v280 = 0u;
    v277 = 0u;
    v278 = 0u;
    v276 = 0u;
    LODWORD(theArray) = 0;
    *v272 = 0;
    v271 = 0;
    if (v12)
    {
      _CalDatabaseCountEntitiesByType(v12, buf, &theArray);
      CFRelease(v12);
    }

    if (v14)
    {
      _CalDatabaseCountEntitiesByType(v14, &v284, v272);
      CFRelease(v14);
    }

    if (v16)
    {
      _CalDatabaseCountEntitiesByType(v16, &v276, &v271);
      CFRelease(v16);
    }

    for (m = 0; m != 29; ++m)
    {
      v41 = *&buf[4 * m];
      if (v41 || *(&v284 + m) || *(&v276 + m))
      {
        v42 = CDBLogHandle;
        if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          v43 = v42;
          Name = CalEntityTypeGetName(m + 1);
          v45 = *(&v284 + m);
          v46 = *(&v276 + m);
          *v273 = 138544130;
          *&v273[4] = Name;
          *&v273[12] = 1024;
          *&v273[14] = v41;
          *&v273[18] = 1024;
          *&v273[20] = v45;
          v274 = 1024;
          v275 = v46;
          _os_log_impl(&dword_1DEBB1000, v43, OS_LOG_TYPE_DEFAULT, "Summary of changes being saved: %{public}@ (add: %i mod: %i del: %i)", v273, 0x1Eu);
        }
      }
    }

    v47 = theArray;
    v48 = *v272;
    v49 = v271;
    if (theArray || *v272 || v271)
    {
      v50 = CDBLogHandle;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *v273 = 67109632;
        *&v273[4] = v47;
        *&v273[8] = 1024;
        *&v273[10] = v48;
        *&v273[14] = 1024;
        *&v273[16] = v49;
        _os_log_impl(&dword_1DEBB1000, v50, OS_LOG_TYPE_DEFAULT, "Summary of changes being saved: Unknown (add: %i mod: %i del: %i)", v273, 0x14u);
      }
    }

    v9 = v266;
  }

  else
  {
    v51 = CDBLogHandle;
    if (!os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_61;
    }

    *buf = 0;
    _os_log_impl(&dword_1DEBB1000, v51, OS_LOG_TYPE_ERROR, "No recordStore found.  Will not log database changes to be saved.", buf, 2u);
  }

  if (*(v9 + 24))
  {
    v52 = *(v9 + 32);
    if (v52)
    {
      v259 = CFRetain(v52);
      _CalEventOccurrenceCacheBeginTrackingUpdates(v259);
      v9 = v266;
    }

    else
    {
      v259 = 0;
    }

    v53 = *(v9 + 40);
    if (v53)
    {
      v258 = CFRetain(v53);
      _CalScheduledTaskCacheBeginTrackingUpdates(v258);
      v9 = v266;
    }

    else
    {
      v258 = 0;
    }

    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*(v9 + 24))
      {
        v54 = *(v9 + 24);
        v55 = CPRecordStoreGetContext();
        if (v55)
        {
          os_unfair_lock_assert_owner(v55 + 20);
        }
      }
    }

    v56 = CPRecordStoreCopyChangedRecords();
    v57 = v56;
    if (v56)
    {
      v58 = CFArrayGetCount(v56);
      if (v58 >= 1)
      {
        v59 = 0;
        while (1)
        {
          v60 = CFArrayGetValueAtIndex(v57, v59);
          Type = _CalEntityGetType(v60);
          if (Type != 7)
          {
            break;
          }

          if (!_CalParticipantGetOwner(v60))
          {
            v65 = CDBLogHandle;
            if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              v63 = v65;
              v64 = "Attendee has no owner. We need to remove it.";
LABEL_85:
              _os_log_impl(&dword_1DEBB1000, v63, OS_LOG_TYPE_DEBUG, v64, buf, 2u);
            }

LABEL_86:
            _CalDatabaseRemoveEntity(v266, v60);
          }

LABEL_87:
          if (v58 == ++v59)
          {
            goto LABEL_88;
          }
        }

        if (Type != 8 || _CalParticipantGetOwner(v60))
        {
          goto LABEL_87;
        }

        v62 = CDBLogHandle;
        if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          v63 = v62;
          v64 = "Organizer has no owner.  We need to remove it.";
          goto LABEL_85;
        }

        goto LABEL_86;
      }

LABEL_88:
      CFRelease(v57);
    }

    theArray = 0;
    *&v284 = 0;
    *(&v284 + 1) = &v284;
    *&v285 = 0x2020000000;
    BYTE8(v285) = 0;
    *&v276 = 0;
    *(&v276 + 1) = &v276;
    *&v277 = 0x2020000000;
    BYTE8(v277) = 0;
    *v273 = 0;
    *&v273[8] = v273;
    *&v273[16] = 0x2020000000;
    LOBYTE(v274) = 0;
    v268[0] = MEMORY[0x1E69E9820];
    v268[1] = 3221225472;
    v268[2] = __CalDatabaseSaveInternalWithOptions_block_invoke;
    v268[3] = &unk_1E86886D8;
    v268[4] = &v284;
    v268[5] = &v276;
    v268[6] = v273;
    v252 = MEMORY[0x1E12C7520](v268);
    v66 = v266;
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*(v266 + 24))
      {
        v67 = *(v266 + 24);
        v68 = CPRecordStoreGetContext();
        if (v68)
        {
          os_unfair_lock_assert_owner(v68 + 20);
        }
      }
    }

    v69 = CPRecordStoreCopyAddedRecords();
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*(v266 + 24))
      {
        v70 = *(v266 + 24);
        v71 = CPRecordStoreGetContext();
        if (v71)
        {
          os_unfair_lock_assert_owner(v71 + 20);
        }
      }
    }

    v260 = CPRecordStoreCopyChangedRecords();
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*(v266 + 24))
      {
        v72 = *(v266 + 24);
        v73 = CPRecordStoreGetContext();
        if (v73)
        {
          os_unfair_lock_assert_owner(v73 + 20);
        }
      }
    }

    v267 = CPRecordStoreCopyDeletedRecords();
    v74 = *(v266 + 264);
    if (a2)
    {
      if (v69)
      {
        v253 = v69;
        if (v74)
        {
          v253 = [(__CFArray *)v69 arrayByAddingObjectsFromArray:?];
        }
      }

      else
      {
        v253 = *(v266 + 264);
      }

      v293 = 0u;
      memset(buf, 0, sizeof(buf));
      v78 = [MEMORY[0x1E695DF00] CalSimulatedDateForNow];
      *buf = 1;
      v79 = v78;
      v80 = [v79 dateByAddingTimeInterval:86400.0];
      v81 = [objc_alloc(MEMORY[0x1E6992F70]) initWithStartDate:v79 endDate:v80];
      v82 = *&buf[8];
      *&buf[8] = v81;

      *&buf[16] = 1;
      v83 = CalCopyCalendar();
      v84 = [v83 startOfDayForDate:v79];
      [MEMORY[0x1E69930B0] lookaheadIntervalForDaysPerEntry:*MEMORY[0x1E6992EA8]];
      v85 = [v84 dateByAddingTimeInterval:?];
      v86 = [objc_alloc(MEMORY[0x1E6992F70]) initWithStartDate:v84 endDate:v85];
      v87 = *&buf[24];
      *&buf[24] = v86;

      LOBYTE(v293) = 0;
      v88 = v266;
      _CalDatabaseChangesOfTypeMayAffectWidgets(v266, v253, 0, buf);
      if ((buf[1] & 1) == 0)
      {
        _CalDatabaseChangesOfTypeMayAffectWidgets(v266, v260, 1uLL, buf);
        if ((buf[1] & 1) == 0)
        {
          _CalDatabaseChangesOfTypeMayAffectWidgets(v266, v267, 2uLL, buf);
        }
      }

      v77 = buf[17];
      if (buf[17])
      {
        *(v266 + 84) |= 0x80u;
      }

      else
      {
        v89 = CDBWidgetReloadHandle;
        if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
        {
          *v272 = 0;
          _os_log_impl(&dword_1DEBB1000, v89, OS_LOG_TYPE_DEFAULT, "Disallowing reload for changes because they don't affect the widget", v272, 2u);
        }

        v88 = v266;
      }

      if (buf[1] == 1)
      {
        *(v88 + 84) |= 0x40u;
      }

      for (n = 40; n != -8; n -= 16)
      {
      }

      v66 = v266;
    }

    else
    {
      v75 = v69;
      if (v74)
      {
        if (!v69)
        {
          v253 = 0;
          v77 = 0;
          goto LABEL_129;
        }

        v75 = [*(v266 + 264) arrayByAddingObjectsFromArray:v69];
      }

      if (!v75 || (v76 = *(v266 + 264), v75 == v76))
      {
        v77 = 0;
      }

      else
      {
        if (v76)
        {
          CFRelease(v76);
        }

        v77 = 0;
        *(v266 + 264) = CFRetain(v75);
      }

      v253 = v69;
    }

LABEL_129:
    if (_os_feature_enabled_impl())
    {
      v91 = [EKWeakLinkClass() sharedNotifier];
      v92 = [v91 isObserved];

      if (v92)
      {
        v66 = v266;
        v251 = _CalDatabaseChangesOfTypeMayAffectAppEntities(v253, 0) || _CalDatabaseChangesOfTypeMayAffectAppEntities(v260, 1) || _CalDatabaseChangesOfTypeMayAffectAppEntities(v267, 2);
LABEL_137:
        if ((*(v66 + 365) & 1) != 0 || __CalDatabaseBeginWriteTransaction(v66, "write at /Library/Caches/com.apple.xbs/Sources/CalendarDatabase/CalendarDatabase/CalDatabase.m:2822"))
        {
          *(v66 + 365) = a2 ^ 1;
          if (((a2 ^ 1) & 1) == 0)
          {
            v94 = [[CalDatabaseChangeReport alloc] initWithAdded:v253 updated:v260 deleted:v267];
            v95 = 0;
LABEL_145:
            if (cf)
            {
              goto LABEL_239;
            }

            cf = _CalStoreSaveAddedRecords(v266);
            if (cf)
            {
              goto LABEL_239;
            }

            _CalDatabaseRemoveOrphanedEntitiesOfType(v266, 1, _CalCalendarHasValidParent);
            cf = _CalCalendarSaveAddedRecords(v266);
            if (cf)
            {
              goto LABEL_239;
            }

            _CalDatabaseRemoveOrphanedEntitiesOfType(v266, 28, _CalImageHasValidParent);
            cf = _CalImageSaveAddedRecords(v266);
            if (cf)
            {
              goto LABEL_239;
            }

            _CalDatabaseRemoveOrphanedEntitiesOfType(v266, 29, _CalColorHasValidParent);
            cf = _CalColorSaveAddedRecords(v266);
            if (cf)
            {
              goto LABEL_239;
            }

            v98 = *(v266 + 64);
            if (v98)
            {
              Mutable = CFSetCreateMutable(0, 0, MEMORY[0x1E695E9F8]);
              Value = CFDictionaryGetValue(v98, 2);
              if (Value)
              {
                CFSetApplyFunction(Value, _CalendarItemSetUnion, Mutable);
              }

              v101 = CFDictionaryGetValue(v98, 3);
              if (v101)
              {
                CFSetApplyFunction(v101, _CalendarItemSetUnion, Mutable);
              }

              if (Mutable)
              {
                if (CFSetGetCount(Mutable) >= 1)
                {
                  v102 = CFStringCreateMutable(0, 0);
                  v103 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
                  v104 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
                  *buf = v266;
                  *&buf[8] = v102;
                  *&buf[16] = v103;
                  *&buf[24] = v104;
                  CFSetApplyFunction(Mutable, _CalGatherAddedDetachedItemDetails, buf);
                  Length = CFStringGetLength(v102);
                  if (Length >= 1)
                  {
                    v300.length = 1;
                    v300.location = Length - 1;
                    CFStringDelete(v102, v300);
                    if (CDBLockingAssertionsEnabled == 1)
                    {
                      if (*(v266 + 24))
                      {
                        v106 = *(v266 + 24);
                        v107 = CPRecordStoreGetContext();
                        if (v107)
                        {
                          os_unfair_lock_assert_owner(v107 + 20);
                        }
                      }
                    }

                    Database = CPRecordStoreGetDatabase();
                    v109 = CFStringCreateMutable(0, 0);
                    CFStringAppendFormat(v109, 0, @"SELECT ROWID, orig_item_id, orig_date FROM CalendarItem WHERE orig_date IN (%@)", v102);
                    if (CDBLockingAssertionsEnabled == 1)
                    {
                      if (Database)
                      {
                        if (*(Database + 104))
                        {
                          v110 = CPRecordStoreGetContext();
                          if (v110)
                          {
                            os_unfair_lock_assert_owner(v110 + 20);
                          }
                        }
                      }
                    }

                    v111 = CPSqliteDatabaseStatementForReading();
                    v112 = v111;
                    if (v111)
                    {
                      if (CDBLockingAssertionsEnabled == 1)
                      {
                        if (*v111)
                        {
                          v113 = **v111;
                          if (v113)
                          {
                            if (*(v113 + 104))
                            {
                              v114 = CPRecordStoreGetContext();
                              if (v114)
                              {
                                os_unfair_lock_assert_owner(v114 + 20);
                              }
                            }
                          }
                        }
                      }

                      CPSqliteStatementSendResults();
                      if (CDBLockingAssertionsEnabled == 1)
                      {
                        if (*v112)
                        {
                          v115 = **v112;
                          if (v115)
                          {
                            if (*(v115 + 104))
                            {
                              v116 = CPRecordStoreGetContext();
                              if (v116)
                              {
                                os_unfair_lock_assert_owner(v116 + 20);
                              }
                            }
                          }
                        }
                      }

                      CPSqliteStatementReset();
                    }

                    CFRelease(v109);
                  }

                  CFRelease(v104);
                  CFRelease(v103);
                  CFRelease(v102);
                }

                CFRelease(Mutable);
              }
            }

            _CalDatabaseRemoveOrphanedEntitiesOfType(v266, 2, _CalCalendarItemHasValidParent);
            _CalDatabaseRemoveOrphanedEntitiesOfType(v266, 3, _CalCalendarItemHasValidParent);
            if (CDBLockingAssertionsEnabled == 1)
            {
              if (*(v266 + 24))
              {
                v117 = *(v266 + 24);
                v118 = CPRecordStoreGetContext();
                if (v118)
                {
                  os_unfair_lock_assert_owner(v118 + 20);
                }
              }
            }

            v119 = CPRecordStoreCopyAddedRecords();
            v120 = v119;
            if (v119)
            {
              v121 = CFArrayGetCount(v119);
              if (v121 >= 1)
              {
                for (ii = 0; ii != v121; ++ii)
                {
                  v123 = CFArrayGetValueAtIndex(v120, ii);
                  if (_CalEntityIsOfType(v123, 2))
                  {
                    _CalEventRectifyRecurrenceSeriesPrivacyLevels(v123);
                  }
                }
              }

              CFRelease(v120);
            }

            cf = _CalEventSaveAddedRecords(v266);
            if (cf)
            {
              goto LABEL_239;
            }

            _CalDatabaseRemoveOrphanedEntitiesOfType(v266, 4, _CalAlarmHasValidParent);
            cf = _CalAlarmSaveAddedRecords(v266);
            if (cf)
            {
              goto LABEL_239;
            }

            _CalDatabaseRemoveOrphanedEntitiesOfType(v266, 25, _CalAttachmentFileHasValidParent);
            cf = _CalAttachmentFileSaveAddedRecords(v266);
            if (cf)
            {
              goto LABEL_239;
            }

            _CalDatabaseRemoveOrphanedEntitiesOfType(v266, 11, _CalAttachmentHasValidParent);
            cf = _CalAttachmentSaveAddedRecords(v266);
            if (cf)
            {
              goto LABEL_239;
            }

            v124 = *(v266 + 24);
            if (CDBLockingAssertionsEnabled == 1)
            {
              if (v124)
              {
                v125 = *(v266 + 24);
                v126 = CPRecordStoreGetContext();
                if (v126)
                {
                  os_unfair_lock_assert_owner(v126 + 20);
                }
              }
            }

            v127 = CPRecordStoreCopyAddedRecords();
            v128 = v127;
            if (v127)
            {
              v129 = CFArrayGetCount(v127);
              if (v129 >= 1)
              {
                for (jj = 0; jj != v129; ++jj)
                {
                  v131 = CFArrayGetValueAtIndex(v128, jj);
                  if (_CalEntityIsOfType(v131, 20))
                  {
                    _CalSuggestedEventInfoInsertAndUpdateNotificationsForInfo(v131);
                  }
                }
              }

              CFRelease(v128);
            }

            if (CDBLockingAssertionsEnabled == 1)
            {
              if (v124)
              {
                v132 = CPRecordStoreGetContext();
                if (v132)
                {
                  os_unfair_lock_assert_owner(v132 + 20);
                }
              }
            }

            v133 = CPRecordStoreCopyChangedRecords();
            v134 = v133;
            if (v133)
            {
              v135 = CFArrayGetCount(v133);
              if (v135 >= 1)
              {
                for (kk = 0; kk != v135; ++kk)
                {
                  v137 = CFArrayGetValueAtIndex(v134, kk);
                  if (_CalEntityIsOfType(v137, 20))
                  {
                    _CalSuggestedEventInfoInsertAndUpdateNotificationsForInfo(v137);
                  }

                  else if (_CalEntityIsOfType(v137, 2) && _CalCalendarItemGetStatus(v137) == 3 && _CalEventIsSuggestedEvent(v137))
                  {
                    _CalSuggestedEventInfoInsertAndUpdateNotificationsForEvent(v137);
                  }
                }
              }

              CFRelease(v134);
            }

            if (CDBLockingAssertionsEnabled == 1)
            {
              if (v124)
              {
                v138 = CPRecordStoreGetContext();
                if (v138)
                {
                  os_unfair_lock_assert_owner(v138 + 20);
                }
              }
            }

            v139 = CPRecordStoreCopyDeletedRecords();
            v140 = v139;
            if (v139)
            {
              v141 = CFArrayGetCount(v139);
              if (v141 >= 1)
              {
                for (mm = 0; mm != v141; ++mm)
                {
                  v143 = CFArrayGetValueAtIndex(v140, mm);
                  if (_CalEntityIsOfType(v143, 20))
                  {
                    _CalSuggestedEventInfoRemoveNotificationsForInfo(v143);
                  }
                }
              }

              CFRelease(v140);
            }

            if (cf || (_CalDatabaseRemoveOrphanedEntitiesOfType(v266, 102, _CalNotificationHasValidParent), (cf = _CalNotificationSaveAddedRecords(v266)) != 0) || (cf = _CalAuxDatabaseSaveAddedRecords(v266)) != 0)
            {
LABEL_239:
              if ((v95 & 1) == 0)
              {
                __CalDatabaseRollbackTransaction(v266, "rollback at /Library/Caches/com.apple.xbs/Sources/CalendarDatabase/CalendarDatabase/CalDatabase.m:3092");
              }

              v144 = 0;
LABEL_242:
              v145 = v266;
              v146 = cf;
              if (*(v266 + 32) && cf)
              {
                _CalEventOccurrenceCacheStopTrackingAndRevert();
                v146 = cf;
                v145 = v266;
              }

              v147 = *(v145 + 40);
              if (v147)
              {
                if (v146)
                {
                  _CalScheduledTaskCacheStopTrackingUpdates(v147);
                  _CalScheduledTaskCacheRevert(*(v266 + 40));
                  if (a2)
                  {
                    _CalScheduledTaskCacheFinishSave(*(v266 + 40));
                  }
                }
              }

              v148 = v266;
              v149 = _CalDatabaseShouldPostInProcessChangeNotification(v266);
              v150 = 0;
              v151 = 0;
              if (!a2 || cf)
              {
                goto LABEL_294;
              }

              if ((*(v266 + 16) & 8) != 0)
              {
                v151 = 0;
                v150 = 0;
                goto LABEL_294;
              }

              v152 = v149;
              if (v144)
              {
                v153 = CFArrayGetCount(v144);
              }

              else
              {
                v153 = 0;
              }

              v154 = theArray;
              if (theArray)
              {
                v155 = CFArrayGetCount(theArray);
              }

              else
              {
                v155 = 0;
              }

              if (*(*(&v284 + 1) + 24))
              {
                goto LABEL_261;
              }

              v161 = *(*&v273[8] + 24);
              if ((*(*(&v276 + 1) + 24) & 1) == 0)
              {
                if ((*(*&v273[8] + 24) & 1) == 0)
                {
                  v151 = 0;
                  v150 = 0;
                  goto LABEL_293;
                }

                v150 = 2;
                goto LABEL_262;
              }

              if (*(*&v273[8] + 24))
              {
LABEL_261:
                v150 = 0;
              }

              else
              {
                v150 = 1;
              }

LABEL_262:
              if (v144)
              {
                v156 = v154 == 0;
              }

              else
              {
                v156 = 1;
              }

              v158 = !v156 && v155 + v153 < 513;
              if (v152)
              {
                v159 = [CalDatabaseInMemoryChangeTracking changeTrackingForDatabase:v266];
                v160 = v159;
                if (v158)
                {
                  [v159 addChangeset:v144 deletes:v154 clientID:*(v266 + 168) changeType:v150];
                }

                else
                {
                  [v159 clearAllChangesets];
                }

                v148 = v266;
              }

              else
              {
                if (v158)
                {
                  v148 = v266;
                  v162 = _CalDatabaseSendChangeNotificationAndObjectIdsToCalaccessd(v266, v144, v154, v150, a5 & 1, v262);
                }

                else
                {
                  v148 = v266;
                  v162 = _CalDatabaseSendChangeNotificationWithNoObjectIdsToCalaccessd(v266, v150);
                }

                if (!v162)
                {
                  _CalDatabasePostChangeNotificationToExternalClients(v148, v150);
                }
              }

              CalDatabaseRequestApplicationSnapshotUpdateWithRateLimiter();
              if (v77)
              {
                CalDatabaseRequestWidgetRefreshWithRateLimiter();
              }

              if (v251)
              {
                v163 = [EKWeakLinkClass() sharedNotifier];
                [v163 notifyObservers];

                v151 = v152;
LABEL_293:
                v148 = v266;
                goto LABEL_294;
              }

              v151 = v152;
LABEL_294:
              v164 = cf;
              if (((*(v148 + 272) | _IsUnitTesting) & 1) != 0 && a2 && !cf)
              {
                if ((*(v148 + 16) & 8) == 0)
                {
                  goto LABEL_306;
                }

                v165 = [CalDatabaseInMemoryChangeTracking changeTrackingForDatabase:v148];
                v166 = v165;
                if (v144 && theArray)
                {
                  [v165 addChangeset:v144 deletes:theArray clientID:*(v148 + 168) changeType:v150];
                }

                else
                {
                  [v165 clearAllChangesets];
                }

                v164 = cf;
                v148 = v266;
              }

              if (v164)
              {
                if (!a2)
                {
LABEL_387:
                  [(CalDatabaseChangeReport *)v94 changesSavedInDatabase:v148];
                  if (*(v148 + 366) == 1)
                  {
                    _CalDatabaseRevertInternal(v148, 1);
                    *(v148 + 366) = 0;
                  }

                  if (CDBLockingAssertionsEnabled == 1)
                  {
                    os_unfair_lock_assert_owner((v148 + 80));
                  }

                  os_unfair_lock_unlock((v148 + 80));
                  if (v151)
                  {
                    _CalDatabasePostDBOrSyncStatusChangeNotificationToInternalAndExternalClients(v148, v150, a5 & 1);
                  }

                  if (a2 && !v94)
                  {
                    v94 = [[CalDatabaseChangeReport alloc] initForReset];
                  }

                  if (v94)
                  {
                    CalDatabaseDistributeChangeReport(v148, v94, a5 & 1);
                  }

                  if (cf)
                  {
                    if (a4)
                    {
                      *a4 = cf;
                    }

                    else
                    {
                      CFRelease(cf);
                    }
                  }

                  if (v144)
                  {
                    CFRelease(v144);
                  }

                  if (theArray)
                  {
                    CFRelease(theArray);
                  }

                  if (v69)
                  {
                    CFRelease(v69);
                  }

                  if (v260)
                  {
                    CFRelease(v260);
                  }

                  if (v267)
                  {
                    CFRelease(v267);
                  }

                  if (v259)
                  {
                    CFRelease(v259);
                  }

                  if (v258)
                  {
                    CFRelease(v258);
                  }

                  [v264 stop];
                  v201 = CDBLogHandle;
                  if (os_log_type_enabled(v201, OS_LOG_TYPE_DEBUG))
                  {
                    v202 = CalBooleanAsString();
                    v203 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v264, "elapsedTimeAsNumber:", 1)}];
                    *buf = 138412546;
                    *&buf[4] = v202;
                    *&buf[12] = 2112;
                    *&buf[14] = v203;
                    _os_log_impl(&dword_1DEBB1000, v201, OS_LOG_TYPE_DEBUG, "Database save complete.  Commit: [%@].  Total time spent: [%@] milliseconds.", buf, 0x16u);
                  }

                  _Block_object_dispose(v273, 8);
                  _Block_object_dispose(&v276, 8);
                  _Block_object_dispose(&v284, 8);
                  goto LABEL_419;
                }

LABEL_385:
                v200 = *(v148 + 264);
                if (v200)
                {
                  CFRelease(v200);
                  *(v148 + 264) = 0;
                }

                goto LABEL_387;
              }

LABEL_306:
              if (v267 && CFArrayGetCount(v267) >= 1)
              {
                if (CalDatabaseIsCurrentProcessCalaccessd_onceToken != -1)
                {
                  CalDatabaseCreateWithConfiguration_cold_2();
                  v148 = v266;
                }

                if (CalDatabaseIsCurrentProcessCalaccessd_isCalaccessd == 1)
                {
                  if (_CalDatabaseVacuumIfNeeded_onceToken != -1)
                  {
                    CalDatabaseSaveInternalWithOptions_cold_2();
                    v148 = v266;
                  }

                  Current = CFAbsoluteTimeGetCurrent();
                  if (Current - *&_CalDatabaseVacuumIfNeeded___LastVacuumTimestamp > 3.0)
                  {
                    if (CDBLockingAssertionsEnabled == 1)
                    {
                      if (*(v148 + 24))
                      {
                        v168 = *(v148 + 24);
                        v169 = CPRecordStoreGetContext();
                        if (v169)
                        {
                          os_unfair_lock_assert_owner(v169 + 20);
                        }
                      }
                    }

                    v170 = CPRecordStoreGetDatabase();
                    if (CDBLockingAssertionsEnabled == 1)
                    {
                      if (v170)
                      {
                        if (*(v170 + 104))
                        {
                          v171 = CPRecordStoreGetContext();
                          if (v171)
                          {
                            os_unfair_lock_assert_owner(v171 + 20);
                          }
                        }
                      }
                    }

                    v172 = CPSqliteDatabaseConnectionForWritingWithSqlite3OpenFlags();
                    v173 = v172;
                    if (v172)
                    {
                      if (CDBLockingAssertionsEnabled == 1)
                      {
                        if (*v172)
                        {
                          if (*(*v172 + 104))
                          {
                            v174 = CPRecordStoreGetContext();
                            if (v174)
                            {
                              os_unfair_lock_assert_owner(v174 + 20);
                            }
                          }
                        }
                      }

                      v175 = CPSqliteConnectionStatementForSQL();
                      if (CDBLockingAssertionsEnabled == 1)
                      {
                        if (*v173)
                        {
                          if (*(*v173 + 104))
                          {
                            v176 = CPRecordStoreGetContext();
                            if (v176)
                            {
                              os_unfair_lock_assert_owner(v176 + 20);
                            }
                          }
                        }
                      }

                      v177 = CPSqliteConnectionStatementForSQL();
                      if (v175)
                      {
                        v178 = v177;
                        if (v177)
                        {
                          *v272 = 0;
                          if (CDBLockingAssertionsEnabled == 1)
                          {
                            if (*v175)
                            {
                              v179 = **v175;
                              if (v179)
                              {
                                if (*(v179 + 104))
                                {
                                  v180 = CPRecordStoreGetContext();
                                  if (v180)
                                  {
                                    os_unfair_lock_assert_owner(v180 + 20);
                                  }
                                }
                              }
                            }
                          }

                          v255 = CPSqliteStatementIntegerResult();
                          if (CDBLockingAssertionsEnabled == 1)
                          {
                            if (*v175)
                            {
                              v181 = **v175;
                              if (v181)
                              {
                                if (*(v181 + 104))
                                {
                                  v182 = CPRecordStoreGetContext();
                                  if (v182)
                                  {
                                    os_unfair_lock_assert_owner(v182 + 20);
                                  }
                                }
                              }
                            }
                          }

                          CPSqliteStatementReset();
                          if (CDBLockingAssertionsEnabled == 1)
                          {
                            if (*v178)
                            {
                              v183 = **v178;
                              if (v183)
                              {
                                if (*(v183 + 104))
                                {
                                  v184 = CPRecordStoreGetContext();
                                  if (v184)
                                  {
                                    os_unfair_lock_assert_owner(v184 + 20);
                                  }
                                }
                              }
                            }
                          }

                          v185 = CPSqliteStatementIntegerResult();
                          if (CDBLockingAssertionsEnabled == 1)
                          {
                            if (*v178)
                            {
                              v186 = **v178;
                              if (v186)
                              {
                                if (*(v186 + 104))
                                {
                                  v187 = CPRecordStoreGetContext();
                                  if (v187)
                                  {
                                    os_unfair_lock_assert_owner(v187 + 20);
                                  }
                                }
                              }
                            }
                          }

                          CPSqliteStatementReset();
                          if (*v272 != 1)
                          {
                            v188 = v255 - v185;
                            v189 = v188 / v255;
                            if (v189 <= 0.85 || v185 >= 512)
                            {
                              v190 = v185 - v188;
                              if (v189 >= 0.4)
                              {
                                v190 = (v185 * 0.2);
                              }

                              v191 = CFStringCreateWithFormat(0, 0, @"pragma incremental_vacuum(%d);", v190);
                              if (v191)
                              {
                                if (CDBLockingAssertionsEnabled == 1)
                                {
                                  if (*v173)
                                  {
                                    if (*(*v173 + 104))
                                    {
                                      v192 = CPRecordStoreGetContext();
                                      if (v192)
                                      {
                                        os_unfair_lock_assert_owner(v192 + 20);
                                      }
                                    }
                                  }
                                }

                                v193 = CPSqliteConnectionStatementForSQL();
                                if (v193)
                                {
                                  if (CDBLockingAssertionsEnabled == 1)
                                  {
                                    if (*v193)
                                    {
                                      v194 = **v193;
                                      if (v194)
                                      {
                                        if (*(v194 + 104))
                                        {
                                          v195 = CPRecordStoreGetContext();
                                          if (v195)
                                          {
                                            os_unfair_lock_assert_owner(v195 + 20);
                                          }
                                        }
                                      }
                                    }
                                  }

                                  CPSqliteStatementSendResults();
                                }

                                else
                                {
                                  v196 = CDBLogHandle;
                                  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
                                  {
                                    v197 = v173[1];
                                    v198 = v196;
                                    v199 = sqlite3_errmsg(v197);
                                    *buf = 138412546;
                                    *&buf[4] = v191;
                                    *&buf[12] = 2080;
                                    *&buf[14] = v199;
                                    _os_log_impl(&dword_1DEBB1000, v198, OS_LOG_TYPE_ERROR, "Couldn't get statement for SQL %@\nError: %s", buf, 0x16u);

                                    v148 = v266;
                                  }
                                }

                                CFRelease(v191);
                              }
                            }
                          }
                        }
                      }
                    }

                    _CalDatabaseVacuumIfNeeded___LastVacuumTimestamp = *&Current;
                  }
                }
              }

              if (!a2)
              {
                goto LABEL_387;
              }

              *(v148 + 84) = 0;
              *(v148 + 88) = 0;
              goto LABEL_385;
            }

            _CalDatabaseRemoveOrphanedEntitiesOfType(v266, 7, _CalParticipantHasValidParent);
            _CalDatabaseRemoveOrphanedEntitiesOfType(v266, 8, _CalParticipantHasValidParent);
            _CalDatabaseRemoveOrphanedEntitiesOfType(v266, 9, _CalEventActionHasValidParent);
            _CalDatabaseRemoveOrphanedEntitiesOfType(v266, 5, _CalRecurrenceHasValidParent);
            _CalDatabaseRemoveOrphanedEntitiesOfType(v266, 10, _CalExceptionDateHasValidParent);
            _CalDatabaseRemoveOrphanedEntitiesOfType(v266, 14, _CalLocationHasValidParent);
            _CalDatabaseRemoveOrphanedEntitiesOfType(v266, 15, _CalShareeHasValidParent);
            _CalDatabaseRemoveOrphanedEntitiesOfType(v266, 16, _CalNotificationHasValidParent);
            _CalDatabaseRemoveOrphanedEntitiesOfType(v266, 18, _CalResourceChangeHasValidParent);
            _CalDatabaseRemoveOrphanedEntitiesOfType(v266, 20, _CalSuggestedEventInfoHasValidParent);
            _CalDatabaseRemoveOrphanedEntitiesOfType(v266, 21, _CalContactHasValidParent);
            _CalDatabaseRemoveOrphanedEntitiesOfType(v266, 23, _CalConferenceHasValidParent);
            _CalDatabaseRemoveOrphanedEntitiesOfType(v266, 24, _CalErrorHasValidParent);
            _CalDatabaseRemoveOrphanedEntitiesOfType(v266, 27, _CalAuxDatabaseAccountHasValidParent);
            v205 = *(v266 + 64);
            if (v205)
            {
              CFRelease(v205);
              *(v266 + 64) = 0;
            }

            v206 = *(v266 + 72);
            if (v206)
            {
              CFRelease(v206);
              *(v266 + 72) = 0;
            }

            v207 = *(v266 + 96);
            if (v207)
            {
              CFRelease(v207);
              *(v266 + 96) = 0;
            }

            v144 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
            theArray = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
            if (!v260 || (v248 = CFArrayGetCount(v260), v248 < 1))
            {
LABEL_461:
              if (v267)
              {
                v250 = CFArrayGetCount(v267);
                if (v250 >= 1)
                {
                  for (nn = 0; nn != v250; ++nn)
                  {
                    v223 = CFArrayGetValueAtIndex(v267, nn);
                    RecordID = _CalEntityGetRecordID(v223);
                    v225 = RecordID;
                    if (RecordID)
                    {
                      if (!CalDatabaseChangesToRecordIDShouldBeIgnoredByEventKit(RecordID))
                      {
                        if (_CalEntityIsOfType(v223, 24))
                        {
                          *(*(&v276 + 1) + 24) = 1;
                          validateAndAddObjectID(theArray, v225);
                        }

                        else
                        {
                          (v252)[2](v252, v223);
                          validateAndAddObjectID(theArray, v225);
                          addRelatedObjectIDsForDeletedRecord(v223, &theArray);
                        }
                      }
                    }

                    else
                    {
                      v226 = CDBLogHandle;
                      if (os_log_type_enabled(v226, OS_LOG_TYPE_ERROR))
                      {
                        ID = CPRecordGetID();
                        if (CDBLockingAssertionsEnabled == 1)
                        {
                          if (v223)
                          {
                            if (CPRecordGetStore())
                            {
                              v228 = CPRecordStoreGetContext();
                              if (v228)
                              {
                                os_unfair_lock_assert_owner(v228 + 20);
                              }
                            }
                          }
                        }

                        IsDeleted = CPRecordIsDeleted();
                        *buf = 67109376;
                        *&buf[4] = ID;
                        *&buf[8] = 1024;
                        *&buf[10] = IsDeleted;
                        _os_log_impl(&dword_1DEBB1000, v226, OS_LOG_TYPE_ERROR, "CalDatabaseSaveInternal: failed to get recordID for deleted record with rowid [%d], deleted: %d", buf, 0xEu);
                      }
                    }
                  }
                }
              }

              v230 = CDBLockingAssertionsEnabled;
              if (!*(v266 + 24))
              {
                v230 = 0;
              }

              if (a2)
              {
                if (v230)
                {
                  v231 = *(v266 + 24);
                  v232 = CPRecordStoreGetContext();
                  if (v232)
                  {
                    os_unfair_lock_assert_owner(v232 + 20);
                  }
                }

                v233 = CPRecordStoreSaveWithPreAndPostCallbacksAndTransactionType();
                v234 = v233;
                if (a3 != 1 && v233 != 1)
                {
                  if (cf)
                  {
                    Domain = CFErrorGetDomain(cf);
                    if (Domain)
                    {
                      if (CFStringCompare(Domain, *MEMORY[0x1E698B6C8], 0) == kCFCompareEqualTo && CFErrorGetCode(cf) == 2)
                      {
                        CFRelease(cf);
                        cf = 0;
                        if (CDBLockingAssertionsEnabled == 1)
                        {
                          if (*(v266 + 24))
                          {
                            v236 = *(v266 + 24);
                            v237 = CPRecordStoreGetContext();
                            if (v237)
                            {
                              os_unfair_lock_assert_owner(v237 + 20);
                            }
                          }
                        }

                        v234 = CPRecordStoreSaveWithPreAndPostCallbacksAndTransactionType();
                      }
                    }
                  }
                }

                if (v234)
                {
                  __CalDatabaseCommitTransaction(v266, "commit at /Library/Caches/com.apple.xbs/Sources/CalendarDatabase/CalendarDatabase/CalDatabase.m:3064");
                }

                else
                {
                  __CalDatabaseRollbackTransaction(v266, "rollback at /Library/Caches/com.apple.xbs/Sources/CalendarDatabase/CalendarDatabase/CalDatabase.m:3066");
                }
              }

              else
              {
                if (v230)
                {
                  v238 = *(v266 + 24);
                  v239 = CPRecordStoreGetContext();
                  if (v239)
                  {
                    os_unfair_lock_assert_owner(v239 + 20);
                  }
                }

                CPRecordStoreProcessAddedRecordsWithPolicyAndTransactionType();
              }

              if (v253)
              {
                v256 = CFArrayGetCount(v253);
                if (v256 >= 1)
                {
                  for (i1 = 0; i1 != v256; ++i1)
                  {
                    v241 = CFArrayGetValueAtIndex(v253, i1);
                    v242 = _CalEntityGetRecordID(v241);
                    v243 = v242;
                    if (v242)
                    {
                      if (!CalDatabaseChangesToRecordIDShouldBeIgnoredByEventKit(v242))
                      {
                        if (_CalEntityIsOfType(v241, 24))
                        {
                          *(*(&v276 + 1) + 24) = 1;
                        }

                        else
                        {
                          (v252)[2](v252, v241);
                        }

                        validateAndAddObjectID(v144, v243);
                      }
                    }

                    else
                    {
                      v244 = CDBLogHandle;
                      if (os_log_type_enabled(v244, OS_LOG_TYPE_ERROR))
                      {
                        v245 = CPRecordGetID();
                        if (CDBLockingAssertionsEnabled == 1)
                        {
                          if (v241)
                          {
                            if (CPRecordGetStore())
                            {
                              v246 = CPRecordStoreGetContext();
                              if (v246)
                              {
                                os_unfair_lock_assert_owner(v246 + 20);
                              }
                            }
                          }
                        }

                        v247 = CPRecordIsDeleted();
                        *buf = 67109376;
                        *&buf[4] = v245;
                        *&buf[8] = 1024;
                        *&buf[10] = v247;
                        _os_log_impl(&dword_1DEBB1000, v244, OS_LOG_TYPE_ERROR, "CalDatabaseSaveInternal: failed to get recordID for added record with rowid [%d], deleted: %d", buf, 0xEu);
                      }
                    }
                  }
                }
              }

              goto LABEL_242;
            }

            v208 = 0;
            while (1)
            {
              v249 = CFArrayGetValueAtIndex(v260, v208);
              v209 = _CalEntityGetRecordID(v249);
              v210 = v209;
              if (!v209)
              {
                v215 = CDBLogHandle;
                if (os_log_type_enabled(v215, OS_LOG_TYPE_ERROR))
                {
                  v216 = CPRecordGetID();
                  if (CDBLockingAssertionsEnabled == 1)
                  {
                    if (v249)
                    {
                      if (CPRecordGetStore())
                      {
                        v217 = CPRecordStoreGetContext();
                        if (v217)
                        {
                          os_unfair_lock_assert_owner(v217 + 20);
                        }
                      }
                    }
                  }

                  v218 = CPRecordIsDeleted();
                  *buf = 67109376;
                  *&buf[4] = v216;
                  *&buf[8] = 1024;
                  *&buf[10] = v218;
                  _os_log_impl(&dword_1DEBB1000, v215, OS_LOG_TYPE_ERROR, "CalDatabaseSaveInternal: failed to get recordID for updated record with rowid [%d], deleted: %d", buf, 0xEu);
                }

                goto LABEL_460;
              }

              if (!CalDatabaseChangesToRecordIDShouldBeIgnoredByEventKit(v209))
              {
                if (CalRecordIDGetEntityType(v210) == 6)
                {
                  HasDirtyInstanceAttributes = _CalStoreHasDirtyInstanceAttributes(v249);
                  HasDirtySyncAttributes = _CalStoreHasDirtySyncAttributes(v249);
                  _CalStoreClearDirtyAttributes(v249);
                  if (!HasDirtyInstanceAttributes)
                  {
                    if (!HasDirtySyncAttributes)
                    {
                      goto LABEL_460;
                    }

LABEL_447:
                    *(*(&v276 + 1) + 24) = 1;
                    validateAndAddObjectID(v144, v210);
                    goto LABEL_460;
                  }

                  v213 = _CalStoreAllowsEvents(v249);
                  v214 = _CalStoreAllowedEvents(v249);
                  if (v213 || v214)
                  {
                    if (v213 || !v214)
                    {
                      goto LABEL_458;
                    }

                    (v252)[2](v252, v249);
                    validateAndAddObjectID(theArray, v210);
                    addRelatedObjectIDsForDeletedRecord(v249, &theArray);
                  }
                }

                else
                {
                  if (CalRecordIDGetEntityType(v210) != 1)
                  {
                    if (_CalEntityIsOfType(v249, 11))
                    {
                      HasDirtyNotifiableAttributes = _CalAttachmentHasDirtyInstanceAttributes(v249);
LABEL_454:
                      if (!HasDirtyNotifiableAttributes)
                      {
                        goto LABEL_460;
                      }

                      goto LABEL_458;
                    }

                    if (_CalEntityIsOfType(v249, 101))
                    {
                      HasDirtyNotifiableAttributes = _CalCalendarItemHasDirtyNotifiableAttributes(v249);
                      goto LABEL_454;
                    }

                    if (_CalEntityIsOfType(v249, 24))
                    {
                      *(*(&v276 + 1) + 24) = 1;
                    }

                    else
                    {
LABEL_458:
                      (v252)[2](v252, v249);
                    }

                    validateAndAddObjectID(v144, v210);
                    goto LABEL_460;
                  }

                  v219 = _CalCalendarHasDirtyInstanceAttributes(v249);
                  v220 = _CalCalendarHasDirtySyncAttributes(v249);
                  if (v219)
                  {
                    goto LABEL_458;
                  }

                  if (v220)
                  {
                    goto LABEL_447;
                  }
                }
              }

LABEL_460:
              if (v248 == ++v208)
              {
                goto LABEL_461;
              }
            }
          }
        }

        else
        {
          v96 = CDBLogHandle;
          if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_1DEBB1000, v96, OS_LOG_TYPE_ERROR, "Couldn't begin a transaction. Won't save the database", buf, 2u);
          }

          v97 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CalDatabaseErrorDomain" code:1 userInfo:0];

          cf = v97;
        }

        v94 = 0;
        v95 = 1;
        goto LABEL_145;
      }

      v93 = CDBAppEntityHandle;
      v66 = v266;
      if (os_log_type_enabled(CDBAppEntityHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1DEBB1000, v93, OS_LOG_TYPE_DEFAULT, "App Entity Observation: no observers", buf, 2u);
      }
    }

    v251 = 0;
    goto LABEL_137;
  }

  v51 = CDBLogHandle;
LABEL_61:
  if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_1DEBB1000, v51, OS_LOG_TYPE_DEBUG, "No record store found.  Will not proceed with saving the database.", buf, 2u);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner((v9 + 80));
  }

  os_unfair_lock_unlock((v9 + 80));
LABEL_419:

  v204 = *MEMORY[0x1E69E9840];
}

void sub_1DEBC4724(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose(&a65, 8);
  _Unwind_Resume(a1);
}

void CalDatabaseSetStatementCacheLimit(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 80));
  if (CDBLockingAssertionsEnabled == 1 && *(a1 + 24) != 0)
  {
    v3 = *(a1 + 24);
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      os_unfair_lock_assert_owner(Context + 20);
    }
  }

  Database = CPRecordStoreGetDatabase();
  if (CDBLockingAssertionsEnabled == 1 && Database != 0)
  {
    if (*(Database + 104))
    {
      v7 = CPRecordStoreGetContext();
      if (v7)
      {
        os_unfair_lock_assert_owner(v7 + 20);
      }
    }
  }

  CPSqliteDatabaseSetStatementCacheLimit();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner((a1 + 80));
  }

  os_unfair_lock_unlock((a1 + 80));
}

uint64_t CalDatabaseStatementCacheLimit(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 80));
  if (CDBLockingAssertionsEnabled == 1 && *(a1 + 24) != 0)
  {
    v3 = *(a1 + 24);
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      os_unfair_lock_assert_owner(Context + 20);
    }
  }

  Database = CPRecordStoreGetDatabase();
  if (CDBLockingAssertionsEnabled == 1 && Database != 0)
  {
    if (*(Database + 104))
    {
      v7 = CPRecordStoreGetContext();
      if (v7)
      {
        os_unfair_lock_assert_owner(v7 + 20);
      }
    }
  }

  StatementCacheLimit = CPSqliteDatabaseGetStatementCacheLimit();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner((a1 + 80));
  }

  os_unfair_lock_unlock((a1 + 80));
  return StatementCacheLimit;
}

uint64_t CalDatabaseCopyAddedRecords(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 80));
  if (CDBLockingAssertionsEnabled == 1 && *(a1 + 24) != 0)
  {
    v3 = *(a1 + 24);
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      os_unfair_lock_assert_owner(Context + 20);
    }
  }

  v5 = CPRecordStoreCopyAddedRecords();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner((a1 + 80));
  }

  os_unfair_lock_unlock((a1 + 80));
  return v5;
}

CFTypeRef CalDatabaseSaveWithConflictPolicy(CFTypeRef result, unsigned __int16 a2)
{
  v2 = 0;
  if (result)
  {
    CalDatabaseSaveInternalWithOptions(result, 1, a2, &v2, 0);
    return v2;
  }

  return result;
}

uint64_t CalDatabaseSaveWithOptions(uint64_t a1, char a2)
{
  cf = 0;
  if (!a1)
  {
    return 1;
  }

  v2 = 1;
  CalDatabaseSaveInternalWithOptions(a1, 1, 0, &cf, a2);
  if (cf)
  {
    CFRelease(cf);
    return 0;
  }

  return v2;
}

void CalDatabaseProcessAddedRecords(uint64_t a1)
{
  cf = 0;
  if (a1)
  {
    CalDatabaseSaveInternalWithOptions(a1, 0, 0, &cf, 0);
    if (cf)
    {
      CFRelease(cf);
    }
  }
}

CFTypeRef CalDatabaseProcessAddedRecordsWithConflictPolicy(CFTypeRef result, unsigned __int16 a2)
{
  v2 = 0;
  if (result)
  {
    CalDatabaseSaveInternalWithOptions(result, 0, a2, &v2, 0);
    return v2;
  }

  return result;
}

void CalDatabaseSetProperty(os_unfair_lock_s *a1, uint64_t a2, uint64_t a3)
{
  os_unfair_lock_lock(a1 + 20);
  _CalDatabaseSetProperty(a1, a2, a3);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
}

uint64_t _CalDatabaseSetProperty(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 24);
  if (v3)
  {
    if (CDBLockingAssertionsEnabled == 1)
    {
      v6 = *(result + 24);
      Context = CPRecordStoreGetContext();
      if (Context)
      {
        os_unfair_lock_assert_owner(Context + 20);
      }
    }

    return MEMORY[0x1EEDEC858](v3, a2, a3);
  }

  return result;
}

uint64_t CalDatabaseCopyProperty(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 20);
  v2 = _CalDatabaseCopyProperty(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  return v2;
}

uint64_t _CalDatabaseCopyProperty(uint64_t a1)
{
  if (!*(a1 + 24))
  {
    return 0;
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    v1 = *(a1 + 24);
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      os_unfair_lock_assert_owner(Context + 20);
    }
  }

  return CPRecordStoreCopyValueForProperty();
}

void CalDatabaseRemoveProperty(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 80));
  v4 = *(a1 + 24);
  if (v4)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __CalDatabaseRemoveProperty_block_invoke;
    v5[3] = &__block_descriptor_48_e5_v8__0l;
    v5[4] = v4;
    v5[5] = a2;
    [*(a1 + 320) performWithWriteLock:v5];
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner((a1 + 80));
  }

  os_unfair_lock_unlock((a1 + 80));
}

uint64_t __CalDatabaseRemoveProperty_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (CDBLockingAssertionsEnabled == 1 && v2 != 0)
  {
    v4 = *(a1 + 32);
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      os_unfair_lock_assert_owner(Context + 20);
    }
  }

  v6 = *(a1 + 40);

  return MEMORY[0x1EEDEC818](v2, v6);
}

void CalDatabaseSetIntegerProperty(os_unfair_lock_s *a1, uint64_t a2, uint64_t a3)
{
  os_unfair_lock_lock(a1 + 20);
  _CalDatabaseSetIntegerProperty(a1, a2, a3);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
}

void _CalDatabaseSetIntegerProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = CFStringCreateWithFormat(0, 0, @"%d", a3);
  if (v5)
  {
    v6 = v5;
    _CalDatabaseSetProperty(a1, a2, v5);

    CFRelease(v6);
  }
}

uint64_t CalDatabaseCopyUniqueIdentifier(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 80));
  v2 = *(a1 + 24);
  if (v2)
  {
    if (CDBLockingAssertionsEnabled == 1)
    {
      v3 = *(a1 + 24);
      Context = CPRecordStoreGetContext();
      if (Context)
      {
        os_unfair_lock_assert_owner(Context + 20);
      }
    }

    Database = CPRecordStoreGetDatabase();
    v2 = Database;
    if (Database)
    {
      if (CDBLockingAssertionsEnabled == 1)
      {
        if (*(Database + 104))
        {
          v6 = CPRecordStoreGetContext();
          if (v6)
          {
            os_unfair_lock_assert_owner(v6 + 20);
          }
        }
      }

      v2 = CPSqliteDatabaseCopyUniqueIdentifier();
    }
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner((a1 + 80));
  }

  os_unfair_lock_unlock((a1 + 80));
  return v2;
}

void CalDatabaseSetChangeLoggingEnabled(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 80));
  v2 = *(a1 + 24);
  CPRecordStoreLogChanges();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner((a1 + 80));
  }

  os_unfair_lock_unlock((a1 + 80));
}

uint64_t CalDatabaseIsChangeLoggingEnabled(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 80));
  v2 = *(a1 + 24);
  IsLoggingChanges = CPRecordStoreIsLoggingChanges();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner((a1 + 80));
  }

  os_unfair_lock_unlock((a1 + 80));
  return IsLoggingChanges;
}

void CalDatabaseSetPropertyModificationLoggingEnabled(uint64_t a1, char a2)
{
  os_unfair_lock_lock((a1 + 80));
  *(a1 + 256) = a2;
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner((a1 + 80));
  }

  os_unfair_lock_unlock((a1 + 80));
}

uint64_t CalDatabaseIsPropertyModificationLoggingEnabled(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 80));
  v2 = *(a1 + 256);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner((a1 + 80));
  }

  os_unfair_lock_unlock((a1 + 80));
  return v2;
}

uint64_t CalDatabaseGetSequenceNumber(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 80));
  if (CDBLockingAssertionsEnabled == 1 && *(a1 + 24) != 0)
  {
    v3 = *(a1 + 24);
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      os_unfair_lock_assert_owner(Context + 20);
    }
  }

  SequenceNumber = CPRecordStoreGetSequenceNumber();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner((a1 + 80));
  }

  os_unfair_lock_unlock((a1 + 80));
  return SequenceNumber;
}

void CalDatabaseRevert(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 20);
  _CalDatabaseRevertInternal(a1, 0);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
}

void CalDatabaseReset(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 20);
  _CalDatabaseRevertInternal(a1, 1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
}

void CalDatabaseInvalidateCaches(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 80));
  if (*(a1 + 24))
  {
    if (CDBLockingAssertionsEnabled == 1)
    {
      v2 = *(a1 + 24);
      Context = CPRecordStoreGetContext();
      if (Context)
      {
        os_unfair_lock_assert_owner(Context + 20);
      }
    }

    CPRecordStoreInvalidateCaches();
    *(a1 + 160) = CalMonotonicTime();
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner((a1 + 80));
  }

  os_unfair_lock_unlock((a1 + 80));
}

uint64_t CalDatabaseGetLastCacheInvalidationTimestamp(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 80));
  v2 = *(a1 + 160);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner((a1 + 80));
  }

  os_unfair_lock_unlock((a1 + 80));
  return v2;
}

uint64_t CalDatabaseCountCachedRecords(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 80));
  if (CDBLockingAssertionsEnabled == 1 && *(a1 + 24) != 0)
  {
    v3 = *(a1 + 24);
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      os_unfair_lock_assert_owner(Context + 20);
    }
  }

  v5 = CPRecordStoreCountCachedRecords();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner((a1 + 80));
  }

  os_unfair_lock_unlock((a1 + 80));
  return v5;
}

uint64_t CalDatabaseFlushStatementCache(uint64_t a1)
{
  if (!a1)
  {
    return CFLog();
  }

  if (CDBLockingAssertionsEnabled == 1 && *(a1 + 24) != 0)
  {
    v2 = *(a1 + 24);
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      os_unfair_lock_assert_owner(Context + 20);
    }
  }

  Database = CPRecordStoreGetDatabase();
  if (CDBLockingAssertionsEnabled == 1 && Database != 0)
  {
    if (*(Database + 104))
    {
      v6 = CPRecordStoreGetContext();
      if (v6)
      {
        os_unfair_lock_assert_owner(v6 + 20);
      }
    }
  }

  v7 = CPSqliteDatabaseConnectionForWritingWithSqlite3OpenFlags();
  v8 = v7;
  if (CDBLockingAssertionsEnabled == 1 && v7 != 0)
  {
    if (*v7)
    {
      if (*(*v7 + 104))
      {
        v10 = CPRecordStoreGetContext();
        if (v10)
        {
          os_unfair_lock_assert_owner(v10 + 20);
        }
      }
    }
  }

  return MEMORY[0x1EEDEC8B8](v8);
}

void _CalDatabasePerformPreferenceMigrationIfNeeded(uint64_t a1, int a2, int a3)
{
  v6 = [*(a1 + 296) preferences];
  v7 = [v6 getIntegerPreference:@"PrefMigrationSeed" defaultValue:0];
  if (v7 < 6 || a3 != 0)
  {
    v9 = v7;
    if (v7 < 1)
    {
      v10 = *MEMORY[0x1E6993150];
      v11 = [v6 getValueForPreference:*MEMORY[0x1E6993150] expectedClass:0];
      if (v11)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || ([v11 BOOLValue] & 1) == 0)
        {
          [v6 setBooleanPreference:v10 value:1 notificationName:0];
        }
      }

      v12 = *MEMORY[0x1E6993148];
      v13 = [v6 getValueForPreference:*MEMORY[0x1E6993148] expectedClass:objc_opt_class()];
      if (v13)
      {
        [v6 setValueForPreference:*MEMORY[0x1E6993158] value:v13 notificationName:0];
        [v6 removePreference:v12 notificationName:0];
      }
    }

    if (v9 > 1 || a2 == 0)
    {
      if (v9 > 3)
      {
        if (!a3)
        {
          goto LABEL_29;
        }

        goto LABEL_25;
      }
    }

    else
    {
      v15 = CDBLogHandle;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *v32 = 0;
        _os_log_impl(&dword_1DEBB1000, v15, OS_LOG_TYPE_DEFAULT, "Cleaning up plist...", v32, 2u);
      }

      [v6 removePreference:@"DefaultCalendarUID" notificationName:0];
      [v6 removePreference:@"DefaultCalendarDatabaseID" notificationName:0];
      [v6 removePreference:@"DefaultCalendarStoreUID" notificationName:0];
      [v6 removePreference:@"DefaultCalendarName" notificationName:0];
    }

    [v6 removePreference:@"BirthdayEventsGenerationVersion" notificationName:0];
    if (!a3)
    {
      goto LABEL_29;
    }

LABEL_25:
    v17 = v6;
    v18 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F59EF9C8];
    v19 = _overrideTimezoneName(v17);
    if (v19 && [v18 containsObject:v19])
    {
      v20 = [MEMORY[0x1E695DFE8] timeZoneWithName:@"Asia/Shanghai"];
      [v17 setValueForPreference:*MEMORY[0x1E6993158] value:@"Asia/Shanghai" notificationName:0];
      CalSetDefaultTimeZone();
      v21 = [MEMORY[0x1E698B670] sharedManager];
      v22 = [v21 defaultCityForTimeZone:v20];

      v23 = *MEMORY[0x1E6993140];
      v24 = [v22 properties];
      [v17 setValueForPreference:v23 value:v24 notificationName:0];
    }

LABEL_29:
    if (v9 >= 5)
    {
      if (v9 > 5)
      {
LABEL_39:
        [v6 setIntegerPreference:@"PrefMigrationSeed" value:6 notificationName:0];
        goto LABEL_40;
      }
    }

    else
    {
      [v6 removePreference:@"OwnerEmailAddress" notificationName:0];
      [v6 removePreference:@"defaultCalendarName" notificationName:0];
    }

    v25 = [*(a1 + 296) get_defaultCalendarStoreUID];
    v26 = [*(a1 + 296) get_defaultCalendarID];
    if (v26)
    {
      if (v25 >= 1)
      {
        v27 = CalDatabaseCopyStoreWithUID(a1);
        if (v27)
        {
          v28 = v27;
          v29 = CalDatabaseCopyCalendarWithExternalIDInStore(a1, v26, v27);
          if (v29)
          {
            v30 = v29;
            v31 = CalCalendarCopyUUID(v29);
            CFRelease(v30);
            [*(a1 + 296) set_defaultCalendarID:v31];
          }

          CFRelease(v28);
        }
      }
    }

    goto LABEL_39;
  }

LABEL_40:
}

void __CalDatabasePerformMigrationIfNeeded_block_invoke()
{
  v150 = *MEMORY[0x1E69E9840];
  v0 = +[CDBPreferences sharedReadWrite];
  if ([v0 get_migrationAttempts] <= 2)
  {

    goto LABEL_40;
  }

  v1 = [v0 get_allowUnlimitedMigrationAttempts];

  if (v1)
  {
    goto LABEL_40;
  }

  v2 = CDBLogHandle;
  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_FAULT))
  {
    *&buf = 0x304000100;
    _os_log_impl(&dword_1DEBB1000, v2, OS_LOG_TYPE_FAULT, "Migration has failed to complete %i consecutive times; deleting database and starting over.", &buf, 8u);
  }

  v3 = +[CDBPreferences sharedReadWrite];
  IfNeeded = CalDatabaseCopyDirectoryPathForDatabaseCreateIfNeeded(0, 1);
  v5 = [(__CFString *)IfNeeded stringByAppendingPathComponent:*MEMORY[0x1E69930F0]];
  *&buf = 0;
  v6 = v5;
  v7 = sqlite3_open_v2([v5 fileSystemRepresentation], &buf, 1, 0);
  if (v7 || !buf)
  {
    v21 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      LODWORD(ppStmt[0]) = 67109120;
      HIDWORD(ppStmt[0]) = v7;
      _os_log_impl(&dword_1DEBB1000, v21, OS_LOG_TYPE_ERROR, "Error opening database that couldn't be migrated to search for related databases. (%i)", ppStmt, 8u);
    }

    goto LABEL_31;
  }

  ppStmt[0] = 0;
  v8 = sqlite3_prepare_v2(buf, "SELECT path FROM AuxDatabase", -1, ppStmt, 0);
  if (v8 || !ppStmt[0])
  {
    v22 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v147 = 67109120;
      *&v147[4] = v8;
      _os_log_impl(&dword_1DEBB1000, v22, OS_LOG_TYPE_ERROR, "Error compiling statement to find aux database paths. (%i)", v147, 8u);
    }

    sqlite3_close(buf);
LABEL_31:
    v9 = 0;
    goto LABEL_32;
  }

  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  while (1)
  {
    v10 = sqlite3_step(ppStmt[0]);
    v11 = v10;
    if (v10 != 100)
    {
      break;
    }

    v16 = sqlite3_column_text(ppStmt[0], 0);
    if (v16 && ([MEMORY[0x1E696AEC0] stringWithUTF8String:v16], (v17 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      [v9 addObject:v17];
    }

    else
    {
      v18 = CDBLogHandle;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
      {
        *v147 = 0;
        v13 = v18;
        v14 = "Invalid cstring returned by sqlite3_column_text loading aux database paths";
        v15 = 2;
        goto LABEL_21;
      }
    }

LABEL_22:
    if (v11 != 100)
    {
      goto LABEL_23;
    }
  }

  if (v10 && v10 != 101)
  {
    v12 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v147 = 67109120;
      *&v147[4] = v11;
      v13 = v12;
      v14 = "Error stepping. (%i)";
      v15 = 8;
LABEL_21:
      _os_log_impl(&dword_1DEBB1000, v13, OS_LOG_TYPE_ERROR, v14, v147, v15);
      goto LABEL_22;
    }

    goto LABEL_22;
  }

LABEL_23:
  sqlite3_finalize(ppStmt[0]);
  v19 = sqlite3_close(buf);
  if (v19)
  {
    v20 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v147 = 67109120;
      *&v147[4] = v19;
      _os_log_impl(&dword_1DEBB1000, v20, OS_LOG_TYPE_ERROR, "Error closing database: %i", v147, 8u);
    }
  }

LABEL_32:
  _CalDatabaseDeleteDatabaseBecauseOfExcessiveFailedMigrationAttempts(IfNeeded);
  v141 = 0u;
  v142 = 0u;
  *ppStmt = 0u;
  v140 = 0u;
  v23 = v9;
  v24 = [v23 countByEnumeratingWithState:ppStmt objects:&buf count:16];
  if (v24)
  {
    v25 = *v140;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v140 != v25)
        {
          objc_enumerationMutation(v23);
        }

        _CalDatabaseDeleteDatabaseBecauseOfExcessiveFailedMigrationAttempts(*(ppStmt[1] + i));
      }

      v24 = [v23 countByEnumeratingWithState:ppStmt objects:&buf count:16];
    }

    while (v24);
  }

  [v3 set_migrationAttempts:0];
  v27 = [objc_alloc(MEMORY[0x1E6992EE8]) initWithType:@"Database" subtype:@"MigrationFailure" context:@"General"];
  [v27 setIgnoreRateLimiting:1];
  [v27 report];

LABEL_40:
  v28 = +[CDBPreferences sharedReadWrite];
  [v28 set_migrationAttempts:{objc_msgSend(v28, "get_migrationAttempts") + 1}];

  v131 = os_transaction_create();
  v29 = CalDatabaseCreateWithOptionsAndDatabaseDirectoryURL(204, 0);
  os_unfair_lock_lock((v29 + 80));
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (*(v29 + 24))
    {
      v30 = *(v29 + 24);
      Context = CPRecordStoreGetContext();
      if (Context)
      {
        os_unfair_lock_assert_owner(Context + 20);
      }
    }
  }

  Database = CPRecordStoreGetDatabase();
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (Database)
    {
      if (*(Database + 104))
      {
        v33 = CPRecordStoreGetContext();
        if (v33)
        {
          os_unfair_lock_assert_owner(v33 + 20);
        }
      }
    }
  }

  v34 = CPSqliteDatabaseConnectionForReading();
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (v34)
    {
      if (*v34)
      {
        if (*(*v34 + 104))
        {
          v35 = CPRecordStoreGetContext();
          if (v35)
          {
            os_unfair_lock_assert_owner(v35 + 20);
          }
        }
      }
    }
  }

  v36 = CPSqliteConnectionDatabaseVersion();
  if (v36 < 19002 || !_CalDatabaseGetIntegerProperty(v29) || (v37 = _CalDatabaseTargetBirthdayMigrationState(), ((v37 ^ (_CalDatabaseGetIntegerProperty(v29) != 0)) & 1) != 0))
  {
    v38 = 1;
    goto LABEL_59;
  }

  if (v36 == 19002)
  {
    v76 = _CalDatabaseCopyAllAuxDatabases(v29);
    v141 = 0u;
    v142 = 0u;
    *ppStmt = 0u;
    v140 = 0u;
    v77 = v76;
    v78 = [v77 countByEnumeratingWithState:ppStmt objects:&buf count:16];
    if (v78)
    {
      v133 = *v140;
      *&v79 = 138543362;
      v130 = v79;
      do
      {
        v80 = 0;
        do
        {
          if (*v140 != v133)
          {
            objc_enumerationMutation(v77);
          }

          v81 = *(ppStmt[1] + v80);
          v82 = _CalAuxDatabaseGetPath(v81);
          v83 = CalDatabaseCreateWithOptionsAndDatabaseDirectory(4300, v82);
          if (!v83)
          {
            v92 = _CalColorGetData(v81);
            v93 = CDBLogHandle;
            if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEFAULT))
            {
              *v147 = 138543618;
              *&v147[4] = v92;
              *&v147[12] = 2114;
              *&v147[14] = v82;
              _os_log_impl(&dword_1DEBB1000, v93, OS_LOG_TYPE_DEFAULT, "Didn't find aux DB for persona %{public}@ at path %{public}@. Getting current path for persona", v147, 0x16u);
            }

            v94 = [*(v29 + 288) containerInfoForPersonaIdentifier:{v92, v130}];
            v95 = [v94 containerURL];
            v96 = v95;
            if (!v94)
            {
              v97 = CDBLogHandle;
              if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
              {
                *v147 = v130;
                *&v147[4] = v92;
                v98 = v97;
                v99 = "Couldn't look up persona %{public}@";
                goto LABEL_153;
              }

LABEL_155:

              goto LABEL_156;
            }

            if (!v95)
            {
              v100 = CDBLogHandle;
              if (!os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_155;
              }

              *v147 = v130;
              *&v147[4] = v92;
              v98 = v100;
              v99 = "No container for persona %{public}@";
LABEL_153:
              v101 = 12;
LABEL_154:
              _os_log_impl(&dword_1DEBB1000, v98, OS_LOG_TYPE_ERROR, v99, v147, v101);
              goto LABEL_155;
            }

            v83 = CalDatabaseCreateWithOptionsAndDatabaseDirectoryURL(4300, v95);
            if (!v83)
            {
              v102 = CDBLogHandle;
              if (!os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_155;
              }

              *v147 = 138543618;
              *&v147[4] = v92;
              *&v147[12] = 2114;
              *&v147[14] = v96;
              v98 = v102;
              v99 = "Still couldn't open aux DB for persona %{public}@ after looking up current container URL %{public}@";
              v101 = 22;
              goto LABEL_154;
            }
          }

          os_unfair_lock_lock((v83 + 80));
          if (CDBLockingAssertionsEnabled == 1)
          {
            if (*(v83 + 24))
            {
              v84 = *(v83 + 24);
              v85 = CPRecordStoreGetContext();
              if (v85)
              {
                os_unfair_lock_assert_owner(v85 + 20);
              }
            }
          }

          v86 = CPRecordStoreGetDatabase();
          if (CDBLockingAssertionsEnabled == 1)
          {
            if (v86)
            {
              if (*(v86 + 104))
              {
                v87 = CPRecordStoreGetContext();
                if (v87)
                {
                  os_unfair_lock_assert_owner(v87 + 20);
                }
              }
            }
          }

          v88 = CPSqliteDatabaseConnectionForReading();
          if (CDBLockingAssertionsEnabled == 1)
          {
            if (v88)
            {
              if (*v88)
              {
                if (*(*v88 + 104))
                {
                  v89 = CPRecordStoreGetContext();
                  if (v89)
                  {
                    os_unfair_lock_assert_owner(v89 + 20);
                  }
                }
              }
            }
          }

          v90 = CPSqliteConnectionDatabaseVersion();
          if (v90 <= 19001)
          {
            v91 = CDBLogHandle;
            if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
            {
              *v147 = 67109376;
              *&v147[4] = 19002;
              *&v147[8] = 1024;
              *&v147[10] = v90;
              _os_log_impl(&dword_1DEBB1000, v91, OS_LOG_TYPE_ERROR, "Main database schema is up-to-date (%i), but aux database schema is out-of-date. (%i)", v147, 0xEu);
            }
          }

          if (CDBLockingAssertionsEnabled == 1)
          {
            os_unfair_lock_assert_owner((v83 + 80));
          }

          os_unfair_lock_unlock((v83 + 80));
          CFRelease(v83);
          if (v90 < 19002)
          {

            v38 = 1;
            goto LABEL_201;
          }

LABEL_156:

          ++v80;
        }

        while (v78 != v80);
        v103 = [v77 countByEnumeratingWithState:ppStmt objects:&buf count:16];
        v78 = v103;
      }

      while (v103);
    }

    v38 = 0;
LABEL_201:
  }

  else
  {
    v38 = 0;
  }

LABEL_59:
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner((v29 + 80));
  }

  os_unfair_lock_unlock((v29 + 80));
  CFRelease(v29);
  cf = CalDatabaseCreateWithOptionsAndDatabaseDirectoryURL(13, 0);
  CalDatabaseSetIsSafeForUseInDataMigration(cf, 1);
  v39 = CDBLogHandle;
  v40 = os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT);
  if (v38)
  {
    if (v40)
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_1DEBB1000, v39, OS_LOG_TYPE_DEFAULT, "****** [CDB MIGRATION] Migration needed", &buf, 2u);
    }

    CalDatabaseSetChangeLoggingEnabled(cf);
    _CalDatabasePerformSchemaMigrationIfNeededOnDatabase(cf);
    v41 = [MEMORY[0x1E6992F10] legacyCalendarDataContainer];
    v42 = CalDatabaseGetCalendarDataContainerProvider(cf);
    [CDBAttachmentMigrator migrateWithLegacyCalendarDataContainer:v41 calendarDataContainerProvider:v42 database:cf];
    if (_os_feature_enabled_impl())
    {
      os_unfair_lock_lock(cf + 20);
      if (_CalDatabaseGetIntegerProperty(cf) || !_CalDatabaseMigrateToMultipleDatabases(cf))
      {
        if (CDBLockingAssertionsEnabled == 1)
        {
          os_unfair_lock_assert_owner(cf + 20);
        }

        os_unfair_lock_unlock(cf + 20);
      }

      else
      {
        _CalDatabaseSetIntegerProperty(cf, @"DataSeparationMigrationCompleted", 1);
        CalDatabaseSaveWithOptions(cf, 2);
      }
    }

    v43 = CalDatabaseCopyAllAuxDatabases(cf);
    v44 = CDBLogHandle;
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      v45 = [v43 count];
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v45;
      _os_log_impl(&dword_1DEBB1000, v44, OS_LOG_TYPE_DEFAULT, "****** [CDB MIGRATION] %lu aux databases to migrate", &buf, 0xCu);
    }

    v136 = 0u;
    v137 = 0u;
    v134 = 0u;
    v135 = 0u;
    v46 = v43;
    v47 = [v46 countByEnumeratingWithState:&v134 objects:ppStmt count:16];
    if (v47)
    {
      v48 = *v135;
      do
      {
        for (j = 0; j != v47; ++j)
        {
          if (*v135 != v48)
          {
            objc_enumerationMutation(v46);
          }

          v50 = CalAuxDatabaseCopyPath(*(*(&v134 + 1) + 8 * j));
          v51 = CDBLogHandle;
          if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf) = 138412290;
            *(&buf + 4) = v50;
            _os_log_impl(&dword_1DEBB1000, v51, OS_LOG_TYPE_DEFAULT, "****** [CDB MIGRATION] migrating aux database at %@", &buf, 0xCu);
          }

          v52 = CalDatabaseCreateWithOptionsAndDatabaseDirectory(2061, v50);
          CalDatabaseSetChangeLoggingEnabled(v52);
          CalDatabaseSetIsSafeForUseInDataMigration(v52, 1);
          v52[43] = CalAuxDatabaseGetUID();
          _CalDatabaseMigrateSchemaCheckIntegrityAndCleanUp(v52);
          CFRelease(v52);
        }

        v47 = [v46 countByEnumeratingWithState:&v134 objects:ppStmt count:16];
      }

      while (v47);
    }

    v39 = v46;
    if (os_variant_has_internal_diagnostics())
    {
      v53 = CalDatabaseCopyDirectoryPathForDatabaseCreateIfNeeded(0, 1);
      _CalDatabaseCleanUpMovedAsideDatabaseFilesInDirectory(v53);
      v148 = 0u;
      v149 = 0u;
      memset(v147, 0, sizeof(v147));
      v54 = v39;
      v55 = [v54 countByEnumeratingWithState:v147 objects:&buf count:16];
      if (v55)
      {
        v56 = **&v147[16];
        do
        {
          for (k = 0; k != v55; ++k)
          {
            if (**&v147[16] != v56)
            {
              objc_enumerationMutation(v54);
            }

            v58 = CalAuxDatabaseCopyPath(*(*&v147[8] + 8 * k));
            _CalDatabaseCleanUpMovedAsideDatabaseFilesInDirectory(v58);
          }

          v55 = [v54 countByEnumeratingWithState:v147 objects:&buf count:16];
        }

        while (v55);
      }
    }
  }

  else if (v40)
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_1DEBB1000, v39, OS_LOG_TYPE_DEFAULT, "****** [CDB MIGRATION] Migration not needed", &buf, 2u);
  }

  v59 = CalDatabaseGetPreferences(cf);
  v60 = [v59 preferences];

  shouldMigrateChinaTimezones = _shouldMigrateChinaTimezones(v60);
  _CalDatabasePerformPreferenceMigrationIfNeeded(cf, 0, shouldMigrateChinaTimezones);

  os_unfair_lock_lock(cf + 20);
  IntegerProperty = _CalDatabaseGetIntegerProperty(cf);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(cf + 20);
  }

  v63 = IntegerProperty != 0;
  os_unfair_lock_unlock(cf + 20);
  v64 = _CalDatabaseTargetBirthdayMigrationState();
  if (v63 != v64)
  {
    v65 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 67109376;
      DWORD1(buf) = v63;
      WORD4(buf) = 1024;
      *(&buf + 10) = v64;
      _os_log_impl(&dword_1DEBB1000, v65, OS_LOG_TYPE_DEFAULT, "Need to migrate birthdays: current version %{BOOL}i target version %{BOOL}i", &buf, 0xEu);
    }

    if (v64)
    {
      v66 = CalDatabaseCopyBirthdayCalendar(cf, 0);
      v67 = CDBLogHandle;
      v68 = os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEFAULT);
      if (v66)
      {
        if (v68)
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_1DEBB1000, v67, OS_LOG_TYPE_DEFAULT, "Deleting old birthday calendar", &buf, 2u);
        }

        CalRemoveCalendar(v66);
      }

      else if (v68)
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1DEBB1000, v67, OS_LOG_TYPE_DEFAULT, "Migration did nothing because no old birthday calendar found", &buf, 2u);
      }
    }

    else
    {
      v69 = CalDatabaseCopyOfAllStores(cf);
      v148 = 0u;
      v149 = 0u;
      memset(v147, 0, sizeof(v147));
      v70 = v69;
      v71 = [v70 countByEnumeratingWithState:v147 objects:&buf count:16];
      if (v71)
      {
        v72 = **&v147[16];
        while (2)
        {
          for (m = 0; m != v71; ++m)
          {
            if (**&v147[16] != v72)
            {
              objc_enumerationMutation(v70);
            }

            v74 = CalStoreCopyAppGroupIdentifier(*(*&v147[8] + 8 * m));
            if ([v74 isEqualToString:@"com.apple.contacts.ContactsCalendars"])
            {
              v104 = CDBLogHandle;
              if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEFAULT))
              {
                *v138 = 0;
                _os_log_impl(&dword_1DEBB1000, v104, OS_LOG_TYPE_DEFAULT, "Deleting ContactsCalendars store", v138, 2u);
              }

              CalRemoveStore();

              goto LABEL_165;
            }
          }

          v71 = [v70 countByEnumeratingWithState:v147 objects:&buf count:16];
          if (v71)
          {
            continue;
          }

          break;
        }
      }

      v75 = CDBLogHandle;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *v138 = 0;
        _os_log_impl(&dword_1DEBB1000, v75, OS_LOG_TYPE_DEFAULT, "Migration did nothing because the contacts store wasn't found.", v138, 2u);
      }

LABEL_165:
    }

    CalDatabaseSetIntegerProperty(cf, @"BirthdayMigrationState", v64);
    CalDatabaseSaveWithOptions(cf, 0);
  }

  CalDatabaseCleanupStoresWithoutIdentifiers(cf);
  if (CalendarMigrationLibraryCore())
  {
    *v147 = 0;
    *&v147[8] = v147;
    *&v147[16] = 0x2050000000;
    v105 = getCalDefaultReminderKitProviderClass_softClass;
    *&v147[24] = getCalDefaultReminderKitProviderClass_softClass;
    if (!getCalDefaultReminderKitProviderClass_softClass)
    {
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v144 = __getCalDefaultReminderKitProviderClass_block_invoke;
      v145 = &unk_1E86885F0;
      v146 = v147;
      __getCalDefaultReminderKitProviderClass_block_invoke(&buf);
      v105 = *(*&v147[8] + 24);
    }

    v106 = v105;
    _Block_object_dispose(v147, 8);
    v107 = [v105 sharedInstance];
    if ([v107 reminderKitAvailable])
    {
      *v147 = 0;
      *&v147[8] = v147;
      *&v147[16] = 0x2050000000;
      v108 = getCalDefaultReminderMigrationDefaultsProviderClass_softClass;
      *&v147[24] = getCalDefaultReminderMigrationDefaultsProviderClass_softClass;
      if (!getCalDefaultReminderMigrationDefaultsProviderClass_softClass)
      {
        *&buf = MEMORY[0x1E69E9820];
        *(&buf + 1) = 3221225472;
        v144 = __getCalDefaultReminderMigrationDefaultsProviderClass_block_invoke;
        v145 = &unk_1E86885F0;
        v146 = v147;
        __getCalDefaultReminderMigrationDefaultsProviderClass_block_invoke(&buf);
        v108 = *(*&v147[8] + 24);
      }

      v109 = v108;
      _Block_object_dispose(v147, 8);
      v110 = [v108 sharedInstance];
      v111 = [v107 newDatabaseMigrationContext];
      v112 = v111;
      if (v111)
      {
        v113 = [v111 shouldPerformMigration];
        v114 = CDBLogHandle;
        if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 67109120;
          DWORD1(buf) = v113;
          _os_log_impl(&dword_1DEBB1000, v114, OS_LOG_TYPE_DEFAULT, "ReminderKit wants migration = %d", &buf, 8u);
        }

        v115 = [v110 havePerformedReminderMigrationCleanup];
        v116 = CDBLogHandle;
        if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 67109120;
          DWORD1(buf) = v115 ^ 1;
          _os_log_impl(&dword_1DEBB1000, v116, OS_LOG_TYPE_DEFAULT, "Needs reminder migration cleanup = %d", &buf, 8u);
          v116 = CDBLogHandle;
        }

        v117 = os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT);
        if ((v113 | v115 ^ 1))
        {
          if (v117)
          {
            LOWORD(buf) = 0;
            _os_log_impl(&dword_1DEBB1000, v116, OS_LOG_TYPE_DEFAULT, "****** [CDB MIGRATION] Performing reminders migration", &buf, 2u);
          }

          *v147 = 0;
          *&v147[8] = v147;
          *&v147[16] = 0x2050000000;
          v118 = getCalCalendarDatabaseReminderMigratorClass_softClass;
          *&v147[24] = getCalCalendarDatabaseReminderMigratorClass_softClass;
          if (!getCalCalendarDatabaseReminderMigratorClass_softClass)
          {
            *&buf = MEMORY[0x1E69E9820];
            *(&buf + 1) = 3221225472;
            v144 = __getCalCalendarDatabaseReminderMigratorClass_block_invoke;
            v145 = &unk_1E86885F0;
            v146 = v147;
            __getCalCalendarDatabaseReminderMigratorClass_block_invoke(&buf);
            v118 = *(*&v147[8] + 24);
          }

          v119 = v118;
          _Block_object_dispose(v147, 8);
          v120 = [[v118 alloc] initWithReminderKitProvider:v107 defaultsProvider:v110];
          [v120 attemptMigrationWithCalendarDatabase:cf];
          v121 = CDBLogHandle;
          if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf) = 0;
            _os_log_impl(&dword_1DEBB1000, v121, OS_LOG_TYPE_DEFAULT, "****** [CDB MIGRATION] Finished reminders migration", &buf, 2u);
          }

          goto LABEL_196;
        }

        if (v117)
        {
          LOWORD(buf) = 0;
          v125 = "Skipping reminders migration because it is not needed";
          v126 = v116;
          v127 = OS_LOG_TYPE_DEFAULT;
          goto LABEL_195;
        }
      }

      else
      {
        v124 = CDBLogHandle;
        if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
        {
          LOWORD(buf) = 0;
          v125 = "Failed to get a CalReminderKitDatabaseMigrationContext. Skipping reminders migration";
          v126 = v124;
          v127 = OS_LOG_TYPE_ERROR;
LABEL_195:
          _os_log_impl(&dword_1DEBB1000, v126, v127, v125, &buf, 2u);
        }
      }

LABEL_196:

      goto LABEL_197;
    }

    v123 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_1DEBB1000, v123, OS_LOG_TYPE_ERROR, "Skipping reminders migration because ReminderKit.framework is not available", &buf, 2u);
    }
  }

  else
  {
    v122 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_1DEBB1000, v122, OS_LOG_TYPE_ERROR, "Skipping reminders migration because CalendarMigration.framework is not available", &buf, 2u);
    }
  }

LABEL_197:
  CFRelease(cf);
  CalDatabaseDeleteFile(@"/var/mobile/Library/Calendar/Notifications.db");
  CalDatabaseDeleteFile(@"/var/mobile/Library/Calendar/Notifications.db-wal");
  CalDatabaseDeleteFile(@"/var/mobile/Library/Calendar/Notifications.db-shm");

  v128 = +[CDBPreferences sharedReadWrite];
  [v128 set_migrationAttempts:0];

  v129 = *MEMORY[0x1E69E9840];
}

void CalDatabaseCleanupStoresWithoutIdentifiers(os_unfair_lock_s *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = CalDatabaseCopyOfAllStores(a1);
  if (!v2)
  {
    goto LABEL_21;
  }

  v3 = v2;
  v19 = a1;
  Count = CFArrayGetCount(v2);
  if (!Count)
  {
    goto LABEL_20;
  }

  v5 = Count;
  v6 = 0;
  for (i = 0; i != v5; ++i)
  {
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v3, i);
      v9 = CalStoreCopyUUID(ValueAtIndex);
      v10 = v9;
      if (v9)
      {
        if (CFStringGetLength(v9))
        {
          break;
        }
      }

      v11 = CFUUIDCreate(0);
      v12 = CFUUIDCreateString(0, v11);
      v13 = CDBLogHandle;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v14 = v13;
        ID = CPRecordGetID();
        *buf = 67109378;
        v21 = ID;
        v22 = 2114;
        v23 = v12;
        _os_log_impl(&dword_1DEBB1000, v14, OS_LOG_TYPE_DEFAULT, "Found a store with no identifier at ROWID %d. Setting identifier to %{public}@", buf, 0x12u);
      }

      CalStoreSetUUID(ValueAtIndex, v12);
      CFRelease(v12);
      CFRelease(v11);
      if (v10)
      {
        v6 = 1;
        break;
      }

      ++i;
      v6 = 1;
      if (i == v5)
      {
        goto LABEL_15;
      }
    }

    CFRelease(v10);
  }

  if ((v6 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_15:
  v16 = CDBLogHandle;
  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DEBB1000, v16, OS_LOG_TYPE_DEFAULT, "Saving database after cleaning up stores without identifiers", buf, 2u);
  }

  if ((CalDatabaseSaveWithOptions(v19, 0) & 1) == 0)
  {
    v17 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1DEBB1000, v17, OS_LOG_TYPE_ERROR, "Failed to save database after cleaning up stores with missing identifiers", buf, 2u);
    }
  }

LABEL_20:
  CFRelease(v3);
LABEL_21:
  v18 = *MEMORY[0x1E69E9840];
}

void _CalDatabasePerformSchemaMigrationIfNeededOnDatabase(os_unfair_lock_s *a1)
{
  if (!a1)
  {
    v4 = 0;
    LODWORD(v12) = 0;
    goto LABEL_24;
  }

  v2 = CDBLogHandle;
  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DEBB1000, v2, OS_LOG_TYPE_DEFAULT, "****** [CDB MIGRATION] Beginning schema migration", buf, 2u);
  }

  v3 = CalDatabaseGetPreferences(a1);
  v4 = [v3 preferences];

  _CalDatabaseMigrateSchemaCheckIntegrityAndCleanUp(a1);
  v5 = [v4 getValueForPreference:@"DefaultCalendarUID" expectedClass:0];
  if (!v5)
  {
    goto LABEL_15;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = [MEMORY[0x1E696AB08] decimalDigitCharacterSet];
    v8 = [v6 rangeOfCharacterFromSet:v7];
    v10 = v9;

    if (v8 || v10 != [v6 length])
    {
      IntegerProperty = -1;
    }

    else
    {
      IntegerProperty = [v6 intValue];
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_15:
      IntegerProperty = CalDatabaseGetIntegerProperty(a1);
      goto LABEL_16;
    }

    IntegerProperty = [v5 intValue];
  }

  if (IntegerProperty == -1)
  {
    goto LABEL_15;
  }

LABEL_16:
  if (IntegerProperty < 1)
  {
    LODWORD(v12) = 0;
  }

  else
  {
    v12 = CalDatabaseCopyCalendarWithUID(a1);
    if (v12)
    {
      CalDatabaseSetDefaultCalendarForNewEventsWithReason(a1, v12, 0, @"migration");
      CalDatabaseRemoveProperty(a1, @"DefaultCalendarUID");
      CFRelease(v12);
      LODWORD(v12) = 1;
    }
  }

  if (CalDatabaseGetIntegerProperty(a1) >= 1)
  {
    v13 = CalDatabaseCopyCalendarWithUID(a1);
    if (v13)
    {
      v14 = v13;
      CalDatabaseSetDefaultCalendarForNewTasks(a1, v13, 0);
      CalDatabaseRemoveProperty(a1, @"DefaultTaskCalendarUID");
      CFRelease(v14);
    }
  }

LABEL_24:
  shouldMigrateChinaTimezones = _shouldMigrateChinaTimezones(v4);
  _CalDatabasePerformPreferenceMigrationIfNeeded(a1, v12, shouldMigrateChinaTimezones);
  v16 = CDBLogHandle;
  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *v17 = 0;
    _os_log_impl(&dword_1DEBB1000, v16, OS_LOG_TYPE_DEFAULT, "****** [CDB MIGRATION] Finished all schema migration tasks", v17, 2u);
  }
}

id CalDatabaseGetPreferences(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 80));
  v2 = *(a1 + 296);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner((a1 + 80));
  }

  os_unfair_lock_unlock((a1 + 80));

  return v2;
}

void _CalDatabaseMigrateSchemaCheckIntegrityAndCleanUp(uint64_t a1)
{
  v2 = CalDatabaseCopyUniqueIdentifier(a1);
  if (v2)
  {
    CFRelease(v2);
  }

  os_unfair_lock_lock((a1 + 80));
  if (*(a1 + 24))
  {
    if (CDBLockingAssertionsEnabled == 1)
    {
      v3 = *(a1 + 24);
      Context = CPRecordStoreGetContext();
      if (Context)
      {
        os_unfair_lock_assert_owner(Context + 20);
      }
    }

    Database = CPRecordStoreGetDatabase();
    if (Database)
    {
      v6 = Database;
      if (CDBLockingAssertionsEnabled == 1)
      {
        if (*(Database + 104))
        {
          v7 = CPRecordStoreGetContext();
          if (v7)
          {
            os_unfair_lock_assert_owner(v7 + 20);
          }
        }
      }

      v8 = CPSqliteDatabaseConnectionForWriting();
      _CalDatabaseValidateSchemaDeleteDBAndAbortOnFailure(v6, v8);
    }
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner((a1 + 80));
  }

  os_unfair_lock_unlock((a1 + 80));
  v9 = CalDatabaseCopyEventOccurrenceCache(a1);
  if (v9)
  {
    v10 = v9;
    if ((CalEventOccurrenceCacheRebuildIfNeeded(v9) & 1) == 0)
    {
      CalEventOccurrenceCacheCleanOrphans(v10);
      CalEventOccurrenceCacheTrimExtendAndUpdate(v10, 0);
    }

    CFRelease(v10);
  }

  CalDatabaseClearSuperfluousChanges(a1);
}

uint64_t _shouldMigrateChinaTimezones(void *a1)
{
  v1 = a1;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___shouldMigrateChinaTimezones_block_invoke;
  block[3] = &unk_1E8688700;
  v7 = v1;
  v2 = _shouldMigrateChinaTimezones_onceToken;
  v3 = v1;
  if (v2 != -1)
  {
    dispatch_once(&_shouldMigrateChinaTimezones_onceToken, block);
  }

  v4 = _shouldMigrateChinaTimezones_shouldMigrate;

  return v4;
}

uint64_t CalDatabaseSizeInBytes()
{
  IfNeeded = CalDatabaseCopyDirectoryPathForDatabaseCreateIfNeeded(0, 1);
  MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, IfNeeded);
  CFStringAppend(MutableCopy, *MEMORY[0x1E69930F0]);
  v2 = 0;
  if (CPSqliteUtilitiesGetSchemaVersionAtPath() != 25)
  {
    v3 = _CPCreateUTF8StringFromCFString();
    memset(&v5, 0, sizeof(v5));
    if (!stat(v3, &v5))
    {
      if ((v5.st_size & 0x8000000000000000) == 0)
      {
        v2 = -1;
        CFLog();
        goto LABEL_6;
      }

      CFLog();
    }

    v2 = 0;
LABEL_6:
    free(v3);
  }

  CFRelease(IfNeeded);
  CFRelease(MutableCopy);
  return v2;
}

void *CalDatabaseCopySourceStats(os_unfair_lock_s *a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v1 = CalDatabaseCopyOfAllStores(a1);
  v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v1;
  v3 = [obj countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v20;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v20 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v19 + 1) + 8 * i);
        v8 = CalStoreCopyUUID(v7);
        if (v8)
        {
          v9 = v8;
        }

        else
        {
          v9 = @"(missing persistent ID)";
        }

        v10 = CalStoreCopyCalendars(v7);
        CountOfCalendarItemsInStore = CalDatabaseGetCountOfCalendarItemsInStore(a1, 0, v7);
        v24[0] = v9;
        v23[0] = @"UUID";
        v23[1] = @"numCalendars";
        v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[__CFArray count](v10, "count")}];
        v24[1] = v12;
        v23[2] = @"numEvents";
        v13 = [MEMORY[0x1E696AD98] numberWithInt:CountOfCalendarItemsInStore];
        v24[2] = v13;
        v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:3];

        [v2 addObject:v14];
      }

      v4 = [obj countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v4);
  }

  v15 = *MEMORY[0x1E69E9840];
  return v2;
}

void CalDatabaseSetPreferences(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock((a1 + 80));
  v4 = *(a1 + 296);
  *(a1 + 296) = v3;

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner((a1 + 80));
  }

  os_unfair_lock_unlock((a1 + 80));
}

void CalDatabaseSetCalendarDataContainerProvider(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock((a1 + 80));
  v4 = *(a1 + 288);
  *(a1 + 288) = v3;

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner((a1 + 80));
  }

  os_unfair_lock_unlock((a1 + 80));
}

id CalDatabaseGetCalendarDataContainerProvider(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 80));
  v2 = *(a1 + 288);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner((a1 + 80));
  }

  os_unfair_lock_unlock((a1 + 80));

  return v2;
}

uint64_t CalDatabaseRebuildOccurrenceCache(os_unfair_lock_s *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = CDBLogHandle;
  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v17) = 0;
    _os_log_impl(&dword_1DEBB1000, v2, OS_LOG_TYPE_DEBUG, "Attempting to rebuild the occurrence cache.", &v17, 2u);
  }

  if (!a1)
  {
    v10 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v17) = 0;
      v11 = "No database provided.  Will not rebuild the occurrence cache.";
      v12 = v10;
      v13 = OS_LOG_TYPE_ERROR;
LABEL_14:
      _os_log_impl(&dword_1DEBB1000, v12, v13, v11, &v17, 2u);
    }

LABEL_15:
    v5 = 0;
    goto LABEL_16;
  }

  v3 = CalDatabaseCopyEventOccurrenceCache(a1);
  if (!v3)
  {
    v14 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v17) = 0;
      v11 = "Could not acquire the occurrence cache.  Will not rebuild the occurrence cache.";
      v12 = v14;
      v13 = OS_LOG_TYPE_DEBUG;
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  v4 = v3;
  v5 = _CalEventOccurrenceCacheForceRebuild(v3);
  if (v5)
  {
    v6 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v17 = 138412290;
      v18 = @"kCalEventOccurrenceCacheChangedNotification";
      _os_log_impl(&dword_1DEBB1000, v6, OS_LOG_TYPE_DEBUG, "Posting Darwin notification: [%@].", &v17, 0xCu);
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"kCalEventOccurrenceCacheChangedNotification", a1, 0, 1u);
    v8 = [CalDatabaseInMemoryChangeTracking changeTrackingForDatabase:a1];
    [v8 clearAllChangesets];

    _CalDatabasePostDBOrSyncStatusChangeNotificationToInternalAndExternalClients(a1, 0, 0);
    v9 = [[CalDatabaseChangeReport alloc] initForReset];
    CalDatabaseDistributeChangeReport(a1, v9, 0);
  }

  CFRelease(v4);
LABEL_16:
  v15 = *MEMORY[0x1E69E9840];
  return v5;
}

void _CalDatabasePostDBOrSyncStatusChangeNotificationToInternalAndExternalClients(uint64_t a1, uint64_t a2, int a3)
{
  os_unfair_lock_lock((a1 + 80));
  ++*(a1 + 120);
  v6 = CalDatabaseCopyClientName(a1, 0);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner((a1 + 80));
  }

  os_unfair_lock_unlock((a1 + 80));
  _CalDatabasePostDBOrSyncStatusChangeNotificationForDatabase(a1, 1, a3, a2, *(a1 + 352), v6, 0);
}

void CalDatabaseDistributeChangeReport(uint64_t a1, void *a2, int a3)
{
  v26[3] = *MEMORY[0x1E69E9840];
  v5 = a2;
  IfNeeded = CalDatabaseCopyDirectoryPathForDatabaseCreateIfNeeded(a1, 1);
  if (IfNeeded)
  {
    v7 = *(a1 + 172);
    if (_CalDatabaseShouldPostInProcessChangeNotification(a1))
    {
      v26[0] = IfNeeded;
      v25[0] = @"path";
      v25[1] = @"auxDBID";
      v8 = [MEMORY[0x1E696AD98] numberWithInt:v7];
      v25[2] = @"report";
      v26[1] = v8;
      v26[2] = v5;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:3];

      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __CalDatabaseDistributeChangeReport_block_invoke;
      v21[3] = &unk_1E8688700;
      v22 = v9;
      v10 = v9;
      v11 = MEMORY[0x1E12C7520](v21);
      v12 = v11;
      if (a3)
      {
        v11[2](v11);
      }

      else
      {
        _CalDatabaseRunOnAsyncNotificationQueue(v11);
      }
    }

    else
    {
      v20 = 0;
      v14 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v5 requiringSecureCoding:1 error:&v20];
      v15 = v20;
      if (!v14)
      {
        v16 = CDBLogHandle;
        if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v24 = v15;
          _os_log_impl(&dword_1DEBB1000, v16, OS_LOG_TYPE_ERROR, "Can't distribute a change report because the change report couldn't be serialized: %@", buf, 0xCu);
        }
      }

      v17 = _CalDatabaseCalaccessdXPCConnection();
      if (v17)
      {
        v18 = xpc_dictionary_create(0, 0, 0);
        xpc_dictionary_set_string(v18, "function", "distribute_change_report");
        xpc_dictionary_set_data(v18, "report", [v14 bytes], objc_msgSend(v14, "length"));
        xpc_dictionary_set_string(v18, "databasePath", [(__CFString *)IfNeeded UTF8String]);
        xpc_dictionary_set_int64(v18, "auxDBID", v7);
        xpc_connection_send_message(v17, v18);
      }
    }
  }

  else
  {
    v13 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1DEBB1000, v13, OS_LOG_TYPE_ERROR, "Can't distribute a change report because the database has no path", buf, 2u);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

uint64_t CalDatabaseCopyEntitiesWhere(uint64_t a1, int a2, void *a3, void *a4, void *a5, uint64_t a6, int a7)
{
  v53 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  if ((a2 - 2) < 2 || a2 == 101)
  {
    SelectPrefix = CPRecordStoreCreateSelectPrefix();
    if (SelectPrefix)
    {
      if ([v13 length])
      {
        [SelectPrefix appendFormat:@" WHERE %@", v13];
      }

      if (a7)
      {
        [SelectPrefix appendString:@" ORDER BY random()"];
      }

      if (a6 >= 1)
      {
        [SelectPrefix appendFormat:@" LIMIT %i", a6];
      }

      v17 = [v14 count];
      if (v17 == [v15 count])
      {
        v18 = [v14 count];
      }

      else
      {
        v21 = CDBLogHandle;
        if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
        {
          v22 = v21;
          *buf = 134218240;
          *v52 = [v14 count];
          *&v52[8] = 2048;
          *&v52[10] = [v15 count];
          _os_log_impl(&dword_1DEBB1000, v22, OS_LOG_TYPE_ERROR, "Passed in %lu values but %lu value types.", buf, 0x16u);
        }

        v23 = [v14 count];
        v24 = [v15 count];
        if (v23 >= v24)
        {
          v18 = v24;
        }

        else
        {
          v18 = v23;
        }
      }

      os_unfair_lock_lock((a1 + 80));
      v25 = *(a1 + 24);
      if (CDBLockingAssertionsEnabled == 1)
      {
        if (v25)
        {
          v26 = *(a1 + 24);
          Context = CPRecordStoreGetContext();
          if (Context)
          {
            os_unfair_lock_assert_owner(Context + 20);
          }
        }
      }

      Database = CPRecordStoreGetDatabase();
      if (CDBLockingAssertionsEnabled == 1)
      {
        if (Database)
        {
          if (*(Database + 104))
          {
            v29 = CPRecordStoreGetContext();
            if (v29)
            {
              os_unfair_lock_assert_owner(v29 + 20);
            }
          }
        }
      }

      v30 = CPSqliteDatabaseStatementForReading();
      if (v30)
      {
        v31 = v30;
        v49 = a1;
        v50 = v13;
        if (v18 >= 1)
        {
          v32 = 0;
          v33 = v18 & 0x7FFFFFFF;
          do
          {
            v34 = [v14 objectAtIndexedSubscript:v32];
            v35 = [v15 objectAtIndexedSubscript:v32];
            v36 = [v35 intValue];

            switch(v36)
            {
              case 7:
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v37 = *(v31 + 8);
                  [v34 timeIntervalSinceReferenceDate];
                  sqlite3_bind_double(v37, v32 + 1, v38);
                }

                else
                {
                  v44 = CDBLogHandle;
                  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 67109378;
                    *v52 = v32;
                    *&v52[4] = 2112;
                    *&v52[6] = v34;
                    v40 = v44;
                    v41 = "Wrong type for parameter %i; expected date but got %@";
                    goto LABEL_50;
                  }
                }

                break;
              case 2:
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  sqlite3_bind_text(*(v31 + 8), v32 + 1, [v34 UTF8String], -1, 0);
                }

                else
                {
                  v43 = CDBLogHandle;
                  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 67109378;
                    *v52 = v32;
                    *&v52[4] = 2112;
                    *&v52[6] = v34;
                    v40 = v43;
                    v41 = "Wrong type for parameter %i; expected string but got %@";
                    goto LABEL_50;
                  }
                }

                break;
              case 1:
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  sqlite3_bind_int(*(v31 + 8), v32 + 1, [v34 intValue]);
                }

                else
                {
                  v45 = CDBLogHandle;
                  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 67109378;
                    *v52 = v32;
                    *&v52[4] = 2112;
                    *&v52[6] = v34;
                    v40 = v45;
                    v41 = "Wrong type for parameter %i; expected int but got %@";
LABEL_50:
                    v42 = 18;
LABEL_51:
                    _os_log_impl(&dword_1DEBB1000, v40, OS_LOG_TYPE_ERROR, v41, buf, v42);
                  }
                }

                break;
              default:
                v39 = CDBLogHandle;
                if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
                {
                  *buf = 67109120;
                  *v52 = v36;
                  v40 = v39;
                  v41 = "Unsupported property type %i";
                  v42 = 8;
                  goto LABEL_51;
                }

                break;
            }

            ++v32;
          }

          while (v33 != v32);
        }

        if (CDBLockingAssertionsEnabled == 1)
        {
          if (v25)
          {
            v46 = CPRecordStoreGetContext();
            if (v46)
            {
              os_unfair_lock_assert_owner(v46 + 20);
            }
          }
        }

        v19 = CPRecordStoreProcessStatementWithPropertyIndices();
        a1 = v49;
        v13 = v50;
      }

      else
      {
        v19 = 0;
      }

      if (CDBLockingAssertionsEnabled == 1)
      {
        os_unfair_lock_assert_owner((a1 + 80));
      }

      os_unfair_lock_unlock((a1 + 80));
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v20 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *v52 = a2;
      _os_log_impl(&dword_1DEBB1000, v20, OS_LOG_TYPE_ERROR, "Unsupported entity type %i", buf, 8u);
    }

    v19 = 0;
  }

  v47 = *MEMORY[0x1E69E9840];
  return v19;
}

void _CALDatabaseSetShouldBackupToiCloud(uint64_t a1, int a2)
{
  v17 = *MEMORY[0x1E69E9840];
  IfNeeded = CalDatabaseCopyDirectoryPathForDatabaseCreateIfNeeded(a1, 1);
  v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:IfNeeded];
  v5 = [MEMORY[0x1E696AD98] numberWithInt:a2 ^ 1u];
  v6 = *MEMORY[0x1E695DB80];
  v12 = 0;
  v7 = [v4 setResourceValue:v5 forKey:v6 error:&v12];
  v8 = v12;

  if ((v7 & 1) == 0)
  {
    v9 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      v10 = @"YES";
      if (a2)
      {
        v10 = @"NO";
      }

      *buf = 138412546;
      v14 = v10;
      v15 = 2112;
      v16 = IfNeeded;
      _os_log_impl(&dword_1DEBB1000, v9, OS_LOG_TYPE_ERROR, "Failed to set resource value NSURLIsExcludedFromBackupKey to %@ for database directory %@", buf, 0x16u);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

uint64_t CalDatabaseGetIsSafeForUseInDataMigration(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 80));
  v2 = *(a1 + 360);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner((a1 + 80));
  }

  os_unfair_lock_unlock((a1 + 80));
  return v2;
}

void CalDatabaseSetIsSafeForUseInDataMigration(uint64_t a1, char a2)
{
  os_unfair_lock_lock((a1 + 80));
  *(a1 + 360) = a2;
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner((a1 + 80));
  }

  os_unfair_lock_unlock((a1 + 80));
}

void _CalDatabaseEnumerateAddedEntitiesOfType(uint64_t a1, int a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *(a1 + 64);
  if (v6)
  {
    v17 = 0;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = CFDictionaryGetValue(v6, a2);
    v8 = [v7 countByEnumeratingWithState:&v13 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
LABEL_4:
      v11 = 0;
      while (1)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v5[2](v5, *(*(&v13 + 1) + 8 * v11), &v17);
        if (v17)
        {
          break;
        }

        if (v9 == ++v11)
        {
          v9 = [v7 countByEnumeratingWithState:&v13 objects:v18 count:16];
          if (v9)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

void CalDatabaseVacuum(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 80));
  if (CDBLockingAssertionsEnabled == 1 && *(a1 + 24) != 0)
  {
    v3 = *(a1 + 24);
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      os_unfair_lock_assert_owner(Context + 20);
    }
  }

  Database = CPRecordStoreGetDatabase();
  if (CDBLockingAssertionsEnabled == 1 && Database != 0)
  {
    if (*(Database + 104))
    {
      v7 = CPRecordStoreGetContext();
      if (v7)
      {
        os_unfair_lock_assert_owner(v7 + 20);
      }
    }
  }

  v8 = CPSqliteDatabaseConnectionForWritingWithSqlite3OpenFlags();
  if (v8)
  {
    v9 = v8;
    CalPerformSQLWithConnectionAndBindBlock(v8, 0, @"VACUUM", 0);
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*v9)
      {
        if (*(*v9 + 104))
        {
          v10 = CPRecordStoreGetContext();
          if (v10)
          {
            os_unfair_lock_assert_owner(v10 + 20);
          }
        }
      }
    }

    CPSqliteDatabaseReleaseSqliteConnection();
    if (CDBLockingAssertionsEnabled == 1)
    {
      os_unfair_lock_assert_owner((a1 + 80));
    }

    os_unfair_lock_unlock((a1 + 80));
  }

  else
  {
    v11 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_impl(&dword_1DEBB1000, v11, OS_LOG_TYPE_ERROR, "Unable to get database connection to run vacuum.", v12, 2u);
    }
  }
}

id _CalDatabaseCalaccessdXPCConnection()
{
  pthread_mutex_lock(&_CalDatabaseCalaccessdXPCConnection___CalaccessdXPCConnectionLock);
  v0 = _CalDatabaseCalaccessdXPCConnection___CalaccessdXPCConnection;
  if (!_CalDatabaseCalaccessdXPCConnection___CalaccessdXPCConnection)
  {
    v1 = dispatch_get_global_queue(0, 0);
    mach_service = xpc_connection_create_mach_service("com.apple.calaccessd.xpc", v1, 0);
    v3 = _CalDatabaseCalaccessdXPCConnection___CalaccessdXPCConnection;
    _CalDatabaseCalaccessdXPCConnection___CalaccessdXPCConnection = mach_service;

    xpc_connection_set_event_handler(_CalDatabaseCalaccessdXPCConnection___CalaccessdXPCConnection, &__block_literal_global_275);
    xpc_connection_resume(_CalDatabaseCalaccessdXPCConnection___CalaccessdXPCConnection);

    v0 = _CalDatabaseCalaccessdXPCConnection___CalaccessdXPCConnection;
  }

  v4 = v0;
  pthread_mutex_unlock(&_CalDatabaseCalaccessdXPCConnection___CalaccessdXPCConnectionLock);

  return v4;
}

uint64_t CalendarMigrationLibraryCore()
{
  v2 = *MEMORY[0x1E69E9840];
  if (!CalendarMigrationLibraryCore_frameworkLibrary)
  {
    CalendarMigrationLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = CalendarMigrationLibraryCore_frameworkLibrary;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __CalendarMigrationLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CalendarMigrationLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getCalOutOfProcessMigratorClass_block_invoke(uint64_t a1)
{
  CalendarMigrationLibrary();
  result = objc_getClass("CalOutOfProcessMigrator");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCalOutOfProcessMigratorClass_block_invoke_cold_1();
  }

  getCalOutOfProcessMigratorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void CalendarMigrationLibrary()
{
  v0 = 0;
  if (!CalendarMigrationLibraryCore())
  {
    CalendarMigrationLibrary_cold_1(&v0);
  }
}

uint64_t CalDatabaseRegisterClass()
{
  result = _CFRuntimeRegisterClass();
  __CalDatabaseTypeID = result;
  return result;
}

void _CalDatabaseSetupHandler(uint64_t a1, void *a2)
{
  CalStoreInitializeTables(a1, a2, 0);
  CalCalendarInitializeTables(a1, a2);
  CalRecurrenceInitializeTables(a1, a2);
  CalAlarmInitializeTables(a1, a2);
  CalAttendeeInitializeTables(a1, a2);
  CalIdentityInitializeTables(a1, a2);
  CalEventActionInitializeTables(a1, a2);
  CalEventInitializeTables(a1, a2);
  CalExceptionDateInitializeTables(a1, a2);
  CalAttachmentFileInitializeTables(a1, a2);
  CalAttachmentInitializeTables(a1, a2);
  CalCategoryInitializeTables(a1, a2);
  CalCategoryLinkInitializeTables(a1, a2);
  CalLocationInitializeTables(a1, a2);
  CalShareeInitializeTables(a1, a2);
  CalNotificationInitializeTables(a1, a2);
  CalResourceChangeInitializeTables(a1, a2);
  CalSuggestedEventInfoInitializeTables(a1, a2);
  CalContactInitializeTables(a1, a2);
  CalConferenceInitializeTables(a1, a2);
  CalErrorInitializeTables(a1, a2);
  CalAuxDatabaseInitializeTables(a1, a2);
  CalAuxDatabaseAccountInitializeTables();
  CalImageInitializeTables(a1, a2);
  CalColorInitializeTables(a1, a2);
  Context = CPRecordStoreGetContext();
  if (*(Context + 362) == 1)
  {
    v5 = Context;
    if (a2)
    {
      if (CDBLockingAssertionsEnabled)
      {
        if (*a2)
        {
          if (*(*a2 + 104))
          {
            v6 = CPRecordStoreGetContext();
            if (v6)
            {
              os_unfair_lock_assert_owner(v6 + 20);
            }
          }
        }
      }
    }

    CPSqliteConnectionSetIntegerForProperty();
    _CALDatabaseSetShouldBackupToiCloud(v5, 0);
  }

  _CalDatabaseInitializeSchemaDuringMigration(a1, a2, -1);
}

BOOL _CalDatabaseMigrationHandler(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v4 = a3;
  v98 = *MEMORY[0x1E69E9840];
  if (a3 <= 19001)
  {
    CFAbsoluteTimeGetCurrent();
    v7 = CDBLogHandle;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109376;
      *&buf[4] = v4;
      *&buf[8] = 1024;
      *&buf[10] = 19002;
      _os_log_impl(&dword_1DEBB1000, v7, OS_LOG_TYPE_DEBUG, "Migrating Calendar database from version %d to version %d...", buf, 0xEu);
    }

    function = sqlite3_create_function(*(a2 + 8), "CalNoteAttachmentDeleted", 2, 1, 0, _CalDatabaseAttachmentDeletedDuringMigration, 0, 0);
    if (function)
    {
      v9 = function;
      v10 = CDBLogHandle;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        *&buf[4] = v9;
        _os_log_impl(&dword_1DEBB1000, v10, OS_LOG_TYPE_ERROR, "Error adding CalNoteAttachmentDeleted function before migration: %i", buf, 8u);
      }
    }

    v11 = sqlite3_create_function(*(a2 + 8), "CalNoteStoreDeleted", 3, 1, 0, _CalDatabaseAttachmentDeletedDuringMigration, 0, 0);
    if (v11)
    {
      v12 = v11;
      v13 = CDBLogHandle;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        *&buf[4] = v12;
        _os_log_impl(&dword_1DEBB1000, v13, OS_LOG_TYPE_ERROR, "Error adding CalNoteStoreDeleted function before migration: %i", buf, 8u);
      }
    }

    CalErrorMigrateTables(a4, a2, v4);
    CalStoreMigrateTables(a4, a2, v4);
    CalCalendarMigrateTables(a4, a2, v4);
    CalIdentityMigrateTables(a4, a2, v4);
    CalAttendeeMigrateTables(a4, a2, v4);
    CalLocationMigrateTables(a4, a2, v4);
    CalEventMigrateTables(a4, a2, v4);
    CalAlarmMigrateTables(a4, a2, v4);
    CalRecurrenceMigrateTables(a4, a2, v4);
    CalEventActionMigrateTables(a4, a2, v4);
    CalExceptionDateMigrateTables(a4, a2, v4);
    CalAttachmentFileMigrateTables(a4, a2, v4);
    CalAttachmentMigrateTables(a4, a2, v4);
    CalCategoryMigrateTables(a4, a2, v4);
    CalCategoryLinkMigrateTables(a4, a2, v4);
    CalShareeMigrateTables(a4, a2, v4);
    CalNotificationMigrateTables(a4, a2, v4);
    CalResourceChangeMigrateTables(a4, a2, v4);
    CalSuggestedEventInfoMigrateTables(a4, a2, v4);
    CalContactMigrateTables(a4, a2, v4);
    CalConferenceMigrateTables(a4, a2, v4);
    CalAuxDatabaseMigrateTables(a4, a2, v4);
    CalAuxDatabaseAccountMigrateTables(a4, a2, v4);
    CalImageMigrateTables(a4, a2, v4);
    CalColorMigrateTables(a4, a2, v4);
    CalEventOccurrenceCachePrepareForDBMigration(a4, a2, v4);
    _CalDatabaseInitializeSchemaDuringMigration(a4, a2, v4);
    _CalResourceChangeCleanUpDanglingEntities(a4, a2);
    _CalDatabaseCleanupDanglers(a4, a2);
    v14 = &unk_1ED812000;
    if (v4 > 55)
    {
      if (v4 > 0x68)
      {
        goto LABEL_164;
      }
    }

    else
    {
      if (CDBLockingAssertionsEnabled == 1)
      {
        if (*a2)
        {
          if (*(*a2 + 104))
          {
            Context = CPRecordStoreGetContext();
            if (Context)
            {
              os_unfair_lock_assert_owner(Context + 20);
            }
          }
        }
      }

      CPSqliteConnectionPerformSQL();
      if (CDBLockingAssertionsEnabled == 1)
      {
        if (*a2)
        {
          if (*(*a2 + 104))
          {
            v16 = CPRecordStoreGetContext();
            if (v16)
            {
              os_unfair_lock_assert_owner(v16 + 20);
            }
          }
        }
      }

      CPSqliteConnectionPerformSQL();
    }

    v17 = CFStringCreateWithFormat(0, 0, @"SELECT ROWID, flags, external_id from Calendar WHERE store_id IN (SELECT ROWID from Store where Type = %d)", 2);
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*a2)
      {
        if (*(*a2 + 104))
        {
          v18 = CPRecordStoreGetContext();
          if (v18)
          {
            os_unfair_lock_assert_owner(v18 + 20);
          }
        }
      }
    }

    v19 = CPSqliteConnectionStatementForSQL();
    CFRelease(v17);
    if (!v19)
    {
      goto LABEL_165;
    }

    v97 = 0;
    *buf = 0u;
    *theArray = 0u;
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*v19)
      {
        v20 = **v19;
        if (v20)
        {
          if (*(v20 + 104))
          {
            v21 = CPRecordStoreGetContext();
            if (v21)
            {
              os_unfair_lock_assert_owner(v21 + 20);
            }
          }
        }
      }
    }

    CPSqliteStatementSendResults();
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*v19)
      {
        v22 = **v19;
        if (v22)
        {
          if (*(v22 + 104))
          {
            v23 = CPRecordStoreGetContext();
            if (v23)
            {
              os_unfair_lock_assert_owner(v23 + 20);
            }
          }
        }
      }
    }

    CPSqliteStatementReset();
    if (*&buf[8])
    {
      Count = CFArrayGetCount(*&buf[8]);
      if (CDBLockingAssertionsEnabled == 1)
      {
        if (*a2)
        {
          if (*(*a2 + 104))
          {
            v24 = CPRecordStoreGetContext();
            if (v24)
            {
              os_unfair_lock_assert_owner(v24 + 20);
            }
          }
        }
      }

      v84 = a4;
      v25 = CPSqliteConnectionStatementForSQL();
      if (CDBLockingAssertionsEnabled == 1)
      {
        if (*a2)
        {
          if (*(*a2 + 104))
          {
            v26 = CPRecordStoreGetContext();
            if (v26)
            {
              os_unfair_lock_assert_owner(v26 + 20);
            }
          }
        }
      }

      v27 = CPSqliteConnectionStatementForSQL();
      if (CDBLockingAssertionsEnabled == 1)
      {
        if (*a2)
        {
          if (*(*a2 + 104))
          {
            v28 = CPRecordStoreGetContext();
            if (v28)
            {
              os_unfair_lock_assert_owner(v28 + 20);
            }
          }
        }
      }

      v87 = v25;
      v85 = v4;
      v29 = CPSqliteConnectionStatementForSQL();
      if (CDBLockingAssertionsEnabled == 1)
      {
        if (*a2)
        {
          if (*(*a2 + 104))
          {
            v30 = CPRecordStoreGetContext();
            if (v30)
            {
              os_unfair_lock_assert_owner(v30 + 20);
            }
          }
        }
      }

      v31 = CPSqliteConnectionStatementForSQL();
      if (Count >= 1)
      {
        v32 = v31;
        for (i = 0; i != Count; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*&buf[8], i);
          if ((CFArrayGetValueAtIndex(theArray[0], i) & 8) == 0)
          {
            if (v87)
            {
              _runTrimForResult(buf, i, v87);
            }

            v35 = CFStringCreateWithFormat(0, 0, @"SELECT rowid, calendar_id, external_id from CalendarItem where calendar_id = %d", ValueAtIndex);
            if (v14[408] == 1)
            {
              if (*a2)
              {
                if (*(*a2 + 104))
                {
                  v36 = CPRecordStoreGetContext();
                  if (v36)
                  {
                    os_unfair_lock_assert_owner(v36 + 20);
                  }
                }
              }
            }

            v37 = CPSqliteConnectionStatementForSQL();
            CFRelease(v35);
            if (v37)
            {
              v94 = 0;
              *v92 = 0u;
              *v93 = 0u;
              if (v14[408] == 1)
              {
                if (*v37)
                {
                  v38 = **v37;
                  if (v38)
                  {
                    if (*(v38 + 104))
                    {
                      v39 = CPRecordStoreGetContext();
                      if (v39)
                      {
                        os_unfair_lock_assert_owner(v39 + 20);
                      }
                    }
                  }
                }
              }

              CPSqliteStatementSendResults();
              if (v14[408] == 1)
              {
                if (*v37)
                {
                  v40 = **v37;
                  if (v40)
                  {
                    if (*(v40 + 104))
                    {
                      v41 = CPRecordStoreGetContext();
                      if (v41)
                      {
                        os_unfair_lock_assert_owner(v41 + 20);
                      }
                    }
                  }
                }
              }

              CPSqliteStatementReset();
              if (v92[1])
              {
                v86 = ValueAtIndex;
                v42 = v14;
                v43 = CFArrayGetCount(v92[1]);
                if (v43 >= 1)
                {
                  v44 = v43;
                  for (j = 0; j != v44; ++j)
                  {
                    v46 = CFArrayGetValueAtIndex(v92[1], j);
                    if (v27)
                    {
                      _runTrimForResult(v92, j, v27);
                    }

                    v47 = CFStringCreateWithFormat(0, 0, @"SELECT rowid, event_id, external_id from EventAction where event_id = %d", v46);
                    if (v42[408] == 1)
                    {
                      if (*a2)
                      {
                        if (*(*a2 + 104))
                        {
                          v48 = CPRecordStoreGetContext();
                          if (v48)
                          {
                            os_unfair_lock_assert_owner(v48 + 20);
                          }
                        }
                      }
                    }

                    v49 = CPSqliteConnectionStatementForSQL();
                    CFRelease(v47);
                    if (v49)
                    {
                      v91 = 0;
                      *v89 = 0u;
                      *cf = 0u;
                      if (v42[408] == 1)
                      {
                        if (*v49)
                        {
                          v50 = **v49;
                          if (v50)
                          {
                            if (*(v50 + 104))
                            {
                              v51 = CPRecordStoreGetContext();
                              if (v51)
                              {
                                os_unfair_lock_assert_owner(v51 + 20);
                              }
                            }
                          }
                        }
                      }

                      CPSqliteStatementSendResults();
                      if (v42[408] == 1)
                      {
                        if (*v49)
                        {
                          v52 = **v49;
                          if (v52)
                          {
                            if (*(v52 + 104))
                            {
                              v53 = CPRecordStoreGetContext();
                              if (v53)
                              {
                                os_unfair_lock_assert_owner(v53 + 20);
                              }
                            }
                          }
                        }
                      }

                      CPSqliteStatementReset();
                      v54 = v89[1];
                      if (v89[1] && v29)
                      {
                        v55 = CFArrayGetCount(v89[1]);
                        if (v55 >= 1)
                        {
                          v56 = v55;
                          for (k = 0; k != v56; ++k)
                          {
                            _runTrimForResult(v89, k, v29);
                          }
                        }

                        v54 = v89[1];
                      }

                      if (v54)
                      {
                        CFRelease(v54);
                      }

                      if (cf[0])
                      {
                        CFRelease(cf[0]);
                      }

                      if (cf[1])
                      {
                        CFRelease(cf[1]);
                      }
                    }
                  }
                }

                v14 = v42;
                ValueAtIndex = v86;
                if (v92[1])
                {
                  CFRelease(v92[1]);
                }
              }

              if (v93[0])
              {
                CFRelease(v93[0]);
              }

              if (v93[1])
              {
                CFRelease(v93[1]);
              }
            }

            v58 = CFStringCreateWithFormat(0, 0, @"SELECT rowid, calendar_id, external_id, host_url from Notification where calendar_id = %d", ValueAtIndex);
            if (v14[408] == 1)
            {
              if (*a2)
              {
                if (*(*a2 + 104))
                {
                  v59 = CPRecordStoreGetContext();
                  if (v59)
                  {
                    os_unfair_lock_assert_owner(v59 + 20);
                  }
                }
              }
            }

            v60 = CPSqliteConnectionStatementForSQL();
            CFRelease(v58);
            if (v60)
            {
              v94 = 0;
              *v92 = 0u;
              *v93 = 0u;
              LOBYTE(v92[0]) = 1;
              if (v14[408] == 1)
              {
                if (*v60)
                {
                  v61 = **v60;
                  if (v61)
                  {
                    if (*(v61 + 104))
                    {
                      v62 = CPRecordStoreGetContext();
                      if (v62)
                      {
                        os_unfair_lock_assert_owner(v62 + 20);
                      }
                    }
                  }
                }
              }

              CPSqliteStatementSendResults();
              if (v14[408] == 1)
              {
                if (*v60)
                {
                  v63 = **v60;
                  if (v63)
                  {
                    if (*(v63 + 104))
                    {
                      v64 = CPRecordStoreGetContext();
                      if (v64)
                      {
                        os_unfair_lock_assert_owner(v64 + 20);
                      }
                    }
                  }
                }
              }

              CPSqliteStatementReset();
              v65 = v92[1];
              if (v92[1] && v32)
              {
                v66 = CFArrayGetCount(v92[1]);
                if (v66 >= 1)
                {
                  v67 = v66;
                  for (m = 0; m != v67; ++m)
                  {
                    _runTrimForResult(v92, m, v32);
                  }
                }

                v65 = v92[1];
              }

              if (v65)
              {
                CFRelease(v65);
              }

              if (v93[0])
              {
                CFRelease(v93[0]);
              }

              if (v93[1])
              {
                CFRelease(v93[1]);
              }
            }
          }
        }
      }

      v4 = v85;
      a4 = v84;
      if (*&buf[8])
      {
        CFRelease(*&buf[8]);
      }
    }

    if (theArray[0])
    {
      CFRelease(theArray[0]);
    }

    if (theArray[1])
    {
      CFRelease(theArray[1]);
    }

LABEL_164:
    if (v4 > 16036)
    {
LABEL_224:
      CFAbsoluteTimeGetCurrent();
      CFLog();
      _CalAttachmentFileRegisterFunctions(a4, a2);
      goto LABEL_225;
    }

LABEL_165:
    v69 = CPRecordStoreGetContext();
    v70 = *(v69 + 172);
    if (!v70)
    {
      if (a2)
      {
        if (v14[408])
        {
          if (*a2)
          {
            if (*(*a2 + 104))
            {
              v71 = CPRecordStoreGetContext();
              if (v71)
              {
                os_unfair_lock_assert_owner(v71 + 20);
              }
            }
          }
        }
      }

      v72 = CPSqliteConnectionIntegerForPropertyWithDefaultValue();
      if (v72 != -1)
      {
        [*(v69 + 296) set_defaultCalendarDatabaseID:v72];
      }

      if (a2)
      {
        if (v14[408])
        {
          if (*a2)
          {
            if (*(*a2 + 104))
            {
              v73 = CPRecordStoreGetContext();
              if (v73)
              {
                os_unfair_lock_assert_owner(v73 + 20);
              }
            }
          }
        }
      }

      CPSqliteDatabaseReleaseSqliteConnection();
      v70 = *(v69 + 172);
    }

    if ([*(v69 + 296) get_defaultCalendarDatabaseID] == v70)
    {
      if (a2)
      {
        if (v14[408])
        {
          if (*a2)
          {
            if (*(*a2 + 104))
            {
              v74 = CPRecordStoreGetContext();
              if (v74)
              {
                os_unfair_lock_assert_owner(v74 + 20);
              }
            }
          }
        }
      }

      v75 = CPSqliteConnectionCopyValueForProperty();
      if (v75)
      {
        [*(v69 + 296) set_defaultCalendarID:v75];
      }

      if (a2)
      {
        if (v14[408])
        {
          if (*a2)
          {
            if (*(*a2 + 104))
            {
              v76 = CPRecordStoreGetContext();
              if (v76)
              {
                os_unfair_lock_assert_owner(v76 + 20);
              }
            }
          }
        }
      }

      v77 = CPSqliteConnectionIntegerForProperty();
      if (v77 >= 1)
      {
        [*(v69 + 296) set_defaultCalendarStoreUID:v77];
      }
    }

    if (a2)
    {
      if (v14[408])
      {
        if (*a2)
        {
          if (*(*a2 + 104))
          {
            v78 = CPRecordStoreGetContext();
            if (v78)
            {
              os_unfair_lock_assert_owner(v78 + 20);
            }
          }
        }
      }
    }

    CPSqliteConnectionRemoveProperty();
    if (a2)
    {
      if (v14[408])
      {
        if (*a2)
        {
          if (*(*a2 + 104))
          {
            v79 = CPRecordStoreGetContext();
            if (v79)
            {
              os_unfair_lock_assert_owner(v79 + 20);
            }
          }
        }
      }
    }

    CPSqliteConnectionRemoveProperty();
    if (a2)
    {
      if (v14[408])
      {
        if (*a2)
        {
          if (*(*a2 + 104))
          {
            v80 = CPRecordStoreGetContext();
            if (v80)
            {
              os_unfair_lock_assert_owner(v80 + 20);
            }
          }
        }
      }
    }

    CPSqliteConnectionRemoveProperty();
    if (a2)
    {
      if (v14[408])
      {
        if (*a2)
        {
          if (*(*a2 + 104))
          {
            v81 = CPRecordStoreGetContext();
            if (v81)
            {
              os_unfair_lock_assert_owner(v81 + 20);
            }
          }
        }
      }
    }

    CPSqliteConnectionRemoveProperty();
    goto LABEL_224;
  }

LABEL_225:
  result = v4 > 19001;
  v83 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _CalDatabaseAlwaysFailingMigrationHandler()
{
  v0 = CDBLogHandle;
  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
  {
    *v2 = 0;
    _os_log_impl(&dword_1DEBB1000, v0, OS_LOG_TYPE_ERROR, "Asked to migrate when the database should already be migrated. Failing.", v2, 2u);
  }

  return 2;
}

void _CalDatabaseInitializeSchemaDuringMigration(uint64_t a1, void *a2, int a3)
{
  CalEventOccurrenceCacheInitializeDB(a1, a2, a3);
  CalScheduledTaskCacheInitializeDB(a1, a2, a3);

  CalDatabasePersistentChangeTrackingInitializeDB(a1, a2, a3);
}

uint64_t _CalCalendarGatherRowsToTrimURLs(uint64_t a1, uint64_t a2)
{
  v4 = sqlite3_column_int(*(a1 + 8), 0);
  v5 = sqlite3_column_int(*(a1 + 8), 1);
  if (a2)
  {
    v6 = v5;
    if (!*(a2 + 8))
    {
      *(a2 + 8) = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
    }

    if (!*(a2 + 16))
    {
      *(a2 + 16) = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
    }

    if (!*(a2 + 24))
    {
      *(a2 + 24) = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    }

    if (*a2 == 1 && !*(a2 + 32))
    {
      *(a2 + 32) = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    }

    CFArrayAppendValue(*(a2 + 8), v4);
    CFArrayAppendValue(*(a2 + 16), v6);
    _appendURLFromSQLResult(a1, 2, *(a2 + 24));
    if (*a2 == 1)
    {
      _appendURLFromSQLResult(a1, 3, *(a2 + 32));
    }
  }

  return 0;
}

void _runTrimForResult(uint64_t a1, CFIndex a2, uint64_t **a3)
{
  ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 8), a2);
  v7 = CFArrayGetValueAtIndex(*(a1 + 24), a2);
  CFRetain(v7);
  if (*a1 == 1)
  {
    v8 = CFArrayGetValueAtIndex(*(a1 + 32), a2);
    CFRetain(v8);
    if (!v7)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v8 = 0;
    if (!v7)
    {
      goto LABEL_10;
    }
  }

  if (CFStringGetLength(v7))
  {
    v9 = CFURLCreateWithString(*MEMORY[0x1E695E480], v7, 0);
    if (v9)
    {
      v10 = v9;
      v11 = CFURLCopyPath(v9);
      if (v11)
      {
        v12 = v11;
        CFRelease(v7);
        v7 = v12;
      }

      CFRelease(v10);
    }
  }

LABEL_10:
  if (v8)
  {
    if (*a1)
    {
      if (CFStringGetLength(v8))
      {
        v13 = CFURLCreateWithString(*MEMORY[0x1E695E480], v8, 0);
        if (v13)
        {
          v14 = v13;
          v15 = CFURLCopyPath(v13);
          if (v15)
          {
            v16 = v15;
            CFRelease(v8);
            v8 = v16;
          }

          CFRelease(v14);
        }
      }
    }
  }

  v17 = a3[1];
  CStringFromCFString = CalCreateCStringFromCFString(v7);
  sqlite3_bind_text(v17, 1, CStringFromCFString, -1, MEMORY[0x1E69E9B38]);
  if (*a1 == 1)
  {
    v19 = a3[1];
    v20 = CalCreateCStringFromCFString(v8);
    sqlite3_bind_text(v19, 2, v20, -1, MEMORY[0x1E69E9B38]);
    v21 = 3;
  }

  else
  {
    v21 = 2;
  }

  sqlite3_bind_int(a3[1], v21, ValueAtIndex);
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (*a3)
    {
      v22 = **a3;
      if (v22)
      {
        if (*(v22 + 104))
        {
          Context = CPRecordStoreGetContext();
          if (Context)
          {
            os_unfair_lock_assert_owner(Context + 20);
          }
        }
      }
    }
  }

  CPSqliteStatementPerform();
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (*a3)
    {
      v24 = **a3;
      if (v24)
      {
        if (*(v24 + 104))
        {
          v25 = CPRecordStoreGetContext();
          if (v25)
          {
            os_unfair_lock_assert_owner(v25 + 20);
          }
        }
      }
    }
  }

  CPSqliteStatementReset();
  if (v7)
  {
    CFRelease(v7);
  }

  if (v8)
  {

    CFRelease(v8);
  }
}

void _appendURLFromSQLResult(uint64_t a1, int a2, __CFArray *a3)
{
  v4 = sqlite3_column_text(*(a1 + 8), a2);
  if (v4 && (v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v4, 0x8000100u)) != 0)
  {
    v6 = v5;
    CFArrayAppendValue(a3, v5);

    CFRelease(v6);
  }

  else
  {

    CFArrayAppendValue(a3, &stru_1F59E24D8);
  }
}

void CalDatabaseProfileAndGreenTeaCallback(void *a1, const char *a2, unint64_t a3)
{
  CalDatabaseProfileCallback(a1, a2, a3);

  CalDatabaseGreenTeaCallback(a1, a2);
}

void CalDatabaseProfileCallback(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:a2];
    v5 = CDBSQLProfileHandle;
    if (os_log_type_enabled(CDBSQLProfileHandle, OS_LOG_TYPE_DEBUG))
    {
      v6 = MEMORY[0x1E696AD98];
      v7 = v5;
      v8 = [v6 numberWithUnsignedLongLong:(a3 / 1000000.0)];
      v10 = 138412546;
      v11 = v8;
      v12 = 2112;
      v13 = v4;
      _os_log_impl(&dword_1DEBB1000, v7, OS_LOG_TYPE_DEBUG, "Execution time was [%@] milliseconds for statement: [%@]", &v10, 0x16u);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

void CalDatabaseGreenTeaCallback(void *a1, const char *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (a1)
    {
      v3 = a1;
    }

    else
    {
      v3 = &stru_1F59E24D8;
    }

    if (!strncmp("SELECT", a2, 6uLL))
    {
      v4 = @"read Calendar data";
    }

    else if (!strncmp("INSERT", a2, 6uLL) || !strncmp("UPDATE", a2, 6uLL))
    {
      v4 = @"modified Calendar data";
    }

    else
    {
      if (strncmp("DELETE", a2, 6uLL))
      {
LABEL_16:

        goto LABEL_17;
      }

      v4 = @"deleted Calendar data";
    }

    ct_green_tea_logger_create_static();
    v5 = getCTGreenTeaOsLogHandle();
    v6 = v5;
    if (v5 && os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v8 = 138412546;
      v9 = v3;
      v10 = 2112;
      v11 = v4;
      _os_log_impl(&dword_1DEBB1000, v6, OS_LOG_TYPE_INFO, "%@ %@", &v8, 0x16u);
    }

    goto LABEL_16;
  }

LABEL_17:
  v7 = *MEMORY[0x1E69E9840];
}

void _CalDatabaseValidateSchemaDeleteDBAndAbortOnFailure(uint64_t a1, uint64_t a2)
{
  v35 = *MEMORY[0x1E69E9840];
  if (*(a1 + 104) && (Context = CPRecordStoreGetContext()) != 0)
  {
    if (*(Context + 362))
    {
      v4 = 2;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 2;
  }

  do
  {
    v5 = off_1E8688610[v4];
    v6 = [@"SELECT ROWID" mutableCopy];
    if ((v5[7] & 2) != 0)
    {
      v8 = [@"SELECT ROWID" mutableCopy];
      v7 = v8;
      if ((v5[7] & 0x10) != 0)
      {
        [v8 appendString:{@", sequence_number"}];
      }
    }

    else
    {
      v7 = 0;
    }

    if (*(v5 + 18) >= 1)
    {
      v9 = 0;
      v10 = 0;
      do
      {
        v11 = v5[10];
        v12 = &v11[v9];
        v13 = *&v11[v9 + 24];
        if ((v13 & 4) == 0 && *(v12 + 2))
        {
          [v6 appendFormat:@", %s", *v12];
          v13 = *(v12 + 6);
        }

        if ((v13 & 8) != 0 || (v13 & 2) != 0 && *&v11[v9 + 8])
        {
          [v7 appendFormat:@", %s", *v12];
        }

        ++v10;
        v9 += 40;
      }

      while (v10 < *(v5 + 18));
    }

    [v6 appendFormat:@" FROM %s", *v5];
    [v7 appendFormat:@" FROM %sChanges", *v5];
    if (_CalDatabaseDoesStatementFailToCompile(a2, v6))
    {
      v15 = CDBLogHandle;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
      {
        v16 = *v5;
        *buf = 136315138;
        v34 = v16;
        v17 = "Main table failure for %s";
        goto LABEL_32;
      }

LABEL_33:

      goto LABEL_34;
    }

    if (v7 && _CalDatabaseDoesStatementFailToCompile(a2, v7))
    {
      v15 = CDBLogHandle;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
      {
        v18 = *v5;
        *buf = 136315138;
        v34 = v18;
        v17 = "Change table failure for %s";
LABEL_32:
        _os_log_impl(&dword_1DEBB1000, v15, OS_LOG_TYPE_ERROR, v17, buf, 0xCu);
      }

      goto LABEL_33;
    }

    ++v4;
  }

  while (v4 != 24);
  if (!_CalDatabaseDoesStatementFailToCompile(a2, @"SELECT key, value FROM _SqliteDatabaseProperties"))
  {
    goto LABEL_50;
  }

  v14 = CDBLogHandle;
  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_1DEBB1000, v14, OS_LOG_TYPE_ERROR, "Failure for _SqliteDatabaseProperties", buf, 2u);
  }

LABEL_34:
  v19 = CDBLogHandle;
  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_1DEBB1000, v19, OS_LOG_TYPE_ERROR, "Schema validation failed. Deleting calendar database and aborting.", buf, 2u);
  }

  v20 = *(a2 + 8);
  if (v20)
  {
    *buf = 141;
    v21 = sqlite3_file_control(v20, 0, 101, buf);
    v22 = CDBLogHandle;
    v23 = os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR);
    if (v21)
    {
      v24 = a1;
      if (!v23)
      {
        goto LABEL_46;
      }

      *v32 = 0;
      v25 = "Failed to delete database with invalid schema.";
    }

    else
    {
      v24 = a1;
      if (!v23)
      {
        goto LABEL_46;
      }

      *v32 = 0;
      v25 = "Successfully deleted database. Aborting.";
    }

    v26 = v32;
  }

  else
  {
    v22 = CDBLogHandle;
    v24 = a1;
    if (!os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_46;
    }

    *buf = 0;
    v25 = "Failed to delete database due to no connection to database";
    v26 = buf;
  }

  _os_log_impl(&dword_1DEBB1000, v22, OS_LOG_TYPE_ERROR, v25, v26, 2u);
LABEL_46:
  if (!*(v24 + 104) || (v27 = CPRecordStoreGetContext()) == 0 || (v28 = v27, WeakRetained = objc_loadWeakRetained((v27 + 304)), WeakRetained, !WeakRetained))
  {
    _CalDatabaseValidateSchemaDeleteDBAndAbortOnFailure_cold_1();
  }

  _CalDatabaseIntegrityError(v28, @"Schema");
LABEL_50:
  v30 = *MEMORY[0x1E69E9840];
}

uint64_t _CalDatabaseDoesStatementFailToCompile(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (!a1)
  {
    goto LABEL_15;
  }

  v5 = *(a1 + 8);
  if (!v5)
  {
    a1 = 0;
    goto LABEL_15;
  }

  ppStmt = 0;
  v6 = sqlite3_prepare_v2(v5, [v3 UTF8String], -1, &ppStmt, 0);
  if (v6)
  {
    v7 = v6;
    v8 = ppStmt;
    v9 = CDBLogHandle;
    v10 = os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR);
    if (v7 == 1 && !v8)
    {
      if (v10)
      {
        v11 = *(a1 + 8);
        v12 = v9;
        v13 = sqlite3_errmsg(v11);
        *buf = 136446210;
        v18 = v13;
        _os_log_impl(&dword_1DEBB1000, v12, OS_LOG_TYPE_ERROR, "Compilation failure: %{public}s", buf, 0xCu);
      }

      a1 = 1;
      goto LABEL_13;
    }

    if (v10)
    {
      *buf = 134218240;
      v18 = ppStmt;
      v19 = 1024;
      v20 = v7;
      _os_log_impl(&dword_1DEBB1000, v9, OS_LOG_TYPE_ERROR, "Unexpected compilation failure: statement is %p and error is %i", buf, 0x12u);
    }
  }

  a1 = 0;
LABEL_13:
  if (ppStmt)
  {
    sqlite3_finalize(ppStmt);
  }

LABEL_15:

  v14 = *MEMORY[0x1E69E9840];
  return a1;
}

uint64_t _CalDatabaseCopyDatabaseIfValid(uint64_t a1)
{
  os_unfair_lock_lock(&__GlobalLock);
  if (__ValidDatabases)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = [__ValidDatabases member:a1];
    objc_autoreleasePoolPop(v2);
  }

  else
  {
    v3 = 0;
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(&__GlobalLock);
  }

  os_unfair_lock_unlock(&__GlobalLock);
  return v3;
}

uint64_t __CalDatabaseSaveInternalWithOptions_block_invoke(uint64_t result, const void *a2)
{
  v2 = *(*(result + 32) + 8);
  v4 = *(v2 + 24);
  v3 = (v2 + 24);
  if ((v4 & 1) == 0)
  {
    v5 = result;
    if ((*(*(*(result + 40) + 8) + 24) & 1) == 0)
    {
      result = _CalDatabaseIsIntegrationRecord(a2);
      v6 = 32;
      if (result)
      {
        v6 = 48;
      }

      v3 = (*(*(v5 + v6) + 8) + 24);
    }

    *v3 = 1;
  }

  return result;
}

uint64_t _CalDatabaseIsIntegrationRecord(const void *a1)
{
  result = _CalEntityGetStore(a1);
  if (result)
  {
    return _CalStoreGetType(result) == 6;
  }

  return result;
}

void _CalDatabaseRemoveOrphanedEntitiesOfType(uint64_t a1, int a2, void *a3)
{
  v4 = *(a1 + 64);
  if (v4)
  {
    v6 = a2;
    Value = CFDictionaryGetValue(v4, a2);
    if (Value)
    {
      CFSetApplyFunction(Value, _CalDatabaseRemoveOrphanedEntities, a3);
      v8 = *(a1 + 64);

      CFDictionaryRemoveValue(v8, v6);
    }
  }
}

BOOL CalDatabaseChangesToRecordIDShouldBeIgnoredByEventKit(uint64_t a1)
{
  if (CalRecordIDIsTemporary(a1))
  {
    return 1;
  }

  v3 = CalRecordIDGetEntityType(a1);
  return !CalDatabaseEntityTypeParticipatesInInMemoryChangeTracking(v3);
}

void validateAndAddObjectID(__CFArray *a1, const void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_12;
  }

  v4 = CalRecordIDGetEntityType(a2);
  v5 = CalRecordIDGetRowID(a2);
  if (v4 <= 0)
  {
    v8 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_FAULT))
    {
      v11 = 67109120;
      v12 = v4;
      v9 = "Attempt to add record with invalid entity type %i";
LABEL_11:
      _os_log_impl(&dword_1DEBB1000, v8, OS_LOG_TYPE_FAULT, v9, &v11, 8u);
    }

LABEL_12:
    v10 = *MEMORY[0x1E69E9840];
    return;
  }

  v6 = v5;
  if (v5 <= 0)
  {
    v8 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_FAULT))
    {
      v11 = 67109120;
      v12 = v6;
      v9 = "Attempt to add record with invalid row ID %i";
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v7 = *MEMORY[0x1E69E9840];

  CFArrayAppendValue(a1, a2);
}

void addRelatedObjectIDsForDeletedRecord(const void *a1, CFTypeRef *a2)
{
  Store = CPRecordGetStore();
  if (Store)
  {
    Store = CPRecordStoreGetContext();
  }

  v11 = 0;
  v5 = _CalEntityCopyRelatedEntitiesDeletedByTriggers(Store, a1, &v11);
  if (v11 == 1 && *a2)
  {
    CFRelease(*a2);
    *a2 = 0;
  }

  if (v5)
  {
    Count = CFArrayGetCount(v5);
    if (Count >= 1)
    {
      v7 = Count;
      for (i = 0; i != v7; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v5, i);
        RecordID = _CalEntityGetRecordID(ValueAtIndex);
        validateAndAddObjectID(*a2, RecordID);
      }
    }

    CFRelease(v5);
  }
}

void _CalDatabasePreCommitSaveCallback(uint64_t a1, uint64_t a2)
{
  Context = CPRecordStoreGetContext();
  if (!Context)
  {
    return;
  }

  v5 = Context;
  v6 = *(Context + 84);
  if ((v6 & 0xFE) != 0)
  {
    if (a1)
    {
      if (CDBLockingAssertionsEnabled)
      {
        v7 = CPRecordStoreGetContext();
        if (v7)
        {
          os_unfair_lock_assert_owner(v7 + 20);
        }
      }
    }

    CPRecordStoreGetSequenceNumber();
    if ((v6 & 2) != 0)
    {
      if (a2)
      {
        if (CDBLockingAssertionsEnabled)
        {
          if (*a2)
          {
            if (*(*a2 + 104))
            {
              v8 = CPRecordStoreGetContext();
              if (v8)
              {
                os_unfair_lock_assert_owner(v8 + 20);
              }
            }
          }
        }
      }

      CPSqliteConnectionSetIntegerForProperty();
      *(v5 + 84) &= ~2u;
      if ((v6 & 4) == 0)
      {
LABEL_9:
        if ((v6 & 8) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_29;
      }
    }

    else if ((v6 & 4) == 0)
    {
      goto LABEL_9;
    }

    if (a2)
    {
      if (CDBLockingAssertionsEnabled)
      {
        if (*a2)
        {
          if (*(*a2 + 104))
          {
            v9 = CPRecordStoreGetContext();
            if (v9)
            {
              os_unfair_lock_assert_owner(v9 + 20);
            }
          }
        }
      }
    }

    CPSqliteConnectionSetIntegerForProperty();
    *(v5 + 84) &= ~4u;
    if ((v6 & 8) == 0)
    {
LABEL_10:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_36;
    }

LABEL_29:
    if (a2)
    {
      if (CDBLockingAssertionsEnabled)
      {
        if (*a2)
        {
          if (*(*a2 + 104))
          {
            v10 = CPRecordStoreGetContext();
            if (v10)
            {
              os_unfair_lock_assert_owner(v10 + 20);
            }
          }
        }
      }
    }

    CPSqliteConnectionSetIntegerForProperty();
    *(v5 + 84) &= ~8u;
    if ((v6 & 0x10) == 0)
    {
LABEL_11:
      if ((v6 & 0x20) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_43;
    }

LABEL_36:
    if (a2)
    {
      if (CDBLockingAssertionsEnabled)
      {
        if (*a2)
        {
          if (*(*a2 + 104))
          {
            v11 = CPRecordStoreGetContext();
            if (v11)
            {
              os_unfair_lock_assert_owner(v11 + 20);
            }
          }
        }
      }
    }

    CPSqliteConnectionSetIntegerForProperty();
    *(v5 + 84) &= ~0x10u;
    if ((v6 & 0x20) == 0)
    {
LABEL_12:
      if ((v6 & 0x40) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_50;
    }

LABEL_43:
    if (a2)
    {
      if (CDBLockingAssertionsEnabled)
      {
        if (*a2)
        {
          if (*(*a2 + 104))
          {
            v12 = CPRecordStoreGetContext();
            if (v12)
            {
              os_unfair_lock_assert_owner(v12 + 20);
            }
          }
        }
      }
    }

    CPSqliteConnectionSetIntegerForProperty();
    *(v5 + 84) &= ~0x20u;
    if ((v6 & 0x40) == 0)
    {
LABEL_13:
      if ((v6 & 0x80) == 0)
      {
        goto LABEL_64;
      }

LABEL_57:
      if (a2)
      {
        if (CDBLockingAssertionsEnabled)
        {
          if (*a2)
          {
            if (*(*a2 + 104))
            {
              v14 = CPRecordStoreGetContext();
              if (v14)
              {
                os_unfair_lock_assert_owner(v14 + 20);
              }
            }
          }
        }
      }

      CPSqliteConnectionSetIntegerForProperty();
      *(v5 + 84) &= ~0x80u;
      goto LABEL_64;
    }

LABEL_50:
    if (a2)
    {
      if (CDBLockingAssertionsEnabled)
      {
        if (*a2)
        {
          if (*(*a2 + 104))
          {
            v13 = CPRecordStoreGetContext();
            if (v13)
            {
              os_unfair_lock_assert_owner(v13 + 20);
            }
          }
        }
      }
    }

    CPSqliteConnectionSetIntegerForProperty();
    *(v5 + 84) &= ~0x40u;
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_57;
  }

LABEL_64:
  v15 = *(v5 + 24);
  if (CDBLockingAssertionsEnabled == 1 && v15 != 0)
  {
    v17 = CPRecordStoreGetContext();
    if (v17)
    {
      os_unfair_lock_assert_owner(v17 + 20);
    }
  }

  v18 = CPRecordStoreCopyChangedRecords();
  if (v18)
  {
    v19 = v18;
    Count = CFArrayGetCount(v18);
    if (Count >= 1)
    {
      v21 = Count;
      for (i = 0; i != v21; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v19, i);
        if (_CalEntityIsOfType(ValueAtIndex, 101))
        {
          _CalCalendarItemFixupParticipantsOnEvent(ValueAtIndex);
        }

        if (_CalEntityIsOfType(ValueAtIndex, 2))
        {
          _CalEventRectifyRecurrenceSeriesPrivacyLevels(ValueAtIndex);
        }
      }
    }

    CFRelease(v19);
  }
}

void _CalDatabaseCompleteSave(uint64_t a1, void *a2)
{
  Context = CPRecordStoreGetContext();
  v5 = *(Context + 112);
  if (v5)
  {
    Count = CFArrayGetCount(v5);
    if (Count >= 1)
    {
      v7 = Count;
      for (i = 0; i != v7; ++i)
      {
        v9 = CFArrayGetValueAtIndex(*(Context + 112), i);
        v9[2]();
      }
    }

    CFRelease(*(Context + 112));
    *(Context + 112) = 0;
  }

  if (a2)
  {
    v10 = *(Context + 32);
    if (v10)
    {
      _CalEventOccurrenceCacheStopTrackingUpdatesAndSave(v10, a2);
    }
  }

  if (a2 && (v11 = *(Context + 40)) != 0)
  {
    _CalScheduledTaskCacheStopTrackingUpdates(v11);
    _CalScheduledTaskCacheSave(*(Context + 40), a2);
    _CalScheduledTaskCacheFinishSave(*(Context + 40));
  }

  else if (!a2)
  {
    return;
  }

  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      v12 = CPRecordStoreGetContext();
      if (v12)
      {
        os_unfair_lock_assert_owner(v12 + 20);
      }
    }
  }

  SequenceNumber = CPRecordStoreGetSequenceNumber();
  v14 = CalDatabaseCopyClientIdentifierOptionalLock(Context, 0);
  _CalDatabaseAssociateSequenceNumberWithClient(a2, v14, SequenceNumber);

  CFRelease(v14);
}

BOOL _CalDatabaseSendChangeNotificationAndObjectIdsToCalaccessd(uint64_t a1, const __CFArray *a2, const __CFArray *a3, int64_t a4, BOOL a5, void *a6)
{
  v11 = a6;
  v12 = _CalDatabaseCalaccessdXPCConnection();
  if (v12)
  {
    v13 = _CalDatabaseCreateXPCArrayOfChangedObjectIDs(a2);
    v14 = _CalDatabaseCreateXPCArrayOfChangedObjectIDs(a3);
    v15 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v15, "function", "postchangenote");
    IfNeeded = CalDatabaseCopyDirectoryPathForDatabaseCreateIfNeeded(a1, 1);
    xpc_dictionary_set_string(v15, "databasePath", [(__CFString *)IfNeeded UTF8String]);
    xpc_dictionary_set_BOOL(v15, "postnotificationsynchronously", a5);
    if (v13 && v14)
    {
      xpc_dictionary_set_value(v15, "changes", v13);
      xpc_dictionary_set_value(v15, "deletes", v14);
    }

    xpc_dictionary_set_int64(v15, "changeType", a4);
    xpc_dictionary_set_int64(v15, "changeReason", *(a1 + 352));
    xpc_dictionary_set_string(v15, "clientName", [v11 UTF8String]);
    v17 = xpc_connection_send_message_with_reply_sync(v12, v15);
    v18 = v17;
    v19 = v17 && object_getClass(v17) == MEMORY[0x1E69E9E80] && xpc_dictionary_get_BOOL(v18, "notificationwasposted");
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

CFIndex _CalDatabaseCountEntitiesByType(const __CFArray *a1, uint64_t a2, _DWORD *a3)
{
  result = CFArrayGetCount(a1);
  if (result >= 1)
  {
    v7 = result;
    v8 = 0;
    v9 = a2 - 4;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v8);
      result = _CalEntityGetType(ValueAtIndex);
      if ((result - 1) >= 0x1D)
      {
        v11 = a3;
      }

      else
      {
        v11 = (v9 + 4 * result);
      }

      ++*v11;
      ++v8;
    }

    while (v7 != v8);
  }

  return result;
}

void _CalDatabaseChangesOfTypeMayAffectWidgets(uint64_t a1, CFArrayRef theArray, unint64_t a3, _BYTE *a4)
{
  v108 = *MEMORY[0x1E69E9840];
  if (!theArray)
  {
    goto LABEL_97;
  }

  v6 = theArray;
  Count = CFArrayGetCount(theArray);
  if (Count < 1)
  {
    goto LABEL_97;
  }

  v8 = Count;
  v9 = 0;
  v88 = a3 & 0xFFFFFFFFFFFFFFFDLL;
  v87 = a4 + 16;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v6, v9);
    RecordID = _CalEntityGetRecordID(ValueAtIndex);
    if (!RecordID)
    {
      v13 = CDBWidgetReloadHandle;
      if (os_log_type_enabled(CDBWidgetReloadHandle, OS_LOG_TYPE_ERROR))
      {
        v14 = v13;
        ID = CPRecordGetID();
        if (ValueAtIndex)
        {
          if (CDBLockingAssertionsEnabled)
          {
            if (CPRecordGetStore())
            {
              Context = CPRecordStoreGetContext();
              if (Context)
              {
                os_unfair_lock_assert_owner(Context + 20);
              }
            }
          }
        }

        IsDeleted = CPRecordIsDeleted();
        *buf = 67109376;
        *v104 = ID;
        *&v104[4] = 1024;
        *&v104[6] = IsDeleted;
        _os_log_impl(&dword_1DEBB1000, v14, OS_LOG_TYPE_ERROR, "_CalDatabaseChangesInArrayMayAffectWidgets: failed to get recordID for updated record with rowid [%d], deleted: %{BOOL}d", buf, 0xEu);
      }

      goto LABEL_96;
    }

    v12 = RecordID;
    if (CalRecordIDGetEntityType(RecordID) == 6)
    {
      if (_CalStoreHasDirtyInstanceAttributes(ValueAtIndex))
      {
        v65 = CDBWidgetReloadHandle;
        if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
        {
          v67 = off_1E8688740[a3];
          *buf = 138543362;
          *v104 = v67;
          _os_log_impl(&dword_1DEBB1000, v65, OS_LOG_TYPE_DEFAULT, "Allowing reload for changeType %{public}@ because store has dirty instance attributes", buf, 0xCu);
        }

        if (*a4 == 1)
        {
          v68 = a4 + 16;
          do
          {
            *(v68 - 15) = 1;
            v69 = *v68;
            v68 += 16;
          }

          while ((v69 & 1) != 0);
        }

        goto LABEL_97;
      }

      goto LABEL_96;
    }

    if (CalRecordIDGetEntityType(v12) == 1)
    {
      if (_CalCalendarHasDirtyInstanceAttributes(ValueAtIndex))
      {
        v70 = CDBWidgetReloadHandle;
        if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
        {
          v72 = off_1E8688740[a3];
          *buf = 138543362;
          *v104 = v72;
          _os_log_impl(&dword_1DEBB1000, v70, OS_LOG_TYPE_DEFAULT, "Allowing reload for changeType %{public}@ because calendar has dirty instance attributes", buf, 0xCu);
        }

        if (*a4 == 1)
        {
          v73 = a4 + 16;
          do
          {
            *(v73 - 15) = 1;
            v74 = *v73;
            v73 += 16;
          }

          while ((v74 & 1) != 0);
        }

        goto LABEL_97;
      }

      goto LABEL_96;
    }

    if (CalRecordIDGetEntityType(v12) != 5)
    {
      break;
    }

    if (a3 <= 1)
    {
      v75 = CDBWidgetReloadHandle;
      if (os_log_type_enabled(CDBWidgetReloadHandle, OS_LOG_TYPE_DEFAULT))
      {
        v77 = @"ChangeTypeUpdated";
        if (!a3)
        {
          v77 = @"ChangeTypeAdded";
        }

        v78 = v77;
        *buf = 138543362;
        *v104 = v78;
        v79 = v75;
        _os_log_impl(&dword_1DEBB1000, v79, OS_LOG_TYPE_DEFAULT, "Allowing reload because of changeType %{public}@ for recurrence rule", buf, 0xCu);
      }

      if (*a4 == 1)
      {
        v80 = a4 + 16;
        do
        {
          *(v80 - 15) = 1;
          v81 = *v80;
          v80 += 16;
        }

        while ((v81 & 1) != 0);
      }

      goto LABEL_97;
    }

LABEL_96:
    if (++v9 >= v8)
    {
      goto LABEL_97;
    }
  }

  if (CalRecordIDGetEntityType(v12) != 29)
  {
    if (_CalEntityIsOfType(ValueAtIndex, 2))
    {
      v89 = a3;
      v86 = v6;
      if (v88)
      {
        if (ValueAtIndex)
        {
          if (CDBLockingAssertionsEnabled)
          {
            if (CPRecordGetStore())
            {
              v18 = CPRecordStoreGetContext();
              if (v18)
              {
                os_unfair_lock_assert_owner(v18 + 20);
              }
            }
          }
        }

        v19 = CPRecordCopyChangedProperties();
        if (v19)
        {
          v20 = v19;
          v21 = CFArrayGetCount(v19);
          if (v21 >= 1)
          {
            v22 = v21;
            for (i = 0; v22 != i; ++i)
            {
              v24 = CFArrayGetValueAtIndex(v20, i);
              if (v24 <= 73)
              {
                if (v24 <= 0x39 && ((1 << v24) & 0x2800001000083FFLL) != 0)
                {
LABEL_48:
                  v26 = CDBWidgetReloadHandle;
                  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
                  {
                    PropertyDescriptor = CPRecordGetPropertyDescriptor();
                    if (PropertyDescriptor && *PropertyDescriptor)
                    {
                      v28 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
                    }

                    else
                    {
                      v28 = &stru_1F59E24D8;
                    }

                    *buf = 138543362;
                    *v104 = v28;
                    _os_log_impl(&dword_1DEBB1000, v26, OS_LOG_TYPE_DEFAULT, "ChangeTypeUpdated contains changed property (%{public}@), which may affect the widget view if it's in the time range", buf, 0xCu);
                  }

                  CFRelease(v20);
                  goto LABEL_55;
                }
              }

              else if (v24 == 74)
              {
                if (_CalDatabaseIsIntegrationRecord(ValueAtIndex))
                {
                  goto LABEL_48;
                }
              }

              else if ((v24 - 80) < 2 || v24 == 96)
              {
                goto LABEL_48;
              }
            }
          }

          CFRelease(v20);
        }

        v93 = 0;
      }

      else
      {
        v25 = CDBWidgetReloadHandle;
        if (os_log_type_enabled(CDBWidgetReloadHandle, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1DEBB1000, v25, OS_LOG_TYPE_DEFAULT, "Event was added or removed which may affect the widget view if it's in the time range", buf, 2u);
        }

LABEL_55:
        v93 = 1;
      }

      if (*a4 != 1)
      {
LABEL_95:
        a3 = v89;
        v6 = v86;
        if (a4[1])
        {
          goto LABEL_97;
        }

        goto LABEL_96;
      }

      v29 = 0;
      v30 = v87;
      v91 = v8;
      v92 = a4;
      while (2)
      {
        v31 = &a4[16 * v29];
        if (*(v31 + 1))
        {
          goto LABEL_95;
        }

        v99 = v29;
        v90 = &a4[16 * v29];
        v32 = v31[1];
        v33 = [v32 startDate];
        v34 = [v32 endDate];
        v35 = CalCopyTimeZone();
        v102 = v33;
        [v33 timeIntervalSinceReferenceDate];
        GregorianDateWithFallbackToDefaultTimeZone = CalAbsoluteTimeGetGregorianDateWithFallbackToDefaultTimeZone();
        v96 = v37;
        v97 = GregorianDateWithFallbackToDefaultTimeZone;
        v100 = v34;
        [v34 timeIntervalSinceReferenceDate];
        cf = v35;
        v38 = CalAbsoluteTimeGetGregorianDateWithFallbackToDefaultTimeZone();
        v94 = v39;
        v95 = v38;
        v40 = MEMORY[0x1E695DF00];
        v41 = v32;
        v42 = [v40 dateWithTimeIntervalSinceReferenceDate:COERCE_DOUBLE(_CalEventGetStartDate(ValueAtIndex))];
        v43 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:_CalRecurrenceGetEndDate(ValueAtIndex)];
        v44 = [v41 intersectsRangeWithStartDate:v42 endDate:v43 allowSinglePointIntersection:0];
        v45 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:_CalRecordGetOriginalDateProperty(ValueAtIndex)];
        v46 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:_CalRecordGetOriginalDateProperty(ValueAtIndex)];
        LODWORD(v34) = [v41 intersectsRangeWithStartDate:v45 endDate:v46 allowSinglePointIntersection:0];

        if ((v93 & (v44 | v34)) == 1)
        {
          v47 = CDBWidgetReloadHandle;
          v48 = v99;
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
          {
            v49 = off_1E8688740[v89];
            *buf = 138543874;
            *v104 = v49;
            *&v104[8] = 1024;
            v105 = 1;
            v106 = 1024;
            v107 = v99;
            _os_log_impl(&dword_1DEBB1000, v47, OS_LOG_TYPE_DEFAULT, "Allowing reload for %{public}@ because changedPropertiesShowInWidget (%{BOOL}d) and its in range %i.", buf, 0x18u);
          }

          LODWORD(v50) = 1;
          v8 = v91;
          a4 = v92;
          v51 = cf;
          goto LABEL_63;
        }

        if (v93)
        {
          v51 = cf;
          if (_CalEventOccurrencesExistInDateRange(ValueAtIndex, v97, v96, v95, v94, 0, cf))
          {
            v52 = CDBWidgetReloadHandle;
            v8 = v91;
            a4 = v92;
            v48 = v99;
            if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
            {
              v53 = off_1E8688740[v89];
              *buf = 138543874;
              *v104 = v53;
              *&v104[8] = 1024;
              v105 = 1;
              v106 = 1024;
              v107 = v99;
              _os_log_impl(&dword_1DEBB1000, v52, OS_LOG_TYPE_DEFAULT, "Allowing reload for %{public}@ because changedPropertiesShowInWidget (%{BOOL}d), post-save event occurrences exist in range %i)", buf, 0x18u);
            }

            LODWORD(v50) = 1;
LABEL_63:
            if (v51)
            {
LABEL_64:
              CFRelease(v51);
            }

LABEL_65:

            if (v50)
            {
              if (*v90 == 1)
              {
                do
                {
                  *(v30 - 15) = 1;
                  v63 = *v30;
                  v30 += 16;
                }

                while ((v63 & 1) != 0);
              }

              goto LABEL_95;
            }

            v29 = v48 + 1;
            v30 += 16;
            if (a4[16 * v29] != 1)
            {
              goto LABEL_95;
            }

            continue;
          }

          v50 = *(a1 + 32);
          if (v50)
          {
            CFRetain(*(a1 + 32));
            v54 = CalFilterCreateWithDatabaseShowingAll(a1);
            v55 = CPRecordGetID();
            Mutable = CFArrayCreateMutable(0, 1, 0);
            CFArrayAppendValue(Mutable, v55);
            [v102 timeIntervalSinceReferenceDate];
            v58 = CalEventOccurrenceCacheCopyEventOccurrencesWithIDsAfterDate(v50, v54, Mutable, 1, 0, 0, *(a1 + 365) == 0, 0, v57 + -1.0);
            if (v54)
            {
              CFRelease(v54);
            }

            CFRelease(v50);
            if (Mutable)
            {
              CFRelease(Mutable);
            }

            v8 = v91;
            a4 = v92;
            if (v58)
            {
              if (CFArrayGetCount(v58) == 1 && (v59 = CFArrayGetValueAtIndex(v58, 0), Date = CalEventOccurrenceGetDate(v59), [v100 timeIntervalSinceReferenceDate], Date < v61))
              {
                v50 = CDBWidgetReloadHandle;
                v48 = v99;
                if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
                {
                  v62 = off_1E8688740[v89];
                  *buf = 138543874;
                  *v104 = v62;
                  *&v104[8] = 1024;
                  v105 = 1;
                  v106 = 1024;
                  v107 = v99;
                  _os_log_impl(&dword_1DEBB1000, v50, OS_LOG_TYPE_DEFAULT, "Allowing reload for %{public}@ because changedPropertiesShowInWidget (%{BOOL}d), pre-save event occurrences exist in range %i)", buf, 0x18u);
                }

                LODWORD(v50) = 1;
              }

              else
              {
                LODWORD(v50) = 0;
                v48 = v99;
              }

              CFRelease(v58);
              v51 = cf;
              if (cf)
              {
                goto LABEL_64;
              }

              goto LABEL_65;
            }

            LODWORD(v50) = 0;
LABEL_74:
            v51 = cf;
          }

          else
          {
            v8 = v91;
            a4 = v92;
          }

          v48 = v99;
          if (v51)
          {
            goto LABEL_64;
          }

          goto LABEL_65;
        }

        break;
      }

      LODWORD(v50) = 0;
      v8 = v91;
      a4 = v92;
      goto LABEL_74;
    }

    goto LABEL_96;
  }

  if (a3 != 1)
  {
    goto LABEL_96;
  }

  v82 = CDBWidgetReloadHandle;
  if (os_log_type_enabled(CDBWidgetReloadHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DEBB1000, v82, OS_LOG_TYPE_DEFAULT, "Allowing reload because a color has been updated", buf, 2u);
  }

  if (*a4 == 1)
  {
    v84 = a4 + 16;
    do
    {
      *(v84 - 15) = 1;
      v85 = *v84;
      v84 += 16;
    }

    while ((v85 & 1) != 0);
  }

LABEL_97:
  v64 = *MEMORY[0x1E69E9840];
}

BOOL _CalDatabaseChangesOfTypeMayAffectAppEntities(const __CFArray *a1, uint64_t a2)
{
  *&v29[5] = *MEMORY[0x1E69E9840];
  if (!a1 || (Count = CFArrayGetCount(a1), Count < 1))
  {
    v7 = 0;
    goto LABEL_26;
  }

  v5 = Count;
  v6 = 0;
  v7 = 1;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, v6);
    RecordID = _CalEntityGetRecordID(ValueAtIndex);
    if (!RecordID)
    {
      v11 = CDBAppEntityHandle;
      if (os_log_type_enabled(CDBAppEntityHandle, OS_LOG_TYPE_ERROR))
      {
        v12 = v11;
        ID = CPRecordGetID();
        if (ValueAtIndex)
        {
          if (CDBLockingAssertionsEnabled)
          {
            if (CPRecordGetStore())
            {
              Context = CPRecordStoreGetContext();
              if (Context)
              {
                os_unfair_lock_assert_owner(Context + 20);
              }
            }
          }
        }

        IsDeleted = CPRecordIsDeleted();
        *buf = 67109376;
        v29[0] = ID;
        LOWORD(v29[1]) = 1024;
        *(&v29[1] + 2) = IsDeleted;
        _os_log_impl(&dword_1DEBB1000, v12, OS_LOG_TYPE_ERROR, "_CalDatabaseChangesMayAffectAppEntities: failed to get recordID for updated record with rowid [%d], deleted: %{BOOL}d", buf, 0xEu);
      }

      goto LABEL_23;
    }

    v10 = RecordID;
    if (CalRecordIDGetEntityType(RecordID) == 6)
    {
      if (_CalStoreHasDirtyInstanceAttributes(ValueAtIndex))
      {
        v18 = CDBAppEntityHandle;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v20 = off_1E8688740[a2];
          *buf = 138543362;
          *v29 = v20;
          v21 = "Notifying app entity observers for changeType %{public}@ because store has dirty instance attributes";
          goto LABEL_37;
        }

        goto LABEL_38;
      }

      goto LABEL_23;
    }

    if (CalRecordIDGetEntityType(v10) == 1)
    {
      if (_CalCalendarHasDirtyInstanceAttributes(ValueAtIndex))
      {
        v18 = CDBAppEntityHandle;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v23 = off_1E8688740[a2];
          *buf = 138543362;
          *v29 = v23;
          v21 = "Notifying app entity observers for changeType %{public}@ because calendar has dirty instance attributes";
          goto LABEL_37;
        }

        goto LABEL_38;
      }

      goto LABEL_23;
    }

    if (CalRecordIDGetEntityType(v10) == 5)
    {
      break;
    }

    if (_CalEntityIsOfType(ValueAtIndex, 2))
    {
      v18 = CDBAppEntityHandle;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v24 = off_1E8688740[a2];
        *buf = 138543362;
        *v29 = v24;
        v21 = "Notifying app entity observers because of changeType %{public}@ for event";
        goto LABEL_37;
      }

LABEL_38:

      goto LABEL_26;
    }

    if (_CalEntityIsOfType(ValueAtIndex, 29))
    {
      v18 = CDBAppEntityHandle;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v27 = off_1E8688740[a2];
        *buf = 138543362;
        *v29 = v27;
        v21 = "Notifying app entity observers because of changeType %{public}@ for color";
LABEL_37:
        _os_log_impl(&dword_1DEBB1000, v18, OS_LOG_TYPE_DEFAULT, v21, buf, 0xCu);
      }

      goto LABEL_38;
    }

LABEL_23:
    v7 = ++v6 < v5;
    if (v5 == v6)
    {
      goto LABEL_26;
    }
  }

  if (a2 != 1)
  {
    goto LABEL_23;
  }

  v25 = CDBAppEntityHandle;
  if (os_log_type_enabled(CDBAppEntityHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *v29 = @"ChangeTypeUpdated";
    _os_log_impl(&dword_1DEBB1000, v25, OS_LOG_TYPE_DEFAULT, "Notifying app entity observers because of changeType %{public}@ for recurrence rule", buf, 0xCu);
  }

LABEL_26:
  v16 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t _CalDatabaseRemoveOrphanedEntities(uint64_t a1, uint64_t (*a2)(void))
{
  result = a2();
  if ((result & 1) == 0)
  {
    if (CPRecordGetStore())
    {
      Context = CPRecordStoreGetContext();
      result = CFLog();
      if (Context)
      {
        v4 = *(Context + 24);
        if (CDBLockingAssertionsEnabled == 1)
        {
          if (v4)
          {
            v5 = CPRecordStoreGetContext();
            if (v5)
            {
              os_unfair_lock_assert_owner(v5 + 20);
            }
          }
        }

        return CPRecordStoreRemoveRecord();
      }
    }

    else
    {
      return CFLog();
    }
  }

  return result;
}

void _CalGatherAddedDetachedItemDetails(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  Property = CPRecordGetProperty();
  if (Property)
  {
    v6 = Property;
    v7 = MEMORY[0x1E12C5EF0]();
    CFStringAppendFormat(*(a2 + 8), 0, @"%f,", *&v7);
    CFArrayAppendValue(*(a2 + 16), v6);
    if (a1 && (CDBLockingAssertionsEnabled & 1) != 0 && CPRecordGetStore())
    {
      v8 = CPRecordStoreGetContext();
      if (v8)
      {
        os_unfair_lock_assert_owner(v8 + 20);
      }
    }

    valuePtr = CPRecordGetProperty();
    v9 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    CFArrayAppendValue(*(a2 + 24), v9);
    CFRelease(v9);
  }
}

uint64_t _CalAnalyzeExistingDetachedItemsAndRemoveIfNeeded(uint64_t a1, uint64_t *a2)
{
  sqlite3_column_int(*(a1 + 8), 0);
  v4 = sqlite3_column_int(*(a1 + 8), 1);
  v5 = sqlite3_column_double(*(a1 + 8), 2);
  v6 = a2[2];
  if (v6)
  {
    v7 = v5;
    v8 = a2[3];
    v20 = *a2;
    v9 = *(*a2 + 24);
    Count = CFArrayGetCount(v6);
    if (Count >= 1)
    {
      v11 = Count;
      for (i = 0; i != v11; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v6, i);
        if (vabdd_f64(MEMORY[0x1E12C5EF0](ValueAtIndex, v14, v15), v7) < 2.22044605e-16)
        {
          v16 = CFArrayGetValueAtIndex(v8, i);
          valuePtr = -1;
          if (CFNumberGetValue(v16, kCFNumberIntType, &valuePtr))
          {
            if (valuePtr == v4)
            {
              CalendarItemWithRowID = _CalGetCalendarItemWithRowID(v9);
              if (CalendarItemWithRowID)
              {
                v18 = CalendarItemWithRowID;
                CFLog();
                if (_CalEntityIsOfType(v18, 2))
                {
                  _CalRemoveEvent(v18, 0, 0);
                }

                else if (_CalEntityIsOfType(v18, 3))
                {
                  _CalRemoveTask(v20, v18);
                }
              }
            }
          }
        }
      }
    }
  }

  return 0;
}

id _CalDatabaseCreateXPCArrayOfChangedObjectIDs(const __CFArray *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = xpc_array_create(0, 0);
    Count = CFArrayGetCount(a1);
    if (Count >= 1)
    {
      v4 = Count;
      for (i = 0; i != v4; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
        v7 = CalRecordIDGetEntityType(ValueAtIndex);
        v8 = CalRecordIDGetRowID(ValueAtIndex);
        v9 = v8;
        if (v7 < 0 || v8 < 0)
        {
          v13 = CDBLogHandle;
          if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109376;
            v17 = v7;
            v18 = 1024;
            v19 = v9;
            _os_log_impl(&dword_1DEBB1000, v13, OS_LOG_TYPE_ERROR, "Unexpected entity type: %i row ID: %i", buf, 0xEu);
          }
        }

        else
        {
          v10 = CalRecordIDGetEntityType(ValueAtIndex);
          v11 = CalRecordIDGetRowID(ValueAtIndex);
          v12 = xpc_uint64_create(v11 | (v10 << 32));
          xpc_array_append_value(v2, v12);
        }
      }
    }
  }

  else
  {
    v2 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v2;
}

id _overrideTimezoneName(void *a1)
{
  v1 = *MEMORY[0x1E6993158];
  v2 = a1;
  v3 = [v2 getValueForPreference:v1 expectedClass:objc_opt_class()];

  return v3;
}

void _CalDatabaseDeleteDatabaseBecauseOfExcessiveFailedMigrationAttempts(void *a1)
{
  v43 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 stringByAppendingPathComponent:*MEMORY[0x1E69930F0]];
  v3 = [v2 stringByAppendingString:@"-wal"];
  v4 = [v2 stringByAppendingString:@"-shm"];
  v5 = [MEMORY[0x1E696AC08] defaultManager];
  if (os_variant_has_internal_diagnostics())
  {
    v6 = [v1 stringByAppendingPathComponent:@"Calendar-unableToMigrate.sqlitedb"];
    v7 = [v6 stringByAppendingString:@"-wal"];
    if (([v5 fileExistsAtPath:v6] & 1) != 0 || objc_msgSend(v5, "fileExistsAtPath:", v7))
    {
      v8 = CDBLogHandle;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v40 = v6;
        _os_log_impl(&dword_1DEBB1000, v8, OS_LOG_TYPE_ERROR, "File already exists at path %{public}@; not keeping database.", buf, 0xCu);
      }
    }

    else
    {
      v36 = 0;
      v9 = [v5 moveItemAtPath:v2 toPath:v6 error:&v36];
      v10 = v36;
      v11 = CDBLogHandle;
      v12 = os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR);
      if (v9)
      {
        if (v12)
        {
          *buf = 138543362;
          v40 = v6;
          _os_log_impl(&dword_1DEBB1000, v11, OS_LOG_TYPE_ERROR, "Keeping database that could not be migrated at %{public}@.", buf, 0xCu);
        }

        v35 = v10;
        v13 = [v5 moveItemAtPath:v3 toPath:v7 error:&v35];
        v14 = v35;

        if ((v13 & 1) == 0)
        {
          v15 = CDBLogHandle;
          if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v40 = v7;
            v41 = 2112;
            v42 = v14;
            _os_log_impl(&dword_1DEBB1000, v15, OS_LOG_TYPE_ERROR, "Unable to move database-wal that failed to migrate to %{public}@: %@", buf, 0x16u);
          }
        }
      }

      else
      {
        if (v12)
        {
          *buf = 138543618;
          v40 = v6;
          v41 = 2112;
          v42 = v10;
          _os_log_impl(&dword_1DEBB1000, v11, OS_LOG_TYPE_ERROR, "Unable to move database that failed to migrate to %{public}@: %@", buf, 0x16u);
        }

        v14 = v10;
      }
    }
  }

  v28 = v2;
  v29 = v1;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v37[0] = v2;
  v37[1] = v3;
  v27 = v3;
  v37[2] = v4;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:{3, v4}];
  v17 = [v16 countByEnumeratingWithState:&v31 objects:v38 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v32;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v32 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v31 + 1) + 8 * i);
        if ([v5 fileExistsAtPath:v21])
        {
          v30 = 0;
          v22 = [v5 removeItemAtPath:v21 error:&v30];
          v23 = v30;
          if ((v22 & 1) == 0)
          {
            v24 = CDBLogHandle;
            if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v40 = v21;
              _os_log_impl(&dword_1DEBB1000, v24, OS_LOG_TYPE_ERROR, "Error removing file at path: %{public}@", buf, 0xCu);
            }
          }
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v31 objects:v38 count:16];
    }

    while (v18);
  }

  v25 = *MEMORY[0x1E69E9840];
}

uint64_t _CalDatabaseTargetBirthdayMigrationState()
{
  if (_os_feature_enabled_impl())
  {
    return 1;
  }

  result = _os_feature_enabled_impl();
  if (result)
  {
    return 1;
  }

  return result;
}

void _CalDatabaseCleanUpMovedAsideDatabaseFilesInDirectory(void *a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v1 = [a1 stringByAppendingPathComponent:@"Calendar-unableToMigrate.sqlitedb"];
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v3 = [&unk_1F59EF9E0 countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v24;
    *&v4 = 138412290;
    v21 = v4;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(&unk_1F59EF9E0);
        }

        v8 = [v1 stringByAppendingString:{*(*(&v23 + 1) + 8 * i), v21}];
        v9 = [v2 attributesOfItemAtPath:v8 error:0];
        v10 = v9;
        if (v9)
        {
          v11 = [v9 fileModificationDate];
          [v11 timeIntervalSinceNow];
          v13 = v12;

          if (v13 < -31536000.0)
          {
            v22 = 0;
            v14 = [v2 removeItemAtPath:v8 error:&v22];
            v15 = v22;
            v16 = CDBLogHandle;
            if (v14)
            {
              if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEFAULT))
              {
                *buf = v21;
                v28 = v8;
                v17 = v16;
                v18 = OS_LOG_TYPE_DEFAULT;
                v19 = "Cleaned up moved aside file at path %@";
                goto LABEL_13;
              }
            }

            else if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
            {
              *buf = v21;
              v28 = v8;
              v17 = v16;
              v18 = OS_LOG_TYPE_ERROR;
              v19 = "Error removing moved aside file at path %@";
LABEL_13:
              _os_log_impl(&dword_1DEBB1000, v17, v18, v19, buf, 0xCu);
            }
          }
        }
      }

      v5 = [&unk_1F59EF9E0 countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v5);
  }

  v20 = *MEMORY[0x1E69E9840];
}

Class __getCalDefaultReminderKitProviderClass_block_invoke(uint64_t a1)
{
  CalendarMigrationLibrary();
  result = objc_getClass("CalDefaultReminderKitProvider");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCalDefaultReminderKitProviderClass_block_invoke_cold_1();
  }

  getCalDefaultReminderKitProviderClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getCalDefaultReminderMigrationDefaultsProviderClass_block_invoke(uint64_t a1)
{
  CalendarMigrationLibrary();
  result = objc_getClass("CalDefaultReminderMigrationDefaultsProvider");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCalDefaultReminderMigrationDefaultsProviderClass_block_invoke_cold_1();
  }

  getCalDefaultReminderMigrationDefaultsProviderClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getCalCalendarDatabaseReminderMigratorClass_block_invoke(uint64_t a1)
{
  CalendarMigrationLibrary();
  result = objc_getClass("CalCalendarDatabaseReminderMigrator");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCalCalendarDatabaseReminderMigratorClass_block_invoke_cold_1();
  }

  getCalCalendarDatabaseReminderMigratorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void CalDatabaseDeleteFile(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  if ([v2 fileExistsAtPath:v1])
  {
    v11 = 0;
    v3 = [v2 removeItemAtPath:v1 error:&v11];
    v4 = v11;
    v5 = CDBLogHandle;
    if (v3)
    {
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v13 = v1;
        v6 = "Removed %{public}@";
        v7 = v5;
        v8 = OS_LOG_TYPE_INFO;
        v9 = 12;
LABEL_7:
        _os_log_impl(&dword_1DEBB1000, v7, v8, v6, buf, v9);
      }
    }

    else if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v13 = v1;
      v14 = 2112;
      v15 = v4;
      v6 = "Unable to remove %{public}@: %@";
      v7 = v5;
      v8 = OS_LOG_TYPE_ERROR;
      v9 = 22;
      goto LABEL_7;
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

void ___shouldMigrateChinaTimezones_block_invoke(uint64_t a1)
{
  if ([MEMORY[0x1E698B670] willApplyTimeZoneChanges1])
  {
    v4 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F59EF9C8];
    v2 = _overrideTimezoneName(*(a1 + 32));
    v3 = v2;
    if (v2)
    {
      LOBYTE(v2) = [v4 containsObject:v2];
    }

    _shouldMigrateChinaTimezones_shouldMigrate = v2;
  }
}

void __CalDatabaseDistributeChangeReport_block_invoke(uint64_t a1)
{
  LocalCenter = CFNotificationCenterGetLocalCenter();
  v3 = *(a1 + 32);

  CFNotificationCenterPostNotification(LocalCenter, @"_CalDatabaseChangeReportAvailableNotification", 0, v3, 1u);
}

void CalScheduledTaskCacheInitializeDB(uint64_t a1, void *a2, int a3)
{
  if (a3 <= 112)
  {
    CalPerformSQLWithConnection(a2, @"CREATE TABLE ScheduledTaskCache (day REAL, date_for_sorting REAL, completed INTEGER, task_id INTEGER, count INTEGER, PRIMARY KEY (day, task_id));");
    CalPerformSQLWithConnection(a2, @"CREATE TRIGGER update_task_cache_count_after_insert AFTER INSERT ON ScheduledTaskCache\nBEGIN\n    REPLACE INTO ScheduledTaskCache VALUES (NEW.day, NULL, NULL, -2, 1 + IFNULL((SELECT count FROM ScheduledTaskCache WHERE day = NEW.day AND task_id = -2), 0));\nEND;\n");
    CalPerformSQLWithConnection(a2, @"CREATE TRIGGER update_task_cache_count_after_update AFTER UPDATE OF day ON ScheduledTaskCache\nBEGIN\n    UPDATE ScheduledTaskCache SET count = count - 1 WHERE day = OLD.day AND task_id = -2;\n    REPLACE INTO ScheduledTaskCache VALUES (NEW.day, NULL, NULL, -2, IFNULL((SELECT count FROM ScheduledTaskCache WHERE day = NEW.day AND task_id = -2), 0));\n    DELETE FROM ScheduledTaskCache WHERE day = OLD.day AND count = 0;\nEND;\n");
    CalPerformSQLWithConnection(a2, @"CREATE TRIGGER update_task_cache_days_after_delete AFTER DELETE ON ScheduledTaskCache\nBEGIN\n    UPDATE ScheduledTaskCache SET count = count - 1 WHERE day = OLD.day AND task_id = -2;\n    DELETE FROM ScheduledTaskCache WHERE day = OLD.day AND count = 0;\nEND;\n");
    CalPerformSQLWithConnection(a2, @"CREATE INDEX ScheduledTaskCacheDayTaskId on ScheduledTaskCache(day);");

    CalPerformSQLWithConnection(a2, @"CREATE INDEX ScheduledTaskCacheTaskId on ScheduledTaskCache(task_id);");
  }
}

uint64_t CalDatabaseCopyScheduledTaskCache(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 20);
  v2 = _CalDatabaseCopyScheduledTaskCache(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  return v2;
}

id CalScheduledTaskCacheCopyAllDaysAndTaskCounts(uint64_t a1)
{
  if (!CalDatabaseLockForThread(*(a1 + 24)))
  {
    return 0;
  }

  RecordStore = _CalDatabaseGetRecordStore(*(a1 + 24));
  if (CDBLockingAssertionsEnabled == 1 && RecordStore != 0)
  {
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      os_unfair_lock_assert_owner(Context + 20);
    }
  }

  Database = CPRecordStoreGetDatabase();
  if (!Database)
  {
    goto LABEL_24;
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    if (*(Database + 104))
    {
      v6 = CPRecordStoreGetContext();
      if (v6)
      {
        os_unfair_lock_assert_owner(v6 + 20);
      }
    }
  }

  v7 = CPSqliteDatabaseStatementForReading();
  if (!v7)
  {
LABEL_24:
    CalDatabaseUnlockForThread(*(a1 + 24));
    return 0;
  }

  v8 = v7;
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (*v8)
    {
      v10 = **v8;
      if (v10)
      {
        if (*(v10 + 104))
        {
          v11 = CPRecordStoreGetContext();
          if (v11)
          {
            os_unfair_lock_assert_owner(v11 + 20);
          }
        }
      }
    }
  }

  if (CPSqliteStatementSendResults() != 101)
  {

    goto LABEL_24;
  }

  CalDatabaseUnlockForThread(*(a1 + 24));
  if (v9)
  {
    CFRetain(v9);
  }

  return v9;
}

uint64_t _CopyAllDaysAndTaskCountsResultHandler(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v4 = a2;
  v5 = sqlite3_column_int(v3, 0);
  v6 = sqlite3_column_int(*(a1 + 8), 1);
  v7 = MEMORY[0x1E695DF90];
  v8 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v5];
  v9 = [MEMORY[0x1E696AD98] numberWithInt:v6];
  v10 = [v7 dictionaryWithObjectsAndKeys:{v8, @"day", v9, @"count", 0}];

  [v4 addObject:v10];
  return 0;
}

CFMutableArrayRef CalScheduledTaskCacheCopyTaskRowIDsOnDay(uint64_t a1, double a2)
{
  if (!CalDatabaseLockForThread(*(a1 + 24)))
  {
    return 0;
  }

  RecordStore = _CalDatabaseGetRecordStore(*(a1 + 24));
  if (CDBLockingAssertionsEnabled == 1 && RecordStore != 0)
  {
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      os_unfair_lock_assert_owner(Context + 20);
    }
  }

  Database = CPRecordStoreGetDatabase();
  Mutable = Database;
  if (Database)
  {
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*(Database + 104))
      {
        v9 = CPRecordStoreGetContext();
        if (v9)
        {
          os_unfair_lock_assert_owner(v9 + 20);
        }
      }
    }

    v10 = CPSqliteDatabaseStatementForReading();
    if (v10)
    {
      v11 = v10;
      sqlite3_bind_int(*(v10 + 8), 1, a2);
      Mutable = CFArrayCreateMutable(0, 0, 0);
      if (CDBLockingAssertionsEnabled == 1)
      {
        if (*v11)
        {
          v12 = **v11;
          if (v12)
          {
            if (*(v12 + 104))
            {
              v13 = CPRecordStoreGetContext();
              if (v13)
              {
                os_unfair_lock_assert_owner(v13 + 20);
              }
            }
          }
        }
      }

      if (CPSqliteStatementSendResults() == 101)
      {
        goto LABEL_23;
      }

      CFRelease(Mutable);
    }

    Mutable = 0;
  }

LABEL_23:
  CalDatabaseUnlockForThread(*(a1 + 24));
  return Mutable;
}

uint64_t _CopyTaskRowIDsOnDayResultHandler(uint64_t a1, __CFArray *a2)
{
  v3 = sqlite3_column_int(*(a1 + 8), 0);
  CFArrayAppendValue(a2, v3);
  return 0;
}

CFMutableArrayRef CalScheduledTaskCacheCopyTaskRowIDsOnRange(uint64_t a1, double a2, double a3)
{
  if (!CalDatabaseLockForThread(*(a1 + 24)))
  {
    return 0;
  }

  RecordStore = _CalDatabaseGetRecordStore(*(a1 + 24));
  if (CDBLockingAssertionsEnabled == 1 && RecordStore != 0)
  {
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      os_unfair_lock_assert_owner(Context + 20);
    }
  }

  Database = CPRecordStoreGetDatabase();
  Mutable = Database;
  if (Database)
  {
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*(Database + 104))
      {
        v11 = CPRecordStoreGetContext();
        if (v11)
        {
          os_unfair_lock_assert_owner(v11 + 20);
        }
      }
    }

    v12 = CPSqliteDatabaseStatementForReading();
    if (v12)
    {
      v13 = v12;
      sqlite3_bind_int(*(v12 + 8), 1, a2);
      sqlite3_bind_int(*(v13 + 8), 2, a3);
      Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
      if (CDBLockingAssertionsEnabled == 1)
      {
        if (*v13)
        {
          v14 = **v13;
          if (v14)
          {
            if (*(v14 + 104))
            {
              v15 = CPRecordStoreGetContext();
              if (v15)
              {
                os_unfair_lock_assert_owner(v15 + 20);
              }
            }
          }
        }
      }

      if (CPSqliteStatementSendResults() == 101)
      {
        goto LABEL_23;
      }

      CFRelease(Mutable);
    }

    Mutable = 0;
  }

LABEL_23:
  CalDatabaseUnlockForThread(*(a1 + 24));
  return Mutable;
}

uint64_t _CopyTaskRowIDsOnRangeResultHandler(uint64_t a1, __CFArray *a2)
{
  v3 = sqlite3_column_int(*(a1 + 8), 0);
  v4 = CalRecordIDCreate(3, v3);
  CFArrayAppendValue(a2, v4);
  CFRelease(v4);
  return 0;
}

uint64_t CalScheduledTaskCacheUpdateIfNeededForTimeZoneChange(uint64_t a1)
{
  if (*(a1 + 16) == 1 && CalDatabaseLockForThread(*(a1 + 24)))
  {
    RecordStore = _CalDatabaseGetRecordStore(*(a1 + 24));
    if (CDBLockingAssertionsEnabled == 1 && RecordStore != 0)
    {
      Context = CPRecordStoreGetContext();
      if (Context)
      {
        os_unfair_lock_assert_owner(Context + 20);
      }
    }

    v5 = CPRecordStoreCopyValueForProperty();
    v6 = *(a1 + 32);
    CFAbsoluteTimeGetCurrent();
    v7 = CalCFTimeZoneCopyCalTimeZone();
    v8 = v7;
    if (v5)
    {
      v9 = CFStringCompare(v5, v7, 0);
      CFRelease(v8);
      CFRelease(v5);
      if (v9 == kCFCompareEqualTo)
      {
        v10 = 0;
LABEL_80:
        CalDatabaseUnlockForThread(*(a1 + 24));
        return v10;
      }
    }

    else
    {
      CFRelease(v7);
    }

    v11 = _CalDatabaseGetRecordStore(*(a1 + 24));
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (v11)
      {
        v12 = CPRecordStoreGetContext();
        if (v12)
        {
          os_unfair_lock_assert_owner(v12 + 20);
        }
      }
    }

    Database = CPRecordStoreGetDatabase();
    if (Database)
    {
      if (CDBLockingAssertionsEnabled == 1)
      {
        if (*(Database + 104))
        {
          v14 = CPRecordStoreGetContext();
          if (v14)
          {
            os_unfair_lock_assert_owner(v14 + 20);
          }
        }
      }

      v15 = CPSqliteDatabaseConnectionForWritingWithSqlite3OpenFlags();
      if (v15)
      {
        v16 = v15;
        if (CDBLockingAssertionsEnabled == 1)
        {
          if (*v15)
          {
            if (*(*v15 + 104))
            {
              v17 = CPRecordStoreGetContext();
              if (v17)
              {
                os_unfair_lock_assert_owner(v17 + 20);
              }
            }
          }
        }

        v18 = CPSqliteConnectionBeginTransactionType();
        if (!v18 || v18 == 101)
        {
          v19 = _CalDatabaseGetRecordStore(*(a1 + 24));
          if (CDBLockingAssertionsEnabled == 1)
          {
            if (v19)
            {
              v20 = CPRecordStoreGetContext();
              if (v20)
              {
                os_unfair_lock_assert_owner(v20 + 20);
              }
            }
          }

          v21 = CPRecordStoreCopyValueForProperty();
          if (v21)
          {
            v22 = [objc_alloc(MEMORY[0x1E695DFE8]) initWithName:v21];
            v23 = CalCopyTimeZone();
            if (v22 && ([v22 isEquivalentTo:v23] & 1) != 0)
            {
LABEL_73:
              if (CDBLockingAssertionsEnabled == 1)
              {
                if (*v16)
                {
                  if (*(*v16 + 104))
                  {
                    v38 = CPRecordStoreGetContext();
                    if (v38)
                    {
                      os_unfair_lock_assert_owner(v38 + 20);
                    }
                  }
                }
              }

              CPSqliteConnectionCommit();

              goto LABEL_79;
            }
          }

          else
          {
            v23 = CalCopyTimeZone();
            v22 = 0;
          }

          if (CDBLockingAssertionsEnabled == 1)
          {
            if (*v16)
            {
              if (*(*v16 + 104))
              {
                v24 = CPRecordStoreGetContext();
                if (v24)
                {
                  os_unfair_lock_assert_owner(v24 + 20);
                }
              }
            }
          }

          v25 = CPSqliteConnectionStatementForSQL();
          if (v25)
          {
            v26 = v25;
            Mutable = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x1E695E9E8]);
            v28 = objc_alloc_init(CalScheduledTaskCache_TimeZoneFetchContext);
            [(CalScheduledTaskCache_TimeZoneFetchContext *)v28 setPreviousTimeZone:v22];
            [(CalScheduledTaskCache_TimeZoneFetchContext *)v28 setNextTimeZone:v23];
            [(CalScheduledTaskCache_TimeZoneFetchContext *)v28 setDict:Mutable];
            if (CDBLockingAssertionsEnabled == 1)
            {
              if (*v26)
              {
                v29 = **v26;
                if (v29)
                {
                  if (*(v29 + 104))
                  {
                    v30 = CPRecordStoreGetContext();
                    if (v30)
                    {
                      os_unfair_lock_assert_owner(v30 + 20);
                    }
                  }
                }
              }
            }

            CPSqliteStatementSendResults();
            if (CDBLockingAssertionsEnabled == 1)
            {
              if (*v26)
              {
                v31 = **v26;
                if (v31)
                {
                  if (*(v31 + 104))
                  {
                    v32 = CPRecordStoreGetContext();
                    if (v32)
                    {
                      os_unfair_lock_assert_owner(v32 + 20);
                    }
                  }
                }
              }
            }

            CPSqliteStatementReset();
            if (CDBLockingAssertionsEnabled == 1)
            {
              if (*v16)
              {
                if (*(*v16 + 104))
                {
                  v33 = CPRecordStoreGetContext();
                  if (v33)
                  {
                    os_unfair_lock_assert_owner(v33 + 20);
                  }
                }
              }
            }

            v34 = CPSqliteConnectionStatementForSQL();
            CFDictionaryApplyFunction(Mutable, _UpdateDay, v34);
            CFRelease(Mutable);
          }

          CFAbsoluteTimeGetCurrent();
          v35 = CalCFTimeZoneCopyCalTimeZone();
          if (CDBLockingAssertionsEnabled == 1)
          {
            if (*v16)
            {
              if (*(*v16 + 104))
              {
                v36 = CPRecordStoreGetContext();
                if (v36)
                {
                  os_unfair_lock_assert_owner(v36 + 20);
                }
              }
            }
          }

          CPSqliteConnectionSetValueForProperty();
          CFRelease(v35);
          v37 = *(a1 + 32);
          if (v37)
          {
            CFRelease(v37);
          }

          *(a1 + 32) = CFRetain(v23);
          goto LABEL_73;
        }

        CFLog();
      }
    }

LABEL_79:
    v10 = 1;
    goto LABEL_80;
  }

  return 0;
}

uint64_t CalScheduledTaskCacheRebuildIfNeeded(uint64_t a1)
{
  if (*(a1 + 16) == 1 && CalDatabaseLockForThread(*(a1 + 24)))
  {
    RecordStore = _CalDatabaseGetRecordStore(*(a1 + 24));
    if (CDBLockingAssertionsEnabled == 1 && RecordStore != 0)
    {
      Context = CPRecordStoreGetContext();
      if (Context)
      {
        os_unfair_lock_assert_owner(Context + 20);
      }
    }

    Database = CPRecordStoreGetDatabase();
    v6 = Database;
    if (!Database)
    {
      goto LABEL_47;
    }

    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*(Database + 104))
      {
        v7 = CPRecordStoreGetContext();
        if (v7)
        {
          os_unfair_lock_assert_owner(v7 + 20);
        }
      }
    }

    v8 = CPSqliteDatabaseConnectionForWritingWithSqlite3OpenFlags();
    v6 = v8;
    if (!v8)
    {
      goto LABEL_47;
    }

    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*v8)
      {
        if (*(*v8 + 104))
        {
          v9 = CPRecordStoreGetContext();
          if (v9)
          {
            os_unfair_lock_assert_owner(v9 + 20);
          }
        }
      }
    }

    if (CPSqliteConnectionIntegerForPropertyWithDefaultValue() != 1)
    {
      if (CDBLockingAssertionsEnabled == 1)
      {
        if (*v6)
        {
          if (*(*v6 + 104))
          {
            v10 = CPRecordStoreGetContext();
            if (v10)
            {
              os_unfair_lock_assert_owner(v10 + 20);
            }
          }
        }
      }

      v11 = CPSqliteConnectionBeginTransactionType();
      if (!v11 || v11 == 101)
      {
        _RebuildCache(a1, v6);
        if (CDBLockingAssertionsEnabled == 1)
        {
          if (*v6)
          {
            if (*(*v6 + 104))
            {
              v12 = CPRecordStoreGetContext();
              if (v12)
              {
                os_unfair_lock_assert_owner(v12 + 20);
              }
            }
          }
        }

        CPSqliteConnectionSetIntegerForProperty();
        v13 = *(a1 + 32);
        CFAbsoluteTimeGetCurrent();
        v14 = CalCFTimeZoneCopyCalTimeZone();
        if (CDBLockingAssertionsEnabled == 1)
        {
          if (*v6)
          {
            if (*(*v6 + 104))
            {
              v15 = CPRecordStoreGetContext();
              if (v15)
              {
                os_unfair_lock_assert_owner(v15 + 20);
              }
            }
          }
        }

        CPSqliteConnectionSetValueForProperty();
        CFRelease(v14);
        if (CDBLockingAssertionsEnabled == 1)
        {
          if (*v6)
          {
            if (*(*v6 + 104))
            {
              v16 = CPRecordStoreGetContext();
              if (v16)
              {
                os_unfair_lock_assert_owner(v16 + 20);
              }
            }
          }
        }

        CPSqliteConnectionCommit();
        v6 = 1;
        goto LABEL_47;
      }

      CFLog();
    }

    v6 = 0;
LABEL_47:
    CalDatabaseUnlockForThread(*(a1 + 24));
    return v6;
  }

  return 0;
}

void _RebuildCache(uint64_t a1, uint64_t a2)
{
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (*a2)
    {
      if (*(*a2 + 104))
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  CPSqliteConnectionPerformSQL();
  v5 = _CalDatabaseCopyScheduledTasks(*(a1 + 24));
  if (v5)
  {
    v6 = v5;
    Count = CFArrayGetCount(v5);
    v11 = 0;
    if (Count >= 1)
    {
      v8 = Count;
      for (i = 0; i != v8; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v6, i);
        _CalScheduledTaskCacheInsertTaskIfScheduled(a1, a2, &v11, ValueAtIndex);
      }
    }

    CFRelease(v6);
  }
}

void CalScheduledTaskCacheTrimAndExtendAndUpdateOverdue(uint64_t a1)
{
  if (*(a1 + 16) != 1 || !CalDatabaseLockForThread(*(a1 + 24)))
  {
    return;
  }

  NSLog(&cfstr_25534103Beginn.isa);
  RecordStore = _CalDatabaseGetRecordStore(*(a1 + 24));
  if (CDBLockingAssertionsEnabled == 1 && RecordStore != 0)
  {
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      os_unfair_lock_assert_owner(Context + 20);
    }
  }

  Database = CPRecordStoreGetDatabase();
  if (Database)
  {
    v6 = Database;
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*(Database + 104))
      {
        v7 = CPRecordStoreGetContext();
        if (v7)
        {
          os_unfair_lock_assert_owner(v7 + 20);
        }
      }
    }

    v8 = CPSqliteDatabaseConnectionForWritingWithSqlite3OpenFlags();
    if (v8)
    {
      v9 = v8;
      if (CDBLockingAssertionsEnabled == 1)
      {
        if (*v8)
        {
          if (*(*v8 + 104))
          {
            v10 = CPRecordStoreGetContext();
            if (v10)
            {
              os_unfair_lock_assert_owner(v10 + 20);
            }
          }
        }
      }

      v11 = CPSqliteConnectionBeginTransactionType();
      if (!v11 || v11 == 101)
      {
        v12 = MEMORY[0x1E69930C8];
        v13 = [MEMORY[0x1E695DF00] date];
        v14 = [MEMORY[0x1E695DFE8] systemTimeZone];
        v15 = [v12 calendarDateWithDate:v13 timeZone:v14];
        v16 = [v15 calendarDateForDay];

        if (CDBLockingAssertionsEnabled == 1)
        {
          if (*v9)
          {
            if (*(*v9 + 13))
            {
              v17 = CPRecordStoreGetContext();
              if (v17)
              {
                os_unfair_lock_assert_owner(v17 + 20);
              }
            }
          }
        }

        v18 = CPSqliteConnectionCopyValueForProperty();
        NSLog(&cfstr_25534103Schedu.isa, v18);
        if (v18)
        {
          IntValue = CFStringGetIntValue(v18);
          v20 = MEMORY[0x1E69930C8];
          v21 = [MEMORY[0x1E695DFE8] systemTimeZone];
          v22 = [v20 calendarDateWithAbsoluteTime:v21 timeZone:IntValue];

          v23 = [v22 compare:v16];
          CFRelease(v18);

          NSLog(&cfstr_25534103TodayI.isa, v16, v23);
          if (v23 != 1)
          {
            if (v23 == -1)
            {
              v24 = objc_opt_new();
              [v24 setYear:-1];
              v25 = [v16 calendarDateByAddingComponents:v24];
              [v16 absoluteTime];
              v27 = v26;
              [v25 absoluteTime];
              if (*v9)
              {
                v29 = _CalScheduledTaskCacheTrimAndExtendCore(a1, v9, v28, v27, IntValue);
                updated = _CalScheduledTaskCacheUpdateOverdueCore(v9, v27);

                if ((v29 & 1) != 0 || updated)
                {
                  goto LABEL_40;
                }
              }

              else
              {
              }
            }

            v32 = 0;
LABEL_43:
            if (CDBLockingAssertionsEnabled == 1)
            {
              if (*v9)
              {
                if (*(*v9 + 13))
                {
                  v33 = CPRecordStoreGetContext();
                  if (v33)
                  {
                    os_unfair_lock_assert_owner(v33 + 20);
                  }
                }
              }
            }

            CPSqliteConnectionCommit();

            CalDatabaseUnlockForThread(*(a1 + 24));
            if (v32)
            {
              DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

              CFNotificationCenterPostNotification(DarwinNotifyCenter, @"kCalScheduledTaskCacheChangedNotification", v6, 0, 1u);
            }

            return;
          }
        }

        else
        {
          NSLog(&cfstr_25534103TodayI.isa, v16, 1);
        }

        _RebuildCache(a1, v9);
LABEL_40:
        _CalScheduledTaskCacheUpdateLastSavedDate(a1, v9);
        v32 = 1;
        goto LABEL_43;
      }

      CFLog();
    }
  }

  v31 = *(a1 + 24);

  CalDatabaseUnlockForThread(v31);
}

uint64_t _CalScheduledTaskCacheTrimAndExtendCore(uint64_t a1, uint64_t a2, double a3, double a4, double a5)
{
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (*a2)
    {
      if (*(*a2 + 104))
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  if (CPSqliteConnectionGetActiveTransactionType() == 0xFFFF)
  {
    NSLog(&cfstr_EventkitstcErr.isa);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    if (*a2)
    {
      if (*(*a2 + 104))
      {
        v11 = CPRecordStoreGetContext();
        if (v11)
        {
          os_unfair_lock_assert_owner(v11 + 20);
        }
      }
    }
  }

  v12 = CPSqliteConnectionStatementForSQL();
  if (v12)
  {
    v13 = v12;
    sqlite3_bind_double(*(v12 + 8), 1, a3);
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*v13)
      {
        v14 = **v13;
        if (v14)
        {
          if (*(v14 + 104))
          {
            v15 = CPRecordStoreGetContext();
            if (v15)
            {
              os_unfair_lock_assert_owner(v15 + 20);
            }
          }
        }
      }
    }

    CPSqliteStatementPerform();
    v16 = sqlite3_changes((*v13)[1]) > 0;
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*v13)
      {
        v17 = **v13;
        if (v17)
        {
          if (*(v17 + 104))
          {
            v18 = CPRecordStoreGetContext();
            if (v18)
            {
              os_unfair_lock_assert_owner(v18 + 20);
            }
          }
        }
      }
    }

    CPSqliteStatementReset();
  }

  else
  {
    v16 = 0;
  }

  v19 = [MEMORY[0x1E69930C8] calendarDateWithAbsoluteTime:*(a1 + 32) timeZone:a4];
  v20 = [MEMORY[0x1E69930C8] calendarDateWithAbsoluteTime:*(a1 + 32) timeZone:a5];
  v21 = objc_opt_new();
  [v21 setYear:2];
  v22 = [v19 calendarDateByAddingComponents:v21];
  v41 = v20;
  v23 = [v20 calendarDateByAddingComponents:v21];
  v40 = v22;
  [v22 absoluteTime];
  v25 = v24;
  v39 = v23;
  [v23 absoluteTime];
  v26 = [MEMORY[0x1E69930C8] calendarDateWithAbsoluteTime:*(a1 + 32) timeZone:?];
  v27 = [MEMORY[0x1E69930C8] calendarDateWithAbsoluteTime:*(a1 + 32) timeZone:v25];
  v28 = [v26 calendarDateInTimeZone:0];
  v29 = [v27 calendarDateInTimeZone:0];
  [v28 absoluteTime];
  [v29 absoluteTime];
  v30 = _CalDatabaseCopyScheduledTasksInDateRange(*(a1 + 24));
  if (v30)
  {
    v31 = v30;
    v37 = v19;
    v38 = v16;
    Count = CFArrayGetCount(v30);
    if (Count >= 1)
    {
      v33 = Count;
      for (i = 0; i != v33; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v31, i);
        v42 = 0;
        _CalScheduledTaskCacheInsertTaskIfScheduled(a1, a2, &v42, ValueAtIndex);
      }
    }

    CFRelease(v31);
    v16 = v38;
    v19 = v37;
  }

  if (v16)
  {
    _CalScheduledTaskCacheUpdateLastSavedDate(a1, a2);
  }

  return v16;
}

BOOL _CalScheduledTaskCacheUpdateOverdueCore(sqlite3 **a1, double a2)
{
  NSLog(&cfstr_25534103Updati.isa, *&a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (*a1)
    {
      if (*(*a1 + 13))
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  v5 = CPSqliteConnectionStatementForSQL();
  sqlite3_bind_double(v5[1], 1, a2);
  sqlite3_bind_double(v5[1], 2, a2);
  sqlite3_bind_double(v5[1], 3, a2);
  if (v5)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (*v5)
      {
        v6 = **v5;
        if (v6)
        {
          if (*(v6 + 104))
          {
            v7 = CPRecordStoreGetContext();
            if (v7)
            {
              os_unfair_lock_assert_owner(v7 + 20);
            }
          }
        }
      }
    }
  }

  v8 = CPSqliteStatementPerform();
  if (v8 != 101 && v8)
  {
    return 0;
  }

  v9 = sqlite3_changes(a1[1]) > 0;
  if (v5)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (*v5)
      {
        v10 = **v5;
        if (v10)
        {
          if (*(v10 + 104))
          {
            v11 = CPRecordStoreGetContext();
            if (v11)
            {
              os_unfair_lock_assert_owner(v11 + 20);
            }
          }
        }
      }
    }
  }

  CPSqliteStatementReset();
  return v9;
}

void _CalScheduledTaskCacheUpdateLastSavedDate(uint64_t a1, uint64_t a2)
{
  CFAbsoluteTimeGetCurrent();
  v4 = *(a1 + 32);
  CalAbsoluteTimeGetGregorianDateWithFallbackToDefaultTimeZone();
  CalGregorianDateGetGregorianDateForDay();
  v5 = *(a1 + 32);
  CalGregorianDateGetAbsoluteTimeWithFallbackToDefaultTimeZone();
  v7 = CFStringCreateWithFormat(0, 0, @"%d", v6);
  NSLog(&cfstr_25534103Updati_0.isa, v7);
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (*a2)
    {
      if (*(*a2 + 104))
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  CPSqliteConnectionSetValueForProperty();

  CFRelease(v7);
}