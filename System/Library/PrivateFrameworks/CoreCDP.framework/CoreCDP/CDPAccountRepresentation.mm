@interface CDPAccountRepresentation
+ (id)representationForAccount:(id)a3;
+ (id)representationForAltDSID:(id)a3;
+ (id)representationForPrimaryAccount;
- (BOOL)isBeneficiary;
- (BOOL)isSilentBurnCDPRepairEnabled;
- (BOOL)isSilentEscrowRecordRepairEnabled;
- (BOOL)isSilentEscrowRecordRepairEnabledV2;
- (BOOL)shouldPerformSilentEscrowRecordRepair;
- (CDPAccountRepresentation)initWithAccount:(id)a3;
- (CDPAccountRepresentation)initWithAltDSID:(id)a3;
- (CDPAccountRepresentation)initWithAltDSID:(id)a3 accountStore:(id)a4 accountManager:(id)a5;
- (CDPContext)generatedContext;
- (NSString)DSID;
- (NSString)authenticationToken;
- (NSString)escrowURLString;
- (NSString)firstName;
- (NSString)fullName;
- (NSString)iCloudEnvironment;
- (NSString)stashedPRK;
- (NSString)username;
- (id)_cachedPropertyValueOfClass:(Class)a3 forKey:(id)a4 staleModifiedDate:(id)a5 account:(id)a6 isStale:(BOOL *)a7;
- (id)_cachedPropertyValueOfClass:(Class)a3 forKey:(id)a4 valueProducer:(id)a5;
- (id)_cachedPropertyValueOfClass:(Class)a3 forKey:(id)a4 valueProducer:(id)a5 checkForStale:(BOOL)a6 account:(id)a7 saveHandler:(id)a8;
- (id)_cachedPropertyValueOfClass:(Class)a3 forKey:(id)a4 valueProducer:(id)a5 saveHandler:(id)a6;
- (id)_cachedPropertyValueOfClass:(Class)a3 forKey:(id)a4 valueProducer:(id)a5 staleModifiedDate:(id)a6 account:(id)a7 saveHandler:(id)a8;
- (id)_deserializedPropertyDictionaryForData:(id)a3 withPropertyValueOfClass:(Class)a4 error:(id *)a5;
- (id)_serializedPropertyDictionaryWithValue:(id)a3 lastModifiedDate:(id)a4 error:(id *)a5;
- (unint64_t)securityLevel;
- (void)_cachePropertyValue:(id)a3 forKey:(id)a4 lastModifiedDate:(id)a5 account:(id)a6 saveHandler:(id)a7;
- (void)generatedContext;
- (void)isSilentBurnCDPRepairEnabled;
- (void)shouldPerformSilentEscrowRecordRepair;
- (void)silentEscrowRecordRepairEnabledWithCompletion:(id)a3;
@end

@implementation CDPAccountRepresentation

- (CDPAccountRepresentation)initWithAltDSID:(id)a3 accountStore:(id)a4 accountManager:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v10 aa_appleAccountWithAltDSID:v9];
  v13 = [v11 authKitAccountWithAltDSID:v9];
  v14 = v13;
  if (v12 && v13)
  {
    v20.receiver = self;
    v20.super_class = CDPAccountRepresentation;
    v15 = [(CDPAccountRepresentation *)&v20 init];
    p_isa = &v15->super.isa;
    if (v15)
    {
      objc_storeStrong(&v15->_altDSID, a3);
      objc_storeStrong(p_isa + 1, v12);
      objc_storeStrong(p_isa + 2, v14);
      objc_storeStrong(p_isa + 4, a4);
      objc_storeStrong(p_isa + 5, a5);
    }

    self = p_isa;
    v17 = self;
  }

  else
  {
    v18 = _CDPLogSystem();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [CDPAccountRepresentation initWithAltDSID:accountStore:accountManager:];
    }

    v17 = 0;
  }

  return v17;
}

- (CDPAccountRepresentation)initWithAltDSID:(id)a3
{
  v4 = MEMORY[0x1E6959A48];
  v5 = a3;
  v6 = [v4 defaultStore];
  v7 = [MEMORY[0x1E698DC80] sharedInstance];
  v8 = [(CDPAccountRepresentation *)self initWithAltDSID:v5 accountStore:v6 accountManager:v7];

  return v8;
}

