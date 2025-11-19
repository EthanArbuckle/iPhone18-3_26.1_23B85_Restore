uint64_t CalErrorGetErrorCode(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
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
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return Property;
}

CFTypeRef CalErrorCopyUserInfo(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
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
    v5 = CFRetain(Property);
  }

  else
  {
    v5 = 0;
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v5;
}

void CalErrorSetUserInfo(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalErrorSetUserInfo(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t _CalErrorSetUserInfo(uint64_t a1)
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

  return CPRecordSetProperty();
}

void CalErrorSetAccountErrorCode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalErrorSetErrorType(a1);
  _CalErrorSetErrorCode(a1);
  CalErrorEncodeUserInfo(a3);
  _CalErrorSetUserInfo(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t _CalErrorSetErrorType(uint64_t a1)
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

  return CPRecordSetProperty();
}

uint64_t _CalErrorSetErrorCode(uint64_t a1)
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

  return CPRecordSetProperty();
}

CFTypeRef CalErrorEncodeUserInfo(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v7 = 0;
    v1 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:a1 requiringSecureCoding:1 error:&v7];
    v2 = v7;
    if (v1)
    {
      v3 = CFAutorelease(v1);
    }

    else
    {
      v4 = CDBLogHandle;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v9 = v2;
        _os_log_impl(&dword_1DEBB1000, v4, OS_LOG_TYPE_ERROR, "Error encoding user info: %@", buf, 0xCu);
      }

      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  v5 = *MEMORY[0x1E69E9840];
  return v3;
}

void CalErrorSetCalendarErrorCode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalErrorSetErrorType(a1);
  _CalErrorSetErrorCode(a1);
  CalErrorEncodeUserInfo(a3);
  _CalErrorSetUserInfo(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

void CalErrorSetCalendarItemErrorCode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalErrorSetErrorType(a1);
  _CalErrorSetErrorCode(a1);
  CalErrorEncodeUserInfo(a3);
  _CalErrorSetUserInfo(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

CFTypeRef CalErrorDecodeUserInfo(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = MEMORY[0x1E695DFD8];
    v3 = objc_opt_class();
    v4 = objc_opt_class();
    v5 = objc_opt_class();
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v2 setWithObjects:{v3, v4, v5, v6, v7, v8, objc_opt_class(), 0}];
    v16 = 0;
    v10 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v9 fromData:a1 error:&v16];
    v11 = v16;
    if (v10)
    {
      v12 = CFAutorelease(v10);
    }

    else
    {
      v13 = CDBLogHandle;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v18 = v11;
        _os_log_impl(&dword_1DEBB1000, v13, OS_LOG_TYPE_ERROR, "Error decoding user info: %@", buf, 0xCu);
      }

      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t eventWithErrorAndSouceHandler(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v4 = a2;
  v5 = sqlite3_column_int(v3, 0);
  v6 = [MEMORY[0x1E696AD98] numberWithInt:{sqlite3_column_int(*(a1 + 8), 1)}];
  v7 = [MEMORY[0x1E696AD98] numberWithInt:v5];
  [v4 setObject:v7 forKeyedSubscript:v6];

  return 0;
}

os_unfair_lock_s *CalDatabaseCreateWithAuxDatabaseRefAndAccountInfo(os_unfair_lock_s *a1, const void *a2, void *a3, int a4)
{
  v37 = *MEMORY[0x1E69E9840];
  v7 = a3;
  UID = CalAuxDatabaseGetUID();
  v9 = CalAuxDatabaseCopyPath(a2);
  if (v9)
  {
    v10 = [MEMORY[0x1E695DFF8] fileURLWithPath:v9];
    v11 = objc_alloc_init(CalDatabaseInitializationConfiguration);
    [(CalDatabaseInitializationConfiguration *)v11 setOptions:a4 | 0x1A00u];
    [(CalDatabaseInitializationConfiguration *)v11 setDirectoryURL:v10];
    v12 = CalDatabaseGetCalendarDataContainerProvider(a1);
    [(CalDatabaseInitializationConfiguration *)v11 setDataContainerProvider:v12];

    v13 = CalDatabaseGetPreferences(a1);
    [(CalDatabaseInitializationConfiguration *)v11 setPreferences:v13];

    v14 = CalDatabaseCreateWithConfiguration(v11);
    if (v14)
    {
      v15 = v14;
      CalDatabaseSetAuxilliaryDatabaseID(v14, UID);

      v16 = 0;
      v17 = 0;
LABEL_27:
      CFRelease(v9);
      goto LABEL_28;
    }

    v19 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109378;
      *v36 = UID;
      *&v36[4] = 2112;
      *&v36[6] = v9;
      _os_log_impl(&dword_1DEBB1000, v19, OS_LOG_TYPE_DEFAULT, "Failed to open aux db [%d] with cached path %@", buf, 0x12u);
    }
  }

  else
  {
    v18 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *v36 = UID;
      _os_log_impl(&dword_1DEBB1000, v18, OS_LOG_TYPE_ERROR, "Unexpected NULL path for auxDatabase [%d]", buf, 8u);
    }
  }

  v20 = CDBLogHandle;
  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    *v36 = UID;
    *&v36[4] = 2114;
    *&v36[6] = 0;
    _os_log_impl(&dword_1DEBB1000, v20, OS_LOG_TYPE_DEFAULT, "Attempting to derive path for auxDatabase [%d], persona: %{public}@", buf, 0x12u);
  }

  if (!v7)
  {
    v26 = CalAuxDatabaseCopyPersonaID(a2);
    if (v26)
    {
      v16 = v26;
      v27 = CalDatabaseGetCalendarDataContainerProvider(a1);
      v28 = [v27 containerInfoForPersonaIdentifier:v16];
      if (v28)
      {
        v7 = v28;

        goto LABEL_13;
      }

      v32 = CDBLogHandle;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        *v36 = v16;
        _os_log_impl(&dword_1DEBB1000, v32, OS_LOG_TYPE_ERROR, "Couldn't look up persona ID %{public}@", buf, 0xCu);
      }

      CalRemoveAuxDatabase(a2);
      CalDatabaseSave(a1);

      v17 = 0;
    }

    else
    {
      v31 = CDBLogHandle;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        *v36 = UID;
        _os_log_impl(&dword_1DEBB1000, v31, OS_LOG_TYPE_ERROR, "AuxDatabase entry [%d] missing persona ID", buf, 8u);
      }

      v17 = 0;
      v16 = 0;
    }

    v15 = 0;
    v7 = 0;
    if (v9)
    {
      goto LABEL_27;
    }

    goto LABEL_28;
  }

  v16 = 0;
LABEL_13:
  if ([v7 usesDataSeparatedContainer])
  {
    v34 = 0;
    v15 = CalDatabaseDeriveAuxDatabaseForContainerInfo(a1, a4 | 0x1201u, v7, &v34);
    v21 = v34;
    v22 = v21;
    if (v15)
    {
      v17 = v21;
    }

    else
    {
      v33 = v21;
      v15 = CalDatabaseDeriveAuxDatabaseForContainerInfo(a1, a4 | 0x201u, v7, &v33);
      v17 = v33;

      if (!v15)
      {
        goto LABEL_26;
      }

      CalDatabaseSetupNewlyCreatedAuxDatabase(a1, v15);
    }

    CalDatabaseSetAuxilliaryDatabaseID(v15, UID);
    CalAuxDatabaseSetPath(a2);
    CalDatabaseSave(a1);
LABEL_26:
    if (!v9)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v23 = CDBLogHandle;
  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
  {
    v24 = v23;
    v25 = [v7 accountID];
    *buf = 138543618;
    *v36 = v25;
    *&v36[8] = 2114;
    *&v36[10] = v16;
    _os_log_impl(&dword_1DEBB1000, v24, OS_LOG_TYPE_ERROR, "Account [%{public}@] with persona [%{public}@] is not data-separated, but we have an aux db entry in the main db. Removing the aux entry", buf, 0x16u);
  }

  CalRemoveAuxDatabase(a2);
  CalDatabaseSave(a1);
  v17 = 0;
  v15 = 0;
  if (v9)
  {
    goto LABEL_27;
  }

LABEL_28:
  if (v16)
  {
    CFRelease(v16);
  }

  v29 = *MEMORY[0x1E69E9840];
  return v15;
}

os_unfair_lock_s *CalDatabaseCreateWithOptionsForAccountID(uint64_t a1, __CFString *a2)
{
  if (a1)
  {
    v4 = objc_alloc_init(CalDatabaseInitializationConfiguration);
    [(CalDatabaseInitializationConfiguration *)v4 setOptions:a1];
  }

  else
  {
    v4 = 0;
  }

  v5 = CalDatabaseCreateWithConfigurationForAccountOrAccountID(v4, 0, a2);

  return v5;
}

os_unfair_lock_s *CalDatabaseCreateWithOptionsMainDatabaseDirectoryAndContainerProviderForAccountID(uint64_t a1, __CFString *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = v7;
  if (a1 || a3 || v7)
  {
    v10 = a3;
    v9 = [[CalDatabaseInitializationConfiguration alloc] initWithDirectoryURL:v10];

    [(CalDatabaseInitializationConfiguration *)v9 setOptions:a1];
    if (v8)
    {
      [(CalDatabaseInitializationConfiguration *)v9 setDataContainerProvider:v8];
    }
  }

  else
  {
    v9 = 0;
  }

  v11 = CalDatabaseCreateWithConfigurationForAccountOrAccountID(v9, 0, a2);

  return v11;
}

os_unfair_lock_s *CalDatabaseCreateWithConfigurationForPersonaID(void *a1, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = CalDatabaseCreateWithConfiguration(v3);
  v5 = CalDatabaseCopyAuxDatabaseForPersonaID(v4);
  if (!v5)
  {
    v8 = CalDatabaseGetCalendarDataContainerProvider(v4);
    v9 = [v8 containerInfoForPersonaIdentifier:a2];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 usesDataSeparatedContainer];
      v12 = CDBLogHandle;
      v13 = os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEFAULT);
      if (v11)
      {
        if (v13)
        {
          *buf = 138543362;
          v23 = a2;
          _os_log_impl(&dword_1DEBB1000, v12, OS_LOG_TYPE_DEFAULT, "Attempting to create aux DB for persona %{public}@", buf, 0xCu);
        }

        v21 = 0;
        v7 = CalDatabaseDeriveAuxDatabaseForContainerInfo(v4, [v3 options] | 1, v10, &v21);
        v14 = v21;
        if (v7)
        {
          AuxDatabase = CalDatabaseCreateAuxDatabase(v4);
          v16 = [v10 personaID];
          CalAuxDatabaseSetPersonaID(AuxDatabase);

          CalAuxDatabaseSetPath(AuxDatabase);
          CalDatabaseSave(v4);
          UID = CalAuxDatabaseGetUID();
          CalDatabaseSetAuxilliaryDatabaseID(v7, UID);
          CalDatabaseSetupNewlyCreatedAuxDatabase(v4, v7);
          CFRelease(AuxDatabase);
        }

        CFRelease(v4);

        goto LABEL_16;
      }

      if (v13)
      {
        *buf = 138543362;
        v23 = a2;
        v18 = "Persona %{public}@ is not data separated. Using main database.";
        goto LABEL_14;
      }
    }

    else
    {
      v12 = CDBLogHandle;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v23 = a2;
        v18 = "Couldn't get container info for persona %{public}@. Using main database for this persona.";
LABEL_14:
        _os_log_impl(&dword_1DEBB1000, v12, OS_LOG_TYPE_DEFAULT, v18, buf, 0xCu);
      }
    }

    v7 = v4;
LABEL_16:

    goto LABEL_17;
  }

  v6 = v5;
  v7 = CalDatabaseCreateWithAuxDatabaseRefAndAccountInfo(v4, v5, 0, [v3 options]);
  CFRelease(v6);
  CFRelease(v4);
LABEL_17:

  v19 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t CalDatabaseDeriveAuxDatabaseForContainerInfo(uint64_t a1, int a2, void *a3, void *a4)
{
  v27 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = [v7 containerURL];
  if (!v8)
  {
    v11 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      v12 = v11;
      v13 = [v7 accountID];
      v14 = [v7 personaID];
      v21 = 138543618;
      v22 = v13;
      v23 = 2114;
      v24 = v14;
      v15 = "Unexpected nil auxURL for account %{public}@ with persona %{public}@.  Giving up.";
      v16 = v12;
      v17 = 22;
LABEL_9:
      _os_log_impl(&dword_1DEBB1000, v16, OS_LOG_TYPE_ERROR, v15, &v21, v17);
    }

LABEL_10:
    v10 = 0;
    goto LABEL_11;
  }

  v9 = CalDatabaseCreateWithOptionsAndDatabaseDirectoryURL(a2 | 0x800u, v8);
  if (!v9)
  {
    v18 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      v12 = v18;
      v13 = [v7 accountID];
      v14 = [v7 personaID];
      v21 = 138412802;
      v22 = v8;
      v23 = 2114;
      v24 = v13;
      v25 = 2114;
      v26 = v14;
      v15 = "Failed to create aux db with derived path [%@] for account: %{public}@ persona=%{public}@.  Giving up.";
      v16 = v12;
      v17 = 32;
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  v10 = v9;
  objc_storeStrong((v9 + 288), *(a1 + 288));
  if (a4)
  {
    *a4 = [v8 path];
  }

LABEL_11:

  v19 = *MEMORY[0x1E69E9840];
  return v10;
}

void CalDatabaseSetupNewlyCreatedAuxDatabase(os_unfair_lock_s *a1, os_unfair_lock_s *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  CalDatabaseMultiLock(a1, a2);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = _CalDatabaseCopyRegisteredClientIdentifiersForPersistentChangeTrackingWithStoreUID(a1, 0);
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        _CalDatabaseRegisterClientForPersistentChangeTracking(a2, *(*(&v10 + 1) + 8 * v8++), 0);
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  CalDatabaseMultiUnlock(a1, a2);
  v9 = *MEMORY[0x1E69E9840];
}

os_unfair_lock_s *CalDatabaseCreateWithConfigurationForAccountOrAccountID(void *a1, void *a2, __CFString *a3)
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a1;
  v7 = [v6 options];
  v8 = CalDatabaseCreateWithConfiguration(v6);

  if (!v8)
  {
    v11 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1DEBB1000, v11, OS_LOG_TYPE_ERROR, "Failed to open main db.", buf, 2u);
    }

    v8 = 0;
    v9 = 0;
    goto LABEL_10;
  }

  v9 = CalDatabaseGetCalendarDataContainerProvider(v8);
  if (!a3 && ([v5 identifier], a3 = objc_claimAutoreleasedReturnValue(), a3, !a3) || !_os_feature_enabled_impl())
  {
LABEL_10:
    v12 = 0;
    goto LABEL_11;
  }

  v10 = CalDatabaseCopyStoreWithExternalID(v8, a3);
  if (v10)
  {
    CFRelease(v10);
    goto LABEL_10;
  }

  v15 = CalDatabaseCopyAuxDatabaseAccountForAccountID(v8);
  if (v15)
  {
    AuxDatabaseAccount = v15;
    AuxDatabase = CalAuxDatabaseAccountCopyAuxDatabase(v15);
    v18 = CalDatabaseCreateWithAuxDatabaseRefAndAccountInfo(v8, AuxDatabase, 0, v7);
    v19 = 0;
    v12 = 0;
LABEL_14:
    CFRelease(AuxDatabaseAccount);
LABEL_15:
    if (AuxDatabase)
    {
      CFRelease(AuxDatabase);
    }

    if (v18 != v19 && v19)
    {
      CFRelease(v19);
    }

    goto LABEL_34;
  }

  v20 = CDBLogHandle;
  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v36 = a3;
    _os_log_impl(&dword_1DEBB1000, v20, OS_LOG_TYPE_DEFAULT, "No store or aux db entry for account: %@.", buf, 0xCu);
  }

  if (v5)
  {
    [v9 containerInfoForAccount:v5];
  }

  else
  {
    [v9 containerInfoForAccountIdentifier:a3];
  }
  v21 = ;
  if ([v21 usesDataSeparatedContainer])
  {
    v22 = [v21 personaID];
    AuxDatabase = CalDatabaseCopyAuxDatabaseForPersonaID(v8);

    v23 = CDBLogHandle;
    v24 = os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEFAULT);
    if (AuxDatabase)
    {
      if (v24)
      {
        v25 = v23;
        v26 = [v21 personaID];
        *buf = 138543618;
        v36 = v26;
        v37 = 2114;
        v38 = a3;
        _os_log_impl(&dword_1DEBB1000, v25, OS_LOG_TYPE_DEFAULT, "Found existing aux database with persona [%{public}@] for account [%{public}@]. Attaching account to existing auxiliary database.", buf, 0x16u);
      }

      AuxDatabaseAccount = CalDatabaseCreateAuxDatabaseAccount(v8);
      CalAuxDatabaseAccountSetAccountID(AuxDatabaseAccount);
      CalAuxDatabaseAddAccount(AuxDatabase, AuxDatabaseAccount);
      CalDatabaseSave(v8);
      v18 = CalDatabaseCreateWithAuxDatabaseRefAndAccountInfo(v8, AuxDatabase, v21, v7);
      v12 = 0;
      v19 = 0;
LABEL_41:

      if (!AuxDatabaseAccount)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    if (v24)
    {
      v30 = v23;
      v31 = [v21 personaID];
      *buf = 138543618;
      v36 = a3;
      v37 = 2114;
      v38 = v31;
      _os_log_impl(&dword_1DEBB1000, v30, OS_LOG_TYPE_DEFAULT, "Account [%{public}@, persona=%{public}@] is data-separated. Attempting to create aux DB", buf, 0x16u);
    }

    v34 = 0;
    v19 = CalDatabaseDeriveAuxDatabaseForContainerInfo(v8, v7 | 1u, v21, &v34);
    v12 = v34;
    if (v19)
    {
      AuxDatabase = CalDatabaseCreateAuxDatabase(v8);
      v32 = [v21 personaID];
      CalAuxDatabaseSetPersonaID(AuxDatabase);

      CalAuxDatabaseSetPath(AuxDatabase);
      AuxDatabaseAccount = CalDatabaseCreateAuxDatabaseAccount(v8);
      CalAuxDatabaseAccountSetAccountID(AuxDatabaseAccount);
      CalAuxDatabaseAddAccount(AuxDatabase, AuxDatabaseAccount);
      CalDatabaseSave(v8);
      UID = CalAuxDatabaseGetUID();
      CalDatabaseSetAuxilliaryDatabaseID(v19, UID);
      CalDatabaseSetupNewlyCreatedAuxDatabase(v8, v19);
      v18 = v19;
      goto LABEL_41;
    }

    v18 = 0;
  }

  else
  {
    v27 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v28 = v27;
      v29 = [v21 personaID];
      *buf = 138543618;
      v36 = a3;
      v37 = 2114;
      v38 = v29;
      _os_log_impl(&dword_1DEBB1000, v28, OS_LOG_TYPE_DEFAULT, "Account [%{public}@, persona=%{public}@] is not data-separated. Using main DB.", buf, 0x16u);
    }

    v12 = 0;
    v18 = v8;
  }

LABEL_34:
  if (v18 != v8)
  {
    CFRelease(v8);
  }

  v8 = v18;
LABEL_11:

  v13 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t CalDatabaseCopyDirectoryPathForAccountID(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  if (!_os_feature_enabled_impl())
  {
    goto LABEL_8;
  }

  if (!v8)
  {
    v8 = [MEMORY[0x1E6993090] sharedInstance];
  }

  v9 = [v8 accountUsesDataSeparatedContainer:a1];
  if (a4)
  {
    *a4 = v9;
  }

  if (v9)
  {
    v10 = [v8 containerForAccountIdentifier:a1];
    v11 = [v10 path];
  }

  else
  {
LABEL_8:
    if (v7)
    {
      v12 = [v7 path];
    }

    else
    {
      v12 = CalDatabaseCopyDirectoryPath();
    }

    v11 = v12;
  }

  return v11;
}

uint64_t CalDatabaseCopyDirectoryPathForAuxDatabaseRef(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  if (_os_feature_enabled_impl())
  {
    if (!v8)
    {
      v8 = [MEMORY[0x1E6993090] sharedInstance];
    }

    v9 = CalAuxDatabaseCopyPersonaID(a1);
    v10 = [v8 containerInfoForPersonaIdentifier:v9];
    v11 = v10;
    if (a4)
    {
      *a4 = [v10 usesDataSeparatedContainer];
    }

    if ([v11 usesDataSeparatedContainer])
    {
      v12 = [v11 containerURL];
      v13 = [v12 path];

      goto LABEL_13;
    }
  }

  if (v7)
  {
    v14 = [v7 path];
  }

  else
  {
    v14 = CalDatabaseCopyDirectoryPath();
  }

  v13 = v14;
LABEL_13:

  return v13;
}

