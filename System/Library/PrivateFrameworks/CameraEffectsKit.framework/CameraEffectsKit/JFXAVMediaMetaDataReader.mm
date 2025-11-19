@interface JFXAVMediaMetaDataReader
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)startTimeOfCurrentData;
- (BOOL)hasRemainingAvailableData;
- (BOOL)readAheadToTime:(id *)a3;
- (id)createAssetReaderTrackOutput;
- (id)metadataForTime:(id *)a3;
- (void)JFX_preloadData;
- (void)cancelReadingForReaderReset;
- (void)didUpdateReadingRange;
- (void)readAndDiscardRemainingAvailableData;
@end

@implementation JFXAVMediaMetaDataReader

- (id)createAssetReaderTrackOutput
{
  v6.receiver = self;
  v6.super_class = JFXAVMediaMetaDataReader;
  v3 = [(JFXAVMediaDataReader *)&v6 createAssetReaderTrackOutput];
  v4 = [MEMORY[0x277CE6420] assetReaderOutputMetadataAdaptorWithAssetReaderTrackOutput:v3];
  [(JFXAVMediaMetaDataReader *)self setAssetReaderOutputMetadataAdaptor:v4];

  return v3;
}

- (void)cancelReadingForReaderReset
{
  [(JFXAVMediaMetaDataReader *)self setAssetReaderOutputMetadataAdaptor:0];
  v3.receiver = self;
  v3.super_class = JFXAVMediaMetaDataReader;
  [(JFXAVMediaDataReader *)&v3 cancelReadingForReaderReset];
}

- (void)didUpdateReadingRange
{
  [(JFXAVMediaMetaDataReader *)self setCurrentMetadataItem:0];
  [(JFXAVMediaMetaDataReader *)self setNextMetadataItem:0];

  [(JFXAVMediaMetaDataReader *)self JFX_preloadData];
}

- (BOOL)readAheadToTime:(id *)a3
{
  v5 = [(JFXAVMediaMetaDataReader *)self nextMetadataItem];
  if (v5)
  {
    v6 = v5;
    do
    {
      v7 = [(JFXAVMediaMetaDataReader *)self nextMetadataItem];
      v8 = v7;
      if (v7)
      {
        [v7 time];
      }

      else
      {
        memset(&time2, 0, sizeof(time2));
      }

      v22 = *a3;
      v9 = CMTimeCompare(&v22, &time2);

      if (v9 < 0)
      {
        break;
      }

      v10 = objc_autoreleasePoolPush();
      v11 = [(JFXAVMediaMetaDataReader *)self nextMetadataItem];
      [(JFXAVMediaMetaDataReader *)self setCurrentMetadataItem:v11];

      v12 = [(AVAssetReaderOutputMetadataAdaptor *)self->_assetReaderOutputMetadataAdaptor nextTimedMetadataGroup];
      v13 = v12;
      if (v12)
      {
        v14 = [v12 items];
        v15 = [v14 firstObject];
        [(JFXAVMediaMetaDataReader *)self setNextMetadataItem:v15];
      }

      else
      {
        [(JFXAVMediaMetaDataReader *)self setNextMetadataItem:0];
      }

      objc_autoreleasePoolPop(v10);
      v6 = [(JFXAVMediaMetaDataReader *)self nextMetadataItem];
    }

    while (v6);
  }

  v16 = [(JFXAVMediaDataReader *)self assetReader];
  v17 = [v16 status];

  if (v17 == 3)
  {
    v19 = [(JFXAVMediaDataReader *)self assetReader];
    v20 = [v19 error];
    [(JFXAVMediaDataReader *)self didFailWithError:v20];

    goto LABEL_15;
  }

  v18 = [(JFXAVMediaMetaDataReader *)self nextMetadataItem];

  if (v18)
  {
    v19 = [(JFXAVMediaMetaDataReader *)self nextMetadataItem];
    [v19 loadValuesAsynchronouslyForKeys:&unk_28556D9B0 completionHandler:0];
LABEL_15:
  }

  return v17 != 3;
}

