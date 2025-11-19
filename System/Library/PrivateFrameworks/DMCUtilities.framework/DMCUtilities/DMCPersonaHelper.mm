@interface DMCPersonaHelper
+ (BOOL)isCurrentPersonaEnterprise;
+ (BOOL)personaWithUniqueIdentifierExists:(id)a3;
+ (BOOL)removePersona:(id)a3 error:(id *)a4;
+ (id)createEnterprisePersonaWithDevicePasscode:(id)a3 error:(id *)a4;
+ (id)createEnterprisePersonaWithPasscodeData:(id)a3 passcodeDataType:(unint64_t)a4 error:(id *)a5;
+ (id)currentPersonaID;
+ (id)currentPersonaTypeString;
+ (id)enterprisePersonaDisplayName;
+ (id)enterprisePersonaIdentifier;
+ (id)fetchDirtyPersonaIDs;
+ (id)performBlockUnderPersona:(id)a3 block:(id)a4;
+ (id)performBlockUnderPersonalPersona:(id)a3;
+ (void)removePersonaAndAccountsWithPersonaID:(id)a3;
+ (void)setPersonaIdentifierForApps:(id)a3 personaID:(id)a4 completionHandler:(id)a5;
+ (void)trackDirtyPersona:(id)a3;
+ (void)untrackAllDirtyPersonas;
+ (void)untrackDirtyPersona:(id)a3;
@end

@implementation DMCPersonaHelper

+ (id)createEnterprisePersonaWithDevicePasscode:(id)a3 error:(id *)a4
{
  v6 = [a3 dataUsingEncoding:4];
  v7 = [a1 createEnterprisePersonaWithPasscodeData:v6 passcodeDataType:0 error:a4];

  return v7;
}

+ (id)createEnterprisePersonaWithPasscodeData:(id)a3 passcodeDataType:(unint64_t)a4 error:(id *)a5
{
  v38[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v37 = *MEMORY[0x1E69DF0A8];
  v38[0] = &unk_1F28682A8;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:&v37 count:1];
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__5;
  v33 = __Block_byref_object_dispose__5;
  v34 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__5;
  v27 = __Block_byref_object_dispose__5;
  v28 = 0;
  v9 = [objc_alloc(MEMORY[0x1E696AB38]) initWithCondition:0];
  v10 = [MEMORY[0x1E69DF068] sharedManager];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __83__DMCPersonaHelper_createEnterprisePersonaWithPasscodeData_passcodeDataType_error___block_invoke;
  v19[3] = &unk_1E7ADCE60;
  v11 = v9;
  v20 = v11;
  v21 = &v29;
  v22 = &v23;
  [v10 createUserPersona:v8 passcodeData:v7 passcodeDataType:a4 completionHandler:v19];

  if (([v11 tryLockWhenCondition:1] & 1) == 0)
  {
    v12 = *DMCLogObjects();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B1630000, v12, OS_LOG_TYPE_INFO, "Waiting for persona to be created...", buf, 2u);
    }

    [v11 lockWhenCondition:1];
  }

  [v11 unlock];
  v13 = v30[5];
  if (v13)
  {
    if (a5)
    {
      *a5 = v13;
    }
  }

  else
  {
    v14 = *DMCLogObjects();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = v24[5];
      *buf = 138543362;
      v36 = v15;
      _os_log_impl(&dword_1B1630000, v14, OS_LOG_TYPE_INFO, "Persona created with identifier %{public}@.", buf, 0xCu);
    }
  }

  v16 = v24[5];

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v29, 8);

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

void __83__DMCPersonaHelper_createEnterprisePersonaWithPasscodeData_passcodeDataType_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) lock];
  if (v6)
  {
    v7 = *DMCLogObjects();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v13 = 138543362;
      v14 = v6;
      _os_log_impl(&dword_1B1630000, v7, OS_LOG_TYPE_ERROR, "Failed to create persona: %{public}@", &v13, 0xCu);
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  else
  {
    v8 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69DF0B0]];
    v9 = [v8 copy];
    v10 = *(*(a1 + 48) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  [*(a1 + 32) unlockWithCondition:1];

  v12 = *MEMORY[0x1E69E9840];
}

