@interface CSAudioPowerMeter
- (CSAudioPowerMeter)initWithSampleRate:(float)a3;
- (double)_linearToDB:(double)a3;
- (void)_reset;
- (void)_savePeaks:(int)a3 averagePower:(int)a4 maxSample:(int)a5;
- (void)_scaleDecayConstants:(int)a3;
- (void)_zapgremlins:(double *)a3;
@end

@implementation CSAudioPowerMeter

- (void)_reset
{
  *&self->_decay1 = xmmword_1DDB1F7F0;
  self->_averagePowerI = 0;
  self->_averagePowerF = 0.0;
  self->_peakHoldCount = 0;
  self->_previousBlockSize = 0;
  self->_averagePowerPeak = 0.0;
  self->_peak = 0.0;
  self->_maxPeak = 0.0;
  self->_instantaneousMode = 1;
}

- (void)_zapgremlins:(double *)a3
{
  v3 = *a3;
  v4 = fabs(*a3);
  if (v4 >= 1.0e15 || v4 <= 1.0e-15)
  {
    v3 = 0.0;
  }

  *a3 = v3;
}

- (double)_linearToDB:(double)a3
{
  if (a3 <= 0.000001)
  {
    return -120.0;
  }

  [(CSAudioPowerMeter *)self _ampToDB:?];
  return result;
}

- (void)_savePeaks:(int)a3 averagePower:(int)a4 maxSample:(int)a5
{
  v5 = vcvtd_n_f64_s32(a5, 0xFuLL);
  self->_averagePowerI = a4;
  instantaneousMode = self->_instantaneousMode;
  if (instantaneousMode)
  {
    v7 = v5;
  }

  else
  {
    peak = self->_peak;
    v7 = v5;
    if (peak > v7)
    {
      v7 = peak + (v7 - peak) * self->_decay;
    }
  }

  self->_peak = v7;
  v9 = vcvtd_n_f64_s32(a4, 0x1EuLL);
  v10 = self->_peakHoldCount + a3;
  self->_peakHoldCount = v10;
  maxPeak = self->_maxPeak;
  if (v10 >= (self->_sampleRate * 0.907029478))
  {
    maxPeak = maxPeak - maxPeak * self->_peakDecay;
    self->_maxPeak = maxPeak;
  }

  v12 = sqrt(v9);
  if (maxPeak < v7)
  {
    self->_maxPeak = v7;
    self->_peakHoldCount = 0;
    maxPeak = v7;
  }

  v13 = v12 * 1.41421356;
  if (!instantaneousMode)
  {
    averagePowerPeak = self->_averagePowerPeak;
    if (averagePowerPeak > v13)
    {
      v13 = averagePowerPeak + (v13 - averagePowerPeak) * self->_decay;
    }
  }

  self->_averagePowerPeak = v13;
  if (v13 > maxPeak)
  {
    self->_averagePowerPeak = maxPeak;
  }
}

- (void)_scaleDecayConstants:(int)a3
{
  if (self->_previousBlockSize != a3)
  {
    v5 = a3;
    self->_peakDecay = 1.0 - pow(self->_peakDecay1, a3);
    self->_decay = 1.0 - pow(self->_decay1, v5);
    self->_previousBlockSize = a3;
  }
}

- (CSAudioPowerMeter)initWithSampleRate:(float)a3
{
  v7.receiver = self;
  v7.super_class = CSAudioPowerMeter;
  v4 = [(CSAudioPowerMeter *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(CSAudioPowerMeter *)v4 _reset];
    v5->_sampleRate = a3;
  }

  return v5;
}

@end