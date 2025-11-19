@interface LSBundleRecord
- (BOOL)mb_isContainerized;
- (id)mb_entitlements;
@end

@implementation LSBundleRecord

- (BOOL)mb_isContainerized
{
  v2 = [(LSBundleRecord *)self dataContainerURL];
  v3 = v2 != 0;

  return v3;
}

- (id)mb_entitlements
{
  v2 = [(LSBundleRecord *)self compatibilityObject];
  v3 = [v2 entitlements];

  return v3;
}

@end