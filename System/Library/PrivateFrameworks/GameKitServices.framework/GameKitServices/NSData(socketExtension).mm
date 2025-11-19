@interface NSData(socketExtension)
+ (uint64_t)dataWithSockAddr:()socketExtension;
@end

@implementation NSData(socketExtension)

+ (uint64_t)dataWithSockAddr:()socketExtension
{
  v3 = *(a3 + 1);
  if (v3 == 2 || v3 == 30)
  {
    return [MEMORY[0x277CBEA90] dataWithBytes:? length:?];
  }

  else
  {
    return 0;
  }
}

@end