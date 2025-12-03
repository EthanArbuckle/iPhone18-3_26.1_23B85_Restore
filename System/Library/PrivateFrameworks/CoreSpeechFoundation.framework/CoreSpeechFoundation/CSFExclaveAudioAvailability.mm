@interface CSFExclaveAudioAvailability
- (CSFExclaveAudioAvailability)initWithNumChannels:(unint64_t)channels numSamples:(unint64_t)samples sampleByteDepth:(unint64_t)depth startSampleCount:(unint64_t)count hostTime:(unint64_t)time arrivalHostTimeToAudioRecorder:(unint64_t)recorder;
@end

@implementation CSFExclaveAudioAvailability

- (CSFExclaveAudioAvailability)initWithNumChannels:(unint64_t)channels numSamples:(unint64_t)samples sampleByteDepth:(unint64_t)depth startSampleCount:(unint64_t)count hostTime:(unint64_t)time arrivalHostTimeToAudioRecorder:(unint64_t)recorder
{
  v15.receiver = self;
  v15.super_class = CSFExclaveAudioAvailability;
  result = [(CSFExclaveAudioAvailability *)&v15 init];
  if (result)
  {
    result->_numChannels = channels;
    result->_numSamples = samples;
    result->_sampleByteDepth = depth;
    result->_startSampleCount = count;
    result->_hostTime = time;
    result->_arrivalHostTimeToAudioRecorder = recorder;
  }

  return result;
}

@end