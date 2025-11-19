@interface MFError
+ (MFError)errorWithDomain:(id)a3 code:(int64_t)a4 localizedDescription:(id)a5;
+ (MFError)errorWithDomain:(id)a3 code:(int64_t)a4 localizedDescription:(id)a5 title:(id)a6 userInfo:(id)a7;
+ (MFError)errorWithException:(id)a3;
- (MFError)initWithDomain:(id)a3 code:(int64_t)a4 userInfo:(id)a5;
- (id)localizedDescription;
- (id)mf_moreInfo;
- (id)mf_shortDescription;
- (id)recoveryAttempter;
- (id)userInfo;
- (void)useGenericDescription:(id)a3;
@end

@implementation MFError

- (MFError)initWithDomain:(id)a3 code:(int64_t)a4 userInfo:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (initWithDomain_code_userInfo__onceToken != -1)
  {
    [MFError initWithDomain:code:userInfo:];
  }

  v13.receiver = self;
  v13.super_class = MFError;
  v10 = [(MFError *)&v13 initWithDomain:v8 code:a4 userInfo:v9];
  v11 = v10;
  if (v10)
  {
    v10->_moreUserInfoLock._os_unfair_lock_opaque = 0;
  }

  return v11;
}

__CFString *__40__MFError_initWithDomain_code_userInfo___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1028) >= 0x21)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown Error Code %ld", a2];
  }

  else
  {
    v3 = off_1E7AA5628[a2 - 1028];
  }

  return v3;
}

+ (MFError)errorWithDomain:(id)a3 code:(int64_t)a4 localizedDescription:(id)a5
{
  v5 = [a1 errorWithDomain:a3 code:a4 localizedDescription:a5 title:0 userInfo:0];

  return v5;
}

+ (MFError)errorWithDomain:(id)a3 code:(int64_t)a4 localizedDescription:(id)a5 title:(id)a6 userInfo:(id)a7
{
  v27 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = v15;
  if (v12)
  {
    if (v13 | v14)
    {
      if (v15)
      {
        v18 = [v15 mutableCopy];
      }

      else
      {
        v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
      }

      v19 = v18;
      if (v13)
      {
        [v18 setObject:v13 forKeyedSubscript:*MEMORY[0x1E696A578]];
      }

      if (v14)
      {
        [v19 setObject:v14 forKeyedSubscript:@"_MFShortDescription"];
      }

      v17 = [a1 errorWithDomain:v12 code:a4 localizedDescription:0 title:0 userInfo:v19];
      v20 = [MEMORY[0x1E695E000] standardUserDefaults];
      v21 = [v20 BOOLForKey:@"MFNoErrorLog"];

      if ((v21 & 1) == 0)
      {
        v22 = MFLogGeneral();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v23 = [v17 ef_publicDescription];
          [MFError errorWithDomain:v23 code:v26 localizedDescription:v22 title:? userInfo:?];
        }
      }
    }

    else
    {
      v17 = [a1 errorWithDomain:v12 code:a4 userInfo:v15];
    }
  }

  else
  {
    v17 = 0;
  }

  v24 = *MEMORY[0x1E69E9840];

  return v17;
}

+ (MFError)errorWithException:(id)a3
{
  v4 = [a3 reason];
  v5 = [a1 errorWithDomain:@"MFMessageErrorDomain" code:1029 localizedDescription:v4];

  return v5;
}

- (id)userInfo
{
  v7.receiver = self;
  v7.super_class = MFError;
  v3 = [(MFError *)&v7 userInfo];
  os_unfair_lock_lock(&self->_moreUserInfoLock);
  moreUserInfo = self->_moreUserInfo;
  if (moreUserInfo)
  {
    if (v3)
    {
      v5 = [(NSMutableDictionary *)moreUserInfo mutableCopy];
      [v5 addEntriesFromDictionary:v3];
    }

    else
    {
      v5 = [(NSMutableDictionary *)moreUserInfo copy];
    }
  }

  else
  {
    v5 = v3;
  }

  os_unfair_lock_unlock(&self->_moreUserInfoLock);

  return v5;
}

- (id)localizedDescription
{
  os_unfair_lock_lock(&self->_moreUserInfoLock);
  v3 = [(NSMutableDictionary *)self->_moreUserInfo objectForKey:*MEMORY[0x1E696A578]];
  os_unfair_lock_unlock(&self->_moreUserInfoLock);
  if (!v3)
  {
    v5.receiver = self;
    v5.super_class = MFError;
    v3 = [(MFError *)&v5 localizedDescription];
  }

  return v3;
}

- (id)recoveryAttempter
{
  v2 = [(MFError *)self userInfo];
  v3 = [v2 objectForKey:*MEMORY[0x1E696A8A8]];
  if (!v3)
  {
    v4 = [v2 objectForKey:@"RecoveryAttemptorClassName"];
    v5 = v4;
    if (v4)
    {
      v3 = objc_alloc_init(NSClassFromString(v4));
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (id)mf_moreInfo
{
  os_unfair_lock_lock(&self->_moreUserInfoLock);
  v3 = [(NSMutableDictionary *)self->_moreUserInfo objectForKey:@"_MFMoreInfo"];
  os_unfair_lock_unlock(&self->_moreUserInfoLock);
  if (!v3)
  {
    v5.receiver = self;
    v5.super_class = MFError;
    v3 = [(NSError *)&v5 mf_moreInfo];
  }

  return v3;
}

- (id)mf_shortDescription
{
  os_unfair_lock_lock(&self->_moreUserInfoLock);
  v3 = [(NSMutableDictionary *)self->_moreUserInfo objectForKey:@"_MFShortDescription"];
  os_unfair_lock_unlock(&self->_moreUserInfoLock);
  if (!v3)
  {
    v5.receiver = self;
    v5.super_class = MFError;
    v3 = [(NSError *)&v5 mf_shortDescription];
  }

  return v3;
}

- (void)useGenericDescription:(id)a3
{
  v9 = a3;
  v4 = [(MFError *)self localizedDescription];
  v5 = v4;
  if (v4 && ([v4 isEqualToString:&stru_1F273A5E0] & 1) == 0)
  {
    v6 = objc_allocWithZone(MEMORY[0x1E696AEC0]);
    v7 = MFLookupLocalizedString(@"MSG_SERVER_ERROR", @"%@\n\nThe server error encountered was: %@", @"Delayed");
    v8 = [v6 initWithFormat:v7, v9, v5];

    v9 = v8;
  }

  [(MFError *)self setLocalizedDescription:v9];
}

+ (void)errorWithDomain:(os_log_t)log code:localizedDescription:title:userInfo:.cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1B0389000, log, OS_LOG_TYPE_ERROR, "Created error: %{public}@", buf, 0xCu);
}

@end