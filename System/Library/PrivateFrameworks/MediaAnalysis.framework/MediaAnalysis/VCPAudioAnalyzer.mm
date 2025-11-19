@interface VCPAudioAnalyzer
- (VCPAudioAnalyzer)initWithAnalysisTypes:(unint64_t)a3 forStreaming:(BOOL)a4 andResultHandler:(id)a5;
- (id)audioFormatRequirements;
- (id)voiceDetections;
- (int)analyzeAsset:(id)a3 cancel:(id)a4 results:(id *)a5;
- (int)analyzeSampleBuffer:(opaqueCMSampleBuffer *)a3;
- (int)finalizeAnalysisAtTime:(id *)a3;
- (int)processAudioSamples:(AudioBufferList *)a3 timestamp:(AudioTimeStamp *)a4;
- (int)processSampleBuffer:(opaqueCMSampleBuffer *)a3;
- (int)setupWithSample:(opaqueCMSampleBuffer *)a3 andTrackDuration:(id *)a4;
- (void)dealloc;
@end

@implementation VCPAudioAnalyzer

- (VCPAudioAnalyzer)initWithAnalysisTypes:(unint64_t)a3 forStreaming:(BOOL)a4 andResultHandler:(id)a5
{
  v5 = a4;
  v8 = a5;
  v26.receiver = self;
  v26.super_class = VCPAudioAnalyzer;
  v9 = [(VCPAudioAnalyzer *)&v26 init];
  if (!v9)
  {
    goto LABEL_25;
  }

  if ((a3 & 0x10) != 0 && v5)
  {
    v10 = +[VCPVoiceDetector detector];
    voiceDetector = v9->_voiceDetector;
    v9->_voiceDetector = v10;

    if (!v9->_voiceDetector)
    {
      if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_25;
      }

      *v25 = 0;
      v12 = MEMORY[0x1E69E9C10];
      v13 = "[AudioAnalyzer] Failed to create VCPVoiceDetector";
LABEL_24:
      _os_log_impl(&dword_1C9B70000, v12, OS_LOG_TYPE_ERROR, v13, v25, 2u);
LABEL_25:
      v22 = 0;
      goto LABEL_26;
    }
  }

  else if ((a3 & 0x820400200010) != 0)
  {
    v14 = [[VCPAudioClassifier alloc] initWithTypes:a3];
    audioClassifier = v9->_audioClassifier;
    v9->_audioClassifier = v14;

    if (!v9->_audioClassifier)
    {
      if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_25;
      }

      *v25 = 0;
      v12 = MEMORY[0x1E69E9C10];
      v13 = "[AudioAnalyzer] Failed to create VCPAudioClassifier";
      goto LABEL_24;
    }
  }

  if ((a3 & 0x800000) != 0)
  {
    v16 = objc_alloc_init(VCPLoudnessAnalyzer);
    loudnessAnalyzer = v9->_loudnessAnalyzer;
    v9->_loudnessAnalyzer = v16;

    if (!v9->_loudnessAnalyzer)
    {
      if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_25;
      }

      *v25 = 0;
      v12 = MEMORY[0x1E69E9C10];
      v13 = "[AudioAnalyzer] Failed to create VCPLoudnessAnalyzer";
      goto LABEL_24;
    }
  }

  if ((a3 & 0x8000000) != 0)
  {
    v18 = objc_alloc_init(VCPSongDetector);
    songDetector = v9->_songDetector;
    v9->_songDetector = v18;

    if (!v9->_songDetector)
    {
      if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_25;
      }

      *v25 = 0;
      v12 = MEMORY[0x1E69E9C10];
      v13 = "[AudioAnalyzer] Failed to create VCPSongDetector";
      goto LABEL_24;
    }
  }

  v9->_inputBuffer = 0;
  v9->_bufferedSamples = 0;
  v9->_sampleBatchSize = 320;
  v9->_initialized = 0;
  v20 = _Block_copy(v8);
  resultHandler = v9->_resultHandler;
  v9->_resultHandler = v20;

  v22 = v9;
