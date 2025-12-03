@interface ICLocalAuthentication
+ (BOOL)biometricsAvailable;
+ (BOOL)biometricsEnrolled;
+ (BOOL)biometricsLockedOut;
+ (BOOL)hasPasscode;
+ (LAContext)biometricsContext;
+ (NSData)biometricsPolicyState;
+ (NSError)biometricsContextError;
+ (int64_t)biometricsPolicy;
+ (int64_t)biometricsType;
+ (void)checkBiometricsPolicyState;
+ (void)refreshBiometricsContext;
+ (void)refreshHasPasscode;
+ (void)setBiometricsContext:(id)context;
+ (void)setBiometricsContextError:(id)error;
+ (void)setHasPasscode:(BOOL)passcode;
@end

@implementation ICLocalAuthentication

+ (void)refreshBiometricsContext
{
  if (([MEMORY[0x277D361D0] isRunningUnitTests] & 1) == 0)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v4 = objc_alloc_init(MEMORY[0x277CD4790]);
    [selfCopy setBiometricsContext:v4];

    biometricsContext = [selfCopy biometricsContext];
    v7 = 0;
    [biometricsContext canEvaluatePolicy:objc_msgSend(selfCopy error:{"biometricsPolicy"), &v7}];
    v6 = v7;

    [selfCopy setBiometricsContextError:v6];
    objc_sync_exit(selfCopy);
  }
}

+ (int64_t)biometricsPolicy
{
  if (ICInternalSettingsIsOnenessUnlockEnabled())
  {
    return 4;
  }

  else
  {
    return 1;
  }
}

+ (LAContext)biometricsContext
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = _biometricsContext;
  if (!_biometricsContext)
  {
    [selfCopy refreshBiometricsContext];
    v3 = _biometricsContext;
  }

  v4 = v3;
  objc_sync_exit(selfCopy);

  return v4;
}

+ (void)setBiometricsContext:(id)context
{
  contextCopy = context;
  obj = self;
  objc_sync_enter(obj);
  v5 = _biometricsContext;
  _biometricsContext = contextCopy;

  objc_sync_exit(obj);
}

+ (NSError)biometricsContextError
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = _biometricsContextError;
  objc_sync_exit(selfCopy);

  return v3;
}

+ (void)setBiometricsContextError:(id)error
{
  errorCopy = error;
  obj = self;
  objc_sync_enter(obj);
  v5 = _biometricsContextError;
  _biometricsContextError = errorCopy;

  objc_sync_exit(obj);
}

+ (BOOL)biometricsAvailable
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  biometricsContext = [selfCopy biometricsContext];
  if (biometricsContext)
  {
    biometricsContextError = [selfCopy biometricsContextError];
    v5 = [biometricsContextError code] != -6;
  }

  else
  {
    v5 = 0;
  }

  objc_sync_exit(selfCopy);
  return v5;
}

+ (BOOL)biometricsEnrolled
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([selfCopy biometricsAvailable])
  {
    biometricsContextError = [selfCopy biometricsContextError];
    v4 = [biometricsContextError code] != -7;
  }

  else
  {
    v4 = 0;
  }

  objc_sync_exit(selfCopy);

  return v4;
}

+ (BOOL)biometricsLockedOut
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([selfCopy biometricsAvailable])
  {
    biometricsContextError = [selfCopy biometricsContextError];
    v4 = [biometricsContextError code] == -8;
  }

  else
  {
    v4 = 0;
  }

  objc_sync_exit(selfCopy);

  return v4;
}

+ (int64_t)biometricsType
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  biometricsContext = [selfCopy biometricsContext];
  biometryType = [biometricsContext biometryType];

  objc_sync_exit(selfCopy);
  return biometryType;
}

+ (NSData)biometricsPolicyState
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  biometricsContext = [selfCopy biometricsContext];
  evaluatedPolicyDomainState = [biometricsContext evaluatedPolicyDomainState];
  v5 = [evaluatedPolicyDomainState copy];

  objc_sync_exit(selfCopy);

  return v5;
}

+ (void)checkBiometricsPolicyState
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_214D51000, a2, OS_LOG_TYPE_ERROR, "Cannot save cached biometrics policy state {error: %@}", &v2, 0xCu);
}

+ (BOOL)hasPasscode
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = _hasPasscode;
  if (!_hasPasscode)
  {
    [selfCopy refreshHasPasscode];
    v3 = _hasPasscode;
  }

  bOOLValue = [v3 BOOLValue];
  objc_sync_exit(selfCopy);

  return bOOLValue;
}

+ (void)setHasPasscode:(BOOL)passcode
{
  passcodeCopy = passcode;
  obj = self;
  objc_sync_enter(obj);
  v4 = [MEMORY[0x277CCABB0] numberWithBool:passcodeCopy];
  v5 = _hasPasscode;
  _hasPasscode = v4;

  objc_sync_exit(obj);
}

+ (void)refreshHasPasscode
{
  if (([MEMORY[0x277D361D0] isRunningUnitTests] & 1) == 0)
  {
    v4 = objc_alloc_init(MEMORY[0x277CD4790]);
    v2 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v4, "canEvaluatePolicy:error:", 2, 0)}];
    v3 = _hasPasscode;
    _hasPasscode = v2;
  }
}

@end