- (void)readAndDiscardRemainingAvailableData
{
  v3 = [(JFXAVMediaMetaDataReader *)self nextMetadataItem];

  if (v3)
  {
    do
    {
      v4 = objc_autoreleasePoolPush();
      v5 = [(AVAssetReaderOutputMetadataAdaptor *)self->_assetReaderOutputMetadataAdaptor nextTimedMetadataGroup];
      v6 = v5;
      if (v5)
      {
        v7 = [v5 items];
        v8 = [v7 firstObject];
        [(JFXAVMediaMetaDataReader *)self setNextMetadataItem:v8];
      }

      else
      {
        [(JFXAVMediaMetaDataReader *)self setNextMetadataItem:0];
      }

      objc_autoreleasePoolPop(v4);
      v9 = [(JFXAVMediaMetaDataReader *)self nextMetadataItem];
    }

    while (v9);
  }

  v10 = [(JFXAVMediaDataReader *)self assetReader];
  v11 = [v10 status];

  if (v11 == 3)
  {
    v13 = [(JFXAVMediaDataReader *)self assetReader];
    v12 = [v13 error];
    [(JFXAVMediaDataReader *)self didFailWithError:v12];
  }
}

- (BOOL)hasRemainingAvailableData
{
  v2 = [(JFXAVMediaMetaDataReader *)self nextMetadataItem];
  v3 = v2 != 0;

  return v3;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)startTimeOfCurrentData
{
  v5 = [(JFXAVMediaMetaDataReader *)self currentMetadataItem];

  if (v5)
  {
    v7 = [(JFXAVMediaMetaDataReader *)self currentMetadataItem];
    if (v7)
    {
      v9 = v7;
      [v7 time];
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

- (id)metadataForTime:(id *)a3
{
  v6 = *a3;
  if ([(JFXAVMediaDataReader *)self seekToTime:&v6])
  {
    v4 = [(JFXAVMediaMetaDataReader *)self currentMetadataItem];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)JFX_preloadData
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = [(JFXAVMediaDataReader *)self assetReader];
  v4 = [v3 status];

  if (v4 == 1)
  {
    v5 = [(JFXAVMediaMetaDataReader *)self assetReaderOutputMetadataAdaptor];
    v6 = [v5 nextTimedMetadataGroup];

    v7 = [v6 items];
    v8 = [v7 firstObject];
    [(JFXAVMediaMetaDataReader *)self setCurrentMetadataItem:v8];
  }

  v9 = [(JFXAVMediaMetaDataReader *)self currentMetadataItem];

  if (!v9)
  {
    v10 = JFXLog_DebugMediaDataReader();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [(JFXAVMediaDataReader *)self currentReadingRange];
      time = v23;
      Seconds = CMTimeGetSeconds(&time);
      LODWORD(time.value) = 138412546;
      *(&time.value + 4) = self;
      LOWORD(time.flags) = 2048;
      *(&time.flags + 2) = Seconds;
      _os_log_debug_impl(&dword_242A3B000, v10, OS_LOG_TYPE_DEBUG, "%@ could not preload metadata from time %f", &time, 0x16u);
    }
  }

  v11 = [(JFXAVMediaDataReader *)self assetReader];
  v12 = [v11 status];

  if (v12 == 1)
  {
    v13 = [(JFXAVMediaMetaDataReader *)self assetReaderOutputMetadataAdaptor];
    v14 = [v13 nextTimedMetadataGroup];

    v15 = [v14 items];
    v16 = [v15 firstObject];
    [(JFXAVMediaMetaDataReader *)self setNextMetadataItem:v16];

    v17 = [(JFXAVMediaMetaDataReader *)self nextMetadataItem];
    [v17 time];
  }

  v18 = [(JFXAVMediaDataReader *)self assetReader];
  v19 = [v18 status];

  if (v19 == 3)
  {
    v20 = [(JFXAVMediaDataReader *)self assetReader];
    v21 = [v20 error];
    [(JFXAVMediaDataReader *)self didFailWithError:v21];
  }
}

@end