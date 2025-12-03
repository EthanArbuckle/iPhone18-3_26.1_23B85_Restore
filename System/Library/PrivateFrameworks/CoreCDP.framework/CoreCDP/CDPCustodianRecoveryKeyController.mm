@interface CDPCustodianRecoveryKeyController
- (BOOL)_isInSOSCircleWithContext:(id)context;
- (BOOL)verifyRecoveryKeyObservingSystemsHaveMatchingStateWithContext:(id)context error:(id *)error;
- (id)_initializeRecoveryKeyWithInfo:(id)info error:(id *)error;
- (void)checkCustodianRecoveryKey:(id)key withContext:(id)context completion:(id)completion;
- (void)createRecoveryKeyWithContext:(id)context forUUID:(id)d completion:(id)completion;
- (void)deleteRecoveryKeyWithContext:(id)context forUUID:(id)d completion:(id)completion;
- (void)recoverOctagonUsingCustodianInfo:(id)info withContext:(id)context completion:(id)completion;
- (void)validateRecoveryKey:(id)key withContext:(id)context completion:(id)completion;
@end

@implementation CDPCustodianRecoveryKeyController

- (void)createRecoveryKeyWithContext:(id)context forUUID:(id)d completion:(id)completion
{
  v31 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  dCopy = d;
  completionCopy = completion;
  dsid = [contextCopy dsid];
  if (dsid)
  {

LABEL_4:
    v12 = _CDPLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138739971;
      v30 = dCopy;
      _os_log_impl(&dword_1DED99000, v12, OS_LOG_TYPE_DEFAULT, "Asking security to create custodian recovery key for %{sensitive}@", buf, 0xCu);
    }

    v13 = _CDPSignpostLogSystem();
    v14 = _CDPSignpostCreate(v13);
    v16 = v15;

    v17 = _CDPSignpostLogSystem();
    v18 = v17;
    if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1DED99000, v18, OS_SIGNPOST_INTERVAL_BEGIN, v14, "CustodianCreateRecoveryKey", " enableTelemetry=YES ", buf, 2u);
    }

    v19 = _CDPSignpostLogSystem();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v30 = v14;
      _os_log_impl(&dword_1DED99000, v19, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: CustodianCreateRecoveryKey  enableTelemetry=YES ", buf, 0xCu);
    }

    cliqueConfiguration = [contextCopy cliqueConfiguration];
    v21 = MEMORY[0x1E697AA80];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __85__CDPCustodianRecoveryKeyController_createRecoveryKeyWithContext_forUUID_completion___block_invoke;
    v24[3] = &unk_1E869D650;
    v27 = v14;
    v28 = v16;
    v26 = completionCopy;
    v25 = dCopy;
    [v21 createCustodianRecoveryKey:cliqueConfiguration uuid:v25 reply:v24];

    goto LABEL_12;
  }

  altDSID = [contextCopy altDSID];

  if (altDSID)
  {
    goto LABEL_4;
  }

  v23 = _CDPLogSystem();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
  {
    [CDPCustodianRecoveryKeyController createRecoveryKeyWithContext:forUUID:completion:];
  }

  cliqueConfiguration = [MEMORY[0x1E696ABC0] cdp_errorWithCode:-5003];
  (*(completionCopy + 2))(completionCopy, 0, cliqueConfiguration);
LABEL_12:

  v22 = *MEMORY[0x1E69E9840];
}

