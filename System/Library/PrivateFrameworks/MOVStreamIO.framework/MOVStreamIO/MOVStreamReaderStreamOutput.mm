@interface MOVStreamReaderStreamOutput
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)frameDuration;
- (AVAssetReader)assetReader;
- (AVAssetTrack)assetTrack;
- (BOOL)addAssociatedMetadataTracks:(id)tracks rawSampleAttachmentsIdentifier:(id)identifier trackKindIdentifier:(id)kindIdentifier movVersion:(id)version error:(id *)error;
- (BOOL)addTestPatternIfRequired:(__CVBuffer *)required;
- (BOOL)alwaysCopiesSampleDataForStream;
- (BOOL)copyNextStereoFrames:(__CVBuffer *)frames rightBuffer:(__CVBuffer *)buffer timestamp:(id *)timestamp error:(id *)error;
- (BOOL)determineStereoLayerIDs:(id)ds;
- (BOOL)formatDescriptionOfTrack:(id)track containsKey:(id)key;
- (BOOL)formatDescriptionOfTrack:(id)track containsKeyFromIndentifier:(id)indentifier;
- (BOOL)isEmptySample:(opaqueCMSampleBuffer *)sample;
- (BOOL)isSampleInEdit:(opaqueCMSampleBuffer *)edit;
- (BOOL)shouldDiscardStream:(id)stream mediaType:(int64_t)type track:(id)track;
- (BOOL)shouldSetupBufferAttchmentsOutput;
- (BOOL)stereoFramesFromSampleBuffer:(opaqueCMSampleBuffer *)buffer outLeft:(__CVBuffer *)left outRight:(__CVBuffer *)right error:(id *)error;
- (BOOL)timeCodeIsSynthesized;
- (MIOVersion)version;
- (MOVStreamReader)reader;
- (MOVStreamReaderDelegate)delegate;
- (MOVStreamReaderStreamOutput)init;
- (MOVStreamReaderStreamOutput)initWithAudioTrack:(id)track assetReader:(id)reader associatedMetadataTracks:(id)tracks version:(id)version unknownStreamId:(id)id reader:(id)a8 delegate:(id)delegate error:(id *)self0;
- (MOVStreamReaderStreamOutput)initWithMetadataTrack:(id)track assetReader:(id)reader version:(id)version unknownStreamId:(id)id reader:(id)a7 delegate:(id)delegate error:(id *)error;
- (MOVStreamReaderStreamOutput)initWithSceneTrack:(id)track assetReader:(id)reader associatedMetadataTracks:(id)tracks version:(id)version unknownStreamId:(id)id reader:(id)a8 delegate:(id)delegate error:(id *)self0;
- (MOVStreamReaderStreamOutput)initWithTimeCodeTrack:(id)track assetReader:(id)reader associatedMetadataTracks:(id)tracks version:(id)version unknownStreamId:(id)id reader:(id)a8 delegate:(id)delegate error:(id *)self0;
- (MOVStreamReaderStreamOutput)initWithVideoTrack:(id)track assetReader:(id)reader associatedMetadataTracks:(id)tracks version:(id)version bufferCacheMode:(int)mode unknownStreamId:(id)id reader:(id)a9 delegate:(id)self0 error:(id *)self1;
- (NSArray)associatedOutputs;
- (__CVBuffer)copyNextFrameForStreamTimestamp:(id *)timestamp readTimeCode:(BOOL)code timeCode:(CVSMPTETime *)timeCode tcDropFrame:(BOOL *)frame error:(id *)error;
- (__CVBuffer)getPixelBufferFromSampleBuffer:(opaqueCMSampleBuffer *)buffer error:(id *)error;
- (__CVBuffer)nextPixelBufferForStreamAttachmentsData:(id *)data timestamp:(id *)timestamp error:(id *)error;
- (id)attachmentsDataForStreamPts:(id *)pts duration:(id *)duration;
- (id)customTrackMetadata;
- (id)customTrackMetadataItems;
- (id)decodeAttachmentsData:(id)data error:(id *)error;
- (id)findTimeCodeTrackAssociatedWithTrack:(id)track;
- (id)findTracksAssociatedWithTimeCodeTrack:(id)track;
- (id)getAssociatedMetadataStreamOutputForMetadataStreamId:(id)id;
- (id)getAssociatedMetadataStreamOutputs;
- (id)getAssociatedMetadataStreams;
- (id)getAttachmentsOnlyOutputError:(id *)error;
- (id)grabNextMetadataItemsOfTrackAssociatedWithStreamWithIdentifier:(id)identifier timeRange:(id *)range error:(id *)error;
- (id)grabNextMetadataItemsTimeRange:(id *)range error:(id *)error;
- (id)grabNextMetadataOfStreamTimeRange:(id *)range error:(id *)error;
- (id)grabNextTimedMetadataGroupOfStreamError:(id *)error;
- (id)nextAttachmentWithError:(id *)error;
- (id)removeColorAttachments:(id)attachments;
- (id)streamIdFromTrackStreamTypeIdentifier:(id)identifier;
- (id)timestamps;
- (id)verifyStreamId:(id)id ofType:(int64_t)type;
- (int)playbackPixelFormatForTrack:(id)track ofStream:(id)stream delegate:(id)delegate;
- (int)playbackPixelFormatForTrack:(id)track ofStream:(id)stream streamEncodingType:(id)type inputPixelFormat:(unsigned int)format delegate:(id)delegate;
- (opaqueCMFormatDescription)timeCodeFormatDescription;
- (opaqueCMSampleBuffer)grabNextSampleBufferForStreamTimestamp:(id *)timestamp error:(id *)error;
- (opaqueCMSampleBuffer)nextSampleBufferForStreamAttachmentsData:(id *)data readTimeCode:(BOOL)code timecodeSampleBuffer:(opaqueCMSampleBuffer *)buffer timestamp:(id *)timestamp error:(id *)error;
- (opaqueCMSampleBuffer)nextSampleBufferForStreamAttachmentsDataArray:(id *)array readTimeCode:(BOOL)code timecodeSampleBuffer:(opaqueCMSampleBuffer *)buffer timestamp:(id *)timestamp error:(id *)error;
- (opaqueCMSampleBuffer)timeCodeBufferForStream:(id *)stream;
- (unsigned)getOutputPixelFormatForStream;
- (unsigned)pixelFormatForStream;
- (void)parseTrackMetadata:(id)metadata version:(id)version unknownStreamId:(id)id;
- (void)registerForAssociating:(id)associating trackRelation:(id)relation;
- (void)removePixelBufferPadding:(BOOL)padding;
- (void)useDefaultMIOLayerIds;
@end

@implementation MOVStreamReaderStreamOutput

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)frameDuration
{
  selfCopy = self;
  if ((self->var3 & 0x100000000) == 0)
  {
    assetTrack = [($3CC8671D27C23BF42ADDB32F2B5E48AE *)self assetTrack];
    v6 = assetTrack;
    if (assetTrack)
    {
      [assetTrack minFrameDuration];

      if (v10.flags)
      {
        assetTrack2 = [($3CC8671D27C23BF42ADDB32F2B5E48AE *)selfCopy assetTrack];
        assetTrack3 = assetTrack2;
        if (assetTrack2)
        {
          [assetTrack2 minFrameDuration];
        }

        else
        {
          memset(&v10, 0, sizeof(v10));
        }

        goto LABEL_8;
      }
    }

    else
    {
    }

    assetTrack3 = [($3CC8671D27C23BF42ADDB32F2B5E48AE *)selfCopy assetTrack];
    [assetTrack3 nominalFrameRate];
    CMTimeMakeWithSeconds(&v10, 1.0 / v9, 16800);
LABEL_8:
    *&selfCopy->var1 = v10;
  }

  *&retstr->var0 = *&selfCopy->var1;
  retstr->var3 = selfCopy[1].var0;
  return self;
}

- (BOOL)timeCodeIsSynthesized
{
  synthesizedTimeCodes = [(MOVStreamReaderStreamOutput *)self synthesizedTimeCodes];
  if (synthesizedTimeCodes)
  {
    timeCodeIsSynthesized = 1;
  }

  else
  {
    timeCodeIsSynthesized = [(MOVStreamReaderStreamOutput *)self->_timeCodeOutput timeCodeIsSynthesized];
  }

  return timeCodeIsSynthesized;
}

- (NSArray)associatedOutputs
{
  v2 = [(NSMutableArray *)self->_associatedOutputs copy];

  return v2;
}

- (MOVStreamReaderStreamOutput)init
{
  v8.receiver = self;
  v8.super_class = MOVStreamReaderStreamOutput;
  v2 = [(MOVStreamReaderStreamOutput *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v4 = *MEMORY[0x277CC0890];
    *(v2 + 3) = *(MEMORY[0x277CC0890] + 16);
    *(v2 + 8) = v4;
    [v2 setFirstVideoFrameRead:0];
    v5 = objc_opt_new();
    associatedOutputs = v3->_associatedOutputs;
    v3->_associatedOutputs = v5;

    [(MOVStreamReaderStreamOutput *)v3 setDecodePixelFormatOverridden:0];
  }

  return v3;
}

- (void)parseTrackMetadata:(id)metadata version:(id)version unknownStreamId:(id)id
{
  v57 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  versionCopy = version;
  idCopy = id;
  v9 = [versionCopy versionedKey:@"mdta/com.apple.track_kind" modifier:0];
  v47 = [versionCopy versionedKey:@"mdta/com.apple.stream_sample_format" modifier:0];
  v46 = [versionCopy versionedKey:@"mdta/com.apple.stream_encoded_sample_format" modifier:0];
  v44 = [versionCopy versionedKey:@"mdta/com.apple.stream_sample_attachments_serialization_mode" modifier:0];
  v42 = [versionCopy versionedKey:@"mdta/com.apple.stream_type_info" modifier:0];
  v39 = [versionCopy versionedKey:@"mdta/com.apple.stream_sample_attachments" modifier:0];
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = metadataCopy;
  v10 = [obj countByEnumeratingWithState:&v50 objects:v56 count:16];
  longValue = 0;
  if (!v10)
  {

    v48 = 0;
    intValue = 0;
    intValue2 = 0;
    intValue3 = 0;
    goto LABEL_28;
  }

  intValue3 = 0;
  v11 = 0;
  intValue2 = 0;
  intValue = 0;
  v48 = 0;
  v12 = *v51;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v51 != v12)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v50 + 1) + 8 * i);
      identifier = [v14 identifier];
      v16 = [v9 isEqualToString:identifier];

      if (v16)
      {
        value = [v14 value];
        if (+[MIOLog debugEnabled])
        {
          v18 = +[MIOLog defaultLog];
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138543362;
            v55 = value;
            _os_log_impl(&dword_257883000, v18, OS_LOG_TYPE_DEBUG, "Detected %{public}@ stream", buf, 0xCu);
          }
        }

        v19 = [(MOVStreamReaderStreamOutput *)self streamIdFromTrackStreamTypeIdentifier:value];

        v11 = v19;
      }

      else
      {
        identifier2 = [v14 identifier];
        v21 = [@"mdta/com.apple.trackStreamEncoding" isEqualToString:identifier2];

        if (v21)
        {
          [v14 value];
          v48 = value = v48;
        }

        else
        {
          identifier3 = [v14 identifier];
          v23 = [v47 isEqualToString:identifier3];

          if (v23)
          {
            value = [v14 value];
            intValue = [value intValue];
          }

          else
          {
            identifier4 = [v14 identifier];
            v25 = [v46 isEqualToString:identifier4];

            if (v25)
            {
              value = [v14 value];
              intValue2 = [value intValue];
            }

            else
            {
              identifier5 = [v14 identifier];
              v27 = [v44 isEqualToString:identifier5];

              if (v27)
              {
                value = [v14 value];
                intValue3 = [value intValue];
              }

              else
              {
                identifier6 = [v14 identifier];
                v29 = [v42 isEqualToString:identifier6];

                if (!v29)
                {
                  continue;
                }

                value = [v14 value];
                longValue = [value longValue];
              }
            }
          }
        }
      }
    }

    v10 = [obj countByEnumeratingWithState:&v50 objects:v56 count:16];
  }

  while (v10);

  if (v11)
  {
    [(MOVStreamReaderStreamOutput *)self setStreamId:v11];
    [(MOVStreamReaderStreamOutput *)self setIsMIOStream:1];
    goto LABEL_34;
  }

LABEL_28:
  assetTrack = [(MOVStreamReaderStreamOutput *)self assetTrack];
  v31 = [MIOMovieMetadataUtility findStreamIdFromQTTagsOfTrack:assetTrack];

  if (v31)
  {
    v32 = +[MIOLog defaultLog];
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      v33 = v31;
      uTF8String = [v31 UTF8String];
      *buf = 136315138;
      v55 = uTF8String;
      _os_log_impl(&dword_257883000, v32, OS_LOG_TYPE_INFO, "QT track name detected: %s", buf, 0xCu);
    }

    [(MOVStreamReaderStreamOutput *)self setStreamId:v31];
  }

  else
  {
    [(MOVStreamReaderStreamOutput *)self setStreamId:idCopy];
  }

  v11 = 0;
LABEL_34:
  streamId = [(MOVStreamReaderStreamOutput *)self streamId];
  v36 = [(MOVStreamReaderStreamOutput *)self verifyStreamId:streamId ofType:[(MOVStreamReaderStreamOutput *)self mediaType]];
  [(MOVStreamReaderStreamOutput *)self setStreamId:v36];

  [(MOVStreamReaderStreamOutput *)self setOriginalPixelFormat:intValue];
  [(MOVStreamReaderStreamOutput *)self setDeterminedPixelFormat:intValue2];
  [(MOVStreamReaderStreamOutput *)self setAttachmentSerializationMode:intValue3];
  [(MOVStreamReaderStreamOutput *)self setRelatedStreamId:0];
  [(MOVStreamReaderStreamOutput *)self setRelationSpecifier:0];
  [(MOVStreamReaderStreamOutput *)self setTrackTypeInfo:longValue];
  [(MOVStreamReaderStreamOutput *)self setAttachmentsIdentifier:v39];
  [(MOVStreamReaderStreamOutput *)self setTrackKindIdentifier:v9];
}

- (MOVStreamReaderStreamOutput)initWithAudioTrack:(id)track assetReader:(id)reader associatedMetadataTracks:(id)tracks version:(id)version unknownStreamId:(id)id reader:(id)a8 delegate:(id)delegate error:(id *)self0
{
  trackCopy = track;
  readerCopy = reader;
  tracksCopy = tracks;
  versionCopy = version;
  idCopy = id;
  v19 = a8;
  delegateCopy = delegate;
  v21 = [(MOVStreamReaderStreamOutput *)self init];
  v22 = v21;
  if (!v21)
  {
    goto LABEL_7;
  }

  v21->_mediaType = 1;
  [(MOVStreamReaderStreamOutput *)v21 setVersion:versionCopy];
  [(MOVStreamReaderStreamOutput *)v22 setDelegate:delegateCopy];
  [(MOVStreamReaderStreamOutput *)v22 setReader:v19];
  [(MOVStreamReaderStreamOutput *)v22 setAssetReader:readerCopy];
  [(MOVStreamReaderStreamOutput *)v22 setAssetTrack:trackCopy];
  metadata = [trackCopy metadata];
  [(MOVStreamReaderStreamOutput *)v22 parseTrackMetadata:metadata version:versionCopy unknownStreamId:idCopy];
  streamId = [(MOVStreamReaderStreamOutput *)v22 streamId];
  assetTrack = [(MOVStreamReaderStreamOutput *)v22 assetTrack];
  v26 = [(MOVStreamReaderStreamOutput *)v22 shouldDiscardStream:streamId mediaType:1 track:assetTrack];

  if (!v26)
  {
    v37 = readerCopy;
    v28 = [MEMORY[0x277CE6430] assetReaderTrackOutputWithTrack:trackCopy outputSettings:0];
    assetReader = [(MOVStreamReaderStreamOutput *)v22 assetReader];
    v30 = [assetReader canAddOutput:v28];

    if (!v30)
    {
      trackCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Can't add audio track (%@) to the AVAssetReader.", trackCopy];
      [MEMORY[0x277CCA9B8] populateReaderError:error message:trackCopy code:1];

      v27 = 0;
      readerCopy = v37;
      goto LABEL_9;
    }

    assetReader2 = [(MOVStreamReaderStreamOutput *)v22 assetReader];
    [assetReader2 addOutput:v28];

    [(MOVStreamReaderStreamOutput *)v22 setStreamOutput:v28];
    [(MOVStreamReaderStreamOutput *)v22 setPostProcessor:0];
    attachmentsIdentifier = [(MOVStreamReaderStreamOutput *)v22 attachmentsIdentifier];
    trackKindIdentifier = [(MOVStreamReaderStreamOutput *)v22 trackKindIdentifier];
    v34 = [(MOVStreamReaderStreamOutput *)v22 addAssociatedMetadataTracks:tracksCopy rawSampleAttachmentsIdentifier:attachmentsIdentifier trackKindIdentifier:trackKindIdentifier movVersion:versionCopy error:error];

    readerCopy = v37;
    if (!v34)
    {
      goto LABEL_4;
    }

LABEL_7:
    v27 = v22;
    goto LABEL_9;
  }

LABEL_4:
  v27 = 0;
LABEL_9:

  return v27;
}

