@interface OTClique(Framework)
+ (BOOL)recoverWithRecoveryKey:()Framework recoveryKey:error:;
+ (BOOL)setRecoveryKeyWithContext:()Framework recoveryKey:error:;
+ (NSObject)fetchAndHandleEscrowRecords:()Framework shouldFilter:error:;
+ (id)_fetchAccountWideSettingsDefaultWithForceFetch:()Framework useDefault:configuration:error:;
+ (id)createAndSetRecoveryKeyWithContext:()Framework error:;
+ (id)escrowCheck:()Framework isBackgroundCheck:error:;
+ (id)fetchAllEscrowRecords:()Framework error:;
+ (id)fetchEscrowRecords:()Framework error:;
+ (id)filterRecords:()Framework;
+ (id)filterViableSOSRecords:()Framework;
+ (id)handleRecoveryResults:()Framework recoveredInformation:record:performedSilentBurn:error:;
+ (id)performEscrowRecovery:()Framework cdpContext:escrowRecord:error:;
+ (id)performSilentEscrowRecovery:()Framework cdpContext:allRecords:error:;
+ (id)recordMatchingLabel:()Framework allRecords:;
+ (id)sortListPrioritizingiOSRecords:()Framework;
+ (id)totalTrustedPeers:()Framework error:;
+ (id)trustedFullPeers:()Framework error:;
+ (uint64_t)areRecoveryKeysDistrusted:()Framework error:;
+ (uint64_t)doesRecoveryKeyExistInOctagonAndIsCorrect:()Framework recoveryKey:error:;
+ (uint64_t)doesRecoveryKeyExistInSOSAndIsCorrect:()Framework recoveryKey:error:;
+ (uint64_t)ensureBackupKeyExistsinSOS:()Framework;
+ (uint64_t)invalidateEscrowCache:()Framework error:;
+ (uint64_t)isRecoveryKeySet:()Framework error:;
+ (uint64_t)isRecoveryKeySetInOctagon:()Framework error:;
+ (uint64_t)isRecoveryKeySetInSOS:()Framework error:;
+ (uint64_t)preflightRecoverOctagonUsingRecoveryKey:()Framework recoveryKey:error:;
+ (uint64_t)registerRecoveryKeyInSOSAndBackup:()Framework recoveryKey:error:;
+ (uint64_t)registerRecoveryKeyWithContext:()Framework recoveryKey:error:;
- (BOOL)removeLocalSecureElementIdentityPeerID:()Framework error:;
- (BOOL)removeRecoveryKey:()Framework error:;
- (BOOL)removeRecoveryKeyFromSOSWhenInCircle:()Framework error:;
- (BOOL)setAccountSetting:()Framework error:;
- (BOOL)setLocalSecureElementIdentity:()Framework error:;
- (BOOL)waitForPriorityViewKeychainDataRecovery:()Framework;
- (id)fetchAccountSettings:()Framework;
- (id)fetchTrustedSecureElementIdentities:()Framework;
- (id)tlkRecoverabilityForEscrowRecord:()Framework error:;
- (uint64_t)deliverAKDeviceListDelta:()Framework error:;
- (unint64_t)removeRecoveryKeyFromSOSWhenNOTInCircle:()Framework error:;
@end

@implementation OTClique(Framework)

- (BOOL)removeRecoveryKey:()Framework error:
{
  v36[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = secLogObjForScope();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v6;
    _os_log_impl(&dword_1C9430000, v7, OS_LOG_TYPE_DEFAULT, "Removing recovery key for context:%@", &buf, 0xCu);
  }

  v29[1] = 0;
  v8 = SOSCCThisDeviceIsInCircle();
  v9 = SOSCCIsSOSTrustAndSyncingEnabled();
  if (v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  if (v10 == 1)
  {
    v29[0] = 0;
    [self removeRecoveryKeyFromSOSWhenInCircle:v6 error:v29];
    v11 = v29;
  }

  else
  {
    v28 = 0;
    [self removeRecoveryKeyFromSOSWhenNOTInCircle:v6 error:&v28];
    v11 = &v28;
  }

  v12 = *v11;
  if (v12)
  {
    v13 = secLogObjForScope();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    LODWORD(buf) = 138412290;
    *(&buf + 4) = v12;
    v14 = "octagon-remove-recovery-key, error removing recovery key from SOS: %@";
    v15 = v13;
    v16 = 12;
  }

  else
  {
    v13 = secLogObjForScope();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    LOWORD(buf) = 0;
    v14 = "Removed recovery key from SOS";
    v15 = v13;
    v16 = 2;
  }

  _os_log_impl(&dword_1C9430000, v15, OS_LOG_TYPE_DEFAULT, v14, &buf, v16);
LABEL_15:

  *&buf = 0;
  *(&buf + 1) = &buf;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy_;
  v35 = __Block_byref_object_dispose_;
  v36[0] = 0;
  obj = 0;
  v17 = [v6 makeOTControl:&obj];
  objc_storeStrong(v36, obj);
  if (v17)
  {
    v18 = [objc_alloc(MEMORY[0x1E697AA90]) initWithConfiguration:v6];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __47__OTClique_Framework__removeRecoveryKey_error___block_invoke;
    v26[3] = &unk_1E833E7B0;
    v26[4] = &buf;
    [v17 removeRecoveryKey:v18 reply:v26];

    v19 = *(&buf + 1);
    if (a4)
    {
      v20 = *(*(&buf + 1) + 40);
      if (v20)
      {
        *a4 = v20;
        v19 = *(&buf + 1);
      }
    }

    v21 = *(v19 + 40) == 0;
  }

  else
  {
    v22 = secLogObjForScope();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = *(*(&buf + 1) + 40);
      *v30 = 138412290;
      v31 = v23;
      _os_log_impl(&dword_1C9430000, v22, OS_LOG_TYPE_DEFAULT, "unable to create otcontrol: %@", v30, 0xCu);
    }

    v21 = 0;
    if (a4)
    {
      *a4 = *(*(&buf + 1) + 40);
    }
  }

  _Block_object_dispose(&buf, 8);
  v24 = *MEMORY[0x1E69E9840];
  return v21;
}

- (unint64_t)removeRecoveryKeyFromSOSWhenNOTInCircle:()Framework error:
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = secLogObjForScope();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9430000, v6, OS_LOG_TYPE_DEFAULT, "Removing recovery key when not in circle", buf, 2u);
  }

  v22 = 0;
  if (SOSCCPushResetCircle())
  {
    v7 = secLogObjForScope();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9430000, v7, OS_LOG_TYPE_DEFAULT, "successfully pushed a reset circle", buf, 2u);
    }

    v8 = [v5 sbd];
    v10 = v8;
    if (v8)
    {
      v11 = v8;
    }

    else
    {
      gotLoadHelper_x8__OBJC_CLASS___SecureBackup(v9);
      v11 = [objc_alloc(*(v13 + 3448)) initWithUserActivityLabel:@"octagon-trust-remove-recovery-key-not-in-circle"];
    }

    v14 = v11;

    v21 = 0;
    LODWORD(v10) = [v14 removeRecoveryKeyFromBackup:&v21];
    v15 = v21;
    if (v15)
    {
      v10 = 0;
    }

    else
    {
      v10 = v10;
    }

    if (v10)
    {
      v16 = secLogObjForScope();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C9430000, v16, OS_LOG_TYPE_DEFAULT, "removed recovery key from the backup", buf, 2u);
      }
    }

    else
    {
      v17 = secLogObjForScope();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v24 = v15;
        _os_log_impl(&dword_1C9430000, v17, OS_LOG_TYPE_DEFAULT, "octagon-remove-recovery-key: failed to remove recovery key from the backup: %@", buf, 0xCu);
      }

      if (a4)
      {
        v18 = v15;
        *a4 = v15;
      }
    }
  }

  else
  {
    v12 = secLogObjForScope();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v24 = v22;
      _os_log_impl(&dword_1C9430000, v12, OS_LOG_TYPE_DEFAULT, "octagon-remove-recovery-key: failed to push: %@", buf, 0xCu);
    }

    v10 = 0;
    if (a4)
    {
      *a4 = v22;
    }
  }

  v19 = *MEMORY[0x1E69E9840];
  return v10;
}

- (BOOL)removeRecoveryKeyFromSOSWhenInCircle:()Framework error:
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = secLogObjForScope();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9430000, v6, OS_LOG_TYPE_DEFAULT, "Removing recovery key when device is in circle", buf, 2u);
  }

  v32 = 0;
  v7 = [MEMORY[0x1E697AA80] isRecoveryKeySetInSOS:v5 error:&v32];
  v8 = v32;
  v9 = v8;
  if (v7)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v31 = 0;
    v14 = [MEMORY[0x1E697AA80] ensureBackupKeyExistsinSOS:&v31];
    v15 = v31;
    v16 = v15;
    if (!v14 || v15)
    {
      if (a4)
      {
        v21 = v15;
        v13 = 0;
        *a4 = v16;
LABEL_34:

        goto LABEL_35;
      }
    }

    else
    {
      if (SOSCCRegisterRecoveryPublicKey())
      {
        v17 = [v5 sbd];
        v19 = v17;
        if (v17)
        {
          v20 = v17;
        }

        else
        {
          gotLoadHelper_x8__OBJC_CLASS___SecureBackup(v18);
          v20 = [objc_alloc(*(v23 + 3448)) initWithUserActivityLabel:@"octagon-trust-remove-recovery-key"];
        }

        v24 = v20;

        v25 = [v24 backupForRecoveryKeyWithInfo:0];
        v13 = v25 == 0;
        if (v25)
        {
          v26 = secLogObjForScope();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v34 = v25;
            _os_log_impl(&dword_1C9430000, v26, OS_LOG_TYPE_DEFAULT, "octagon-remove-recovery-key: failed to perform backup: %@", buf, 0xCu);
          }

          if (a4)
          {
            v27 = v25;
            *a4 = v25;
          }
        }

        else
        {
          v28 = secLogObjForScope();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1C9430000, v28, OS_LOG_TYPE_DEFAULT, "Removed recovery key from SOS", buf, 2u);
          }
        }

        goto LABEL_34;
      }

      v22 = secLogObjForScope();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v34 = 0;
        _os_log_impl(&dword_1C9430000, v22, OS_LOG_TYPE_DEFAULT, "octagon-remove-recovery-key: failed to remove recovery key from SOS: %@", buf, 0xCu);
      }

      if (a4)
      {
        v13 = 0;
        *a4 = 0;
        goto LABEL_34;
      }
    }

    v13 = 0;
    goto LABEL_34;
  }

  v11 = secLogObjForScope();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v34 = v9;
    _os_log_impl(&dword_1C9430000, v11, OS_LOG_TYPE_DEFAULT, "octagon-register-recovery-key, recovery key not registered in SOS: %@", buf, 0xCu);
  }

  if (a4)
  {
    v12 = v9;
    v13 = 0;
    *a4 = v9;
  }

  else
  {
    v13 = 0;
  }

LABEL_35:

  v29 = *MEMORY[0x1E69E9840];
  return v13;
}

- (uint64_t)deliverAKDeviceListDelta:()Framework error:
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = secLogObjForScope();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [self ctx];
    v10 = 138412290;
    v11 = v7;
    _os_log_impl(&dword_1C9430000, v6, OS_LOG_TYPE_DEFAULT, "Unimplemented deliverAKDeviceListDelta for context:%@", &v10, 0xCu);
  }

  if (a4)
  {
    *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-4 userInfo:0];
  }

  v8 = *MEMORY[0x1E69E9840];
  return 0;
}

- (id)tlkRecoverabilityForEscrowRecord:()Framework error:
{
  v42 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = secLogObjForScope();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [self ctx];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v8;
    _os_log_impl(&dword_1C9430000, v7, OS_LOG_TYPE_DEFAULT, "tlkRecoverabiltyForEscrowRecord invoked for context:%@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy_;
  v40 = __Block_byref_object_dispose_;
  v41 = 0;
  v9 = [self ctx];
  v10 = (*(&buf + 1) + 40);
  obj = *(*(&buf + 1) + 40);
  v11 = [v9 makeOTControl:&obj];
  objc_storeStrong(v10, obj);

  if (v11)
  {
    *&v32 = 0;
    *(&v32 + 1) = &v32;
    v33 = 0x3032000000;
    v34 = __Block_byref_object_copy_;
    v35 = __Block_byref_object_dispose_;
    v36 = 0;
    v12 = objc_alloc(MEMORY[0x1E697AA90]);
    v13 = [self ctx];
    v14 = [v12 initWithConfiguration:v13];
    data = [v6 data];
    v16 = [self ctx];
    escrowFetchSource = [v16 escrowFetchSource];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __62__OTClique_Framework__tlkRecoverabilityForEscrowRecord_error___block_invoke;
    v26[3] = &unk_1E833E828;
    v26[4] = &v32;
    v26[5] = &buf;
    [v11 tlkRecoverabilityForEscrowRecordData:v14 recordData:data source:escrowFetchSource reply:v26];

    if (a4)
    {
      v18 = *(*(&buf + 1) + 40);
      if (v18)
      {
        *a4 = v18;
      }
    }

    v19 = secLogObjForScope();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *(*(&v32 + 1) + 40);
      *v28 = 138412546;
      v29 = v20;
      v30 = 2112;
      v31 = v6;
      _os_log_impl(&dword_1C9430000, v19, OS_LOG_TYPE_DEFAULT, "views %@ supported for record %@", v28, 0x16u);
    }

    v21 = *(*(&v32 + 1) + 40);
    _Block_object_dispose(&v32, 8);
  }

  else
  {
    v22 = secLogObjForScope();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = *(*(&buf + 1) + 40);
      LODWORD(v32) = 138412290;
      *(&v32 + 4) = v23;
      _os_log_impl(&dword_1C9430000, v22, OS_LOG_TYPE_DEFAULT, "unable to create otcontrol: %@", &v32, 0xCu);
    }

    v21 = 0;
    if (a4)
    {
      *a4 = *(*(&buf + 1) + 40);
    }
  }

  _Block_object_dispose(&buf, 8);
  v24 = *MEMORY[0x1E69E9840];

  return v21;
}

- (BOOL)waitForPriorityViewKeychainDataRecovery:()Framework
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = secLogObjForScope();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [self ctx];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v6;
    _os_log_impl(&dword_1C9430000, v5, OS_LOG_TYPE_DEFAULT, "waitForPriorityViewKeychainDataRecovery invoked for context:%@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy_;
  v27 = __Block_byref_object_dispose_;
  v28 = 0;
  v7 = [self ctx];
  v8 = (*(&buf + 1) + 40);
  obj = *(*(&buf + 1) + 40);
  v9 = [v7 makeOTControl:&obj];
  objc_storeStrong(v8, obj);

  if (v9)
  {
    v10 = objc_alloc(MEMORY[0x1E697AA90]);
    v11 = [self ctx];
    v12 = [v10 initWithConfiguration:v11];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __63__OTClique_Framework__waitForPriorityViewKeychainDataRecovery___block_invoke;
    v20[3] = &unk_1E833E7B0;
    v20[4] = &buf;
    [v9 waitForPriorityViewKeychainDataRecovery:v12 reply:v20];

    v13 = *(&buf + 1);
    if (a3)
    {
      v14 = *(*(&buf + 1) + 40);
      if (v14)
      {
        *a3 = v14;
        v13 = *(&buf + 1);
      }
    }

    v15 = *(v13 + 40) == 0;
  }

  else
  {
    v16 = secLogObjForScope();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(*(&buf + 1) + 40);
      *v22 = 138412290;
      v23 = v17;
      _os_log_impl(&dword_1C9430000, v16, OS_LOG_TYPE_DEFAULT, "unable to create otcontrol: %@", v22, 0xCu);
    }

    v15 = 0;
    if (a3)
    {
      *a3 = *(*(&buf + 1) + 40);
    }
  }

  _Block_object_dispose(&buf, 8);
  v18 = *MEMORY[0x1E69E9840];
  return v15;
}

- (id)fetchAccountSettings:()Framework
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = secLogObjForScope();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [self ctx];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v6;
    _os_log_impl(&dword_1C9430000, v5, OS_LOG_TYPE_DEFAULT, "fetchAccountSettings invoked for context:%@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy_;
  v29 = __Block_byref_object_dispose_;
  v30 = 0;
  v7 = [self ctx];
  v8 = (*(&buf + 1) + 40);
  obj = *(*(&buf + 1) + 40);
  v9 = [v7 makeOTControl:&obj];
  objc_storeStrong(v8, obj);

  if (v9)
  {
    *&v21 = 0;
    *(&v21 + 1) = &v21;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy_;
    v24 = __Block_byref_object_dispose_;
    v25 = 0;
    v10 = objc_alloc(MEMORY[0x1E697AA90]);
    v11 = [self ctx];
    v12 = [v10 initWithConfiguration:v11];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __44__OTClique_Framework__fetchAccountSettings___block_invoke;
    v19[3] = &unk_1E833E760;
    v19[4] = &v21;
    v19[5] = &buf;
    [v9 fetchAccountSettings:v12 reply:v19];

    if (a3)
    {
      v13 = *(*(&buf + 1) + 40);
      if (v13)
      {
        *a3 = v13;
      }
    }

    v14 = *(*(&v21 + 1) + 40);
    _Block_object_dispose(&v21, 8);
  }

  else
  {
    v15 = secLogObjForScope();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(*(&buf + 1) + 40);
      LODWORD(v21) = 138412290;
      *(&v21 + 4) = v16;
      _os_log_impl(&dword_1C9430000, v15, OS_LOG_TYPE_DEFAULT, "unable to create otcontrol: %@", &v21, 0xCu);
    }

    v14 = 0;
    if (a3)
    {
      *a3 = *(*(&buf + 1) + 40);
    }
  }

  _Block_object_dispose(&buf, 8);
  v17 = *MEMORY[0x1E69E9840];

  return v14;
}

