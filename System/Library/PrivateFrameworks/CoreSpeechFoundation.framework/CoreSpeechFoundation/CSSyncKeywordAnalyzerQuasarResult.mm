@interface CSSyncKeywordAnalyzerQuasarResult
- (CSSyncKeywordAnalyzerQuasarResult)initWithConfidence:(double)a3;
- (CSSyncKeywordAnalyzerQuasarResult)initWithDefaultConfidence;
@end

@implementation CSSyncKeywordAnalyzerQuasarResult

- (CSSyncKeywordAnalyzerQuasarResult)initWithConfidence:(double)a3
{
  v5.receiver = self;
  v5.super_class = CSSyncKeywordAnalyzerQuasarResult;
  result = [(CSSyncKeywordAnalyzerQuasarResult *)&v5 init];
  if (result)
  {
    result->_triggerConfidence = a3;
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