@interface DVPOpticalFlowParameters
- (DVPOpticalFlowParameters)initWithSourceFrame:(id)a3 nextFrame:(id)a4 submissionMode:(int64_t)a5 opticalFlow:(id)a6;
@end

@implementation DVPOpticalFlowParameters

- (DVPOpticalFlowParameters)initWithSourceFrame:(id)a3 nextFrame:(id)a4 submissionMode:(int64_t)a5 opticalFlow:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v18.receiver = self;
  v18.super_class = DVPOpticalFlowParameters;
  v14 = [(DVPOpticalFlowParameters *)&v18 init];
  v15 = v14;
  if (!v14)
  {
    goto LABEL_6;
  }

  objc_storeStrong(&v14->_sourceFrame, a3);
  objc_storeStrong(&v15->_nextFrame, a4);
  v15->_submissionMode = a5;
  objc_storeStrong(&v15->_opticalFlow, a6);
  if (!isSameFormat([v11 buffer], objc_msgSend(v12, "buffer")))
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