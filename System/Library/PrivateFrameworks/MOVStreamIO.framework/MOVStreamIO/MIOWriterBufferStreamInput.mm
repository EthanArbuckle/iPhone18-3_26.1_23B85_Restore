@interface MIOWriterBufferStreamInput
- (BOOL)areAllInputsReady;
- (BOOL)setupInputsWithWriter:(id)writer error:(id *)error;
- (BOOL)writeNextItemFromFifo;
- (MIOWriterBufferStreamInput)init;
- (id)allWriterInputs;
- (id)commonTrackMetadataItems;
@end

@implementation MIOWriterBufferStreamInput

- (MIOWriterBufferStreamInput)init
{
  v3.receiver = self;
  v3.super_class = MIOWriterBufferStreamInput;
  return [(MIOWriterStreamInput *)&v3 init];
}

- (id)allWriterInputs
{
  v7[1] = *MEMORY[0x277D85DE8];
  v7[0] = self->_sampleInput;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  v4 = [v3 mutableCopy];

  if (self->_timeCodeInput)
  {
    [v4 addObject:?];
  }

  if (self->_metadataInput)
  {
    [v4 addObject:?];
  }

  v5 = [v4 copy];

  return v5;
}

- (BOOL)areAllInputsReady
{
  sampleInput = [(MIOWriterBufferStreamInput *)self sampleInput];
  isReadyForMoreMediaData = [sampleInput isReadyForMoreMediaData];

  if (self->_timeCodeInput)
  {
    if (!isReadyForMoreMediaData)
    {
      return 0;
    }

    timeCodeInput = [(MIOWriterBufferStreamInput *)self timeCodeInput];
    isReadyForMoreMediaData = [timeCodeInput isReadyForMoreMediaData];
  }

  if (self->_metadataInput)
  {
    v6 = isReadyForMoreMediaData == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    return (self->_metadataInput == 0) & isReadyForMoreMediaData;
  }

  metadataInput = [(MIOWriterBufferStreamInput *)self metadataInput];
  isReadyForMoreMediaData2 = [metadataInput isReadyForMoreMediaData];

  return isReadyForMoreMediaData2;
}

- (id)commonTrackMetadataItems
{
  v3 = objc_opt_new();
  v4 = MEMORY[0x277CE6520];
  streamId = [(MIOWriterStreamInput *)self streamId];
  v6 = [v4 trackMetadataItemWithStreamId:streamId];

  if (v6)
  {
    [v3 addObject:v6];
  }

  v7 = MEMORY[0x277CE6520];
  streamId2 = [(MIOWriterStreamInput *)self streamId];
  v9 = [v7 qtTrackMetadataItemsForStreamId:streamId2];
  [v3 addObjectsFromArray:v9];

  v10 = [MEMORY[0x277CE6520] trackMetadataItemWithSerializationMode:1];

  if (v10)
  {
    [v3 addObject:v10];
  }

  v11 = MEMORY[0x277CE6520];
  customMetadata = [(MIOWriterStreamInput *)self customMetadata];
  v13 = [v11 customTrackMetadataItems:customMetadata];

  if ([v13 count])
  {
    [v3 addObjectsFromArray:v13];
  }

  customMetadataItems = [(MIOWriterStreamInput *)self customMetadataItems];
  v15 = [customMetadataItems count];

  if (v15)
  {
    customMetadataItems2 = [(MIOWriterStreamInput *)self customMetadataItems];
    [v3 addObjectsFromArray:customMetadataItems2];
  }

  return v3;
}

