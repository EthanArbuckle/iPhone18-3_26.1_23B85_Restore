@interface CADDefaultPermissionValidator
- (BOOL)_valueForBooleanEntitlement:(id)entitlement defaultValue:(BOOL)value;
- (BOOL)_valueForStringEntitlement:(id)entitlement matchesString:(id)string;
- (BOOL)canAccessProcedureAlarms;
- (BOOL)hasCalendarTCCBypassEntitlement;
- (BOOL)hasCalendarToolEntitlement;
- (BOOL)internalAccessLevelGranted;
- (BOOL)shouldTrustClientEnforcedManagedConfigurationAccess;
- (BOOL)storageManagementAccessGranted;
- (CADDefaultPermissionValidator)initWithClientIdentity:(id)identity;
- (CADDefaultPermissionValidator)initWithClientIdentity:(id)identity tccPermissionChecker:(id)checker;
- (ClientIdentity)identity;
- (id)_valueForEntitlement:(id)entitlement loadBlock:(id)block;
- (int)eventAccessLevel;
- (void)_loadAccessPermissionsIfNeeded;
- (void)dealloc;
@end

@implementation CADDefaultPermissionValidator

- (int)eventAccessLevel
{
  [(CADDefaultPermissionValidator *)self _loadAccessPermissionsIfNeeded];
  eventAuthorization = self->_eventAuthorization;

  return CADEventAccessTypeFromAuthStatus(eventAuthorization);
}

- (void)_loadAccessPermissionsIfNeeded
{
  if (!self->_allowedEntityTypesValid)
  {
    v3 = objc_alloc_init(MEMORY[0x277CF74D0]);
    dataIsAccessible = [v3 dataIsAccessible];

    if (dataIsAccessible)
    {
      if ([(CADDefaultPermissionValidator *)self hasSyncClientEntitlement]|| [(CADDefaultPermissionValidator *)self isFirstPartyCalendarApp])
      {
        *&self->_eventAuthorization = vdupq_n_s64(3uLL);
      }

      else
      {
        eventAuthorization = [(CADTCCPermissionChecker *)self->_tccPermissionChecker eventAuthorization];
        self->_eventAuthorization = CalAuthorizationStatusFromTCCAuthRight(*MEMORY[0x277D6C118], eventAuthorization);
        remindersAuthorization = [(CADTCCPermissionChecker *)self->_tccPermissionChecker remindersAuthorization];
        self->_remindersAuthorization = CalAuthorizationStatusFromTCCAuthRight(*MEMORY[0x277D6C1E0], remindersAuthorization);
      }
    }

    else
    {
      self->_eventAuthorization = 0;
      self->_remindersAuthorization = 0;
    }

    self->_allowedEntityTypesValid = 1;
  }
}

- (BOOL)hasCalendarTCCBypassEntitlement
{
  v3 = [(CADDefaultPermissionValidator *)self _valueForEntitlement:@"com.apple.private.tcc.allow" loadBlock:&__block_literal_global_30];
  if ([v3 BOOLValue])
  {
    bOOLValue = 1;
  }

  else
  {
    v5 = [(CADDefaultPermissionValidator *)self _valueForEntitlement:@"com.apple.private.tcc.allow.overridable" loadBlock:&__block_literal_global_59];
    bOOLValue = [v5 BOOLValue];
  }

  return bOOLValue;
}

