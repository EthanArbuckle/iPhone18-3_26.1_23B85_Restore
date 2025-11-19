@interface TSNavigationBarTitleView
+ (id)emptyNavigationBarTitleView;
@end

@implementation TSNavigationBarTitleView

+ (id)emptyNavigationBarTitleView
{
  v2 = objc_alloc(MEMORY[0x277D76120]);
  v3 = [v2 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v3 setHideBackButton:1];
  [v3 setHideStandardTitle:1];
  [v3 setHideLeadingBarButtons:1];
  [v3 setHideTrailingBarButtons:1];

  return v3;
}

@end