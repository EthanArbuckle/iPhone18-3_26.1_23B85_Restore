@interface MFError
+ (MFError)errorWithDomain:(id)domain code:(int64_t)code localizedDescription:(id)description;
+ (MFError)errorWithDomain:(id)domain code:(int64_t)code localizedDescription:(id)description title:(id)title userInfo:(id)info;
+ (MFError)errorWithException:(id)exception;
- (MFError)initWithDomain:(id)domain code:(int64_t)code userInfo:(id)info;
- (id)localizedDescription;
- (id)mf_moreInfo;
- (id)mf_shortDescription;
- (id)recoveryAttempter;
- (id)userInfo;
- (void)useGenericDescription:(id)description;
@end

@implementation MFError

- (MFError)initWithDomain:(id)domain code:(int64_t)code userInfo:(id)info
{
  domainCopy = domain;
  infoCopy = info;
  if (initWithDomain_code_userInfo__onceToken != -1)
  {
    [MFError initWithDomain:code:userInfo:];
  }

  v13.receiver = self;
  v13.super_class = MFError;
  v10 = [(MFError *)&v13 initWithDomain:domainCopy code:code userInfo:infoCopy];
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

+ (MFError)errorWithDomain:(id)domain code:(int64_t)code localizedDescription:(id)description
{
  v5 = [self errorWithDomain:domain code:code localizedDescription:description title:0 userInfo:0];

  return v5;
}

+ (MFError)errorWithDomain:(id)domain code:(int64_t)code localizedDescription:(id)description title:(id)title userInfo:(id)info
{
  v27 = *MEMORY[0x1E69E9840];
  domainCopy = domain;
  descriptionCopy = description;
  titleCopy = title;
  infoCopy = info;
  v16 = infoCopy;
  if (domainCopy)
  {
    if (descriptionCopy | titleCopy)
    {
      if (infoCopy)
      {
        v18 = [infoCopy mutableCopy];
      }

      else
      {
        v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
      }

      v19 = v18;
      if (descriptionCopy)
      {
        [v18 setObject:descriptionCopy forKeyedSubscript:*MEMORY[0x1E696A578]];
      }

      if (titleCopy)
      {
        [v19 setObject:titleCopy forKeyedSubscript:@"_MFShortDescription"];
      }

      v17 = [self errorWithDomain:domainCopy code:code localizedDescription:0 title:0 userInfo:v19];
      standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
      v21 = [standardUserDefaults BOOLForKey:@"MFNoErrorLog"];

      if ((v21 & 1) == 0)
      {
        v22 = MFLogGeneral();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          ef_publicDescription = [v17 ef_publicDescription];
          [MFError errorWithDomain:ef_publicDescription code:v26 localizedDescription:v22 title:? userInfo:?];
        }
      }
    }

    else
    {
      v17 = [self errorWithDomain:domainCopy code:code userInfo:infoCopy];
    }
  }

  else
  {
    v17 = 0;
  }

  v24 = *MEMORY[0x1E69E9840];

  return v17;
}

+ (MFError)errorWithException:(id)exception
{
  reason = [exception reason];
  v5 = [self errorWithDomain:@"MFMessageErrorDomain" code:1029 localizedDescription:reason];

  return v5;
}

- (id)userInfo
{
  v7.receiver = self;
  v7.super_class = MFError;
  userInfo = [(MFError *)&v7 userInfo];
  os_unfair_lock_lock(&self->_moreUserInfoLock);
  moreUserInfo = self->_moreUserInfo;
  if (moreUserInfo)
  {
    if (userInfo)
    {
      v5 = [(NSMutableDictionary *)moreUserInfo mutableCopy];
      [v5 addEntriesFromDictionary:userInfo];
    }

    else
    {
      v5 = [(NSMutableDictionary *)moreUserInfo copy];
    }
  }

  else
  {
    v5 = userInfo;
  }

  os_unfair_lock_unlock(&self->_moreUserInfoLock);

  return v5;
}

- (id)localizedDescription
{
  os_unfair_lock_lock(&self->_moreUserInfoLock);
  localizedDescription = [(NSMutableDictionary *)self->_moreUserInfo objectForKey:*MEMORY[0x1E696A578]];
  os_unfair_lock_unlock(&self->_moreUserInfoLock);
  if (!localizedDescription)
  {
    v5.receiver = self;
    v5.super_class = MFError;
    localizedDescription = [(MFError *)&v5 localizedDescription];
  }

  return localizedDescription;
}

- (id)recoveryAttempter
{
  userInfo = [(MFError *)self userInfo];
  v3 = [userInfo objectForKey:*MEMORY[0x1E696A8A8]];
  if (!v3)
  {
    v4 = [userInfo objectForKey:@"RecoveryAttemptorClassName"];
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
  mf_moreInfo = [(NSMutableDictionary *)self->_moreUserInfo objectForKey:@"_MFMoreInfo"];
  os_unfair_lock_unlock(&self->_moreUserInfoLock);
  if (!mf_moreInfo)
  {
    v5.receiver = self;
    v5.super_class = MFError;
    mf_moreInfo = [(NSError *)&v5 mf_moreInfo];
  }

  return mf_moreInfo;
}

- (id)mf_shortDescription
{
  os_unfair_lock_lock(&self->_moreUserInfoLock);
  mf_shortDescription = [(NSMutableDictionary *)self->_moreUserInfo objectForKey:@"_MFShortDescription"];
  os_unfair_lock_unlock(&self->_moreUserInfoLock);
  if (!mf_shortDescription)
  {
    v5.receiver = self;
    v5.super_class = MFError;
    mf_shortDescription = [(NSError *)&v5 mf_shortDescription];
  }

  return mf_shortDescription;
}

- (void)useGenericDescription:(id)description
{
  descriptionCopy = description;
  localizedDescription = [(MFError *)self localizedDescription];
  v5 = localizedDescription;
  if (localizedDescription && ([localizedDescription isEqualToString:&stru_1F273A5E0] & 1) == 0)
  {
    v6 = objc_allocWithZone(MEMORY[0x1E696AEC0]);
    v7 = MFLookupLocalizedString(@"MSG_SERVER_ERROR", @"%@\n\nThe server error encountered was: %@", @"Delayed");
    v8 = [v6 initWithFormat:v7, descriptionCopy, v5];

    descriptionCopy = v8;
  }

  [(MFError *)self setLocalizedDescription:descriptionCopy];
}

+ (void)errorWithDomain:(os_log_t)log code:localizedDescription:title:userInfo:.cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1B0389000, log, OS_LOG_TYPE_ERROR, "Created error: %{public}@", buf, 0xCu);
}

@end