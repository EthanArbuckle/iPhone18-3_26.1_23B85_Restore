@interface CalPersonaUtils
+ (BOOL)performBlockAsPersonaWithIdentifier:(id)a3 block:(id)a4;
+ (id)personalPersonaIdentifier;
@end

@implementation CalPersonaUtils

+ (id)personalPersonaIdentifier
{
  if (canFetchPersonas_onceToken != -1)
  {
    +[CalPersonaUtils personalPersonaIdentifier];
  }

  if (canFetchPersonas_canFetchPersonas == 1)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = __Block_byref_object_copy__3;
    v14 = __Block_byref_object_dispose__3;
    v15 = 0;
    os_unfair_lock_lock(&personalPersonaIdentifier_lock);
    if (personalPersonaIdentifier_personalPersonaIdentifier)
    {
      objc_storeStrong(v11 + 5, personalPersonaIdentifier_personalPersonaIdentifier);
      os_unfair_lock_unlock(&personalPersonaIdentifier_lock);
    }

    else
    {
      os_unfair_lock_unlock(&personalPersonaIdentifier_lock);
      v3 = dispatch_semaphore_create(0);
      v4 = [MEMORY[0x1E69DF068] sharedManager];
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __44__CalPersonaUtils_personalPersonaIdentifier__block_invoke;
      v7[3] = &unk_1E7EC6998;
      v9 = &v10;
      v5 = v3;
      v8 = v5;
      [v4 fetchPersonaWithType:0 CompletionHandler:v7];

      dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
    }

    v2 = v11[5];
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void __44__CalPersonaUtils_personalPersonaIdentifier__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [a2 objectForKeyedSubscript:*MEMORY[0x1E69DF0B0]];
  v7 = +[CalFoundationLogSubsystem defaultCategory];
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v10 = 138543362;
      v11 = v6;
      _os_log_impl(&dword_1B990D000, v8, OS_LOG_TYPE_INFO, "Fetched personal persona identifier %{public}@", &v10, 0xCu);
    }

    os_unfair_lock_lock(&personalPersonaIdentifier_lock);
    objc_storeStrong(&personalPersonaIdentifier_personalPersonaIdentifier, v6);
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v6);
    os_unfair_lock_unlock(&personalPersonaIdentifier_lock);
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __44__CalPersonaUtils_personalPersonaIdentifier__block_invoke_cold_1(v5, v8);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));

  v9 = *MEMORY[0x1E69E9840];
}

+ (BOOL)performBlockAsPersonaWithIdentifier:(id)a3 block:(id)a4
{
  v45 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E69DF068] sharedManager];
  v8 = [v7 currentPersona];

  v36 = 0;
  v9 = [v8 copyCurrentPersonaContextWithError:&v36];
  v10 = v36;
  if (v9)
  {
    v11 = [v8 generateAndRestorePersonaContextWithPersonaUniqueString:v5];

    v12 = [MEMORY[0x1E69DF068] sharedManager];
    v13 = [v12 currentPersona];

    v14 = v11 == 0;
    v15 = +[CalFoundationLogSubsystem defaultCategory];
    v16 = v15;
    if (v11)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        +[CalPersonaUtils performBlockAsPersonaWithIdentifier:block:];
      }
    }

    else if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v17 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v8, "isEnterprisePersona")}];
      *buf = 138543874;
      v38 = v5;
      v39 = 2114;
      v40 = v17;
      v41 = 2112;
      v42 = v13;
      _os_log_impl(&dword_1B990D000, v16, OS_LOG_TYPE_INFO, "Generated and restored persona context with persona identifier = %{public}@, is current persona enterprise persona = %{public}@, current persona = %@", buf, 0x20u);
    }

    v18 = [v13 userPersonaUniqueString];
    v19 = [v5 isEqualToString:v18];

    if ((v19 & 1) == 0)
    {
      v20 = +[CalFoundationLogSubsystem defaultCategory];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [(CalPersonaUtils *)v13 performBlockAsPersonaWithIdentifier:v5 block:v20];
      }

      v14 = 0;
    }

    v6[2](v6, v13);
    v10 = [v8 restorePersonaWithSavedPersonaContext:v9];

    if (v10)
    {
      v21 = +[CalFoundationLogSubsystem defaultCategory];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = MEMORY[0x1E696AD98];
        v34 = [MEMORY[0x1E69DF068] sharedManager];
        v32 = [v34 currentPersona];
        v30 = [v22 numberWithBool:{objc_msgSend(v32, "isEnterprisePersona")}];
        v23 = [MEMORY[0x1E69DF068] sharedManager];
        v24 = [v23 currentPersona];
        *buf = 138544130;
        v38 = v5;
        v39 = 2112;
        v40 = v10;
        v41 = 2114;
        v42 = v30;
        v43 = 2112;
        v44 = v24;
        _os_log_error_impl(&dword_1B990D000, v21, OS_LOG_TYPE_ERROR, "Error restoring saved persona context from persona identifier = %{public}@: %@. is current persona enterprise persona = %{public}@, current persona = %@", buf, 0x2Au);
      }
    }

    else
    {
      v21 = +[CalFoundationLogSubsystem defaultCategory];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v25 = MEMORY[0x1E696AD98];
        v35 = [MEMORY[0x1E69DF068] sharedManager];
        v33 = [v35 currentPersona];
        v31 = [v25 numberWithBool:{objc_msgSend(v33, "isEnterprisePersona")}];
        v26 = [MEMORY[0x1E69DF068] sharedManager];
        v27 = [v26 currentPersona];
        *buf = 138543874;
        v38 = v5;
        v39 = 2114;
        v40 = v31;
        v41 = 2112;
        v42 = v27;
        _os_log_impl(&dword_1B990D000, v21, OS_LOG_TYPE_INFO, "Restored persona context from persona identifier = %{public}@, is current persona enterprise persona = %{public}@, current persona = %@", buf, 0x20u);
      }
    }
  }

  else
  {
    v13 = +[CalFoundationLogSubsystem defaultCategory];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      +[CalPersonaUtils performBlockAsPersonaWithIdentifier:block:];
    }

    v14 = 0;
  }

  v28 = *MEMORY[0x1E69E9840];
  return v14;
}

void __44__CalPersonaUtils_personalPersonaIdentifier__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B990D000, a2, OS_LOG_TYPE_ERROR, "Unable to fetch personal persona identifier: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)performBlockAsPersonaWithIdentifier:block:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_1(&dword_1B990D000, v0, v1, "Error generating and restoring persona context with persona identifier = %{public}@: %@");
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)performBlockAsPersonaWithIdentifier:(NSObject *)a3 block:.cold.2(void *a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = [a1 userPersonaUniqueString];
  v7 = 138543618;
  v8 = v5;
  v9 = 2114;
  v10 = a2;
  _os_log_error_impl(&dword_1B990D000, a3, OS_LOG_TYPE_ERROR, "Current pesona identifier is %{public}@ after trying to switch to persona %{public}@", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

+ (void)performBlockAsPersonaWithIdentifier:block:.cold.3()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_1(&dword_1B990D000, v0, v1, "Could not get saved persona context. error = %@, current persona = %@");
  v2 = *MEMORY[0x1E69E9840];
}

@end