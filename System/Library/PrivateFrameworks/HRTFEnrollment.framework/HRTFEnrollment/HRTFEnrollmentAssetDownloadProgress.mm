@interface HRTFEnrollmentAssetDownloadProgress
- (HRTFEnrollmentAssetDownloadProgress)initWithTotalBytes:(int64_t)a3 downloadedBytes:(int64_t)a4 isStalled:(BOOL)a5 estimatedRemainingTime:(double)a6;
@end

@implementation HRTFEnrollmentAssetDownloadProgress

- (HRTFEnrollmentAssetDownloadProgress)initWithTotalBytes:(int64_t)a3 downloadedBytes:(int64_t)a4 isStalled:(BOOL)a5 estimatedRemainingTime:(double)a6
{
  v11.receiver = self;
  v11.super_class = HRTFEnrollmentAssetDownloadProgress;
  result = [(HRTFEnrollmentAssetDownloadProgress *)&v11 init];
  if (result)
  {
    result->_totalBytes = a3;
    result->_downloadedBytes = a4;
    result->_isStalled = a5;
    result->_estimatedRemainingTime = a6;
  }

  return result;
}

@end