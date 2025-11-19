@interface CMCaptureSpatialAudioMetadataSampleGenerator
+ (void)initialize;
- (CMCaptureSpatialAudioMetadataSampleGenerator)init;
- (int)analyzeAudioSample:(opaqueCMSampleBuffer *)a3;
- (opaqueCMSampleBuffer)newTimedMetadataSampleBufferAndResetAnalyzer;
- (void)consumeMessage:(id)a3 fromOutput:(id)a4;
- (void)dealloc;
- (void)resetAnalyzer;
@end

@implementation CMCaptureSpatialAudioMetadataSampleGenerator

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (CMCaptureSpatialAudioMetadataSampleGenerator)init
{
  v8.receiver = self;
  v8.super_class = CMCaptureSpatialAudioMetadataSampleGenerator;
  v2 = [(CMCaptureSpatialAudioMetadataSampleGenerator *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(BWAudioRemixAnalysisMetadataNode);
    *(v2 + 1) = v3;
    if (v3)
    {
      [(BWNodeOutput *)[(BWAudioRemixAnalysisMetadataNode *)v3 metadataOutput] setConsumer:v2];
      *(v2 + 2) = 0;
      *(v2 + 3) = 0;
      v2[32] = 0;
      v4 = MEMORY[0x1E6960C70];
      v5 = *MEMORY[0x1E6960C70];
      *(v2 + 36) = *MEMORY[0x1E6960C70];
      v6 = *(v4 + 16);
      *(v2 + 52) = v6;
      *(v2 + 60) = v5;
      *(v2 + 76) = v6;
      *(v2 + 11) = FigSimpleMutexCreate();
    }

    else
    {
      [(CMCaptureSpatialAudioMetadataSampleGenerator *)v2 init];
      return 0;
    }
  }

  return v2;
}

- (void)dealloc
{
  [(BWNodeOutput *)[(BWAudioRemixAnalysisMetadataNode *)self->_audioRemixAnalysisMetadataNode metadataOutput] setConsumer:0];

  timedMedataSampleBuffer = self->_timedMedataSampleBuffer;
  if (timedMedataSampleBuffer)
  {
    CFRelease(timedMedataSampleBuffer);
  }

  audioFormatDesc = self->_audioFormatDesc;
  if (audioFormatDesc)
  {
    CFRelease(audioFormatDesc);
  }

  FigSimpleMutexDestroy();
  v5.receiver = self;
  v5.super_class = CMCaptureSpatialAudioMetadataSampleGenerator;
  [(CMCaptureSpatialAudioMetadataSampleGenerator *)&v5 dealloc];
}

- (opaqueCMSampleBuffer)newTimedMetadataSampleBufferAndResetAnalyzer
{
  v3 = MEMORY[0x1E6960C70];
  if (!self->_analyzedFirstBuffer)
  {
    goto LABEL_8;
  }

  if ((self->_lastKnownDuration.timescale & 1) == 0)
  {
    CMTimeMake(&lhs.duration, 1, 100);
    *(&self->_lastAnalyzedPTS.epoch + 4) = *&lhs.duration.value;
    *&self->_lastKnownDuration.flags = lhs.duration.epoch;
  }

  memset(&v10, 0, sizeof(v10));
  *&lhs.duration.value = *(&self->_analyzedFirstBuffer + 4);
  lhs.duration.epoch = *&self->_lastAnalyzedPTS.flags;
  rhs = *(&self->_lastAnalyzedPTS.epoch + 4);
  CMTimeAdd(&v10, &lhs.duration, &rhs);
  *&lhs.duration.value = *v3;
  lhs.duration.epoch = *(v3 + 2);
  lhs.presentationTimeStamp = v10;
  lhs.decodeTimeStamp = lhs.duration;
  rhs.value = 0;
  if (CMSampleBufferCreate(*MEMORY[0x1E695E480], 0, 1u, 0, 0, self->_audioFormatDesc, 0, 1, &lhs, 0, 0, &rhs))
  {
LABEL_8:
    timedMedataSampleBuffer = 0;
  }

  else
  {
    CMSetAttachment(rhs.value, @"FileWriterAction", @"Stop", 1u);
    [(BWAudioRemixAnalysisMetadataNode *)self->_audioRemixAnalysisMetadataNode renderSampleBuffer:rhs.value forInput:[(BWNode *)self->_audioRemixAnalysisMetadataNode input]];
    CFRelease(rhs.value);
    FigSimpleMutexLock();
    timedMedataSampleBuffer = self->_timedMedataSampleBuffer;
    if (timedMedataSampleBuffer)
    {
      self->_timedMedataSampleBuffer = 0;
    }

    FigSimpleMutexUnlock();
  }

  self->_analyzedFirstBuffer = 0;
  v5 = *v3;
  *(&self->_analyzedFirstBuffer + 4) = *v3;
  v6 = *(v3 + 2);
  *&self->_lastAnalyzedPTS.flags = v6;
  *(&self->_lastAnalyzedPTS.epoch + 4) = v5;
  *&self->_lastKnownDuration.flags = v6;
  return timedMedataSampleBuffer;
}

- (void)resetAnalyzer
{
  [(BWAudioRemixAnalysisMetadataNode *)self->_audioRemixAnalysisMetadataNode resetAnalyzer];
  audioFormatDesc = self->_audioFormatDesc;
  if (audioFormatDesc)
  {
    CFRelease(audioFormatDesc);
    self->_audioFormatDesc = 0;
  }

  self->_analyzedFirstBuffer = 0;
  v4 = MEMORY[0x1E6960C70];
  v5 = *MEMORY[0x1E6960C70];
  *(&self->_analyzedFirstBuffer + 4) = *MEMORY[0x1E6960C70];
  v6 = *(v4 + 16);
  *&self->_lastAnalyzedPTS.flags = v6;
  *(&self->_lastAnalyzedPTS.epoch + 4) = v5;
  *&self->_lastKnownDuration.flags = v6;
}

- (void)consumeMessage:(id)a3 fromOutput:(id)a4
{
  if (*(a3 + 2) == 2 && *(a3 + 3) == 1)
  {
    v6 = [a3 sampleBuffer];
    if (CMSampleBufferGetDataBuffer(v6))
    {
      FigSimpleMutexLock();
      timedMedataSampleBuffer = self->_timedMedataSampleBuffer;
      if (timedMedataSampleBuffer)
      {
        CFRelease(timedMedataSampleBuffer);
        self->_timedMedataSampleBuffer = 0;
      }

      self->_timedMedataSampleBuffer = CFRetain(v6);

      FigSimpleMutexUnlock();
    }
  }
}

- (int)analyzeAudioSample:(opaqueCMSampleBuffer *)a3
{
  FormatDescription = CMSampleBufferGetFormatDescription(a3);
  if (CMFormatDescriptionGetMediaType(FormatDescription) != 1936684398)
  {
    return -12780;
  }

  memset(&v15, 0, sizeof(v15));
  CMSampleBufferGetPresentationTimeStamp(&v15, a3);
  if ((v15.flags & 1) == 0)
  {
    return -12780;
  }

  v6 = MEMORY[0x1E6960C70];
  if (self->_analyzedFirstBuffer)
  {
LABEL_8:
    memset(&v13, 0, sizeof(v13));
    CMSampleBufferGetDuration(&v13, a3);
    if (v13.flags)
    {
      *(&self->_lastAnalyzedPTS.epoch + 4) = *&v13.value;
      epoch = v13.epoch;
    }

    else
    {
      if ((self->_lastAnalyzedPTS.timescale & 1) == 0)
      {
LABEL_14:
        *(&self->_analyzedFirstBuffer + 4) = v15;
        [(BWAudioRemixAnalysisMetadataNode *)self->_audioRemixAnalysisMetadataNode renderSampleBuffer:a3 forInput:[(BWNode *)self->_audioRemixAnalysisMetadataNode input]];
        return 0;
      }

      sampleTimingArray.duration = v15;
      target = *(&self->_analyzedFirstBuffer + 4);
      if (CMTimeCompare(&sampleTimingArray.duration, &target) < 1)
      {
        *(&self->_lastAnalyzedPTS.epoch + 4) = *v6;
        epoch = *(v6 + 16);
      }

      else
      {
        target = v15;
        rhs = *(&self->_analyzedFirstBuffer + 4);
        CMTimeSubtract(&sampleTimingArray.duration, &target, &rhs);
        *(&self->_lastAnalyzedPTS.epoch + 4) = *&sampleTimingArray.duration.value;
        epoch = sampleTimingArray.duration.epoch;
      }
    }

    *&self->_lastKnownDuration.flags = epoch;
    goto LABEL_14;
  }

  audioFormatDesc = self->_audioFormatDesc;
  if (audioFormatDesc)
  {
    CFRelease(audioFormatDesc);
  }

  v8 = CFRetain(FormatDescription);
  self->_audioFormatDesc = v8;
  [(BWAudioRemixAnalysisMetadataNode *)self->_audioRemixAnalysisMetadataNode configurationWithID:1 updatedFormat:[BWAudioFormat didBecomeLiveForInput:"formatWithAudioFormatDescription:" formatWithAudioFormatDescription:v8], [(BWNode *)self->_audioRemixAnalysisMetadataNode input]];
  *&sampleTimingArray.duration.value = *v6;
  sampleTimingArray.duration.epoch = *(v6 + 16);
  sampleTimingArray.presentationTimeStamp = v15;
  sampleTimingArray.decodeTimeStamp = sampleTimingArray.duration;
  target.value = 0;
  result = CMSampleBufferCreate(*MEMORY[0x1E695E480], 0, 1u, 0, 0, self->_audioFormatDesc, 0, 1, &sampleTimingArray, 0, 0, &target);
  if (!result)
  {
    CMSetAttachment(target.value, @"FileWriterAction", @"Start", 1u);
    [(BWAudioRemixAnalysisMetadataNode *)self->_audioRemixAnalysisMetadataNode renderSampleBuffer:target.value forInput:[(BWNode *)self->_audioRemixAnalysisMetadataNode input]];
    CFRelease(target.value);
    self->_analyzedFirstBuffer = 1;
    goto LABEL_8;
  }

  return result;
}

@end