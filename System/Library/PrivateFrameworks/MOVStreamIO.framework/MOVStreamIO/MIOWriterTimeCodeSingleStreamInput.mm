@interface MIOWriterTimeCodeSingleStreamInput
- (BOOL)appendSampleBuffer:(opaqueCMSampleBuffer *)buffer error:(id *)error;
- (BOOL)appendTimeCode:(CVSMPTETime *)code pts:(id *)pts error:(id *)error;
- (MIOWriterTimeCodeSingleStreamInput)init;
- (MIOWriterTimeCodeSingleStreamInput)initWithStreamId:(id)id format:(opaqueCMFormatDescription *)format;
- (void)customizeSampleInput:(id)input;
@end

@implementation MIOWriterTimeCodeSingleStreamInput

- (MIOWriterTimeCodeSingleStreamInput)init
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  NSLog(&cfstr_ErrorDoNotCall_0.isa, v4);

  return 0;
}

- (MIOWriterTimeCodeSingleStreamInput)initWithStreamId:(id)id format:(opaqueCMFormatDescription *)format
{
  idCopy = id;
  v10.receiver = self;
  v10.super_class = MIOWriterTimeCodeSingleStreamInput;
  v7 = [(MIOWriterBufferStreamInput *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(MIOWriterStreamInput *)v7 setStreamId:idCopy];
    v8->_inputFormatDesc = format;
    CFRetain(format);
    [(MIOWriterBufferStreamInput *)v8 setDoNotRecordAttachments:1];
    [(MIOWriterStreamInput *)v8 setMediaType:4];
  }

  return v8;
}

- (BOOL)appendTimeCode:(CVSMPTETime *)code pts:(id *)pts error:(id *)error
{
  location = *pts;
  if ([(MIOWriterStreamInput *)self prepareForAppendWithTimeStamp:&location error:error])
  {
    objc_initWeak(&location, self);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __63__MIOWriterTimeCodeSingleStreamInput_appendTimeCode_pts_error___block_invoke;
    v15[3] = &unk_279847DA0;
    objc_copyWeak(&v16, &location);
    v17 = *&code->subframes;
    v18 = *&code->hours;
    v19 = *&pts->var0;
    var3 = pts->var3;
    v8 = MEMORY[0x259C68980](v15);
    threadingOption = [(MIOWriterStreamInput *)self threadingOption];
    if (threadingOption)
    {
      if (threadingOption == 1)
      {
        v10 = v8[2](v8);
LABEL_8:

        objc_destroyWeak(&v16);
        objc_destroyWeak(&location);
        return v10;
      }
    }

    else
    {
      processingQueue = [(MIOWriterStreamInput *)self processingQueue];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __63__MIOWriterTimeCodeSingleStreamInput_appendTimeCode_pts_error___block_invoke_14;
      v13[3] = &unk_279847DC8;
      v14 = v8;
      dispatch_async(processingQueue, v13);
    }

    v10 = 1;
    goto LABEL_8;
  }

  return 0;
}

uint64_t __63__MIOWriterTimeCodeSingleStreamInput_appendTimeCode_pts_error___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained perfLogHandle];
    v5 = [v3 processingSignPostID];
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_257883000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v5, "mio.processing", "", buf, 2u);
    }

    v6 = objc_autoreleasePoolPush();
    if (*(a1 + 52))
    {
      *buf = *(a1 + 40);
      v37 = *(a1 + 56);
      v15 = v3[35];
      v34 = *(a1 + 64);
      v35 = *(a1 + 80);
      v33 = 0;
      v16 = [MOVStreamIOUtility createTimecodeSampleBufferWithSMPTETime:buf formatDescription:v15 pts:&v34 error:&v33];
      v9 = v33;
      if (v16)
      {
        v10 = objc_opt_new();
        [v10 setSampleBuffer:v16];
        [v10 setMetadata:0];
        v17 = [v3 fifoBuffer];
        v18 = [v17 enqueue:v10];

        if (v18)
        {
          v19 = [v3 perfLogHandle];
          v20 = [v3 processingSignPostID];
          if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_257883000, v19, OS_SIGNPOST_INTERVAL_END, v20, "mio.processing", "", buf, 2u);
          }

          v14 = [v3 finalizeProcessing];
          goto LABEL_25;
        }

        v26 = MEMORY[0x277CCACA8];
        v27 = [v3 streamId];
        v12 = [v26 stringWithFormat:@"Attempted to enqueue sample in full Fifo for stream %@.  Indicates leak in overall pending sample tracking.", v27];

        v28 = [MEMORY[0x277CCA9B8] streamErrorWithMessage:v12 code:21];
        v29 = [v3 writer];
        [v29 reportError:v28];

        CFRelease(v16);
        v30 = [v3 perfLogHandle];
        v31 = [v3 processingSignPostID];
        if (v31 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v30))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_257883000, v30, OS_SIGNPOST_INTERVAL_END, v31, "mio.processing", "", buf, 2u);
        }
      }

      else
      {
        v21 = MEMORY[0x277CCACA8];
        v22 = [v3 streamId];
        v10 = [v21 stringWithFormat:@"Cannot create time code sample buffer for stream %@.", v22];

        v12 = [MEMORY[0x277CCA9B8] streamErrorWithMessage:v10 code:21];
        v23 = [v3 writer];
        [v23 reportError:v12];

        v24 = [v3 perfLogHandle];
        v25 = [v3 processingSignPostID];
        if (v25 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_257883000, v24, OS_SIGNPOST_INTERVAL_END, v25, "mio.processing", "", buf, 2u);
        }
      }
    }

    else
    {
      v7 = MEMORY[0x277CCACA8];
      v8 = [v3 streamId];
      v9 = [v7 stringWithFormat:@"Cannot write invalid time code sample to stream %@.", v8];

      v10 = [MEMORY[0x277CCA9B8] streamErrorWithMessage:v9 code:21];
      v11 = [v3 writer];
      [v11 reportError:v10];

      v12 = [v3 perfLogHandle];
      v13 = [v3 processingSignPostID];
      if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_257883000, v12, OS_SIGNPOST_INTERVAL_END, v13, "mio.processing", "", buf, 2u);
      }
    }

    v14 = 0;
