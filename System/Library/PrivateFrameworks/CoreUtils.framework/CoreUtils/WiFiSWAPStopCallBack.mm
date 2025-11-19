@interface WiFiSWAPStopCallBack
@end

@implementation WiFiSWAPStopCallBack

void ___WiFiSWAPStopCallBack_block_invoke(uint64_t a1)
{
  (*(a1 + 32))(*(a1 + 40), *(a1 + 56), *(a1 + 48));
  v2 = *(a1 + 40);

  CFRelease(v2);
}

@end