@interface RequestModeChange
@end

@implementation RequestModeChange

uint64_t __fsmcontroller_RequestModeChange_block_invoke(uint64_t a1)
{
  result = fsm_requestModeChange(*(a1 + 40), *(a1 + 48), *(a1 + 56), 0, *(a1 + 64), *(a1 + 72));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

@end