@interface NviDirectionalitySignalData
- (NviDirectionalitySignalData)initWithStartSample:(unint64_t)sample endSample:(unint64_t)endSample confidence:(float)confidence azimuth:(float)azimuth estimatedAzimuth:(float)estimatedAzimuth;
- (float)mostSampledAzimuth;
- (id)_spatialSpectrumLogStr;
- (id)description;
- (id)stringForLogging;
@end

@implementation NviDirectionalitySignalData

- (id)_spatialSpectrumLogStr
{
  v3 = [(NSArray *)self->_spatialSpectrumData count];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@", %d, ", v3];
  v5 = v4;
  if (v3)
  {
    for (i = 0; i != v3; ++i)
    {
      v7 = [(NSArray *)self->_spatialSpectrumData objectAtIndex:i];
      [v7 floatValue];
      v9 = [v5 stringByAppendingFormat:@"%f, ", v8];

      v5 = v9;
    }
  }

  else
  {
    v9 = v4;
  }

  return v9;
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = NviDirectionalitySignalData;
  v3 = [(NviSignalData *)&v6 description];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"{%@, {start=%lu, end=%lu, conf=%f, az=%f, estAz=%fdist=%@}", v3, self->_startSample, self->_endSample, self->_confidence, self->_azimuth, self->_estimatedAzimuth, self->_azDistribution];

  return v4;
}

- (id)stringForLogging
{
  v3 = MEMORY[0x277CCACA8];
  sigGenTs = [(NviSignalData *)self sigGenTs];
  startSample = self->_startSample;
  return [v3 stringWithFormat:@"%llu, %f, %lu, %lu, %f, %f, %f, ", sigGenTs, *&self->_processedAudioDurMs, startSample, self->_endSample, self->_azimuth, self->_estimatedAzimuth, self->_confidence];
}

- (float)mostSampledAzimuth
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = self->_azDistribution;
  v4 = [(NSDictionary *)v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v17;
    v8 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [(NSDictionary *)self->_azDistribution objectForKeyedSubscript:v10, v16];
        unsignedIntegerValue = [v11 unsignedIntegerValue];

        if (unsignedIntegerValue > v6)
        {
          [v10 floatValue];
          v8 = v13;
          v6 = unsignedIntegerValue;
        }
      }

      v5 = [(NSDictionary *)v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  else
  {
    v8 = 0.0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v8;
}

- (NviDirectionalitySignalData)initWithStartSample:(unint64_t)sample endSample:(unint64_t)endSample confidence:(float)confidence azimuth:(float)azimuth estimatedAzimuth:(float)estimatedAzimuth
{
  v13 = mach_absolute_time();
  v19.receiver = self;
  v19.super_class = NviDirectionalitySignalData;
  v14 = [(NviSignalData *)&v19 initWithSignalType:4 timestamp:v13];
  v15 = v14;
  if (v14)
  {
    v14->_startSample = sample;
    v14->_endSample = endSample;
    v14->_confidence = confidence;
    v14->_azimuth = azimuth;
    v14->_estimatedAzimuth = estimatedAzimuth;
    v16 = objc_alloc_init(MEMORY[0x277CBEA60]);
    spatialSpectrumData = v15->_spatialSpectrumData;
    v15->_spatialSpectrumData = v16;
  }

  return v15;
}

@end