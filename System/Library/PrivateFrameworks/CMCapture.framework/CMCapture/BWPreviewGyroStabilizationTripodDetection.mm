@interface BWPreviewGyroStabilizationTripodDetection
- (BOOL)_isCameraStationary;
- (BWPreviewGyroStabilizationTripodDetection)initWithTripodDetectionThresholds:(float)a3 tripodMaxAngleThresholdAccumulate:(float)a4 physicalTripodLikelyMaxAngleThreshold:(float)a5 physicalTripodGuaranteedMaxAngleThreshold:(float)a6;
- (void)_detectPhysicalTripodUsingMaxAngleInstant:(float)a3 frameRateNormalization:(float)a4;
- (void)_updateWithMaxAngleInstant:(float)a3 maxAngleAccumulate:(float)a4;
- (void)detectTripodStateUsingMaxAngleInstant:(float)a3 maxAngleAccumulate:(float)a4 frameRateNormalizationFactor:(float)a5;
- (void)reset;
@end

@implementation BWPreviewGyroStabilizationTripodDetection

- (void)reset
{
  *&self->_ringCount = 0;
  self->_inputIndex = 0;
  *&self->_isStationary = 0;
  self->_isPhysicalTripod = 0;
}

- (BOOL)_isCameraStationary
{
  v2 = 1;
  self->_isStationary = 1;
  ringCount = self->_ringCount;
  if (ringCount >= 1)
  {
    stationary = self->_stationary;
    while (1)
    {
      v5 = *stationary++;
      if ((v5 & 1) == 0)
      {
        break;
      }

      if (!--ringCount)
      {
        return 1;
      }
    }

    v2 = 0;
    self->_isStationary = 0;
  }

  return v2;
}

- (BWPreviewGyroStabilizationTripodDetection)initWithTripodDetectionThresholds:(float)a3 tripodMaxAngleThresholdAccumulate:(float)a4 physicalTripodLikelyMaxAngleThreshold:(float)a5 physicalTripodGuaranteedMaxAngleThreshold:(float)a6
{
  v13.receiver = self;
  v13.super_class = BWPreviewGyroStabilizationTripodDetection;
  v10 = [(BWPreviewGyroStabilizationTripodDetection *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(BWPreviewGyroStabilizationTripodDetection *)v10 reset];
    v11->_tripodMaxAngleThresholdInstant = a3;
    v11->_tripodMaxAngleThresholdAccumulate = a4;
    v11->_physicalTripodLikelyMaxAngleThreshold = a5;
    v11->_physicalTripodGuaranteedMaxAngleThreshold = a6;
  }

  return v11;
}

- (void)_updateWithMaxAngleInstant:(float)a3 maxAngleAccumulate:(float)a4
{
  v5 = self->_tripodMaxAngleThresholdAccumulate >= a4 && self->_tripodMaxAngleThresholdInstant >= a3;
  ringCount = self->_ringCount;
  inputIndex = self->_inputIndex;
  self->_stationary[inputIndex] = v5;
  if (ringCount <= 59)
  {
    self->_ringCount = ringCount + 1;
  }

  v8 = 60 * ((~inputIndex + ((inputIndex + 1) >> 31) + ((inputIndex + 1) & ~((inputIndex + 1) >> 31))) / 0x3C + ((inputIndex + 1) >> 31));
  v9 = v8 + inputIndex + 1;
  v10 = inputIndex + v8;
  if (v9 >= 59)
  {
    v9 = 59;
  }

  self->_inputIndex = (v10 - v9 + 60) % 0x3Cu - (60 - v9) + 1;
}

- (void)_detectPhysicalTripodUsingMaxAngleInstant:(float)a3 frameRateNormalization:(float)a4
{
  physicalTripodLikelyMaxAngleThreshold = self->_physicalTripodLikelyMaxAngleThreshold;
  self->_isLikelyPhysicalTripod = physicalTripodLikelyMaxAngleThreshold > a3;
  if (physicalTripodLikelyMaxAngleThreshold <= a3)
  {
    v8 = 0;
  }

  else
  {
    previousLikelyPhysicalTripodCount = self->_previousLikelyPhysicalTripodCount;
    v6 = llroundf(a4);
    if (v6 <= 1)
    {
      v6 = 1;
    }

    v7 = previousLikelyPhysicalTripodCount >= v6 && self->_physicalTripodGuaranteedMaxAngleThreshold > a3;
    self->_isPhysicalTripod = v7;
    v8 = previousLikelyPhysicalTripodCount + 1;
  }

  self->_previousLikelyPhysicalTripodCount = v8;
}

- (void)detectTripodStateUsingMaxAngleInstant:(float)a3 maxAngleAccumulate:(float)a4 frameRateNormalizationFactor:(float)a5
{
  [BWPreviewGyroStabilizationTripodDetection _updateWithMaxAngleInstant:"_updateWithMaxAngleInstant:maxAngleAccumulate:" maxAngleAccumulate:?];
  [(BWPreviewGyroStabilizationTripodDetection *)self _isCameraStationary];
  *&v8 = a3;
  *&v9 = a5;

  [(BWPreviewGyroStabilizationTripodDetection *)self _detectPhysicalTripodUsingMaxAngleInstant:v8 frameRateNormalization:v9];
}

@end