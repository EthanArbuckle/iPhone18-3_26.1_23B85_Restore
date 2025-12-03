@interface MIOWriterSampleBufferStreamInput
- (BOOL)appendSampleBuffer:(opaqueCMSampleBuffer *)buffer attachments:(id)attachments error:(id *)error;
- (BOOL)appendSampleBuffer:(opaqueCMSampleBuffer *)buffer metadataGroup:(id)group error:(id *)error;
- (MIOWriterSampleBufferStreamInput)init;
- (MIOWriterSampleBufferStreamInput)initWithStreamId:(id)id format:(opaqueCMFormatDescription *)format;
- (void)dealloc;
@end

@implementation MIOWriterSampleBufferStreamInput

- (MIOWriterSampleBufferStreamInput)init
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  NSLog(&cfstr_ErrorDoNotCall_0.isa, v4);

  return 0;
}

- (MIOWriterSampleBufferStreamInput)initWithStreamId:(id)id format:(opaqueCMFormatDescription *)format
{
  idCopy = id;
  v14.receiver = self;
  v14.super_class = MIOWriterSampleBufferStreamInput;
  v7 = [(MIOWriterBufferStreamInput *)&v14 init];
  v8 = v7;
  if (v7)
  {
    [(MIOWriterStreamInput *)v7 setStreamId:idCopy];
    v8->_inputFormatDesc = format;
    CFRetain(format);
    inputFormatDesc = v8->_inputFormatDesc;
    if (inputFormatDesc)
    {
      MediaType = CMFormatDescriptionGetMediaType(inputFormatDesc);
      [(MIOWriterStreamInput *)v8 setMediaType:[MIOMediaTypeUtility matchingMIOMediaTypeFromCMType:MediaType]];
      v11 = [MIOMediaTypeUtility matchingAVMediaTypeFromCMType:MediaType];
    }

    else
    {
      [(MIOWriterStreamInput *)v8 setMediaType:0];
      v11 = *MEMORY[0x277CE5EA8];
    }

    avMediaType = v8->_avMediaType;
    v8->_avMediaType = v11;
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
  v4.super_class = MIOWriterSampleBufferStreamInput;
  [(MIOWriterSampleBufferStreamInput *)&v4 dealloc];
}

- (BOOL)appendSampleBuffer:(opaqueCMSampleBuffer *)buffer metadataGroup:(id)group error:(id *)error
{
  groupCopy = group;
  memset(&v18, 0, sizeof(v18));
  CMSampleBufferGetPresentationTimeStamp(&v18, buffer);
  location = v18;
  if ([(MIOWriterStreamInput *)self prepareForAppendWithTimeStamp:&location error:error])
  {
    CFRetain(buffer);
    objc_initWeak(&location, self);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __75__MIOWriterSampleBufferStreamInput_appendSampleBuffer_metadataGroup_error___block_invoke;
    v14[3] = &unk_279847D10;
    objc_copyWeak(v16, &location);
    v16[1] = buffer;
    v15 = groupCopy;
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
      v12[2] = __75__MIOWriterSampleBufferStreamInput_appendSampleBuffer_metadataGroup_error___block_invoke_2;
      v12[3] = &unk_279847D38;
      v13 = v9;
      dispatch_async(&self->super.super.super, v12);

      LOBYTE(self) = 1;
    }

    objc_destroyWeak(v16);
    objc_destroyWeak(&location);
  }

  else
  {
    LOBYTE(self) = 0;
  }

  return self & 1;
}

