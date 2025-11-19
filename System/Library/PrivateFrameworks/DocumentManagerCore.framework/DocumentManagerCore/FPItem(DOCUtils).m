@interface FPItem(DOCUtils)
- (BOOL)doc_isAppContainerRoot;
@end

@implementation FPItem(DOCUtils)

- (BOOL)doc_isAppContainerRoot
{
  v1 = [a1 fp_appContainerBundleIdentifier];
  v2 = v1 != 0;

  return v2;
}

@end