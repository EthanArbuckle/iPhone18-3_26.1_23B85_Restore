@interface MTUIAnalogClockView
+ (BOOL)isClockRegistered:(id)registered;
+ (CGPoint)handRotationalCenterForHand:(int64_t)hand;
+ (CGPoint)shadowRotationalCenterForHand:(int64_t)hand;
+ (CGSize)clockSize;
+ (CGSize)sizeForStyle:(int64_t)style;
+ (Class)classForStyle:(int64_t)style;
+ (UIEdgeInsets)insetsForStyle:(int64_t)style;
+ (UIEdgeInsets)shadowInsets;
+ (double)hourHandWidth;
+ (double)minuteHandWidth;
+ (double)secondHandLength;
+ (double)secondHandWidth;
+ (id)analogClockWithStyle:(int64_t)style;
+ (id)cacheTopLevelPath;
+ (id)cacheVersionHash;
+ (id)cacheVersionedPath;
+ (id)clockFaceForDaytime:(BOOL)daytime ignoreCache:(BOOL)cache;
+ (id)clockHand:(int64_t)hand daytime:(BOOL)daytime;
+ (id)imageCacheNameForType:(int)type daytime:(BOOL)daytime;
+ (id)imageForType:(int)type dayTime:(BOOL)time generation:(id)generation ignoreCache:(BOOL)cache;
+ (id)imageInBundleForName:(id)name;
+ (id)makeClockFaceForDaytime:(BOOL)daytime;
+ (id)makeClockHand:(int64_t)hand daytime:(BOOL)daytime;
+ (id)makeDotImageSize:(double)size color:(id)color;
+ (id)makeOverSecondHandDotImage;
+ (id)numeralFont;
+ (id)overHourHandDotForDayTime:(BOOL)time;
+ (id)overHourHandDotImageForDaytime:(BOOL)daytime;
+ (id)overSecondHandDotImage;
+ (id)shadowInfoAtIndex:(unint64_t)index;
+ (void)initialize;
+ (void)registerClock:(id)clock;
+ (void)registerSweepingClock:(id)clock;
+ (void)registerTickingClock:(id)clock;
+ (void)unregisterClock:(id)clock;
+ (void)unregisterSweepingClock:(id)clock;
+ (void)unregisterTickingClock:(id)clock;
+ (void)updateFlutterForAllTicking;
+ (void)updateTimeForAllSweeping;
+ (void)updateTimeForAllTicking;
- (CGSize)intrinsicContentSize;
- (MTUIAnalogClockView)init;
- (int64_t)hour;
- (int64_t)minute;
- (int64_t)style;
- (void)handleLocaleChange;
- (void)redrawSecondHand;
- (void)setFrame:(CGRect)frame;
- (void)setHandAngle:(double)angle forHandIndex:(int64_t)index;
- (void)setHandTransformForHandIndex:(int64_t)index;
- (void)setNighttime:(BOOL)nighttime;
- (void)setTime:(id)time animated:(BOOL)animated;
- (void)setTimeZone:(id)zone;
- (void)start;
- (void)updateFlutter;
- (void)updateTimeAnimated:(BOOL)animated;
@end

@implementation MTUIAnalogClockView

+ (Class)classForStyle:(int64_t)style
{
  v3 = __classMap;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:style];
  v5 = [v3 objectForKeyedSubscript:v4];

  return v5;
}

+ (void)initialize
{
  v21 = *MEMORY[0x277D85DE8];
  if (objc_opt_class() == self)
  {
    *(&xmmword_280BD22D8 + 8) = 0u;
    *(&xmmword_280BD22F8 + 8) = 0u;
    *(&xmmword_280BD2318 + 8) = 0u;
    unk_280BD2310 = 0u;
    unk_280BD22F0 = 0u;
    unk_280BD22D0 = 0u;
    *(&__transformCache + 8) = 0u;
    *&__transformCache = 0x3FF0000000000000;
    *(&xmmword_280BD22D8 + 1) = 0x3FF0000000000000;
    qword_280BD2308 = 0x3FF0000000000000;
    qword_280BD2330 = 0x3FF0000000000000;
    __sweepUpdateInterval = 0x47EFFFFFE0000000;
    __sweepCoarseUpdateInterval = 0x47EFFFFFE0000000;
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v4 = __classMap;
    __classMap = v3;

    [__classMap setObject:objc_opt_class() forKeyedSubscript:&unk_286BC8BC8];
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    cacheTopLevelPath = [self cacheTopLevelPath];
    if ([cacheTopLevelPath length])
    {
      v7 = [defaultManager contentsOfDirectoryAtPath:cacheTopLevelPath error:0];
      cacheVersionHash = [self cacheVersionHash];
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v9 = v7;
      v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v17;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v17 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v16 + 1) + 8 * i);
            if ([v14 length])
            {
              if (([v14 isEqualToString:cacheVersionHash] & 1) == 0)
              {
                v15 = [cacheTopLevelPath stringByAppendingPathComponent:v14];
                [defaultManager removeItemAtPath:v15 error:0];
              }
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v11);
      }
    }
  }
}

+ (id)cacheTopLevelPath
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  userLibraryDirectory = [*MEMORY[0x277D76620] userLibraryDirectory];
  v4 = [userLibraryDirectory stringByAppendingPathComponent:@"Caches"];
  bundleIdentifier = [v2 bundleIdentifier];
  v6 = [v4 stringByAppendingPathComponent:bundleIdentifier];

  return v6;
}

+ (id)cacheVersionedPath
{
  cacheTopLevelPath = [self cacheTopLevelPath];
  cacheVersionHash = [self cacheVersionHash];
  v5 = [cacheTopLevelPath stringByAppendingPathComponent:cacheVersionHash];

  return v5;
}

+ (id)cacheVersionHash
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = cacheVersionHash___cacheDirectoryHash;
  if (!cacheVersionHash___cacheDirectoryHash)
  {
    v3 = MGCopyAnswer();
    if (![(__CFString *)v3 length])
    {

      v3 = @"1A001a";
    }

    v4 = [@"MobileTimerCache" stringByAppendingString:v3];
    v5 = [v4 cStringUsingEncoding:4];
    v6 = [MEMORY[0x277CBEA90] dataWithBytes:v5 length:{objc_msgSend(v4, "length")}];
    CC_SHA1([v6 bytes], objc_msgSend(v6, "length"), md);
    v7 = [MEMORY[0x277CCAB68] stringWithCapacity:40];
    v8 = cacheVersionHash___cacheDirectoryHash;
    cacheVersionHash___cacheDirectoryHash = v7;

    for (i = 0; i != 20; ++i)
    {
      [cacheVersionHash___cacheDirectoryHash appendFormat:@"%02x", md[i]];
    }

    v2 = cacheVersionHash___cacheDirectoryHash;
  }

  return v2;
}

