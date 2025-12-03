@interface CSAudioPowerMeter
- (CSAudioPowerMeter)initWithSampleRate:(float)rate;
- (double)_linearToDB:(double)b;
- (void)_reset;
- (void)_savePeaks:(int)peaks averagePower:(int)power maxSample:(int)sample;
- (void)_scaleDecayConstants:(int)constants;
- (void)_zapgremlins:(double *)_zapgremlins;
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

- (void)_zapgremlins:(double *)_zapgremlins
{
  v3 = *_zapgremlins;
  v4 = fabs(*_zapgremlins);
  if (v4 >= 1.0e15 || v4 <= 1.0e-15)
  {
    v3 = 0.0;
  }

  *_zapgremlins = v3;
}

- (double)_linearToDB:(double)b
{
  if (b <= 0.000001)
  {
    return -120.0;
  }

  [(CSAudioPowerMeter *)self _ampToDB:?];
  return result;
}

- (void)_savePeaks:(int)peaks averagePower:(int)power maxSample:(int)sample
{
  v5 = vcvtd_n_f64_s32(sample, 0xFuLL);
  self->_averagePowerI = power;
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
  v9 = vcvtd_n_f64_s32(power, 0x1EuLL);
  v10 = self->_peakHoldCount + peaks;
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

- (void)_scaleDecayConstants:(int)constants
{
  if (self->_previousBlockSize != constants)
  {
    constantsCopy = constants;
    self->_peakDecay = 1.0 - pow(self->_peakDecay1, constants);
    self->_decay = 1.0 - pow(self->_decay1, constantsCopy);
    self->_previousBlockSize = constants;
  }
}

- (CSAudioPowerMeter)initWithSampleRate:(float)rate
{
  v7.receiver = self;
  v7.super_class = CSAudioPowerMeter;
  v4 = [(CSAudioPowerMeter *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(CSAudioPowerMeter *)v4 _reset];
    v5->_sampleRate = rate;
  }

  return v5;
}

@end