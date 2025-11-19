@interface UIView
@end

@implementation UIView

void __60__UIView_BatteryCenterUI__observeContentSizeCategoryChange___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3 = [*(a1 + 32) traitCollection];
  v2 = [v3 preferredContentSizeCategory];
  (*(v1 + 16))(v1, v2);
}

@end