+ (void)updateTimeForAllTicking
{
  v2 = objc_autoreleasePoolPush();
  [__flutterClocks removeAllObjects];
  [__tickingClocks enumerateObjectsUsingBlock:&__block_literal_global_3];
  [__flutterTimer invalidate];
  v3 = __flutterTimer;
  __flutterTimer = 0;

  if ([__flutterClocks count])
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEAA8]);
    v5 = [objc_alloc(MEMORY[0x277CBEBB8]) initWithFireDate:v4 interval:objc_opt_class() target:sel_updateFlutterForAllTicking selector:0 userInfo:1 repeats:0.0333333333];
    v6 = __flutterTimer;
    __flutterTimer = v5;

    currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
    [currentRunLoop addTimer:__flutterTimer forMode:*MEMORY[0x277CBE640]];

    currentRunLoop2 = [MEMORY[0x277CBEB88] currentRunLoop];
    [currentRunLoop2 addTimer:__flutterTimer forMode:*MEMORY[0x277D77228]];
  }

  objc_autoreleasePoolPop(v2);
}

void __46__MTUIAnalogClockView_updateTimeForAllTicking__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 updateTime];
  if ([v2 runMode] == 1)
  {
    [__flutterClocks addObject:v2];
  }
}

+ (void)updateFlutterForAllTicking
{
  v2 = objc_autoreleasePoolPush();
  [__flutterClocks enumerateObjectsUsingBlock:&__block_literal_global_79];

  objc_autoreleasePoolPop(v2);
}

+ (void)updateTimeForAllSweeping
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEAA8]);
  [v2 timeIntervalSinceDate:__lastCoarseSweepUpdateTime];
  if (v3 > 0.0 && v3 < *&__sweepCoarseUpdateInterval)
  {
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    v11 = [currentCalendar components:192 fromDate:v2];

    second = [v11 second];
    minute = [v11 minute];
    [v2 timeIntervalSinceReferenceDate];
    v15 = modf(v14, &__y);
    v16 = fmod((v15 + second) * 0.104719755, 6.28318531);
    v17 = __sincosf_stret(v16);
    *&__transformCache = v17.__cosval;
    *(&__transformCache + 1) = v17.__sinval;
    *&xmmword_280BD22D8 = -v17.__sinval;
    *(&xmmword_280BD22D8 + 1) = v17.__cosval;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v18 = __sweepingClocks;
    v19 = [v18 countByEnumeratingWithState:&v27 objects:v33 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v28;
      do
      {
        v22 = 0;
        do
        {
          if (*v28 != v21)
          {
            objc_enumerationMutation(v18);
          }

          [*(*(&v27 + 1) + 8 * v22++) updateTimeContinuously:minute];
        }

        while (v20 != v22);
        v20 = [v18 countByEnumeratingWithState:&v27 objects:v33 count:16];
      }

      while (v20);
    }
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v5 = __sweepingClocks;
    v6 = [v5 countByEnumeratingWithState:&v23 objects:v32 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v24;
      do
      {
        v9 = 0;
        do
        {
          if (*v24 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v23 + 1) + 8 * v9++) updateTime];
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v23 objects:v32 count:16];
      }

      while (v7);
    }

    objc_storeStrong(&__lastCoarseSweepUpdateTime, v2);
  }
}

+ (BOOL)isClockRegistered:(id)registered
{
  registeredCopy = registered;
  runMode = [registeredCopy runMode];
  if (runMode > 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = [*off_279917BB8[runMode] containsObject:registeredCopy];
  }

  return v5;
}

+ (void)registerClock:(id)clock
{
  clockCopy = clock;
  runMode = [clockCopy runMode];
  if (runMode >= 2)
  {
    if (runMode == 2)
    {
      [self registerSweepingClock:clockCopy];
    }
  }

  else
  {
    [self registerTickingClock:clockCopy];
  }
}

+ (void)registerTickingClock:(id)clock
{
  clockCopy = clock;
  v4 = __tickingClocks;
  v15 = clockCopy;
  if (!__tickingClocks)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v6 = __tickingClocks;
    __tickingClocks = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v8 = __flutterClocks;
    __flutterClocks = v7;

    clockCopy = v15;
    v4 = __tickingClocks;
  }

  [v4 addObject:clockCopy];
  if (!__tickTimer)
  {
    v9 = objc_alloc(MEMORY[0x277CBEBB8]);
    v10 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:1.0];
    v11 = [v9 initWithFireDate:v10 interval:objc_opt_class() target:sel_updateTimeForAllTicking selector:0 userInfo:1 repeats:1.0];
    v12 = __tickTimer;
    __tickTimer = v11;

    currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
    [currentRunLoop addTimer:__tickTimer forMode:*MEMORY[0x277CBE640]];

    currentRunLoop2 = [MEMORY[0x277CBEB88] currentRunLoop];
    [currentRunLoop2 addTimer:__tickTimer forMode:*MEMORY[0x277D77228]];
  }
}

