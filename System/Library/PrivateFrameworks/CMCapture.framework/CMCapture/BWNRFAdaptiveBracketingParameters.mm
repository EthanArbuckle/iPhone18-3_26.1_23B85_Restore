@interface BWNRFAdaptiveBracketingParameters
- (BOOL)stationary;
- (BOOL)stopped;
- (_DWORD)initWithProgressiveBracketingParameters:(uint64_t)parameters progressiveBracketingStatisticsClass:;
- (double)totalIntegrationTimeForDigitalFlashMode:(int)mode frameStatistics:(id)statistics stationary:(BOOL)stationary detectedObjects:(id)objects;
- (id)adaptiveBracketingFrameParametersForGroup:(int)group;
- (id)adaptiveBracketingParametersForDigitalFlashMode:(int)mode sphereOffsetEnabled:(BOOL)enabled;
- (void)dealloc;
@end

@implementation BWNRFAdaptiveBracketingParameters

- (void)dealloc
{
  os_unfair_lock_lock(&self->_adaptiveBracketingParametersLock);

  self->_lastProgressiveBracketingStatisticsForTotalIntegrationTimesProvider = 0;
  os_unfair_lock_unlock(&self->_adaptiveBracketingParametersLock);
  v3.receiver = self;
  v3.super_class = BWNRFAdaptiveBracketingParameters;
  [(BWNRFAdaptiveBracketingParameters *)&v3 dealloc];
}

- (id)adaptiveBracketingFrameParametersForGroup:(int)group
{
  v3 = *&group;
  array = [MEMORY[0x1E695DF70] array];
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
        [array addObject:{+[BWAdaptiveBracketingFrameParameters frameParametersWithEVZeroRatio:integrationTimeInSeconds:gain:maxAGC:](BWAdaptiveBracketingFrameParameters, "frameParametersWithEVZeroRatio:integrationTimeInSeconds:gain:maxAGC:", v18, v13, v15, v19)}];
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
    return array;
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
  statistics = [(NRFProgressiveBracketingParameters *)self->_progressiveBracketingParameters statistics];

  return [statistics stationary];
}

- (double)totalIntegrationTimeForDigitalFlashMode:(int)mode frameStatistics:(id)statistics stationary:(BOOL)stationary detectedObjects:(id)objects
{
  if (!statistics)
  {
    [BWNRFAdaptiveBracketingParameters totalIntegrationTimeForDigitalFlashMode:frameStatistics:stationary:detectedObjects:];
    v9 = 0.0;
    return round(v9) / 100.0;
  }

  NRFStatisticsFromFrameStatistics = nfrp_createNRFStatisticsFromFrameStatistics(self->_progressiveBracketingStatisticsClass, statistics, stationary, objects);
  if (mode == 1)
  {
    v10 = 0;
    goto LABEL_6;
  }

  v9 = 0.0;
  if (mode == 2)
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

- (_DWORD)initWithProgressiveBracketingParameters:(uint64_t)parameters progressiveBracketingStatisticsClass:
{
  if (!self)
  {
    return 0;
  }

  v8.receiver = self;
  v8.super_class = BWNRFAdaptiveBracketingParameters;
  v5 = objc_msgSendSuper2(&v8, sel_init);
  v6 = v5;
  if (v5)
  {
    v5[2] = 0;
    *(v5 + 2) = a2;
    *(v6 + 4) = parameters;
  }

  return v6;
}

- (id)adaptiveBracketingParametersForDigitalFlashMode:(int)mode sphereOffsetEnabled:(BOOL)enabled
{
  if (mode)
  {
    enabledCopy = enabled;
    os_unfair_lock_lock(&self->_adaptiveBracketingParametersLock);
    v8 = self->_lastProgressiveBracketingStatisticsForTotalIntegrationTimesProvider;
    os_unfair_lock_unlock(&self->_adaptiveBracketingParametersLock);
    if (v8)
    {
      v9 = [objc_alloc(objc_opt_class()) initWithOptions:-[NRFProgressiveBracketingParameters options](self->_progressiveBracketingParameters portType:"options") statistics:-[NRFProgressiveBracketingParameters portType](self->_progressiveBracketingParameters mode:"portType") sphereOffsetEnabled:{v8, mode == 2, enabledCopy}];

      v10 = [[BWNRFAdaptiveBracketingParameters alloc] initWithProgressiveBracketingParameters:v9 progressiveBracketingStatisticsClass:self->_progressiveBracketingStatisticsClass];
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