@interface VCPVoiceDetector
+ (id)detector;
- (VCPVoiceDetector)init;
- (id)audioFormatRequirements;
- (int)setupWithSample:(opaqueCMSampleBuffer *)sample andSampleBatchSize:(int)size;
- (void)addDetectionFromTime:(id *)time toTime:(id *)toTime result:(id)result;
@end

@implementation VCPVoiceDetector

+ (id)detector
{
  v2 = objc_alloc_init(VCPVoiceDetectorV2);

  return v2;
}

- (VCPVoiceDetector)init
{
  v11.receiver = self;
  v11.super_class = VCPVoiceDetector;
  v2 = [(VCPVoiceDetector *)&v11 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 40) = xmmword_1C9F605D0;
    *(v2 + 24) = xmmword_1C9F605E0;
    array = [MEMORY[0x1E695DF70] array];
    epoch = v3->_voiceStart.epoch;
    v3->_voiceStart.epoch = array;

    array2 = [MEMORY[0x1E695DF70] array];
    voiceDetections = v3->_voiceDetections;
    v3->_voiceDetections = array2;

    array3 = [MEMORY[0x1E695DF70] array];
    utteranceDetections = v3->_utteranceDetections;
    v3->_utteranceDetections = array3;

    v3->_sampleBatchSize = 320;
  }

  return v3;
}

- (id)audioFormatRequirements
{
  v8[7] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E6958348];
  v7[0] = *MEMORY[0x1E69582B0];
  v7[1] = v2;
  v8[0] = &unk_1F49BB8D8;
  v8[1] = &unk_1F49BB088;
  v3 = *MEMORY[0x1E69582C8];
  v7[2] = *MEMORY[0x1E6958300];
  v7[3] = v3;
  v8[2] = &unk_1F49BB8F0;
  v8[3] = &unk_1F49BB908;
  v4 = *MEMORY[0x1E69582E8];
  v7[4] = *MEMORY[0x1E69582D0];
  v7[5] = v4;
  v8[4] = MEMORY[0x1E695E110];
  v8[5] = MEMORY[0x1E695E118];
  v7[6] = *MEMORY[0x1E69582F0];
  v8[6] = MEMORY[0x1E695E118];
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:7];

  return v5;
}

- (void)addDetectionFromTime:(id *)time toTime:(id *)toTime result:(id)result
{
  v19[2] = *MEMORY[0x1E69E9840];
  resultCopy = result;
  if (resultCopy)
  {
    memset(&v16, 0, sizeof(v16));
    *&v13.start.value = *(&self->_sampleBatchSize + 1);
    v13.start.epoch = *&self->_trackStart.flags;
    rhs = *time;
    CMTimeAdd(&start, &v13.start, &rhs);
    *&v13.start.value = *(&self->_sampleBatchSize + 1);
    v13.start.epoch = *&self->_trackStart.flags;
    rhs = *toTime;
    CMTimeAdd(&end, &v13.start, &rhs);
    CMTimeRangeFromTimeToTime(&v16, &start, &end);
    if ((v16.start.flags & 1) != 0 && (v16.duration.flags & 1) != 0 && !v16.duration.epoch && (v16.duration.value & 0x8000000000000000) == 0)
    {
      v13 = v16;
      v9 = CMTimeRangeCopyAsDictionary(&v13, 0);
      v18[0] = @"start";
      v10 = [(__CFDictionary *)v9 objectForKey:?];
      v19[0] = v10;
      v18[1] = @"duration";
      v11 = [(__CFDictionary *)v9 objectForKey:?];
      v19[1] = v11;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];
      [resultCopy addObject:v12];
    }
  }
}

- (int)setupWithSample:(opaqueCMSampleBuffer *)sample andSampleBatchSize:(int)size
{
  self->_sampleBatchSize = size;
  result = [(VCPVoiceDetector *)self loadModel];
  if (!result)
  {
    FormatDescription = CMSampleBufferGetFormatDescription(sample);
    StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(FormatDescription);
    if (StreamBasicDescription)
    {
      p_mSampleRate = &StreamBasicDescription->mSampleRate;
      CMSampleBufferGetPresentationTimeStamp(&v10, sample);
      *(&self->_sampleBatchSize + 1) = v10;
      self->_audioStream.mSampleRate = *p_mSampleRate;
      result = [(VCPVoiceDetector *)self setupWithAudioStream:p_mSampleRate];
      if (!result)
      {
        BYTE4(self->_trackStart.epoch) = 0;
      }
    }

    else
    {
      return -50;
    }
  }

  return result;
}

@end