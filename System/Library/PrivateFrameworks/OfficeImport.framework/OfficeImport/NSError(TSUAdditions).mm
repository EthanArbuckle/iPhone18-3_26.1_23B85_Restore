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

  v15 = [a1 errorWithDomain:v10 code:a4 userInfo:v14];

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

  v9 = [a1 errorWithDomain:@"com.apple.iWork.TSUtility" code:a3 userInfo:v6];

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

  v18 = [a1 errorWithDomain:v12 code:a4 userInfo:v17];

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

  v15 = [a1 errorWithDomain:v10 code:a4 userInfo:v14];

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
    v14 = [v13 userInfo];
    v15 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v14, "count") + objc_msgSend(v10, "count") + 1}];
    v16 = v15;
    if (v14)
    {
      [v15 addEntriesFromDictionary:v14];
    }

    if (v10)
    {
      [v16 addEntriesFromDictionary:v10];
    }

    [v16 setObject:v13 forKeyedSubscript:*MEMORY[0x277CCA7E8]];
    v17 = [v13 domain];
    v18 = [v13 code];

    v19 = [a1 tsu_errorWithDomain:v17 code:v18 alertTitle:v12 alertMessage:v11 userInfo:v16];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)tsu_errorPreservingAlertTitle
{
  v2 = [a1 userInfo];
  v3 = *MEMORY[0x277CCA450];
  v4 = [v2 objectForKeyedSubscript:*MEMORY[0x277CCA450]];
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = [v2 objectForKeyedSubscript:@"TSULocalizedErrorAlertTitle"];
  v6 = v5;
  if (!v5 || [v5 isEqualToString:v4])
  {

LABEL_5:
    v7 = a1;
    goto LABEL_6;
  }

  v9 = [v2 mutableCopy];
  [v9 setObject:v6 forKeyedSubscript:v3];
  v10 = objc_opt_class();
  v11 = [a1 domain];
  v7 = [v10 errorWithDomain:v11 code:objc_msgSend(a1 userInfo:{"code"), v9}];

LABEL_6:

  return v7;
}

- (id)tsu_errorPreservingCancel
{
  v10[1] = *MEMORY[0x277D85DE8];
  v1 = a1;
  if ([v1 tsu_isCancelError])
  {
    if ([v1 code] == 3072)
    {
      v2 = [v1 domain];
      v3 = *MEMORY[0x277CCA050];
      v4 = [v2 isEqualToString:*MEMORY[0x277CCA050]];

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
    v10[0] = v1;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    v7 = [v5 errorWithDomain:v3 code:3072 userInfo:v6];

    v1 = v7;
  }

LABEL_7:

  return v1;
}

- (id)tsu_localizedAlertTitle
{
  v1 = [a1 userInfo];
  v2 = [v1 objectForKeyedSubscript:@"TSULocalizedErrorAlertTitle"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [v1 objectForKeyedSubscript:*MEMORY[0x277CCA450]];
  }

  v5 = v4;

  return v5;
}

- (id)tsu_localizedAlertMessage
{
  v1 = [a1 userInfo];
  v2 = [v1 objectForKeyedSubscript:@"TSULocalizedErrorAlertMessage"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [v1 objectForKeyedSubscript:*MEMORY[0x277CCA498]];
  }

  v5 = v4;

  return v5;
}

- (uint64_t)tsu_isErrorPassingTest:()TSUAdditions
{
  v4 = a3;
  if (v4)
  {
    v5 = a1;
    if (v5)
    {
      v6 = *MEMORY[0x277CCA7E8];
      while (1)
      {
        v7 = [v5 userInfo];
        v8 = [v5 domain];
        v9 = v4[2](v4, v8, [v5 code], v7);

        if (v9)
        {
          break;
        }

        v10 = [v7 objectForKeyedSubscript:v6];
        v11 = v10;
        if (v10 != v5)
        {
          v12 = v10;

          v5 = v12;
        }

        if (!v5)
        {
          goto LABEL_11;
        }
      }

      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

LABEL_11:

  return v5;
}

@end