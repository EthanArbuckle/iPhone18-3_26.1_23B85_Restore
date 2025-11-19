@interface VCPVideoCNNHighlight
- (VCPVideoCNNHighlight)init;
- (id).cxx_construct;
- (id)results;
- (int)loadAnalysisResults:(id)a3;
- (int)run:(id)a3 withPersons:(id)a4 andRegionCrop:(CGRect)a5 atTime:(id *)a6 andDuration:(id *)a7;
- (void)dealloc;
@end

@implementation VCPVideoCNNHighlight

- (VCPVideoCNNHighlight)init
{
  v10 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = VCPVideoCNNHighlight;
  v2 = [(VCPVideoCNNHighlight *)&v9 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AAE8] vcp_mediaAnalysisBundle];
    v4 = [v3 resourceURL];

    [MEMORY[0x1E695DFF8] URLWithString:@"highlight_head.espresso.net" relativeToURL:v4];
    objc_claimAutoreleasedReturnValue();
    v5 = [MEMORY[0x1E695DF70] array];
    results = v2->_results;
    v2->_results = v5;

    inputNames = v2->_inputNames;
    v2->_inputNames = &unk_1F49BEAD0;

    std::vector<void *>::resize(&v2->_inputsData.__begin_, [(NSArray *)v2->_inputNames count]);
    operator new[]();
  }

  return 0;
}

- (void)dealloc
{
  analysisInput = self->_analysisInput;
  if (analysisInput)
  {
    MEMORY[0x1CCA95C10](analysisInput, 0x1000C8052888210);
  }

  v4.receiver = self;
  v4.super_class = VCPVideoCNNHighlight;
  [(VCPVideoCNNHighlight *)&v4 dealloc];
}

- (int)loadAnalysisResults:(id)a3
{
  v5[8] = *MEMORY[0x1E69E9840];
  a3;
  {
    {
      v5[0] = @"QualityResults";
      v5[1] = @"FineSubjectMotionResults";
      v5[2] = @"SubtleMotionResults";
      v5[3] = @"HumanActionResults";
      v5[4] = @"HumanPoseResults";
      v5[5] = @"InterestingnessResults";
      v5[6] = @"CameraMotionResults";
      v5[7] = @"VoiceResults";
      [VCPVideoCNNHighlight loadAnalysisResults:]::analysisKeys = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:8];
    }
  }

  bzero(self->_analysisInput, 0x500uLL);
  operator new[]();
}

- (int)run:(id)a3 withPersons:(id)a4 andRegionCrop:(CGRect)a5 atTime:(id *)a6 andDuration:(id *)a7
{
  v42[3] = *MEMORY[0x1E69E9840];
  v10 = a3;
  p_inputsData = &self->_inputsData;
  v32 = v10;
  if ((self->_inputsData.__end_ - self->_inputsData.__begin_) != 16)
  {
    goto LABEL_16;
  }

  *p_inputsData->__begin_ = [v10 outputBeforeTemporalPooling];
  *(p_inputsData->__begin_ + 1) = self->_analysisInput;
  begin = p_inputsData->__begin_;
  if (!*p_inputsData->__begin_ || !*(begin + 8))
  {
    goto LABEL_16;
  }

  modelEspresso = self->_modelEspresso;
  v38 = 0;
  v39 = 0;
  v37 = 0;
  std::vector<float *>::__init_with_size[abi:ne200100]<float **,float **>(&v37, begin, self->_inputsData.__end_, (self->_inputsData.__end_ - begin) >> 3);
  v14 = [(VCPCNNModelEspresso *)modelEspresso espressoForwardInputs:&v37];
  if (v37)
  {
    v38 = v37;
    operator delete(v37);
  }

  if (!v14)
  {
    v15 = self->_modelEspresso;
    if (v15)
    {
      [(VCPCNNModelEspresso *)v15 outputBlob];
      value = time.value;
      if (time.value)
      {
        v16 = 0;
        v17 = 1;
        do
        {
          v18 = 0;
          v19 = v17;
          v20 = value + 20 * v16;
          v21 = 0.0;
          do
          {
            v21 = v21 + expf(*(v20 + v18));
            v18 += 4;
          }

          while (v18 != 20);
          v22 = 0;
          v23 = 0.0;
          do
          {
            v23 = v23 + ((expf(*(v20 + v22 * 4)) / v21) * *&[VCPVideoCNNHighlight run:withPersons:andRegionCrop:atTime:andDuration:]::kClassScore[v22]);
            ++v22;
          }

          while (v22 != 5);
          memset(&v35, 0, sizeof(v35));
          time = *a7;
          CMTimeMultiply(&v33, &time, v16);
          time = v33;
          CMTimeMultiplyByRatio(&v34, &time, 1, 2);
          time = v34;
          rhs = *a6;
          CMTimeAdd(&v35, &time, &rhs);
          results = self->_results;
          v41[0] = @"start";
          time = v35;
          v25 = CMTimeCopyAsDictionary(&time, 0);
          v42[0] = v25;
          v41[1] = @"duration";
          time = *a7;
          CMTimeMultiplyByRatio(&rhs, &time, 1, 2);
          time = rhs;
          v26 = CMTimeCopyAsDictionary(&time, 0);
          v42[1] = v26;
          v41[2] = @"quality";
          *&v27 = v23;
          v28 = [MEMORY[0x1E696AD98] numberWithFloat:v27];
          v42[2] = v28;
          v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:v41 count:3];
          [(NSMutableArray *)results addObject:v29];

          v17 = 0;
          v14 = 0;
          v16 = 1;
        }

        while ((v19 & 1) != 0);
        goto LABEL_17;
      }
    }

LABEL_16:
    v14 = -18;
  }

LABEL_17:

  return v14;
}

- (id)results
{
  v6[1] = *MEMORY[0x1E69E9840];
  results = self->_results;
  if (results)
  {
    v5 = @"MLHighlightScoreResults";
    v6[0] = results;
    v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id).cxx_construct
{
  *(self + 5) = 0;
  *(self + 6) = 0;
  *(self + 4) = 0;
  return self;
}

@end