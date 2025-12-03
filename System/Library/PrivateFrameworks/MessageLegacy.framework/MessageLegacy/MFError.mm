@interface MFError
+ (MFError)errorWithDomain:(id)domain code:(int64_t)code localizedDescription:(id)description title:(id)title userInfo:(id)info;
+ (MFError)errorWithException:(id)exception;
- (MFError)initWithDomain:(id)domain code:(int64_t)code userInfo:(id)info;
- (id)localizedDescription;
- (id)mf_moreInfo;
- (id)mf_shortDescription;
- (id)recoveryAttempter;
- (id)userInfo;
- (void)dealloc;
- (void)useGenericDescription:(id)description;
@end

@implementation MFError

- (MFError)initWithDomain:(id)domain code:(int64_t)code userInfo:(id)info
{
  if (initWithDomain_code_userInfo__onceToken != -1)
  {
    [MFError initWithDomain:code:userInfo:];
  }

  v10.receiver = self;
  v10.super_class = MFError;
  return [(MFError *)&v10 initWithDomain:domain code:code userInfo:info];
}

__CFString *__40__MFError_initWithDomain_code_userInfo___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1028) >= 0x20)
  {
    return [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown Error Code %d", a2];
  }

  else
  {
    return off_2798B7358[(a2 - 1028)];
  }
}

+ (MFError)errorWithDomain:(id)domain code:(int64_t)code localizedDescription:(id)description title:(id)title userInfo:(id)info
{
  if (!domain)
  {
    return 0;
  }

  if (description | title)
  {
    if (info)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(0, 0, info);
    }

    else
    {
      MutableCopy = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    }

    v15 = MutableCopy;
    if (description)
    {
      CFDictionarySetValue(MutableCopy, *MEMORY[0x277CCA450], description);
    }

    if (title)
    {
      CFDictionarySetValue(v15, @"_MFShortDescription", title);
    }

    v13 = [self errorWithDomain:domain code:code localizedDescription:0 title:0 userInfo:v15];
    if (([objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")] & 1) == 0)
    {
      v16 = MFLogGeneral();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [MFError errorWithDomain:v13 code:v16 localizedDescription:? title:? userInfo:?];
      }
    }

    return v13;
  }

  return [self errorWithDomain:? code:? userInfo:?];
}

+ (MFError)errorWithException:(id)exception
{
  reason = [exception reason];

  return [self errorWithDomain:@"MFMessageErrorDomain" code:1029 localizedDescription:reason];
}

- (id)userInfo
{
  v7.receiver = self;
  v7.super_class = MFError;
  userInfo = [(MFError *)&v7 userInfo];
  moreUserInfo = self->_moreUserInfo;
  if (moreUserInfo)
  {
    if (userInfo)
    {
      v5 = [(NSMutableDictionary *)moreUserInfo mutableCopyWithZone:0];
      [v5 addEntriesFromDictionary:userInfo];
      return v5;
    }

    else
    {
      return [(NSMutableDictionary *)moreUserInfo copyWithZone:0];
    }
  }

  return userInfo;
}

- (id)localizedDescription
{
  result = [(NSMutableDictionary *)self->_moreUserInfo objectForKey:*MEMORY[0x277CCA450]];
  if (!result)
  {
    v4.receiver = self;
    v4.super_class = MFError;
    return [(MFError *)&v4 localizedDescription];
  }

  return result;
}

- (id)recoveryAttempter
{
  userInfo = [(MFError *)self userInfo];
  v3 = [userInfo objectForKey:*MEMORY[0x277CCA658]];
  if (!v3)
  {
    v3 = [userInfo objectForKey:@"RecoveryAttemptorClassName"];
    if (v3)
    {
      v3 = objc_alloc_init(NSClassFromString(v3));
    }
  }

  return v3;
}

- (id)mf_moreInfo
{
  result = [(NSMutableDictionary *)self->_moreUserInfo objectForKey:@"_MFMoreInfo"];
  if (!result)
  {
    v4.receiver = self;
    v4.super_class = MFError;
    return [(NSError *)&v4 mf_moreInfo];
  }

  return result;
}

- (id)mf_shortDescription
{
  result = [(NSMutableDictionary *)self->_moreUserInfo objectForKey:@"_MFShortDescription"];
  if (!result)
  {
    v4.receiver = self;
    v4.super_class = MFError;
    return [(NSError *)&v4 mf_shortDescription];
  }

  return result;
}

- (void)useGenericDescription:(id)description
{
  localizedDescription = [(MFError *)self localizedDescription];
  if (localizedDescription && (v5 = localizedDescription, ([localizedDescription isEqualToString:&stru_2869ED3E0] & 1) == 0))
  {
    descriptionCopy2 = [objc_allocWithZone(MEMORY[0x277CCACA8]) initWithFormat:MFLookupLocalizedString(@"MSG_SERVER_ERROR", @"%@\n\nThe server error encountered was: %@", @"Delayed", description, v5];
  }

  else
  {
    descriptionCopy = description;
    descriptionCopy2 = description;
  }

  v9 = descriptionCopy2;
  [(MFError *)self setLocalizedDescription:descriptionCopy2];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MFError;
  [(MFError *)&v3 dealloc];
}

+ (void)errorWithDomain:(void *)a1 code:(NSObject *)a2 localizedDescription:title:userInfo:.cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = 138543362;
  v5 = [a1 ef_publicDescription];
  _os_log_error_impl(&dword_258BDA000, a2, OS_LOG_TYPE_ERROR, "Created error: %{public}@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

@end