- (CDPAccountRepresentation)initWithAccount:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E698DC80] sharedInstance];
  v6 = [v5 altDSIDForAccount:v4];

  if (v6)
  {
    v7 = [v4 accountStore];
    v8 = [MEMORY[0x1E698DC80] sharedInstance];
    self = [(CDPAccountRepresentation *)self initWithAltDSID:v6 accountStore:v7 accountManager:v8];

    v9 = self;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)representationForAltDSID:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithAltDSID:v4];

  return v5;
}

+ (id)representationForAccount:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithAccount:v4];

  return v5;
}

+ (id)representationForPrimaryAccount
{
  v3 = [MEMORY[0x1E6959A48] defaultStore];
  v4 = [v3 aa_primaryAppleAccount];

  if (v4)
  {
    v5 = [a1 representationForAccount:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSString)username
{
  v2 = [(CDPAccountRepresentation *)self appleAccount];
  v3 = [v2 username];

  return v3;
}

- (NSString)DSID
{
  v2 = [(CDPAccountRepresentation *)self appleAccount];
  v3 = [v2 aa_personID];

  return v3;
}

- (NSString)authenticationToken
{
  v2 = [(CDPAccountRepresentation *)self appleAccount];
  v3 = [v2 aa_authToken];

  return v3;
}

- (NSString)escrowURLString
{
  v2 = [(CDPAccountRepresentation *)self appleAccount];
  v3 = [v2 propertiesForDataclass:*MEMORY[0x1E6959B20]];

  v4 = [v3 objectForKeyedSubscript:@"escrowProxyUrl"];

  return v4;
}

- (NSString)iCloudEnvironment
{
  v2 = [(CDPAccountRepresentation *)self appleAccount];
  v3 = [v2 dataclassProperties];
  v4 = [v3 objectForKeyedSubscript:@"com.apple.Dataclass.Account"];

  v5 = [v4 objectForKeyedSubscript:@"iCloudEnv"];

  return v5;
}

- (NSString)firstName
{
  v2 = [(CDPAccountRepresentation *)self appleAccount];
  v3 = [v2 aa_firstName];

  return v3;
}

- (NSString)fullName
{
  v2 = [(CDPAccountRepresentation *)self appleAccount];
  v3 = [v2 aa_fullName];

  return v3;
}

- (NSString)stashedPRK
{
  v3 = [(CDPAccountRepresentation *)self accountManager];
  v4 = [(CDPAccountRepresentation *)self authKitAccount];
  v5 = [v3 passwordResetTokenBackupForAccount:v4];

  return v5;
}

- (unint64_t)securityLevel
{
  v3 = [(CDPAccountRepresentation *)self accountManager];
  v4 = [(CDPAccountRepresentation *)self authKitAccount];
  v5 = [v3 securityLevelForAccount:v4];

  return v5;
}

- (BOOL)isBeneficiary
{
  v3 = [(CDPAccountRepresentation *)self accountManager];
  v4 = [(CDPAccountRepresentation *)self authKitAccount];
  v5 = [v3 isBeneficiaryForAccount:v4];

  return v5;
}

- (BOOL)isSilentEscrowRecordRepairEnabled
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [(CDPAccountRepresentation *)self accountManager];
  v4 = [(CDPAccountRepresentation *)self authKitAccount];
  v5 = [v3 isSilentEscrowRecordRepairEnabledForAccount:v4];

  v6 = _CDPLogSystem();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      v11 = 138412546;
      v12 = self;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&dword_1DED99000, v6, OS_LOG_TYPE_DEFAULT, "%@: Returning %@ for 'isSilentEscrowRecordRepairEnabled'", &v11, 0x16u);
    }

    v8 = [v5 BOOLValue];
  }

  else
  {
    if (v7)
    {
      v11 = 138412290;
      v12 = self;
      _os_log_impl(&dword_1DED99000, v6, OS_LOG_TYPE_DEFAULT, "%@: Assuming silent escrow record repair is disabled", &v11, 0xCu);
    }

    v8 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

- (BOOL)isSilentEscrowRecordRepairEnabledV2
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [(CDPAccountRepresentation *)self accountManager];
  v4 = [(CDPAccountRepresentation *)self authKitAccount];
  v5 = [v3 isSilentEscrowRecordRepairEnabledForAccountV2:v4];

  v6 = _CDPLogSystem();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      v11 = 138412546;
      v12 = self;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&dword_1DED99000, v6, OS_LOG_TYPE_DEFAULT, "%@: Returning %@ for 'isSilentEscrowRecordRepairEnabledV2'", &v11, 0x16u);
    }

    v8 = [v5 BOOLValue];
  }

  else
  {
    if (v7)
    {
      v11 = 138412290;
      v12 = self;
      _os_log_impl(&dword_1DED99000, v6, OS_LOG_TYPE_DEFAULT, "%@: Assuming silent escrow record repair V2 is disabled", &v11, 0xCu);
    }

    v8 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

- (BOOL)isSilentBurnCDPRepairEnabled
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [(CDPAccountRepresentation *)self accountManager];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    v7 = _CDPLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [(CDPAccountRepresentation *)self isSilentBurnCDPRepairEnabled];
    }

    goto LABEL_11;
  }

  v5 = [(CDPAccountRepresentation *)self accountManager];
  v6 = [(CDPAccountRepresentation *)self authKitAccount];
  v7 = [v5 isSilentBurnCDPRepairEnabledForAccount:v6];

  v8 = _CDPLogSystem();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (!v7)
  {
    if (v9)
    {
      v13 = 138412290;
      v14 = self;
      _os_log_impl(&dword_1DED99000, v8, OS_LOG_TYPE_DEFAULT, "%@: Assuming silent burn in mini-buddy is disabled", &v13, 0xCu);
    }

LABEL_11:
    v10 = 0;
    goto LABEL_12;
  }

  if (v9)
  {
    v13 = 138412546;
    v14 = self;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&dword_1DED99000, v8, OS_LOG_TYPE_DEFAULT, "%@: Returning %@ for 'isSilentBurnCDPRepairEnabled'", &v13, 0x16u);
  }

  v10 = [v7 BOOLValue];
