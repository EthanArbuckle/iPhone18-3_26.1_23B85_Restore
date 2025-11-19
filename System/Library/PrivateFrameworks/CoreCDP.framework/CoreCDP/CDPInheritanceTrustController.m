@interface CDPInheritanceTrustController
- (BOOL)isInheritanceAccessKeyValid:(id)a3;
- (void)checkInheritanceKey:(id)a3 inheritanceKeyUUID:(id)a4 completion:(id)a5;
- (void)createInheritanceKeyWithContext:(id)a3 completion:(id)a4;
- (void)deleteInheritanceAccessKeyWithContext:(id)a3 completion:(id)a4;
- (void)recoverOctagonWithContext:(id)a3 inheritanceKey:(id)a4 completion:(id)a5;
- (void)recreateInheritanceKeyWithContext:(id)a3 newOTPeerID:(id)a4 inheritanceKey:(id)a5 completion:(id)a6;
- (void)validateAccessKey:(id)a3 withContext:(id)a4 completion:(id)a5;
@end

@implementation CDPInheritanceTrustController

- (void)createInheritanceKeyWithContext:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 cliqueConfiguration];
  v8 = objc_alloc_init(CDPAccount);
  v9 = [(CDPAccount *)v8 primaryAccountDSID];
  v10 = [CDPAccount isICDPEnabledForDSID:v9];

  v11 = _CDPLogSystem();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG);
  if (v10)
  {
    if (v12)
    {
      [CDPInheritanceTrustController createInheritanceKeyWithContext:v5 completion:?];
    }

    v13 = MEMORY[0x1E697AA80];
    v14 = [v5 beneficiaryIdentifier];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __76__CDPInheritanceTrustController_createInheritanceKeyWithContext_completion___block_invoke;
    v21[3] = &unk_1E869D6F8;
    v15 = &v22;
    v22 = v6;
    v16 = v6;
    [v13 createInheritanceKey:v7 uuid:v14 reply:v21];
  }

  else
  {
    if (v12)
    {
      [CDPInheritanceTrustController createInheritanceKeyWithContext:v5 completion:?];
    }

    v17 = MEMORY[0x1E697AA80];
    v14 = [v5 beneficiaryIdentifier];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __76__CDPInheritanceTrustController_createInheritanceKeyWithContext_completion___block_invoke_18;
    v19[3] = &unk_1E869D6F8;
    v15 = &v20;
    v20 = v6;
    v18 = v6;
    [v17 generateInheritanceKey:v7 uuid:v14 reply:v19];
  }
}

void __76__CDPInheritanceTrustController_createInheritanceKeyWithContext_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 accessCode];
  (*(v4 + 16))(v4, v6, v5);
}

void __76__CDPInheritanceTrustController_createInheritanceKeyWithContext_completion___block_invoke_18(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 accessCode];
  (*(v4 + 16))(v4, v6, v5);
}

- (void)recoverOctagonWithContext:(id)a3 inheritanceKey:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [objc_alloc(MEMORY[0x1E69B7CD8]) initFromAccessKey:v8];
  v11 = _CDPLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [CDPInheritanceTrustController recoverOctagonWithContext:v8 inheritanceKey:? completion:?];
  }

  v12 = _CDPLogSystem();
  v13 = v12;
  if (v10)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [CDPInheritanceTrustController recoverOctagonWithContext:inheritanceKey:completion:];
    }

    v14 = MEMORY[0x1E697AA80];
    v15 = [v7 cliqueConfiguration];
    [v14 recoverOctagonUsingInheritanceKey:v15 inheritanceKey:v10 reply:v9];
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [CDPInheritanceTrustController recoverOctagonWithContext:inheritanceKey:completion:];
    }

    v15 = [MEMORY[0x1E696ABC0] cdp_errorWithCode:-5216];
    v9[2](v9, v15);
  }
}