- (BOOL)setAccountSetting:()Framework error:
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = secLogObjForScope();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [self ctx];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v8;
    _os_log_impl(&dword_1C9430000, v7, OS_LOG_TYPE_DEFAULT, "setAccountSetting invoked for context:%@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy_;
  v29 = __Block_byref_object_dispose_;
  v30 = 0;
  v9 = [self ctx];
  v10 = (*(&buf + 1) + 40);
  obj = *(*(&buf + 1) + 40);
  v11 = [v9 makeOTControl:&obj];
  objc_storeStrong(v10, obj);

  if (v11)
  {
    v12 = objc_alloc(MEMORY[0x1E697AA90]);
    v13 = [self ctx];
    v14 = [v12 initWithConfiguration:v13];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __47__OTClique_Framework__setAccountSetting_error___block_invoke;
    v22[3] = &unk_1E833E7B0;
    v22[4] = &buf;
    [v11 setAccountSetting:v14 setting:v6 reply:v22];

    v15 = *(&buf + 1);
    if (a4)
    {
      v16 = *(*(&buf + 1) + 40);
      if (v16)
      {
        *a4 = v16;
        v15 = *(&buf + 1);
      }
    }

    v17 = *(v15 + 40) == 0;
  }

  else
  {
    v18 = secLogObjForScope();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(*(&buf + 1) + 40);
      *v24 = 138412290;
      v25 = v19;
      _os_log_impl(&dword_1C9430000, v18, OS_LOG_TYPE_DEFAULT, "unable to create otcontrol: %@", v24, 0xCu);
    }

    v17 = 0;
    if (a4)
    {
      *a4 = *(*(&buf + 1) + 40);
    }
  }

  _Block_object_dispose(&buf, 8);
  v20 = *MEMORY[0x1E69E9840];
  return v17;
}

- (id)fetchTrustedSecureElementIdentities:()Framework
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = secLogObjForScope();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [self ctx];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v6;
    _os_log_impl(&dword_1C9430000, v5, OS_LOG_TYPE_DEFAULT, "fetchTrustedSecureElementIdentities invoked for context:%@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy_;
  v29 = __Block_byref_object_dispose_;
  v30 = 0;
  v7 = [self ctx];
  v8 = (*(&buf + 1) + 40);
  obj = *(*(&buf + 1) + 40);
  v9 = [v7 makeOTControl:&obj];
  objc_storeStrong(v8, obj);

  if (v9)
  {
    *&v21 = 0;
    *(&v21 + 1) = &v21;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy_;
    v24 = __Block_byref_object_dispose_;
    v25 = 0;
    v10 = objc_alloc(MEMORY[0x1E697AA90]);
    v11 = [self ctx];
    v12 = [v10 initWithConfiguration:v11];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __59__OTClique_Framework__fetchTrustedSecureElementIdentities___block_invoke;
    v19[3] = &unk_1E833E7D8;
    v19[4] = &v21;
    v19[5] = &buf;
    [v9 fetchTrustedSecureElementIdentities:v12 reply:v19];

    if (a3)
    {
      v13 = *(*(&buf + 1) + 40);
      if (v13)
      {
        *a3 = v13;
      }
    }

    v14 = *(*(&v21 + 1) + 40);
    _Block_object_dispose(&v21, 8);
  }

  else
  {
    v15 = secLogObjForScope();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(*(&buf + 1) + 40);
      LODWORD(v21) = 138412290;
      *(&v21 + 4) = v16;
      _os_log_impl(&dword_1C9430000, v15, OS_LOG_TYPE_DEFAULT, "unable to create otcontrol: %@", &v21, 0xCu);
    }

    v14 = 0;
    if (a3)
    {
      *a3 = *(*(&buf + 1) + 40);
    }
  }

  _Block_object_dispose(&buf, 8);
  v17 = *MEMORY[0x1E69E9840];

  return v14;
}

- (BOOL)removeLocalSecureElementIdentityPeerID:()Framework error:
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = secLogObjForScope();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [self ctx];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v8;
    _os_log_impl(&dword_1C9430000, v7, OS_LOG_TYPE_DEFAULT, "removeLocalSecureElementIdentityPeerID invoked for context:%@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy_;
  v29 = __Block_byref_object_dispose_;
  v30 = 0;
  v9 = [self ctx];
  v10 = (*(&buf + 1) + 40);
  obj = *(*(&buf + 1) + 40);
  v11 = [v9 makeOTControl:&obj];
  objc_storeStrong(v10, obj);

  if (v11)
  {
    v12 = objc_alloc(MEMORY[0x1E697AA90]);
    v13 = [self ctx];
    v14 = [v12 initWithConfiguration:v13];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __68__OTClique_Framework__removeLocalSecureElementIdentityPeerID_error___block_invoke;
    v22[3] = &unk_1E833E7B0;
    v22[4] = &buf;
    [v11 removeLocalSecureElementIdentityPeerID:v14 secureElementIdentityPeerID:v6 reply:v22];

    v15 = *(&buf + 1);
    if (a4)
    {
      v16 = *(*(&buf + 1) + 40);
      if (v16)
      {
        *a4 = v16;
        v15 = *(&buf + 1);
      }
    }

    v17 = *(v15 + 40) == 0;
  }

  else
  {
    v18 = secLogObjForScope();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(*(&buf + 1) + 40);
      *v24 = 138412290;
      v25 = v19;
      _os_log_impl(&dword_1C9430000, v18, OS_LOG_TYPE_DEFAULT, "unable to create otcontrol: %@", v24, 0xCu);
    }

    v17 = 0;
    if (a4)
    {
      *a4 = *(*(&buf + 1) + 40);
    }
  }

  _Block_object_dispose(&buf, 8);
  v20 = *MEMORY[0x1E69E9840];
  return v17;
}

- (BOOL)setLocalSecureElementIdentity:()Framework error:
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = secLogObjForScope();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [self ctx];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v8;
    _os_log_impl(&dword_1C9430000, v7, OS_LOG_TYPE_DEFAULT, "setLocalSecureElementIdentity invoked for context:%@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy_;
  v29 = __Block_byref_object_dispose_;
  v30 = 0;
  v9 = [self ctx];
  v10 = (*(&buf + 1) + 40);
  obj = *(*(&buf + 1) + 40);
  v11 = [v9 makeOTControl:&obj];
  objc_storeStrong(v10, obj);

  if (v11)
  {
    v12 = objc_alloc(MEMORY[0x1E697AA90]);
    v13 = [self ctx];
    v14 = [v12 initWithConfiguration:v13];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __59__OTClique_Framework__setLocalSecureElementIdentity_error___block_invoke;
    v22[3] = &unk_1E833E7B0;
    v22[4] = &buf;
    [v11 setLocalSecureElementIdentity:v14 secureElementIdentity:v6 reply:v22];

    v15 = *(&buf + 1);
    if (a4)
    {
      v16 = *(*(&buf + 1) + 40);
      if (v16)
      {
        *a4 = v16;
        v15 = *(&buf + 1);
      }
    }

    v17 = *(v15 + 40) == 0;
  }

  else
  {
    v18 = secLogObjForScope();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(*(&buf + 1) + 40);
      *v24 = 138412290;
      v25 = v19;
      _os_log_impl(&dword_1C9430000, v18, OS_LOG_TYPE_DEFAULT, "unable to create otcontrol: %@", v24, 0xCu);
    }

    v17 = 0;
    if (a4)
    {
      *a4 = *(*(&buf + 1) + 40);
    }
  }

  _Block_object_dispose(&buf, 8);
  v20 = *MEMORY[0x1E69E9840];
  return v17;
}

+ (id)escrowCheck:()Framework isBackgroundCheck:error:
{
  v32 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = secLogObjForScope();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    context = [v7 context];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = context;
    _os_log_impl(&dword_1C9430000, v8, OS_LOG_TYPE_DEFAULT, "escrowCheck invoked for context: %@", &buf, 0xCu);
  }

  v26 = 0;
  v10 = [v7 makeOTControl:&v26];
  v11 = v26;
  if (v10)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy_;
    v30 = __Block_byref_object_dispose_;
    v31 = 0;
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy_;
    v24 = __Block_byref_object_dispose_;
    v25 = 0;
    v12 = [objc_alloc(MEMORY[0x1E697AA90]) initWithConfiguration:v7];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __59__OTClique_Framework__escrowCheck_isBackgroundCheck_error___block_invoke;
    v19[3] = &unk_1E833E8F0;
    v19[4] = &buf;
    v19[5] = &v20;
    [v10 escrowCheck:v12 isBackgroundCheck:a4 reply:v19];

    v13 = *(*(&buf + 1) + 40);
    if (v13)
    {
      v14 = 0;
      if (a5)
      {
        *a5 = v13;
      }
    }

    else
    {
      v14 = v21[5];
    }

    _Block_object_dispose(&v20, 8);

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v15 = secLogObjForScope();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v11;
      _os_log_impl(&dword_1C9430000, v15, OS_LOG_TYPE_DEFAULT, "failed to fetch OTControl object: %@", &buf, 0xCu);
    }

    if (a5)
    {
      v16 = v11;
      v14 = 0;
      *a5 = v11;
    }

    else
    {
      v14 = 0;
    }
  }

  v17 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (uint64_t)areRecoveryKeysDistrusted:()Framework error:
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = secLogObjForScope();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    context = [v5 context];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = context;
    _os_log_impl(&dword_1C9430000, v6, OS_LOG_TYPE_DEFAULT, "areRecoveryKeysDistrusted invoked for context: %@", &buf, 0xCu);
  }

  v24 = 0;
  v8 = [v5 makeOTControl:&v24];
  v9 = v24;
  if (v8)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy_;
    v30 = __Block_byref_object_dispose_;
    v31 = 0;
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 0;
    v10 = [objc_alloc(MEMORY[0x1E697AA90]) initWithConfiguration:v5];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __55__OTClique_Framework__areRecoveryKeysDistrusted_error___block_invoke;
    v19[3] = &unk_1E833E850;
    v19[4] = &buf;
    v19[5] = &v20;
    [v8 areRecoveryKeysDistrusted:v10 reply:v19];

    v11 = *(*(&buf + 1) + 40);
    if (v11)
    {
      v12 = 0;
      if (a4)
      {
        *a4 = v11;
      }
    }

    else
    {
      v15 = secLogObjForScope();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        if (*(v21 + 24))
        {
          v16 = @"contains";
        }

        else
        {
          v16 = @"does not contain";
        }

        *v25 = 138412290;
        v26 = v16;
        _os_log_impl(&dword_1C9430000, v15, OS_LOG_TYPE_DEFAULT, "Octagon circle %@ distrusted recovery keys", v25, 0xCu);
      }

      v12 = *(v21 + 24);
    }

    _Block_object_dispose(&v20, 8);
    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v13 = secLogObjForScope();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v9;
      _os_log_impl(&dword_1C9430000, v13, OS_LOG_TYPE_DEFAULT, "failed to fetch OTControl object: %@", &buf, 0xCu);
    }

    if (a4)
    {
      v14 = v9;
      v12 = 0;
      *a4 = v9;
    }

    else
    {
      v12 = 0;
    }
  }

  v17 = *MEMORY[0x1E69E9840];
  return v12 & 1;
}

+ (id)trustedFullPeers:()Framework error:
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = secLogObjForScope();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    context = [v5 context];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = context;
    _os_log_impl(&dword_1C9430000, v6, OS_LOG_TYPE_DEFAULT, "trustedFullPeers invoked for context: %@", &buf, 0xCu);
  }

  v26 = 0;
  v8 = [v5 makeOTControl:&v26];
  v9 = v26;
  if (v8)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v30 = 0x3032000000;
    v31 = __Block_byref_object_copy_;
    v32 = __Block_byref_object_dispose_;
    v33 = 0;
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy_;
    v24 = __Block_byref_object_dispose_;
    v25 = 0;
    v10 = [objc_alloc(MEMORY[0x1E697AA90]) initWithConfiguration:v5];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __46__OTClique_Framework__trustedFullPeers_error___block_invoke;
    v19[3] = &unk_1E833E8C8;
    v19[4] = &buf;
    v19[5] = &v20;
    [v8 trustedFullPeers:v10 reply:v19];

    v11 = *(*(&buf + 1) + 40);
    if (v11)
    {
      v12 = 0;
      if (a4)
      {
        *a4 = v11;
      }
    }

    else
    {
      v15 = secLogObjForScope();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = v21[5];
        *v27 = 138412290;
        v28 = v16;
        _os_log_impl(&dword_1C9430000, v15, OS_LOG_TYPE_DEFAULT, "Number of trusted Octagon full peers: %@", v27, 0xCu);
      }

      v12 = v21[5];
    }

    _Block_object_dispose(&v20, 8);

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v13 = secLogObjForScope();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v9;
      _os_log_impl(&dword_1C9430000, v13, OS_LOG_TYPE_DEFAULT, "failed to fetch OTControl object: %@", &buf, 0xCu);
    }

    if (a4)
    {
      v14 = v9;
      v12 = 0;
      *a4 = v9;
    }

    else
    {
      v12 = 0;
    }
  }

  v17 = *MEMORY[0x1E69E9840];

  return v12;
}

+ (id)totalTrustedPeers:()Framework error:
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = secLogObjForScope();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    context = [v5 context];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = context;
    _os_log_impl(&dword_1C9430000, v6, OS_LOG_TYPE_DEFAULT, "totalTrustedPeers invoked for context: %@", &buf, 0xCu);
  }

  v26 = 0;
  v8 = [v5 makeOTControl:&v26];
  v9 = v26;
  if (v8)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v30 = 0x3032000000;
    v31 = __Block_byref_object_copy_;
    v32 = __Block_byref_object_dispose_;
    v33 = 0;
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy_;
    v24 = __Block_byref_object_dispose_;
    v25 = 0;
    v10 = [objc_alloc(MEMORY[0x1E697AA90]) initWithConfiguration:v5];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __47__OTClique_Framework__totalTrustedPeers_error___block_invoke;
    v19[3] = &unk_1E833E8C8;
    v19[4] = &buf;
    v19[5] = &v20;
    [v8 totalTrustedPeers:v10 reply:v19];

    v11 = *(*(&buf + 1) + 40);
    if (v11)
    {
      v12 = 0;
      if (a4)
      {
        *a4 = v11;
      }
    }

    else
    {
      v15 = secLogObjForScope();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = v21[5];
        *v27 = 138412290;
        v28 = v16;
        _os_log_impl(&dword_1C9430000, v15, OS_LOG_TYPE_DEFAULT, "Number of trusted Octagon peers: %@", v27, 0xCu);
      }

      v12 = v21[5];
    }

    _Block_object_dispose(&v20, 8);

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v13 = secLogObjForScope();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v9;
      _os_log_impl(&dword_1C9430000, v13, OS_LOG_TYPE_DEFAULT, "failed to fetch OTControl object: %@", &buf, 0xCu);
    }

    if (a4)
    {
      v14 = v9;
      v12 = 0;
      *a4 = v9;
    }

    else
    {
      v12 = 0;
    }
  }

  v17 = *MEMORY[0x1E69E9840];

  return v12;
}

+ (uint64_t)preflightRecoverOctagonUsingRecoveryKey:()Framework recoveryKey:error:
{
  v34 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = secLogObjForScope();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v7;
    _os_log_impl(&dword_1C9430000, v9, OS_LOG_TYPE_DEFAULT, "Preflight using recovery key for context: %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy_;
  v32 = __Block_byref_object_dispose_;
  v33 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  obj[1] = 0;
  if ((SecPasswordValidatePasswordFormat() & 1) == 0)
  {
    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E697AAE8] code:41 description:@"malformed recovery key"];
    v15 = secLogObjForScope();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v27 = 138412290;
      v28 = v11;
      _os_log_impl(&dword_1C9430000, v15, OS_LOG_TYPE_DEFAULT, "octagon-preflight-recovery-key: recovery failed validation with error:%@", v27, 0xCu);
    }

    if (a5)
    {
      v16 = v11;
      v14 = 0;
      *a5 = v11;
      goto LABEL_19;
    }

