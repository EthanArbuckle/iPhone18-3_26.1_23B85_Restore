@interface VCPVoiceDetectorV2
- (VCPVoiceDetectorV2)init;
- (id)results;
- (int)finalizeAnalysisAtTime:(id *)time;
- (int)loadModel;
- (int)processAudioSamples:(AudioBufferList *)samples timestamp:(AudioTimeStamp *)timestamp;
- (int)setupWithAudioStream:(const AudioStreamBasicDescription *)stream;
- (void)dealloc;
@end

@implementation VCPVoiceDetectorV2

- (VCPVoiceDetectorV2)init
{
  v3.receiver = self;
  v3.super_class = VCPVoiceDetectorV2;
  result = [(VCPVoiceDetector *)&v3 init];
  if (result)
  {
    *&result->_voiceActivityNew = 0;
  }

  return result;
}

- (void)dealloc
{
  v3 = *&self->_voiceActivityNew;
  if (v3)
  {
    AudioComponentInstanceDispose(v3);
  }

  v4.receiver = self;
  v4.super_class = VCPVoiceDetectorV2;
  [(VCPVoiceDetectorV2 *)&v4 dealloc];
}

- (int)setupWithAudioStream:(const AudioStreamBasicDescription *)stream
{
  v4 = *&self->_voiceActivityNew;
  if (v4)
  {
    result = AudioUnitReset(v4, 0, 0);
    if (result)
    {
      return result;
    }

    return 0;
  }

  BYTE1(inDesc.componentFlags) = 0;
  HIWORD(inDesc.componentFlags) = 0;
  inDesc.componentFlagsMask = 0;
  strcpy(&inDesc, "xfua2vpelppa");
  Next = AudioComponentFindNext(0, &inDesc);
  if (!Next)
  {
    return -23;
  }

  result = AudioComponentInstanceNew(Next, &self->_voiceActivityNew);
  if (!result)
  {
    result = AudioUnitSetProperty(*&self->_voiceActivityNew, 8u, 1u, 0, stream, 0x28u);
    if (!result)
    {
      result = AudioUnitSetProperty(*&self->_voiceActivityNew, 8u, 2u, 0, stream, 0x28u);
      if (!result)
      {
        result = AudioUnitSetProperty(*&self->_voiceActivityNew, 0xEu, 2u, 0, &self->super._sampleBatchSize, 4u);
        if (!result)
        {
          result = AudioUnitSetProperty(*&self->_voiceActivityNew, 0xFA0Au, 0, 0, self->super._model, 8u);
          if (!result)
          {
            result = AudioUnitSetProperty(*&self->_voiceActivityNew, 0xFA1Bu, 0, 0, &kEDLStartWaitTimeSec, 4u);
            if (!result)
            {
              result = AudioUnitSetProperty(*&self->_voiceActivityNew, 0xFA1Cu, 0, 0, &[VCPVoiceDetectorV2 setupWithAudioStream:]::kEDLInterspeechWaitTimeSec, 4u);
              if (!result)
              {
                result = AudioUnitSetProperty(*&self->_voiceActivityNew, 0xFA1Du, 0, 0, &kEDLSpeechStartAdjustSec, 4u);
                if (!result)
                {
                  result = AudioUnitSetProperty(*&self->_voiceActivityNew, 0xFA1Eu, 0, 0, &kEDLSpeechEndAdjustSec, 4u);
                  if (!result)
                  {
                    result = AudioUnitSetProperty(*&self->_voiceActivityNew, 0xFA1Au, 0, 0, &[VCPVoiceDetectorV2 setupWithAudioStream:]::kSmoothingWindowLenSec, 4u);
                    if (!result)
                    {
                      result = AudioUnitSetProperty(*&self->_voiceActivityNew, 0xFA1Fu, 0, 0, &[VCPVoiceDetectorV2 setupWithAudioStream:]::kEDLSpeechFraction, 4u);
                      if (!result)
                      {
                        result = AudioUnitSetProperty(*&self->_voiceActivityNew, 0xFA20u, 0, 0, &[VCPVoiceDetectorV2 setupWithAudioStream:]::kEDLNonspeechFraction, 4u);
                        if (!result)
                        {
                          result = AudioUnitSetProperty(*&self->_voiceActivityNew, 0xFA16u, 0, 0, &kRealtimeOperationMode, 1u);
                          if (!result)
                          {
                            result = AudioUnitSetProperty(*&self->_voiceActivityNew, 0xFA19u, 0, 0, &kDecoderLatency, 4u);
                            if (!result)
                            {
                              result = AudioUnitAddPropertyListener(*&self->_voiceActivityNew, 0xFA21u, SpeechStartListener, &self->super._musicDetections);
                              if (!result)
                              {
                                result = AudioUnitAddPropertyListener(*&self->_voiceActivityNew, 0xFA22u, SpeechEndListener, &self->super._musicDetections);
                                if (!result)
                                {
                                  result = AudioUnitInitialize(*&self->_voiceActivityNew);
                                  if (!result)
                                  {
                                    return 0;
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

- (int)loadModel
{
  if (self->super._model)
  {
    return 0;
  }

  v3 = MEMORY[0x1E695DF20];
  v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"/Library/Audio/Tunings/Generic/AU/aufx-epv2-mediaanalysis-appl.plist"];
  v5 = [v3 dictionaryWithContentsOfURL:v4];
  model = self->super._model;
  self->super._model = v5;

  if (self->super._model)
  {
    return 0;
  }

  else
  {
    return -23;
  }
}

- (int)processAudioSamples:(AudioBufferList *)samples timestamp:(AudioTimeStamp *)timestamp
{
  inInputBufferLists[1] = *MEMORY[0x1E69E9840];
  ioActionFlags = 512;
  ioOutputBufferLists = samples;
  inInputBufferLists[0] = samples;
  result = AudioUnitProcessMultiple(*&self->_voiceActivityNew, &ioActionFlags, timestamp, self->super._sampleBatchSize, 1u, inInputBufferLists, 1u, &ioOutputBufferLists);
  if (!result)
  {
    if (LOBYTE(self->super._musicDetections) == BYTE4(self->super._trackStart.epoch))
    {
      return 0;
    }

    else
    {
      ioDataSize = 40;
      result = AudioUnitGetProperty(*&self->_voiceActivityNew, 8u, 2u, 0, outData, &ioDataSize);
      if (!result)
      {
        v8 = 0.0;
        ioDataSize = 8;
        result = AudioUnitGetProperty(*&self->_voiceActivityNew, 0xFA26u, 0, 0, &v8, &ioDataSize);
        if (!result)
        {
          memset(&v7, 0, sizeof(v7));
          CMTimeMake(&v7, (v8 * outData[0]), outData[0]);
          p_voiceActivity = &self->super._voiceActivity;
          if (LOBYTE(self->super._musicDetections) == 1)
          {
            *p_voiceActivity = *&v7.value;
            *&self->super._voiceStart.timescale = v7.epoch;
          }

          else
          {
            [(VCPVoiceDetector *)self addDetectionFromTime:p_voiceActivity toTime:&v7 result:self->super._voiceStart.epoch];
          }

          result = 0;
          BYTE4(self->super._trackStart.epoch) = self->super._musicDetections;
        }
      }
    }
  }

  return result;
}

- (int)finalizeAnalysisAtTime:(id *)time
{
  if (BYTE4(self->super._trackStart.epoch) == 1)
  {
    [(VCPVoiceDetector *)self addDetectionFromTime:&self->super._voiceActivity toTime:time result:self->super._voiceStart.epoch, v3, v4];
  }

  return 0;
}

- (id)results
{
  v6[1] = *MEMORY[0x1E69E9840];
  epoch = self->super._voiceStart.epoch;
  if (epoch)
  {
    v5 = @"VoiceResults";
    v6[0] = epoch;
    v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end