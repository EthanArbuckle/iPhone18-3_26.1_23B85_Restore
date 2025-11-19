@interface VCPVideoPetsAnalyzer
- (VCPVideoPetsAnalyzer)initWithTransform:(CGAffineTransform *)a3;
- (id)parseResults:(id)a3 toDetections:(id)a4 atTime:(id *)a5 fromTime:(id *)a6 addActiveRegions:(id)a7;
- (id)results;
- (int)analyzeFrame:(__CVBuffer *)a3 withTimestamp:(id *)a4 andDuration:(id *)a5 flags:(unint64_t *)a6;
- (int)analyzeFrame:(__CVBuffer *)a3 withTimestamp:(id *)a4 andDuration:(id *)a5 flags:(unint64_t *)a6 frameStats:(id)a7;
- (int)finishAnalysisPass:(id *)a3;
- (void)addDetectionToDict:(id *)a3 withActiveRegions:(id)a4 forPetsDetections:(id)a5 fromTime:(id *)a6;
@end

@implementation VCPVideoPetsAnalyzer

- (VCPVideoPetsAnalyzer)initWithTransform:(CGAffineTransform *)a3
{
  v21.receiver = self;
  v21.super_class = VCPVideoPetsAnalyzer;
  v3 = [(VCPVideoPetsAnalyzer *)&v21 init];
  if (v3)
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v5 = *(v3 + 1);
    *(v3 + 1) = v4;

    v6 = [MEMORY[0x1E695DF70] array];
    v7 = *(v3 + 2);
    *(v3 + 2) = v6;

    v8 = *MEMORY[0x1E6960C80];
    *(v3 + 5) = *(MEMORY[0x1E6960C80] + 16);
    *(v3 + 24) = v8;
    v9 = MEMORY[0x1E6960C70];
    v10 = *MEMORY[0x1E6960C70];
    *(v3 + 8) = *(MEMORY[0x1E6960C70] + 16);
    *(v3 + 3) = v10;
    v11 = *(v9 + 16);
    *(v3 + 72) = *v9;
    *(v3 + 11) = v11;
    v12 = [[VCPImagePetsAnalyzer alloc] initWithMaxNumRegions:5];
    v13 = *(v3 + 12);
    *(v3 + 12) = v12;

    v14 = *(v3 + 12);
    if (v14)
    {
      v15 = [MEMORY[0x1E695DEC8] array];
      v16 = *(v3 + 13);
      *(v3 + 13) = v15;

      v17 = [MEMORY[0x1E695DEC8] array];
      v18 = *(v3 + 14);
      *(v3 + 14) = v17;

      v14 = v3;
    }

    v19 = v14;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)parseResults:(id)a3 toDetections:(id)a4 atTime:(id *)a5 fromTime:(id *)a6 addActiveRegions:(id)a7
{
  v64 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v46 = a4;
  v11 = a7;
  if (![v10 count])
  {
    v12 = [MEMORY[0x1E695DEC8] array];

    v13 = *MEMORY[0x1E6960C70];
    a6->var3 = *(MEMORY[0x1E6960C70] + 16);
    *&a6->var0 = v13;
    v11 = v12;
  }

  v40 = v11;
  v42 = [MEMORY[0x1E695DF70] array];
  v14 = [MEMORY[0x1E695DF70] arrayWithArray:v10];
  v55 = 0u;
  v53 = 0u;
  v54 = 0u;
  v52 = 0u;
  obj = v10;
  v15 = [obj countByEnumeratingWithState:&v52 objects:v63 count:16];
  if (v15)
  {
    v16 = *v53;
    while (2)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v53 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = [*(*(&v52 + 1) + 8 * i) objectForKeyedSubscript:@"attributes"];
        v19 = [v18 objectForKeyedSubscript:@"petsBounds"];
        if (v19)
        {
          v20 = [v18 objectForKeyedSubscript:@"petsConfidence"];
          [v20 floatValue];
          v22 = v21;

          v23 = [VCPPetsRegion alloc];
          v66 = NSRectFromString(v19);
          LODWORD(v24) = v22;
          v25 = [(VCPPetsRegion *)v23 initWith:v66.origin.x confidence:v66.origin.y, v66.size.width, v66.size.height, v24];
          if (!v25)
          {

            v38 = [MEMORY[0x1E695DEC8] array];
            goto LABEL_25;
          }

          [v42 addObject:v25];
        }
      }

      v15 = [obj countByEnumeratingWithState:&v52 objects:v63 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v43 = v40;
  v26 = [v43 countByEnumeratingWithState:&v48 objects:v62 count:16];
  if (v26)
  {
    v44 = *v49;
    do
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v49 != v44)
        {
          objc_enumerationMutation(v43);
        }

        v28 = *(*(&v48 + 1) + 8 * j);
        v60[0] = @"petsBounds";
        [v28 bound];
        v29 = NSStringFromRect(v67);
        v60[1] = @"petsConfidence";
        v61[0] = v29;
        v30 = MEMORY[0x1E696AD98];
        [v28 confidence];
        v31 = [v30 numberWithFloat:?];
        v61[1] = v31;
        v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v61 forKeys:v60 count:2];

        time = *a6;
        v58[0] = @"start";
        v33 = CMTimeCopyAsDictionary(&time, 0);
        v59[0] = v33;
        v58[1] = @"duration";
        time = *a5;
        rhs = *a6;
        CMTimeSubtract(&v47, &time, &rhs);
        time = v47;
        v34 = CMTimeCopyAsDictionary(&time, 0);
        v58[2] = @"attributes";
        v59[1] = v34;
        v59[2] = v32;
        v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v59 forKeys:v58 count:3];
        [v46 addObject:v35];
      }

      v26 = [v43 countByEnumeratingWithState:&v48 objects:v62 count:16];
    }

    while (v26);
  }

  if ([v42 count])
  {
    v36 = v42;

    v37 = *&a5->var0;
    a6->var3 = a5->var3;
    *&a6->var0 = v37;
  }

  else
  {
    v36 = v43;
  }

  v38 = v36;
  v40 = v38;
