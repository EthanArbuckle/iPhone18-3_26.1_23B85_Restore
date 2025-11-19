@interface BWUBAdaptiveBracketingParameters
- (BOOL)generateWhiteBalanceParameters;
- (BOOL)stationary;
- (BOOL)stopped;
- (double)totalIntegrationTime;
- (double)totalIntegrationTimeForDigitalFlashMode:(int)a3 frameStatistics:(id)a4 stationary:(BOOL)a5 detectedObjects:(id)a6;
- (id)adaptiveBracketingFrameParametersForGroup:(int)a3;
- (id)adaptiveBracketingParametersForDigitalFlashMode:(int)a3 sphereOffsetEnabled:(BOOL)a4;
- (void)dealloc;
- (void)initWithProgressiveBracketingParameters:(uint64_t)a3 progressiveBracketingStatisticsClass:;
- (void)stopAdaptiveBracketing;
- (void)updateAdaptiveBracketingFrameParametersUsingGroup:(uint64_t)a1;
@end

@implementation BWUBAdaptiveBracketingParameters

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWUBAdaptiveBracketingParameters;
  [(BWUBAdaptiveBracketingParameters *)&v3 dealloc];
}

- (id)adaptiveBracketingFrameParametersForGroup:(int)a3
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
  v3 = [(UBProgressiveBracketingParameters *)self->_progressiveBracketingParameters recomputeAWBCCM];
  os_unfair_lock_unlock(&self->_adaptiveBracketingFrameParametersLock);
  return v3;
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

- (double)totalIntegrationTimeForDigitalFlashMode:(int)a3 frameStatistics:(id)a4 stationary:(BOOL)a5 detectedObjects:(id)a6
{
  if (!a4)
  {
    [BWUBAdaptiveBracketingParameters totalIntegrationTimeForDigitalFlashMode:frameStatistics:stationary:detectedObjects:];
    return 0.0;
  }

  v6 = a5;
  os_unfair_lock_lock(&self->_adaptiveBracketingFrameParametersLock);
  if (a3 == 1)
  {
    v10 = 0;
  }

  else
  {
    if (a3 != 2)
    {
      UBStatisticsFromFrameStatistics = 0;
      v13 = 0.0;
      goto LABEL_8;
    }

    v10 = 1;
  }

  UBStatisticsFromFrameStatistics = udp_createUBStatisticsFromFrameStatistics(self->_progressiveBracketingStatisticsClass, a4, v6);
  [(UBProgressiveBracketingParameters *)self->_progressiveBracketingParameters computeTotalIntegrationTimeWithStatistics:UBStatisticsFromFrameStatistics forMode:v10];
  v13 = v12;
LABEL_8:

  self->_lastProgressiveBracketingStatisticsForTotalIntegrationTimesProvider = UBStatisticsFromFrameStatistics;
  os_unfair_lock_unlock(&self->_adaptiveBracketingFrameParametersLock);
  return v13;
}

- (void)initWithProgressiveBracketingParameters:(uint64_t)a3 progressiveBracketingStatisticsClass:
{
  if (!a1)
  {
    return 0;
  }

  v7.receiver = a1;
  v7.super_class = BWUBAdaptiveBracketingParameters;
  v5 = objc_msgSendSuper2(&v7, sel_init);
  if (v5)
  {
    v5[1] = a2;
    v5[5] = a3;
    *(v5 + 4) = 0;
    [(BWUBAdaptiveBracketingParameters *)v5 updateAdaptiveBracketingFrameParametersUsingGroup:?];
  }

  return v5;
}

- (void)updateAdaptiveBracketingFrameParametersUsingGroup:(uint64_t)a1
{
  if (a1)
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v5 = [*(a1 + 8) currentBracketingParametersForGroup:a2];
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
          [v4 addObject:{+[BWAdaptiveBracketingFrameParameters frameParametersWithEVZeroRatio:integrationTimeInSeconds:gain:maxAGC:](BWAdaptiveBracketingFrameParameters, "frameParametersWithEVZeroRatio:integrationTimeInSeconds:gain:maxAGC:", v15, 0.0, v12, v16)}];
        }

        v7 = [v5 countByEnumeratingWithState:&v18 objects:v17 count:16];
      }

      while (v7);
    }

    os_unfair_lock_lock((a1 + 16));
    if ((*(a1 + 32) & 1) == 0)
    {

      *(a1 + 24) = [v4 copy];
    }

    os_unfair_lock_unlock((a1 + 16));
  }
}

- (void)stopAdaptiveBracketing
{
  if (a1)
  {
    os_unfair_lock_lock((a1 + 16));
    *(a1 + 32) = 1;

    *(a1 + 24) = 0;

    os_unfair_lock_unlock((a1 + 16));
  }
}

- (id)adaptiveBracketingParametersForDigitalFlashMode:(int)a3 sphereOffsetEnabled:(BOOL)a4
{
  if (a3)
  {
    v6 = [objc_alloc(objc_opt_class()) initWithOptions:-[UBProgressiveBracketingParameters options](self->_progressiveBracketingParameters portType:"options") statistics:-[UBProgressiveBracketingParameters portType](self->_progressiveBracketingParameters mode:{"portType"), self->_lastProgressiveBracketingStatisticsForTotalIntegrationTimesProvider, a3 == 2}];
    v7 = [[BWUBAdaptiveBracketingParameters alloc] initWithProgressiveBracketingParameters:v6 progressiveBracketingStatisticsClass:self->_progressiveBracketingStatisticsClass];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end