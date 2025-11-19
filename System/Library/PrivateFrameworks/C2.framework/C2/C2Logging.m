@interface C2Logging
+ (void)printToLog:(id)a3 withDescription:(id)a4 array:(id)a5;
+ (void)printToLog:(id)a3 withDescription:(id)a4 dictionary:(id)a5;
+ (void)printToLog:(id)a3 withDescription:(id)a4 error:(id)a5;
+ (void)printToLog:(id)a3 withDescription:(id)a4 object:(id)a5;
@end

@implementation C2Logging

+ (void)printToLog:(id)a3 withDescription:(id)a4 array:(id)a5
{
  v8 = a3;
  v9 = a4;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __46__C2Logging_printToLog_withDescription_array___block_invoke;
  v12[3] = &unk_278D40390;
  v14 = v8;
  v15 = a1;
  v13 = v9;
  v10 = v8;
  v11 = v9;
  [a5 enumerateObjectsUsingBlock:v12];
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

+ (void)printToLog:(id)a3 withDescription:(id)a4 dictionary:(id)a5
{
  v8 = a3;
  v9 = a4;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __51__C2Logging_printToLog_withDescription_dictionary___block_invoke;
  v12[3] = &unk_278D403B8;
  v14 = v8;
  v15 = a1;
  v13 = v9;
  v10 = v8;
  v11 = v9;
  [a5 enumerateKeysAndObjectsUsingBlock:v12];
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

+ (void)printToLog:(id)a3 withDescription:(id)a4 error:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v9 domain];
  v11 = [v9 code];
  if (v10)
  {
    if (([*MEMORY[0x277CCA738] isEqual:v10] & (v11 != -999)) != 0)
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

  if (os_log_type_enabled(v7, v12))
  {
    *buf = 138543874;
    v22 = v8;
    v23 = 2114;
    v24 = v10;
    v25 = 2048;
    v26 = v11;
    _os_log_impl(&dword_242158000, v7, v12, "%{public}@ %{public}@/%ld", buf, 0x20u);
  }

  v13 = [v9 userInfo];
  if (v13)
  {
    v14 = v13;
    if (CFDictionaryContainsKey(v13, *MEMORY[0x277CBEE30]))
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

    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@, %@/%ld", v8, v10, v11];
    [objc_opt_class() printToLog:v7 withDescription:v19 object:v18];
  }

  v20 = *MEMORY[0x277D85DE8];
}

+ (void)printToLog:(id)a3 withDescription:(id)a4 object:(id)a5
{
  v15 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [objc_opt_class() printToLog:v7 withDescription:v8 dictionary:v9];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [objc_opt_class() printToLog:v7 withDescription:v8 array:v9];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [objc_opt_class() printToLog:v7 withDescription:v8 error:v9];
      }

      else if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v11 = 138543618;
        v12 = v8;
        v13 = 2114;
        v14 = v9;
        _os_log_impl(&dword_242158000, v7, OS_LOG_TYPE_INFO, "%{public}@ %{public}@", &v11, 0x16u);
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

@end