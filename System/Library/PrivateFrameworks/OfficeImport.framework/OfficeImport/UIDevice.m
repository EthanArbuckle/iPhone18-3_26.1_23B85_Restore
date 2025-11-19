@interface UIDevice
@end

@implementation UIDevice

void __40__UIDevice_TSUAdditions__platformString__block_invoke()
{
  size = 0;
  sysctlbyname("hw.machine", 0, &size, 0, 0);
  v0 = malloc_type_malloc(size, 0x266587DDuLL);
  sysctlbyname("hw.machine", v0, &size, 0, 0);
  v1 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v0];
  free(v0);
  platformString_s_platformString = v1;
  if (!v1)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[UIDevice(TSUAdditions) platformString]_block_invoke"];
    +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v2, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/UIDevice_TSUAdditions.m"], 36, 0, "invalid nil value for '%{public}s'", "s_platformString");
    +[OITSUAssertionHandler logBacktraceThrottled];
  }
}

@end