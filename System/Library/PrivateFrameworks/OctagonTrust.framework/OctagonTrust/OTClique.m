@interface OTClique
@end

@implementation OTClique

void __47__OTClique_Framework__removeRecoveryKey_error___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = secLogObjForScope();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v3;
      v5 = "octagon-remove-recovery-key: removeRecoveryKey failed: %@";
      v6 = v4;
      v7 = 12;
LABEL_6:
      _os_log_impl(&dword_1C9430000, v6, OS_LOG_TYPE_DEFAULT, v5, &v11, v7);
    }
  }

  else
  {
    v4 = secLogObjForScope();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      v5 = "removeRecoveryKey succeeded";
      v6 = v4;
      v7 = 2;
      goto LABEL_6;
    }
  }

  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v3;

  v10 = *MEMORY[0x1E69E9840];
}

void __62__OTClique_Framework__tlkRecoverabilityForEscrowRecord_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = secLogObjForScope();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v18 = 138412290;
      v19 = v6;
      v9 = "tlkRecoverabilityForEscrowRecordData errored: %@";
      v10 = v7;
      v11 = 12;
LABEL_6:
      _os_log_impl(&dword_1C9430000, v10, OS_LOG_TYPE_DEFAULT, v9, &v18, v11);
    }
  }

  else if (v8)
  {
    LOWORD(v18) = 0;
    v9 = "tlkRecoverabilityForEscrowRecordData succeeded";
    v10 = v7;
    v11 = 2;
    goto LABEL_6;
  }

  v12 = *(*(a1 + 32) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v5;
  v14 = v5;

  v15 = *(*(a1 + 40) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v6;

  v17 = *MEMORY[0x1E69E9840];
}

void __63__OTClique_Framework__waitForPriorityViewKeychainDataRecovery___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = secLogObjForScope();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v12 = 138412290;
      v13 = v3;
      v6 = "waitForPriorityViewKeychainDataRecovery errored: %@";
      v7 = v4;
      v8 = 12;
LABEL_6:
      _os_log_impl(&dword_1C9430000, v7, OS_LOG_TYPE_DEFAULT, v6, &v12, v8);
    }
  }

  else if (v5)
  {
    LOWORD(v12) = 0;
    v6 = "waitForPriorityViewKeychainDataRecovery succeeded";
    v7 = v4;
    v8 = 2;
    goto LABEL_6;
  }

  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v3;

  v11 = *MEMORY[0x1E69E9840];
}

void __44__OTClique_Framework__fetchAccountSettings___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = secLogObjForScope();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v14 = 138412290;
      v15 = v6;
      _os_log_impl(&dword_1C9430000, v7, OS_LOG_TYPE_DEFAULT, "fetchAccountSettings errored: %@", &v14, 0xCu);
    }
  }

  else
  {
    if (v8)
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_1C9430000, v7, OS_LOG_TYPE_DEFAULT, "fetchAccountSettings succeeded", &v14, 2u);
    }

    v9 = *(*(a1 + 32) + 8);
    v10 = v5;
    v7 = *(v9 + 40);
    *(v9 + 40) = v10;
  }

  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v6;

  v13 = *MEMORY[0x1E69E9840];
}

void __47__OTClique_Framework__setAccountSetting_error___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = secLogObjForScope();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v12 = 138412290;
      v13 = v3;
      v6 = "setAccountSetting errored: %@";
      v7 = v4;
      v8 = 12;
LABEL_6:
      _os_log_impl(&dword_1C9430000, v7, OS_LOG_TYPE_DEFAULT, v6, &v12, v8);
    }
  }

  else if (v5)
  {
    LOWORD(v12) = 0;
    v6 = "setAccountSetting succeeded";
    v7 = v4;
    v8 = 2;
    goto LABEL_6;
  }

  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v3;

  v11 = *MEMORY[0x1E69E9840];
}

