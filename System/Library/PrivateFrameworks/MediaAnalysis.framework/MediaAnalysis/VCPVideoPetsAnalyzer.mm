@interface VCPVideoPetsAnalyzer
- (VCPVideoPetsAnalyzer)initWithTransform:(CGAffineTransform *)transform;
- (id)parseResults:(id)results toDetections:(id)detections atTime:(id *)time fromTime:(id *)fromTime addActiveRegions:(id)regions;
- (id)results;
- (int)analyzeFrame:(__CVBuffer *)frame withTimestamp:(id *)timestamp andDuration:(id *)duration flags:(unint64_t *)flags;
- (int)analyzeFrame:(__CVBuffer *)frame withTimestamp:(id *)timestamp andDuration:(id *)duration flags:(unint64_t *)flags frameStats:(id)stats;
- (int)finishAnalysisPass:(id *)pass;
- (void)addDetectionToDict:(id *)dict withActiveRegions:(id)regions forPetsDetections:(id)detections fromTime:(id *)time;
@end

@implementation VCPVideoPetsAnalyzer

- (VCPVideoPetsAnalyzer)initWithTransform:(CGAffineTransform *)transform
{
  v21.receiver = self;
  v21.super_class = VCPVideoPetsAnalyzer;
  v3 = [(VCPVideoPetsAnalyzer *)&v21 init];
  if (v3)
  {
    array = [MEMORY[0x1E695DF70] array];
    v5 = *(v3 + 1);
    *(v3 + 1) = array;

    array2 = [MEMORY[0x1E695DF70] array];
    v7 = *(v3 + 2);
    *(v3 + 2) = array2;

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
      array3 = [MEMORY[0x1E695DEC8] array];
      v16 = *(v3 + 13);
      *(v3 + 13) = array3;

      array4 = [MEMORY[0x1E695DEC8] array];
      v18 = *(v3 + 14);
      *(v3 + 14) = array4;

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

- (id)parseResults:(id)results toDetections:(id)detections atTime:(id *)time fromTime:(id *)fromTime addActiveRegions:(id)regions
{
  v64 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  detectionsCopy = detections;
  regionsCopy = regions;
  if (![resultsCopy count])
  {
    array = [MEMORY[0x1E695DEC8] array];

    v13 = *MEMORY[0x1E6960C70];
    fromTime->var3 = *(MEMORY[0x1E6960C70] + 16);
    *&fromTime->var0 = v13;
    regionsCopy = array;
  }

  v40 = regionsCopy;
  array2 = [MEMORY[0x1E695DF70] array];
  v14 = [MEMORY[0x1E695DF70] arrayWithArray:resultsCopy];
  v55 = 0u;
  v53 = 0u;
  v54 = 0u;
  v52 = 0u;
  obj = resultsCopy;
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

            array3 = [MEMORY[0x1E695DEC8] array];
            goto LABEL_25;
          }

          [array2 addObject:v25];
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

        time = *fromTime;
        v58[0] = @"start";
        v33 = CMTimeCopyAsDictionary(&time, 0);
        v59[0] = v33;
        v58[1] = @"duration";
        time = *time;
        rhs = *fromTime;
        CMTimeSubtract(&v47, &time, &rhs);
        time = v47;
        v34 = CMTimeCopyAsDictionary(&time, 0);
        v58[2] = @"attributes";
        v59[1] = v34;
        v59[2] = v32;
        v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v59 forKeys:v58 count:3];
        [detectionsCopy addObject:v35];
      }

      v26 = [v43 countByEnumeratingWithState:&v48 objects:v62 count:16];
    }

    while (v26);
  }

  if ([array2 count])
  {
    v36 = array2;

    v37 = *&time->var0;
    fromTime->var3 = time->var3;
    *&fromTime->var0 = v37;
  }

  else
  {
    v36 = v43;
  }

  array3 = v36;
  v40 = array3;
LABEL_25:

  return array3;
}