LABEL_12:

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (BOOL)shouldPerformSilentEscrowRecordRepair
{
  v16 = *MEMORY[0x1E69E9840];
  if ([(CDPAccountRepresentation *)self isSilentEscrowRecordRepairEnabledV2])
  {
    v3 = [(CDPAccountRepresentation *)self generatedContext];
    if (v3)
    {
      v4 = [(CDPController *)[CDPStateController alloc] initWithContext:v3];
      v11 = 0;
      v5 = [(CDPStateController *)v4 shouldPerformSilentEscrowRecordRepairUsingCache:1 error:&v11];
      v6 = v11;
      v7 = _CDPLogSystem();
      v8 = v7;
      if (v6)
      {
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          [CDPAccountRepresentation shouldPerformSilentEscrowRecordRepair];
        }

        LOBYTE(v5) = 0;
      }

      else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v13 = self;
        v14 = 1024;
        v15 = v5;
        _os_log_impl(&dword_1DED99000, v8, OS_LOG_TYPE_DEFAULT, "%@: Checked if escrow record repair is needed (%{BOOL}d)", buf, 0x12u);
      }
    }

    else
    {
      v4 = _CDPLogSystem();
      if (os_log_type_enabled(&v4->super.super, OS_LOG_TYPE_ERROR))
      {
        [(CDPAccountRepresentation *)self shouldPerformSilentEscrowRecordRepair];
      }

      LOBYTE(v5) = 0;
    }
  }

  else
  {
    v3 = _CDPLogSystem();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = self;
      _os_log_impl(&dword_1DED99000, v3, OS_LOG_TYPE_DEFAULT, "%@: Silent escrow record repair is disabled by server, returning NO", buf, 0xCu);
    }

    LOBYTE(v5) = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v5;
}

