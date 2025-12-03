@interface DVPFrameRateConversionParameters
- (DVPFrameRateConversionParameters)initWithSourceFrame:(id)frame nextFrame:(id)nextFrame opticalFlow:(id)flow interpolationPhase:(id)phase submissionMode:(int64_t)mode destinationFrames:(id)frames;
@end

@implementation DVPFrameRateConversionParameters

- (DVPFrameRateConversionParameters)initWithSourceFrame:(id)frame nextFrame:(id)nextFrame opticalFlow:(id)flow interpolationPhase:(id)phase submissionMode:(int64_t)mode destinationFrames:(id)frames
{
  frameCopy = frame;
  nextFrameCopy = nextFrame;
  flowCopy = flow;
  phaseCopy = phase;
  framesCopy = frames;
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

  objc_storeStrong(&v19->_sourceFrame, frame);
  objc_storeStrong(&v20->_nextFrame, nextFrame);
  v21 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:phaseCopy];
  interpolationPhase = v20->_interpolationPhase;
  v20->_interpolationPhase = v21;

  objc_storeStrong(&v20->_opticalFlow, flow);
  v20->_submissionMode = mode;
  v23 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:framesCopy];
  destinationFrames = v20->_destinationFrames;
  v20->_destinationFrames = v23;

  if (!isSameFormat([frameCopy buffer], objc_msgSend(nextFrameCopy, "buffer")))
  {
    NSLog(&cfstr_FailToToInitia_1.isa);
    goto LABEL_7;
  }

  v25 = v20;
LABEL_4:

  return v25;
}

@end