- (BOOL)isInheritanceAccessKeyValid:(id)a3
{
  v3 = MEMORY[0x1E69B7CD8];
  v4 = a3;
  v5 = [[v3 alloc] initFromAccessKey:v4];

  return v5 != 0;
}

- (void)deleteInheritanceAccessKeyWithContext:(id)a3 completion:(id)a4
{
  v5 = MEMORY[0x1E697AA80];
  v6 = a4;
  v7 = a3;
  v9 = [v7 cliqueConfiguration];
  v8 = [v7 beneficiaryIdentifier];

  [v5 removeInheritanceKey:v9 inheritanceKeyUUID:v8 reply:v6];
}

- (void)validateAccessKey:(id)a3 withContext:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v8 dsid];
  if (v10)
  {

LABEL_4:
    v12 = [v8 cliqueConfiguration];
    v13 = [objc_alloc(MEMORY[0x1E69B7CD8]) initFromAccessKey:v7];
    v14 = MEMORY[0x1E697AA80];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __74__CDPInheritanceTrustController_validateAccessKey_withContext_completion___block_invoke;
    v16[3] = &unk_1E869D6A0;
    v18 = v9;
    v17 = v7;
    [v14 preflightRecoverOctagonUsingInheritanceKey:v12 inheritanceKey:v13 reply:v16];

    goto LABEL_5;
  }

  v11 = [v8 altDSID];

  if (v11)
  {
    goto LABEL_4;
  }

  v15 = _CDPLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
  {
    [CDPCustodianRecoveryKeyController validateRecoveryKey:withContext:completion:];
  }

  v12 = [MEMORY[0x1E696ABC0] cdp_errorWithCode:-5003];
  (*(v9 + 2))(v9, v12);
LABEL_5:
}

void __74__CDPInheritanceTrustController_validateAccessKey_withContext_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _CDPLogSystem();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __74__CDPInheritanceTrustController_validateAccessKey_withContext_completion___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __74__CDPInheritanceTrustController_validateAccessKey_withContext_completion___block_invoke_cold_2(a1);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)recreateInheritanceKeyWithContext:(id)a3 newOTPeerID:(id)a4 inheritanceKey:(id)a5 completion:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = _CDPLogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [CDPInheritanceTrustController recreateInheritanceKeyWithContext:newOTPeerID:inheritanceKey:completion:];
  }

  v14 = [v9 dsid];
  if (v14)
  {

LABEL_6:
    v16 = [v9 cliqueConfiguration];
    v17 = [objc_alloc(MEMORY[0x1E69B7CD8]) initFromAccessKey:v11];
    v18 = MEMORY[0x1E697AA80];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __105__CDPInheritanceTrustController_recreateInheritanceKeyWithContext_newOTPeerID_inheritanceKey_completion___block_invoke;
    v20[3] = &unk_1E869D6F8;
    v21 = v12;
    [v18 recreateInheritanceKey:v16 uuid:v10 oldIK:v17 reply:v20];

LABEL_7:
    goto LABEL_8;
  }

  v15 = [v9 altDSID];

  if (v15)
  {
    goto LABEL_6;
  }

  v19 = _CDPLogSystem();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
  {
    [CDPInheritanceTrustController recreateInheritanceKeyWithContext:newOTPeerID:inheritanceKey:completion:];
  }

  if (v12)
  {
    v16 = [MEMORY[0x1E696ABC0] cdp_errorWithCode:-5003];
    (*(v12 + 2))(v12, 0, v16);
    goto LABEL_7;
  }

LABEL_8:
}

void __105__CDPInheritanceTrustController_recreateInheritanceKeyWithContext_newOTPeerID_inheritanceKey_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _CDPLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __105__CDPInheritanceTrustController_recreateInheritanceKeyWithContext_newOTPeerID_inheritanceKey_completion___block_invoke_cold_1();
    }

    v8 = *(a1 + 32);
    if (v8)
    {
      (*(v8 + 16))(v8, 0, v6);
    }
  }

  else
  {
    v9 = *(a1 + 32);
    if (v9)
    {
      v10 = [v5 accessCode];
      (*(v9 + 16))(v9, v10, 0);
    }
  }
}

