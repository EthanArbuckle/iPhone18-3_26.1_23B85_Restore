@interface MIOWriterBufferStreamInput
- (BOOL)areAllInputsReady;
- (BOOL)setupInputsWithWriter:(id)a3 error:(id *)a4;
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
  v3 = [(MIOWriterBufferStreamInput *)self sampleInput];
  v4 = [v3 isReadyForMoreMediaData];

  if (self->_timeCodeInput)
  {
    if (!v4)
    {
      return 0;
    }

    v5 = [(MIOWriterBufferStreamInput *)self timeCodeInput];
    v4 = [v5 isReadyForMoreMediaData];
  }

  if (self->_metadataInput)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    return (self->_metadataInput == 0) & v4;
  }

  v7 = [(MIOWriterBufferStreamInput *)self metadataInput];
  v8 = [v7 isReadyForMoreMediaData];

  return v8;
}

- (id)commonTrackMetadataItems
{
  v3 = objc_opt_new();
  v4 = MEMORY[0x277CE6520];
  v5 = [(MIOWriterStreamInput *)self streamId];
  v6 = [v4 trackMetadataItemWithStreamId:v5];

  if (v6)
  {
    [v3 addObject:v6];
  }

  v7 = MEMORY[0x277CE6520];
  v8 = [(MIOWriterStreamInput *)self streamId];
  v9 = [v7 qtTrackMetadataItemsForStreamId:v8];
  [v3 addObjectsFromArray:v9];

  v10 = [MEMORY[0x277CE6520] trackMetadataItemWithSerializationMode:1];

  if (v10)
  {
    [v3 addObject:v10];
  }

  v11 = MEMORY[0x277CE6520];
  v12 = [(MIOWriterStreamInput *)self customMetadata];
  v13 = [v11 customTrackMetadataItems:v12];

  if ([v13 count])
  {
    [v3 addObjectsFromArray:v13];
  }

  v14 = [(MIOWriterStreamInput *)self customMetadataItems];
  v15 = [v14 count];

  if (v15)
  {
    v16 = [(MIOWriterStreamInput *)self customMetadataItems];
    [v3 addObjectsFromArray:v16];
  }

  return v3;
}