LABEL_25:

  return v38;
}

- (int)analyzeFrame:(__CVBuffer *)a3 withTimestamp:(id *)a4 andDuration:(id *)a5 flags:(unint64_t *)a6 frameStats:(id)a7
{
  v10 = a7;
  v11 = objc_autoreleasePoolPush();
  v29 = 0;
  lhs = *a4;
  rhs = self->_timeLastProcess;
  CMTimeSubtract(&time, &lhs, &rhs);
  if (CMTimeGetSeconds(&time) >= 1.0)
  {
    petsAnalyer = self->_petsAnalyer;
    v27 = 0;
    v12 = [(VCPImagePetsAnalyzer *)petsAnalyer analyzePixelBuffer:a3 flags:&v29 results:&v27 cancel:&__block_literal_global_1];
    v15 = v27;
    v13 = v15;
    if (!v12)
    {
      v16 = [v15 objectForKeyedSubscript:@"PetsResults"];
      petsDetections = self->_petsDetections;
      lhs = *a4;
      v18 = [(VCPVideoPetsAnalyzer *)self parseResults:v16 toDetections:petsDetections atTime:&lhs fromTime:&self->_petsStart addActiveRegions:self->_petsActiveRegions];
      petsActiveRegions = self->_petsActiveRegions;
      self->_petsActiveRegions = v18;

      v20 = [v13 objectForKeyedSubscript:@"PetsFaceResults"];
      petsFaceDetections = self->_petsFaceDetections;
      lhs = *a4;
      v22 = [(VCPVideoPetsAnalyzer *)self parseResults:v20 toDetections:petsFaceDetections atTime:&lhs fromTime:&self->_petsFaceStart addActiveRegions:self->_petsFaceActiveRegions];
      petsFaceActiveRegions = self->_petsFaceActiveRegions;
      self->_petsFaceActiveRegions = v22;

      v12 = 0;
      v24 = *&a4->var0;
      self->_timeLastProcess.epoch = a4->var3;
      *&self->_timeLastProcess.value = v24;
    }
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  objc_autoreleasePoolPop(v11);
  if (!v12)
  {
    v25 = [v13 objectForKeyedSubscript:@"PetsResults"];
    [v10 setPetsDetections:v25];
  }

  return v12;
}

- (int)analyzeFrame:(__CVBuffer *)a3 withTimestamp:(id *)a4 andDuration:(id *)a5 flags:(unint64_t *)a6
{
  v8 = *a4;
  v7 = *a5;
  return [(VCPVideoPetsAnalyzer *)self analyzeFrame:a3 withTimestamp:&v8 andDuration:&v7 flags:a6 frameStats:0];
}

- (void)addDetectionToDict:(id *)a3 withActiveRegions:(id)a4 forPetsDetections:(id)a5 fromTime:(id *)a6
{
  v37 = *MEMORY[0x1E69E9840];
  v20 = a4;
  v23 = a5;
  memset(&v30, 0, sizeof(v30));
  v9 = *&a3->var0.var3;
  *&range.start.value = *&a3->var0.var0;
  *&range.start.epoch = v9;
  *&range.duration.timescale = *&a3->var1.var1;
  CMTimeRangeGetEnd(&v29, &range);
  range.start = v29;
  rhs = *a6;
  CMTimeSubtract(&v30, &range.start, &rhs);
  range.start = v30;
  if (CMTimeGetSeconds(&range.start) > 0.300000012)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    obj = v20;
    v10 = [obj countByEnumeratingWithState:&v24 objects:v36 count:16];
    if (v10)
    {
      v22 = *v25;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v25 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v24 + 1) + 8 * i);
          v34[0] = @"petsBounds";
          [v12 bound];
          v13 = NSStringFromRect(v38);
          v35[0] = v13;
          v34[1] = @"petsConfidence";
          v14 = MEMORY[0x1E696AD98];
          [v12 confidence];
          v15 = [v14 numberWithFloat:?];
          v35[1] = v15;
          v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:2];

          v32[0] = @"start";
          *&range.start.value = *&a6->var0;
          range.start.epoch = a6->var3;
          v17 = CMTimeCopyAsDictionary(&range.start, 0);
          v33[0] = v17;
          v32[1] = @"duration";
          range.start = v30;
          v18 = CMTimeCopyAsDictionary(&range.start, 0);
          v32[2] = @"attributes";
          v33[1] = v18;
          v33[2] = v16;
          v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:3];
          [v23 addObject:v19];
        }

        v10 = [obj countByEnumeratingWithState:&v24 objects:v36 count:16];
      }

      while (v10);
    }
  }
}

