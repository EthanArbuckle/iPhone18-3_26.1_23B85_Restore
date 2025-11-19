@interface NSError(FSKitAdditions)
+ (id)_fskit_errorWithFSKitCode:()FSKitAdditions itemURL:debugDescription:message:;
+ (id)_fskit_errorWithFSKitCode:()FSKitAdditions variant:;
+ (id)fskit_errorWithPOSIXCode:()FSKitAdditions description:;
+ (void)fskit_initLocalizationStrings;
- (id)fskit_userInfoValueForKey:()FSKitAdditions;
- (uint64_t)fs_posixCode;
@end

@implementation NSError(FSKitAdditions)

+ (void)fskit_initLocalizationStrings
{
  if (fskit_initLocalizationStrings_pred != -1)
  {
    +[NSError(FSKitAdditions) fskit_initLocalizationStrings];
  }
}

+ (id)_fskit_errorWithFSKitCode:()FSKitAdditions itemURL:debugDescription:message:
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  [a1 fskit_initLocalizationStrings];
  v13 = [MEMORY[0x277CBEB38] dictionary];
  [v13 setObject:v12 forKeyedSubscript:*MEMORY[0x277CCA760]];

  [v13 setObject:v11 forKeyedSubscript:*MEMORY[0x277CCA068]];
  if (v10)
  {
    [v13 setObject:v10 forKeyedSubscript:*MEMORY[0x277CBEE30]];
  }

  v14 = [MEMORY[0x277CCA9B8] errorWithDomain:@"FSKitErrorDomain" code:a3 userInfo:v13];

  return v14;
}

+ (id)_fskit_errorWithFSKitCode:()FSKitAdditions variant:
{
  v6 = a4;
  [a1 fskit_initLocalizationStrings];
  v7 = [MEMORY[0x277CBEB38] dictionary];
  [v7 setObject:v6 forKeyedSubscript:@"FSKitErrorVariantKey"];

  v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"FSKitErrorDomain" code:a3 userInfo:v7];

  return v8;
}

+ (id)fskit_errorWithPOSIXCode:()FSKitAdditions description:
{
  v11 = MEMORY[0x277CCACA8];
  v12 = a4;
  v13 = [[v11 alloc] initWithFormat:v12 arguments:&a9];

  v14 = [a1 _fskit_errorWithFSKitCode:a3 itemURL:0 debugDescription:0 message:v13];

  return v14;
}

- (id)fskit_userInfoValueForKey:()FSKitAdditions
{
  v4 = a3;
  v5 = [a1 domain];
  v6 = [v5 isEqualToString:@"FSKitErrorDomain"];

  if (!v6)
  {
    v10 = 0;
    goto LABEL_13;
  }

  v7 = [a1 userInfo];
  v8 = [v7 objectForKeyedSubscript:@"FSKitErrorVariantKey"];

  if ([v4 isEqualToString:*MEMORY[0x277CCA450]])
  {
    v9 = &stru_285DEFA28;
  }

  else if ([v4 isEqualToString:*MEMORY[0x277CCA470]])
  {
    v9 = @"-C";
  }

  else
  {
    if (![v4 isEqualToString:*MEMORY[0x277CCA498]])
    {
LABEL_11:
      v10 = 0;
      goto LABEL_12;
    }

    v9 = @"-R";
  }

  v11 = [a1 code];
  if ((v11 - 4500) > 6)
  {
    goto LABEL_11;
  }

  v10 = FSKitLocalizedStringWithKeyAndVariant(v11, off_278FED2F8[v11 - 4500], v9, v8, v12, v13, v14, v15, v17);
LABEL_12:

LABEL_13:

  return v10;
}

- (uint64_t)fs_posixCode
{
  v2 = [a1 domain];
  v3 = [v2 isEqualToString:*MEMORY[0x277CCA5B8]];

  if (!v3)
  {
    v5 = [a1 domain];
    v6 = [v5 isEqualToString:*MEMORY[0x277CCA050]];

    if (!v6)
    {
      return 22;
    }

    v7 = [a1 code];
    if (v7 <= 639)
    {
      if (v7 > 512)
      {
        if (v7 != 513)
        {
          if (v7 == 516)
          {
            return 17;
          }

          return 22;
        }
      }

      else
      {
        if (v7 == 4)
        {
          return 2;
        }

        if (v7 != 257)
        {
          return 22;
        }
      }

      return 13;
    }

    if (v7 > 3071)
    {
      if (v7 == 3072)
      {
        return 89;
      }

      if (v7 == 3328)
      {
        return 45;
      }
    }

    else
    {
      if (v7 == 640)
      {
        return 28;
      }

      if (v7 == 642)
      {
        return 30;
      }
    }

    return 22;
  }

  return [a1 code];
}

@end