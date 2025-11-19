@interface DVPMotionBlurParameters
- (DVPMotionBlurParameters)initWithSourceFrame:(id)a3 nextFrame:(id)a4 previousFrame:(id)a5 nextOpticalFlow:(id)a6 previousOpticalFlow:(id)a7 motionBlurStrength:(int64_t)a8 submissionMode:(int64_t)a9 destinationFrame:(id)a10;
@end

@implementation DVPMotionBlurParameters

- (DVPMotionBlurParameters)initWithSourceFrame:(id)a3 nextFrame:(id)a4 previousFrame:(id)a5 nextOpticalFlow:(id)a6 previousOpticalFlow:(id)a7 motionBlurStrength:(int64_t)a8 submissionMode:(int64_t)a9 destinationFrame:(id)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  obj = a6;
  v19 = a6;
  v27 = a7;
  v26 = a10;
  v28.receiver = self;
  v28.super_class = DVPMotionBlurParameters;
  v20 = [(DVPMotionBlurParameters *)&v28 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_sourceFrame, a3);
    objc_storeStrong(&v21->_nextFrame, a4);
    objc_storeStrong(&v21->_previousFrame, a5);
    objc_storeStrong(&v21->_nextOpticalFlow, obj);
    objc_storeStrong(&v21->_previousOpticalFlow, a7);
    v21->_motionBlurStrength = a8;
    v21->_submissionMode = a9;
    objc_storeStrong(&v21->_destinationFrame, a10);
    if (isSameFormat([v16 buffer], objc_msgSend(v17, "buffer")) && isSameFormat(objc_msgSend(v16, "buffer"), objc_msgSend(v18, "buffer")))
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