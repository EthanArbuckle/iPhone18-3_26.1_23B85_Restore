@interface MADPhotosAssetProcessingTask
- (void)addPhotosAsset:(id)asset priority:(unint64_t)priority previousStatus:(unint64_t)status attempts:(unint64_t)attempts lastAttemptDate:(id)date;
@end

@implementation MADPhotosAssetProcessingTask

- (void)addPhotosAsset:(id)asset priority:(unint64_t)priority previousStatus:(unint64_t)status attempts:(unint64_t)attempts lastAttemptDate:(id)date
{
  if (priority == 1)
  {
    ++self->_p1AssetCount;
  }
}

@end