@interface CSShadowMicScoreCreator
- (CSShadowMicScoreCreator)init;
- (double)_calculateRMSWithFrameData:(signed __int16)a3[80];
- (void)_calculateNumberOfVoicingFrames;
- (void)_calculateSpeechVoicingLevel;
- (void)calculateShadowMicScore;
@end

@implementation CSShadowMicScoreCreator

- (void)_calculateNumberOfVoicingFrames
{
  bestEarlyDetectSample = self->_bestEarlyDetectSample;
  speechVoiceLevel = self->_speechVoiceLevel;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_rmsSamplesForEntireAudio;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = bestEarlyDetectSample + 320;
    v10 = *v16;
    v11 = floor(speechVoiceLevel * 0.25);
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        if ([v13 lastSampleCount] >= v9 && objc_msgSend(v13, "lastSampleCount") + 80 < self->_bestEndDetectSample)
        {
          ++self->_numberOfTotalFramesETFT;
          [v13 RMSScore];
          if (v14 >= v11)
          {
            ++v8;
          }
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  self->_numberOfVoicingFrames = v8;
}

- (void)_calculateSpeechVoicingLevel
{
  [(NSMutableArray *)self->_rmsSamplesForEntireAudio sortUsingSelector:"compareScoresDesc:"];
  v3 = vcvtms_u32_f32([(NSMutableArray *)self->_rmsSamplesForEntireAudio count]* 0.2);
  v4 = [(NSMutableArray *)self->_rmsSamplesForEntireAudio count];
  v5 = v4 - v3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = self->_rmsSamplesForEntireAudio;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v16;
    v11 = 0.0;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v16 != v10)
      {
        objc_enumerationMutation(v6);
      }

      if (v5 == v9)
      {
        break;
      }

      [*(*(&v15 + 1) + 8 * v12) RMSScore];
      v11 = v11 + v13;
      ++v9;
      if (v8 == ++v12)
      {
        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v11 = 0.0;
  }

  v14 = -1.0;
  if (v4 != v3)
  {
    v14 = floor(v11 / v5);
  }

  self->_speechVoiceLevel = v14;
}

- (double)_calculateRMSWithFrameData:(signed __int16)a3[80]
{
  v3 = 0;
  v4 = 0uLL;
  v5 = 0uLL;
  v6 = 0uLL;
  v7 = 0uLL;
  do
  {
    v8 = *&a3[v3];
    v9 = vmull_high_s16(v8, v8);
    v10 = vmull_s16(*v8.i8, *v8.i8);
    v7 = vaddw_high_u32(v7, v9);
    v6 = vaddw_u32(v6, *v9.i8);
    v5 = vaddw_high_u32(v5, v10);
    v4 = vaddw_u32(v4, *v10.i8);
    v3 += 8;
  }

  while (v3 != 80);
  return vaddvq_s64(vaddq_s64(vaddq_s64(v4, v6), vaddq_s64(v5, v7)));
}

