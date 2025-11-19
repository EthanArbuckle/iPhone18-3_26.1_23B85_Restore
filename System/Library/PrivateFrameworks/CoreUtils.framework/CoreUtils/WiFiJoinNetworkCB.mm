@interface WiFiJoinNetworkCB
@end

@implementation WiFiJoinNetworkCB

void ___WiFiJoinNetworkCB_block_invoke(void *a1)
{
  (*(a1[4] + 16))();
  v2 = a1[5];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[6];
  if (v3)
  {

    CFRelease(v3);
  }
}

@end