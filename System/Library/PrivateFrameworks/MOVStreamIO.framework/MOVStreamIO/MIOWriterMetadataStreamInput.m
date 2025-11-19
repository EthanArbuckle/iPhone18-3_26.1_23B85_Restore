@interface MIOWriterMetadataStreamInput
- (BOOL)appendMetadata:(id)a3;
- (BOOL)setupInputsWithWriter:(id)a3 error:(id *)a4;
- (BOOL)writeNextItemFromFifo;
- (MIOWriterMetadataStreamInput)initWithStreamId:(id)a3 format:(opaqueCMFormatDescription *)a4;
- (id)allWriterInputs;
- (void)customizeMetadataInput:(id)a3;
- (void)dealloc;
@end

@implementation MIOWriterMetadataStreamInput

- (MIOWriterMetadataStreamInput)initWithStreamId:(id)a3 format:(opaqueCMFormatDescription *)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = MIOWriterMetadataStreamInput;
  v7 = [(MIOWriterStreamInput *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(MIOWriterStreamInput *)v7 setStreamId:v6];
    [(MIOWriterStreamInput *)v8 setMediaType:2];
    v8->_inputFormatDesc = a4;
    CFRetain(a4);
  }

  return v8;
}

- (void)dealloc
{
  inputFormatDesc = self->_inputFormatDesc;
  if (inputFormatDesc)
  {
    CFRelease(inputFormatDesc);
  }

  v4.receiver = self;
  v4.super_class = MIOWriterMetadataStreamInput;
  [(MIOWriterMetadataStreamInput *)&v4 dealloc];
}

- (void)customizeMetadataInput:(id)a3
{
  v22 = a3;
  if ([(MIOWriterStreamInput *)self mediaTimeScale]< 1)
  {
    v4 = [(MIOWriterStreamInput *)self writer];
    [v22 setMediaTimeScale:{objc_msgSend(v4, "baseMediaTimeScale")}];
  }

  else
  {
    [v22 setMediaTimeScale:{-[MIOWriterStreamInput mediaTimeScale](self, "mediaTimeScale")}];
  }

  v5 = [(MIOWriterStreamInput *)self writer];
  [v22 setExpectsMediaDataInRealTime:{objc_msgSend(v5, "realTime")}];

  v6 = objc_opt_new();
  v7 = MEMORY[0x277CE6520];
  v8 = [(MIOWriterStreamInput *)self streamId];
  v9 = [v7 trackMetadataItemWithStreamId:v8];

  if (v9)
  {
    [v6 addObject:v9];
  }

  v10 = MEMORY[0x277CE6520];
  v11 = [(MIOWriterStreamInput *)self streamId];
  v12 = [v10 qtTrackMetadataItemsForStreamId:v11];
  [v6 addObjectsFromArray:v12];

  v13 = MEMORY[0x277CE6520];
  v14 = [(MIOWriterStreamInput *)self customMetadata];
  v15 = [v13 customTrackMetadataItems:v14];

  if ([v15 count])
  {
    [v6 addObjectsFromArray:v15];
  }

  v16 = [(MIOWriterStreamInput *)self customMetadataItems];
  v17 = [v16 count];

  if (v17)
  {
    v18 = [(MIOWriterStreamInput *)self customMetadataItems];
    [v6 addObjectsFromArray:v18];
  }

  v19 = [(MIOWriterMetadataStreamInput *)self inputSpecificTrackMetadataItems];
  if ([v19 count])
  {
    [v6 addObjectsFromArray:v19];
  }

  if ([v6 count])
  {
    v20 = [(MIOWriterStreamInput *)self writer];
    v21 = [v20 disguiseMode];

    if (!v21)
    {
      [v22 setMetadata:v6];
    }
  }
}

- (BOOL)appendMetadata:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  [v5 setMetadata:v4];

  v6 = [(MIOWriterStreamInput *)self fifoBuffer];
  v7 = [v6 enqueue:v5];

  if (v7)
  {
    v8 = [(MIOWriterStreamInput *)self finalizeProcessing];
  }

  else
  {
    v9 = MEMORY[0x277CCACA8];
    v10 = [(MIOWriterStreamInput *)self streamId];
    v11 = [v9 stringWithFormat:@"Attempted to enqueue sample in full Fifo for stream %@.  Indicates leak in overall pending sample tracking.", v10];

    v12 = [MEMORY[0x277CCA9B8] streamErrorWithMessage:v11 code:21];
    v13 = [(MIOWriterStreamInput *)self writer];
    [v13 reportError:v12];

    v8 = 0;
  }

  return v8;
}

