@interface ALSSelectionStats
- (ALSSelectionStats)init;
- (int)calculateIndexForOrientation:(int)a3 placement:(int)a4;
- (int)validateOrientation:(int)a3;
- (int)validatePlacement:(int)a3;
- (void)dealloc;
- (void)recordALSSwapWithOrientation:(int)a3 andPlacement:(int)a4 andLux:(float)a5;
- (void)recordTimeForCurrentALS;
- (void)resetStats;
- (void)submit;
- (void)updateStatsDisplayOff;
- (void)updateStatsWithOrientation:(int)a3 andLux:(float)a4 andPlacement:(int)a5;
- (void)updateTimeWithOrientation:(int)a3 andPlacement:(int)a4 andLux:(float)a5;
@end

@implementation ALSSelectionStats

- (ALSSelectionStats)init
{
  v9 = self;
  v8 = a2;
  v7.receiver = self;
  v7.super_class = ALSSelectionStats;
  v9 = [(ALSSelectionStats *)&v7 init];
  if (v9)
  {
    context = objc_autoreleasePoolPush();
    v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v9->samples = v2;
    for (i = 0; i < 18; ++i)
    {
      v3 = [[CBHistogramBuilder alloc] initWithEdges:&unk_1F59C9420];
      v9->luxTimeHistograms[i] = v3;
    }

    v9->currentALSOrientation = -1;
    v9->currentALSPlacement = 0;
    v9->currentLux = 0.0;
    __memset_chk();
    __memset_chk();
    v9->nSwaps = 0;
    objc_autoreleasePoolPop(context);
  }

  return v9;
}

- (void)recordTimeForCurrentALS
{
  if ((self->currentALSOrientation & 0x80000000) == 0)
  {
    v3 = (mach_time_now_in_seconds() - self->startTime);
    v2 = [(ALSSelectionStats *)self calculateIndexForOrientation:self->currentALSOrientation placement:self->currentALSPlacement];
    if ((v2 & 0x80000000) == 0 && v2 < 18)
    {
      self->time[v2] = self->time[v2] + v3;
      [(CBHistogramBuilder *)self->luxTimeHistograms[v2] pushNumberWeighted:self->currentLux withWeight:v3];
    }
  }
}

- (void)resetStats
{
  __memset_chk();
  __memset_chk();
  self->nSwaps = 0;
  for (i = 0; i < 18; ++i)
  {
    [(CBHistogramBuilder *)self->luxTimeHistograms[i] reset];
  }

  [(NSMutableDictionary *)self->samples removeAllObjects];
}

- (void)updateStatsDisplayOff
{
  [(ALSSelectionStats *)self recordTimeForCurrentALS];
  self->currentALSOrientation = -1;
  [(NSMutableDictionary *)self->samples removeAllObjects];
}

- (void)updateTimeWithOrientation:(int)a3 andPlacement:(int)a4 andLux:(float)a5
{
  if (self->currentALSOrientation < 0)
  {
    self->startTime = mach_time_now_in_seconds();
  }

  self->currentALSOrientation = [(ALSSelectionStats *)self validateOrientation:a3];
  self->currentALSPlacement = [(ALSSelectionStats *)self validatePlacement:a4];
  self->currentLux = a5;
}

- (void)recordALSSwapWithOrientation:(int)a3 andPlacement:(int)a4 andLux:(float)a5
{
  context = objc_autoreleasePoolPush();
  v6 = mach_time_now_in_seconds();
  [(ALSSelectionStats *)self recordTimeForCurrentALS];
  self->currentALSOrientation = [(ALSSelectionStats *)self validateOrientation:a3];
  self->currentALSPlacement = [(ALSSelectionStats *)self validatePlacement:a4];
  self->currentLux = a5;
  self->startTime = v6;
  ++self->nSwaps;
  objc_autoreleasePoolPop(context);
}

