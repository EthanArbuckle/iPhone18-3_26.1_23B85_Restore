@interface FBSSignatureValidationService
- (FBSSignatureValidationService)init;
- (id)_initWithMISInterfaceWrapper:(id)a3;
- (unint64_t)_validateApp:(id)a3;
- (unint64_t)_validateAppStoreApp:(id)a3;
- (unint64_t)_validateNonAppStoreApp:(id)a3;
- (unint64_t)trustStateForApplication:(id)a3;
- (unsigned)signatureVersionForApp:(id)a3;
- (void)_logTrustState:(unint64_t)a3 forApp:(id)a4 reason:(id)a5;
@end

@implementation FBSSignatureValidationService

- (FBSSignatureValidationService)init
{
  v3 = objc_opt_new();
  v4 = [(FBSSignatureValidationService *)self _initWithMISInterfaceWrapper:v3];

  return v4;
}

- (id)_initWithMISInterfaceWrapper:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = FBSSignatureValidationService;
  v6 = [(FBSSignatureValidationService *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_misInterfaceWrapper, a3);
  }

  return v7;
}

- (unint64_t)trustStateForApplication:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(FBSSignatureValidationService *)a2 trustStateForApplication:?];
  }

  v6 = v5;
  kdebug_trace();
  if ([v6 type] >= 2)
  {
    v7 = [(FBSSignatureValidationService *)self _validateApp:v6];
  }

  else
  {
    v7 = 8;
  }

  kdebug_trace();

  return v7;
}

- (unsigned)signatureVersionForApp:(id)a3
{
  v7 = 0;
  misInterfaceWrapper = self->_misInterfaceWrapper;
  v4 = [a3 bundleURL];
  v5 = [v4 path];
  [(_FBSMISInterfaceWrapper *)misInterfaceWrapper signatureVersion:v5 version:&v7];

  return v7;
}

- (unint64_t)_validateAppStoreApp:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(getMISLaunchWarningDatabaseClass());
  v6 = [v4 executableURL];
  v13 = 0;
  v7 = [v5 queryForExecutableURL:v6 withError:&v13];
  v8 = v13;
  if (!v7)
  {
    v11 = FBLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(FBSSignatureValidationService *)v6 _validateAppStoreApp:v8, v11];
    }

    goto LABEL_10;
  }

  if (![v7 warningState] || (objc_msgSend(v7, "isUserOverridden") & 1) != 0)
  {
LABEL_10:
    v10 = 8;
    goto LABEL_11;
  }

  v9 = FBLogCommon();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v15 = v6;
    _os_log_impl(&dword_1A2DBB000, v9, OS_LOG_TYPE_DEFAULT, "Blocking bundle with outstanding launch warning: %{public}@", buf, 0xCu);
  }

  v10 = 2;
  [(FBSSignatureValidationService *)self _logTrustState:2 forApp:v4 reason:@"Deny-Listed"];
LABEL_11:

  return v10;
}

