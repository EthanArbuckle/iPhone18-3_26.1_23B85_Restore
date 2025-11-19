@interface UIView
@end

@implementation UIView

void __54__UIView_GKAdditions___gkEnumerateSubviewsUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  v5 = a2;
  v4(v3, v5);
  [v5 _gkEnumerateSubviewsUsingBlock:*(a1 + 32)];
}

@end