+ (BOOL)removePersona:(id)a3 error:(id *)a4
{
  v35[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v34 = *MEMORY[0x1E69DF0B0];
  v35[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:&v34 count:1];
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__5;
  v28 = __Block_byref_object_dispose__5;
  v29 = 0;
  v7 = [objc_alloc(MEMORY[0x1E696AB38]) initWithCondition:0];
  v8 = [MEMORY[0x1E69DF068] sharedManager];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __40__DMCPersonaHelper_removePersona_error___block_invoke;
  v20[3] = &unk_1E7ADCE88;
  v9 = v7;
  v21 = v9;
  v10 = v5;
  v22 = v10;
  v23 = &v24;
  [v8 deleteUserPersonaWithProfileInfo:v6 passcodeData:0 completionHandler:v20];

  if (([v9 tryLockWhenCondition:1] & 1) == 0)
  {
    v11 = *DMCLogObjects();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B1630000, v11, OS_LOG_TYPE_INFO, "Waiting for persona to be removed...", buf, 2u);
    }

    [v9 lockWhenCondition:1];
  }

  [v9 unlock];
  v12 = v25[5];
  if (v12)
  {
    v13 = objc_opt_new();
    v14 = v25[5];
    v15 = &stru_1F2860120;
    if (v10)
    {
      v15 = v10;
    }

    v32 = @"persona ID";
    v33 = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    [v13 logErrorEventForTopic:@"Persona" reason:@"Persona Removal Failed" error:v14 details:v16];

    if (a4)
    {
      *a4 = v25[5];
    }
  }

  else
  {
    v17 = *DMCLogObjects();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v31 = v10;
      _os_log_impl(&dword_1B1630000, v17, OS_LOG_TYPE_INFO, "Persona with identifier %{public}@ removed.", buf, 0xCu);
    }
  }

  _Block_object_dispose(&v24, 8);
  v18 = *MEMORY[0x1E69E9840];
  return v12 == 0;
}

void __40__DMCPersonaHelper_removePersona_error___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a2;
  [*(a1 + 32) lock];
  if (v4)
  {
    v5 = *DMCLogObjects();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 40);
      v8 = 138543618;
      v9 = v6;
      v10 = 2114;
      v11 = v4;
      _os_log_impl(&dword_1B1630000, v5, OS_LOG_TYPE_ERROR, "Failed to remove persona with identifier %{public}@: %{public}@", &v8, 0x16u);
    }

    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }

  [*(a1 + 32) unlockWithCondition:1];

  v7 = *MEMORY[0x1E69E9840];
}

+ (void)removePersonaAndAccountsWithPersonaID:(id)a3
{
  v3 = a3;
  [DMCPersonaHelper removePersona:v3 error:0];
  v4 = [MEMORY[0x1E6959A48] defaultStore];
  [v4 dmc_removeMAIDRelatedAccountsWithPersonaID:v3 asynchronous:0];
}

+ (id)performBlockUnderPersonalPersona:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E69DF068] sharedManager];
  v5 = [v4 currentPersona];

  if (([v5 isPersonalPersona] & 1) != 0 || (objc_msgSend(v5, "isSystemPersona") & 1) != 0 || objc_msgSend(v5, "isDefaultPersona"))
  {
    v3[2](v3);
    v6 = 0;
  }

  else
  {
    v8 = *DMCLogObjects();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B1630000, v8, OS_LOG_TYPE_DEFAULT, "DMCPersonaHelper: We are not under personal/system/default persona, will to switch to personal persona", buf, 2u);
    }

    v9 = [MEMORY[0x1E69DF088] personaAttributesForPersonaType:0];
    v17 = v9;
    if (v9 && ([v9 userPersonaUniqueString], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "length"), v18, v19))
    {
      v20 = [v17 userPersonaUniqueString];
      v21 = [DMCPersonaHelper performBlockUnderPersona:v20 block:v3];
    }

    else
    {
      v22 = MEMORY[0x1E696ABC0];
      v20 = DMCErrorArray(@"PERSONA_ATTRIBUTE_FETCH_ERROR", v10, v11, v12, v13, v14, v15, v16, 0);
      v21 = [v22 DMCErrorWithDomain:@"DMCPersonaErrorDomain" code:55001 descriptionArray:v20 errorType:@"DMCFatalError"];
    }

    v6 = v21;
  }

  return v6;
}

