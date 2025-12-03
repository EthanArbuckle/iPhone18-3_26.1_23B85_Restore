@interface NSDictionary(FTRegAppleIDSetupUtilities)
- (BOOL)__ftreg_isValidSetupDictionary;
- (id)__ftreg_candidateAliases;
- (id)__ftreg_responseProfileID;
- (uint64_t)__ftreg_responseIsUpgrade;
@end

@implementation NSDictionary(FTRegAppleIDSetupUtilities)

- (id)__ftreg_responseProfileID
{
  v2 = [self objectForKey:@"realm-user-id"];
  if (![v2 length])
  {
    v3 = [self objectForKey:@"profile-id"];

    v2 = v3;
  }

  return v2;
}

- (uint64_t)__ftreg_responseIsUpgrade
{
  v1 = [self objectForKey:@"isUpgrade"];
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

- (BOOL)__ftreg_isValidSetupDictionary
{
  __ftreg_responseAppleID = [self __ftreg_responseAppleID];
  v3 = __ftreg_responseAppleID;
  if (__ftreg_responseAppleID && [__ftreg_responseAppleID length])
  {
    __ftreg_responseProfileID = [self __ftreg_responseProfileID];
    v5 = __ftreg_responseProfileID;
    if (__ftreg_responseProfileID && [__ftreg_responseProfileID length])
    {
      __ftreg_responseAuthToken = [self __ftreg_responseAuthToken];
      v7 = __ftreg_responseAuthToken;
      if (__ftreg_responseAuthToken)
      {
        v8 = [__ftreg_responseAuthToken length] != 0;
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
  v1 = [self objectForKey:@"handles"];
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