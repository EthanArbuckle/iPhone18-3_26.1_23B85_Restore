@interface JFXAVMediaVideoTrackReader
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)startTimeOfCurrentData;
- (BOOL)hasRemainingAvailableData;
- (BOOL)readAheadToTime:(id *)time;
- (id)createAssetReaderTrackOutput;
- (id)videoSampleForTime:(id *)time;
- (void)JFX_preloadData;
- (void)JFX_updateCurrentSampleDurationIfNeeded;
- (void)didUpdateReadingRange;
- (void)readAndDiscardRemainingAvailableData;
@end

@implementation JFXAVMediaVideoTrackReader

- (id)createAssetReaderTrackOutput
{
  v16[1] = *MEMORY[0x277D85DE8];
  assetTrack = [(JFXAVMediaDataReader *)self assetTrack];
  formatDescriptions = [assetTrack formatDescriptions];
  v5 = [formatDescriptions objectAtIndexedSubscript:0];

  MediaSubType = CMFormatDescriptionGetMediaSubType(v5);
  if (MediaSubType == 1752589105)
  {
    v7 = 1212493921;
  }

  else
  {
    v7 = MediaSubType;
  }

  v14 = 0;
  v8 = [objc_opt_class() trackOptionsForDepthCodecType:v7 error:&v14];
  if (v14)
  {
    v15 = *MEMORY[0x277CC4E30];
    v16[0] = &unk_28556D080;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];

    v8 = v9;
  }

  v10 = objc_alloc(MEMORY[0x277CE6430]);
  assetTrack2 = [(JFXAVMediaDataReader *)self assetTrack];
  v12 = [v10 initWithTrack:assetTrack2 outputSettings:v8];

  return v12;
}

- (void)didUpdateReadingRange
{
  [(JFXAVMediaVideoTrackReader *)self setCurrentSample:0];
  [(JFXAVMediaVideoTrackReader *)self setNextSample:0];

  [(JFXAVMediaVideoTrackReader *)self JFX_preloadData];
}

- (BOOL)readAheadToTime:(id *)time
{
  nextSample = [(JFXAVMediaVideoTrackReader *)self nextSample];
  if (nextSample)
  {
    nextSample4 = nextSample;
    v7 = MEMORY[0x277CC08F0];
    do
    {
      nextSample2 = [(JFXAVMediaVideoTrackReader *)self nextSample];
      v9 = nextSample2;
      if (nextSample2)
      {
        [nextSample2 presentationTimeStamp];
      }

      else
      {
        memset(&time2, 0, sizeof(time2));
      }

      v22 = *time;
      v10 = CMTimeCompare(&v22, &time2);

      if (v10 < 0)
      {
        break;
      }

      v11 = objc_autoreleasePoolPush();
      nextSample3 = [(JFXAVMediaVideoTrackReader *)self nextSample];
      [(JFXAVMediaVideoTrackReader *)self setCurrentSample:nextSample3];

      assetReaderTrackOutput = [(JFXAVMediaDataReader *)self assetReaderTrackOutput];
      copyNextSampleBuffer = [assetReaderTrackOutput copyNextSampleBuffer];

      if (copyNextSampleBuffer)
      {
        v15 = [JFXAVMediaVideoTrackReaderSample alloc];
        time2 = *v7;
        v16 = [(JFXAVMediaVideoTrackReaderSample *)v15 initWithSampleBuffer:copyNextSampleBuffer duration:&time2];
        [(JFXAVMediaVideoTrackReader *)self setNextSample:v16];

        CFRelease(copyNextSampleBuffer);
      }

      else
      {
        [(JFXAVMediaVideoTrackReader *)self setNextSample:0];
      }

      objc_autoreleasePoolPop(v11);
      nextSample4 = [(JFXAVMediaVideoTrackReader *)self nextSample];
    }

    while (nextSample4);
  }

  [(JFXAVMediaVideoTrackReader *)self JFX_updateCurrentSampleDurationIfNeeded];
  assetReader = [(JFXAVMediaDataReader *)self assetReader];
  status = [assetReader status];

  if (status == 3)
  {
    assetReader2 = [(JFXAVMediaDataReader *)self assetReader];
    error = [assetReader2 error];
    [(JFXAVMediaDataReader *)self didFailWithError:error];
  }

  return status != 3;
}

