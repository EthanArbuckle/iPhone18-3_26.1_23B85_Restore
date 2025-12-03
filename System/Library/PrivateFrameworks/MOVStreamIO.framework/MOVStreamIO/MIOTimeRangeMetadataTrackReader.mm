@interface MIOTimeRangeMetadataTrackReader
- (CVSMPTETime)grabNextTimeRangeMetadataSampleOfStream:(SEL)stream rangeStartTime:(id)time rangeEndTime:(unint64_t *)endTime presentationTimeRange:(unint64_t *)range error:(id *)error;
- (MIOTimeRangeMetadataTrackReader)initWithMetadataTrackId:(int)id asset:(id)asset;
- (id)readTimeRangeMetadataSamplesOutError:(id *)error;
- (void)dealloc;
@end

@implementation MIOTimeRangeMetadataTrackReader

- (MIOTimeRangeMetadataTrackReader)initWithMetadataTrackId:(int)id asset:(id)asset
{
  assetCopy = asset;
  v11.receiver = self;
  v11.super_class = MIOTimeRangeMetadataTrackReader;
  v8 = [(MIOTimeRangeMetadataTrackReader *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_trackId = id;
    objc_storeStrong(&v8->_asset, asset);
  }

  return v9;
}

- (void)dealloc
{
  if (+[MIOLog debugEnabled])
  {
    v3 = +[MIOLog defaultLog];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_257883000, v3, OS_LOG_TYPE_DEBUG, "MIOTimeRangeMetadataTrackReader dealloc", buf, 2u);
    }
  }

  v4.receiver = self;
  v4.super_class = MIOTimeRangeMetadataTrackReader;
  [(MIOTimeRangeMetadataTrackReader *)&v4 dealloc];
}

