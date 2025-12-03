@interface HMIVideoAssetWriterDelegateAdapter
- (void)assetWriter:(id)writer didFailWithError:(id)error;
- (void)assetWriter:(id)writer didOutputInitializationSegment:(id)segment;
- (void)assetWriter:(id)writer didOutputSeparableSegment:(id)segment segmentReport:(id)report;
@end

@implementation HMIVideoAssetWriterDelegateAdapter

- (void)assetWriter:(id)writer didOutputInitializationSegment:(id)segment
{
  writerCopy = writer;
  segmentCopy = segment;
  assetWriterDidOutputInitializationSegment = [(HMIVideoAssetWriterDelegateAdapter *)self assetWriterDidOutputInitializationSegment];

  if (assetWriterDidOutputInitializationSegment)
  {
    assetWriterDidOutputInitializationSegment2 = [(HMIVideoAssetWriterDelegateAdapter *)self assetWriterDidOutputInitializationSegment];
    (assetWriterDidOutputInitializationSegment2)[2](assetWriterDidOutputInitializationSegment2, writerCopy, segmentCopy);
  }
}

- (void)assetWriter:(id)writer didOutputSeparableSegment:(id)segment segmentReport:(id)report
{
  writerCopy = writer;
  segmentCopy = segment;
  reportCopy = report;
  assetWriterDidOutputSeparableSegment = [(HMIVideoAssetWriterDelegateAdapter *)self assetWriterDidOutputSeparableSegment];

  if (assetWriterDidOutputSeparableSegment)
  {
    assetWriterDidOutputSeparableSegment2 = [(HMIVideoAssetWriterDelegateAdapter *)self assetWriterDidOutputSeparableSegment];
    (assetWriterDidOutputSeparableSegment2)[2](assetWriterDidOutputSeparableSegment2, writerCopy, segmentCopy, reportCopy);
  }
}

- (void)assetWriter:(id)writer didFailWithError:(id)error
{
  writerCopy = writer;
  errorCopy = error;
  assetWriterDidFailWithError = [(HMIVideoAssetWriterDelegateAdapter *)self assetWriterDidFailWithError];

  if (assetWriterDidFailWithError)
  {
    assetWriterDidFailWithError2 = [(HMIVideoAssetWriterDelegateAdapter *)self assetWriterDidFailWithError];
    (assetWriterDidFailWithError2)[2](assetWriterDidFailWithError2, writerCopy, errorCopy);
  }
}

@end