void CalDatabaseEnumerateDatabases(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(CalDatabaseInitializationConfiguration);
  [(CalDatabaseInitializationConfiguration *)v4 setOptions:a1];
  CalDatabaseEnumerateDatabasesWithConfiguration(v4, v3);
}

void CalDatabaseEnumerateDatabasesWithConfiguration(void *a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = CalDatabaseCreateWithConfiguration(v3);
  if (v5)
  {
    v6 = v5;
    v20 = 0;
    v4[2](v4, v5, 0, &v20);
    if ((v20 & 1) == 0)
    {
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v7 = CalDatabaseCopyAllAuxDatabases(v6);
      v8 = [v7 countByEnumeratingWithState:&v16 objects:v21 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v17;
LABEL_5:
        v11 = 0;
        while (1)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v16 + 1) + 8 * v11);
          v13 = CalDatabaseCreateWithAuxDatabaseRefAndAccountInfo(v6, v12, 0, [v3 options] | 0x1000);
          if (v13)
          {
            v14 = v13;
            (v4)[2](v4, v13, v12, &v20);
            CFRelease(v14);
            if (v20)
            {
              break;
            }
          }

          if (v9 == ++v11)
          {
            v9 = [v7 countByEnumeratingWithState:&v16 objects:v21 count:16];
            if (v9)
            {
              goto LABEL_5;
            }

            break;
          }
        }
      }
    }

    CFRelease(v6);
  }

  v15 = *MEMORY[0x1E69E9840];
}

uint64_t _applicationOccurrencesCancellationCallback(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && *(v1 + 184) == 1 && (WeakRetained = objc_loadWeakRetained(v1 + 5), v4 = [WeakRetained calSearchShouldStopSearching:v2], WeakRetained, v4))
  {
    [v2 stopSearching];
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void *_EKCreateMSUIDStringForEvent(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    _CalEventGetStartDate(a1);
    v5 = v4;
    if (a2)
    {
      if (a2 == a1)
      {
        v6 = 0;
      }

      else
      {
        v6 = _CalEventGetUniqueIdentifier(a2);
        if (!v6)
        {
          _EKCreateMSUIDStringForEvent_cold_1();
        }
      }

      if (v5 || (_CalEventGetStartDate(a2), (v5 = v15) != 0))
      {
LABEL_18:
        if ([@"_float" isEqualToString:v5])
        {
          [MEMORY[0x1E695DFE8] defaultTimeZone];
        }

        else
        {
          [MEMORY[0x1E695DFE8] timeZoneWithName:v5];
        }
        v5 = ;
        if (!v6)
        {
          goto LABEL_22;
        }

        goto LABEL_9;
      }
    }

    else
    {
      v6 = 0;
      if (v4)
      {
        goto LABEL_18;
      }
    }

    if (!v6)
    {
LABEL_22:
      v7 = _create64ByteGUID();
LABEL_23:

      return v7;
    }

LABEL_9:
    if (vabdd_f64(_CalEventGetOriginalStartDate(a1), *MEMORY[0x1E6993100]) >= 2.22044605e-16)
    {
      v10 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:_CalEventGetOriginalStartDate(a1)];
    }

    else
    {
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CFStringRef _EKCreateMSUIDStringForEvent(CalEventRef, CalEventRef)"}];
      [v8 handleFailureInFunction:v9 file:@"EKMSUID.m" lineNumber:120 description:@"Event has no original start date?"];

      v10 = 0;
    }

    v11 = [v10 dateWithCalendarFormat:0 timeZone:v5];
    if (_CalEventIsAllDay(a2))
    {
      v12 = [v11 ekmsuidGMTDateToDateInTimeZone:v5];

      v11 = v12;
    }

    v13 = objc_alloc(MEMORY[0x1E696AEC0]);
    v14 = [v11 ekmsuidStringForYearMonthDay];
    v7 = [v13 initWithFormat:@"%@%@%@", v6, @"<!ExceptionDate!>", v14];

    CFRetain(v7);
    goto LABEL_23;
  }

  return 0;
}

id _create64ByteGUID()
{
  v0 = CFUUIDCreate(0);
  v1 = CFUUIDCreateString(0, v0);
  CFRelease(v0);
  v2 = [v1 mutableCopy];
  CFRelease(v1);
  [v2 replaceOccurrencesOfString:@"-" withString:&stru_1F59E24D8 options:0 range:{0, objc_msgSend(v2, "length")}];
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%%0.%ld", 64 - objc_msgSend(v2, "length")];
  v4 = [v2 stringByAppendingFormat:v3, 0];
  v5 = CFRetain(v4);

  return v5;
}

CFTypeRef _EKMSUUIDString()
{
  v0 = _create64ByteGUID();

  return CFAutorelease(v0);
}

id _EKMSUUIDStringForDetachedEvent(void *a1, void *a2, void *a3, int a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  if (!v9)
  {
    v9 = [MEMORY[0x1E695DFE8] defaultTimeZone];
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_9:
    v15 = _create64ByteGUID();
    goto LABEL_10;
  }

  if (!v7)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (!v8)
  {
    _EKMSUUIDStringForDetachedEvent_cold_1();
  }

  v10 = [v8 dateWithCalendarFormat:0 timeZone:v9];
  v11 = v10;
  if (a4)
  {
    v12 = [v10 ekmsuidGMTDateToDateInTimeZone:v9];

    v11 = v12;
  }

  v13 = objc_alloc(MEMORY[0x1E696AEC0]);
  v14 = [v11 ekmsuidStringForYearMonthDay];
  v15 = [v13 initWithFormat:@"%@%@%@", v7, @"<!ExceptionDate!>", v14];

  CFRetain(v15);
LABEL_10:

  return v15;
}

uint64_t CalToManyRelationRegisterClass()
{
  result = _CFRuntimeRegisterClass();
  __CalToManyRelationTypeID = result;
  return result;
}

uint64_t CalToManyRelationCreate(uint64_t a1, int a2, uint64_t a3, const __CFArray *a4)
{
  pthread_once(&__CalToManyRelationRegisterOnce, CalToManyRelationRegisterClass);
  Instance = _CFRuntimeCreateInstance();
  *(Instance + 16) = a1;
  *(Instance + 24) = a2;
  *(Instance + 56) = a3;
  *(Instance + 64) = 0u;
  *(Instance + 80) = 0u;
  *(Instance + 96) = 0;
  *(Instance + 48) = -1;
  *(Instance + 40) = 0;
  Copy = 0;
  if (a4)
  {
    Copy = CFArrayCreateCopy(0, a4);
  }

  *(Instance + 32) = Copy;
  return Instance;
}

BOOL CalToManyRelationHasObjects(uint64_t a1)
{
  _EnsureLoaded(a1);
  v2 = *(a1 + 80);
  if (!v2)
  {
    CalToManyRelationHasObjects_cold_1();
  }

  return CFSetGetCount(v2) > 0;
}

uint64_t _CalToManyRelationAddObject(uint64_t a1, void *value)
{
  v4 = *(a1 + 80);
  if (v4)
  {
    CFSetAddValue(v4, value);
  }

  Mutable = *(a1 + 88);
  if (!Mutable)
  {
    Mutable = CFSetCreateMutable(0, 0, MEMORY[0x1E695E9F8]);
    *(a1 + 88) = Mutable;
  }

  CFSetAddValue(Mutable, value);
  v6 = *(a1 + 96);
  if (v6)
  {
    CFSetRemoveValue(v6, value);
  }

  v7 = *(a1 + 16);
  CPRecordGetStore();
  Context = CPRecordStoreGetContext();
  _CalDatabaseAddEntity(Context, value);
  if (CDBLockingAssertionsEnabled == 1 && *(a1 + 16) != 0)
  {
    v10 = *(a1 + 16);
    if (CPRecordGetStore())
    {
      v11 = CPRecordStoreGetContext();
      if (v11)
      {
        os_unfair_lock_assert_owner(v11 + 20);
      }
    }
  }

  v12 = *(a1 + 24);

  return CPRecordMarkPropertyChanged();
}

uint64_t _CalToManyRelationRemoveObject(uint64_t a1, void *value)
{
  v4 = *(a1 + 80);
  if (v4)
  {
    CFSetRemoveValue(v4, value);
  }

  else
  {
    Mutable = *(a1 + 96);
    if (!Mutable)
    {
      Mutable = CFSetCreateMutable(0, 0, MEMORY[0x1E695E9F8]);
      *(a1 + 96) = Mutable;
    }

    CFSetAddValue(Mutable, value);
  }

  v6 = *(a1 + 88);
  if (v6)
  {
    CFSetRemoveValue(v6, value);
  }

  if (CDBLockingAssertionsEnabled == 1 && *(a1 + 16) != 0)
  {
    v8 = *(a1 + 16);
    if (CPRecordGetStore())
    {
      Context = CPRecordStoreGetContext();
      if (Context)
      {
        os_unfair_lock_assert_owner(Context + 20);
      }
    }
  }

  v10 = *(a1 + 24);

  return CPRecordMarkPropertyChanged();
}

const __CFArray *CalToManyRelationAddObject(uint64_t a1, void *a2)
{
  _CalToManyRelationAddObject(a1, a2);
  v4 = *(a1 + 64);
  if (v4)
  {
    v4(a2, *(a1 + 16));
  }

  return _UpdateInverseRelation(a1, a2, 1);
}

const __CFArray *_UpdateInverseRelation(uint64_t a1, uint64_t a2, int a3)
{
  result = *(a1 + 32);
  if (result)
  {
    v7 = 0;
    do
    {
      result = CFArrayGetCount(result);
      if (result <= v7)
      {
        return result;
      }

      valuePtr = -1;
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 32), v7);
      CFNumberGetValue(ValueAtIndex, kCFNumberIntType, &valuePtr);
      PropertyDescriptor = CPRecordGetPropertyDescriptor();
      if (PropertyDescriptor)
      {
        if (!*(PropertyDescriptor + 8))
        {
          if (a2)
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
            v12 = Property;
            v13 = CFGetTypeID(Property);
            if (v13 == CalRelationGetTypeID())
            {
              if (a3)
              {
                v14 = *(a1 + 16);
              }

              else
              {
                v14 = 0;
              }

              _CalRelationUpdateSetRelationProperties(v12, v14);
            }
          }

          goto LABEL_9;
        }

        v15 = *PropertyDescriptor;
      }

      else
      {
        v16 = **(a1 + 56);
      }

      CFLog();
LABEL_9:
      ++v7;
      result = *(a1 + 32);
    }

    while (result);
  }

  return result;
}

uint64_t CalToManyRelationRemoveObject(uint64_t a1, void *a2)
{
  _CalToManyRelationRemoveObject(a1, a2);
  v4 = *(a1 + 72);
  if (v4)
  {
    v4(a2);
  }

  _UpdateInverseRelation(a1, a2, 0);
  v5 = *(a1 + 16);
  CPRecordGetStore();
  Context = CPRecordStoreGetContext();

  return _CalDatabaseRemoveEntity(Context, a2);
}

void CalToManyRelationRemoveAllObjects(uint64_t a1)
{
  v2 = CalToManyRelationCopyObjects(a1);
  if (v2)
  {
    v3 = v2;
    Count = CFArrayGetCount(v2);
    if (Count >= 1)
    {
      v5 = Count;
      for (i = 0; i != v5; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v3, i);
        CalToManyRelationRemoveObject(a1, ValueAtIndex);
      }
    }

    CFRelease(v3);
  }
}

void CalToManyRelationSave(void *context)
{
  v2 = *(context + 10);
  if (v2)
  {
    CFRelease(v2);
    *(context + 10) = 0;
  }

  v3 = *(context + 11);
  if (v3)
  {
    CFSetApplyFunction(v3, _UpdateOwnerID, context);
    CFRelease(*(context + 11));
    *(context + 11) = 0;
  }

  v4 = *(context + 12);
  if (v4)
  {
    CFRelease(v4);
    *(context + 12) = 0;
  }
}

const __CFArray *_UpdateOwnerID(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  if (result)
  {
    v5 = 0;
    do
    {
      result = CFArrayGetCount(result);
      if (result <= v5)
      {
        break;
      }

      valuePtr = -1;
      ValueAtIndex = CFArrayGetValueAtIndex(*(a2 + 32), v5);
      CFNumberGetValue(ValueAtIndex, kCFNumberIntType, &valuePtr);
      if (*(CPRecordGetPropertyDescriptor() + 8))
      {
        if (((a1 != 0) & CDBLockingAssertionsEnabled) != 0 && CPRecordGetStore())
        {
          Context = CPRecordStoreGetContext();
          if (Context)
          {
            os_unfair_lock_assert_owner(Context + 20);
          }
        }

        v8 = *(a2 + 16);
        CPRecordGetID();
        CPRecordSetProperty();
      }

      else
      {
        if (((a1 != 0) & CDBLockingAssertionsEnabled) != 0)
        {
          if (CPRecordGetStore())
          {
            v9 = CPRecordStoreGetContext();
            if (v9)
            {
              os_unfair_lock_assert_owner(v9 + 20);
            }
          }
        }

        Property = CPRecordGetProperty();
        if (Property)
        {
          v11 = Property;
          v12 = CFGetTypeID(Property);
          if (v12 == CalRelationGetTypeID())
          {
            v13 = *(a2 + 16);
            CPRecordGetID();
            _CalRelationUpdateSetRelationID(v11);
          }
        }
      }

      ++v5;
      result = *(a2 + 32);
    }

    while (result);
  }

  return result;
}

void CalToManyRelationUnload(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 80) = 0;
  }
}

const __CFSet *CalToManyRelationIsDirty(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (!v2 || CFSetGetCount(v2) <= 0)
  {
    result = *(a1 + 96);
    if (!result)
    {
      return result;
    }

    if (CFSetGetCount(result) < 1)
    {
      return 0;
    }
  }

  return 1;
}

id ICSRecurrenceRuleFromCalRecurrence(uint64_t a1, uint64_t a2)
{
  v58 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v6 = 0;
    goto LABEL_65;
  }

  v4 = objc_alloc(MEMORY[0x1E69E3CD8]);
  Frequency = CalRecurrenceGetFrequency(a1);
  v6 = [v4 initWithFrequency:ICSFrequencyFromCalRecurrenceFrequency(Frequency)];
  Interval = CalRecurrenceGetInterval(a1);
  if (Interval >= 2)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInt:Interval];
    [v6 setInterval:v8];
  }

  WeekStart = CalRecurrenceGetWeekStart(a1);
  if (WeekStart != 1)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:ICSWeekdayFromCalDayOfWeek(WeekStart)];
    [v6 setWkst:v10];
  }

  EndDate = CalRecurrenceGetEndDate(a1);
  Count = CalRecurrenceGetCount(a1);
  if (Count)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithInt:Count];
    [v6 setCount:v13];
LABEL_21:

    goto LABEL_22;
  }

  if (vabdd_f64(EndDate, *MEMORY[0x1E6993100]) >= 2.22044605e-16)
  {
    v14 = CFDateCreate(0, EndDate);
    if (CalEventIsFloating(a2))
    {
      if (CalEventIsAllDay(a2))
      {
        v13 = ICSFloatingDateOnlyFromCFDate(v14, 0);
LABEL_16:
        if (v14)
        {
          CFRelease(v14);
        }

        v17 = CDBiCalendarConversionHandle;
        if (os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEBUG))
        {
          v18 = v17;
          v19 = [v13 value];
          *buf = 138412546;
          v55 = v19;
          v56 = 2048;
          v57 = EndDate;
          _os_log_impl(&dword_1DEBB1000, v18, OS_LOG_TYPE_DEBUG, "Setting until date: %@ (%f)", buf, 0x16u);
        }

        v20 = [v13 value];
        [v6 setUntil:v20];

        goto LABEL_21;
      }

      v15 = [MEMORY[0x1E695DFE8] timeZoneWithName:@"UTC"];
      v16 = ICSFloatingDateTimeFromCFDateInTimezone(v14, v15);
    }

    else
    {
      v15 = [MEMORY[0x1E695DFE8] timeZoneWithName:@"UTC"];
      v16 = ICSDateFromCFDateInTimezone(v14, v15);
    }

    v13 = v16;

    goto LABEL_16;
  }

LABEL_22:
  v21 = CalRecurrenceCopyByDayDays(a1);
  if (v21)
  {
    v22 = v21;
    v23 = CFArrayGetCount(v21);
    if (v23 >= 1)
    {
      v24 = v23;
      v53 = v6;
      v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
      for (i = 0; i != v24; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v22, i);
        v28 = objc_alloc(MEMORY[0x1E69E3C60]);
        v29 = ICSWeekdayFromCalDayOfWeek(ValueAtIndex[1]);
        v30 = [MEMORY[0x1E696AD98] numberWithInt:*ValueAtIndex];
        v31 = [v28 initWithWeekday:v29 number:v30];

        [v25 addObject:v31];
      }

      v32 = CDBiCalendarConversionHandle;
      if (os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v55 = v25;
        _os_log_impl(&dword_1DEBB1000, v32, OS_LOG_TYPE_DEBUG, "Setting by day days array: %@", buf, 0xCu);
      }

      v6 = v53;
      [v53 setByday:v25];
    }

    CFRelease(v22);
  }

  v33 = CalRecurrenceGetByMonthMonths(a1);
  if (v33)
  {
    v34 = v33;
    v35 = objc_alloc_init(MEMORY[0x1E695DF70]);
    for (j = 0; j != 12; ++j)
    {
      if (((1 << j) & v34) != 0)
      {
        v37 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:ICSMonthFromCalMonthOfYear(1 << j)];
        [v35 addObject:v37];
      }
    }

    if ([v35 count])
    {
      v38 = CDBiCalendarConversionHandle;
      if (os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v55 = v35;
        _os_log_impl(&dword_1DEBB1000, v38, OS_LOG_TYPE_DEBUG, "Setting by month array: %@", buf, 0xCu);
      }

      [v6 setBymonth:v35];
    }
  }

  v39 = CalRecurrenceCopyByMonthDayDays(a1);
  v40 = _NSNumberArrayFromIntArray(v39);
  if ([v40 count])
  {
    v41 = CDBiCalendarConversionHandle;
    if (os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v55 = v40;
      _os_log_impl(&dword_1DEBB1000, v41, OS_LOG_TYPE_DEBUG, "setting by month day array: %@", buf, 0xCu);
    }

    [v6 setBymonthday:v40];
  }

  if (v39)
  {
    CFRelease(v39);
  }

  v42 = CalRecurrenceCopyByWeekWeeks(a1);
  v43 = _NSNumberArrayFromIntArray(v42);
  if ([v43 count])
  {
    v44 = CDBiCalendarConversionHandle;
    if (os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v55 = v43;
      _os_log_impl(&dword_1DEBB1000, v44, OS_LOG_TYPE_DEBUG, "Setting by weekno array: %@", buf, 0xCu);
    }

    [v6 setByweekno:v43];
  }

  if (v42)
  {
    CFRelease(v42);
  }

  v45 = CalRecurrenceCopyByYearDayDays(a1);
  v46 = _NSNumberArrayFromIntArray(v45);
  if ([v46 count])
  {
    v47 = CDBiCalendarConversionHandle;
    if (os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v55 = v46;
      _os_log_impl(&dword_1DEBB1000, v47, OS_LOG_TYPE_DEBUG, "Setting by year day array: %@", buf, 0xCu);
    }

    [v6 setByyearday:v46];
  }

  if (v45)
  {
    CFRelease(v45);
  }

  v48 = CalRecurrenceCopyBySetPos(a1);
  v49 = _NSNumberArrayFromIntArray(v48);
  if ([v49 count])
  {
    v50 = CDBiCalendarConversionHandle;
    if (os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v55 = v49;
      _os_log_impl(&dword_1DEBB1000, v50, OS_LOG_TYPE_DEBUG, "Setting by set pos array: %@", buf, 0xCu);
    }

    [v6 setBysetpos:v49];
  }

  if (v48)
  {
    CFRelease(v48);
  }

LABEL_65:
  v51 = *MEMORY[0x1E69E9840];

  return v6;
}

