@interface CDPAccount
+ (BOOL)checkIfAltDSIDIsBeneficiary:(id)beneficiary;
+ (BOOL)isHSA2Enabled:(id)enabled;
+ (BOOL)saveVerifiedAccount:(id)account error:(id *)error;
+ (id)_authKitAccountWith:(id)with;
+ (id)altDSIDForPersonID:(id)d;
+ (id)appleAccountForAltDSID:(id)d;
+ (id)personIDForAltDSID:(id)d;
+ (id)sharedInstance;
- (BOOL)isOTEnabledForContext:(id)context;
- (BOOL)primaryAccountIsBeneficiary;
- (BOOL)primaryAccountNeedsEscrowRecordRepair;
- (BOOL)rpdProbationIsInEffectForDuration:(double)duration context:(id)context;
- (NSDate)rpdProbationFirstSeenDate;
- (id)_serverFriendlyDateFormatter;
- (id)authToken;
- (id)escrowURL;
- (id)iCloudEnv;
- (id)primaryAccountAltDSID;
- (id)primaryAccountDSID;
- (id)primaryAccountFirstName;
- (id)primaryAccountFullName;
- (id)primaryAccountStashedPRK;
- (id)primaryAccountUsername;
- (id)primaryAppleAccount;
- (id)primaryAuthKitAccount;
- (unint64_t)primaryAccountSecurityLevel;
- (void)octagonStatusForContext:(id)context withCompletion:(id)completion;
- (void)primaryAccountStashedPRK;
- (void)setRpdProbationFirstSeenDate:(id)date;
- (void)sosStatusForContext:(id)context withCompletion:(id)completion;
@end

@implementation CDPAccount

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[CDPAccount sharedInstance];
  }

  v3 = sharedInstance_account;

  return v3;
}

- (id)primaryAppleAccount
{
  defaultStore = [MEMORY[0x1E6959A48] defaultStore];
  aa_primaryAppleAccount = [defaultStore aa_primaryAppleAccount];

  return aa_primaryAppleAccount;
}

void __51__CDPAccount_isICDPEnabledForDSID_checkWithServer___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _CDPLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __51__CDPAccount_isICDPEnabledForDSID_checkWithServer___block_invoke_cold_1(a1, v3, v4);
  }
}

void __51__CDPAccount_isICDPEnabledForDSID_checkWithServer___block_invoke_17(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = _CDPLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = @"DISABLED";
    v9 = 1752392040;
    v8 = 141558530;
    if (a2)
    {
      v6 = @"ENABLED";
    }

    v10 = 2112;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_1DED99000, v4, OS_LOG_TYPE_DEFAULT, "iCDP status for DSID %{mask.hash}@ is %@", &v8, 0x20u);
  }

  *(*(*(a1 + 40) + 8) + 24) = a2;
  v7 = *MEMORY[0x1E69E9840];
}

uint64_t __28__CDPAccount_sharedInstance__block_invoke()
{
  sharedInstance_account = objc_alloc_init(CDPAccount);

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)isOTEnabledForContext:(id)context
{
  v21 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v4 = _CDPSignpostLogSystem();
  v5 = _CDPSignpostCreate(v4);
  v7 = v6;

  v8 = _CDPSignpostLogSystem();
  v9 = v8;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_1DED99000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v5, "OctagonStatus", " enableTelemetry=YES ", &buf, 2u);
  }

  v10 = _CDPSignpostLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v5;
    _os_log_impl(&dword_1DED99000, v10, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: OctagonStatus  enableTelemetry=YES ", &buf, 0xCu);
  }

  v11 = objc_alloc_init(CDPDaemonConnection);
  v12 = [(CDPDaemonConnection *)v11 synchronousDaemonWithErrorHandler:&__block_literal_global_28];
  v13 = _CDPLogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_1DED99000, v13, OS_LOG_TYPE_DEFAULT, "Checking OT status", &buf, 2u);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v19 = 0x2020000000;
  v20 = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __36__CDPAccount_isOTEnabledForContext___block_invoke_29;
  v17[3] = &unk_1E869D560;
  v17[5] = v5;
  v17[6] = v7;
  v17[4] = &buf;
  [v12 isOTEnabledForContext:contextCopy completion:v17];
  connection = [(CDPDaemonConnection *)v11 connection];
  [connection invalidate];

  LOBYTE(connection) = *(*(&buf + 1) + 24);
  _Block_object_dispose(&buf, 8);

  v15 = *MEMORY[0x1E69E9840];
  return connection & 1;
}