- (MOVStreamReaderStreamOutput)initWithSceneTrack:(id)track assetReader:(id)reader associatedMetadataTracks:(id)tracks version:(id)version unknownStreamId:(id)id reader:(id)a8 delegate:(id)delegate error:(id *)self0
{
  trackCopy = track;
  readerCopy = reader;
  tracksCopy = tracks;
  versionCopy = version;
  idCopy = id;
  v19 = a8;
  delegateCopy = delegate;
  v21 = [(MOVStreamReaderStreamOutput *)self init];
  v22 = v21;
  if (!v21)
  {
LABEL_11:
    v31 = v22;
    goto LABEL_12;
  }

  v21->_mediaType = 3;
  [(MOVStreamReaderStreamOutput *)v21 setVersion:versionCopy];
  [(MOVStreamReaderStreamOutput *)v22 setDelegate:delegateCopy];
  [(MOVStreamReaderStreamOutput *)v22 setReader:v19];
  [(MOVStreamReaderStreamOutput *)v22 setAssetReader:readerCopy];
  [(MOVStreamReaderStreamOutput *)v22 setAssetTrack:trackCopy];
  metadata = [trackCopy metadata];
  [(MOVStreamReaderStreamOutput *)v22 parseTrackMetadata:metadata version:versionCopy unknownStreamId:idCopy];
  streamId = [(MOVStreamReaderStreamOutput *)v22 streamId];
  assetTrack = [(MOVStreamReaderStreamOutput *)v22 assetTrack];
  v26 = [(MOVStreamReaderStreamOutput *)v22 shouldDiscardStream:streamId mediaType:3 track:assetTrack];

  if (v26)
  {
    goto LABEL_7;
  }

  v36 = [MEMORY[0x277CE6430] assetReaderTrackOutputWithTrack:trackCopy outputSettings:0];
  assetReader = [(MOVStreamReaderStreamOutput *)v22 assetReader];
  v28 = [assetReader canAddOutput:v36];

  if (!v28)
  {
    trackCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Can't add output for scene track (%@) to the AVAssetReader.", trackCopy];
    [MEMORY[0x277CCA9B8] populateReaderError:error message:trackCopy code:1];

LABEL_7:
    goto LABEL_8;
  }

  assetReader2 = [(MOVStreamReaderStreamOutput *)v22 assetReader];
  [assetReader2 addOutput:v36];

  [(MOVStreamReaderStreamOutput *)v22 setStreamOutput:v36];
  if (trackCopy)
  {
    [trackCopy preferredTransform];
  }

  else
  {
    v41 = 0u;
    v42 = 0u;
    v40 = 0u;
  }

  v39[0] = v40;
  v39[1] = v41;
  v39[2] = v42;
  [(MOVStreamReaderStreamOutput *)v22 setTransform:v39];
  attachmentsIdentifier = [(MOVStreamReaderStreamOutput *)v22 attachmentsIdentifier];
  trackKindIdentifier = [(MOVStreamReaderStreamOutput *)v22 trackKindIdentifier];
  v34 = [(MOVStreamReaderStreamOutput *)v22 addAssociatedMetadataTracks:tracksCopy rawSampleAttachmentsIdentifier:attachmentsIdentifier trackKindIdentifier:trackKindIdentifier movVersion:versionCopy error:error];

  if (v34)
  {
    goto LABEL_11;
  }

LABEL_8:
  v31 = 0;
LABEL_12:

  return v31;
}

- (MOVStreamReaderStreamOutput)initWithMetadataTrack:(id)track assetReader:(id)reader version:(id)version unknownStreamId:(id)id reader:(id)a7 delegate:(id)delegate error:(id *)error
{
  v85 = *MEMORY[0x277D85DE8];
  trackCopy = track;
  readerCopy = reader;
  versionCopy = version;
  idCopy = id;
  v67 = a7;
  delegateCopy = delegate;
  v15 = [(MOVStreamReaderStreamOutput *)self init];
  v16 = v15;
  if (v15)
  {
    v15->_mediaType = 2;
    [(MOVStreamReaderStreamOutput *)v15 setVersion:versionCopy];
    [(MOVStreamReaderStreamOutput *)v16 setDelegate:delegateCopy];
    [(MOVStreamReaderStreamOutput *)v16 setReader:v67];
    [(MOVStreamReaderStreamOutput *)v16 setAssetReader:readerCopy];
    [(MOVStreamReaderStreamOutput *)v16 setAssetTrack:trackCopy];
    v70 = [versionCopy versionedKey:@"mdta/com.apple.track_kind" modifier:@"metadata"];
    v17 = [versionCopy versionedKey:@"mdta/com.apple.stream_time_range_metadata" modifier:0];
    v18 = [versionCopy versionedKey:@"mdta/com.apple.stream_sample_attachments" modifier:0];
    v63 = v18;
    v64 = [v18 componentsSeparatedByString:@"/"];
    if ([v64 count] == 2)
    {
      lastObject = [v64 lastObject];
      if (-[MOVStreamReaderStreamOutput formatDescriptionOfTrack:containsKey:](v16, "formatDescriptionOfTrack:containsKey:", trackCopy, lastObject) && ![trackCopy totalSampleDataLength])
      {
        v60 = +[MIOLog defaultLog];
        if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          LODWORD(v84) = [trackCopy trackID];
          _os_log_impl(&dword_257883000, v60, OS_LOG_TYPE_INFO, "Found empty abandoned associated metadata track (Track id: %d), > ignoring.", buf, 8u);
        }

        goto LABEL_64;
      }
    }

    else
    {
      v20 = +[MIOLog defaultLog];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v84 = v18;
        _os_log_impl(&dword_257883000, v20, OS_LOG_TYPE_ERROR, "Invalid 'kRawSampleBufferAttachmentsIdentifier': %@", buf, 0xCu);
      }
    }

    [trackCopy metadata];
    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    obj = v78 = 0u;
    v21 = [obj countByEnumeratingWithState:&v77 objects:v82 count:16];
    if (v21)
    {
      v22 = *v78;
      while (2)
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v78 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v24 = *(*(&v77 + 1) + 8 * i);
          identifier = [v24 identifier];
          v26 = [@"mdta/com.apple.imuTrackType" isEqualToString:identifier];

          if (v26)
          {
            value = [v24 value];
            if (+[MIOLog debugEnabled])
            {
              v28 = +[MIOLog defaultLog];
              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138543362;
                v84 = value;
                _os_log_impl(&dword_257883000, v28, OS_LOG_TYPE_DEBUG, "Detected %{public}@ IMU data type", buf, 0xCu);
              }
            }

            if ([value isEqualToString:@"DeviceMotion"])
            {
              value2 = @"DeviceMotion";
LABEL_33:

              v62 = 1;
              goto LABEL_34;
            }

            if ([value isEqualToString:@"RawGyro"])
            {
              value2 = @"RawGyro";
              goto LABEL_33;
            }

            if ([value isEqualToString:@"RawAccel"])
            {
              value2 = @"RawAccel";
              goto LABEL_33;
            }

            v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown IMU data type, ignoring: '%@'", value];
            v30 = [MEMORY[0x277CCA9B8] readerWarningWithMessage:v29 code:0];
          }

          else
          {
            identifier2 = [v24 identifier];
            v32 = [v70 isEqualToString:identifier2];

            if (v32)
            {
              value2 = [v24 value];
              goto LABEL_29;
            }
          }
        }

        v21 = [obj countByEnumeratingWithState:&v77 objects:v82 count:16];
        value2 = 0;
        v62 = 0;
        if (v21)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      value2 = 0;
LABEL_29:
      v62 = 0;
    }

LABEL_34:

    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v34 = obj;
    v35 = [v34 countByEnumeratingWithState:&v73 objects:v81 count:16];
    if (v35)
    {
      v36 = *v74;
      do
      {
        for (j = 0; j != v35; ++j)
        {
          if (*v74 != v36)
          {
            objc_enumerationMutation(v34);
          }

          v38 = *(*(&v73 + 1) + 8 * j);
          identifier3 = [v38 identifier];
          v40 = [v17 isEqualToString:identifier3];

          if (v40)
          {
            numberValue = [v38 numberValue];
            v16->_timeRangeMetadataStream = [numberValue BOOLValue];
          }
        }

        v35 = [v34 countByEnumeratingWithState:&v73 objects:v81 count:16];
      }

      while (v35);
    }

    v42 = +[MIOVersion versionZero];
    v43 = [v42 versionedKey:@"mdta/com.apple.metadata_stream_item" modifier:0];

    if (![(MOVStreamReaderStreamOutput *)v16 formatDescriptionOfTrack:trackCopy containsKeyFromIndentifier:@"mdta/com.apple.metadata_stream_item"]&& ![(MOVStreamReaderStreamOutput *)v16 formatDescriptionOfTrack:trackCopy containsKeyFromIndentifier:v43]&& ((v62 | v16->_timeRangeMetadataStream) & 1) == 0)
    {
      [(MOVStreamReaderStreamOutput *)v16 setCustomMetadataFormat:1];
    }

    if (!value2)
    {
      assetTrack = [(MOVStreamReaderStreamOutput *)v16 assetTrack];
      value2 = [MIOMovieMetadataUtility findStreamIdFromQTTagsOfTrack:assetTrack];

      if (value2)
      {
        v45 = +[MIOLog defaultLog];
        if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
        {
          v46 = value2;
          uTF8String = [(__CFString *)value2 UTF8String];
          *buf = 136315138;
          v84 = uTF8String;
          _os_log_impl(&dword_257883000, v45, OS_LOG_TYPE_INFO, "QT track name detected: %s", buf, 0xCu);
        }
      }

      else
      {
        if (!idCopy)
        {
          value2 = 0;
          goto LABEL_55;
        }

        value2 = idCopy;
      }
    }

    assetTrack2 = [(MOVStreamReaderStreamOutput *)v16 assetTrack];
    v49 = [(MOVStreamReaderStreamOutput *)v16 shouldDiscardStream:value2 mediaType:2 track:assetTrack2];

    if (v49)
    {
LABEL_55:

LABEL_64:
      v59 = 0;
      goto LABEL_65;
    }

    v50 = [objc_alloc(MEMORY[0x277CE6430]) initWithTrack:trackCopy outputSettings:0];
    assetReader = [(MOVStreamReaderStreamOutput *)v16 assetReader];
    v52 = [assetReader canAddOutput:v50];

    if (v52)
    {
      assetReader2 = [(MOVStreamReaderStreamOutput *)v16 assetReader];
      [assetReader2 addOutput:v50];

      [(MOVStreamReaderStreamOutput *)v16 setStreamOutput:v50];
      [(MOVStreamReaderStreamOutput *)v16 setIsLegacyIMUTrack:v62];
      v54 = objc_alloc(MEMORY[0x277CE6420]);
      streamOutput = [(MOVStreamReaderStreamOutput *)v16 streamOutput];
      v56 = [v54 initWithAssetReaderTrackOutput:streamOutput];
      [(MOVStreamReaderStreamOutput *)v16 setMetadataTrackMetadataAdaptor:v56];

      v57 = [(MOVStreamReaderStreamOutput *)v16 verifyStreamId:value2 ofType:2];

      value2 = v57;
      [(MOVStreamReaderStreamOutput *)v16 setStreamId:v57];
    }

    else
    {
      trackCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Can't add metadata track (%@) to the AVAssetReader.", trackCopy];
      [MEMORY[0x277CCA9B8] populateReaderError:error message:trackCopy code:1];
    }

    if ((v52 & 1) == 0)
    {
      goto LABEL_64;
    }
  }

  v59 = v16;
LABEL_65:

  return v59;
}