id __64__CADDefaultPermissionValidator_hasCalendarTCCBypassEntitlement__block_invoke_2(int a1, void *cf)
{
  v22 = *MEMORY[0x277D85DE8];
  if (cf && (v3 = CFGetTypeID(cf), v3 == CFArrayGetTypeID()))
  {
    v4 = cf;
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v18;
    v10 = MEMORY[0x277D6C118];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = CFGetTypeID(v12);
        if (v13 == CFStringGetTypeID())
        {
          v8 |= CFStringCompare(v12, *v10, 0) == kCFCompareEqualTo;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  v14 = [MEMORY[0x277CCABB0] numberWithBool:{v8 & 1, v17}];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

id __64__CADDefaultPermissionValidator_hasCalendarTCCBypassEntitlement__block_invoke(int a1, void *cf)
{
  v22 = *MEMORY[0x277D85DE8];
  if (cf && (v3 = CFGetTypeID(cf), v3 == CFArrayGetTypeID()))
  {
    v4 = cf;
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v18;
    v10 = MEMORY[0x277D6C118];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = CFGetTypeID(v12);
        if (v13 == CFStringGetTypeID())
        {
          v8 |= CFStringCompare(v12, *v10, 0) == kCFCompareEqualTo;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  v14 = [MEMORY[0x277CCABB0] numberWithBool:{v8 & 1, v17}];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)dealloc
{
  task = self->_task;
  if (task)
  {
    CFRelease(task);
    self->_task = 0;
  }

  v4.receiver = self;
  v4.super_class = CADDefaultPermissionValidator;
  [(CADDefaultPermissionValidator *)&v4 dealloc];
}

- (BOOL)shouldTrustClientEnforcedManagedConfigurationAccess
{
  WeakRetained = objc_loadWeakRetained(&self->_identity);
  applicationIdentifier = [WeakRetained applicationIdentifier];

  if (shouldTrustClientEnforcedManagedConfigurationAccess_onceToken != -1)
  {
    [CADDefaultPermissionValidator shouldTrustClientEnforcedManagedConfigurationAccess];
  }

  v4 = [shouldTrustClientEnforcedManagedConfigurationAccess_whitelistedBundleIDs containsObject:applicationIdentifier];

  return v4;
}

- (CADDefaultPermissionValidator)initWithClientIdentity:(id)identity
{
  identityCopy = identity;
  v5 = [CADAuditTokenTCCPermissionChecker alloc];
  if (identityCopy)
  {
    [identityCopy auditToken];
  }

  else
  {
    memset(v9, 0, sizeof(v9));
  }

  v6 = [(CADAuditTokenTCCPermissionChecker *)v5 initWithAuditToken:v9];
  v7 = [(CADDefaultPermissionValidator *)self initWithClientIdentity:identityCopy tccPermissionChecker:v6];

  return v7;
}

- (CADDefaultPermissionValidator)initWithClientIdentity:(id)identity tccPermissionChecker:(id)checker
{
  identityCopy = identity;
  checkerCopy = checker;
  v11.receiver = self;
  v11.super_class = CADDefaultPermissionValidator;
  v8 = [(CADDefaultPermissionValidator *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_lock._os_unfair_lock_opaque = 0;
    objc_storeWeak(&v8->_identity, identityCopy);
    objc_storeStrong(&v9->_tccPermissionChecker, checker);
  }

  return v9;
}

- (BOOL)canAccessProcedureAlarms
{
  isAutomatorApp = [(CADDefaultPermissionValidator *)self isAutomatorApp];
  isShortcutsApp = [(CADDefaultPermissionValidator *)self isShortcutsApp];
  if (isAutomatorApp || isShortcutsApp || [(CADDefaultPermissionValidator *)self isFirstPartyCalendarApp]|| [(CADDefaultPermissionValidator *)self isCalendarDaemon]|| [(CADDefaultPermissionValidator *)self testingAccessLevelGranted])
  {
    return 1;
  }

  return [(CADDefaultPermissionValidator *)self hasSyncClientEntitlement];
}

- (BOOL)internalAccessLevelGranted
{
  has_internal_content = os_variant_has_internal_content();
  if (has_internal_content)
  {

    LOBYTE(has_internal_content) = [(CADDefaultPermissionValidator *)self _valueForBooleanEntitlement:@"com.apple.private.calendar.daemon.access-level.internal" defaultValue:0];
  }

  return has_internal_content;
}

- (BOOL)storageManagementAccessGranted
{
  v3 = [(CADDefaultPermissionValidator *)self _valueForBooleanEntitlement:@"com.apple.private.calendar.storagemanagement" defaultValue:0];
  WeakRetained = objc_loadWeakRetained(&self->_identity);
  applicationIdentifier = [WeakRetained applicationIdentifier];
  v6 = [applicationIdentifier isEqualToString:@"com.apple.Preferences"];

  return (v3 | v6) & 1;
}

- (BOOL)hasCalendarToolEntitlement
{
  has_internal_content = os_variant_has_internal_content();
  if (has_internal_content)
  {

    LOBYTE(has_internal_content) = [(CADDefaultPermissionValidator *)self _valueForBooleanEntitlement:@"com.apple.private.calendar.iamcalendar_tool" defaultValue:0];
  }

  return has_internal_content;
}

uint64_t __84__CADDefaultPermissionValidator_shouldTrustClientEnforcedManagedConfigurationAccess__block_invoke()
{
  v0 = [MEMORY[0x277CBEB98] setWithObjects:{@"com.apple.datadetectors.DDActionsService", @"com.apple.mobilemail", @"com.apple.mobilesafari", @"com.apple.Bridge", @"com.apple.calendar.EventKitUIRemoteUIExtension", 0}];
  shouldTrustClientEnforcedManagedConfigurationAccess_whitelistedBundleIDs = v0;

  return MEMORY[0x2821F96F8](v0);
}

- (id)_valueForEntitlement:(id)entitlement loadBlock:(id)block
{
  v19 = *MEMORY[0x277D85DE8];
  entitlementCopy = entitlement;
  blockCopy = block;
  os_unfair_lock_lock(&self->_lock);
  task = self->_task;
  if (!task)
  {
    v9 = *MEMORY[0x277CBECE8];
    WeakRetained = objc_loadWeakRetained(&self->_identity);
    v11 = WeakRetained;
    if (WeakRetained)
    {
      [WeakRetained auditToken];
    }

    else
    {
      memset(&token, 0, sizeof(token));
    }

    self->_task = SecTaskCreateWithAuditToken(v9, &token);

    task = self->_task;
  }

  v12 = 0;
  error = 0;
  if (entitlementCopy && task)
  {
    v12 = SecTaskCopyValueForEntitlement(task, entitlementCopy, &error);
  }

  os_unfair_lock_unlock(&self->_lock);
  if (!v12)
  {
    if (error)
    {
      v13 = CADLogHandle;
      if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
      {
        token.val[0] = 138543618;
        *&token.val[1] = entitlementCopy;
        LOWORD(token.val[3]) = 2112;
        *(&token.val[3] + 2) = error;
        _os_log_impl(&dword_22430B000, v13, OS_LOG_TYPE_ERROR, "CADPermissionValidator: An error occurred while checking for entitlement %{public}@. Error: %@", &token, 0x16u);
      }
    }
  }

  v14 = blockCopy[2](blockCopy, v12);
  if (v12)
  {
    CFRelease(v12);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (BOOL)_valueForBooleanEntitlement:(id)entitlement defaultValue:(BOOL)value
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __74__CADDefaultPermissionValidator__valueForBooleanEntitlement_defaultValue___block_invoke;
  v7[3] = &__block_descriptor_33_e9__16__0_v8l;
  valueCopy = value;
  v4 = [(CADDefaultPermissionValidator *)self _valueForEntitlement:entitlement loadBlock:v7];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

uint64_t __74__CADDefaultPermissionValidator__valueForBooleanEntitlement_defaultValue___block_invoke(uint64_t a1, CFTypeRef cf)
{
  if (cf)
  {
    v4 = CFGetTypeID(cf);
    v5 = v4 == CFBooleanGetTypeID() && CFBooleanGetValue(cf) != 0;
    v2 = vars8;
  }

  else
  {
    v5 = *(a1 + 32);
  }

  v6 = MEMORY[0x277CCABB0];

  return [v6 numberWithBool:v5 & 1];
}

- (BOOL)_valueForStringEntitlement:(id)entitlement matchesString:(id)string
{
  stringCopy = string;
  v7 = [(CADDefaultPermissionValidator *)self _valueForEntitlement:entitlement loadBlock:&__block_literal_global_99_0];
  LOBYTE(self) = [stringCopy isEqual:v7];

  return self;
}

id __74__CADDefaultPermissionValidator__valueForStringEntitlement_matchesString___block_invoke(int a1, void *cf)
{
  if (cf)
  {
    v4 = CFGetTypeID(cf);
    if (v4 == CFStringGetTypeID())
    {
      v5 = cf;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (ClientIdentity)identity
{
  WeakRetained = objc_loadWeakRetained(&self->_identity);

  return WeakRetained;
}

@end