void __85__CDPCustodianRecoveryKeyController_createRecoveryKeyWithContext_forUUID_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  Nanoseconds = _CDPSignpostGetNanoseconds(a1[6], a1[7]);
  v8 = _CDPSignpostLogSystem();
  v9 = v8;
  v10 = a1[6];
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    v32 = 67240192;
    LODWORD(v33) = [v6 code];
    _os_signpost_emit_with_name_impl(&dword_1DED99000, v9, OS_SIGNPOST_INTERVAL_END, v10, "CustodianCreateRecoveryKey", " Error=%{public,signpost.telemetry:number1,name=Error}d ", &v32, 8u);
  }

  v11 = _CDPSignpostLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = Nanoseconds / 1000000000.0;
    v13 = a1[6];
    v14 = [v6 code];
    v32 = 134218496;
    v33 = v13;
    v34 = 2048;
    v35 = v12;
    v36 = 1026;
    LODWORD(v37) = v14;
    _os_log_impl(&dword_1DED99000, v11, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: CustodianCreateRecoveryKey  Error=%{public,signpost.telemetry:number1,name=Error}d ", &v32, 0x1Cu);
  }

  if (v6)
  {
    v15 = _CDPLogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      __85__CDPCustodianRecoveryKeyController_createRecoveryKeyWithContext_forUUID_completion___block_invoke_cold_1();
    }

    (*(a1[5] + 16))();
  }

  else
  {
    v16 = [v5 wrappedKey];
    if (v16 && (v17 = v16, [v5 wrappingKey], v18 = objc_claimAutoreleasedReturnValue(), v18, v17, v18))
    {
      v19 = _CDPLogSystem();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [v5 uuid];
        v21 = [v5 uuid];
        v22 = a1[4];
        v23 = @"not equal ❌";
        v32 = 138412802;
        v33 = v20;
        if (v21 == v22)
        {
          v23 = @"equal ✅";
        }

        v34 = 2112;
        v35 = *&v23;
        v36 = 2112;
        v37 = v22;
        _os_log_impl(&dword_1DED99000, v19, OS_LOG_TYPE_DEFAULT, "OT CRK uuid %@ is %@ to AA custodianID %@", &v32, 0x20u);
      }

      v24 = [CDPCustodianRecoveryInfo alloc];
      v25 = [v5 wrappedKey];
      v26 = [v5 wrappingKey];
      v27 = [v5 uuid];
      v28 = [(CDPCustodianRecoveryInfo *)v24 initWithWrappedRKC:v25 wrappingKey:v26 custodianUUID:v27];

      v29 = *(a1[5] + 16);
    }

    else
    {
      v30 = a1[5];
      v28 = [MEMORY[0x1E696ABC0] cdp_errorWithCode:0];
      v29 = *(v30 + 16);
    }

    v29();
  }

  v31 = *MEMORY[0x1E69E9840];
}

- (void)deleteRecoveryKeyWithContext:(id)context forUUID:(id)d completion:(id)completion
{
  v31 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  dCopy = d;
  completionCopy = completion;
  dsid = [contextCopy dsid];
  if (dsid)
  {

LABEL_4:
    v12 = _CDPLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138739971;
      v30 = dCopy;
      _os_log_impl(&dword_1DED99000, v12, OS_LOG_TYPE_DEFAULT, "Asking security to delete custodian recovery key for %{sensitive}@", buf, 0xCu);
    }

    v13 = _CDPSignpostLogSystem();
    v14 = _CDPSignpostCreate(v13);
    v16 = v15;

    v17 = _CDPSignpostLogSystem();
    v18 = v17;
    if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1DED99000, v18, OS_SIGNPOST_INTERVAL_BEGIN, v14, "CustodianDeleteRecoveryKey", " enableTelemetry=YES ", buf, 2u);
    }

    v19 = _CDPSignpostLogSystem();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v30 = v14;
      _os_log_impl(&dword_1DED99000, v19, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: CustodianDeleteRecoveryKey  enableTelemetry=YES ", buf, 0xCu);
    }

    cliqueConfiguration = [contextCopy cliqueConfiguration];
    v21 = MEMORY[0x1E697AA80];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __85__CDPCustodianRecoveryKeyController_deleteRecoveryKeyWithContext_forUUID_completion___block_invoke;
    v24[3] = &unk_1E869D678;
    v27 = v14;
    v28 = v16;
    v26 = completionCopy;
    v25 = dCopy;
    [v21 removeCustodianRecoveryKey:cliqueConfiguration custodianRecoveryKeyUUID:v25 reply:v24];

    goto LABEL_12;
  }

  altDSID = [contextCopy altDSID];

  if (altDSID)
  {
    goto LABEL_4;
  }

  v23 = _CDPLogSystem();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
  {
    [CDPCustodianRecoveryKeyController createRecoveryKeyWithContext:forUUID:completion:];
  }

  cliqueConfiguration = [MEMORY[0x1E696ABC0] cdp_errorWithCode:-5003];
  (*(completionCopy + 2))(completionCopy, cliqueConfiguration);
LABEL_12:

  v22 = *MEMORY[0x1E69E9840];
}