- (BOOL)setupInputsWithWriter:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(MIOWriterBufferStreamInput *)self sampleInputOutputSettings];
  v8 = [(MIOWriterBufferStreamInput *)self avMediaType];
  v9 = [(MIOWriterBufferStreamInput *)self formatDescription];
  v10 = [v6 avWriter];
  v11 = [v10 canApplyOutputSettings:v7 forMediaType:v8];

  if (v11)
  {
    v53 = a4;
    v12 = [objc_alloc(MEMORY[0x277CE6468]) initWithMediaType:v8 outputSettings:v7 sourceFormatHint:v9];
    sampleInput = self->_sampleInput;
    self->_sampleInput = v12;

    -[AVAssetWriterInput setExpectsMediaDataInRealTime:](self->_sampleInput, "setExpectsMediaDataInRealTime:", [v6 realTime]);
    if ([(MIOWriterBufferStreamInput *)self applyWriterTimeScaleToSampleInput])
    {
      if ([(MIOWriterStreamInput *)self mediaTimeScale]< 1)
      {
        v18 = [(MIOWriterStreamInput *)self writer];
        -[AVAssetWriterInput setMediaTimeScale:](self->_sampleInput, "setMediaTimeScale:", [v18 baseMediaTimeScale]);
      }

      else
      {
        [(AVAssetWriterInput *)self->_sampleInput setMediaTimeScale:[(MIOWriterStreamInput *)self mediaTimeScale]];
      }
    }

    v19 = [(MIOWriterBufferStreamInput *)self commonTrackMetadataItems];
    v20 = [v19 mutableCopy];

    v21 = [(MIOWriterBufferStreamInput *)self inputSpecificTrackMetadataItems];
    if ([v21 count])
    {
      [v20 addObjectsFromArray:v21];
    }

    if (![v6 disguiseMode])
    {
      [(AVAssetWriterInput *)self->_sampleInput setMetadata:v20];
    }

    [(MIOWriterBufferStreamInput *)self customizeSampleInput:self->_sampleInput];
    v22 = [(MIOWriterBufferStreamInput *)self taggedPixelBufferAttributes];
    if (v22)
    {
      v23 = [objc_alloc(MEMORY[0x277CE6480]) initWithAssetWriterInput:self->_sampleInput sourcePixelBufferAttributes:v22];
      taggedPixelBufferGroupAdaptor = self->_taggedPixelBufferGroupAdaptor;
      self->_taggedPixelBufferGroupAdaptor = v23;
    }

    v25 = [v6 avWriter];
    v26 = [v25 canAddInput:self->_sampleInput];

    if (v26)
    {
      v27 = [v6 avWriter];
      [v27 addInput:self->_sampleInput];

      if (self->_doNotRecordAttachments || [v6 disguiseMode])
      {
        goto LABEL_16;
      }

      v33 = [MEMORY[0x277CE6520] createMIOMetadataAttachmentsFormatDescription];
      if (v33)
      {
        v34 = v33;
        v35 = objc_alloc(MEMORY[0x277CE6468]);
        v36 = [v35 initWithMediaType:*MEMORY[0x277CE5E70] outputSettings:0 sourceFormatHint:v34];
        metadataInput = self->_metadataInput;
        self->_metadataInput = v36;

        CFRelease(v34);
        v38 = [(MIOWriterStreamInput *)self streamId];
        pendingAttachments = [MOVStreamIOUtility qtTrackNameForAssociatedAttachmentsTrack:v38];

        v51 = [MEMORY[0x277CE6520] qtTrackMetadataItemsForStreamId:pendingAttachments];
        [(AVAssetWriterInput *)self->_metadataInput setMetadata:?];
        -[AVAssetWriterInput setExpectsMediaDataInRealTime:](self->_metadataInput, "setExpectsMediaDataInRealTime:", [v6 realTime]);
        if ([(MIOWriterStreamInput *)self mediaTimeScale]< 1)
        {
          v40 = [(MIOWriterStreamInput *)self writer];
          -[AVAssetWriterInput setMediaTimeScale:](self->_metadataInput, "setMediaTimeScale:", [v40 baseMediaTimeScale]);
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

          v44 = [v6 avWriter];
          v45 = [v44 canAddInput:self->_metadataInput];

          if (v45)
          {
            v46 = [v6 avWriter];
            [v46 addInput:self->_metadataInput];

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
        v49 = [(MIOWriterStreamInput *)self streamId];
        v50 = [v48 stringWithFormat:v52, v49];

        [MEMORY[0x277CCA9B8] populateStreamError:v53 message:v50 code:v47];
LABEL_20:
        v17 = 0;
        goto LABEL_21;
      }

      v39 = MEMORY[0x277CCACA8];
      v31 = [(MIOWriterStreamInput *)self streamId];
      [v39 stringWithFormat:@"Cannot create metadata format description for stream '%@'.", v31];
    }

    else
    {
      v30 = MEMORY[0x277CCACA8];
      v31 = [(MIOWriterStreamInput *)self streamId];
      [v30 stringWithFormat:@"Cannot add sample input for stream '%@'.", v31];
    }
    pendingAttachments = ;

    [MEMORY[0x277CCA9B8] populateStreamError:a4 message:pendingAttachments code:11];
    goto LABEL_20;
  }

  v14 = MEMORY[0x277CCACA8];
  v15 = [(MIOWriterStreamInput *)self streamId];
  v16 = [v14 stringWithFormat:@"Unable to use output settings (%@) for stream '%@'.", v7, v15];

  [MEMORY[0x277CCA9B8] populateStreamError:a4 message:v16 code:11];
  v17 = 0;
LABEL_24:

  return v17;
}

- (BOOL)writeNextItemFromFifo
{
  v3 = [(MIOWriterStreamInput *)self writer];

  if (v3)
  {
    v4 = [(MIOWriterStreamInput *)self writer];
    v5 = [v4 canWrite];

    if (v5)
    {
      v6 = [(MIOWriterStreamInput *)self fifoBuffer];
      v7 = [v6 usage];

      if (v7)
      {
        v8 = objc_autoreleasePoolPush();
        if (![(MIOWriterBufferStreamInput *)self areAllInputsReady])
        {
          v17 = 0;
LABEL_48:
          objc_autoreleasePoolPop(v8);
          return v17;
        }

        v9 = [(MIOWriterStreamInput *)self fifoBuffer];
        v10 = [v9 dequeue];

        if (!v10 || (-[MIOWriterStreamInput resolveSample](self, "resolveSample"), -[MIOWriterStreamInput writer](self, "writer"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 startSession], v11, !v12))
        {
          v17 = 0;
LABEL_47:

          goto LABEL_48;
        }

        v13 = [(MIOWriterStreamInput *)self assignedWritingThread];
        if (v13)
        {
          v14 = [(MIOWriterStreamInput *)self assignedWritingThread];
          v15 = [v14 perfLogHandle];
        }

        else
        {
          v15 = [(MIOWriterStreamInput *)self perfLogHandle];
        }

        taggedPixelBufferGroupAdaptor = self->_taggedPixelBufferGroupAdaptor;
        v23 = v15;
        if (taggedPixelBufferGroupAdaptor)
        {
          v24 = [(MIOWriterStreamInput *)self avfAppendSignPostID];
          if (v24 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_257883000, v23, OS_SIGNPOST_INTERVAL_BEGIN, v24, "mio.append.stereo.sample.buffer", "", buf, 2u);
          }

          v25 = self->_taggedPixelBufferGroupAdaptor;
          v26 = [v10 taggedBufferGroup];
          [v10 taggedBufferPts];
          v27 = [(AVAssetWriterInputTaggedPixelBufferGroupAdaptor *)v25 appendTaggedPixelBufferGroup:v26 withPresentationTime:buf];
          v28 = v23;
          v29 = [(MIOWriterStreamInput *)self avfAppendSignPostID];
          if (v29 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
          {
            *buf = 0;
            v30 = "mio.append.stereo.sample.buffer";
LABEL_32:
            _os_signpost_emit_with_name_impl(&dword_257883000, v28, OS_SIGNPOST_INTERVAL_END, v29, v30, "", buf, 2u);
          }
        }

        else
        {
          v31 = [(MIOWriterStreamInput *)self avfAppendSignPostID];
          if (v31 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_257883000, v23, OS_SIGNPOST_INTERVAL_BEGIN, v31, "mio.append.sample.buffer", "", buf, 2u);
          }

          v32 = [(MIOWriterBufferStreamInput *)self sampleInput];
          v27 = [v32 appendSampleBuffer:{objc_msgSend(v10, "sampleBuffer")}];

          v28 = v23;
          v29 = [(MIOWriterStreamInput *)self avfAppendSignPostID];
          if (v29 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
          {
            *buf = 0;
            v30 = "mio.append.sample.buffer";
            goto LABEL_32;
          }
        }

        if (v27)
        {
          v33 = [(MIOWriterBufferStreamInput *)self metadataInput];

          if (!v33)
          {
            goto LABEL_42;
          }

          v34 = v23;
          v35 = [(MIOWriterStreamInput *)self avfAppendSignPostID];
          if (v35 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v34))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_257883000, v34, OS_SIGNPOST_INTERVAL_BEGIN, v35, "mio.append.sample.buffer.attachments", "", buf, 2u);
          }

          v36 = [(MIOWriterBufferStreamInput *)self metadataAdaptor];
          v37 = [v10 metadata];
          v38 = [v36 appendTimedMetadataGroup:v37];

          v39 = v34;
          v40 = [(MIOWriterStreamInput *)self avfAppendSignPostID];
          if (v40 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v39))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_257883000, v39, OS_SIGNPOST_INTERVAL_END, v40, "mio.append.sample.buffer.attachments", "", buf, 2u);
          }

          if (v38)
          {
LABEL_42:
            v17 = 1;
LABEL_46:

            goto LABEL_47;
          }

          v49 = MEMORY[0x277CCACA8];
          v50 = [(MIOWriterStreamInput *)self writer];
          v51 = [v50 avWriter];
          v52 = [v51 error];
          v53 = [(MIOWriterStreamInput *)self streamId];
          v54 = [v49 stringWithFormat:@"Error occurred during appendTimedMetadataGroup %@ for stream '%@'.", v52, v53];

          v55 = [MEMORY[0x277CCA9B8] streamErrorWithMessage:v54 code:21];
          v56 = [(MIOWriterStreamInput *)self writer];
          [v56 reportError:v55];
        }

        else
        {
          v41 = MEMORY[0x277CCACA8];
          v42 = [(MIOWriterStreamInput *)self writer];
          v43 = [v42 avWriter];
          v44 = [v43 error];
          v45 = [(MIOWriterStreamInput *)self streamId];
          v46 = [v41 stringWithFormat:@"Error occurred during AVWriter append %@ for stream '%@'.", v44, v45];

          v47 = [MEMORY[0x277CCA9B8] streamErrorWithMessage:v46 code:21];
          v48 = [(MIOWriterStreamInput *)self writer];
          [v48 reportError:v47];
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

      v19 = [(MIOWriterStreamInput *)self fifoBuffer];
      v20 = [v19 dequeue];

      [(MIOWriterStreamInput *)self resolveSample];
      v21 = [(MIOWriterStreamInput *)self writer];
      [v21 reportWarning:@"Frame was dropped because writer or AV input state does not allow writing."];
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