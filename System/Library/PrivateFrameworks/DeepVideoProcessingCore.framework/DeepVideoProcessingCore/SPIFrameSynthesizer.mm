@interface SPIFrameSynthesizer
- (SPIFrameSynthesizer)initWithUsage:(int64_t)usage;
- (SPIFrameSynthesizer)initWithUsage:(int64_t)usage qualityMode:(int64_t)mode;
- (SPIFrameSynthesizer)initWithUsage:(int64_t)usage qualityMode:(int64_t)mode useLegacyNormalization:(BOOL)normalization;
- (id)synthesizeFramesFromFirstFrame:(__CVBuffer *)frame secondFrame:(__CVBuffer *)secondFrame forwardFlow:(__CVBuffer *)flow backwardFlow:(__CVBuffer *)backwardFlow numberOfFrames:(unint64_t)frames withError:(id *)error;
- (id)synthesizeFramesFromFirstFrame:(__CVBuffer *)frame secondFrame:(__CVBuffer *)secondFrame forwardFlow:(__CVBuffer *)flow backwardFlow:(__CVBuffer *)backwardFlow timeScales:(id)scales withError:(id *)error;
- (void)allocateResources;
- (void)releaseResources;
- (void)setFirstFrame:(__CVBuffer *)frame secondFrame:(__CVBuffer *)secondFrame forwardFlow:(__CVBuffer *)flow backwardFlow:(__CVBuffer *)backwardFlow;
- (void)synthesizeFrameForTimeScale:(float)scale destination:(__CVBuffer *)destination;
- (void)synthesizeFrameFromFirstFrame:(__CVBuffer *)frame secondFrame:(__CVBuffer *)secondFrame forwardFlow:(__CVBuffer *)flow backwardFlow:(__CVBuffer *)backwardFlow timeScale:(float)scale destination:(__CVBuffer *)destination;
@end

@implementation SPIFrameSynthesizer

- (SPIFrameSynthesizer)initWithUsage:(int64_t)usage
{
  v10.receiver = self;
  v10.super_class = SPIFrameSynthesizer;
  v4 = [(SPIFrameSynthesizer *)&v10 init];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277D07D20]) initWithUsage:usage];
    spiInstance = v4->_spiInstance;
    v4->_spiInstance = v5;

    v7 = v4->_spiInstance;
    if (!v7)
    {
      v8 = 0;
      goto LABEL_6;
    }

    v4->_flowWidth = [(FRCFrameSynthesizer *)v7 flowWidth];
    v4->_flowHeight = [(FRCFrameSynthesizer *)v4->_spiInstance flowHeight];
    *&v4->_streamingMode = 256;
  }

  v8 = v4;
LABEL_6:

  return v8;
}

- (SPIFrameSynthesizer)initWithUsage:(int64_t)usage qualityMode:(int64_t)mode
{
  v12.receiver = self;
  v12.super_class = SPIFrameSynthesizer;
  v6 = [(SPIFrameSynthesizer *)&v12 init];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x277D07D20]) initWithUsage:usage qualityMode:mode];
    spiInstance = v6->_spiInstance;
    v6->_spiInstance = v7;

    v9 = v6->_spiInstance;
    if (!v9)
    {
      v10 = 0;
      goto LABEL_6;
    }

    v6->_flowWidth = [(FRCFrameSynthesizer *)v9 flowWidth];
    v6->_flowHeight = [(FRCFrameSynthesizer *)v6->_spiInstance flowHeight];
    *&v6->_streamingMode = 256;
  }

  v10 = v6;
LABEL_6:

  return v10;
}

- (SPIFrameSynthesizer)initWithUsage:(int64_t)usage qualityMode:(int64_t)mode useLegacyNormalization:(BOOL)normalization
{
  normalizationCopy = normalization;
  v14.receiver = self;
  v14.super_class = SPIFrameSynthesizer;
  v8 = [(SPIFrameSynthesizer *)&v14 init];
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x277D07D20]) initWithUsage:usage qualityMode:mode useLegacyNormalization:normalizationCopy];
    spiInstance = v8->_spiInstance;
    v8->_spiInstance = v9;

    v11 = v8->_spiInstance;
    if (!v11)
    {
      v12 = 0;
      goto LABEL_6;
    }

    v8->_flowWidth = [(FRCFrameSynthesizer *)v11 flowWidth];
    v8->_flowHeight = [(FRCFrameSynthesizer *)v8->_spiInstance flowHeight];
    *&v8->_streamingMode = 256;
  }

  v12 = v8;
LABEL_6:

  return v12;
}

- (void)allocateResources
{
  spiInstance = [(SPIFrameSynthesizer *)self spiInstance];
  [spiInstance allocateResources];
}

- (void)releaseResources
{
  spiInstance = [(SPIFrameSynthesizer *)self spiInstance];
  [spiInstance releaseResources];
}

- (void)synthesizeFrameFromFirstFrame:(__CVBuffer *)frame secondFrame:(__CVBuffer *)secondFrame forwardFlow:(__CVBuffer *)flow backwardFlow:(__CVBuffer *)backwardFlow timeScale:(float)scale destination:(__CVBuffer *)destination
{
  spiInstance = [(SPIFrameSynthesizer *)self spiInstance];
  *&v14 = scale;
  [spiInstance synthesizeFrameFromFirstFrame:frame secondFrame:secondFrame forwardFlow:flow backwardFlow:backwardFlow timeScale:destination destination:v14];
}

- (void)setFirstFrame:(__CVBuffer *)frame secondFrame:(__CVBuffer *)secondFrame forwardFlow:(__CVBuffer *)flow backwardFlow:(__CVBuffer *)backwardFlow
{
  spiInstance = [(SPIFrameSynthesizer *)self spiInstance];
  [spiInstance setFirstFrame:frame secondFrame:secondFrame forwardFlow:flow backwardFlow:backwardFlow];
}

- (void)synthesizeFrameForTimeScale:(float)scale destination:(__CVBuffer *)destination
{
  spiInstance = [(SPIFrameSynthesizer *)self spiInstance];
  *&v6 = scale;
  [spiInstance synthesizeFrameForTimeScale:destination destination:v6];
}

- (id)synthesizeFramesFromFirstFrame:(__CVBuffer *)frame secondFrame:(__CVBuffer *)secondFrame forwardFlow:(__CVBuffer *)flow backwardFlow:(__CVBuffer *)backwardFlow numberOfFrames:(unint64_t)frames withError:(id *)error
{
  spiInstance = [(SPIFrameSynthesizer *)self spiInstance];
  v15 = [spiInstance synthesizeFramesFromFirstFrame:frame secondFrame:secondFrame forwardFlow:flow backwardFlow:backwardFlow numberOfFrames:frames withError:error];

  return v15;
}

- (id)synthesizeFramesFromFirstFrame:(__CVBuffer *)frame secondFrame:(__CVBuffer *)secondFrame forwardFlow:(__CVBuffer *)flow backwardFlow:(__CVBuffer *)backwardFlow timeScales:(id)scales withError:(id *)error
{
  scalesCopy = scales;
  spiInstance = [(SPIFrameSynthesizer *)self spiInstance];
  v16 = [spiInstance synthesizeFramesFromFirstFrame:frame secondFrame:secondFrame forwardFlow:flow backwardFlow:backwardFlow timeScales:scalesCopy withError:error];

  return v16;
}

@end