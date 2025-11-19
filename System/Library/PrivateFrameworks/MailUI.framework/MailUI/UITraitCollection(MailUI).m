@interface UITraitCollection(MailUI)
- (BOOL)mf_traitDifferenceAffectsTextLayout:()MailUI;
- (double)mf_leadingEdgeToBackButtonText;
@end

@implementation UITraitCollection(MailUI)

- (BOOL)mf_traitDifferenceAffectsTextLayout:()MailUI
{
  v4 = a3;
  v5 = [a1 layoutDirection];
  if (v5 == [v4 layoutDirection] && (objc_msgSend(a1, "displayScale"), v7 = v6, objc_msgSend(v4, "displayScale"), v7 == v8) && (v9 = objc_msgSend(a1, "horizontalSizeClass"), v9 == objc_msgSend(v4, "horizontalSizeClass")) && (v10 = objc_msgSend(a1, "verticalSizeClass"), v10 == objc_msgSend(v4, "verticalSizeClass")) && (objc_msgSend(a1, "preferredContentSizeCategory"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "preferredContentSizeCategory"), v12 = objc_claimAutoreleasedReturnValue(), v12, v11, v11 == v12) && (v13 = objc_msgSend(a1, "legibilityWeight"), v13 == objc_msgSend(v4, "legibilityWeight")))
  {
    v14 = [a1 _splitViewControllerContext];
    v15 = v14 != [v4 _splitViewControllerContext];
  }

  else
  {
    v15 = 1;
  }

  return v15;
}

- (double)mf_leadingEdgeToBackButtonText
{
  if ([a1 verticalSizeClass] == 1)
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