+ (void)registerSweepingClock:(id)clock
{
  clockCopy = clock;
  v4 = clockCopy;
  v25 = clockCopy;
  if (!__sweepingClocks)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v6 = __sweepingClocks;
    __sweepingClocks = v5;

    [v25 updateInterval];
    __sweepUpdateInterval = v7;
    clockCopy = [v25 coarseUpdateInterval];
    v4 = v25;
    __sweepCoarseUpdateInterval = v8;
  }

  if (v4)
  {
    [__sweepingClocks addObject:v4];
    [v25 updateInterval];
    v10 = v9;
    [__sweepTimer timeInterval];
    if (v10 < v11)
    {
      [__sweepTimer invalidate];
      v12 = __sweepTimer;
      __sweepTimer = 0;

      [v25 updateInterval];
      __sweepUpdateInterval = v13;
    }

    clockCopy = [v25 coarseUpdateInterval];
    v4 = v25;
    if (v14 < *&__sweepCoarseUpdateInterval)
    {
      clockCopy = [v25 coarseUpdateInterval];
      v4 = v25;
      __sweepCoarseUpdateInterval = v15;
    }
  }

  if (!__sweepTimer)
  {
    distantPast = [MEMORY[0x277CBEAA8] distantPast];
    v17 = __lastCoarseSweepUpdateTime;
    __lastCoarseSweepUpdateTime = distantPast;

    v18 = objc_alloc(MEMORY[0x277CBEBB8]);
    date = [MEMORY[0x277CBEAA8] date];
    v20 = [date dateByAddingTimeInterval:*&__sweepUpdateInterval];
    v21 = [v18 initWithFireDate:v20 interval:objc_opt_class() target:sel_updateTimeForAllSweeping selector:0 userInfo:1 repeats:*&__sweepUpdateInterval];
    v22 = __sweepTimer;
    __sweepTimer = v21;

    currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
    [currentRunLoop addTimer:__sweepTimer forMode:*MEMORY[0x277CBE640]];

    currentRunLoop2 = [MEMORY[0x277CBEB88] currentRunLoop];
    [currentRunLoop2 addTimer:__sweepTimer forMode:*MEMORY[0x277D77228]];

    v4 = v25;
  }

  MEMORY[0x2821F96F8](clockCopy, v4);
}

+ (void)unregisterClock:(id)clock
{
  clockCopy = clock;
  runMode = [clockCopy runMode];
  if (runMode >= 2)
  {
    if (runMode == 2)
    {
      [self unregisterSweepingClock:clockCopy];
    }
  }

  else
  {
    [self unregisterTickingClock:clockCopy];
  }
}

+ (void)unregisterTickingClock:(id)clock
{
  [__tickingClocks removeObject:clock];
  if (![__tickingClocks count])
  {
    if (!__sweepingClocks)
    {
      +[MTUIRenderedHandViewFactory flushAllCaches];
    }

    [__flutterTimer invalidate];
    v3 = __flutterTimer;
    __flutterTimer = 0;

    v4 = __flutterClocks;
    __flutterClocks = 0;

    [__tickTimer invalidate];
    v5 = __tickTimer;
    __tickTimer = 0;

    v6 = __tickingClocks;
    __tickingClocks = 0;
  }
}

+ (void)unregisterSweepingClock:(id)clock
{
  v25 = *MEMORY[0x277D85DE8];
  [__sweepingClocks removeObject:clock];
  if ([__sweepingClocks count])
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v3 = __sweepingClocks;
    v4 = [v3 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v21;
      v7 = 3.4028e38;
      v8 = 3.4028e38;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v21 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v10 = *(*(&v20 + 1) + 8 * i);
          [v10 updateInterval];
          *&v11 = v11;
          v8 = fminf(v8, *&v11);
          [v10 coarseUpdateInterval];
          *&v12 = v12;
          v7 = fminf(v7, *&v12);
        }

        v5 = [v3 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v5);
      v13 = v7;
      v14 = v8;
    }

    else
    {
      v13 = 3.40282347e38;
      v14 = 3.40282347e38;
    }

    __sweepCoarseUpdateInterval = *&v13;
    [__sweepTimer timeInterval];
    if (vabdd_f64(v14, v18) > 0.000001)
    {
      __sweepUpdateInterval = *&v14;
      [__sweepTimer invalidate];
      v19 = __sweepTimer;
      __sweepTimer = 0;

      [MTUIAnalogClockView registerSweepingClock:0];
    }
  }

  else
  {
    if (!__tickingClocks)
    {
      +[MTUIRenderedHandViewFactory flushAllCaches];
    }

    [__sweepTimer invalidate];
    v15 = __sweepTimer;
    __sweepTimer = 0;

    v16 = __lastCoarseSweepUpdateTime;
    __lastCoarseSweepUpdateTime = 0;

    v17 = __sweepingClocks;
    __sweepingClocks = 0;
  }
}

+ (CGSize)sizeForStyle:(int64_t)style
{
  v3 = [self classForStyle:style];

  [v3 clockSize];
  result.height = v5;
  result.width = v4;
  return result;
}

+ (UIEdgeInsets)insetsForStyle:(int64_t)style
{
  v3 = [self classForStyle:style];

  [v3 shadowInsets];
  result.right = v7;
  result.bottom = v6;
  result.left = v5;
  result.top = v4;
  return result;
}

+ (id)analogClockWithStyle:(int64_t)style
{
  v3 = objc_alloc_init([self classForStyle:style]);

  return v3;
}

+ (double)secondHandLength
{
  [self secondHandMainLength];
  v4 = v3;
  [self secondHandOverhangLength];
  return v4 + v5;
}

+ (double)secondHandWidth
{
  [self faceRadius];
  v4 = v3 * 0.01;
  [self antialiasPaddingRatio];
  return v4 * (1.0 / v5);
}

+ (double)minuteHandWidth
{
  [self faceRadius];
  v4 = v3 * 0.036;
  [self antialiasPaddingRatio];
  return v4 * (1.0 / v5);
}

+ (double)hourHandWidth
{
  [self faceRadius];
  v4 = v3 * 0.036;
  [self antialiasPaddingRatio];
  return v4 * (1.0 / v5);
}

+ (id)numeralFont
{
  v2 = MEMORY[0x277D74300];
  [self faceRadius];
  v4 = v3 * 0.25;

  return [v2 _lightSystemFontOfSize:v4];
}

