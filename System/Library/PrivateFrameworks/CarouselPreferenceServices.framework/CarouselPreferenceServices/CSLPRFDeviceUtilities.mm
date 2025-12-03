@interface CSLPRFDeviceUtilities
+ (BOOL)activePairedWatchSupportsControls;
+ (BOOL)activePairedWatchSupportsLiveActivities;
+ (BOOL)activePairedWatchSupportsMoonstoneActions;
+ (BOOL)activePairedWatchUsesSolarium;
+ (BOOL)isHermes;
+ (BOOL)isTinker:(id)tinker;
+ (id)activeWatch;
+ (id)bridgeController;
+ (id)screenImageNameWithPrefix:(id)prefix;
+ (int64_t)seriesForProductType:(id)type;
@end

@implementation CSLPRFDeviceUtilities

+ (id)screenImageNameWithPrefix:(id)prefix
{
  prefixCopy = prefix;
  activeWatch = [self activeWatch];
  v6 = [activeWatch valueForProperty:*MEMORY[0x277D37BE8]];
  v7 = [self seriesForProductType:v6];
  if (v7 == 4)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@-S4_Default", prefixCopy];
  }

  else if (v7 == 3)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@-S3_Default", prefixCopy];
  }

  else if (+[CSLPRFDeviceUtilities activePairedWatchUsesSolarium])
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@-Solarium-Default", prefixCopy];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@-Default", prefixCopy];
  }
  v8 = ;

  return v8;
}

+ (BOOL)isHermes
{
  activeWatch = [self activeWatch];
  v3 = [activeWatch valueForProperty:*MEMORY[0x277D37B78]];
  v4 = [v3 intValue] == 1;

  return v4;
}

+ (BOOL)isTinker:(id)tinker
{
  tinkerCopy = tinker;
  v4 = MEMORY[0x277D76620];
  v5 = *MEMORY[0x277D76620];
  if (objc_opt_respondsToSelector())
  {
    bridgeController = [*v4 bridgeController];
    isTinkerPairing = [bridgeController isTinkerPairing];
  }

  else
  {
    isTinkerPairing = [tinkerCopy isAltAccount];
  }

  return isTinkerPairing;
}

+ (int64_t)seriesForProductType:(id)type
{
  *&v16[5] = *MEMORY[0x277D85DE8];
  typeCopy = type;
  v14 = 0;
  v4 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"Watch(\\d+) options:" error:{1, &v14}];
  v5 = v14;
  v6 = [v4 firstMatchInString:typeCopy options:0 range:{0, objc_msgSend(typeCopy, "length")}];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 rangeAtIndex:1];
    v10 = [typeCopy substringWithRange:{v8, v9}];
    integerValue = [v10 integerValue];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67240450;
      v16[0] = integerValue;
      LOWORD(v16[1]) = 2114;
      *(&v16[1] + 2) = typeCopy;
      _os_log_impl(&dword_22CE92000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Series %{public}d detected in %{public}@", buf, 0x12u);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      *v16 = typeCopy;
      _os_log_error_impl(&dword_22CE92000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Could not extract series information from %{public}@", buf, 0xCu);
    }

    integerValue = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return integerValue;
}

+ (id)bridgeController
{
  v2 = MEMORY[0x277D76620];
  v3 = *MEMORY[0x277D76620];
  if (objc_opt_respondsToSelector())
  {
    bridgeController = [*v2 bridgeController];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_22CE92000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, ">>>> no bridgeController", v6, 2u);
    }

    bridgeController = 0;
  }

  return bridgeController;
}

+ (BOOL)activePairedWatchUsesSolarium
{
  activeWatch = [self activeWatch];
  v3 = [activeWatch supportsCapability:3582149656];

  return v3;
}

+ (BOOL)activePairedWatchSupportsControls
{
  activeWatch = [self activeWatch];
  v3 = [activeWatch supportsCapability:3582149656];

  return v3;
}

+ (BOOL)activePairedWatchSupportsMoonstoneActions
{
  activeWatch = [self activeWatch];
  v3 = [activeWatch supportsCapability:2876273152];

  return v3;
}

+ (BOOL)activePairedWatchSupportsLiveActivities
{
  activeWatch = [self activeWatch];
  v3 = [activeWatch supportsCapability:1795521017];

  return v3;
}

+ (id)activeWatch
{
  mEMORY[0x277D37B50] = [MEMORY[0x277D37B50] sharedInstance];
  v3 = [mEMORY[0x277D37B50] getDevicesExcluding:4];
  firstObject = [v3 firstObject];

  return firstObject;
}

@end