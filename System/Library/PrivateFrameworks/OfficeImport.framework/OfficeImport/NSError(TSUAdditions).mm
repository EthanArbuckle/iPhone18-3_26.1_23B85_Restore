@interface NSError(TSUAdditions)
+ (id)tsu_errorWithCode:()TSUAdditions userInfo:;
+ (id)tsu_errorWithDomain:()TSUAdditions code:alertTitle:alertMessage:userInfo:;
+ (id)tsu_errorWithDomain:()TSUAdditions code:description:recoverySuggestion:;
+ (id)tsu_errorWithDomain:()TSUAdditions code:description:underlyingError:;
+ (id)tsu_errorWithError:()TSUAdditions alertTitle:alertMessage:additionalUserInfo:;
- (id)tsu_errorPreservingAlertTitle;
- (id)tsu_errorPreservingCancel;
- (id)tsu_localizedAlertMessage;
- (id)tsu_localizedAlertTitle;
- (uint64_t)tsu_isErrorPassingTest:()TSUAdditions;
@end

@implementation NSError(TSUAdditions)

+ (id)tsu_errorWithDomain:()TSUAdditions code:description:recoverySuggestion:
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:2];
  v14 = v13;
  if (v11)
  {
    [v13 setObject:v11 forKeyedSubscript:*MEMORY[0x277CCA450]];
  }

  if (v12)
  {
    [v14 setObject:v12 forKeyedSubscript:*MEMORY[0x277CCA498]];
  }

  v15 = [self errorWithDomain:v10 code:a4 userInfo:v14];

  return v15;
}

+ (id)tsu_errorWithCode:()TSUAdditions userInfo:
{
  v6 = a4;
  if (a3 >= 3)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[NSError(TSUAdditions) tsu_errorWithCode:userInfo:]"];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/NSError_TSUAdditions.m"];
    [OITSUAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:42 isFatal:0 description:"Bad error code"];

    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  v9 = [self errorWithDomain:@"com.apple.iWork.TSUtility" code:a3 userInfo:v6];

  return v9;
}

+ (id)tsu_errorWithDomain:()TSUAdditions code:alertTitle:alertMessage:userInfo:
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v15, "count") + 4}];
  v17 = v16;
  if (v15)
  {
    [v16 addEntriesFromDictionary:v15];
  }

  if (v13)
  {
    [v17 setObject:v13 forKeyedSubscript:*MEMORY[0x277CCA450]];
    [v17 setObject:v13 forKeyedSubscript:@"TSULocalizedErrorAlertTitle"];
  }

  if (v14)
  {
    [v17 setObject:v14 forKeyedSubscript:*MEMORY[0x277CCA498]];
    [v17 setObject:v14 forKeyedSubscript:@"TSULocalizedErrorAlertMessage"];
    [v17 setObject:v14 forKeyedSubscript:*MEMORY[0x277CCA470]];
  }

  v18 = [self errorWithDomain:v12 code:a4 userInfo:v17];

  return v18;
}

+ (id)tsu_errorWithDomain:()TSUAdditions code:description:underlyingError:
{
  v10 = a3;
  v11 = a6;
  v12 = MEMORY[0x277CBEB38];
  v13 = a5;
  v14 = [[v12 alloc] initWithCapacity:2];
  [v14 setObject:v13 forKeyedSubscript:*MEMORY[0x277CCA450]];

  if (v11)
  {
    [v14 setObject:v11 forKeyedSubscript:*MEMORY[0x277CCA7E8]];
  }

  v15 = [self errorWithDomain:v10 code:a4 userInfo:v14];

  return v15;
}

+ (id)tsu_errorWithError:()TSUAdditions alertTitle:alertMessage:additionalUserInfo:
{
  v10 = a6;
  if (a3)
  {
    v11 = a5;
    v12 = a4;
    v13 = a3;
    userInfo = [v13 userInfo];
    v15 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(userInfo, "count") + objc_msgSend(v10, "count") + 1}];
    v16 = v15;
    if (userInfo)
    {
      [v15 addEntriesFromDictionary:userInfo];
    }

    if (v10)
    {
      [v16 addEntriesFromDictionary:v10];
    }

    [v16 setObject:v13 forKeyedSubscript:*MEMORY[0x277CCA7E8]];
    domain = [v13 domain];
    code = [v13 code];

    v19 = [self tsu_errorWithDomain:domain code:code alertTitle:v12 alertMessage:v11 userInfo:v16];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)tsu_errorPreservingAlertTitle
{
  userInfo = [self userInfo];
  v3 = *MEMORY[0x277CCA450];
  v4 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CCA450]];
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = [userInfo objectForKeyedSubscript:@"TSULocalizedErrorAlertTitle"];
  v6 = v5;
  if (!v5 || [v5 isEqualToString:v4])
  {

LABEL_5:
    selfCopy = self;
    goto LABEL_6;
  }

  v9 = [userInfo mutableCopy];
  [v9 setObject:v6 forKeyedSubscript:v3];
  v10 = objc_opt_class();
  domain = [self domain];
  selfCopy = [v10 errorWithDomain:domain code:objc_msgSend(self userInfo:{"code"), v9}];

LABEL_6:

  return selfCopy;
}

- (id)tsu_errorPreservingCancel
{
  v10[1] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  if ([selfCopy tsu_isCancelError])
  {
    if ([selfCopy code] == 3072)
    {
      domain = [selfCopy domain];
      v3 = *MEMORY[0x277CCA050];
      v4 = [domain isEqualToString:*MEMORY[0x277CCA050]];

      if (v4)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v3 = *MEMORY[0x277CCA050];
    }

    v5 = objc_opt_class();
    v9 = *MEMORY[0x277CCA7E8];
    v10[0] = selfCopy;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    v7 = [v5 errorWithDomain:v3 code:3072 userInfo:v6];

    selfCopy = v7;
  }

LABEL_7:

  return selfCopy;
}

- (id)tsu_localizedAlertTitle
{
  userInfo = [self userInfo];
  v2 = [userInfo objectForKeyedSubscript:@"TSULocalizedErrorAlertTitle"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CCA450]];
  }

  v5 = v4;

  return v5;
}

- (id)tsu_localizedAlertMessage
{
  userInfo = [self userInfo];
  v2 = [userInfo objectForKeyedSubscript:@"TSULocalizedErrorAlertMessage"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CCA498]];
  }

  v5 = v4;

  return v5;
}

- (uint64_t)tsu_isErrorPassingTest:()TSUAdditions
{
  v4 = a3;
  if (v4)
  {
    selfCopy = self;
    if (selfCopy)
    {
      v6 = *MEMORY[0x277CCA7E8];
      while (1)
      {
        userInfo = [selfCopy userInfo];
        domain = [selfCopy domain];
        v9 = v4[2](v4, domain, [selfCopy code], userInfo);

        if (v9)
        {
          break;
        }

        v10 = [userInfo objectForKeyedSubscript:v6];
        v11 = v10;
        if (v10 != selfCopy)
        {
          v12 = v10;

          selfCopy = v12;
        }

        if (!selfCopy)
        {
          goto LABEL_11;
        }
      }

      selfCopy = 1;
    }
  }

  else
  {
    selfCopy = 0;
  }

LABEL_11:

  return selfCopy;
}

@end