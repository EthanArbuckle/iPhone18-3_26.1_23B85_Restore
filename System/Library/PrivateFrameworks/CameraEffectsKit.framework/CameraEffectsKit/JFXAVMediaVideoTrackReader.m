@interface JFXAVMediaVideoTrackReader
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)startTimeOfCurrentData;
- (BOOL)hasRemainingAvailableData;
- (BOOL)readAheadToTime:(id *)a3;
- (id)createAssetReaderTrackOutput;
- (id)videoSampleForTime:(id *)a3;
- (void)JFX_preloadData;
- (void)JFX_updateCurrentSampleDurationIfNeeded;
- (void)didUpdateReadingRange;
- (void)readAndDiscardRemainingAvailableData;
@end

@implementation JFXAVMediaVideoTrackReader

- (id)createAssetReaderTrackOutput
{
  v16[1] = *MEMORY[0x277D85DE8];
  v3 = [(JFXAVMediaDataReader *)self assetTrack];
  v4 = [v3 formatDescriptions];
  v5 = [v4 objectAtIndexedSubscript:0];

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
  v11 = [(JFXAVMediaDataReader *)self assetTrack];
  v12 = [v10 initWithTrack:v11 outputSettings:v8];

  return v12;
}

- (void)didUpdateReadingRange
{
  [(JFXAVMediaVideoTrackReader *)self setCurrentSample:0];
  [(JFXAVMediaVideoTrackReader *)self setNextSample:0];

  [(JFXAVMediaVideoTrackReader *)self JFX_preloadData];
}

- (BOOL)readAheadToTime:(id *)a3
{
  v5 = [(JFXAVMediaVideoTrackReader *)self nextSample];
  if (v5)
  {
    v6 = v5;
    v7 = MEMORY[0x277CC08F0];
    do
    {
      v8 = [(JFXAVMediaVideoTrackReader *)self nextSample];
      v9 = v8;
      if (v8)
      {
        [v8 presentationTimeStamp];
      }

      else
      {
        memset(&time2, 0, sizeof(time2));
      }

      v22 = *a3;
      v10 = CMTimeCompare(&v22, &time2);

      if (v10 < 0)
      {
        break;
      }

      v11 = objc_autoreleasePoolPush();
      v12 = [(JFXAVMediaVideoTrackReader *)self nextSample];
      [(JFXAVMediaVideoTrackReader *)self setCurrentSample:v12];

      v13 = [(JFXAVMediaDataReader *)self assetReaderTrackOutput];
      v14 = [v13 copyNextSampleBuffer];

      if (v14)
      {
        v15 = [JFXAVMediaVideoTrackReaderSample alloc];
        time2 = *v7;
        v16 = [(JFXAVMediaVideoTrackReaderSample *)v15 initWithSampleBuffer:v14 duration:&time2];
        [(JFXAVMediaVideoTrackReader *)self setNextSample:v16];

        CFRelease(v14);
      }

      else
      {
        [(JFXAVMediaVideoTrackReader *)self setNextSample:0];
      }

      objc_autoreleasePoolPop(v11);
      v6 = [(JFXAVMediaVideoTrackReader *)self nextSample];
    }

    while (v6);
  }

  [(JFXAVMediaVideoTrackReader *)self JFX_updateCurrentSampleDurationIfNeeded];
  v17 = [(JFXAVMediaDataReader *)self assetReader];
  v18 = [v17 status];

  if (v18 == 3)
  {
    v19 = [(JFXAVMediaDataReader *)self assetReader];
    v20 = [v19 error];
    [(JFXAVMediaDataReader *)self didFailWithError:v20];
  }

  return v18 != 3;
}

- (void)readAndDiscardRemainingAvailableData
{
  v3 = [(JFXAVMediaVideoTrackReader *)self nextSample];

  if (v3)
  {
    do
    {
      v4 = objc_autoreleasePoolPush();
      v5 = [(JFXAVMediaDataReader *)self assetReaderTrackOutput];
      v6 = [v5 copyNextSampleBuffer];

      if (v6)
      {
        v7 = [[JFXAVMediaVideoTrackReaderSample alloc] initWithSampleBuffer:v6];
        [(JFXAVMediaVideoTrackReader *)self setNextSample:v7];

        CFRelease(v6);
      }

      else
      {
        [(JFXAVMediaVideoTrackReader *)self setNextSample:0];
      }

      objc_autoreleasePoolPop(v4);
      v8 = [(JFXAVMediaVideoTrackReader *)self nextSample];
    }

    while (v8);
  }

  v9 = [(JFXAVMediaDataReader *)self assetReader];
  v10 = [v9 status];

  if (v10 == 3)
  {
    v12 = [(JFXAVMediaDataReader *)self assetReader];
    v11 = [v12 error];
    [(JFXAVMediaDataReader *)self didFailWithError:v11];
  }
}

