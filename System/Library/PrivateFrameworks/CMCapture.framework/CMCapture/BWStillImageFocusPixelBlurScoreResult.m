@interface BWStillImageFocusPixelBlurScoreResult
- (BWStillImageFocusPixelBlurScoreResult)initWithStatus:(int)a3 score:(float)a4;
@end

@implementation BWStillImageFocusPixelBlurScoreResult

- (BWStillImageFocusPixelBlurScoreResult)initWithStatus:(int)a3 score:(float)a4
{
  v7.receiver = self;
  v7.super_class = BWStillImageFocusPixelBlurScoreResult;
  result = [(BWStillImageFocusPixelBlurScoreResult *)&v7 init];
  if (result)
  {
    result->_status = a3;
    result->_score = a4;
  }

  return result;
}

@end