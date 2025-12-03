@interface C2Logging
+ (void)printToLog:(id)log withDescription:(id)description array:(id)array;
+ (void)printToLog:(id)log withDescription:(id)description dictionary:(id)dictionary;
+ (void)printToLog:(id)log withDescription:(id)description error:(id)error;
+ (void)printToLog:(id)log withDescription:(id)description object:(id)object;
@end

@implementation C2Logging

+ (void)printToLog:(id)log withDescription:(id)description array:(id)array
{
  logCopy = log;
  descriptionCopy = description;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __46__C2Logging_printToLog_withDescription_array___block_invoke;
  v12[3] = &unk_278D40390;
  v14 = logCopy;
  selfCopy = self;
  v13 = descriptionCopy;
  v10 = logCopy;
  v11 = descriptionCopy;
  [array enumerateObjectsUsingBlock:v12];
}

void __46__C2Logging_printToLog_withDescription_array___block_invoke(void *a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x277CCACA8];
  v6 = a1[4];
  v7 = a2;
  v9 = [v5 stringWithFormat:@"%@:%llu", v6, a3];
  v8 = a1[6];
  [objc_opt_class() printToLog:a1[5] withDescription:v9 object:v7];
}

+ (void)printToLog:(id)log withDescription:(id)description dictionary:(id)dictionary
{
  logCopy = log;
  descriptionCopy = description;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __51__C2Logging_printToLog_withDescription_dictionary___block_invoke;
  v12[3] = &unk_278D403B8;
  v14 = logCopy;
  selfCopy = self;
  v13 = descriptionCopy;
  v10 = logCopy;
  v11 = descriptionCopy;
  [dictionary enumerateKeysAndObjectsUsingBlock:v12];
}

void __51__C2Logging_printToLog_withDescription_dictionary___block_invoke(void *a1, uint64_t a2, void *a3)
{
  v5 = MEMORY[0x277CCACA8];
  v6 = a1[4];
  v7 = a3;
  v9 = [v5 stringWithFormat:@"%@/%@", v6, a2];
  v8 = a1[6];
  [objc_opt_class() printToLog:a1[5] withDescription:v9 object:v7];
}

+ (void)printToLog:(id)log withDescription:(id)description error:(id)error
{
  v27 = *MEMORY[0x277D85DE8];
  logCopy = log;
  descriptionCopy = description;
  errorCopy = error;
  domain = [errorCopy domain];
  code = [errorCopy code];
  if (domain)
  {
    if (([*MEMORY[0x277CCA738] isEqual:domain] & (code != -999)) != 0)
    {
      v12 = OS_LOG_TYPE_ERROR;
    }

    else
    {
      v12 = OS_LOG_TYPE_DEFAULT;
    }
  }

  else
  {
    v12 = OS_LOG_TYPE_DEFAULT;
  }

  if (os_log_type_enabled(logCopy, v12))
  {
    *buf = 138543874;
    v22 = descriptionCopy;
    v23 = 2114;
    v24 = domain;
    v25 = 2048;
    v26 = code;
    _os_log_impl(&dword_242158000, logCopy, v12, "%{public}@ %{public}@/%ld", buf, 0x20u);
  }

  userInfo = [errorCopy userInfo];
  if (userInfo)
  {
    v14 = userInfo;
    if (CFDictionaryContainsKey(userInfo, *MEMORY[0x277CBEE30]))
    {
      v15 = CFDictionaryContainsKey(v14, *MEMORY[0x277CBEE58]) != 0;
    }

    else
    {
      v15 = 0;
    }

    if (CFDictionaryContainsKey(v14, @"NSErrorFailingURLStringKey"))
    {
      v16 = CFDictionaryContainsKey(v14, @"NSErrorFailingURLKey") != 0;
    }

    else
    {
      v16 = 0;
    }

    MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, v14);
    if (MutableCopy)
    {
      v18 = MutableCopy;
      if (v15)
      {
        CFDictionaryRemoveValue(MutableCopy, *MEMORY[0x277CBEE58]);
      }

      if (v16)
      {
        CFDictionaryRemoveValue(v18, @"NSErrorFailingURLStringKey");
      }
    }

    else
    {
      v18 = v14;
    }

    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@, %@/%ld", descriptionCopy, domain, code];
    [objc_opt_class() printToLog:logCopy withDescription:v19 object:v18];
  }

  v20 = *MEMORY[0x277D85DE8];
}

+ (void)printToLog:(id)log withDescription:(id)description object:(id)object
{
  v15 = *MEMORY[0x277D85DE8];
  logCopy = log;
  descriptionCopy = description;
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [objc_opt_class() printToLog:logCopy withDescription:descriptionCopy dictionary:objectCopy];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [objc_opt_class() printToLog:logCopy withDescription:descriptionCopy array:objectCopy];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [objc_opt_class() printToLog:logCopy withDescription:descriptionCopy error:objectCopy];
      }

      else if (os_log_type_enabled(logCopy, OS_LOG_TYPE_INFO))
      {
        v11 = 138543618;
        v12 = descriptionCopy;
        v13 = 2114;
        v14 = objectCopy;
        _os_log_impl(&dword_242158000, logCopy, OS_LOG_TYPE_INFO, "%{public}@ %{public}@", &v11, 0x16u);
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

@end