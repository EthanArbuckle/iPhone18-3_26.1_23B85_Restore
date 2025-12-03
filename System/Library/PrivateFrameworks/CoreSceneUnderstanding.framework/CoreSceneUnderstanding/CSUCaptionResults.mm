@interface CSUCaptionResults
+ (id)createCaptionResultsWithResults:(id)results;
- (CSUCaptionResults)initWithCaptionResults:(id)results;
@end

@implementation CSUCaptionResults

- (CSUCaptionResults)initWithCaptionResults:(id)results
{
  resultsCopy = results;
  v12.receiver = self;
  v12.super_class = CSUCaptionResults;
  v6 = [(CSUCaptionResults *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_results, results);
    decoderFeaturesCSUBuffer = v7->_decoderFeaturesCSUBuffer;
    v7->_decoderFeaturesCSUBuffer = 0;

    decoderFeaturesMLMultiArray = v7->_decoderFeaturesMLMultiArray;
    v7->_decoderFeaturesMLMultiArray = 0;

    v10 = v7;
  }

  return v7;
}

+ (id)createCaptionResultsWithResults:(id)results
{
  resultsCopy = results;
  v4 = [CSUCaptionResults alloc];
  v8 = objc_msgSend_initWithCaptionResults_(v4, v5, resultsCopy, v6, v7);

  return v8;
}

@end