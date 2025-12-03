@interface NSFileHandle(FTABWrite)
- (uint64_t)writeBytes:()FTABWrite length:;
@end

@implementation NSFileHandle(FTABWrite)

- (uint64_t)writeBytes:()FTABWrite length:
{
  v2 = [MEMORY[0x277CBEA90] dataWithBytes:? length:?];
  v3 = [self ftabWriteData:v2 error:0];

  return v3;
}

@end