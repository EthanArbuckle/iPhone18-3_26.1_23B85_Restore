@interface HMIVideoAssetWriterDelegateAdapter
- (void)assetWriter:(id)a3 didFailWithError:(id)a4;
- (void)assetWriter:(id)a3 didOutputInitializationSegment:(id)a4;
- (void)assetWriter:(id)a3 didOutputSeparableSegment:(id)a4 segmentReport:(id)a5;
@end

@implementation HMIVideoAssetWriterDelegateAdapter

- (void)assetWriter:(id)a3 didOutputInitializationSegment:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(HMIVideoAssetWriterDelegateAdapter *)self assetWriterDidOutputInitializationSegment];

  if (v7)
  {
    v8 = [(HMIVideoAssetWriterDelegateAdapter *)self assetWriterDidOutputInitializationSegment];
    (v8)[2](v8, v9, v6);
  }
}

- (void)assetWriter:(id)a3 didOutputSeparableSegment:(id)a4 segmentReport:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(HMIVideoAssetWriterDelegateAdapter *)self assetWriterDidOutputSeparableSegment];

  if (v10)
  {
    v11 = [(HMIVideoAssetWriterDelegateAdapter *)self assetWriterDidOutputSeparableSegment];
    (v11)[2](v11, v12, v8, v9);
  }
}

- (void)assetWriter:(id)a3 didFailWithError:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(HMIVideoAssetWriterDelegateAdapter *)self assetWriterDidFailWithError];

  if (v7)
  {
    v8 = [(HMIVideoAssetWriterDelegateAdapter *)self assetWriterDidFailWithError];
    (v8)[2](v8, v9, v6);
  }
}

@end