void __85__CDPCustodianRecoveryKeyController_deleteRecoveryKeyWithContext_forUUID_completion___block_invoke(void *a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a2;
  Nanoseconds = _CDPSignpostGetNanoseconds(a1[6], a1[7]);
  v5 = _CDPSignpostLogSystem();
  v6 = v5;
  v7 = a1[6];
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    v21 = 67240192;
    LODWORD(v22) = [v3 code];
    _os_signpost_emit_with_name_impl(&dword_1DED99000, v6, OS_SIGNPOST_INTERVAL_END, v7, "CustodianDeleteRecoveryKey", " Error=%{public,signpost.telemetry:number1,name=Error}d ", &v21, 8u);
  }

  v8 = _CDPSignpostLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = Nanoseconds / 1000000000.0;
    v10 = a1[6];
    v11 = [v3 code];
    v21 = 134218496;
    v22 = v10;
    v23 = 2048;
    v24 = v9;
    v25 = 1026;
    v26 = v11;
    _os_log_impl(&dword_1DED99000, v8, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: CustodianDeleteRecoveryKey  Error=%{public,signpost.telemetry:number1,name=Error}d ", &v21, 0x1Cu);
  }

  v12 = _CDPLogSystem();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
  if (v3)
  {
    if (v13)
    {
      __85__CDPCustodianRecoveryKeyController_deleteRecoveryKeyWithContext_forUUID_completion___block_invoke_cold_1();
    }
  }

  else if (v13)
  {
    __85__CDPCustodianRecoveryKeyController_deleteRecoveryKeyWithContext_forUUID_completion___block_invoke_cold_2(a1, v12, v14, v15, v16, v17, v18, v19);
  }

  (*(a1[5] + 16))();
  v20 = *MEMORY[0x1E69E9840];
}

- (void)validateRecoveryKey:(id)key withContext:(id)context completion:(id)completion
{
  keyCopy = key;
  contextCopy = context;
  completionCopy = completion;
  dsid = [contextCopy dsid];
  if (dsid)
  {

LABEL_4:
    cliqueConfiguration = [contextCopy cliqueConfiguration];
    v13 = objc_alloc(MEMORY[0x1E69B7CD0]);
    wrappedRKC = [keyCopy wrappedRKC];
    wrappingKey = [keyCopy wrappingKey];
    custodianUUID = [keyCopy custodianUUID];
    v17 = [v13 initWithWrappedKey:wrappedRKC wrappingKey:wrappingKey uuid:custodianUUID error:0];

    v18 = MEMORY[0x1E697AA80];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __80__CDPCustodianRecoveryKeyController_validateRecoveryKey_withContext_completion___block_invoke;
    v20[3] = &unk_1E869D6A0;
    v22 = completionCopy;
    v21 = keyCopy;
    [v18 preflightRecoverOctagonUsingCustodianRecoveryKey:cliqueConfiguration custodianRecoveryKey:v17 reply:v20];

    goto LABEL_5;
  }

  altDSID = [contextCopy altDSID];

  if (altDSID)
  {
    goto LABEL_4;
  }

  v19 = _CDPLogSystem();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
  {
    [CDPCustodianRecoveryKeyController validateRecoveryKey:withContext:completion:];
  }

  cliqueConfiguration = [MEMORY[0x1E696ABC0] cdp_errorWithCode:-5003];
  (*(completionCopy + 2))(completionCopy, cliqueConfiguration);
LABEL_5:
}

