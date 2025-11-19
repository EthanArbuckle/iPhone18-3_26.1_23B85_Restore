@interface CDPProtectedCloudStorageProxyImpl
- (BOOL)_performPCSBlock:(id)a3 error:(id *)a4;
- (BOOL)isWalrusEnabledWithOptions:(id)a3 error:(id *)a4;
- (BOOL)pcsIdentityMigrateToiCDPWithInfo:(id)a3 error:(id *)a4;
- (BOOL)pcsIdentitySetCompanionInCircle:(_PCSIdentitySetData *)a3 error:(id *)a4;
- (BOOL)pcsIdentitySetIsInICDPLocal:(_PCSIdentitySetData *)a3 error:(id *)a4;
- (BOOL)pcsIdentitySetIsInICDPNetwork:(_PCSIdentitySetData *)a3 options:(id)a4 error:(id *)a5;
- (BOOL)pcsRestoreLocalBackup:(id)a3 error:(id *)a4;
- (BOOL)pcsSynchronizeKeysWithInfo:(id)a3 error:(id *)a4;
- (BOOL)repairWalrusWithAccountIdentifier:(id)a3 options:(id)a4 error:(id *)a5;
- (BOOL)setWalrusEnabled:(BOOL)a3 accountIdentifier:(id)a4 options:(id)a5 error:(id *)a6;
- (_PCSIdentitySetData)pcsIdentityCreateWithInfo:(id)a3 error:(id *)a4;
- (_PCSIdentitySetData)pcsIdentitySetupWithInfo:(id)a3 error:(id *)a4;
@end

@implementation CDPProtectedCloudStorageProxyImpl

- (BOOL)pcsIdentitySetCompanionInCircle:(_PCSIdentitySetData *)a3 error:(id *)a4
{
  if (+[CDPUtilities hasFullCDPSupport])
  {
    return 0;
  }

  v8 = _CDPLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DED99000, v8, OS_LOG_TYPE_DEFAULT, "setting companion in circle", buf, 2u);
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __75__CDPProtectedCloudStorageProxyImpl_pcsIdentitySetCompanionInCircle_error___block_invoke;
  v9[3] = &__block_descriptor_40_e20_B16__0_____CFError_8l;
  v9[4] = a3;
  return [(CDPProtectedCloudStorageProxyImpl *)self _performPCSBlock:v9 error:a4];
}

- (_PCSIdentitySetData)pcsIdentityCreateWithInfo:(id)a3 error:(id *)a4
{
  v6 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __69__CDPProtectedCloudStorageProxyImpl_pcsIdentityCreateWithInfo_error___block_invoke;
  v10[3] = &unk_1E869D140;
  v12 = &v13;
  v7 = v6;
  v11 = v7;
  [(CDPProtectedCloudStorageProxyImpl *)self _performPCSBlock:v10 error:a4];
  v8 = v14[3];

  _Block_object_dispose(&v13, 8);
  return v8;
}

uint64_t __69__CDPProtectedCloudStorageProxyImpl_pcsIdentityCreateWithInfo_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(*(*(a1 + 40) + 8) + 24) = PCSIdentitySetCreate();
  return 1;
}

- (BOOL)pcsIdentitySetIsInICDPNetwork:(_PCSIdentitySetData *)a3 options:(id)a4 error:(id *)a5
{
  v8 = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __81__CDPProtectedCloudStorageProxyImpl_pcsIdentitySetIsInICDPNetwork_options_error___block_invoke;
  v11[3] = &unk_1E869D168;
  v12 = v8;
  v13 = a3;
  v9 = v8;
  LOBYTE(a5) = [(CDPProtectedCloudStorageProxyImpl *)self _performPCSBlock:v11 error:a5];

  return a5;
}

