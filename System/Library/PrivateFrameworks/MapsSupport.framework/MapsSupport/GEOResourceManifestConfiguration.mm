@interface GEOResourceManifestConfiguration
- (BOOL)supportsTransit;
@end

@implementation GEOResourceManifestConfiguration

- (BOOL)supportsTransit
{
  v2 = [(GEOResourceManifestConfiguration *)self os];
  v3 = [v2 isEqualToString:@"watchos"];

  return v3;
}

@end