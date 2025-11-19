@interface JFXCVASegMatting
+ (CGSize)mattingDepthInputSize;
- (BOOL)isValidForCameraFrameSet:(id)a3;
- (id)initForFrameSet:(id)a3;
- (void)alphaMatteForFrameSet:(id)a3 mattingPerfState:(id)a4 completionHandler:(id)a5;
@end

@implementation JFXCVASegMatting

- (id)initForFrameSet:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = JFXCVASegMatting;
  v5 = [(JFXMatting *)&v11 initForFrameSet:v4];
  if (v5)
  {
    v6 = [[JFXCVASegMatting_NoOp alloc] initForFrameSet:v4];
    v7 = v5[5];
    v5[5] = v6;

    v8 = [v5[5] ready];
    v10.receiver = v5;
    v10.super_class = JFXCVASegMatting;
    [(JFXMatting *)&v10 setReady:v8];
  }

  return v5;
}

- (void)alphaMatteForFrameSet:(id)a3 mattingPerfState:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11.receiver = self;
  v11.super_class = JFXCVASegMatting;
  if ([(JFXMatting *)&v11 ready])
  {
    [(JFXMatting *)self->_impl alphaMatteForFrameSet:v8 mattingPerfState:v9 completionHandler:v10];
  }

  else
  {
    v10[2](v10, 0);
  }
}

- (BOOL)isValidForCameraFrameSet:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = JFXCVASegMatting;
  if ([(JFXMatting *)&v7 isValidForCameraFrameSet:v4])
  {
    v5 = [(JFXMatting *)self->_impl isValidForCameraFrameSet:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (CGSize)mattingDepthInputSize
{
  v2 = 320.0;
  v3 = 180.0;
  result.height = v3;
  result.width = v2;
  return result;
}

@end