void __59__OTClique_Framework__fetchTrustedSecureElementIdentities___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = secLogObjForScope();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v14 = 138412290;
      v15 = v6;
      _os_log_impl(&dword_1C9430000, v7, OS_LOG_TYPE_DEFAULT, "fetchTrustedSecureElementIdentities errored: %@", &v14, 0xCu);
    }
  }

  else
  {
    if (v8)
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_1C9430000, v7, OS_LOG_TYPE_DEFAULT, "fetchTrustedSecureElementIdentities succeeded", &v14, 2u);
    }

    v9 = *(*(a1 + 32) + 8);
    v10 = v5;
    v7 = *(v9 + 40);
    *(v9 + 40) = v10;
  }

  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v6;

  v13 = *MEMORY[0x1E69E9840];
}

void __68__OTClique_Framework__removeLocalSecureElementIdentityPeerID_error___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = secLogObjForScope();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v12 = 138412290;
      v13 = v3;
      v6 = "removeLocalSecureElementIdentityPeerID errored: %@";
      v7 = v4;
      v8 = 12;
LABEL_6:
      _os_log_impl(&dword_1C9430000, v7, OS_LOG_TYPE_DEFAULT, v6, &v12, v8);
    }
  }

  else if (v5)
  {
    LOWORD(v12) = 0;
    v6 = "removeLocalSecureElementIdentityPeerID succeeded";
    v7 = v4;
    v8 = 2;
    goto LABEL_6;
  }

  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v3;

  v11 = *MEMORY[0x1E69E9840];
}

void __59__OTClique_Framework__setLocalSecureElementIdentity_error___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = secLogObjForScope();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v12 = 138412290;
      v13 = v3;
      v6 = "setLocalSecureElementIdentity errored: %@";
      v7 = v4;
      v8 = 12;
LABEL_6:
      _os_log_impl(&dword_1C9430000, v7, OS_LOG_TYPE_DEFAULT, v6, &v12, v8);
    }
  }

  else if (v5)
  {
    LOWORD(v12) = 0;
    v6 = "setLocalSecureElementIdentity succeeded";
    v7 = v4;
    v8 = 2;
    goto LABEL_6;
  }

  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v3;

  v11 = *MEMORY[0x1E69E9840];
}

void __59__OTClique_Framework__escrowCheck_isBackgroundCheck_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = secLogObjForScope();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v16 = 138412290;
      v17 = v6;
      _os_log_impl(&dword_1C9430000, v7, OS_LOG_TYPE_DEFAULT, "escrowCheck errored: %@", &v16, 0xCu);
    }

    v9 = 32;
    v10 = v6;
  }

  else
  {
    if (v8)
    {
      v11 = [v5 dictionaryRepresentation];
      v16 = 138412290;
      v17 = v11;
      _os_log_impl(&dword_1C9430000, v7, OS_LOG_TYPE_DEFAULT, "escrowCheck succeeded %@", &v16, 0xCu);
    }

    v9 = 40;
    v10 = v5;
  }

  v12 = *(*(a1 + v9) + 8);
  v13 = v10;
  v14 = *(v12 + 40);
  *(v12 + 40) = v13;

  v15 = *MEMORY[0x1E69E9840];
}

void __55__OTClique_Framework__areRecoveryKeysDistrusted_error___block_invoke(uint64_t a1, int a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = secLogObjForScope();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v11 = 138412290;
      v12 = v6;
      _os_log_impl(&dword_1C9430000, v7, OS_LOG_TYPE_DEFAULT, "areRecoveryKeysDistrusted errored: %@", &v11, 0xCu);
    }

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  }

  else
  {
    if (v8)
    {
      v9 = @"NO";
      if (a2)
      {
        v9 = @"YES";
      }

      v11 = 138412290;
      v12 = v9;
      _os_log_impl(&dword_1C9430000, v7, OS_LOG_TYPE_DEFAULT, "areRecoveryKeysDistrusted succeeded, octagon circle contains distrusted recovery keys: %@", &v11, 0xCu);
    }

    *(*(*(a1 + 40) + 8) + 24) = a2;
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __46__OTClique_Framework__trustedFullPeers_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = secLogObjForScope();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v15 = 138412290;
      v16 = v6;
      _os_log_impl(&dword_1C9430000, v7, OS_LOG_TYPE_DEFAULT, "trustedFullPeers errored: %@", &v15, 0xCu);
    }

    v9 = 32;
    v10 = v6;
  }

  else
  {
    if (v8)
    {
      v15 = 138412290;
      v16 = v5;
      _os_log_impl(&dword_1C9430000, v7, OS_LOG_TYPE_DEFAULT, "trustedFullPeers succeeded, total count: %@", &v15, 0xCu);
    }

    v9 = 40;
    v10 = v5;
  }

  v11 = *(*(a1 + v9) + 8);
  v12 = v10;
  v13 = *(v11 + 40);
  *(v11 + 40) = v12;

  v14 = *MEMORY[0x1E69E9840];
}

