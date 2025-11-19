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
+ (void)setBiometricsContext:(id)a3;
+ (void)setBiometricsContextError:(id)a3;
+ (void)setHasPasscode:(BOOL)a3;
@end

@implementation ICLocalAuthentication

+ (void)refreshBiometricsContext
{
  if (([MEMORY[0x277D361D0] isRunningUnitTests] & 1) == 0)
  {
    v3 = a1;
    objc_sync_enter(v3);
    v4 = objc_alloc_init(MEMORY[0x277CD4790]);
    [v3 setBiometricsContext:v4];

    v5 = [v3 biometricsContext];
    v7 = 0;
    [v5 canEvaluatePolicy:objc_msgSend(v3 error:{"biometricsPolicy"), &v7}];
    v6 = v7;

    [v3 setBiometricsContextError:v6];
    objc_sync_exit(v3);
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
  v2 = a1;
  objc_sync_enter(v2);
  v3 = _biometricsContext;
  if (!_biometricsContext)
  {
    [v2 refreshBiometricsContext];
    v3 = _biometricsContext;
  }

  v4 = v3;
  objc_sync_exit(v2);

  return v4;
}

+ (void)setBiometricsContext:(id)a3
{
  v4 = a3;
  obj = a1;
  objc_sync_enter(obj);
  v5 = _biometricsContext;
  _biometricsContext = v4;

  objc_sync_exit(obj);
}

+ (NSError)biometricsContextError
{
  v2 = a1;
  objc_sync_enter(v2);
  v3 = _biometricsContextError;
  objc_sync_exit(v2);

  return v3;
}

+ (void)setBiometricsContextError:(id)a3
{
  v4 = a3;
  obj = a1;
  objc_sync_enter(obj);
  v5 = _biometricsContextError;
  _biometricsContextError = v4;

  objc_sync_exit(obj);
}

+ (BOOL)biometricsAvailable
{
  v2 = a1;
  objc_sync_enter(v2);
  v3 = [v2 biometricsContext];
  if (v3)
  {
    v4 = [v2 biometricsContextError];
    v5 = [v4 code] != -6;
  }

  else
  {
    v5 = 0;
  }

  objc_sync_exit(v2);
  return v5;
}

+ (BOOL)biometricsEnrolled
{
  v2 = a1;
  objc_sync_enter(v2);
  if ([v2 biometricsAvailable])
  {
    v3 = [v2 biometricsContextError];
    v4 = [v3 code] != -7;
  }

  else
  {
    v4 = 0;
  }

  objc_sync_exit(v2);

  return v4;
}

+ (BOOL)biometricsLockedOut
{
  v2 = a1;
  objc_sync_enter(v2);
  if ([v2 biometricsAvailable])
  {
    v3 = [v2 biometricsContextError];
    v4 = [v3 code] == -8;
  }

  else
  {
    v4 = 0;
  }

  objc_sync_exit(v2);

  return v4;
}

+ (int64_t)biometricsType
{
  v2 = a1;
  objc_sync_enter(v2);
  v3 = [v2 biometricsContext];
  v4 = [v3 biometryType];

  objc_sync_exit(v2);
  return v4;
}

+ (NSData)biometricsPolicyState
{
  v2 = a1;
  objc_sync_enter(v2);
  v3 = [v2 biometricsContext];
  v4 = [v3 evaluatedPolicyDomainState];
  v5 = [v4 copy];

  objc_sync_exit(v2);

  return v5;
}

+ (void)checkBiometricsPolicyState
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_214D51000, a2, OS_LOG_TYPE_ERROR, "Cannot save cached biometrics policy state {error: %@}", &v2, 0xCu);
}

+ (BOOL)hasPasscode
{
  v2 = a1;
  objc_sync_enter(v2);
  v3 = _hasPasscode;
  if (!_hasPasscode)
  {
    [v2 refreshHasPasscode];
    v3 = _hasPasscode;
  }

  v4 = [v3 BOOLValue];
  objc_sync_exit(v2);

  return v4;
}

+ (void)setHasPasscode:(BOOL)a3
{
  v3 = a3;
  obj = a1;
  objc_sync_enter(obj);
  v4 = [MEMORY[0x277CCABB0] numberWithBool:v3];
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