LABEL_18:
    v14 = 0;
    goto LABEL_19;
  }

  v10 = (*(&buf + 1) + 40);
  obj[0] = *(*(&buf + 1) + 40);
  v11 = [v7 makeOTControl:obj];
  objc_storeStrong(v10, obj[0]);
  if (!v11)
  {
    v17 = secLogObjForScope();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *(*(&buf + 1) + 40);
      *v27 = 138412290;
      v28 = v18;
      _os_log_impl(&dword_1C9430000, v17, OS_LOG_TYPE_DEFAULT, "unable to create otcontrol: %@", v27, 0xCu);
    }

    if (a5)
    {
      v11 = 0;
      v14 = 0;
      *a5 = *(*(&buf + 1) + 40);
      goto LABEL_19;
    }

    v11 = 0;
    goto LABEL_18;
  }

  v12 = [objc_alloc(MEMORY[0x1E697AA90]) initWithConfiguration:v7];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __81__OTClique_Framework__preflightRecoverOctagonUsingRecoveryKey_recoveryKey_error___block_invoke;
  v21[3] = &unk_1E833E850;
  v21[4] = &v23;
  v21[5] = &buf;
  [v11 preflightRecoverOctagonUsingRecoveryKey:v12 recoveryKey:v8 reply:v21];

  if (a5)
  {
    v13 = *(*(&buf + 1) + 40);
    if (v13)
    {
      *a5 = v13;
    }
  }

  v14 = *(v24 + 24);
LABEL_19:

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&buf, 8);

  v19 = *MEMORY[0x1E69E9840];
  return v14 & 1;
}

+ (BOOL)recoverWithRecoveryKey:()Framework recoveryKey:error:
{
  v86[2] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = secLogObjForScope();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v7;
    _os_log_impl(&dword_1C9430000, v9, OS_LOG_TYPE_DEFAULT, "Recovering account trust using recovery key for context:%@", &buf, 0xCu);
  }

  v76 = 0;
  if (SecPasswordValidatePasswordFormat())
  {
    v75 = 0;
    v10 = [MEMORY[0x1E697AA80] doesRecoveryKeyExistInSOSAndIsCorrect:v7 recoveryKey:v8 error:&v75];
    v11 = v75;
    v74 = 0;
    v12 = [MEMORY[0x1E697AA80] doesRecoveryKeyExistInOctagonAndIsCorrect:v7 recoveryKey:v8 error:&v74];
    v62 = v74;
    if (v62)
    {
      domain = [v62 domain];
      if (![domain isEqualToString:*MEMORY[0x1E697AB20]])
      {
        goto LABEL_27;
      }

      v14 = [v62 code] == 31;

      if (v14)
      {
        userInfo = [v62 userInfo];
        v16 = *MEMORY[0x1E696AA08];
        domain = [userInfo objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

        if (domain)
        {
          v13Domain = [domain domain];
          if (![v13Domain isEqualToString:*MEMORY[0x1E697AB28]])
          {
LABEL_26:

            goto LABEL_27;
          }

          v18 = [domain code] == 3;

          if (v18)
          {
            userInfo2 = [domain userInfo];
            v20 = [userInfo2 objectForKeyedSubscript:v16];

            if (v20)
            {
              domain2 = [v20 domain];
              if ([domain2 isEqualToString:*MEMORY[0x1E696A768]])
              {
                v22 = [v20 code] == -25308;

                if (v22)
                {
                  v23 = secLogObjForScope();
                  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
                  {
                    LODWORD(buf) = 138412290;
                    *(&buf + 4) = v20;
                    _os_log_impl(&dword_1C9430000, v23, OS_LOG_TYPE_DEFAULT, "octagon-recover-with-rk: device is locked %@", &buf, 0xCu);
                  }

                  v24 = v20;
                  if (a5)
                  {
                    v25 = v20;
                    v24 = v20;
                    *a5 = v20;
                  }

                  goto LABEL_102;
                }
              }

              else
              {
              }

              v13Domain = v20;
            }

            else
            {
              v13Domain = 0;
            }

            goto LABEL_26;
          }
        }

LABEL_27:
      }
    }

    if (v10 != 3 && v12 != 3)
    {
      v29 = secLogObjForScope();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1C9430000, v29, OS_LOG_TYPE_DEFAULT, "octagon-recover-with-rk: recovery key will not work for both SOS and Octagon", &buf, 2u);
      }

      if (!a5)
      {
        goto LABEL_102;
      }

      if (v10 == 1 && v12 == 1)
      {
        v30 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E697AAE8] code:64 description:@"Recovery key is not registered"];
LABEL_98:
        v28 = 0;
        *a5 = v30;
        goto LABEL_103;
      }

      if (v12 != 2 && v10 != 2)
      {
        if (v62)
        {
          v35 = v62;
          v28 = 0;
          *a5 = v62;
LABEL_103:

          goto LABEL_104;
        }

        v36 = SOSCCIsSOSTrustAndSyncingEnabled();
        if (v11)
        {
          v37 = v36;
        }

        else
        {
          v37 = 0;
        }

        if (v37 == 1)
        {
          v38 = v11;
          v28 = 0;
          *a5 = v11;
          goto LABEL_103;
        }
      }

      v30 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E697AAE8] code:67 description:@"Recovery key is not correct"];
      goto LABEL_98;
    }

    if (v10 != 3)
    {
      goto LABEL_72;
    }

    if (SOSCCIsSOSTrustAndSyncingEnabled())
    {
      v31 = [v8 dataUsingEncoding:4];
      if (!v31)
      {
        if (!a5)
        {
LABEL_102:
          v28 = 0;
          goto LABEL_103;
        }

        v30 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E697AAE8] code:41 description:@"Malformed recovery key"];
        goto LABEL_98;
      }

      v32 = [v7 sbd];
      v34 = v32;
      if (v32)
      {
        v61 = v32;
      }

      else
      {
        gotLoadHelper_x8__OBJC_CLASS___SecureBackup(v33);
        v61 = [objc_alloc(*(v39 + 3448)) initWithUserActivityLabel:@"octagon-trust-recover-with-recovery-key"];
      }

      v73 = 0;
      v40 = [v61 restoreKeychainWithBackupPassword:v31 error:&v73];
      v41 = v73;
      if (v40)
      {
        v42 = secLogObjForScope();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_1C9430000, v42, OS_LOG_TYPE_DEFAULT, "restoreKeychainWithBackupPassword succeeded", &buf, 2u);
        }
      }

      else
      {
        v43 = secLogObjForScope();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v41;
          _os_log_impl(&dword_1C9430000, v43, OS_LOG_TYPE_DEFAULT, "octagon-recover-with-rk: restoreKeychainWithBackupPassword returned error: %@", &buf, 0xCu);
        }

        if (v12 != 3)
        {
          if (a5)
          {
            if (v41)
            {
              v44 = v41;
              v45 = v41;
            }

            else
            {
              v45 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E697AAE8] code:66 description:@"Restore Keychain With Backup Password Failed"];
            }

            *a5 = v45;
          }

          goto LABEL_102;
        }
      }
    }

    if (v12 == 1)
    {
      if ((SOSCCIsSOSTrustAndSyncingEnabled() & 1) == 0 && [v7 octagonCapableRecordsExist])
      {
        v46 = secLogObjForScope();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_1C9430000, v46, OS_LOG_TYPE_DEFAULT, "Recovery key exists in SOS but not in Octagon and this platform does not support SOS.  Octagon records exist, forcing iCSC restore", &buf, 2u);
        }

        if (!a5)
        {
          goto LABEL_102;
        }

        v30 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E697AAE8] code:65 description:{@"recover with recovery key configuration not supported, forcing iCSC restore"}];
        goto LABEL_98;
      }

      v47 = 1;
    }

    else
    {
LABEL_72:
      v47 = 0;
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v83 = 0x3032000000;
    v84 = __Block_byref_object_copy_;
    v85 = __Block_byref_object_dispose_;
    v86[0] = 0;
    obj = 0;
    v48 = [v7 makeOTControl:&obj];
    objc_storeStrong(v86, obj);
    if (v48)
    {
      if (v47)
      {
        v49 = [objc_alloc(MEMORY[0x1E697AA90]) initWithConfiguration:v7];
        *&v77 = 0;
        *(&v77 + 1) = &v77;
        v78 = 0x3032000000;
        v79 = __Block_byref_object_copy_;
        v80 = __Block_byref_object_dispose_;
        v81 = 0;
        v70[0] = 0;
        v70[1] = v70;
        v70[2] = 0x3032000000;
        v70[3] = __Block_byref_object_copy_;
        v70[4] = __Block_byref_object_dispose_;
        v71 = 0;
        v69[0] = MEMORY[0x1E69E9820];
        v69[1] = 3221225472;
        v69[2] = __64__OTClique_Framework__recoverWithRecoveryKey_recoveryKey_error___block_invoke;
        v69[3] = &unk_1E833E760;
        v69[4] = &v77;
        v69[5] = v70;
        [v48 fetchAccountWideSettingsWithForceFetch:1 arguments:v49 reply:v69];
        if ([*(*(&v77 + 1) + 40) hasWalrus])
        {
          walrus = [*(*(&v77 + 1) + 40) walrus];
          enabled = [walrus enabled];
        }

        else
        {
          enabled = 0;
        }

        isGuitarfish = [v7 isGuitarfish];
        v64[0] = MEMORY[0x1E69E9820];
        v64[1] = 3221225472;
        v64[2] = __64__OTClique_Framework__recoverWithRecoveryKey_recoveryKey_error___block_invoke_2;
        v64[3] = &unk_1E833E8A0;
        p_buf = &buf;
        v65 = v48;
        v66 = v7;
        v67 = v8;
        BYTE1(v60) = enabled;
        LOBYTE(v60) = isGuitarfish;
        [v65 resetAndEstablish:v49 resetReason:5 idmsTargetContext:0 idmsCuttlefishPassword:0 notifyIdMS:0 accountSettings:0 isGuitarfish:v60 accountIsW:v64 reply:?];

        _Block_object_dispose(v70, 8);
        _Block_object_dispose(&v77, 8);

        goto LABEL_92;
      }

      if (v12 == 3)
      {
        v49 = [objc_alloc(MEMORY[0x1E697AA90]) initWithConfiguration:v7];
        v63[0] = MEMORY[0x1E69E9820];
        v63[1] = 3221225472;
        v63[2] = __64__OTClique_Framework__recoverWithRecoveryKey_recoveryKey_error___block_invoke_151;
        v63[3] = &unk_1E833E7B0;
        v63[4] = &buf;
        [v48 recoverWithRecoveryKey:v49 recoveryKey:v8 reply:v63];
LABEL_92:

        v57 = *(*(&buf + 1) + 40);
        if (a5 && v57)
        {
          *a5 = v57;
          v57 = *(*(&buf + 1) + 40);
        }

        v28 = v57 == 0;
        goto LABEL_96;
      }

      v55 = secLogObjForScope();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v77) = 0;
        _os_log_impl(&dword_1C9430000, v55, OS_LOG_TYPE_DEFAULT, "octagon-recover-with-rk: joining with recovery key failed, recovery key is not correct in Octagon", &v77, 2u);
      }

      if (a5)
      {
        v54 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E697AAE8] code:67 description:@"Recovery key is not correct"];
        goto LABEL_88;
      }
    }

    else
    {
      v52 = secLogObjForScope();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        v53 = *(*(&buf + 1) + 40);
        LODWORD(v77) = 138412290;
        *(&v77 + 4) = v53;
        _os_log_impl(&dword_1C9430000, v52, OS_LOG_TYPE_DEFAULT, "octagon-recover-with-rk: unable to create otcontrol: %@", &v77, 0xCu);
      }

      if (a5)
      {
        v54 = *(*(&buf + 1) + 40);
LABEL_88:
        v28 = 0;
        *a5 = v54;
LABEL_96:

        _Block_object_dispose(&buf, 8);
        goto LABEL_103;
      }
    }

    v28 = 0;
    goto LABEL_96;
  }

  v11 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E697AAE8] code:41 description:@"Malformed Recovery Key" underlying:v76];

  v26 = secLogObjForScope();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v11;
    _os_log_impl(&dword_1C9430000, v26, OS_LOG_TYPE_DEFAULT, "octagon-recover-with-rk: recovery failed validation with error:%@", &buf, 0xCu);
  }

  if (a5)
  {
    v27 = v11;
    v28 = 0;
    *a5 = v11;
  }

  else
  {
    v28 = 0;
  }

LABEL_104:

  v58 = *MEMORY[0x1E69E9840];
  return v28;
}

+ (uint64_t)doesRecoveryKeyExistInOctagonAndIsCorrect:()Framework recoveryKey:error:
{
  v35[2] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v27 = 0;
  v9 = [v7 makeOTControl:&v27];
  v10 = v27;
  if (v9)
  {
    *&v31 = 0;
    *(&v31 + 1) = &v31;
    v32 = 0x3032000000;
    v33 = __Block_byref_object_copy_;
    v34 = __Block_byref_object_dispose_;
    v35[0] = 0;
    obj = 0;
    v11 = [MEMORY[0x1E697AA80] isRecoveryKeySetInOctagon:v7 error:&obj];
    objc_storeStrong(v35, obj);
    if (v11 && !*(*(&v31 + 1) + 40))
    {
      v21 = secLogObjForScope();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1C9430000, v21, OS_LOG_TYPE_DEFAULT, "recovery key is registered in Octagon, checking if it is correct", &buf, 2u);
      }

      *&buf = 0;
      *(&buf + 1) = &buf;
      v29 = 0x2020000000;
      v30 = 0;
      v22 = [objc_alloc(MEMORY[0x1E697AA90]) initWithConfiguration:v7];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __83__OTClique_Framework__doesRecoveryKeyExistInOctagonAndIsCorrect_recoveryKey_error___block_invoke;
      v25[3] = &unk_1E833E850;
      v25[4] = &v31;
      v25[5] = &buf;
      [v9 preflightRecoverOctagonUsingRecoveryKey:v22 recoveryKey:v8 reply:v25];

      if (*(*(&buf + 1) + 24) && !*(*(&v31 + 1) + 40))
      {
        v18 = 3;
      }

      else
      {
        if (a5)
        {
          v23 = *(*(&v31 + 1) + 40);
          if (v23)
          {
            v24 = v23;
          }

          else
          {
            v24 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E697AAE8] code:67 description:@"Recovery key is incorrect"];
          }

          *a5 = v24;
        }

        v18 = 2;
      }

      _Block_object_dispose(&buf, 8);
    }

    else
    {
      v12 = secLogObjForScope();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(*(&v31 + 1) + 40);
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v13;
        _os_log_impl(&dword_1C9430000, v12, OS_LOG_TYPE_DEFAULT, "octagon-recover-with-rk: recovery key not registered in Octagon, error: %@", &buf, 0xCu);
      }

      if (a5)
      {
        v14 = *(*(&v31 + 1) + 40);
        if (v14)
        {
          v15 = v14;
        }

        else
        {
          v15 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E697AAE8] code:64 description:@"Recovery key does not exist in Octagon"];
        }

        *a5 = v15;
      }

      v18 = 1;
    }

    _Block_object_dispose(&v31, 8);
  }

  else
  {
    v16 = secLogObjForScope();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v31) = 138412290;
      *(&v31 + 4) = v10;
      _os_log_impl(&dword_1C9430000, v16, OS_LOG_TYPE_DEFAULT, "octagon-recover-with-rk: unable to create otcontrol: %@", &v31, 0xCu);
    }

    if (a5)
    {
      v17 = v10;
      v18 = 0;
      *a5 = v10;
    }

    else
    {
      v18 = 0;
    }
  }

  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

+ (uint64_t)doesRecoveryKeyExistInSOSAndIsCorrect:()Framework recoveryKey:error:
{
  v33 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v30 = 0;
  v9 = [MEMORY[0x1E697AA80] isRecoveryKeySetInSOS:v7 error:&v30];
  v10 = v30;
  if (v9)
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    v15 = secLogObjForScope();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9430000, v15, OS_LOG_TYPE_DEFAULT, "recovery key is registered in SOS", buf, 2u);
    }

    v16 = [v7 sbd];
    v18 = v16;
    if (v16)
    {
      v19 = v16;
    }

    else
    {
      gotLoadHelper_x8__OBJC_CLASS___SecureBackup(v17);
      v19 = [objc_alloc(*(v20 + 3448)) initWithUserActivityLabel:@"octagon-trust-verify-recovery-key"];
    }

    v21 = v19;

    v29 = 0;
    v22 = [v21 verifyRecoveryKey:v8 error:&v29];
    v23 = v29;
    v12 = v23;
    if (!v22 || v23)
    {
      v25 = secLogObjForScope();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C9430000, v25, OS_LOG_TYPE_DEFAULT, "recovery key is NOT correct in SOS", buf, 2u);
      }

      if (a5)
      {
        if (v12)
        {
          v26 = v12;
        }

        else
        {
          v26 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E697AAE8] code:67 description:@"Recovery key is incorrect"];
        }

        *a5 = v26;
      }

      v24 = 2;
    }

    else
    {
      v24 = 3;
    }
  }

  else
  {
    v12 = v10;
    v13 = secLogObjForScope();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v32 = v12;
      _os_log_impl(&dword_1C9430000, v13, OS_LOG_TYPE_DEFAULT, "octagon-recover-with-rk: Recovery Key not registered in SOS: %@", buf, 0xCu);
    }

    if (a5)
    {
      if (v12)
      {
        v14 = v12;
        *a5 = v12;
      }

      else
      {
        *a5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E697AAE8] code:64 description:@"Recovery key does not exist in Octagon"];
      }
    }

    v24 = 1;
  }

  v27 = *MEMORY[0x1E69E9840];
  return v24;
}

