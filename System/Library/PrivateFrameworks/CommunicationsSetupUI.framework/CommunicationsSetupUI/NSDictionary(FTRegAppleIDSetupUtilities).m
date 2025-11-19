@interface NSDictionary(FTRegAppleIDSetupUtilities)
- (BOOL)__ftreg_isValidSetupDictionary;
- (id)__ftreg_candidateAliases;
- (id)__ftreg_responseProfileID;
- (uint64_t)__ftreg_responseIsUpgrade;
@end

@implementation NSDictionary(FTRegAppleIDSetupUtilities)

- (id)__ftreg_responseProfileID
{
  v2 = [a1 objectForKey:@"realm-user-id"];
  if (![v2 length])
  {
    v3 = [a1 objectForKey:@"profile-id"];

    v2 = v3;
  }

  return v2;
}

- (uint64_t)__ftreg_responseIsUpgrade
{
  v1 = [a1 objectForKey:@"isUpgrade"];
  v2 = [v1 BOOLValue];

  return v2;
}

- (BOOL)__ftreg_isValidSetupDictionary
{
  v2 = [a1 __ftreg_responseAppleID];
  v3 = v2;
  if (v2 && [v2 length])
  {
    v4 = [a1 __ftreg_responseProfileID];
    v5 = v4;
    if (v4 && [v4 length])
    {
      v6 = [a1 __ftreg_responseAuthToken];
      v7 = v6;
      if (v6)
      {
        v8 = [v6 length] != 0;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)__ftreg_candidateAliases
{
  v1 = [a1 objectForKey:@"handles"];
  v2 = v1;
  if (v1 && [v1 count])
  {
    v3 = [v2 __imArrayByApplyingBlock:&__block_literal_global_11];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end