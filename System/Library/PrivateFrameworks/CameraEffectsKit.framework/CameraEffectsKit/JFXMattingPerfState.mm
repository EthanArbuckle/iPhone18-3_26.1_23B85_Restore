@interface JFXMattingPerfState
+ (CGSize)mattingDepthInputSize;
- (JFXMattingPerfState)initWithStats:(id)stats signpostToken:(id)token;
@end

@implementation JFXMattingPerfState

- (JFXMattingPerfState)initWithStats:(id)stats signpostToken:(id)token
{
  statsCopy = stats;
  tokenCopy = token;
  v12.receiver = self;
  v12.super_class = JFXMattingPerfState;
  v9 = [(JFXMattingPerfState *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_captureFrameStats, stats);
    v10->_signpostToken = tokenCopy;
  }

  return v10;
}

+ (CGSize)mattingDepthInputSize
{
  v2 = 640.0;
  v3 = 360.0;
  result.height = v3;
  result.width = v2;
  return result;
}

@end