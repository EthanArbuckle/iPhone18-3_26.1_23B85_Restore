@interface JFXCVASegMatting
+ (CGSize)mattingDepthInputSize;
- (BOOL)isValidForCameraFrameSet:(id)set;
- (id)initForFrameSet:(id)set;
- (void)alphaMatteForFrameSet:(id)set mattingPerfState:(id)state completionHandler:(id)handler;
@end

@implementation JFXCVASegMatting

- (id)initForFrameSet:(id)set
{
  setCopy = set;
  v11.receiver = self;
  v11.super_class = JFXCVASegMatting;
  v5 = [(JFXMatting *)&v11 initForFrameSet:setCopy];
  if (v5)
  {
    v6 = [[JFXCVASegMatting_NoOp alloc] initForFrameSet:setCopy];
    v7 = v5[5];
    v5[5] = v6;

    ready = [v5[5] ready];
    v10.receiver = v5;
    v10.super_class = JFXCVASegMatting;
    [(JFXMatting *)&v10 setReady:ready];
  }

  return v5;
}

- (void)alphaMatteForFrameSet:(id)set mattingPerfState:(id)state completionHandler:(id)handler
{
  setCopy = set;
  stateCopy = state;
  handlerCopy = handler;
  v11.receiver = self;
  v11.super_class = JFXCVASegMatting;
  if ([(JFXMatting *)&v11 ready])
  {
    [(JFXMatting *)self->_impl alphaMatteForFrameSet:setCopy mattingPerfState:stateCopy completionHandler:handlerCopy];
  }

  else
  {
    handlerCopy[2](handlerCopy, 0);
  }
}

- (BOOL)isValidForCameraFrameSet:(id)set
{
  setCopy = set;
  v7.receiver = self;
  v7.super_class = JFXCVASegMatting;
  if ([(JFXMatting *)&v7 isValidForCameraFrameSet:setCopy])
  {
    v5 = [(JFXMatting *)self->_impl isValidForCameraFrameSet:setCopy];
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