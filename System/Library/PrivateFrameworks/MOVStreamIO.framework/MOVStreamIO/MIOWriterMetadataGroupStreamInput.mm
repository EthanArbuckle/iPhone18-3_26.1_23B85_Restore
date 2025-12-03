@interface MIOWriterMetadataGroupStreamInput
- (BOOL)appendMetadata:(id)metadata error:(id *)error;
- (BOOL)superAppendMetadata:(id)metadata;
- (MIOWriterBufferStreamInput)associateToInput;
- (MIOWriterMetadataGroupStreamInput)init;
- (MIOWriterMetadataGroupStreamInput)initWithStreamId:(id)id format:(opaqueCMFormatDescription *)format;
- (MIOWriterMetadataGroupStreamInput)initWithStreamId:(id)id format:(opaqueCMFormatDescription *)format associateToInput:(id)input;
- (id)uuid;
@end

@implementation MIOWriterMetadataGroupStreamInput

- (MIOWriterMetadataGroupStreamInput)init
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  NSLog(&cfstr_ErrorDoNotCall_0.isa, v4);

  return 0;
}

- (MIOWriterMetadataGroupStreamInput)initWithStreamId:(id)id format:(opaqueCMFormatDescription *)format associateToInput:(id)input
{
  inputCopy = input;
  v9 = [(MIOWriterMetadataGroupStreamInput *)self initWithStreamId:id format:format];
  if (v9)
  {
    if (![inputCopy registerForAssociating:v9 trackRelation:*MEMORY[0x277CE6198]])
    {
      v12 = 0;
      goto LABEL_6;
    }

    uuid = [inputCopy uuid];
    associatedInputUUID = v9->_associatedInputUUID;
    v9->_associatedInputUUID = uuid;
  }

  v12 = v9;
LABEL_6:

  return v12;
}

- (MIOWriterMetadataGroupStreamInput)initWithStreamId:(id)id format:(opaqueCMFormatDescription *)format
{
  v5.receiver = self;
  v5.super_class = MIOWriterMetadataGroupStreamInput;
  return [(MIOWriterMetadataStreamInput *)&v5 initWithStreamId:id format:format];
}

- (BOOL)superAppendMetadata:(id)metadata
{
  v4.receiver = self;
  v4.super_class = MIOWriterMetadataGroupStreamInput;
  return [(MIOWriterMetadataStreamInput *)&v4 appendMetadata:metadata];
}

- (BOOL)appendMetadata:(id)metadata error:(id *)error
{
  metadataCopy = metadata;
  v7 = metadataCopy;
  if (metadataCopy)
  {
    [metadataCopy timeRange];
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
    v18 = 0u;
  }

  *location = v18;
  v17 = v19;
  if ([(MIOWriterStreamInput *)self prepareForAppendWithTimeStamp:location error:error])
  {
    objc_initWeak(location, self);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __58__MIOWriterMetadataGroupStreamInput_appendMetadata_error___block_invoke;
    v13[3] = &unk_279847FF0;
    objc_copyWeak(&v15, location);
    v14 = v7;
    v8 = MEMORY[0x259C68980](v13);
    threadingOption = [(MIOWriterStreamInput *)self threadingOption];
    if (threadingOption)
    {
      if (threadingOption == 1)
      {
        LOBYTE(self) = v8[2](v8);
      }
    }

    else
    {
      self = [(MIOWriterStreamInput *)self processingQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __58__MIOWriterMetadataGroupStreamInput_appendMetadata_error___block_invoke_2;
      block[3] = &unk_279847D38;
      v12 = v8;
      dispatch_async(&self->super.super.super, block);

      LOBYTE(self) = 1;
    }

    objc_destroyWeak(&v15);
    objc_destroyWeak(location);
  }

  else
  {
    LOBYTE(self) = 0;
  }

  return self & 1;
}

uint64_t __58__MIOWriterMetadataGroupStreamInput_appendMetadata_error___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = [WeakRetained superAppendMetadata:*(a1 + 32)];
    objc_autoreleasePoolPop(v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (MIOWriterBufferStreamInput)associateToInput
{
  associatedInputs = [(MIOWriterStreamInput *)self associatedInputs];
  firstObject = [associatedInputs firstObject];
  v3FirstObject = [firstObject firstObject];
  nonretainedObjectValue = [v3FirstObject nonretainedObjectValue];

  return nonretainedObjectValue;
}

- (id)uuid
{
  uuid = self->_uuid;
  if (!uuid)
  {
    v4 = MEMORY[0x277CCACA8];
    streamId = [(MIOWriterStreamInput *)self streamId];
    v6 = [v4 stringWithFormat:@"%@_%ld_%@", streamId, -[MIOWriterStreamInput mediaType](self, "mediaType"), self->_associatedInputUUID];
    v7 = self->_uuid;
    self->_uuid = v6;

    uuid = self->_uuid;
  }

  return uuid;
}

@end