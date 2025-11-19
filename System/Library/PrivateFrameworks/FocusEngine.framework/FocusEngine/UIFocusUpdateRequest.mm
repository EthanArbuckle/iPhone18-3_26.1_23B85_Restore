@interface UIFocusUpdateRequest
@end

@implementation UIFocusUpdateRequest

uint64_t __78___UIFocusUpdateRequest_requestByRedirectingRequestToNextContainerEnvironment__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v8 = a2;
  v6 = [*(a1 + 32) environment];

  if (v6 != v8 && _UIFocusEnvironmentPrefersFocusContainment(v8))
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
  }

  return MEMORY[0x2821F96F8]();
}

@end