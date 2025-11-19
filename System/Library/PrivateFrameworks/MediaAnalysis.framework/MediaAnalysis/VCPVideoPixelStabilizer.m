@interface VCPVideoPixelStabilizer
- (VCPVideoPixelStabilizer)init;
- (int)convertAnalysisResult;
- (void)dealloc;
@end

@implementation VCPVideoPixelStabilizer

- (VCPVideoPixelStabilizer)init
{
  v19.receiver = self;
  v19.super_class = VCPVideoPixelStabilizer;
  v2 = [(VCPVideoStabilizer *)&v19 init];
  v3 = v2;
  if (v2)
  {
    [(VCPVideoStabilizer *)v2 setGyroStabilization:0];
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v5 = *(MEMORY[0x1E6960C98] + 12);
    if (v5)
    {
      v6 = *(MEMORY[0x1E6960C98] + 36);
      if ((v6 & 1) != 0 && !*(MEMORY[0x1E6960C98] + 40))
      {
        v7 = *(MEMORY[0x1E6960C98] + 24);
        if ((v7 & 0x8000000000000000) == 0)
        {
          v8 = *(MEMORY[0x1E6960C98] + 16);
          v9 = *(MEMORY[0x1E6960C98] + 32);
          v15 = *MEMORY[0x1E6960C98];
          v16 = *(MEMORY[0x1E6960C98] + 8);
          v17 = v5;
          v18 = v8;
          v10 = [MEMORY[0x1E696B098] valueWithCMTime:&v15];
          [v4 setObject:v10 forKeyedSubscript:*MEMORY[0x1E69A8BC8]];

          v15 = v7;
          v16 = v9;
          v17 = v6;
          v18 = 0;
          v11 = [MEMORY[0x1E696B098] valueWithCMTime:&v15];
          [v4 setObject:v11 forKeyedSubscript:*MEMORY[0x1E69A8BC0]];
        }
      }
    }

    v12 = ICAnalysisInit();
    v3->_analysisSessionRef = v12;
    if (v12)
    {
      v13 = v3;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)dealloc
{
  if (self->_analysisSessionRef)
  {
    ICDestroyResult();
    self->_analysisSessionRef = 0;
  }

  v3.receiver = self;
  v3.super_class = VCPVideoPixelStabilizer;
  [(VCPVideoStabilizer *)&v3 dealloc];
}

- (int)convertAnalysisResult
{
  v3 = ICAnalysisStopAndGetResult();
  v4 = 0;
  [(VCPVideoStabilizer *)self setAnalysisResultRef:v3];
  if (self->_analysisSessionRef)
  {
    ICDestroyResult();
    self->_analysisSessionRef = 0;
  }

  if ([(VCPVideoStabilizer *)self analysisResultRef])
  {
    [(VCPVideoStabilizer *)self analysisResultRef];
    ICGetAnalysisConfidence();
    [(VCPVideoStabilizer *)self setAnalysisConfidence:?];
    [(VCPVideoStabilizer *)self analysisConfidence];
    if (v5 < 0.85)
    {
      [(VCPVideoStabilizer *)self setValidStabilization:0];
    }

    v6 = 0;
  }

  else
  {
    v6 = -18;
  }

  return v6;
}

@end