+ (id)performBlockUnderPersona:(id)a3 block:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (!v6)
  {
LABEL_8:
    v10 = 0;
    goto LABEL_9;
  }

  if (![v5 length])
  {
    v11 = DMCLogObjects()[1];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B1630000, v11, OS_LOG_TYPE_INFO, "performBlockUnderPersona: No persona provided, will just run the block", buf, 2u);
    }

    v6[2](v6);
    goto LABEL_8;
  }

  v7 = [MEMORY[0x1E69DF068] sharedManager];
  v8 = [v7 currentPersona];

  v18 = 0;
  v9 = [v8 copyCurrentPersonaContextWithError:&v18];
  v10 = v18;
  if (!v10)
  {
    v14 = [v8 createPersonaContextForBackgroundProcessingWithPersonaUniqueString:v5];
    if (v14)
    {
      v10 = v14;
      v15 = DMCLogObjects()[1];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v20 = v5;
        v21 = 2114;
        v22 = v10;
        _os_log_impl(&dword_1B1630000, v15, OS_LOG_TYPE_ERROR, "Failed to adopt persona:%{public}@ with error: %{public}@", buf, 0x16u);
      }
    }

    else
    {
      v6[2](v6);
      [v8 restorePersonaWithSavedPersonaContext:v9];
      if (objc_claimAutoreleasedReturnValue())
      {
        v16 = DMCLogObjects()[1];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_1B1630000, v16, OS_LOG_TYPE_ERROR, "Cannot restore persona context", buf, 2u);
        }

        v17 = [MEMORY[0x1E695DF30] exceptionWithName:@"PersonaRestorationFailedException" reason:@"The persona restoration failed" userInfo:0];
        objc_exception_throw(v17);
      }

      v10 = 0;
    }
  }

LABEL_9:
  v12 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)currentPersonaID
{
  v2 = [MEMORY[0x1E69DF068] sharedManager];
  v3 = [v2 currentPersona];

  v4 = [v3 userPersonaUniqueString];

  return v4;
}

+ (BOOL)isCurrentPersonaEnterprise
{
  v2 = [MEMORY[0x1E69DF068] sharedManager];
  v3 = [v2 currentPersona];
  v4 = [v3 isEnterprisePersona];

  return v4;
}

+ (id)currentPersonaTypeString
{
  v2 = [MEMORY[0x1E69DF068] sharedManager];
  v3 = [v2 currentPersona];
  v4 = [v3 userPersonaNickName];

  return v4;
}

+ (id)enterprisePersonaIdentifier
{
  v2 = [MEMORY[0x1E69DF088] personaAttributesForPersonaType:2];
  v3 = [v2 userPersonaUniqueString];

  return v3;
}

+ (id)enterprisePersonaDisplayName
{
  v2 = [MEMORY[0x1E69DF088] personaAttributesForPersonaType:2];
  v3 = [v2 userPersonaDisplayName];

  return v3;
}

+ (void)setPersonaIdentifierForApps:(id)a3 personaID:(id)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x1E69DF068] sharedManager];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __76__DMCPersonaHelper_setPersonaIdentifierForApps_personaID_completionHandler___block_invoke;
  v15[3] = &unk_1E7ADCED8;
  v16 = v7;
  v17 = v10;
  v18 = v8;
  v19 = v9;
  v11 = v9;
  v12 = v8;
  v13 = v10;
  v14 = v7;
  [v13 fetchBundleIdentifierForPersonaWithIDString:v12 completionHandler:v15];
}

