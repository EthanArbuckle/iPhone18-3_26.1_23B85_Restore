@interface VCPVideoCNNQuality
- (VCPVideoCNNQuality)init;
- (id)results;
- (int)run:(id)a3 withPersons:(id)a4 andRegionCrop:(CGRect)a5 atTime:(id *)a6 andDuration:(id *)a7;
@end

@implementation VCPVideoCNNQuality

- (VCPVideoCNNQuality)init
{
  v13.receiver = self;
  v13.super_class = VCPVideoCNNQuality;
  v2 = [(VCPVideoCNNQuality *)&v13 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AAE8] vcp_mediaAnalysisBundle];
    v4 = [v3 resourceURL];

    v5 = [MEMORY[0x1E695DFF8] URLWithString:@"quality_head.espresso.net" relativeToURL:v4];
    v6 = [MEMORY[0x1E695DF70] array];
    results = v2->_results;
    v2->_results = v6;

    v8 = [VCPCNNModelEspresso alloc];
    v9 = [(VCPCNNModelEspresso *)v8 initWithParameters:v5 inputNames:&unk_1F49BE908 outputNames:0 properties:MEMORY[0x1E695E0F8]];
    modelEspresso = v2->_modelEspresso;
    v2->_modelEspresso = v9;

    v11 = v2->_modelEspresso;
    if (v11)
    {
      [(VCPCNNModelEspresso *)v11 prepareModelWithConfig:&stru_1F496CB30];
    }
  }

  return v2;
}

- (int)run:(id)a3 withPersons:(id)a4 andRegionCrop:(CGRect)a5 atTime:(id *)a6 andDuration:(id *)a7
{
  v36[3] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = -[VCPCNNModelEspresso espressoForward:](self->_modelEspresso, "espressoForward:", [v10 outputBeforeTemporalPooling]);
  if (!v11)
  {
    modelEspresso = self->_modelEspresso;
    if (modelEspresso && ([(VCPCNNModelEspresso *)modelEspresso outputBlob], (value = time.value) != 0))
    {
      v28 = v10;
      v13 = 0;
      v14 = 1;
      do
      {
        v15 = 0;
        v16 = v14;
        v17 = value + 20 * v13;
        v18 = 0.0;
        do
        {
          v18 = v18 + expf(*(v17 + v15));
          v15 += 4;
        }

        while (v15 != 20);
        v19 = 0;
        v20 = 0.0;
        do
        {
          v20 = v20 + ((expf(*(v17 + v19 * 4)) / v18) * *&[VCPVideoCNNQuality run:withPersons:andRegionCrop:atTime:andDuration:]::kClassScore[v19]);
          ++v19;
        }

        while (v19 != 5);
        memset(&v32, 0, sizeof(v32));
        time = *a7;
        CMTimeMultiply(&v30, &time, v13);
        time = v30;
        CMTimeMultiplyByRatio(&v31, &time, 1, 2);
        time = v31;
        rhs = *a6;
        CMTimeAdd(&v32, &time, &rhs);
        results = self->_results;
        v35[0] = @"start";
        time = v32;
        v22 = CMTimeCopyAsDictionary(&time, 0);
        v36[0] = v22;
        v35[1] = @"duration";
        time = *a7;
        CMTimeMultiplyByRatio(&rhs, &time, 1, 2);
        time = rhs;
        v23 = CMTimeCopyAsDictionary(&time, 0);
        v36[1] = v23;
        v35[2] = @"quality";
        *&v24 = v20;
        v25 = [MEMORY[0x1E696AD98] numberWithFloat:v24];
        v36[2] = v25;
        v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:3];
        [(NSMutableArray *)results addObject:v26];

        v14 = 0;
        v13 = 1;
      }

      while ((v16 & 1) != 0);
      v11 = 0;
      v10 = v28;
    }

    else
    {
      v11 = -18;
    }
  }

  return v11;
}

- (id)results
{
  v6[1] = *MEMORY[0x1E69E9840];
  results = self->_results;
  if (results)
  {
    v5 = @"MLQualityResults";
    v6[0] = results;
    v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end