void __36__CDPAccount_isOTEnabledForContext___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _CDPLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __36__CDPAccount_isOTEnabledForContext___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
  }
}

void __36__CDPAccount_isOTEnabledForContext___block_invoke_29(void *a1, char a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  Nanoseconds = _CDPSignpostGetNanoseconds(a1[5], a1[6]);
  v7 = _CDPSignpostLogSystem();
  v8 = v7;
  v9 = a1[5];
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v15 = 67240192;
    LODWORD(v16) = [v5 code];
    _os_signpost_emit_with_name_impl(&dword_1DED99000, v8, OS_SIGNPOST_INTERVAL_END, v9, "OctagonStatus", " Error=%{public,signpost.telemetry:number1,name=Error}d ", &v15, 8u);
  }

  v10 = _CDPSignpostLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = Nanoseconds / 1000000000.0;
    v12 = a1[5];
    v13 = [v5 code];
    v15 = 134218496;
    v16 = v12;
    v17 = 2048;
    v18 = v11;
    v19 = 1026;
    v20 = v13;
    _os_log_impl(&dword_1DED99000, v10, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: OctagonStatus  Error=%{public,signpost.telemetry:number1,name=Error}d ", &v15, 0x1Cu);
  }

  *(*(a1[4] + 8) + 24) = a2;
  v14 = *MEMORY[0x1E69E9840];
}

- (id)primaryAccountUsername
{
  primaryAppleAccount = [(CDPAccount *)self primaryAppleAccount];
  username = [primaryAppleAccount username];

  return username;
}

- (id)primaryAccountDSID
{
  primaryAppleAccount = [(CDPAccount *)self primaryAppleAccount];
  accountProperties = [primaryAppleAccount accountProperties];
  v4 = [accountProperties objectForKeyedSubscript:@"personID"];

  return v4;
}

- (id)primaryAccountAltDSID
{
  primaryAppleAccount = [(CDPAccount *)self primaryAppleAccount];
  mEMORY[0x1E698DC80] = [MEMORY[0x1E698DC80] sharedInstance];
  v4 = [mEMORY[0x1E698DC80] altDSIDForAccount:primaryAppleAccount];

  return v4;
}

- (unint64_t)primaryAccountSecurityLevel
{
  mEMORY[0x1E698DC80] = [MEMORY[0x1E698DC80] sharedInstance];
  primaryAccountAltDSID = [(CDPAccount *)self primaryAccountAltDSID];
  v5 = [mEMORY[0x1E698DC80] authKitAccountWithAltDSID:primaryAccountAltDSID];

  mEMORY[0x1E698DC80]2 = [MEMORY[0x1E698DC80] sharedInstance];
  v7 = [mEMORY[0x1E698DC80]2 securityLevelForAccount:v5];

  return v7;
}

- (BOOL)primaryAccountIsBeneficiary
{
  mEMORY[0x1E698DC80] = [MEMORY[0x1E698DC80] sharedInstance];
  primaryAuthKitAccount = [mEMORY[0x1E698DC80] primaryAuthKitAccount];

  mEMORY[0x1E698DC80]2 = [MEMORY[0x1E698DC80] sharedInstance];
  v5 = [mEMORY[0x1E698DC80]2 isBeneficiaryForAccount:primaryAuthKitAccount];

  return v5;
}

- (id)authToken
{
  primaryAppleAccount = [(CDPAccount *)self primaryAppleAccount];
  aa_authToken = [primaryAppleAccount aa_authToken];

  return aa_authToken;
}

- (id)escrowURL
{
  primaryAppleAccount = [(CDPAccount *)self primaryAppleAccount];
  v3 = [primaryAppleAccount propertiesForDataclass:*MEMORY[0x1E6959B20]];
  v4 = [v3 objectForKey:@"escrowProxyUrl"];

  return v4;
}

- (id)iCloudEnv
{
  primaryAppleAccount = [(CDPAccount *)self primaryAppleAccount];
  dataclassProperties = [primaryAppleAccount dataclassProperties];
  v4 = [dataclassProperties objectForKeyedSubscript:@"com.apple.Dataclass.Account"];
  v5 = [v4 objectForKeyedSubscript:@"iCloudEnv"];

  return v5;
}

- (id)primaryAccountFirstName
{
  primaryAppleAccount = [(CDPAccount *)self primaryAppleAccount];
  aa_firstName = [primaryAppleAccount aa_firstName];

  return aa_firstName;
}

