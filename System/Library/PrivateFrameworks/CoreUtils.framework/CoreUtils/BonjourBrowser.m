@interface BonjourBrowser
@end

@implementation BonjourBrowser

void ___BonjourBrowser_NANEnsureStarted_block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3 == *(v2 + 72))
  {
    _BonjourBrowser_NANEndpointFound(v2, a2);
  }
}

void ___BonjourBrowser_NANEnsureStarted_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3 == *(v2 + 72))
  {
    _BonjourBrowser_NANEndpointLost(v2, a2);
  }
}

void ___BonjourBrowser_NANEnsureStarted_block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3 == *(v2 + 72))
  {
    _BonjourBrowser_NANEndpointFound(v2, a2);
  }
}

void ___BonjourBrowser_NANEnsureStarted_block_invoke_4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    if (v3 == *(*(a1 + 40) + 72))
    {
      [v3 invalidate];

      *(*(a1 + 40) + 72) = 0;
    }
  }
}

void ___BonjourBrowser_PostEventEx_block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  _Block_release(*(a1 + 32));
  v2 = *(a1 + 40);
  if (v2)
  {

    CFRelease(v2);
  }
}

@end