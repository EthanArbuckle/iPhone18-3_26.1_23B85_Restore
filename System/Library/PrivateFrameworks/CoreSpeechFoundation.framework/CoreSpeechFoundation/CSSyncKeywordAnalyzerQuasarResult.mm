@interface CSSyncKeywordAnalyzerQuasarResult
- (CSSyncKeywordAnalyzerQuasarResult)initWithConfidence:(double)confidence;
- (CSSyncKeywordAnalyzerQuasarResult)initWithDefaultConfidence;
@end

@implementation CSSyncKeywordAnalyzerQuasarResult

- (CSSyncKeywordAnalyzerQuasarResult)initWithConfidence:(double)confidence
{
  v5.receiver = self;
  v5.super_class = CSSyncKeywordAnalyzerQuasarResult;
  result = [(CSSyncKeywordAnalyzerQuasarResult *)&v5 init];
  if (result)
  {
    result->_triggerConfidence = confidence;
    result->_isValidResult = 1;
  }

  return result;
}

- (CSSyncKeywordAnalyzerQuasarResult)initWithDefaultConfidence
{
  v3.receiver = self;
  v3.super_class = CSSyncKeywordAnalyzerQuasarResult;
  result = [(CSSyncKeywordAnalyzerQuasarResult *)&v3 init];
  if (result)
  {
    result->_triggerConfidence = -1000.0;
    result->_isValidResult = 0;
  }

  return result;
}

@end