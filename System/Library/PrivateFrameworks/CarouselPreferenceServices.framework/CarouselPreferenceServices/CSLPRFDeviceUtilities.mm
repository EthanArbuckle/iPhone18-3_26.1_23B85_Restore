@interface CSLPRFDeviceUtilities
+ (BOOL)activePairedWatchSupportsControls;
+ (BOOL)activePairedWatchSupportsLiveActivities;
+ (BOOL)activePairedWatchSupportsMoonstoneActions;
+ (BOOL)activePairedWatchUsesSolarium;
+ (BOOL)isHermes;
+ (BOOL)isTinker:(id)a3;
+ (id)activeWatch;
+ (id)bridgeController;
+ (id)screenImageNameWithPrefix:(id)a3;
+ (int64_t)seriesForProductType:(id)a3;
@end

@implementation CSLPRFDeviceUtilities

+ (id)screenImageNameWithPrefix:(id)a3
{
  v4 = a3;
  v5 = [a1 activeWatch];
  v6 = [v5 valueForProperty:*MEMORY[0x277D37BE8]];
  v7 = [a1 seriesForProductType:v6];
  if (v7 == 4)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@-S4_Default", v4];
  }

  else if (v7 == 3)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@-S3_Default", v4];
  }

  else if (+[CSLPRFDeviceUtilities activePairedWatchUsesSolarium])
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@-Solarium-Default", v4];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@-Default", v4];
  }
  v8 = ;

  return v8;
}

+ (BOOL)isHermes
{
  v2 = [a1 activeWatch];
  v3 = [v2 valueForProperty:*MEMORY[0x277D37B78]];
  v4 = [v3 intValue] == 1;

  return v4;
}

+ (BOOL)isTinker:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x277D76620];
  v5 = *MEMORY[0x277D76620];
  if (objc_opt_respondsToSelector())
  {
    v6 = [*v4 bridgeController];
    v7 = [v6 isTinkerPairing];
  }

  else
  {
    v7 = [v3 isAltAccount];
  }

  return v7;
}

+ (int64_t)seriesForProductType:(id)a3
{
  *&v16[5] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v14 = 0;
  v4 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"Watch(\\d+) options:" error:{1, &v14}];
  v5 = v14;
  v6 = [v4 firstMatchInString:v3 options:0 range:{0, objc_msgSend(v3, "length")}];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 rangeAtIndex:1];
    v10 = [v3 substringWithRange:{v8, v9}];
    v11 = [v10 integerValue];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67240450;
      v16[0] = v11;
      LOWORD(v16[1]) = 2114;
      *(&v16[1] + 2) = v3;
      _os_log_impl(&dword_22CE92000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Series %{public}d detected in %{public}@", buf, 0x12u);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      *v16 = v3;
      _os_log_error_impl(&dword_22CE92000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Could not extract series information from %{public}@", buf, 0xCu);
    }

    v11 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

+ (id)bridgeController
{
  v2 = MEMORY[0x277D76620];
  v3 = *MEMORY[0x277D76620];
  if (objc_opt_respondsToSelector())
  {
    v4 = [*v2 bridgeController];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_22CE92000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, ">>>> no bridgeController", v6, 2u);
    }

    v4 = 0;
  }

  return v4;
}

+ (BOOL)activePairedWatchUsesSolarium
{
  v2 = [a1 activeWatch];
  v3 = [v2 supportsCapability:3582149656];

  return v3;
}

+ (BOOL)activePairedWatchSupportsControls
{
  v2 = [a1 activeWatch];
  v3 = [v2 supportsCapability:3582149656];

  return v3;
}

+ (BOOL)activePairedWatchSupportsMoonstoneActions
{
  v2 = [a1 activeWatch];
  v3 = [v2 supportsCapability:2876273152];

  return v3;
}

+ (BOOL)activePairedWatchSupportsLiveActivities
{
  v2 = [a1 activeWatch];
  v3 = [v2 supportsCapability:1795521017];

  return v3;
}

+ (id)activeWatch
{
  v2 = [MEMORY[0x277D37B50] sharedInstance];
  v3 = [v2 getDevicesExcluding:4];
  v4 = [v3 firstObject];

  return v4;
}

@end