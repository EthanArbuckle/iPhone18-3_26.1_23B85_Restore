@interface CLKUILoggingObjectForDomain
@end

@implementation CLKUILoggingObjectForDomain

void ___CLKUILoggingObjectForDomain_block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithCString:*(a1 + 40) encoding:4];
  v7 = [v2 substringFromIndex:{objc_msgSend(@"CLKUILoggingDomain", "length")}];

  v3 = v7;
  v4 = os_log_create("com.apple.ClockKitUI", [v7 cStringUsingEncoding:4]);
  v5 = *(a1 + 32);
  v6 = _CLKUILoggingObjectForDomain___logObjects[v5];
  _CLKUILoggingObjectForDomain___logObjects[v5] = v4;
}

@end