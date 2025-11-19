@interface MADTextEmbeddingMD5Resource
- (unint64_t)calibrationVersion;
@end

@implementation MADTextEmbeddingMD5Resource

- (unint64_t)calibrationVersion
{
  if (_os_feature_enabled_impl())
  {
    return 6;
  }

  else
  {
    return 5;
  }
}

@end