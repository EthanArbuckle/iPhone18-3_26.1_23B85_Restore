@interface NSProcessInfo(CRKAdditions)
- (BOOL)crk_isBeingTested;
- (uint64_t)crk_hasEntitlement:()CRKAdditions withValue:;
@end

@implementation NSProcessInfo(CRKAdditions)

- (BOOL)crk_isBeingTested
{
  environment = [self environment];
  v2 = [environment objectForKeyedSubscript:@"XCTestConfigurationFilePath"];
  v3 = v2 != 0;

  return v3;
}

- (uint64_t)crk_hasEntitlement:()CRKAdditions withValue:
{
  v5 = a3;
  v6 = a4;
  v7 = SecTaskCreateFromSelf(0);
  if (v7)
  {
    v8 = v7;
    v9 = SecTaskCopyValueForEntitlement(v7, v5, 0);
    if (v9)
    {
      v10 = v9;
      v11 = [v6 isEqual:v9];
      CFRelease(v10);
    }

    else
    {
      v11 = 0;
    }

    CFRelease(v8);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end