id _NSNumberArrayFromIntArray(const __CFArray *a1)
{
  if (a1 && (Count = CFArrayGetCount(a1), Count >= 1))
  {
    v3 = Count;
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    for (i = 0; i != v3; ++i)
    {
      v6 = [MEMORY[0x1E696AD98] numberWithInt:{CFArrayGetValueAtIndex(a1, i)}];
      [v4 addObject:v6];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

BOOL CalRecurrenceUpdateFromICSRecurrenceRule(void *a1, uint64_t a2)
{
  v56 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!a2)
  {
    goto LABEL_45;
  }

  v5 = CalRecurrenceFrequencyFromICSFrequency([v3 freq]);
  CalRecurrenceSetFrequency(a2, v5);
  v6 = [v4 interval];
  v7 = [v6 intValue];

  if (v7 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7;
  }

  CalRecurrenceSetInterval(a2, v8);
  v9 = [v4 wkst];
  v10 = v9;
  if (v9 && [v9 intValue] != 2)
  {
    v11 = CalDayOfWeekFromICSWeekday([v10 intValue]);
  }

  else
  {
    v11 = 7;
  }

  CalRecurrenceSetWeekStart(a2, v11);
  v12 = [v4 until];
  if (v12)
  {
    v13 = [objc_alloc(MEMORY[0x1E69E3C90]) initWithValue:v12];
    v14 = CalDateFromICSDateAsUTC(v13);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v16 = v14 + 86399.0;
    if (isKindOfClass)
    {
      v16 = v14;
    }

    CalRecurrenceSetEndDate(a2, v16);
  }

  else
  {
    v17 = [v4 count];

    if (!v17)
    {
      CalRecurrenceSetEndDate(a2, 0.0);
      CalRecurrenceSetCount(a2, 0);
      goto LABEL_16;
    }

    v13 = [v4 count];
    CalRecurrenceSetCount(a2, [v13 intValue]);
  }

LABEL_16:
  v18 = [v4 byday];
  if ([v18 count])
  {
    v44 = v10;
    v19 = [v18 count];
    Mutable = CFArrayCreateMutable(0, v19, MEMORY[0x1E6993118]);
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v21 = v18;
    v22 = [v21 countByEnumeratingWithState:&v50 objects:v55 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v51;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v51 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v50 + 1) + 8 * i);
          value = 0;
          HIDWORD(value) = CalDayOfWeekFromICSWeekday([v26 weekday]);
          v27 = [v26 number];
          LODWORD(value) = [v27 intValue];

          CFArrayAppendValue(Mutable, &value);
        }

        v23 = [v21 countByEnumeratingWithState:&v50 objects:v55 count:16];
      }

      while (v23);
    }

    CalRecurrenceSetByDayDays(a2, Mutable);
    v10 = v44;
    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  else
  {
    CalRecurrenceSetByDayDays(a2, 0);
  }

  v28 = [v4 bymonth];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v29 = [v28 countByEnumeratingWithState:&v45 objects:v54 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = 0;
    v32 = *v46;
    do
    {
      for (j = 0; j != v30; ++j)
      {
        if (*v46 != v32)
        {
          objc_enumerationMutation(v28);
        }

        v31 |= CalMonthOfYearFromICSMonth([*(*(&v45 + 1) + 8 * j) intValue]);
      }

      v30 = [v28 countByEnumeratingWithState:&v45 objects:v54 count:16];
    }

    while (v30);
  }

  else
  {
    v31 = 0;
  }

  CalRecurrenceSetByMonthMonths(a2, v31);
  v34 = [v4 bymonthday];
  IntArrayFromNSNumberArray = _CreateIntArrayFromNSNumberArray(v34);

  CalRecurrenceSetByMonthDayDays(a2, IntArrayFromNSNumberArray);
  if (IntArrayFromNSNumberArray)
  {
    CFRelease(IntArrayFromNSNumberArray);
  }

  v36 = [v4 byweekno];
  v37 = _CreateIntArrayFromNSNumberArray(v36);

  CalRecurrenceSetByWeekWeeks(a2, v37);
  if (v37)
  {
    CFRelease(v37);
  }

  v38 = [v4 byyearday];
  v39 = _CreateIntArrayFromNSNumberArray(v38);

  CalRecurrenceSetByYearDayDays(a2, v39);
  if (v39)
  {
    CFRelease(v39);
  }

  v40 = [v4 bysetpos];
  v41 = _CreateIntArrayFromNSNumberArray(v40);

  CalRecurrenceSetBySetPos(a2, v41);
  if (v41)
  {
    CFRelease(v41);
  }

LABEL_45:
  v42 = *MEMORY[0x1E69E9840];
  return a2 != 0;
}

__CFArray *_CreateIntArrayFromNSNumberArray(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    Mutable = CFArrayCreateMutable(0, [v1 count], 0);
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = v2;
    v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v4);
          }

          CFArrayAppendValue(Mutable, [*(*(&v11 + 1) + 8 * i) intValue]);
        }

        v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }
  }

  else
  {
    Mutable = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return Mutable;
}

uint64_t CalRecurrenceUpdateFromVCal10String(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [a1 componentsSeparatedByString:@" "];
  v7 = [v6 count];
  if (v7)
  {
    v8 = v7;
    v9 = [v6 objectAtIndex:0];
    v10 = [v9 length];
    if (v10)
    {
      v11 = [v9 substringToIndex:1];
    }

    else
    {
      v11 = 0;
    }

    if ([v11 isEqualToString:@"Y"])
    {
      v12 = 4;
    }

    else
    {
      v12 = 1;
    }

    CalRecurrenceSetFrequency(a2, v12);
    if (v10 < 2)
    {
      v13 = 0;
    }

    else
    {
      v13 = [v9 substringWithRange:{1, 1}];
    }

    if ([v13 isEqualToString:@"M"])
    {
      v26 = a2;
      if (v10 < 3)
      {
        v14 = 0;
      }

      else
      {
        v14 = [v9 substringFromIndex:2];
      }

      v15 = [v14 intValue];
      v16 = 0;
      if (v15 >= 1 && v8 != 1)
      {
        v17 = v15;
        v16 = 0;
        for (i = 1; i < v8; ++i)
        {
          v19 = [v6 objectAtIndex:i];
          v16 |= CalMonthOfYearFromICSMonth([v19 intValue]);

          if (i >= v17)
          {
            break;
          }
        }
      }

      a2 = v26;
      CalRecurrenceSetByMonthMonths(v26, v16);

      v11 = v25;
    }

    if (v8 == 1)
    {
      v20 = 0;
    }

    else
    {
      v20 = [v6 lastObject];
    }

    if ([v20 length])
    {
      v21 = [v20 rangeOfString:@"#"];
      if (v21 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v22 = [v20 substringWithRange:{v21 + 1, objc_msgSend(v20, "length") + ~v21}];
        if ([v22 length])
        {
          CalRecurrenceSetCount(a2, [v22 intValue]);
        }
      }
    }

    if (v5)
    {
      v23 = CalDateFromICSDateAsUTC(v5);
      CalRecurrenceSetEndDate(a2, v23);
    }
  }

  return 1;
}

uint64_t __CDBLogInitIfNeeded_block_invoke()
{
  v0 = os_log_create("com.apple.calendar.database", "CalendarDatabase");
  v1 = CDBLogHandle;
  CDBLogHandle = v0;

  v2 = os_log_create("com.apple.calendar.database", "WidgetReload");
  v3 = CDBWidgetReloadHandle;
  CDBWidgetReloadHandle = v2;

  v4 = os_log_create("com.apple.calendar.database", "iCalendarConversion");
  v5 = CDBiCalendarConversionHandle;
  CDBiCalendarConversionHandle = v4;

  v6 = os_log_create("com.apple.calendar.database", "SQLProfile");
  v7 = CDBSQLProfileHandle;
  CDBSQLProfileHandle = v6;

  v8 = os_log_create("com.apple.calendar.database", "CalendarDatabasePerf");
  v9 = CDBPerfSignpostsHandle;
  CDBPerfSignpostsHandle = v8;

  v10 = os_log_create("com.apple.calendar.database", "AppEntity");
  v11 = CDBAppEntityHandle;
  CDBAppEntityHandle = v10;

  v12 = os_log_create("com.apple.calendar.database", "GroupContainerMigration");
  v13 = CDBGroupContainerMigrationHandle;
  CDBGroupContainerMigrationHandle = v12;

  v14 = os_log_create("com.apple.calendar.database", "ChangeReport");
  v15 = CDBChangeReportHandle;
  CDBChangeReportHandle = v14;

  return MEMORY[0x1EEE66BB8](v14, v15);
}

uint64_t _CalResourceChangePrepareForSave(uint64_t a1, uint64_t a2)
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
    CalRelationOwnerWillSave(Property);
  }

  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        v6 = CPRecordStoreGetContext();
        if (v6)
        {
          os_unfair_lock_assert_owner(v6 + 20);
        }
      }
    }
  }

  result = CPRecordGetIntegerProperty();
  if (result == -1)
  {
    if (a1)
    {
      if (CDBLockingAssertionsEnabled)
      {
        if (CPRecordGetStore())
        {
          v8 = CPRecordStoreGetContext();
          if (v8)
          {
            os_unfair_lock_assert_owner(v8 + 20);
          }
        }
      }
    }

    v9 = CPRecordGetProperty();
    if (a1)
    {
      if (CDBLockingAssertionsEnabled)
      {
        if (CPRecordGetStore())
        {
          v10 = CPRecordStoreGetContext();
          if (v10)
          {
            os_unfair_lock_assert_owner(v10 + 20);
          }
        }
      }
    }

    v11 = CPRecordGetProperty();
    if (a1)
    {
      if (CDBLockingAssertionsEnabled)
      {
        if (CPRecordGetStore())
        {
          v12 = CPRecordStoreGetContext();
          if (v12)
          {
            os_unfair_lock_assert_owner(v12 + 20);
          }
        }
      }
    }

    v13 = CPRecordGetProperty();
    if (a1)
    {
      if (CDBLockingAssertionsEnabled)
      {
        if (CPRecordGetStore())
        {
          v14 = CPRecordStoreGetContext();
          if (v14)
          {
            os_unfair_lock_assert_owner(v14 + 20);
          }
        }
      }
    }

    result = CPRecordGetProperty();
    v15 = result;
    if (v9 && (result = CFStringGetLength(v9)) != 0 || v11 && (result = CFStringGetLength(v11)) != 0 || v13 && (result = CFStringGetLength(v13)) != 0)
    {
      if (!a2)
      {
        return result;
      }
    }

    else
    {
      if (!v15)
      {
        return result;
      }

      result = CFStringGetLength(v15);
      if (!a2 || !result)
      {
        return result;
      }
    }

    result = _CalIdentityGetID(v9, v11, v13, v15, a2);
    if (result != -1)
    {
      if (a1)
      {
        if (CDBLockingAssertionsEnabled)
        {
          if (CPRecordGetStore())
          {
            v16 = CPRecordStoreGetContext();
            if (v16)
            {
              os_unfair_lock_assert_owner(v16 + 20);
            }
          }
        }
      }

      return CPRecordSetProperty();
    }
  }

  return result;
}

uint64_t _CalResourceChangePropertyWillChange(uint64_t result, int a2, uint64_t a3)
{
  if (a2 == 1)
  {
    if (a3 != -1)
    {
      return result;
    }

    if (!result)
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  if (!a2)
  {
    if (a3 != -1)
    {
      return result;
    }

    if (!result)
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  if (a2 != 2 || a3 != -1)
  {
    return result;
  }

  if (result)
  {
LABEL_12:
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

LABEL_16:

  return CPRecordGetProperty();
}

void CalResourceChangeInitializeTables(uint64_t a1, void *a2)
{
  CPRecordStoreCreateTablesForClass();
  CalMigrationCreateIndexes(a2, &kCalResourceChangeClass, &kCalResourceChangeIndexes, 0);

  CalMigrationCreateTriggers(a2, &kCalResourceChangeClass, &kCalResourceChangeTriggers);
}

void CalResourceChangeMigrateTables(uint64_t a1, void *a2, int a3)
{
  if (a3 > 82)
  {
    if (a3 <= 0x64)
    {
      CalMigrateTableFull(a2, &kCalResourceChangeClass, 0, &kCalResourceChangeUpgradeInfo, 0, &kCalResourceChangeIndexes, 0, &kCalResourceChangeTriggers, a3);
    }
  }

  else
  {

    CalResourceChangeInitializeTables(a1, a2);
  }
}

CFTypeRef _CalResourceChangeHasValidParent(uint64_t a1)
{
  result = _CalResourceChangeGetNotification(a1);
  if (result)
  {

    return _CalRecordStillExists();
  }

  return result;
}

CFTypeRef _CalResourceChangeGetNotification(uint64_t a1)
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

  result = CPRecordGetProperty();
  if (result)
  {

    return CalRelationGetRelatedObject(result);
  }

  return result;
}

const void *_CalCreateResourceChangeOfType(uint64_t a1)
{
  v2 = CPRecordCreate();
  TemporaryRecordIDForEntity = _CalDatbaseCreateTemporaryRecordIDForEntity(a1, 18);
  if (CDBLockingAssertionsEnabled == 1 && v2 != 0)
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

  CPRecordInitializeProperty();
  CFRelease(TemporaryRecordIDForEntity);
  if (CDBLockingAssertionsEnabled == 1 && v2 != 0)
  {
    if (CPRecordGetStore())
    {
      v7 = CPRecordStoreGetContext();
      if (v7)
      {
        os_unfair_lock_assert_owner(v7 + 20);
      }
    }
  }

  CPRecordInitializeProperty();
  if (CDBLockingAssertionsEnabled == 1 && v2 != 0)
  {
    if (CPRecordGetStore())
    {
      v9 = CPRecordStoreGetContext();
      if (v9)
      {
        os_unfair_lock_assert_owner(v9 + 20);
      }
    }
  }

  CPRecordInitializeProperty();
  if (CDBLockingAssertionsEnabled == 1 && v2 != 0)
  {
    if (CPRecordGetStore())
    {
      v11 = CPRecordStoreGetContext();
      if (v11)
      {
        os_unfair_lock_assert_owner(v11 + 20);
      }
    }
  }

  CPRecordInitializeProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (v2)
    {
      if (CPRecordGetStore())
      {
        v12 = CPRecordStoreGetContext();
        if (v12)
        {
          os_unfair_lock_assert_owner(v12 + 20);
        }
      }
    }
  }

  CPRecordInitializeProperty();
  _CalDatabaseAddEntity(a1, v2);
  return v2;
}

const void *CalDatabaseCreateResourceChangeOfType(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 20);
  v2 = _CalCreateResourceChangeOfType(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  return v2;
}

uint64_t _CalResourceChangeGetType(uint64_t a1)
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

  return CPRecordGetIntegerProperty();
}

uint64_t _CalRemoveResourceChange(void *a1)
{
  result = CPRecordGetStore();
  if (result)
  {
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      v4 = Context;
      v5 = _CalResourceChangeGetNotification(a1);
      if (v5)
      {
        v6 = v5;
        v7 = _CalResourceChangeNotificationCopyChanges(v5);
        if (v7)
        {
          v8 = v7;
          Count = CFArrayGetCount(v7);
          CFRelease(v8);
          _CalResourceChangeNotificationRemoveChange(v6, a1);
          if (Count == 1)
          {
            _CalRemoveNotification(v6);
          }
        }

        else
        {
          _CalResourceChangeNotificationRemoveChange(v6, a1);
        }
      }

      else
      {
        _CalDatabaseRemoveEntity(v4, a1);
      }
    }

    if (CDBLockingAssertionsEnabled == 1)
    {
      v10 = CPRecordStoreGetContext();
      if (v10)
      {
        os_unfair_lock_assert_owner(v10 + 20);
      }
    }

    return CPRecordStoreRemoveRecord();
  }

  return result;
}