void __47__OTClique_Framework__totalTrustedPeers_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = secLogObjForScope();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v15 = 138412290;
      v16 = v6;
      _os_log_impl(&dword_1C9430000, v7, OS_LOG_TYPE_DEFAULT, "totalTrustedPeers errored: %@", &v15, 0xCu);
    }

    v9 = 32;
    v10 = v6;
  }

  else
  {
    if (v8)
    {
      v15 = 138412290;
      v16 = v5;
      _os_log_impl(&dword_1C9430000, v7, OS_LOG_TYPE_DEFAULT, "totalTrustedPeers succeeded, total count: %@", &v15, 0xCu);
    }

    v9 = 40;
    v10 = v5;
  }

  v11 = *(*(a1 + v9) + 8);
  v12 = v10;
  v13 = *(v11 + 40);
  *(v11 + 40) = v12;

  v14 = *MEMORY[0x1E69E9840];
}

void __81__OTClique_Framework__preflightRecoverOctagonUsingRecoveryKey_recoveryKey_error___block_invoke(uint64_t a1, int a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = secLogObjForScope();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      v12 = 138412290;
      v13 = v5;
      _os_log_impl(&dword_1C9430000, v6, OS_LOG_TYPE_DEFAULT, "Preflight recovery key errored: %@", &v12, 0xCu);
    }
  }

  else
  {
    if (v7)
    {
      v8 = @"incorrect";
      if (a2)
      {
        v8 = @"correct";
      }

      v12 = 138412290;
      v13 = v8;
      _os_log_impl(&dword_1C9430000, v6, OS_LOG_TYPE_DEFAULT, "Recovery key is %@", &v12, 0xCu);
    }

    *(*(*(a1 + 32) + 8) + 24) = a2;
  }

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;

  v11 = *MEMORY[0x1E69E9840];
}

void __64__OTClique_Framework__recoverWithRecoveryKey_recoveryKey_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void __64__OTClique_Framework__recoverWithRecoveryKey_recoveryKey_error___block_invoke_2(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = secLogObjForScope();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *buf = 138412290;
      v17 = v3;
      _os_log_impl(&dword_1C9430000, v4, OS_LOG_TYPE_DEFAULT, "reset and establish returned an error: %@", buf, 0xCu);
    }

    v6 = *(*(a1 + 56) + 8);
    v7 = v3;
    v8 = *(v6 + 40);
    *(v6 + 40) = v7;
  }

  else
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_1C9430000, v4, OS_LOG_TYPE_DEFAULT, "successfully reset octagon, attempting enrolling recovery key", buf, 2u);
    }

    v9 = *(a1 + 32);
    v10 = [objc_alloc(MEMORY[0x1E697AA90]) initWithConfiguration:*(a1 + 40)];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __64__OTClique_Framework__recoverWithRecoveryKey_recoveryKey_error___block_invoke_144;
    v13[3] = &unk_1E833E878;
    v11 = *(a1 + 48);
    v15 = *(a1 + 56);
    v14 = *(a1 + 40);
    [v9 createRecoveryKey:v10 recoveryKey:v11 reply:v13];

    v8 = v14;
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __64__OTClique_Framework__recoverWithRecoveryKey_recoveryKey_error___block_invoke_151(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = secLogObjForScope();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v3;
      _os_log_impl(&dword_1C9430000, v4, OS_LOG_TYPE_DEFAULT, "octagon-recover-with-rk: joining with recovery key failed: %@", &v9, 0xCu);
    }

    v5 = *(*(a1 + 32) + 8);
    v6 = v3;
    v7 = *(v5 + 40);
    *(v5 + 40) = v6;
  }

  else
  {
    v7 = secLogObjForScope();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_1C9430000, v7, OS_LOG_TYPE_DEFAULT, "joining with recovery key succeeded", &v9, 2u);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __64__OTClique_Framework__recoverWithRecoveryKey_recoveryKey_error___block_invoke_144(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = secLogObjForScope();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v16 = v3;
      _os_log_impl(&dword_1C9430000, v4, OS_LOG_TYPE_DEFAULT, "octagon-recover-with-rk, failed to enroll new recovery key: %@", buf, 0xCu);
    }

    v5 = *(*(a1 + 40) + 8);
    v6 = v3;
    v7 = *(v5 + 40);
    *(v5 + 40) = v6;