- (unint64_t)_validateNonAppStoreApp:(id)a3
{
  v4 = a3;
  if (self->_authoritative)
  {
    v5 = getkMISValidationOptionAuthoritativeLaunch();
  }

  else
  {
    v5 = getkMISValidationOptionUnauthoritativeLaunch();
  }

  v6 = v5;
  v7 = [MEMORY[0x1E695DF90] dictionaryWithObject:MEMORY[0x1E695E118] forKey:v6];
  v8 = [v4 executableURL];
  v9 = [v8 path];

  if (v9)
  {
    [v7 setObject:v9 forKey:getkMISValidationOptionHintMainExecutablePath()];
  }

  misInterfaceWrapper = self->_misInterfaceWrapper;
  v11 = [v4 bundleURL];
  v12 = [v11 path];
  v13 = [(_FBSMISInterfaceWrapper *)misInterfaceWrapper validateSignatureForPath:v12 options:v7 userInfo:0];

  if (v13)
  {
    v22 = 0;
    v14 = @"Provisioning Profile Not Found";
    switch(v13)
    {
      case 0xE8008009:
      case 0xE800800E:
      case 0xE800800F:
      case 0xE8008012:
      case 0xE8008013:
      case 0xE8008014:
      case 0xE8008017:
      case 0xE8008018:
      case 0xE8008019:
      case 0xE800801A:
      case 0xE800801C:
      case 0xE8008021:
      case 0xE8008027:
        v22 = soft_MISCopyErrorStringForErrorCode(v13);
        v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error - %d: reason: %@", v13, v22];
        v16 = 1;
        [(FBSSignatureValidationService *)self _logTrustState:1 forApp:v4 reason:v15];
        v17 = 0;
        goto LABEL_9;
      case 0xE8008011:
        v16 = 3;
        [(FBSSignatureValidationService *)self _logTrustState:3 forApp:v4 reason:@"Provisioning Profile Expired"];
        goto LABEL_21;
      case 0xE8008015:
      case 0xE800801E:
        goto LABEL_19;
      case 0xE8008016:
        v14 = @"Profile contains entitlements it's not allowed to have (possibly because we're missing a provisioning profile?)";
LABEL_19:
        v16 = 4;
        [(FBSSignatureValidationService *)self _logTrustState:4 forApp:v4 reason:v14];
        goto LABEL_21;
      case 0xE800801D:
        v16 = 2;
        [(FBSSignatureValidationService *)self _logTrustState:2 forApp:v4 reason:@"Deny-Listed"];
        goto LABEL_21;
      case 0xE8008024:
        v16 = 5;
        [(FBSSignatureValidationService *)self _logTrustState:5 forApp:v4 reason:@"Profile revoked by originator (banned)"];
        goto LABEL_21;
      case 0xE8008025:
        v16 = 7;
        [(FBSSignatureValidationService *)self _logTrustState:7 forApp:v4 reason:@"User hasn't trusted the profile."];
        goto LABEL_21;
      case 0xE8008026:
        v16 = 6;
        [(FBSSignatureValidationService *)self _logTrustState:6 forApp:v4 reason:@"Requires Network Validation"];
        goto LABEL_21;
      case 0xE8008029:
        v16 = 9;
        [(FBSSignatureValidationService *)self _logTrustState:9 forApp:v4 reason:@"Signature version no longer supported"];
        goto LABEL_21;
      case 0xE800802B:
        v16 = 10;
        [(FBSSignatureValidationService *)self _logTrustState:10 forApp:v4 reason:@"Developer mode is required to run this application"];
LABEL_21:
        v17 = 0;
        break;
      default:
        v22 = soft_MISCopyErrorStringForErrorCode(v13);
        v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error - %d: reason: %@", v13, v22];
        [(FBSSignatureValidationService *)self _logTrustState:0 forApp:v4 reason:v15];
        v16 = 0;
        v17 = 1;
LABEL_9:

        break;
    }

    if (([v4 isProvisioningProfileValidated] & ((v13 == -402620378) | v17)) == 1)
    {
      if (_validateNonAppStoreApp__onceToken != -1)
      {
        [FBSSignatureValidationService _validateNonAppStoreApp:];
      }

      v18 = _validateNonAppStoreApp__queue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __57__FBSSignatureValidationService__validateNonAppStoreApp___block_invoke_2;
      block[3] = &unk_1E76BCD60;
      block[4] = self;
      v21 = v4;
      dispatch_async(v18, block);
    }

    fbs_release(&v22);
  }

  else
  {
    v16 = 8;
  }

  return v16;
}

void __57__FBSSignatureValidationService__validateNonAppStoreApp___block_invoke_2(uint64_t a1)
{
  v9[3] = *MEMORY[0x1E69E9840];
  v8[0] = getkMISValidationOptionOnlineAuthorization();
  v2 = MEMORY[0x1E695E118];
  v9[0] = MEMORY[0x1E695E118];
  v8[1] = getkMISValidationOptionOnlineCheckType();
  v9[1] = &unk_1F15AE928;
  v8[2] = getkMISValidationOptionUnauthoritativeLaunch();
  v9[2] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];
  v4 = *(a1 + 40);
  v5 = *(*(a1 + 32) + 8);
  v6 = [v4 bundleURL];
  v7 = [v6 path];
  [v5 validateSignatureForPath:v7 options:v3 userInfo:0];
}

- (unint64_t)_validateApp:(id)a3
{
  v4 = a3;
  if ([v4 isProvisioningProfileValidated])
  {
    v5 = [(FBSSignatureValidationService *)self _validateNonAppStoreApp:v4];
  }

  else
  {
    v5 = [(FBSSignatureValidationService *)self _validateAppStoreApp:v4];
  }

  v6 = v5;

  return v6;
}

- (void)_logTrustState:(unint64_t)a3 forApp:(id)a4 reason:(id)a5
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v9 = FBLogCommon();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v7 bundleIdentifier];
    v11 = NSStringFromFBSApplicationTrustState(a3);
    v12 = 138543874;
    v13 = v10;
    v14 = 2114;
    v15 = v11;
    v16 = 2114;
    v17 = v8;
    _os_log_impl(&dword_1A2DBB000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@ - signature state: %{public}@, reason: %{public}@", &v12, 0x20u);
  }
}

- (void)trustStateForApplication:(const char *)a1 .cold.1(const char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"appInfo"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"FBSSignatureValidationService.m";
    v16 = 1024;
    v17 = 99;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_validateAppStoreApp:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_1A2DBB000, log, OS_LOG_TYPE_ERROR, "Error checking for launch warning mark: %{public}@, %{public}@", &v3, 0x16u);
}

@end