- (CDPContext)generatedContext
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [(CDPAccountRepresentation *)self DSID];
  if (v3)
  {
    v4 = objc_alloc_init(CDPContext);
    v5 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v3, "longLongValue")}];
    [(CDPContext *)v4 setDsid:v5];

    v6 = [(CDPAccountRepresentation *)self altDSID];
    [(CDPContext *)v4 setAltDSID:v6];

    v7 = [(CDPAccountRepresentation *)self username];
    [(CDPContext *)v4 setAppleID:v7];

    [(CDPContext *)v4 setIsBeneficiaryAccount:[(CDPAccountRepresentation *)self isBeneficiary]];
    v8 = _CDPLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138413058;
      v12 = self;
      v13 = 2112;
      v14 = v4;
      v15 = 2160;
      v16 = 1752392040;
      v17 = 2112;
      v18 = v3;
      _os_log_impl(&dword_1DED99000, v8, OS_LOG_TYPE_DEFAULT, "%@: Generated context (%@) for account with DSID (%{mask.hash}@)", &v11, 0x2Au);
    }
  }

  else
  {
    v8 = _CDPLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(CDPAccountRepresentation *)self generatedContext];
    }

    v4 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];

  return v4;
}

void __62__CDPAccountRepresentation_isICDPEnabledByCheckingWithServer___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _CDPLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __62__CDPAccountRepresentation_isICDPEnabledByCheckingWithServer___block_invoke_cold_1(a1);
  }
}

void __62__CDPAccountRepresentation_isICDPEnabledByCheckingWithServer___block_invoke_57(void *a1, int a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = _CDPLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"DISABLED";
    v6 = a1[4];
    v7 = a1[5];
    if (a2)
    {
      v5 = @"ENABLED";
    }

    v9 = 138413058;
    v10 = v6;
    v11 = 2160;
    v12 = 1752392040;
    v13 = 2112;
    v14 = v7;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&dword_1DED99000, v4, OS_LOG_TYPE_DEFAULT, "%@: iCDP status for account with DSID (%{mask.hash}@) is %@", &v9, 0x2Au);
  }

  *(*(a1[6] + 8) + 24) = a2;
  v8 = *MEMORY[0x1E69E9840];
}

- (void)silentEscrowRecordRepairEnabledWithCompletion:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CDPAccountRepresentation *)self accountManager];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(CDPAccountRepresentation *)self accountManager];
    v8 = [(CDPAccountRepresentation *)self authKitAccount];
    v9 = [v7 isSilentEscrowRecordRepairEnabledForAccount:v8];

    v10 = _CDPLogSystem();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      if (v11)
      {
        v12 = [(CDPAccountRepresentation *)self authKitAccount];
        *buf = 138412803;
        v26 = self;
        v27 = 2112;
        v28 = v9;
        v29 = 2117;
        v30 = v12;
        _os_log_impl(&dword_1DED99000, v10, OS_LOG_TYPE_DEFAULT, "%@: Returning cached 'silentEscrowRecordRepairEnabled' value (%@) from account (%{sensitive}@)", buf, 0x20u);
      }

      if (v4)
      {
        v4[2](v4, [v9 BOOLValue], 0);
      }

      goto LABEL_21;
    }

    if (v11)
    {
      v14 = [(CDPAccountRepresentation *)self altDSID];
      *buf = 138412802;
      v26 = self;
      v27 = 2160;
      v28 = 1752392040;
      v29 = 2112;
      v30 = v14;
      _os_log_impl(&dword_1DED99000, v10, OS_LOG_TYPE_DEFAULT, "%@: Calling to fetch user info for altDSID (%{mask.hash}@) for 'silentEscrowRecordRepairEnabled' value", buf, 0x20u);
    }

    v15 = objc_alloc_init(MEMORY[0x1E698DCB8]);
    v16 = [(CDPAccountRepresentation *)self altDSID];
    [v15 setAltDSID:v16];

    [v15 setAppProvidedContext:@"silentEscrowRecordRepair"];
    v17 = objc_alloc_init(MEMORY[0x1E698DCC0]);
    if (objc_opt_respondsToSelector())
    {
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __74__CDPAccountRepresentation_silentEscrowRecordRepairEnabledWithCompletion___block_invoke;
      v21[3] = &unk_1E869D280;
      v22 = v15;
      v23 = self;
      v24 = v4;
      [v17 getUserInformationWithContext:v22 completion:v21];

      v18 = v22;
    }

    else
    {
      v19 = _CDPLogSystem();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        [CDPAccountRepresentation silentEscrowRecordRepairEnabledWithCompletion:];
      }

      if (!v4)
      {
        goto LABEL_20;
      }

      v18 = [MEMORY[0x1E696ABC0] cdp_errorWithCode:0];
      (v4)[2](v4, 0, v18);
    }

