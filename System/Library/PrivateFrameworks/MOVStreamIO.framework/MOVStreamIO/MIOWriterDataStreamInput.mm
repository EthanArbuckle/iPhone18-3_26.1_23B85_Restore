@interface MIOWriterDataStreamInput
- (BOOL)appendMetadata:(id)metadata withTimeStamp:(id *)stamp error:(id *)error;
- (BOOL)superAppendMetadata:(id)metadata;
- (MIOWriterDataStreamInput)init;
- (MIOWriterDataStreamInput)initWithStreamId:(id)id copyData:(BOOL)data;
@end

@implementation MIOWriterDataStreamInput

- (MIOWriterDataStreamInput)init
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  NSLog(&cfstr_ErrorDoNotCall_0.isa, v4);

  return 0;
}

- (MIOWriterDataStreamInput)initWithStreamId:(id)id copyData:(BOOL)data
{
  dataCopy = data;
  v6 = MEMORY[0x277CE6520];
  idCopy = id;
  createMIOMetadataStreamFormatDescription = [v6 createMIOMetadataStreamFormatDescription];
  v11.receiver = self;
  v11.super_class = MIOWriterDataStreamInput;
  v9 = [(MIOWriterMetadataStreamInput *)&v11 initWithStreamId:idCopy format:createMIOMetadataStreamFormatDescription];

  if (createMIOMetadataStreamFormatDescription)
  {
    CFRelease(createMIOMetadataStreamFormatDescription);
  }

  if (v9)
  {
    [(MIOWriterDataStreamInput *)v9 setCopyData:dataCopy];
  }

  return v9;
}

- (BOOL)superAppendMetadata:(id)metadata
{
  v4.receiver = self;
  v4.super_class = MIOWriterDataStreamInput;
  return [(MIOWriterMetadataStreamInput *)&v4 appendMetadata:metadata];
}

- (BOOL)appendMetadata:(id)metadata withTimeStamp:(id *)stamp error:(id *)error
{
  metadataCopy = metadata;
  location = *stamp;
  if ([(MIOWriterStreamInput *)self prepareForAppendWithTimeStamp:&location error:error])
  {
    objc_initWeak(&location, self);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __63__MIOWriterDataStreamInput_appendMetadata_withTimeStamp_error___block_invoke;
    v14[3] = &unk_279848018;
    objc_copyWeak(&v16, &location);
    v15 = metadataCopy;
    v17 = *&stamp->var0;
    var3 = stamp->var3;
    v9 = MEMORY[0x259C68980](v14);
    threadingOption = [(MIOWriterStreamInput *)self threadingOption];
    if (threadingOption)
    {
      if (threadingOption == 1)
      {
        LOBYTE(self) = v9[2](v9);
      }
    }

    else
    {
      self = [(MIOWriterStreamInput *)self processingQueue];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __63__MIOWriterDataStreamInput_appendMetadata_withTimeStamp_error___block_invoke_5;
      v12[3] = &unk_279847D38;
      v13 = v9;
      dispatch_async(&self->super.super.super, v12);

      LOBYTE(self) = 1;
    }

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  else
  {
    LOBYTE(self) = 0;
  }

  return self & 1;
}

uint64_t __63__MIOWriterDataStreamInput_appendMetadata_withTimeStamp_error___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained perfLogHandle];
    v5 = [v3 processingSignPostID];
    if ((v5 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v6 = v5;
      if (os_signpost_enabled(v4))
      {
        LOWORD(v14) = 0;
        _os_signpost_emit_with_name_impl(&dword_257883000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v6, "mio.processing", "", &v14, 2u);
      }
    }

    v7 = objc_autoreleasePoolPush();
    v8 = MEMORY[0x277CE6648];
    v9 = *(a1 + 32);
    v10 = [v3 copyData];
    v14 = *(a1 + 48);
    v15 = *(a1 + 64);
    v11 = [v8 metadataGroupForMetadataStreamFromData:v9 timeStamp:&v14 copyData:v10];
    v12 = [v3 superAppendMetadata:v11];

    objc_autoreleasePoolPop(v7);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end