- (BOOL)pcsIdentitySetIsInICDPLocal:(_PCSIdentitySetData *)a3 error:(id *)a4
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __71__CDPProtectedCloudStorageProxyImpl_pcsIdentitySetIsInICDPLocal_error___block_invoke;
  v5[3] = &__block_descriptor_40_e20_B16__0_____CFError_8l;
  v5[4] = a3;
  return [(CDPProtectedCloudStorageProxyImpl *)self _performPCSBlock:v5 error:a4];
}

- (_PCSIdentitySetData)pcsIdentitySetupWithInfo:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (+[CDPUtilities hasFullCDPSupport])
  {
    v7 = _CDPLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DED99000, v7, OS_LOG_TYPE_DEFAULT, "pcsIdentitySetupWithInfo:", buf, 2u);
    }

    *buf = 0;
    v14 = buf;
    v15 = 0x2020000000;
    v16 = 0;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __68__CDPProtectedCloudStorageProxyImpl_pcsIdentitySetupWithInfo_error___block_invoke;
    v10[3] = &unk_1E869D140;
    v12 = buf;
    v11 = v6;
    [(CDPProtectedCloudStorageProxyImpl *)self _performPCSBlock:v10 error:a4];
    v8 = *(v14 + 3);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t __68__CDPProtectedCloudStorageProxyImpl_pcsIdentitySetupWithInfo_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(*(*(a1 + 40) + 8) + 24) = PCSIdentitySetup();
  return 1;
}

- (BOOL)pcsIdentityMigrateToiCDPWithInfo:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (+[CDPUtilities hasFullCDPSupport])
  {
    v7 = _CDPLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DED99000, v7, OS_LOG_TYPE_DEFAULT, "pcsIdentityMigrateToiCDPWithInfo:", buf, 2u);
    }

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __76__CDPProtectedCloudStorageProxyImpl_pcsIdentityMigrateToiCDPWithInfo_error___block_invoke;
    v10[3] = &unk_1E869D190;
    v11 = v6;
    v8 = [(CDPProtectedCloudStorageProxyImpl *)self _performPCSBlock:v10 error:a4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)pcsSynchronizeKeysWithInfo:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (+[CDPUtilities hasFullCDPSupport])
  {
    v7 = _CDPLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DED99000, v7, OS_LOG_TYPE_DEFAULT, "pcsSynchronizeKeysWithInfo:", buf, 2u);
    }

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __70__CDPProtectedCloudStorageProxyImpl_pcsSynchronizeKeysWithInfo_error___block_invoke;
    v10[3] = &unk_1E869D190;
    v11 = v6;
    v8 = [(CDPProtectedCloudStorageProxyImpl *)self _performPCSBlock:v10 error:a4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)pcsRestoreLocalBackup:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (+[CDPUtilities hasFullCDPSupport])
  {
    v7 = _CDPLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DED99000, v7, OS_LOG_TYPE_DEFAULT, "pcsRestoreLocalBackup:", buf, 2u);
    }

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __65__CDPProtectedCloudStorageProxyImpl_pcsRestoreLocalBackup_error___block_invoke;
    v10[3] = &unk_1E869D190;
    v11 = v6;
    v8 = [(CDPProtectedCloudStorageProxyImpl *)self _performPCSBlock:v10 error:a4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isWalrusEnabledWithOptions:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CDPProtectedCloudStorageProxyImpl *)self pcsIdentityCreateWithInfo:v6 error:a4];
  if (*a4)
  {
    v8 = _CDPLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [CDPProtectedCloudStorageProxyImpl isWalrusEnabledWithOptions:a4 error:?];
    }

    v9 = 0;
  }

  else
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __70__CDPProtectedCloudStorageProxyImpl_isWalrusEnabledWithOptions_error___block_invoke;
    v11[3] = &unk_1E869D168;
    v13 = v7;
    v12 = v6;
    v9 = [(CDPProtectedCloudStorageProxyImpl *)self _performPCSBlock:v11 error:a4];
    v8 = v12;
  }

  return v9;
}