- (BOOL)setupInputsWithWriter:(id)a3 error:(id *)a4
{
  v6 = a3;
  inputFormatDesc = self->_inputFormatDesc;
  if (!inputFormatDesc)
  {
    v17 = MEMORY[0x277CCACA8];
    v18 = [(MIOWriterStreamInput *)self streamId];
    [v17 stringWithFormat:@"Cannot create metadata format description for stream '%@'.", v18];
    v15 = LABEL_6:;

    [MEMORY[0x277CCA9B8] populateStreamError:a4 message:v15 code:11];
    v16 = 0;
    goto LABEL_7;
  }

  v8 = objc_alloc(MEMORY[0x277CE6468]);
  v9 = [v8 initWithMediaType:*MEMORY[0x277CE5E70] outputSettings:0 sourceFormatHint:inputFormatDesc];
  metadataInput = self->_metadataInput;
  self->_metadataInput = v9;

  [(MIOWriterMetadataStreamInput *)self customizeMetadataInput:self->_metadataInput];
  v11 = [MEMORY[0x277CE6470] assetWriterInputMetadataAdaptorWithAssetWriterInput:self->_metadataInput];
  metadataAdaptor = self->_metadataAdaptor;
  self->_metadataAdaptor = v11;

  v13 = [v6 avWriter];
  v14 = [v13 canAddInput:self->_metadataInput];

  if (!v14)
  {
    v19 = MEMORY[0x277CCACA8];
    v18 = [(MIOWriterStreamInput *)self streamId];
    [v19 stringWithFormat:@"Cannot add AVAssetWriterInputs for stream '%@'.", v18];
    goto LABEL_6;
  }

  v15 = [v6 avWriter];
  [v15 addInput:self->_metadataInput];
  v16 = 1;
LABEL_7:

  return v16;
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
        if ([(MIOWriterMetadataStreamInput *)self areAllInputsReady])
        {
          v9 = [(MIOWriterStreamInput *)self fifoBuffer];
          v10 = [v9 dequeue];

          if (v10 && (-[MIOWriterStreamInput resolveSample](self, "resolveSample"), -[MIOWriterStreamInput writer](self, "writer"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 startSession], v11, v12))
          {
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

            v19 = v15;
            v20 = [(MIOWriterStreamInput *)self avfAppendSignPostID];
            if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
            {
              *v36 = 0;
              _os_signpost_emit_with_name_impl(&dword_257883000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v20, "mio.append.timed.metadata.group", "", v36, 2u);
            }

            v21 = [(MIOWriterMetadataStreamInput *)self metadataAdaptor];
            v22 = [v10 metadata];
            v23 = [v21 appendTimedMetadataGroup:v22];

            v24 = v19;
            v25 = [(MIOWriterStreamInput *)self avfAppendSignPostID];
            if (v25 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
            {
              *v35 = 0;
              _os_signpost_emit_with_name_impl(&dword_257883000, v24, OS_SIGNPOST_INTERVAL_END, v25, "mio.append.timed.metadata.group", "", v35, 2u);
            }

            if (v23)
            {
              v17 = 1;
            }

            else
            {
              v26 = MEMORY[0x277CCACA8];
              v27 = [(MIOWriterStreamInput *)self writer];
              v28 = [v27 avWriter];
              v29 = [v28 error];
              v30 = [(MIOWriterStreamInput *)self streamId];
              v31 = [v26 stringWithFormat:@"Error occurred during appendTimedMetadataGroup %@ for stream '%@'.", v29, v30];

              v32 = [MEMORY[0x277CCA9B8] streamErrorWithMessage:v31 code:21];
              v33 = [(MIOWriterStreamInput *)self writer];
              [v33 reportError:v32];

              v17 = 0;
            }
          }

          else
          {
            v17 = 0;
          }
        }

        else
        {
          v17 = 0;
        }

        objc_autoreleasePoolPop(v8);
        return v17;
      }
    }

    else
    {
      v18 = +[MIOLog defaultLog];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *v37 = 0;
        _os_log_impl(&dword_257883000, v18, OS_LOG_TYPE_INFO, "writeNextItemFromFifo canceled because writer does not allow writing anymore.", v37, 2u);
      }
    }

    return 0;
  }

  v16 = +[MIOLog defaultLog];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_257883000, v16, OS_LOG_TYPE_INFO, "writeNextItemFromFifo: writer done", buf, 2u);
  }

  return 1;
}

- (id)allWriterInputs
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = self->_metadataInput;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

@end