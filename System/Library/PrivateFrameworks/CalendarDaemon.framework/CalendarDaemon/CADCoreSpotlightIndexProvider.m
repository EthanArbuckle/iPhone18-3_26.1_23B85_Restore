@interface CADCoreSpotlightIndexProvider
- (id)newSpotlightIndexForBundleID:(id)a3;
@end

@implementation CADCoreSpotlightIndexProvider

- (id)newSpotlightIndexForBundleID:(id)a3
{
  v3 = a3;
  v4 = [[CADCoreSpotlightIndex alloc] initWithBundleID:v3];

  return v4;
}

@end