LABEL_20:
    goto LABEL_21;
  }

  v13 = _CDPLogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
  {
    [CDPAccountRepresentation silentEscrowRecordRepairEnabledWithCompletion:?];
  }

  if (v4)
  {
    v9 = [MEMORY[0x1E696ABC0] cdp_errorWithCode:0];
    (v4)[2](v4, 0, v9);
LABEL_21:
  }

  v20 = *MEMORY[0x1E69E9840];
}

void __74__CDPAccountRepresentation_silentEscrowRecordRepairEnabledWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _CDPLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __74__CDPAccountRepresentation_silentEscrowRecordRepairEnabledWithCompletion___block_invoke_cold_1(a1);
    }

    v8 = *(a1 + 48);
    if (v8)
    {
      (*(v8 + 16))(v8, 0, v6);
    }

    goto LABEL_16;
  }

  if (objc_opt_respondsToSelector())
  {
    v9 = [v5 silentEscrowRecordRepairEnabled];
    v10 = _CDPLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [*(a1 + 32) altDSID];
      v16 = 138412802;
      v17 = v9;
      v18 = 2160;
      v19 = 1752392040;
      v20 = 2112;
      v21 = v11;
      _os_log_impl(&dword_1DED99000, v10, OS_LOG_TYPE_DEFAULT, "Returning server fetched 'silentEscrowRecordRepairEnabled' value (%@) for altDSID (%{mask.hash}@)", &v16, 0x20u);
    }

    v12 = *(a1 + 48);
    if (v12)
    {
      (*(v12 + 16))(v12, [v9 BOOLValue], 0);
    }

    goto LABEL_15;
  }

  v13 = _CDPLogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
  {
    __74__CDPAccountRepresentation_silentEscrowRecordRepairEnabledWithCompletion___block_invoke_cold_2(a1);
  }

  v14 = *(a1 + 48);
  if (v14)
  {
    v9 = [MEMORY[0x1E696ABC0] cdp_errorWithCode:0];
    (*(v14 + 16))(v14, 0, v9);
LABEL_15:
  }

LABEL_16:

  v15 = *MEMORY[0x1E69E9840];
}

- (id)_cachedPropertyValueOfClass:(Class)a3 forKey:(id)a4 valueProducer:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [(CDPAccountRepresentation *)self appleAccount];
  v11 = [(CDPAccountRepresentation *)self _cachedPropertyValueOfClass:a3 forKey:v9 valueProducer:v8 checkForStale:1 account:v10 saveHandler:0];

  return v11;
}

- (id)_cachedPropertyValueOfClass:(Class)a3 forKey:(id)a4 valueProducer:(id)a5 saveHandler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = [(CDPAccountRepresentation *)self appleAccount];
  v14 = [(CDPAccountRepresentation *)self _cachedPropertyValueOfClass:a3 forKey:v12 valueProducer:v11 checkForStale:1 account:v13 saveHandler:v10];

  return v14;
}

- (id)_cachedPropertyValueOfClass:(Class)a3 forKey:(id)a4 valueProducer:(id)a5 checkForStale:(BOOL)a6 account:(id)a7 saveHandler:(id)a8
{
  v10 = a6;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  v17 = a8;
  if (v10)
  {
    v18 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-86400.0];
  }

  else
  {
    v18 = 0;
  }

  v19 = [(CDPAccountRepresentation *)self _cachedPropertyValueOfClass:a3 forKey:v14 valueProducer:v15 staleModifiedDate:v18 account:v16 saveHandler:v17];

  return v19;
}