LABEL_5:

    goto LABEL_6;
  }

  v9 = secLogObjForScope();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9430000, v9, OS_LOG_TYPE_DEFAULT, "successfully enrolled recovery key", buf, 2u);
  }

  if (SOSCCIsSOSTrustAndSyncingEnabled())
  {
    if ([*(a1 + 32) overrideForJoinAfterRestore])
    {
      v10 = secLogObjForScope();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C9430000, v10, OS_LOG_TYPE_DEFAULT, "skipping SOSCCRequestToJoinCircleAfterRestore attempt for tests", buf, 2u);
      }

      v11 = @"success";
    }

    else
    {
      v12 = SOSCCRequestToJoinCircleAfterRestore();
      v13 = secLogObjForScope();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109378;
        *v16 = v12;
        *&v16[4] = 2112;
        *&v16[6] = 0;
        _os_log_impl(&dword_1C9430000, v13, OS_LOG_TYPE_DEFAULT, "Join circle after restore: %d, error: %@", buf, 0x12u);
      }

      if (v12)
      {
        v11 = @"success";
      }

      else
      {
        v11 = @"failure";
      }
    }

    v7 = secLogObjForScope();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(*(*(a1 + 40) + 8) + 40);
      *buf = 138412546;
      *v16 = v11;
      *&v16[8] = 2112;
      *&v16[10] = v14;
      _os_log_impl(&dword_1C9430000, v7, OS_LOG_TYPE_DEFAULT, "joinAfterRestore complete: %@, error: %@", buf, 0x16u);
    }

    goto LABEL_5;
  }

LABEL_6:

  v8 = *MEMORY[0x1E69E9840];
}

