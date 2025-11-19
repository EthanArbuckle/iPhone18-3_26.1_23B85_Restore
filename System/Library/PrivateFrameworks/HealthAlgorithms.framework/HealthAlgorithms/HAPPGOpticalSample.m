@interface HAPPGOpticalSample
- (HAPPGOpticalSample)initWithPPGProcessorOutputSignal:(const void *)a3;
@end

@implementation HAPPGOpticalSample

- (HAPPGOpticalSample)initWithPPGProcessorOutputSignal:(const void *)a3
{
  v17.receiver = self;
  v17.super_class = HAPPGOpticalSample;
  v4 = [(HAPPGOpticalSample *)&v17 init];
  v4->_emitter = *(a3 + 8);
  v4->_photodiodes = *(a3 + 9);
  v4->_hardwareSetting = *(a3 + 10);
  v4->_samplingFrequency = *(a3 + 6);
  v4->_timestamp = *a3;
  v4->_nominalWavelength = *(a3 + 7);
  v4->_effectiveWavelength = *(a3 + 4);
  if (*(a3 + 24) == 1)
  {
    LODWORD(v5) = *(a3 + 5);
    v6 = [MEMORY[0x277CCABB0] numberWithFloat:v5];
    normalizedReflectance = v4->_normalizedReflectance;
    v4->_normalizedReflectance = v6;
  }

  if (*(a3 + 36) == 1)
  {
    LODWORD(v5) = *(a3 + 8);
    v8 = [MEMORY[0x277CCABB0] numberWithFloat:v5];
    estimatedDeviceWhiteNoise = v4->_estimatedDeviceWhiteNoise;
    v4->_estimatedDeviceWhiteNoise = v8;
  }

  if (*(a3 + 44) == 1)
  {
    LODWORD(v5) = *(a3 + 10);
    v10 = [MEMORY[0x277CCABB0] numberWithFloat:v5];
    estimatedDevicePinkNoise = v4->_estimatedDevicePinkNoise;
    v4->_estimatedDevicePinkNoise = v10;
  }

  if (*(a3 + 52) == 1)
  {
    LODWORD(v5) = *(a3 + 12);
    v12 = [MEMORY[0x277CCABB0] numberWithFloat:v5];
    backgroundNoise = v4->_backgroundNoise;
    v4->_backgroundNoise = v12;
  }

  if (*(a3 + 60) == 1)
  {
    LODWORD(v5) = *(a3 + 14);
    v14 = [MEMORY[0x277CCABB0] numberWithFloat:v5];
    estimatedDeviceNoiseOffset = v4->_estimatedDeviceNoiseOffset;
    v4->_estimatedDeviceNoiseOffset = v14;
  }

  v4->_saturated = *(a3 + 28);
  v4->_noiseIsUnreliable = *(a3 + 29);
  return v4;
}

@end