@interface MADPhotosAssetProcessingTask
- (void)addPhotosAsset:(id)a3 priority:(unint64_t)a4 previousStatus:(unint64_t)a5 attempts:(unint64_t)a6 lastAttemptDate:(id)a7;
@end

@implementation MADPhotosAssetProcessingTask

- (void)addPhotosAsset:(id)a3 priority:(unint64_t)a4 previousStatus:(unint64_t)a5 attempts:(unint64_t)a6 lastAttemptDate:(id)a7
{
  if (a4 == 1)
  {
    ++self->_p1AssetCount;
  }
}

@end