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
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  name = [v3 name];

  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v7 = mainBundle;
  if (name)
  {
    name2 = [v3 name];
    v9 = [v7 localizedStringForKey:name2 value:&stru_283EBDA30 table:0];
    [dictionary setObject:v9 forKeyedSubscript:*MEMORY[0x277CCA450]];
  }

  else
  {
    name2 = [mainBundle localizedStringForKey:@"Exception." value:&stru_283EBDA30 table:0];
    [dictionary setObject:name2 forKeyedSubscript:*MEMORY[0x277CCA450]];
  }

  reason = [v3 reason];

  if (reason)
  {
    mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
    reason2 = [v3 reason];
    v13 = [mainBundle2 localizedStringForKey:reason2 value:&stru_283EBDA30 table:0];
    [dictionary setObject:v13 forKeyedSubscript:*MEMORY[0x277CCA470]];
  }

  v14 = [v3 debugDescription];
  [dictionary setObject:v14 forKeyedSubscript:*MEMORY[0x277CCA068]];

  v15 = MEMORY[0x277CCA9B8];
  v16 = [dictionary copy];
  v17 = [v15 hmfErrorWithCode:16 userInfo:v16];

  return v17;
}

+ (id)hmfErrorWithCode:()HMFError reason:suggestion:underlyingError:
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  if ((a3 - 1) > 0x12)
  {
    v14 = @"Unknown error";
  }

  else
  {
    v14 = off_2786E6F60[a3 - 1];
  }

  v15 = v14;
  v16 = [mainBundle localizedStringForKey:v15 value:&stru_283EBDA30 table:0];
  [dictionary setObject:v16 forKeyedSubscript:*MEMORY[0x277CCA450]];

  if (v9)
  {
    mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
    v18 = [mainBundle2 localizedStringForKey:v9 value:&stru_283EBDA30 table:0];
    [dictionary setObject:v18 forKeyedSubscript:*MEMORY[0x277CCA470]];
  }

  if (v10)
  {
    mainBundle3 = [MEMORY[0x277CCA8D8] mainBundle];
    v20 = [mainBundle3 localizedStringForKey:v10 value:&stru_283EBDA30 table:0];
    [dictionary setObject:v20 forKeyedSubscript:*MEMORY[0x277CCA498]];
  }

  [dictionary setObject:v11 forKeyedSubscript:*MEMORY[0x277CCA7E8]];
  v21 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:a3 userInfo:dictionary];

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
  domain = [self domain];
  v2 = [domain isEqualToString:@"HMFErrorDomain"];

  return v2;
}

- (id)hmfAggregatedErrors
{
  if ([self isHMFError] && objc_msgSend(self, "code") == 17)
  {
    userInfo = [self userInfo];
    v3 = [userInfo objectForKeyedSubscript:@"HMFDetailedErrorsKey"];

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