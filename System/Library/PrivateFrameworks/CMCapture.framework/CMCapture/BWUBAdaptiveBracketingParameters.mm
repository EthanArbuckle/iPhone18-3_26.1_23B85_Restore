@interface BWUBAdaptiveBracketingParameters
- (BOOL)generateWhiteBalanceParameters;
- (BOOL)stationary;
- (BOOL)stopped;
- (double)totalIntegrationTime;
- (double)totalIntegrationTimeForDigitalFlashMode:(int)mode frameStatistics:(id)statistics stationary:(BOOL)stationary detectedObjects:(id)objects;
- (id)adaptiveBracketingFrameParametersForGroup:(int)group;
- (id)adaptiveBracketingParametersForDigitalFlashMode:(int)mode sphereOffsetEnabled:(BOOL)enabled;
- (void)dealloc;
- (void)initWithProgressiveBracketingParameters:(uint64_t)parameters progressiveBracketingStatisticsClass:;
- (void)stopAdaptiveBracketing;
- (void)updateAdaptiveBracketingFrameParametersUsingGroup:(uint64_t)group;
@end

@implementation BWUBAdaptiveBracketingParameters

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWUBAdaptiveBracketingParameters;
  [(BWUBAdaptiveBracketingParameters *)&v3 dealloc];
}

- (id)adaptiveBracketingFrameParametersForGroup:(int)group
{
  os_unfair_lock_lock(&self->_adaptiveBracketingFrameParametersLock);
  v4 = self->_adaptiveBracketingFrameParameters;
  os_unfair_lock_unlock(&self->_adaptiveBracketingFrameParametersLock);

  return v4;
}

- (BOOL)stopped
{
  os_unfair_lock_lock(&self->_adaptiveBracketingFrameParametersLock);
  stopped = self->_stopped;
  os_unfair_lock_unlock(&self->_adaptiveBracketingFrameParametersLock);
  return stopped;
}

- (BOOL)generateWhiteBalanceParameters
{
  os_unfair_lock_lock(&self->_adaptiveBracketingFrameParametersLock);
  recomputeAWBCCM = [(UBProgressiveBracketingParameters *)self->_progressiveBracketingParameters recomputeAWBCCM];
  os_unfair_lock_unlock(&self->_adaptiveBracketingFrameParametersLock);
  return recomputeAWBCCM;
}

- (double)totalIntegrationTime
{
  os_unfair_lock_lock(&self->_adaptiveBracketingFrameParametersLock);
  [(UBProgressiveBracketingParameters *)self->_progressiveBracketingParameters totalIntegrationTime];
  v4 = v3;
  os_unfair_lock_unlock(&self->_adaptiveBracketingFrameParametersLock);
  return v4;
}

- (BOOL)stationary
{
  os_unfair_lock_lock(&self->_adaptiveBracketingFrameParametersLock);
  v3 = [-[UBProgressiveBracketingParameters statistics](self->_progressiveBracketingParameters "statistics")];
  os_unfair_lock_unlock(&self->_adaptiveBracketingFrameParametersLock);
  return v3;
}

- (double)totalIntegrationTimeForDigitalFlashMode:(int)mode frameStatistics:(id)statistics stationary:(BOOL)stationary detectedObjects:(id)objects
{
  if (!statistics)
  {
    [BWUBAdaptiveBracketingParameters totalIntegrationTimeForDigitalFlashMode:frameStatistics:stationary:detectedObjects:];
    return 0.0;
  }

  stationaryCopy = stationary;
  os_unfair_lock_lock(&self->_adaptiveBracketingFrameParametersLock);
  if (mode == 1)
  {
    v10 = 0;
  }

  else
  {
    if (mode != 2)
    {
      UBStatisticsFromFrameStatistics = 0;
      v13 = 0.0;
      goto LABEL_8;
    }

    v10 = 1;
  }

  UBStatisticsFromFrameStatistics = udp_createUBStatisticsFromFrameStatistics(self->_progressiveBracketingStatisticsClass, statistics, stationaryCopy);
  [(UBProgressiveBracketingParameters *)self->_progressiveBracketingParameters computeTotalIntegrationTimeWithStatistics:UBStatisticsFromFrameStatistics forMode:v10];
  v13 = v12;
LABEL_8:

  self->_lastProgressiveBracketingStatisticsForTotalIntegrationTimesProvider = UBStatisticsFromFrameStatistics;
  os_unfair_lock_unlock(&self->_adaptiveBracketingFrameParametersLock);
  return v13;
}

- (void)initWithProgressiveBracketingParameters:(uint64_t)parameters progressiveBracketingStatisticsClass:
{
  if (!self)
  {
    return 0;
  }

  v7.receiver = self;
  v7.super_class = BWUBAdaptiveBracketingParameters;
  v5 = objc_msgSendSuper2(&v7, sel_init);
  if (v5)
  {
    v5[1] = a2;
    v5[5] = parameters;
    *(v5 + 4) = 0;
    [(BWUBAdaptiveBracketingParameters *)v5 updateAdaptiveBracketingFrameParametersUsingGroup:?];
  }

  return v5;
}

- (void)updateAdaptiveBracketingFrameParametersUsingGroup:(uint64_t)group
{
  if (group)
  {
    array = [MEMORY[0x1E695DF70] array];
    v5 = [*(group + 8) currentBracketingParametersForGroup:a2];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v18 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v19;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v19 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v18 + 1) + 8 * i);
          [v10 integrationTime];
          v12 = v11;
          [v10 gain];
          v14 = v13;
          v15 = [v10 AGC];
          LODWORD(v16) = v14;
          [array addObject:{+[BWAdaptiveBracketingFrameParameters frameParametersWithEVZeroRatio:integrationTimeInSeconds:gain:maxAGC:](BWAdaptiveBracketingFrameParameters, "frameParametersWithEVZeroRatio:integrationTimeInSeconds:gain:maxAGC:", v15, 0.0, v12, v16)}];
        }

        v7 = [v5 countByEnumeratingWithState:&v18 objects:v17 count:16];
      }

      while (v7);
    }

    os_unfair_lock_lock((group + 16));
    if ((*(group + 32) & 1) == 0)
    {

      *(group + 24) = [array copy];
    }

    os_unfair_lock_unlock((group + 16));
  }
}

- (void)stopAdaptiveBracketing
{
  if (self)
  {
    os_unfair_lock_lock((self + 16));
    *(self + 32) = 1;

    *(self + 24) = 0;

    os_unfair_lock_unlock((self + 16));
  }
}

- (id)adaptiveBracketingParametersForDigitalFlashMode:(int)mode sphereOffsetEnabled:(BOOL)enabled
{
  if (mode)
  {
    v6 = [objc_alloc(objc_opt_class()) initWithOptions:-[UBProgressiveBracketingParameters options](self->_progressiveBracketingParameters portType:"options") statistics:-[UBProgressiveBracketingParameters portType](self->_progressiveBracketingParameters mode:{"portType"), self->_lastProgressiveBracketingStatisticsForTotalIntegrationTimesProvider, mode == 2}];
    v7 = [[BWUBAdaptiveBracketingParameters alloc] initWithProgressiveBracketingParameters:v6 progressiveBracketingStatisticsClass:self->_progressiveBracketingStatisticsClass];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end