void __80__CDPCustodianRecoveryKeyController_validateRecoveryKey_withContext_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _CDPLogSystem();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __80__CDPCustodianRecoveryKeyController_validateRecoveryKey_withContext_completion___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __80__CDPCustodianRecoveryKeyController_validateRecoveryKey_withContext_completion___block_invoke_cold_2(a1);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)recoverOctagonUsingCustodianInfo:(id)info withContext:(id)context completion:(id)completion
{
  infoCopy = info;
  contextCopy = context;
  completionCopy = completion;
  dsid = [contextCopy dsid];
  if (dsid)
  {

LABEL_4:
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __93__CDPCustodianRecoveryKeyController_recoverOctagonUsingCustodianInfo_withContext_completion___block_invoke;
    v24[3] = &unk_1E869D588;
    v25 = completionCopy;
    v13 = MEMORY[0x1E12CA380](v24);
    v23 = 0;
    v14 = [(CDPCustodianRecoveryKeyController *)self _initializeRecoveryKeyWithInfo:infoCopy error:&v23];
    v15 = v23;
    v16 = _CDPLogSystem();
    v17 = v16;
    if (v15)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [CDPCircleProxyImpl recoverOctagonUsingCustodianInfo:completion:];
      }

      (v13)[2](v13, v15);
    }

    else
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *v22 = 0;
        _os_log_impl(&dword_1DED99000, v17, OS_LOG_TYPE_DEFAULT, "Attempting to recover octagon usign custodian recovery key", v22, 2u);
      }

      v18 = MEMORY[0x1E697AA80];
      cliqueConfiguration = [contextCopy cliqueConfiguration];
      [v18 recoverOctagonUsingCustodianRecoveryKey:cliqueConfiguration custodianRecoveryKey:v14 reply:v13];
    }

    v20 = v25;
    goto LABEL_12;
  }

  altDSID = [contextCopy altDSID];

  if (altDSID)
  {
    goto LABEL_4;
  }

  v21 = _CDPLogSystem();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
  {
    [CDPCustodianRecoveryKeyController recoverOctagonUsingCustodianInfo:withContext:completion:];
  }

  v20 = [MEMORY[0x1E696ABC0] cdp_errorWithCode:-5003];
  (*(completionCopy + 2))(completionCopy, v20);
LABEL_12:
}

void __93__CDPCustodianRecoveryKeyController_recoverOctagonUsingCustodianInfo_withContext_completion___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = _CDPLogSystem();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v6)
    {
      v9 = 0;
      v7 = "Recover octagon usign custodian recovery key failed.";
      v8 = &v9;
LABEL_6:
      _os_log_impl(&dword_1DED99000, v5, OS_LOG_TYPE_DEFAULT, v7, v8, 2u);
    }
  }

  else if (v6)
  {
    *buf = 0;
    v7 = "Recover octagon usign custodian recovery key succeed.";
    v8 = buf;
    goto LABEL_6;
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32));
}

- (id)_initializeRecoveryKeyWithInfo:(id)info error:(id *)error
{
  infoCopy = info;
  v6 = _CDPLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [CDPCustodianRecoveryKeyController _initializeRecoveryKeyWithInfo:infoCopy error:?];
  }

  v7 = objc_alloc(MEMORY[0x1E69B7CD0]);
  wrappedRKC = [infoCopy wrappedRKC];
  wrappingKey = [infoCopy wrappingKey];
  custodianUUID = [infoCopy custodianUUID];
  v11 = [v7 initWithWrappedKey:wrappedRKC wrappingKey:wrappingKey uuid:custodianUUID error:error];

  return v11;
}