void CalRemoveResourceChange(void *a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalRemoveResourceChange(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

CFTypeRef CalResourceChangeCopyNotification(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  v3 = _CalResourceChangeGetNotification(a1);
  v4 = v3;
  if (v3)
  {
    CFRetain(v3);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v4;
}

void *_CalResourceChangeSetCalendar(uint64_t a1, const void *a2)
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

  result = CPRecordGetProperty();
  if (result)
  {

    return CalRelationSetRelatedObject(result, a2);
  }

  return result;
}

void CalResourceChangeSetCalendar(uint64_t a1, const void *a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalResourceChangeSetCalendar(a1, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

CFTypeRef CalResourceChangeCopyCalendar(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
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
    v5 = CalRelationCopyRelatedObject(Property);
  }

  else
  {
    v5 = 0;
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v5;
}

void *_CalResourceChangeSetCalendarItem(uint64_t a1, const void *a2)
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

  result = CPRecordGetProperty();
  if (result)
  {

    return CalRelationSetRelatedObject(result, a2);
  }

  return result;
}

void CalResourceChangeSetCalendarItem(uint64_t a1, const void *a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalResourceChangeSetCalendarItem(a1, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

CFTypeRef CalResourceChangeCopyCalendarItem(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
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
    v5 = CalRelationCopyRelatedObject(Property);
  }

  else
  {
    v5 = 0;
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v5;
}

void CalResourceChangeSetChangedByDisplayName(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
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

  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalResourceChangeCopyChangedByDisplayName(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
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

  v4 = CPRecordCopyProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v4;
}

void CalResourceChangeSetChangedByAddress(uint64_t a1, const __CFURL *a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  if (a2)
  {
    CFURLGetString(a2);
  }

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

  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

CFURLRef CalResourceChangeCopyChangedByAddress(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
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
    v5 = CFURLCreateWithString(0, Property, 0);
  }

  else
  {
    v5 = 0;
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v5;
}

void CalResourceChangeSetChangedByFirstName(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
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

  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalResourceChangeCopyChangedByFirstName(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
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

  v4 = CPRecordCopyProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v4;
}

void CalResourceChangeSetChangedByLastName(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
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

  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalResourceChangeCopyChangedByLastName(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
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

  v4 = CPRecordCopyProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v4;
}

uint64_t CalResourceChangeGetType(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
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

  IntegerProperty = CPRecordGetIntegerProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return IntegerProperty;
}

void CalResourceChangeSetTimestamp(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalErrorSetUserInfo(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalResourceChangeCopyTimestamp(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
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

  v4 = CPRecordCopyProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v4;
}

uint64_t _CalResourceChangeSetChangedProperties(uint64_t a1)
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

  return CPRecordSetProperty();
}

void CalResourceChangeSetChangedProperties(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalResourceChangeSetChangedProperties(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalResourceChangeGetChangedProperties(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
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

  IntegerProperty = CPRecordGetIntegerProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return IntegerProperty;
}

void CalResourceChangeSetCreateCount(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
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

  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalResourceChangeGetCreateCount(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
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

  IntegerProperty = CPRecordGetIntegerProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return IntegerProperty;
}

void CalResourceChangeSetUpdateCount(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
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

  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalResourceChangeGetUpdateCount(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
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

  IntegerProperty = CPRecordGetIntegerProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return IntegerProperty;
}

void CalResourceChangeSetDeleteCount(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
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

  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalResourceChangeGetDeleteCount(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
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

  IntegerProperty = CPRecordGetIntegerProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return IntegerProperty;
}

void CalResourceChangeSetDeletedSummary(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
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

  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalResourceChangeCopyDeletedSummary(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
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

  v4 = CPRecordCopyProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v4;
}

void CalResourceChangeSetDeletedStartDate(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
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

  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalResourceChangeCopyDeletedStartDate(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
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

  v4 = CPRecordCopyProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v4;
}

uint64_t _CalResourceChangeSetAlerted(uint64_t a1)
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

  return CPRecordSetProperty();
}

void CalResourceChangeSetAlerted(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalResourceChangeSetAlerted(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

BOOL CalResourceChangeIsAlerted(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
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

  IntegerProperty = CPRecordGetIntegerProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return IntegerProperty != 0;
}

void CalResourceChangeSetPublicStatus(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
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

  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

BOOL CalResourceChangeGetPublicStatus(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
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

  IntegerProperty = CPRecordGetIntegerProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return IntegerProperty != 0;
}

uint64_t _CalResourceChangeGetWithUID(uint64_t a1)
{
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      Context = CPRecordStoreGetContext();
      if (Context)
      {
        os_unfair_lock_assert_owner(Context + 20);
      }
    }
  }

  return CPRecordStoreGetInstanceOfClassWithUID();
}

const void *CalDatabaseCopyResourceChangeWithUID(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 20);
  RecordStore = _CalDatabaseGetRecordStore(a1);
  v3 = _CalResourceChangeGetWithUID(RecordStore);
  v4 = v3;
  if (v3)
  {
    CFRetain(v3);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  return v4;
}

uint64_t CalResourceChangeGetUID()
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  ID = CPRecordGetID();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return ID;
}

uint64_t CalDatabaseCopyOfAllResourceChanges(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 20);
  RecordStore = _CalDatabaseGetRecordStore(a1);
  if (CDBLockingAssertionsEnabled == 1 && RecordStore != 0)
  {
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      os_unfair_lock_assert_owner(Context + 20);
    }
  }

  v5 = CPRecordStoreCopyAllInstancesOfClass();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  return v5;
}

uint64_t _CalResourceChangeGetRecordID(uint64_t a1)
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

  return CPRecordGetProperty();
}

uint64_t CalResourceChangeGetPropertyIDWithPropertyName(void *key)
{
  if (CalResourceChangeGetPropertyIDWithPropertyName_onceToken != -1)
  {
    CalResourceChangeGetPropertyIDWithPropertyName_cold_1();
  }

  value = 0;
  if (CFDictionaryGetValueIfPresent(CalResourceChangeGetPropertyIDWithPropertyName_sPropDict, key, &value))
  {
    return value;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void __CalResourceChangeGetPropertyIDWithPropertyName_block_invoke()
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = @"changeType";
  v3 = 4;
  v4 = @"timestamp";
  v5 = 5;
  v6 = @"changedProperties";
  v7 = 6;
  v8 = @"createCount";
  v9 = 7;
  v10 = @"updateCount";
  v11 = 8;
  v12 = @"deleteCount";
  v13 = 9;
  v14 = @"deletedTitle";
  v15 = 10;
  v16 = @"alerted";
  v17 = 12;
  v18 = @"publicStatus";
  v19 = 13;
  v20 = @"notification";
  v21 = 14;
  v22 = @"calendar";
  v23 = 15;
  v24 = @"calendarItem";
  v25 = 16;
  v26 = @"changedByDisplayName";
  v27 = 17;
  v28 = @"changedByAddress";
  v29 = 18;
  v30 = @"changedByFirstName";
  v31 = 20;
  v32 = @"changedByLastName";
  v33 = 21;
  CalResourceChangeGetPropertyIDWithPropertyName_sPropDict = _CalDBCreatePropertyMap(&v2, 16);
  for (i = 240; i != -16; i -= 16)
  {
  }

  v1 = *MEMORY[0x1E69E9840];
}

void sub_1DEBF7440(_Unwind_Exception *a1)
{
  for (i = 240; i != -16; i -= 16)
  {
  }

  _Unwind_Resume(a1);
}

void _CalResourceChangeLoadIdentityProperties(uint64_t a1)
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

  if (CPRecordGetIntegerProperty() != -1)
  {
    Store = CPRecordGetStore();
    IdentityWithRowID = _CalGetIdentityWithRowID(Store);
    if (IdentityWithRowID)
    {
      v5 = IdentityWithRowID;
      if (a1)
      {
        if (CDBLockingAssertionsEnabled)
        {
          if (CPRecordGetStore())
          {
            v6 = CPRecordStoreGetContext();
            if (v6)
            {
              os_unfair_lock_assert_owner(v6 + 20);
            }
          }
        }
      }

      _CalIdentityGetDisplayName(v5);
      CPRecordInitializeProperty();
      if (a1)
      {
        if (CDBLockingAssertionsEnabled)
        {
          if (CPRecordGetStore())
          {
            v7 = CPRecordStoreGetContext();
            if (v7)
            {
              os_unfair_lock_assert_owner(v7 + 20);
            }
          }
        }
      }

      _CalIdentityGetFirstName(v5);
      CPRecordInitializeProperty();
      if (a1)
      {
        if (CDBLockingAssertionsEnabled)
        {
          if (CPRecordGetStore())
          {
            v8 = CPRecordStoreGetContext();
            if (v8)
            {
              os_unfair_lock_assert_owner(v8 + 20);
            }
          }
        }
      }

      _CalIdentityGetLastName(v5);
      CPRecordInitializeProperty();
      v9 = _CalIdentityCopyAddress(v5);
      if (v9)
      {
        v10 = v9;
        if (a1)
        {
          if (CDBLockingAssertionsEnabled)
          {
            if (CPRecordGetStore())
            {
              v11 = CPRecordStoreGetContext();
              if (v11)
              {
                os_unfair_lock_assert_owner(v11 + 20);
              }
            }
          }
        }

        CPRecordInitializeProperty();

        CFRelease(v10);
      }
    }
  }
}

void sub_1DEBF77BC(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 2);
  objc_exception_rethrow();
}

uint64_t CalEnableTravelAdvisoriesForAutomaticBehavior()
{
  v0 = +[CDBPreferences shared];
  v1 = [v0 get_enableTravelAdvisoriesForAutomaticBehavior];

  return v1;
}

void CalSetEnableTravelAdvisoriesForAutomaticBehavior(uint64_t a1)
{
  v2 = +[CDBPreferences shared];
  [v2 set_enableTravelAdvisoriesForAutomaticBehavior:a1];
}

uint64_t CalLocationSuggestionsEnabled()
{
  v0 = +[CDBPreferences shared];
  v1 = [v0 get_suggestEventLocations];

  return v1;
}

uint64_t CalDaysToSync()
{
  v0 = +[CDBPreferences shared];
  v1 = [v0 get_kCalPreferredDaysToSyncKey];

  return v1;
}

void CalSetLocationSuggestionsEnabled(uint64_t a1)
{
  v2 = +[CDBPreferences shared];
  [v2 set_suggestEventLocations:a1];
}

void CalSetDaysToSync(uint64_t a1)
{
  v2 = +[CDBPreferences shared];
  [v2 set_kCalPreferredDaysToSyncKey:a1];
}

void _CalAttachmentFilePrepareForSave(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (_CalAttachmentFileGetStoreID(a1))
  {
    if (!_CalAttachmentFileGetLocalRelativePath(a1))
    {
      v2 = _CalAttachmentFileGetURLWrapperForPendingFileCopy(a1);
      if (v2)
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

        CPRecordGetProperty();
        v4 = [v2 file];
        v5 = _CalAttachmentFileSetFileDataWithOpenFile(a1, [v4 fileDescriptor]);

        _CalAttachmentFileSetURLForPendingFileCopy(a1, 0);
        if ((v5 & 1) == 0)
        {
          v6 = CDBLogHandle;
          if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
          {
            v7 = v6;
            v10[0] = 67109120;
            v10[1] = CPRecordGetID();
            _os_log_impl(&dword_1DEBB1000, v7, OS_LOG_TYPE_ERROR, "Attachment failed to copy to local storage: %d", v10, 8u);
          }
        }
      }
    }
  }

  else
  {
    v8 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v10[0]) = 0;
      _os_log_impl(&dword_1DEBB1000, v8, OS_LOG_TYPE_ERROR, "Attempting to save an attachment file that is not in any store", v10, 2u);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

void CalAttachmentFilePropertyWillChange(uint64_t a1, unsigned int a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a2 < 9 || a2 == 12)
  {
    v8 = 0u;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v2 = _CalAttachmentFileCopyAttachments(a1);
    v3 = [(__CFArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v9;
      do
      {
        v6 = 0;
        do
        {
          if (*v9 != v5)
          {
            objc_enumerationMutation(v2);
          }

          _CalAttachmentMarkDirty(*(*(&v8 + 1) + 8 * v6++), 1);
        }

        while (v4 != v6);
        v4 = [(__CFArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v4);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

void CalAttachmentFileInitializeTables(uint64_t a1, void *a2)
{
  CPRecordStoreCreateTablesForClass();
  CalMigrationCreateIndexes(a2, &kCalAttachmentFileClass, &kCalAttachmentFileIndexes, 0);
  _CalAttachmentFileRegisterFunctions(a1, a2);

  CalMigrationCreateTriggers(a2, &kCalAttachmentFileClass, &kCalAttachmentFileTriggers);
}

void CalAttachmentFileMigrateTables(uint64_t a1, void *a2, int a3)
{
  if (a3 > 16008)
  {
    if (a3 <= 0x4651)
    {
      CalMigrateTableFull(a2, &kCalAttachmentFileClass, 0, &kCalAttachmentFileUpgradeInfo, 0, &kCalAttachmentFileIndexes, 0, &kCalAttachmentFileTriggers, a3);
    }
  }

  else
  {

    CalAttachmentFileInitializeTables(a1, a2);
  }
}

void _CalAttachmentFileNoteAttachmentDeleted(sqlite3_context *a1, int a2, sqlite3_value **a3)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a2 == 2)
  {
    v5 = sqlite3_user_data(a1);
    v6 = sqlite3_value_int(*a3);
    RecordStore = _CalDatabaseGetRecordStore(v5);
    v8 = v5[39];
    v9 = [MEMORY[0x1E696AD98] numberWithInt:v6];
    v10 = [v8 objectForKeyedSubscript:v9];

    if (v10)
    {
      goto LABEL_3;
    }

    StoreWithUID = _CalGetStoreWithUID(RecordStore);
    if (!StoreWithUID)
    {
      v17 = CDBLogHandle;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
      {
        v18[0] = 67109120;
        v18[1] = v6;
        _os_log_impl(&dword_1DEBB1000, v17, OS_LOG_TYPE_ERROR, "Unable to find store with storeUID when attachment deleted: %d", v18, 8u);
      }

      goto LABEL_4;
    }

    v10 = [[CalAttachmentFileCleanupContext alloc] initWithStore:StoreWithUID];
    v15 = v5[39];
    v16 = [MEMORY[0x1E696AD98] numberWithInt:v6];
    [v15 setObject:v10 forKeyedSubscript:v16];

    if (v10)
    {
LABEL_3:
      v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:sqlite3_value_text(a3[1])];
      [(CalAttachmentFileCleanupContext *)v10 addAttachmentToDelete:v11];
    }

LABEL_4:
    sqlite3_result_null(a1);
    goto LABEL_7;
  }

  v12 = CDBLogHandle;
  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v18[0]) = 0;
    _os_log_impl(&dword_1DEBB1000, v12, OS_LOG_TYPE_ERROR, "Wrong number of arguments for CalNoteAttachmentDeleted", v18, 2u);
  }

LABEL_7:
  v13 = *MEMORY[0x1E69E9840];
}

void _CalAttachmentFileNoteStoreDeleted(sqlite3_context *a1, int a2, sqlite3_value **a3)
{
  if (a2 == 3)
  {
    v5 = sqlite3_user_data(a1);
    v6 = sqlite3_value_int(*a3);
    v7 = sqlite3_value_text(a3[1]);
    v8 = sqlite3_value_text(a3[2]);
    if (v7)
    {
      v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytesNoCopy:v7 length:strlen(v7) encoding:4 freeWhenDone:0];
    }

    if (v8)
    {
      v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytesNoCopy:v8 length:strlen(v8) encoding:4 freeWhenDone:0];
    }

    v16 = v7;
    v9 = v8;
    v10 = v5[39];
    v11 = [MEMORY[0x1E696AD98] numberWithInt:v6];
    v12 = [v10 objectForKeyedSubscript:v11];

    if (!v12)
    {
      v12 = [[CalAttachmentFileCleanupContext alloc] initWithExternalID:v16 storeUUID:v9 database:v5];
      v13 = v5[39];
      v14 = [MEMORY[0x1E696AD98] numberWithInt:v6];
      [v13 setObject:v12 forKeyedSubscript:v14];
    }

    [(CalAttachmentFileCleanupContext *)v12 markStoreAsDeleted];
    sqlite3_result_null(a1);
  }

  else
  {
    v15 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1DEBB1000, v15, OS_LOG_TYPE_ERROR, "Wrong number of arguments for CalNoteStoreDeleted", buf, 2u);
    }
  }
}

const void *_CalDatabaseCreateAttachmentFile(uint64_t a1)
{
  v2 = CPRecordCreate();
  TemporaryRecordIDForEntity = _CalDatbaseCreateTemporaryRecordIDForEntity(a1, 25);
  if (CDBLockingAssertionsEnabled == 1 && v2 != 0)
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

  CPRecordInitializeProperty();
  CFRelease(TemporaryRecordIDForEntity);
  if (CDBLockingAssertionsEnabled == 1 && v2 != 0)
  {
    if (CPRecordGetStore())
    {
      v7 = CPRecordStoreGetContext();
      if (v7)
      {
        os_unfair_lock_assert_owner(v7 + 20);
      }
    }
  }

  CalGenerateUUID();
  CPRecordInitializeProperty();
  _CalDatabaseAddEntity(a1, v2);
  return v2;
}

const void *CalDatabaseCreateAttachmentFile(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 20);
  AttachmentFile = _CalDatabaseCreateAttachmentFile(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  return AttachmentFile;
}

const void *_CalAttachmentFileCopy(uint64_t a1, void *a2)
{
  AttachmentFile = _CalDatabaseCreateAttachmentFile(a1);
  v4 = AttachmentFile;
  if (CDBLockingAssertionsEnabled == 1 && AttachmentFile != 0)
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

  if (a2)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        v7 = CPRecordStoreGetContext();
        if (v7)
        {
          os_unfair_lock_assert_owner(v7 + 20);
        }
      }
    }
  }

  CPRecordGetProperty();
  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1 && v4 != 0)
  {
    if (CPRecordGetStore())
    {
      v9 = CPRecordStoreGetContext();
      if (v9)
      {
        os_unfair_lock_assert_owner(v9 + 20);
      }
    }
  }

  if (a2)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        v10 = CPRecordStoreGetContext();
        if (v10)
        {
          os_unfair_lock_assert_owner(v10 + 20);
        }
      }
    }
  }

  CPRecordGetProperty();
  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1 && v4 != 0)
  {
    if (CPRecordGetStore())
    {
      v12 = CPRecordStoreGetContext();
      if (v12)
      {
        os_unfair_lock_assert_owner(v12 + 20);
      }
    }
  }

  if (a2)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        v13 = CPRecordStoreGetContext();
        if (v13)
        {
          os_unfair_lock_assert_owner(v13 + 20);
        }
      }
    }
  }

  CPRecordGetProperty();
  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (v4)
    {
      if (CPRecordGetStore())
      {
        v14 = CPRecordStoreGetContext();
        if (v14)
        {
          os_unfair_lock_assert_owner(v14 + 20);
        }
      }
    }
  }

  if (a2)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        v15 = CPRecordStoreGetContext();
        if (v15)
        {
          os_unfair_lock_assert_owner(v15 + 20);
        }
      }
    }
  }

  CPRecordGetProperty();
  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (v4)
    {
      if (CPRecordGetStore())
      {
        v16 = CPRecordStoreGetContext();
        if (v16)
        {
          os_unfair_lock_assert_owner(v16 + 20);
        }
      }
    }
  }

  if (a2)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        v17 = CPRecordStoreGetContext();
        if (v17)
        {
          os_unfair_lock_assert_owner(v17 + 20);
        }
      }
    }
  }

  CPRecordGetProperty();
  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (v4)
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

  if (a2)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        v19 = CPRecordStoreGetContext();
        if (v19)
        {
          os_unfair_lock_assert_owner(v19 + 20);
        }
      }
    }
  }

  CPRecordGetProperty();
  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (v4)
    {
      if (CPRecordGetStore())
      {
        v20 = CPRecordStoreGetContext();
        if (v20)
        {
          os_unfair_lock_assert_owner(v20 + 20);
        }
      }
    }
  }

  if (a2)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        v21 = CPRecordStoreGetContext();
        if (v21)
        {
          os_unfair_lock_assert_owner(v21 + 20);
        }
      }
    }
  }

  CPRecordGetProperty();
  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (v4)
    {
      if (CPRecordGetStore())
      {
        v22 = CPRecordStoreGetContext();
        if (v22)
        {
          os_unfair_lock_assert_owner(v22 + 20);
        }
      }
    }
  }

  if (a2)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        v23 = CPRecordStoreGetContext();
        if (v23)
        {
          os_unfair_lock_assert_owner(v23 + 20);
        }
      }
    }
  }

  CPRecordGetProperty();
  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (v4)
    {
      if (CPRecordGetStore())
      {
        v24 = CPRecordStoreGetContext();
        if (v24)
        {
          os_unfair_lock_assert_owner(v24 + 20);
        }
      }
    }
  }

  if (a2)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        v25 = CPRecordStoreGetContext();
        if (v25)
        {
          os_unfair_lock_assert_owner(v25 + 20);
        }
      }
    }
  }

  CPRecordGetProperty();
  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (v4)
    {
      if (CPRecordGetStore())
      {
        v26 = CPRecordStoreGetContext();
        if (v26)
        {
          os_unfair_lock_assert_owner(v26 + 20);
        }
      }
    }
  }

  if (a2)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        v27 = CPRecordStoreGetContext();
        if (v27)
        {
          os_unfair_lock_assert_owner(v27 + 20);
        }
      }
    }
  }

  CPRecordGetProperty();
  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (v4)
    {
      if (CPRecordGetStore())
      {
        v28 = CPRecordStoreGetContext();
        if (v28)
        {
          os_unfair_lock_assert_owner(v28 + 20);
        }
      }
    }
  }

  if (a2)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        v29 = CPRecordStoreGetContext();
        if (v29)
        {
          os_unfair_lock_assert_owner(v29 + 20);
        }
      }
    }
  }

  CPRecordGetProperty();
  CPRecordSetProperty();
  v30 = _CalAttachmentFileCopyLocalURLForArchivedData(a2);
  if (v30)
  {
    v31 = [objc_alloc(MEMORY[0x1E6993010]) initWithURL:v30];
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (v4)
      {
        if (CPRecordGetStore())
        {
          v32 = CPRecordStoreGetContext();
          if (v32)
          {
            os_unfair_lock_assert_owner(v32 + 20);
          }
        }
      }
    }

    CPRecordSetProperty();
  }

  return v4;
}