- (BOOL)hasRemainingAvailableData
{
  v2 = [(JFXAVMediaVideoTrackReader *)self nextSample];
  v3 = v2 != 0;

  return v3;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)startTimeOfCurrentData
{
  v5 = [(JFXAVMediaVideoTrackReader *)self currentSample];

  if (v5)
  {
    v7 = [(JFXAVMediaVideoTrackReader *)self currentSample];
    if (v7)
    {
      v9 = v7;
      [v7 presentationTimeStamp];
      v7 = v9;
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
  v3 = [(JFXAVMediaDataReader *)self assetReader];
  v4 = [v3 status];

  if (v4 == 1)
  {
    v5 = [(JFXAVMediaDataReader *)self assetReaderTrackOutput];
    v6 = [v5 copyNextSampleBuffer];

    if (v6)
    {
      v7 = [[JFXAVMediaVideoTrackReaderSample alloc] initWithSampleBuffer:v6];
      [(JFXAVMediaVideoTrackReader *)self setCurrentSample:v7];

      CFRelease(v6);
    }
  }

  v8 = [(JFXAVMediaVideoTrackReader *)self currentSample];

  if (!v8)
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

  v10 = [(JFXAVMediaDataReader *)self assetReader];
  v11 = [v10 status];

  if (v11 == 1)
  {
    v12 = [(JFXAVMediaDataReader *)self assetReaderTrackOutput];
    v13 = [v12 copyNextSampleBuffer];

    if (v13)
    {
      v14 = [[JFXAVMediaVideoTrackReaderSample alloc] initWithSampleBuffer:v13];
      [(JFXAVMediaVideoTrackReader *)self setNextSample:v14];

      CFRelease(v13);
    }
  }

  [(JFXAVMediaVideoTrackReader *)self JFX_updateCurrentSampleDurationIfNeeded];
  v15 = [(JFXAVMediaDataReader *)self assetReader];
  v16 = [v15 status];

  if (v16 == 3)
  {
    v17 = [(JFXAVMediaDataReader *)self assetReader];
    v18 = [v17 error];
    [(JFXAVMediaDataReader *)self didFailWithError:v18];
  }
}

- (void)JFX_updateCurrentSampleDurationIfNeeded
{
  v3 = [(JFXAVMediaVideoTrackReader *)self currentSample];

  if (v3)
  {
    memset(&v20, 0, sizeof(v20));
    v4 = [(JFXAVMediaVideoTrackReader *)self currentSample];
    v5 = v4;
    if (v4)
    {
      [v4 duration];
    }

    else
    {
      memset(&v20, 0, sizeof(v20));
    }

    if ((v20.flags & 1) == 0 || (time1 = v20, time2 = **&MEMORY[0x277CC08F0], !CMTimeCompare(&time1, &time2)))
    {
      memset(&time1, 0, sizeof(time1));
      v6 = [(JFXAVMediaVideoTrackReader *)self currentSample];
      CMSampleBufferGetDuration(&time1, [v6 sampleBufferRef]);

      if ((time1.flags & 1) == 0)
      {
        v7 = [(JFXAVMediaVideoTrackReader *)self nextSample];

        if (v7)
        {
          v8 = [(JFXAVMediaVideoTrackReader *)self nextSample];
          v9 = v8;
          if (v8)
          {
            [v8 presentationTimeStamp];
          }

          else
          {
            memset(&lhs, 0, sizeof(lhs));
          }

          v10 = [(JFXAVMediaVideoTrackReader *)self currentSample];
          v11 = v10;
          if (v10)
          {
            [v10 presentationTimeStamp];
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
        v13 = [(JFXAVMediaVideoTrackReader *)self currentSample];
        v14 = [v13 sampleBufferRef];
        time2 = time1;
        v15 = [(JFXAVMediaVideoTrackReaderSample *)v12 initWithSampleBuffer:v14 duration:&time2];
        [(JFXAVMediaVideoTrackReader *)self setCurrentSample:v15];
      }
    }
  }
}

- (id)videoSampleForTime:(id *)a3
{
  v6 = *a3;
  if ([(JFXAVMediaDataReader *)self seekToTime:&v6])
  {
    v4 = [(JFXAVMediaVideoTrackReader *)self currentSample];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end