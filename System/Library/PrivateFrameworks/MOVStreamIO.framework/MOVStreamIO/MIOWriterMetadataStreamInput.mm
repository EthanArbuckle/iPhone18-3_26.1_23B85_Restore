@interface MIOWriterMetadataStreamInput
- (BOOL)appendMetadata:(id)metadata;
- (BOOL)setupInputsWithWriter:(id)writer error:(id *)error;
- (BOOL)writeNextItemFromFifo;
- (MIOWriterMetadataStreamInput)initWithStreamId:(id)id format:(opaqueCMFormatDescription *)format;
- (id)allWriterInputs;
- (void)customizeMetadataInput:(id)input;
- (void)dealloc;
@end

@implementation MIOWriterMetadataStreamInput

- (MIOWriterMetadataStreamInput)initWithStreamId:(id)id format:(opaqueCMFormatDescription *)format
{
  idCopy = id;
  v10.receiver = self;
  v10.super_class = MIOWriterMetadataStreamInput;
  v7 = [(MIOWriterStreamInput *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(MIOWriterStreamInput *)v7 setStreamId:idCopy];
    [(MIOWriterStreamInput *)v8 setMediaType:2];
    v8->_inputFormatDesc = format;
    CFRetain(format);
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

- (void)customizeMetadataInput:(id)input
{
  inputCopy = input;
  if ([(MIOWriterStreamInput *)self mediaTimeScale]< 1)
  {
    writer = [(MIOWriterStreamInput *)self writer];
    [inputCopy setMediaTimeScale:{objc_msgSend(writer, "baseMediaTimeScale")}];
  }

  else
  {
    [inputCopy setMediaTimeScale:{-[MIOWriterStreamInput mediaTimeScale](self, "mediaTimeScale")}];
  }

  writer2 = [(MIOWriterStreamInput *)self writer];
  [inputCopy setExpectsMediaDataInRealTime:{objc_msgSend(writer2, "realTime")}];

  v6 = objc_opt_new();
  v7 = MEMORY[0x277CE6520];
  streamId = [(MIOWriterStreamInput *)self streamId];
  v9 = [v7 trackMetadataItemWithStreamId:streamId];

  if (v9)
  {
    [v6 addObject:v9];
  }

  v10 = MEMORY[0x277CE6520];
  streamId2 = [(MIOWriterStreamInput *)self streamId];
  v12 = [v10 qtTrackMetadataItemsForStreamId:streamId2];
  [v6 addObjectsFromArray:v12];

  v13 = MEMORY[0x277CE6520];
  customMetadata = [(MIOWriterStreamInput *)self customMetadata];
  v15 = [v13 customTrackMetadataItems:customMetadata];

  if ([v15 count])
  {
    [v6 addObjectsFromArray:v15];
  }

  customMetadataItems = [(MIOWriterStreamInput *)self customMetadataItems];
  v17 = [customMetadataItems count];

  if (v17)
  {
    customMetadataItems2 = [(MIOWriterStreamInput *)self customMetadataItems];
    [v6 addObjectsFromArray:customMetadataItems2];
  }

  inputSpecificTrackMetadataItems = [(MIOWriterMetadataStreamInput *)self inputSpecificTrackMetadataItems];
  if ([inputSpecificTrackMetadataItems count])
  {
    [v6 addObjectsFromArray:inputSpecificTrackMetadataItems];
  }

  if ([v6 count])
  {
    writer3 = [(MIOWriterStreamInput *)self writer];
    disguiseMode = [writer3 disguiseMode];

    if (!disguiseMode)
    {
      [inputCopy setMetadata:v6];
    }
  }
}

- (BOOL)appendMetadata:(id)metadata
{
  metadataCopy = metadata;
  v5 = objc_opt_new();
  [v5 setMetadata:metadataCopy];

  fifoBuffer = [(MIOWriterStreamInput *)self fifoBuffer];
  v7 = [fifoBuffer enqueue:v5];

  if (v7)
  {
    finalizeProcessing = [(MIOWriterStreamInput *)self finalizeProcessing];
  }

  else
  {
    v9 = MEMORY[0x277CCACA8];
    streamId = [(MIOWriterStreamInput *)self streamId];
    v11 = [v9 stringWithFormat:@"Attempted to enqueue sample in full Fifo for stream %@.  Indicates leak in overall pending sample tracking.", streamId];

    v12 = [MEMORY[0x277CCA9B8] streamErrorWithMessage:v11 code:21];
    writer = [(MIOWriterStreamInput *)self writer];
    [writer reportError:v12];

    finalizeProcessing = 0;
  }

  return finalizeProcessing;
}

- (BOOL)setupInputsWithWriter:(id)writer error:(id *)error
{
  writerCopy = writer;
  inputFormatDesc = self->_inputFormatDesc;
  if (!inputFormatDesc)
  {
    v17 = MEMORY[0x277CCACA8];
    streamId = [(MIOWriterStreamInput *)self streamId];
    [v17 stringWithFormat:@"Cannot create metadata format description for stream '%@'.", streamId];
    avWriter2 = LABEL_6:;

    [MEMORY[0x277CCA9B8] populateStreamError:error message:avWriter2 code:11];
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

  avWriter = [writerCopy avWriter];
  v14 = [avWriter canAddInput:self->_metadataInput];

  if (!v14)
  {
    v19 = MEMORY[0x277CCACA8];
    streamId = [(MIOWriterStreamInput *)self streamId];
    [v19 stringWithFormat:@"Cannot add AVAssetWriterInputs for stream '%@'.", streamId];
    goto LABEL_6;
  }

  avWriter2 = [writerCopy avWriter];
  [avWriter2 addInput:self->_metadataInput];
  v16 = 1;
LABEL_7:

  return v16;
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
        if ([(MIOWriterMetadataStreamInput *)self areAllInputsReady])
        {
          fifoBuffer2 = [(MIOWriterStreamInput *)self fifoBuffer];
          dequeue = [fifoBuffer2 dequeue];

          if (dequeue && (-[MIOWriterStreamInput resolveSample](self, "resolveSample"), -[MIOWriterStreamInput writer](self, "writer"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 startSession], v11, v12))
          {
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

            v19 = perfLogHandle;
            avfAppendSignPostID = [(MIOWriterStreamInput *)self avfAppendSignPostID];
            if (avfAppendSignPostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
            {
              *v36 = 0;
              _os_signpost_emit_with_name_impl(&dword_257883000, v19, OS_SIGNPOST_INTERVAL_BEGIN, avfAppendSignPostID, "mio.append.timed.metadata.group", "", v36, 2u);
            }

            metadataAdaptor = [(MIOWriterMetadataStreamInput *)self metadataAdaptor];
            metadata = [dequeue metadata];
            v23 = [metadataAdaptor appendTimedMetadataGroup:metadata];

            v24 = v19;
            avfAppendSignPostID2 = [(MIOWriterStreamInput *)self avfAppendSignPostID];
            if (avfAppendSignPostID2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
            {
              *v35 = 0;
              _os_signpost_emit_with_name_impl(&dword_257883000, v24, OS_SIGNPOST_INTERVAL_END, avfAppendSignPostID2, "mio.append.timed.metadata.group", "", v35, 2u);
            }

            if (v23)
            {
              v17 = 1;
            }

            else
            {
              v26 = MEMORY[0x277CCACA8];
              writer3 = [(MIOWriterStreamInput *)self writer];
              avWriter = [writer3 avWriter];
              error = [avWriter error];
              streamId = [(MIOWriterStreamInput *)self streamId];
              v31 = [v26 stringWithFormat:@"Error occurred during appendTimedMetadataGroup %@ for stream '%@'.", error, streamId];

              v32 = [MEMORY[0x277CCA9B8] streamErrorWithMessage:v31 code:21];
              writer4 = [(MIOWriterStreamInput *)self writer];
              [writer4 reportError:v32];

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