- (BOOL)setupInputsWithWriter:(id)writer error:(id *)error
{
  writerCopy = writer;
  sampleInputOutputSettings = [(MIOWriterBufferStreamInput *)self sampleInputOutputSettings];
  avMediaType = [(MIOWriterBufferStreamInput *)self avMediaType];
  formatDescription = [(MIOWriterBufferStreamInput *)self formatDescription];
  avWriter = [writerCopy avWriter];
  v11 = [avWriter canApplyOutputSettings:sampleInputOutputSettings forMediaType:avMediaType];

  if (v11)
  {
    errorCopy = error;
    v12 = [objc_alloc(MEMORY[0x277CE6468]) initWithMediaType:avMediaType outputSettings:sampleInputOutputSettings sourceFormatHint:formatDescription];
    sampleInput = self->_sampleInput;
    self->_sampleInput = v12;

    -[AVAssetWriterInput setExpectsMediaDataInRealTime:](self->_sampleInput, "setExpectsMediaDataInRealTime:", [writerCopy realTime]);
    if ([(MIOWriterBufferStreamInput *)self applyWriterTimeScaleToSampleInput])
    {
      if ([(MIOWriterStreamInput *)self mediaTimeScale]< 1)
      {
        writer = [(MIOWriterStreamInput *)self writer];
        -[AVAssetWriterInput setMediaTimeScale:](self->_sampleInput, "setMediaTimeScale:", [writer baseMediaTimeScale]);
      }

      else
      {
        [(AVAssetWriterInput *)self->_sampleInput setMediaTimeScale:[(MIOWriterStreamInput *)self mediaTimeScale]];
      }
    }

    commonTrackMetadataItems = [(MIOWriterBufferStreamInput *)self commonTrackMetadataItems];
    v20 = [commonTrackMetadataItems mutableCopy];

    inputSpecificTrackMetadataItems = [(MIOWriterBufferStreamInput *)self inputSpecificTrackMetadataItems];
    if ([inputSpecificTrackMetadataItems count])
    {
      [v20 addObjectsFromArray:inputSpecificTrackMetadataItems];
    }

    if (![writerCopy disguiseMode])
    {
      [(AVAssetWriterInput *)self->_sampleInput setMetadata:v20];
    }

    [(MIOWriterBufferStreamInput *)self customizeSampleInput:self->_sampleInput];
    taggedPixelBufferAttributes = [(MIOWriterBufferStreamInput *)self taggedPixelBufferAttributes];
    if (taggedPixelBufferAttributes)
    {
      v23 = [objc_alloc(MEMORY[0x277CE6480]) initWithAssetWriterInput:self->_sampleInput sourcePixelBufferAttributes:taggedPixelBufferAttributes];
      taggedPixelBufferGroupAdaptor = self->_taggedPixelBufferGroupAdaptor;
      self->_taggedPixelBufferGroupAdaptor = v23;
    }

    avWriter2 = [writerCopy avWriter];
    v26 = [avWriter2 canAddInput:self->_sampleInput];

    if (v26)
    {
      avWriter3 = [writerCopy avWriter];
      [avWriter3 addInput:self->_sampleInput];

      if (self->_doNotRecordAttachments || [writerCopy disguiseMode])
      {
        goto LABEL_16;
      }

      createMIOMetadataAttachmentsFormatDescription = [MEMORY[0x277CE6520] createMIOMetadataAttachmentsFormatDescription];
      if (createMIOMetadataAttachmentsFormatDescription)
      {
        v34 = createMIOMetadataAttachmentsFormatDescription;
        v35 = objc_alloc(MEMORY[0x277CE6468]);
        v36 = [v35 initWithMediaType:*MEMORY[0x277CE5E70] outputSettings:0 sourceFormatHint:v34];
        metadataInput = self->_metadataInput;
        self->_metadataInput = v36;

        CFRelease(v34);
        streamId = [(MIOWriterStreamInput *)self streamId];
        pendingAttachments = [MOVStreamIOUtility qtTrackNameForAssociatedAttachmentsTrack:streamId];

        v51 = [MEMORY[0x277CE6520] qtTrackMetadataItemsForStreamId:pendingAttachments];
        [(AVAssetWriterInput *)self->_metadataInput setMetadata:?];
        -[AVAssetWriterInput setExpectsMediaDataInRealTime:](self->_metadataInput, "setExpectsMediaDataInRealTime:", [writerCopy realTime]);
        if ([(MIOWriterStreamInput *)self mediaTimeScale]< 1)
        {
          writer2 = [(MIOWriterStreamInput *)self writer];
          -[AVAssetWriterInput setMediaTimeScale:](self->_metadataInput, "setMediaTimeScale:", [writer2 baseMediaTimeScale]);
        }

        else
        {
          [(AVAssetWriterInput *)self->_metadataInput setMediaTimeScale:[(MIOWriterStreamInput *)self mediaTimeScale]];
        }

        [(MIOWriterBufferStreamInput *)self customizeMetadataInput:self->_metadataInput];
        v41 = *MEMORY[0x277CE6198];
        if ([(AVAssetWriterInput *)self->_metadataInput canAddTrackAssociationWithTrackOfInput:self->_sampleInput type:*MEMORY[0x277CE6198]])
        {
          [(AVAssetWriterInput *)self->_metadataInput addTrackAssociationWithTrackOfInput:self->_sampleInput type:v41];
          v42 = [MEMORY[0x277CE6470] assetWriterInputMetadataAdaptorWithAssetWriterInput:self->_metadataInput];
          metadataAdaptor = self->_metadataAdaptor;
          self->_metadataAdaptor = v42;

          avWriter4 = [writerCopy avWriter];
          v45 = [avWriter4 canAddInput:self->_metadataInput];

          if (v45)
          {
            avWriter5 = [writerCopy avWriter];
            [avWriter5 addInput:self->_metadataInput];

LABEL_16:
            if (![(MIOWriterStreamInput *)self strictlyEnforceBufferCapacity])
            {
              v17 = 1;
              goto LABEL_23;
            }

            v28 = [[MIOFifoBuffer alloc] initWithCapacity:[(MIOWriterStreamInput *)self bufferingCapacity]];
            pendingAttachments = self->_pendingAttachments;
            self->_pendingAttachments = v28;
            v17 = 1;
LABEL_21:

LABEL_23:
            goto LABEL_24;
          }

          v52 = @"Cannot add metadata input for stream '%@'.";
          v47 = 11;
        }

        else
        {
          v52 = @"Cannot associate attachment metadata input with %@.";
          v47 = 13;
        }

        v48 = MEMORY[0x277CCACA8];
        streamId2 = [(MIOWriterStreamInput *)self streamId];
        v50 = [v48 stringWithFormat:v52, streamId2];

        [MEMORY[0x277CCA9B8] populateStreamError:errorCopy message:v50 code:v47];
LABEL_20:
        v17 = 0;
        goto LABEL_21;
      }

      v39 = MEMORY[0x277CCACA8];
      streamId3 = [(MIOWriterStreamInput *)self streamId];
      [v39 stringWithFormat:@"Cannot create metadata format description for stream '%@'.", streamId3];
    }

    else
    {
      v30 = MEMORY[0x277CCACA8];
      streamId3 = [(MIOWriterStreamInput *)self streamId];
      [v30 stringWithFormat:@"Cannot add sample input for stream '%@'.", streamId3];
    }
    pendingAttachments = ;

    [MEMORY[0x277CCA9B8] populateStreamError:error message:pendingAttachments code:11];
    goto LABEL_20;
  }

  v14 = MEMORY[0x277CCACA8];
  streamId4 = [(MIOWriterStreamInput *)self streamId];
  v16 = [v14 stringWithFormat:@"Unable to use output settings (%@) for stream '%@'.", sampleInputOutputSettings, streamId4];

  [MEMORY[0x277CCA9B8] populateStreamError:error message:v16 code:11];
  v17 = 0;
LABEL_24:

  return v17;
}