- (MOVStreamReaderStreamOutput)initWithTimeCodeTrack:(id)track assetReader:(id)reader associatedMetadataTracks:(id)tracks version:(id)version unknownStreamId:(id)id reader:(id)a8 delegate:(id)delegate error:(id *)self0
{
  v109 = *MEMORY[0x277D85DE8];
  trackCopy = track;
  readerCopy = reader;
  tracksCopy = tracks;
  versionCopy = version;
  idCopy = id;
  v84 = a8;
  delegateCopy = delegate;
  v16 = [(MOVStreamReaderStreamOutput *)self init];
  v17 = v16;
  v88 = v16;
  if (!v16)
  {
    goto LABEL_23;
  }

  v16->_mediaType = 4;
  [(MOVStreamReaderStreamOutput *)v16 setVersion:versionCopy];
  [(MOVStreamReaderStreamOutput *)v17 setDelegate:delegateCopy];
  [(MOVStreamReaderStreamOutput *)v17 setReader:v84];
  [(MOVStreamReaderStreamOutput *)v17 setAssetReader:readerCopy];
  [(MOVStreamReaderStreamOutput *)v17 setAssetTrack:trackCopy];
  metadata = [trackCopy metadata];
  [MOVStreamReaderStreamOutput parseTrackMetadata:v88 version:"parseTrackMetadata:version:unknownStreamId:" unknownStreamId:?];
  streamId = [(MOVStreamReaderStreamOutput *)v88 streamId];
  assetTrack = [(MOVStreamReaderStreamOutput *)v88 assetTrack];
  v20 = [(MOVStreamReaderStreamOutput *)v88 shouldDiscardStream:streamId mediaType:4 track:assetTrack];

  if (!v20)
  {
    v80 = [MEMORY[0x277CE6430] assetReaderTrackOutputWithTrack:trackCopy outputSettings:0];
    assetReader = [(MOVStreamReaderStreamOutput *)v88 assetReader];
    v22 = [assetReader canAddOutput:v80];

    if (v22)
    {
      assetReader2 = [(MOVStreamReaderStreamOutput *)v88 assetReader];
      [assetReader2 addOutput:v80];

      [(MOVStreamReaderStreamOutput *)v88 setStreamOutput:v80];
      if (trackCopy)
      {
        v24 = v88;
        [trackCopy preferredTransform];
      }

      else
      {
        v105 = 0u;
        v106 = 0u;
        v104 = 0u;
        v24 = v88;
      }

      *time1 = v104;
      *&time1[16] = v105;
      v103 = v106;
      [(MOVStreamReaderStreamOutput *)v24 setTransform:time1];
      [(MOVStreamReaderStreamOutput *)v24 setPostProcessor:0];
      attachmentsIdentifier = [(MOVStreamReaderStreamOutput *)v24 attachmentsIdentifier];
      trackKindIdentifier = [(MOVStreamReaderStreamOutput *)v24 trackKindIdentifier];
      v28 = [(MOVStreamReaderStreamOutput *)v24 addAssociatedMetadataTracks:tracksCopy rawSampleAttachmentsIdentifier:attachmentsIdentifier trackKindIdentifier:trackKindIdentifier movVersion:versionCopy error:error];

      if (v28)
      {
        [(MOVStreamReaderStreamOutput *)v88 setHasTimeCode:1];
        makeSampleCursorAtFirstSampleInDecodeOrder = [trackCopy makeSampleCursorAtFirstSampleInDecodeOrder];
        makeSampleCursorAtLastSampleInDecodeOrder = [trackCopy makeSampleCursorAtLastSampleInDecodeOrder];
        if (makeSampleCursorAtFirstSampleInDecodeOrder)
        {
          [makeSampleCursorAtFirstSampleInDecodeOrder presentationTimeStamp];
        }

        else
        {
          memset(time1, 0, 24);
        }

        if (makeSampleCursorAtLastSampleInDecodeOrder)
        {
          [makeSampleCursorAtLastSampleInDecodeOrder presentationTimeStamp];
        }

        else
        {
          memset(&time2, 0, sizeof(time2));
        }

        if (CMTimeCompare(time1, &time2) || (-[MOVStreamReaderStreamOutput reader](v88, "reader"), v30 = objc_claimAutoreleasedReturnValue(), v31 = [v30 skipSynthesizedTimeCode], v30, (v31 & 1) != 0))
        {
          v32 = [MEMORY[0x277CE6430] assetReaderTrackOutputWithTrack:trackCopy outputSettings:0];
          if ([readerCopy canAddOutput:v32])
          {
            [readerCopy addOutput:v32];
            [(MOVStreamReaderStreamOutput *)v88 setStreamOutput:v32];
LABEL_22:

            v17 = v88;
LABEL_23:
            v29 = v17;
            goto LABEL_24;
          }

          trackCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Can't add timecode track output (%@) to the AVAssetReader.", trackCopy];
          [MEMORY[0x277CCA9B8] populateReaderError:error message:trackCopy code:1];
          v77 = v32;
LABEL_39:

          goto LABEL_13;
        }

        v35 = objc_alloc(MEMORY[0x277CE6410]);
        assetReader3 = [(MOVStreamReaderStreamOutput *)v88 assetReader];
        asset = [assetReader3 asset];
        v100 = 0;
        v74 = [v35 initWithAsset:asset error:&v100];
        v77 = v100;

        if (v77)
        {
          v38 = MEMORY[0x277CCACA8];
          streamId2 = [(MOVStreamReaderStreamOutput *)v88 streamId];
          v40 = [v38 stringWithFormat:@"Can't create reader for making synthesized timecode for stream %@.  Error: %@", streamId2, v77];

          [MEMORY[0x277CCA9B8] populateReaderError:error message:v40 code:1];
          trackCopy = v74;
          goto LABEL_39;
        }

        v41 = [MEMORY[0x277CE6430] assetReaderTrackOutputWithTrack:trackCopy outputSettings:0];
        v70 = v41;
        if ([v74 canAddOutput:v41])
        {
          [v74 addOutput:v41];
          if ([v74 startReading])
          {
            for (i = [v41 copyNextSampleBuffer]; ; i = objc_msgSend(v41, "copyNextSampleBuffer"))
            {
              if (!i)
              {
                v48 = MEMORY[0x277CCACA8];
                streamId3 = [(MOVStreamReaderStreamOutput *)v88 streamId];
                v45 = [v48 stringWithFormat:@"Can't read timecode sample for creating synthesized timecode for stream %@.  Error: %@", streamId3, 0];

                [MEMORY[0x277CCA9B8] populateReaderError:error message:v45 code:1];
                goto LABEL_37;
              }

              if (CMSampleBufferGetNumSamples(i))
              {
                break;
              }

              CFRelease(i);
            }

            v99 = 0;
            memset(time1, 0, 24);
            [MOVStreamIOUtility timecode32ForSampleBuffer:i dropFrame:&v99];
            [(MOVStreamReaderStreamOutput *)v88 setSynthesizedTimeCodeIsDropFrame:v99];
            if (time1[12])
            {
              formatDescriptions = [trackCopy formatDescriptions];
              firstObject = [formatDescriptions firstObject];

              if (firstObject)
              {
                FrameQuanta = CMTimeCodeFormatDescriptionGetFrameQuanta(firstObject);
                v56 = objc_opt_new();
                [(MOVStreamReaderStreamOutput *)v88 findTracksAssociatedWithTimeCodeTrack:trackCopy];
                v97 = 0u;
                v98 = 0u;
                v95 = 0u;
                obj = v96 = 0u;
                v57 = [obj countByEnumeratingWithState:&v95 objects:v108 count:16];
                if (v57)
                {
                  v72 = *v96;
                  do
                  {
                    v58 = 0;
                    v73 = v57;
                    do
                    {
                      if (*v96 != v72)
                      {
                        objc_enumerationMutation(obj);
                      }

                      v59 = [[MOVStreamTimestamps alloc] initWithAssetTrack:*(*(&v95 + 1) + 8 * v58)];
                      v76 = v59;
                      if (!v59)
                      {
                        __assert_rtn("[MOVStreamReaderStreamOutput initWithTimeCodeTrack:assetReader:associatedMetadataTracks:version:unknownStreamId:reader:delegate:error:]", "MOVStreamReaderStreamOutput.mm", 602, "timestampList");
                      }

                      time2 = *time1;
                      v91 = 0u;
                      v92 = 0u;
                      v93 = 0u;
                      v94 = 0u;
                      cmtimes = [(MOVStreamTimestamps *)v59 cmtimes];
                      v61 = [cmtimes countByEnumeratingWithState:&v91 objects:v107 count:16];
                      v75 = v58;
                      if (v61)
                      {
                        v62 = *v92;
                        do
                        {
                          for (j = 0; j != v61; ++j)
                          {
                            if (*v92 != v62)
                            {
                              objc_enumerationMutation(cmtimes);
                            }

                            v64 = *(*(&v91 + 1) + 8 * j);
                            v65 = [MEMORY[0x277CCAE60] value:&time2 withObjCType:"{CVSMPTETime=ssIIIssss}"];
                            [v56 setObject:v65 forKey:v64];

                            v90[0] = time2;
                            [MOVStreamIOUtility advanceTimeCode:v90 frameQuanta:FrameQuanta dropFrame:v99];
                            time2 = v90[1];
                          }

                          v61 = [cmtimes countByEnumeratingWithState:&v91 objects:v107 count:16];
                        }

                        while (v61);
                      }

                      v58 = v75 + 1;
                    }

                    while (v75 + 1 != v73);
                    v57 = [obj countByEnumeratingWithState:&v95 objects:v108 count:16];
                  }

                  while (v57);
                }

                v66 = [v56 copy];
                [(MOVStreamReaderStreamOutput *)v88 setSynthesizedTimeCodes:v66];

                v32 = v74;
                goto LABEL_22;
              }

              v67 = MEMORY[0x277CCACA8];
              streamId4 = [(MOVStreamReaderStreamOutput *)v88 streamId];
              v69 = [v67 stringWithFormat:@"Cannot retrieve format description for creating synthesized timecode for stream %@.  Error: %@", streamId4, 0];

              [MEMORY[0x277CCA9B8] populateReaderError:error message:v69 code:1];
            }

            else
            {
              v50 = MEMORY[0x277CCACA8];
              streamId5 = [(MOVStreamReaderStreamOutput *)v88 streamId];
              v52 = [v50 stringWithFormat:@"Timecode sample is not valid for creating synthesized timecode for stream %@.  Error: %@", streamId5, 0];

              [MEMORY[0x277CCA9B8] populateReaderError:error message:v52 code:1];
            }

            goto LABEL_38;
          }

          v46 = MEMORY[0x277CCACA8];
          streamId6 = [(MOVStreamReaderStreamOutput *)v88 streamId];
          v45 = [v46 stringWithFormat:@"Can't start reader for creating synthesized timecode for stream %@.  Error: %@", streamId6, 0];

          [MEMORY[0x277CCA9B8] populateReaderError:error message:v45 code:1];
        }

        else
        {
          v43 = MEMORY[0x277CCACA8];
          streamId7 = [(MOVStreamReaderStreamOutput *)v88 streamId];
          v45 = [v43 stringWithFormat:@"Can't add input for creating synthesized timecode for stream %@.  Error: %@", streamId7, 0];

          [MEMORY[0x277CCA9B8] populateReaderError:error message:v45 code:1];
        }

LABEL_37:

LABEL_38:
        v77 = v74;
        trackCopy = v41;
        goto LABEL_39;
      }
    }

    else
    {
      trackCopy2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Can't add output for time code track (%@) to the AVAssetReader.", trackCopy];
      [MEMORY[0x277CCA9B8] populateReaderError:error message:trackCopy2 code:1];
    }

    goto LABEL_13;
  }

LABEL_13:
  v29 = 0;
LABEL_24:

  return v29;
}

- (MOVStreamReaderStreamOutput)initWithVideoTrack:(id)track assetReader:(id)reader associatedMetadataTracks:(id)tracks version:(id)version bufferCacheMode:(int)mode unknownStreamId:(id)id reader:(id)a9 delegate:(id)self0 error:(id *)self1
{
  v216 = *MEMORY[0x277D85DE8];
  trackCopy = track;
  readerCopy = reader;
  tracksCopy = tracks;
  versionCopy = version;
  idCopy = id;
  v172 = a9;
  delegateCopy = delegate;
  v16 = [(MOVStreamReaderStreamOutput *)self init];

  v191 = v16;
  if (!v16)
  {
    goto LABEL_97;
  }

  v16->_mediaType = 0;
  [(MOVStreamReaderStreamOutput *)v16 setVersion:versionCopy];
  [(MOVStreamReaderStreamOutput *)v16 setDelegate:delegateCopy];
  [(MOVStreamReaderStreamOutput *)v16 setReader:v172];
  [(MOVStreamReaderStreamOutput *)v16 setAssetReader:readerCopy];
  [(MOVStreamReaderStreamOutput *)v16 setAssetTrack:trackCopy];
  v193 = [versionCopy versionedKey:@"mdta/com.apple.track_kind" modifier:0];
  v185 = [versionCopy versionedKey:@"mdta/com.apple.stream_sample_format" modifier:0];
  v182 = [versionCopy versionedKey:@"mdta/com.apple.stream_encoded_sample_format" modifier:0];
  v180 = [versionCopy versionedKey:@"mdta/com.apple.stream_sample_attachments_serialization_mode" modifier:0];
  v168 = [versionCopy versionedKey:@"mdta/com.apple.stream_type_info" modifier:0];
  v178 = [versionCopy versionedKey:@"mdta/com.apple.stream_related_to_stream" modifier:0];
  v174 = [versionCopy versionedKey:@"mdta/com.apple.stream_relation_specifier" modifier:0];
  v162 = [versionCopy versionedKey:@"mdta/com.apple.stream_sample_exact_bytes_per_row" modifier:0];
  v161 = [versionCopy versionedKey:@"mdta/com.apple.stream_sample_attachments" modifier:0];
  v160 = [versionCopy versionedKey:@"mdta/com.apple.stream_sample_exact_bytes_per_row_multiplanar" modifier:0];
  v188 = [versionCopy versionedKey:@"mdta/com.apple.stream_output_pixel_format_override" modifier:0];
  v189 = [versionCopy versionedKey:@"mdta/com.apple.writer_encoder_type" modifier:0];
  v17 = [versionCopy versionedKey:@"mdta/com.apple.stream_stereo_video" modifier:0];
  v163 = [versionCopy versionedKey:@"mdta/com.apple.stream_additional_compression_properties" modifier:0];
  v164 = v17;
  metadata = [trackCopy metadata];
  v19 = idCopy;
  v201 = 0u;
  v202 = 0u;
  v203 = 0u;
  v204 = 0u;
  obj = metadata;
  v20 = [obj countByEnumeratingWithState:&v201 objects:v215 count:16];
  longValue = 0;
  if (v20)
  {
    intValue2 = 0;
    v165 = 0;
    v166 = 0;
    intValue = 0;
    v175 = 0;
    v179 = 0;
    unsignedIntValue = 0;
    v181 = 0;
    v190 = 0;
    v21 = *v202;
    v22 = 1;
    while (1)
    {
      v23 = 0;
      do
      {
        if (*v202 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v201 + 1) + 8 * v23);
        identifier = [v24 identifier];
        v26 = [v193 isEqualToString:identifier];

        if (v26)
        {
          value = [v24 value];
          if (+[MIOLog debugEnabled])
          {
            v28 = +[MIOLog defaultLog];
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138543362;
              *&buf[4] = value;
              _os_log_impl(&dword_257883000, v28, OS_LOG_TYPE_DEBUG, "Detected %{public}@ stream", buf, 0xCu);
            }
          }

          v29 = [(MOVStreamReaderStreamOutput *)v191 streamIdFromTrackStreamTypeIdentifier:value];

          v22 = 0;
          v19 = v29;
          goto LABEL_33;
        }

        identifier2 = [v24 identifier];
        v31 = [@"mdta/com.apple.trackStreamEncoding" isEqualToString:identifier2];

        if (v31)
        {
          [v24 value];
          v190 = value = v190;
          goto LABEL_33;
        }

        identifier3 = [v24 identifier];
        v33 = [v189 isEqualToString:identifier3];

        if (v33)
        {
          value = [v24 value];
          intValue = [value intValue];
          goto LABEL_33;
        }

        identifier4 = [v24 identifier];
        v35 = [v188 isEqualToString:identifier4];

        if (v35)
        {
          value = [v24 value];
          unsignedIntValue = [value unsignedIntValue];
          goto LABEL_33;
        }

        identifier5 = [v24 identifier];
        v37 = [v185 isEqualToString:identifier5];

        if (v37)
        {
          value = [v24 value];
          HIDWORD(v181) = [value intValue];
          goto LABEL_33;
        }

        identifier6 = [v24 identifier];
        v39 = [v182 isEqualToString:identifier6];

        if (v39)
        {
          value = [v24 value];
          LODWORD(v181) = [value intValue];
          goto LABEL_33;
        }

        identifier7 = [v24 identifier];
        v41 = [v180 isEqualToString:identifier7];

        if (v41)
        {
          value = [v24 value];
          intValue2 = [value intValue];
          goto LABEL_33;
        }

        identifier8 = [v24 identifier];
        v43 = [v178 isEqualToString:identifier8];

        if (v43)
        {
          [v24 value];
          v179 = value = v179;
          goto LABEL_33;
        }

        identifier9 = [v24 identifier];
        v45 = [v174 isEqualToString:identifier9];

        if (v45)
        {
          [v24 value];
          v175 = value = v175;
          goto LABEL_33;
        }

        identifier10 = [v24 identifier];
        v47 = [v168 isEqualToString:identifier10];

        if (v47)
        {
          value = [v24 value];
          longValue = [value longValue];
          goto LABEL_33;
        }

        identifier11 = [v24 identifier];
        v49 = [v164 isEqualToString:identifier11];

        if (v49)
        {
          value = [v24 numberValue];
          v191->_stereoVideoStream = [value BOOLValue];
          goto LABEL_33;
        }

        identifier12 = [v24 identifier];
        v51 = [v163 isEqualToString:identifier12];

        if (v51)
        {
          value2 = [v24 value];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v200 = 0;
            v167 = [MOVStreamIOUtility plistDeserializedObject:value2 error:&v200];
            value = v200;

            if (value || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
            {
              additionalCompressionProperties = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid Additional Compression Properties value type for stream '%@': %@.", v19, value];
              v62 = [MEMORY[0x277CCA9B8] readerWarningWithMessage:additionalCompressionProperties code:0];

              v166 = 0;
            }

            else
            {
              v53 = v167;
              additionalCompressionProperties = v191->_additionalCompressionProperties;
              v166 = v53;
              v191->_additionalCompressionProperties = v53;
            }

            goto LABEL_33;
          }

          v166 = value2;
        }

        else
        {
          identifier13 = [v24 identifier];
          v56 = [v162 isEqualToString:identifier13];

          if (v56)
          {
            value3 = [v24 value];

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_51;
            }

            v165 = value3;
          }

          else
          {
            identifier14 = [v24 identifier];
            v59 = [v160 isEqualToString:identifier14];

            if (v59)
            {
              value3 = [v24 value];

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v199 = 0;
                v165 = [MOVStreamIOUtility plistDeserializedObject:value3 error:&v199];
                value = v199;

                if (value)
                {
                  v60 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid ExactBytesPerRow value type for stream '%@': %@.", v19, value];
                  v61 = [MEMORY[0x277CCA9B8] readerWarningWithMessage:v60 code:0];

                  goto LABEL_52;
                }
              }

              else
              {
LABEL_51:
                value = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid ExactBytesPerRow value type for stream '%@': %@.", v19, value3];
                v63 = [MEMORY[0x277CCA9B8] readerWarningWithMessage:value code:0];

LABEL_52:
                v165 = 0;
              }

LABEL_33:
            }
          }
        }

        ++v23;
      }

      while (v20 != v23);
      v64 = [obj countByEnumeratingWithState:&v201 objects:v215 count:16];
      v20 = v64;
      if (!v64)
      {
        goto LABEL_56;
      }
    }
  }

  intValue2 = 0;
  v165 = 0;
  v166 = 0;
  intValue = 0;
  v175 = 0;
  v179 = 0;
  unsignedIntValue = 0;
  v181 = 0;
  v190 = 0;
  v22 = 1;
