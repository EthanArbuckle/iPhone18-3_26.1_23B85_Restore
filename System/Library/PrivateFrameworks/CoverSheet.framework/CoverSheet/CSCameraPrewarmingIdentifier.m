@interface CSCameraPrewarmingIdentifier
- (CSCameraPrewarmingIdentifier)initWithCameraPrewarmType:(int64_t)a3 applicationBundleIdentifier:(id)a4;
@end

@implementation CSCameraPrewarmingIdentifier

- (CSCameraPrewarmingIdentifier)initWithCameraPrewarmType:(int64_t)a3 applicationBundleIdentifier:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = CSCameraPrewarmingIdentifier;
  v7 = [(CSCameraPrewarmingIdentifier *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_prewarmType = a3;
    v9 = [v6 copy];
    applicationBundleIdentifier = v8->_applicationBundleIdentifier;
    v8->_applicationBundleIdentifier = v9;
  }

  return v8;
}

@end