@interface DVPSuperResolutionParameters
- (DVPSuperResolutionParameters)initWithSourceFrame:(id)frame previousFrame:(id)previousFrame previousOutputFrame:(id)outputFrame opticalFlow:(id)flow submissionMode:(int64_t)mode destinationFrame:(id)destinationFrame;
@end

@implementation DVPSuperResolutionParameters

- (DVPSuperResolutionParameters)initWithSourceFrame:(id)frame previousFrame:(id)previousFrame previousOutputFrame:(id)outputFrame opticalFlow:(id)flow submissionMode:(int64_t)mode destinationFrame:(id)destinationFrame
{
  frameCopy = frame;
  previousFrameCopy = previousFrame;
  outputFrameCopy = outputFrame;
  flowCopy = flow;
  destinationFrameCopy = destinationFrame;
  v24.receiver = self;
  v24.super_class = DVPSuperResolutionParameters;
  v18 = [(DVPSuperResolutionParameters *)&v24 init];
  v19 = v18;
  if (!v18)
  {
    NSLog(&cfstr_FailToInitiali.isa);
    goto LABEL_8;
  }

  objc_storeStrong(&v18->_sourceFrame, frame);
  objc_storeStrong(&v19->_previousFrame, previousFrame);
  objc_storeStrong(&v19->_previousOutputFrame, outputFrame);
  objc_storeStrong(&v19->_opticalFlow, flow);
  v19->_submissionMode = mode;
  objc_storeStrong(&v19->_destinationFrame, destinationFrame);
  if (!isSameFormat([frameCopy buffer], objc_msgSend(previousFrameCopy, "buffer")) || !isSameFormat(objc_msgSend(previousFrameCopy, "buffer"), objc_msgSend(outputFrameCopy, "buffer")))
  {
    NSLog(&cfstr_FailToInitiali_0.isa);
LABEL_8:
    v20 = 0;
    goto LABEL_5;
  }

  v20 = v19;
LABEL_5:

  return v20;
}

@end