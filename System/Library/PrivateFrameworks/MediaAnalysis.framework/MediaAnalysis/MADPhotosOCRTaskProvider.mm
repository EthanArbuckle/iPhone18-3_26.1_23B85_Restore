@interface MADPhotosOCRTaskProvider
- (void)dealloc;
@end

@implementation MADPhotosOCRTaskProvider

- (void)dealloc
{
  v3 = +[VNSession globalSession];
  [v3 releaseCachedResources];

  +[PHAssetResourceManager vcp_flushFileCache];
  v4.receiver = self;
  v4.super_class = MADPhotosOCRTaskProvider;
  [(MADPhotosOCRTaskProvider *)&v4 dealloc];
}

@end