- (int)analyzeFrame:(__CVBuffer *)frame withTimestamp:(id *)timestamp andDuration:(id *)duration flags:(unint64_t *)flags frameStats:(id)stats
{
  statsCopy = stats;
  v11 = objc_autoreleasePoolPush();
  v29 = 0;
  lhs = *timestamp;
  rhs = self->_timeLastProcess;
  CMTimeSubtract(&time, &lhs, &rhs);
  if (CMTimeGetSeconds(&time) >= 1.0)
  {
    petsAnalyer = self->_petsAnalyer;
    v27 = 0;
    v12 = [(VCPImagePetsAnalyzer *)petsAnalyer analyzePixelBuffer:frame flags:&v29 results:&v27 cancel:&__block_literal_global_1];
    v15 = v27;
    v13 = v15;
    if (!v12)
    {
      v16 = [v15 objectForKeyedSubscript:@"PetsResults"];
      petsDetections = self->_petsDetections;
      lhs = *timestamp;
      v18 = [(VCPVideoPetsAnalyzer *)self parseResults:v16 toDetections:petsDetections atTime:&lhs fromTime:&self->_petsStart addActiveRegions:self->_petsActiveRegions];
      petsActiveRegions = self->_petsActiveRegions;
      self->_petsActiveRegions = v18;

      v20 = [v13 objectForKeyedSubscript:@"PetsFaceResults"];
      petsFaceDetections = self->_petsFaceDetections;
      lhs = *timestamp;
      v22 = [(VCPVideoPetsAnalyzer *)self parseResults:v20 toDetections:petsFaceDetections atTime:&lhs fromTime:&self->_petsFaceStart addActiveRegions:self->_petsFaceActiveRegions];
      petsFaceActiveRegions = self->_petsFaceActiveRegions;
      self->_petsFaceActiveRegions = v22;

      v12 = 0;
      v24 = *&timestamp->var0;
      self->_timeLastProcess.epoch = timestamp->var3;
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
    [statsCopy setPetsDetections:v25];
  }

  return v12;
}

- (int)analyzeFrame:(__CVBuffer *)frame withTimestamp:(id *)timestamp andDuration:(id *)duration flags:(unint64_t *)flags
{
  v8 = *timestamp;
  v7 = *duration;
  return [(VCPVideoPetsAnalyzer *)self analyzeFrame:frame withTimestamp:&v8 andDuration:&v7 flags:flags frameStats:0];
}

- (void)addDetectionToDict:(id *)dict withActiveRegions:(id)regions forPetsDetections:(id)detections fromTime:(id *)time
{
  v37 = *MEMORY[0x1E69E9840];
  regionsCopy = regions;
  detectionsCopy = detections;
  memset(&v30, 0, sizeof(v30));
  v9 = *&dict->var0.var3;
  *&range.start.value = *&dict->var0.var0;
  *&range.start.epoch = v9;
  *&range.duration.timescale = *&dict->var1.var1;
  CMTimeRangeGetEnd(&v29, &range);
  range.start = v29;
  rhs = *time;
  CMTimeSubtract(&v30, &range.start, &rhs);
  range.start = v30;
  if (CMTimeGetSeconds(&range.start) > 0.300000012)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    obj = regionsCopy;
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
          *&range.start.value = *&time->var0;
          range.start.epoch = time->var3;
          v17 = CMTimeCopyAsDictionary(&range.start, 0);
          v33[0] = v17;
          v32[1] = @"duration";
          range.start = v30;
          v18 = CMTimeCopyAsDictionary(&range.start, 0);
          v32[2] = @"attributes";
          v33[1] = v18;
          v33[2] = v16;
          v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:3];
          [detectionsCopy addObject:v19];
        }

        v10 = [obj countByEnumeratingWithState:&v24 objects:v36 count:16];
      }

      while (v10);
    }
  }
}

- (int)finishAnalysisPass:(id *)pass
{
  if ([(NSArray *)self->_petsActiveRegions count])
  {
    v5 = *&pass->var0.var3;
    v18 = *&pass->var0.var0;
    v19 = v5;
    petsActiveRegions = self->_petsActiveRegions;
    v20 = *&pass->var1.var1;
    petsDetections = self->_petsDetections;
    v16 = *&self->_petsStart.value;
    epoch = self->_petsStart.epoch;
    [(VCPVideoPetsAnalyzer *)self addDetectionToDict:&v18 withActiveRegions:petsActiveRegions forPetsDetections:petsDetections fromTime:&v16];
    array = [MEMORY[0x1E695DEC8] array];
    v9 = self->_petsActiveRegions;
    self->_petsActiveRegions = array;
  }

  if ([(NSArray *)self->_petsFaceActiveRegions count])
  {
    v10 = *&pass->var0.var3;
    v18 = *&pass->var0.var0;
    v19 = v10;
    petsFaceActiveRegions = self->_petsFaceActiveRegions;
    v20 = *&pass->var1.var1;
    petsFaceDetections = self->_petsFaceDetections;
    v16 = *&self->_petsFaceStart.value;
    epoch = self->_petsFaceStart.epoch;
    [(VCPVideoPetsAnalyzer *)self addDetectionToDict:&v18 withActiveRegions:petsFaceActiveRegions forPetsDetections:petsFaceDetections fromTime:&v16];
    array2 = [MEMORY[0x1E695DEC8] array];
    v14 = self->_petsFaceActiveRegions;
    self->_petsFaceActiveRegions = array2;
  }

  return 0;
}

- (id)results
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSMutableArray *)self->_petsDetections count])
  {
    [dictionary setValue:self->_petsDetections forKey:@"PetsResults"];
  }

  if ([(NSMutableArray *)self->_petsFaceDetections count])
  {
    [dictionary setValue:self->_petsFaceDetections forKey:@"PetsFaceResults"];
  }

  if ([dictionary count])
  {
    v4 = dictionary;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

@end