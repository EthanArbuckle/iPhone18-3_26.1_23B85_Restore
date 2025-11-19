@interface CSFExclaveAudioAvailability
- (CSFExclaveAudioAvailability)initWithNumChannels:(unint64_t)a3 numSamples:(unint64_t)a4 sampleByteDepth:(unint64_t)a5 startSampleCount:(unint64_t)a6 hostTime:(unint64_t)a7 arrivalHostTimeToAudioRecorder:(unint64_t)a8;
@end

@implementation CSFExclaveAudioAvailability

- (CSFExclaveAudioAvailability)initWithNumChannels:(unint64_t)a3 numSamples:(unint64_t)a4 sampleByteDepth:(unint64_t)a5 startSampleCount:(unint64_t)a6 hostTime:(unint64_t)a7 arrivalHostTimeToAudioRecorder:(unint64_t)a8
{
  v15.receiver = self;
  v15.super_class = CSFExclaveAudioAvailability;
  result = [(CSFExclaveAudioAvailability *)&v15 init];
  if (result)
  {
    result->_numChannels = a3;
    result->_numSamples = a4;
    result->_sampleByteDepth = a5;
    result->_startSampleCount = a6;
    result->_hostTime = a7;
    result->_arrivalHostTimeToAudioRecorder = a8;
  }

  return result;
}

@end