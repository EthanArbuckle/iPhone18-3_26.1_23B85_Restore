@interface VCPVideoCNNCameraMotion
- (VCPVideoCNNCameraMotion)init;
- (id)results;
- (int)run:(id)run withPersons:(id)persons andRegionCrop:(CGRect)crop atTime:(id *)time andDuration:(id *)duration;
@end

@implementation VCPVideoCNNCameraMotion

- (VCPVideoCNNCameraMotion)init
{
  v18.receiver = self;
  v18.super_class = VCPVideoCNNCameraMotion;
  v2 = [(VCPVideoCNNCameraMotion *)&v18 init];
  if (v2)
  {
    vcp_mediaAnalysisBundle = [MEMORY[0x1E696AAE8] vcp_mediaAnalysisBundle];
    resourceURL = [vcp_mediaAnalysisBundle resourceURL];

    v5 = [MEMORY[0x1E695DFF8] URLWithString:@"cameramotiontype_head.espresso.net" relativeToURL:resourceURL];
    v6 = [MEMORY[0x1E695DFF8] URLWithString:@"cameramotionscore_head.espresso.net" relativeToURL:resourceURL];
    array = [MEMORY[0x1E695DF70] array];
    results = v2->_results;
    v2->_results = array;

    v9 = [VCPCNNModelEspresso alloc];
    v10 = [(VCPCNNModelEspresso *)v9 initWithParameters:v5 inputNames:&unk_1F49BF208 outputNames:0 properties:MEMORY[0x1E695E0F8]];
    motionTypeModel = v2->_motionTypeModel;
    v2->_motionTypeModel = v10;

    v12 = v2->_motionTypeModel;
    if (v12)
    {
      if (![(VCPCNNModelEspresso *)v12 prepareModelWithConfig:&stru_1F496CB30])
      {
        v13 = [VCPCNNModelEspresso alloc];
        v14 = [(VCPCNNModelEspresso *)v13 initWithParameters:v6 inputNames:&unk_1F49BF220 outputNames:0 properties:MEMORY[0x1E695E0F8]];
        motionScoreModel = v2->_motionScoreModel;
        v2->_motionScoreModel = v14;

        v16 = v2->_motionScoreModel;
        if (v16)
        {
          [(VCPCNNModelEspresso *)v16 prepareModelWithConfig:&stru_1F496CB30];
        }
      }
    }
  }

  return v2;
}

- (int)run:(id)run withPersons:(id)persons andRegionCrop:(CGRect)crop atTime:(id *)time andDuration:(id *)duration
{
  v50[4] = *MEMORY[0x1E69E9840];
  runCopy = run;
  v11 = -[VCPCNNModelEspresso espressoForward:](self->_motionTypeModel, "espressoForward:", [runCopy outputBeforeTemporalPooling]);
  if (v11)
  {
    goto LABEL_21;
  }

  motionTypeModel = self->_motionTypeModel;
  if (!motionTypeModel)
  {
    goto LABEL_20;
  }

  [(VCPCNNModelEspresso *)motionTypeModel outputBlob];
  value = time.value;
  if (!time.value)
  {
    goto LABEL_20;
  }

  v15 = 0;
  v45 = 0;
  v46 = 0;
  v16 = &v46;
  v17 = 1;
  do
  {
    v18 = v17;
    v19 = (value + 4 * v15);
    LODWORD(v13) = *v19;
    for (i = 1; i != 11; ++i)
    {
      v21 = *&v19[i];
      if (v21 > *&v13)
      {
        *v16 = i;
        *&v13 = v21;
      }
    }

    v17 = 0;
    *v16 = 1 << ([VCPVideoCNNCameraMotion run:withPersons:andRegionCrop:atTime:andDuration:]::kClassType[*v16] + 6);
    v16 = &v45;
    v15 = 11;
  }

  while ((v18 & 1) != 0);
  v11 = -[VCPCNNModelEspresso espressoForward:](self->_motionScoreModel, "espressoForward:", [runCopy outputBeforeTemporalPooling]);
  if (!v11)
  {
    motionScoreModel = self->_motionScoreModel;
    if (motionScoreModel)
    {
      [(VCPCNNModelEspresso *)motionScoreModel outputBlob];
      v40 = time.value;
      if (time.value)
      {
        timeCopy = time;
        v23 = 0;
        v24 = &v46;
        v25 = 1;
        do
        {
          v26 = 0;
          v41 = v25;
          v27 = v40 + 20 * v23;
          v28 = 0.0;
          do
          {
            v28 = v28 + expf(*(v27 + v26));
            v26 += 4;
          }

          while (v26 != 20);
          v29 = 0;
          v30 = 0.0;
          do
          {
            v30 = v30 + ((expf(*(v27 + v29 * 4)) / v28) * *&[VCPVideoCNNCameraMotion run:withPersons:andRegionCrop:atTime:andDuration:]::kClassScore[v29]);
            ++v29;
          }

          while (v29 != 5);
          memset(&v44, 0, sizeof(v44));
          time = *duration;
          CMTimeMultiply(&v42, &time, v23);
          time = v42;
          CMTimeMultiplyByRatio(&v43, &time, 1, 2);
          time = v43;
          rhs = *timeCopy;
          CMTimeAdd(&v44, &time, &rhs);
          results = self->_results;
          v49[0] = @"start";
          time = v44;
          v32 = CMTimeCopyAsDictionary(&time, 0);
          v50[0] = v32;
          v49[1] = @"duration";
          time = *duration;
          CMTimeMultiplyByRatio(&rhs, &time, 1, 2);
          time = rhs;
          v33 = CMTimeCopyAsDictionary(&time, 0);
          v50[1] = v33;
          v49[2] = @"flags";
          v34 = [MEMORY[0x1E696AD98] numberWithInt:*v24];
          *&v35 = 1.0 - v30;
          v50[2] = v34;
          v49[3] = @"quality";
          v36 = [MEMORY[0x1E696AD98] numberWithFloat:v35];
          v50[3] = v36;
          v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:v49 count:4];
          [(NSMutableArray *)results addObject:v37];

          v25 = 0;
          v24 = &v45;
          v23 = 1;
        }

        while ((v41 & 1) != 0);
        v11 = 0;
        goto LABEL_21;
      }
    }

LABEL_20:
    v11 = -18;
  }

LABEL_21:

  return v11;
}

- (id)results
{
  v6[1] = *MEMORY[0x1E69E9840];
  results = self->_results;
  if (results)
  {
    v5 = @"MLCameraMotionResults";
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