uint64_t __75__MIOWriterSampleBufferStreamInput_appendSampleBuffer_metadataGroup_error___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = objc_opt_new();
    [v4 setSampleBuffer:*(a1 + 48)];
    [v4 setMetadata:*(a1 + 32)];
    v5 = [WeakRetained fifoBuffer];
    v6 = [v5 enqueue:v4];

    if (v6)
    {
      v7 = [WeakRetained finalizeProcessing];
    }

    else
    {
      CFRelease(*(a1 + 48));
      v8 = MEMORY[0x277CCACA8];
      v9 = [WeakRetained streamId];
      v10 = [v8 stringWithFormat:@"Attempted to enqueue sample in full Fifo for stream %@.  Indicates leak in overall pending sample tracking.", v9];

      v11 = [MEMORY[0x277CCA9B8] streamErrorWithMessage:v10 code:21];
      v12 = [WeakRetained writer];
      [v12 reportError:v11];

      v7 = 0;
    }

    objc_autoreleasePoolPop(v3);
  }

  else
  {
    CFRelease(*(a1 + 48));
    v7 = 0;
  }

  return v7;
}

- (BOOL)appendSampleBuffer:(opaqueCMSampleBuffer *)buffer attachments:(id)attachments error:(id *)error
{
  attachmentsCopy = attachments;
  memset(&v19, 0, sizeof(v19));
  CMSampleBufferGetPresentationTimeStamp(&v19, buffer);
  location = v19;
  if ([(MIOWriterStreamInput *)self prepareForAppendWithTimeStamp:&location error:error])
  {
    CFRetain(buffer);
    objc_initWeak(&location, self);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __73__MIOWriterSampleBufferStreamInput_appendSampleBuffer_attachments_error___block_invoke;
    v14[3] = &unk_279847D60;
    objc_copyWeak(v16, &location);
    v16[1] = buffer;
    v15 = attachmentsCopy;
    v17 = v19;
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
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __73__MIOWriterSampleBufferStreamInput_appendSampleBuffer_attachments_error___block_invoke_2;
      block[3] = &unk_279847D38;
      v13 = v9;
      dispatch_async(&self->super.super.super, block);

      LOBYTE(self) = 1;
    }

    objc_destroyWeak(v16);
    objc_destroyWeak(&location);
  }

  else
  {
    LOBYTE(self) = 0;
  }

  return self & 1;
}

uint64_t __73__MIOWriterSampleBufferStreamInput_appendSampleBuffer_attachments_error___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = *(a1 + 32);
    v21 = *(a1 + 56);
    v22 = *(a1 + 72);
    v23 = 0;
    v5 = [MEMORY[0x277CE6648] attachmentsMIOTimedMetadataGroupForDictionary:v4 pts:&v21 error:&v23];
    v6 = v23;
    if (v6)
    {
      v7 = MEMORY[0x277CCACA8];
      v8 = [WeakRetained streamId];
      v9 = [v7 stringWithFormat:@"Cannot append frame, invalid buffer attachments %@ for stream %@.", v6, v8];

      v10 = [MEMORY[0x277CCA9B8] streamErrorWithMessage:v9 code:21];
      v11 = [WeakRetained writer];
      [v11 reportError:v10];

      CFRelease(*(a1 + 48));
    }

    else
    {
      v9 = objc_opt_new();
      [v9 setSampleBuffer:*(a1 + 48)];
      [v9 setMetadata:v5];
      v13 = [WeakRetained fifoBuffer];
      v14 = [v13 enqueue:v9];

      if (v14)
      {
        v12 = [WeakRetained finalizeProcessing];
LABEL_9:

        objc_autoreleasePoolPop(v3);
        goto LABEL_10;
      }

      CFRelease(*(a1 + 48));
      v15 = MEMORY[0x277CCACA8];
      v16 = [WeakRetained streamId];
      v17 = [v15 stringWithFormat:@"Attempted to enqueue sample in full Fifo for stream %@.  Indicates leak in overall pending sample tracking.", v16];

      v18 = [MEMORY[0x277CCA9B8] streamErrorWithMessage:v17 code:21];
      v19 = [WeakRetained writer];
      [v19 reportError:v18];
    }

    v12 = 0;
    goto LABEL_9;
  }

  CFRelease(*(a1 + 48));
  v12 = 0;
LABEL_10:

  return v12;
}

@end