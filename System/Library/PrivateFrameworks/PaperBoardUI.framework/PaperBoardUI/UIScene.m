@interface UIScene
@end

@implementation UIScene

id __40__UIScene_PaperBoard__pb_performUpdate___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 _FBSScene];
  v6 = [v5 specification];
  [v6 transitionContextClass];
  v7 = objc_opt_new();

  (*(*(a1 + 40) + 16))();

  return v7;
}

@end