+ (UIEdgeInsets)shadowInsets
{
  v2 = *MEMORY[0x277D768C8];
  v3 = *(MEMORY[0x277D768C8] + 8);
  v4 = *(MEMORY[0x277D768C8] + 16);
  v5 = *(MEMORY[0x277D768C8] + 24);
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

+ (CGSize)clockSize
{
  [self faceRadius];
  v3 = v2 + v2;
  v4 = v3;
  result.height = v4;
  result.width = v3;
  return result;
}

+ (id)shadowInfoAtIndex:(unint64_t)index
{
  v3 = [MTUIShadowInfo alloc];
  v4 = [(MTUIShadowInfo *)v3 initWithColor:0 radius:0.0 offset:*MEMORY[0x277CBF3A8] scale:*(MEMORY[0x277CBF3A8] + 8), 0.0];

  return v4;
}

+ (CGPoint)handRotationalCenterForHand:(int64_t)hand
{
  if (hand == 2)
  {
    [self secondHandOverhangLength];
    v5 = v9;
    [self secondHandOverhangLength];
    v11 = v10;
    [self secondHandMainLength];
    v8 = v11 + v12;
  }

  else
  {
    if (hand == 1)
    {
      [self minuteHandWidth];
      v5 = v7;
      [self minuteHandLength];
    }

    else
    {
      if (hand)
      {
        v14 = *MEMORY[0x277CBF348];
        v13 = *(MEMORY[0x277CBF348] + 8);
        goto LABEL_10;
      }

      [self hourHandWidth];
      v5 = v4;
      [self hourHandLength];
    }

    v8 = v6 + v6;
  }

  v13 = 1.0 - v5 / v8;
  v14 = 0.5;
LABEL_10:
  result.y = v13;
  result.x = v14;
  return result;
}

+ (CGPoint)shadowRotationalCenterForHand:(int64_t)hand
{
  v3 = *MEMORY[0x277CBF348];
  v4 = *(MEMORY[0x277CBF348] + 8);
  result.y = v4;
  result.x = v3;
  return result;
}

+ (id)imageCacheNameForType:(int)type daytime:(BOOL)daytime
{
  v4 = 0;
  if (type > 3)
  {
    if (type != 4)
    {
      if (type != 5)
      {
        goto LABEL_27;
      }

      if (MTUIMainScreenScale() <= 1.0)
      {
        v9 = @".png";
      }

      else
      {
        v9 = @"@2x.png";
      }

      v10 = @"reddot";
      goto LABEL_26;
    }

    v11 = @"middledot-nighttime";
    v12 = @"middledot-daytime";
LABEL_19:
    if (daytime)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }

    if (MTUIMainScreenScale() <= 1.0)
    {
      v9 = @".png";
    }

    else
    {
      v9 = @"@2x.png";
    }

    v10 = v13;
LABEL_26:
    v4 = [(__CFString *)v10 stringByAppendingString:v9];
    goto LABEL_27;
  }

  v5 = type - 1;
  if ((type - 1) < 3)
  {
    if (daytime)
    {
      v6 = @"-daytime";
    }

    else
    {
      v6 = @"-nighttime";
    }

    if (MTUIMainScreenScale() <= 1.0)
    {
      v7 = @".png";
    }

    else
    {
      v7 = @"@2x.png";
    }

    v8 = [(__CFString *)v6 stringByAppendingString:v7];
    v4 = [(__CFString *)GeneratedBitmapHandNames[v5] stringByAppendingString:v8];

    goto LABEL_27;
  }

  if (!type)
  {
    v11 = @"face-nighttime";
    v12 = @"face-daytime";
    goto LABEL_19;
  }

LABEL_27:

  return v4;
}

+ (id)imageForType:(int)type dayTime:(BOOL)time generation:(id)generation ignoreCache:(BOOL)cache
{
  cacheCopy = cache;
  timeCopy = time;
  v8 = *&type;
  generationCopy = generation;
  style = [self style];
  v12 = 100;
  if (!timeCopy)
  {
    v12 = 0;
  }

  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v12 + v8 + 1000 * style];
  v14 = MTImageCache();
  v15 = [v14 objectForKey:v13];
  if (v15)
  {
    v16 = !cacheCopy;
  }

  else
  {
    v16 = 0;
  }

  if (!v16)
  {
    if (![self shouldCacheImageOnDiskForType:v8 dayTime:timeCopy])
    {
      v28 = generationCopy[2](generationCopy);

      v15 = v28;
      if (!v28)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    }

    v30 = cacheCopy;
    cacheVersionedPath = [self cacheVersionedPath];
    resourcePath = [self resourcePath];
    v19 = [cacheVersionedPath stringByAppendingPathComponent:resourcePath];

    selfCopy = self;
    v21 = v19;
    v22 = [selfCopy imageCacheNameForType:v8 daytime:timeCopy];
    v23 = [v19 stringByAppendingPathComponent:v22];

    v24 = [MEMORY[0x277D755B8] imageWithContentsOfFile:v23];

    if (generationCopy)
    {
      LOBYTE(cacheCopy) = v30;
      if (!v24)
      {
        v25 = generationCopy[2](generationCopy);
        if (v25)
        {
          v26 = v25;
          v27 = dispatch_get_global_queue(-2, 0);
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __67__MTUIAnalogClockView_imageForType_dayTime_generation_ignoreCache___block_invoke;
          block[3] = &unk_279917B38;
          v32 = v21;
          v24 = v26;
          v33 = v24;
          v34 = v23;
          dispatch_async(v27, block);
        }

        else
        {
          v24 = 0;
        }
      }
    }

    else
    {
      LOBYTE(cacheCopy) = v30;
    }

    v15 = v24;
    if (v24)
    {
LABEL_17:
      if (!cacheCopy)
      {
        [v14 setObject:v15 forKey:v13];
      }
    }
  }

LABEL_19:

  return v15;
}

void __67__MTUIAnalogClockView_imageForType_dayTime_generation_ignoreCache___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  [v2 _web_createDirectoryAtPathWithIntermediateDirectories:*(a1 + 32) attributes:0];

  v3 = UIImagePNGRepresentation(*(a1 + 40));
  [v3 writeToFile:*(a1 + 48) atomically:1];
}