- (int)finishAnalysisPass:(id *)a3
{
  if ([(NSArray *)self->_petsActiveRegions count])
  {
    v5 = *&a3->var0.var3;
    v18 = *&a3->var0.var0;
    v19 = v5;
    petsActiveRegions = self->_petsActiveRegions;
    v20 = *&a3->var1.var1;
    petsDetections = self->_petsDetections;
    v16 = *&self->_petsStart.value;
    epoch = self->_petsStart.epoch;
    [(VCPVideoPetsAnalyzer *)self addDetectionToDict:&v18 withActiveRegions:petsActiveRegions forPetsDetections:petsDetections fromTime:&v16];
    v8 = [MEMORY[0x1E695DEC8] array];
    v9 = self->_petsActiveRegions;
    self->_petsActiveRegions = v8;
  }

  if ([(NSArray *)self->_petsFaceActiveRegions count])
  {
    v10 = *&a3->var0.var3;
    v18 = *&a3->var0.var0;
    v19 = v10;
    petsFaceActiveRegions = self->_petsFaceActiveRegions;
    v20 = *&a3->var1.var1;
    petsFaceDetections = self->_petsFaceDetections;
    v16 = *&self->_petsFaceStart.value;
    epoch = self->_petsFaceStart.epoch;
    [(VCPVideoPetsAnalyzer *)self addDetectionToDict:&v18 withActiveRegions:petsFaceActiveRegions forPetsDetections:petsFaceDetections fromTime:&v16];
    v13 = [MEMORY[0x1E695DEC8] array];
    v14 = self->_petsFaceActiveRegions;
    self->_petsFaceActiveRegions = v13;
  }

  return 0;
}

- (id)results
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSMutableArray *)self->_petsDetections count])
  {
    [v3 setValue:self->_petsDetections forKey:@"PetsResults"];
  }

  if ([(NSMutableArray *)self->_petsFaceDetections count])
  {
    [v3 setValue:self->_petsFaceDetections forKey:@"PetsFaceResults"];
  }

  if ([v3 count])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

@end