- (void)updateStatsWithOrientation:(int)a3 andLux:(float)a4 andPlacement:(int)a5
{
  v28 = self;
  v27 = a2;
  v26 = a3;
  v25 = a4;
  v24 = a5;
  context = objc_autoreleasePoolPush();
  v23 = mach_time_now_in_seconds();
  if ([(NSMutableDictionary *)v28->samples count])
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x20000000;
    v21 = 32;
    v22 = -1.0;
    v13 = 0;
    v14 = &v13;
    v15 = 0x20000000;
    v16 = 32;
    v17 = 1259902592;
    [(NSMutableDictionary *)v28->samples enumerateKeysAndObjectsUsingBlock:?];
    v12 = (v23 - v28->lastEvalTime);
    if (v19[6] > 5.0)
    {
      v11 = ((log10((v19[6] + 1.0) / (v14[6] + 1.0)) + 0.25) * 2.0) + 1;
    }

    else
    {
      v11 = 0;
    }

    if (v11 > 11)
    {
      v11 = 11;
    }

    if ((v11 & 0x80000000) == 0)
    {
      v28->deltas[v11] = v28->deltas[v11] + v12;
    }

    _Block_object_dispose(&v13, 8);
    _Block_object_dispose(&v18, 8);
  }

  v10 = [(ALSSelectionStats *)v28 validateOrientation:v26];
  v9 = [(ALSSelectionStats *)v28 calculateIndexForOrientation:v10 placement:[(ALSSelectionStats *)v28 validatePlacement:v24]];
  samples = v28->samples;
  *&v5 = v25;
  v6 = [MEMORY[0x1E696AD98] numberWithFloat:v5];
  -[NSMutableDictionary setObject:forKey:](samples, "setObject:forKey:", v6, [MEMORY[0x1E696AD98] numberWithInt:v9]);
  v28->lastEvalTime = v23;
  objc_autoreleasePoolPop(context);
}

float __68__ALSSelectionStats_updateStatsWithOrientation_andLux_andPlacement___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [a3 floatValue];
    *(*(*(a1 + 32) + 8) + 24) = fmaxf(*(*(*(a1 + 32) + 8) + 24), v4);
    result = fminf(*(*(*(a1 + 40) + 8) + 24), v4);
    *(*(*(a1 + 40) + 8) + 24) = result;
  }

  return result;
}

- (void)submit
{
  [CBAnalytics alsSelectionSwaps:self->nSwaps];
  [CBAnalytics alsSelectionTimes:self->time count:18];
  [CBAnalytics alsSelectionDeltas:self->deltas count:12];
  for (i = 0; i < 18; ++i)
  {
    [CBAnalytics alsSelectionLuxTimeHistogram:self->luxTimeHistograms[i] forALSIndex:i];
  }

  [(ALSSelectionStats *)self resetStats];
}

- (void)dealloc
{
  v6 = self;
  v5 = a2;
  v2 = MEMORY[0x1E69E5920](self->samples).n128_u64[0];
  for (i = 0; i < 18; ++i)
  {
    v2 = MEMORY[0x1E69E5920](v6->luxTimeHistograms[i]).n128_u64[0];
  }

  v3.receiver = v6;
  v3.super_class = ALSSelectionStats;
  [(ALSSelectionStats *)&v3 dealloc];
}

- (int)validateOrientation:(int)a3
{
  if (a3 < 0)
  {
    return 0;
  }

  if (a3 < 9)
  {
    return a3;
  }

  return 8;
}

- (int)validatePlacement:(int)a3
{
  if (a3 < 0 || a3 > 2)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

- (int)calculateIndexForOrientation:(int)a3 placement:(int)a4
{
  v6 = [(ALSSelectionStats *)self validateOrientation:a3];
  if ([(ALSSelectionStats *)self validatePlacement:a4]== 2)
  {
    v5 = v6 + 9;
  }

  else
  {
    v5 = v6;
  }

  if (v5 < 0 || v5 >= 18)
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

@end