@interface MOVStreamReaderStreamOutput
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)frameDuration;
- (AVAssetReader)assetReader;
- (AVAssetTrack)assetTrack;
- (BOOL)addAssociatedMetadataTracks:(id)a3 rawSampleAttachmentsIdentifier:(id)a4 trackKindIdentifier:(id)a5 movVersion:(id)a6 error:(id *)a7;
- (BOOL)addTestPatternIfRequired:(__CVBuffer *)a3;
- (BOOL)alwaysCopiesSampleDataForStream;
- (BOOL)copyNextStereoFrames:(__CVBuffer *)a3 rightBuffer:(__CVBuffer *)a4 timestamp:(id *)a5 error:(id *)a6;
- (BOOL)determineStereoLayerIDs:(id)a3;
- (BOOL)formatDescriptionOfTrack:(id)a3 containsKey:(id)a4;
- (BOOL)formatDescriptionOfTrack:(id)a3 containsKeyFromIndentifier:(id)a4;
- (BOOL)isEmptySample:(opaqueCMSampleBuffer *)a3;
- (BOOL)isSampleInEdit:(opaqueCMSampleBuffer *)a3;
- (BOOL)shouldDiscardStream:(id)a3 mediaType:(int64_t)a4 track:(id)a5;
- (BOOL)shouldSetupBufferAttchmentsOutput;
- (BOOL)stereoFramesFromSampleBuffer:(opaqueCMSampleBuffer *)a3 outLeft:(__CVBuffer *)a4 outRight:(__CVBuffer *)a5 error:(id *)a6;
- (BOOL)timeCodeIsSynthesized;
- (MIOVersion)version;
- (MOVStreamReader)reader;
- (MOVStreamReaderDelegate)delegate;
- (MOVStreamReaderStreamOutput)init;
- (MOVStreamReaderStreamOutput)initWithAudioTrack:(id)a3 assetReader:(id)a4 associatedMetadataTracks:(id)a5 version:(id)a6 unknownStreamId:(id)a7 reader:(id)a8 delegate:(id)a9 error:(id *)a10;
- (MOVStreamReaderStreamOutput)initWithMetadataTrack:(id)a3 assetReader:(id)a4 version:(id)a5 unknownStreamId:(id)a6 reader:(id)a7 delegate:(id)a8 error:(id *)a9;
- (MOVStreamReaderStreamOutput)initWithSceneTrack:(id)a3 assetReader:(id)a4 associatedMetadataTracks:(id)a5 version:(id)a6 unknownStreamId:(id)a7 reader:(id)a8 delegate:(id)a9 error:(id *)a10;
- (MOVStreamReaderStreamOutput)initWithTimeCodeTrack:(id)a3 assetReader:(id)a4 associatedMetadataTracks:(id)a5 version:(id)a6 unknownStreamId:(id)a7 reader:(id)a8 delegate:(id)a9 error:(id *)a10;
- (MOVStreamReaderStreamOutput)initWithVideoTrack:(id)a3 assetReader:(id)a4 associatedMetadataTracks:(id)a5 version:(id)a6 bufferCacheMode:(int)a7 unknownStreamId:(id)a8 reader:(id)a9 delegate:(id)a10 error:(id *)a11;
- (NSArray)associatedOutputs;
- (__CVBuffer)copyNextFrameForStreamTimestamp:(id *)a3 readTimeCode:(BOOL)a4 timeCode:(CVSMPTETime *)a5 tcDropFrame:(BOOL *)a6 error:(id *)a7;
- (__CVBuffer)getPixelBufferFromSampleBuffer:(opaqueCMSampleBuffer *)a3 error:(id *)a4;
- (__CVBuffer)nextPixelBufferForStreamAttachmentsData:(id *)a3 timestamp:(id *)a4 error:(id *)a5;
- (id)attachmentsDataForStreamPts:(id *)a3 duration:(id *)a4;
- (id)customTrackMetadata;
- (id)customTrackMetadataItems;
- (id)decodeAttachmentsData:(id)a3 error:(id *)a4;
- (id)findTimeCodeTrackAssociatedWithTrack:(id)a3;
- (id)findTracksAssociatedWithTimeCodeTrack:(id)a3;
- (id)getAssociatedMetadataStreamOutputForMetadataStreamId:(id)a3;
- (id)getAssociatedMetadataStreamOutputs;
- (id)getAssociatedMetadataStreams;
- (id)getAttachmentsOnlyOutputError:(id *)a3;
- (id)grabNextMetadataItemsOfTrackAssociatedWithStreamWithIdentifier:(id)a3 timeRange:(id *)a4 error:(id *)a5;
- (id)grabNextMetadataItemsTimeRange:(id *)a3 error:(id *)a4;
- (id)grabNextMetadataOfStreamTimeRange:(id *)a3 error:(id *)a4;
- (id)grabNextTimedMetadataGroupOfStreamError:(id *)a3;
- (id)nextAttachmentWithError:(id *)a3;
- (id)removeColorAttachments:(id)a3;
- (id)streamIdFromTrackStreamTypeIdentifier:(id)a3;
- (id)timestamps;
- (id)verifyStreamId:(id)a3 ofType:(int64_t)a4;
- (int)playbackPixelFormatForTrack:(id)a3 ofStream:(id)a4 delegate:(id)a5;
- (int)playbackPixelFormatForTrack:(id)a3 ofStream:(id)a4 streamEncodingType:(id)a5 inputPixelFormat:(unsigned int)a6 delegate:(id)a7;
- (opaqueCMFormatDescription)timeCodeFormatDescription;
- (opaqueCMSampleBuffer)grabNextSampleBufferForStreamTimestamp:(id *)a3 error:(id *)a4;
- (opaqueCMSampleBuffer)nextSampleBufferForStreamAttachmentsData:(id *)a3 readTimeCode:(BOOL)a4 timecodeSampleBuffer:(opaqueCMSampleBuffer *)a5 timestamp:(id *)a6 error:(id *)a7;
- (opaqueCMSampleBuffer)nextSampleBufferForStreamAttachmentsDataArray:(id *)a3 readTimeCode:(BOOL)a4 timecodeSampleBuffer:(opaqueCMSampleBuffer *)a5 timestamp:(id *)a6 error:(id *)a7;
- (opaqueCMSampleBuffer)timeCodeBufferForStream:(id *)a3;
- (unsigned)getOutputPixelFormatForStream;
- (unsigned)pixelFormatForStream;
- (void)parseTrackMetadata:(id)a3 version:(id)a4 unknownStreamId:(id)a5;
- (void)registerForAssociating:(id)a3 trackRelation:(id)a4;
- (void)removePixelBufferPadding:(BOOL)a3;
- (void)useDefaultMIOLayerIds;
@end

