@interface TSUCutting
+ (void)beginCutting;
+ (void)endCutting;
@end

@implementation TSUCutting

+ (void)beginCutting
{
  os_unfair_lock_lock(&sCuttingLevelLock);
  ++sIsCuttingLevel;

  os_unfair_lock_unlock(&sCuttingLevelLock);
}

+ (void)endCutting
{
  if (!sIsCuttingLevel)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSUCutting endCutting]"];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUCutting.m"];
    [OITSUAssertionHandler handleFailureInFunction:v2 file:v3 lineNumber:31 isFatal:0 description:"Mismatched beginCutting / endCutting calls"];

    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  os_unfair_lock_lock(&sCuttingLevelLock);
  if (sIsCuttingLevel)
  {
    --sIsCuttingLevel;
  }

  os_unfair_lock_unlock(&sCuttingLevelLock);
}

@end