+ (uint64_t)isRecoveryKeySet:()Framework error:
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = secLogObjForScope();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = v5;
    _os_log_impl(&dword_1C9430000, v6, OS_LOG_TYPE_DEFAULT, "Checking recovery key status for context:%@", buf, 0xCu);
  }

  v15 = 0;
  v7 = [MEMORY[0x1E697AA80] isRecoveryKeySetInOctagon:v5 error:&v15];
  v8 = v15;
  v14 = 0;
  v9 = [MEMORY[0x1E697AA80] isRecoveryKeySetInSOS:v5 error:&v14];
  v10 = v14;
  if (a4)
  {
    if ((v9 & 1) == 0 && (v7 & 1) == 0)
    {
      v11 = v8;
      if (v8 || (v11 = v10) != 0)
      {
        *a4 = v11;
      }
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return (v7 | v9) & 1;
}

+ (uint64_t)isRecoveryKeySetInSOS:()Framework error:
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = secLogObjForScope();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = v5;
    _os_log_impl(&dword_1C9430000, v6, OS_LOG_TYPE_DEFAULT, "Checking SOS recovery key status for context:%@", buf, 0xCu);
  }

  v7 = [v5 sbd];
  v9 = v7;
  if (v7)
  {
    v10 = v7;
  }

  else
  {
    gotLoadHelper_x8__OBJC_CLASS___SecureBackup(v8);
    v10 = [objc_alloc(*(v11 + 3448)) initWithUserActivityLabel:@"octagon-trust-is-recovery-key-in-sos"];
  }

  v12 = v10;

  v20 = 0;
  v13 = [v12 isRecoveryKeySet:&v20];
  v14 = v20;
  if (v14)
  {
    v15 = secLogObjForScope();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = v14;
      _os_log_impl(&dword_1C9430000, v15, OS_LOG_TYPE_DEFAULT, "octagon-is-recovery-key-set-in-sos: failed to check the recovery key in SOS: %@", buf, 0xCu);
    }

    if (a4)
    {
      v16 = v14;
      *a4 = v14;
    }
  }

  else
  {
    v17 = secLogObjForScope();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v22) = v13;
      _os_log_impl(&dword_1C9430000, v17, OS_LOG_TYPE_DEFAULT, "recovery key set in SOS: %{BOOL}d", buf, 8u);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
  return v13;
}

+ (uint64_t)isRecoveryKeySetInOctagon:()Framework error:
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = secLogObjForScope();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v5;
    _os_log_impl(&dword_1C9430000, v6, OS_LOG_TYPE_DEFAULT, "Checking Octagon recovery key status for context:%@", &buf, 0xCu);
  }

  v21 = 0;
  v7 = [v5 makeOTControl:&v21];
  v8 = v21;
  if (v7)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 0;
    *&buf = 0;
    *(&buf + 1) = &buf;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy_;
    v25 = __Block_byref_object_dispose_;
    v26 = 0;
    v9 = [objc_alloc(MEMORY[0x1E697AA90]) initWithConfiguration:v5];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __55__OTClique_Framework__isRecoveryKeySetInOctagon_error___block_invoke;
    v16[3] = &unk_1E833E850;
    v16[4] = &buf;
    v16[5] = &v17;
    [v7 isRecoveryKeySet:v9 reply:v16];

    if (a4)
    {
      v10 = *(*(&buf + 1) + 40);
      if (v10)
      {
        *a4 = v10;
      }
    }

    v11 = *(v18 + 24);
    _Block_object_dispose(&buf, 8);

    _Block_object_dispose(&v17, 8);
  }

  else
  {
    v12 = secLogObjForScope();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v8;
      _os_log_impl(&dword_1C9430000, v12, OS_LOG_TYPE_DEFAULT, "unable to create otcontrol: %@", &buf, 0xCu);
    }

    if (a4)
    {
      v13 = v8;
      v11 = 0;
      *a4 = v8;
    }

    else
    {
      v11 = 0;
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return v11 & 1;
}

+ (BOOL)setRecoveryKeyWithContext:()Framework recoveryKey:error:
{
  v27 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = secLogObjForScope();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    context = [v7 context];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = context;
    _os_log_impl(&dword_1C9430000, v9, OS_LOG_TYPE_DEFAULT, "setRecoveryKeyWithContext invoked for context: %@", &buf, 0xCu);
  }

  v21 = 0;
  v11 = [v7 makeOTControl:&v21];
  v12 = v21;
  if (v11)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy_;
    v25 = __Block_byref_object_dispose_;
    v26 = 0;
    v13 = [objc_alloc(MEMORY[0x1E697AA90]) initWithConfiguration:v7];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __67__OTClique_Framework__setRecoveryKeyWithContext_recoveryKey_error___block_invoke;
    v20[3] = &unk_1E833E7B0;
    v20[4] = &buf;
    [v11 createRecoveryKey:v13 recoveryKey:v8 reply:v20];

    v14 = *(*(&buf + 1) + 40);
    v15 = v14 == 0;
    if (a5 && v14)
    {
      *a5 = v14;
    }

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v16 = secLogObjForScope();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v12;
      _os_log_impl(&dword_1C9430000, v16, OS_LOG_TYPE_DEFAULT, "failed to make OTControl object: %@", &buf, 0xCu);
    }

    if (a5)
    {
      v17 = v12;
      v15 = 0;
      *a5 = v12;
    }

    else
    {
      v15 = 0;
    }
  }

  v18 = *MEMORY[0x1E69E9840];
  return v15;
}

+ (id)createAndSetRecoveryKeyWithContext:()Framework error:
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = secLogObjForScope();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    context = [v6 context];
    *buf = 138412290;
    v24 = context;
    _os_log_impl(&dword_1C9430000, v7, OS_LOG_TYPE_DEFAULT, "createAndSetRecoveryKeyWithContext invoked for context: %@", buf, 0xCu);
  }

  v22[1] = 0;
  v9 = SecRKCreateRecoveryKeyString();
  v10 = 0;
  v11 = v10;
  if (!v9 || v10)
  {
    v16 = secLogObjForScope();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v24 = v11;
      _os_log_impl(&dword_1C9430000, v16, OS_LOG_TYPE_DEFAULT, "octagon-create-recovery-key, failed to create recovery key error: %@", buf, 0xCu);
    }

    if (a4)
    {
      v17 = v11;
      v15 = 0;
      *a4 = v11;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v22[0] = 0;
    v12 = [self registerRecoveryKeyWithContext:v6 recoveryKey:v9 error:v22];
    v13 = v22[0];
    v14 = v13;
    if (!v12 || v13)
    {
      v18 = secLogObjForScope();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v24 = v14;
        _os_log_impl(&dword_1C9430000, v18, OS_LOG_TYPE_DEFAULT, "octagon-create-recovery-key, failed to register recovery key error: %@", buf, 0xCu);
      }

      v15 = 0;
      if (a4 && v14)
      {
        v19 = v14;
        v15 = 0;
        *a4 = v14;
      }
    }

    else
    {
      v15 = v9;
    }
  }

  v20 = *MEMORY[0x1E69E9840];

  return v15;
}

+ (uint64_t)registerRecoveryKeyWithContext:()Framework recoveryKey:error:
{
  v38 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = secLogObjForScope();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    context = [v7 context];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = context;
    _os_log_impl(&dword_1C9430000, v9, OS_LOG_TYPE_DEFAULT, "registerRecoveryKeyWithContext invoked for context: %@", &buf, 0xCu);
  }

  v32 = 0;
  v11 = [v7 makeOTControl:&v32];
  v12 = v32;
  if (v11)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v34 = 0x3032000000;
    v35 = __Block_byref_object_copy_;
    v36 = __Block_byref_object_dispose_;
    v37 = 0;
    v13 = [objc_alloc(MEMORY[0x1E697AA90]) initWithConfiguration:v7];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __72__OTClique_Framework__registerRecoveryKeyWithContext_recoveryKey_error___block_invoke;
    v31[3] = &unk_1E833E7B0;
    v31[4] = &buf;
    [v11 createRecoveryKey:v13 recoveryKey:v8 reply:v31];

    v14 = *(*(&buf + 1) + 40);
    if (v14)
    {
      v15 = 0;
      if (a5)
      {
        *a5 = v14;
      }
    }

    else
    {
      v30 = 0;
      LODWORD(v15) = [MEMORY[0x1E697AA80] registerRecoveryKeyInSOSAndBackup:v7 recoveryKey:v8 error:&v30];
      v18 = v30;
      if (v18)
      {
        v15 = 0;
      }

      else
      {
        v15 = v15;
      }

      if ((v15 & 1) == 0)
      {
        v24 = 0;
        v25 = &v24;
        v26 = 0x3032000000;
        v27 = __Block_byref_object_copy_;
        v28 = __Block_byref_object_dispose_;
        v29 = 0;
        v19 = [objc_alloc(MEMORY[0x1E697AA90]) initWithConfiguration:v7];
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __72__OTClique_Framework__registerRecoveryKeyWithContext_recoveryKey_error___block_invoke_97;
        v23[3] = &unk_1E833E7B0;
        v23[4] = &v24;
        [v11 removeRecoveryKey:v19 reply:v23];

        if (a5)
        {
          v20 = v18;
          if (v18 || (v20 = v25[5]) != 0)
          {
            *a5 = v20;
          }
        }

        _Block_object_dispose(&v24, 8);
      }
    }

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v16 = secLogObjForScope();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v12;
      _os_log_impl(&dword_1C9430000, v16, OS_LOG_TYPE_DEFAULT, "failed to make OTControl object: %@", &buf, 0xCu);
    }

    if (a5)
    {
      v17 = v12;
      v15 = 0;
      *a5 = v12;
    }

    else
    {
      v15 = 0;
    }
  }

  v21 = *MEMORY[0x1E69E9840];
  return v15;
}

+ (uint64_t)registerRecoveryKeyInSOSAndBackup:()Framework recoveryKey:error:
{
  v46 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v43[1] = 0;
  v9 = SOSCCThisDeviceIsInCircle();
  if (!SOSCCIsSOSTrustAndSyncingEnabled() || v9)
  {
    v12 = secLogObjForScope();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9430000, v12, OS_LOG_TYPE_DEFAULT, "device is not participating in SOS, skipping recovery key registration", buf, 2u);
    }

LABEL_14:
    v20 = 1;
    goto LABEL_37;
  }

  v43[0] = 0;
  v10 = [MEMORY[0x1E697AA80] ensureBackupKeyExistsinSOS:v43];
  v11 = v43[0];
  v12 = v11;
  if (!v10 || v11)
  {
    if (!a5)
    {
LABEL_36:
      v20 = 0;
      goto LABEL_37;
    }

    v21 = v11;
    v20 = 0;
    *a5 = v12;
  }

  else
  {
    v12 = SecRKCreateRecoveryKeyWithError();
    v13 = 0;
    v14 = v13;
    if (v12 && !v13)
    {
      if ((SecRKRegisterBackupPublicKey() & 1) == 0)
      {
        v33 = secLogObjForScope();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v45 = 0;
          _os_log_impl(&dword_1C9430000, v33, OS_LOG_TYPE_DEFAULT, "octagon-register-recovery-key, SecRKRegisterBackupPublicKey() failed: %@", buf, 0xCu);
        }

        if (a5)
        {
          *a5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:11 description:@"Failed to register backup public key"];
        }

        goto LABEL_36;
      }

      v15 = secLogObjForScope();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C9430000, v15, OS_LOG_TYPE_DEFAULT, "successfully registered recovery key for SOS", buf, 2u);
      }

      v16 = [v7 sbd];
      v18 = v16;
      if (v16)
      {
        v19 = v16;
      }

      else
      {
        gotLoadHelper_x8__OBJC_CLASS___SecureBackup(v17);
        v19 = [objc_alloc(*(v34 + 3448)) initWithUserActivityLabel:@"octagon-trust-register-recovery-key"];
      }

      v35 = v19;

      v36 = [v35 backupForRecoveryKeyWithInfo:0];
      if (v36)
      {
        v37 = v36;
        v38 = secLogObjForScope();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v45 = v37;
          _os_log_impl(&dword_1C9430000, v38, OS_LOG_TYPE_DEFAULT, "octagon-register-recovery-key: failed to perform backup: %@", buf, 0xCu);
        }

        if (a5)
        {
          v39 = v37;
          *a5 = v37;
        }

        goto LABEL_36;
      }

      v42 = secLogObjForScope();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C9430000, v42, OS_LOG_TYPE_DEFAULT, "created iCloud Identity backup", buf, 2u);
      }

      goto LABEL_14;
    }

    v22 = secLogObjForScope();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v45 = v14;
      _os_log_impl(&dword_1C9430000, v22, OS_LOG_TYPE_DEFAULT, "octagon-register-recovery-key, SecRKCreateRecoveryKeyWithError() failed: %@", buf, 0xCu);
    }

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [dictionary setObject:@"SecRKCreateRecoveryKeyWithError() failed" forKeyedSubscript:*MEMORY[0x1E696A578]];
    [dictionary setObject:v14 forKeyedSubscript:*MEMORY[0x1E696AA08]];
    [MEMORY[0x1E697AA80] isCloudServicesAvailable];
    Helper_x10__kSecureBackupErrorDomain = gotLoadHelper_x10__kSecureBackupErrorDomain(v24);
    v29 = *(v28 + 3704);
    if (v30)
    {
      v26 = v29;
      v31 = 24;
    }

    else
    {
      v31 = -4;
    }

    v32 = [v25 errorWithDomain:*v26 code:v31 userInfo:{dictionary, Helper_x10__kSecureBackupErrorDomain}];
    if (a5)
    {
      v32 = v32;
      *a5 = v32;
    }

    v20 = 0;
    v12 = v14;
  }

LABEL_37:

  v40 = *MEMORY[0x1E69E9840];
  return v20;
}

+ (uint64_t)ensureBackupKeyExistsinSOS:()Framework
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = SOSCCCopyMyPeerInfo();
  if (!v4)
  {
    v8 = secLogObjForScope();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = 0;
      _os_log_impl(&dword_1C9430000, v8, OS_LOG_TYPE_DEFAULT, "octagon-register-recovery-key, SOSCCCopyMyPeerInfo() failed: %@", buf, 0xCu);
    }

    if (a3)
    {
      *a3 = 0;
    }

    goto LABEL_28;
  }

  v5 = SOSPeerInfoCopyBackupKey();
  CFRelease(v4);
  if (!v5)
  {
    v9 = SecPasswordGenerate();
    v10 = v9;
    if (v9)
    {
      v11 = [v9 dataUsingEncoding:4];
      v12 = SOSCCCopyMyPeerWithNewDeviceRecoverySecret();
      if (v12)
      {
        v13 = v12;
        v14 = secLogObjForScope();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1C9430000, v14, OS_LOG_TYPE_DEFAULT, "registered backup key", buf, 2u);
        }

        CFRelease(v13);
        goto LABEL_6;
      }

      v16 = secLogObjForScope();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v19 = 0;
        _os_log_impl(&dword_1C9430000, v16, OS_LOG_TYPE_DEFAULT, "octagon-register-recovery-key, SOSCCCopyMyPeerWithNewDeviceRecoverySecret() failed: %@", buf, 0xCu);
      }

      if (a3)
      {
        *a3 = 0;
      }
    }

    else
    {
      v15 = secLogObjForScope();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v19 = 0;
        _os_log_impl(&dword_1C9430000, v15, OS_LOG_TYPE_DEFAULT, "octagon-register-recovery-key, SecPasswordGenerate() failed: %@", buf, 0xCu);
      }

      if (a3)
      {
        *a3 = 0;
      }
    }

LABEL_28:
    result = 0;
    goto LABEL_29;
  }

  CFRelease(v5);
  v6 = secLogObjForScope();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9430000, v6, OS_LOG_TYPE_DEFAULT, "backup key already registered", buf, 2u);
  }

LABEL_6:
  result = 1;
LABEL_29:
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