+ (id)makeClockFaceForDaytime:(BOOL)daytime
{
  v83[2] = *MEMORY[0x277D85DE8];
  if (daytime)
  {
    dayTimeFaceColor = [self dayTimeFaceColor];
    [self dayTimeTextColor];
  }

  else
  {
    dayTimeFaceColor = [self nightTimeFaceColor];
    [self nightTimeTextColor];
  }
  v5 = ;
  [self shadowInsets];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [self clockSize];
  v15 = v14;
  v17 = v16;
  v18 = *MEMORY[0x277CBF348];
  v19 = *(MEMORY[0x277CBF348] + 8);
  doesFaceHaveShadow = [self doesFaceHaveShadow];
  v21 = MTUIMainScreenScale();
  v85.width = v15;
  v85.height = v17;
  UIGraphicsBeginImageContextWithOptions(v85, 0, v21);
  v22 = v9 + v18;
  v23 = v17;
  v24 = v7 + v19;
  v25 = v9 + v13;
  v26 = v22;
  v27 = v15;
  v28 = v15 - v25;
  v29 = v17 - (v7 + v11);
  v80 = v24;
  UIRectGetCenter();
  v75 = v31;
  v76 = v30;
  if (doesFaceHaveShadow)
  {
    v78 = v11 + v29 + v80 + 1.0;
    for (i = 4; i != -1; --i)
    {
      v33 = [self shadowInfoAtIndex:i];
      v34 = [MEMORY[0x277D75208] bezierPathWithOvalInRect:{v26, v80, v28, v29}];
      CGAffineTransformMakeTranslation(&v81, 0.0, -v78);
      [v34 applyTransform:&v81];
      [v33 scale];
      v36 = v26;
      v37 = v27;
      v38 = v27 * (1.0 - v35) * 0.5;
      [v33 scale];
      CGAffineTransformMakeTranslation(&v81, v38, -((1.0 - v39) * v23) * 0.5);
      [v34 applyTransform:&v81];
      [v33 scale];
      v41 = v40;
      [v33 scale];
      CGAffineTransformMakeScale(&v81, v41, v42);
      [v34 applyTransform:&v81];
      [v33 offset];
      v44 = v43;
      v45 = v23;
      v47 = v78 + v46;
      CurrentContext = UIGraphicsGetCurrentContext();
      [v33 radius];
      v49 = v28;
      v51 = v50;
      color = [v33 color];
      cGColor = [color CGColor];
      v86.width = v44;
      v27 = v37;
      v26 = v36;
      v86.height = v47;
      v23 = v45;
      v54 = v51;
      v28 = v49;
      CGContextSetShadowWithColor(CurrentContext, v86, v54, cGColor);

      [v34 fill];
    }
  }

  v55 = [MEMORY[0x277D75208] bezierPathWithOvalInRect:{v26, v80, v28, v29}];
  v56 = UIGraphicsGetCurrentContext();
  CGContextSetShadowWithColor(v56, *MEMORY[0x277CBF3A8], 0.0, 0);
  v79 = dayTimeFaceColor;
  [dayTimeFaceColor setFill];
  ty = v55;
  [v55 fill];
  [self faceRadius];
  v58 = v57;
  [self numeralInset];
  v60 = v58 - v59;
  numeralFont = [self numeralFont];
  v62 = *MEMORY[0x277D740A8];
  v63 = *MEMORY[0x277D740C0];
  v64 = -1.04719755;
  for (j = 1; j != 13; ++j)
  {
    v66 = objc_alloc(MEMORY[0x277CCA898]);
    v67 = [MEMORY[0x277CCABB0] numberWithInteger:j];
    stringValue = [v67 stringValue];
    v82[0] = v62;
    v82[1] = v63;
    v83[0] = numeralFont;
    v83[1] = v5;
    [MEMORY[0x277CBEAC0] dictionaryWithObjects:v83 forKeys:v82 count:2];
    v70 = v69 = v5;
    v71 = [v66 initWithString:stringValue attributes:v70];

    v5 = v69;
    [v71 size];
    v72 = __sincos_stret(v64);
    v81.a = v76 + v60 * v72.__cosval;
    v81.b = v75 + v60 * v72.__sinval;
    [self adjustNumberalCenter:&v81 forNumeralIndex:j];
    UIRectCenteredAboutPointScale();
    [v71 drawInRect:?];
    v64 = v64 + 0.523598776;
  }

  v73 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v73;
}

+ (id)clockFaceForDaytime:(BOOL)daytime ignoreCache:(BOOL)cache
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__MTUIAnalogClockView_clockFaceForDaytime_ignoreCache___block_invoke;
  v6[3] = &__block_descriptor_41_e14___UIImage_8__0l;
  v6[4] = self;
  daytimeCopy = daytime;
  v4 = [self imageForType:0 dayTime:daytime generation:v6 ignoreCache:cache];

  return v4;
}

+ (id)makeClockHand:(int64_t)hand daytime:(BOOL)daytime
{
  v6 = 0;
  v7 = 0.0;
  if (hand <= 0)
  {
    if (hand == -1)
    {
      goto LABEL_10;
    }

    v8 = 0.0;
    if (hand)
    {
      goto LABEL_25;
    }

    if (daytime)
    {
      [self dayTimeHourHandColor];
    }

    else
    {
      [self nightTimeHourHandColor];
    }
    v6 = ;
    [self hourHandLength];
    v8 = v13;
    [self hourHandWidth];
  }

  else
  {
    switch(hand)
    {
      case 1:
        if (daytime)
        {
          [self dayTimeMinuteHandColor];
        }

        else
        {
          [self nightTimeMinuteHandColor];
        }
        v6 = ;
        [self minuteHandLength];
        v8 = v10;
        [self minuteHandWidth];
        break;
      case 2:
        if (daytime)
        {
          [self dayTimeSecondHandColor];
        }

        else
        {
          [self nightTimeSecondHandColor];
        }
        v6 = ;
        [self secondHandLength];
        v8 = v12;
        [self secondHandWidth];
        break;
      case 3:
LABEL_10:
        v9 = MTLogForCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          [MTUIAnalogClockView makeClockHand:hand daytime:v9];
        }

        v6 = 0;
        goto LABEL_13;
      default:
LABEL_13:
        v8 = 0.0;
        goto LABEL_25;
    }
  }

  v7 = v11;
LABEL_25:
  v21.width = v7;
  v21.height = v8;
  UIGraphicsBeginImageContextWithOptions(v21, 0, 0.0);
  bezierPath = [MEMORY[0x277D75208] bezierPath];
  v15 = bezierPath;
  if (hand == 2)
  {
    v16 = 2;
  }

  else
  {
    v16 = 1;
  }

  [bezierPath setLineCapStyle:v16];
  [self antialiasPaddingRatio];
  [v15 setLineWidth:v7 * v17];
  [v15 moveToPoint:{v7 * 0.5, v7}];
  [v15 addLineToPoint:{v7 * 0.5, v8 - v7}];
  [v6 setStroke];
  [v15 stroke];
  v18 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v18;
}

+ (id)clockHand:(int64_t)hand daytime:(BOOL)daytime
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __41__MTUIAnalogClockView_clockHand_daytime___block_invoke;
  v6[3] = &__block_descriptor_49_e14___UIImage_8__0l;
  v6[4] = self;
  v6[5] = hand;
  daytimeCopy = daytime;
  v4 = [self imageForType:(hand + 1) dayTime:daytime generation:v6];

  return v4;
}

