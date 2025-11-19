@interface UINavigationBar
@end

@implementation UINavigationBar

void __63__UINavigationBar_DOCAppearance___largeTitleColorForTintColor___block_invoke()
{
  v2 = objc_alloc_init(MEMORY[0x277D75D18]);
  v0 = [v2 tintColor];
  v1 = _largeTitleColorForTintColor__sDefaultHCTintColor;
  _largeTitleColorForTintColor__sDefaultHCTintColor = v0;
}

void __63__UINavigationBar_DOCAppearance___largeTitleColorForTintColor___block_invoke_2()
{
  v2 = objc_alloc_init(MEMORY[0x277D75D18]);
  v0 = [v2 tintColor];
  v1 = _largeTitleColorForTintColor__sDefaultTintColor;
  _largeTitleColorForTintColor__sDefaultTintColor = v0;
}

@end