+ (id)_fetchAccountWideSettingsDefaultWithForceFetch:()Framework useDefault:configuration:error:
{
  v30[2] = *MEMORY[0x1E69E9840];
  v9 = a5;
  v10 = secLogObjForScope();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = v9;
    *&buf[12] = 1024;
    *&buf[14] = a3;
    _os_log_impl(&dword_1C9430000, v10, OS_LOG_TYPE_DEFAULT, "fetchAccountWideSettings invoked for context:%@ forceFetch:%{BOOL}d", buf, 0x12u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v28 = __Block_byref_object_copy_;
  v29 = __Block_byref_object_dispose_;
  v30[0] = 0;
  obj = 0;
  v11 = [v9 makeOTControl:&obj];
  objc_storeStrong(v30, obj);
  if (v11)
  {
    *&v22 = 0;
    *(&v22 + 1) = &v22;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy_;
    v25 = __Block_byref_object_dispose_;
    v26 = 0;
    v12 = [objc_alloc(MEMORY[0x1E697AA90]) initWithConfiguration:v9];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __101__OTClique_Framework___fetchAccountWideSettingsDefaultWithForceFetch_useDefault_configuration_error___block_invoke;
    v19[3] = &unk_1E833E800;
    v20 = a4;
    v19[4] = &v22;
    v19[5] = buf;
    [v11 fetchAccountWideSettingsWithForceFetch:a3 arguments:v12 reply:v19];

    if (a6)
    {
      v13 = *(*&buf[8] + 40);
      if (v13)
      {
        *a6 = v13;
      }
    }

    v14 = *(*(&v22 + 1) + 40);
    _Block_object_dispose(&v22, 8);
  }

  else
  {
    v15 = secLogObjForScope();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(*&buf[8] + 40);
      LODWORD(v22) = 138412290;
      *(&v22 + 4) = v16;
      _os_log_impl(&dword_1C9430000, v15, OS_LOG_TYPE_DEFAULT, "unable to create otcontrol: %@", &v22, 0xCu);
    }

    v14 = 0;
    if (a6)
    {
      *a6 = *(*&buf[8] + 40);
    }
  }

  _Block_object_dispose(buf, 8);
  v17 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (uint64_t)invalidateEscrowCache:()Framework error:
{
  v29[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = secLogObjForScope();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    context = [v5 context];
    altDSID = [v5 altDSID];
    *buf = 138412546;
    *&buf[4] = context;
    *&buf[12] = 2112;
    *&buf[14] = altDSID;
    _os_log_impl(&dword_1C9430000, v6, OS_LOG_TYPE_DEFAULT, "invalidateEscrowCache invoked for context:%@, altdsid:%@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v27 = __Block_byref_object_copy_;
  v28 = __Block_byref_object_dispose_;
  v29[0] = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  obj = 0;
  v9 = [v5 makeOTControl:&obj];
  objc_storeStrong(v29, obj);
  if (v9)
  {
    v10 = [objc_alloc(MEMORY[0x1E697AA90]) initWithConfiguration:v5];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __51__OTClique_Framework__invalidateEscrowCache_error___block_invoke;
    v18[3] = &unk_1E833E788;
    v18[4] = &v20;
    v18[5] = buf;
    [v9 invalidateEscrowCache:v10 reply:v18];

    if (a4)
    {
      v11 = *(*&buf[8] + 40);
      if (v11)
      {
        *a4 = v11;
      }
    }

    v12 = secLogObjForScope();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v24 = 0;
      _os_log_impl(&dword_1C9430000, v12, OS_LOG_TYPE_DEFAULT, "invalidateEscrowCache complete", v24, 2u);
    }
  }

  else
  {
    v13 = secLogObjForScope();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(*&buf[8] + 40);
      *v24 = 138412290;
      v25 = v14;
      _os_log_impl(&dword_1C9430000, v13, OS_LOG_TYPE_DEFAULT, "unable to create otcontrol: %@", v24, 0xCu);
    }

    if (a4)
    {
      *a4 = *(*&buf[8] + 40);
    }
  }

  v15 = *(v21 + 24);

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(buf, 8);

  v16 = *MEMORY[0x1E69E9840];
  return v15 & 1;
}

+ (id)performSilentEscrowRecovery:()Framework cdpContext:allRecords:error:
{
  v130 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v120 = a4;
  v10 = a5;
  v11 = secLogObjForScope();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    context = [v9 context];
    [v9 altDSID];
    v13 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    *buf = 138412546;
    v125 = context;
    v126 = 2112;
    v127 = v13;
    _os_log_impl(&dword_1C9430000, v11, OS_LOG_TYPE_DEFAULT, "performSilentEscrowRecovery invoked for context:%@, altdsid:%@", buf, 0x16u);
  }

  v14 = objc_alloc(MEMORY[0x1E69ABBD8]);
  altDSID = [v9 altDSID];
  flowID = [v9 flowID];
  deviceSessionID = [v9 deviceSessionID];
  v18 = *MEMORY[0x1E69ABC10];
  v19 = MetricsOverrideTestsAreEnabled();
  v20 = *MEMORY[0x1E69ABBF0];
  LOBYTE(v110) = 1;
  v21 = [v14 initWithKeychainCircleMetrics:0 altDSID:altDSID flowID:flowID deviceSessionID:deviceSessionID eventName:v18 testsAreEnabled:v19 canSendMetrics:v110 category:*MEMORY[0x1E69ABBF0]];

  if ([self isCloudServicesAvailable])
  {
    v22 = _OctagonSignpostLogSystem();
    v23 = _OctagonSignpostCreate();

    v24 = _OctagonSignpostLogSystem();
    v25 = v24;
    v113 = v23 - 1;
    if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9430000, v25, OS_SIGNPOST_INTERVAL_BEGIN, v23, "PerformSilentEscrowRecovery", " enableTelemetry=YES ", buf, 2u);
    }

    v26 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v125 = v23;
      _os_log_impl(&dword_1C9430000, v26, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: PerformSilentEscrowRecovery  enableTelemetry=YES ", buf, 0xCu);
    }

    v27 = [v9 sbd];
    v29 = v27;
    v116 = v10;
    if (v27)
    {
      v30 = v27;
    }

    else
    {
      gotLoadHelper_x8__OBJC_CLASS___SecureBackup(v28);
      v30 = [objc_alloc(*(v34 + 3448)) initWithUserActivityLabel:@"octagon-trust-perform-silent-recovery"];
    }

    v118 = v30;

    v35 = [OTEscrowTranslation supportedRestorePath:v120];
    v36 = secLogObjForScope();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v125) = v35;
      _os_log_impl(&dword_1C9430000, v36, OS_LOG_TYPE_DEFAULT, "restore path is supported? %{BOOL}d", buf, 8u);
    }

    v114 = v23;

    v117 = v9;
    if (v35)
    {
      v37 = _OctagonSignpostLogSystem();
      v38 = _OctagonSignpostCreate();

      v39 = _OctagonSignpostLogSystem();
      v40 = v39;
      v41 = v38 - 1;
      if (v38 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v39))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9430000, v40, OS_SIGNPOST_INTERVAL_BEGIN, v38, "RecoverSilentWithCDPContext", " enableTelemetry=YES ", buf, 2u);
      }

      v42 = v21;

      v43 = _OctagonSignpostLogSystem();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v125 = v38;
        _os_log_impl(&dword_1C9430000, v43, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: RecoverSilentWithCDPContext  enableTelemetry=YES ", buf, 0xCu);
      }

      v44 = objc_alloc(MEMORY[0x1E69ABBD8]);
      altDSID2 = [v117 altDSID];
      flowID2 = [v117 flowID];
      deviceSessionID2 = [v117 deviceSessionID];
      LOBYTE(v111) = 1;
      v48 = [v44 initWithKeychainCircleMetrics:0 altDSID:altDSID2 flowID:flowID2 deviceSessionID:deviceSessionID2 eventName:*MEMORY[0x1E69ABC18] testsAreEnabled:MetricsOverrideTestsAreEnabled() canSendMetrics:v111 category:v20];

      altDSID3 = [v117 altDSID];
      flowID3 = [v117 flowID];
      deviceSessionID3 = [v117 deviceSessionID];
      v123 = 0;
      v115 = [v118 recoverSilentWithCDPContext:v120 allRecords:v116 altDSID:altDSID3 flowID:flowID3 deviceSessionID:deviceSessionID3 error:&v123];
      v52 = v123;

      if (v52)
      {
        v112 = v48;
        [v48 sendMetricWithResult:0 error:v52];
        v21 = v42;
        [v42 sendMetricWithResult:0 error:v52];
        Nanoseconds = _OctagonSignpostGetNanoseconds();
        v54 = _OctagonSignpostLogSystem();
        v55 = v54;
        if (v41 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v54))
        {
          *buf = 67240192;
          LODWORD(v125) = 0;
          _os_signpost_emit_with_name_impl(&dword_1C9430000, v55, OS_SIGNPOST_INTERVAL_END, v38, "RecoverSilentWithCDPContext", " OctagonSignpostNameRecoverSilentWithCDPContext=%{public,signpost.telemetry:number1,name=OctagonSignpostNameRecoverSilentWithCDPContext}d ", buf, 8u);
        }

        v56 = _OctagonSignpostLogSystem();
        v10 = v116;
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218496;
          v125 = v38;
          v126 = 2048;
          v127 = Nanoseconds / 1000000000.0;
          v128 = 1026;
          v129 = 0;
          _os_log_impl(&dword_1C9430000, v56, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: RecoverSilentWithCDPContext  OctagonSignpostNameRecoverSilentWithCDPContext=%{public,signpost.telemetry:number1,name=OctagonSignpostNameRecoverSilentWithCDPContext}d ", buf, 0x1Cu);
        }

        v57 = _OctagonSignpostGetNanoseconds();
        v58 = _OctagonSignpostLogSystem();
        v59 = v58;
        if (v113 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v58))
        {
          *buf = 67240192;
          LODWORD(v125) = 0;
          _os_signpost_emit_with_name_impl(&dword_1C9430000, v59, OS_SIGNPOST_INTERVAL_END, v114, "PerformSilentEscrowRecovery", " OctagonSignpostNamePerformSilentEscrowRecovery=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePerformSilentEscrowRecovery}d ", buf, 8u);
        }

        v60 = _OctagonSignpostLogSystem();
        v9 = v117;
        if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218496;
          v125 = v114;
          v126 = 2048;
          v127 = v57 / 1000000000.0;
          v128 = 1026;
          v129 = 0;
          _os_log_impl(&dword_1C9430000, v60, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PerformSilentEscrowRecovery  OctagonSignpostNamePerformSilentEscrowRecovery=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePerformSilentEscrowRecovery}d ", buf, 0x1Cu);
        }

        if (a6)
        {
          v61 = v52;
          v33 = 0;
          *a6 = v52;
        }

        else
        {
          v33 = 0;
        }

LABEL_85:
        v31 = v118;
        v95 = v112;
LABEL_89:

        goto LABEL_90;
      }

      v83 = _OctagonSignpostGetNanoseconds();
      v84 = _OctagonSignpostLogSystem();
      v85 = v84;
      v21 = v42;
      if (v41 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v84))
      {
        *buf = 67240192;
        LODWORD(v125) = 1;
        _os_signpost_emit_with_name_impl(&dword_1C9430000, v85, OS_SIGNPOST_INTERVAL_END, v38, "RecoverSilentWithCDPContext", " OctagonSignpostNameRecoverSilentWithCDPContext=%{public,signpost.telemetry:number1,name=OctagonSignpostNameRecoverSilentWithCDPContext}d ", buf, 8u);
      }

      v86 = _OctagonSignpostLogSystem();
      v10 = v116;
      v87 = v114;
      if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218496;
        v125 = v38;
        v126 = 2048;
        v127 = v83 / 1000000000.0;
        v128 = 1026;
        v129 = 1;
        _os_log_impl(&dword_1C9430000, v86, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: RecoverSilentWithCDPContext  OctagonSignpostNameRecoverSilentWithCDPContext=%{public,signpost.telemetry:number1,name=OctagonSignpostNameRecoverSilentWithCDPContext}d ", buf, 0x1Cu);
      }

      [v48 sendMetricWithResult:1 error:0];
    }

    else
    {
      v112 = [OTEscrowTranslation CDPRecordContextToDictionary:v120];
      v62 = _OctagonSignpostLogSystem();
      v63 = _OctagonSignpostCreate();

      v64 = _OctagonSignpostLogSystem();
      v65 = v64;
      v66 = v63 - 1;
      if (v63 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v64))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9430000, v65, OS_SIGNPOST_INTERVAL_BEGIN, v63, "PerformRecoveryFromSBD", " enableTelemetry=YES ", buf, 2u);
      }

      v67 = v21;

      v68 = _OctagonSignpostLogSystem();
      if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v125 = v63;
        _os_log_impl(&dword_1C9430000, v68, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: PerformRecoveryFromSBD  enableTelemetry=YES ", buf, 0xCu);
      }

      v69 = objc_alloc(MEMORY[0x1E69ABBD8]);
      altDSID4 = [v9 altDSID];
      flowID4 = [v9 flowID];
      deviceSessionID4 = [v9 deviceSessionID];
      LOBYTE(v111) = 1;
      v73 = [v69 initWithKeychainCircleMetrics:0 altDSID:altDSID4 flowID:flowID4 deviceSessionID:deviceSessionID4 eventName:*MEMORY[0x1E69ABC28] testsAreEnabled:MetricsOverrideTestsAreEnabled() canSendMetrics:v111 category:v20];

      v122 = 0;
      v48 = v112;
      v52 = [v118 recoverWithInfo:v112 results:&v122];
      v115 = v122;
      if (v52)
      {
        [v73 sendMetricWithResult:0 error:v52];
        v21 = v67;
        [v67 sendMetricWithResult:0 error:v52];
        v74 = _OctagonSignpostGetNanoseconds();
        v75 = _OctagonSignpostLogSystem();
        v76 = v75;
        v10 = v116;
        if (v66 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v75))
        {
          *buf = 67240192;
          LODWORD(v125) = 0;
          _os_signpost_emit_with_name_impl(&dword_1C9430000, v76, OS_SIGNPOST_INTERVAL_END, v63, "PerformRecoveryFromSBD", " OctagonSignpostNamePerformRecoveryFromSBD=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePerformRecoveryFromSBD}d ", buf, 8u);
        }

        v77 = _OctagonSignpostLogSystem();
        if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218496;
          v125 = v63;
          v126 = 2048;
          v127 = v74 / 1000000000.0;
          v128 = 1026;
          v129 = 0;
          _os_log_impl(&dword_1C9430000, v77, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PerformRecoveryFromSBD  OctagonSignpostNamePerformRecoveryFromSBD=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePerformRecoveryFromSBD}d ", buf, 0x1Cu);
        }

        v78 = _OctagonSignpostGetNanoseconds();
        v79 = _OctagonSignpostLogSystem();
        v80 = v79;
        if (v113 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v79))
        {
          *buf = 67240192;
          LODWORD(v125) = 0;
          _os_signpost_emit_with_name_impl(&dword_1C9430000, v80, OS_SIGNPOST_INTERVAL_END, v114, "PerformSilentEscrowRecovery", " OctagonSignpostNamePerformSilentEscrowRecovery=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePerformSilentEscrowRecovery}d ", buf, 8u);
        }

        v81 = _OctagonSignpostLogSystem();
        if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218496;
          v125 = v114;
          v126 = 2048;
          v127 = v78 / 1000000000.0;
          v128 = 1026;
          v129 = 0;
          _os_log_impl(&dword_1C9430000, v81, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PerformSilentEscrowRecovery  OctagonSignpostNamePerformSilentEscrowRecovery=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePerformSilentEscrowRecovery}d ", buf, 0x1Cu);
        }

        if (a6)
        {
          v82 = v52;
          *a6 = v52;
        }

        v33 = 0;
        v9 = v117;
        goto LABEL_85;
      }

      v88 = _OctagonSignpostGetNanoseconds();
      v89 = _OctagonSignpostLogSystem();
      v90 = v89;
      v10 = v116;
      v21 = v67;
      if (v66 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v89))
      {
        *buf = 67240192;
        LODWORD(v125) = 1;
        _os_signpost_emit_with_name_impl(&dword_1C9430000, v90, OS_SIGNPOST_INTERVAL_END, v63, "PerformRecoveryFromSBD", " OctagonSignpostNamePerformRecoveryFromSBD=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePerformRecoveryFromSBD}d ", buf, 8u);
      }

      v91 = _OctagonSignpostLogSystem();
      v87 = v114;
      if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218496;
        v125 = v63;
        v126 = 2048;
        v127 = v88 / 1000000000.0;
        v128 = 1026;
        v129 = 1;
        _os_log_impl(&dword_1C9430000, v91, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PerformRecoveryFromSBD  OctagonSignpostNamePerformRecoveryFromSBD=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePerformRecoveryFromSBD}d ", buf, 0x1Cu);
      }

      [v73 sendMetricWithResult:1 error:0];
    }

    Helper_x8__kSecureBackupRecordLabelKey = gotLoadHelper_x8__kSecureBackupRecordLabelKey(v92);
    v52 = [v115 objectForKeyedSubscript:{**(v94 + 3880), Helper_x8__kSecureBackupRecordLabelKey}];
    v95 = [MEMORY[0x1E697AA80] recordMatchingLabel:v52 allRecords:v10];
    v121 = 0;
    v96 = [MEMORY[0x1E697AA80] handleRecoveryResults:v117 recoveredInformation:v115 record:v95 performedSilentBurn:1 error:&v121];
    v97 = v121;
    v98 = v97;
    if (!v96 || v97)
    {
      if (!v97)
      {
        v98 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E697AAE8] code:80 description:@"Failed to handle recovery results"];
      }

      [v21 sendMetricWithResult:0 error:v98];
      v103 = _OctagonSignpostGetNanoseconds();
      v104 = _OctagonSignpostLogSystem();
      v105 = v104;
      if (v113 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v104))
      {
        *buf = 67240192;
        LODWORD(v125) = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9430000, v105, OS_SIGNPOST_INTERVAL_END, v87, "PerformSilentEscrowRecovery", " OctagonSignpostNamePerformSilentEscrowRecovery=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePerformSilentEscrowRecovery}d ", buf, 8u);
      }

      v106 = _OctagonSignpostLogSystem();
      if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218496;
        v125 = v87;
        v126 = 2048;
        v127 = v103 / 1000000000.0;
        v128 = 1026;
        v129 = 0;
        _os_log_impl(&dword_1C9430000, v106, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PerformSilentEscrowRecovery  OctagonSignpostNamePerformSilentEscrowRecovery=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePerformSilentEscrowRecovery}d ", buf, 0x1Cu);
      }

      if (a6)
      {
        v107 = v98;
        v33 = 0;
        *a6 = v98;
      }

      else
      {
        v33 = 0;
      }

      v9 = v117;
    }

    else
    {
      [v21 sendMetricWithResult:1 error:0];
      v99 = _OctagonSignpostGetNanoseconds();
      v100 = _OctagonSignpostLogSystem();
      v101 = v100;
      if (v113 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v100))
      {
        *buf = 67240192;
        LODWORD(v125) = 1;
        _os_signpost_emit_with_name_impl(&dword_1C9430000, v101, OS_SIGNPOST_INTERVAL_END, v87, "PerformSilentEscrowRecovery", " OctagonSignpostNamePerformSilentEscrowRecovery=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePerformSilentEscrowRecovery}d ", buf, 8u);
      }

      v102 = _OctagonSignpostLogSystem();
      if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218496;
        v125 = v87;
        v126 = 2048;
        v127 = v99 / 1000000000.0;
        v128 = 1026;
        v129 = 1;
        _os_log_impl(&dword_1C9430000, v102, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PerformSilentEscrowRecovery  OctagonSignpostNamePerformSilentEscrowRecovery=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePerformSilentEscrowRecovery}d ", buf, 0x1Cu);
      }

      v33 = v96;
      v98 = 0;
      v9 = v117;
    }

    v31 = v118;
    goto LABEL_89;
  }

  v31 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-4 userInfo:0];
  [v21 sendMetricWithResult:0 error:v31];
  if (a6)
  {
    v32 = v31;
    v33 = 0;
    *a6 = v31;
  }

  else
  {
    v33 = 0;
  }

