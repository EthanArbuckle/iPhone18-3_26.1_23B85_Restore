@interface LACPreboardAMFIHelper
+ (BOOL)installProfileWithUUID:(id)a3 signature:(id)a4 error:(id *)a5;
+ (id)getUPPProfile;
+ (int64_t)_useCaseFromBootMode:(unsigned int)a3;
+ (int64_t)armedUseCase;
+ (int64_t)useCase;
+ (void)completeCurrentBootModeWithSuccess:(BOOL)a3;
+ (void)getUPPProfile;
@end

@implementation LACPreboardAMFIHelper

+ (int64_t)useCase
{
  v3 = [a1 _securityBootMode];

  return [a1 _useCaseFromBootMode:v3];
}

+ (int64_t)armedUseCase
{
  v3 = [a1 _armedSecurityBootMode];

  return [a1 _useCaseFromBootMode:v3];
}

+ (void)completeCurrentBootModeWithSuccess:(BOOL)a3
{
  v3 = a3;
  v19 = *MEMORY[0x1E69E9840];
  v4 = [a1 _securityBootMode];
  v5 = v4;
  if (v4 == 2)
  {
    v11 = AMFIDeveloperModeCommit();
    v7 = LACLogPreboard();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 67109376;
      v16 = v3;
      v17 = 1024;
      v18 = v11;
      v8 = "Committing developer mode value: %u with result: %u";
      v9 = v7;
      v10 = 14;
      goto LABEL_8;
    }

LABEL_9:

    goto LABEL_10;
  }

  if (v4 == 3 && !v3)
  {
    v6 = AMFIProfileCommitProfile();
    v7 = LACLogPreboard();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 67109120;
      v16 = v6;
      v8 = "Committing UPP profile value: nil with result: %u";
      v9 = v7;
      v10 = 8;
LABEL_8:
      _os_log_impl(&dword_1B0233000, v9, OS_LOG_TYPE_DEFAULT, v8, &v15, v10);
      goto LABEL_9;
    }

    goto LABEL_9;
  }

LABEL_10:
  v12 = AMFICompleteSecurityBootMode();
  v13 = LACLogPreboard();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 67109376;
    v16 = v5;
    v17 = 1024;
    v18 = v12;
    _os_log_impl(&dword_1B0233000, v13, OS_LOG_TYPE_DEFAULT, "Completing boot mode: %u with result: %u", &v15, 0xEu);
  }

  v14 = *MEMORY[0x1E69E9840];
}

+ (id)getUPPProfile
{
  ScheduledProfile = AMFIProfileGetScheduledProfile();
  if (ScheduledProfile)
  {
    v3 = LACLogPreboard();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      +[(LACPreboardAMFIHelper *)ScheduledProfile];
    }

    v4 = 0;
  }

  else
  {
    v4 = [[LACPreboardUPPProfile alloc] initWithUUID:0 teamID:0 teamName:0];
  }

  return v4;
}

+ (BOOL)installProfileWithUUID:(id)a3 signature:(id)a4 error:(id *)a5
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [v8 copy];
  v10 = AMFIProfileSetTrustWithOptions();
  v11 = LACLogDefault();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 67109120;
    v19 = v10;
    _os_log_impl(&dword_1B0233000, v11, OS_LOG_TYPE_DEFAULT, "AMFIProfileSetTrustWithOptions returned: %d", &v18, 8u);
  }

  if (v10)
  {
    if (!a5)
    {
      v15 = 0;
      goto LABEL_13;
    }

    v12 = [LACError errorWithCode:-1000 debugDescription:@"Unable to set profile trust"];
    goto LABEL_11;
  }

  v13 = AMFIProfileCommitProfile();
  v14 = LACLogDefault();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 67109120;
    v19 = v13;
    _os_log_impl(&dword_1B0233000, v14, OS_LOG_TYPE_DEFAULT, "AMFIProfileCommitProfile returned: %d", &v18, 8u);
  }

  v15 = v13 == 0;
  if (a5 && v13)
  {
    v12 = [LACError errorWithCode:-1000 debugDescription:@"Unable to commit profile"];
LABEL_11:
    v15 = 0;
    *a5 = v12;
  }

LABEL_13:

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

+ (int64_t)_useCaseFromBootMode:(unsigned int)a3
{
  v3 = &LACPreboardUseCaseUPP;
  v4 = &LACPreboardUseCaseDeveloperMode;
  if (a3 != 2)
  {
    v4 = &LACPreboardUseCaseUnknown;
  }

  if (a3 != 3)
  {
    v3 = v4;
  }

  return *v3;
}

+ (void)getUPPProfile
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_1B0233000, a2, OS_LOG_TYPE_ERROR, "AMFIProfileGetScheduledProfile returned error code: %d", v3, 8u);
  v2 = *MEMORY[0x1E69E9840];
}

@end