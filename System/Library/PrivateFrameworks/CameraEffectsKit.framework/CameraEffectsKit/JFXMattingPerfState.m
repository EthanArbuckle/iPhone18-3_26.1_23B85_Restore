@interface JFXMattingPerfState
+ (CGSize)mattingDepthInputSize;
- (JFXMattingPerfState)initWithStats:(id)a3 signpostToken:(id)a4;
@end

@implementation JFXMattingPerfState

- (JFXMattingPerfState)initWithStats:(id)a3 signpostToken:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = JFXMattingPerfState;
  v9 = [(JFXMattingPerfState *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_captureFrameStats, a3);
    v10->_signpostToken = v8;
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