LABEL_26:
  v23 = v22;

  return v23;
}

- (void)dealloc
{
  inputBuffer = self->_inputBuffer;
  if (inputBuffer)
  {
    free(inputBuffer);
  }

  v4.receiver = self;
  v4.super_class = VCPAudioAnalyzer;
  [(VCPAudioAnalyzer *)&v4 dealloc];
}

- (id)audioFormatRequirements
{
  v8[7] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E6958348];
  v7[0] = *MEMORY[0x1E69582B0];
  v7[1] = v2;
  v8[0] = &unk_1F49BDE40;
  v8[1] = &unk_1F49BB1F8;
  v3 = *MEMORY[0x1E69582C8];
  v7[2] = *MEMORY[0x1E6958300];
  v7[3] = v3;
  v8[2] = &unk_1F49BDE58;
  v8[3] = &unk_1F49BDE70;
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

- (int)setupWithSample:(opaqueCMSampleBuffer *)a3 andTrackDuration:(id *)a4
{
  FormatDescription = CMSampleBufferGetFormatDescription(a3);
  if (!CMAudioFormatDescriptionGetStreamBasicDescription(FormatDescription))
  {
    return -50;
  }

  voiceDetector = self->_voiceDetector;
  if (!voiceDetector || (result = [(VCPVoiceDetector *)voiceDetector setupWithSample:a3 andSampleBatchSize:self->_sampleBatchSize]) == 0)
  {
    audioClassifier = self->_audioClassifier;
    if (!audioClassifier || (v15 = *&a4->var0, var3 = a4->var3, (result = [(VCPAudioClassifier *)audioClassifier setupWithSample:a3 trackDuration:&v15 resultHandler:self->_resultHandler andSampleBatchSize:self->_sampleBatchSize]) == 0))
    {
      loudnessAnalyzer = self->_loudnessAnalyzer;
      if (!loudnessAnalyzer || (result = [(VCPLoudnessAnalyzer *)loudnessAnalyzer setupWithSample:a3 andSampleBatchSize:self->_sampleBatchSize]) == 0)
      {
        songDetector = self->_songDetector;
        if (!songDetector || (result = [(VCPSongDetector *)songDetector setupWithSample:a3 andSampleBatchSize:self->_sampleBatchSize]) == 0)
        {
          if (self->_inputBuffer)
          {
LABEL_13:
            result = 0;
            self->_audioTimestamp.mSampleTime = 0.0;
            self->_audioTimestamp.mFlags = 1;
            return result;
          }

          v13 = malloc_type_malloc(4 * self->_sampleBatchSize + 4095, 0x100004052888210uLL);
          self->_inputBuffer = v13;
          if (v13)
          {
            self->_audioBufferList.mBuffers[0].mData = ((v13 + 4095) & 0xFFFFFFFFFFFFF000);
            self->_audioBufferList.mNumberBuffers = 1;
            v14 = 4 * self->_sampleBatchSize;
            self->_audioBufferList.mBuffers[0].mNumberChannels = 1;
            self->_audioBufferList.mBuffers[0].mDataByteSize = v14;
            goto LABEL_13;
          }

          return -108;
        }
      }
    }
  }

  return result;
}