LABEL_56:

  for (i = 0; ; ++i)
  {
    formatDescriptions = [trackCopy formatDescriptions];
    v67 = [formatDescriptions count] > i;

    if (!v67)
    {
      break;
    }

    formatDescriptions2 = [trackCopy formatDescriptions];
    v69 = [formatDescriptions2 objectAtIndexedSubscript:i];

    MediaSubType = CMFormatDescriptionGetMediaSubType(v69);
    if (MediaSubType == 1936484717 && ![MOVStreamEncoderConfig isEncoderAvailableOfType:1936484717 withId:0]|| [MOVStreamEncoderConfig isProResCodec:MediaSubType]&& ![MOVStreamEncoderConfig isEncoderAvailableOfType:MediaSubType withId:0])
    {
      v95 = [MEMORY[0x277CCACA8] stringWithFormat:@"Decoder required for '%@' is not available.", v19];
      [MEMORY[0x277CCA9B8] populateReaderError:error message:v95 code:1];

LABEL_95:
      v109 = 0;
      goto LABEL_96;
    }
  }

  if (v22)
  {
    formatDescriptions3 = [trackCopy formatDescriptions];
    v72 = [formatDescriptions3 count] == 0;

    if (!v72)
    {
      formatDescriptions4 = [trackCopy formatDescriptions];
      v74 = [formatDescriptions4 objectAtIndexedSubscript:0];

      v75 = CMFormatDescriptionGetExtensions(v74);
      v76 = [v75 objectForKey:@"HasLeftStereoEyeView"];
      bOOLValue = [v76 BOOLValue];

      if (bOOLValue)
      {
        v191->_stereoVideoStream = 1;
      }

      v78 = [v75 objectForKey:@"SampleDescriptionExtensionAtoms"];
      v79 = [v78 objectForKey:@"hvcC"];
      if (v79)
      {
        v80 = [v78 objectForKey:@"lhvC"];
        v81 = v80 == 0;

        if (!v81)
        {
          v191->_stereoVideoStream = 1;
        }
      }
    }
  }

  if (!v181)
  {
    WeakRetained = objc_loadWeakRetained(&v191->_delegate);
    LODWORD(v181) = [(MOVStreamReaderStreamOutput *)v191 playbackPixelFormatForTrack:trackCopy ofStream:v19 streamEncodingType:v190 inputPixelFormat:HIDWORD(v181) delegate:WeakRetained];
  }

  if (v22)
  {
    assetTrack = [(MOVStreamReaderStreamOutput *)v191 assetTrack];
    v84 = [MIOMovieMetadataUtility findStreamIdFromQTTagsOfTrack:assetTrack];

    if (v84)
    {
      v85 = +[MIOLog defaultLog];
      if (os_log_type_enabled(v85, OS_LOG_TYPE_INFO))
      {
        v86 = v84;
        uTF8String = [v84 UTF8String];
        *buf = 136315138;
        *&buf[4] = uTF8String;
        _os_log_impl(&dword_257883000, v85, OS_LOG_TYPE_INFO, "QT track name detected: %s", buf, 0xCu);
      }

      v88 = v84;
      v19 = v88;
    }

    else
    {
      v96 = [MEMORY[0x277CCA9B8] readerWarningWithMessage:@"Unknown stream detected." code:0];
    }
  }

  else
  {
    v89 = objc_loadWeakRetained(&v191->_delegate);
    if (v89)
    {
      v90 = objc_loadWeakRetained(&v191->_delegate);
      v91 = objc_opt_respondsToSelector();

      if (v91)
      {
        v92 = objc_loadWeakRetained(&v191->_delegate);
        reader = [(MOVStreamReaderStreamOutput *)v191 reader];
        v94 = [v92 reader:reader pixelFormatForStream:v19 suggestedFormat:v181];

        if (v181 != v94)
        {
          [(MOVStreamReaderStreamOutput *)v191 setDecodePixelFormatOverridden:1];
          LODWORD(v181) = v94;
        }
      }
    }
  }

  assetTrack2 = [(MOVStreamReaderStreamOutput *)v191 assetTrack];
  v98 = [(MOVStreamReaderStreamOutput *)v191 shouldDiscardStream:v19 mediaType:0 track:assetTrack2];

  if (v98)
  {
    goto LABEL_95;
  }

  if (v181 == -1)
  {
    v106 = [MEMORY[0x277CCACA8] stringWithFormat:@"Undefined pixel format for stream '%@'. Ignoring stream.", v19];
    v107 = [MEMORY[0x277CCA9B8] readerWarningWithMessage:v106 code:0];
    v108 = +[MIOLog defaultLog];
    if (os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      *&buf[4] = v106;
      _os_log_impl(&dword_257883000, v108, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }

    goto LABEL_95;
  }

  if (v22)
  {
    goto LABEL_108;
  }

  v99 = objc_loadWeakRetained(&v191->_delegate);
  if (v99 && (v100 = objc_loadWeakRetained(&v191->_delegate), v101 = objc_opt_respondsToSelector(), v100, v99, (v101 & 1) != 0))
  {
    v102 = objc_loadWeakRetained(&v191->_delegate);
    reader2 = [(MOVStreamReaderStreamOutput *)v191 reader];
    customTrackMetadata = [(MOVStreamReaderStreamOutput *)v191 customTrackMetadata];
    v105 = [v102 reader:reader2 overrideBytesPerRowForStream:v19 storedValue:v165 customTrackMetadata:customTrackMetadata originalPixelFormat:HIDWORD(v181) encodedPixelFormat:v181];

    v165 = v105;
  }

  else
  {
    v112 = objc_loadWeakRetained(&v191->_delegate);
    if (!v112)
    {
      goto LABEL_108;
    }

    v113 = objc_loadWeakRetained(&v191->_delegate);
    v114 = objc_opt_respondsToSelector();

    if ((v114 & 1) == 0)
    {
      goto LABEL_108;
    }

    objc_opt_class();
    v115 = (objc_opt_isKindOfClass() & 1) != 0 ? [v165 intValue] : 0;
    v116 = objc_loadWeakRetained(&v191->_delegate);
    reader3 = [(MOVStreamReaderStreamOutput *)v191 reader];
    v118 = [v116 reader:reader3 bytesPerRowForStream:v19 storedValue:v115];

    if (!v118)
    {
      goto LABEL_108;
    }

    [MEMORY[0x277CCABB0] numberWithUnsignedInt:v118];
    v165 = v102 = v165;
  }

LABEL_108:
  v213 = 0u;
  v214 = 0u;
  *buf = 0u;
  if (trackCopy)
  {
    [trackCopy preferredTransform];
  }

  if (v181)
  {
    if (v165)
    {
      v210[0] = *MEMORY[0x277CC4E30];
      v119 = [MEMORY[0x277CCABB0] numberWithInt:v181];
      v210[1] = *MEMORY[0x277CC4D98];
      v211[0] = v119;
      v211[1] = v165;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:v211 forKeys:v210 count:2];
    }

    else
    {
      v208 = *MEMORY[0x277CC4E30];
      v119 = [MEMORY[0x277CCABB0] numberWithInt:v181];
      v209 = v119;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v209 forKeys:&v208 count:1];
    }
    v120 = ;
  }

  else
  {
    v120 = 0;
  }

  if (intValue == 36)
  {

    if ([(NSDictionary *)v191->_additionalCompressionProperties count])
    {
      v121 = [[MIOLinearVCPDecoderController alloc] initWithTargetPixelFormat:v181 writingSessionProperties:v191->_additionalCompressionProperties];
    }

    else
    {
      v121 = [[MIOLinearVCPDecoderController alloc] initWithTargetPixelFormat:v181];
    }

    [(MOVStreamReaderStreamOutput *)v191 setDecoderController:v121];

    v120 = 0;
  }

  if (v191->_stereoVideoStream)
  {
    if (![(MOVStreamReaderStreamOutput *)v191 determineStereoLayerIDs:trackCopy])
    {
      [(MOVStreamReaderStreamOutput *)v191 useDefaultMIOLayerIds];
    }

    v122 = [v120 mutableCopy];
    v206 = @"RequestedMVHEVCVideoLayerIDs";
    videoLayerIds = v191->_videoLayerIds;
    v123 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&videoLayerIds forKeys:&v206 count:1];
    [v122 setObject:v123 forKey:*MEMORY[0x277CE6338]];

    v124 = [v122 copy];
  }

  else
  {
    v124 = v120;
  }

  v125 = [MEMORY[0x277CE6430] assetReaderTrackOutputWithTrack:trackCopy outputSettings:v124];
  [v125 setAlwaysCopiesSampleData:{-[MOVStreamReaderStreamOutput alwaysCopiesSampleDataForStream](v191, "alwaysCopiesSampleDataForStream")}];
  if (![readerCopy canAddOutput:v125])
  {
    trackCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Can't add video track (%@) to the AVAssetReader.", trackCopy];
    [MEMORY[0x277CCA9B8] populateReaderError:error message:trackCopy code:1];
    v109 = 0;
    goto LABEL_167;
  }

  [readerCopy addOutput:v125];
  if (([v19 isEqualToString:@"RawBayer"] & 1) != 0 || +[MIOPixelBufferUtility isPixelFormatRawBayer:](MIOPixelBufferUtility, "isPixelFormatRawBayer:", HIDWORD(v181)))
  {
    intValue2 = 1;
  }

  if (unsignedIntValue)
  {
    v126 = unsignedIntValue;
  }

  else
  {
    v126 = HIDWORD(v181);
  }

  [(MOVStreamReaderStreamOutput *)v191 setStreamOutput:v125];
  v198[0] = *buf;
  v198[1] = v213;
  v198[2] = v214;
  [(MOVStreamReaderStreamOutput *)v191 setTransform:v198];
  [(MOVStreamReaderStreamOutput *)v191 setOriginalPixelFormat:v126];
  [(MOVStreamReaderStreamOutput *)v191 setDeterminedPixelFormat:v181];
  [(MOVStreamReaderStreamOutput *)v191 setAttachmentSerializationMode:intValue2];
  [(MOVStreamReaderStreamOutput *)v191 setRelatedStreamId:v179];
  [(MOVStreamReaderStreamOutput *)v191 setRelationSpecifier:v175];
  [(MOVStreamReaderStreamOutput *)v191 setTrackTypeInfo:longValue];
  if ([(MOVStreamReaderStreamOutput *)v191 decodePixelFormatOverridden])
  {
    v127 = +[MOVStreamPostProcessorFactory getNewDefaultPostProcessor];
    [(MOVStreamReaderStreamOutput *)v191 setPostProcessor:v127];
  }

  else
  {
    v127 = +[MOVStreamPostProcessorFactory defaultFactory];
    v129 = [v127 postProcessorFromReader:v172 originalPixelFormat:v126 encodedFormat:v181 encoderType:intValue streamId:v19 bufferCacheMode:mode];
    [(MOVStreamReaderStreamOutput *)v191 setPostProcessor:v129];
  }

  postProcessor = [(MOVStreamReaderStreamOutput *)v191 postProcessor];
  [postProcessor setExactBytesPerRow:v165];

  v131 = [(MOVStreamReaderStreamOutput *)v191 verifyStreamId:v19 ofType:0];

  [(MOVStreamReaderStreamOutput *)v191 setStreamId:v131];
  if (![(MOVStreamReaderStreamOutput *)v191 addAssociatedMetadataTracks:tracksCopy rawSampleAttachmentsIdentifier:v161 trackKindIdentifier:v193 movVersion:versionCopy error:error])
  {
    v109 = 0;
    goto LABEL_168;
  }

  attachmentsAdaptor = [(MOVStreamReaderStreamOutput *)v191 attachmentsAdaptor];
  v133 = attachmentsAdaptor == 0;

  if (v133)
  {
    v145 = objc_loadWeakRetained(&v191->_delegate);
    if (v145)
    {
      v146 = objc_loadWeakRetained(&v191->_delegate);
      v147 = objc_opt_respondsToSelector();

      if (v147)
      {
        v148 = objc_loadWeakRetained(&v191->_delegate);
        reader4 = [(MOVStreamReaderStreamOutput *)v191 reader];
        streamId = [(MOVStreamReaderStreamOutput *)v191 streamId];
        v151 = [v148 reader:reader4 readSEIIfAvailableForStream:streamId];

        if (v151)
        {
          [(MOVStreamReaderStreamOutput *)v191 setAttachmentSerializationMode:1];
          v152 = [MIOSEITrackReader alloc];
          assetTrack3 = [(MOVStreamReaderStreamOutput *)v191 assetTrack];
          assetReader = [(MOVStreamReaderStreamOutput *)v191 assetReader];
          v155 = [(MIOSEITrackReader *)v152 initWithVideoTrack:assetTrack3 assetReader:assetReader];
          [(MOVStreamReaderStreamOutput *)v191 setSeiTrackReader:v155];
        }
      }
    }
  }

  assetTrack4 = [(MOVStreamReaderStreamOutput *)v191 assetTrack];
  trackCopy = [(MOVStreamReaderStreamOutput *)v191 findTimeCodeTrackAssociatedWithTrack:assetTrack4];

  if (!trackCopy)
  {
    v109 = 1;
    goto LABEL_166;
  }

  v196 = 0u;
  v197 = 0u;
  v194 = 0u;
  v195 = 0u;
  reader5 = [(MOVStreamReaderStreamOutput *)v191 reader];
  getAllTimeCodeStreams = [reader5 getAllTimeCodeStreams];

  v136 = [getAllTimeCodeStreams countByEnumeratingWithState:&v194 objects:v205 count:16];
  if (!v136)
  {
    v144 = 0;
    goto LABEL_160;
  }

  v137 = *v195;
  while (2)
  {
    for (j = 0; j != v136; ++j)
    {
      if (*v195 != v137)
      {
        objc_enumerationMutation(getAllTimeCodeStreams);
      }

      v139 = *(*(&v194 + 1) + 8 * j);
      reader6 = [(MOVStreamReaderStreamOutput *)v191 reader];
      v141 = [reader6 outputForTimeCodeStream:v139 error:error];

      if (!v141)
      {
        trackCopy2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Can't find time code track (%@)", trackCopy];
        [MEMORY[0x277CCA9B8] populateReaderError:error message:trackCopy2 code:1];

        v144 = 1;
LABEL_159:

        goto LABEL_160;
      }

      assetTrack5 = [v141 assetTrack];
      v143 = assetTrack5 == trackCopy;

      if (v143)
      {
        objc_storeStrong(&v191->_timeCodeOutput, v141);
        -[MOVStreamReaderStreamOutput setHasTimeCode:](v191, "setHasTimeCode:", [v141 hasTimeCode]);
        v144 = 7;
        goto LABEL_159;
      }
    }

    v136 = [getAllTimeCodeStreams countByEnumeratingWithState:&v194 objects:v205 count:16];
    v144 = 0;
    if (v136)
    {
      continue;
    }

    break;
  }

LABEL_160:

  v109 = v144 == 7 || v144 == 0;
LABEL_166:
  v19 = v131;
LABEL_167:

  v131 = v19;
LABEL_168:

  v19 = v131;
LABEL_96:

  v16 = v191;
  if (v109)
  {
LABEL_97:
    v110 = v16;
  }

  else
  {
    v110 = 0;
  }

  return v110;
}

- (void)registerForAssociating:(id)associating trackRelation:(id)relation
{
  v10[2] = *MEMORY[0x277D85DE8];
  associatingCopy = associating;
  relationCopy = relation;
  v8 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:associatingCopy];
  v10[0] = v8;
  v10[1] = relationCopy;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];

  [(NSMutableArray *)self->_associatedOutputs addObject:v9];
}

- (id)verifyStreamId:(id)id ofType:(int64_t)type
{
  idCopy = id;
  v7 = 1;
  for (i = idCopy; ; i = v11)
  {
    reader = [(MOVStreamReaderStreamOutput *)self reader];
    v10 = [reader containsStream:i withMediaType:type];

    if (!v10)
    {
      break;
    }

    v11 = [idCopy stringByAppendingFormat:@"-%zu", v7];

    ++v7;
  }

  return i;
}

- (void)removePixelBufferPadding:(BOOL)padding
{
  paddingCopy = padding;
  postProcessor = [(MOVStreamReaderStreamOutput *)self postProcessor];
  [postProcessor setRemovePadding:paddingCopy];
}

- (BOOL)alwaysCopiesSampleDataForStream
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (!WeakRetained)
  {
    return 0;
  }

  v4 = WeakRetained;
  v5 = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = objc_loadWeakRetained(&self->_delegate);
  reader = [(MOVStreamReaderStreamOutput *)self reader];
  streamId = [(MOVStreamReaderStreamOutput *)self streamId];
  v10 = [v7 reader:reader alwaysCopiesSampleDataForStream:streamId];

  return v10;
}

- (id)timestamps
{
  v3 = [MOVStreamTimestamps alloc];
  assetTrack = [(MOVStreamReaderStreamOutput *)self assetTrack];
  v5 = [(MOVStreamTimestamps *)v3 initWithAssetTrack:assetTrack];

  [(MOVStreamTimestamps *)v5 setShouldStartTimestampsAtZero:[(MOVStreamReaderStreamOutput *)self mediaType]== 2];

  return v5;
}

- (opaqueCMFormatDescription)timeCodeFormatDescription
{
  timeCodeOutput = self->_timeCodeOutput;
  if (!timeCodeOutput)
  {
    return 0;
  }

  assetTrack = [(MOVStreamReaderStreamOutput *)timeCodeOutput assetTrack];
  formatDescriptions = [assetTrack formatDescriptions];
  firstObject = [formatDescriptions firstObject];

  return firstObject;
}

