@interface VCPVideoCNNAutoplay
- (VCPVideoCNNAutoplay)init;
- (id).cxx_construct;
- (id)results;
- (int)loadAnalysisResults:(id)a3 audioResults:(id)a4;
- (int)run:(id)a3;
- (void)dealloc;
@end

@implementation VCPVideoCNNAutoplay

- (VCPVideoCNNAutoplay)init
{
  v10 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = VCPVideoCNNAutoplay;
  v2 = [(VCPVideoCNNAutoplay *)&v9 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AAE8] vcp_mediaAnalysisBundle];
    v4 = [v3 resourceURL];

    [MEMORY[0x1E695DFF8] URLWithString:@"autoplay_head.espresso.net" relativeToURL:v4];
    objc_claimAutoreleasedReturnValue();
    summaryResults = v2->_summaryResults;
    v2->_summaryResults = 0;

    settlingGatingResults = v2->_settlingGatingResults;
    v2->_settlingGatingResults = 0;

    inputNames = v2->_inputNames;
    v2->_inputNames = &unk_1F49BEDD0;

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
  v4.super_class = VCPVideoCNNAutoplay;
  [(VCPVideoCNNAutoplay *)&v4 dealloc];
}

- (int)loadAnalysisResults:(id)a3 audioResults:(id)a4
{
  v23[8] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v20 = a4;
  v21 = v6;
  {
    v23[0] = @"QualityResults";
    v23[1] = @"FineSubjectMotionResults";
    v23[2] = @"SubtleMotionResults";
    v23[3] = @"HumanActionResults";
    v23[4] = @"InterestingnessResults";
    v23[5] = @"CameraMotionResults";
    v23[6] = @"expressionChangeScore";
    v23[7] = @"visualPleasingScore";
    [VCPVideoCNNAutoplay loadAnalysisResults:audioResults:]::analysisKeys = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:{8, v20}];
  }

  bzero(self->_analysisInput, 0x300uLL);
  v7 = [v6 objectForKeyedSubscript:@"MovieSummaryResults"];
  v8 = v7 == 0;

  if (v8)
  {
    self->_skip = 1;
  }

  else
  {
    v9 = [v21 objectForKeyedSubscript:@"MovieSummaryResults"];
    v10 = [v9 objectAtIndexedSubscript:0];
    v11 = [v10 mutableCopy];
    summaryResults = self->_summaryResults;
    self->_summaryResults = v11;
  }

  v13 = [v21 objectForKeyedSubscript:{@"SettlingEffectsGatingResults", v20}];
  v14 = [v13 objectAtIndexedSubscript:0];
  v15 = [v14 mutableCopy];
  settlingGatingResults = self->_settlingGatingResults;
  self->_settlingGatingResults = v15;

  memset(&v22, 0, sizeof(v22));
  v17 = [v21 objectForKeyedSubscript:@"MovieSummaryResults"];
  v18 = [v17 objectAtIndexedSubscript:0];
  CMTimeRangeMakeFromDictionary(&v22, v18);

  operator new[]();
}