- (void)calculateShadowMicScore
{
  bestStartDetectSample = self->_bestStartDetectSample;
  bestEarlyDetectSample = self->_bestEarlyDetectSample;
  if (bestStartDetectSample > bestEarlyDetectSample || (v5 = self->_bestEndDetectSample, bestStartDetectSample > v5))
  {
    v6 = CSLogContextFacilityCoreSpeech;
    if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_4;
    }

    bestEndDetectSample = self->_bestEndDetectSample;
    *buf = 136315906;
    v23 = "[CSShadowMicScoreCreator calculateShadowMicScore]";
    v24 = 2048;
    v25 = bestStartDetectSample;
    v26 = 2048;
    v27 = bestEarlyDetectSample;
    v28 = 2048;
    v29 = bestEndDetectSample;
    v8 = "%s _bestStartDetectSample %lu was greater than _bestEarlyDetectSample %lu or _bestEndDetectSample %lu";
    v9 = v6;
    v10 = 42;
    goto LABEL_18;
  }

  if (bestEarlyDetectSample > v5)
  {
    v7 = CSLogContextFacilityCoreSpeech;
    if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_4;
    }

    *buf = 136315650;
    v23 = "[CSShadowMicScoreCreator calculateShadowMicScore]";
    v24 = 2048;
    v25 = bestEarlyDetectSample;
    v26 = 2048;
    v27 = v5;
    v8 = "%s _bestEarlyDetectSample %lu was greater than _bestEndDetectSample %lu";
    v9 = v7;
    v10 = 32;
    goto LABEL_18;
  }

  v11 = 2 * bestStartDetectSample;
  if (v11 + 160 > [(NSMutableData *)self->_audioBuffer length])
  {
LABEL_15:
    [(CSShadowMicScoreCreator *)self _calculateNumberOfVoicingFrames];
    if (self->_numberOfTotalFramesETFT)
    {
      self->_shadowMicScore = [(CSShadowMicScoreCreator *)self numberOfVoicingFrames]/ self->_numberOfTotalFramesETFT;
      return;
    }

    v17 = CSLogContextFacilityCoreSpeech;
    if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_FAULT))
    {
LABEL_4:
      self->_shadowMicScore = -1.0;
      return;
    }

    *buf = 136315394;
    v23 = "[CSShadowMicScoreCreator calculateShadowMicScore]";
    v24 = 2048;
    v25 = 0;
    v8 = "%s _numberOfTotalFramesETFT %lu is 0";
    v9 = v17;
    v10 = 22;
LABEL_18:
    _os_log_fault_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, v8, buf, v10);
    goto LABEL_4;
  }

  v12 = v11 + 80;
  while (1)
  {
    [(NSMutableData *)self->_audioBuffer getBytes:buf range:v11, 160];
    [(CSShadowMicScoreCreator *)self _calculateRMSWithFrameData:buf];
    v14 = [[RMSSample alloc] initWithRMSScore:v11 >> 1 lastSampleCount:v13];
    [(NSMutableArray *)self->_rmsSamplesForEntireAudio addObject:v14];
    if ([(RMSSample *)v14 lastSampleCount]<= self->_bestEarlyDetectSample + 160 || self->_speechVoiceLevel != -1.0)
    {
      goto LABEL_14;
    }

    [(CSShadowMicScoreCreator *)self _calculateSpeechVoicingLevel];
    if (self->_speechVoiceLevel == -1.0)
    {
      break;
    }

    [(NSMutableArray *)self->_rmsSamplesForEntireAudio removeAllObjects];
LABEL_14:

    v11 = v12;
    v15 = v12 + 160;
    v12 += 80;
    if (v15 > [(NSMutableData *)self->_audioBuffer length])
    {
      goto LABEL_15;
    }
  }

  v18 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_FAULT))
  {
    v19 = 136315394;
    v20 = "[CSShadowMicScoreCreator calculateShadowMicScore]";
    v21 = 2048;
    _os_log_fault_impl(&_mh_execute_header, v18, OS_LOG_TYPE_FAULT, "%s _speechVoiceLevel %lu is 0", &v19, 0x16u);
  }

  self->_shadowMicScore = -1.0;
}

- (CSShadowMicScoreCreator)init
{
  v8.receiver = self;
  v8.super_class = CSShadowMicScoreCreator;
  v2 = [(CSShadowMicScoreCreator *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableArray);
    rmsSamplesForEntireAudio = v2->_rmsSamplesForEntireAudio;
    v2->_rmsSamplesForEntireAudio = v3;

    v5 = objc_alloc_init(NSMutableData);
    audioBuffer = v2->_audioBuffer;
    v2->_audioBuffer = v5;

    v2->_speechVoiceLevel = -1.0;
    v2->_shadowMicScore = -1.0;
  }

  return v2;
}

@end