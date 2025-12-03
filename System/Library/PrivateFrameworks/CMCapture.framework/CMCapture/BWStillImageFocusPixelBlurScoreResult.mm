@interface BWStillImageFocusPixelBlurScoreResult
- (BWStillImageFocusPixelBlurScoreResult)initWithStatus:(int)status score:(float)score;
@end

@implementation BWStillImageFocusPixelBlurScoreResult

- (BWStillImageFocusPixelBlurScoreResult)initWithStatus:(int)status score:(float)score
{
  v7.receiver = self;
  v7.super_class = BWStillImageFocusPixelBlurScoreResult;
  result = [(BWStillImageFocusPixelBlurScoreResult *)&v7 init];
  if (result)
  {
    result->_status = status;
    result->_score = score;
  }

  return result;
}

@end