+ (id)makeDotImageSize:(double)size color:(id)color
{
  sizeCopy = size;
  v7 = roundf(sizeCopy);
  v8 = (v7 - size) * 0.5;
  colorCopy = color;
  v17.width = v7;
  v17.height = v7;
  UIGraphicsBeginImageContextWithOptions(v17, 0, 0.0);
  v18.origin.x = v8;
  v18.origin.y = v8;
  v18.size.width = size;
  v18.size.height = size;
  MidX = CGRectGetMidX(v18);
  v19.origin.x = v8;
  v19.origin.y = v8;
  v19.size.width = size;
  v19.size.height = size;
  MidY = CGRectGetMidY(v19);
  v12 = objc_alloc_init(MEMORY[0x277D75208]);
  v20.origin.x = v8;
  v20.origin.y = v8;
  v20.size.width = size;
  v20.size.height = size;
  [v12 moveToPoint:{CGRectGetMidX(v20), 0.0}];
  [self antialiasPaddingRatio];
  [v12 addArcWithCenter:1 radius:MidX startAngle:MidY endAngle:v13 * size * 0.5 clockwise:{4.71238898, 10.9955743}];
  [v12 closePath];
  [colorCopy setFill];

  [v12 fill];
  v14 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v14;
}

+ (id)overHourHandDotImageForDaytime:(BOOL)daytime
{
  [self overHourHandDotSize];
  v6 = v5;
  if (daytime)
  {
    [self dayTimeOverHourHandDotColor];
  }

  else
  {
    [self nightTimeOverHourHandDotColor];
  }
  v7 = ;
  v8 = [self makeDotImageSize:v7 color:v6];

  return v8;
}

+ (id)overHourHandDotForDayTime:(BOOL)time
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __49__MTUIAnalogClockView_overHourHandDotForDayTime___block_invoke;
  v5[3] = &__block_descriptor_41_e14___UIImage_8__0l;
  v5[4] = self;
  timeCopy = time;
  v3 = [self imageForType:4 dayTime:time generation:v5];

  return v3;
}

+ (id)makeOverSecondHandDotImage
{
  [self overSecondHandDotSize];
  v4 = v3;
  overSecondHandDotColor = [self overSecondHandDotColor];
  v6 = [self makeDotImageSize:overSecondHandDotColor color:v4];

  return v6;
}

+ (id)overSecondHandDotImage
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __45__MTUIAnalogClockView_overSecondHandDotImage__block_invoke;
  v4[3] = &__block_descriptor_40_e14___UIImage_8__0l;
  v4[4] = self;
  v2 = [self imageForType:5 dayTime:0 generation:v4];

  return v2;
}

+ (id)imageInBundleForName:(id)name
{
  v3 = MEMORY[0x277CCA8D8];
  nameCopy = name;
  v5 = [v3 bundleForClass:objc_opt_class()];
  v6 = [MEMORY[0x277D755B8] imageNamed:nameCopy inBundle:v5];

  return v6;
}

- (void)setFrame:(CGRect)frame
{
  y = frame.origin.y;
  x = frame.origin.x;
  [objc_opt_class() clockSize];
  v8.receiver = self;
  v8.super_class = MTUIAnalogClockView;
  [(MTUIAnalogClockView *)&v8 setFrame:x, y, v6, v7];
}

- (MTUIAnalogClockView)init
{
  v39.receiver = self;
  v39.super_class = MTUIAnalogClockView;
  v2 = [(MTUIAnalogClockView *)&v39 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  if (v2)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_handleLocaleChange name:*MEMORY[0x277CBE620] object:0];

    v2->_runMode = -1;
    v4 = objc_alloc(MEMORY[0x277CBEA80]);
    v5 = [v4 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
    calendar = v2->_calendar;
    v2->_calendar = v5;

    v7 = objc_opt_class();
    v8 = [v7 clockFaceForDaytime:1];
    faceDayImage = v2->_faceDayImage;
    v2->_faceDayImage = v8;

    v10 = [v7 clockFaceForDaytime:0];
    faceNightImage = v2->_faceNightImage;
    v2->_faceNightImage = v10;

    v2->_nighttime = 0;
    v12 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v2->_faceDayImage];
    faceView = v2->_faceView;
    v2->_faceView = v12;

    [(MTUIAnalogClockView *)v2 addSubview:v2->_faceView];
    doesFaceHaveShadow = [v7 doesFaceHaveShadow];
    [v7 clockSize];
    if (doesFaceHaveShadow)
    {
      [v7 shadowInsets];
    }

    UIRectGetCenter();
    v16 = v15;
    v18 = v17;
    for (i = 0; ; ++i)
    {
      v20 = [v7 clockHand:i daytime:1];
      v21 = [MTUIBitmapHandView alloc];
      [v7 handRotationalCenterForHand:i];
      v22 = [(MTUIBitmapHandView *)v21 initWithImage:v20 rotationalCenter:?];
      v23 = v2->_dayHands[i];
      v2->_dayHands[i] = v22;

      [(MTUIAnalogClockView *)v2 addSubview:v2->_dayHands[i]];
      [(UIView *)v2->_dayHands[i] setCenter:v16, v18];
      if (i == 2)
      {
        break;
      }

      v24 = [v7 clockHand:i daytime:0];

      v25 = [MTUIBitmapHandView alloc];
      [v7 handRotationalCenterForHand:i];
      v26 = [(MTUIBitmapHandView *)v25 initWithImage:v24 rotationalCenter:?];
      v27 = v2->_nightHands[i];
      v2->_nightHands[i] = v26;

      [(MTUIAnalogClockView *)v2 addSubview:v2->_nightHands[i]];
      [(UIView *)v2->_nightHands[i] setCenter:v16, v18];
      [(UIView *)v2->_nightHands[i] setHidden:1];
    }

    if ([v7 hasOverHourHandDot])
    {
      v28 = [v7 overHourHandDotForDayTime:1];
      v29 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v28];
      middleDotDay = v2->_middleDotDay;
      v2->_middleDotDay = v29;

      [(MTUIAnalogClockView *)v2 insertSubview:v2->_middleDotDay belowSubview:v2->_dayHands[2]];
      [(UIImageView *)v2->_middleDotDay setCenter:v16, v18];
      v31 = [v7 overHourHandDotForDayTime:0];

      v32 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v31];
      middleDotNight = v2->_middleDotNight;
      v2->_middleDotNight = v32;

      [(MTUIAnalogClockView *)v2 insertSubview:v2->_middleDotNight belowSubview:v2->_dayHands[2]];
      [(UIImageView *)v2->_middleDotNight setCenter:v16, v18];
      [(UIImageView *)v2->_middleDotNight setHidden:1];
    }

    if ([v7 hasOverSecondHandDot])
    {
      overSecondHandDotImage = [v7 overSecondHandDotImage];
      v35 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:overSecondHandDotImage];
      middleRedDot = v2->_middleRedDot;
      v2->_middleRedDot = v35;

      [(UIImageView *)v2->_middleRedDot setCenter:v16, v18];
      [(MTUIAnalogClockView *)v2 addSubview:v2->_middleRedDot];
    }

    v37 = v2;
  }

  return v2;
}

