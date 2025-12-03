@interface CNRegulatoryLogger
+ (id)sharedInstanceForAddressBook;
- (CNRegulatoryLogger)initWithAuditToken:(id)token assumedIdentity:(id)identity logCategory:(const char *)category;
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
- (void)logContactsDataAccessEventWithAssetIdentifiers:(id)identifiers;
- (void)logGreenTeaEvent:(id)event;
- (void)logPrivacyAccountingAccessEvent:(id)event;
- (void)willLogContactPickerAccessEvent;
- (void)willLogContactsDataAccessEvent;
- (void)willLogContactsDataAccessEventWithAssetIdentifiers:(id)identifiers;
- (void)willNotLogContactPickerAccessEventAsLoggingDisabled;
- (void)willNotLogContactPickerAccessEventAsLoggingInProcess;
- (void)willNotLogContactsDataAccessEventAsLoggingDisabled;
@end

@implementation CNRegulatoryLogger

- (void)logContactsDataAccessEvent
{
  privacyAccountingLogger = [(CNRegulatoryLogger *)self privacyAccountingLogger];
  loggingEnabled = [privacyAccountingLogger loggingEnabled];

  if (loggingEnabled)
  {
    [(CNRegulatoryLogger *)self willLogContactsDataAccessEvent];
    v5 = objc_alloc(getPATCCAccessClass());
    privacyAccountingAccessor = [(CNRegulatoryLogger *)self privacyAccountingAccessor];
    v7 = [v5 initWithAccessor:privacyAccountingAccessor forService:*MEMORY[0x1E69D5500]];

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
    cnAuditToken = [(CNRegulatoryLogger *)self cnAuditToken];

    os_log = [(CNRegulatoryLogger *)self os_log];
    v5 = os_log_type_enabled(os_log, OS_LOG_TYPE_INFO);
    if (cnAuditToken)
    {
      if (v5)
      {
        processDescription = [(CNRegulatoryLogger *)self processDescription];
        v9 = 138412290;
        v10 = processDescription;
        v7 = "Logging out-of-process contacts data access event for %@";
LABEL_7:
        _os_log_impl(&dword_1859F0000, os_log, OS_LOG_TYPE_INFO, v7, &v9, 0xCu);
      }
    }

    else if (v5)
    {
      processDescription = [(CNRegulatoryLogger *)self processDescription];
      v9 = 138412290;
      v10 = processDescription;
      v7 = "Logging in-process contacts data access event for %@";
      goto LABEL_7;
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (id)privacyAccountingAccessorImpl
{
  cnAuditToken = [(CNRegulatoryLogger *)self cnAuditToken];
  if (cnAuditToken)
  {
    v4 = cnAuditToken;
    assumedIdentity = [(CNRegulatoryLogger *)self assumedIdentity];

    if (assumedIdentity)
    {
      accessorForAuditTokenValidatingAssumedIdentity = [(CNRegulatoryLogger *)self accessorForAuditTokenValidatingAssumedIdentity];
LABEL_4:
      v7 = accessorForAuditTokenValidatingAssumedIdentity;
      goto LABEL_13;
    }
  }

  cnAuditToken2 = [(CNRegulatoryLogger *)self cnAuditToken];

  if (cnAuditToken2)
  {
    v9 = objc_alloc(getPAApplicationClass());
    cnAuditToken3 = [(CNRegulatoryLogger *)self cnAuditToken];
    assumedIdentity3 = cnAuditToken3;
    if (cnAuditToken3)
    {
      [cnAuditToken3 audit_token];
    }

    else
    {
      memset(v17, 0, sizeof(v17));
    }

    v15 = [v9 initWithAuditToken:v17];
  }

  else
  {
    assumedIdentity2 = [(CNRegulatoryLogger *)self assumedIdentity];

    PAApplicationClass = getPAApplicationClass();
    if (!assumedIdentity2)
    {
      accessorForAuditTokenValidatingAssumedIdentity = [(objc_class *)PAApplicationClass applicationForCurrentProcess];
      goto LABEL_4;
    }

    v14 = [PAApplicationClass alloc];
    assumedIdentity3 = [(CNRegulatoryLogger *)self assumedIdentity];
    v15 = [v14 initWithInProcessAssumedIdentity:assumedIdentity3];
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
    cnAuditToken = [(CNRegulatoryLogger *)self cnAuditToken];

    os_log = [(CNRegulatoryLogger *)self os_log];
    v5 = os_log_type_enabled(os_log, OS_LOG_TYPE_INFO);
    if (cnAuditToken)
    {
      if (v5)
      {
        processDescription = [(CNRegulatoryLogger *)self processDescription];
        v9 = 138412290;
        v10 = processDescription;
        v7 = "Logging disabled with out-of-process contacts data access event for %@";
LABEL_7:
        _os_log_impl(&dword_1859F0000, os_log, OS_LOG_TYPE_INFO, v7, &v9, 0xCu);
      }
    }

    else if (v5)
    {
      processDescription = [(CNRegulatoryLogger *)self processDescription];
      v9 = 138412290;
      v10 = processDescription;
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

- (CNRegulatoryLogger)initWithAuditToken:(id)token assumedIdentity:(id)identity logCategory:(const char *)category
{
  tokenCopy = token;
  identityCopy = identity;
  v23.receiver = self;
  v23.super_class = CNRegulatoryLogger;
  v11 = [(CNRegulatoryLogger *)&v23 init];
  if (v11)
  {
    if (category)
    {
      categoryCopy = category;
    }

    else
    {
      categoryCopy = "CNRegulatoryLogger";
    }

    v13 = os_log_create("com.apple.contacts", categoryCopy);
    os_log = v11->_os_log;
    v11->_os_log = v13;

    if (!tokenCopy)
    {
      if (ct_green_tea_logging_enabled())
      {
        v11->_greenTeaLogger = ct_green_tea_logger_create();
      }

      v15 = +[CNUserDefaults standardPreferences];
      v16 = [v15 stringForKey:@"CNGreenTeaDiagnosticsForProcessName"];

      processInfo = [MEMORY[0x1E696AE30] processInfo];
      processName = [processInfo processName];
      v11->_isGreenTeaDiagnosticsEnabled = [v16 isEqualToString:processName];

      v19 = +[CNUserDefaults standardPreferences];
      v11->_greenTeaDiagnosticLogFaultForEventCount = [v19 integerForKey:@"CNGreenTeaDiagnosticsLogFaultForEventCount"];

      v11->_greenTeaDiagnosticEventCounter = 0;
    }

    objc_storeStrong(&v11->_cnAuditToken, token);
    objc_storeStrong(&v11->_assumedIdentity, identity);
    v20 = +[CNUserDefaults standardPreferences];
    v11->_isPrivacyAccountingDiagnosticsEnabled = [v20 userHasOptedInToPreference:@"CNPrivacyAccountingDiagnosticsEnabled"];

    v21 = v11;
  }

  return v11;
}

- (void)logGreenTeaEvent:(id)event
{
  v15 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  if ([(CNRegulatoryLogger *)self greenTeaLogger])
  {
    [(CNRegulatoryLogger *)self greenTeaLogger];
    v5 = getCTGreenTeaOsLogHandle();
    v6 = v5;
    if (v5 && os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v14 = eventCopy;
      _os_log_impl(&dword_1859F0000, v6, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
    }
  }

  if ([(CNRegulatoryLogger *)self isGreenTeaDiagnosticsEnabled])
  {
    eventCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Triggered GreenTea logging event: %@", eventCopy];
    v8 = [(CNRegulatoryLogger *)self greenTeaDiagnosticEventCounter]+ 1;
    [(CNRegulatoryLogger *)self setGreenTeaDiagnosticEventCounter:v8];
    greenTeaDiagnosticLogFaultForEventCount = [(CNRegulatoryLogger *)self greenTeaDiagnosticLogFaultForEventCount];
    os_log = [(CNRegulatoryLogger *)self os_log];
    v11 = os_log;
    if (v8 == greenTeaDiagnosticLogFaultForEventCount)
    {
      if (os_log_type_enabled(os_log, OS_LOG_TYPE_FAULT))
      {
        [(CNRegulatoryLogger *)eventCopy logGreenTeaEvent:v11];
      }
    }

    else if (os_log_type_enabled(os_log, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v14 = eventCopy;
      _os_log_impl(&dword_1859F0000, v11, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)logContactsDataAccessEventWithAssetIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  if ([identifiersCopy count])
  {
    privacyAccountingLogger = [(CNRegulatoryLogger *)self privacyAccountingLogger];
    loggingEnabled = [privacyAccountingLogger loggingEnabled];

    if (loggingEnabled)
    {
      [(CNRegulatoryLogger *)self willLogContactsDataAccessEventWithAssetIdentifiers:identifiersCopy];
      v6 = objc_alloc(getPATCCAccessClass());
      privacyAccountingAccessor = [(CNRegulatoryLogger *)self privacyAccountingAccessor];
      v8 = [v6 initWithAccessor:privacyAccountingAccessor forService:*MEMORY[0x1E69D5500] assetIdentifiers:identifiersCopy];

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
  privacyAccountingLogger = [(CNRegulatoryLogger *)self privacyAccountingLogger];
  loggingEnabled = [privacyAccountingLogger loggingEnabled];

  if (loggingEnabled)
  {
    cnAuditToken = [(CNRegulatoryLogger *)self cnAuditToken];

    if (cnAuditToken)
    {
      [(CNRegulatoryLogger *)self willLogContactPickerAccessEvent];
      v6 = objc_alloc(getPAOutOfProcessPickerAccessClass());
      privacyAccountingAccessor = [(CNRegulatoryLogger *)self privacyAccountingAccessor];
      v8 = [v6 initWithAccessor:privacyAccountingAccessor forType:2];

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
  cnAuditToken = [(CNRegulatoryLogger *)self cnAuditToken];
  v5 = cnAuditToken;
  if (cnAuditToken)
  {
    [cnAuditToken audit_token];
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
    applicationForCurrentProcess = [objc_alloc(getPAApplicationClass()) initWithTCCIdentity:v7];
  }

  else
  {
    os_log = [(CNRegulatoryLogger *)self os_log];
    if (os_log_type_enabled(os_log, OS_LOG_TYPE_ERROR))
    {
      [(CNRegulatoryLogger *)self accessorForAuditTokenValidatingAssumedIdentity];
    }

    applicationForCurrentProcess = [(objc_class *)getPAApplicationClass() applicationForCurrentProcess];
  }

  v10 = applicationForCurrentProcess;

  return v10;
}

- (void)logPrivacyAccountingAccessEvent:(id)event
{
  eventCopy = event;
  privacyAccountingLogger = [(CNRegulatoryLogger *)self privacyAccountingLogger];
  [privacyAccountingLogger log:eventCopy];
}

- (void)willLogContactsDataAccessEventWithAssetIdentifiers:(id)identifiers
{
  v17 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  if ([(CNRegulatoryLogger *)self isPrivacyAccountingDiagnosticsEnabled])
  {
    allObjects = [identifiersCopy allObjects];
    v6 = [allObjects _cn_map:&__block_literal_global_6];

    cnAuditToken = [(CNRegulatoryLogger *)self cnAuditToken];

    os_log = [(CNRegulatoryLogger *)self os_log];
    v9 = os_log_type_enabled(os_log, OS_LOG_TYPE_INFO);
    if (cnAuditToken)
    {
      if (v9)
      {
        processDescription = [(CNRegulatoryLogger *)self processDescription];
        v13 = 138412546;
        v14 = processDescription;
        v15 = 2112;
        v16 = v6;
        v11 = "Logging out-of-process contacts data access event for %@, %@";
LABEL_7:
        _os_log_impl(&dword_1859F0000, os_log, OS_LOG_TYPE_INFO, v11, &v13, 0x16u);
      }
    }

    else if (v9)
    {
      processDescription = [(CNRegulatoryLogger *)self processDescription];
      v13 = 138412546;
      v14 = processDescription;
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
    cnAuditToken = [(CNRegulatoryLogger *)self cnAuditToken];

    os_log = [(CNRegulatoryLogger *)self os_log];
    v5 = os_log_type_enabled(os_log, OS_LOG_TYPE_INFO);
    if (cnAuditToken)
    {
      if (v5)
      {
        processDescription = [(CNRegulatoryLogger *)self processDescription];
        v9 = 138412290;
        v10 = processDescription;
        v7 = "Logging disabled with out-of-process contact picker access event for %@.";
LABEL_7:
        _os_log_impl(&dword_1859F0000, os_log, OS_LOG_TYPE_INFO, v7, &v9, 0xCu);
      }
    }

    else if (v5)
    {
      processDescription = [(CNRegulatoryLogger *)self processDescription];
      v9 = 138412290;
      v10 = processDescription;
      v7 = "Logging disabled when asked to log an in-process contact picker access event for %@";
      goto LABEL_7;
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)willNotLogContactPickerAccessEventAsLoggingInProcess
{
  v9 = *MEMORY[0x1E69E9840];
  processDescription = [self processDescription];
  OUTLINED_FUNCTION_0(&dword_1859F0000, v2, v3, "Unexpected request to log an in-process contact picker access event for %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)willLogContactPickerAccessEvent
{
  v8 = *MEMORY[0x1E69E9840];
  if ([(CNRegulatoryLogger *)self isPrivacyAccountingDiagnosticsEnabled])
  {
    os_log = [(CNRegulatoryLogger *)self os_log];
    if (os_log_type_enabled(os_log, OS_LOG_TYPE_INFO))
    {
      processDescription = [(CNRegulatoryLogger *)self processDescription];
      v6 = 138412290;
      v7 = processDescription;
      _os_log_impl(&dword_1859F0000, os_log, OS_LOG_TYPE_INFO, "Logging out-of-process contact picker access event for %@", &v6, 0xCu);
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
  cnAuditToken = [(CNRegulatoryLogger *)self cnAuditToken];

  if (cnAuditToken)
  {
    cnAuditToken2 = [(CNRegulatoryLogger *)self cnAuditToken];
    processName = [CNAuditTokenUtilities processNameForAuditToken:cnAuditToken2];

    if (processName)
    {
      goto LABEL_8;
    }

    cnAuditToken3 = [(CNRegulatoryLogger *)self cnAuditToken];
    processName = [CNAuditTokenUtilities bundleIdentifierForAuditToken:cnAuditToken3];

    if (processName)
    {
      goto LABEL_8;
    }

    v7 = MEMORY[0x1E696AEC0];
    cnAuditToken4 = [(CNRegulatoryLogger *)self cnAuditToken];
    processIdentifier = [CNAuditTokenUtilities processIdentifierForAuditToken:cnAuditToken4];
  }

  else
  {
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    processName = [processInfo processName];

    if (processName)
    {
      goto LABEL_8;
    }

    v7 = MEMORY[0x1E696AEC0];
    cnAuditToken4 = [MEMORY[0x1E696AE30] processInfo];
    processIdentifier = [cnAuditToken4 processIdentifier];
  }

  processName = [v7 stringWithFormat:@"PID = %d", processIdentifier];

LABEL_8:
  assumedIdentity = [(CNRegulatoryLogger *)self assumedIdentity];

  if (assumedIdentity)
  {
    v12 = MEMORY[0x1E696AEC0];
    assumedIdentity2 = [(CNRegulatoryLogger *)self assumedIdentity];
    v14 = [v12 stringWithFormat:@"%@ [%s]", processName, tcc_identity_get_identifier()];
  }

  else
  {
    v14 = processName;
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
  processDescription = [self processDescription];
  OUTLINED_FUNCTION_0(&dword_1859F0000, v2, v3, "Failed to validate assumed identity for %@, will log as contactsd.", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x1E69E9840];
}

@end