@interface MIOWriterMetadataGroupStreamInput
- (BOOL)appendMetadata:(id)a3 error:(id *)a4;
- (BOOL)superAppendMetadata:(id)a3;
- (MIOWriterBufferStreamInput)associateToInput;
- (MIOWriterMetadataGroupStreamInput)init;
- (MIOWriterMetadataGroupStreamInput)initWithStreamId:(id)a3 format:(opaqueCMFormatDescription *)a4;
- (MIOWriterMetadataGroupStreamInput)initWithStreamId:(id)a3 format:(opaqueCMFormatDescription *)a4 associateToInput:(id)a5;
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

- (MIOWriterMetadataGroupStreamInput)initWithStreamId:(id)a3 format:(opaqueCMFormatDescription *)a4 associateToInput:(id)a5
{
  v8 = a5;
  v9 = [(MIOWriterMetadataGroupStreamInput *)self initWithStreamId:a3 format:a4];
  if (v9)
  {
    if (![v8 registerForAssociating:v9 trackRelation:*MEMORY[0x277CE6198]])
    {
      v12 = 0;
      goto LABEL_6;
    }

    v10 = [v8 uuid];
    associatedInputUUID = v9->_associatedInputUUID;
    v9->_associatedInputUUID = v10;
  }

  v12 = v9;
LABEL_6:

  return v12;
}

- (MIOWriterMetadataGroupStreamInput)initWithStreamId:(id)a3 format:(opaqueCMFormatDescription *)a4
{
  v5.receiver = self;
  v5.super_class = MIOWriterMetadataGroupStreamInput;
  return [(MIOWriterMetadataStreamInput *)&v5 initWithStreamId:a3 format:a4];
}

- (BOOL)superAppendMetadata:(id)a3
{
  v4.receiver = self;
  v4.super_class = MIOWriterMetadataGroupStreamInput;
  return [(MIOWriterMetadataStreamInput *)&v4 appendMetadata:a3];
}

- (BOOL)appendMetadata:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    [v6 timeRange];
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
    v18 = 0u;
  }

  *location = v18;
  v17 = v19;
  if ([(MIOWriterStreamInput *)self prepareForAppendWithTimeStamp:location error:a4])
  {
    objc_initWeak(location, self);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __58__MIOWriterMetadataGroupStreamInput_appendMetadata_error___block_invoke;
    v13[3] = &unk_279847FF0;
    objc_copyWeak(&v15, location);
    v14 = v7;
    v8 = MEMORY[0x259C68980](v13);
    v9 = [(MIOWriterStreamInput *)self threadingOption];
    if (v9)
    {
      if (v9 == 1)
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
  v2 = [(MIOWriterStreamInput *)self associatedInputs];
  v3 = [v2 firstObject];
  v4 = [v3 firstObject];
  v5 = [v4 nonretainedObjectValue];

  return v5;
}

- (id)uuid
{
  uuid = self->_uuid;
  if (!uuid)
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = [(MIOWriterStreamInput *)self streamId];
    v6 = [v4 stringWithFormat:@"%@_%ld_%@", v5, -[MIOWriterStreamInput mediaType](self, "mediaType"), self->_associatedInputUUID];
    v7 = self->_uuid;
    self->_uuid = v6;

    uuid = self->_uuid;
  }

  return uuid;
}

@end