- (BOOL)verifyRecoveryKeyObservingSystemsHaveMatchingStateWithContext:(id)context error:(id *)error
{
  v32 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v7 = [[CDPRecoveryKeyStatusProvider alloc] initWithContext:contextCopy];
  if ([(CDPRecoveryKeyStatusProvider *)v7 idmsHasRK])
  {
    cliqueConfiguration = [contextCopy cliqueConfiguration];
    if (cliqueConfiguration)
    {
      v27 = 0;
      v9 = [(CDPRecoveryKeyStatusProvider *)v7 isRecoveryKeySetInOctagonWithError:&v27];
      v10 = v27;
      if (v10)
      {
        v11 = _CDPLogSystem();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          [CDPCustodianRecoveryKeyController verifyRecoveryKeyObservingSystemsHaveMatchingStateWithContext:error:];
        }

        if (error)
        {
          v12 = v10;
          LOBYTE(v9) = 0;
          *error = v10;
LABEL_40:

          goto LABEL_41;
        }

LABEL_39:
        LOBYTE(v9) = 0;
        goto LABEL_40;
      }

      if ([(CDPCustodianRecoveryKeyController *)self _isSOSTrustAndSyncingEnabled])
      {
        if ([contextCopy isSOSCompatibilityOptInNeeded])
        {
          if ([(CDPCustodianRecoveryKeyController *)self _isInSOSCircleWithContext:contextCopy])
          {
            v26 = 0;
            v14 = [(CDPRecoveryKeyStatusProvider *)v7 isRecoveryKeySetInSOSWithError:&v26];
            v15 = v26;
            v16 = _CDPLogSystem();
            v17 = v16;
            if (v15)
            {
              if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
              {
                [CDPCustodianRecoveryKeyController verifyRecoveryKeyObservingSystemsHaveMatchingStateWithContext:error:];
              }

              if (!error)
              {
                LOBYTE(v9) = 0;
                goto LABEL_49;
              }

              v18 = v15;
            }

            else
            {
              if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
              {
                [(CDPCustodianRecoveryKeyController *)v9 verifyRecoveryKeyObservingSystemsHaveMatchingStateWithContext:v14 error:v17];
              }

              LOBYTE(v9) = v9 & v14;
              if (!error || (v9 & 1) != 0)
              {
                goto LABEL_49;
              }

              v18 = _CDPStateError(-5317, 0);
            }

            LOBYTE(v9) = 0;
            *error = v18;
LABEL_49:

            goto LABEL_40;
          }

          v23 = _CDPLogSystem();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1DED99000, v23, OS_LOG_TYPE_DEFAULT, "SOS Opt In is needed. First Resolve SOS Compat CFU", buf, 2u);
          }

          if (!error)
          {
            goto LABEL_39;
          }

          v22 = -5318;
LABEL_34:
          _CDPStateError(v22, 0);
          *error = LOBYTE(v9) = 0;
          goto LABEL_40;
        }

        v19 = _CDPLogSystem();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109376;
          v29 = 1;
          v30 = 1024;
          v31 = v9;
          v20 = "SOS Opt In is not needed, SOS RK status does not matter. idMSHasRK=%{BOOL}d, rkSetInOctagon=%{BOOL}d";
          goto LABEL_28;
        }
      }

      else
      {
        v19 = _CDPLogSystem();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109376;
          v29 = 1;
          v30 = 1024;
          v31 = v9;
          v20 = "SOS trust and syncing is not enabled. idMSHasRK=%{BOOL}d, rkSetInOctagon=%{BOOL}d";
LABEL_28:
          _os_log_impl(&dword_1DED99000, v19, OS_LOG_TYPE_DEFAULT, v20, buf, 0xEu);
        }
      }

      if (error)
      {
        v21 = v9;
      }

      else
      {
        v21 = 1;
      }

      if (v21)
      {
        goto LABEL_40;
      }

      v22 = -5317;
      goto LABEL_34;
    }

    v13 = _CDPLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [CDPCustodianRecoveryKeyController verifyRecoveryKeyObservingSystemsHaveMatchingStateWithContext:error:];
    }

    if (error)
    {
      [MEMORY[0x1E696ABC0] cdp_errorWithCode:-5217 underlyingError:*error];
      *error = LOBYTE(v9) = 0;
    }

    else
    {
      LOBYTE(v9) = 0;
    }
  }

  else
  {
    cliqueConfiguration = _CDPLogSystem();
    if (os_log_type_enabled(cliqueConfiguration, OS_LOG_TYPE_DEBUG))
    {
      [CDPCustodianRecoveryKeyController verifyRecoveryKeyObservingSystemsHaveMatchingStateWithContext:error:];
    }

    LOBYTE(v9) = 1;
  }

LABEL_41:

  v24 = *MEMORY[0x1E69E9840];
  return v9;
}

- (BOOL)_isInSOSCircleWithContext:(id)context
{
  altDSID = [context altDSID];
  v4 = [CDPSOSCircleProxyImpl syncingStatusForAltDSID:altDSID]== 1;

  return v4;
}

- (void)checkCustodianRecoveryKey:(id)key withContext:(id)context completion:(id)completion
{
  keyCopy = key;
  contextCopy = context;
  completionCopy = completion;
  v10 = _CDPLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [CDPCustodianRecoveryKeyController checkCustodianRecoveryKey:withContext:completion:];
  }

  dsid = [contextCopy dsid];
  if (dsid)
  {
  }

  else
  {
    altDSID = [contextCopy altDSID];

    if (!altDSID)
    {
      v16 = _CDPLogSystem();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        [CDPCustodianRecoveryKeyController checkCustodianRecoveryKey:withContext:completion:];
      }

      cliqueConfiguration = [MEMORY[0x1E696ABC0] cdp_errorWithCode:-5003];
      completionCopy[2](completionCopy, 0, cliqueConfiguration);
      goto LABEL_14;
    }
  }

  if (objc_opt_respondsToSelector())
  {
    cliqueConfiguration = [contextCopy cliqueConfiguration];
    v14 = MEMORY[0x1E697AA80];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __86__CDPCustodianRecoveryKeyController_checkCustodianRecoveryKey_withContext_completion___block_invoke;
    v17[3] = &unk_1E869D6C8;
    v18 = completionCopy;
    [v14 checkCustodianRecoveryKey:cliqueConfiguration custodianRecoveryKeyUUID:keyCopy reply:v17];

LABEL_14:
    goto LABEL_15;
  }

  v15 = _CDPLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [CDPCustodianRecoveryKeyController checkCustodianRecoveryKey:withContext:completion:];
  }

  completionCopy[2](completionCopy, 0, 0);