- (int)processAudioSamples:(AudioBufferList *)a3 timestamp:(AudioTimeStamp *)a4
{
  voiceDetector = self->_voiceDetector;
  if (!voiceDetector || (v8 = *&a4->mRateScalar, v20 = *&a4->mSampleTime, v21 = v8, v9 = *&a4->mSMPTETime.mHours, v22 = *&a4->mSMPTETime.mSubframes, v23 = v9, (result = [(VCPVoiceDetector *)voiceDetector processAudioSamples:a3 timestamp:&v20]) == 0))
  {
    audioClassifier = self->_audioClassifier;
    if (!audioClassifier || (v12 = *&a4->mRateScalar, v20 = *&a4->mSampleTime, v21 = v12, v13 = *&a4->mSMPTETime.mHours, v22 = *&a4->mSMPTETime.mSubframes, v23 = v13, (result = [(VCPAudioClassifier *)audioClassifier processAudioSamples:a3 timestamp:&v20]) == 0))
    {
      loudnessAnalyzer = self->_loudnessAnalyzer;
      if (!loudnessAnalyzer || (v15 = *&a4->mRateScalar, v20 = *&a4->mSampleTime, v21 = v15, v16 = *&a4->mSMPTETime.mHours, v22 = *&a4->mSMPTETime.mSubframes, v23 = v16, (result = [(VCPLoudnessAnalyzer *)loudnessAnalyzer processAudioSamples:a3 timestamp:&v20]) == 0))
      {
        songDetector = self->_songDetector;
        if (!songDetector)
        {
          return 0;
        }

        v18 = *&a4->mRateScalar;
        v20 = *&a4->mSampleTime;
        v21 = v18;
        v19 = *&a4->mSMPTETime.mHours;
        v22 = *&a4->mSMPTETime.mSubframes;
        v23 = v19;
        result = [(VCPSongDetector *)songDetector processAudioSamples:a3 timestamp:&v20];
        if (!result)
        {
          return 0;
        }
      }
    }
  }

  return result;
}

- (int)finalizeAnalysisAtTime:(id *)a3
{
  voiceDetector = self->_voiceDetector;
  if (!voiceDetector || (result = [(VCPVoiceDetector *)voiceDetector finalizeAnalysisAtTime:a3]) == 0)
  {
    audioClassifier = self->_audioClassifier;
    if (!audioClassifier || (result = [(VCPAudioClassifier *)audioClassifier finalizeAnalysisAtTime:a3]) == 0)
    {
      loudnessAnalyzer = self->_loudnessAnalyzer;
      if (!loudnessAnalyzer || (result = [(VCPLoudnessAnalyzer *)loudnessAnalyzer finalizeAnalysisAtTime:a3]) == 0)
      {
        songDetector = self->_songDetector;
        if (!songDetector)
        {
          return 0;
        }

        result = [(VCPSongDetector *)songDetector finalizeAnalysisAtTime:a3];
        if (!result)
        {
          return 0;
        }
      }
    }
  }

  return result;
}

- (int)processSampleBuffer:(opaqueCMSampleBuffer *)a3
{
  FormatDescription = CMSampleBufferGetFormatDescription(a3);
  if (!CMAudioFormatDescriptionGetStreamBasicDescription(FormatDescription))
  {
    return -50;
  }

  NumSamples = CMSampleBufferGetNumSamples(a3);
  DataBuffer = CMSampleBufferGetDataBuffer(a3);
  dataPointerOut = 0;
  mData = self->_audioBufferList.mBuffers[0].mData;
  result = CMBlockBufferGetDataPointer(DataBuffer, 0, 0, 0, &dataPointerOut);
  if (!result)
  {
    if (NumSamples)
    {
      sampleBatchSize = self->_sampleBatchSize;
      bufferedSamples = self->_bufferedSamples;
      v12 = dataPointerOut;
      do
      {
        v13 = sampleBatchSize - bufferedSamples;
        if (NumSamples >= v13)
        {
          v14 = v13;
        }

        else
        {
          v14 = NumSamples;
        }

        memcpy(&mData[4 * bufferedSamples], v12, 4 * v14);
        bufferedSamples = self->_bufferedSamples + v14;
        self->_bufferedSamples = bufferedSamples;
        sampleBatchSize = self->_sampleBatchSize;
        if (bufferedSamples == sampleBatchSize)
        {
          v15 = *&self->_audioTimestamp.mRateScalar;
          v17[0] = *&self->_audioTimestamp.mSampleTime;
          v17[1] = v15;
          v16 = *&self->_audioTimestamp.mSMPTETime.mHours;
          v17[2] = *&self->_audioTimestamp.mSMPTETime.mSubframes;
          v17[3] = v16;
          result = [(VCPAudioAnalyzer *)self processAudioSamples:&self->_audioBufferList timestamp:v17];
          if (result)
          {
            return result;
          }

          bufferedSamples = 0;
          sampleBatchSize = self->_sampleBatchSize;
          self->_audioTimestamp.mSampleTime = self->_audioTimestamp.mSampleTime + sampleBatchSize;
          self->_bufferedSamples = 0;
          v12 = dataPointerOut;
        }

        v12 += 4 * v14;
        dataPointerOut = v12;
        NumSamples -= v14;
      }

      while (NumSamples);
    }

    return 0;
  }

  return result;
}

