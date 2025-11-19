@interface CSUCaptionResults
+ (id)createCaptionResultsWithResults:(id)a3;
- (CSUCaptionResults)initWithCaptionResults:(id)a3;
@end

@implementation CSUCaptionResults

- (CSUCaptionResults)initWithCaptionResults:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = CSUCaptionResults;
  v6 = [(CSUCaptionResults *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_results, a3);
    decoderFeaturesCSUBuffer = v7->_decoderFeaturesCSUBuffer;
    v7->_decoderFeaturesCSUBuffer = 0;

    decoderFeaturesMLMultiArray = v7->_decoderFeaturesMLMultiArray;
    v7->_decoderFeaturesMLMultiArray = 0;

    v10 = v7;
  }

  return v7;
}

+ (id)createCaptionResultsWithResults:(id)a3
{
  v3 = a3;
  v4 = [CSUCaptionResults alloc];
  v8 = objc_msgSend_initWithCaptionResults_(v4, v5, v3, v6, v7);

  return v8;
}

@end