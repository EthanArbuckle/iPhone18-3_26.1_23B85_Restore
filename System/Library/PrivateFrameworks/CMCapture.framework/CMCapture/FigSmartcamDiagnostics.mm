@interface FigSmartcamDiagnostics
- (BOOL)addClassifierVersionMajor:(unsigned __int16)major minor:(unsigned __int16)minor patch:(unsigned __int16)patch;
- (BOOL)addMotionStats:(id *)stats;
- (FigSmartcamDiagnostics)init;
- (id)metadata;
- (void)addPAMDecisionPreliminary:(id)preliminary;
- (void)addSceneConfidences:(id)confidences;
@end

@implementation FigSmartcamDiagnostics

- (FigSmartcamDiagnostics)init
{
  v6.receiver = self;
  v6.super_class = FigSmartcamDiagnostics;
  v2 = [(FigSmartcamDiagnostics *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    metadata = v2->_metadata;
    v2->_metadata = v3;
  }

  return v2;
}

- (void)addSceneConfidences:(id)confidences
{
  v4 = [confidences copy];
  [(NSMutableDictionary *)self->_metadata setObject:v4 forKeyedSubscript:@"SceneConfidencesForFirmware"];
}

- (void)addPAMDecisionPreliminary:(id)preliminary
{
  v4 = [preliminary copy];
  [(NSMutableDictionary *)self->_metadata setObject:v4 forKeyedSubscript:@"PeopleAndMotionDecisionPreliminary"];
}

- (BOOL)addClassifierVersionMajor:(unsigned __int16)major minor:(unsigned __int16)minor patch:(unsigned __int16)patch
{
  patch = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d.%d.%d", major, minor, patch];
  [(NSMutableDictionary *)self->_metadata setObject:patch forKeyedSubscript:@"ClassifierVersion"];

  return 1;
}

- (BOOL)addMotionStats:(id *)stats
{
  v27[0] = @"crossCorrelationMaximum";
  *&v3 = stats->var0[0];
  v23 = [MEMORY[0x1E696AD98] numberWithFloat:v3];
  v26[0] = v23;
  *&v5 = stats->var0[1];
  v22 = [MEMORY[0x1E696AD98] numberWithFloat:v5];
  v26[1] = v22;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
  v28[0] = v21;
  v27[1] = @"maxCorrelationShift";
  v20 = [MEMORY[0x1E696AD98] numberWithInt:stats->var1[0]];
  v25[0] = v20;
  v19 = [MEMORY[0x1E696AD98] numberWithInt:stats->var1[1]];
  v25[1] = v19;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
  v28[1] = v18;
  v27[2] = @"frameRingBufferCount";
  v6 = [MEMORY[0x1E696AD98] numberWithInt:stats->var2];
  v28[2] = v6;
  v27[3] = @"frameRingBufferDistance";
  v7 = [MEMORY[0x1E696AD98] numberWithInt:stats->var3];
  v28[3] = v7;
  v27[4] = @"isMotionDetected";
  v8 = [MEMORY[0x1E696AD98] numberWithBool:stats->var5];
  v28[4] = v8;
  v27[5] = @"normalizedROI";
  v9 = [MEMORY[0x1E696AD98] numberWithDouble:stats->var4.origin.x];
  v24[0] = v9;
  v10 = [MEMORY[0x1E696AD98] numberWithDouble:stats->var4.origin.y];
  v24[1] = v10;
  v11 = [MEMORY[0x1E696AD98] numberWithDouble:stats->var4.size.width];
  v24[2] = v11;
  v12 = [MEMORY[0x1E696AD98] numberWithDouble:stats->var4.size.height];
  v24[3] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:4];
  v28[5] = v13;
  v27[6] = @"valid";
  v14 = [MEMORY[0x1E696AD98] numberWithBool:stats->var6];
  v28[6] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:7];

  if (v15)
  {
    [(NSMutableDictionary *)self->_metadata setObject:v15 forKeyedSubscript:@"MotionStats"];
  }

  else
  {
    [FigSmartcamDiagnostics addMotionStats:];
  }

  return v15 != 0;
}

- (id)metadata
{
  v2 = [(NSMutableDictionary *)self->_metadata copy];

  return v2;
}

@end