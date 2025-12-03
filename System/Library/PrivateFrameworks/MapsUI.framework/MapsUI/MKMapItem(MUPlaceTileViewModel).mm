@interface MKMapItem(MUPlaceTileViewModel)
- (id)footerAttributedStringForFont:()MUPlaceTileViewModel;
- (id)subtitleAttributedStringForFont:()MUPlaceTileViewModel;
- (id)tileName;
- (uint64_t)expectedNumberOfFooterLines;
- (void)fetchBadgeIconWithCompletion:()MUPlaceTileViewModel;
- (void)fetchFallbackIconWithCompletion:()MUPlaceTileViewModel;
- (void)fetchImageTilewWithSize:()MUPlaceTileViewModel completion:;
@end

@implementation MKMapItem(MUPlaceTileViewModel)

- (id)subtitleAttributedStringForFont:()MUPlaceTileViewModel
{
  v4 = MEMORY[0x1E69A21E0];
  v5 = a3;
  _geoMapItem = [self _geoMapItem];
  v7 = [v4 mapItemStorageForGEOMapItem:_geoMapItem];
  v8 = [v7 subtitleAttributedStringForFont:v5];

  return v8;
}

- (id)footerAttributedStringForFont:()MUPlaceTileViewModel
{
  v4 = MEMORY[0x1E69A21E0];
  v5 = a3;
  _geoMapItem = [self _geoMapItem];
  v7 = [v4 mapItemStorageForGEOMapItem:_geoMapItem];
  v8 = [v7 footerAttributedStringForFont:v5];

  return v8;
}

- (void)fetchImageTilewWithSize:()MUPlaceTileViewModel completion:
{
  v8 = MEMORY[0x1E69A21E0];
  v9 = a5;
  _geoMapItem = [self _geoMapItem];
  v10 = [v8 mapItemStorageForGEOMapItem:_geoMapItem];
  [v10 fetchImageTilewWithSize:v9 completion:{a2, a3}];
}

- (void)fetchFallbackIconWithCompletion:()MUPlaceTileViewModel
{
  v4 = MEMORY[0x1E69A21E0];
  v5 = a3;
  _geoMapItem = [self _geoMapItem];
  v6 = [v4 mapItemStorageForGEOMapItem:_geoMapItem];
  [v6 fetchFallbackIconWithCompletion:v5];
}

- (void)fetchBadgeIconWithCompletion:()MUPlaceTileViewModel
{
  v4 = MEMORY[0x1E69A21E0];
  v5 = a3;
  _geoMapItem = [self _geoMapItem];
  v6 = [v4 mapItemStorageForGEOMapItem:_geoMapItem];
  [v6 fetchBadgeIconWithCompletion:v5];
}

- (uint64_t)expectedNumberOfFooterLines
{
  v1 = MEMORY[0x1E69A21E0];
  _geoMapItem = [self _geoMapItem];
  v3 = [v1 mapItemStorageForGEOMapItem:_geoMapItem];
  expectedNumberOfFooterLines = [v3 expectedNumberOfFooterLines];

  return expectedNumberOfFooterLines;
}

- (id)tileName
{
  v1 = MEMORY[0x1E69A21E0];
  _geoMapItem = [self _geoMapItem];
  v3 = [v1 mapItemStorageForGEOMapItem:_geoMapItem];
  tileName = [v3 tileName];

  return tileName;
}

@end