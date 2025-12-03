@interface _CRKBundleIdentifiedCardSectionViewProvider
- (BOOL)respondsToSelector:(SEL)selector;
@end

@implementation _CRKBundleIdentifiedCardSectionViewProvider

- (BOOL)respondsToSelector:(SEL)selector
{
  v3 = NSStringFromSelector(selector);
  v4 = NSStringFromSelector(sel_providerIdentifier);
  v5 = [v3 isEqualToString:v4];

  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = objc_opt_respondsToSelector();
  }

  return v6 & 1;
}

@end