void __83__OTClique_Framework__doesRecoveryKeyExistInOctagonAndIsCorrect_recoveryKey_error___block_invoke(uint64_t a1, int a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = secLogObjForScope();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v11 = 138412290;
      v12 = v6;
      _os_log_impl(&dword_1C9430000, v7, OS_LOG_TYPE_DEFAULT, "Preflight recovery key errored: %@", &v11, 0xCu);
    }

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  }

  else
  {
    if (v8)
    {
      v9 = @"incorrect";
      if (a2)
      {
        v9 = @"correct";
      }

      v11 = 138412290;
      v12 = v9;
      _os_log_impl(&dword_1C9430000, v7, OS_LOG_TYPE_DEFAULT, "Recovery key is %@", &v11, 0xCu);
    }

    *(*(*(a1 + 40) + 8) + 24) = a2;
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __55__OTClique_Framework__isRecoveryKeySetInOctagon_error___block_invoke(uint64_t a1, int a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (v6)
  {
    v7 = secLogObjForScope();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&dword_1C9430000, v7, OS_LOG_TYPE_DEFAULT, "octagon-is-recovery-key-set-in-octagon: isRecoveryKeySet failed: %@", &v10, 0xCu);
    }

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  }

  else
  {
    v8 = secLogObjForScope();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 67109120;
      LODWORD(v11) = a2;
      _os_log_impl(&dword_1C9430000, v8, OS_LOG_TYPE_DEFAULT, "isRecoveryKeySet: %{BOOL}d", &v10, 8u);
    }

    *(*(*(a1 + 40) + 8) + 24) = a2;
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __67__OTClique_Framework__setRecoveryKeyWithContext_recoveryKey_error___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = secLogObjForScope();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v3;
      _os_log_impl(&dword_1C9430000, v4, OS_LOG_TYPE_DEFAULT, "octagon-set-recovery-key, failed to set octagon recovery key error: %@", &v9, 0xCu);
    }

    v5 = *(*(a1 + 32) + 8);
    v6 = v3;
    v7 = *(v5 + 40);
    *(v5 + 40) = v6;
  }

  else
  {
    v7 = secLogObjForScope();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_1C9430000, v7, OS_LOG_TYPE_DEFAULT, "successfully set octagon recovery key", &v9, 2u);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __72__OTClique_Framework__registerRecoveryKeyWithContext_recoveryKey_error___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = secLogObjForScope();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v3;
      _os_log_impl(&dword_1C9430000, v4, OS_LOG_TYPE_DEFAULT, "octagon-register-recovery-key, failed to create octagon recovery key error: %@", &v9, 0xCu);
    }

    v5 = *(*(a1 + 32) + 8);
    v6 = v3;
    v7 = *(v5 + 40);
    *(v5 + 40) = v6;
  }

  else
  {
    v7 = secLogObjForScope();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_1C9430000, v7, OS_LOG_TYPE_DEFAULT, "successfully set octagon recovery key", &v9, 2u);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __72__OTClique_Framework__registerRecoveryKeyWithContext_recoveryKey_error___block_invoke_97(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = secLogObjForScope();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v3;
      v5 = "octagon-register-recovery-key, failed to remove recovery key from octagon error: %@";
      v6 = v4;
      v7 = 12;
LABEL_6:
      _os_log_impl(&dword_1C9430000, v6, OS_LOG_TYPE_DEFAULT, v5, &v11, v7);
    }
  }

  else
  {
    v4 = secLogObjForScope();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      v5 = "successfully removed octagon recovery key";
      v6 = v4;
      v7 = 2;
      goto LABEL_6;
    }
  }

  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v3;

  v10 = *MEMORY[0x1E69E9840];
}

void __101__OTClique_Framework___fetchAccountWideSettingsDefaultWithForceFetch_useDefault_configuration_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = v6;
    if (*(a1 + 48) == 1 && [v6 code] == 53 && (objc_msgSend(v7, "domain"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isEqualToString:", *MEMORY[0x1E697AAE8]), v8, v9))
    {
      v10 = objc_alloc_init(OTAccountSettings);
      v11 = objc_alloc_init(OTWalrus);
      [(OTAccountSettings *)v10 setWalrus:v11];

      v12 = [(OTAccountSettings *)v10 walrus];
      [v12 setEnabled:0];

      v13 = objc_alloc_init(OTWebAccess);
      [(OTAccountSettings *)v10 setWebAccess:v13];

      v14 = [(OTAccountSettings *)v10 webAccess];
      [v14 setEnabled:1];

      v15 = *(*(a1 + 32) + 8);
      v16 = *(v15 + 40);
      *(v15 + 40) = v10;

      v17 = secLogObjForScope();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v24) = 0;
        _os_log_impl(&dword_1C9430000, v17, OS_LOG_TYPE_DEFAULT, "fetchAccountWideSettings succeeded (returning default)", &v24, 2u);
      }

      v7 = 0;
    }

    else
    {
      v17 = secLogObjForScope();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v24 = 138412290;
        v25 = v7;
        _os_log_impl(&dword_1C9430000, v17, OS_LOG_TYPE_DEFAULT, "fetchAccountWideSettings errored: %@", &v24, 0xCu);
      }
    }
  }

  else
  {
    v18 = secLogObjForScope();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v24) = 0;
      _os_log_impl(&dword_1C9430000, v18, OS_LOG_TYPE_DEFAULT, "fetchAccountWideSettings succeeded", &v24, 2u);
    }

    v19 = *(*(a1 + 32) + 8);
    v20 = v5;
    v7 = 0;
    v17 = *(v19 + 40);
    *(v19 + 40) = v20;
  }

  v21 = *(*(a1 + 40) + 8);
  v22 = *(v21 + 40);
  *(v21 + 40) = v7;

  v23 = *MEMORY[0x1E69E9840];
}

