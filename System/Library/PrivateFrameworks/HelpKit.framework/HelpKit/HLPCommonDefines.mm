@interface HLPCommonDefines
+ (BOOL)isInternalBuild;
+ (BOOL)isVisionOS;
+ (id)HLPBundle;
+ (id)assetRequestHeaderFields;
+ (id)contentRequestHeaderFields;
+ (void)removeHLPBundle;
@end

@implementation HLPCommonDefines

+ (id)HLPBundle
{
  v2 = gHLPBundle;
  if (!gHLPBundle)
  {
    v3 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.helpkit"];
    v4 = gHLPBundle;
    gHLPBundle = v3;

    v2 = gHLPBundle;
  }

  return v2;
}

+ (void)removeHLPBundle
{
  v2 = gHLPBundle;
  gHLPBundle = 0;
}

+ (BOOL)isInternalBuild
{
  if (isInternalBuild_onceToken != -1)
  {
    +[HLPCommonDefines isInternalBuild];
  }

  return isInternalBuild__isInternal;
}

uint64_t __35__HLPCommonDefines_isInternalBuild__block_invoke()
{
  result = MGGetBoolAnswer();
  isInternalBuild__isInternal = result;
  return result;
}

+ (BOOL)isVisionOS
{
  if (isVisionOS_onceToken != -1)
  {
    +[HLPCommonDefines isVisionOS];
  }

  return isVisionOS__isVisionOS;
}

void __30__HLPCommonDefines_isVisionOS__block_invoke()
{
  v0 = [MEMORY[0x277D75418] currentDevice];
  isVisionOS__isVisionOS = [v0 userInterfaceIdiom] == 6;
}

+ (id)contentRequestHeaderFields
{
  v10[2] = *MEMORY[0x277D85DE8];
  if (+[HLPCommonDefines hasServiceTicket])
  {
    v2 = +[HLPCommonDefines contentServiceTicket];
    v3 = +[HLPCommonDefines userName];
    v4 = v3;
    if (v2)
    {
      v5 = v3 == 0;
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
      v6 = 0;
    }

    else
    {
      v9[0] = @"X-AppleConnect-Token";
      v9[1] = @"X-AppleConnect-User";
      v10[0] = v2;
      v10[1] = v3;
      v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)assetRequestHeaderFields
{
  v12[3] = *MEMORY[0x277D85DE8];
  if (+[HLPCommonDefines hasServiceTicket])
  {
    v2 = +[HLPCommonDefines assetServiceTicket];
    v3 = +[HLPCommonDefines userName];
    v4 = +[HLPCommonDefines clientID];
    v5 = v4;
    if (v2)
    {
      v6 = v3 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (v6 || v4 == 0)
    {
      v8 = 0;
    }

    else
    {
      v11[0] = @"X-AppleConnect-Token";
      v11[1] = @"X-AppleConnect-User";
      v12[0] = v2;
      v12[1] = v3;
      v11[2] = @"X-Client-Id";
      v12[2] = v4;
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:3];
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

@end