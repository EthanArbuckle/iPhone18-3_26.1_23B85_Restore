@interface NSError(HMFError)
+ (id)hmfErrorWithCode:()HMFError reason:suggestion:underlyingError:;
+ (id)hmfUnspecifiedError;
+ (id)hmf_errorWithException:()HMFError;
- (id)hmfAggregatedErrors;
- (uint64_t)isHMFError;
@end

@implementation NSError(HMFError)

+ (id)hmf_errorWithException:()HMFError
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v5 = [v3 name];

  v6 = [MEMORY[0x277CCA8D8] mainBundle];
  v7 = v6;
  if (v5)
  {
    v8 = [v3 name];
    v9 = [v7 localizedStringForKey:v8 value:&stru_283EBDA30 table:0];
    [v4 setObject:v9 forKeyedSubscript:*MEMORY[0x277CCA450]];
  }

  else
  {
    v8 = [v6 localizedStringForKey:@"Exception." value:&stru_283EBDA30 table:0];
    [v4 setObject:v8 forKeyedSubscript:*MEMORY[0x277CCA450]];
  }

  v10 = [v3 reason];

  if (v10)
  {
    v11 = [MEMORY[0x277CCA8D8] mainBundle];
    v12 = [v3 reason];
    v13 = [v11 localizedStringForKey:v12 value:&stru_283EBDA30 table:0];
    [v4 setObject:v13 forKeyedSubscript:*MEMORY[0x277CCA470]];
  }

  v14 = [v3 debugDescription];
  [v4 setObject:v14 forKeyedSubscript:*MEMORY[0x277CCA068]];

  v15 = MEMORY[0x277CCA9B8];
  v16 = [v4 copy];
  v17 = [v15 hmfErrorWithCode:16 userInfo:v16];

  return v17;
}

+ (id)hmfErrorWithCode:()HMFError reason:suggestion:underlyingError:
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [MEMORY[0x277CBEB38] dictionary];
  v13 = [MEMORY[0x277CCA8D8] mainBundle];
  if ((a3 - 1) > 0x12)
  {
    v14 = @"Unknown error";
  }

  else
  {
    v14 = off_2786E6F60[a3 - 1];
  }

  v15 = v14;
  v16 = [v13 localizedStringForKey:v15 value:&stru_283EBDA30 table:0];
  [v12 setObject:v16 forKeyedSubscript:*MEMORY[0x277CCA450]];

  if (v9)
  {
    v17 = [MEMORY[0x277CCA8D8] mainBundle];
    v18 = [v17 localizedStringForKey:v9 value:&stru_283EBDA30 table:0];
    [v12 setObject:v18 forKeyedSubscript:*MEMORY[0x277CCA470]];
  }

  if (v10)
  {
    v19 = [MEMORY[0x277CCA8D8] mainBundle];
    v20 = [v19 localizedStringForKey:v10 value:&stru_283EBDA30 table:0];
    [v12 setObject:v20 forKeyedSubscript:*MEMORY[0x277CCA498]];
  }

  [v12 setObject:v11 forKeyedSubscript:*MEMORY[0x277CCA7E8]];
  v21 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:a3 userInfo:v12];

  return v21;
}

+ (id)hmfUnspecifiedError
{
  if (_MergedGlobals_59 != -1)
  {
    dispatch_once(&_MergedGlobals_59, &__block_literal_global_7);
  }

  v1 = qword_280AFC5C8;

  return v1;
}

- (uint64_t)isHMFError
{
  v1 = [a1 domain];
  v2 = [v1 isEqualToString:@"HMFErrorDomain"];

  return v2;
}

- (id)hmfAggregatedErrors
{
  if ([a1 isHMFError] && objc_msgSend(a1, "code") == 17)
  {
    v2 = [a1 userInfo];
    v3 = [v2 objectForKeyedSubscript:@"HMFDetailedErrorsKey"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;

    v6 = MEMORY[0x277CBEBF8];
    if (v5)
    {
      v6 = v5;
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end