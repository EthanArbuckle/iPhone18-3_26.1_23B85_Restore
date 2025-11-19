@interface UIAction
@end

@implementation UIAction

void __65__UIAction_MobileSafariExtras__safari_actionWithTarget_selector___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained || *(a1 + 48) == 1)
  {
    v4 = [MEMORY[0x1E69DC668] sharedApplication];
    v5 = *(a1 + 40);
    v6 = [v7 sender];
    [v4 sendAction:v5 to:WeakRetained from:v6 forEvent:0];
  }
}

@end