- (id)_cachedPropertyValueOfClass:(Class)a3 forKey:(id)a4 valueProducer:(id)a5 staleModifiedDate:(id)a6 account:(id)a7 saveHandler:(id)a8
{
  v33 = *MEMORY[0x1E69E9840];
  v14 = a4;
  v15 = a5;
  v16 = a7;
  v17 = a8;
  v26 = 0;
  v18 = [(CDPAccountRepresentation *)self _cachedPropertyValueOfClass:a3 forKey:v14 staleModifiedDate:a6 account:v16 isStale:&v26];
  if (!v18 || v26 == 1)
  {
    v19 = _CDPLogSystem();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      [CDPAccountRepresentation _cachedPropertyValueOfClass:forKey:valueProducer:staleModifiedDate:account:saveHandler:];
    }

    v20 = v15[2](v15);
    v21 = _CDPLogSystem();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v28 = self;
      v29 = 2112;
      v30 = v14;
      v31 = 2112;
      v32 = v20;
      _os_log_debug_impl(&dword_1DED99000, v21, OS_LOG_TYPE_DEBUG, "%@: Called value producer for key (%@) and received value (%@)", buf, 0x20u);
    }

    if (v20)
    {
      v22 = [MEMORY[0x1E695DF00] date];
      [(CDPAccountRepresentation *)self _cachePropertyValue:v20 forKey:v14 lastModifiedDate:v22 account:v16 saveHandler:v17];

      v23 = v20;
      v18 = v23;
    }
  }

  v24 = *MEMORY[0x1E69E9840];

  return v18;
}

- (id)_cachedPropertyValueOfClass:(Class)a3 forKey:(id)a4 staleModifiedDate:(id)a5 account:(id)a6 isStale:(BOOL *)a7
{
  v41 = *MEMORY[0x1E69E9840];
  v12 = a4;
  v13 = a5;
  v14 = a6;
  [(__CFString *)v14 refresh];
  objc_opt_class();
  v15 = [(__CFString *)v14 accountPropertyForKey:v12];
  if (objc_opt_isKindOfClass())
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (v16)
  {
    v30 = 0;
    v17 = [(CDPAccountRepresentation *)self _deserializedPropertyDictionaryForData:v16 withPropertyValueOfClass:a3 error:&v30];
    v18 = v30;
    if (v17)
    {
      v29 = a7;
      objc_opt_class();
      v19 = [(__CFString *)v17 objectForKeyedSubscript:@"com.apple.cdp.appleaccount.property.last-modified-date"];
      if (objc_opt_isKindOfClass())
      {
        v20 = v19;
      }

      else
      {
        v20 = 0;
      }

      if (v20)
      {
        v22 = [(__CFString *)v17 objectForKeyedSubscript:@"com.apple.cdp.appleaccount.property"];
        if (objc_opt_isKindOfClass())
        {
          v23 = v22;
        }

        else
        {
          v23 = 0;
        }

        if (v23)
        {
          if (v13 && [v20 compare:v13]== -1)
          {
            v26 = _CDPLogSystem();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138413314;
              v32 = self;
              v33 = 2112;
              v34 = @"com.apple.cdp.appleaccount.property";
              v35 = 2112;
              v36 = v12;
              v37 = 2112;
              v38 = v20;
              v39 = 2112;
              v40 = v13;
              _os_log_debug_impl(&dword_1DED99000, v26, OS_LOG_TYPE_DEBUG, "%@: Cached property value (%@) for key (%@) is stale (lastModifiedDate [%@] < staleModifiedDate [%@])", buf, 0x34u);
            }

            if (v29)
            {
              *v29 = 1;
            }
          }

          else
          {
            v24 = _CDPLogSystem();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
            {
              [CDPAccountRepresentation _cachedPropertyValueOfClass:forKey:staleModifiedDate:account:isStale:];
            }

            if (v29)
            {
              *v29 = 0;
            }
          }

          v23 = v23;
          v21 = v23;
        }

        else
        {
          v25 = _CDPLogSystem();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412802;
            v32 = self;
            v33 = 2112;
            v34 = v17;
            v35 = 2112;
            v36 = v12;
            _os_log_debug_impl(&dword_1DED99000, v25, OS_LOG_TYPE_DEBUG, "%@: Found nil property value in cached property dictionary (%@) for key (%@)", buf, 0x20u);
          }

          v21 = 0;
        }
      }

      else
      {
        v23 = _CDPLogSystem();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
        {
          *buf = 138412802;
          v32 = self;
          v33 = 2112;
          v34 = v17;
          v35 = 2112;
          v36 = v12;
          _os_log_fault_impl(&dword_1DED99000, v23, OS_LOG_TYPE_FAULT, "%@: Expected lastModifiedDate value in cached property dictionary (%@) for key (%@)", buf, 0x20u);
        }

        v21 = 0;
      }
    }

    else
    {
      v20 = _CDPLogSystem();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        *buf = 138413058;
        v32 = self;
        v33 = 2112;
        v34 = v12;
        v35 = 2112;
        v36 = v16;
        v37 = 2112;
        v38 = v18;
        _os_log_fault_impl(&dword_1DED99000, v20, OS_LOG_TYPE_FAULT, "%@: Failed to deserialize property dictionary for key (%@) from data (%@) with error (%@)", buf, 0x2Au);
      }

      v21 = 0;
    }
  }

  else
  {
    v18 = _CDPLogSystem();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v32 = self;
      v33 = 2112;
      v34 = v12;
      v35 = 2112;
      v36 = v14;
      _os_log_debug_impl(&dword_1DED99000, v18, OS_LOG_TYPE_DEBUG, "%@: No cached property for key (%@) was found on account (%@)", buf, 0x20u);
    }

    v21 = 0;
  }

  v27 = *MEMORY[0x1E69E9840];

  return v21;
}

