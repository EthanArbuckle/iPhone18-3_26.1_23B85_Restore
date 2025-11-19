@interface _CRKBundleIdentifiedCardSectionViewProvider
- (BOOL)respondsToSelector:(SEL)a3;
@end

@implementation _CRKBundleIdentifiedCardSectionViewProvider

- (BOOL)respondsToSelector:(SEL)a3
{
  v3 = NSStringFromSelector(a3);
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