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
  v20 = [MEMORY[0x1E695DF90] dictionary];
  if ([v14 count] < 2)
  {
    v28 = MCLocalizedStringInTable(@"UNKNOWN_ERROR", @"Errors");
    [v20 setObject:v28 forKey:*MEMORY[0x1E696A578]];

    v26 = MCUSEnglishErrorString(@"UNKNOWN_ERROR");
    v27 = @"USEnglishDescription";
    goto LABEL_7;
  }

  v21 = [v14 objectAtIndex:0];
  [v20 setObject:v21 forKey:*MEMORY[0x1E696A578]];

  v22 = [v14 objectAtIndex:1];
  v23 = [MEMORY[0x1E695DFB0] null];
  v24 = [v22 isEqual:v23];

  if ((v24 & 1) == 0)
  {
    v25 = [v14 objectAtIndex:1];
    [v20 setObject:v25 forKey:@"USEnglishDescription"];
  }

  if ([v14 count] >= 3)
  {
    v26 = [v14 subarrayWithRange:{2, objc_msgSend(v14, "count") - 2}];
    v27 = @"descriptionParameters";
LABEL_7:
    [v20 setObject:v26 forKey:{v27, v34}];
  }

  if (!v15)
  {
    if (!v17)
    {
      goto LABEL_20;
    }

    v29 = [v17 MCFindPrimaryError];
    if (!v29)
    {
      v29 = v17;
    }

    v30 = [v29 localizedDescription];
    [v20 setObject:v30 forKey:*MEMORY[0x1E696A598]];

    v31 = [v29 MCUSEnglishDescription];
    if (v31)
    {
      [v20 setObject:v31 forKey:@"USEnglishSuggestion"];
    }

    goto LABEL_19;
  }

  [v20 setObject:v15 forKey:*MEMORY[0x1E696A598]];
  if (v16)
  {
    [v20 setObject:v16 forKey:@"USEnglishSuggestion"];
  }

  if (v17)
  {
LABEL_19:
    [v20 setObject:v17 forKey:*MEMORY[0x1E696AA08]];
  }

LABEL_20:
  if (v18)
  {
    [v20 setObject:v18 forKey:@"MCErrorType"];
  }

  if (v19)
  {
    [v20 addEntriesFromDictionary:v19];
  }

  v32 = [MEMORY[0x1E696ABC0] errorWithDomain:v35 code:v34 userInfo:v20];

  return v32;
}

- (id)MCVerboseDescription
{
  v2 = MEMORY[0x1E696AD60];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 stringWithFormat:@"%@:\n", v4];

  v6 = [a1 localizedDescription];
  v7 = v6;
  if (v6)
  {
    [v5 appendFormat:@"Desc   : %@\n", v6];
  }

  v8 = [a1 localizedRecoverySuggestion];
  v9 = v8;
  if (v8)
  {
    [v5 appendFormat:@"Sugg   : %@\n", v8];
  }

  v10 = [a1 MCUSEnglishDescription];
  v11 = v10;
  if (v10)
  {
    [v5 appendFormat:@"US Desc: %@\n", v10];
  }

  v27 = v7;
  v12 = [a1 MCUSEnglishSuggestion];
  v13 = v12;
  if (v12)
  {
    [v5 appendFormat:@"US Sugg: %@\n", v12];
  }

  v14 = [a1 domain];
  [v5 appendFormat:@"Domain : %@\nCode   : %d\n", v14, objc_msgSend(a1, "code")];

  v15 = [a1 userInfo];
  v16 = [v15 objectForKey:@"MCErrorType"];

  if (v16)
  {
    [v5 appendFormat:@"Type   : %@\n", v16];
  }

  v26 = v9;
  v17 = [a1 userInfo];
  v18 = [v17 objectForKey:@"descriptionParameters"];

  if (v18)
  {
    [v5 appendFormat:@"Params : %@\n", v18];
  }

  v19 = [a1 userInfo];
  v20 = *MEMORY[0x1E696AA08];
  v21 = [v19 objectForKey:*MEMORY[0x1E696AA08]];

  if (v21)
  {
    v22 = [v21 MCVerboseDescription];
    [v5 appendFormat:@"...Underlying error:\n%@", v22];
  }

  v23 = [a1 userInfo];
  v24 = [v23 mutableCopy];

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
  v1 = [a1 userInfo];
  v2 = *MEMORY[0x1E696AA08];
  v3 = [v1 objectForKey:*MEMORY[0x1E696AA08]];

  if (v3)
  {
    while (1)
    {
      v4 = [v3 userInfo];
      v5 = [v4 objectForKey:@"isPrimary"];

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

      v6 = [v3 userInfo];
      v7 = [v6 objectForKey:v2];

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
  v2 = [a1 userInfo];
  v3 = [v2 mutableCopy];

  v4 = [MEMORY[0x1E696AD98] numberWithBool:1];
  [v3 setObject:v4 forKey:@"isPrimary"];

  v5 = MEMORY[0x1E696ABC0];
  v6 = [a1 domain];
  v7 = [v5 errorWithDomain:v6 code:objc_msgSend(a1 userInfo:{"code"), v3}];

  return v7;
}

- (uint64_t)MCContainsErrorDomain:()MCExtension code:
{
  v6 = a3;
  v7 = a1;
  if (v7)
  {
    v8 = v7;
    v9 = *MEMORY[0x1E696AA08];
    do
    {
      v10 = [v8 domain];
      if ([v10 isEqualToString:v6])
      {
        v11 = [v8 code];

        if (v11 == a4)
        {
          v14 = 1;
          goto LABEL_10;
        }
      }

      else
      {
      }

      v12 = [v8 userInfo];
      v13 = [v12 objectForKey:v9];

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
  v1 = [a1 userInfo];
  v2 = [v1 objectForKey:@"USEnglishDescription"];

  return v2;
}

- (id)MCUSEnglishSuggestion
{
  v1 = [a1 userInfo];
  v2 = [v1 objectForKey:@"USEnglishSuggestion"];

  return v2;
}

- (id)MCErrorType
{
  v1 = [a1 userInfo];
  v2 = [v1 objectForKey:@"MCErrorType"];

  return v2;
}

@end