- (void)readAndDiscardRemainingAvailableData
{
  nextSample = [(JFXAVMediaVideoTrackReader *)self nextSample];

  if (nextSample)
  {
    do
    {
      v4 = objc_autoreleasePoolPush();
      assetReaderTrackOutput = [(JFXAVMediaDataReader *)self assetReaderTrackOutput];
      copyNextSampleBuffer = [assetReaderTrackOutput copyNextSampleBuffer];

      if (copyNextSampleBuffer)
      {
        v7 = [[JFXAVMediaVideoTrackReaderSample alloc] initWithSampleBuffer:copyNextSampleBuffer];
        [(JFXAVMediaVideoTrackReader *)self setNextSample:v7];

        CFRelease(copyNextSampleBuffer);
      }

      else
      {
        [(JFXAVMediaVideoTrackReader *)self setNextSample:0];
      }

      objc_autoreleasePoolPop(v4);
      nextSample2 = [(JFXAVMediaVideoTrackReader *)self nextSample];
    }

    while (nextSample2);
  }

  assetReader = [(JFXAVMediaDataReader *)self assetReader];
  status = [assetReader status];

  if (status == 3)
  {
    assetReader2 = [(JFXAVMediaDataReader *)self assetReader];
    error = [assetReader2 error];
    [(JFXAVMediaDataReader *)self didFailWithError:error];
  }
}

- (BOOL)hasRemainingAvailableData
{
  nextSample = [(JFXAVMediaVideoTrackReader *)self nextSample];
  v3 = nextSample != 0;

  return v3;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)startTimeOfCurrentData
{
  currentSample = [(JFXAVMediaVideoTrackReader *)self currentSample];

  if (currentSample)
  {
    currentSample2 = [(JFXAVMediaVideoTrackReader *)self currentSample];
    if (currentSample2)
    {
      v9 = currentSample2;
      [currentSample2 presentationTimeStamp];
      currentSample2 = v9;
    }

    else
    {
      retstr->var0 = 0;
      *&retstr->var1 = 0;
      retstr->var3 = 0;
    }
  }

  else
  {
    v8 = MEMORY[0x277CC08F0];
    *&retstr->var0 = *MEMORY[0x277CC08F0];
    retstr->var3 = *(v8 + 16);
  }

  return result;
}

