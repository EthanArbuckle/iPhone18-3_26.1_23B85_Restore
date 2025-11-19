@interface CNAutocompleteProbeProviderFactory
+ (id)defaultProbeProvider;
@end

@implementation CNAutocompleteProbeProviderFactory

+ (id)defaultProbeProvider
{
  v2 = objc_alloc_init(_CNAutocompleteAggdProbeProvider);

  return v2;
}

@end