uint64_t __70__CDPProtectedCloudStorageProxyImpl_isWalrusEnabledWithOptions_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  v4 = PCSIdentityiCDPWalrus();
  v5 = *(a1 + 40);
  if (v5)
  {
    CFRelease(v5);
  }

  return v4;
}

- (BOOL)repairWalrusWithAccountIdentifier:(id)a3 options:(id)a4 error:(id *)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [(CDPProtectedCloudStorageProxyImpl *)self pcsIdentityCreateWithInfo:v9 error:a5];
  if (!*a5)
  {
    v13 = v10;
    if (![(CDPProtectedCloudStorageProxyImpl *)self isWalrusEnabledWithOptions:v9 error:a5])
    {
      goto LABEL_14;
    }

    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __85__CDPProtectedCloudStorageProxyImpl_repairWalrusWithAccountIdentifier_options_error___block_invoke;
    v26[3] = &__block_descriptor_40_e20_B16__0_____CFError_8l;
    v26[4] = v13;
    v14 = [(CDPProtectedCloudStorageProxyImpl *)self _performPCSBlock:v26 error:a5];
    v15 = _CDPLogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [CDPProtectedCloudStorageProxyImpl repairWalrusWithAccountIdentifier:v14 options:v15 error:?];
    }

    if (!v14)
    {
LABEL_14:
      v12 = 1;
      if (!v13)
      {
        goto LABEL_16;
      }

LABEL_15:
      CFRelease(v13);
      goto LABEL_16;
    }

    v16 = _CDPLogSystem();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [CDPProtectedCloudStorageProxyImpl repairWalrusWithAccountIdentifier:v16 options:? error:?];
    }

    [(CDPProtectedCloudStorageProxyImpl *)self setWalrusEnabled:1 accountIdentifier:v8 options:v9 error:a5];
    v17 = *a5;
    v12 = *a5 == 0;
    v18 = _CDPLogSystem();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    if (v17)
    {
      if (!v19)
      {
        goto LABEL_20;
      }

      v20 = *a5;
      *buf = 138412290;
      v28 = v20;
      v21 = "Walrus repair failed: %@";
      v22 = v18;
      v23 = 12;
    }

    else
    {
      if (!v19)
      {
        goto LABEL_20;
      }

      *buf = 0;
      v21 = "Walrus repair succeeded";
      v22 = v18;
      v23 = 2;
    }

    _os_log_impl(&dword_1DED99000, v22, OS_LOG_TYPE_DEFAULT, v21, buf, v23);
LABEL_20:

    if (!v13)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v11 = _CDPLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [CDPProtectedCloudStorageProxyImpl isWalrusEnabledWithOptions:a5 error:?];
  }

  v12 = 0;
LABEL_16:

  v24 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t __85__CDPProtectedCloudStorageProxyImpl_repairWalrusWithAccountIdentifier_options_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v4 = getPCSIdentitySetIsWalrusWithForceFetchSymbolLoc_ptr;
  v11 = getPCSIdentitySetIsWalrusWithForceFetchSymbolLoc_ptr;
  if (!getPCSIdentitySetIsWalrusWithForceFetchSymbolLoc_ptr)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __getPCSIdentitySetIsWalrusWithForceFetchSymbolLoc_block_invoke;
    v7[3] = &unk_1E869D1B8;
    v7[4] = &v8;
    __getPCSIdentitySetIsWalrusWithForceFetchSymbolLoc_block_invoke(v7);
    v4 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (!v4)
  {
    v6 = __85__CDPProtectedCloudStorageProxyImpl_repairWalrusWithAccountIdentifier_options_error___block_invoke_cold_1();
    _Block_object_dispose(&v8, 8);
    _Unwind_Resume(v6);
  }

  return v4(v3, 1, a2);
}