- (id)customTrackMetadata
{
  v20 = *MEMORY[0x277D85DE8];
  assetTrack = [(MOVStreamReaderStreamOutput *)self assetTrack];
  metadata = [assetTrack metadata];

  v3 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = metadata;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        identifier = [v8 identifier];
        if (![identifier rangeOfString:@"mdta/custom."])
        {
          v10 = [identifier stringByReplacingOccurrencesOfString:@"mdta/custom." withString:&stru_2868CF868];
          stringByRemovingPercentEncoding = [v10 stringByRemovingPercentEncoding];

          value = [v8 value];
          [v3 setObject:value forKey:stringByRemovingPercentEncoding];
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  return v3;
}

- (id)customTrackMetadataItems
{
  v26 = *MEMORY[0x277D85DE8];
  assetTrack = [(MOVStreamReaderStreamOutput *)self assetTrack];
  metadata = [assetTrack metadata];

  v20 = objc_opt_new();
  v4 = *MEMORY[0x277CE5FB0];
  v5 = [*MEMORY[0x277CE5FB0] stringByAppendingPathComponent:{*MEMORY[0x277CE5FF0], metadata}];
  v6 = [v4 stringByAppendingPathComponent:*MEMORY[0x277CE5FF8]];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = metadata;
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = *v22;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        identifier = [v11 identifier];
        identifier2 = [v11 identifier];
        v14 = [identifier2 isEqualToString:v5];

        if ((v14 & 1) == 0)
        {
          identifier3 = [v11 identifier];
          v16 = [identifier3 isEqualToString:v6];

          if ((v16 & 1) == 0)
          {
            if ([identifier rangeOfString:@"mdta/custom."])
            {
              v17 = +[MOVStreamIOUtility reservedMIOTrackMetadataKeys];
              v18 = [v17 containsObject:identifier];

              if ((v18 & 1) == 0)
              {
                [v20 addObject:v11];
              }
            }
          }
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }

  return v20;
}

- (id)getAssociatedMetadataStreams
{
  associatedMetadataOutputs = [(MOVStreamReaderStreamOutput *)self associatedMetadataOutputs];
  allKeys = [associatedMetadataOutputs allKeys];
  v4 = [allKeys copy];

  return v4;
}

- (id)getAssociatedMetadataStreamOutputs
{
  associatedMetadataOutputs = [(MOVStreamReaderStreamOutput *)self associatedMetadataOutputs];
  allValues = [associatedMetadataOutputs allValues];

  return allValues;
}

- (id)getAttachmentsOnlyOutputError:(id *)error
{
  pixelBufferAttachmentsOutput = [(MOVStreamReaderStreamOutput *)self pixelBufferAttachmentsOutput];
  if (pixelBufferAttachmentsOutput)
  {
  }

  else
  {
    pixelBufferAttachmentsOutputInitError = [(MOVStreamReaderStreamOutput *)self pixelBufferAttachmentsOutputInitError];

    if (!pixelBufferAttachmentsOutputInitError)
    {
      v9 = MEMORY[0x277CCACA8];
      streamId = [(MOVStreamReaderStreamOutput *)self streamId];
      v11 = [v9 stringWithFormat:@"Attachments-only output was not enabled for stream '%@'.", streamId];

      [MEMORY[0x277CCA9B8] populateReaderError:error message:v11 code:3];
      pixelBufferAttachmentsOutput2 = 0;
      goto LABEL_7;
    }
  }

  if (error)
  {
    *error = [(MOVStreamReaderStreamOutput *)self pixelBufferAttachmentsOutputInitError];
  }

  pixelBufferAttachmentsOutput2 = [(MOVStreamReaderStreamOutput *)self pixelBufferAttachmentsOutput];
LABEL_7:

  return pixelBufferAttachmentsOutput2;
}

- (id)getAssociatedMetadataStreamOutputForMetadataStreamId:(id)id
{
  idCopy = id;
  associatedMetadataOutputs = [(MOVStreamReaderStreamOutput *)self associatedMetadataOutputs];
  v6 = [associatedMetadataOutputs objectForKey:idCopy];

  return v6;
}

- (unsigned)pixelFormatForStream
{
  result = [(MOVStreamReaderStreamOutput *)self originalPixelFormat];
  if (!result)
  {

    return [(MOVStreamReaderStreamOutput *)self determinedPixelFormat];
  }

  return result;
}

- (unsigned)getOutputPixelFormatForStream
{
  postProcessor = [(MOVStreamReaderStreamOutput *)self postProcessor];
  processedPixelFormat = [postProcessor processedPixelFormat];

  if (processedPixelFormat)
  {
    postProcessor2 = [(MOVStreamReaderStreamOutput *)self postProcessor];
    processedPixelFormat2 = [postProcessor2 processedPixelFormat];
  }

  else
  {
    postProcessor2 = [(MOVStreamReaderStreamOutput *)self streamOutput];
    outputSettings = [postProcessor2 outputSettings];
    v9 = [outputSettings objectForKey:*MEMORY[0x277CC4E30]];
    intValue = [v9 intValue];

    if (intValue)
    {
      goto LABEL_5;
    }

    processedPixelFormat2 = [(MOVStreamReaderStreamOutput *)self determinedPixelFormat];
  }

  intValue = processedPixelFormat2;
LABEL_5:

  return intValue;
}

- (void)useDefaultMIOLayerIds
{
  self->_videoLayerIds = [MEMORY[0x277CBEA60] arrayWithObjects:{&unk_2868E3A20, &unk_2868E3A38, 0}];

  MEMORY[0x2821F96F8]();
}

- (BOOL)determineStereoLayerIDs:(id)ds
{
  dsCopy = ds;
  formatDescriptions = [dsCopy formatDescriptions];
  v6 = [formatDescriptions count];

  if (!v6)
  {
    NSLog(&cfstr_NoFormatDescri_0.isa);
    goto LABEL_18;
  }

  formatDescriptions2 = [dsCopy formatDescriptions];
  v8 = [formatDescriptions2 objectAtIndexedSubscript:0];

  Extensions = CMFormatDescriptionGetExtensions(v8);
  if (Extensions)
  {
    Value = CFDictionaryGetValue(Extensions, @"SampleDescriptionExtensionAtoms");
    if (Value)
    {
      if (CFDictionaryGetValue(Value, @"hvcC"))
      {
        if (!FigHEVCBridge_GetNALUnitHeaderLengthFromHVCC())
        {
          theData = 0;
          FigHEVCBridge_CopyHEVCSEIPayloadData();
          FigHEVCBridge_GetHEVCParameterSetAtIndex();
          CFDataGetBytePtr(0);
          CFDataGetLength(0);
          if (!FigHEVCBridge_Get3DLayerIDs())
          {
            v21 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
            v22 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:255];
            [v21 addObject:v22];

            v23 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:255];
            [v21 addObject:v23];

            v24 = [v21 copy];
            videoLayerIds = self->_videoLayerIds;
            self->_videoLayerIds = v24;

            v14 = 1;
            goto LABEL_19;
          }
        }
      }
    }
  }

  theData = 0;
  v11 = CMVideoFormatDescriptionCopyTagCollectionArray(v8, &theData);
  if (v11)
  {
    NSLog(&cfstr_FailedGettingF.isa, v11);
LABEL_18:
    v14 = 0;
    goto LABEL_19;
  }

  if (!theData)
  {
    Count = 0;
    goto LABEL_17;
  }

  Count = CFArrayGetCount(theData);
  if (Count <= 1)
  {
LABEL_17:
    NSLog(&cfstr_FailedGettingM.isa, Count);
    goto LABEL_18;
  }

  v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
  v14 = 0;
  v15 = 0;
  while (1)
  {
    CFArrayGetValueAtIndex(theData, v15);
    TagsWithCategory = FigTagCollectionGetTagsWithCategory();
    if (TagsWithCategory)
    {
      break;
    }

    v17 = [MEMORY[0x277CCABB0] numberWithLongLong:FigTagGetSInt64Value()];
    [v13 addObject:v17];

    v14 = ++v15 >= Count;
    if (Count == v15)
    {
      v18 = [v13 copy];
      v19 = self->_videoLayerIds;
      self->_videoLayerIds = v18;

      goto LABEL_21;
    }
  }

  NSLog(&cfstr_FailedGettingT.isa, TagsWithCategory);
LABEL_21:

LABEL_19:
  return v14;
}

