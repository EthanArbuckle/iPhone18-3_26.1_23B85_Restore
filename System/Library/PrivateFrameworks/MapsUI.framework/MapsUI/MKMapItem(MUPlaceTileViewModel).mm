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
  v6 = [a1 _geoMapItem];
  v7 = [v4 mapItemStorageForGEOMapItem:v6];
  v8 = [v7 subtitleAttributedStringForFont:v5];

  return v8;
}

- (id)footerAttributedStringForFont:()MUPlaceTileViewModel
{
  v4 = MEMORY[0x1E69A21E0];
  v5 = a3;
  v6 = [a1 _geoMapItem];
  v7 = [v4 mapItemStorageForGEOMapItem:v6];
  v8 = [v7 footerAttributedStringForFont:v5];

  return v8;
}

- (void)fetchImageTilewWithSize:()MUPlaceTileViewModel completion:
{
  v8 = MEMORY[0x1E69A21E0];
  v9 = a5;
  v11 = [a1 _geoMapItem];
  v10 = [v8 mapItemStorageForGEOMapItem:v11];
  [v10 fetchImageTilewWithSize:v9 completion:{a2, a3}];
}

- (void)fetchFallbackIconWithCompletion:()MUPlaceTileViewModel
{
  v4 = MEMORY[0x1E69A21E0];
  v5 = a3;
  v7 = [a1 _geoMapItem];
  v6 = [v4 mapItemStorageForGEOMapItem:v7];
  [v6 fetchFallbackIconWithCompletion:v5];
}

- (void)fetchBadgeIconWithCompletion:()MUPlaceTileViewModel
{
  v4 = MEMORY[0x1E69A21E0];
  v5 = a3;
  v7 = [a1 _geoMapItem];
  v6 = [v4 mapItemStorageForGEOMapItem:v7];
  [v6 fetchBadgeIconWithCompletion:v5];
}

- (uint64_t)expectedNumberOfFooterLines
{
  v1 = MEMORY[0x1E69A21E0];
  v2 = [a1 _geoMapItem];
  v3 = [v1 mapItemStorageForGEOMapItem:v2];
  v4 = [v3 expectedNumberOfFooterLines];

  return v4;
}

- (id)tileName
{
  v1 = MEMORY[0x1E69A21E0];
  v2 = [a1 _geoMapItem];
  v3 = [v1 mapItemStorageForGEOMapItem:v2];
  v4 = [v3 tileName];

  return v4;
}

@end