LABEL_25:

    objc_autoreleasePoolPop(v6);
    goto LABEL_26;
  }

  v14 = 0;
LABEL_26:

  return v14;
}

- (BOOL)appendSampleBuffer:(opaqueCMSampleBuffer *)buffer error:(id *)error
{
  memset(&v21, 0, sizeof(v21));
  CMSampleBufferGetPresentationTimeStamp(&v21, buffer);
  location = v21;
  if ([(MIOWriterStreamInput *)self prepareForAppendWithTimeStamp:&location error:error])
  {
    if (buffer)
    {
      objc_initWeak(&location, self);
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __63__MIOWriterTimeCodeSingleStreamInput_appendSampleBuffer_error___block_invoke;
      v18[3] = &unk_279847DF0;
      objc_copyWeak(v19, &location);
      v19[1] = buffer;
      v7 = MEMORY[0x259C68980](v18);
      threadingOption = [(MIOWriterStreamInput *)self threadingOption];
      if (threadingOption)
      {
        if (threadingOption == 1)
        {
          v9 = v7[2](v7);
LABEL_10:

          objc_destroyWeak(v19);
          objc_destroyWeak(&location);
          return v9;
        }
      }

      else
      {
        processingQueue = [(MIOWriterStreamInput *)self processingQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __63__MIOWriterTimeCodeSingleStreamInput_appendSampleBuffer_error___block_invoke_19;
        block[3] = &unk_279847DC8;
        v17 = v7;
        dispatch_async(processingQueue, block);
      }

      v9 = 1;
      goto LABEL_10;
    }

    writer = [(MIOWriterStreamInput *)self writer];
    v11 = MEMORY[0x277CCACA8];
    streamId = [(MIOWriterStreamInput *)self streamId];
    v13 = [v11 stringWithFormat:@"Cannot append nil sample buffer to time code input: %@", streamId];
    [writer reportWarning:v13];
  }

  return 0;
}

uint64_t __63__MIOWriterTimeCodeSingleStreamInput_appendSampleBuffer_error___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained perfLogHandle];
    v5 = [v3 processingSignPostID];
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_257883000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v5, "mio.processing", "", buf, 2u);
    }

    v6 = objc_autoreleasePoolPush();
    v7 = objc_opt_new();
    [v7 setSampleBuffer:*(a1 + 40)];
    [v7 setMetadata:0];
    v8 = [v3 fifoBuffer];
    v9 = [v8 enqueue:v7];

    if (v9)
    {
      v10 = [v3 perfLogHandle];
      v11 = [v3 processingSignPostID];
      if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
      {
        *v21 = 0;
        _os_signpost_emit_with_name_impl(&dword_257883000, v10, OS_SIGNPOST_INTERVAL_END, v11, "mio.processing", "", v21, 2u);
      }

      v12 = [v3 finalizeProcessing];
    }

    else
    {
      v13 = MEMORY[0x277CCACA8];
      v14 = [v3 streamId];
      v15 = [v13 stringWithFormat:@"Attempted to enqueue sample in full Fifo for stream %@.  Indicates leak in overall pending sample tracking.", v14];

      v16 = [MEMORY[0x277CCA9B8] streamErrorWithMessage:v15 code:21];
      v17 = [v3 writer];
      [v17 reportError:v16];

      CFRelease(*(a1 + 40));
      v18 = [v3 perfLogHandle];
      v19 = [v3 processingSignPostID];
      if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
      {
        *v22 = 0;
        _os_signpost_emit_with_name_impl(&dword_257883000, v18, OS_SIGNPOST_INTERVAL_END, v19, "mio.processing", "", v22, 2u);
      }

      v12 = 0;
    }

    objc_autoreleasePoolPop(v6);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)customizeSampleInput:(id)input
{
  inputCopy = input;
  mediaTimeScale = [(MIOWriterStreamInput *)self mediaTimeScale];
  if (mediaTimeScale < 1)
  {
    writer = [(MIOWriterStreamInput *)self writer];
    baseMediaTimeScale = [writer baseMediaTimeScale];
  }

  else
  {
    baseMediaTimeScale = [(MIOWriterStreamInput *)self mediaTimeScale];
  }

  [inputCopy setMediaTimeScale:baseMediaTimeScale];
  if (mediaTimeScale <= 0)
  {
  }

  writer2 = [(MIOWriterStreamInput *)self writer];
  [inputCopy setExpectsMediaDataInRealTime:{objc_msgSend(writer2, "realTime")}];

  [inputCopy setMediaDataLocation:*MEMORY[0x277CE5CD0]];
  [inputCopy setNaturalSize:{640.0, 16.0}];
}

@end