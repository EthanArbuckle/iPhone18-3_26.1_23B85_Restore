@interface JFXAVMediaMetaDataReader
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)startTimeOfCurrentData;
- (BOOL)hasRemainingAvailableData;
- (BOOL)readAheadToTime:(id *)time;
- (id)createAssetReaderTrackOutput;
- (id)metadataForTime:(id *)time;
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
  createAssetReaderTrackOutput = [(JFXAVMediaDataReader *)&v6 createAssetReaderTrackOutput];
  v4 = [MEMORY[0x277CE6420] assetReaderOutputMetadataAdaptorWithAssetReaderTrackOutput:createAssetReaderTrackOutput];
  [(JFXAVMediaMetaDataReader *)self setAssetReaderOutputMetadataAdaptor:v4];

  return createAssetReaderTrackOutput;
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

- (BOOL)readAheadToTime:(id *)time
{
  nextMetadataItem = [(JFXAVMediaMetaDataReader *)self nextMetadataItem];
  if (nextMetadataItem)
  {
    nextMetadataItem4 = nextMetadataItem;
    do
    {
      nextMetadataItem2 = [(JFXAVMediaMetaDataReader *)self nextMetadataItem];
      v8 = nextMetadataItem2;
      if (nextMetadataItem2)
      {
        [nextMetadataItem2 time];
      }

      else
      {
        memset(&time2, 0, sizeof(time2));
      }

      v22 = *time;
      v9 = CMTimeCompare(&v22, &time2);

      if (v9 < 0)
      {
        break;
      }

      v10 = objc_autoreleasePoolPush();
      nextMetadataItem3 = [(JFXAVMediaMetaDataReader *)self nextMetadataItem];
      [(JFXAVMediaMetaDataReader *)self setCurrentMetadataItem:nextMetadataItem3];

      nextTimedMetadataGroup = [(AVAssetReaderOutputMetadataAdaptor *)self->_assetReaderOutputMetadataAdaptor nextTimedMetadataGroup];
      v13 = nextTimedMetadataGroup;
      if (nextTimedMetadataGroup)
      {
        items = [nextTimedMetadataGroup items];
        firstObject = [items firstObject];
        [(JFXAVMediaMetaDataReader *)self setNextMetadataItem:firstObject];
      }

      else
      {
        [(JFXAVMediaMetaDataReader *)self setNextMetadataItem:0];
      }

      objc_autoreleasePoolPop(v10);
      nextMetadataItem4 = [(JFXAVMediaMetaDataReader *)self nextMetadataItem];
    }

    while (nextMetadataItem4);
  }

  assetReader = [(JFXAVMediaDataReader *)self assetReader];
  status = [assetReader status];

  if (status == 3)
  {
    assetReader2 = [(JFXAVMediaDataReader *)self assetReader];
    error = [assetReader2 error];
    [(JFXAVMediaDataReader *)self didFailWithError:error];

    goto LABEL_15;
  }

  nextMetadataItem5 = [(JFXAVMediaMetaDataReader *)self nextMetadataItem];

  if (nextMetadataItem5)
  {
    assetReader2 = [(JFXAVMediaMetaDataReader *)self nextMetadataItem];
    [assetReader2 loadValuesAsynchronouslyForKeys:&unk_28556D9B0 completionHandler:0];
LABEL_15:
  }

  return status != 3;
}

- (void)readAndDiscardRemainingAvailableData
{
  nextMetadataItem = [(JFXAVMediaMetaDataReader *)self nextMetadataItem];

  if (nextMetadataItem)
  {
    do
    {
      v4 = objc_autoreleasePoolPush();
      nextTimedMetadataGroup = [(AVAssetReaderOutputMetadataAdaptor *)self->_assetReaderOutputMetadataAdaptor nextTimedMetadataGroup];
      v6 = nextTimedMetadataGroup;
      if (nextTimedMetadataGroup)
      {
        items = [nextTimedMetadataGroup items];
        firstObject = [items firstObject];
        [(JFXAVMediaMetaDataReader *)self setNextMetadataItem:firstObject];
      }

      else
      {
        [(JFXAVMediaMetaDataReader *)self setNextMetadataItem:0];
      }

      objc_autoreleasePoolPop(v4);
      nextMetadataItem2 = [(JFXAVMediaMetaDataReader *)self nextMetadataItem];
    }

    while (nextMetadataItem2);
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
  nextMetadataItem = [(JFXAVMediaMetaDataReader *)self nextMetadataItem];
  v3 = nextMetadataItem != 0;

  return v3;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)startTimeOfCurrentData
{
  currentMetadataItem = [(JFXAVMediaMetaDataReader *)self currentMetadataItem];

  if (currentMetadataItem)
  {
    currentMetadataItem2 = [(JFXAVMediaMetaDataReader *)self currentMetadataItem];
    if (currentMetadataItem2)
    {
      v9 = currentMetadataItem2;
      [currentMetadataItem2 time];
      currentMetadataItem2 = v9;
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

- (id)metadataForTime:(id *)time
{
  v6 = *time;
  if ([(JFXAVMediaDataReader *)self seekToTime:&v6])
  {
    currentMetadataItem = [(JFXAVMediaMetaDataReader *)self currentMetadataItem];
  }

  else
  {
    currentMetadataItem = 0;
  }

  return currentMetadataItem;
}

- (void)JFX_preloadData
{
  v25 = *MEMORY[0x277D85DE8];
  assetReader = [(JFXAVMediaDataReader *)self assetReader];
  status = [assetReader status];

  if (status == 1)
  {
    assetReaderOutputMetadataAdaptor = [(JFXAVMediaMetaDataReader *)self assetReaderOutputMetadataAdaptor];
    nextTimedMetadataGroup = [assetReaderOutputMetadataAdaptor nextTimedMetadataGroup];

    items = [nextTimedMetadataGroup items];
    firstObject = [items firstObject];
    [(JFXAVMediaMetaDataReader *)self setCurrentMetadataItem:firstObject];
  }

  currentMetadataItem = [(JFXAVMediaMetaDataReader *)self currentMetadataItem];

  if (!currentMetadataItem)
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

  assetReader2 = [(JFXAVMediaDataReader *)self assetReader];
  status2 = [assetReader2 status];

  if (status2 == 1)
  {
    assetReaderOutputMetadataAdaptor2 = [(JFXAVMediaMetaDataReader *)self assetReaderOutputMetadataAdaptor];
    nextTimedMetadataGroup2 = [assetReaderOutputMetadataAdaptor2 nextTimedMetadataGroup];

    items2 = [nextTimedMetadataGroup2 items];
    firstObject2 = [items2 firstObject];
    [(JFXAVMediaMetaDataReader *)self setNextMetadataItem:firstObject2];

    nextMetadataItem = [(JFXAVMediaMetaDataReader *)self nextMetadataItem];
    [nextMetadataItem time];
  }

  assetReader3 = [(JFXAVMediaDataReader *)self assetReader];
  status3 = [assetReader3 status];

  if (status3 == 3)
  {
    assetReader4 = [(JFXAVMediaDataReader *)self assetReader];
    error = [assetReader4 error];
    [(JFXAVMediaDataReader *)self didFailWithError:error];
  }
}

@end