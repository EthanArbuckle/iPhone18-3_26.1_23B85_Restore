@interface DVPOpticalFlowParameters
- (DVPOpticalFlowParameters)initWithSourceFrame:(id)frame nextFrame:(id)nextFrame submissionMode:(int64_t)mode opticalFlow:(id)flow;
@end

@implementation DVPOpticalFlowParameters

- (DVPOpticalFlowParameters)initWithSourceFrame:(id)frame nextFrame:(id)nextFrame submissionMode:(int64_t)mode opticalFlow:(id)flow
{
  frameCopy = frame;
  nextFrameCopy = nextFrame;
  flowCopy = flow;
  v18.receiver = self;
  v18.super_class = DVPOpticalFlowParameters;
  v14 = [(DVPOpticalFlowParameters *)&v18 init];
  v15 = v14;
  if (!v14)
  {
    goto LABEL_6;
  }

  objc_storeStrong(&v14->_sourceFrame, frame);
  objc_storeStrong(&v15->_nextFrame, nextFrame);
  v15->_submissionMode = mode;
  objc_storeStrong(&v15->_opticalFlow, flow);
  if (!isSameFormat([frameCopy buffer], objc_msgSend(nextFrameCopy, "buffer")))
  {
    NSLog(&cfstr_FailToToInitia_0.isa);
LABEL_6:
    v16 = 0;
    goto LABEL_4;
  }

  v16 = v15;
LABEL_4:

  return v16;
}

@end