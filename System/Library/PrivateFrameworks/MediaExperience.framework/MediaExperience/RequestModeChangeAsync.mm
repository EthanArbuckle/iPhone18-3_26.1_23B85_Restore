@interface RequestModeChangeAsync
@end

@implementation RequestModeChangeAsync

void __fsmcontroller_RequestModeChangeAsync_block_invoke(uint64_t a1)
{
  v7 = 0u;
  v8 = 0u;
  v2 = fsm_requestModeChange(*(a1 + 40), a1 + 48, *(a1 + 120), 0, &v7, *(a1 + 128));
  free(*(a1 + 120));
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  v6[0] = v7;
  v6[1] = v8;
  v4(v3, v2, v6, v5);
  CFRelease(*(a1 + 40));
}

@end