- (BOOL)copyNextStereoFrames:(__CVBuffer *)frames rightBuffer:(__CVBuffer *)buffer timestamp:(id *)timestamp error:(id *)error
{
  if (!frames)
  {
    [MOVStreamReaderStreamOutput copyNextStereoFrames:rightBuffer:timestamp:error:];
  }

  if (!buffer)
  {
    [MOVStreamReaderStreamOutput copyNextStereoFrames:rightBuffer:timestamp:error:];
  }

  v11 = objc_autoreleasePoolPush();
  streamOutput = [(MOVStreamReaderStreamOutput *)self streamOutput];
  copyNextSampleBuffer = [streamOutput copyNextSampleBuffer];

  if (copyNextSampleBuffer)
  {
    v14 = [(MOVStreamReaderStreamOutput *)self stereoFramesFromSampleBuffer:copyNextSampleBuffer outLeft:frames outRight:buffer error:error];
    if (timestamp)
    {
      CMSampleBufferGetPresentationTimeStamp(&v27, copyNextSampleBuffer);
      *timestamp = v27;
    }

    CVPixelBufferRetain(*frames);
    CVPixelBufferRetain(*buffer);
    CFRelease(copyNextSampleBuffer);
    if (v14)
    {
      v15 = [(MOVStreamReaderStreamOutput *)self attachmentsDataForStreamPts:&v27 duration:&v26];
      if ([v15 count])
      {
        v16 = [v15 objectAtIndexedSubscript:0];
        v17 = [(MOVStreamReaderStreamOutput *)self decodeAttachmentsData:v16 error:error];

        postProcessor = [(MOVStreamReaderStreamOutput *)self postProcessor];
        v19 = [postProcessor processedPixelBufferFrom:*frames metadata:v17 error:error];

        CVPixelBufferRelease(*frames);
        if (v17)
        {
          CVBufferSetAttachments(v19, v17, kCVAttachmentMode_ShouldPropagate);
        }

        *frames = v19;
      }

      if ([v15 count] >= 2)
      {
        v20 = [v15 objectAtIndexedSubscript:1];
        v21 = [(MOVStreamReaderStreamOutput *)self decodeAttachmentsData:v20 error:error];

        postProcessor2 = [(MOVStreamReaderStreamOutput *)self postProcessor];
        v23 = [postProcessor2 processedPixelBufferFrom:*buffer metadata:v21 error:error];

        CVPixelBufferRelease(*buffer);
        if (v21)
        {
          CVBufferSetAttachments(v23, v21, kCVAttachmentMode_ShouldPropagate);
        }

        *buffer = v23;
      }

      v24 = 1;
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    [(MOVStreamReaderStreamOutput *)self setEndOfStreamReached:1];
    if (error)
    {
      *error = 0;
    }

    v24 = 0;
    *frames = 0;
    *buffer = 0;
  }

  objc_autoreleasePoolPop(v11);
  return !copyNextSampleBuffer || v24;
}

- (BOOL)stereoFramesFromSampleBuffer:(opaqueCMSampleBuffer *)buffer outLeft:(__CVBuffer *)left outRight:(__CVBuffer *)right error:(id *)error
{
  TaggedBufferGroup = FigSampleBufferGetTaggedBufferGroup();
  if (!TaggedBufferGroup)
  {
    v21 = MEMORY[0x277CCA9B8];
    v22 = @"No tagged buffer group in sample buffer.";
LABEL_18:
    [v21 populateReaderError:error message:v22 code:29];
    return 0;
  }

  v11 = TaggedBufferGroup;
  if ([(NSArray *)self->_videoLayerIds count]<= 1)
  {
    [MOVStreamReaderStreamOutput stereoFramesFromSampleBuffer:outLeft:outRight:error:];
  }

  v12 = [(NSArray *)self->_videoLayerIds objectAtIndexedSubscript:0];
  intValue = [v12 intValue];

  v14 = [(NSArray *)self->_videoLayerIds objectAtIndexedSubscript:1];
  intValue2 = [v14 intValue];

  if (MEMORY[0x259C68050](v11) >= 1)
  {
    v16 = 0;
    while (1)
    {
      MEMORY[0x259C68060](v11, v16);
      TagsWithCategory = FigTagCollectionGetTagsWithCategory();
      if (TagsWithCategory)
      {
        v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed getting video layer tag. Error %d", TagsWithCategory, 0];
        [MEMORY[0x277CCA9B8] populateReaderError:error message:v23 code:29];

        return 0;
      }

      SInt64Value = FigTagGetSInt64Value();
      CVPixelBufferAtIndex = FigTaggedBufferGroupGetCVPixelBufferAtIndex();
      if (!CVPixelBufferAtIndex)
      {
        break;
      }

      if (intValue == SInt64Value)
      {
        *left = CVPixelBufferAtIndex;
      }

      else if (intValue2 == SInt64Value)
      {
        *right = CVPixelBufferAtIndex;
      }

      else
      {
        NSLog(&cfstr_UnknownVideola.isa, SInt64Value, 0);
      }

      if (++v16 >= MEMORY[0x259C68050](v11))
      {
        goto LABEL_13;
      }
    }

    v21 = MEMORY[0x277CCA9B8];
    v22 = @"No pixel buffer for video layer.";
    goto LABEL_18;
  }

LABEL_13:
  if (*left)
  {
    return *right != 0;
  }

  return 0;
}

- (__CVBuffer)copyNextFrameForStreamTimestamp:(id *)timestamp readTimeCode:(BOOL)code timeCode:(CVSMPTETime *)timeCode tcDropFrame:(BOOL *)frame error:(id *)error
{
  v27 = *MEMORY[0x277CC0890];
  v28 = *(MEMORY[0x277CC0890] + 16);
  v29 = 0;
  v26 = 0;
  v12 = [(MOVStreamReaderStreamOutput *)self nextSampleBufferForStreamAttachmentsData:&v26 readTimeCode:code timecodeSampleBuffer:&v29 timestamp:&v27 error:?];
  v13 = v26;
  if (timestamp)
  {
    *&timestamp->var0 = v27;
    timestamp->var3 = v28;
  }

  if (v12 && (v14 = [(MOVStreamReaderStreamOutput *)self getPixelBufferFromSampleBuffer:v12 error:error]) != 0)
  {
    v15 = [(MOVStreamReaderStreamOutput *)self decodeAttachmentsData:v13 error:error];
    postProcessor = [(MOVStreamReaderStreamOutput *)self postProcessor];
    v17 = [postProcessor processedPixelBufferFrom:v14 metadata:v15 error:error];

    CVPixelBufferRelease(v14);
    if (v15)
    {
      if ([(MOVStreamReaderStreamOutput *)self decodePixelFormatOverridden])
      {
        v18 = [(MOVStreamReaderStreamOutput *)self removeColorAttachments:v15];

        v15 = v18;
      }

      CVBufferSetAttachments(v17, v15, kCVAttachmentMode_ShouldPropagate);
    }

    [(MOVStreamReaderStreamOutput *)self addTestPatternIfRequired:v17];
    if (timeCode)
    {
      if (v29)
      {
        [MOVStreamIOUtility timecode32ForSampleBuffer:v29 dropFrame:frame];
        *&timeCode->subframes = v24;
        *&timeCode->hours = v25;
      }

      else
      {
        timeCodeOutput = self->_timeCodeOutput;
        if (timeCodeOutput)
        {
          synthesizedTimeCodes = [(MOVStreamReaderStreamOutput *)timeCodeOutput synthesizedTimeCodes];
          v21 = [MEMORY[0x277CCAE60] value:&v27 withObjCType:"{?=qiIq}"];
          v22 = [synthesizedTimeCodes objectForKey:v21];

          if (v22)
          {
            [v22 getValue:timeCode];
            if (frame)
            {
              *frame = [(MOVStreamReaderStreamOutput *)self->_timeCodeOutput synthesizedTimeCodeIsDropFrame];
            }
          }
        }
      }
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (__CVBuffer)nextPixelBufferForStreamAttachmentsData:(id *)data timestamp:(id *)timestamp error:(id *)error
{
  v7 = [(MOVStreamReaderStreamOutput *)self nextSampleBufferForStreamAttachmentsData:data timestamp:timestamp error:?];
  if (!v7)
  {
    return 0;
  }

  v8 = [(MOVStreamReaderStreamOutput *)self getPixelBufferFromSampleBuffer:v7 error:error];
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  postProcessor = [(MOVStreamReaderStreamOutput *)self postProcessor];
  v11 = [postProcessor processedPixelBufferFrom:v9 metadata:0 error:error];

  CVPixelBufferRelease(v9);
  [(MOVStreamReaderStreamOutput *)self addTestPatternIfRequired:v11];
  return v11;
}

- (__CVBuffer)getPixelBufferFromSampleBuffer:(opaqueCMSampleBuffer *)buffer error:(id *)error
{
  decoderController = [(MOVStreamReaderStreamOutput *)self decoderController];

  if (decoderController)
  {
    decoderController2 = [(MOVStreamReaderStreamOutput *)self decoderController];
    v9 = [decoderController2 decodeFrame:buffer pts:0 error:error];
  }

  else
  {
    ImageBuffer = CMSampleBufferGetImageBuffer(buffer);
    v9 = ImageBuffer;
    if (ImageBuffer)
    {
      CVPixelBufferRetain(ImageBuffer);
    }

    else
    {
      [MEMORY[0x277CCA9B8] populateReaderError:error message:@"CMSampleBufferGetImageBuffer returned nil." code:0];
    }
  }

  CFRelease(buffer);
  return v9;
}

- (BOOL)addTestPatternIfRequired:(__CVBuffer *)required
{
  v23 = *MEMORY[0x277D85DE8];
  testPatternRenderer = [(MOVStreamReaderStreamOutput *)self testPatternRenderer];

  if (!testPatternRenderer)
  {
    return 1;
  }

  testPatternRenderer2 = [(MOVStreamReaderStreamOutput *)self testPatternRenderer];
  v7 = [testPatternRenderer2 renderToPixelBuffer:required];

  if (v7)
  {
    return 1;
  }

  v9 = MEMORY[0x277CCACA8];
  streamId = [(MOVStreamReaderStreamOutput *)self streamId];
  v11 = [v9 stringWithFormat:@"Unable to render test pattern. Stream: %@", streamId];

  v12 = +[MIOLog defaultLog];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v22 = v11;
    _os_log_impl(&dword_257883000, v12, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  reader = [(MOVStreamReaderStreamOutput *)self reader];
  delegate = [reader delegate];
  if (!delegate)
  {
    goto LABEL_9;
  }

  reader2 = [(MOVStreamReaderStreamOutput *)self reader];
  delegate2 = [reader2 delegate];
  v17 = objc_opt_respondsToSelector();

  if (v17)
  {
    reader = [MEMORY[0x277CCA9B8] readerWarningWithMessage:v11 code:0];
    reader3 = [(MOVStreamReaderStreamOutput *)self reader];
    delegate3 = [reader3 delegate];
    reader4 = [(MOVStreamReaderStreamOutput *)self reader];
    [delegate3 reader:reader4 didReceiveWarning:reader];

LABEL_9:
  }

  return 0;
}

- (opaqueCMSampleBuffer)nextSampleBufferForStreamAttachmentsData:(id *)data readTimeCode:(BOOL)code timecodeSampleBuffer:(opaqueCMSampleBuffer *)buffer timestamp:(id *)timestamp error:(id *)error
{
  v11 = 0;
  v8 = [(MOVStreamReaderStreamOutput *)self nextSampleBufferForStreamAttachmentsDataArray:&v11 readTimeCode:code timecodeSampleBuffer:buffer timestamp:timestamp error:error];
  v9 = v11;
  if ([v9 count])
  {
    *data = [v9 objectAtIndexedSubscript:0];
  }

  return v8;
}

- (opaqueCMSampleBuffer)nextSampleBufferForStreamAttachmentsDataArray:(id *)array readTimeCode:(BOOL)code timecodeSampleBuffer:(opaqueCMSampleBuffer *)buffer timestamp:(id *)timestamp error:(id *)error
{
  v66 = *MEMORY[0x277D85DE8];
  if (self->_mediaType != 4)
  {
    codeCopy = code;
    v13 = MEMORY[0x277CC0890];
    if (timestamp)
    {
      v14 = *MEMORY[0x277CC0890];
      timestamp->var3 = *(MEMORY[0x277CC0890] + 16);
      *&timestamp->var0 = v14;
    }

    streamOutput = [(MOVStreamReaderStreamOutput *)self streamOutput];
    copyNextSampleBuffer = [streamOutput copyNextSampleBuffer];

    decoderController = [(MOVStreamReaderStreamOutput *)self decoderController];

    if (decoderController)
    {
      do
      {
        if (CMSampleBufferGetNumSamples(copyNextSampleBuffer) > 0)
        {
          break;
        }

        CFRelease(copyNextSampleBuffer);
        streamOutput2 = [(MOVStreamReaderStreamOutput *)self streamOutput];
        copyNextSampleBuffer = [streamOutput2 copyNextSampleBuffer];
      }

      while (copyNextSampleBuffer);
    }

    if (![(MOVStreamReaderStreamOutput *)self firstVideoFrameRead])
    {
      [(MOVStreamReaderStreamOutput *)self setFirstVideoFrameRead:1];
      v18 = 0;
      if (self->_mediaType || !copyNextSampleBuffer)
      {
        goto LABEL_18;
      }

      if ([(MOVStreamReaderStreamOutput *)self isEmptySample:copyNextSampleBuffer])
      {
        v25 = +[MIOLog defaultLog];
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          streamId = self->_streamId;
          *buf = 138543362;
          *&buf[4] = streamId;
          _os_log_impl(&dword_257883000, v25, OS_LOG_TYPE_INFO, "Empty Edit frame detected for stream '%{public}@'.", buf, 0xCu);
        }

        reader = [(MOVStreamReaderStreamOutput *)self reader];
        skipEmptyEditVideoFrame = [reader skipEmptyEditVideoFrame];

        if (!skipEmptyEditVideoFrame)
        {
          v18 = 1;
LABEL_18:
          reader2 = [(MOVStreamReaderStreamOutput *)self reader];
          restrictVideoFramesToEdits = [reader2 restrictVideoFramesToEdits];

          if (copyNextSampleBuffer)
          {
            v21 = restrictVideoFramesToEdits;
          }

          else
          {
            v21 = 0;
          }

          if (v21 == 1)
          {
            do
            {
              if ([(MOVStreamReaderStreamOutput *)self isSampleInEdit:copyNextSampleBuffer])
              {
                break;
              }

              CFRelease(copyNextSampleBuffer);
              streamOutput3 = [(MOVStreamReaderStreamOutput *)self streamOutput];
              copyNextSampleBuffer = [streamOutput3 copyNextSampleBuffer];
            }

            while (copyNextSampleBuffer);
          }

          v23 = [(MOVStreamReaderStreamOutput *)self attachmentsDataForStreamPts:&v62 duration:&v61];
          v60 = *v13;
          if (codeCopy)
          {
            for (i = [(MOVStreamReaderStreamOutput *)self timeCodeBufferForStream:&v60]; i && !CMSampleBufferGetNumSamples(i); i = [(MOVStreamReaderStreamOutput *)self timeCodeBufferForStream:&v60])
            {
              CFRelease(i);
            }
          }

          else
          {
            i = 0;
          }

          if (copyNextSampleBuffer)
          {
            if (CMSampleBufferGetNumSamples(copyNextSampleBuffer))
            {
              v30 = v18;
            }

            else
            {
              v30 = 1;
            }

            if ((v30 & 1) == 0)
            {
              goto LABEL_45;
            }
          }

          else if (!v18)
          {
            goto LABEL_59;
          }

          [(MOVStreamReaderStreamOutput *)self setFutureAttachmentsData:v23];
          *buf = *&v62.value;
          *&v64 = v62.epoch;
          [(MOVStreamReaderStreamOutput *)self setFutureAttachmentsPts:buf];
          *buf = *&v61.value;
          *&v64 = v61.epoch;
          [(MOVStreamReaderStreamOutput *)self setFutureAttachmentsDuration:buf];
          *buf = *&v60.value;
          *&v64 = v60.epoch;
          [(MOVStreamReaderStreamOutput *)self setFutureTimeCodePts:buf];
          [(MOVStreamReaderStreamOutput *)self setFutureTimeCodeBuffer:i];

          i = 0;
          v23 = 0;
          if (copyNextSampleBuffer)
          {
LABEL_45:
            memset(&v59, 0, sizeof(v59));
            CMSampleBufferGetPresentationTimeStamp(&v59, copyNextSampleBuffer);
            if (timestamp)
            {
              *timestamp = v59;
            }

            assetTrack = [(MOVStreamReaderStreamOutput *)self assetTrack];
            [assetTrack nominalFrameRate];
            v33 = v32;

            v34 = 1.0 / v33 * 0.25;
            if (v23)
            {
              v35 = MEMORY[0x277CC08F8];
              do
              {
                *buf = *&v59.value;
                *&v64 = v59.epoch;
                Seconds = CMTimeGetSeconds(buf);
                *buf = *&v62.value;
                *&v64 = v62.epoch;
                if (vabdd_f64(Seconds, CMTimeGetSeconds(buf)) <= v34)
                {
                  break;
                }

                *buf = *&v59.value;
                *&v64 = v59.epoch;
                time2 = v62;
                if (CMTimeCompare(buf, &time2) < 0)
                {
                  [(MOVStreamReaderStreamOutput *)self setFutureAttachmentsData:v23];
                  *buf = *&v62.value;
                  *&v64 = v62.epoch;
                  [(MOVStreamReaderStreamOutput *)self setFutureAttachmentsPts:buf];
                  *buf = *&v61.value;
                  *&v64 = v61.epoch;
                  [(MOVStreamReaderStreamOutput *)self setFutureAttachmentsDuration:buf];

                  v23 = 0;
                  break;
                }

                memset(&time2, 0, sizeof(time2));
                *buf = *&v62.value;
                *&v64 = v62.epoch;
                [(MOVStreamReaderStreamOutput *)self frameDuration];
                CMTimeAdd(&time2, buf, &rhs);
                *buf = *&v59.value;
                *&v64 = v59.epoch;
                rhs = time2;
                if (CMTimeCompare(buf, &rhs) < 0)
                {
                  break;
                }

                assetReader = [(MOVStreamReaderStreamOutput *)self assetReader];
                v38 = assetReader;
                if (assetReader)
                {
                  [assetReader timeRange];
                }

                else
                {
                  v64 = 0u;
                  v65 = 0u;
                  *buf = 0u;
                }

                *&rhs.value = *buf;
                rhs.epoch = v64;
                v56 = *v35;
                v39 = CMTimeCompare(&rhs, &v56) == 0;

                if (!v39)
                {
                  rhs = v62;
                  v56 = v61;
                  CMTimeAdd(buf, &rhs, &v56);
                  *&time2.value = *buf;
                  v40 = *buf;
                  time2.epoch = v64;
                  v41 = v64;
                  *buf = *&v59.value;
                  *&v64 = v59.epoch;
                  *&rhs.value = v40;
                  rhs.epoch = v41;
                  if (CMTimeCompare(buf, &rhs) < 0)
                  {
                    break;
                  }
                }

                v42 = [(MOVStreamReaderStreamOutput *)self attachmentsDataForStreamPts:&v62 duration:&v61];

                v23 = v42;
              }

              while (v42);
            }

            while (i)
            {
              *buf = *&v59.value;
              *&v64 = v59.epoch;
              v51 = CMTimeGetSeconds(buf);
              *buf = *&v60.value;
              *&v64 = v60.epoch;
              if (vabdd_f64(v51, CMTimeGetSeconds(buf)) <= v34)
              {
                break;
              }

              *buf = *&v59.value;
              *&v64 = v59.epoch;
              time2 = v60;
              if (CMTimeCompare(buf, &time2) < 0)
              {
                [(MOVStreamReaderStreamOutput *)self setFutureTimeCodeBuffer:i];
                *buf = *&v60.value;
                *&v64 = v60.epoch;
                [(MOVStreamReaderStreamOutput *)self setFutureTimeCodePts:buf];
                i = 0;
                break;
              }

              memset(buf, 0, sizeof(buf));
              *&v64 = 0;
              time2 = v60;
              [(MOVStreamReaderStreamOutput *)self frameDuration];
              CMTimeAdd(buf, &time2, &rhs);
              time2 = v59;
              *&rhs.value = *buf;
              rhs.epoch = v64;
              if (CMTimeCompare(&time2, &rhs) < 0)
              {
                break;
              }

              i = [(MOVStreamReaderStreamOutput *)self timeCodeBufferForStream:&v60];
            }

            if (array)
            {
              v52 = v23;
              *array = v23;
            }

            if (buffer)
            {
              *buffer = i;
            }

            goto LABEL_79;
          }

LABEL_59:
          assetReader2 = [(MOVStreamReaderStreamOutput *)self assetReader];
          v44 = [assetReader2 status] == 3;

          if (v44)
          {
            assetReader3 = [(MOVStreamReaderStreamOutput *)self assetReader];
            error = [assetReader3 error];
            if (!error)
            {
              __assert_rtn("[MOVStreamReaderStreamOutput nextSampleBufferForStreamAttachmentsDataArray:readTimeCode:timecodeSampleBuffer:timestamp:error:]", "MOVStreamReaderStreamOutput.mm", 1819, "self.assetReader.error != nil");
            }

            if (error)
            {
              assetReader4 = [(MOVStreamReaderStreamOutput *)self assetReader];
              error2 = [assetReader4 error];
              *error = [error2 copy];
            }
          }

          else
          {
            [(MOVStreamReaderStreamOutput *)self setEndOfStreamReached:1];
            pixelBufferAttachmentsOutput = [(MOVStreamReaderStreamOutput *)self pixelBufferAttachmentsOutput];
            [pixelBufferAttachmentsOutput finish];

            while (v23 | i)
            {
              v50 = [(MOVStreamReaderStreamOutput *)self attachmentsDataForStreamPts:0 duration:0];

              v23 = v50;
              i = [(MOVStreamReaderStreamOutput *)self timeCodeBufferForStream:0];
            }

            v23 = 0;
          }

          copyNextSampleBuffer = 0;
LABEL_79:

          return copyNextSampleBuffer;
        }

        CFRelease(copyNextSampleBuffer);
        streamOutput4 = [(MOVStreamReaderStreamOutput *)self streamOutput];
        copyNextSampleBuffer = [streamOutput4 copyNextSampleBuffer];
      }
    }

    v18 = 0;
    goto LABEL_18;
  }

  code = [(MOVStreamReaderStreamOutput *)self timeCodeBufferForStream:timestamp, code];
  if (code)
  {
    copyNextSampleBuffer = code;
    while (!CMSampleBufferGetTotalSampleSize(copyNextSampleBuffer))
    {
      copyNextSampleBuffer = [(MOVStreamReaderStreamOutput *)self timeCodeBufferForStream:timestamp];
      if (!copyNextSampleBuffer)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    [(MOVStreamReaderStreamOutput *)self setEndOfStreamReached:1];
    copyNextSampleBuffer = 0;
  }

  if (array)
  {
    *array = 0;
  }

  if (buffer)
  {
    *buffer = 0;
  }

  return copyNextSampleBuffer;
}

- (opaqueCMSampleBuffer)timeCodeBufferForStream:(id *)stream
{
  selfCopy = self;
  if (stream)
  {
    v5 = *MEMORY[0x277CC0890];
    stream->var3 = *(MEMORY[0x277CC0890] + 16);
    *&stream->var0 = v5;
    if ([(MOVStreamReaderStreamOutput *)self futureTimeCodeBuffer])
    {
      [(MOVStreamReaderStreamOutput *)selfCopy futureTimeCodePts];
      *stream = v11;
LABEL_5:
      futureTimeCodeBuffer = [(MOVStreamReaderStreamOutput *)selfCopy futureTimeCodeBuffer];
      [(MOVStreamReaderStreamOutput *)selfCopy setFutureTimeCodeBuffer:0];
      return futureTimeCodeBuffer;
    }
  }

  else if ([(MOVStreamReaderStreamOutput *)self futureTimeCodeBuffer])
  {
    goto LABEL_5;
  }

  if ([(MOVStreamReaderStreamOutput *)selfCopy mediaType]!= 4)
  {
    selfCopy = selfCopy->_timeCodeOutput;
  }

  streamOutput = [(MOVStreamReaderStreamOutput *)selfCopy streamOutput];
  v8 = streamOutput;
  if (streamOutput)
  {
    copyNextSampleBuffer = [streamOutput copyNextSampleBuffer];
    futureTimeCodeBuffer = copyNextSampleBuffer;
    if (stream && copyNextSampleBuffer)
    {
      CMSampleBufferGetPresentationTimeStamp(&v11, copyNextSampleBuffer);
      *stream = v11;
    }
  }

  else
  {
    futureTimeCodeBuffer = 0;
  }

  return futureTimeCodeBuffer;
}

- (id)attachmentsDataForStreamPts:(id *)pts duration:(id *)duration
{
  v37 = *MEMORY[0x277D85DE8];
  if (pts)
  {
    v7 = *MEMORY[0x277CC0890];
    pts->var3 = *(MEMORY[0x277CC0890] + 16);
    *&pts->var0 = v7;
  }

  futureAttachmentsData = [(MOVStreamReaderStreamOutput *)self futureAttachmentsData];

  if (futureAttachmentsData)
  {
    if (pts)
    {
      [(MOVStreamReaderStreamOutput *)self futureAttachmentsPts];
      *&pts->var0 = v30;
      pts->var3 = *&v31[0];
    }

    if (duration)
    {
      [(MOVStreamReaderStreamOutput *)self futureAttachmentsDuration];
      *&duration->var0 = v30;
      duration->var3 = *&v31[0];
    }

    futureAttachmentsData2 = [(MOVStreamReaderStreamOutput *)self futureAttachmentsData];
    [(MOVStreamReaderStreamOutput *)self setFutureAttachmentsData:0];
  }

  else
  {
    attachmentsAdaptor = [(MOVStreamReaderStreamOutput *)self attachmentsAdaptor];
    v11 = attachmentsAdaptor;
    if (attachmentsAdaptor)
    {
      nextTimedMetadataGroup = [attachmentsAdaptor nextTimedMetadataGroup];
      items = [nextTimedMetadataGroup items];
      v14 = [items count];

      if (v14)
      {
        if (pts)
        {
          if (nextTimedMetadataGroup)
          {
            [nextTimedMetadataGroup timeRange];
          }

          else
          {
            memset(v31, 0, sizeof(v31));
            v30 = 0u;
          }

          *&pts->var0 = v30;
          pts->var3 = *&v31[0];
        }

        if (duration)
        {
          if (nextTimedMetadataGroup)
          {
            [nextTimedMetadataGroup timeRange];
          }

          else
          {
            memset(v31, 0, sizeof(v31));
            v30 = 0u;
          }

          *&duration->var0 = *(v31 + 8);
          duration->var3 = *(&v31[1] + 1);
        }

        futureAttachmentsData2 = objc_opt_new();
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        items2 = [nextTimedMetadataGroup items];
        v20 = [items2 countByEnumeratingWithState:&v26 objects:v36 count:16];
        if (v20)
        {
          v21 = *v27;
          do
          {
            for (i = 0; i != v20; ++i)
            {
              if (*v27 != v21)
              {
                objc_enumerationMutation(items2);
              }

              value = [*(*(&v26 + 1) + 8 * i) value];
              if (value)
              {
                [futureAttachmentsData2 addObject:value];
              }
            }

            v20 = [items2 countByEnumeratingWithState:&v26 objects:v36 count:16];
          }

          while (v20);
        }
      }

      else
      {

        futureAttachmentsData2 = 0;
      }
    }

    else
    {
      seiTrackReader = [(MOVStreamReaderStreamOutput *)self seiTrackReader];
      v25 = 0;
      futureAttachmentsData2 = [seiTrackReader copyNextSEIPts:&v30 deserialize:0 error:&v25];
      v16 = v25;

      if (v16)
      {
        v17 = +[MIOLog defaultLog];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          streamId = [(MOVStreamReaderStreamOutput *)self streamId];
          *buf = 138543618;
          v33 = streamId;
          v34 = 2114;
          v35 = v16;
          _os_log_impl(&dword_257883000, v17, OS_LOG_TYPE_ERROR, "Error reading SEI for %{public}@: %{public}@", buf, 0x16u);
        }

        futureAttachmentsData2 = 0;
      }

      else if (pts && futureAttachmentsData2)
      {
        *&pts->var0 = v30;
        pts->var3 = *&v31[0];
      }
    }
  }

  return futureAttachmentsData2;
}

- (id)nextAttachmentWithError:(id *)error
{
  attachmentsAdaptor = [(MOVStreamReaderStreamOutput *)self attachmentsAdaptor];
  v6 = attachmentsAdaptor;
  if (attachmentsAdaptor)
  {
    nextTimedMetadataGroup = [attachmentsAdaptor nextTimedMetadataGroup];
    items = [nextTimedMetadataGroup items];
    firstObject = [items firstObject];

    if (firstObject)
    {
      value = [firstObject value];
      v11 = [(MOVStreamReaderStreamOutput *)self decodeAttachmentsData:value error:error];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)decodeAttachmentsData:(id)data error:(id *)error
{
  v40 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  if (!dataCopy)
  {
    v8 = 0;
    goto LABEL_20;
  }

  v35 = 0;
  attachmentSerializationMode = [(MOVStreamReaderStreamOutput *)self attachmentSerializationMode];
  if (!attachmentSerializationMode)
  {
    v32 = 0;
    v8 = [MEMORY[0x277CCAAA0] JSONObjectWithData:dataCopy options:1 error:&v32];
    v17 = v32;
    if (!v17)
    {
      goto LABEL_20;
    }

    v18 = v17;
    v31 = 0;
    v19 = [MEMORY[0x277CCAC58] propertyListWithData:dataCopy options:0 format:&v35 error:&v31];
    v11 = v31;

    v20 = MEMORY[0x277CCACA8];
    streamId = [(MOVStreamReaderStreamOutput *)self streamId];
    v22 = [v20 stringWithFormat:@"Wrong attachments serialization mode JSON for stream '%@' (fallback to PLIST).", streamId];

    v23 = +[MIOLog defaultLog];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v39 = v22;
      _os_log_impl(&dword_257883000, v23, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
    }

    [(MOVStreamReaderStreamOutput *)self setAttachmentSerializationMode:1];
    v9 = v19;

    v8 = v9;
    goto LABEL_19;
  }

  if (attachmentSerializationMode != 1)
  {
    if (attachmentSerializationMode == 2)
    {
      v36 = @"RawAttachmentData";
      v37 = dataCopy;
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
      goto LABEL_20;
    }

    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown AttachmentSerializationMode = %d for frame metadata!", -[MOVStreamReaderStreamOutput attachmentSerializationMode](self, "attachmentSerializationMode")];
    v9 = +[MIOLog defaultLog];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v39 = v11;
      _os_log_impl(&dword_257883000, v9, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
    }

    v8 = 0;
    goto LABEL_19;
  }

  v34 = 0;
  v9 = [MEMORY[0x277CCAC58] propertyListWithData:dataCopy options:0 format:&v35 error:&v34];
  v10 = v34;
  if (v10)
  {
    v11 = v10;
    v33 = 0;
    v8 = [MEMORY[0x277CCAAA0] JSONObjectWithData:dataCopy options:1 error:&v33];
    v12 = v33;
    v13 = MEMORY[0x277CCACA8];
    if (v8)
    {
      streamId2 = [(MOVStreamReaderStreamOutput *)self streamId];
      v15 = [v13 stringWithFormat:@"Wrong attachments serialization mode PLIST for stream '%@' (fallback to JSON).", streamId2];

      v16 = +[MIOLog defaultLog];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v39 = v15;
        _os_log_impl(&dword_257883000, v16, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
      }

      [(MOVStreamReaderStreamOutput *)self setAttachmentSerializationMode:0];
    }

    else
    {
      localizedDescription = [v11 localizedDescription];
      v26 = [v13 stringWithFormat:@"Metadata PLIST Read error: %@", localizedDescription];

      [MEMORY[0x277CCA9B8] populateReaderError:error message:v26 code:8];
      v27 = MEMORY[0x277CCACA8];
      streamId3 = [(MOVStreamReaderStreamOutput *)self streamId];
      v29 = [v27 stringWithFormat:@"No matching serialization mode for stream '%@' (fallback to RAW).", streamId3];

      v30 = +[MIOLog defaultLog];
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v39 = v29;
        _os_log_impl(&dword_257883000, v30, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
      }

      [(MOVStreamReaderStreamOutput *)self setAttachmentSerializationMode:2];
      v8 = [(MOVStreamReaderStreamOutput *)self decodeAttachmentsData:dataCopy error:0];
    }

LABEL_19:

    goto LABEL_20;
  }

  v8 = v9;
LABEL_20:

  return v8;
}

- (opaqueCMSampleBuffer)grabNextSampleBufferForStreamTimestamp:(id *)timestamp error:(id *)error
{
  v10 = 0;
  v6 = [(MOVStreamReaderStreamOutput *)self nextSampleBufferForStreamAttachmentsData:&v10 timestamp:timestamp error:error];
  v7 = v10;
  if (v6)
  {
    v8 = [(MOVStreamReaderStreamOutput *)self decodeAttachmentsData:v7 error:error];
    if (v8)
    {
      CMSetAttachments(v6, v8, 1u);
    }
  }

  return v6;
}

- (id)grabNextMetadataItemsTimeRange:(id *)range error:(id *)error
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = [(MOVStreamReaderStreamOutput *)self grabNextTimedMetadataGroupOfStreamError:error];
  v6 = v5;
  if (v5)
  {
    v7 = MEMORY[0x277CBEB18];
    items = [v5 items];
    v9 = [v7 arrayWithCapacity:{objc_msgSend(items, "count")}];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    items2 = [v6 items];
    v11 = [items2 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v11)
    {
      v12 = *v19;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(items2);
          }

          [v9 addObject:*(*(&v18 + 1) + 8 * i)];
        }

        v11 = [items2 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v11);
    }

    if (range)
    {
      [v6 timeRange];
      *&range->var0.var0 = v15;
      *&range->var0.var3 = v16;
      *&range->var1.var1 = v17;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)grabNextMetadataItemsOfTrackAssociatedWithStreamWithIdentifier:(id)identifier timeRange:(id *)range error:(id *)error
{
  identifierCopy = identifier;
  associatedMetadataOutputs = [(MOVStreamReaderStreamOutput *)self associatedMetadataOutputs];
  v10 = [associatedMetadataOutputs objectForKey:identifierCopy];

  if (v10)
  {
    v11 = [v10 grabNextMetadataItemsTimeRange:range error:error];
  }

  else
  {
    identifierCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"No associated metadata stream found with identifier '%@'.", identifierCopy];
    [MEMORY[0x277CCA9B8] populateReaderError:error message:identifierCopy code:7];

    v11 = 0;
  }

  return v11;
}

- (id)grabNextTimedMetadataGroupOfStreamError:(id *)error
{
  metadataTrackMetadataAdaptor = [(MOVStreamReaderStreamOutput *)self metadataTrackMetadataAdaptor];
  v6 = metadataTrackMetadataAdaptor;
  if (!metadataTrackMetadataAdaptor)
  {
    v14 = MEMORY[0x277CCACA8];
    streamId = [(MOVStreamReaderStreamOutput *)self streamId];
    assetReader3 = [v14 stringWithFormat:@"No AVAssetReaderOutputMetadataAdaptor found for metadata stream: '%@'", streamId];

    [MEMORY[0x277CCA9B8] populateReaderError:error message:assetReader3 code:5];
    nextTimedMetadataGroup = 0;
    goto LABEL_8;
  }

  nextTimedMetadataGroup = [metadataTrackMetadataAdaptor nextTimedMetadataGroup];
  if (nextTimedMetadataGroup)
  {
    goto LABEL_10;
  }

  assetReader = [(MOVStreamReaderStreamOutput *)self assetReader];
  status = [assetReader status];

  if (status == 3)
  {
    assetReader2 = [(MOVStreamReaderStreamOutput *)self assetReader];
    error = [assetReader2 error];
    if (!error)
    {
      __assert_rtn("[MOVStreamReaderStreamOutput grabNextTimedMetadataGroupOfStreamError:]", "MOVStreamReaderStreamOutput.mm", 2191, "self.assetReader.error != nil");
    }

    if (error)
    {
      assetReader3 = [(MOVStreamReaderStreamOutput *)self assetReader];
      error2 = [assetReader3 error];
      *error = [error2 copy];

LABEL_8:
    }
  }

  else
  {
    [(MOVStreamReaderStreamOutput *)self setEndOfStreamReached:1];
  }

LABEL_10:

  return nextTimedMetadataGroup;
}

- (id)grabNextMetadataOfStreamTimeRange:(id *)range error:(id *)error
{
  v45 = *MEMORY[0x277D85DE8];
  if ([(MOVStreamReaderStreamOutput *)self mediaType]!= 2)
  {
    v12 = 0;
    goto LABEL_30;
  }

  rangeCopy = range;
  version = [(MOVStreamReaderStreamOutput *)self version];
  v7 = [version versionedKey:@"mdta/com.apple.metadata_stream_item" modifier:0];

  metadataTrackMetadataAdaptor = [(MOVStreamReaderStreamOutput *)self metadataTrackMetadataAdaptor];
  v35 = metadataTrackMetadataAdaptor;
  if (metadataTrackMetadataAdaptor)
  {
    nextTimedMetadataGroup = [metadataTrackMetadataAdaptor nextTimedMetadataGroup];
    v34 = nextTimedMetadataGroup;
    if (nextTimedMetadataGroup)
    {
      v10 = MEMORY[0x277CBEB18];
      items = [nextTimedMetadataGroup items];
      v12 = [v10 arrayWithCapacity:{objc_msgSend(items, "count")}];

      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      items2 = [v34 items];
      v14 = [items2 countByEnumeratingWithState:&v40 objects:v44 count:16];
      if (v14)
      {
        v15 = *v41;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v41 != v15)
            {
              objc_enumerationMutation(items2);
            }

            v17 = *(*(&v40 + 1) + 8 * i);
            identifier = [v17 identifier];
            v19 = [identifier isEqualToString:v7];

            if (v19 || ([v17 identifier], v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "isEqualToString:", @"mdta/com.apple.rawIMUDict"), v22, v23))
            {
              value = [v17 value];
              v21 = [value copy];
              [v12 addObject:v21];
            }

            else
            {
              value = [v17 value];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                value2 = [v17 value];
                v25 = [value2 copy];
              }

              else
              {
                value2 = [MOVStreamIOUtility getPlistFriendlyCopyOf:value];
                v25 = [MEMORY[0x277CCAC58] dataWithPropertyList:value2 format:200 options:0 error:error];
              }

              v21 = v25;

              if (v21)
              {
                [v12 addObject:v21];
              }
            }
          }

          v14 = [items2 countByEnumeratingWithState:&v40 objects:v44 count:16];
        }

        while (v14);
      }

      if (rangeCopy)
      {
        [v34 timeRange];
        *&rangeCopy->var0.var0 = v37;
        *&rangeCopy->var0.var3 = v38;
        *&rangeCopy->var1.var1 = v39;
      }

      goto LABEL_29;
    }

    assetReader = [(MOVStreamReaderStreamOutput *)self assetReader];
    status = [assetReader status];

    if (status == 3)
    {
      assetReader2 = [(MOVStreamReaderStreamOutput *)self assetReader];
      error = [assetReader2 error];
      if (!error)
      {
        __assert_rtn("[MOVStreamReaderStreamOutput grabNextMetadataOfStreamTimeRange:error:]", "MOVStreamReaderStreamOutput.mm", 2257, "self.assetReader.error != nil");
      }

      if (error)
      {
        assetReader3 = [(MOVStreamReaderStreamOutput *)self assetReader];
        error2 = [assetReader3 error];
        *error = [error2 copy];
      }
    }

    else
    {
      [(MOVStreamReaderStreamOutput *)self setEndOfStreamReached:1];
    }
  }

  v12 = 0;
