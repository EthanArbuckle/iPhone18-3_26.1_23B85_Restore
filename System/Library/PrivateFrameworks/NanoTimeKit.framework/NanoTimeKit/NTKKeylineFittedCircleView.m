@interface NTKKeylineFittedCircleView
@end

@implementation NTKKeylineFittedCircleView

void __45___NTKKeylineFittedCircleView_initWithFrame___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained layer];
  v5 = [v3 CGColor];

  [v4 setBorderColor:v5];
}

@end