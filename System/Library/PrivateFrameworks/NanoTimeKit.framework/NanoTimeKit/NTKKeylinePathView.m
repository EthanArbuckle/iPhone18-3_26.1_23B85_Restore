@interface NTKKeylinePathView
@end

@implementation NTKKeylinePathView

uint64_t __53___NTKKeylinePathView_initWithPath_secondPath_scale___block_invoke(uint64_t a1, double a2, double a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained[53] containsPoint:{a2, a3}];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end