- (id)primaryAccountFullName
{
  primaryAppleAccount = [(CDPAccount *)self primaryAppleAccount];
  aa_fullName = [primaryAppleAccount aa_fullName];

  return aa_fullName;
}

- (id)primaryAuthKitAccount
{
  mEMORY[0x1E698DC80] = [MEMORY[0x1E698DC80] sharedInstance];
  primaryAccountAltDSID = [(CDPAccount *)self primaryAccountAltDSID];
  v5 = [mEMORY[0x1E698DC80] authKitAccountWithAltDSID:primaryAccountAltDSID];

  return v5;
}

- (id)primaryAccountStashedPRK
{
  v3 = _CDPLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(CDPAccount *)v3 primaryAccountStashedPRK];
  }

  primaryAuthKitAccount = [(CDPAccount *)self primaryAuthKitAccount];
  if (primaryAuthKitAccount)
  {
    defaultStore = [MEMORY[0x1E6959A48] defaultStore];
    v13 = 0;
    v6 = [defaultStore credentialForAccount:primaryAuthKitAccount error:&v13];
    v7 = v13;

    v8 = [v6 credentialItemForKey:*MEMORY[0x1E69599C8]];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
      v11 = _CDPLogSystem();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [(CDPAccount *)v11 primaryAccountStashedPRK];
      }
    }

    else
    {
      v11 = _CDPLogSystem();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(CDPAccount *)v7 primaryAccountStashedPRK];
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)primaryAccountNeedsEscrowRecordRepair
{
  v2 = +[CDPAccountRepresentation representationForPrimaryAccount];
  shouldPerformSilentEscrowRecordRepair = [v2 shouldPerformSilentEscrowRecordRepair];

  return shouldPerformSilentEscrowRecordRepair;
}

+ (BOOL)saveVerifiedAccount:(id)account error:(id *)error
{
  if (!account)
  {
    return 0;
  }

  v5 = MEMORY[0x1E6959A48];
  accountCopy = account;
  defaultStore = [v5 defaultStore];
  LOBYTE(error) = [defaultStore saveVerifiedAccount:accountCopy error:error];

  return error;
}

+ (id)_authKitAccountWith:(id)with
{
  if (with)
  {
    v3 = MEMORY[0x1E698DC80];
    withCopy = with;
    sharedInstance = [v3 sharedInstance];
    v6 = [sharedInstance authKitAccountWithAltDSID:withCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)checkIfAltDSIDIsBeneficiary:(id)beneficiary
{
  v3 = [self _authKitAccountWith:beneficiary];
  mEMORY[0x1E698DC80] = [MEMORY[0x1E698DC80] sharedInstance];
  v5 = [mEMORY[0x1E698DC80] isBeneficiaryForAccount:v3];

  return v5;
}

+ (id)appleAccountForAltDSID:(id)d
{
  v3 = MEMORY[0x1E6959A48];
  dCopy = d;
  defaultStore = [v3 defaultStore];
  v6 = [defaultStore aa_appleAccountWithAltDSID:dCopy];

  return v6;
}

+ (id)personIDForAltDSID:(id)d
{
  dCopy = d;
  v4 = [objc_opt_class() appleAccountForAltDSID:dCopy];

  v5 = MEMORY[0x1E696AD98];
  aa_personID = [v4 aa_personID];
  v7 = [v5 numberWithLongLong:{objc_msgSend(aa_personID, "longLongValue")}];

  return v7;
}

+ (id)altDSIDForPersonID:(id)d
{
  v3 = MEMORY[0x1E6959A48];
  dCopy = d;
  defaultStore = [v3 defaultStore];
  v6 = [defaultStore aa_appleAccountWithPersonID:dCopy];

  aa_altDSID = [v6 aa_altDSID];

  return aa_altDSID;
}

+ (BOOL)isHSA2Enabled:(id)enabled
{
  v3 = [self _authKitAccountWith:enabled];
  mEMORY[0x1E698DC80] = [MEMORY[0x1E698DC80] sharedInstance];
  v5 = [mEMORY[0x1E698DC80] securityLevelForAccount:v3];

  return v5 == 4;
}

- (void)octagonStatusForContext:(id)context withCompletion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  v7 = _os_activity_create(&dword_1DED99000, "cdp/statemachine-clique-status", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  v8 = objc_alloc_init(CDPDaemonConnection);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __67__CDPAccount_CircleStatus__octagonStatusForContext_withCompletion___block_invoke;
  v14[3] = &unk_1E869D588;
  v9 = completionCopy;
  v15 = v9;
  v10 = [(CDPDaemonConnection *)v8 daemonWithErrorHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __67__CDPAccount_CircleStatus__octagonStatusForContext_withCompletion___block_invoke_2;
  v12[3] = &unk_1E869D5B0;
  v11 = v9;
  v13 = v11;
  [v10 cliqueStatusForContext:contextCopy completion:v12];

  os_activity_scope_leave(&state);
}

uint64_t __67__CDPAccount_CircleStatus__octagonStatusForContext_withCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, -1, a2);
  }

  return result;
}

