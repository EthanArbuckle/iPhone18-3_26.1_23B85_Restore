@interface TDSchemaRenditionSpec
- (id)_slicesToUseForCSI;
@end

@implementation TDSchemaRenditionSpec

- (id)_slicesToUseForCSI
{
  production = [(TDSchemaRenditionSpec *)self production];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [production slices];
}

@end