id _CalAttachmentFileCopyLocalURLForArchivedData(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = _CalAttachmentFileGetLocalRelativePath(a1);
  if (v2)
  {
    v3 = _CalAttachmentFileGetCalendarDataContainerForAttachmentFile(a1);
    if (v3)
    {
      v4 = [MEMORY[0x1E6992F10] localURLForAttachmentWithRelativePath:v2 baseURL:v3];
      if (_CalAttachmentFileGetFlag(a1, 2))
      {
        v5 = [v4 URLByAppendingPathExtension:@"zip"];
        v6 = [MEMORY[0x1E696AC08] defaultManager];
        v7 = [v5 path];
        v8 = [v6 fileExistsAtPath:v7];

        if ((v8 & 1) == 0)
        {
          v9 = [MEMORY[0x1E696AC08] defaultManager];
          v10 = [v4 path];
          v11 = [v5 path];
          v17 = 0;
          v12 = [v9 archivePathToFile:v10 toFile:v11 createPKZipArchive:1 error:&v17];
          v13 = v17;

          if ((v12 & 1) == 0)
          {
            v14 = CDBLogHandle;
            if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v19 = v13;
              _os_log_impl(&dword_1DEBB1000, v14, OS_LOG_TYPE_ERROR, "Unable to archive data: %@", buf, 0xCu);
            }
          }
        }
      }

      else
      {
        v5 = v4;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t _CalRemoveAttachmentFile(const void *a1)
{
  DatabaseForRecord = CalGetDatabaseForRecord();

  return _CalDatabaseRemoveEntity(DatabaseForRecord, a1);
}

id _CalAttachmentFileAccountIdentifierForAttachmentFile(void *StoreWithUID)
{
  if (StoreWithUID)
  {
    _CalAttachmentFileGetStoreID(StoreWithUID);
    Store = CPRecordGetStore();
    StoreWithUID = _CalGetStoreWithUID(Store);
    if (StoreWithUID)
    {
      StoreWithUID = _CalErrorGetRecordID(StoreWithUID);
    }

    v1 = vars8;
  }

  return StoreWithUID;
}

uint64_t _CalAttachmentFileGetStoreID(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
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
  if (Property <= 0)
  {
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = _CalAttachmentFileCopyAttachments(a1);
    v5 = [(__CFArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      Property = 0;
      v7 = *v14;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v4);
          }

          Owner = _CalAttachmentGetOwner(*(*(&v13 + 1) + 8 * i));
          if (Owner)
          {
            Property = _CalCalendarItemGetStoreId(Owner);
            if (Property >= 1)
            {

              if (a1)
              {
                if (CDBLockingAssertionsEnabled)
                {
                  if (CPRecordGetStore())
                  {
                    v10 = CPRecordStoreGetContext();
                    if (v10)
                    {
                      os_unfair_lock_assert_owner(v10 + 20);
                    }
                  }
                }
              }

              CPRecordSetProperty();
              goto LABEL_26;
            }
          }
        }

        v6 = [(__CFArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    else
    {

      Property = 0;
    }

LABEL_26:
  }

  v11 = *MEMORY[0x1E69E9840];
  return Property;
}

id CalAttachmentFileCopyAttachmentContainerForStore(uint64_t a1, os_unfair_lock_s *a2)
{
  os_unfair_lock_lock(a2 + 20);
  v4 = _CalAttachmentFileCopyAttachmentContainerForStore(a1, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a2 + 20);
  }

  os_unfair_lock_unlock(a2 + 20);

  return v4;
}

id _CalAttachmentFileCopyAttachmentContainerForStore(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  _CalAttachmentFileGetAttachmentContainerURLsForStore(a1, a2, &v4, 0);
  v2 = v4;

  return v2;
}

id _CalAttachmentFileCopyAttachmentContainerForStoreProperties(void *a1, void *a2, uint64_t a3)
{
  v5 = 0;
  _CalAttachmentFileGetAttachmentContainerURLsForStoreProperties(a1, a2, a3, &v5, 0);
  v3 = v5;

  return v3;
}

void _CalAttachmentFileGetAttachmentContainerURLsForStoreProperties(void *a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v16 = a1;
  v9 = a2;
  if (a4)
  {
    *a4 = 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  v10 = _CalDatabaseGetCalendarDataContainerProvider(a3);
  v11 = v10;
  if (v10)
  {
    v12 = [v10 containerForAccountIdentifier:v16];
    v13 = v12;
    if (v12)
    {
      if (a5)
      {
        v14 = v12;
        *a5 = v13;
      }

      if (v9 && ([v9 containsString:@"/"] & 1) == 0 && (objc_msgSend(v9, "containsString:", @"..") & 1) == 0)
      {
        v15 = [MEMORY[0x1E6992F10] attachmentContainerForSourceIdentifier:v9 calendarDataContainer:v13];
        if (a4)
        {
          v15 = v15;
          *a4 = v15;
        }
      }
    }
  }
}

void _CalAttachmentFileGetAttachmentContainerURLsForStore(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v9 = _CalErrorGetRecordID(a1);
  v8 = _CalStoreCopyUUID(a1);
  _CalAttachmentFileGetAttachmentContainerURLsForStoreProperties(v9, v8, a2, a3, a4);
}

void CalAttachmentFileSetDataProtection(uint64_t a1)
{
  v1 = [MEMORY[0x1E695DFF8] fileURLWithPath:a1];
  _CalAttachmentFileSetProtectionAndQuarantineAttributes(v1);
}

void _CalAttachmentFileSetProtectionAndQuarantineAttributes(void *a1)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v20 = *MEMORY[0x1E695DAF0];
  v21[0] = *MEMORY[0x1E695DAE0];
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
  v15 = 0;
  v3 = *MEMORY[0x1E695DB78];
  v14 = 0;
  v4 = [v1 getResourceValue:&v15 forKey:v3 error:&v14];
  v5 = v15;
  v6 = v14;
  if ((v4 & 1) == 0)
  {
    v7 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v17 = v1;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&dword_1DEBB1000, v7, OS_LOG_TYPE_ERROR, "Error checking if url to be protected (%@) is a directory: %@", buf, 0x16u);
    }
  }

  if (v5 && [v5 BOOLValue])
  {
    v8 = [MEMORY[0x1E696AC08] defaultManager];
    v9 = [v8 enumeratorAtURL:v1 includingPropertiesForKeys:0 options:0 errorHandler:&__block_literal_global_84];

    v10 = [v9 nextObject];
    if (v10)
    {
      v11 = v10;
      do
      {
        _CalAttachmentFileSetAttributes(v11, v2);
        v12 = [v9 nextObject];

        v11 = v12;
      }

      while (v12);
    }
  }

  else
  {
    _CalAttachmentFileSetAttributes(v1, v2);
  }

  v13 = *MEMORY[0x1E69E9840];
}

void _CalAttachmentFileSetProtectionAndQuarantineAttributesWithFile(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x1E695DFF8] fileURLWithPath:a2];
  _CalAttachmentFileSetProtectionAndQuarantineAttributes(v2);
}

uint64_t _CalAttachmentFileSetFileData(void *a1, id a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = open([a2 fileSystemRepresentation], 0);
  if (v5 == -1)
  {
    v10 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      v11 = v10;
      v12 = *__error();
      v14[0] = 67109120;
      v14[1] = v12;
      _os_log_impl(&dword_1DEBB1000, v11, OS_LOG_TYPE_ERROR, "Error setting file data: %i", v14, 8u);
    }

    v13 = *MEMORY[0x1E69E9840];
    return 0;
  }

  else
  {
    v6 = v5;
    v7 = _CalAttachmentFileSetFileDataWithOpenFile(a1, v5);
    close(v6);
    v8 = *MEMORY[0x1E69E9840];
    return v7;
  }
}

uint64_t _CalAttachmentFileSetFileDataWithOpenFile(void *a1, int a2)
{
  v95 = *MEMORY[0x1E69E9840];
  v4 = _CalAttachmentFileGetCalendarDataContainerForAttachmentFile(a1);
  if (!v4 || ([MEMORY[0x1E6992F10] attachmentContainerWithBaseURL:v4], (v5 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v24 = 0;
    v9 = 0;
    goto LABEL_24;
  }

  v6 = v5;
  _CalAttachmentFileGetStoreID(a1);
  Store = CPRecordGetStore();
  StoreWithUID = _CalGetStoreWithUID(Store);
  v9 = _CalStoreCopyUUID(StoreWithUID);
  if (!v9)
  {
    goto LABEL_20;
  }

  v10 = CFURLCreateCopyAppendingPathComponent(0, v6, v9, 0);
  CFRelease(v9);
  if (!v10)
  {
    goto LABEL_19;
  }

  v11 = CFURLCopyFileSystemPath(v10, kCFURLPOSIXPathStyle);
  if (!v11)
  {
    goto LABEL_18;
  }

  v12 = v11;
  if ((CPFileBuildDirectoriesToPath() & 1) == 0)
  {
    v13 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v92 = v12;
      _os_log_impl(&dword_1DEBB1000, v13, OS_LOG_TYPE_ERROR, "Unable to create directories to attachment directory %{public}@", buf, 0xCu);
    }
  }

  CFRelease(v12);
  Description = _CalCalendarItemGetDescription(a1);
  v15 = CFURLCreateCopyAppendingPathComponent(0, v10, Description, 1u);
  if (!v15)
  {
LABEL_18:
    CFRelease(v10);
LABEL_19:
    v9 = 0;
LABEL_20:
    v25 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v92 = 0;
      v93 = 2112;
      *v94 = v4;
      _os_log_impl(&dword_1DEBB1000, v25, OS_LOG_TYPE_ERROR, "Could not get local url for components. local absolute url = %@, calendar data container url = %@", buf, 0x16u);
    }

    v24 = 0;
    goto LABEL_23;
  }

  v16 = v15;
  v88 = _CalAttachmentFileGetURLWrapperForPendingFileCopy(a1);
  v17 = [v88 url];
  if (v17)
  {
    v89 = v17;
  }

  else
  {
    v80 = _CalAttachmentFileCopyFilename(a1);
    if (!v80 || (v81 = v80, v82 = CFURLCreateWithFileSystemPath(0, v80, kCFURLPOSIXPathStyle, 0), CFRelease(v81), !v82))
    {
      v89 = 0;
      goto LABEL_82;
    }

    v89 = v82;
  }

  v18 = _CalAttachmentFileCopyFilename(a1);
  v19 = v18;
  if ([(__CFString *)v18 length]>= 0x101)
  {
    v20 = [(__CFString *)v18 rangeOfComposedCharacterSequenceAtIndex:[(__CFString *)v18 length]- 256];
    v19 = [(__CFString *)v18 substringFromIndex:v20 + v21];
  }

  pathComponent = Description;
  v22 = [v19 stringByReplacingOccurrencesOfString:@"/" withString:@"_"];

  if ([(__CFString *)v22 hasPrefix:@"."])
  {
    do
    {
      v23 = [(__CFString *)v22 substringFromIndex:1];

      v22 = v23;
    }

    while (([(__CFString *)v23 hasPrefix:@"."]& 1) != 0);
  }

  else
  {
    v23 = v22;
  }

  if (v23 && [(__CFString *)v23 length])
  {
    v75 = CFURLCreateCopyAppendingPathComponent(0, v16, v23, 0);
    if (v75)
    {
      v76 = v75;
      v9 = CFURLCopyFileSystemPath(v75, kCFURLPOSIXPathStyle);
      CFRelease(v76);
      goto LABEL_75;
    }
  }

  else
  {
    v77 = CFURLCreateCopyAppendingPathComponent(0, v16, Description, 0);
    if (v77)
    {
      v78 = v77;
      v79 = [v89 pathExtension];
      if (!v79 || (v9 = CFURLCreateCopyAppendingPathExtension(0, v78, v79), CFRelease(v78), (v78 = v9) != 0))
      {
        v9 = CFURLCopyFileSystemPath(v78, kCFURLPOSIXPathStyle);
        CFRelease(v78);
      }

      Description = pathComponent;
LABEL_75:

      if (v9)
      {
        goto LABEL_84;
      }

      goto LABEL_82;
    }
  }

LABEL_82:
  v83 = CFURLCreateCopyAppendingPathComponent(0, v16, Description, 0);
  v9 = CFURLCopyFileSystemPath(v16, kCFURLPOSIXPathStyle);
  if (v83)
  {
    CFRelease(v83);
  }

LABEL_84:
  CFRelease(v16);

  CFRelease(v10);
  if (!v9)
  {
    goto LABEL_20;
  }

  v84 = [MEMORY[0x1E695DFF8] fileURLWithPath:v9];
  if (!v84)
  {
    goto LABEL_20;
  }

  v85 = v84;
  v24 = [MEMORY[0x1E6992F10] localRelativePathForLocalAbsoluteURL:v84 localBaseURL:v4];
  v86 = v24;

LABEL_23:
  CFRelease(v6);
LABEL_24:

  v26 = v24;
  if (v9)
  {
    v27 = [MEMORY[0x1E696AC08] defaultManager];
    v28 = [(__CFString *)v9 stringByDeletingLastPathComponent];
    [v27 createDirectoryAtPath:v28 withIntermediateDirectories:1 attributes:0 error:0];

    Flag = _CalAttachmentFileGetFlag(a1, 2);
    v30 = v9;
    v31 = v30;
    v32 = v30;
    if (Flag)
    {
      v32 = [(__CFString *)v30 stringByAppendingPathExtension:@"zip"];
    }

    v33 = open([(__CFString *)v32 fileSystemRepresentation], 1537, 384);
    if (v33 == -1)
    {
      v50 = CDBLogHandle;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
      {
        v51 = v50;
        ID = CPRecordGetID();
        *buf = 67109120;
        LODWORD(v92) = ID;
        _os_log_impl(&dword_1DEBB1000, v51, OS_LOG_TYPE_ERROR, "Couldn't create a local file for the attachment file %d", buf, 8u);
      }

      goto LABEL_43;
    }

    v34 = v33;
    if (lseek(a2, 0, 0) == -1)
    {
      v35 = CDBLogHandle;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
      {
        v36 = v35;
        v37 = *__error();
        *buf = 67109120;
        LODWORD(v92) = v37;
        _os_log_impl(&dword_1DEBB1000, v36, OS_LOG_TYPE_ERROR, "Couldn't rewind file to be copied: %i", buf, 8u);
      }
    }

    v38 = fcopyfile(a2, v34, 0, 0x100000Fu);
    if (close(v34))
    {
      v39 = CDBLogHandle;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
      {
        v40 = v39;
        v41 = *__error();
        *buf = 67109120;
        LODWORD(v92) = v41;
        _os_log_impl(&dword_1DEBB1000, v40, OS_LOG_TYPE_ERROR, "Failed to close target file following copy: %i", buf, 8u);
      }
    }

    if (v38)
    {
      v42 = CDBLogHandle;
      if (!os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
      {
LABEL_43:
        v49 = 0;
LABEL_44:

        goto LABEL_45;
      }

      *buf = 0;
      v43 = "Copy failed";
      v44 = v42;
      v45 = 2;
LABEL_37:
      _os_log_impl(&dword_1DEBB1000, v44, OS_LOG_TYPE_ERROR, v43, buf, v45);
      goto LABEL_43;
    }

    if (Flag)
    {
      v55 = [(__CFString *)v31 stringByDeletingLastPathComponent];
      v56 = UnzipArchive();

      if ((v56 & 1) == 0)
      {
        v74 = CDBLogHandle;
        if (!os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_43;
        }

        *buf = 138412290;
        v92 = 0;
        v43 = "Failed to unzip attachment (error: %@).";
        v44 = v74;
        v45 = 12;
        goto LABEL_37;
      }
    }

    v57 = CFURLCreateWithFileSystemPath(0, v31, kCFURLPOSIXPathStyle, 0);
    v58 = v57;
    if (v26 && v57)
    {
      _CalAttachmentFileSetLocalRelativePath(a1);
      v59 = CDBLogHandle;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_INFO))
      {
        v60 = v59;
        v61 = _CalCalendarItemGetDescription(a1);
        *buf = 138543874;
        v92 = v61;
        v93 = 2112;
        *v94 = v26;
        *&v94[8] = 2112;
        *&v94[10] = v58;
        _os_log_impl(&dword_1DEBB1000, v60, OS_LOG_TYPE_INFO, "Set local relative path for attachment. file UUID = %{public}@, local relative path = %@, local absolute url = %@", buf, 0x20u);
      }
    }

    else
    {
      v62 = CDBLogHandle;
      v63 = os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR);
      if (v63)
      {
        v64 = v62;
        v65 = _CalCalendarItemGetDescription(a1);
        *buf = 138543874;
        v92 = v65;
        v93 = 2112;
        *v94 = v26;
        *&v94[8] = 2112;
        *&v94[10] = v58;
        _os_log_impl(&dword_1DEBB1000, v64, OS_LOG_TYPE_ERROR, "Could not set local relative path for attachment. file UUID = %{public}@, local relative path = %@, local absolute url = %@", buf, 0x20u);
      }

      if (!v58)
      {
        goto LABEL_56;
      }
    }

    CFRelease(v58);
LABEL_56:
    _CalAttachmentFileSetProtectionAndQuarantineAttributesWithFile(v63, v31);
    if (v31 != v32)
    {
      _CalAttachmentFileSetProtectionAndQuarantineAttributesWithFile(v66, v32);
    }

    v67 = v32;
    v68 = [MEMORY[0x1E696AC08] defaultManager];
    v90 = 0;
    v69 = [MEMORY[0x1E6992F10] getFileSizeForPath:v67 fileManager:v68 error:&v90];
    v70 = v90;
    if (v69)
    {
      _CalAttachmentFileSetFileSize(a1);
    }

    else
    {
      v71 = CDBLogHandle;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
      {
        v72 = v71;
        v73 = CPRecordGetID();
        *buf = 138412802;
        v92 = v70;
        v93 = 1024;
        *v94 = v73;
        *&v94[4] = 2112;
        *&v94[6] = v67;
        _os_log_impl(&dword_1DEBB1000, v72, OS_LOG_TYPE_ERROR, "Could not set file size for attachment. error = %@, file uid = %d, local absolute path = %@", buf, 0x1Cu);
      }
    }

    v49 = 1;
    goto LABEL_44;
  }

  v46 = CDBLogHandle;
  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
  {
    v47 = v46;
    v48 = CPRecordGetID();
    *buf = 67109120;
    LODWORD(v92) = v48;
    _os_log_impl(&dword_1DEBB1000, v47, OS_LOG_TYPE_ERROR, "Couldn't create a local attachment path for the attachment file %d", buf, 8u);
  }

  v49 = 0;
LABEL_45:

  v53 = *MEMORY[0x1E69E9840];
  return v49;
}