- (BOOL)writeNextItemFromFifo
{
  writer = [(MIOWriterStreamInput *)self writer];

  if (writer)
  {
    writer2 = [(MIOWriterStreamInput *)self writer];
    canWrite = [writer2 canWrite];

    if (canWrite)
    {
      fifoBuffer = [(MIOWriterStreamInput *)self fifoBuffer];
      usage = [fifoBuffer usage];

      if (usage)
      {
        v8 = objc_autoreleasePoolPush();
        if (![(MIOWriterBufferStreamInput *)self areAllInputsReady])
        {
          v17 = 0;
LABEL_48:
          objc_autoreleasePoolPop(v8);
          return v17;
        }

        fifoBuffer2 = [(MIOWriterStreamInput *)self fifoBuffer];
        dequeue = [fifoBuffer2 dequeue];

        if (!dequeue || (-[MIOWriterStreamInput resolveSample](self, "resolveSample"), -[MIOWriterStreamInput writer](self, "writer"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 startSession], v11, !v12))
        {
          v17 = 0;
LABEL_47:

          goto LABEL_48;
        }

        assignedWritingThread = [(MIOWriterStreamInput *)self assignedWritingThread];
        if (assignedWritingThread)
        {
          assignedWritingThread2 = [(MIOWriterStreamInput *)self assignedWritingThread];
          perfLogHandle = [assignedWritingThread2 perfLogHandle];
        }

        else
        {
          perfLogHandle = [(MIOWriterStreamInput *)self perfLogHandle];
        }

        taggedPixelBufferGroupAdaptor = self->_taggedPixelBufferGroupAdaptor;
        v23 = perfLogHandle;
        if (taggedPixelBufferGroupAdaptor)
        {
          avfAppendSignPostID = [(MIOWriterStreamInput *)self avfAppendSignPostID];
          if (avfAppendSignPostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_257883000, v23, OS_SIGNPOST_INTERVAL_BEGIN, avfAppendSignPostID, "mio.append.stereo.sample.buffer", "", buf, 2u);
          }

          v25 = self->_taggedPixelBufferGroupAdaptor;
          taggedBufferGroup = [dequeue taggedBufferGroup];
          [dequeue taggedBufferPts];
          v27 = [(AVAssetWriterInputTaggedPixelBufferGroupAdaptor *)v25 appendTaggedPixelBufferGroup:taggedBufferGroup withPresentationTime:buf];
          v28 = v23;
          avfAppendSignPostID2 = [(MIOWriterStreamInput *)self avfAppendSignPostID];
          if (avfAppendSignPostID2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
          {
            *buf = 0;
            v30 = "mio.append.stereo.sample.buffer";
LABEL_32:
            _os_signpost_emit_with_name_impl(&dword_257883000, v28, OS_SIGNPOST_INTERVAL_END, avfAppendSignPostID2, v30, "", buf, 2u);
          }
        }

        else
        {
          avfAppendSignPostID3 = [(MIOWriterStreamInput *)self avfAppendSignPostID];
          if (avfAppendSignPostID3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_257883000, v23, OS_SIGNPOST_INTERVAL_BEGIN, avfAppendSignPostID3, "mio.append.sample.buffer", "", buf, 2u);
          }

          sampleInput = [(MIOWriterBufferStreamInput *)self sampleInput];
          v27 = [sampleInput appendSampleBuffer:{objc_msgSend(dequeue, "sampleBuffer")}];

          v28 = v23;
          avfAppendSignPostID2 = [(MIOWriterStreamInput *)self avfAppendSignPostID];
          if (avfAppendSignPostID2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
          {
            *buf = 0;
            v30 = "mio.append.sample.buffer";
            goto LABEL_32;
          }
        }

        if (v27)
        {
          metadataInput = [(MIOWriterBufferStreamInput *)self metadataInput];

          if (!metadataInput)
          {
            goto LABEL_42;
          }

          v34 = v23;
          avfAppendSignPostID4 = [(MIOWriterStreamInput *)self avfAppendSignPostID];
          if (avfAppendSignPostID4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v34))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_257883000, v34, OS_SIGNPOST_INTERVAL_BEGIN, avfAppendSignPostID4, "mio.append.sample.buffer.attachments", "", buf, 2u);
          }

          metadataAdaptor = [(MIOWriterBufferStreamInput *)self metadataAdaptor];
          metadata = [dequeue metadata];
          v38 = [metadataAdaptor appendTimedMetadataGroup:metadata];

          v39 = v34;
          avfAppendSignPostID5 = [(MIOWriterStreamInput *)self avfAppendSignPostID];
          if (avfAppendSignPostID5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v39))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_257883000, v39, OS_SIGNPOST_INTERVAL_END, avfAppendSignPostID5, "mio.append.sample.buffer.attachments", "", buf, 2u);
          }

          if (v38)
          {
LABEL_42:
            v17 = 1;
LABEL_46:

            goto LABEL_47;
          }

          v49 = MEMORY[0x277CCACA8];
          writer3 = [(MIOWriterStreamInput *)self writer];
          avWriter = [writer3 avWriter];
          error = [avWriter error];
          streamId = [(MIOWriterStreamInput *)self streamId];
          v54 = [v49 stringWithFormat:@"Error occurred during appendTimedMetadataGroup %@ for stream '%@'.", error, streamId];

          v55 = [MEMORY[0x277CCA9B8] streamErrorWithMessage:v54 code:21];
          writer4 = [(MIOWriterStreamInput *)self writer];
          [writer4 reportError:v55];
        }

        else
        {
          v41 = MEMORY[0x277CCACA8];
          writer5 = [(MIOWriterStreamInput *)self writer];
          avWriter2 = [writer5 avWriter];
          error2 = [avWriter2 error];
          streamId2 = [(MIOWriterStreamInput *)self streamId];
          v46 = [v41 stringWithFormat:@"Error occurred during AVWriter append %@ for stream '%@'.", error2, streamId2];

          v47 = [MEMORY[0x277CCA9B8] streamErrorWithMessage:v46 code:21];
          writer6 = [(MIOWriterStreamInput *)self writer];
          [writer6 reportError:v47];
        }

        v17 = 0;
        goto LABEL_46;
      }
    }

    else
    {
      v18 = +[MIOLog defaultLog];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_257883000, v18, OS_LOG_TYPE_INFO, "writeNextItemFromFifo dropped sample because writer does not allow writing anymore.", buf, 2u);
      }

      fifoBuffer3 = [(MIOWriterStreamInput *)self fifoBuffer];
      dequeue2 = [fifoBuffer3 dequeue];

      [(MIOWriterStreamInput *)self resolveSample];
      writer7 = [(MIOWriterStreamInput *)self writer];
      [writer7 reportWarning:@"Frame was dropped because writer or AV input state does not allow writing."];
    }

    return 0;
  }

  else
  {
    v16 = +[MIOLog defaultLog];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_257883000, v16, OS_LOG_TYPE_INFO, "writeNextItemFromFifo: writer done", buf, 2u);
    }

    return 1;
  }
}

@end