- (int64_t)style
{
  v2 = objc_opt_class();

  return [v2 style];
}

- (CGSize)intrinsicContentSize
{
  v2 = objc_opt_class();

  [v2 clockSize];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)setHandTransformForHandIndex:(int64_t)index
{
  v19 = xmmword_280BD22F8;
  v20 = *&qword_280BD2308;
  v21 = xmmword_280BD2318;
  v22 = unk_280BD2328;
  v15 = __transformCache;
  v16 = unk_280BD22C8;
  v17 = xmmword_280BD22D8;
  v18 = unk_280BD22E8;
  layer = [(UIView *)self->_dayHands[index] layer];
  [layer setTransform:&v15];

  v11 = xmmword_280BD22F8;
  v12 = *&qword_280BD2308;
  v13 = xmmword_280BD2318;
  v14 = unk_280BD2328;
  v7 = __transformCache;
  v8 = unk_280BD22C8;
  v9 = xmmword_280BD22D8;
  v10 = unk_280BD22E8;
  layer2 = [(UIView *)self->_nightHands[index] layer];
  v19 = v11;
  v20 = v12;
  v21 = v13;
  v22 = v14;
  v15 = v7;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  [layer2 setTransform:&v15];
}

- (void)setHandAngle:(double)angle forHandIndex:(int64_t)index
{
  v6 = fmod(angle, 6.28318531);
  v7 = __sincosf_stret(v6);
  *&__transformCache = v7.__cosval;
  *(&__transformCache + 1) = v7.__sinval;
  *&xmmword_280BD22D8 = -v7.__sinval;
  *(&xmmword_280BD22D8 + 1) = v7.__cosval;

  [(MTUIAnalogClockView *)self setHandTransformForHandIndex:index];
}

- (void)updateFlutter
{
  flutterIndex = self->_flutterIndex;
  if (flutterIndex > 2)
  {
    [__flutterTimer invalidate];
    v6 = __flutterTimer;
    __flutterTimer = 0;
  }

  else
  {
    seconds = self->_seconds;
    self->_flutterIndex = flutterIndex + 1;
    v5 = (seconds + updateFlutter_flutterAmounts[flutterIndex]) * 0.0174532925 * 6.0;

    [(MTUIAnalogClockView *)self setHandAngle:2 forHandIndex:v5];
  }
}

- (void)setNighttime:(BOOL)nighttime
{
  if (self->_nighttime != nighttime)
  {
    self->_nighttime = nighttime;
    faceView = self->_faceView;
    v5 = &OBJC_IVAR___MTUIAnalogClockView__faceDayImage;
    if (nighttime)
    {
      v5 = &OBJC_IVAR___MTUIAnalogClockView__faceNightImage;
    }

    [(UIImageView *)faceView setImage:*(&self->super.super.super.isa + *v5)];
    v6 = 0;
    nightHands = self->_nightHands;
    do
    {
      if (nightHands[v6])
      {
        [(UIView *)self->_dayHands[v6] setHidden:self->_nighttime];
        [(UIView *)nightHands[v6] setHidden:!self->_nighttime];
      }

      ++v6;
    }

    while (v6 != 3);
    [(UIImageView *)self->_middleDotDay setHidden:self->_nighttime];
    [(UIImageView *)self->_middleDotNight setHidden:!self->_nighttime];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"AnalogClockDidChangeNighttimeNotification" object:self];
  }
}

- (void)updateTimeAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v15 = objc_alloc_init(MEMORY[0x277CBEAA8]);
  v5 = self->_time;
  [(MTUIAnalogClockView *)self setTime:v15 animated:animatedCopy];
  if (v5)
  {
    [(NSDate *)self->_time timeIntervalSinceDate:v5];
    if (v6 > 0.0 && v6 < 300.0)
    {
      v7 = [(NSCalendar *)self->_calendar components:32 fromDate:v5];
      hour = [v7 hour];

      v9 = [(NSCalendar *)self->_calendar components:32 fromDate:v15];
      hour2 = [v9 hour];

      if (hour2)
      {
        v11 = 0;
      }

      else
      {
        v11 = hour == 23;
      }

      if (v11)
      {
        v13 = @"AnalogClockDidCrossMidnightNotification";
      }

      else
      {
        if (hour2 != 12 || hour != 11)
        {
          goto LABEL_16;
        }

        v13 = @"AnalogClockDidCrossNoonNotification";
      }

      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter postNotificationName:v13 object:self];
    }
  }

LABEL_16:
}

- (int64_t)hour
{
  v2 = [(NSCalendar *)self->_calendar components:32 fromDate:self->_time];
  hour = [v2 hour];

  return hour;
}

- (int64_t)minute
{
  v2 = [(NSCalendar *)self->_calendar components:64 fromDate:self->_time];
  minute = [v2 minute];

  return minute;
}

