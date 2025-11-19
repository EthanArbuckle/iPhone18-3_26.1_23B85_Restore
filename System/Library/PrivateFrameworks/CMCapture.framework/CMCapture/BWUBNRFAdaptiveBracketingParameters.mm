@interface BWUBNRFAdaptiveBracketingParameters
- (BOOL)stationary;
- (BOOL)stopped;
- (_DWORD)initWithProgressiveBracketingParameters:(uint64_t)a3 progressiveBracketingStatisticsClass:;
- (double)totalIntegrationTimeForDigitalFlashMode:(int)a3 frameStatistics:(id)a4 stationary:(BOOL)a5 detectedObjects:(id)a6;
- (id)adaptiveBracketingFrameParametersForGroup:(int)a3;
- (id)adaptiveBracketingParametersForDigitalFlashMode:(int)a3 sphereOffsetEnabled:(BOOL)a4;
- (void)dealloc;
- (void)stopAdaptiveBracketing;
@end

@implementation BWUBNRFAdaptiveBracketingParameters

- (void)dealloc
{
  os_unfair_lock_lock(&self->_adaptiveBracketingParametersLock);

  self->_lastProgressiveBracketingStatisticsForTotalIntegrationTimesProvider = 0;
  os_unfair_lock_unlock(&self->_adaptiveBracketingParametersLock);
  v3.receiver = self;
  v3.super_class = BWUBNRFAdaptiveBracketingParameters;
  [(BWUBNRFAdaptiveBracketingParameters *)&v3 dealloc];
}

- (id)adaptiveBracketingFrameParametersForGroup:(int)a3
{
  v3 = *&a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v6 = [(NRFProgressiveBracketingParameters *)self->_progressiveBracketingParameters currentBracketingParametersForGroup:v3];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v23 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v23 + 1) + 8 * i);
        [v11 evZeroRatio];
        v13 = v12;
        [v11 integrationTime];
        v15 = v14;
        [v11 gain];
        v17 = v16;
        v18 = [v11 AGC];
        LODWORD(v19) = v17;
        [v5 addObject:{+[BWAdaptiveBracketingFrameParameters frameParametersWithEVZeroRatio:integrationTimeInSeconds:gain:maxAGC:](BWAdaptiveBracketingFrameParameters, "frameParametersWithEVZeroRatio:integrationTimeInSeconds:gain:maxAGC:", v18, v13, v15, v19)}];
      }

      v8 = [v6 countByEnumeratingWithState:&v23 objects:v22 count:16];
    }

    while (v8);
  }

  os_unfair_lock_lock(&self->_adaptiveBracketingParametersLock);
  stopped = self->_stopped;
  os_unfair_lock_unlock(&self->_adaptiveBracketingParametersLock);
  if (stopped)
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

- (BOOL)stopped
{
  os_unfair_lock_lock(&self->_adaptiveBracketingParametersLock);
  stopped = self->_stopped;
  os_unfair_lock_unlock(&self->_adaptiveBracketingParametersLock);
  return stopped;
}

- (BOOL)stationary
{
  v2 = [(NRFProgressiveBracketingParameters *)self->_progressiveBracketingParameters statistics];

  return [v2 stationary];
}

- (double)totalIntegrationTimeForDigitalFlashMode:(int)a3 frameStatistics:(id)a4 stationary:(BOOL)a5 detectedObjects:(id)a6
{
  if (!a4)
  {
    [BWUBNRFAdaptiveBracketingParameters totalIntegrationTimeForDigitalFlashMode:frameStatistics:stationary:detectedObjects:];
    v9 = 0.0;
    return round(v9) / 100.0;
  }

  NRFStatisticsFromFrameStatistics = nfrp_createNRFStatisticsFromFrameStatistics(self->_progressiveBracketingStatisticsClass, a4, a5, a6);
  if (a3 == 1)
  {
    v10 = 0;
    goto LABEL_6;
  }

  v9 = 0.0;
  if (a3 == 2)
  {
    v10 = 1;
LABEL_6:
    [(NRFProgressiveBracketingParameters *)self->_progressiveBracketingParameters computeTotalIntegrationTimeWithStatistics:NRFStatisticsFromFrameStatistics forMode:v10];
    v9 = v11 * 100.0;
  }

  os_unfair_lock_lock(&self->_adaptiveBracketingParametersLock);

  self->_lastProgressiveBracketingStatisticsForTotalIntegrationTimesProvider = NRFStatisticsFromFrameStatistics;
  os_unfair_lock_unlock(&self->_adaptiveBracketingParametersLock);
  return round(v9) / 100.0;
}

- (_DWORD)initWithProgressiveBracketingParameters:(uint64_t)a3 progressiveBracketingStatisticsClass:
{
  if (!a1)
  {
    return 0;
  }

  v8.receiver = a1;
  v8.super_class = BWUBNRFAdaptiveBracketingParameters;
  v5 = objc_msgSendSuper2(&v8, sel_init);
  v6 = v5;
  if (v5)
  {
    v5[2] = 0;
    *(v5 + 2) = a2;
    *(v6 + 4) = a3;
  }

  return v6;
}

- (void)stopAdaptiveBracketing
{
  if (a1)
  {
    os_unfair_lock_lock((a1 + 8));
    *(a1 + 24) = 1;

    os_unfair_lock_unlock((a1 + 8));
  }
}

- (id)adaptiveBracketingParametersForDigitalFlashMode:(int)a3 sphereOffsetEnabled:(BOOL)a4
{
  if (a3)
  {
    v5 = a4;
    os_unfair_lock_lock(&self->_adaptiveBracketingParametersLock);
    v8 = self->_lastProgressiveBracketingStatisticsForTotalIntegrationTimesProvider;
    os_unfair_lock_unlock(&self->_adaptiveBracketingParametersLock);
    if (v8)
    {
      v9 = [objc_alloc(objc_opt_class()) initWithOptions:-[NRFProgressiveBracketingParameters options](self->_progressiveBracketingParameters portType:"options") statistics:-[NRFProgressiveBracketingParameters portType](self->_progressiveBracketingParameters mode:"portType") sphereOffsetEnabled:{v8, a3 == 2, v5}];

      v10 = [[BWUBNRFAdaptiveBracketingParameters alloc] initWithProgressiveBracketingParameters:v9 progressiveBracketingStatisticsClass:self->_progressiveBracketingStatisticsClass];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end