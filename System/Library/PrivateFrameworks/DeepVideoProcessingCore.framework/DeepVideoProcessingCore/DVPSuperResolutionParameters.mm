@interface DVPSuperResolutionParameters
- (DVPSuperResolutionParameters)initWithSourceFrame:(id)a3 previousFrame:(id)a4 previousOutputFrame:(id)a5 opticalFlow:(id)a6 submissionMode:(int64_t)a7 destinationFrame:(id)a8;
@end

@implementation DVPSuperResolutionParameters

- (DVPSuperResolutionParameters)initWithSourceFrame:(id)a3 previousFrame:(id)a4 previousOutputFrame:(id)a5 opticalFlow:(id)a6 submissionMode:(int64_t)a7 destinationFrame:(id)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v23 = a6;
  v22 = a8;
  v24.receiver = self;
  v24.super_class = DVPSuperResolutionParameters;
  v18 = [(DVPSuperResolutionParameters *)&v24 init];
  v19 = v18;
  if (!v18)
  {
    NSLog(&cfstr_FailToInitiali.isa);
    goto LABEL_8;
  }

  objc_storeStrong(&v18->_sourceFrame, a3);
  objc_storeStrong(&v19->_previousFrame, a4);
  objc_storeStrong(&v19->_previousOutputFrame, a5);
  objc_storeStrong(&v19->_opticalFlow, a6);
  v19->_submissionMode = a7;
  objc_storeStrong(&v19->_destinationFrame, a8);
  if (!isSameFormat([v15 buffer], objc_msgSend(v16, "buffer")) || !isSameFormat(objc_msgSend(v16, "buffer"), objc_msgSend(v17, "buffer")))
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