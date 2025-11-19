@interface DCAssetFetcherContext
- (id)description;
@end

@implementation DCAssetFetcherContext

- (id)description
{
  v3 = [objc_opt_class() description];
  v4 = [NSString stringWithFormat:@"<%@: %p - refreshAllowed: %d, ignoreMetadataCache: %d>", v3, self, self->_allowCatalogRefresh, self->_ignoreCachedMetadata];

  return v4;
}

@end