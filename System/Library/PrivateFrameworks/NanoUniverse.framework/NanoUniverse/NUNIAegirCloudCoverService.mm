@interface NUNIAegirCloudCoverService
- (NUNIAegirCloudCoverService)initWithImageScale:(float)a3;
@end

@implementation NUNIAegirCloudCoverService

- (NUNIAegirCloudCoverService)initWithImageScale:(float)a3
{
  v10.receiver = self;
  v10.super_class = NUNIAegirCloudCoverService;
  v4 = [(NUNIAegirCloudCoverService *)&v10 init];
  if (v4)
  {
    v5 = [_TtC12NanoUniverse22AegirCloudCoverService alloc];
    *&v6 = a3;
    v7 = [(AegirCloudCoverService *)v5 initWithImageScale:v6];
    cloudService = v4->_cloudService;
    v4->_cloudService = v7;
  }

  return v4;
}

@end