uint64_t CalAttachmentFileSetFileData(void *a1, void *a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  v5 = _CalAttachmentFileSetFileData(a1, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v5;
}

uint64_t CalAttachmentFileCopyLocalURL(void *a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  v3 = _CalAttachmentFileCopyLocalURL(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v3;
}

uint64_t _CalAttachmentFileCopyLocalURL(void *a1)
{
  v2 = _CalAttachmentFileGetLocalRelativePath(a1);
  if (v2)
  {
    v3 = _CalAttachmentFileGetCalendarDataContainerForAttachmentFile(a1);
    if (v3)
    {
      v4 = [MEMORY[0x1E6992F10] localURLForAttachmentWithRelativePath:v2 baseURL:v3];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void *_CalAttachmentFileGetLocalRelativePath(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
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
  if (Property && (_CalAttachmentFileValidateLocalRelativePath(a1, Property) & 1) == 0)
  {
    v4 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = Property;
      _os_log_impl(&dword_1DEBB1000, v4, OS_LOG_TYPE_ERROR, "Attachment file path (%@) is invalid", &v7, 0xCu);
    }

    Property = 0;
  }

  v5 = *MEMORY[0x1E69E9840];
  return Property;
}

id _CalAttachmentFileGetCalendarDataContainerForAttachmentFile(void *a1)
{
  v2 = CalCopyDatabaseForEntity(a1);
  if (v2)
  {
    v3 = v2;
    v4 = _CalDatabaseGetCalendarDataContainerProvider(v2);
    CFRelease(v3);
    if (v4)
    {
      v5 = _CalAttachmentFileAccountIdentifierForAttachmentFile(a1);
      v6 = [v4 containerForAccountIdentifier:v5];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id CalAttachmentFileCopyURLAppropriateForFile(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  Store = _CalAttachmentFileGetStore(a1);
  DatabaseForRecord = CalGetDatabaseForRecord();
  v8 = 0;
  _CalAttachmentFileGetAttachmentContainerURLsForStore(Store, DatabaseForRecord, &v8, 0);
  v5 = v8;
  if (v5)
  {
    v6 = [MEMORY[0x1E696AC08] defaultManager];
    [v6 createDirectoryAtURL:v5 withIntermediateDirectories:1 attributes:0 error:0];
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v5;
}

uint64_t _CalAttachmentFileGetStore(uint64_t a1)
{
  if (_CalAttachmentFileGetStoreID(a1) < 1)
  {
    return 0;
  }

  Store = CPRecordGetStore();

  return _CalGetStoreWithUID(Store);
}

void _CalAttachmentFileMigrateAttachmentsInStoreFromOldPersistentIDToNewPersistentID(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v50 = *MEMORY[0x1E69E9840];
  DatabaseForRecord = CalGetDatabaseForRecord();
  v7 = _CalDatabaseGetCalendarDataContainerProvider(DatabaseForRecord);
  v8 = _CalErrorGetRecordID(a1);
  v9 = [v7 containerForAccountIdentifier:v8];
  v10 = [MEMORY[0x1E6992F10] attachmentContainerWithBaseURL:v9];
  v11 = v10;
  if (v10)
  {
    v44 = DatabaseForRecord;
    v45 = v8;
    v46 = v7;
    v12 = [v10 URLByAppendingPathComponent:a2];
    v13 = [MEMORY[0x1E696AC08] defaultManager];
    v14 = [v12 path];
    v15 = [v13 fileExistsAtPath:v14];

    v16 = v12;
    if (v15)
    {
      v43 = v9;
      v17 = [v11 URLByAppendingPathComponent:a3];
      v47 = 0;
      v18 = [v13 moveItemAtURL:v12 toURL:v17 error:&v47];
      v19 = v47;
      if (v18)
      {
        v42 = v13;
        v20 = [MEMORY[0x1E6992F10] localRelativePathForLocalAbsoluteURL:v16 localBaseURL:v43];
        v21 = [MEMORY[0x1E6992F10] localRelativePathForLocalAbsoluteURL:v17 localBaseURL:v43];
        RecordStore = _CalDatabaseGetRecordStore(v44);
        v23 = RecordStore;
        if (CDBLockingAssertionsEnabled == 1)
        {
          if (RecordStore)
          {
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
              v26 = CPRecordStoreGetContext();
              if (v26)
              {
                os_unfair_lock_assert_owner(v26 + 20);
              }
            }
          }
        }

        v27 = CPSqliteDatabaseConnectionForWritingWithSqlite3OpenFlags();
        v28 = v20;
        if (v27)
        {
          if (CDBLockingAssertionsEnabled == 1)
          {
            if (*v27)
            {
              if (*(*v27 + 104))
              {
                v29 = CPRecordStoreGetContext();
                if (v29)
                {
                  os_unfair_lock_assert_owner(v29 + 20);
                }
              }
            }
          }

          v30 = CPSqliteConnectionStatementForSQL();
          if (v30)
          {
            v31 = v30;
            v32 = v21;
            sqlite3_bind_text(*(v30 + 8), 1, [v21 UTF8String], -1, 0);
            sqlite3_bind_int64(*(v31 + 8), 2, [v28 length] + 1);
            v33 = *(v31 + 8);
            if (CDBLockingAssertionsEnabled == 1)
            {
              if (v23)
              {
                v34 = CPRecordStoreGetContext();
                if (v34)
                {
                  os_unfair_lock_assert_owner(v34 + 20);
                }
              }
            }

            CPRecordGetID();
            RowidForRecordID = CPRecordStoreGetRowidForRecordID();
            sqlite3_bind_int64(v33, 3, RowidForRecordID);
            sqlite3_bind_int64(*(v31 + 8), 4, [v28 length]);
            sqlite3_bind_text(*(v31 + 8), 5, [v28 UTF8String], -1, 0);
            _CalDatabasePerformStatementWithWriteLock(v44, v31);
            if (CDBLockingAssertionsEnabled == 1)
            {
              if (*v31)
              {
                v36 = **v31;
                if (v36)
                {
                  if (*(v36 + 104))
                  {
                    v37 = CPRecordStoreGetContext();
                    if (v37)
                    {
                      os_unfair_lock_assert_owner(v37 + 20);
                    }
                  }
                }
              }
            }

            CPSqliteStatementReset();
            v21 = v32;
          }
        }

        v13 = v42;
      }

      else
      {
        v40 = CDBLogHandle;
        if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543874;
          *v49 = a2;
          *&v49[8] = 2114;
          *&v49[10] = a3;
          *&v49[18] = 2112;
          *&v49[20] = v19;
          _os_log_impl(&dword_1DEBB1000, v40, OS_LOG_TYPE_ERROR, "Couldn't rename attachment directory from %{public}@ to %{public}@: %@", buf, 0x20u);
        }
      }

      v9 = v43;
    }

    v8 = v45;
    v7 = v46;
  }

  else
  {
    v38 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      v39 = v38;
      *buf = 67109634;
      *v49 = CPRecordGetID();
      *&v49[4] = 2114;
      *&v49[6] = a2;
      *&v49[14] = 2114;
      *&v49[16] = a3;
      _os_log_impl(&dword_1DEBB1000, v39, OS_LOG_TYPE_ERROR, "Changing store uid %d persistent id from %{public}@ to %{public}@: couldn't get attachment base URL, so won't migrate any attachments.", buf, 0x1Cu);
    }
  }

  v41 = *MEMORY[0x1E69E9840];
}

uint64_t CalDatabaseDeleteOrphanedAttachmentsInDirectory(void *a1, void *a2, uint64_t a3)
{
  v81[1] = *MEMORY[0x1E69E9840];
  v4 = a1;
  v60 = a2;
  v5 = 0x1E696A000uLL;
  v6 = [MEMORY[0x1E696AC08] defaultManager];
  v7 = [v4 path];
  v8 = [v6 fileExistsAtPath:v7];

  if (!v8)
  {
    v44 = 1;
    v15 = v60;
    goto LABEL_50;
  }

  v9 = [MEMORY[0x1E696AC08] defaultManager];
  v64 = *MEMORY[0x1E695DB78];
  v81[0] = *MEMORY[0x1E695DB78];
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v81 count:1];
  v11 = [v9 enumeratorAtURL:v4 includingPropertiesForKeys:v10 options:1 errorHandler:&__block_literal_global_9];

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v72 objects:v80 count:16];
  v61 = v12;
  if (!v13)
  {

    v15 = v60;
    goto LABEL_42;
  }

  v14 = v13;
  v55 = v4;
  v63 = *v73;
  v56 = *MEMORY[0x1E695DAA8];
  v62 = 1;
  v15 = v60;
  do
  {
    for (i = 0; i != v14; ++i)
    {
      if (*v73 != v63)
      {
        objc_enumerationMutation(v12);
      }

      v17 = *(*(&v72 + 1) + 8 * i);
      v18 = [MEMORY[0x1E6992F10] localRelativePathForLocalAbsoluteURL:v17 localBaseURL:{v15, v55}];
      v19 = CalDatabaseCopyAttachmentFileInStoreWithLocalPath();
      v70 = 0;
      v71 = 0;
      v20 = [v17 getResourceValue:&v71 forKey:v64 error:&v70];
      v21 = v71;
      v22 = v70;
      if (v20)
      {
        if ([v21 BOOLValue])
        {
          if (!v19)
          {
            v62 &= CalDatabaseDeleteOrphanedAttachmentsInDirectory(v17, v15, a3);
            goto LABEL_36;
          }

LABEL_16:
          CFRelease(v19);
          v62 = 0;
          goto LABEL_36;
        }

        if (v19)
        {
          goto LABEL_16;
        }

        v24 = [v17 pathExtension];
        v25 = [v24 lowercaseString];
        v26 = [v25 isEqualToString:@"zip"];

        if (!v26)
        {
          goto LABEL_29;
        }

        v27 = MEMORY[0x1E6992F10];
        v28 = [v17 URLByDeletingPathExtension];
        v29 = [v27 localRelativePathForLocalAbsoluteURL:v28 localBaseURL:v15];

        v30 = CalDatabaseCopyAttachmentFileInStoreWithLocalPath();
        if (!v30)
        {
          goto LABEL_28;
        }

        v31 = v30;
        if (!CalAttachmentFileIsAutoArchived(v30))
        {
          goto LABEL_27;
        }

        v68 = 0;
        v69 = 0;
        loga = [v17 getResourceValue:&v69 forKey:v56 error:&v68];
        v32 = v69;
        v59 = v68;
        if (!loga)
        {
          log = CDBLogHandle;
          if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v77 = v17;
            v78 = 2112;
            v79 = v59;
            _os_log_impl(&dword_1DEBB1000, log, OS_LOG_TYPE_ERROR, "Error checking creation date for %@: %@", buf, 0x16u);
          }

LABEL_27:
          CFRelease(v31);
LABEL_28:

LABEL_29:
          v36 = [MEMORY[0x1E696AC08] defaultManager];
          v67 = 0;
          v37 = [v36 removeItemAtURL:v17 error:&v67];
          v38 = v67;

          v39 = CDBLogHandle;
          if (v37)
          {
            v12 = v61;
            if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v77 = v17;
              v40 = v39;
              v41 = OS_LOG_TYPE_DEFAULT;
              v42 = "Attachment cleanup: removed orphaned file %@";
              v43 = 12;
              goto LABEL_34;
            }
          }

          else
          {
            v12 = v61;
            if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v77 = v17;
              v78 = 2112;
              v79 = v38;
              v40 = v39;
              v41 = OS_LOG_TYPE_ERROR;
              v42 = "Attachment cleanup: failed to remove orphaned file %@: %@";
              v43 = 22;
LABEL_34:
              _os_log_impl(&dword_1DEBB1000, v40, v41, v42, buf, v43);
            }
          }

          v15 = v60;
          goto LABEL_36;
        }

        [v32 timeIntervalSinceNow];
        v34 = fabs(v33);

        CFRelease(v31);
        if (v34 >= 86400.0)
        {
          goto LABEL_29;
        }

        v35 = CDBLogHandle;
        v12 = v61;
        if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v77 = v17;
          _os_log_impl(&dword_1DEBB1000, v35, OS_LOG_TYPE_DEFAULT, "Attachment cleanup: skipping removing file because it is archived and is too young: %@", buf, 0xCu);
        }
      }

      else
      {
        v23 = CDBLogHandle;
        if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v77 = v17;
          v78 = 2112;
          v79 = v22;
          _os_log_impl(&dword_1DEBB1000, v23, OS_LOG_TYPE_ERROR, "Error checking if %@ is a directory: %@", buf, 0x16u);
        }

        if (v19)
        {
          CFRelease(v19);
        }
      }

LABEL_36:
    }

    v14 = [v12 countByEnumeratingWithState:&v72 objects:v80 count:16];
  }

  while (v14);

  v4 = v55;
  v5 = 0x1E696A000;
  if ((v62 & 1) == 0)
  {
    v44 = 0;
    goto LABEL_49;
  }

LABEL_42:
  v45 = [*(v5 + 3080) defaultManager];
  v66 = 0;
  v46 = [v45 removeItemAtURL:v4 error:&v66];
  v47 = v66;

  v48 = CDBLogHandle;
  if (v46)
  {
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v77 = v4;
      v49 = "Attachment cleanup: removed empty directory %@";
      v50 = v48;
      v51 = OS_LOG_TYPE_DEFAULT;
      v52 = 12;
      goto LABEL_47;
    }
  }

  else if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v77 = v4;
    v78 = 2112;
    v79 = v47;
    v49 = "Attachment cleanup: failed to remove empty store directory %@: %@";
    v50 = v48;
    v51 = OS_LOG_TYPE_ERROR;
    v52 = 22;
LABEL_47:
    _os_log_impl(&dword_1DEBB1000, v50, v51, v49, buf, v52);
  }

  v44 = 1;
  v12 = v61;
LABEL_49:

LABEL_50:
  v53 = *MEMORY[0x1E69E9840];
  return v44;
}

uint64_t __CalDatabaseDeleteOrphanedAttachmentsInDirectory_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v6 = CDBLogHandle;
  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
  {
    v9 = 138412546;
    v10 = v4;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_1DEBB1000, v6, OS_LOG_TYPE_ERROR, "Attachment cleanup: Ignoring error for url %@: %@", &v9, 0x16u);
  }

  v7 = *MEMORY[0x1E69E9840];
  return 1;
}

CFTypeRef CalDatabaseCopyAttachmentFileInStoreWithLocalPath()
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  DatabaseForRecord = CalGetDatabaseForRecord();
  RecordStore = _CalDatabaseGetRecordStore(DatabaseForRecord);
  CPRecordGetID();
  if (CDBLockingAssertionsEnabled == 1 && RecordStore != 0)
  {
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      os_unfair_lock_assert_owner(Context + 20);
    }
  }

  v5 = CPRecordStoreCopyAllInstancesOfClassWhereWithBindBlock();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  if (!v5)
  {
    return 0;
  }

  if (CFArrayGetCount(v5) < 1)
  {
    v7 = 0;
  }

  else
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v5, 0);
    v7 = CFRetain(ValueAtIndex);
  }

  CFRelease(v5);
  return v7;
}

BOOL CalAttachmentFileIsAutoArchived(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  Flag = _CalAttachmentFileGetFlag(a1, 2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return Flag;
}

void CalDatabaseCleanUpOrphanedLocalAttachments(os_unfair_lock_s *a1)
{
  v79 = *MEMORY[0x1E69E9840];
  v2 = CalDatabaseCopyOfAllStores(a1);
  if (v2)
  {
    v3 = v2;
    v4 = objc_opt_new();
    v55 = objc_opt_new();
    Count = CFArrayGetCount(v3);
    if (Count >= 1)
    {
      v6 = Count;
      v7 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v3, v7);
        v9 = CalStoreCopyUUID(ValueAtIndex);
        if (!v9)
        {
          break;
        }

        v10 = v9;
        [v55 addObject:v9];
        v72 = 0;
        v73 = 0;
        os_unfair_lock_lock(a1 + 20);
        _CalAttachmentFileGetAttachmentContainerURLsForStore(ValueAtIndex, a1, &v73, &v72);
        if (CDBLockingAssertionsEnabled == 1)
        {
          os_unfair_lock_assert_owner(a1 + 20);
        }

        os_unfair_lock_unlock(a1 + 20);
        v11 = v73;
        v12 = v72;
        if (v12 && v11)
        {
          [v4 addObject:v12];
          CalDatabaseDeleteOrphanedAttachmentsInDirectory(v11, v12, ValueAtIndex);
        }

        else
        {
          v13 = CDBLogHandle;
          if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
          {
            loga = v13;
            v14 = v6;
            v15 = v3;
            v16 = v4;
            UID = CalStoreGetUID();
            v18 = CalStoreCopyName(ValueAtIndex);
            *buf = 67109378;
            *v75 = UID;
            v4 = v16;
            v3 = v15;
            v6 = v14;
            *&v75[4] = 2112;
            *&v75[6] = v18;
            _os_log_impl(&dword_1DEBB1000, loga, OS_LOG_TYPE_ERROR, "Attachment cleanup: Unable to get URLs for store %d (%@). Skipping cleanup for it", buf, 0x12u);
          }
        }

        if (v6 == ++v7)
        {
          goto LABEL_18;
        }
      }

      v19 = CDBLogHandle;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
      {
        v20 = v19;
        v21 = CalStoreGetUID();
        v22 = CalStoreCopyName(ValueAtIndex);
        *buf = 67109378;
        *v75 = v21;
        *&v75[4] = 2112;
        *&v75[6] = v22;
        _os_log_impl(&dword_1DEBB1000, v20, OS_LOG_TYPE_ERROR, "Attachment cleanup: Unable to get persistent ID for store %d (%@). Aborting cleanup.", buf, 0x12u);
      }

      v55 = 0;
      v4 = 0;
    }

LABEL_18:
    CFRelease(v3);
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    obj = v4;
    v52 = [obj countByEnumeratingWithState:&v68 objects:v78 count:16];
    if (!v52)
    {
      goto LABEL_48;
    }

    v51 = *v69;
    v23 = *MEMORY[0x1E695DB78];
    v56 = *MEMORY[0x1E695DC30];
    v57 = *MEMORY[0x1E695DB78];
LABEL_20:
    v24 = 0;
    while (1)
    {
      if (*v69 != v51)
      {
        objc_enumerationMutation(obj);
      }

      v54 = v24;
      v25 = [MEMORY[0x1E6992F10] attachmentContainerWithBaseURL:*(*(&v68 + 1) + 8 * v24)];
      v26 = [MEMORY[0x1E696AC08] defaultManager];
      v77[0] = v23;
      v77[1] = v56;
      v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v77 count:2];
      v53 = v25;
      v28 = [v26 enumeratorAtURL:v25 includingPropertiesForKeys:v27 options:1 errorHandler:&__block_literal_global_14];

      v23 = v57;
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      log = v28;
      v29 = [log countByEnumeratingWithState:&v64 objects:v76 count:16];
      if (v29)
      {
        break;
      }

LABEL_46:

      v24 = v54 + 1;
      if (v54 + 1 == v52)
      {
        v52 = [obj countByEnumeratingWithState:&v68 objects:v78 count:16];
        if (!v52)
        {
LABEL_48:

          goto LABEL_49;
        }

        goto LABEL_20;
      }
    }

    v30 = v29;
    v31 = *v65;
LABEL_25:
    v32 = 0;
    while (1)
    {
      if (*v65 != v31)
      {
        objc_enumerationMutation(log);
      }

      v33 = *(*(&v64 + 1) + 8 * v32);
      v62 = 0;
      v63 = 0;
      v34 = [v33 getResourceValue:&v63 forKey:v23 error:&v62];
      v35 = v63;
      v36 = v62;
      if ((v34 & 1) == 0)
      {
        v47 = CDBLogHandle;
        if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          *v75 = v33;
          *&v75[8] = 2112;
          *&v75[10] = v36;
          _os_log_impl(&dword_1DEBB1000, v47, OS_LOG_TYPE_ERROR, "Error checking if %@ is a directory: %@", buf, 0x16u);
        }

        goto LABEL_44;
      }

      if ([v35 BOOLValue])
      {
        break;
      }

LABEL_44:

      if (v30 == ++v32)
      {
        v30 = [log countByEnumeratingWithState:&v64 objects:v76 count:16];
        if (!v30)
        {
          goto LABEL_46;
        }

        goto LABEL_25;
      }
    }

    v61 = 0;
    v37 = [v33 getResourceValue:&v61 forKey:v56 error:0];
    v38 = v61;
    if ((v37 & 1) == 0)
    {
      v48 = CDBLogHandle;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        *v75 = v33;
        *&v75[8] = 2112;
        *&v75[10] = v36;
        _os_log_impl(&dword_1DEBB1000, v48, OS_LOG_TYPE_ERROR, "Error getting name of %@: %@", buf, 0x16u);
      }

      goto LABEL_43;
    }

    if ([v55 containsObject:v38])
    {
LABEL_43:

      v23 = v57;
      goto LABEL_44;
    }

    v39 = [MEMORY[0x1E696AC08] defaultManager];
    v60 = v36;
    v40 = [v39 removeItemAtURL:v33 error:&v60];
    v41 = v60;

    v42 = CDBLogHandle;
    v43 = os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR);
    if (v40)
    {
      if (v43)
      {
        *buf = 138412290;
        *v75 = v33;
        v44 = v42;
        v45 = "Attachment cleanup: found and removed orphaned store directory %@";
        v46 = 12;
LABEL_41:
        _os_log_impl(&dword_1DEBB1000, v44, OS_LOG_TYPE_ERROR, v45, buf, v46);
        v36 = v41;
        goto LABEL_43;
      }
    }

    else if (v43)
    {
      *buf = 138412546;
      *v75 = v33;
      *&v75[8] = 2112;
      *&v75[10] = v41;
      v44 = v42;
      v45 = "Attachment cleanup: failed to remove orphaned store directory %@: %@";
      v46 = 22;
      goto LABEL_41;
    }

    v36 = v41;
    goto LABEL_43;
  }

LABEL_49:
  v49 = *MEMORY[0x1E69E9840];
}

uint64_t __CalDatabaseCleanUpOrphanedLocalAttachments_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v6 = CDBLogHandle;
  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
  {
    v9 = 138412546;
    v10 = v4;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_1DEBB1000, v6, OS_LOG_TYPE_ERROR, "Attachment cleanup: Ignoring error for url %@: %@", &v9, 0x16u);
  }

  v7 = *MEMORY[0x1E69E9840];
  return 1;
}

CFMutableArrayRef _CalAttachmentFileCopyAttachments(uint64_t a1)
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

  result = CPRecordGetProperty();
  if (result)
  {

    return CalToManyRelationCopyObjects(result);
  }

  return result;
}

const __CFArray *_CalAttachmentFileAddAttachment(uint64_t a1, void *a2)
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

  result = CPRecordGetProperty();
  if (result)
  {

    return CalToManyRelationAddObject(result, a2);
  }

  return result;
}

uint64_t _CalAttachmentFileRemoveAttachment(uint64_t a1, void *a2)
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

  result = CPRecordGetProperty();
  if (result)
  {

    return CalToManyRelationRemoveObject(result, a2);
  }

  return result;
}

CFMutableArrayRef CalAttachmentFileCopyAttachments(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  v3 = _CalAttachmentFileCopyAttachments(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v3;
}

void CalAttachmentFileAddAttachment(uint64_t a1, void *a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalAttachmentFileAddAttachment(a1, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

void CalAttachmentFileRemoveAttachment(uint64_t a1, void *a2)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalAttachmentFileRemoveAttachment(a1, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t _CalAttachmentFileHasValidParent(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = _CalAttachmentFileCopyAttachments(a1);
  v2 = [(__CFArray *)v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = *v8;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v8 != v3)
        {
          objc_enumerationMutation(v1);
        }

        if (_CalAttachmentHasValidParent(*(*(&v7 + 1) + 8 * i)))
        {
          v2 = 1;
          goto LABEL_11;
        }
      }

      v2 = [(__CFArray *)v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v5 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t _CalAttachmentFileSaveAddedRecords(uint64_t a1)
{
  RecordStore = _CalDatabaseGetRecordStore(a1);
  if (CDBLockingAssertionsEnabled == 1 && RecordStore != 0)
  {
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      os_unfair_lock_assert_owner(Context + 20);
    }
  }

  CPRecordStoreProcessAddedRecordsOfClassWithPolicyAndTransactionType();
  return 0;
}

uint64_t _CalAttachmentFileGetWithUID(uint64_t a1)
{
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      Context = CPRecordStoreGetContext();
      if (Context)
      {
        os_unfair_lock_assert_owner(Context + 20);
      }
    }
  }

  return CPRecordStoreGetInstanceOfClassWithUID();
}

uint64_t CalDatabaseCopyAttachmentFileInStoreWithURL(uint64_t a1, const __CFURL *a2)
{
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v3 = CalCopyDatabaseForRecord();
  os_unfair_lock_lock(v3 + 20);
  RecordStore = _CalDatabaseGetRecordStore(v3);
  v5 = RecordStore;
  if (CDBLockingAssertionsEnabled == 1 && RecordStore != 0)
  {
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      os_unfair_lock_assert_owner(Context + 20);
    }
  }

  CPRecordGetID();
  RowidForRecordID = CPRecordStoreGetRowidForRecordID();
  v9 = CFURLGetString(a2);
  if (CDBLockingAssertionsEnabled == 1 && v5 != 0)
  {
    v11 = CPRecordStoreGetContext();
    if (v11)
    {
      os_unfair_lock_assert_owner(v11 + 20);
    }
  }

  v22 = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = __CalDatabaseCopyAttachmentFileInStoreWithURL_block_invoke;
  v25 = &unk_1E86895B8;
  v27 = RowidForRecordID;
  v12 = v9;
  v26 = v12;
  v13 = CPRecordStoreCopyAllInstancesOfClassWhereWithBindBlock();

  if (v13)
  {
    if (CFArrayGetCount(v13) >= 1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v13, 0);
      v15 = CFRetain(ValueAtIndex);
      v29[3] = v15;
    }

    CFRelease(v13);
  }

  if (!v29[3])
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __CalDatabaseCopyAttachmentFileInStoreWithURL_block_invoke_2;
    v18[3] = &unk_1E868A640;
    v19 = v12;
    v20 = &v28;
    v21 = RowidForRecordID;
    _CalDatabaseEnumerateAddedEntitiesOfType(v3, 25, v18);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(v3 + 20);
  }

  os_unfair_lock_unlock(v3 + 20);
  CFRelease(v3);
  v16 = v29[3];

  _Block_object_dispose(&v28, 8);
  return v16;
}

