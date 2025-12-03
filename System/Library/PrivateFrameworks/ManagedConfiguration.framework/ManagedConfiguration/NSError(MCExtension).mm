@interface NSError(MCExtension)
+ (id)MCErrorWithDomain:()MCExtension code:descriptionArray:suggestion:USEnglishSuggestion:underlyingError:errorType:extraUserInfo:;
- (id)MCErrorType;
- (id)MCFindPrimaryError;
- (id)MCUSEnglishDescription;
- (id)MCUSEnglishSuggestion;
- (id)MCVerboseDescription;
- (uint64_t)MCContainsErrorDomain:()MCExtension code:;
- (uint64_t)MCCopyAsPrimaryError;
@end

@implementation NSError(MCExtension)

+ (id)MCErrorWithDomain:()MCExtension code:descriptionArray:suggestion:USEnglishSuggestion:underlyingError:errorType:extraUserInfo:
{
  v34 = a4;
  v35 = a3;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v18 = a9;
  v19 = a10;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([v14 count] < 2)
  {
    v28 = MCLocalizedStringInTable(@"UNKNOWN_ERROR", @"Errors");
    [dictionary setObject:v28 forKey:*MEMORY[0x1E696A578]];

    v26 = MCUSEnglishErrorString(@"UNKNOWN_ERROR");
    v27 = @"USEnglishDescription";
    goto LABEL_7;
  }

  v21 = [v14 objectAtIndex:0];
  [dictionary setObject:v21 forKey:*MEMORY[0x1E696A578]];

  v22 = [v14 objectAtIndex:1];
  null = [MEMORY[0x1E695DFB0] null];
  v24 = [v22 isEqual:null];

  if ((v24 & 1) == 0)
  {
    v25 = [v14 objectAtIndex:1];
    [dictionary setObject:v25 forKey:@"USEnglishDescription"];
  }

  if ([v14 count] >= 3)
  {
    v26 = [v14 subarrayWithRange:{2, objc_msgSend(v14, "count") - 2}];
    v27 = @"descriptionParameters";
LABEL_7:
    [dictionary setObject:v26 forKey:{v27, v34}];
  }

  if (!v15)
  {
    if (!v17)
    {
      goto LABEL_20;
    }

    mCFindPrimaryError = [v17 MCFindPrimaryError];
    if (!mCFindPrimaryError)
    {
      mCFindPrimaryError = v17;
    }

    localizedDescription = [mCFindPrimaryError localizedDescription];
    [dictionary setObject:localizedDescription forKey:*MEMORY[0x1E696A598]];

    mCUSEnglishDescription = [mCFindPrimaryError MCUSEnglishDescription];
    if (mCUSEnglishDescription)
    {
      [dictionary setObject:mCUSEnglishDescription forKey:@"USEnglishSuggestion"];
    }

    goto LABEL_19;
  }

  [dictionary setObject:v15 forKey:*MEMORY[0x1E696A598]];
  if (v16)
  {
    [dictionary setObject:v16 forKey:@"USEnglishSuggestion"];
  }

  if (v17)
  {
LABEL_19:
    [dictionary setObject:v17 forKey:*MEMORY[0x1E696AA08]];
  }

LABEL_20:
  if (v18)
  {
    [dictionary setObject:v18 forKey:@"MCErrorType"];
  }

  if (v19)
  {
    [dictionary addEntriesFromDictionary:v19];
  }

  v32 = [MEMORY[0x1E696ABC0] errorWithDomain:v35 code:v34 userInfo:dictionary];

  return v32;
}