- (int)analyzeAsset:(id)a3 cancel:(id)a4 results:(id *)a5
{
  v55 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v44 = [MEMORY[0x1E695DF90] dictionary];
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = [v7 vcp_enabledTracksWithMediaType:*MEMORY[0x1E69875A0]];
  v9 = [obj countByEnumeratingWithState:&v49 objects:v54 count:16];
  if (v9)
  {
    v39 = v9;
    v40 = *v50;
    while (2)
    {
      for (i = 0; i != v39; ++i)
      {
        if (*v50 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v49 + 1) + 8 * i);
        memset(v48, 0, sizeof(v48));
        v47 = 0u;
        if (v10)
        {
          [v10 timeRange];
        }

        memset(&v46, 0, sizeof(v46));
        *range = v47;
        *&range[16] = v48[0];
        *&range[32] = v48[1];
        CMTimeRangeGetEnd(&v46, range);
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          v38 = v7;
          v11 = [v10 trackID];
          v12 = v47;
          v13 = DWORD2(v47);
          *&time.value = v47;
          time.epoch = *&v48[0];
          Seconds = CMTimeGetSeconds(&time);
          value = v46.value;
          timescale = v46.timescale;
          time = v46;
          v17 = CMTimeGetSeconds(&time);
          *range = 67110656;
          *&range[4] = v11;
          *&range[8] = 2048;
          *&range[10] = v12;
          *&range[18] = 1024;
          *&range[20] = v13;
          *&range[24] = 2048;
          *&range[26] = Seconds;
          *&range[34] = 2048;
          *&range[36] = value;
          *&range[44] = 1024;
          *&range[46] = timescale;
          *&range[50] = 2048;
          *&range[52] = v17;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[AudioAnalyzer] Analyzing Audio Track - ID: %d Start: %lld/%d (%0.3fs) End: %lld/%d (%0.3fs)", range, 0x3Cu);
          v7 = v38;
        }

        v18 = [objc_alloc(MEMORY[0x1E6987E78]) initWithAsset:v7 error:0];
        v19 = MEMORY[0x1E6987EA8];
        v20 = [(VCPAudioAnalyzer *)self audioFormatRequirements];
        v21 = [v19 assetReaderTrackOutputWithTrack:v10 outputSettings:v20];

        [v18 addOutput:v21];
        if (([v18 startReading] & 1) == 0)
        {
LABEL_44:
          v22 = 0;
LABEL_45:
          v23 = -19;
LABEL_36:

          if (v22)
          {
            CFRelease(v22);
          }

          goto LABEL_39;
        }

        v22 = [v21 copyNextSampleBuffer];
        if (!v22)
        {
          goto LABEL_45;
        }

        *range = *(v48 + 8);
        *&range[16] = *(&v48[1] + 1);
        v23 = [(VCPAudioAnalyzer *)self setupWithSample:v22 andTrackDuration:range];
        if (v23)
        {
          goto LABEL_36;
        }

        do
        {
          if (v8[2](v8))
          {
            v23 = -128;
            goto LABEL_36;
          }

          v24 = objc_autoreleasePoolPush();
          [(VCPAudioAnalyzer *)self processSampleBuffer:v22];
          objc_autoreleasePoolPop(v24);
          CFRelease(v22);
          v22 = [v21 copyNextSampleBuffer];
        }

        while (v22);
        if ([v18 status] != 2)
        {
          goto LABEL_44;
        }

        bufferedSamples = self->_bufferedSamples;
        if (bufferedSamples)
        {
          bzero(self->_audioBufferList.mBuffers[0].mData + 4 * bufferedSamples, 4 * (self->_sampleBatchSize - bufferedSamples));
          v26 = *&self->_audioTimestamp.mRateScalar;
          *range = *&self->_audioTimestamp.mSampleTime;
          *&range[16] = v26;
          v27 = *&self->_audioTimestamp.mSMPTETime.mHours;
          *&range[32] = *&self->_audioTimestamp.mSMPTETime.mSubframes;
          *&range[48] = v27;
          v23 = [(VCPAudioAnalyzer *)self processAudioSamples:&self->_audioBufferList timestamp:range];
          if (v23)
          {

            goto LABEL_43;
          }

          self->_bufferedSamples = 0;
        }

        if (v10)
        {
          [v10 timeRange];
        }

        else
        {
          memset(range, 0, 48);
        }

        v23 = [(VCPAudioAnalyzer *)self finalizeAnalysisAtTime:&range[24]];
        if (v23)
        {
          v22 = 0;
          goto LABEL_36;
        }

        voiceDetector = self->_voiceDetector;
        if (voiceDetector)
        {
          v29 = [(VCPVoiceDetector *)voiceDetector results];
          [v44 addEntriesFromDictionary:v29];
        }

        audioClassifier = self->_audioClassifier;
        if (audioClassifier)
        {
          v31 = [(VCPAudioClassifier *)audioClassifier results];
          [v44 addEntriesFromDictionary:v31];
        }

        loudnessAnalyzer = self->_loudnessAnalyzer;
        if (loudnessAnalyzer)
        {
          v33 = [(VCPLoudnessAnalyzer *)loudnessAnalyzer results];
          [v44 addEntriesFromDictionary:v33];
        }

        songDetector = self->_songDetector;
        if (songDetector)
        {
          v35 = [(VCPSongDetector *)songDetector results];
          [v44 addEntriesFromDictionary:v35];
        }
      }

      v39 = [obj countByEnumeratingWithState:&v49 objects:v54 count:16];
      if (v39)
      {
        continue;
      }

      break;
    }
  }

  v23 = 0;
