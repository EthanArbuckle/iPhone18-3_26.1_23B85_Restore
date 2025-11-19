@interface NSString(DACPLogShared)
+ (__CFString)DACPLogMakeUUID;
@end

@implementation NSString(DACPLogShared)

+ (__CFString)DACPLogMakeUUID
{
  v0 = *MEMORY[0x277CBECE8];
  v1 = CFUUIDCreate(*MEMORY[0x277CBECE8]);
  v2 = CFUUIDCreateString(v0, v1);
  CFRelease(v1);

  return v2;
}

@end