- (id)MCVerboseDescription
{
  v2 = MEMORY[0x1E696AD60];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 stringWithFormat:@"%@:\n", v4];

  localizedDescription = [self localizedDescription];
  v7 = localizedDescription;
  if (localizedDescription)
  {
    [v5 appendFormat:@"Desc   : %@\n", localizedDescription];
  }

  localizedRecoverySuggestion = [self localizedRecoverySuggestion];
  v9 = localizedRecoverySuggestion;
  if (localizedRecoverySuggestion)
  {
    [v5 appendFormat:@"Sugg   : %@\n", localizedRecoverySuggestion];
  }

  mCUSEnglishDescription = [self MCUSEnglishDescription];
  v11 = mCUSEnglishDescription;
  if (mCUSEnglishDescription)
  {
    [v5 appendFormat:@"US Desc: %@\n", mCUSEnglishDescription];
  }

  v27 = v7;
  mCUSEnglishSuggestion = [self MCUSEnglishSuggestion];
  v13 = mCUSEnglishSuggestion;
  if (mCUSEnglishSuggestion)
  {
    [v5 appendFormat:@"US Sugg: %@\n", mCUSEnglishSuggestion];
  }

  domain = [self domain];
  [v5 appendFormat:@"Domain : %@\nCode   : %d\n", domain, objc_msgSend(self, "code")];

  userInfo = [self userInfo];
  v16 = [userInfo objectForKey:@"MCErrorType"];

  if (v16)
  {
    [v5 appendFormat:@"Type   : %@\n", v16];
  }

  v26 = v9;
  userInfo2 = [self userInfo];
  v18 = [userInfo2 objectForKey:@"descriptionParameters"];

  if (v18)
  {
    [v5 appendFormat:@"Params : %@\n", v18];
  }

  userInfo3 = [self userInfo];
  v20 = *MEMORY[0x1E696AA08];
  v21 = [userInfo3 objectForKey:*MEMORY[0x1E696AA08]];

  if (v21)
  {
    mCVerboseDescription = [v21 MCVerboseDescription];
    [v5 appendFormat:@"...Underlying error:\n%@", mCVerboseDescription];
  }

  userInfo4 = [self userInfo];
  v24 = [userInfo4 mutableCopy];

  [v24 removeObjectForKey:*MEMORY[0x1E696A578]];
  [v24 removeObjectForKey:*MEMORY[0x1E696A598]];
  [v24 removeObjectForKey:@"USEnglishDescription"];
  [v24 removeObjectForKey:@"USEnglishSuggestion"];
  [v24 removeObjectForKey:@"MCErrorType"];
  [v24 removeObjectForKey:@"descriptionParameters"];
  [v24 removeObjectForKey:v20];
  if ([v24 count])
  {
    [v5 appendFormat:@"Extra info:\n%@", v24];
  }

  return v5;
}

- (id)MCFindPrimaryError
{
  userInfo = [self userInfo];
  v2 = *MEMORY[0x1E696AA08];
  v3 = [userInfo objectForKey:*MEMORY[0x1E696AA08]];

  if (v3)
  {
    while (1)
    {
      userInfo2 = [v3 userInfo];
      v5 = [userInfo2 objectForKey:@"isPrimary"];

      if (v5)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([v5 BOOLValue])
          {
            break;
          }
        }
      }

      userInfo3 = [v3 userInfo];
      v7 = [userInfo3 objectForKey:v2];

      v3 = v7;
      if (!v7)
      {
        goto LABEL_6;
      }
    }

    v8 = v3;
  }

  else
  {
LABEL_6:
    v8 = 0;
  }

  return v8;
}

- (uint64_t)MCCopyAsPrimaryError
{
  userInfo = [self userInfo];
  v3 = [userInfo mutableCopy];

  v4 = [MEMORY[0x1E696AD98] numberWithBool:1];
  [v3 setObject:v4 forKey:@"isPrimary"];

  v5 = MEMORY[0x1E696ABC0];
  domain = [self domain];
  v7 = [v5 errorWithDomain:domain code:objc_msgSend(self userInfo:{"code"), v3}];

  return v7;
}

- (uint64_t)MCContainsErrorDomain:()MCExtension code:
{
  v6 = a3;
  selfCopy = self;
  if (selfCopy)
  {
    v8 = selfCopy;
    v9 = *MEMORY[0x1E696AA08];
    do
    {
      domain = [v8 domain];
      if ([domain isEqualToString:v6])
      {
        code = [v8 code];

        if (code == a4)
        {
          v14 = 1;
          goto LABEL_10;
        }
      }

      else
      {
      }

      userInfo = [v8 userInfo];
      v13 = [userInfo objectForKey:v9];

      v8 = v13;
    }

    while (v13);
    v14 = 0;
LABEL_10:
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)MCUSEnglishDescription
{
  userInfo = [self userInfo];
  v2 = [userInfo objectForKey:@"USEnglishDescription"];

  return v2;
}

- (id)MCUSEnglishSuggestion
{
  userInfo = [self userInfo];
  v2 = [userInfo objectForKey:@"USEnglishSuggestion"];

  return v2;
}

- (id)MCErrorType
{
  userInfo = [self userInfo];
  v2 = [userInfo objectForKey:@"MCErrorType"];

  return v2;
}

@end