- (void)JFX_preloadData
{
  v22 = *MEMORY[0x277D85DE8];
  assetReader = [(JFXAVMediaDataReader *)self assetReader];
  status = [assetReader status];

  if (status == 1)
  {
    assetReaderTrackOutput = [(JFXAVMediaDataReader *)self assetReaderTrackOutput];
    copyNextSampleBuffer = [assetReaderTrackOutput copyNextSampleBuffer];

    if (copyNextSampleBuffer)
    {
      v7 = [[JFXAVMediaVideoTrackReaderSample alloc] initWithSampleBuffer:copyNextSampleBuffer];
      [(JFXAVMediaVideoTrackReader *)self setCurrentSample:v7];

      CFRelease(copyNextSampleBuffer);
    }
  }

  currentSample = [(JFXAVMediaVideoTrackReader *)self currentSample];

  if (!currentSample)
  {
    v9 = JFXLog_DebugMediaDataReader();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [(JFXAVMediaDataReader *)self currentReadingRange];
      time = v20;
      Seconds = CMTimeGetSeconds(&time);
      LODWORD(time.value) = 138412546;
      *(&time.value + 4) = self;
      LOWORD(time.flags) = 2048;
      *(&time.flags + 2) = Seconds;
      _os_log_debug_impl(&dword_242A3B000, v9, OS_LOG_TYPE_DEBUG, "%@ could not preload metadata from time %f", &time, 0x16u);
    }
  }

  assetReader2 = [(JFXAVMediaDataReader *)self assetReader];
  status2 = [assetReader2 status];

  if (status2 == 1)
  {
    assetReaderTrackOutput2 = [(JFXAVMediaDataReader *)self assetReaderTrackOutput];
    copyNextSampleBuffer2 = [assetReaderTrackOutput2 copyNextSampleBuffer];

    if (copyNextSampleBuffer2)
    {
      v14 = [[JFXAVMediaVideoTrackReaderSample alloc] initWithSampleBuffer:copyNextSampleBuffer2];
      [(JFXAVMediaVideoTrackReader *)self setNextSample:v14];

      CFRelease(copyNextSampleBuffer2);
    }
  }

  [(JFXAVMediaVideoTrackReader *)self JFX_updateCurrentSampleDurationIfNeeded];
  assetReader3 = [(JFXAVMediaDataReader *)self assetReader];
  status3 = [assetReader3 status];

  if (status3 == 3)
  {
    assetReader4 = [(JFXAVMediaDataReader *)self assetReader];
    error = [assetReader4 error];
    [(JFXAVMediaDataReader *)self didFailWithError:error];
  }
}

- (void)JFX_updateCurrentSampleDurationIfNeeded
{
  currentSample = [(JFXAVMediaVideoTrackReader *)self currentSample];

  if (currentSample)
  {
    memset(&v20, 0, sizeof(v20));
    currentSample2 = [(JFXAVMediaVideoTrackReader *)self currentSample];
    v5 = currentSample2;
    if (currentSample2)
    {
      [currentSample2 duration];
    }

    else
    {
      memset(&v20, 0, sizeof(v20));
    }

    if ((v20.flags & 1) == 0 || (time1 = v20, time2 = **&MEMORY[0x277CC08F0], !CMTimeCompare(&time1, &time2)))
    {
      memset(&time1, 0, sizeof(time1));
      currentSample3 = [(JFXAVMediaVideoTrackReader *)self currentSample];
      CMSampleBufferGetDuration(&time1, [currentSample3 sampleBufferRef]);

      if ((time1.flags & 1) == 0)
      {
        nextSample = [(JFXAVMediaVideoTrackReader *)self nextSample];

        if (nextSample)
        {
          nextSample2 = [(JFXAVMediaVideoTrackReader *)self nextSample];
          v9 = nextSample2;
          if (nextSample2)
          {
            [nextSample2 presentationTimeStamp];
          }

          else
          {
            memset(&lhs, 0, sizeof(lhs));
          }

          currentSample4 = [(JFXAVMediaVideoTrackReader *)self currentSample];
          v11 = currentSample4;
          if (currentSample4)
          {
            [currentSample4 presentationTimeStamp];
          }

          else
          {
            memset(&v16, 0, sizeof(v16));
          }

          CMTimeSubtract(&time2, &lhs, &v16);
          time1 = time2;
        }
      }

      if (time1.flags)
      {
        v12 = [JFXAVMediaVideoTrackReaderSample alloc];
        currentSample5 = [(JFXAVMediaVideoTrackReader *)self currentSample];
        sampleBufferRef = [currentSample5 sampleBufferRef];
        time2 = time1;
        v15 = [(JFXAVMediaVideoTrackReaderSample *)v12 initWithSampleBuffer:sampleBufferRef duration:&time2];
        [(JFXAVMediaVideoTrackReader *)self setCurrentSample:v15];
      }
    }
  }
}

- (id)videoSampleForTime:(id *)time
{
  v6 = *time;
  if ([(JFXAVMediaDataReader *)self seekToTime:&v6])
  {
    currentSample = [(JFXAVMediaVideoTrackReader *)self currentSample];
  }

  else
  {
    currentSample = 0;
  }

  return currentSample;
}

@end