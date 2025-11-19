@interface NSObject(SFUJsonAdditions)
- (uint64_t)sfu_appendJsonStringToString:()SFUJsonAdditions;
@end

@implementation NSObject(SFUJsonAdditions)

- (uint64_t)sfu_appendJsonStringToString:()SFUJsonAdditions
{
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSObject(SFUJsonAdditions) sfu_appendJsonStringToString:]"];
  +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v0, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/sf/SFUJson.m"], 434, 0, "%@ doesn't support JSON encoding", objc_opt_class());

  return +[OITSUAssertionHandler logBacktraceThrottled];
}

@end