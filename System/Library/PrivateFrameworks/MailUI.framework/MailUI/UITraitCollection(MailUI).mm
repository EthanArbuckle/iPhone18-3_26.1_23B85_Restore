@interface UITraitCollection(MailUI)
- (BOOL)mf_traitDifferenceAffectsTextLayout:()MailUI;
- (double)mf_leadingEdgeToBackButtonText;
@end

@implementation UITraitCollection(MailUI)

- (BOOL)mf_traitDifferenceAffectsTextLayout:()MailUI
{
  v4 = a3;
  layoutDirection = [self layoutDirection];
  if (layoutDirection == [v4 layoutDirection] && (objc_msgSend(self, "displayScale"), v7 = v6, objc_msgSend(v4, "displayScale"), v7 == v8) && (v9 = objc_msgSend(self, "horizontalSizeClass"), v9 == objc_msgSend(v4, "horizontalSizeClass")) && (v10 = objc_msgSend(self, "verticalSizeClass"), v10 == objc_msgSend(v4, "verticalSizeClass")) && (objc_msgSend(self, "preferredContentSizeCategory"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "preferredContentSizeCategory"), v12 = objc_claimAutoreleasedReturnValue(), v12, v11, v11 == v12) && (v13 = objc_msgSend(self, "legibilityWeight"), v13 == objc_msgSend(v4, "legibilityWeight")))
  {
    _splitViewControllerContext = [self _splitViewControllerContext];
    v15 = _splitViewControllerContext != [v4 _splitViewControllerContext];
  }

  else
  {
    v15 = 1;
  }

  return v15;
}

- (double)mf_leadingEdgeToBackButtonText
{
  if ([self verticalSizeClass] == 1)
  {
    v1 = @"UINavigationBarBackIndicatorLandscape";
  }

  else
  {
    v1 = @"UINavigationBarBackIndicatorDefault";
  }

  v2 = [MEMORY[0x277D755B8] kitImageNamed:v1];
  [v2 size];
  v4 = v3 + -8.0 + 6.0;

  return v4;
}

@end