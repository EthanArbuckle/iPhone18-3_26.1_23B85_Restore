@interface CADFullLoggingSpotlightIndexProvider
- (CADFullLoggingSpotlightIndexProvider)initWithProvider:(id)a3;
- (id)newSpotlightIndexForBundleID:(id)a3;
@end

@implementation CADFullLoggingSpotlightIndexProvider

- (CADFullLoggingSpotlightIndexProvider)initWithProvider:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CADFullLoggingSpotlightIndexProvider;
  v6 = [(CADFullLoggingSpotlightIndexProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_wrappedProvider, a3);
  }

  return v7;
}

- (id)newSpotlightIndexForBundleID:(id)a3
{
  v3 = [(CADSpotlightIndexProvider *)self->_wrappedProvider newSpotlightIndexForBundleID:a3];
  v4 = [[CADFullLoggingSpotlightIndex alloc] initWithIndex:v3];

  return v4;
}

@end