void __67__CDPAccount_CircleStatus__octagonStatusForContext_withCompletion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = _CDPLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __67__CDPAccount_CircleStatus__octagonStatusForContext_withCompletion___block_invoke_2_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }

    v12 = *(a1 + 32);
    if (v12)
    {
      v13 = *(v12 + 16);
LABEL_8:
      v13();
    }
  }

  else
  {
    v14 = *(a1 + 32);
    if (v14)
    {
      v13 = *(v14 + 16);
      goto LABEL_8;
    }
  }
}

- (void)sosStatusForContext:(id)context withCompletion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  v7 = _os_activity_create(&dword_1DED99000, "cdp/statemachine-circle-status", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  v8 = objc_alloc_init(CDPDaemonConnection);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __63__CDPAccount_CircleStatus__sosStatusForContext_withCompletion___block_invoke;
  v14[3] = &unk_1E869D588;
  v9 = completionCopy;
  v15 = v9;
  v10 = [(CDPDaemonConnection *)v8 daemonWithErrorHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __63__CDPAccount_CircleStatus__sosStatusForContext_withCompletion___block_invoke_2;
  v12[3] = &unk_1E869D5D8;
  v11 = v9;
  v13 = v11;
  [v10 circleStatusForContext:contextCopy completion:v12];

  os_activity_scope_leave(&state);
}

uint64_t __63__CDPAccount_CircleStatus__sosStatusForContext_withCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0xFFFFFFFFLL, a2);
  }

  return result;
}

void __63__CDPAccount_CircleStatus__sosStatusForContext_withCompletion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = _CDPLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __63__CDPAccount_CircleStatus__sosStatusForContext_withCompletion___block_invoke_2_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }

    v12 = *(a1 + 32);
    if (v12)
    {
      v13 = *(v12 + 16);
LABEL_8:
      v13();
    }
  }

  else
  {
    v14 = *(a1 + 32);
    if (v14)
    {
      v13 = *(v14 + 16);
      goto LABEL_8;
    }
  }
}

- (NSDate)rpdProbationFirstSeenDate
{
  v3 = +[CDPAccount sharedInstance];
  primaryAppleAccount = [v3 primaryAppleAccount];

  v5 = [primaryAppleAccount accountPropertyForKey:@"rpdProbationFirstSeenDate"];
  v6 = _CDPLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(CDPAccount(Probation) *)v5 rpdProbationFirstSeenDate:v6];
  }

  _serverFriendlyDateFormatter = [(CDPAccount *)self _serverFriendlyDateFormatter];
  v14 = [_serverFriendlyDateFormatter dateFromString:v5];

  return v14;
}

- (void)setRpdProbationFirstSeenDate:(id)date
{
  dateCopy = date;
  _serverFriendlyDateFormatter = [(CDPAccount *)self _serverFriendlyDateFormatter];
  v6 = [_serverFriendlyDateFormatter stringFromDate:dateCopy];

  v7 = _CDPLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(CDPAccount(Probation) *)v6 setRpdProbationFirstSeenDate:v7, v8, v9, v10, v11, v12, v13];
  }

  v14 = +[CDPAccount sharedInstance];
  primaryAppleAccount = [v14 primaryAppleAccount];

  [primaryAppleAccount setAccountProperty:v6 forKey:@"rpdProbationFirstSeenDate"];
  v20 = 0;
  v16 = [CDPAccount saveVerifiedAccount:primaryAppleAccount error:&v20];
  v17 = v20;
  if (v16)
  {
    rpdProbationFirstSeenDate = [(CDPAccount *)self rpdProbationFirstSeenDate];
  }

  else
  {
    v19 = _CDPLogSystem();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [(CDPAccount(Probation) *)v17 setRpdProbationFirstSeenDate:v19];
    }
  }
}

- (id)_serverFriendlyDateFormatter
{
  v2 = [objc_alloc(MEMORY[0x1E695DF58]) initWithLocaleIdentifier:@"en_US_POSIX"];
  v3 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v3 setDateFormat:@"yyyy'-'MM'-'dd'T'HH':'mm':'ss'Z'"];
  [v3 setLocale:v2];
  v4 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
  [v3 setTimeZone:v4];

  return v3;
}