LABEL_90:

  v108 = *MEMORY[0x1E69E9840];

  return v33;
}

+ (id)recordMatchingLabel:()Framework allRecords:
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = a4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        label = [v10 label];
        v12 = [label isEqualToString:v5];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v13 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)performEscrowRecovery:()Framework cdpContext:escrowRecord:error:
{
  v135 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v125 = a4;
  v10 = a5;
  v11 = secLogObjForScope();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    context = [v9 context];
    [v9 altDSID];
    v13 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    *buf = 138412546;
    v130 = context;
    v131 = 2112;
    v132 = v13;
    _os_log_impl(&dword_1C9430000, v11, OS_LOG_TYPE_DEFAULT, "performEscrowRecovery invoked for context:%@, altdsid:%@", buf, 0x16u);
  }

  v14 = objc_alloc(MEMORY[0x1E69ABBD8]);
  altDSID = [v9 altDSID];
  flowID = [v9 flowID];
  deviceSessionID = [v9 deviceSessionID];
  v18 = *MEMORY[0x1E69ABC08];
  v19 = MetricsOverrideTestsAreEnabled();
  v20 = *MEMORY[0x1E69ABBF0];
  LOBYTE(v113) = 1;
  v21 = [v14 initWithKeychainCircleMetrics:0 altDSID:altDSID flowID:flowID deviceSessionID:deviceSessionID eventName:v18 testsAreEnabled:v19 canSendMetrics:v113 category:*MEMORY[0x1E69ABBF0]];

  if ([self isCloudServicesAvailable])
  {
    v22 = _OctagonSignpostLogSystem();
    v23 = _OctagonSignpostCreate();

    v24 = _OctagonSignpostLogSystem();
    v25 = v24;
    v119 = v23 - 1;
    if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9430000, v25, OS_SIGNPOST_INTERVAL_BEGIN, v23, "PerformEscrowRecovery", " enableTelemetry=YES ", buf, 2u);
    }

    v26 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v130 = v23;
      _os_log_impl(&dword_1C9430000, v26, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: PerformEscrowRecovery  enableTelemetry=YES ", buf, 0xCu);
    }

    v27 = [v9 sbd];
    v29 = v27;
    v123 = v10;
    if (v27)
    {
      v30 = v27;
    }

    else
    {
      gotLoadHelper_x8__OBJC_CLASS___SecureBackup(v28);
      v30 = [objc_alloc(*(v35 + 3448)) initWithUserActivityLabel:@"octagon-trust-perform-recovery"];
    }

    v121 = v30;

    v36 = [OTEscrowTranslation supportedRestorePath:v125];
    v37 = secLogObjForScope();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v130) = v36;
      _os_log_impl(&dword_1C9430000, v37, OS_LOG_TYPE_DEFAULT, "restore path is supported? %{BOOL}d", buf, 8u);
    }

    spid = v23;

    if (v36)
    {
      v38 = _OctagonSignpostLogSystem();
      v39 = _OctagonSignpostCreate();

      v40 = _OctagonSignpostLogSystem();
      v41 = v40;
      v42 = v39 - 1;
      if (v39 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v40))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9430000, v41, OS_SIGNPOST_INTERVAL_BEGIN, v39, "RecoverWithCDPContext", " enableTelemetry=YES ", buf, 2u);
      }

      v117 = v21;

      v43 = _OctagonSignpostLogSystem();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v130 = v39;
        _os_log_impl(&dword_1C9430000, v43, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: RecoverWithCDPContext  enableTelemetry=YES ", buf, 0xCu);
      }

      v44 = objc_alloc(MEMORY[0x1E69ABBD8]);
      altDSID2 = [v9 altDSID];
      flowID2 = [v9 flowID];
      deviceSessionID2 = [v9 deviceSessionID];
      LOBYTE(v114) = 1;
      v115 = [v44 initWithKeychainCircleMetrics:0 altDSID:altDSID2 flowID:flowID2 deviceSessionID:deviceSessionID2 eventName:*MEMORY[0x1E69ABC20] testsAreEnabled:MetricsOverrideTestsAreEnabled() canSendMetrics:v114 category:v20];

      altDSID3 = [v9 altDSID];
      flowID3 = [v9 flowID];
      deviceSessionID3 = [v9 deviceSessionID];
      v128 = 0;
      v32 = v121;
      v51 = [v121 recoverWithCDPContext:v125 escrowRecord:v123 altDSID:altDSID3 flowID:flowID3 deviceSessionID:deviceSessionID3 error:&v128];
      v52 = v128;

      v53 = _OctagonSignpostGetNanoseconds() / 1000000000.0;
      v54 = _OctagonSignpostLogSystem();
      v55 = v54;
      v122 = v51;
      if (!v51 || v52)
      {
        v21 = v117;
        if (v42 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v54))
        {
          *buf = 67240192;
          LODWORD(v130) = 0;
          _os_signpost_emit_with_name_impl(&dword_1C9430000, v55, OS_SIGNPOST_INTERVAL_END, v39, "RecoverWithCDPContext", " OctagonSignpostNameRecoverWithCDPContext=%{public,signpost.telemetry:number1,name=OctagonSignpostNameRecoverWithCDPContext}d ", buf, 8u);
        }

        v91 = _OctagonSignpostLogSystem();
        v10 = v123;
        v59 = v115;
        if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218496;
          v130 = v39;
          v131 = 2048;
          v132 = v53;
          v133 = 1026;
          v134 = 0;
          _os_log_impl(&dword_1C9430000, v91, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: RecoverWithCDPContext  OctagonSignpostNameRecoverWithCDPContext=%{public,signpost.telemetry:number1,name=OctagonSignpostNameRecoverWithCDPContext}d ", buf, 0x1Cu);
        }

        if (!v52)
        {
          v52 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E697AAE8] code:78 description:@"Failed to recover using CDP context"];
        }

        if (a6)
        {
          v92 = v52;
          *a6 = v52;
        }

        [v115 sendMetricWithResult:0 error:v52];
        [v117 sendMetricWithResult:0 error:v52];
        Nanoseconds = _OctagonSignpostGetNanoseconds();
        v94 = _OctagonSignpostLogSystem();
        v95 = v94;
        if (v119 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v94))
        {
          *buf = 67240192;
          LODWORD(v130) = 0;
          _os_signpost_emit_with_name_impl(&dword_1C9430000, v95, OS_SIGNPOST_INTERVAL_END, spid, "PerformEscrowRecovery", " OctagonSignpostNamePerformEscrowRecovery=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePerformEscrowRecovery}d ", buf, 8u);
        }

        v96 = _OctagonSignpostLogSystem();
        if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218496;
          v130 = spid;
          v131 = 2048;
          v132 = Nanoseconds / 1000000000.0;
          v133 = 1026;
          v134 = 0;
          _os_log_impl(&dword_1C9430000, v96, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PerformEscrowRecovery  OctagonSignpostNamePerformEscrowRecovery=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePerformEscrowRecovery}d ", buf, 0x1Cu);
        }

        goto LABEL_93;
      }

      v21 = v117;
      v56 = a6;
      if (v42 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v54))
      {
        *buf = 67240192;
        LODWORD(v130) = 1;
        _os_signpost_emit_with_name_impl(&dword_1C9430000, v55, OS_SIGNPOST_INTERVAL_END, v39, "RecoverWithCDPContext", " OctagonSignpostNameRecoverWithCDPContext=%{public,signpost.telemetry:number1,name=OctagonSignpostNameRecoverWithCDPContext}d ", buf, 8u);
      }

      v57 = _OctagonSignpostLogSystem();
      v10 = v123;
      v58 = spid;
      v59 = v115;
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218496;
        v130 = v39;
        v131 = 2048;
        v132 = v53;
        v133 = 1026;
        v134 = 1;
        _os_log_impl(&dword_1C9430000, v57, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: RecoverWithCDPContext  OctagonSignpostNameRecoverWithCDPContext=%{public,signpost.telemetry:number1,name=OctagonSignpostNameRecoverWithCDPContext}d ", buf, 0x1Cu);
      }

      [v115 sendMetricWithResult:1 error:0];
    }

    else
    {
      v60 = v21;
      v61 = [OTEscrowTranslation CDPRecordContextToDictionary:v125];
      v59 = [v61 mutableCopy];

      escrowInformationMetadata = [v10 escrowInformationMetadata];
      v63 = [OTEscrowTranslation metadataToDictionary:escrowInformationMetadata];

      Helper_x8__kSecureBackupMetadataKey = gotLoadHelper_x8__kSecureBackupMetadataKey(v64);
      v118 = v63;
      [v59 setObject:v63 forKeyedSubscript:{**(v66 + 3816), Helper_x8__kSecureBackupMetadataKey}];
      recordId = [v123 recordId];
      Helper_x8__kSecureBackupRecordIDKey = gotLoadHelper_x8__kSecureBackupRecordIDKey(v68);
      [v59 setObject:recordId forKeyedSubscript:{**(v70 + 3872), Helper_x8__kSecureBackupRecordIDKey}];

      v71 = secLogObjForScope();
      if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v130 = v59;
        _os_log_impl(&dword_1C9430000, v71, OS_LOG_TYPE_DEFAULT, "using sbdRecoveryArguments: %@", buf, 0xCu);
      }

      v72 = objc_alloc(MEMORY[0x1E69ABBD8]);
      altDSID4 = [v9 altDSID];
      flowID4 = [v9 flowID];
      deviceSessionID4 = [v9 deviceSessionID];
      LOBYTE(v114) = 1;
      v116 = [v72 initWithKeychainCircleMetrics:0 altDSID:altDSID4 flowID:flowID4 deviceSessionID:deviceSessionID4 eventName:*MEMORY[0x1E69ABC28] testsAreEnabled:MetricsOverrideTestsAreEnabled() canSendMetrics:v114 category:v20];

      v76 = _OctagonSignpostLogSystem();
      v77 = _OctagonSignpostCreate();

      v78 = _OctagonSignpostLogSystem();
      v79 = v78;
      v80 = v77 - 1;
      if (v77 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v78))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9430000, v79, OS_SIGNPOST_INTERVAL_BEGIN, v77, "PerformRecoveryFromSBD", " enableTelemetry=YES ", buf, 2u);
      }

      v81 = _OctagonSignpostLogSystem();
      v21 = v60;
      v32 = v121;
      v56 = a6;
      if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v130 = v77;
        _os_log_impl(&dword_1C9430000, v81, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: PerformRecoveryFromSBD  enableTelemetry=YES ", buf, 0xCu);
      }

      v127 = 0;
      v52 = [v121 recoverWithInfo:v59 results:&v127];
      v122 = v127;
      if (!v122 || v52)
      {
        if (!v52)
        {
          v52 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E697AAE8] code:79 description:@"Failed to recover with info"];
        }

        if (a6)
        {
          v97 = v52;
          *a6 = v52;
        }

        v98 = _OctagonSignpostGetNanoseconds();
        v99 = _OctagonSignpostLogSystem();
        v100 = v99;
        if (v80 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v99))
        {
          *buf = 67240192;
          LODWORD(v130) = 0;
          _os_signpost_emit_with_name_impl(&dword_1C9430000, v100, OS_SIGNPOST_INTERVAL_END, v77, "PerformRecoveryFromSBD", " OctagonSignpostNamePerformRecoveryFromSBD=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePerformRecoveryFromSBD}d ", buf, 8u);
        }

        v101 = _OctagonSignpostLogSystem();
        if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218496;
          v130 = v77;
          v131 = 2048;
          v132 = v98 / 1000000000.0;
          v133 = 1026;
          v134 = 0;
          _os_log_impl(&dword_1C9430000, v101, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PerformRecoveryFromSBD  OctagonSignpostNamePerformRecoveryFromSBD=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePerformRecoveryFromSBD}d ", buf, 0x1Cu);
        }

        v102 = _OctagonSignpostGetNanoseconds();
        v103 = _OctagonSignpostLogSystem();
        v104 = v103;
        v21 = v60;
        if (v119 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v103))
        {
          *buf = 67240192;
          LODWORD(v130) = 0;
          _os_signpost_emit_with_name_impl(&dword_1C9430000, v104, OS_SIGNPOST_INTERVAL_END, spid, "PerformEscrowRecovery", " OctagonSignpostNamePerformEscrowRecovery=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePerformEscrowRecovery}d ", buf, 8u);
        }

        v105 = _OctagonSignpostLogSystem();
        v32 = v121;
        if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218496;
          v130 = spid;
          v131 = 2048;
          v132 = v102 / 1000000000.0;
          v133 = 1026;
          v134 = 0;
          _os_log_impl(&dword_1C9430000, v105, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PerformEscrowRecovery  OctagonSignpostNamePerformEscrowRecovery=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePerformEscrowRecovery}d ", buf, 0x1Cu);
        }

        [v116 sendMetricWithResult:0 error:v52];
        [v60 sendMetricWithResult:0 error:v52];

        v34 = 0;
        v10 = v123;
        goto LABEL_94;
      }

      v82 = _OctagonSignpostGetNanoseconds();
      v83 = _OctagonSignpostLogSystem();
      v84 = v83;
      if (v80 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v83))
      {
        *buf = 67240192;
        LODWORD(v130) = 1;
        _os_signpost_emit_with_name_impl(&dword_1C9430000, v84, OS_SIGNPOST_INTERVAL_END, v77, "PerformRecoveryFromSBD", " OctagonSignpostNamePerformRecoveryFromSBD=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePerformRecoveryFromSBD}d ", buf, 8u);
      }

      v85 = _OctagonSignpostLogSystem();
      v10 = v123;
      v58 = spid;
      if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218496;
        v130 = v77;
        v131 = 2048;
        v132 = v82 / 1000000000.0;
        v133 = 1026;
        v134 = 1;
        _os_log_impl(&dword_1C9430000, v85, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PerformRecoveryFromSBD  OctagonSignpostNamePerformRecoveryFromSBD=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePerformRecoveryFromSBD}d ", buf, 0x1Cu);
      }

      [v116 sendMetricWithResult:1 error:0];
    }

    v126 = 0;
    v59 = [MEMORY[0x1E697AA80] handleRecoveryResults:v9 recoveredInformation:v122 record:v10 performedSilentBurn:0 error:&v126];
    v86 = v126;
    v52 = v86;
    if (v59 && !v86)
    {
      v87 = _OctagonSignpostGetNanoseconds();
      v88 = _OctagonSignpostLogSystem();
      v89 = v88;
      if (v119 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v88))
      {
        *buf = 67240192;
        LODWORD(v130) = 1;
        _os_signpost_emit_with_name_impl(&dword_1C9430000, v89, OS_SIGNPOST_INTERVAL_END, v58, "PerformEscrowRecovery", " OctagonSignpostNamePerformEscrowRecovery=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePerformEscrowRecovery}d ", buf, 8u);
      }

      v90 = _OctagonSignpostLogSystem();
      if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218496;
        v130 = v58;
        v131 = 2048;
        v132 = v87 / 1000000000.0;
        v133 = 1026;
        v134 = 1;
        _os_log_impl(&dword_1C9430000, v90, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PerformEscrowRecovery  OctagonSignpostNamePerformEscrowRecovery=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePerformEscrowRecovery}d ", buf, 0x1Cu);
      }

      [v21 sendMetricWithResult:1 error:0];
      v59 = v59;
      v52 = 0;
      v34 = v59;
      goto LABEL_94;
    }

    if (!v86)
    {
      v52 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E697AAE8] code:80 description:@"Failed to handle recovery results"];
    }

    v106 = _OctagonSignpostGetNanoseconds();
    v107 = _OctagonSignpostLogSystem();
    v108 = v107;
    if (v119 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v107))
    {
      *buf = 67240192;
      LODWORD(v130) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9430000, v108, OS_SIGNPOST_INTERVAL_END, v58, "PerformEscrowRecovery", " OctagonSignpostNamePerformEscrowRecovery=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePerformEscrowRecovery}d ", buf, 8u);
    }

    v109 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      v130 = v58;
      v131 = 2048;
      v132 = v106 / 1000000000.0;
      v133 = 1026;
      v134 = 0;
      _os_log_impl(&dword_1C9430000, v109, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PerformEscrowRecovery  OctagonSignpostNamePerformEscrowRecovery=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePerformEscrowRecovery}d ", buf, 0x1Cu);
    }

    [v21 sendMetricWithResult:0 error:v52];
    if (v56)
    {
      v110 = v52;
      v34 = 0;
      *v56 = v52;
LABEL_94:

      goto LABEL_95;
    }

