@interface LCFELChangepointDetectionAnalysisResult
- (id)init:(id)init featureCount:(id)count detectedChangePointCount:(id)pointCount changepointTimestamps:(id)timestamps;
@end

@implementation LCFELChangepointDetectionAnalysisResult

- (id)init:(id)init featureCount:(id)count detectedChangePointCount:(id)pointCount changepointTimestamps:(id)timestamps
{
  initCopy = init;
  countCopy = count;
  pointCountCopy = pointCount;
  timestampsCopy = timestamps;
  v18.receiver = self;
  v18.super_class = LCFELChangepointDetectionAnalysisResult;
  v15 = [(LCFELChangepointDetectionAnalysisResult *)&v18 init];
  p_isa = &v15->super.isa;
  if (v15)
  {
    objc_storeStrong(&v15->_featureName, init);
    objc_storeStrong(p_isa + 2, count);
    objc_storeStrong(p_isa + 3, pointCount);
    objc_storeStrong(p_isa + 4, timestamps);
  }

  return p_isa;
}

@end