@interface SPIFrameSynthesizer
- (SPIFrameSynthesizer)initWithUsage:(int64_t)a3;
- (SPIFrameSynthesizer)initWithUsage:(int64_t)a3 qualityMode:(int64_t)a4;
- (SPIFrameSynthesizer)initWithUsage:(int64_t)a3 qualityMode:(int64_t)a4 useLegacyNormalization:(BOOL)a5;
- (id)synthesizeFramesFromFirstFrame:(__CVBuffer *)a3 secondFrame:(__CVBuffer *)a4 forwardFlow:(__CVBuffer *)a5 backwardFlow:(__CVBuffer *)a6 numberOfFrames:(unint64_t)a7 withError:(id *)a8;
- (id)synthesizeFramesFromFirstFrame:(__CVBuffer *)a3 secondFrame:(__CVBuffer *)a4 forwardFlow:(__CVBuffer *)a5 backwardFlow:(__CVBuffer *)a6 timeScales:(id)a7 withError:(id *)a8;
- (void)allocateResources;
- (void)releaseResources;
- (void)setFirstFrame:(__CVBuffer *)a3 secondFrame:(__CVBuffer *)a4 forwardFlow:(__CVBuffer *)a5 backwardFlow:(__CVBuffer *)a6;
- (void)synthesizeFrameForTimeScale:(float)a3 destination:(__CVBuffer *)a4;
- (void)synthesizeFrameFromFirstFrame:(__CVBuffer *)a3 secondFrame:(__CVBuffer *)a4 forwardFlow:(__CVBuffer *)a5 backwardFlow:(__CVBuffer *)a6 timeScale:(float)a7 destination:(__CVBuffer *)a8;
@end

@implementation SPIFrameSynthesizer

- (SPIFrameSynthesizer)initWithUsage:(int64_t)a3
{
  v10.receiver = self;
  v10.super_class = SPIFrameSynthesizer;
  v4 = [(SPIFrameSynthesizer *)&v10 init];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277D07D20]) initWithUsage:a3];
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

- (SPIFrameSynthesizer)initWithUsage:(int64_t)a3 qualityMode:(int64_t)a4
{
  v12.receiver = self;
  v12.super_class = SPIFrameSynthesizer;
  v6 = [(SPIFrameSynthesizer *)&v12 init];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x277D07D20]) initWithUsage:a3 qualityMode:a4];
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

- (SPIFrameSynthesizer)initWithUsage:(int64_t)a3 qualityMode:(int64_t)a4 useLegacyNormalization:(BOOL)a5
{
  v5 = a5;
  v14.receiver = self;
  v14.super_class = SPIFrameSynthesizer;
  v8 = [(SPIFrameSynthesizer *)&v14 init];
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x277D07D20]) initWithUsage:a3 qualityMode:a4 useLegacyNormalization:v5];
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
  v2 = [(SPIFrameSynthesizer *)self spiInstance];
  [v2 allocateResources];
}

- (void)releaseResources
{
  v2 = [(SPIFrameSynthesizer *)self spiInstance];
  [v2 releaseResources];
}

- (void)synthesizeFrameFromFirstFrame:(__CVBuffer *)a3 secondFrame:(__CVBuffer *)a4 forwardFlow:(__CVBuffer *)a5 backwardFlow:(__CVBuffer *)a6 timeScale:(float)a7 destination:(__CVBuffer *)a8
{
  v15 = [(SPIFrameSynthesizer *)self spiInstance];
  *&v14 = a7;
  [v15 synthesizeFrameFromFirstFrame:a3 secondFrame:a4 forwardFlow:a5 backwardFlow:a6 timeScale:a8 destination:v14];
}

- (void)setFirstFrame:(__CVBuffer *)a3 secondFrame:(__CVBuffer *)a4 forwardFlow:(__CVBuffer *)a5 backwardFlow:(__CVBuffer *)a6
{
  v10 = [(SPIFrameSynthesizer *)self spiInstance];
  [v10 setFirstFrame:a3 secondFrame:a4 forwardFlow:a5 backwardFlow:a6];
}

- (void)synthesizeFrameForTimeScale:(float)a3 destination:(__CVBuffer *)a4
{
  v7 = [(SPIFrameSynthesizer *)self spiInstance];
  *&v6 = a3;
  [v7 synthesizeFrameForTimeScale:a4 destination:v6];
}

- (id)synthesizeFramesFromFirstFrame:(__CVBuffer *)a3 secondFrame:(__CVBuffer *)a4 forwardFlow:(__CVBuffer *)a5 backwardFlow:(__CVBuffer *)a6 numberOfFrames:(unint64_t)a7 withError:(id *)a8
{
  v14 = [(SPIFrameSynthesizer *)self spiInstance];
  v15 = [v14 synthesizeFramesFromFirstFrame:a3 secondFrame:a4 forwardFlow:a5 backwardFlow:a6 numberOfFrames:a7 withError:a8];

  return v15;
}

- (id)synthesizeFramesFromFirstFrame:(__CVBuffer *)a3 secondFrame:(__CVBuffer *)a4 forwardFlow:(__CVBuffer *)a5 backwardFlow:(__CVBuffer *)a6 timeScales:(id)a7 withError:(id *)a8
{
  v14 = a7;
  v15 = [(SPIFrameSynthesizer *)self spiInstance];
  v16 = [v15 synthesizeFramesFromFirstFrame:a3 secondFrame:a4 forwardFlow:a5 backwardFlow:a6 timeScales:v14 withError:a8];

  return v16;
}

@end