LABEL_93:
    v34 = 0;
    goto LABEL_94;
  }

  v31 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-4 userInfo:0];
  v32 = v31;
  if (a6)
  {
    v33 = v31;
    *a6 = v32;
  }

  [v21 sendMetricWithResult:0 error:v32];
  v34 = 0;
LABEL_95:

  v111 = *MEMORY[0x1E69E9840];

  return v34;
}

+ (id)handleRecoveryResults:()Framework recoveredInformation:record:performedSilentBurn:error:
{
  v153 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v124 = a4;
  v123 = a5;
  v13 = objc_alloc(MEMORY[0x1E69ABBD8]);
  altDSID = [v12 altDSID];
  flowID = [v12 flowID];
  deviceSessionID = [v12 deviceSessionID];
  v17 = *MEMORY[0x1E69ABBF8];
  v18 = MetricsOverrideTestsAreEnabled();
  v19 = *MEMORY[0x1E69ABBF0];
  LOBYTE(v107) = 1;
  v20 = [v13 initWithKeychainCircleMetrics:0 altDSID:altDSID flowID:flowID deviceSessionID:deviceSessionID eventName:v17 testsAreEnabled:v18 canSendMetrics:v107 category:*MEMORY[0x1E69ABBF0]];

  if ([self isCloudServicesAvailable])
  {
    v117 = v19;
    v121 = [objc_alloc(MEMORY[0x1E697AA80]) initWithContextData:v12];
    otControl = [v12 otControl];

    if (otControl)
    {
      otControl2 = [v12 otControl];
      v22 = 0;
    }

    else
    {
      v134 = 0;
      otControl2 = [v12 makeOTControl:&v134];
      v22 = v134;
    }

    v120 = v22;
    if (!otControl2)
    {
      v48 = secLogObjForScope();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v120;
        _os_log_impl(&dword_1C9430000, v48, OS_LOG_TYPE_DEFAULT, "octagontrust-handleRecoveryResults: unable to create otcontrol: %@", &buf, 0xCu);
      }

      v49 = v120;
      if (a7)
      {
        v50 = v120;
        v49 = v120;
        *a7 = v120;
      }

      [v20 sendMetricWithResult:0 error:v49];
      v26 = 0;
      goto LABEL_85;
    }

    v119 = [v124 objectForKeyedSubscript:@"bottleID"];
    v116 = [v124 objectForKeyedSubscript:@"bottleValid"];
    v27 = [v124 objectForKeyedSubscript:@"EscrowServiceEscrowData"];
    v118 = [v27 objectForKeyedSubscript:@"BottledPeerEntropy"];

    if (v118)
    {
      v28 = v119 == 0;
    }

    else
    {
      v28 = 1;
    }

    v29 = !v28;
    v115 = v29;
    if (v28 || ![v116 isEqualToString:@"valid"])
    {
      v39 = secLogObjForScope();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v119;
        _os_log_impl(&dword_1C9430000, v39, OS_LOG_TYPE_DEFAULT, "bottle %@ is not valid, resetting octagon", &buf, 0xCu);
      }

      v40 = objc_alloc(MEMORY[0x1E69ABBD8]);
      altDSID2 = [v12 altDSID];
      flowID2 = [v12 flowID];
      deviceSessionID2 = [v12 deviceSessionID];
      LOBYTE(v108) = 1;
      v44 = [v40 initWithKeychainCircleMetrics:0 altDSID:altDSID2 flowID:flowID2 deviceSessionID:deviceSessionID2 eventName:*MEMORY[0x1E69ABC00] testsAreEnabled:MetricsOverrideTestsAreEnabled() canSendMetrics:v108 category:v19];

      v45 = [objc_alloc(MEMORY[0x1E697AA90]) initWithConfiguration:v12];
      *&buf = 0;
      *(&buf + 1) = &buf;
      v149 = 0x3032000000;
      v150 = __Block_byref_object_copy_;
      v151 = __Block_byref_object_dispose_;
      v152 = 0;
      *&v143 = 0;
      *(&v143 + 1) = &v143;
      v144 = 0x3032000000;
      v145 = __Block_byref_object_copy_;
      v146 = __Block_byref_object_dispose_;
      v147 = 0;
      v127[0] = MEMORY[0x1E69E9820];
      v127[1] = 3221225472;
      v127[2] = __99__OTClique_Framework__handleRecoveryResults_recoveredInformation_record_performedSilentBurn_error___block_invoke_37;
      v127[3] = &unk_1E833E760;
      v127[4] = &buf;
      v127[5] = &v143;
      [otControl2 fetchAccountWideSettingsWithForceFetch:1 arguments:v45 reply:v127];
      if ([*(*(&buf + 1) + 40) hasWalrus])
      {
        walrus = [*(*(&buf + 1) + 40) walrus];
        enabled = [walrus enabled];
      }

      else
      {
        enabled = 0;
      }

      isGuitarfish = [v12 isGuitarfish];
      altDSID3 = [v12 altDSID];
      flowID3 = [v12 flowID];
      deviceSessionID3 = [v12 deviceSessionID];
      v126 = 0;
      LOBYTE(v111) = 1;
      LOBYTE(v109) = enabled;
      [v121 resetAndEstablish:3 idmsTargetContext:0 idmsCuttlefishPassword:0 notifyIdMS:0 accountSettings:0 isGuitarfish:isGuitarfish accountIsW:v109 altDSID:altDSID3 flowID:flowID3 deviceSessionID:deviceSessionID3 canSendMetrics:v111 error:&v126];
      v55 = v126;

      if (v55)
      {
        v56 = secLogObjForScope();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
        {
          *v141 = 138412290;
          v142 = v55;
          _os_log_impl(&dword_1C9430000, v56, OS_LOG_TYPE_DEFAULT, "octagontrust-handleRecoveryResults: failed to reset octagon: %@", v141, 0xCu);
        }

        if (a7)
        {
          v57 = v55;
          *a7 = v55;
        }

        [v44 sendMetricWithResult:0 error:v55];
        [v20 sendMetricWithResult:0 error:v55];
      }

      else
      {
        v58 = secLogObjForScope();
        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
        {
          *v141 = 0;
          _os_log_impl(&dword_1C9430000, v58, OS_LOG_TYPE_DEFAULT, "reset octagon succeeded", v141, 2u);
        }

        [v44 sendMetricWithResult:1 error:0];
      }

      _Block_object_dispose(&v143, 8);
      _Block_object_dispose(&buf, 8);

      if (v55)
      {
        goto LABEL_56;
      }

      v112 = 1;
      goto LABEL_58;
    }

    v30 = secLogObjForScope();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v119;
      _os_log_impl(&dword_1C9430000, v30, OS_LOG_TYPE_DEFAULT, "recovering from bottle: %@", &buf, 0xCu);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v149 = 0x3032000000;
    v150 = __Block_byref_object_copy_;
    v151 = __Block_byref_object_dispose_;
    v152 = 0;
    if (a6)
    {
      v31 = _OctagonSignpostLogSystem();
      v32 = _OctagonSignpostCreate();
      v113 = v33;
      v34 = v32;

      v35 = _OctagonSignpostLogSystem();
      v36 = v35;
      if (v34 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v35))
      {
        LOWORD(v143) = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9430000, v36, OS_SIGNPOST_INTERVAL_BEGIN, v34, "PerformOctagonJoinForSilent", " enableTelemetry=YES ", &v143, 2u);
      }

      v37 = _OctagonSignpostLogSystem();
      if (!os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_52;
      }

      LODWORD(v143) = 134217984;
      *(&v143 + 4) = v34;
      v38 = "BEGIN [%lld]: PerformOctagonJoinForSilent  enableTelemetry=YES ";
    }

    else
    {
      v59 = _OctagonSignpostLogSystem();
      v60 = _OctagonSignpostCreate();
      v113 = v61;
      v34 = v60;

      v62 = _OctagonSignpostLogSystem();
      v63 = v62;
      if (v34 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v62))
      {
        LOWORD(v143) = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9430000, v63, OS_SIGNPOST_INTERVAL_BEGIN, v34, "PerformOctagonJoinForNonSilent", " enableTelemetry=YES ", &v143, 2u);
      }

      v37 = _OctagonSignpostLogSystem();
      if (!os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_52;
      }

      LODWORD(v143) = 134217984;
      *(&v143 + 4) = v34;
      v38 = "BEGIN [%lld]: PerformOctagonJoinForNonSilent  enableTelemetry=YES ";
    }

    _os_log_impl(&dword_1C9430000, v37, OS_LOG_TYPE_DEFAULT, v38, &v143, 0xCu);
LABEL_52:

    v64 = objc_alloc(MEMORY[0x1E69ABBD8]);
    altDSID4 = [v12 altDSID];
    flowID4 = [v12 flowID];
    deviceSessionID4 = [v12 deviceSessionID];
    LOBYTE(v108) = 1;
    v68 = [v64 initWithKeychainCircleMetrics:0 altDSID:altDSID4 flowID:flowID4 deviceSessionID:deviceSessionID4 eventName:*MEMORY[0x1E69ABC30] testsAreEnabled:MetricsOverrideTestsAreEnabled() canSendMetrics:v108 category:v117];

    v69 = [objc_alloc(MEMORY[0x1E697AA90]) initWithConfiguration:v12];
    v128[0] = MEMORY[0x1E69E9820];
    v128[1] = 3221225472;
    v128[2] = __99__OTClique_Framework__handleRecoveryResults_recoveredInformation_record_performedSilentBurn_error___block_invoke;
    v128[3] = &unk_1E833E738;
    v70 = v68;
    v129 = v70;
    p_buf = &buf;
    v133 = a6;
    v131 = v34;
    v132 = v113;
    [otControl2 restoreFromBottle:v69 entropy:v118 bottleID:v119 reply:v128];

    v71 = *(*(&buf + 1) + 40);
    if (v71)
    {
      if (a7)
      {
        v72 = v71;
        *a7 = v71;
        v71 = *(*(&buf + 1) + 40);
      }

      [v20 sendMetricWithResult:0 error:v71];

      _Block_object_dispose(&buf, 8);
LABEL_56:
      v26 = 0;
LABEL_84:

LABEL_85:
      goto LABEL_86;
    }

    _Block_object_dispose(&buf, 8);
    v112 = 0;
LABEL_58:
    v73 = [v12 sbd];
    v75 = v73;
    if (v73)
    {
      v76 = v73;
    }

    else
    {
      gotLoadHelper_x8__OBJC_CLASS___SecureBackup(v74);
      v76 = [objc_alloc(*(v77 + 3448)) initWithUserActivityLabel:@"octagon-trust-restore"];
    }

    v78 = v76;

    v79 = [MEMORY[0x1E695DFA8] set];
    [v79 addObject:@"iCloudIdentity"];
    [v79 addObject:@"PCS-MasterKey"];
    [v79 addObject:@"KeychainV0"];
    Helper_x8__kEscrowServiceRecordDataKey = gotLoadHelper_x8__kEscrowServiceRecordDataKey(v80);
    v83 = [v124 objectForKeyedSubscript:{**(v82 + 3512), Helper_x8__kEscrowServiceRecordDataKey}];
    if (v83)
    {
      Helper_x8__kSecureBackupKeybagDigestKey = gotLoadHelper_x8__kSecureBackupKeybagDigestKey(v84);
      v87 = [v83 objectForKeyedSubscript:{**(v86 + 3800), Helper_x8__kSecureBackupKeybagDigestKey}];
      Helper_x8__kSecureBackupBagPasswordKey = gotLoadHelper_x8__kSecureBackupBagPasswordKey(v88);
      v114 = [v83 objectForKeyedSubscript:{**(v90 + 3632), Helper_x8__kSecureBackupBagPasswordKey}];
      if (v87 && v114)
      {
        if (v115 && ([v116 isEqualToString:@"valid"] & 1) != 0)
        {
          v112 = 1;
        }

        v91 = objc_alloc(MEMORY[0x1E69ABBD8]);
        altDSID5 = [v12 altDSID];
        flowID5 = [v12 flowID];
        deviceSessionID5 = [v12 deviceSessionID];
        LOBYTE(v110) = 1;
        v95 = [v91 initWithKeychainCircleMetrics:0 altDSID:altDSID5 flowID:flowID5 deviceSessionID:deviceSessionID5 eventName:*MEMORY[0x1E69ABC38] testsAreEnabled:MetricsOverrideTestsAreEnabled() canSendMetrics:v110 category:v117];

        v125 = 0;
        [v78 restoreKeychainAsyncWithPassword:v114 keybagDigest:v87 haveBottledPeer:v112 viewsNotToBeRestored:v79 error:&v125];
        v96 = v125;
        if (v96)
        {
          v97 = secLogObjForScope();
          if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf) = 138412290;
            *(&buf + 4) = v96;
            _os_log_impl(&dword_1C9430000, v97, OS_LOG_TYPE_DEFAULT, "octagontrust-handleRecoveryResults: error restoring keychain items: %@", &buf, 0xCu);
          }

          [v95 sendMetricWithResult:0 error:v96];
        }

        else
        {
          [v95 sendMetricWithResult:1 error:0];
        }

        [v20 sendMetricWithResult:1 error:0];
        v104 = v121;
      }

      else
      {
        v101 = secLogObjForScope();
        if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_1C9430000, v101, OS_LOG_TYPE_DEFAULT, "unable to request keychain restore, digest or password missing", &buf, 2u);
        }

        if (v87)
        {
          v135 = *MEMORY[0x1E69ABC48];
          v136 = MEMORY[0x1E695E118];
          [MEMORY[0x1E695DF20] dictionaryWithObjects:&v136 forKeys:&v135 count:1];
        }

        else
        {
          v137 = *MEMORY[0x1E69ABC40];
          v138 = MEMORY[0x1E695E118];
          [MEMORY[0x1E695DF20] dictionaryWithObjects:&v138 forKeys:&v137 count:1];
        }
        v102 = ;
        [v20 addMetrics:v102];

        [v20 sendMetricWithResult:1 error:0];
        v103 = v121;
      }
    }

    else
    {
      v98 = secLogObjForScope();
      if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1C9430000, v98, OS_LOG_TYPE_DEFAULT, "unable to request keychain restore, record data missing", &buf, 2u);
      }

      v139 = *MEMORY[0x1E69ABC50];
      v140 = MEMORY[0x1E695E118];
      v99 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v140 forKeys:&v139 count:1];
      [v20 addMetrics:v99];

      [v20 sendMetricWithResult:1 error:0];
      v100 = v121;
    }

    v26 = v121;
    goto LABEL_84;
  }

  v23 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-4 userInfo:0];
  v24 = v23;
  if (a7)
  {
    v25 = v23;
    *a7 = v24;
  }

  [v20 sendMetricWithResult:0 error:v24];

  v26 = 0;
LABEL_86:

  v105 = *MEMORY[0x1E69E9840];

  return v26;
}

