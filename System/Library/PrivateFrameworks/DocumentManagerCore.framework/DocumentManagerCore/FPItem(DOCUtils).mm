@interface FPItem(DOCUtils)
- (BOOL)doc_isAppContainerRoot;
@end

@implementation FPItem(DOCUtils)

- (BOOL)doc_isAppContainerRoot
{
  fp_appContainerBundleIdentifier = [self fp_appContainerBundleIdentifier];
  v2 = fp_appContainerBundleIdentifier != 0;

  return v2;
}

@end