LABEL_15:
}

void __86__CDPCustodianRecoveryKeyController_checkCustodianRecoveryKey_withContext_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = _CDPLogSystem();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __86__CDPCustodianRecoveryKeyController_checkCustodianRecoveryKey_withContext_completion___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __86__CDPCustodianRecoveryKeyController_checkCustodianRecoveryKey_withContext_completion___block_invoke_cold_2(a2, v7);
  }

  (*(*(a1 + 32) + 16))();
}

void __85__CDPCustodianRecoveryKeyController_createRecoveryKeyWithContext_forUUID_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_3(&dword_1DED99000, v0, v1, "Error creating custodian recovery key: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __85__CDPCustodianRecoveryKeyController_deleteRecoveryKeyWithContext_forUUID_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_3(&dword_1DED99000, v0, v1, "Error deleting custodian recovery key: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __85__CDPCustodianRecoveryKeyController_deleteRecoveryKeyWithContext_forUUID_completion___block_invoke_cold_2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = HIDWORD(*(a1 + 32));
  OUTLINED_FUNCTION_0_3(&dword_1DED99000, a2, a3, "Deleted custodian recovery key: for %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __80__CDPCustodianRecoveryKeyController_validateRecoveryKey_withContext_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_3(&dword_1DED99000, v0, v1, "Error validating custodian recovery key: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __80__CDPCustodianRecoveryKeyController_validateRecoveryKey_withContext_completion___block_invoke_cold_2(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [*(a1 + 32) custodianUUID];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5(&dword_1DED99000, v2, v3, "Custodian recovery key is valid for: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_initializeRecoveryKeyWithInfo:(void *)a1 error:.cold.1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [a1 custodianUUID];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5(&dword_1DED99000, v2, v3, "Obtaining recovery key from security for custodian recovery with UUID: %{sensitive}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)verifyRecoveryKeyObservingSystemsHaveMatchingStateWithContext:error:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_3(&dword_1DED99000, v0, v1, "Received error while checking if RK is set in Octagon: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)verifyRecoveryKeyObservingSystemsHaveMatchingStateWithContext:error:.cold.3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_3(&dword_1DED99000, v0, v1, "Received error while checking if RK is set in SOS: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)verifyRecoveryKeyObservingSystemsHaveMatchingStateWithContext:(os_log_t)log error:.cold.4(char a1, char a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v4[0] = 67109632;
  v4[1] = 1;
  v5 = 1024;
  v6 = a1 & 1;
  v7 = 1024;
  v8 = a2 & 1;
  _os_log_debug_impl(&dword_1DED99000, log, OS_LOG_TYPE_DEBUG, "idMSHasRK=%{BOOL}d, rkSetInOctagon=%{BOOL}d, rkSetInSOS=%{BOOL}d", v4, 0x14u);
  v3 = *MEMORY[0x1E69E9840];
}

void __86__CDPCustodianRecoveryKeyController_checkCustodianRecoveryKey_withContext_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_3(&dword_1DED99000, v0, v1, "Error while checking if custodian recovery key is present: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __86__CDPCustodianRecoveryKeyController_checkCustodianRecoveryKey_withContext_completion___block_invoke_cold_2(char a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = 67109120;
  v3[1] = a1 & 1;
  _os_log_debug_impl(&dword_1DED99000, a2, OS_LOG_TYPE_DEBUG, "Custodian recovery key exists: %{BOOL}d", v3, 8u);
  v2 = *MEMORY[0x1E69E9840];
}

@end