- (id)readTimeRangeMetadataSamplesOutError:(id *)error
{
  v5 = objc_alloc_init(MOVStreamReader);
  v6 = [objc_alloc(MEMORY[0x277CE6410]) initWithAsset:self->_asset error:error];
  if (v6)
  {
    v7 = [(AVAsset *)self->_asset trackWithTrackID:self->_trackId];
    v8 = [MOVStreamReaderStreamOutput alloc];
    v9 = +[MIOVersion versionZero];
    v10 = [(MOVStreamReaderStreamOutput *)v8 initWithMetadataTrack:v7 assetReader:v6 version:v9 unknownStreamId:&stru_2868CF868 reader:v5 delegate:self error:error];

    if (v10)
    {
      v23 = v7;
      v24 = v5;
      [v6 startReading];
      v11 = objc_opt_new();
      v12 = 0;
      while (1)
      {
        v31 = 0;
        v32 = 0;
        [(MIOTimeRangeMetadataTrackReader *)self grabNextTimeRangeMetadataSampleOfStream:v10 rangeStartTime:&v32 rangeEndTime:&v31 presentationTimeRange:0 error:error];
        v29 = v25;
        v13 = v27;
        v30 = v26;
        v14 = v28;
        if ([(MOVStreamReaderStreamOutput *)v10 endOfStreamReached])
        {
          v16 = [v11 copy];
          v7 = v23;
          v5 = v24;
          goto LABEL_15;
        }

        if ((v13 & 1) == 0)
        {
          v17 = MEMORY[0x277CCACA8];
          streamId = [(MOVStreamReaderStreamOutput *)v10 streamId];
          v7 = v23;
          v5 = v24;
          v19 = [v17 stringWithFormat:@"Time code that was read for stream %@ was not valid, error: %@", streamId, *error];

          [MEMORY[0x277CCA9B8] populateReaderError:error message:v19 code:0];
          goto LABEL_14;
        }

        if (v12 >= v32 || v31 < v32)
        {
          break;
        }

        v15 = objc_opt_new();
        [v15 setStartTime:v32];
        [v15 setEndTime:v31];
        v25 = v29;
        v26 = v30;
        v27 = v13;
        v28 = v14;
        [v15 setTimeCode:&v25];
        [v11 addObject:v15];
        v12 = v32;
      }

      v20 = MEMORY[0x277CCACA8];
      streamId2 = [(MOVStreamReaderStreamOutput *)v10 streamId];
      v7 = v23;
      v5 = v24;
      v19 = [v20 stringWithFormat:@"Time ranges are not strictly increasing or overlap for stream %@.", streamId2];

      [MEMORY[0x277CCA9B8] populateReaderError:error message:v19 code:0];
LABEL_14:

      v16 = 0;
LABEL_15:
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (CVSMPTETime)grabNextTimeRangeMetadataSampleOfStream:(SEL)stream rangeStartTime:(id)time rangeEndTime:(unint64_t *)endTime presentationTimeRange:(unint64_t *)range error:(id *)error
{
  v52 = *MEMORY[0x277D85DE8];
  timeCopy = time;
  if ([timeCopy isTimeRangeMetadataStream])
  {
    v37 = timeCopy;
    v38 = [timeCopy grabNextTimedMetadataGroupOfStreamError:a8];
    if ([timeCopy endOfStreamReached])
    {
      *&retstr->subframes = 0;
      *&retstr->type = 0;
      *&retstr->hours = 0;
LABEL_35:

      timeCopy = v37;
      goto LABEL_36;
    }

    [v38 items];
    v49 = 0uLL;
    v50 = 0;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    obj = v48 = 0u;
    v15 = [obj countByEnumeratingWithState:&v45 objects:v51 count:16];
    if (v15)
    {
      endTimeCopy = endTime;
      rangeCopy = range;
      errorCopy = error;
      unsignedLongLongValue = 0;
      unsignedLongLongValue2 = 0;
      v18 = 0;
      v19 = *v46;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v46 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v45 + 1) + 8 * i);
          identifier = [v21 identifier];
          v23 = [@"mdta/com.apple.stream_time_code" isEqualToString:identifier];

          if (v23)
          {
            if (v21)
            {
              [v21 valueAsTimeCode];
            }

            else
            {
              v42 = 0uLL;
              *&v43 = 0;
            }

            v18 |= 1u;
            v49 = v42;
            v50 = v43;
          }

          else
          {
            identifier2 = [v21 identifier];
            v25 = [@"mdta/com.apple.stream_time_range_start" isEqualToString:identifier2];

            if (v25)
            {
              numberValue = [v21 numberValue];
              unsignedLongLongValue = [numberValue unsignedLongLongValue];

              v18 |= 2u;
            }

            else
            {
              identifier3 = [v21 identifier];
              v28 = [@"mdta/com.apple.stream_time_range_end" isEqualToString:identifier3];

              if (v28)
              {
                numberValue2 = [v21 numberValue];
                unsignedLongLongValue2 = [numberValue2 unsignedLongLongValue];

                v18 |= 4u;
              }
            }
          }
        }

        v15 = [obj countByEnumeratingWithState:&v45 objects:v51 count:16];
      }

      while (v15);

      if (v18 == 7)
      {
        if (endTimeCopy)
        {
          *endTimeCopy = unsignedLongLongValue;
        }

        if (rangeCopy)
        {
          *rangeCopy = unsignedLongLongValue2;
        }

        if (errorCopy)
        {
          if (v38)
          {
            [v38 timeRange];
          }

          else
          {
            v43 = 0u;
            v44 = 0u;
            v42 = 0u;
          }

          *&errorCopy->var0.var0 = v42;
          *&errorCopy->var0.var3 = v43;
          *&errorCopy->var1.var1 = v44;
        }

        *&retstr->subframes = v49;
        *&retstr->hours = v50;
        goto LABEL_34;
      }
    }

    else
    {
    }

    v30 = MEMORY[0x277CCACA8];
    streamId = [v37 streamId];
    v32 = [v30 stringWithFormat:@"The metadata stream '%@' did not contain all metadata items to be time range metadata.", streamId];

    [MEMORY[0x277CCA9B8] populateReaderError:a8 message:v32 code:31];
    *&retstr->subframes = 0;
    *&retstr->type = 0;
    *&retstr->hours = 0;

LABEL_34:
    goto LABEL_35;
  }

  v12 = MEMORY[0x277CCACA8];
  streamId2 = [timeCopy streamId];
  v14 = [v12 stringWithFormat:@"The metadata stream '%@' is not indicated as time range metadata.", streamId2];

  [MEMORY[0x277CCA9B8] populateReaderError:a8 message:v14 code:31];
  *&retstr->subframes = 0;
  *&retstr->type = 0;
  *&retstr->hours = 0;

LABEL_36:
  return result;
}

@end