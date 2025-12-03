@interface CLFAppAvailabilityChecker
+ (CLFAppAvailabilityChecker)sharedInstance;
- (BOOL)isAppAvailableForBundleIdentifier:(id)identifier;
- (BOOL)isHiddenByUserForBundleIdentifier:(id)identifier;
- (BOOL)requiresPreflightForBundleIdentifier:(id)identifier;
- (CLFAppAvailabilityChecker)init;
- (id)observeUpdatesWithHandler:(id)handler;
@end

@implementation CLFAppAvailabilityChecker

+ (CLFAppAvailabilityChecker)sharedInstance
{
  if (sharedInstance_onceToken_3 != -1)
  {
    +[CLFAppAvailabilityChecker sharedInstance];
  }

  v3 = sharedInstance_SharedInstance;

  return v3;
}

uint64_t __43__CLFAppAvailabilityChecker_sharedInstance__block_invoke()
{
  sharedInstance_SharedInstance = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

- (CLFAppAvailabilityChecker)init
{
  v9.receiver = self;
  v9.super_class = CLFAppAvailabilityChecker;
  v2 = [(CLFAppAvailabilityChecker *)&v9 init];
  if (v2)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2050000000;
    v3 = getPDCPreflightManagerClass_softClass;
    v14 = getPDCPreflightManagerClass_softClass;
    if (!getPDCPreflightManagerClass_softClass)
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __getPDCPreflightManagerClass_block_invoke;
      v10[3] = &unk_1E8704E78;
      v10[4] = &v11;
      __getPDCPreflightManagerClass_block_invoke(v10);
      v3 = v12[3];
    }

    v4 = v3;
    _Block_object_dispose(&v11, 8);
    v5 = [v3 alloc];
    v6 = [v5 initWithTargetQueue:MEMORY[0x1E69E96A0]];
    privacyPreflightManager = v2->_privacyPreflightManager;
    v2->_privacyPreflightManager = v6;
  }

  return v2;
}

- (BOOL)isAppAvailableForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([(CLFAppAvailabilityChecker *)self requiresPreflightForBundleIdentifier:identifierCopy])
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = ![(CLFAppAvailabilityChecker *)self isHiddenByUserForBundleIdentifier:identifierCopy];
  }

  return v5;
}

- (BOOL)requiresPreflightForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2050000000;
  v5 = getLSApplicationRecordClass_softClass;
  v19 = getLSApplicationRecordClass_softClass;
  if (!getLSApplicationRecordClass_softClass)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __getLSApplicationRecordClass_block_invoke;
    v15[3] = &unk_1E8704E78;
    v15[4] = &v16;
    __getLSApplicationRecordClass_block_invoke(v15);
    v5 = v17[3];
  }

  v6 = v5;
  _Block_object_dispose(&v16, 8);
  v7 = [v5 alloc];
  v8 = [(CLFAppAvailabilityChecker *)self standardBundleIdentifierForClarityBundleIdentifier:identifierCopy];
  v14 = 0;
  v9 = [v7 initWithBundleIdentifier:v8 allowPlaceholder:0 error:&v14];
  v10 = v14;

  if (v10)
  {
    privacyPreflightManager = +[CLFLog commonLog];
    if (os_log_type_enabled(privacyPreflightManager, OS_LOG_TYPE_ERROR))
    {
      [(CLFAppAvailabilityChecker *)identifierCopy requiresPreflightForBundleIdentifier:v10, privacyPreflightManager];
    }
  }

  else
  {
    if (v9)
    {
      privacyPreflightManager = [(CLFAppAvailabilityChecker *)self privacyPreflightManager];
      v12 = [privacyPreflightManager requiresPreflightForApplicationRecord:v9];
      goto LABEL_9;
    }

    privacyPreflightManager = +[CLFLog commonLog];
    if (os_log_type_enabled(privacyPreflightManager, OS_LOG_TYPE_ERROR))
    {
      [(CLFAppAvailabilityChecker *)identifierCopy requiresPreflightForBundleIdentifier:privacyPreflightManager];
    }
  }

  v12 = 0;
LABEL_9:

  return v12;
}

- (BOOL)isHiddenByUserForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2050000000;
  v5 = getAPApplicationClass_softClass;
  v15 = getAPApplicationClass_softClass;
  if (!getAPApplicationClass_softClass)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __getAPApplicationClass_block_invoke;
    v11[3] = &unk_1E8704E78;
    v11[4] = &v12;
    __getAPApplicationClass_block_invoke(v11);
    v5 = v13[3];
  }

  v6 = v5;
  _Block_object_dispose(&v12, 8);
  v7 = [(CLFAppAvailabilityChecker *)self standardBundleIdentifierForClarityBundleIdentifier:identifierCopy];
  v8 = [v5 applicationWithBundleIdentifier:v7];
  isHidden = [v8 isHidden];

  return isHidden;
}

- (id)observeUpdatesWithHandler:(id)handler
{
  handlerCopy = handler;
  v4 = [[_CLFAppAvailabilityObserver alloc] initWithHandler:handlerCopy];

  return v4;
}

- (void)requiresPreflightForBundleIdentifier:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_1E115B000, log, OS_LOG_TYPE_ERROR, "Error getting application record for app with identifier %@: %@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)requiresPreflightForBundleIdentifier:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1E115B000, a2, OS_LOG_TYPE_ERROR, "Unable to look up record for application with bundle identifier %@, but no error was provided.", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end