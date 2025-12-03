@interface HAPPGOpticalSample
- (HAPPGOpticalSample)initWithPPGProcessorOutputSignal:(const void *)signal;
@end

@implementation HAPPGOpticalSample

- (HAPPGOpticalSample)initWithPPGProcessorOutputSignal:(const void *)signal
{
  v17.receiver = self;
  v17.super_class = HAPPGOpticalSample;
  v4 = [(HAPPGOpticalSample *)&v17 init];
  v4->_emitter = *(signal + 8);
  v4->_photodiodes = *(signal + 9);
  v4->_hardwareSetting = *(signal + 10);
  v4->_samplingFrequency = *(signal + 6);
  v4->_timestamp = *signal;
  v4->_nominalWavelength = *(signal + 7);
  v4->_effectiveWavelength = *(signal + 4);
  if (*(signal + 24) == 1)
  {
    LODWORD(v5) = *(signal + 5);
    v6 = [MEMORY[0x277CCABB0] numberWithFloat:v5];
    normalizedReflectance = v4->_normalizedReflectance;
    v4->_normalizedReflectance = v6;
  }

  if (*(signal + 36) == 1)
  {
    LODWORD(v5) = *(signal + 8);
    v8 = [MEMORY[0x277CCABB0] numberWithFloat:v5];
    estimatedDeviceWhiteNoise = v4->_estimatedDeviceWhiteNoise;
    v4->_estimatedDeviceWhiteNoise = v8;
  }

  if (*(signal + 44) == 1)
  {
    LODWORD(v5) = *(signal + 10);
    v10 = [MEMORY[0x277CCABB0] numberWithFloat:v5];
    estimatedDevicePinkNoise = v4->_estimatedDevicePinkNoise;
    v4->_estimatedDevicePinkNoise = v10;
  }

  if (*(signal + 52) == 1)
  {
    LODWORD(v5) = *(signal + 12);
    v12 = [MEMORY[0x277CCABB0] numberWithFloat:v5];
    backgroundNoise = v4->_backgroundNoise;
    v4->_backgroundNoise = v12;
  }

  if (*(signal + 60) == 1)
  {
    LODWORD(v5) = *(signal + 14);
    v14 = [MEMORY[0x277CCABB0] numberWithFloat:v5];
    estimatedDeviceNoiseOffset = v4->_estimatedDeviceNoiseOffset;
    v4->_estimatedDeviceNoiseOffset = v14;
  }

  v4->_saturated = *(signal + 28);
  v4->_noiseIsUnreliable = *(signal + 29);
  return v4;
}

@end