void __51__OTClique_Framework__invalidateEscrowCache_error___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = secLogObjForScope();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v9 = 138412290;
      v10 = v3;
      _os_log_impl(&dword_1C9430000, v4, OS_LOG_TYPE_DEFAULT, "invalidateEscrowCache errored: %@", &v9, 0xCu);
    }
  }

  else
  {
    if (v5)
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_1C9430000, v4, OS_LOG_TYPE_DEFAULT, "invalidateEscrowCache succeeded", &v9, 2u);
    }

    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;

  v8 = *MEMORY[0x1E69E9840];
}

void __99__OTClique_Framework__handleRecoveryResults_recoveredInformation_record_performedSilentBurn_error___block_invoke(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = secLogObjForScope();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v24 = 138412290;
      v25 = v3;
      _os_log_impl(&dword_1C9430000, v4, OS_LOG_TYPE_DEFAULT, "restore bottle errored: %@", &v24, 0xCu);
    }

    v6 = *(a1 + 32);
    v7 = 0;
    v8 = v3;
  }

  else
  {
    if (v5)
    {
      LOWORD(v24) = 0;
      _os_log_impl(&dword_1C9430000, v4, OS_LOG_TYPE_DEFAULT, "restoring bottle succeeded", &v24, 2u);
    }

    v6 = *(a1 + 32);
    v7 = 1;
    v8 = 0;
  }

  [v6 sendMetricWithResult:v7 error:v8];
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v3;

  v11 = *(a1 + 64);
  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  v14 = _OctagonSignpostGetNanoseconds() / 1000000000.0;
  v15 = _OctagonSignpostLogSystem();
  v16 = v15;
  v17 = *(a1 + 48);
  v18 = v17 - 1;
  if (v11 == 1)
  {
    if (v18 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      v24 = 67240192;
      LODWORD(v25) = 1;
      _os_signpost_emit_with_name_impl(&dword_1C9430000, v16, OS_SIGNPOST_INTERVAL_END, v17, "PerformOctagonJoinForSilent", " OctagonSignpostNamePerformOctagonJoinForSilent=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePerformOctagonJoinForSilent}d ", &v24, 8u);
    }

    v19 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *(a1 + 48);
      v24 = 134218496;
      v25 = v20;
      v26 = 2048;
      v27 = v14;
      v28 = 1026;
      v29 = 1;
      v21 = "END [%lld] %fs: PerformOctagonJoinForSilent  OctagonSignpostNamePerformOctagonJoinForSilent=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePerformOctagonJoinForSilent}d ";
LABEL_19:
      _os_log_impl(&dword_1C9430000, v19, OS_LOG_TYPE_DEFAULT, v21, &v24, 0x1Cu);
    }
  }

  else
  {
    if (v18 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      v24 = 67240192;
      LODWORD(v25) = 1;
      _os_signpost_emit_with_name_impl(&dword_1C9430000, v16, OS_SIGNPOST_INTERVAL_END, v17, "PerformOctagonJoinForNonSilent", " OctagonSignpostNamePerformOctagonJoinForNonSilent=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePerformOctagonJoinForNonSilent}d ", &v24, 8u);
    }

    v19 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v22 = *(a1 + 48);
      v24 = 134218496;
      v25 = v22;
      v26 = 2048;
      v27 = v14;
      v28 = 1026;
      v29 = 1;
      v21 = "END [%lld] %fs: PerformOctagonJoinForNonSilent  OctagonSignpostNamePerformOctagonJoinForNonSilent=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePerformOctagonJoinForNonSilent}d ";
      goto LABEL_19;
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

void __99__OTClique_Framework__handleRecoveryResults_recoveredInformation_record_performedSilentBurn_error___block_invoke_37(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

@end