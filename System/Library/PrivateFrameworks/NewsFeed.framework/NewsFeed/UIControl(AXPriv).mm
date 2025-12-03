@interface UIControl(AXPriv)
- (uint64_t)_feldsparAccessibilityPresentMenu;
@end

@implementation UIControl(AXPriv)

- (uint64_t)_feldsparAccessibilityPresentMenu
{
  if ([self showsMenuAsPrimaryAction])
  {
    contextMenuInteraction = [self contextMenuInteraction];
    v3 = objc_opt_respondsToSelector();
    if (v3)
    {
      [self accessibilityActivationPoint];
      [contextMenuInteraction _presentMenuAtLocation:?];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

@end