@implementation MOVStreamReaderStreamOutput

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)frameDuration
{
  v3 = self;
  if ((self->var3 & 0x100000000) == 0)
  {
    v5 = [($3CC8671D27C23BF42ADDB32F2B5E48AE *)self assetTrack];
    v6 = v5;
    if (v5)
    {
      [v5 minFrameDuration];

      if (v10.flags)
      {
        v7 = [($3CC8671D27C23BF42ADDB32F2B5E48AE *)v3 assetTrack];
        v8 = v7;
        if (v7)
        {
          [v7 minFrameDuration];
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

    v8 = [($3CC8671D27C23BF42ADDB32F2B5E48AE *)v3 assetTrack];
    [v8 nominalFrameRate];
    CMTimeMakeWithSeconds(&v10, 1.0 / v9, 16800);
LABEL_8:
    *&v3->var1 = v10;
  }

  *&retstr->var0 = *&v3->var1;
  retstr->var3 = v3[1].var0;
  return self;
}

- (BOOL)timeCodeIsSynthesized
{
  v3 = [(MOVStreamReaderStreamOutput *)self synthesizedTimeCodes];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = [(MOVStreamReaderStreamOutput *)self->_timeCodeOutput timeCodeIsSynthesized];
  }

  return v4;
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

- (void)parseTrackMetadata:(id)a3 version:(id)a4 unknownStreamId:(id)a5
{
  v57 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v37 = a4;
  v38 = a5;
  v9 = [v37 versionedKey:@"mdta/com.apple.track_kind" modifier:0];
  v47 = [v37 versionedKey:@"mdta/com.apple.stream_sample_format" modifier:0];
  v46 = [v37 versionedKey:@"mdta/com.apple.stream_encoded_sample_format" modifier:0];
  v44 = [v37 versionedKey:@"mdta/com.apple.stream_sample_attachments_serialization_mode" modifier:0];
  v42 = [v37 versionedKey:@"mdta/com.apple.stream_type_info" modifier:0];
  v39 = [v37 versionedKey:@"mdta/com.apple.stream_sample_attachments" modifier:0];
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = v8;
  v10 = [obj countByEnumeratingWithState:&v50 objects:v56 count:16];
  v40 = 0;
  if (!v10)
  {

    v48 = 0;
    v45 = 0;
    v43 = 0;
    v41 = 0;
    goto LABEL_28;
  }

  v41 = 0;
  v11 = 0;
  v43 = 0;
  v45 = 0;
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
      v15 = [v14 identifier];
      v16 = [v9 isEqualToString:v15];

      if (v16)
      {
        v17 = [v14 value];
        if (+[MIOLog debugEnabled])
        {
          v18 = +[MIOLog defaultLog];
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138543362;
            v55 = v17;
            _os_log_impl(&dword_257883000, v18, OS_LOG_TYPE_DEBUG, "Detected %{public}@ stream", buf, 0xCu);
          }
        }

        v19 = [(MOVStreamReaderStreamOutput *)self streamIdFromTrackStreamTypeIdentifier:v17];

        v11 = v19;
      }

      else
      {
        v20 = [v14 identifier];
        v21 = [@"mdta/com.apple.trackStreamEncoding" isEqualToString:v20];

        if (v21)
        {
          [v14 value];
          v48 = v17 = v48;
        }

        else
        {
          v22 = [v14 identifier];
          v23 = [v47 isEqualToString:v22];

          if (v23)
          {
            v17 = [v14 value];
            v45 = [v17 intValue];
          }

          else
          {
            v24 = [v14 identifier];
            v25 = [v46 isEqualToString:v24];

            if (v25)
            {
              v17 = [v14 value];
              v43 = [v17 intValue];
            }

            else
            {
              v26 = [v14 identifier];
              v27 = [v44 isEqualToString:v26];

              if (v27)
              {
                v17 = [v14 value];
                v41 = [v17 intValue];
              }

              else
              {
                v28 = [v14 identifier];
                v29 = [v42 isEqualToString:v28];

                if (!v29)
                {
                  continue;
                }

                v17 = [v14 value];
                v40 = [v17 longValue];
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
  v30 = [(MOVStreamReaderStreamOutput *)self assetTrack];
  v31 = [MIOMovieMetadataUtility findStreamIdFromQTTagsOfTrack:v30];

  if (v31)
  {
    v32 = +[MIOLog defaultLog];
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      v33 = v31;
      v34 = [v31 UTF8String];
      *buf = 136315138;
      v55 = v34;
      _os_log_impl(&dword_257883000, v32, OS_LOG_TYPE_INFO, "QT track name detected: %s", buf, 0xCu);
    }

    [(MOVStreamReaderStreamOutput *)self setStreamId:v31];
  }

  else
  {
    [(MOVStreamReaderStreamOutput *)self setStreamId:v38];
  }

  v11 = 0;
LABEL_34:
  v35 = [(MOVStreamReaderStreamOutput *)self streamId];
  v36 = [(MOVStreamReaderStreamOutput *)self verifyStreamId:v35 ofType:[(MOVStreamReaderStreamOutput *)self mediaType]];
  [(MOVStreamReaderStreamOutput *)self setStreamId:v36];

  [(MOVStreamReaderStreamOutput *)self setOriginalPixelFormat:v45];
  [(MOVStreamReaderStreamOutput *)self setDeterminedPixelFormat:v43];
  [(MOVStreamReaderStreamOutput *)self setAttachmentSerializationMode:v41];
  [(MOVStreamReaderStreamOutput *)self setRelatedStreamId:0];
  [(MOVStreamReaderStreamOutput *)self setRelationSpecifier:0];
  [(MOVStreamReaderStreamOutput *)self setTrackTypeInfo:v40];
  [(MOVStreamReaderStreamOutput *)self setAttachmentsIdentifier:v39];
  [(MOVStreamReaderStreamOutput *)self setTrackKindIdentifier:v9];
}

- (MOVStreamReaderStreamOutput)initWithAudioTrack:(id)a3 assetReader:(id)a4 associatedMetadataTracks:(id)a5 version:(id)a6 unknownStreamId:(id)a7 reader:(id)a8 delegate:(id)a9 error:(id *)a10
{
  v16 = a3;
  v17 = a4;
  v38 = a5;
  v18 = a6;
  v39 = a7;
  v19 = a8;
  v20 = a9;
  v21 = [(MOVStreamReaderStreamOutput *)self init];
  v22 = v21;
  if (!v21)
  {
    goto LABEL_7;
  }

  v21->_mediaType = 1;
  [(MOVStreamReaderStreamOutput *)v21 setVersion:v18];
  [(MOVStreamReaderStreamOutput *)v22 setDelegate:v20];
  [(MOVStreamReaderStreamOutput *)v22 setReader:v19];
  [(MOVStreamReaderStreamOutput *)v22 setAssetReader:v17];
  [(MOVStreamReaderStreamOutput *)v22 setAssetTrack:v16];
  v23 = [v16 metadata];
  [(MOVStreamReaderStreamOutput *)v22 parseTrackMetadata:v23 version:v18 unknownStreamId:v39];
  v24 = [(MOVStreamReaderStreamOutput *)v22 streamId];
  v25 = [(MOVStreamReaderStreamOutput *)v22 assetTrack];
  v26 = [(MOVStreamReaderStreamOutput *)v22 shouldDiscardStream:v24 mediaType:1 track:v25];

  if (!v26)
  {
    v37 = v17;
    v28 = [MEMORY[0x277CE6430] assetReaderTrackOutputWithTrack:v16 outputSettings:0];
    v29 = [(MOVStreamReaderStreamOutput *)v22 assetReader];
    v30 = [v29 canAddOutput:v28];

    if (!v30)
    {
      v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"Can't add audio track (%@) to the AVAssetReader.", v16];
      [MEMORY[0x277CCA9B8] populateReaderError:a10 message:v35 code:1];

      v27 = 0;
      v17 = v37;
      goto LABEL_9;
    }

    v31 = [(MOVStreamReaderStreamOutput *)v22 assetReader];
    [v31 addOutput:v28];

    [(MOVStreamReaderStreamOutput *)v22 setStreamOutput:v28];
    [(MOVStreamReaderStreamOutput *)v22 setPostProcessor:0];
    v32 = [(MOVStreamReaderStreamOutput *)v22 attachmentsIdentifier];
    v33 = [(MOVStreamReaderStreamOutput *)v22 trackKindIdentifier];
    v34 = [(MOVStreamReaderStreamOutput *)v22 addAssociatedMetadataTracks:v38 rawSampleAttachmentsIdentifier:v32 trackKindIdentifier:v33 movVersion:v18 error:a10];

    v17 = v37;
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

- (MOVStreamReaderStreamOutput)initWithSceneTrack:(id)a3 assetReader:(id)a4 associatedMetadataTracks:(id)a5 version:(id)a6 unknownStreamId:(id)a7 reader:(id)a8 delegate:(id)a9 error:(id *)a10
{
  v16 = a3;
  v38 = a4;
  v37 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v21 = [(MOVStreamReaderStreamOutput *)self init];
  v22 = v21;
  if (!v21)
  {
LABEL_11:
    v31 = v22;
    goto LABEL_12;
  }

  v21->_mediaType = 3;
  [(MOVStreamReaderStreamOutput *)v21 setVersion:v17];
  [(MOVStreamReaderStreamOutput *)v22 setDelegate:v20];
  [(MOVStreamReaderStreamOutput *)v22 setReader:v19];
  [(MOVStreamReaderStreamOutput *)v22 setAssetReader:v38];
  [(MOVStreamReaderStreamOutput *)v22 setAssetTrack:v16];
  v23 = [v16 metadata];
  [(MOVStreamReaderStreamOutput *)v22 parseTrackMetadata:v23 version:v17 unknownStreamId:v18];
  v24 = [(MOVStreamReaderStreamOutput *)v22 streamId];
  v25 = [(MOVStreamReaderStreamOutput *)v22 assetTrack];
  v26 = [(MOVStreamReaderStreamOutput *)v22 shouldDiscardStream:v24 mediaType:3 track:v25];

  if (v26)
  {
    goto LABEL_7;
  }

  v36 = [MEMORY[0x277CE6430] assetReaderTrackOutputWithTrack:v16 outputSettings:0];
  v27 = [(MOVStreamReaderStreamOutput *)v22 assetReader];
  v28 = [v27 canAddOutput:v36];

  if (!v28)
  {
    v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"Can't add output for scene track (%@) to the AVAssetReader.", v16];
    [MEMORY[0x277CCA9B8] populateReaderError:a10 message:v30 code:1];

LABEL_7:
    goto LABEL_8;
  }

  v29 = [(MOVStreamReaderStreamOutput *)v22 assetReader];
  [v29 addOutput:v36];

  [(MOVStreamReaderStreamOutput *)v22 setStreamOutput:v36];
  if (v16)
  {
    [v16 preferredTransform];
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
  v32 = [(MOVStreamReaderStreamOutput *)v22 attachmentsIdentifier];
  v33 = [(MOVStreamReaderStreamOutput *)v22 trackKindIdentifier];
  v34 = [(MOVStreamReaderStreamOutput *)v22 addAssociatedMetadataTracks:v37 rawSampleAttachmentsIdentifier:v32 trackKindIdentifier:v33 movVersion:v17 error:a10];

  if (v34)
  {
    goto LABEL_11;
  }

LABEL_8:
  v31 = 0;
LABEL_12:

  return v31;
}

- (MOVStreamReaderStreamOutput)initWithMetadataTrack:(id)a3 assetReader:(id)a4 version:(id)a5 unknownStreamId:(id)a6 reader:(id)a7 delegate:(id)a8 error:(id *)a9
{
  v85 = *MEMORY[0x277D85DE8];
  v72 = a3;
  v66 = a4;
  v69 = a5;
  v65 = a6;
  v67 = a7;
  v68 = a8;
  v15 = [(MOVStreamReaderStreamOutput *)self init];
  v16 = v15;
  if (v15)
  {
    v15->_mediaType = 2;
    [(MOVStreamReaderStreamOutput *)v15 setVersion:v69];
    [(MOVStreamReaderStreamOutput *)v16 setDelegate:v68];
    [(MOVStreamReaderStreamOutput *)v16 setReader:v67];
    [(MOVStreamReaderStreamOutput *)v16 setAssetReader:v66];
    [(MOVStreamReaderStreamOutput *)v16 setAssetTrack:v72];
    v70 = [v69 versionedKey:@"mdta/com.apple.track_kind" modifier:@"metadata"];
    v17 = [v69 versionedKey:@"mdta/com.apple.stream_time_range_metadata" modifier:0];
    v18 = [v69 versionedKey:@"mdta/com.apple.stream_sample_attachments" modifier:0];
    v63 = v18;
    v64 = [v18 componentsSeparatedByString:@"/"];
    if ([v64 count] == 2)
    {
      v19 = [v64 lastObject];
      if (-[MOVStreamReaderStreamOutput formatDescriptionOfTrack:containsKey:](v16, "formatDescriptionOfTrack:containsKey:", v72, v19) && ![v72 totalSampleDataLength])
      {
        v60 = +[MIOLog defaultLog];
        if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          LODWORD(v84) = [v72 trackID];
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

    [v72 metadata];
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
          v25 = [v24 identifier];
          v26 = [@"mdta/com.apple.imuTrackType" isEqualToString:v25];

          if (v26)
          {
            v27 = [v24 value];
            if (+[MIOLog debugEnabled])
            {
              v28 = +[MIOLog defaultLog];
              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138543362;
                v84 = v27;
                _os_log_impl(&dword_257883000, v28, OS_LOG_TYPE_DEBUG, "Detected %{public}@ IMU data type", buf, 0xCu);
              }
            }

            if ([v27 isEqualToString:@"DeviceMotion"])
            {
              v33 = @"DeviceMotion";
LABEL_33:

              v62 = 1;
              goto LABEL_34;
            }

            if ([v27 isEqualToString:@"RawGyro"])
            {
              v33 = @"RawGyro";
              goto LABEL_33;
            }

            if ([v27 isEqualToString:@"RawAccel"])
            {
              v33 = @"RawAccel";
              goto LABEL_33;
            }

            v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown IMU data type, ignoring: '%@'", v27];
            v30 = [MEMORY[0x277CCA9B8] readerWarningWithMessage:v29 code:0];
          }

          else
          {
            v31 = [v24 identifier];
            v32 = [v70 isEqualToString:v31];

            if (v32)
            {
              v33 = [v24 value];
              goto LABEL_29;
            }
          }
        }

        v21 = [obj countByEnumeratingWithState:&v77 objects:v82 count:16];
        v33 = 0;
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
      v33 = 0;
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
          v39 = [v38 identifier];
          v40 = [v17 isEqualToString:v39];

          if (v40)
          {
            v41 = [v38 numberValue];
            v16->_timeRangeMetadataStream = [v41 BOOLValue];
          }
        }

        v35 = [v34 countByEnumeratingWithState:&v73 objects:v81 count:16];
      }

      while (v35);
    }

    v42 = +[MIOVersion versionZero];
    v43 = [v42 versionedKey:@"mdta/com.apple.metadata_stream_item" modifier:0];

    if (![(MOVStreamReaderStreamOutput *)v16 formatDescriptionOfTrack:v72 containsKeyFromIndentifier:@"mdta/com.apple.metadata_stream_item"]&& ![(MOVStreamReaderStreamOutput *)v16 formatDescriptionOfTrack:v72 containsKeyFromIndentifier:v43]&& ((v62 | v16->_timeRangeMetadataStream) & 1) == 0)
    {
      [(MOVStreamReaderStreamOutput *)v16 setCustomMetadataFormat:1];
    }

    if (!v33)
    {
      v44 = [(MOVStreamReaderStreamOutput *)v16 assetTrack];
      v33 = [MIOMovieMetadataUtility findStreamIdFromQTTagsOfTrack:v44];

      if (v33)
      {
        v45 = +[MIOLog defaultLog];
        if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
        {
          v46 = v33;
          v47 = [(__CFString *)v33 UTF8String];
          *buf = 136315138;
          v84 = v47;
          _os_log_impl(&dword_257883000, v45, OS_LOG_TYPE_INFO, "QT track name detected: %s", buf, 0xCu);
        }
      }

      else
      {
        if (!v65)
        {
          v33 = 0;
          goto LABEL_55;
        }

        v33 = v65;
      }
    }

    v48 = [(MOVStreamReaderStreamOutput *)v16 assetTrack];
    v49 = [(MOVStreamReaderStreamOutput *)v16 shouldDiscardStream:v33 mediaType:2 track:v48];

    if (v49)
    {
LABEL_55:

LABEL_64:
      v59 = 0;
      goto LABEL_65;
    }

    v50 = [objc_alloc(MEMORY[0x277CE6430]) initWithTrack:v72 outputSettings:0];
    v51 = [(MOVStreamReaderStreamOutput *)v16 assetReader];
    v52 = [v51 canAddOutput:v50];

    if (v52)
    {
      v53 = [(MOVStreamReaderStreamOutput *)v16 assetReader];
      [v53 addOutput:v50];

      [(MOVStreamReaderStreamOutput *)v16 setStreamOutput:v50];
      [(MOVStreamReaderStreamOutput *)v16 setIsLegacyIMUTrack:v62];
      v54 = objc_alloc(MEMORY[0x277CE6420]);
      v55 = [(MOVStreamReaderStreamOutput *)v16 streamOutput];
      v56 = [v54 initWithAssetReaderTrackOutput:v55];
      [(MOVStreamReaderStreamOutput *)v16 setMetadataTrackMetadataAdaptor:v56];

      v57 = [(MOVStreamReaderStreamOutput *)v16 verifyStreamId:v33 ofType:2];

      v33 = v57;
      [(MOVStreamReaderStreamOutput *)v16 setStreamId:v57];
    }

    else
    {
      v58 = [MEMORY[0x277CCACA8] stringWithFormat:@"Can't add metadata track (%@) to the AVAssetReader.", v72];
      [MEMORY[0x277CCA9B8] populateReaderError:a9 message:v58 code:1];
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

- (MOVStreamReaderStreamOutput)initWithTimeCodeTrack:(id)a3 assetReader:(id)a4 associatedMetadataTracks:(id)a5 version:(id)a6 unknownStreamId:(id)a7 reader:(id)a8 delegate:(id)a9 error:(id *)a10
{
  v109 = *MEMORY[0x277D85DE8];
  v89 = a3;
  v86 = a4;
  v82 = a5;
  v87 = a6;
  v83 = a7;
  v84 = a8;
  v85 = a9;
  v16 = [(MOVStreamReaderStreamOutput *)self init];
  v17 = v16;
  v88 = v16;
  if (!v16)
  {
    goto LABEL_23;
  }

  v16->_mediaType = 4;
  [(MOVStreamReaderStreamOutput *)v16 setVersion:v87];
  [(MOVStreamReaderStreamOutput *)v17 setDelegate:v85];
  [(MOVStreamReaderStreamOutput *)v17 setReader:v84];
  [(MOVStreamReaderStreamOutput *)v17 setAssetReader:v86];
  [(MOVStreamReaderStreamOutput *)v17 setAssetTrack:v89];
  v81 = [v89 metadata];
  [MOVStreamReaderStreamOutput parseTrackMetadata:v88 version:"parseTrackMetadata:version:unknownStreamId:" unknownStreamId:?];
  v18 = [(MOVStreamReaderStreamOutput *)v88 streamId];
  v19 = [(MOVStreamReaderStreamOutput *)v88 assetTrack];
  v20 = [(MOVStreamReaderStreamOutput *)v88 shouldDiscardStream:v18 mediaType:4 track:v19];

  if (!v20)
  {
    v80 = [MEMORY[0x277CE6430] assetReaderTrackOutputWithTrack:v89 outputSettings:0];
    v21 = [(MOVStreamReaderStreamOutput *)v88 assetReader];
    v22 = [v21 canAddOutput:v80];

    if (v22)
    {
      v23 = [(MOVStreamReaderStreamOutput *)v88 assetReader];
      [v23 addOutput:v80];

      [(MOVStreamReaderStreamOutput *)v88 setStreamOutput:v80];
      if (v89)
      {
        v24 = v88;
        [v89 preferredTransform];
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
      v26 = [(MOVStreamReaderStreamOutput *)v24 attachmentsIdentifier];
      v27 = [(MOVStreamReaderStreamOutput *)v24 trackKindIdentifier];
      v28 = [(MOVStreamReaderStreamOutput *)v24 addAssociatedMetadataTracks:v82 rawSampleAttachmentsIdentifier:v26 trackKindIdentifier:v27 movVersion:v87 error:a10];

      if (v28)
      {
        [(MOVStreamReaderStreamOutput *)v88 setHasTimeCode:1];
        v78 = [v89 makeSampleCursorAtFirstSampleInDecodeOrder];
        v79 = [v89 makeSampleCursorAtLastSampleInDecodeOrder];
        if (v78)
        {
          [v78 presentationTimeStamp];
        }

        else
        {
          memset(time1, 0, 24);
        }

        if (v79)
        {
          [v79 presentationTimeStamp];
        }

        else
        {
          memset(&time2, 0, sizeof(time2));
        }

        if (CMTimeCompare(time1, &time2) || (-[MOVStreamReaderStreamOutput reader](v88, "reader"), v30 = objc_claimAutoreleasedReturnValue(), v31 = [v30 skipSynthesizedTimeCode], v30, (v31 & 1) != 0))
        {
          v32 = [MEMORY[0x277CE6430] assetReaderTrackOutputWithTrack:v89 outputSettings:0];
          if ([v86 canAddOutput:v32])
          {
            [v86 addOutput:v32];
            [(MOVStreamReaderStreamOutput *)v88 setStreamOutput:v32];
LABEL_22:

            v17 = v88;
LABEL_23:
            v29 = v17;
            goto LABEL_24;
          }

          v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"Can't add timecode track output (%@) to the AVAssetReader.", v89];
          [MEMORY[0x277CCA9B8] populateReaderError:a10 message:v34 code:1];
          v77 = v32;
LABEL_39:

          goto LABEL_13;
        }

        v35 = objc_alloc(MEMORY[0x277CE6410]);
        v36 = [(MOVStreamReaderStreamOutput *)v88 assetReader];
        v37 = [v36 asset];
        v100 = 0;
        v74 = [v35 initWithAsset:v37 error:&v100];
        v77 = v100;

        if (v77)
        {
          v38 = MEMORY[0x277CCACA8];
          v39 = [(MOVStreamReaderStreamOutput *)v88 streamId];
          v40 = [v38 stringWithFormat:@"Can't create reader for making synthesized timecode for stream %@.  Error: %@", v39, v77];

          [MEMORY[0x277CCA9B8] populateReaderError:a10 message:v40 code:1];
          v34 = v74;
          goto LABEL_39;
        }

        v41 = [MEMORY[0x277CE6430] assetReaderTrackOutputWithTrack:v89 outputSettings:0];
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
                v49 = [(MOVStreamReaderStreamOutput *)v88 streamId];
                v45 = [v48 stringWithFormat:@"Can't read timecode sample for creating synthesized timecode for stream %@.  Error: %@", v49, 0];

                [MEMORY[0x277CCA9B8] populateReaderError:a10 message:v45 code:1];
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
              v53 = [v89 formatDescriptions];
              v54 = [v53 firstObject];

              if (v54)
              {
                FrameQuanta = CMTimeCodeFormatDescriptionGetFrameQuanta(v54);
                v56 = objc_opt_new();
                [(MOVStreamReaderStreamOutput *)v88 findTracksAssociatedWithTimeCodeTrack:v89];
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
                      v60 = [(MOVStreamTimestamps *)v59 cmtimes];
                      v61 = [v60 countByEnumeratingWithState:&v91 objects:v107 count:16];
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
                              objc_enumerationMutation(v60);
                            }

                            v64 = *(*(&v91 + 1) + 8 * j);
                            v65 = [MEMORY[0x277CCAE60] value:&time2 withObjCType:"{CVSMPTETime=ssIIIssss}"];
                            [v56 setObject:v65 forKey:v64];

                            v90[0] = time2;
                            [MOVStreamIOUtility advanceTimeCode:v90 frameQuanta:FrameQuanta dropFrame:v99];
                            time2 = v90[1];
                          }

                          v61 = [v60 countByEnumeratingWithState:&v91 objects:v107 count:16];
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
              v68 = [(MOVStreamReaderStreamOutput *)v88 streamId];
              v69 = [v67 stringWithFormat:@"Cannot retrieve format description for creating synthesized timecode for stream %@.  Error: %@", v68, 0];

              [MEMORY[0x277CCA9B8] populateReaderError:a10 message:v69 code:1];
            }

            else
            {
              v50 = MEMORY[0x277CCACA8];
              v51 = [(MOVStreamReaderStreamOutput *)v88 streamId];
              v52 = [v50 stringWithFormat:@"Timecode sample is not valid for creating synthesized timecode for stream %@.  Error: %@", v51, 0];

              [MEMORY[0x277CCA9B8] populateReaderError:a10 message:v52 code:1];
            }

            goto LABEL_38;
          }

          v46 = MEMORY[0x277CCACA8];
          v47 = [(MOVStreamReaderStreamOutput *)v88 streamId];
          v45 = [v46 stringWithFormat:@"Can't start reader for creating synthesized timecode for stream %@.  Error: %@", v47, 0];

          [MEMORY[0x277CCA9B8] populateReaderError:a10 message:v45 code:1];
        }

        else
        {
          v43 = MEMORY[0x277CCACA8];
          v44 = [(MOVStreamReaderStreamOutput *)v88 streamId];
          v45 = [v43 stringWithFormat:@"Can't add input for creating synthesized timecode for stream %@.  Error: %@", v44, 0];

          [MEMORY[0x277CCA9B8] populateReaderError:a10 message:v45 code:1];
        }

LABEL_37:

LABEL_38:
        v77 = v74;
        v34 = v41;
        goto LABEL_39;
      }
    }

    else
    {
      v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"Can't add output for time code track (%@) to the AVAssetReader.", v89];
      [MEMORY[0x277CCA9B8] populateReaderError:a10 message:v25 code:1];
    }

    goto LABEL_13;
  }

LABEL_13:
  v29 = 0;
LABEL_24:

  return v29;
}

- (MOVStreamReaderStreamOutput)initWithVideoTrack:(id)a3 assetReader:(id)a4 associatedMetadataTracks:(id)a5 version:(id)a6 bufferCacheMode:(int)a7 unknownStreamId:(id)a8 reader:(id)a9 delegate:(id)a10 error:(id *)a11
{
  v216 = *MEMORY[0x277D85DE8];
  v183 = a3;
  v173 = a4;
  v169 = a5;
  v176 = a6;
  v170 = a8;
  v172 = a9;
  v171 = a10;
  v16 = [(MOVStreamReaderStreamOutput *)self init];

  v191 = v16;
  if (!v16)
  {
    goto LABEL_97;
  }

  v16->_mediaType = 0;
  [(MOVStreamReaderStreamOutput *)v16 setVersion:v176];
  [(MOVStreamReaderStreamOutput *)v16 setDelegate:v171];
  [(MOVStreamReaderStreamOutput *)v16 setReader:v172];
  [(MOVStreamReaderStreamOutput *)v16 setAssetReader:v173];
  [(MOVStreamReaderStreamOutput *)v16 setAssetTrack:v183];
  v193 = [v176 versionedKey:@"mdta/com.apple.track_kind" modifier:0];
  v185 = [v176 versionedKey:@"mdta/com.apple.stream_sample_format" modifier:0];
  v182 = [v176 versionedKey:@"mdta/com.apple.stream_encoded_sample_format" modifier:0];
  v180 = [v176 versionedKey:@"mdta/com.apple.stream_sample_attachments_serialization_mode" modifier:0];
  v168 = [v176 versionedKey:@"mdta/com.apple.stream_type_info" modifier:0];
  v178 = [v176 versionedKey:@"mdta/com.apple.stream_related_to_stream" modifier:0];
  v174 = [v176 versionedKey:@"mdta/com.apple.stream_relation_specifier" modifier:0];
  v162 = [v176 versionedKey:@"mdta/com.apple.stream_sample_exact_bytes_per_row" modifier:0];
  v161 = [v176 versionedKey:@"mdta/com.apple.stream_sample_attachments" modifier:0];
  v160 = [v176 versionedKey:@"mdta/com.apple.stream_sample_exact_bytes_per_row_multiplanar" modifier:0];
  v188 = [v176 versionedKey:@"mdta/com.apple.stream_output_pixel_format_override" modifier:0];
  v189 = [v176 versionedKey:@"mdta/com.apple.writer_encoder_type" modifier:0];
  v17 = [v176 versionedKey:@"mdta/com.apple.stream_stereo_video" modifier:0];
  v163 = [v176 versionedKey:@"mdta/com.apple.stream_additional_compression_properties" modifier:0];
  v164 = v17;
  v18 = [v183 metadata];
  v19 = v170;
  v201 = 0u;
  v202 = 0u;
  v203 = 0u;
  v204 = 0u;
  obj = v18;
  v20 = [obj countByEnumeratingWithState:&v201 objects:v215 count:16];
  v159 = 0;
  if (v20)
  {
    v177 = 0;
    v165 = 0;
    v166 = 0;
    v186 = 0;
    v175 = 0;
    v179 = 0;
    v184 = 0;
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
        v25 = [v24 identifier];
        v26 = [v193 isEqualToString:v25];

        if (v26)
        {
          v27 = [v24 value];
          if (+[MIOLog debugEnabled])
          {
            v28 = +[MIOLog defaultLog];
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138543362;
              *&buf[4] = v27;
              _os_log_impl(&dword_257883000, v28, OS_LOG_TYPE_DEBUG, "Detected %{public}@ stream", buf, 0xCu);
            }
          }

          v29 = [(MOVStreamReaderStreamOutput *)v191 streamIdFromTrackStreamTypeIdentifier:v27];

          v22 = 0;
          v19 = v29;
          goto LABEL_33;
        }

        v30 = [v24 identifier];
        v31 = [@"mdta/com.apple.trackStreamEncoding" isEqualToString:v30];

        if (v31)
        {
          [v24 value];
          v190 = v27 = v190;
          goto LABEL_33;
        }

        v32 = [v24 identifier];
        v33 = [v189 isEqualToString:v32];

        if (v33)
        {
          v27 = [v24 value];
          v186 = [v27 intValue];
          goto LABEL_33;
        }

        v34 = [v24 identifier];
        v35 = [v188 isEqualToString:v34];

        if (v35)
        {
          v27 = [v24 value];
          v184 = [v27 unsignedIntValue];
          goto LABEL_33;
        }

        v36 = [v24 identifier];
        v37 = [v185 isEqualToString:v36];

        if (v37)
        {
          v27 = [v24 value];
          HIDWORD(v181) = [v27 intValue];
          goto LABEL_33;
        }

        v38 = [v24 identifier];
        v39 = [v182 isEqualToString:v38];

        if (v39)
        {
          v27 = [v24 value];
          LODWORD(v181) = [v27 intValue];
          goto LABEL_33;
        }

        v40 = [v24 identifier];
        v41 = [v180 isEqualToString:v40];

        if (v41)
        {
          v27 = [v24 value];
          v177 = [v27 intValue];
          goto LABEL_33;
        }

        v42 = [v24 identifier];
        v43 = [v178 isEqualToString:v42];

        if (v43)
        {
          [v24 value];
          v179 = v27 = v179;
          goto LABEL_33;
        }

        v44 = [v24 identifier];
        v45 = [v174 isEqualToString:v44];

        if (v45)
        {
          [v24 value];
          v175 = v27 = v175;
          goto LABEL_33;
        }

        v46 = [v24 identifier];
        v47 = [v168 isEqualToString:v46];

        if (v47)
        {
          v27 = [v24 value];
          v159 = [v27 longValue];
          goto LABEL_33;
        }

        v48 = [v24 identifier];
        v49 = [v164 isEqualToString:v48];

        if (v49)
        {
          v27 = [v24 numberValue];
          v191->_stereoVideoStream = [v27 BOOLValue];
          goto LABEL_33;
        }

        v50 = [v24 identifier];
        v51 = [v163 isEqualToString:v50];

        if (v51)
        {
          v52 = [v24 value];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v200 = 0;
            v167 = [MOVStreamIOUtility plistDeserializedObject:v52 error:&v200];
            v27 = v200;

            if (v27 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
            {
              additionalCompressionProperties = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid Additional Compression Properties value type for stream '%@': %@.", v19, v27];
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

          v166 = v52;
        }

        else
        {
          v55 = [v24 identifier];
          v56 = [v162 isEqualToString:v55];

          if (v56)
          {
            v57 = [v24 value];

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_51;
            }

            v165 = v57;
          }

          else
          {
            v58 = [v24 identifier];
            v59 = [v160 isEqualToString:v58];

            if (v59)
            {
              v57 = [v24 value];

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v199 = 0;
                v165 = [MOVStreamIOUtility plistDeserializedObject:v57 error:&v199];
                v27 = v199;

                if (v27)
                {
                  v60 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid ExactBytesPerRow value type for stream '%@': %@.", v19, v27];
                  v61 = [MEMORY[0x277CCA9B8] readerWarningWithMessage:v60 code:0];

                  goto LABEL_52;
                }
              }

              else
              {
LABEL_51:
                v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid ExactBytesPerRow value type for stream '%@': %@.", v19, v57];
                v63 = [MEMORY[0x277CCA9B8] readerWarningWithMessage:v27 code:0];

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

  v177 = 0;
  v165 = 0;
  v166 = 0;
  v186 = 0;
  v175 = 0;
  v179 = 0;
  v184 = 0;
  v181 = 0;
  v190 = 0;
  v22 = 1;
LABEL_56:

  for (i = 0; ; ++i)
  {
    v66 = [v183 formatDescriptions];
    v67 = [v66 count] > i;

    if (!v67)
    {
      break;
    }

    v68 = [v183 formatDescriptions];
    v69 = [v68 objectAtIndexedSubscript:i];

    MediaSubType = CMFormatDescriptionGetMediaSubType(v69);
    if (MediaSubType == 1936484717 && ![MOVStreamEncoderConfig isEncoderAvailableOfType:1936484717 withId:0]|| [MOVStreamEncoderConfig isProResCodec:MediaSubType]&& ![MOVStreamEncoderConfig isEncoderAvailableOfType:MediaSubType withId:0])
    {
      v95 = [MEMORY[0x277CCACA8] stringWithFormat:@"Decoder required for '%@' is not available.", v19];
      [MEMORY[0x277CCA9B8] populateReaderError:a11 message:v95 code:1];

LABEL_95:
      v109 = 0;
      goto LABEL_96;
    }
  }

  if (v22)
  {
    v71 = [v183 formatDescriptions];
    v72 = [v71 count] == 0;

    if (!v72)
    {
      v73 = [v183 formatDescriptions];
      v74 = [v73 objectAtIndexedSubscript:0];

      v75 = CMFormatDescriptionGetExtensions(v74);
      v76 = [v75 objectForKey:@"HasLeftStereoEyeView"];
      v77 = [v76 BOOLValue];

      if (v77)
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
    LODWORD(v181) = [(MOVStreamReaderStreamOutput *)v191 playbackPixelFormatForTrack:v183 ofStream:v19 streamEncodingType:v190 inputPixelFormat:HIDWORD(v181) delegate:WeakRetained];
  }

  if (v22)
  {
    v83 = [(MOVStreamReaderStreamOutput *)v191 assetTrack];
    v84 = [MIOMovieMetadataUtility findStreamIdFromQTTagsOfTrack:v83];

    if (v84)
    {
      v85 = +[MIOLog defaultLog];
      if (os_log_type_enabled(v85, OS_LOG_TYPE_INFO))
      {
        v86 = v84;
        v87 = [v84 UTF8String];
        *buf = 136315138;
        *&buf[4] = v87;
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
        v93 = [(MOVStreamReaderStreamOutput *)v191 reader];
        v94 = [v92 reader:v93 pixelFormatForStream:v19 suggestedFormat:v181];

        if (v181 != v94)
        {
          [(MOVStreamReaderStreamOutput *)v191 setDecodePixelFormatOverridden:1];
          LODWORD(v181) = v94;
        }
      }
    }
  }

  v97 = [(MOVStreamReaderStreamOutput *)v191 assetTrack];
  v98 = [(MOVStreamReaderStreamOutput *)v191 shouldDiscardStream:v19 mediaType:0 track:v97];

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
    v103 = [(MOVStreamReaderStreamOutput *)v191 reader];
    v104 = [(MOVStreamReaderStreamOutput *)v191 customTrackMetadata];
    v105 = [v102 reader:v103 overrideBytesPerRowForStream:v19 storedValue:v165 customTrackMetadata:v104 originalPixelFormat:HIDWORD(v181) encodedPixelFormat:v181];

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
    v117 = [(MOVStreamReaderStreamOutput *)v191 reader];
    v118 = [v116 reader:v117 bytesPerRowForStream:v19 storedValue:v115];

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
  if (v183)
  {
    [v183 preferredTransform];
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

  if (v186 == 36)
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
    if (![(MOVStreamReaderStreamOutput *)v191 determineStereoLayerIDs:v183])
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

  v125 = [MEMORY[0x277CE6430] assetReaderTrackOutputWithTrack:v183 outputSettings:v124];
  [v125 setAlwaysCopiesSampleData:{-[MOVStreamReaderStreamOutput alwaysCopiesSampleDataForStream](v191, "alwaysCopiesSampleDataForStream")}];
  if (![v173 canAddOutput:v125])
  {
    v128 = [MEMORY[0x277CCACA8] stringWithFormat:@"Can't add video track (%@) to the AVAssetReader.", v183];
    [MEMORY[0x277CCA9B8] populateReaderError:a11 message:v128 code:1];
    v109 = 0;
    goto LABEL_167;
  }

  [v173 addOutput:v125];
  if (([v19 isEqualToString:@"RawBayer"] & 1) != 0 || +[MIOPixelBufferUtility isPixelFormatRawBayer:](MIOPixelBufferUtility, "isPixelFormatRawBayer:", HIDWORD(v181)))
  {
    v177 = 1;
  }

  if (v184)
  {
    v126 = v184;
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
  [(MOVStreamReaderStreamOutput *)v191 setAttachmentSerializationMode:v177];
  [(MOVStreamReaderStreamOutput *)v191 setRelatedStreamId:v179];
  [(MOVStreamReaderStreamOutput *)v191 setRelationSpecifier:v175];
  [(MOVStreamReaderStreamOutput *)v191 setTrackTypeInfo:v159];
  if ([(MOVStreamReaderStreamOutput *)v191 decodePixelFormatOverridden])
  {
    v127 = +[MOVStreamPostProcessorFactory getNewDefaultPostProcessor];
    [(MOVStreamReaderStreamOutput *)v191 setPostProcessor:v127];
  }

  else
  {
    v127 = +[MOVStreamPostProcessorFactory defaultFactory];
    v129 = [v127 postProcessorFromReader:v172 originalPixelFormat:v126 encodedFormat:v181 encoderType:v186 streamId:v19 bufferCacheMode:a7];
    [(MOVStreamReaderStreamOutput *)v191 setPostProcessor:v129];
  }

  v130 = [(MOVStreamReaderStreamOutput *)v191 postProcessor];
  [v130 setExactBytesPerRow:v165];

  v131 = [(MOVStreamReaderStreamOutput *)v191 verifyStreamId:v19 ofType:0];

  [(MOVStreamReaderStreamOutput *)v191 setStreamId:v131];
  if (![(MOVStreamReaderStreamOutput *)v191 addAssociatedMetadataTracks:v169 rawSampleAttachmentsIdentifier:v161 trackKindIdentifier:v193 movVersion:v176 error:a11])
  {
    v109 = 0;
    goto LABEL_168;
  }

  v132 = [(MOVStreamReaderStreamOutput *)v191 attachmentsAdaptor];
  v133 = v132 == 0;

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
        v149 = [(MOVStreamReaderStreamOutput *)v191 reader];
        v150 = [(MOVStreamReaderStreamOutput *)v191 streamId];
        v151 = [v148 reader:v149 readSEIIfAvailableForStream:v150];

        if (v151)
        {
          [(MOVStreamReaderStreamOutput *)v191 setAttachmentSerializationMode:1];
          v152 = [MIOSEITrackReader alloc];
          v153 = [(MOVStreamReaderStreamOutput *)v191 assetTrack];
          v154 = [(MOVStreamReaderStreamOutput *)v191 assetReader];
          v155 = [(MIOSEITrackReader *)v152 initWithVideoTrack:v153 assetReader:v154];
          [(MOVStreamReaderStreamOutput *)v191 setSeiTrackReader:v155];
        }
      }
    }
  }

  v134 = [(MOVStreamReaderStreamOutput *)v191 assetTrack];
  v128 = [(MOVStreamReaderStreamOutput *)v191 findTimeCodeTrackAssociatedWithTrack:v134];

  if (!v128)
  {
    v109 = 1;
    goto LABEL_166;
  }

  v196 = 0u;
  v197 = 0u;
  v194 = 0u;
  v195 = 0u;
  v135 = [(MOVStreamReaderStreamOutput *)v191 reader];
  v187 = [v135 getAllTimeCodeStreams];

  v136 = [v187 countByEnumeratingWithState:&v194 objects:v205 count:16];
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
        objc_enumerationMutation(v187);
      }

      v139 = *(*(&v194 + 1) + 8 * j);
      v140 = [(MOVStreamReaderStreamOutput *)v191 reader];
      v141 = [v140 outputForTimeCodeStream:v139 error:a11];

      if (!v141)
      {
        v156 = [MEMORY[0x277CCACA8] stringWithFormat:@"Can't find time code track (%@)", v183];
        [MEMORY[0x277CCA9B8] populateReaderError:a11 message:v156 code:1];

        v144 = 1;
LABEL_159:

        goto LABEL_160;
      }

      v142 = [v141 assetTrack];
      v143 = v142 == v128;

      if (v143)
      {
        objc_storeStrong(&v191->_timeCodeOutput, v141);
        -[MOVStreamReaderStreamOutput setHasTimeCode:](v191, "setHasTimeCode:", [v141 hasTimeCode]);
        v144 = 7;
        goto LABEL_159;
      }
    }

    v136 = [v187 countByEnumeratingWithState:&v194 objects:v205 count:16];
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

- (void)registerForAssociating:(id)a3 trackRelation:(id)a4
{
  v10[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:v6];
  v10[0] = v8;
  v10[1] = v7;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];

  [(NSMutableArray *)self->_associatedOutputs addObject:v9];
}

- (id)verifyStreamId:(id)a3 ofType:(int64_t)a4
{
  v6 = a3;
  v7 = 1;
  for (i = v6; ; i = v11)
  {
    v9 = [(MOVStreamReaderStreamOutput *)self reader];
    v10 = [v9 containsStream:i withMediaType:a4];

    if (!v10)
    {
      break;
    }

    v11 = [v6 stringByAppendingFormat:@"-%zu", v7];

    ++v7;
  }

  return i;
}

- (void)removePixelBufferPadding:(BOOL)a3
{
  v3 = a3;
  v4 = [(MOVStreamReaderStreamOutput *)self postProcessor];
  [v4 setRemovePadding:v3];
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
  v8 = [(MOVStreamReaderStreamOutput *)self reader];
  v9 = [(MOVStreamReaderStreamOutput *)self streamId];
  v10 = [v7 reader:v8 alwaysCopiesSampleDataForStream:v9];

  return v10;
}

- (id)timestamps
{
  v3 = [MOVStreamTimestamps alloc];
  v4 = [(MOVStreamReaderStreamOutput *)self assetTrack];
  v5 = [(MOVStreamTimestamps *)v3 initWithAssetTrack:v4];

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

  v3 = [(MOVStreamReaderStreamOutput *)timeCodeOutput assetTrack];
  v4 = [v3 formatDescriptions];
  v5 = [v4 firstObject];

  return v5;
}

- (id)customTrackMetadata
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [(MOVStreamReaderStreamOutput *)self assetTrack];
  v14 = [v2 metadata];

  v3 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = v14;
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
        v9 = [v8 identifier];
        if (![v9 rangeOfString:@"mdta/custom."])
        {
          v10 = [v9 stringByReplacingOccurrencesOfString:@"mdta/custom." withString:&stru_2868CF868];
          v11 = [v10 stringByRemovingPercentEncoding];

          v12 = [v8 value];
          [v3 setObject:v12 forKey:v11];
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
  v2 = [(MOVStreamReaderStreamOutput *)self assetTrack];
  v3 = [v2 metadata];

  v20 = objc_opt_new();
  v4 = *MEMORY[0x277CE5FB0];
  v5 = [*MEMORY[0x277CE5FB0] stringByAppendingPathComponent:{*MEMORY[0x277CE5FF0], v3}];
  v6 = [v4 stringByAppendingPathComponent:*MEMORY[0x277CE5FF8]];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = v3;
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
        v12 = [v11 identifier];
        v13 = [v11 identifier];
        v14 = [v13 isEqualToString:v5];

        if ((v14 & 1) == 0)
        {
          v15 = [v11 identifier];
          v16 = [v15 isEqualToString:v6];

          if ((v16 & 1) == 0)
          {
            if ([v12 rangeOfString:@"mdta/custom."])
            {
              v17 = +[MOVStreamIOUtility reservedMIOTrackMetadataKeys];
              v18 = [v17 containsObject:v12];

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
  v2 = [(MOVStreamReaderStreamOutput *)self associatedMetadataOutputs];
  v3 = [v2 allKeys];
  v4 = [v3 copy];

  return v4;
}

- (id)getAssociatedMetadataStreamOutputs
{
  v2 = [(MOVStreamReaderStreamOutput *)self associatedMetadataOutputs];
  v3 = [v2 allValues];

  return v3;
}

- (id)getAttachmentsOnlyOutputError:(id *)a3
{
  v5 = [(MOVStreamReaderStreamOutput *)self pixelBufferAttachmentsOutput];
  if (v5)
  {
  }

  else
  {
    v6 = [(MOVStreamReaderStreamOutput *)self pixelBufferAttachmentsOutputInitError];

    if (!v6)
    {
      v9 = MEMORY[0x277CCACA8];
      v10 = [(MOVStreamReaderStreamOutput *)self streamId];
      v11 = [v9 stringWithFormat:@"Attachments-only output was not enabled for stream '%@'.", v10];

      [MEMORY[0x277CCA9B8] populateReaderError:a3 message:v11 code:3];
      v7 = 0;
      goto LABEL_7;
    }
  }

  if (a3)
  {
    *a3 = [(MOVStreamReaderStreamOutput *)self pixelBufferAttachmentsOutputInitError];
  }

  v7 = [(MOVStreamReaderStreamOutput *)self pixelBufferAttachmentsOutput];
LABEL_7:

  return v7;
}

- (id)getAssociatedMetadataStreamOutputForMetadataStreamId:(id)a3
{
  v4 = a3;
  v5 = [(MOVStreamReaderStreamOutput *)self associatedMetadataOutputs];
  v6 = [v5 objectForKey:v4];

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
  v3 = [(MOVStreamReaderStreamOutput *)self postProcessor];
  v4 = [v3 processedPixelFormat];

  if (v4)
  {
    v5 = [(MOVStreamReaderStreamOutput *)self postProcessor];
    v6 = [v5 processedPixelFormat];
  }

  else
  {
    v5 = [(MOVStreamReaderStreamOutput *)self streamOutput];
    v8 = [v5 outputSettings];
    v9 = [v8 objectForKey:*MEMORY[0x277CC4E30]];
    v7 = [v9 intValue];

    if (v7)
    {
      goto LABEL_5;
    }

    v6 = [(MOVStreamReaderStreamOutput *)self determinedPixelFormat];
  }

  v7 = v6;
LABEL_5:

  return v7;
}

- (void)useDefaultMIOLayerIds
{
  self->_videoLayerIds = [MEMORY[0x277CBEA60] arrayWithObjects:{&unk_2868E3A20, &unk_2868E3A38, 0}];

  MEMORY[0x2821F96F8]();
}

- (BOOL)determineStereoLayerIDs:(id)a3
{
  v4 = a3;
  v5 = [v4 formatDescriptions];
  v6 = [v5 count];

  if (!v6)
  {
    NSLog(&cfstr_NoFormatDescri_0.isa);
    goto LABEL_18;
  }

  v7 = [v4 formatDescriptions];
  v8 = [v7 objectAtIndexedSubscript:0];

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

- (BOOL)copyNextStereoFrames:(__CVBuffer *)a3 rightBuffer:(__CVBuffer *)a4 timestamp:(id *)a5 error:(id *)a6
{
  if (!a3)
  {
    [MOVStreamReaderStreamOutput copyNextStereoFrames:rightBuffer:timestamp:error:];
  }

  if (!a4)
  {
    [MOVStreamReaderStreamOutput copyNextStereoFrames:rightBuffer:timestamp:error:];
  }

  v11 = objc_autoreleasePoolPush();
  v12 = [(MOVStreamReaderStreamOutput *)self streamOutput];
  v13 = [v12 copyNextSampleBuffer];

  if (v13)
  {
    v14 = [(MOVStreamReaderStreamOutput *)self stereoFramesFromSampleBuffer:v13 outLeft:a3 outRight:a4 error:a6];
    if (a5)
    {
      CMSampleBufferGetPresentationTimeStamp(&v27, v13);
      *a5 = v27;
    }

    CVPixelBufferRetain(*a3);
    CVPixelBufferRetain(*a4);
    CFRelease(v13);
    if (v14)
    {
      v15 = [(MOVStreamReaderStreamOutput *)self attachmentsDataForStreamPts:&v27 duration:&v26];
      if ([v15 count])
      {
        v16 = [v15 objectAtIndexedSubscript:0];
        v17 = [(MOVStreamReaderStreamOutput *)self decodeAttachmentsData:v16 error:a6];

        v18 = [(MOVStreamReaderStreamOutput *)self postProcessor];
        v19 = [v18 processedPixelBufferFrom:*a3 metadata:v17 error:a6];

        CVPixelBufferRelease(*a3);
        if (v17)
        {
          CVBufferSetAttachments(v19, v17, kCVAttachmentMode_ShouldPropagate);
        }

        *a3 = v19;
      }

      if ([v15 count] >= 2)
      {
        v20 = [v15 objectAtIndexedSubscript:1];
        v21 = [(MOVStreamReaderStreamOutput *)self decodeAttachmentsData:v20 error:a6];

        v22 = [(MOVStreamReaderStreamOutput *)self postProcessor];
        v23 = [v22 processedPixelBufferFrom:*a4 metadata:v21 error:a6];

        CVPixelBufferRelease(*a4);
        if (v21)
        {
          CVBufferSetAttachments(v23, v21, kCVAttachmentMode_ShouldPropagate);
        }

        *a4 = v23;
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
    if (a6)
    {
      *a6 = 0;
    }

    v24 = 0;
    *a3 = 0;
    *a4 = 0;
  }

  objc_autoreleasePoolPop(v11);
  return !v13 || v24;
}

- (BOOL)stereoFramesFromSampleBuffer:(opaqueCMSampleBuffer *)a3 outLeft:(__CVBuffer *)a4 outRight:(__CVBuffer *)a5 error:(id *)a6
{
  TaggedBufferGroup = FigSampleBufferGetTaggedBufferGroup();
  if (!TaggedBufferGroup)
  {
    v21 = MEMORY[0x277CCA9B8];
    v22 = @"No tagged buffer group in sample buffer.";
LABEL_18:
    [v21 populateReaderError:a6 message:v22 code:29];
    return 0;
  }

  v11 = TaggedBufferGroup;
  if ([(NSArray *)self->_videoLayerIds count]<= 1)
  {
    [MOVStreamReaderStreamOutput stereoFramesFromSampleBuffer:outLeft:outRight:error:];
  }

  v12 = [(NSArray *)self->_videoLayerIds objectAtIndexedSubscript:0];
  v13 = [v12 intValue];

  v14 = [(NSArray *)self->_videoLayerIds objectAtIndexedSubscript:1];
  v15 = [v14 intValue];

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
        [MEMORY[0x277CCA9B8] populateReaderError:a6 message:v23 code:29];

        return 0;
      }

      SInt64Value = FigTagGetSInt64Value();
      CVPixelBufferAtIndex = FigTaggedBufferGroupGetCVPixelBufferAtIndex();
      if (!CVPixelBufferAtIndex)
      {
        break;
      }

      if (v13 == SInt64Value)
      {
        *a4 = CVPixelBufferAtIndex;
      }

      else if (v15 == SInt64Value)
      {
        *a5 = CVPixelBufferAtIndex;
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
  if (*a4)
  {
    return *a5 != 0;
  }

  return 0;
}

- (__CVBuffer)copyNextFrameForStreamTimestamp:(id *)a3 readTimeCode:(BOOL)a4 timeCode:(CVSMPTETime *)a5 tcDropFrame:(BOOL *)a6 error:(id *)a7
{
  v27 = *MEMORY[0x277CC0890];
  v28 = *(MEMORY[0x277CC0890] + 16);
  v29 = 0;
  v26 = 0;
  v12 = [(MOVStreamReaderStreamOutput *)self nextSampleBufferForStreamAttachmentsData:&v26 readTimeCode:a4 timecodeSampleBuffer:&v29 timestamp:&v27 error:?];
  v13 = v26;
  if (a3)
  {
    *&a3->var0 = v27;
    a3->var3 = v28;
  }

  if (v12 && (v14 = [(MOVStreamReaderStreamOutput *)self getPixelBufferFromSampleBuffer:v12 error:a7]) != 0)
  {
    v15 = [(MOVStreamReaderStreamOutput *)self decodeAttachmentsData:v13 error:a7];
    v16 = [(MOVStreamReaderStreamOutput *)self postProcessor];
    v17 = [v16 processedPixelBufferFrom:v14 metadata:v15 error:a7];

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
    if (a5)
    {
      if (v29)
      {
        [MOVStreamIOUtility timecode32ForSampleBuffer:v29 dropFrame:a6];
        *&a5->subframes = v24;
        *&a5->hours = v25;
      }

      else
      {
        timeCodeOutput = self->_timeCodeOutput;
        if (timeCodeOutput)
        {
          v20 = [(MOVStreamReaderStreamOutput *)timeCodeOutput synthesizedTimeCodes];
          v21 = [MEMORY[0x277CCAE60] value:&v27 withObjCType:"{?=qiIq}"];
          v22 = [v20 objectForKey:v21];

          if (v22)
          {
            [v22 getValue:a5];
            if (a6)
            {
              *a6 = [(MOVStreamReaderStreamOutput *)self->_timeCodeOutput synthesizedTimeCodeIsDropFrame];
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

- (__CVBuffer)nextPixelBufferForStreamAttachmentsData:(id *)a3 timestamp:(id *)a4 error:(id *)a5
{
  v7 = [(MOVStreamReaderStreamOutput *)self nextSampleBufferForStreamAttachmentsData:a3 timestamp:a4 error:?];
  if (!v7)
  {
    return 0;
  }

  v8 = [(MOVStreamReaderStreamOutput *)self getPixelBufferFromSampleBuffer:v7 error:a5];
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = [(MOVStreamReaderStreamOutput *)self postProcessor];
  v11 = [v10 processedPixelBufferFrom:v9 metadata:0 error:a5];

  CVPixelBufferRelease(v9);
  [(MOVStreamReaderStreamOutput *)self addTestPatternIfRequired:v11];
  return v11;
}

- (__CVBuffer)getPixelBufferFromSampleBuffer:(opaqueCMSampleBuffer *)a3 error:(id *)a4
{
  v7 = [(MOVStreamReaderStreamOutput *)self decoderController];

  if (v7)
  {
    v8 = [(MOVStreamReaderStreamOutput *)self decoderController];
    v9 = [v8 decodeFrame:a3 pts:0 error:a4];
  }

  else
  {
    ImageBuffer = CMSampleBufferGetImageBuffer(a3);
    v9 = ImageBuffer;
    if (ImageBuffer)
    {
      CVPixelBufferRetain(ImageBuffer);
    }

    else
    {
      [MEMORY[0x277CCA9B8] populateReaderError:a4 message:@"CMSampleBufferGetImageBuffer returned nil." code:0];
    }
  }

  CFRelease(a3);
  return v9;
}

- (BOOL)addTestPatternIfRequired:(__CVBuffer *)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = [(MOVStreamReaderStreamOutput *)self testPatternRenderer];

  if (!v5)
  {
    return 1;
  }

  v6 = [(MOVStreamReaderStreamOutput *)self testPatternRenderer];
  v7 = [v6 renderToPixelBuffer:a3];

  if (v7)
  {
    return 1;
  }

  v9 = MEMORY[0x277CCACA8];
  v10 = [(MOVStreamReaderStreamOutput *)self streamId];
  v11 = [v9 stringWithFormat:@"Unable to render test pattern. Stream: %@", v10];

  v12 = +[MIOLog defaultLog];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v22 = v11;
    _os_log_impl(&dword_257883000, v12, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v13 = [(MOVStreamReaderStreamOutput *)self reader];
  v14 = [v13 delegate];
  if (!v14)
  {
    goto LABEL_9;
  }

  v15 = [(MOVStreamReaderStreamOutput *)self reader];
  v16 = [v15 delegate];
  v17 = objc_opt_respondsToSelector();

  if (v17)
  {
    v13 = [MEMORY[0x277CCA9B8] readerWarningWithMessage:v11 code:0];
    v18 = [(MOVStreamReaderStreamOutput *)self reader];
    v19 = [v18 delegate];
    v20 = [(MOVStreamReaderStreamOutput *)self reader];
    [v19 reader:v20 didReceiveWarning:v13];

LABEL_9:
  }

  return 0;
}

- (opaqueCMSampleBuffer)nextSampleBufferForStreamAttachmentsData:(id *)a3 readTimeCode:(BOOL)a4 timecodeSampleBuffer:(opaqueCMSampleBuffer *)a5 timestamp:(id *)a6 error:(id *)a7
{
  v11 = 0;
  v8 = [(MOVStreamReaderStreamOutput *)self nextSampleBufferForStreamAttachmentsDataArray:&v11 readTimeCode:a4 timecodeSampleBuffer:a5 timestamp:a6 error:a7];
  v9 = v11;
  if ([v9 count])
  {
    *a3 = [v9 objectAtIndexedSubscript:0];
  }

  return v8;
}

- (opaqueCMSampleBuffer)nextSampleBufferForStreamAttachmentsDataArray:(id *)a3 readTimeCode:(BOOL)a4 timecodeSampleBuffer:(opaqueCMSampleBuffer *)a5 timestamp:(id *)a6 error:(id *)a7
{
  v66 = *MEMORY[0x277D85DE8];
  if (self->_mediaType != 4)
  {
    v12 = a4;
    v13 = MEMORY[0x277CC0890];
    if (a6)
    {
      v14 = *MEMORY[0x277CC0890];
      a6->var3 = *(MEMORY[0x277CC0890] + 16);
      *&a6->var0 = v14;
    }

    v15 = [(MOVStreamReaderStreamOutput *)self streamOutput];
    v11 = [v15 copyNextSampleBuffer];

    v16 = [(MOVStreamReaderStreamOutput *)self decoderController];

    if (v16)
    {
      do
      {
        if (CMSampleBufferGetNumSamples(v11) > 0)
        {
          break;
        }

        CFRelease(v11);
        v17 = [(MOVStreamReaderStreamOutput *)self streamOutput];
        v11 = [v17 copyNextSampleBuffer];
      }

      while (v11);
    }

    if (![(MOVStreamReaderStreamOutput *)self firstVideoFrameRead])
    {
      [(MOVStreamReaderStreamOutput *)self setFirstVideoFrameRead:1];
      v18 = 0;
      if (self->_mediaType || !v11)
      {
        goto LABEL_18;
      }

      if ([(MOVStreamReaderStreamOutput *)self isEmptySample:v11])
      {
        v25 = +[MIOLog defaultLog];
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          streamId = self->_streamId;
          *buf = 138543362;
          *&buf[4] = streamId;
          _os_log_impl(&dword_257883000, v25, OS_LOG_TYPE_INFO, "Empty Edit frame detected for stream '%{public}@'.", buf, 0xCu);
        }

        v27 = [(MOVStreamReaderStreamOutput *)self reader];
        v28 = [v27 skipEmptyEditVideoFrame];

        if (!v28)
        {
          v18 = 1;
LABEL_18:
          v19 = [(MOVStreamReaderStreamOutput *)self reader];
          v20 = [v19 restrictVideoFramesToEdits];

          if (v11)
          {
            v21 = v20;
          }

          else
          {
            v21 = 0;
          }

          if (v21 == 1)
          {
            do
            {
              if ([(MOVStreamReaderStreamOutput *)self isSampleInEdit:v11])
              {
                break;
              }

              CFRelease(v11);
              v22 = [(MOVStreamReaderStreamOutput *)self streamOutput];
              v11 = [v22 copyNextSampleBuffer];
            }

            while (v11);
          }

          v23 = [(MOVStreamReaderStreamOutput *)self attachmentsDataForStreamPts:&v62 duration:&v61];
          v60 = *v13;
          if (v12)
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

          if (v11)
          {
            if (CMSampleBufferGetNumSamples(v11))
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
          if (v11)
          {
LABEL_45:
            memset(&v59, 0, sizeof(v59));
            CMSampleBufferGetPresentationTimeStamp(&v59, v11);
            if (a6)
            {
              *a6 = v59;
            }

            v31 = [(MOVStreamReaderStreamOutput *)self assetTrack];
            [v31 nominalFrameRate];
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

                v37 = [(MOVStreamReaderStreamOutput *)self assetReader];
                v38 = v37;
                if (v37)
                {
                  [v37 timeRange];
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

            if (a3)
            {
              v52 = v23;
              *a3 = v23;
            }

            if (a5)
            {
              *a5 = i;
            }

            goto LABEL_79;
          }

LABEL_59:
          v43 = [(MOVStreamReaderStreamOutput *)self assetReader];
          v44 = [v43 status] == 3;

          if (v44)
          {
            v45 = [(MOVStreamReaderStreamOutput *)self assetReader];
            v46 = [v45 error];
            if (!v46)
            {
              __assert_rtn("[MOVStreamReaderStreamOutput nextSampleBufferForStreamAttachmentsDataArray:readTimeCode:timecodeSampleBuffer:timestamp:error:]", "MOVStreamReaderStreamOutput.mm", 1819, "self.assetReader.error != nil");
            }

            if (a7)
            {
              v47 = [(MOVStreamReaderStreamOutput *)self assetReader];
              v48 = [v47 error];
              *a7 = [v48 copy];
            }
          }

          else
          {
            [(MOVStreamReaderStreamOutput *)self setEndOfStreamReached:1];
            v49 = [(MOVStreamReaderStreamOutput *)self pixelBufferAttachmentsOutput];
            [v49 finish];

            while (v23 | i)
            {
              v50 = [(MOVStreamReaderStreamOutput *)self attachmentsDataForStreamPts:0 duration:0];

              v23 = v50;
              i = [(MOVStreamReaderStreamOutput *)self timeCodeBufferForStream:0];
            }

            v23 = 0;
          }

          v11 = 0;
LABEL_79:

          return v11;
        }

        CFRelease(v11);
        v29 = [(MOVStreamReaderStreamOutput *)self streamOutput];
        v11 = [v29 copyNextSampleBuffer];
      }
    }

    v18 = 0;
    goto LABEL_18;
  }

  v10 = [(MOVStreamReaderStreamOutput *)self timeCodeBufferForStream:a6, a4];
  if (v10)
  {
    v11 = v10;
    while (!CMSampleBufferGetTotalSampleSize(v11))
    {
      v11 = [(MOVStreamReaderStreamOutput *)self timeCodeBufferForStream:a6];
      if (!v11)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    [(MOVStreamReaderStreamOutput *)self setEndOfStreamReached:1];
    v11 = 0;
  }

  if (a3)
  {
    *a3 = 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  return v11;
}

- (opaqueCMSampleBuffer)timeCodeBufferForStream:(id *)a3
{
  v4 = self;
  if (a3)
  {
    v5 = *MEMORY[0x277CC0890];
    a3->var3 = *(MEMORY[0x277CC0890] + 16);
    *&a3->var0 = v5;
    if ([(MOVStreamReaderStreamOutput *)self futureTimeCodeBuffer])
    {
      [(MOVStreamReaderStreamOutput *)v4 futureTimeCodePts];
      *a3 = v11;
LABEL_5:
      v6 = [(MOVStreamReaderStreamOutput *)v4 futureTimeCodeBuffer];
      [(MOVStreamReaderStreamOutput *)v4 setFutureTimeCodeBuffer:0];
      return v6;
    }
  }

  else if ([(MOVStreamReaderStreamOutput *)self futureTimeCodeBuffer])
  {
    goto LABEL_5;
  }

  if ([(MOVStreamReaderStreamOutput *)v4 mediaType]!= 4)
  {
    v4 = v4->_timeCodeOutput;
  }

  v7 = [(MOVStreamReaderStreamOutput *)v4 streamOutput];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 copyNextSampleBuffer];
    v6 = v9;
    if (a3 && v9)
    {
      CMSampleBufferGetPresentationTimeStamp(&v11, v9);
      *a3 = v11;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)attachmentsDataForStreamPts:(id *)a3 duration:(id *)a4
{
  v37 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v7 = *MEMORY[0x277CC0890];
    a3->var3 = *(MEMORY[0x277CC0890] + 16);
    *&a3->var0 = v7;
  }

  v8 = [(MOVStreamReaderStreamOutput *)self futureAttachmentsData];

  if (v8)
  {
    if (a3)
    {
      [(MOVStreamReaderStreamOutput *)self futureAttachmentsPts];
      *&a3->var0 = v30;
      a3->var3 = *&v31[0];
    }

    if (a4)
    {
      [(MOVStreamReaderStreamOutput *)self futureAttachmentsDuration];
      *&a4->var0 = v30;
      a4->var3 = *&v31[0];
    }

    v9 = [(MOVStreamReaderStreamOutput *)self futureAttachmentsData];
    [(MOVStreamReaderStreamOutput *)self setFutureAttachmentsData:0];
  }

  else
  {
    v10 = [(MOVStreamReaderStreamOutput *)self attachmentsAdaptor];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 nextTimedMetadataGroup];
      v13 = [v12 items];
      v14 = [v13 count];

      if (v14)
      {
        if (a3)
        {
          if (v12)
          {
            [v12 timeRange];
          }

          else
          {
            memset(v31, 0, sizeof(v31));
            v30 = 0u;
          }

          *&a3->var0 = v30;
          a3->var3 = *&v31[0];
        }

        if (a4)
        {
          if (v12)
          {
            [v12 timeRange];
          }

          else
          {
            memset(v31, 0, sizeof(v31));
            v30 = 0u;
          }

          *&a4->var0 = *(v31 + 8);
          a4->var3 = *(&v31[1] + 1);
        }

        v9 = objc_opt_new();
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v19 = [v12 items];
        v20 = [v19 countByEnumeratingWithState:&v26 objects:v36 count:16];
        if (v20)
        {
          v21 = *v27;
          do
          {
            for (i = 0; i != v20; ++i)
            {
              if (*v27 != v21)
              {
                objc_enumerationMutation(v19);
              }

              v23 = [*(*(&v26 + 1) + 8 * i) value];
              if (v23)
              {
                [v9 addObject:v23];
              }
            }

            v20 = [v19 countByEnumeratingWithState:&v26 objects:v36 count:16];
          }

          while (v20);
        }
      }

      else
      {

        v9 = 0;
      }
    }

    else
    {
      v15 = [(MOVStreamReaderStreamOutput *)self seiTrackReader];
      v25 = 0;
      v9 = [v15 copyNextSEIPts:&v30 deserialize:0 error:&v25];
      v16 = v25;

      if (v16)
      {
        v17 = +[MIOLog defaultLog];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v18 = [(MOVStreamReaderStreamOutput *)self streamId];
          *buf = 138543618;
          v33 = v18;
          v34 = 2114;
          v35 = v16;
          _os_log_impl(&dword_257883000, v17, OS_LOG_TYPE_ERROR, "Error reading SEI for %{public}@: %{public}@", buf, 0x16u);
        }

        v9 = 0;
      }

      else if (a3 && v9)
      {
        *&a3->var0 = v30;
        a3->var3 = *&v31[0];
      }
    }
  }

  return v9;
}

- (id)nextAttachmentWithError:(id *)a3
{
  v5 = [(MOVStreamReaderStreamOutput *)self attachmentsAdaptor];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 nextTimedMetadataGroup];
    v8 = [v7 items];
    v9 = [v8 firstObject];

    if (v9)
    {
      v10 = [v9 value];
      v11 = [(MOVStreamReaderStreamOutput *)self decodeAttachmentsData:v10 error:a3];
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

- (id)decodeAttachmentsData:(id)a3 error:(id *)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (!v6)
  {
    v8 = 0;
    goto LABEL_20;
  }

  v35 = 0;
  v7 = [(MOVStreamReaderStreamOutput *)self attachmentSerializationMode];
  if (!v7)
  {
    v32 = 0;
    v8 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v6 options:1 error:&v32];
    v17 = v32;
    if (!v17)
    {
      goto LABEL_20;
    }

    v18 = v17;
    v31 = 0;
    v19 = [MEMORY[0x277CCAC58] propertyListWithData:v6 options:0 format:&v35 error:&v31];
    v11 = v31;

    v20 = MEMORY[0x277CCACA8];
    v21 = [(MOVStreamReaderStreamOutput *)self streamId];
    v22 = [v20 stringWithFormat:@"Wrong attachments serialization mode JSON for stream '%@' (fallback to PLIST).", v21];

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

  if (v7 != 1)
  {
    if (v7 == 2)
    {
      v36 = @"RawAttachmentData";
      v37 = v6;
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
  v9 = [MEMORY[0x277CCAC58] propertyListWithData:v6 options:0 format:&v35 error:&v34];
  v10 = v34;
  if (v10)
  {
    v11 = v10;
    v33 = 0;
    v8 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v6 options:1 error:&v33];
    v12 = v33;
    v13 = MEMORY[0x277CCACA8];
    if (v8)
    {
      v14 = [(MOVStreamReaderStreamOutput *)self streamId];
      v15 = [v13 stringWithFormat:@"Wrong attachments serialization mode PLIST for stream '%@' (fallback to JSON).", v14];

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
      v25 = [v11 localizedDescription];
      v26 = [v13 stringWithFormat:@"Metadata PLIST Read error: %@", v25];

      [MEMORY[0x277CCA9B8] populateReaderError:a4 message:v26 code:8];
      v27 = MEMORY[0x277CCACA8];
      v28 = [(MOVStreamReaderStreamOutput *)self streamId];
      v29 = [v27 stringWithFormat:@"No matching serialization mode for stream '%@' (fallback to RAW).", v28];

      v30 = +[MIOLog defaultLog];
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v39 = v29;
        _os_log_impl(&dword_257883000, v30, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
      }

      [(MOVStreamReaderStreamOutput *)self setAttachmentSerializationMode:2];
      v8 = [(MOVStreamReaderStreamOutput *)self decodeAttachmentsData:v6 error:0];
    }

LABEL_19:

    goto LABEL_20;
  }

  v8 = v9;
LABEL_20:

  return v8;
}

- (opaqueCMSampleBuffer)grabNextSampleBufferForStreamTimestamp:(id *)a3 error:(id *)a4
{
  v10 = 0;
  v6 = [(MOVStreamReaderStreamOutput *)self nextSampleBufferForStreamAttachmentsData:&v10 timestamp:a3 error:a4];
  v7 = v10;
  if (v6)
  {
    v8 = [(MOVStreamReaderStreamOutput *)self decodeAttachmentsData:v7 error:a4];
    if (v8)
    {
      CMSetAttachments(v6, v8, 1u);
    }
  }

  return v6;
}

- (id)grabNextMetadataItemsTimeRange:(id *)a3 error:(id *)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = [(MOVStreamReaderStreamOutput *)self grabNextTimedMetadataGroupOfStreamError:a4];
  v6 = v5;
  if (v5)
  {
    v7 = MEMORY[0x277CBEB18];
    v8 = [v5 items];
    v9 = [v7 arrayWithCapacity:{objc_msgSend(v8, "count")}];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = [v6 items];
    v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v11)
    {
      v12 = *v19;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v10);
          }

          [v9 addObject:*(*(&v18 + 1) + 8 * i)];
        }

        v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v11);
    }

    if (a3)
    {
      [v6 timeRange];
      *&a3->var0.var0 = v15;
      *&a3->var0.var3 = v16;
      *&a3->var1.var1 = v17;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)grabNextMetadataItemsOfTrackAssociatedWithStreamWithIdentifier:(id)a3 timeRange:(id *)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [(MOVStreamReaderStreamOutput *)self associatedMetadataOutputs];
  v10 = [v9 objectForKey:v8];

  if (v10)
  {
    v11 = [v10 grabNextMetadataItemsTimeRange:a4 error:a5];
  }

  else
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"No associated metadata stream found with identifier '%@'.", v8];
    [MEMORY[0x277CCA9B8] populateReaderError:a5 message:v12 code:7];

    v11 = 0;
  }

  return v11;
}

- (id)grabNextTimedMetadataGroupOfStreamError:(id *)a3
{
  v5 = [(MOVStreamReaderStreamOutput *)self metadataTrackMetadataAdaptor];
  v6 = v5;
  if (!v5)
  {
    v14 = MEMORY[0x277CCACA8];
    v15 = [(MOVStreamReaderStreamOutput *)self streamId];
    v12 = [v14 stringWithFormat:@"No AVAssetReaderOutputMetadataAdaptor found for metadata stream: '%@'", v15];

    [MEMORY[0x277CCA9B8] populateReaderError:a3 message:v12 code:5];
    v7 = 0;
    goto LABEL_8;
  }

  v7 = [v5 nextTimedMetadataGroup];
  if (v7)
  {
    goto LABEL_10;
  }

  v8 = [(MOVStreamReaderStreamOutput *)self assetReader];
  v9 = [v8 status];

  if (v9 == 3)
  {
    v10 = [(MOVStreamReaderStreamOutput *)self assetReader];
    v11 = [v10 error];
    if (!v11)
    {
      __assert_rtn("[MOVStreamReaderStreamOutput grabNextTimedMetadataGroupOfStreamError:]", "MOVStreamReaderStreamOutput.mm", 2191, "self.assetReader.error != nil");
    }

    if (a3)
    {
      v12 = [(MOVStreamReaderStreamOutput *)self assetReader];
      v13 = [v12 error];
      *a3 = [v13 copy];

LABEL_8:
    }
  }

  else
  {
    [(MOVStreamReaderStreamOutput *)self setEndOfStreamReached:1];
  }

LABEL_10:

  return v7;
}

- (id)grabNextMetadataOfStreamTimeRange:(id *)a3 error:(id *)a4
{
  v45 = *MEMORY[0x277D85DE8];
  if ([(MOVStreamReaderStreamOutput *)self mediaType]!= 2)
  {
    v12 = 0;
    goto LABEL_30;
  }

  v33 = a3;
  v6 = [(MOVStreamReaderStreamOutput *)self version];
  v7 = [v6 versionedKey:@"mdta/com.apple.metadata_stream_item" modifier:0];

  v8 = [(MOVStreamReaderStreamOutput *)self metadataTrackMetadataAdaptor];
  v35 = v8;
  if (v8)
  {
    v9 = [v8 nextTimedMetadataGroup];
    v34 = v9;
    if (v9)
    {
      v10 = MEMORY[0x277CBEB18];
      v11 = [v9 items];
      v12 = [v10 arrayWithCapacity:{objc_msgSend(v11, "count")}];

      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v13 = [v34 items];
      v14 = [v13 countByEnumeratingWithState:&v40 objects:v44 count:16];
      if (v14)
      {
        v15 = *v41;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v41 != v15)
            {
              objc_enumerationMutation(v13);
            }

            v17 = *(*(&v40 + 1) + 8 * i);
            v18 = [v17 identifier];
            v19 = [v18 isEqualToString:v7];

            if (v19 || ([v17 identifier], v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "isEqualToString:", @"mdta/com.apple.rawIMUDict"), v22, v23))
            {
              v20 = [v17 value];
              v21 = [v20 copy];
              [v12 addObject:v21];
            }

            else
            {
              v20 = [v17 value];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v24 = [v17 value];
                v25 = [v24 copy];
              }

              else
              {
                v24 = [MOVStreamIOUtility getPlistFriendlyCopyOf:v20];
                v25 = [MEMORY[0x277CCAC58] dataWithPropertyList:v24 format:200 options:0 error:a4];
              }

              v21 = v25;

              if (v21)
              {
                [v12 addObject:v21];
              }
            }
          }

          v14 = [v13 countByEnumeratingWithState:&v40 objects:v44 count:16];
        }

        while (v14);
      }

      if (v33)
      {
        [v34 timeRange];
        *&v33->var0.var0 = v37;
        *&v33->var0.var3 = v38;
        *&v33->var1.var1 = v39;
      }

      goto LABEL_29;
    }

    v26 = [(MOVStreamReaderStreamOutput *)self assetReader];
    v27 = [v26 status];

    if (v27 == 3)
    {
      v28 = [(MOVStreamReaderStreamOutput *)self assetReader];
      v29 = [v28 error];
      if (!v29)
      {
        __assert_rtn("[MOVStreamReaderStreamOutput grabNextMetadataOfStreamTimeRange:error:]", "MOVStreamReaderStreamOutput.mm", 2257, "self.assetReader.error != nil");
      }

      if (a4)
      {
        v30 = [(MOVStreamReaderStreamOutput *)self assetReader];
        v31 = [v30 error];
        *a4 = [v31 copy];
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

- (id)removeColorAttachments:(id)a3
{
  v3 = [a3 mutableCopy];
  [v3 removeObjectForKey:*MEMORY[0x277CC4CC0]];
  [v3 removeObjectForKey:*MEMORY[0x277CC4D10]];
  [v3 removeObjectForKey:*MEMORY[0x277CC4C00]];
  [v3 removeObjectForKey:*MEMORY[0x277CC4B80]];
  [v3 removeObjectForKey:*MEMORY[0x277CC4B88]];
  v4 = [v3 copy];

  return v4;
}

- (BOOL)shouldDiscardStream:(id)a3 mediaType:(int64_t)a4 track:(id)a5
{
  v8 = a3;
  v9 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = objc_loadWeakRetained(&self->_delegate);
    v13 = [(MOVStreamReaderStreamOutput *)self reader];
    v14 = [v12 reader:v13 shouldDiscardStream:v8 mediaType:a4 track:v9];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)findTimeCodeTrackAssociatedWithTrack:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 asset];
  v5 = [v4 tracksWithMediaType:*MEMORY[0x277CE5EA0]];

  if ([v5 count])
  {
    v6 = [v3 associatedTracksOfType:*MEMORY[0x277CE61A0]];
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

- (id)findTracksAssociatedWithTimeCodeTrack:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 asset];
  v16 = [v4 tracks];

  v5 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v16;
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
        v13 = [v12 containsObject:v3];

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

- (BOOL)addAssociatedMetadataTracks:(id)a3 rawSampleAttachmentsIdentifier:(id)a4 trackKindIdentifier:(id)a5 movVersion:(id)a6 error:(id *)a7
{
  v71 = *MEMORY[0x277D85DE8];
  v49 = a3;
  v10 = a5;
  v52 = a6;
  v11 = [a4 componentsSeparatedByString:@"/"];
  v56 = [v11 objectAtIndexedSubscript:1];

  v50 = objc_opt_new();
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  obj = v49;
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
      v15 = [v14 metadata];
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v16 = v15;
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
          v21 = [v20 identifier];
          v22 = [v21 isEqualToString:v10];

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

        v23 = [v20 value];

        v24 = v23;
        if (v23)
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
        v26 = [(MOVStreamReaderStreamOutput *)self assetReader];
        v27 = [v26 canAddOutput:v25];

        if (!v27)
        {
          v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"Can't add metadata track (%@) to the AVAssetReader.", v14];
          v45 = 1;
          [MEMORY[0x277CCA9B8] populateReaderError:a7 message:v29 code:1];
          goto LABEL_31;
        }

        v28 = [(MOVStreamReaderStreamOutput *)self assetReader];
        [v28 addOutput:v25];

        v29 = [objc_alloc(MEMORY[0x277CE6420]) initWithAssetReaderTrackOutput:v25];
        [(MOVStreamReaderStreamOutput *)self setAttachmentsAdaptor:v29];
        if (![(MOVStreamReaderStreamOutput *)self shouldSetupBufferAttchmentsOutput])
        {
LABEL_28:
          v45 = 3;
          goto LABEL_31;
        }

        v30 = [MIOBufferAttachmentsOutput alloc];
        v31 = [(MOVStreamReaderStreamOutput *)self assetReader];
        v60 = 0;
        v32 = [(MIOBufferAttachmentsOutput *)v30 initWithMetadataTrack:v14 assetReader:v31 error:&v60];
        v33 = v60;
        [(MOVStreamReaderStreamOutput *)self setPixelBufferAttachmentsOutput:v32];

        if (v33)
        {
          [(MOVStreamReaderStreamOutput *)self setPixelBufferAttachmentsOutputInitError:v33];
        }
      }

      else
      {
        v34 = [MOVStreamReaderStreamOutput alloc];
        v35 = [(MOVStreamReaderStreamOutput *)self assetReader];
        v36 = [(MOVStreamReaderStreamOutput *)self reader];
        v37 = [(MOVStreamReaderStreamOutput *)self reader];
        v38 = [v37 delegate];
        v59 = 0;
        v29 = [(MOVStreamReaderStreamOutput *)v34 initWithMetadataTrack:v14 assetReader:v35 version:v52 unknownStreamId:v58 reader:v36 delegate:v38 error:&v59];
        v25 = v59;

        if (!v25)
        {
          v33 = [(MOVStreamReaderStreamOutput *)v29 streamId];
          [v50 setObject:v29 forKey:v33];
          v45 = 0;
          goto LABEL_30;
        }

        v33 = [(MOVStreamReaderStreamOutput *)self reader];
        v39 = [v33 delegate];
        if (v39)
        {
          v40 = [(MOVStreamReaderStreamOutput *)self reader];
          v41 = [v40 delegate];
          v42 = objc_opt_respondsToSelector();

          if ((v42 & 1) == 0)
          {
            goto LABEL_28;
          }

          v33 = [(MOVStreamReaderStreamOutput *)self reader];
          v43 = [v33 delegate];
          v44 = [(MOVStreamReaderStreamOutput *)self reader];
          [v43 reader:v44 didReceiveWarning:v25];
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
  v3 = [(MOVStreamReaderStreamOutput *)self delegate];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = [(MOVStreamReaderStreamOutput *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = [(MOVStreamReaderStreamOutput *)self delegate];
  v8 = [(MOVStreamReaderStreamOutput *)self reader];
  v9 = [(MOVStreamReaderStreamOutput *)self streamId];
  v10 = [v7 reader:v8 requestBufferAttachmentsOutput:v9 mediaType:{-[MOVStreamReaderStreamOutput mediaType](self, "mediaType")}];

  return v10;
}

- (BOOL)isEmptySample:(opaqueCMSampleBuffer *)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = [(MOVStreamReaderStreamOutput *)self assetTrack];
  v5 = [v4 segments];

  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = *v20;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        if ([v9 isEmpty])
        {
          memset(&v18, 0, sizeof(v18));
          CMSampleBufferGetPresentationTimeStamp(&v18, a3);
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

      v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
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

- (BOOL)isSampleInEdit:(opaqueCMSampleBuffer *)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = [(MOVStreamReaderStreamOutput *)self assetTrack];
  v5 = [v4 segments];

  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = *v20;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        memset(&v18, 0, sizeof(v18));
        CMSampleBufferGetPresentationTimeStamp(&v18, a3);
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

      v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
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

- (id)streamIdFromTrackStreamTypeIdentifier:(id)a3
{
  v3 = a3;
  if (([(__CFString *)v3 isEqualToString:@"Depth"]& 1) != 0)
  {
    v4 = @"FrontDepth";
  }

  else if (([(__CFString *)v3 isEqualToString:@"Color"]& 1) != 0)
  {
    v4 = @"FrontColor";
  }

  else
  {
    if (![(__CFString *)v3 isEqualToString:@"IR"])
    {
      goto LABEL_8;
    }

    v4 = @"FrontIR";
  }

  v3 = v4;
LABEL_8:

  return v3;
}

- (int)playbackPixelFormatForTrack:(id)a3 ofStream:(id)a4 streamEncodingType:(id)a5 inputPixelFormat:(unsigned int)a6 delegate:(id)a7
{
  v30 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  if (![v14 length])
  {
    MediaSubType = [(MOVStreamReaderStreamOutput *)self playbackPixelFormatForTrack:v12 ofStream:v13 delegate:v15];
    goto LABEL_8;
  }

  if (([v14 isEqualToString:@"h264"] & 1) != 0 || objc_msgSend(v14, "isEqualToString:", @"HEVC"))
  {
    if ([v13 isEqualToString:@"RawBayer"])
    {
      a6 = 1278226736;
    }

    else
    {
      a6 = 875704438;
    }

    goto LABEL_9;
  }

  if ([v14 isEqualToString:@"slim"])
  {
    v18 = [MEMORY[0x277CCAC38] processInfo];
    v29 = 0;
    *buf = xmmword_25792F6F0;
    v19 = [v18 isOperatingSystemAtLeastVersion:buf];

    if (v19)
    {
      v20 = [v12 formatDescriptions];
      v21 = [v20 objectAtIndexedSubscript:0];

      Extensions = CMFormatDescriptionGetExtensions(v21);
      Value = CFDictionaryGetValue(Extensions, *MEMORY[0x277CC0400]);
      valuePtr = 0;
      CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
      if (valuePtr < 0xA && ((0x381u >> valuePtr) & 1) != 0)
      {
        a6 = *&a010l010l010l01[4 * valuePtr];
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

        a6 = -1;
      }
    }

    else
    {
      a6 = 2037741158;
    }

    goto LABEL_9;
  }

  if (([v14 isEqualToString:@"HEVCMonochrome"] & 1) == 0 && !objc_msgSend(v14, "isEqualToString:", @"HEVCMonochrom"))
  {
    a6 = 875704438;
    if (![v14 isEqualToString:@"none"])
    {
      goto LABEL_9;
    }

    v25 = [v12 formatDescriptions];
    v26 = [v25 objectAtIndexedSubscript:0];

    if (!v26)
    {
      goto LABEL_9;
    }

    MediaSubType = CMFormatDescriptionGetMediaSubType(v26);
LABEL_8:
    a6 = MediaSubType;
    goto LABEL_9;
  }

  if (a6 != 875704422 && a6 != 875704438 && a6 != 1278226488)
  {
    a6 = 1278226736;
  }

LABEL_9:

  return a6;
}

- (BOOL)formatDescriptionOfTrack:(id)a3 containsKey:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [a3 formatDescriptions];
  v7 = [v6 objectAtIndexedSubscript:0];

  [(__CFDictionary *)CMFormatDescriptionGetExtensions(v7) objectForKeyedSubscript:@"MetadataKeyTable"];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v17 = v19 = 0u;
  v8 = [v17 allValues];
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = *v19;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = [*(*(&v18 + 1) + 8 * i) objectForKeyedSubscript:@"MetadataKeyValue"];
        v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v12 encoding:4];
        v14 = [v13 isEqualToString:v5];

        if (v14)
        {
          v15 = 1;
          goto LABEL_11;
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
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

- (BOOL)formatDescriptionOfTrack:(id)a3 containsKeyFromIndentifier:(id)a4
{
  v6 = a3;
  v7 = [a4 componentsSeparatedByString:@"/"];
  if ([v7 count] == 2)
  {
    v8 = [v7 lastObject];
    v9 = [(MOVStreamReaderStreamOutput *)self formatDescriptionOfTrack:v6 containsKey:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (int)playbackPixelFormatForTrack:(id)a3 ofStream:(id)a4 delegate:(id)a5
{
  v35 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = 875704438;
  if ([v9 isEqualToString:@"FrontColor"] & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", @"BackColorWide") & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", @"BackColorTele"))
  {
    goto LABEL_17;
  }

  if (([v9 isEqualToString:@"BackIR"] & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", @"FrontIR") & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", @"FrontDepth") & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", @"BackDepth") & 1) != 0 || objc_msgSend(v9, "isEqualToString:", @"RawBayer"))
  {
    v12 = [MEMORY[0x277CCAC38] processInfo];
    v34 = 0;
    *buf = xmmword_25792F6F0;
    v13 = [v12 isOperatingSystemAtLeastVersion:buf];

    if (v13)
    {
      v14 = [v8 formatDescriptions];
      v15 = [v14 objectAtIndexedSubscript:0];

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
  if (v10 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v20 = [(MOVStreamReaderStreamOutput *)self reader];
    v21 = [v10 pixelFormatForUnknownTrackOfReader:v20 streamId:v9];

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
        v26 = [(MOVStreamReaderStreamOutput *)self reader];
        v21 = [v10 pixelFormatForUnknownTrackOfReader:v26];

        if (v21)
        {
          goto LABEL_21;
        }
      }
    }
  }

  v27 = objc_loadWeakRetained(&self->_assetReader);
  v28 = [v27 asset];
  v31 = 0;
  v29 = +[MOVStreamIOUtility detectPixelFormatForAsset:videoTrackId:error:](MOVStreamIOUtility, "detectPixelFormatForAsset:videoTrackId:error:", v28, [v8 trackID], &v31);
  v30 = v31;

  if (!v29)
  {
    v29 = [MOVStreamIOUtility guessPixelFormatForTrack:v8];
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