- (int)run:(id)a3
{
  v4 = a3;
  if ([v4 outputBeforeFc] && !self->_skip)
  {
    *self->_inputsData.__begin_ = [v4 outputBeforeFc];
    *(self->_inputsData.__begin_ + 1) = self->_analysisInput;
    modelEspresso = self->_modelEspresso;
    v57 = 0;
    v58 = 0;
    v56 = 0;
    std::vector<float *>::__init_with_size[abi:ne200100]<float **,float **>(&v56, self->_inputsData.__begin_, self->_inputsData.__end_, self->_inputsData.__end_ - self->_inputsData.__begin_);
    v6 = [(VCPCNNModelEspresso *)modelEspresso espressoForwardInputs:&v56];
    if (v56)
    {
      v57 = v56;
      operator delete(v56);
    }

    if (v6)
    {
      goto LABEL_26;
    }

    v39 = self->_modelEspresso;
    if (!v39)
    {
      goto LABEL_25;
    }

    [(VCPCNNModelEspresso *)v39 outputBlob];
    if (!v55)
    {
      goto LABEL_25;
    }

    v40 = 0;
    v41 = 0.0;
    v42 = 1;
    do
    {
      v43 = v42;
      v44 = expf(*(v55 + 4 * v40));
      v42 = 0;
      v41 = v41 + v44;
      v40 = 1;
    }

    while ((v43 & 1) != 0);
    v45 = MEMORY[0x1E696AD98];
    v46 = (expf(*(v55 + 4)) / v41) + -0.2;
    v47 = 1.0;
    if (v46 < 1.0)
    {
      v47 = v46;
    }

    v48 = v46 > 0.0;
    v49 = 0.0;
    if (v48)
    {
      *&v49 = v47;
    }

    v50 = [v45 numberWithFloat:v49];
    [(NSMutableDictionary *)self->_summaryResults setObject:v50 forKeyedSubscript:@"quality"];
  }

  if (![v4 outputBeforeFcSettling])
  {
LABEL_12:
    v6 = 0;
    goto LABEL_26;
  }

  *self->_inputsData.__begin_ = [v4 outputBeforeFcSettling];
  *(self->_inputsData.__begin_ + 1) = self->_analysisInput;
  v5 = self->_modelEspresso;
  v53 = 0;
  v54 = 0;
  __p = 0;
  std::vector<float *>::__init_with_size[abi:ne200100]<float **,float **>(&__p, self->_inputsData.__begin_, self->_inputsData.__end_, self->_inputsData.__end_ - self->_inputsData.__begin_);
  v6 = [(VCPCNNModelEspresso *)v5 espressoForwardInputs:&__p];
  if (__p)
  {
    v53 = __p;
    operator delete(__p);
  }

  if (!v6)
  {
    v7 = self->_modelEspresso;
    if (v7)
    {
      [(VCPCNNModelEspresso *)v7 outputBlob];
      v8 = v55;
      if (v55)
      {
        v9 = 0;
        v10 = 0.0;
        v11 = 1;
        do
        {
          v12 = v11;
          v13 = expf(*(v8 + 4 * v9));
          v11 = 0;
          v10 = v10 + v13;
          v9 = 1;
        }

        while ((v12 & 1) != 0);
        v14 = expf(*(v8 + 4));
        v15 = [(NSMutableDictionary *)self->_settlingGatingResults objectForKeyedSubscript:@"attributes"];
        v16 = [v15 objectForKeyedSubscript:@"ExposureChangeScore"];
        [v16 floatValue];
        v18 = v17;

        v19 = [(NSMutableDictionary *)self->_settlingGatingResults objectForKeyedSubscript:@"attributes"];
        v20 = [v19 objectForKeyedSubscript:@"SharpnessScore"];
        [v20 floatValue];
        v22 = v21;

        v23 = [(NSMutableDictionary *)self->_settlingGatingResults objectForKeyedSubscript:@"attributes"];
        v24 = [v23 objectForKeyedSubscript:@"ZoomChangeScore"];
        [v24 floatValue];
        v26 = v25;

        v27 = [(NSMutableDictionary *)self->_settlingGatingResults objectForKeyedSubscript:@"attributes"];
        v28 = [v27 objectForKeyedSubscript:@"FlashScore"];
        [v28 floatValue];
        v30 = v29;
        v31 = v14 / v10;

        *&v32 = (((v31 * v18) * v22) * v26) * v30;
        v33 = [MEMORY[0x1E696AD98] numberWithFloat:v32];
        [(NSMutableDictionary *)self->_settlingGatingResults setObject:v33 forKeyedSubscript:@"quality"];

        v34 = [(NSMutableDictionary *)self->_settlingGatingResults objectForKeyedSubscript:@"attributes"];
        v35 = [v34 mutableCopy];

        *&v36 = v31;
        v37 = [MEMORY[0x1E696AD98] numberWithFloat:v36];
        [v35 setObject:v37 forKeyedSubscript:@"AutoplayScore"];

        [(NSMutableDictionary *)self->_settlingGatingResults setObject:v35 forKeyedSubscript:@"attributes"];
        goto LABEL_12;
      }
    }

LABEL_25:
    v6 = -18;
  }

LABEL_26:

  return v6;
}

- (id)results
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_summaryResults)
  {
    v8[0] = self->_summaryResults;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
    [v3 setObject:v4 forKeyedSubscript:@"MovieSummaryResults"];
  }

  if (self->_settlingGatingResults)
  {
    settlingGatingResults = self->_settlingGatingResults;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&settlingGatingResults count:1];
    [v3 setObject:v5 forKeyedSubscript:@"SettlingEffectsGatingResults"];
  }

  return v3;
}

- (id).cxx_construct
{
  *(self + 6) = 0;
  *(self + 7) = 0;
  *(self + 5) = 0;
  return self;
}

@end