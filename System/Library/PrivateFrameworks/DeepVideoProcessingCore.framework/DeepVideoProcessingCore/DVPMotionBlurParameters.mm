@interface DVPMotionBlurParameters
- (DVPMotionBlurParameters)initWithSourceFrame:(id)frame nextFrame:(id)nextFrame previousFrame:(id)previousFrame nextOpticalFlow:(id)flow previousOpticalFlow:(id)opticalFlow motionBlurStrength:(int64_t)strength submissionMode:(int64_t)mode destinationFrame:(id)self0;
@end

@implementation DVPMotionBlurParameters

- (DVPMotionBlurParameters)initWithSourceFrame:(id)frame nextFrame:(id)nextFrame previousFrame:(id)previousFrame nextOpticalFlow:(id)flow previousOpticalFlow:(id)opticalFlow motionBlurStrength:(int64_t)strength submissionMode:(int64_t)mode destinationFrame:(id)self0
{
  frameCopy = frame;
  nextFrameCopy = nextFrame;
  previousFrameCopy = previousFrame;
  obj = flow;
  flowCopy = flow;
  opticalFlowCopy = opticalFlow;
  destinationFrameCopy = destinationFrame;
  v28.receiver = self;
  v28.super_class = DVPMotionBlurParameters;
  v20 = [(DVPMotionBlurParameters *)&v28 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_sourceFrame, frame);
    objc_storeStrong(&v21->_nextFrame, nextFrame);
    objc_storeStrong(&v21->_previousFrame, previousFrame);
    objc_storeStrong(&v21->_nextOpticalFlow, obj);
    objc_storeStrong(&v21->_previousOpticalFlow, opticalFlow);
    v21->_motionBlurStrength = strength;
    v21->_submissionMode = mode;
    objc_storeStrong(&v21->_destinationFrame, destinationFrame);
    if (isSameFormat([frameCopy buffer], objc_msgSend(nextFrameCopy, "buffer")) && isSameFormat(objc_msgSend(frameCopy, "buffer"), objc_msgSend(previousFrameCopy, "buffer")))
    {
      v22 = v21;
    }

    else
    {
      NSLog(&cfstr_FailToToInitia_2.isa);
      v22 = 0;
    }
  }

  else
  {
    NSLog(&cfstr_FailToInitiali.isa);
    v22 = 0;
  }

  return v22;
}

@end