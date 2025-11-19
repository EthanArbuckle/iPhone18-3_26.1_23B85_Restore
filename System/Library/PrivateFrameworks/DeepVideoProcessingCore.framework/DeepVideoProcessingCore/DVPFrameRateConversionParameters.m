@interface DVPFrameRateConversionParameters
- (DVPFrameRateConversionParameters)initWithSourceFrame:(id)a3 nextFrame:(id)a4 opticalFlow:(id)a5 interpolationPhase:(id)a6 submissionMode:(int64_t)a7 destinationFrames:(id)a8;
@end

@implementation DVPFrameRateConversionParameters

- (DVPFrameRateConversionParameters)initWithSourceFrame:(id)a3 nextFrame:(id)a4 opticalFlow:(id)a5 interpolationPhase:(id)a6 submissionMode:(int64_t)a7 destinationFrames:(id)a8
{
  v15 = a3;
  v16 = a4;
  v27 = a5;
  v17 = a6;
  v18 = a8;
  v28.receiver = self;
  v28.super_class = DVPFrameRateConversionParameters;
  v19 = [(DVPFrameRateConversionParameters *)&v28 init];
  v20 = v19;
  if (!v19)
  {
    NSLog(&cfstr_FailToInitiali.isa);
LABEL_7:
    v25 = 0;
    goto LABEL_4;
  }

  objc_storeStrong(&v19->_sourceFrame, a3);
  objc_storeStrong(&v20->_nextFrame, a4);
  v21 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:v17];
  interpolationPhase = v20->_interpolationPhase;
  v20->_interpolationPhase = v21;

  objc_storeStrong(&v20->_opticalFlow, a5);
  v20->_submissionMode = a7;
  v23 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:v18];
  destinationFrames = v20->_destinationFrames;
  v20->_destinationFrames = v23;

  if (!isSameFormat([v15 buffer], objc_msgSend(v16, "buffer")))
  {
    NSLog(&cfstr_FailToToInitia_1.isa);
    goto LABEL_7;
  }

  v25 = v20;
LABEL_4:

  return v25;
}

@end