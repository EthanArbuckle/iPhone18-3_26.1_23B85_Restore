@interface ALSSelectionStats
- (ALSSelectionStats)init;
- (int)calculateIndexForOrientation:(int)orientation placement:(int)placement;
- (int)validateOrientation:(int)orientation;
- (int)validatePlacement:(int)placement;
- (void)dealloc;
- (void)recordALSSwapWithOrientation:(int)orientation andPlacement:(int)placement andLux:(float)lux;
- (void)recordTimeForCurrentALS;
- (void)resetStats;
- (void)submit;
- (void)updateStatsDisplayOff;
- (void)updateStatsWithOrientation:(int)orientation andLux:(float)lux andPlacement:(int)placement;
- (void)updateTimeWithOrientation:(int)orientation andPlacement:(int)placement andLux:(float)lux;
@end

@implementation ALSSelectionStats

- (ALSSelectionStats)init
{
  selfCopy = self;
  v8 = a2;
  v7.receiver = self;
  v7.super_class = ALSSelectionStats;
  selfCopy = [(ALSSelectionStats *)&v7 init];
  if (selfCopy)
  {
    context = objc_autoreleasePoolPush();
    v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
    selfCopy->samples = v2;
    for (i = 0; i < 18; ++i)
    {
      v3 = [[CBHistogramBuilder alloc] initWithEdges:&unk_1F59C9420];
      selfCopy->luxTimeHistograms[i] = v3;
    }

    selfCopy->currentALSOrientation = -1;
    selfCopy->currentALSPlacement = 0;
    selfCopy->currentLux = 0.0;
    __memset_chk();
    __memset_chk();
    selfCopy->nSwaps = 0;
    objc_autoreleasePoolPop(context);
  }

  return selfCopy;
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

- (void)updateTimeWithOrientation:(int)orientation andPlacement:(int)placement andLux:(float)lux
{
  if (self->currentALSOrientation < 0)
  {
    self->startTime = mach_time_now_in_seconds();
  }

  self->currentALSOrientation = [(ALSSelectionStats *)self validateOrientation:orientation];
  self->currentALSPlacement = [(ALSSelectionStats *)self validatePlacement:placement];
  self->currentLux = lux;
}

- (void)recordALSSwapWithOrientation:(int)orientation andPlacement:(int)placement andLux:(float)lux
{
  context = objc_autoreleasePoolPush();
  v6 = mach_time_now_in_seconds();
  [(ALSSelectionStats *)self recordTimeForCurrentALS];
  self->currentALSOrientation = [(ALSSelectionStats *)self validateOrientation:orientation];
  self->currentALSPlacement = [(ALSSelectionStats *)self validatePlacement:placement];
  self->currentLux = lux;
  self->startTime = v6;
  ++self->nSwaps;
  objc_autoreleasePoolPop(context);
}

- (void)updateStatsWithOrientation:(int)orientation andLux:(float)lux andPlacement:(int)placement
{
  selfCopy = self;
  v27 = a2;
  orientationCopy = orientation;
  luxCopy = lux;
  placementCopy = placement;
  context = objc_autoreleasePoolPush();
  v23 = mach_time_now_in_seconds();
  if ([(NSMutableDictionary *)selfCopy->samples count])
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
    [(NSMutableDictionary *)selfCopy->samples enumerateKeysAndObjectsUsingBlock:?];
    v12 = (v23 - selfCopy->lastEvalTime);
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
      selfCopy->deltas[v11] = selfCopy->deltas[v11] + v12;
    }

    _Block_object_dispose(&v13, 8);
    _Block_object_dispose(&v18, 8);
  }

  v10 = [(ALSSelectionStats *)selfCopy validateOrientation:orientationCopy];
  v9 = [(ALSSelectionStats *)selfCopy calculateIndexForOrientation:v10 placement:[(ALSSelectionStats *)selfCopy validatePlacement:placementCopy]];
  samples = selfCopy->samples;
  *&v5 = luxCopy;
  v6 = [MEMORY[0x1E696AD98] numberWithFloat:v5];
  -[NSMutableDictionary setObject:forKey:](samples, "setObject:forKey:", v6, [MEMORY[0x1E696AD98] numberWithInt:v9]);
  selfCopy->lastEvalTime = v23;
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
  selfCopy = self;
  v5 = a2;
  v2 = MEMORY[0x1E69E5920](self->samples).n128_u64[0];
  for (i = 0; i < 18; ++i)
  {
    v2 = MEMORY[0x1E69E5920](selfCopy->luxTimeHistograms[i]).n128_u64[0];
  }

  v3.receiver = selfCopy;
  v3.super_class = ALSSelectionStats;
  [(ALSSelectionStats *)&v3 dealloc];
}

- (int)validateOrientation:(int)orientation
{
  if (orientation < 0)
  {
    return 0;
  }

  if (orientation < 9)
  {
    return orientation;
  }

  return 8;
}

- (int)validatePlacement:(int)placement
{
  if (placement < 0 || placement > 2)
  {
    return 0;
  }

  else
  {
    return placement;
  }
}

- (int)calculateIndexForOrientation:(int)orientation placement:(int)placement
{
  v6 = [(ALSSelectionStats *)self validateOrientation:orientation];
  if ([(ALSSelectionStats *)self validatePlacement:placement]== 2)
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