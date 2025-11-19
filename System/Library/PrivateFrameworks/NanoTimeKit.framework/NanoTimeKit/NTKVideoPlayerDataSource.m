@interface NTKVideoPlayerDataSource
- (NTKVideoPlayerDataSource)init;
@end

@implementation NTKVideoPlayerDataSource

- (NTKVideoPlayerDataSource)init
{
  v6.receiver = self;
  v6.super_class = NTKVideoPlayerDataSource;
  v2 = [(NTKVideoPlayerDataSource *)&v6 init];
  v3 = v2;
  if (v2)
  {
    currentListing = v2->_currentListing;
    v2->_currentListing = 0;
  }

  return v3;
}

@end