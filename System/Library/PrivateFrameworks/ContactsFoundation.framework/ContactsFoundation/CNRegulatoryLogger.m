@interface CNRegulatoryLogger
+ (id)sharedInstanceForAddressBook;
- (CNRegulatoryLogger)initWithAuditToken:(id)a3 assumedIdentity:(id)a4 logCategory:(const char *)a5;
- (NSString)processDescription;
- (PAAccessLogger)privacyAccountingLogger;
- (PAApplication)privacyAccountingAccessor;
- (id)accessorForAuditTokenValidatingAssumedIdentity;
- (id)privacyAccountingAccessorImpl;
- (id)processDescriptionImpl;
- (void)accessorForAuditTokenValidatingAssumedIdentity;
- (void)dealloc;
- (void)logContactPickerAccessEvent;
- (void)logContactsDataAccessEvent;
- (void)logContactsDataAccessEventWithAssetIdentifiers:(id)a3;
- (void)logGreenTeaEvent:(id)a3;
- (void)logPrivacyAccountingAccessEvent:(id)a3;
- (void)willLogContactPickerAccessEvent;
- (void)willLogContactsDataAccessEvent;
- (void)willLogContactsDataAccessEventWithAssetIdentifiers:(id)a3;
- (void)willNotLogContactPickerAccessEventAsLoggingDisabled;
- (void)willNotLogContactPickerAccessEventAsLoggingInProcess;
- (void)willNotLogContactsDataAccessEventAsLoggingDisabled;
@end

@implementation CNRegulatoryLogger

- (void)logContactsDataAccessEvent
{
  v3 = [(CNRegulatoryLogger *)self privacyAccountingLogger];
  v4 = [v3 loggingEnabled];

  if (v4)
  {
    [(CNRegulatoryLogger *)self willLogContactsDataAccessEvent];
    v5 = objc_alloc(getPATCCAccessClass());
    v6 = [(CNRegulatoryLogger *)self privacyAccountingAccessor];
    v7 = [v5 initWithAccessor:v6 forService:*MEMORY[0x1E69D5500]];

    [(CNRegulatoryLogger *)self logPrivacyAccountingAccessEvent:v7];
  }

  else
  {

    [(CNRegulatoryLogger *)self willNotLogContactsDataAccessEventAsLoggingDisabled];
  }
}

id __45__CNRegulatoryLogger_privacyAccountingLogger__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  if (!v2)
  {
    v3 = [(objc_class *)getPAAccessLoggerClass() sharedInstance];
    v4 = *(a1 + 32);
    v5 = *(v4 + 48);
    *(v4 + 48) = v3;

    v2 = *(*(a1 + 32) + 48);
  }

  return v2;
}

- (PAApplication)privacyAccountingAccessor
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __47__CNRegulatoryLogger_privacyAccountingAccessor__block_invoke;
  v4[3] = &unk_1E6ED51B8;
  v4[4] = self;
  v2 = cn_objectResultWithObjectLock(self, v4);

  return v2;
}

id __47__CNRegulatoryLogger_privacyAccountingAccessor__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[7];
  if (!v3)
  {
    v4 = [v2 privacyAccountingAccessorImpl];
    v5 = *(a1 + 32);
    v6 = *(v5 + 56);
    *(v5 + 56) = v4;

    v3 = *(*(a1 + 32) + 56);
  }

  return v3;
}

