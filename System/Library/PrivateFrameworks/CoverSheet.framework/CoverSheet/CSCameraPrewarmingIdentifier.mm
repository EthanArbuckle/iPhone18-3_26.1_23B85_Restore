@interface CSCameraPrewarmingIdentifier
- (CSCameraPrewarmingIdentifier)initWithCameraPrewarmType:(int64_t)type applicationBundleIdentifier:(id)identifier;
@end

@implementation CSCameraPrewarmingIdentifier

- (CSCameraPrewarmingIdentifier)initWithCameraPrewarmType:(int64_t)type applicationBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12.receiver = self;
  v12.super_class = CSCameraPrewarmingIdentifier;
  v7 = [(CSCameraPrewarmingIdentifier *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_prewarmType = type;
    v9 = [identifierCopy copy];
    applicationBundleIdentifier = v8->_applicationBundleIdentifier;
    v8->_applicationBundleIdentifier = v9;
  }

  return v8;
}

@end