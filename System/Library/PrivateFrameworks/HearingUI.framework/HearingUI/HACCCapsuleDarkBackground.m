@interface HACCCapsuleDarkBackground
- (void)setupBackgroundVisualStyle;
@end

@implementation HACCCapsuleDarkBackground

- (void)setupBackgroundVisualStyle
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__HACCCapsuleDarkBackground_setupBackgroundVisualStyle__block_invoke;
  block[3] = &unk_2796F6D90;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __55__HACCCapsuleDarkBackground_setupBackgroundVisualStyle__block_invoke(uint64_t a1)
{
  v2 = HUICCBackgroundVisualStylingProviderForCategory(2);
  [v2 _automaticallyUpdateView:*(a1 + 32) withStyleNamed:@"moduleListTint" andObserverBlock:0];
}

@end