uint64_t __CalDatabaseCopyAttachmentFileInStoreWithURL_block_invoke(uint64_t a1, uint64_t a2)
{
  sqlite3_bind_int64(*(a2 + 8), 1, *(a1 + 40));
  v4 = *(a2 + 8);
  v5 = [*(a1 + 32) UTF8String];

  return sqlite3_bind_text(v4, 2, v5, -1, 0);
}

uint64_t __CalDatabaseCopyAttachmentFileInStoreWithURL_block_invoke_2(uint64_t a1, const void *a2, _BYTE *a3)
{
  if (a2)
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

  StoreID = CPRecordGetProperty();
  v8 = StoreID;
  if (StoreID)
  {
    v10 = StoreID;
    StoreID = [*(a1 + 32) isEqualToString:StoreID];
    v8 = v10;
    if (StoreID)
    {
      StoreID = _CalAttachmentFileGetStoreID(a2);
      v8 = v10;
      if (*(a1 + 48) == StoreID)
      {
        StoreID = CFRetain(a2);
        v8 = v10;
        *(*(*(a1 + 40) + 8) + 24) = StoreID;
        *a3 = 1;
      }
    }
  }

  return MEMORY[0x1EEE66BB8](StoreID, v8);
}

uint64_t _CalDatabaseGetAttachmentFileWithUUID(uint64_t a1, uint64_t a2)
{
  RecordStore = _CalDatabaseGetRecordStore(a1);
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  if (CDBLockingAssertionsEnabled == 1 && RecordStore != 0)
  {
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      os_unfair_lock_assert_owner(Context + 20);
    }
  }

  v12[6] = MEMORY[0x1E69E9820];
  v12[7] = 3221225472;
  v12[8] = ___CalDatabaseGetAttachmentFileWithUUID_block_invoke;
  v12[9] = &__block_descriptor_40_e66_v16__0__CPSqliteStatement___CPSqliteConnection___sqlite3_stmt_dB_8l;
  v12[10] = a2;
  v7 = CPRecordStoreCopyAllInstancesOfClassWhereWithBindBlock();
  v8 = v7;
  if (v7)
  {
    if (CFArrayGetCount(v7) >= 1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v8, 0);
      v14[3] = ValueAtIndex;
    }

    CFRelease(v8);
  }

  v10 = v14[3];
  if (!v10)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = ___CalDatabaseGetAttachmentFileWithUUID_block_invoke_2;
    v12[3] = &unk_1E868A668;
    v12[4] = &v13;
    v12[5] = a2;
    _CalDatabaseEnumerateAddedEntitiesOfType(a1, 25, v12);
    v10 = v14[3];
  }

  _Block_object_dispose(&v13, 8);
  return v10;
}

CFTypeRef CalDatabaseCopyAttachmentFileWithUUID(os_unfair_lock_s *a1, uint64_t a2)
{
  os_unfair_lock_lock(a1 + 20);
  AttachmentFileWithUUID = _CalDatabaseGetAttachmentFileWithUUID(a1, a2);
  if (AttachmentFileWithUUID)
  {
    v5 = CFRetain(AttachmentFileWithUUID);
  }

  else
  {
    v5 = 0;
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  return v5;
}

uint64_t CalDatabaseCopyAttachmentFileWithExternalIDInStore(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 20);
  RecordStore = _CalDatabaseGetRecordStore(a1);
  if (CDBLockingAssertionsEnabled == 1 && RecordStore != 0)
  {
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      os_unfair_lock_assert_owner(Context + 20);
    }
  }

  v5 = CPRecordStoreCopyAllInstancesOfClassWhereWithBindBlock();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  v6 = [v5 firstObject];

  return v6;
}

uint64_t __CalDatabaseCopyAttachmentFileWithExternalIDInStore_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (CDBLockingAssertionsEnabled == 1 && *(a1 + 32) != 0)
  {
    v6 = *(a1 + 32);
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      os_unfair_lock_assert_owner(Context + 20);
    }
  }

  v8 = *(a1 + 40);
  CPRecordGetID();
  RowidForRecordID = CPRecordStoreGetRowidForRecordID();
  sqlite3_bind_int64(v4, 1, RowidForRecordID);
  v10 = *(a2 + 8);
  v11 = [*(a1 + 48) UTF8String];

  return sqlite3_bind_text(v10, 2, v11, -1, 0);
}

uint64_t _CalDatabaseCopyOfAllAttachmentFilesInStore(uint64_t a1)
{
  RecordStore = _CalDatabaseGetRecordStore(a1);
  if (CDBLockingAssertionsEnabled == 1 && RecordStore != 0)
  {
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      os_unfair_lock_assert_owner(Context + 20);
    }
  }

  return CPRecordStoreCopyAllInstancesOfClassWhereWithBindBlock();
}

uint64_t CalDatabaseCopyOfAllAttachmentFilesInStoreWithoutLocalFilesAndDownloadAttemptsBelow(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 20);
  RecordStore = _CalDatabaseGetRecordStore(a1);
  if (CDBLockingAssertionsEnabled == 1 && RecordStore != 0)
  {
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      os_unfair_lock_assert_owner(Context + 20);
    }
  }

  v5 = CPRecordStoreCopyAllInstancesOfClassWhereWithBindBlock();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  return v5;
}

uint64_t __CalDatabaseCopyOfAllAttachmentFilesInStoreWithoutLocalFilesAndDownloadAttemptsBelow_block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32))
  {
    v4 = *(a2 + 8);
    if (CDBLockingAssertionsEnabled == 1 && *(a1 + 40) != 0)
    {
      v6 = *(a1 + 40);
      Context = CPRecordStoreGetContext();
      if (Context)
      {
        os_unfair_lock_assert_owner(Context + 20);
      }
    }

    v8 = *(a1 + 32);
    CPRecordGetID();
    RowidForRecordID = CPRecordStoreGetRowidForRecordID();
    sqlite3_bind_int64(v4, 1, RowidForRecordID);
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  v11 = *(a2 + 8);
  v12 = *(a1 + 48);

  return sqlite3_bind_int(v11, v10, v12);
}

uint64_t _CalAttachmentFileGetRecordID(uint64_t a1)
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

  return CPRecordGetProperty();
}

uint64_t _CalAttachmentFileValidateLocalRelativePath(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 hasPrefix:@"Attachments/"] && (Store = _CalAttachmentFileGetStore(a1)) != 0)
  {
    v5 = _CalStoreCopyUUID(Store);
    v6 = [v5 length];
    if ([v3 length] >= (v6 + 13) && !objc_msgSend(v3, "compare:options:range:", v5, 2, 12, objc_msgSend(v5, "length")) && objc_msgSend(v3, "characterAtIndex:", v6 + 12) == 47 && objc_msgSend(v3, "rangeOfString:", @"/../") == 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = [v3 hasSuffix:@"/.."] ^ 1;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t _CalAttachmentFileSetLocalRelativePath(uint64_t a1)
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

  return CPRecordSetProperty();
}

CFTypeRef CalAttachmentFileCopyLocalRelativePath(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  LocalRelativePath = _CalAttachmentFileGetLocalRelativePath(a1);
  if (LocalRelativePath)
  {
    v4 = CFRetain(LocalRelativePath);
  }

  else
  {
    v4 = 0;
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v4;
}

void CalAttachmentFileSetLocalRelativePath(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalAttachmentFileSetLocalRelativePath(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

id _CalAttachmentFileGetURLWrapperForPendingFileCopy(uint64_t a1)
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

  v2 = CPRecordCopyProperty();

  return v2;
}

void _CalAttachmentFileSetURLForPendingFileCopy(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = [objc_alloc(MEMORY[0x1E6993010]) initWithURL:a2];
    if (!a1)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v4 = 0;
    if (!a1)
    {
      goto LABEL_9;
    }
  }

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

LABEL_9:
  CPRecordSetProperty();
}

uint64_t _CalAttachmentFileSetExternalModTag(uint64_t a1)
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

  return CPRecordSetProperty();
}

void CalAttachmentFileSetExternalModTag(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalAttachmentFileSetExternalModTag(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

CFTypeRef CalAttachmentFileCopyExternalModTag(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  Data = _CalColorGetData(a1);
  if (Data)
  {
    v4 = CFRetain(Data);
  }

  else
  {
    v4 = 0;
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v4;
}

CFTypeRef CalAttachmentFileCopyUUID(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  Description = _CalCalendarItemGetDescription(a1);
  if (Description)
  {
    v4 = CFRetain(Description);
  }

  else
  {
    v4 = 0;
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v4;
}

uint64_t _CalAttachmentFileSetFilename(uint64_t a1)
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

  return CPRecordSetProperty();
}

const __CFString *_CalAttachmentFileCopyFilename(uint64_t a1)
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

  result = CPRecordCopyProperty();
  if (!result)
  {
    if (a1)
    {
      if (CDBLockingAssertionsEnabled)
      {
        if (CPRecordGetStore())
        {
          v4 = CPRecordStoreGetContext();
          if (v4)
          {
            os_unfair_lock_assert_owner(v4 + 20);
          }
        }
      }
    }

    result = CPRecordGetProperty();
    if (result)
    {
      result = CFURLCreateWithString(0, result, 0);
      if (result)
      {
        v5 = result;
        PathComponent = CFURLCopyLastPathComponent(result);
        CFRelease(v5);
        return PathComponent;
      }
    }
  }

  return result;
}

const __CFString *CalAttachmentFileCopyFilename(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  v3 = _CalAttachmentFileCopyFilename(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v3;
}

void CalAttachmentFileSetFilename(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalAttachmentFileSetFilename(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

BOOL CalAttachmentFileIsBinary(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  Flag = _CalAttachmentFileGetFlag(a1, 1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return Flag;
}

void CalAttachmentFileSetAutoArchived(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
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

  CPRecordGetProperty();
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        v4 = CPRecordStoreGetContext();
        if (v4)
        {
          os_unfair_lock_assert_owner(v4 + 20);
        }
      }
    }
  }

  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

BOOL _CalAttachmentFileGetFlag(uint64_t a1, int a2)
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

  return (CPRecordGetProperty() & a2) != 0;
}

void CalAttachmentFileSetFormat(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalErrorSetErrorCode(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

const __CFString *CalAttachmentFileCopyURL(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  v3 = _CalAttachmentFileCopyURL(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v3;
}

const __CFString *_CalAttachmentFileCopyURL(uint64_t a1)
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

  result = CPRecordGetProperty();
  if (result)
  {

    return CFURLCreateWithString(0, result, 0);
  }

  return result;
}

void CalAttachmentFileSetFileSize(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  _CalAttachmentFileSetFileSize(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t _CalAttachmentFileSetFileSize(uint64_t a1)
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

  return CPRecordSetProperty();
}

void CalAttachmentFileSetDownloadTries(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
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

  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalAttachmentFileGetDownloadTries(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
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

  IntegerProperty = CPRecordGetIntegerProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return IntegerProperty;
}

void CalAttachmentFileSetDownloadStart(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
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

  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

CFTypeRef CalAttachmentFileCopyDownloadStart(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
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
    v5 = CFRetain(Property);
  }

  else
  {
    v5 = 0;
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v5;
}

CFTypeRef CalAttachmentFileCopyStore(uint64_t a1)
{
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  Store = _CalAttachmentFileGetStore(a1);
  if (Store)
  {
    v4 = CFRetain(Store);
  }

  else
  {
    v4 = 0;
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v4;
}

void _CalAttachmentFileSetAttributes(void *a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v8 = 0;
  v4 = [v3 setResourceValues:a2 error:&v8];
  v5 = v8;
  if ((v4 & 1) == 0)
  {
    v6 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v10 = v3;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_1DEBB1000, v6, OS_LOG_TYPE_ERROR, "Error setting resource attributes for URL %@: %@", buf, 0x16u);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t __CalDatabaseCopyAttachmentFileInStoreWithLocalPath_block_invoke(uint64_t a1, uint64_t a2)
{
  sqlite3_bind_int(*(a2 + 8), 1, *(a1 + 40));
  v4 = *(a2 + 8);
  v5 = [*(a1 + 32) UTF8String];

  return sqlite3_bind_text(v4, 2, v5, -1, 0);
}

uint64_t _CalCalendarLoad(uint64_t a1)
{
  result = CPRecordGetPropertyDescriptor();
  if (result)
  {
    v3 = result;
    if (!*(result + 32))
    {
      _CalCalendarLoad_cold_1();
    }

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

    v5 = *(v3 + 32);
    CPRecordGetProperty();
    Store = CPRecordGetStore();
    _CalGetCalendarWithUID(Store);
    if (a1)
    {
      if (CDBLockingAssertionsEnabled)
      {
        if (CPRecordGetStore())
        {
          v7 = CPRecordStoreGetContext();
          if (v7)
          {
            os_unfair_lock_assert_owner(v7 + 20);
          }
        }
      }
    }

    return CPRecordInitializeProperty();
  }

  return result;
}

uint64_t _CalCalendarLoadOldFlags(uint64_t a1)
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

  return CPRecordInitializeProperty();
}

void _CalCalendarInvalidateSubentities(int a1, uint64_t a2, void *a3)
{
  if ((a1 & 0x80000000) == 0)
  {
    Store = CPRecordGetStore();
    StoreId = _CalCalendarGetStoreId(a2);
    if ((*(CPRecordStoreGetContext() + 366) & 1) == 0)
    {
      _CalInvalidateCalendarItemsForCalendarId(Store);
      _CalInvalidateShareesWithOwnerID(Store);
      _CalInvalidateNotificationsWithCalendarID(Store);
    }

    if (a1 == 1 && StoreId == 1)
    {

      _CalCalendarInsertNewDefault(a3);
    }
  }
}

void _CalCalendarPrepareForSave(uint64_t a1, uint64_t a2)
{
  v68 = *MEMORY[0x1E69E9840];
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

  if (!CPRecordGetProperty())
  {
    Store = _CalCalendarGetStore(a1);
    if (Store && _CalStoreIsFacebook(Store))
    {
      EKGetFacebookCalendarColor();
      if (a1)
      {
        if (CDBLockingAssertionsEnabled)
        {
          if (CPRecordGetStore())
          {
            v6 = CPRecordStoreGetContext();
            if (v6)
            {
              os_unfair_lock_assert_owner(v6 + 20);
            }
          }
        }
      }

      CPRecordSetProperty();
    }

    else
    {
      DatabaseForRecord = CalGetDatabaseForRecord();
      AssignableColor = _CalCalendarCopyNextAssignableColor(DatabaseForRecord);
      if (AssignableColor)
      {
        v9 = AssignableColor;
        if (a1)
        {
          if (CDBLockingAssertionsEnabled)
          {
            if (CPRecordGetStore())
            {
              v10 = CPRecordStoreGetContext();
              if (v10)
              {
                os_unfair_lock_assert_owner(v10 + 20);
              }
            }
          }
        }

        CPRecordSetProperty();
        if (a1)
        {
          if (CDBLockingAssertionsEnabled)
          {
            if (CPRecordGetStore())
            {
              v11 = CPRecordStoreGetContext();
              if (v11)
              {
                os_unfair_lock_assert_owner(v11 + 20);
              }
            }
          }
        }

        CPRecordSetProperty();
        CFRelease(v9);
      }
    }
  }

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

  v13 = CPSqliteConnectionIntegerForProperty();
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        v14 = CPRecordStoreGetContext();
        if (v14)
        {
          os_unfair_lock_assert_owner(v14 + 20);
        }
      }
    }
  }

  if (v13 == CPRecordGetProperty())
  {
    if (a1)
    {
      if (CDBLockingAssertionsEnabled)
      {
        if (CPRecordGetStore())
        {
          v15 = CPRecordStoreGetContext();
          if (v15)
          {
            os_unfair_lock_assert_owner(v15 + 20);
          }
        }
      }
    }

    Property = CPRecordGetProperty();
    if ((Property | 5) != Property)
    {
      if (a1)
      {
        if (CDBLockingAssertionsEnabled)
        {
          if (CPRecordGetStore())
          {
            v17 = CPRecordStoreGetContext();
            if (v17)
            {
              os_unfair_lock_assert_owner(v17 + 20);
            }
          }
        }
      }

      CPRecordSetProperty();
    }
  }

  if (a1)
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

  OriginalProperty = CPRecordGetOriginalProperty();
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        v20 = CPRecordStoreGetContext();
        if (v20)
        {
          os_unfair_lock_assert_owner(v20 + 20);
        }
      }
    }
  }

  if (OriginalProperty != CPRecordGetProperty())
  {
    _CalRecordSetPropertyIfDifferent(a1, 45, OriginalProperty);
  }

  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        v21 = CPRecordStoreGetContext();
        if (v21)
        {
          os_unfair_lock_assert_owner(v21 + 20);
        }
      }
    }
  }

  v22 = CPRecordGetProperty();
  if (v22)
  {
    CalRelationOwnerWillSave(v22);
  }

  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        v23 = CPRecordStoreGetContext();
        if (v23)
        {
          os_unfair_lock_assert_owner(v23 + 20);
        }
      }
    }
  }

  v24 = CPRecordGetProperty();
  if (v24)
  {
    CalRelationOwnerWillSave(v24);
  }

  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        v25 = CPRecordStoreGetContext();
        if (v25)
        {
          os_unfair_lock_assert_owner(v25 + 20);
        }
      }
    }
  }

  v26 = CPRecordGetProperty();
  if (v26)
  {
    CalRelationOwnerWillSave(v26);
  }

  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        v27 = CPRecordStoreGetContext();
        if (v27)
        {
          os_unfair_lock_assert_owner(v27 + 20);
        }
      }
    }
  }

  v28 = CPRecordGetProperty();
  if (v28)
  {
    CalRelationOwnerWillSave(v28);
  }

  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        v29 = CPRecordStoreGetContext();
        if (v29)
        {
          os_unfair_lock_assert_owner(v29 + 20);
        }
      }
    }
  }

  v30 = CPRecordGetProperty();
  if (v30)
  {
    CalRelationOwnerWillSave(v30);
  }

  _CalCalendarValidateIdentityForProperties(a1, a2);
  _CalCalendarValidateIdentityForProperties(a1, a2);
  _CalCalendarClearDirtyAttributes(a1);
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        v31 = CPRecordStoreGetContext();
        if (v31)
        {
          os_unfair_lock_assert_owner(v31 + 20);
        }
      }
    }
  }

  if (CPRecordIsPendingAdd())
  {
    ID = CPRecordGetID();
    v33 = _CalCalendarGetTitle(a1);
    if (a1)
    {
      if (CDBLockingAssertionsEnabled)
      {
        if (CPRecordGetStore())
        {
          v34 = CPRecordStoreGetContext();
          if (v34)
          {
            os_unfair_lock_assert_owner(v34 + 20);
          }
        }
      }
    }

    v35 = CPRecordGetProperty();
    if (a1)
    {
      if (CDBLockingAssertionsEnabled)
      {
        if (CPRecordGetStore())
        {
          v36 = CPRecordStoreGetContext();
          if (v36)
          {
            os_unfair_lock_assert_owner(v36 + 20);
          }
        }
      }
    }

    v37 = CPRecordGetProperty();
    if (a1)
    {
      if (CDBLockingAssertionsEnabled)
      {
        if (CPRecordGetStore())
        {
          v38 = CPRecordStoreGetContext();
          if (v38)
          {
            os_unfair_lock_assert_owner(v38 + 20);
          }
        }
      }
    }

    v39 = CPRecordGetProperty();
    if (a1)
    {
      if (CDBLockingAssertionsEnabled)
      {
        if (CPRecordGetStore())
        {
          v40 = CPRecordStoreGetContext();
          if (v40)
          {
            os_unfair_lock_assert_owner(v40 + 20);
          }
        }
      }
    }

    v41 = CPRecordGetProperty();
    if (a1)
    {
      if (CDBLockingAssertionsEnabled)
      {
        if (CPRecordGetStore())
        {
          v42 = CPRecordStoreGetContext();
          if (v42)
          {
            os_unfair_lock_assert_owner(v42 + 20);
          }
        }
      }
    }

    v43 = CPRecordGetProperty();
    v44 = CalGetDatabaseForRecord();
    if (v44)
    {
      v45 = v44;
      v46 = _CalDatabaseCopyClientName(v44);
      v47 = _CalDatabaseCopyClientIdentifier(v45);
    }

    else
    {
      v46 = 0;
      v47 = @"Database null during saving?";
    }

    v48 = CDBLogHandle;
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      v50 = 138545410;
      v51 = v46;
      v52 = 2114;
      v53 = v47;
      v54 = 1024;
      v55 = ID;
      v56 = 2112;
      v57 = v33;
      v58 = 2112;
      v59 = v35;
      v60 = 2114;
      v61 = v37;
      v62 = 2114;
      v63 = v39;
      v64 = 2114;
      v65 = v41;
      v66 = 2114;
      v67 = v43;
      _os_log_impl(&dword_1DEBB1000, v48, OS_LOG_TYPE_DEFAULT, "Client %{public}@ (%{public}@) is adding a calendar with properties: [rowid=%i, title=%@, external_id=%@, external_mod_tag=%{public}@, external_id_tag=%{public}@, UUID=%{public}@, sync_token=%{public}@]", &v50, 0x58u);
    }
  }

  v49 = *MEMORY[0x1E69E9840];
}