LABEL_39:
  if (v23)
  {
    v36 = 0;
  }

  else
  {
    v36 = v44;
  }

  *a5 = v36;
LABEL_43:

  return v23;
}

- (int)analyzeSampleBuffer:(opaqueCMSampleBuffer *)a3
{
  if (!self->_initialized)
  {
    v9 = *MEMORY[0x1E6960C70];
    *&v10 = *(MEMORY[0x1E6960C70] + 16);
    result = [(VCPAudioAnalyzer *)self setupWithSample:a3 andTrackDuration:&v9];
    if (result)
    {
      return result;
    }

    self->_initialized = 1;
  }

  result = [(VCPAudioAnalyzer *)self processSampleBuffer:a3];
  if (!result)
  {
    bufferedSamples = self->_bufferedSamples;
    if (bufferedSamples)
    {
      bzero(self->_audioBufferList.mBuffers[0].mData + 4 * bufferedSamples, 4 * (self->_sampleBatchSize - bufferedSamples));
      v7 = *&self->_audioTimestamp.mRateScalar;
      v9 = *&self->_audioTimestamp.mSampleTime;
      v10 = v7;
      v8 = *&self->_audioTimestamp.mSMPTETime.mHours;
      v11 = *&self->_audioTimestamp.mSMPTETime.mSubframes;
      v12 = v8;
      result = [(VCPAudioAnalyzer *)self processAudioSamples:&self->_audioBufferList timestamp:&v9];
      if (!result)
      {
        self->_bufferedSamples = 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (id)voiceDetections
{
  voiceDetector = self->_voiceDetector;
  if (voiceDetector)
  {
    voiceDetector = [voiceDetector voiceDetections];
    v2 = vars8;
  }

  return voiceDetector;
}

@end