- (void)setTime:(id)time animated:(BOOL)animated
{
  timeCopy = time;
  v7 = [(NSDate *)self->_time isEqualToDate:timeCopy];
  v8 = timeCopy;
  if (!v7)
  {
    time = self->_time;
    if (time != timeCopy)
    {
      objc_storeStrong(&self->_time, time);
      time = self->_time;
    }

    v10 = [(NSCalendar *)self->_calendar components:224 fromDate:time];
    hour = [v10 hour];
    minute = [v10 minute];
    second = [v10 second];
    runMode = self->_runMode;
    if (runMode != 2)
    {
      if (runMode == 1)
      {
        second = second + 0.15;
        self->_seconds = second;
      }

      self->_flutterIndex = 0;
      goto LABEL_8;
    }

    if (animated)
    {
      [(NSDate *)self->_time timeIntervalSinceReferenceDate];
      v19 = modf(v18, &__y);
      v20 = self->_runMode;
      second = v19 + second;
      self->_flutterIndex = 0;
      if (v20 != 2)
      {
LABEL_8:
        v15 = second * 0.104719755;
        v16 = minute * 0.104719755;
        v17 = v16 / 12.0 + hour * 0.523598776;
LABEL_14:
        [(MTUIAnalogClockView *)self setHandAngle:2 forHandIndex:v15];
        [(MTUIAnalogClockView *)self setHandAngle:1 forHandIndex:v16];
        [(MTUIAnalogClockView *)self setHandAngle:0 forHandIndex:v17];
        [(MTUIAnalogClockView *)self setNighttime:(hour - 18) < 0xFFFFFFFFFFFFFFF4];

        v8 = timeCopy;
        goto LABEL_15;
      }
    }

    else
    {
      self->_flutterIndex = 0;
    }

    v21 = second / 60.0 + minute;
    v15 = second * 0.104719755;
    v16 = v21 * 0.104719755;
    v17 = (v21 / 60.0 + hour) * 0.523598776;
    goto LABEL_14;
  }

LABEL_15:

  MEMORY[0x2821F96F8](v7, v8);
}

- (void)setTimeZone:(id)zone
{
  zoneCopy = zone;
  timeZone = [(NSCalendar *)self->_calendar timeZone];
  v5 = [timeZone isEqualToTimeZone:zoneCopy];

  if ((v5 & 1) == 0)
  {
    [(NSCalendar *)self->_calendar setTimeZone:zoneCopy];
    if (self->_runMode != -1)
    {
      if (self->_time)
      {
        self->_minuteHourAnimationTriggered = 0;
        if ([(MTUIAnalogClockView *)self isStarted])
        {
          [(MTUIAnalogClockView *)self stop];
          [(MTUIAnalogClockView *)self start];
        }

        else
        {
          [(MTUIAnalogClockView *)self updateTimeAnimated:0];
        }
      }
    }
  }
}

- (void)start
{
  if (![(MTUIAnalogClockView *)self isStarted])
  {
    [(MTUIAnalogClockView *)self updateTimeAnimated:0];
    [MTUIAnalogClockView registerClock:self];

    [(MTUIAnalogClockView *)self updateTimeAnimated:1];
  }
}

- (void)handleLocaleChange
{
  v3 = [objc_opt_class() clockFaceForDaytime:1 ignoreCache:1];
  faceDayImage = self->_faceDayImage;
  self->_faceDayImage = v3;

  v5 = [objc_opt_class() clockFaceForDaytime:0 ignoreCache:1];
  faceNightImage = self->_faceNightImage;
  self->_faceNightImage = v5;

  faceView = self->_faceView;
  if (self->_nighttime)
  {
    v8 = 424;
  }

  else
  {
    v8 = 416;
  }

  v9 = *(&self->super.super.super.isa + v8);

  [(UIImageView *)faceView setImage:v9];
}

- (void)redrawSecondHand
{
  v3 = objc_opt_class();
  v4 = 1000 * [(MTUIAnalogClockView *)self style];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v4 + 103];
  v6 = MTImageCache();
  v29 = v5;
  [v6 removeObjectForKey:v5];

  cacheVersionedPath = [v3 cacheVersionedPath];
  resourcePath = [v3 resourcePath];
  v9 = [cacheVersionedPath stringByAppendingPathComponent:resourcePath];

  v28 = [v3 imageCacheNameForType:3 daytime:1];
  v10 = [v9 stringByAppendingPathComponent:?];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v27 = v10;
  [defaultManager _web_removeFileOnlyAtPath:v10];

  v12 = self->_dayHands[2];
  [(UIView *)v12 removeFromSuperview];
  v13 = [v3 clockHand:2 daytime:1];
  v14 = [MTUIBitmapHandView alloc];
  [v3 handRotationalCenterForHand:2];
  v15 = [(MTUIBitmapHandView *)v14 initWithImage:v13 rotationalCenter:?];
  v16 = self->_dayHands[2];
  self->_dayHands[2] = v15;

  [(UIView *)v12 center];
  [(UIView *)v15 setCenter:?];
  if (v12)
  {
    [(UIView *)v12 transform];
  }

  else
  {
    v37 = 0u;
    v38 = 0u;
    v36 = 0u;
  }

  v33 = v36;
  v34 = v37;
  v35 = v38;
  [(UIView *)v15 setTransform:&v33];
  [(MTUIAnalogClockView *)self addSubview:v15];
  if ([v3 hasOverSecondHandDot])
  {
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v4 | 5];
    v18 = MTImageCache();
    [v18 removeObjectForKey:v17];

    v19 = [v3 imageCacheNameForType:5 daytime:0];
    v20 = [v9 stringByAppendingPathComponent:v19];
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    [defaultManager2 _web_removeFileOnlyAtPath:v20];

    v22 = self->_middleRedDot;
    [(UIImageView *)v22 removeFromSuperview];
    overSecondHandDotImage = [v3 overSecondHandDotImage];
    v24 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:overSecondHandDotImage];
    middleRedDot = self->_middleRedDot;
    self->_middleRedDot = v24;

    [(UIImageView *)v22 center];
    [(UIImageView *)self->_middleRedDot setCenter:?];
    if (v22)
    {
      [(UIImageView *)v22 transform];
    }

    else
    {
      v31 = 0u;
      v32 = 0u;
      v30 = 0u;
    }

    v26 = self->_middleRedDot;
    v33 = v30;
    v34 = v31;
    v35 = v32;
    [(UIImageView *)v26 setTransform:&v33];
    [(MTUIAnalogClockView *)self addSubview:self->_middleRedDot];
  }
}

+ (void)makeClockHand:(uint64_t)a1 daytime:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = a1;
  _os_log_debug_impl(&dword_25A0D1000, a2, OS_LOG_TYPE_DEBUG, "Tried to make clock hand of type %ld", &v2, 0xCu);
}

@end