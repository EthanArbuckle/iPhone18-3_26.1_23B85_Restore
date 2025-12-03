@interface CADCoreSpotlightIndexProvider
- (id)newSpotlightIndexForBundleID:(id)d;
@end

@implementation CADCoreSpotlightIndexProvider

- (id)newSpotlightIndexForBundleID:(id)d
{
  dCopy = d;
  v4 = [[CADCoreSpotlightIndex alloc] initWithBundleID:dCopy];

  return v4;
}

@end