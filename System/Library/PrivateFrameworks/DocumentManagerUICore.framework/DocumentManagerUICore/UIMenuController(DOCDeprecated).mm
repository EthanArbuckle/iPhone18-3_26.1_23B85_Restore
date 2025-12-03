@interface UIMenuController(DOCDeprecated)
- (void)hideMenuIfActive;
@end

@implementation UIMenuController(DOCDeprecated)

- (void)hideMenuIfActive
{
  activeCalloutBar = [MEMORY[0x277D75238] activeCalloutBar];

  if (activeCalloutBar)
  {

    [self hideMenu];
  }
}

@end