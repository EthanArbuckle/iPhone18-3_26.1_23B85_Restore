@interface NTKLoggingObjectForDomain
@end

@implementation NTKLoggingObjectForDomain

void ___NTKLoggingObjectForDomain_block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithCString:*(a1 + 40) encoding:4];
  v7 = [v2 substringFromIndex:{objc_msgSend(@"NTKLoggingDomain", "length")}];

  v3 = v7;
  v4 = os_log_create("com.apple.NanoTimeKit", [v7 cStringUsingEncoding:4]);
  v5 = *(a1 + 32);
  v6 = _NTKLoggingObjectForDomain___logObjects[v5];
  _NTKLoggingObjectForDomain___logObjects[v5] = v4;
}

@end