- (void)willLogContactsDataAccessEvent
{
  v11 = *MEMORY[0x1E69E9840];
  if ([(CNRegulatoryLogger *)self isPrivacyAccountingDiagnosticsEnabled])
  {
    v3 = [(CNRegulatoryLogger *)self cnAuditToken];

    v4 = [(CNRegulatoryLogger *)self os_log];
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
    if (v3)
    {
      if (v5)
      {
        v6 = [(CNRegulatoryLogger *)self processDescription];
        v9 = 138412290;
        v10 = v6;
        v7 = "Logging out-of-process contacts data access event for %@";
LABEL_7:
        _os_log_impl(&dword_1859F0000, v4, OS_LOG_TYPE_INFO, v7, &v9, 0xCu);
      }
    }

    else if (v5)
    {
      v6 = [(CNRegulatoryLogger *)self processDescription];
      v9 = 138412290;
      v10 = v6;
      v7 = "Logging in-process contacts data access event for %@";
      goto LABEL_7;
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (id)privacyAccountingAccessorImpl
{
  v3 = [(CNRegulatoryLogger *)self cnAuditToken];
  if (v3)
  {
    v4 = v3;
    v5 = [(CNRegulatoryLogger *)self assumedIdentity];

    if (v5)
    {
      v6 = [(CNRegulatoryLogger *)self accessorForAuditTokenValidatingAssumedIdentity];
LABEL_4:
      v7 = v6;
      goto LABEL_13;
    }
  }

  v8 = [(CNRegulatoryLogger *)self cnAuditToken];

  if (v8)
  {
    v9 = objc_alloc(getPAApplicationClass());
    v10 = [(CNRegulatoryLogger *)self cnAuditToken];
    v11 = v10;
    if (v10)
    {
      [v10 audit_token];
    }

    else
    {
      memset(v17, 0, sizeof(v17));
    }

    v15 = [v9 initWithAuditToken:v17];
  }

  else
  {
    v12 = [(CNRegulatoryLogger *)self assumedIdentity];

    PAApplicationClass = getPAApplicationClass();
    if (!v12)
    {
      v6 = [(objc_class *)PAApplicationClass applicationForCurrentProcess];
      goto LABEL_4;
    }

    v14 = [PAApplicationClass alloc];
    v11 = [(CNRegulatoryLogger *)self assumedIdentity];
    v15 = [v14 initWithInProcessAssumedIdentity:v11];
  }

  v7 = v15;

LABEL_13:

  return v7;
}

- (void)willNotLogContactsDataAccessEventAsLoggingDisabled
{
  v11 = *MEMORY[0x1E69E9840];
  if ([(CNRegulatoryLogger *)self isPrivacyAccountingDiagnosticsEnabled])
  {
    v3 = [(CNRegulatoryLogger *)self cnAuditToken];

    v4 = [(CNRegulatoryLogger *)self os_log];
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
    if (v3)
    {
      if (v5)
      {
        v6 = [(CNRegulatoryLogger *)self processDescription];
        v9 = 138412290;
        v10 = v6;
        v7 = "Logging disabled with out-of-process contacts data access event for %@";
LABEL_7:
        _os_log_impl(&dword_1859F0000, v4, OS_LOG_TYPE_INFO, v7, &v9, 0xCu);
      }
    }

    else if (v5)
    {
      v6 = [(CNRegulatoryLogger *)self processDescription];
      v9 = 138412290;
      v10 = v6;
      v7 = "Logging disabled with in-process contacts data access event for %@";
      goto LABEL_7;
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (PAAccessLogger)privacyAccountingLogger
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __45__CNRegulatoryLogger_privacyAccountingLogger__block_invoke;
  v4[3] = &unk_1E6ED51B8;
  v4[4] = self;
  v2 = cn_objectResultWithObjectLock(self, v4);

  return v2;
}

- (void)dealloc
{
  if (self->_greenTeaLogger)
  {
    ct_green_tea_logger_destroy();
  }

  v3.receiver = self;
  v3.super_class = CNRegulatoryLogger;
  [(CNRegulatoryLogger *)&v3 dealloc];
}

+ (id)sharedInstanceForAddressBook
{
  v2 = [[CNRegulatoryLogger alloc] initWithAuditToken:0 assumedIdentity:0 logCategory:"CNRegulatoryLoggerForAB"];

  return v2;
}

- (CNRegulatoryLogger)initWithAuditToken:(id)a3 assumedIdentity:(id)a4 logCategory:(const char *)a5
{
  v9 = a3;
  v10 = a4;
  v23.receiver = self;
  v23.super_class = CNRegulatoryLogger;
  v11 = [(CNRegulatoryLogger *)&v23 init];
  if (v11)
  {
    if (a5)
    {
      v12 = a5;
    }

    else
    {
      v12 = "CNRegulatoryLogger";
    }

    v13 = os_log_create("com.apple.contacts", v12);
    os_log = v11->_os_log;
    v11->_os_log = v13;

    if (!v9)
    {
      if (ct_green_tea_logging_enabled())
      {
        v11->_greenTeaLogger = ct_green_tea_logger_create();
      }

      v15 = +[CNUserDefaults standardPreferences];
      v16 = [v15 stringForKey:@"CNGreenTeaDiagnosticsForProcessName"];

      v17 = [MEMORY[0x1E696AE30] processInfo];
      v18 = [v17 processName];
      v11->_isGreenTeaDiagnosticsEnabled = [v16 isEqualToString:v18];

      v19 = +[CNUserDefaults standardPreferences];
      v11->_greenTeaDiagnosticLogFaultForEventCount = [v19 integerForKey:@"CNGreenTeaDiagnosticsLogFaultForEventCount"];

      v11->_greenTeaDiagnosticEventCounter = 0;
    }

    objc_storeStrong(&v11->_cnAuditToken, a3);
    objc_storeStrong(&v11->_assumedIdentity, a4);
    v20 = +[CNUserDefaults standardPreferences];
    v11->_isPrivacyAccountingDiagnosticsEnabled = [v20 userHasOptedInToPreference:@"CNPrivacyAccountingDiagnosticsEnabled"];

    v21 = v11;
  }

  return v11;
}

- (void)logGreenTeaEvent:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(CNRegulatoryLogger *)self greenTeaLogger])
  {
    [(CNRegulatoryLogger *)self greenTeaLogger];
    v5 = getCTGreenTeaOsLogHandle();
    v6 = v5;
    if (v5 && os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v14 = v4;
      _os_log_impl(&dword_1859F0000, v6, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
    }
  }

  if ([(CNRegulatoryLogger *)self isGreenTeaDiagnosticsEnabled])
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Triggered GreenTea logging event: %@", v4];
    v8 = [(CNRegulatoryLogger *)self greenTeaDiagnosticEventCounter]+ 1;
    [(CNRegulatoryLogger *)self setGreenTeaDiagnosticEventCounter:v8];
    v9 = [(CNRegulatoryLogger *)self greenTeaDiagnosticLogFaultForEventCount];
    v10 = [(CNRegulatoryLogger *)self os_log];
    v11 = v10;
    if (v8 == v9)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        [(CNRegulatoryLogger *)v7 logGreenTeaEvent:v11];
      }
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v14 = v7;
      _os_log_impl(&dword_1859F0000, v11, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)logContactsDataAccessEventWithAssetIdentifiers:(id)a3
{
  v9 = a3;
  if ([v9 count])
  {
    v4 = [(CNRegulatoryLogger *)self privacyAccountingLogger];
    v5 = [v4 loggingEnabled];

    if (v5)
    {
      [(CNRegulatoryLogger *)self willLogContactsDataAccessEventWithAssetIdentifiers:v9];
      v6 = objc_alloc(getPATCCAccessClass());
      v7 = [(CNRegulatoryLogger *)self privacyAccountingAccessor];
      v8 = [v6 initWithAccessor:v7 forService:*MEMORY[0x1E69D5500] assetIdentifiers:v9];

      [(CNRegulatoryLogger *)self logPrivacyAccountingAccessEvent:v8];
    }

    else
    {
      [(CNRegulatoryLogger *)self willNotLogContactsDataAccessEventAsLoggingDisabled];
    }
  }
}

- (void)logContactPickerAccessEvent
{
  v3 = [(CNRegulatoryLogger *)self privacyAccountingLogger];
  v4 = [v3 loggingEnabled];

  if (v4)
  {
    v5 = [(CNRegulatoryLogger *)self cnAuditToken];

    if (v5)
    {
      [(CNRegulatoryLogger *)self willLogContactPickerAccessEvent];
      v6 = objc_alloc(getPAOutOfProcessPickerAccessClass());
      v7 = [(CNRegulatoryLogger *)self privacyAccountingAccessor];
      v8 = [v6 initWithAccessor:v7 forType:2];

      [(CNRegulatoryLogger *)self logPrivacyAccountingAccessEvent:v8];
    }

    else
    {

      [(CNRegulatoryLogger *)self willNotLogContactPickerAccessEventAsLoggingInProcess];
    }
  }

  else
  {

    [(CNRegulatoryLogger *)self willNotLogContactPickerAccessEventAsLoggingDisabled];
  }
}

- (id)accessorForAuditTokenValidatingAssumedIdentity
{
  v3 = softLinkPAAuthenticatedClientIdentity;
  v4 = [(CNRegulatoryLogger *)self cnAuditToken];
  v5 = v4;
  if (v4)
  {
    [v4 audit_token];
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v6 = [(CNRegulatoryLogger *)self assumedIdentity:v12];
  v7 = (v3)(&v12, v6);

  if (v7)
  {
    v8 = [objc_alloc(getPAApplicationClass()) initWithTCCIdentity:v7];
  }

  else
  {
    v9 = [(CNRegulatoryLogger *)self os_log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(CNRegulatoryLogger *)self accessorForAuditTokenValidatingAssumedIdentity];
    }

    v8 = [(objc_class *)getPAApplicationClass() applicationForCurrentProcess];
  }

  v10 = v8;

  return v10;
}

- (void)logPrivacyAccountingAccessEvent:(id)a3
{
  v4 = a3;
  v5 = [(CNRegulatoryLogger *)self privacyAccountingLogger];
  [v5 log:v4];
}

- (void)willLogContactsDataAccessEventWithAssetIdentifiers:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(CNRegulatoryLogger *)self isPrivacyAccountingDiagnosticsEnabled])
  {
    v5 = [v4 allObjects];
    v6 = [v5 _cn_map:&__block_literal_global_6];

    v7 = [(CNRegulatoryLogger *)self cnAuditToken];

    v8 = [(CNRegulatoryLogger *)self os_log];
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
    if (v7)
    {
      if (v9)
      {
        v10 = [(CNRegulatoryLogger *)self processDescription];
        v13 = 138412546;
        v14 = v10;
        v15 = 2112;
        v16 = v6;
        v11 = "Logging out-of-process contacts data access event for %@, %@";
LABEL_7:
        _os_log_impl(&dword_1859F0000, v8, OS_LOG_TYPE_INFO, v11, &v13, 0x16u);
      }
    }

    else if (v9)
    {
      v10 = [(CNRegulatoryLogger *)self processDescription];
      v13 = 138412546;
      v14 = v10;
      v15 = 2112;
      v16 = v6;
      v11 = "Logging in-process contacts data access event for %@, %@";
      goto LABEL_7;
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

id __73__CNRegulatoryLogger_willLogContactsDataAccessEventWithAssetIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = a2;
  v4 = [[v2 alloc] initWithData:v3 encoding:4];

  return v4;
}

- (void)willNotLogContactPickerAccessEventAsLoggingDisabled
{
  v11 = *MEMORY[0x1E69E9840];
  if ([(CNRegulatoryLogger *)self isPrivacyAccountingDiagnosticsEnabled])
  {
    v3 = [(CNRegulatoryLogger *)self cnAuditToken];

    v4 = [(CNRegulatoryLogger *)self os_log];
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
    if (v3)
    {
      if (v5)
      {
        v6 = [(CNRegulatoryLogger *)self processDescription];
        v9 = 138412290;
        v10 = v6;
        v7 = "Logging disabled with out-of-process contact picker access event for %@.";
LABEL_7:
        _os_log_impl(&dword_1859F0000, v4, OS_LOG_TYPE_INFO, v7, &v9, 0xCu);
      }
    }

    else if (v5)
    {
      v6 = [(CNRegulatoryLogger *)self processDescription];
      v9 = 138412290;
      v10 = v6;
      v7 = "Logging disabled when asked to log an in-process contact picker access event for %@";
      goto LABEL_7;
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)willNotLogContactPickerAccessEventAsLoggingInProcess
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = [a1 processDescription];
  OUTLINED_FUNCTION_0(&dword_1859F0000, v2, v3, "Unexpected request to log an in-process contact picker access event for %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)willLogContactPickerAccessEvent
{
  v8 = *MEMORY[0x1E69E9840];
  if ([(CNRegulatoryLogger *)self isPrivacyAccountingDiagnosticsEnabled])
  {
    v3 = [(CNRegulatoryLogger *)self os_log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = [(CNRegulatoryLogger *)self processDescription];
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_1859F0000, v3, OS_LOG_TYPE_INFO, "Logging out-of-process contact picker access event for %@", &v6, 0xCu);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (NSString)processDescription
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __40__CNRegulatoryLogger_processDescription__block_invoke;
  v4[3] = &unk_1E6ED51B8;
  v4[4] = self;
  v2 = cn_objectResultWithObjectLock(self, v4);

  return v2;
}

id __40__CNRegulatoryLogger_processDescription__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[10];
  if (!v3)
  {
    v4 = [v2 processDescriptionImpl];
    v5 = *(a1 + 32);
    v6 = *(v5 + 80);
    *(v5 + 80) = v4;

    v3 = *(*(a1 + 32) + 80);
  }

  return v3;
}

- (id)processDescriptionImpl
{
  v3 = [(CNRegulatoryLogger *)self cnAuditToken];

  if (v3)
  {
    v4 = [(CNRegulatoryLogger *)self cnAuditToken];
    v5 = [CNAuditTokenUtilities processNameForAuditToken:v4];

    if (v5)
    {
      goto LABEL_8;
    }

    v6 = [(CNRegulatoryLogger *)self cnAuditToken];
    v5 = [CNAuditTokenUtilities bundleIdentifierForAuditToken:v6];

    if (v5)
    {
      goto LABEL_8;
    }

    v7 = MEMORY[0x1E696AEC0];
    v8 = [(CNRegulatoryLogger *)self cnAuditToken];
    v9 = [CNAuditTokenUtilities processIdentifierForAuditToken:v8];
  }

  else
  {
    v10 = [MEMORY[0x1E696AE30] processInfo];
    v5 = [v10 processName];

    if (v5)
    {
      goto LABEL_8;
    }

    v7 = MEMORY[0x1E696AEC0];
    v8 = [MEMORY[0x1E696AE30] processInfo];
    v9 = [v8 processIdentifier];
  }

  v5 = [v7 stringWithFormat:@"PID = %d", v9];

LABEL_8:
  v11 = [(CNRegulatoryLogger *)self assumedIdentity];

  if (v11)
  {
    v12 = MEMORY[0x1E696AEC0];
    v13 = [(CNRegulatoryLogger *)self assumedIdentity];
    v14 = [v12 stringWithFormat:@"%@ [%s]", v5, tcc_identity_get_identifier()];
  }

  else
  {
    v14 = v5;
  }

  return v14;
}

- (void)logGreenTeaEvent:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_1859F0000, a2, OS_LOG_TYPE_FAULT, "%@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)accessorForAuditTokenValidatingAssumedIdentity
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = [a1 processDescription];
  OUTLINED_FUNCTION_0(&dword_1859F0000, v2, v3, "Failed to validate assumed identity for %@, will log as contactsd.", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x1E69E9840];
}

@end