- (BOOL)setWalrusEnabled:(BOOL)a3 accountIdentifier:(id)a4 options:(id)a5 error:(id *)a6
{
  v8 = a3;
  v42 = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = a5;
  v11 = _CDPSignpostLogSystem();
  v12 = _CDPSignpostCreate(v11);
  v14 = v13;

  v15 = _CDPSignpostLogSystem();
  v16 = v15;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1DED99000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v12, "UpdateAccountCleanupStatus", " enableTelemetry=YES ", buf, 2u);
  }

  v17 = _CDPSignpostLogSystem();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *v36 = v12;
    _os_log_impl(&dword_1DED99000, v17, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: UpdateAccountCleanupStatus  enableTelemetry=YES ", buf, 0xCu);
  }

  if (v8)
  {
    v34 = 0;
    v18 = &v34;
    v19 = PCSAccountEnableWalrus();
  }

  else
  {
    v33 = 0;
    v18 = &v33;
    v19 = PCSAccountDisableWalrus();
  }

  v20 = v19;
  v21 = *v18;
  v22 = v21;
  if (a6)
  {
    v23 = v21;
    *a6 = v22;
  }

  Nanoseconds = _CDPSignpostGetNanoseconds(v12, v14);
  v25 = _CDPSignpostLogSystem();
  v26 = v25;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
  {
    v27 = [v22 code];
    *buf = 67240448;
    *v36 = v8;
    *&v36[4] = 1026;
    *&v36[6] = v27;
    _os_signpost_emit_with_name_impl(&dword_1DED99000, v26, OS_SIGNPOST_INTERVAL_END, v12, "UpdateAccountCleanupStatus", " isEnabled=%{public,signpost.telemetry:number1,name=isEnabled}d  Error=%{public,signpost.telemetry:number2,name=Error}d ", buf, 0xEu);
  }

  v28 = _CDPSignpostLogSystem();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = [v22 code];
    *buf = 134218752;
    *v36 = v12;
    *&v36[8] = 2048;
    v37 = Nanoseconds / 1000000000.0;
    v38 = 1026;
    v39 = v8;
    v40 = 1026;
    v41 = v29;
    _os_log_impl(&dword_1DED99000, v28, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: UpdateAccountCleanupStatus  isEnabled=%{public,signpost.telemetry:number1,name=isEnabled}d  Error=%{public,signpost.telemetry:number2,name=Error}d ", buf, 0x22u);
  }

  if (!v20)
  {
    v30 = _CDPLogSystem();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [CDPProtectedCloudStorageProxyImpl setWalrusEnabled:v22 accountIdentifier:v30 options:? error:?];
    }
  }

  v31 = *MEMORY[0x1E69E9840];
  return v20;
}

- (BOOL)_performPCSBlock:(id)a3 error:(id *)a4
{
  v7 = 0;
  v5 = (*(a3 + 2))(a3, &v7);
  if (a4)
  {
    *a4 = v7;
  }

  else if (v7)
  {
    CFRelease(v7);
  }

  return v5;
}

- (void)isWalrusEnabledWithOptions:(id *)a1 error:.cold.1(id *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = [*a1 description];
  OUTLINED_FUNCTION_0(&dword_1DED99000, v2, v3, "Failed to create PCS identity with error: %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)repairWalrusWithAccountIdentifier:(char)a1 options:(NSObject *)a2 error:.cold.2(char a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = 67109120;
  v3[1] = a1 & 1;
  _os_log_debug_impl(&dword_1DED99000, a2, OS_LOG_TYPE_DEBUG, "Walrus state after repair attempt - %i", v3, 8u);
  v2 = *MEMORY[0x1E69E9840];
}

uint64_t __85__CDPProtectedCloudStorageProxyImpl_repairWalrusWithAccountIdentifier_options_error___block_invoke_cold_1()
{
  dlerror();
  v0 = abort_report_np();
  return [CDPProtectedCloudStorageProxyImpl setWalrusEnabled:v0 accountIdentifier:? options:? error:?];
}

- (void)setWalrusEnabled:(uint64_t)a1 accountIdentifier:(NSObject *)a2 options:error:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1DED99000, a2, OS_LOG_TYPE_ERROR, "Walrus update failed with error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end