LABEL_29:

LABEL_30:

  return v12;
}

- (id)removeColorAttachments:(id)attachments
{
  v3 = [attachments mutableCopy];
  [v3 removeObjectForKey:*MEMORY[0x277CC4CC0]];
  [v3 removeObjectForKey:*MEMORY[0x277CC4D10]];
  [v3 removeObjectForKey:*MEMORY[0x277CC4C00]];
  [v3 removeObjectForKey:*MEMORY[0x277CC4B80]];
  [v3 removeObjectForKey:*MEMORY[0x277CC4B88]];
  v4 = [v3 copy];

  return v4;
}

- (BOOL)shouldDiscardStream:(id)stream mediaType:(int64_t)type track:(id)track
{
  streamCopy = stream;
  trackCopy = track;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = objc_loadWeakRetained(&self->_delegate);
    reader = [(MOVStreamReaderStreamOutput *)self reader];
    v14 = [v12 reader:reader shouldDiscardStream:streamCopy mediaType:type track:trackCopy];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)findTimeCodeTrackAssociatedWithTrack:(id)track
{
  v18 = *MEMORY[0x277D85DE8];
  trackCopy = track;
  asset = [trackCopy asset];
  v5 = [asset tracksWithMediaType:*MEMORY[0x277CE5EA0]];

  if ([v5 count])
  {
    v6 = [trackCopy associatedTracksOfType:*MEMORY[0x277CE61A0]];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = *v14;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v13 + 1) + 8 * i);
          if ([v6 containsObject:{v11, v13}])
          {
            v8 = v11;
            goto LABEL_12;
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)findTracksAssociatedWithTimeCodeTrack:(id)track
{
  v22 = *MEMORY[0x277D85DE8];
  trackCopy = track;
  asset = [trackCopy asset];
  tracks = [asset tracks];

  v5 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = tracks;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = *v18;
    v9 = *MEMORY[0x277CE61A0];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [v11 associatedTracksOfType:v9];
        v13 = [v12 containsObject:trackCopy];

        if (v13)
        {
          [v5 addObject:v11];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v14 = [v5 copy];

  return v14;
}

- (BOOL)addAssociatedMetadataTracks:(id)tracks rawSampleAttachmentsIdentifier:(id)identifier trackKindIdentifier:(id)kindIdentifier movVersion:(id)version error:(id *)error
{
  v71 = *MEMORY[0x277D85DE8];
  tracksCopy = tracks;
  kindIdentifierCopy = kindIdentifier;
  versionCopy = version;
  v11 = [identifier componentsSeparatedByString:@"/"];
  v56 = [v11 objectAtIndexedSubscript:1];

  v50 = objc_opt_new();
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  obj = tracksCopy;
  v12 = [obj countByEnumeratingWithState:&v65 objects:v70 count:16];
  if (v12)
  {
    v54 = *v66;
LABEL_3:
    v13 = 0;
    v55 = v12;
    while (1)
    {
      if (*v66 != v54)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v65 + 1) + 8 * v13);
      metadata = [v14 metadata];
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v16 = metadata;
      v17 = [v16 countByEnumeratingWithState:&v61 objects:v69 count:16];
      if (v17)
      {
        v18 = *v62;
LABEL_8:
        v19 = 0;
        while (1)
        {
          if (*v62 != v18)
          {
            objc_enumerationMutation(v16);
          }

          v20 = *(*(&v61 + 1) + 8 * v19);
          identifier = [v20 identifier];
          v22 = [identifier isEqualToString:kindIdentifierCopy];

          if (v22)
          {
            break;
          }

          if (v17 == ++v19)
          {
            v17 = [v16 countByEnumeratingWithState:&v61 objects:v69 count:16];
            if (v17)
            {
              goto LABEL_8;
            }

            goto LABEL_14;
          }
        }

        value = [v20 value];

        v24 = value;
        if (value)
        {
          goto LABEL_17;
        }
      }

      else
      {
LABEL_14:
      }

      v24 = [MOVStreamIOUtility getCustomAssociatedMetadataStreamIdFromTrack:v14];
LABEL_17:
      v58 = v24;
      if ([v24 isEqualToString:v56])
      {
        v25 = [objc_alloc(MEMORY[0x277CE6430]) initWithTrack:v14 outputSettings:0];
        assetReader = [(MOVStreamReaderStreamOutput *)self assetReader];
        v27 = [assetReader canAddOutput:v25];

        if (!v27)
        {
          v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"Can't add metadata track (%@) to the AVAssetReader.", v14];
          v45 = 1;
          [MEMORY[0x277CCA9B8] populateReaderError:error message:v29 code:1];
          goto LABEL_31;
        }

        assetReader2 = [(MOVStreamReaderStreamOutput *)self assetReader];
        [assetReader2 addOutput:v25];

        v29 = [objc_alloc(MEMORY[0x277CE6420]) initWithAssetReaderTrackOutput:v25];
        [(MOVStreamReaderStreamOutput *)self setAttachmentsAdaptor:v29];
        if (![(MOVStreamReaderStreamOutput *)self shouldSetupBufferAttchmentsOutput])
        {
LABEL_28:
          v45 = 3;
          goto LABEL_31;
        }

        v30 = [MIOBufferAttachmentsOutput alloc];
        assetReader3 = [(MOVStreamReaderStreamOutput *)self assetReader];
        v60 = 0;
        v32 = [(MIOBufferAttachmentsOutput *)v30 initWithMetadataTrack:v14 assetReader:assetReader3 error:&v60];
        streamId = v60;
        [(MOVStreamReaderStreamOutput *)self setPixelBufferAttachmentsOutput:v32];

        if (streamId)
        {
          [(MOVStreamReaderStreamOutput *)self setPixelBufferAttachmentsOutputInitError:streamId];
        }
      }

      else
      {
        v34 = [MOVStreamReaderStreamOutput alloc];
        assetReader4 = [(MOVStreamReaderStreamOutput *)self assetReader];
        reader = [(MOVStreamReaderStreamOutput *)self reader];
        reader2 = [(MOVStreamReaderStreamOutput *)self reader];
        delegate = [reader2 delegate];
        v59 = 0;
        v29 = [(MOVStreamReaderStreamOutput *)v34 initWithMetadataTrack:v14 assetReader:assetReader4 version:versionCopy unknownStreamId:v58 reader:reader delegate:delegate error:&v59];
        v25 = v59;

        if (!v25)
        {
          streamId = [(MOVStreamReaderStreamOutput *)v29 streamId];
          [v50 setObject:v29 forKey:streamId];
          v45 = 0;
          goto LABEL_30;
        }

        streamId = [(MOVStreamReaderStreamOutput *)self reader];
        delegate2 = [streamId delegate];
        if (delegate2)
        {
          reader3 = [(MOVStreamReaderStreamOutput *)self reader];
          delegate3 = [reader3 delegate];
          v42 = objc_opt_respondsToSelector();

          if ((v42 & 1) == 0)
          {
            goto LABEL_28;
          }

          streamId = [(MOVStreamReaderStreamOutput *)self reader];
          delegate4 = [streamId delegate];
          reader4 = [(MOVStreamReaderStreamOutput *)self reader];
          [delegate4 reader:reader4 didReceiveWarning:v25];
        }
      }

      v45 = 3;
LABEL_30:

LABEL_31:
      if (v45 != 3 && v45)
      {
        v47 = 0;
        v46 = obj;
        goto LABEL_37;
      }

      if (++v13 == v55)
      {
        v12 = [obj countByEnumeratingWithState:&v65 objects:v70 count:16];
        if (v12)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v46 = [v50 copy];
  [(MOVStreamReaderStreamOutput *)self setAssociatedMetadataOutputs:v46];
  v47 = 1;
LABEL_37:

  return v47;
}

- (BOOL)shouldSetupBufferAttchmentsOutput
{
  delegate = [(MOVStreamReaderStreamOutput *)self delegate];
  if (!delegate)
  {
    return 0;
  }

  v4 = delegate;
  delegate2 = [(MOVStreamReaderStreamOutput *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if ((v6 & 1) == 0)
  {
    return 0;
  }

  delegate3 = [(MOVStreamReaderStreamOutput *)self delegate];
  reader = [(MOVStreamReaderStreamOutput *)self reader];
  streamId = [(MOVStreamReaderStreamOutput *)self streamId];
  v10 = [delegate3 reader:reader requestBufferAttachmentsOutput:streamId mediaType:{-[MOVStreamReaderStreamOutput mediaType](self, "mediaType")}];

  return v10;
}

- (BOOL)isEmptySample:(opaqueCMSampleBuffer *)sample
{
  v24 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  assetTrack = [(MOVStreamReaderStreamOutput *)self assetTrack];
  segments = [assetTrack segments];

  v6 = [segments countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = *v20;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(segments);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        if ([v9 isEmpty])
        {
          memset(&v18, 0, sizeof(v18));
          CMSampleBufferGetPresentationTimeStamp(&v18, sample);
          if (v9)
          {
            [v9 timeMapping];
          }

          else
          {
            v15 = 0u;
            memset(&v16, 0, sizeof(v16));
            v13 = 0u;
            v14 = 0u;
          }

          range = v16;
          v12 = v18;
          if (CMTimeRangeContainsTime(&range, &v12))
          {
            v10 = 1;
            goto LABEL_15;
          }
        }
      }

      v6 = [segments countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_15:

  return v10;
}

- (BOOL)isSampleInEdit:(opaqueCMSampleBuffer *)edit
{
  v24 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  assetTrack = [(MOVStreamReaderStreamOutput *)self assetTrack];
  segments = [assetTrack segments];

  v6 = [segments countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = *v20;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(segments);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        memset(&v18, 0, sizeof(v18));
        CMSampleBufferGetPresentationTimeStamp(&v18, edit);
        if (v9)
        {
          [v9 timeMapping];
        }

        else
        {
          v15 = 0u;
          memset(&v16, 0, sizeof(v16));
          v13 = 0u;
          v14 = 0u;
        }

        range = v16;
        v12 = v18;
        if (CMTimeRangeContainsTime(&range, &v12))
        {
          v10 = 1;
          goto LABEL_14;
        }
      }

      v6 = [segments countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_14:

  return v10;
}

- (id)streamIdFromTrackStreamTypeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (([(__CFString *)identifierCopy isEqualToString:@"Depth"]& 1) != 0)
  {
    v4 = @"FrontDepth";
  }

  else if (([(__CFString *)identifierCopy isEqualToString:@"Color"]& 1) != 0)
  {
    v4 = @"FrontColor";
  }

  else
  {
    if (![(__CFString *)identifierCopy isEqualToString:@"IR"])
    {
      goto LABEL_8;
    }

    v4 = @"FrontIR";
  }

  identifierCopy = v4;
LABEL_8:

  return identifierCopy;
}

- (int)playbackPixelFormatForTrack:(id)track ofStream:(id)stream streamEncodingType:(id)type inputPixelFormat:(unsigned int)format delegate:(id)delegate
{
  v30 = *MEMORY[0x277D85DE8];
  trackCopy = track;
  streamCopy = stream;
  typeCopy = type;
  delegateCopy = delegate;
  if (![typeCopy length])
  {
    MediaSubType = [(MOVStreamReaderStreamOutput *)self playbackPixelFormatForTrack:trackCopy ofStream:streamCopy delegate:delegateCopy];
    goto LABEL_8;
  }

  if (([typeCopy isEqualToString:@"h264"] & 1) != 0 || objc_msgSend(typeCopy, "isEqualToString:", @"HEVC"))
  {
    if ([streamCopy isEqualToString:@"RawBayer"])
    {
      format = 1278226736;
    }

    else
    {
      format = 875704438;
    }

    goto LABEL_9;
  }

  if ([typeCopy isEqualToString:@"slim"])
  {
    processInfo = [MEMORY[0x277CCAC38] processInfo];
    v29 = 0;
    *buf = xmmword_25792F6F0;
    v19 = [processInfo isOperatingSystemAtLeastVersion:buf];

    if (v19)
    {
      formatDescriptions = [trackCopy formatDescriptions];
      v21 = [formatDescriptions objectAtIndexedSubscript:0];

      Extensions = CMFormatDescriptionGetExtensions(v21);
      Value = CFDictionaryGetValue(Extensions, *MEMORY[0x277CC0400]);
      valuePtr = 0;
      CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
      if (valuePtr < 0xA && ((0x381u >> valuePtr) & 1) != 0)
      {
        format = *&a010l010l010l01[4 * valuePtr];
      }

      else
      {
        v24 = +[MIOLog defaultLog];
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          *&buf[4] = valuePtr;
          _os_log_impl(&dword_257883000, v24, OS_LOG_TYPE_ERROR, "Got a Depth/IR stream which uses unknown version of SLIM (%d)", buf, 8u);
        }

        format = -1;
      }
    }

    else
    {
      format = 2037741158;
    }

    goto LABEL_9;
  }

  if (([typeCopy isEqualToString:@"HEVCMonochrome"] & 1) == 0 && !objc_msgSend(typeCopy, "isEqualToString:", @"HEVCMonochrom"))
  {
    format = 875704438;
    if (![typeCopy isEqualToString:@"none"])
    {
      goto LABEL_9;
    }

    formatDescriptions2 = [trackCopy formatDescriptions];
    v26 = [formatDescriptions2 objectAtIndexedSubscript:0];

    if (!v26)
    {
      goto LABEL_9;
    }

    MediaSubType = CMFormatDescriptionGetMediaSubType(v26);
LABEL_8:
    format = MediaSubType;
    goto LABEL_9;
  }

  if (format != 875704422 && format != 875704438 && format != 1278226488)
  {
    format = 1278226736;
  }

LABEL_9:

  return format;
}

- (BOOL)formatDescriptionOfTrack:(id)track containsKey:(id)key
{
  v23 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  formatDescriptions = [track formatDescriptions];
  v7 = [formatDescriptions objectAtIndexedSubscript:0];

  [(__CFDictionary *)CMFormatDescriptionGetExtensions(v7) objectForKeyedSubscript:@"MetadataKeyTable"];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v17 = v19 = 0u;
  allValues = [v17 allValues];
  v9 = [allValues countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = *v19;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(allValues);
        }

        v12 = [*(*(&v18 + 1) + 8 * i) objectForKeyedSubscript:@"MetadataKeyValue"];
        v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v12 encoding:4];
        v14 = [v13 isEqualToString:keyCopy];

        if (v14)
        {
          v15 = 1;
          goto LABEL_11;
        }
      }

      v9 = [allValues countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_11:

  return v15;
}

- (BOOL)formatDescriptionOfTrack:(id)track containsKeyFromIndentifier:(id)indentifier
{
  trackCopy = track;
  v7 = [indentifier componentsSeparatedByString:@"/"];
  if ([v7 count] == 2)
  {
    lastObject = [v7 lastObject];
    v9 = [(MOVStreamReaderStreamOutput *)self formatDescriptionOfTrack:trackCopy containsKey:lastObject];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (int)playbackPixelFormatForTrack:(id)track ofStream:(id)stream delegate:(id)delegate
{
  v35 = *MEMORY[0x277D85DE8];
  trackCopy = track;
  streamCopy = stream;
  delegateCopy = delegate;
  v11 = 875704438;
  if ([streamCopy isEqualToString:@"FrontColor"] & 1) != 0 || (objc_msgSend(streamCopy, "isEqualToString:", @"BackColorWide") & 1) != 0 || (objc_msgSend(streamCopy, "isEqualToString:", @"BackColorTele"))
  {
    goto LABEL_17;
  }

  if (([streamCopy isEqualToString:@"BackIR"] & 1) != 0 || (objc_msgSend(streamCopy, "isEqualToString:", @"FrontIR") & 1) != 0 || (objc_msgSend(streamCopy, "isEqualToString:", @"FrontDepth") & 1) != 0 || (objc_msgSend(streamCopy, "isEqualToString:", @"BackDepth") & 1) != 0 || objc_msgSend(streamCopy, "isEqualToString:", @"RawBayer"))
  {
    processInfo = [MEMORY[0x277CCAC38] processInfo];
    v34 = 0;
    *buf = xmmword_25792F6F0;
    v13 = [processInfo isOperatingSystemAtLeastVersion:buf];

    if (v13)
    {
      formatDescriptions = [trackCopy formatDescriptions];
      v15 = [formatDescriptions objectAtIndexedSubscript:0];

      Extensions = CMFormatDescriptionGetExtensions(v15);
      Value = CFDictionaryGetValue(Extensions, *MEMORY[0x277CC0400]);
      valuePtr = 0;
      CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
      if (valuePtr < 0xA && ((0x381u >> valuePtr) & 1) != 0)
      {
        v11 = *&a010l010l010l01[4 * valuePtr];
      }

      else
      {
        v18 = +[MIOLog defaultLog];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          *&buf[4] = valuePtr;
          _os_log_impl(&dword_257883000, v18, OS_LOG_TYPE_ERROR, "Got a Depth/IR stream which uses unknown version of SLIM (%d)", buf, 8u);
        }

        v11 = -1;
      }
    }

    else
    {
      v11 = 2037741158;
    }

    goto LABEL_17;
  }

  self->_pixelFormatWasGuessed = 1;
  if (delegateCopy && (objc_opt_respondsToSelector() & 1) != 0)
  {
    reader = [(MOVStreamReaderStreamOutput *)self reader];
    v21 = [delegateCopy pixelFormatForUnknownTrackOfReader:reader streamId:streamCopy];

    if (v21)
    {
LABEL_21:
      [(MOVStreamReaderStreamOutput *)self setDecodePixelFormatOverridden:1];
      v11 = v21;
      goto LABEL_17;
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (WeakRetained)
    {
      v23 = WeakRetained;
      v24 = objc_loadWeakRetained(&self->_delegate);
      v25 = objc_opt_respondsToSelector();

      if (v25)
      {
        reader2 = [(MOVStreamReaderStreamOutput *)self reader];
        v21 = [delegateCopy pixelFormatForUnknownTrackOfReader:reader2];

        if (v21)
        {
          goto LABEL_21;
        }
      }
    }
  }

  v27 = objc_loadWeakRetained(&self->_assetReader);
  asset = [v27 asset];
  v31 = 0;
  v29 = +[MOVStreamIOUtility detectPixelFormatForAsset:videoTrackId:error:](MOVStreamIOUtility, "detectPixelFormatForAsset:videoTrackId:error:", asset, [trackCopy trackID], &v31);
  v30 = v31;

  if (!v29)
  {
    v29 = [MOVStreamIOUtility guessPixelFormatForTrack:trackCopy];
  }

  if (v29)
  {
    v11 = v29;
  }

  else
  {
    v11 = 875704438;
  }

LABEL_17:
  return v11;
}

- (MIOVersion)version
{
  WeakRetained = objc_loadWeakRetained(&self->_version);

  return WeakRetained;
}

- (MOVStreamReaderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (MOVStreamReader)reader
{
  WeakRetained = objc_loadWeakRetained(&self->_reader);

  return WeakRetained;
}

- (AVAssetReader)assetReader
{
  WeakRetained = objc_loadWeakRetained(&self->_assetReader);

  return WeakRetained;
}

- (AVAssetTrack)assetTrack
{
  WeakRetained = objc_loadWeakRetained(&self->_assetTrack);

  return WeakRetained;
}

@end