- (void)checkInheritanceKey:(id)a3 inheritanceKeyUUID:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = _CDPLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [CDPInheritanceTrustController checkInheritanceKey:inheritanceKeyUUID:completion:];
  }

  v11 = [v7 dsid];
  if (v11)
  {

LABEL_6:
    v13 = [v7 cliqueConfiguration];
    v14 = MEMORY[0x1E697AA80];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __83__CDPInheritanceTrustController_checkInheritanceKey_inheritanceKeyUUID_completion___block_invoke;
    v16[3] = &unk_1E869D6C8;
    v17 = v9;
    [v14 checkInheritanceKey:v13 inheritanceKeyUUID:v8 reply:v16];

    goto LABEL_7;
  }

  v12 = [v7 altDSID];

  if (v12)
  {
    goto LABEL_6;
  }

  v15 = _CDPLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
  {
    [CDPCustodianRecoveryKeyController validateRecoveryKey:withContext:completion:];
  }

  v13 = [MEMORY[0x1E696ABC0] cdp_errorWithCode:-5003];
  (*(v9 + 2))(v9, v13);
LABEL_7:
}

void __83__CDPInheritanceTrustController_checkInheritanceKey_inheritanceKeyUUID_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = _CDPLogSystem();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __83__CDPInheritanceTrustController_checkInheritanceKey_inheritanceKeyUUID_completion___block_invoke_cold_1();
    }

LABEL_8:

    (*(*(a1 + 32) + 16))();
    goto LABEL_9;
  }

  v8 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
  if (a2)
  {
    if (v8)
    {
      __83__CDPInheritanceTrustController_checkInheritanceKey_inheritanceKeyUUID_completion___block_invoke_cold_3();
    }

    goto LABEL_8;
  }

  if (v8)
  {
    __83__CDPInheritanceTrustController_checkInheritanceKey_inheritanceKeyUUID_completion___block_invoke_cold_2();
  }

  v9 = *(a1 + 32);
  v10 = [MEMORY[0x1E696ABC0] cdp_errorWithCode:0];
  (*(v9 + 16))(v9, v10);

LABEL_9:
}

- (void)createInheritanceKeyWithContext:(void *)a1 completion:.cold.1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [a1 beneficiaryIdentifier];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5(&dword_1DED99000, v2, v3, "Generating Inheritance access key for non-CDP account - not saved on OT. Beneficiary: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)createInheritanceKeyWithContext:(void *)a1 completion:.cold.2(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [a1 beneficiaryIdentifier];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5(&dword_1DED99000, v2, v3, "Generating Inheritance access key for CDP account. Beneficiary: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)recoverOctagonWithContext:(void *)a1 inheritanceKey:completion:.cold.1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [a1 beneficiaryID];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5(&dword_1DED99000, v2, v3, "Creating the access key for beneficiary: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

void __74__CDPInheritanceTrustController_validateAccessKey_withContext_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_3(&dword_1DED99000, v0, v1, "Error validating inheritance key: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __74__CDPInheritanceTrustController_validateAccessKey_withContext_completion___block_invoke_cold_2(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [*(a1 + 32) beneficiaryID];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5(&dword_1DED99000, v2, v3, "Inheritance key valid for beneficiary: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

void __105__CDPInheritanceTrustController_recreateInheritanceKeyWithContext_newOTPeerID_inheritanceKey_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_3(&dword_1DED99000, v0, v1, "Error recreating inheritance key: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __83__CDPInheritanceTrustController_checkInheritanceKey_inheritanceKeyUUID_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_3(&dword_1DED99000, v0, v1, "Error checking inheritance key: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end