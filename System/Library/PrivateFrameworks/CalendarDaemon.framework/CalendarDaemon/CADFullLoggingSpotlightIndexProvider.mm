@interface CADFullLoggingSpotlightIndexProvider
- (CADFullLoggingSpotlightIndexProvider)initWithProvider:(id)provider;
- (id)newSpotlightIndexForBundleID:(id)d;
@end

@implementation CADFullLoggingSpotlightIndexProvider

- (CADFullLoggingSpotlightIndexProvider)initWithProvider:(id)provider
{
  providerCopy = provider;
  v9.receiver = self;
  v9.super_class = CADFullLoggingSpotlightIndexProvider;
  v6 = [(CADFullLoggingSpotlightIndexProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_wrappedProvider, provider);
  }

  return v7;
}

- (id)newSpotlightIndexForBundleID:(id)d
{
  v3 = [(CADSpotlightIndexProvider *)self->_wrappedProvider newSpotlightIndexForBundleID:d];
  v4 = [[CADFullLoggingSpotlightIndex alloc] initWithIndex:v3];

  return v4;
}

@end