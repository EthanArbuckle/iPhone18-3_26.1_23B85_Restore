@interface PBUIDimmingView
@end

@implementation PBUIDimmingView

uint64_t __36___PBUIDimmingView_setDim_animated___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  *&v1 = v1;
  return [*(a1 + 32) setOpacity:v1];
}

@end