- (void)_cachePropertyValue:(id)a3 forKey:(id)a4 lastModifiedDate:(id)a5 account:(id)a6 saveHandler:(id)a7
{
  v33 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v26 = 0;
  v16 = [(CDPAccountRepresentation *)self _serializedPropertyDictionaryWithValue:v12 lastModifiedDate:a5 error:&v26];
  v17 = v26;
  if (!v12 || v16)
  {
    [v14 setAccountProperty:v16 forKey:v13];
    v19 = [v14 accountStore];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __92__CDPAccountRepresentation__cachePropertyValue_forKey_lastModifiedDate_account_saveHandler___block_invoke;
    v21[3] = &unk_1E869D2A8;
    v22 = v12;
    v23 = v13;
    v24 = v14;
    v25 = v15;
    [v19 saveAccount:v24 withCompletionHandler:v21];
  }

  else
  {
    v18 = _CDPLogSystem();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412802;
      v28 = self;
      v29 = 2112;
      v30 = v13;
      v31 = 2112;
      v32 = v17;
      _os_log_fault_impl(&dword_1DED99000, v18, OS_LOG_TYPE_FAULT, "%@: Failed to serialize property dictionary for key (%@) with error (%@)", buf, 0x20u);
    }

    if (v15)
    {
      (*(v15 + 2))(v15, 0, v17);
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

void __92__CDPAccountRepresentation__cachePropertyValue_forKey_lastModifiedDate_account_saveHandler___block_invoke(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = _CDPLogSystem();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __92__CDPAccountRepresentation__cachePropertyValue_forKey_lastModifiedDate_account_saveHandler___block_invoke_cold_2(a1);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __92__CDPAccountRepresentation__cachePropertyValue_forKey_lastModifiedDate_account_saveHandler___block_invoke_cold_1(a1);
  }

  v8 = a1[7];
  if (v8)
  {
    (*(v8 + 16))(v8, a2, v5);
  }
}

- (id)_serializedPropertyDictionaryWithValue:(id)a3 lastModifiedDate:(id)a4 error:(id *)a5
{
  v25 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v8 = MEMORY[0x1E695DF90];
    v9 = a4;
    v10 = a3;
    v11 = [v8 dictionaryWithCapacity:2];
    [v11 setObject:v10 forKeyedSubscript:@"com.apple.cdp.appleaccount.property"];

    [v11 setObject:v9 forKeyedSubscript:@"com.apple.cdp.appleaccount.property.last-modified-date"];
    v18 = 0;
    v12 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v11 requiringSecureCoding:1 error:&v18];
    v13 = v18;
    if (v13)
    {
      v14 = _CDPLogSystem();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v20 = self;
        v21 = 2112;
        v22 = v11;
        v23 = 2112;
        v24 = v13;
        _os_log_error_impl(&dword_1DED99000, v14, OS_LOG_TYPE_ERROR, "%@: Failed to archive property dictionary (%@) with error (%@)", buf, 0x20u);
      }

      if (a5)
      {
        v15 = v13;
        *a5 = v13;
      }
    }
  }

  else
  {
    v12 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)_deserializedPropertyDictionaryForData:(id)a3 withPropertyValueOfClass:(Class)a4 error:(id *)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v8 = a3;
  if (v8)
  {
    v9 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
    v10 = [MEMORY[0x1E695DFD8] setWithObjects:{a4, objc_opt_class(), 0}];
    v17 = 0;
    v11 = [MEMORY[0x1E696ACD0] unarchivedDictionaryWithKeysOfClasses:v9 objectsOfClasses:v10 fromData:v8 error:&v17];
    v12 = v17;
    if (v12)
    {
      v13 = _CDPLogSystem();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v19 = self;
        v20 = 2112;
        v21 = v8;
        v22 = 2112;
        v23 = v12;
        _os_log_error_impl(&dword_1DED99000, v13, OS_LOG_TYPE_ERROR, "%@: Failed to unarchive data (%@) with error (%@)", buf, 0x20u);
      }

      if (a5)
      {
        v14 = v12;
        *a5 = v12;
      }
    }
  }

  else
  {
    v11 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];

  return v11;
}

