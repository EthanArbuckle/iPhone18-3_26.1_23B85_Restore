@interface HRTFEnrollmentAssetDownloadProgress
- (HRTFEnrollmentAssetDownloadProgress)initWithTotalBytes:(int64_t)bytes downloadedBytes:(int64_t)downloadedBytes isStalled:(BOOL)stalled estimatedRemainingTime:(double)time;
@end

@implementation HRTFEnrollmentAssetDownloadProgress

- (HRTFEnrollmentAssetDownloadProgress)initWithTotalBytes:(int64_t)bytes downloadedBytes:(int64_t)downloadedBytes isStalled:(BOOL)stalled estimatedRemainingTime:(double)time
{
  v11.receiver = self;
  v11.super_class = HRTFEnrollmentAssetDownloadProgress;
  result = [(HRTFEnrollmentAssetDownloadProgress *)&v11 init];
  if (result)
  {
    result->_totalBytes = bytes;
    result->_downloadedBytes = downloadedBytes;
    result->_isStalled = stalled;
    result->_estimatedRemainingTime = time;
  }

  return result;
}

@end