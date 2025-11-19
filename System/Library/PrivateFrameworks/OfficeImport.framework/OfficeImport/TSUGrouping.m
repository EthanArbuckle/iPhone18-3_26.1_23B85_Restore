@interface TSUGrouping
+ (void)beginGrouping;
+ (void)endGrouping;
@end

@implementation TSUGrouping

+ (void)beginGrouping
{
  os_unfair_lock_lock(&sCuttingLevelLock);
  ++sIsGroupingLevel;

  os_unfair_lock_unlock(&sCuttingLevelLock);
}

+ (void)endGrouping
{
  if (!sIsGroupingLevel)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSUGrouping endGrouping]"];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUCutting.m"];
    [OITSUAssertionHandler handleFailureInFunction:v2 file:v3 lineNumber:56 isFatal:0 description:"Mismatched beginGrouping / endGrouping calls"];

    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  os_unfair_lock_lock(&sCuttingLevelLock);
  if (sIsGroupingLevel)
  {
    --sIsGroupingLevel;
  }

  os_unfair_lock_unlock(&sCuttingLevelLock);
}

@end