void __76__DMCPersonaHelper_setPersonaIdentifierForApps_personaID_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = MEMORY[0x1E695E0F0];
  }

  v4 = [MEMORY[0x1E695DFA8] setWithArray:v3];
  [v4 addObjectsFromArray:*(a1 + 32)];
  v5 = *(a1 + 40);
  v6 = [v4 allObjects];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __76__DMCPersonaHelper_setPersonaIdentifierForApps_personaID_completionHandler___block_invoke_2;
  v8[3] = &unk_1E7ADCEB0;
  v7 = *(a1 + 48);
  v9 = *(a1 + 56);
  [v5 setBundlesIdentifiers:v6 forUniquePersonaWithIDString:v7 completionHandler:v8];
}

void __76__DMCPersonaHelper_setPersonaIdentifierForApps_personaID_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = *DMCLogObjects();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 138543362;
      v7 = v3;
      _os_log_impl(&dword_1B1630000, v4, OS_LOG_TYPE_ERROR, "Failed to set bundle identifiers for persona with error: %{public}@", &v6, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();

  v5 = *MEMORY[0x1E69E9840];
}

+ (BOOL)personaWithUniqueIdentifierExists:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = *DMCLogObjects();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v9 = 138412290;
    v10 = v3;
    _os_log_impl(&dword_1B1630000, v4, OS_LOG_TYPE_INFO, "fetchPersonaWithPersonaUniqueString: will fetch persona with persona ID: %@", &v9, 0xCu);
  }

  v5 = [MEMORY[0x1E69DF088] personaAttributesForPersonaUniqueString:v3];
  v6 = v5 != 0;

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

+ (void)trackDirtyPersona:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 length])
  {
    v4 = MDMDirtyPersonaFilePath();
    v5 = [MEMORY[0x1E696AC08] defaultManager];
    v6 = [v5 fileExistsAtPath:v4];

    if (v6)
    {
      v7 = [MEMORY[0x1E695DF70] arrayWithContentsOfFile:v4];
      [v7 addObject:v3];
    }

    else
    {
      v9[0] = v3;
      v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
    }

    [v7 writeToFile:v4 atomically:1];
    DMCSetSkipBackupAttributeToItemAtPath(v4, 1);
  }

  v8 = *MEMORY[0x1E69E9840];
}

+ (void)untrackDirtyPersona:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = MDMDirtyPersonaFilePath();
  if ([v3 length])
  {
    v5 = [MEMORY[0x1E696AC08] defaultManager];
    v6 = [v5 fileExistsAtPath:v4];

    if (v6)
    {
      v7 = [MEMORY[0x1E695DF70] arrayWithContentsOfFile:v4];
      [v7 removeObject:v3];
      if ([v7 count])
      {
        [v7 writeToFile:v4 atomically:1];
        DMCSetSkipBackupAttributeToItemAtPath(v4, 1);
      }

      else
      {
        v8 = [MEMORY[0x1E696AC08] defaultManager];
        v12 = 0;
        [v8 removeItemAtPath:v4 error:&v12];
        v9 = v12;

        if (v9)
        {
          v10 = *DMCLogObjects();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v14 = v9;
            _os_log_impl(&dword_1B1630000, v10, OS_LOG_TYPE_ERROR, "Failed to remove dirty persona file, error: %{public}@", buf, 0xCu);
          }
        }
      }
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

+ (void)untrackAllDirtyPersonas
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = MDMDirtyPersonaFilePath();
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v5 = [v4 fileExistsAtPath:v2];

  if (v5)
  {
    v10 = 0;
    [v3 removeItemAtPath:v2 error:&v10];
    v6 = v10;
    if (v6)
    {
      v7 = v6;
      v8 = *DMCLogObjects();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v12 = v7;
        _os_log_impl(&dword_1B1630000, v8, OS_LOG_TYPE_ERROR, "Failed to remove dirty persona file, error: %{public}@", buf, 0xCu);
      }
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

+ (id)fetchDirtyPersonaIDs
{
  v2 = MEMORY[0x1E695DEC8];
  v3 = MDMDirtyPersonaFilePath();
  v4 = [v2 arrayWithContentsOfFile:v3];

  return v4;
}

@end