+ (id)fetchEscrowRecords:()Framework error:
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = secLogObjForScope();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    context = [v5 context];
    altDSID = [v5 altDSID];
    v12 = 138412546;
    v13 = context;
    v14 = 2112;
    v15 = altDSID;
    _os_log_impl(&dword_1C9430000, v6, OS_LOG_TYPE_DEFAULT, "fetching filtered escrow records for context:%@, altdsid:%@", &v12, 0x16u);
  }

  v9 = [MEMORY[0x1E697AA80] fetchAndHandleEscrowRecords:v5 shouldFilter:1 error:a4];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)fetchAllEscrowRecords:()Framework error:
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = secLogObjForScope();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    context = [v5 context];
    altDSID = [v5 altDSID];
    v12 = 138412546;
    v13 = context;
    v14 = 2112;
    v15 = altDSID;
    _os_log_impl(&dword_1C9430000, v6, OS_LOG_TYPE_DEFAULT, "fetching all escrow records for context :%@, altdsid:%@", &v12, 0x16u);
  }

  v9 = [MEMORY[0x1E697AA80] fetchAndHandleEscrowRecords:v5 shouldFilter:0 error:a4];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (NSObject)fetchAndHandleEscrowRecords:()Framework shouldFilter:error:
{
  v92 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = _OctagonSignpostLogSystem();
  v8 = _OctagonSignpostCreate();

  v9 = _OctagonSignpostLogSystem();
  v10 = v9;
  v74 = v8 - 1;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9430000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "FetchEscrowRecords", " enableTelemetry=YES ", buf, 2u);
  }

  serialNumber2 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(serialNumber2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = v8;
    _os_log_impl(&dword_1C9430000, serialNumber2, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: FetchEscrowRecords  enableTelemetry=YES ", buf, 0xCu);
  }

  v85 = 0;
  serialNumber5 = [MEMORY[0x1E697AA80] fetchEscrowRecordsInternal:v6 error:&v85];
  v75 = v85;
  if (v75)
  {
    v13 = secLogObjForScope();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v75;
      _os_log_impl(&dword_1C9430000, v13, OS_LOG_TYPE_DEFAULT, "octagontrust-fetchAndHandleEscrowRecords: failed to fetch escrow records: %@", buf, 0xCu);
    }

    if (a5)
    {
      *a5 = v75;
    }

    Nanoseconds = _OctagonSignpostGetNanoseconds();
    v15 = _OctagonSignpostLogSystem();
    v16 = v15;
    if (v74 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      *buf = 67240192;
      _os_signpost_emit_with_name_impl(&dword_1C9430000, v16, OS_SIGNPOST_INTERVAL_END, v8, "FetchEscrowRecords", " OctagonSignpostNameFetchEscrowRecords=%{public,signpost.telemetry:number1,name=OctagonSignpostNameFetchEscrowRecords}d ", buf, 8u);
    }

    array = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(array, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      *&buf[4] = v8;
      v88 = 2048;
      v89 = Nanoseconds / 1000000000.0;
      v90 = 1026;
      v91 = 0;
      _os_log_impl(&dword_1C9430000, array, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: FetchEscrowRecords  OctagonSignpostNameFetchEscrowRecords=%{public,signpost.telemetry:number1,name=OctagonSignpostNameFetchEscrowRecords}d ", buf, 0x1Cu);
    }

    v18 = 0;
    goto LABEL_68;
  }

  v71 = v8;
  v72 = v6;
  array = [MEMORY[0x1E695DF70] array];
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v70 = serialNumber5;
  obj = serialNumber5;
  v80 = [obj countByEnumeratingWithState:&v81 objects:v86 count:16];
  if (v80)
  {
    v79 = *v82;
    v76 = *MEMORY[0x1E695E480];
    v78 = array;
    do
    {
      for (i = 0; i != v80; ++i)
      {
        if (*v82 != v79)
        {
          objc_enumerationMutation(obj);
        }

        v20 = [[OTEscrowRecord alloc] initWithData:*(*(&v81 + 1) + 8 * i)];
        escrowInformationMetadata = [(OTEscrowRecord *)v20 escrowInformationMetadata];
        bottleValidity = [escrowInformationMetadata bottleValidity];
        if (bottleValidity)
        {
          v23 = bottleValidity;
          escrowInformationMetadata2 = [(OTEscrowRecord *)v20 escrowInformationMetadata];
          bottleValidity2 = [escrowInformationMetadata2 bottleValidity];
          v26 = [bottleValidity2 isEqualToString:&stru_1F48F2A78];

          if (!v26)
          {
            goto LABEL_28;
          }
        }

        else
        {
        }

        recordViability = [(OTEscrowRecord *)v20 recordViability];
        if (recordViability <= 2)
        {
          v28 = off_1E833E910[recordViability];
          escrowInformationMetadata3 = [(OTEscrowRecord *)v20 escrowInformationMetadata];
          [escrowInformationMetadata3 setBottleValidity:v28];
        }

LABEL_28:
        recordId = [(OTEscrowRecord *)v20 recordId];
        if (!recordId || (v31 = recordId, -[OTEscrowRecord recordId](v20, "recordId"), v32 = objc_claimAutoreleasedReturnValue(), v33 = [v32 isEqualToString:&stru_1F48F2A78], v32, v31, v33))
        {
          label = [(OTEscrowRecord *)v20 label];
          v35 = [label stringByReplacingOccurrencesOfString:*MEMORY[0x1E697AAD8] withString:&stru_1F48F2A78];
          v36 = [v35 mutableCopy];
          [(OTEscrowRecord *)v20 setRecordId:v36];
        }

        serialNumber = [(OTEscrowRecord *)v20 serialNumber];
        if (serialNumber)
        {
          serialNumber2 = [(OTEscrowRecord *)v20 serialNumber];
          if (![serialNumber2 isEqualToString:&stru_1F48F2A78])
          {
            goto LABEL_39;
          }
        }

        escrowInformationMetadata4 = [(OTEscrowRecord *)v20 escrowInformationMetadata];
        peerInfo = [escrowInformationMetadata4 peerInfo];
        if (!peerInfo)
        {

          if (!serialNumber)
          {
            goto LABEL_40;
          }

LABEL_39:

          goto LABEL_40;
        }

        v40 = peerInfo;
        escrowInformationMetadata5 = [(OTEscrowRecord *)v20 escrowInformationMetadata];
        peerInfo2 = [escrowInformationMetadata5 peerInfo];
        v43 = [peerInfo2 length];

        if (serialNumber)
        {
        }

        array = v78;
        if (v43)
        {
          escrowInformationMetadata6 = [(OTEscrowRecord *)v20 escrowInformationMetadata];
          peerInfo3 = [escrowInformationMetadata6 peerInfo];
          v46 = SOSPeerInfoCreateFromData();

          v55 = SOSPeerInfoCopySerialNumber();
          [(OTEscrowRecord *)v20 setSerialNumber:v55];

          serialNumber3 = [(OTEscrowRecord *)v20 serialNumber];
          if (!serialNumber3 || (v57 = serialNumber3, -[OTEscrowRecord serialNumber](v20, "serialNumber"), v58 = objc_claimAutoreleasedReturnValue(), v59 = [v58 isEqualToString:&stru_1F48F2A78], v58, v57, v59))
          {
            v60 = secLogObjForScope();
            if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_1C9430000, v60, OS_LOG_TYPE_DEFAULT, "attempted to use peer info's serial number and failed, using metadata", buf, 2u);
            }

            escrowInformationMetadata7 = [(OTEscrowRecord *)v20 escrowInformationMetadata];
            serial = [escrowInformationMetadata7 serial];
            [(OTEscrowRecord *)v20 setSerialNumber:serial];
          }

          if (v46)
          {
            CFRelease(v46);
          }

          goto LABEL_57;
        }

LABEL_40:
        serialNumber4 = [(OTEscrowRecord *)v20 serialNumber];
        if (serialNumber4)
        {
          serialNumber5 = [(OTEscrowRecord *)v20 serialNumber];
          if (([serialNumber5 isEqualToString:&stru_1F48F2A78] & 1) == 0)
          {
            goto LABEL_48;
          }
        }

        escrowInformationMetadata8 = [(OTEscrowRecord *)v20 escrowInformationMetadata];
        serial2 = [escrowInformationMetadata8 serial];
        if (!serial2)
        {

          if (!serialNumber4)
          {
            goto LABEL_57;
          }

LABEL_48:

LABEL_49:
          goto LABEL_57;
        }

        v50 = serial2;
        escrowInformationMetadata9 = [(OTEscrowRecord *)v20 escrowInformationMetadata];
        serial3 = [escrowInformationMetadata9 serial];
        v53 = [serial3 isEqualToString:&stru_1F48F2A78];

        if (serialNumber4)
        {
        }

        array = v78;
        if ((v53 & 1) == 0)
        {
          serialNumber4 = [(OTEscrowRecord *)v20 escrowInformationMetadata];
          serial4 = [serialNumber4 serial];
          [(OTEscrowRecord *)v20 setSerialNumber:serial4];

          goto LABEL_49;
        }

LABEL_57:
        [array addObject:v20];
      }

      v80 = [obj countByEnumeratingWithState:&v81 objects:v86 count:16];
    }

    while (v80);
  }

  v63 = _OctagonSignpostGetNanoseconds();
  v64 = _OctagonSignpostLogSystem();
  v65 = v64;
  if (v74 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v64))
  {
    *buf = 67240192;
    *&buf[4] = 1;
    _os_signpost_emit_with_name_impl(&dword_1C9430000, v65, OS_SIGNPOST_INTERVAL_END, v71, "FetchEscrowRecords", " OctagonSignpostNameFetchEscrowRecords=%{public,signpost.telemetry:number1,name=OctagonSignpostNameFetchEscrowRecords}d ", buf, 8u);
  }

  v66 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218496;
    *&buf[4] = v71;
    v88 = 2048;
    v89 = v63 / 1000000000.0;
    v90 = 1026;
    v91 = 1;
    _os_log_impl(&dword_1C9430000, v66, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: FetchEscrowRecords  OctagonSignpostNameFetchEscrowRecords=%{public,signpost.telemetry:number1,name=OctagonSignpostNameFetchEscrowRecords}d ", buf, 0x1Cu);
  }

  v6 = v72;
  serialNumber5 = v70;
  if (a4)
  {
    v67 = [MEMORY[0x1E697AA80] filterRecords:array];
  }

  else
  {
    v67 = array;
    array = v67;
  }

  v18 = v67;
LABEL_68:

  v68 = *MEMORY[0x1E69E9840];

  return v18;
}

+ (id)filterRecords:()Framework
{
  selfCopy = self;
  v113 = *MEMORY[0x1E69E9840];
  v3 = a3;
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  array3 = [MEMORY[0x1E695DF70] array];
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v97 objects:v112 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v98;
    do
    {
      v8 = 0;
      do
      {
        if (*v98 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v97 + 1) + 8 * v8);
        if (![v9 recordViability])
        {
          escrowInformationMetadata = [v9 escrowInformationMetadata];
          bottleId = [escrowInformationMetadata bottleId];
          if (bottleId)
          {
            v19 = bottleId;
            escrowInformationMetadata2 = [v9 escrowInformationMetadata];
            bottleId2 = [escrowInformationMetadata2 bottleId];
            v22 = [bottleId2 length];

            v16 = array;
            if (v22)
            {
              goto LABEL_16;
            }
          }

          else
          {
          }
        }

        if ([v9 recordViability] == 1)
        {
          escrowInformationMetadata3 = [v9 escrowInformationMetadata];
          bottleId3 = [escrowInformationMetadata3 bottleId];
          if (bottleId3)
          {
            v12 = bottleId3;
            escrowInformationMetadata4 = [v9 escrowInformationMetadata];
            bottleId4 = [escrowInformationMetadata4 bottleId];
            v15 = [bottleId4 length];

            v16 = array2;
            if (v15)
            {
              goto LABEL_16;
            }
          }

          else
          {
          }
        }

        v16 = array3;
LABEL_16:
        [v16 addObject:v9];
        ++v8;
      }

      while (v6 != v8);
      v23 = [obj countByEnumeratingWithState:&v97 objects:v112 count:16];
      v6 = v23;
    }

    while (v23);
  }

  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v24 = array;
  v25 = [v24 countByEnumeratingWithState:&v93 objects:v111 count:16];
  v79 = v24;
  if (v25)
  {
    v26 = v25;
    v27 = *v94;
    v81 = *v94;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v94 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v93 + 1) + 8 * i);
        v30 = secLogObjForScope();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          label = [v29 label];
          escrowInformationMetadata5 = [v29 escrowInformationMetadata];
          serial = [escrowInformationMetadata5 serial];
          escrowInformationMetadata6 = [v29 escrowInformationMetadata];
          bottleId5 = [escrowInformationMetadata6 bottleId];
          silentAttemptAllowed = [v29 silentAttemptAllowed];
          *buf = 138413058;
          v104 = label;
          v105 = 2112;
          v106 = serial;
          v107 = 2112;
          v108 = bottleId5;
          v109 = 1024;
          v110 = silentAttemptAllowed;
          _os_log_impl(&dword_1C9430000, v30, OS_LOG_TYPE_DEFAULT, "viable record: %@ serial:%@ bottleID:%@ silent allowed:%{BOOL}d", buf, 0x26u);

          v24 = v79;
          v27 = v81;
        }
      }

      v26 = [v24 countByEnumeratingWithState:&v93 objects:v111 count:16];
    }

    while (v26);
  }

  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v82 = array2;
  v37 = [v82 countByEnumeratingWithState:&v89 objects:v102 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v90;
    v77 = *v90;
    do
    {
      for (j = 0; j != v38; ++j)
      {
        if (*v90 != v39)
        {
          objc_enumerationMutation(v82);
        }

        v41 = *(*(&v89 + 1) + 8 * j);
        v42 = secLogObjForScope();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          label2 = [v41 label];
          escrowInformationMetadata7 = [v41 escrowInformationMetadata];
          serial2 = [escrowInformationMetadata7 serial];
          escrowInformationMetadata8 = [v41 escrowInformationMetadata];
          bottleId6 = [escrowInformationMetadata8 bottleId];
          silentAttemptAllowed2 = [v41 silentAttemptAllowed];
          *buf = 138413058;
          v104 = label2;
          v105 = 2112;
          v106 = serial2;
          v107 = 2112;
          v108 = bottleId6;
          v109 = 1024;
          v110 = silentAttemptAllowed2;
          _os_log_impl(&dword_1C9430000, v42, OS_LOG_TYPE_DEFAULT, "partially viable record: %@ serial:%@ bottleID:%@ silent allowed:%{BOOL}d", buf, 0x26u);

          v39 = v77;
        }
      }

      v38 = [v82 countByEnumeratingWithState:&v89 objects:v102 count:16];
    }

    while (v38);
  }

  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v84 = array3;
  v49 = [v84 countByEnumeratingWithState:&v85 objects:v101 count:16];
  if (v49)
  {
    v50 = v49;
    v51 = *v86;
    v78 = *v86;
    do
    {
      for (k = 0; k != v50; ++k)
      {
        if (*v86 != v51)
        {
          objc_enumerationMutation(v84);
        }

        v53 = *(*(&v85 + 1) + 8 * k);
        v54 = secLogObjForScope();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
        {
          label3 = [v53 label];
          escrowInformationMetadata9 = [v53 escrowInformationMetadata];
          serial3 = [escrowInformationMetadata9 serial];
          escrowInformationMetadata10 = [v53 escrowInformationMetadata];
          bottleId7 = [escrowInformationMetadata10 bottleId];
          silentAttemptAllowed3 = [v53 silentAttemptAllowed];
          *buf = 138413058;
          v104 = label3;
          v105 = 2112;
          v106 = serial3;
          v107 = 2112;
          v108 = bottleId7;
          v109 = 1024;
          v110 = silentAttemptAllowed3;
          _os_log_impl(&dword_1C9430000, v54, OS_LOG_TYPE_DEFAULT, "nonviable record: %@ serial:%@ bottleID:%@ silent allowed:%{BOOL}d", buf, 0x26u);

          v51 = v78;
        }
      }

      v50 = [v84 countByEnumeratingWithState:&v85 objects:v101 count:16];
    }

    while (v50);
  }

  if ([v79 count])
  {
    v61 = secLogObjForScope();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
    {
      v62 = [v79 count];
      *buf = 67109120;
      LODWORD(v104) = v62;
      _os_log_impl(&dword_1C9430000, v61, OS_LOG_TYPE_DEFAULT, "Returning %d viable records", buf, 8u);
    }

    v63 = selfCopy;
    v64 = v79;
LABEL_55:
    array4 = [v63 sortListPrioritizingiOSRecords:{v64, selfCopy}];
LABEL_56:
    v68 = array4;
    goto LABEL_57;
  }

  if ([v82 count])
  {
    v65 = secLogObjForScope();
    if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
    {
      v66 = [v82 count];
      *buf = 67109120;
      LODWORD(v104) = v66;
      _os_log_impl(&dword_1C9430000, v65, OS_LOG_TYPE_DEFAULT, "Returning %d partially viable records", buf, 8u);
    }

    v63 = selfCopy;
    v64 = v82;
    goto LABEL_55;
  }

  if (!SOSCCIsSOSTrustAndSyncingEnabled())
  {
    v74 = secLogObjForScope();
    if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9430000, v74, OS_LOG_TYPE_DEFAULT, "no viable records!", buf, 2u);
    }

    array4 = [MEMORY[0x1E695DEC8] array];
    goto LABEL_56;
  }

  v71 = [selfCopy filterViableSOSRecords:v84];
  v72 = secLogObjForScope();
  if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
  {
    v73 = [v71 count];
    *buf = 67109120;
    LODWORD(v104) = v73;
    _os_log_impl(&dword_1C9430000, v72, OS_LOG_TYPE_DEFAULT, "Returning %d sos viable records", buf, 8u);
  }

  v68 = [selfCopy sortListPrioritizingiOSRecords:v71];

LABEL_57:
  v69 = *MEMORY[0x1E69E9840];

  return v68;
}

+ (id)sortListPrioritizingiOSRecords:()Framework
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a3;
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        escrowInformationMetadata = [v9 escrowInformationMetadata];
        clientMetadata = [escrowInformationMetadata clientMetadata];
        if ([clientMetadata hasSecureBackupUsesNumericPassphrase])
        {
          [v9 escrowInformationMetadata];
          v13 = v12 = array;
          clientMetadata2 = [v13 clientMetadata];
          secureBackupUsesNumericPassphrase = [clientMetadata2 secureBackupUsesNumericPassphrase];

          array = v12;
          v16 = v12;
          if (secureBackupUsesNumericPassphrase)
          {
            goto LABEL_11;
          }
        }

        else
        {
        }

        v16 = array2;
LABEL_11:
        [v16 addObject:v9];
      }

      v6 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v6);
  }

  [array addObjectsFromArray:array2];
  v17 = *MEMORY[0x1E69E9840];

  return array;
}

+ (id)filterViableSOSRecords:()Framework
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  array = [MEMORY[0x1E695DF70] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([v10 viabilityStatus] == 1)
        {
          [array addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];

  return array;
}

@end