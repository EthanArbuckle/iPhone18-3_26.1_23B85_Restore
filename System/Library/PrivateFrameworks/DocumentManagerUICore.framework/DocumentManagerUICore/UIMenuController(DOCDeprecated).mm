@interface UIMenuController(DOCDeprecated)
- (void)hideMenuIfActive;
@end

@implementation UIMenuController(DOCDeprecated)

- (void)hideMenuIfActive
{
  v2 = [MEMORY[0x277D75238] activeCalloutBar];

  if (v2)
  {

    [a1 hideMenu];
  }
}

@end