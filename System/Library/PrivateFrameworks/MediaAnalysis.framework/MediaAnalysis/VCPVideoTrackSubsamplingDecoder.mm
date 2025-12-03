@interface VCPVideoTrackSubsamplingDecoder
- (VCPVideoTrackSubsamplingDecoder)initWithTrack:(id)track timerange:(id *)timerange atInterval:(id *)interval;
- (int64_t)status;
- (opaqueCMSampleBuffer)copyNextSampleBuffer;
- (void)dealloc;
@end

@implementation VCPVideoTrackSubsamplingDecoder

- (VCPVideoTrackSubsamplingDecoder)initWithTrack:(id)track timerange:(id *)timerange atInterval:(id *)interval
{
  v44 = *MEMORY[0x1E69E9840];
  trackCopy = track;
  v41.receiver = self;
  v41.super_class = VCPVideoTrackSubsamplingDecoder;
  v9 = [(VCPVideoTrackDecoder *)&v41 initWithTrack:trackCopy];
  v10 = v9;
  if (v9)
  {
    v11 = MEMORY[0x1E6987E78];
    asset = [(AVAssetTrack *)v9->super._track asset];
    v13 = [v11 assetReaderWithAsset:asset error:0];
    assetReader = v10->_assetReader;
    v10->_assetReader = v13;

    v15 = v10->_assetReader;
    if (v15)
    {
      v16 = MEMORY[0x1E6987EA8];
      track = v10->super._track;
      settings = [(VCPVideoTrackDecoder *)v10 settings];
      v19 = [v16 assetReaderTrackOutputWithTrack:track outputSettings:settings];
      trackOutput = v10->_trackOutput;
      v10->_trackOutput = v19;

      v21 = v10->_trackOutput;
      if (v21 && ([(AVAssetReaderTrackOutput *)v21 setAppliesPreferredTrackTransform:1], [(AVAssetReader *)v10->_assetReader addOutput:v10->_trackOutput], v22 = v10->_assetReader, v23 = *&timerange->var0.var3, *&time1.start.value = *&timerange->var0.var0, *&time1.start.epoch = v23, *&time1.duration.timescale = *&timerange->var1.var1, [(AVAssetReader *)v22 setTimeRange:&time1], [(AVAssetReader *)v10->_assetReader startReading]))
      {
        var3 = interval->var3;
        *&v10->_sampleDuration.value = *&interval->var0;
        v10->_sampleDuration.epoch = var3;
        v10->_nextSample = [(AVAssetReaderTrackOutput *)v10->_trackOutput copyNextSampleBuffer];
        v25 = v10->_assetReader;
        if (v25)
        {
          [(AVAssetReader *)v25 timeRange];
        }

        else
        {
          memset(&time1, 0, sizeof(time1));
        }

        CMTimeMake(&v38, 0, v10->_sampleDuration.timescale);
        lhs = time1.start;
        rhs = v38;
        CMTimeAdd(&v39, &lhs, &rhs);
        p_nextSampleTime = &v10->_nextSampleTime;
        epoch = v39.epoch;
        *&v10->_nextSampleTime.value = *&v39.value;
        v10->_nextSampleTime.epoch = epoch;
        nextSample = v10->_nextSample;
        if (nextSample)
        {
          memset(&rhs, 0, sizeof(rhs));
          CMSampleBufferGetPresentationTimeStamp(&rhs, nextSample);
          time1.start = rhs;
          v30 = *&p_nextSampleTime->value;
          lhs.epoch = v10->_nextSampleTime.epoch;
          *&lhs.value = v30;
          if (CMTimeCompare(&time1.start, &lhs) >= 1)
          {
            if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
            {
              v31 = *&p_nextSampleTime->value;
              time1.start.epoch = v10->_nextSampleTime.epoch;
              *&time1.start.value = v31;
              Seconds = CMTimeGetSeconds(&time1.start);
              time1.start = rhs;
              v33 = CMTimeGetSeconds(&time1.start);
              LODWORD(lhs.value) = 134218240;
              *(&lhs.value + 4) = Seconds;
              LOWORD(lhs.flags) = 2048;
              *(&lhs.flags + 2) = v33;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Replace initial nextSampleTime %.4f with %.4f", &lhs, 0x16u);
            }

            v34 = *&rhs.value;
            v10->_nextSampleTime.epoch = rhs.epoch;
            *&p_nextSampleTime->value = v34;
          }
        }

        v35 = v10->_assetReader;
        if (v35)
        {
          [(AVAssetReader *)v35 timeRange];
        }

        else
        {
          memset(&time1, 0, sizeof(time1));
        }

        CMTimeRangeGetEnd(&lhs, &time1);
        v36 = lhs.epoch;
        *&v10->_decodeEnd.value = *&lhs.value;
        v10->_decodeEnd.epoch = v36;
        v15 = v10;
      }

      else
      {
        v15 = 0;
      }
    }

    v26 = v15;
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

- (void)dealloc
{
  assetReader = self->_assetReader;
  if (assetReader)
  {
    [(AVAssetReader *)assetReader cancelReading];
  }

  currentSample = self->_currentSample;
  if (currentSample)
  {
    CFRelease(currentSample);
  }

  nextSample = self->_nextSample;
  if (nextSample)
  {
    CFRelease(nextSample);
  }

  v6.receiver = self;
  v6.super_class = VCPVideoTrackSubsamplingDecoder;
  [(VCPVideoTrackSubsamplingDecoder *)&v6 dealloc];
}

- (int64_t)status
{
  time1 = self->_nextSampleTime;
  decodeEnd = self->_decodeEnd;
  if (CMTimeCompare(&time1, &decodeEnd) < 0)
  {
    return [(AVAssetReader *)self->_assetReader status];
  }

  else
  {
    return 2;
  }
}

- (opaqueCMSampleBuffer)copyNextSampleBuffer
{
  v24 = *MEMORY[0x1E69E9840];
  status = [(AVAssetReader *)self->_assetReader status];
  p_nextSampleTime = &self->_nextSampleTime;
  time1.duration = self->_nextSampleTime;
  time2 = self->_decodeEnd;
  v5 = CMTimeCompare(&time1.duration, &time2);
  result = 0;
  if (v5 < 0 && (status - 3) >= 0xFFFFFFFFFFFFFFFELL)
  {
    nextSample = self->_nextSample;
    if (nextSample)
    {
      while (1)
      {
        memset(&lhs, 0, sizeof(lhs));
        CMSampleBufferGetPresentationTimeStamp(&lhs, nextSample);
        *&time1.duration.value = *&p_nextSampleTime->value;
        time1.duration.epoch = self->_nextSampleTime.epoch;
        time2 = lhs;
        if (CMTimeCompare(&time1.duration, &time2) < 0)
        {
          break;
        }

        currentSample = self->_currentSample;
        if (currentSample)
        {
          CFRelease(currentSample);
        }

        self->_currentSample = self->_nextSample;
        nextSample = [(AVAssetReaderTrackOutput *)self->_trackOutput copyNextSampleBuffer];
        self->_nextSample = nextSample;
        if (!nextSample)
        {
          if ([(AVAssetReader *)self->_assetReader status]== AVAssetReaderStatusFailed)
          {
            return 0;
          }

          nextSample = self->_nextSample;
          if (!nextSample)
          {
            goto LABEL_10;
          }
        }
      }

      v17 = self->_nextSample;
      p_sampleDuration = &self->_sampleDuration;
      sampleDuration = self->_sampleDuration;
      if (v17)
      {
        memset(&lhs, 0, sizeof(lhs));
        CMSampleBufferGetPresentationTimeStamp(&lhs, v17);
        while (1)
        {
          *&time1.duration.value = *&p_nextSampleTime->value;
          time1.duration.epoch = self->_nextSampleTime.epoch;
          time2 = sampleDuration;
          CMTimeAdd(&rhs, &time1.duration, &time2);
          time1.duration = rhs;
          time2 = lhs;
          if ((CMTimeCompare(&time1.duration, &time2) & 0x80000000) == 0)
          {
            break;
          }

          time1.duration = sampleDuration;
          *&time2.value = *&p_sampleDuration->value;
          time2.epoch = self->_sampleDuration.epoch;
          CMTimeAdd(&sampleDuration, &time1.duration, &time2);
        }
      }
    }

    else
    {
LABEL_10:
      p_sampleDuration = &self->_sampleDuration;
      sampleDuration = self->_sampleDuration;
    }

    *&time1.duration.value = *&self->_decodeEnd.value;
    time1.duration.epoch = self->_decodeEnd.epoch;
    *&time2.value = *&p_nextSampleTime->value;
    time2.epoch = self->_nextSampleTime.epoch;
    CMTimeSubtract(&lhs, &time1.duration, &time2);
    time1.duration = lhs;
    time2 = sampleDuration;
    v10 = CMTimeCompare(&time1.duration, &time2);
    p_lhs = &sampleDuration;
    if (v10 < 0)
    {
      p_lhs = &lhs;
    }

    v12 = *&p_lhs->value;
    sampleDuration.epoch = p_lhs->epoch;
    *&sampleDuration.value = v12;
    *&time1.duration.value = v12;
    time1.duration.epoch = sampleDuration.epoch;
    time2 = *p_sampleDuration;
    if (CMTimeCompare(&time1.duration, &time2) > 0)
    {
      memset(&time2, 0, sizeof(time2));
      CMSampleBufferGetPresentationTimeStamp(&time2, self->_currentSample);
      if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        value = time2.value;
        timescale = time2.timescale;
        time1.duration = sampleDuration;
        Seconds = CMTimeGetSeconds(&time1.duration);
        *&time1.duration.value = *&p_sampleDuration->value;
        time1.duration.epoch = p_sampleDuration->epoch;
        v16 = CMTimeGetSeconds(&time1.duration);
        LODWORD(time1.duration.value) = 134218496;
        *(&time1.duration.value + 4) = value;
        LOWORD(time1.duration.flags) = 1024;
        *(&time1.duration.flags + 2) = timescale;
        WORD1(time1.duration.epoch) = 2048;
        *(&time1.duration.epoch + 4) = Seconds / v16;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MediaAnalysis] Sample at %lld/%d is being extended %0.1fx", &time1, 0x1Cu);
      }
    }

    *&time1.decodeTimeStamp.value = *&p_nextSampleTime->value;
    time1.decodeTimeStamp.epoch = self->_nextSampleTime.epoch;
    time1.presentationTimeStamp = time1.decodeTimeStamp;
    time1.duration = sampleDuration;
    sampleBufferOut = 0;
    if (CMSampleBufferCreateCopyWithNewTiming(0, self->_currentSample, 1, &time1, &sampleBufferOut))
    {
      result = sampleBufferOut;
      if (sampleBufferOut)
      {
        CFRelease(sampleBufferOut);
        return 0;
      }
    }

    else
    {
      *&lhs.value = *&p_nextSampleTime->value;
      lhs.epoch = self->_nextSampleTime.epoch;
      rhs = sampleDuration;
      CMTimeAdd(&time2, &lhs, &rhs);
      *&p_nextSampleTime->value = *&time2.value;
      self->_nextSampleTime.epoch = time2.epoch;
      return sampleBufferOut;
    }
  }

  return result;
}

@end