- (BOOL)rpdProbationIsInEffectForDuration:(double)duration context:(id)context
{
  v41 = *MEMORY[0x1E69E9840];
  v6 = [MEMORY[0x1E6985DB0] analyticsEventWithContext:context eventName:@"com.apple.corecdp.rpdProbation" category:0x1F5A168E0];
  rpdProbationFirstSeenDate = [(CDPAccount *)self rpdProbationFirstSeenDate];
  if (rpdProbationFirstSeenDate)
  {
    v8 = [MEMORY[0x1E695DF00] now];
    [v8 timeIntervalSinceDate:rpdProbationFirstSeenDate];
    v10 = v9;

    v11 = v10 >= duration;
    if (v10 < duration)
    {
      v12 = [MEMORY[0x1E696AD98] numberWithDouble:duration - v10];
      [v6 setObject:v12 forKeyedSubscript:@"remainingProbationTime"];
    }

    else
    {
      [v6 setObject:&unk_1F5A16898 forKeyedSubscript:@"remainingProbationTime"];
    }

    v13 = _CDPLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [(CDPAccount(Probation) *)v13 rpdProbationIsInEffectForDuration:v14 context:v15, v16, v17, v18, v19, v20];
    }

    v21 = _CDPLogSystem();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      [(CDPAccount(Probation) *)v21 rpdProbationIsInEffectForDuration:v22 context:v23, v24, v25, v26, v27, v28];
    }

    v29 = _CDPLogSystem();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      v35 = 134218496;
      v36 = v10;
      v37 = 2048;
      durationCopy = duration;
      v39 = 1024;
      v40 = v10 >= duration;
      _os_log_debug_impl(&dword_1DED99000, v29, OS_LOG_TYPE_DEBUG, "RPD Probation: Can show RPD option: %f >= %f = %{BOOL}d", &v35, 0x1Cu);
    }
  }

  else if (duration == 0.0)
  {
    [v6 setObject:&unk_1F5A16898 forKeyedSubscript:@"remainingProbationTime"];
    v11 = 1;
  }

  else
  {
    v33 = [MEMORY[0x1E695DF00] now];
    [(CDPAccount *)self setRpdProbationFirstSeenDate:v33];

    v34 = [MEMORY[0x1E696AD98] numberWithDouble:duration];
    [v6 setObject:v34 forKeyedSubscript:@"remainingProbationTime"];

    v11 = 0;
  }

  v30 = +[CDPAnalyticsReporterRTC rtcAnalyticsReporter];
  [v30 sendEvent:v6];

  v31 = *MEMORY[0x1E69E9840];
  return v11;
}

void __51__CDPAccount_isICDPEnabledForDSID_checkWithServer___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v5 = 141558530;
  v6 = 1752392040;
  v7 = 2112;
  v8 = v3;
  v9 = 2112;
  v10 = a2;
  _os_log_error_impl(&dword_1DED99000, log, OS_LOG_TYPE_ERROR, "XPC Error while checking if iCDP is enabled for DSID %{mask.hash}@: %@", &v5, 0x20u);
  v4 = *MEMORY[0x1E69E9840];
}

void __36__CDPAccount_isOTEnabledForContext___block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_3(&dword_1DED99000, a2, a3, "XPC Error while checking if OT is enabled: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)primaryAccountStashedPRK
{
  v15 = *MEMORY[0x1E69E9840];
  primaryAccountUsername = [a2 primaryAccountUsername];
  primaryAccountAltDSID = [a2 primaryAccountAltDSID];
  v9 = 138412803;
  selfCopy = self;
  v11 = 2117;
  v12 = primaryAccountUsername;
  v13 = 2117;
  v14 = primaryAccountAltDSID;
  _os_log_error_impl(&dword_1DED99000, a3, OS_LOG_TYPE_ERROR, "Something went wrong... (%@) could not find a stashed token for primary Account: <%{sensitive}@ : %{sensitive}@>", &v9, 0x20u);

  v8 = *MEMORY[0x1E69E9840];
}

void __67__CDPAccount_CircleStatus__octagonStatusForContext_withCompletion___block_invoke_2_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_3(&dword_1DED99000, a2, a3, "Error while checking clique status: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __63__CDPAccount_CircleStatus__sosStatusForContext_withCompletion___block_invoke_2_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_3(&dword_1DED99000, a2, a3, "Error while checking circle status: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

@end