- (void)initWithAltDSID:accountStore:accountManager:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)isSilentBurnCDPRepairEnabled
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 accountManager];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6(v2, v3, v4, v5, v6);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)shouldPerformSilentEscrowRecordRepair
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1DED99000, a2, OS_LOG_TYPE_ERROR, "%@: Could not determine if device needs escrow repair with invalid context", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)generatedContext
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = [a1 appleAccount];
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v1, v2, OS_LOG_TYPE_ERROR, v3, v4, 0x16u);

  v5 = *MEMORY[0x1E69E9840];
}

void __62__CDPAccountRepresentation_isICDPEnabledByCheckingWithServer___block_invoke_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x2Au);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)silentEscrowRecordRepairEnabledWithCompletion:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 accountManager];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6(v2, v3, v4, v5, v6);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)silentEscrowRecordRepairEnabledWithCompletion:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_6(v0, v1, v2, v3, v4);
  v5 = *MEMORY[0x1E69E9840];
}

void __74__CDPAccountRepresentation_silentEscrowRecordRepairEnabledWithCompletion___block_invoke_cold_1(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = [*(a1 + 32) altDSID];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0x20u);

  v6 = *MEMORY[0x1E69E9840];
}

void __74__CDPAccountRepresentation_silentEscrowRecordRepairEnabledWithCompletion___block_invoke_cold_2(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_6(v2, v3, v4, v5, v6);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)_cachedPropertyValueOfClass:forKey:valueProducer:staleModifiedDate:account:saveHandler:.cold.1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

- (void)_cachedPropertyValueOfClass:forKey:staleModifiedDate:account:isStale:.cold.1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x20u);
  v4 = *MEMORY[0x1E69E9840];
}

void __92__CDPAccountRepresentation__cachePropertyValue_forKey_lastModifiedDate_account_saveHandler___block_invoke_cold_1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = a1[4];
  v2 = a1[5];
  v3 = a1[6];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x2Au);
  v9 = *MEMORY[0x1E69E9840];
}

void __92__CDPAccountRepresentation__cachePropertyValue_forKey_lastModifiedDate_account_saveHandler___block_invoke_cold_2(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = a1[4];
  v2 = a1[5];
  v3 = a1[6];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_1_1();
  v10 = v4;
  v11 = v5;
  v12 = v6;
  _os_log_debug_impl(&dword_1DED99000, v7, OS_LOG_TYPE_DEBUG, "Successfully saved cached property value (%@) for key (%@) on account (%@)", v9, 0x20u);
  v8 = *MEMORY[0x1E69E9840];
}

@end