uint64_t _CalCalendarPropertyChanged(uint64_t result, unsigned int a2)
{
  if (a2 > 0x3F)
  {
    return result;
  }

  v2 = result;
  if (((1 << a2) & 0xFFF00E01D87FD0EFLL) != 0)
  {
    result = _CalRecordHasValueChangedForProperty(result, a2);
    if (!result)
    {
      return result;
    }

    DatabaseForRecord = CalGetDatabaseForRecord();
    _CalDatabaseSetChangeFlags(DatabaseForRecord, 2);
    if (!v2)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (((1 << a2) & 0x118000000000) == 0)
    {
      return result;
    }

    result = _CalRecordHasValueChangedForProperty(result, a2);
    if (!result)
    {
      return result;
    }

    if (!v2)
    {
      goto LABEL_9;
    }
  }

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

LABEL_9:

  return CPRecordSetProperty();
}

uint64_t _CalCalendarGetBirthdayCalendarId(uint64_t a1)
{
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (*a1)
      {
        if (*(*a1 + 104))
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

  return CPSqliteConnectionIntegerForProperty();
}

uint64_t CalCalendarInsertBirthdayCalendar(os_unfair_lock_s *a1)
{
  v23[1] = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(a1 + 20);
  RecordStore = _CalDatabaseGetRecordStore(a1);
  if (CDBLockingAssertionsEnabled == 1 && RecordStore != 0)
  {
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
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = -1;
  if (v8)
  {
    v9 = v8;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __CalCalendarInsertBirthdayCalendar_block_invoke;
    v18[3] = &unk_1E8688440;
    v18[4] = &v19;
    v18[5] = v8;
    _CalDatabaseLockForWriteTransaction(a1, v18);
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
  }

  os_unfair_lock_opaque = a1[42]._os_unfair_lock_opaque;
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  v12 = *(v20 + 6);
  if ((v12 & 0x80000000) == 0)
  {
    v13 = CalRecordIDCreate(1, *(v20 + 6));
    v23[0] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];

    v15 = [CalDatabaseInMemoryChangeTracking changeTrackingForDatabase:a1];
    [v15 addChangeset:v14 deletes:MEMORY[0x1E695E0F0] clientID:os_unfair_lock_opaque changeType:0];
    _CalDatabasePostDBChangeNotificationToInternalAndExternalClients(a1);
    CalDatabaseReset(a1);

    v12 = *(v20 + 6);
  }

  _Block_object_dispose(&v19, 8);
  v16 = *MEMORY[0x1E69E9840];
  return v12;
}

void sub_1DEBFFBA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __CalCalendarInsertBirthdayCalendar_block_invoke(uint64_t a1)
{
  result = _CalCalendarInsertBirthdayCalendar(*(a1 + 40), 0);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t _CalCalendarInsertBirthdayCalendar(void *a1, int a2)
{
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (*a1)
      {
        if (*(*a1 + 104))
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

  v5 = CPSqliteConnectionIntegerForProperty();
  if (v5 < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = v5;
  v7 = CFUUIDCreate(0);
  v8 = CFUUIDCreateString(0, v7);
  CFRelease(v7);
  v9 = @"Birthdays";
  if (a2 == 1)
  {
    v9 = @"Facebook Birthdays";
  }

  v10 = 5;
  if (a2 == 1)
  {
    v10 = 519;
  }

  v11 = CFStringCreateWithFormat(0, 0, @"INSERT INTO Calendar (store_id, title, flags, supported_entity_types, UUID, color, self_identity_id, owner_identity_id) VALUES (%d, '%@', %d, %ld, '%@', '%@', -1, -1);", v6, v9, v10, 4, v8, @"#8295AF");
  if (v11)
  {
    v12 = v11;
    CalPerformSQLWithConnection(a1, v11);
    CFRelease(v12);
    if (a1)
    {
      if (CDBLockingAssertionsEnabled)
      {
        if (*a1)
        {
          if (*(*a1 + 104))
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

    Insert = CPSqliteConnectionRowidOfLastInsert();
    if (a1)
    {
      if (CDBLockingAssertionsEnabled)
      {
        if (*a1)
        {
          if (*(*a1 + 104))
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

    CPSqliteConnectionSetIntegerForProperty();
  }

  else
  {
    Insert = 0xFFFFFFFFLL;
  }

  CFRelease(v8);
  return Insert;
}

void CalDatabaseInsertSuggestionsCalendar(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 20);
  RecordStore = _CalDatabaseGetRecordStore(a1);
  if (CDBLockingAssertionsEnabled == 1 && RecordStore != 0)
  {
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
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __CalDatabaseInsertSuggestionsCalendar_block_invoke;
  v10[3] = &__block_descriptor_40_e5_v8__0l;
  v10[4] = v8;
  _CalDatabaseLockForWriteTransaction(a1, v10);
  if (v8)
  {
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

    CPSqliteDatabaseReleaseSqliteConnection();
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  _CalDatabasePostDBChangeNotificationToInternalAndExternalClients(a1);
}

void _CalCalendarInsertSuggestionsCalendar(void *a1, char a2)
{
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (*a1)
      {
        if (*(*a1 + 104))
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

  v5 = CPSqliteConnectionIntegerForProperty();
  if (a2)
  {
    v6 = 0;
  }

  else
  {
    if (a1)
    {
      if (CDBLockingAssertionsEnabled)
      {
        if (*a1)
        {
          if (*(*a1 + 104))
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

    v6 = CPSqliteConnectionIntegerForPropertyWithDefaultValue() != -1;
  }

  if (v5 >= 1 && !v6)
  {
    v8 = CFUUIDCreate(0);
    v9 = CFUUIDCreateString(0, v8);
    CFRelease(v8);
    v10 = CFStringCreateWithFormat(0, 0, @"INSERT INTO Calendar (store_id, title, flags, supported_entity_types, UUID, color, symbolic_color_name, self_identity_id, owner_identity_id) VALUES (%d, '%@', %d, %ld, '%@', '%@', '%@', -1, -1);", v5, @"Found in Mail", 262149, 4, v9, @"#8295AF", *MEMORY[0x1E69E4048]);
    if (v10)
    {
      v11 = v10;
      CalPerformSQLWithConnection(a1, v10);
      CFRelease(v11);
      if (a1)
      {
        if (CDBLockingAssertionsEnabled)
        {
          if (*a1)
          {
            if (*(*a1 + 104))
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

      CPSqliteConnectionRowidOfLastInsert();
      if (a1)
      {
        if (CDBLockingAssertionsEnabled)
        {
          if (*a1)
          {
            if (*(*a1 + 104))
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
    }

    CFRelease(v9);
  }
}

void CalDatabaseRemoveSuggestionsCalendar(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 20);
  RecordStore = _CalDatabaseGetRecordStore(a1);
  if (CDBLockingAssertionsEnabled == 1 && RecordStore != 0)
  {
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
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __CalDatabaseRemoveSuggestionsCalendar_block_invoke;
  v10[3] = &__block_descriptor_40_e5_v8__0l;
  v10[4] = v8;
  _CalDatabaseLockForWriteTransaction(a1, v10);
  if (v8)
  {
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

    CPSqliteDatabaseReleaseSqliteConnection();
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  CalDatabaseSave(a1);
  _CalDatabasePostDBChangeNotificationToInternalAndExternalClients(a1);
}

uint64_t _CalCalendarRemoveAllPossibleSuggestionsCalendars(void *a1)
{
  v2 = CFStringCreateWithFormat(0, 0, @"DELETE FROM Notification WHERE calendar_id IN (SELECT ROWID FROM Calendar WHERE (flags & %d));", 0x40000);
  if (v2)
  {
    v3 = v2;
    CalPerformSQLWithConnection(a1, v2);
    CFRelease(v3);
  }

  v4 = CFStringCreateWithFormat(0, 0, @"DELETE FROM NotificationChanges WHERE calendar_id IN (SELECT ROWID FROM Calendar WHERE (flags & %d));", 0x40000);
  if (v4)
  {
    v5 = v4;
    CalPerformSQLWithConnection(a1, v4);
    CFRelease(v5);
  }

  v6 = CFStringCreateWithFormat(0, 0, @"DELETE FROM Calendar WHERE ROWID IN (SELECT ROWID FROM Calendar WHERE (flags & %d));", 0x40000);
  if (v6)
  {
    v7 = v6;
    CalPerformSQLWithConnection(a1, v6);
    CFRelease(v7);
  }

  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (*a1)
      {
        if (*(*a1 + 104))
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

  return CPSqliteConnectionRemoveProperty();
}

void CalDatabaseInsertNaturalLanguageSuggestionsCalendar(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 20);
  RecordStore = _CalDatabaseGetRecordStore(a1);
  if (CDBLockingAssertionsEnabled == 1 && RecordStore != 0)
  {
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
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __CalDatabaseInsertNaturalLanguageSuggestionsCalendar_block_invoke;
  v10[3] = &__block_descriptor_40_e5_v8__0l;
  v10[4] = v8;
  _CalDatabaseLockForWriteTransaction(a1, v10);
  if (v8)
  {
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

    CPSqliteDatabaseReleaseSqliteConnection();
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  _CalDatabasePostDBChangeNotificationToInternalAndExternalClients(a1);
}

void _CalCalendarInsertNaturalLanguageSuggestionsCalendar(void *a1)
{
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (*a1)
      {
        if (*(*a1 + 104))
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

  v3 = CPSqliteConnectionIntegerForProperty();
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (*a1)
      {
        if (*(*a1 + 104))
        {
          v4 = CPRecordStoreGetContext();
          if (v4)
          {
            os_unfair_lock_assert_owner(v4 + 20);
          }
        }
      }
    }
  }

  v5 = CPSqliteConnectionIntegerForPropertyWithDefaultValue();
  if (v3 >= 1 && v5 == -1)
  {
    v6 = CFUUIDCreate(0);
    v7 = CFUUIDCreateString(0, v6);
    CFRelease(v6);
    v8 = CFStringCreateWithFormat(0, 0, @"INSERT INTO Calendar (store_id, title, flags, supported_entity_types, UUID, color, symbolic_color_name, self_identity_id, owner_identity_id) VALUES (%d, '%@', %d, %ld, '%@', '%@', '%@', -1, -1);", v3, @"Found in Natural Language", 524295, 4, v7, @"#8295AF", *MEMORY[0x1E69E4048]);
    if (v8)
    {
      v9 = v8;
      CalPerformSQLWithConnection(a1, v8);
      CFRelease(v9);
      if (a1)
      {
        if (CDBLockingAssertionsEnabled)
        {
          if (*a1)
          {
            if (*(*a1 + 104))
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

      CPSqliteConnectionRowidOfLastInsert();
      if (a1)
      {
        if (CDBLockingAssertionsEnabled)
        {
          if (*a1)
          {
            if (*(*a1 + 104))
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
    }

    CFRelease(v7);
  }
}

void CalDatabaseRemoveNaturalLanguageSuggestionsCalendar(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 20);
  RecordStore = _CalDatabaseGetRecordStore(a1);
  if (CDBLockingAssertionsEnabled == 1 && RecordStore != 0)
  {
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
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __CalDatabaseRemoveNaturalLanguageSuggestionsCalendar_block_invoke;
  v10[3] = &__block_descriptor_40_e5_v8__0l;
  v10[4] = v8;
  _CalDatabaseLockForWriteTransaction(a1, v10);
  if (v8)
  {
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

    CPSqliteDatabaseReleaseSqliteConnection();
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  _CalDatabasePostDBChangeNotificationToInternalAndExternalClients(a1);
}

uint64_t __CalDatabaseRemoveNaturalLanguageSuggestionsCalendar_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = CFStringCreateWithFormat(0, 0, @"DELETE FROM Notification WHERE calendar_id IN (SELECT ROWID FROM Calendar WHERE (flags & %d));", 0x80000);
  if (v2)
  {
    v3 = v2;
    CalPerformSQLWithConnection(v1, v2);
    CFRelease(v3);
  }

  v4 = CFStringCreateWithFormat(0, 0, @"DELETE FROM NotificationChanges WHERE calendar_id IN (SELECT ROWID FROM Calendar WHERE (flags & %d));", 0x80000);
  if (v4)
  {
    v5 = v4;
    CalPerformSQLWithConnection(v1, v4);
    CFRelease(v5);
  }

  v6 = CFStringCreateWithFormat(0, 0, @"DELETE FROM Calendar WHERE ROWID IN (SELECT ROWID FROM Calendar WHERE (flags & %d));", 0x80000);
  if (v6)
  {
    v7 = v6;
    CalPerformSQLWithConnection(v1, v6);
    CFRelease(v7);
  }

  if (v1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (*v1)
      {
        if (*(*v1 + 104))
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

  return CPSqliteConnectionRemoveProperty();
}

const void *CalDatabaseCopyBirthdayCalendar(os_unfair_lock_s *a1, int a2)
{
  v43 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(a1 + 20);
  RecordStore = _CalDatabaseGetRecordStore(a1);
  if (CDBLockingAssertionsEnabled == 1 && RecordStore != 0)
  {
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      os_unfair_lock_assert_owner(Context + 20);
    }
  }

  Database = CPRecordStoreGetDatabase();
  v8 = Database;
  if (CDBLockingAssertionsEnabled == 1 && Database != 0)
  {
    if (*(Database + 104))
    {
      v10 = CPRecordStoreGetContext();
      if (v10)
      {
        os_unfair_lock_assert_owner(v10 + 20);
      }
    }
  }

  v11 = CPSqliteDatabaseConnectionForReadingWithSqlite3OpenFlags();
  if (v11)
  {
    v12 = v11;
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*v11)
      {
        if (*(*v11 + 104))
        {
          v13 = CPRecordStoreGetContext();
          if (v13)
          {
            os_unfair_lock_assert_owner(v13 + 20);
          }
        }
      }
    }

    v14 = CPSqliteConnectionIntegerForProperty();
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*v12)
      {
        if (*(*v12 + 104))
        {
          v15 = CPRecordStoreGetContext();
          if (v15)
          {
            os_unfair_lock_assert_owner(v15 + 20);
          }
        }
      }
    }

    CPSqliteDatabaseReleaseSqliteConnection();
  }

  else
  {
    v14 = -1;
  }

  v16 = _CalDatabaseGetRecordStore(a1);
  CalendarWithUID = _CalGetCalendarWithUID(v16);
  v18 = CalendarWithUID;
  if (!CalendarWithUID)
  {
    goto LABEL_76;
  }

  CFRetain(CalendarWithUID);
  if (a2)
  {
    goto LABEL_76;
  }

  Store = _CalCalendarGetStore(v18);
  if (!Store)
  {
    v26 = CDBLogHandle;
    if (!os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_44;
    }

    LOWORD(v41) = 0;
    v23 = "Birthday calendar is invalid because it does not have a store";
LABEL_42:
    v24 = v26;
    v25 = 2;
    goto LABEL_43;
  }

  if (_CalStoreGetType(Store) != 5)
  {
    v26 = CDBLogHandle;
    if (!os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_44;
    }

    LOWORD(v41) = 0;
    v23 = "Birthday calendar is invalid because its store is not the native store";
    goto LABEL_42;
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    if (CPRecordGetStore())
    {
      v20 = CPRecordStoreGetContext();
      if (v20)
      {
        os_unfair_lock_assert_owner(v20 + 20);
      }
    }
  }

  Property = CPRecordGetProperty();
  if ((Property & 0xFFFEFFFF) != 5)
  {
    v22 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      v41 = 67109120;
      v42 = Property;
      v23 = "Birthday calendar is invalid because its flags are set incorrectly (%i)";
      v24 = v22;
      v25 = 8;
LABEL_43:
      _os_log_impl(&dword_1DEBB1000, v24, OS_LOG_TYPE_ERROR, v23, &v41, v25);
    }

LABEL_44:
    v27 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      v41 = 67109120;
      v42 = v14;
      _os_log_impl(&dword_1DEBB1000, v27, OS_LOG_TYPE_ERROR, "Birthday calendar is not a birthday calendar. Deleting calendar with UID %i", &v41, 8u);
    }

    if (CDBLockingAssertionsEnabled == 1)
    {
      if (v8)
      {
        if (*(v8 + 104))
        {
          v28 = CPRecordStoreGetContext();
          if (v28)
          {
            os_unfair_lock_assert_owner(v28 + 20);
          }
        }
      }
    }

    v29 = CPSqliteDatabaseConnectionForWritingWithSqlite3OpenFlags();
    if (v29)
    {
      v30 = v29;
      if (CDBLockingAssertionsEnabled == 1)
      {
        if (*v29)
        {
          if (*(*v29 + 104))
          {
            v31 = CPRecordStoreGetContext();
            if (v31)
            {
              os_unfair_lock_assert_owner(v31 + 20);
            }
          }
        }
      }

      v32 = CPSqliteConnectionStatementForSQL();
      if (v32)
      {
        v33 = v32;
        sqlite3_bind_int(*(v32 + 8), 1, v14);
        _CalDatabasePerformStatementWithWriteLock(a1, v33);
        if (CDBLockingAssertionsEnabled == 1)
        {
          if (*v33)
          {
            v34 = **v33;
            if (v34)
            {
              if (*(v34 + 104))
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

        CPSqliteStatementReset();
      }

      else
      {
        v37 = CDBLogHandle;
        if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v41) = 0;
          _os_log_impl(&dword_1DEBB1000, v37, OS_LOG_TYPE_ERROR, "Failed to create statement", &v41, 2u);
        }
      }

      if (CDBLockingAssertionsEnabled == 1)
      {
        if (*v30)
        {
          if (*(*v30 + 104))
          {
            v38 = CPRecordStoreGetContext();
            if (v38)
            {
              os_unfair_lock_assert_owner(v38 + 20);
            }
          }
        }
      }

      CPSqliteDatabaseReleaseSqliteConnection();
    }

    else
    {
      v36 = CDBLogHandle;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v41) = 0;
        _os_log_impl(&dword_1DEBB1000, v36, OS_LOG_TYPE_ERROR, "Failed to create write connection", &v41, 2u);
      }
    }

    _CalDatabaseNoteUntrackedChange(a1);
    CFRelease(v18);
    v18 = 0;
  }

LABEL_76:
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  v39 = *MEMORY[0x1E69E9840];
  return v18;
}