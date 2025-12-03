@interface MIOWriterTimeRangeMetadataStreamInput
- (BOOL)appendTimeCode:(CVSMPTETime *)code rangeStart:(unint64_t)start rangeEnd:(unint64_t)end withTimeStamp:(id *)stamp error:(id *)error;
- (BOOL)appendTimeCode:(CVSMPTETime *)code startTime:(unint64_t)time endTime:(unint64_t)endTime withTimeStamp:(id *)stamp error:(id *)error;
- (MIOWriterTimeRangeMetadataStreamInput)init;
- (MIOWriterTimeRangeMetadataStreamInput)initWithStreamId:(id)id;
- (id)inputSpecificTrackMetadataItems;
@end

@implementation MIOWriterTimeRangeMetadataStreamInput

- (MIOWriterTimeRangeMetadataStreamInput)init
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  NSLog(&cfstr_ErrorDoNotCall_0.isa, v4);

  return 0;
}

- (MIOWriterTimeRangeMetadataStreamInput)initWithStreamId:(id)id
{
  idCopy = id;
  createMIOTimeRangeMetadataStreamFormatDescription = [MEMORY[0x277CE6520] createMIOTimeRangeMetadataStreamFormatDescription];
  if (createMIOTimeRangeMetadataStreamFormatDescription)
  {
    v10.receiver = self;
    v10.super_class = MIOWriterTimeRangeMetadataStreamInput;
    v6 = [(MIOWriterMetadataStreamInput *)&v10 initWithStreamId:idCopy format:createMIOTimeRangeMetadataStreamFormatDescription];
    CFRelease(createMIOTimeRangeMetadataStreamFormatDescription);
    self = v6;
    selfCopy = self;
  }

  else
  {
    v8 = +[MIOLog defaultLog];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_257883000, v8, OS_LOG_TYPE_ERROR, "Cannot create format description for time range metadata track.", buf, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)appendTimeCode:(CVSMPTETime *)code startTime:(unint64_t)time endTime:(unint64_t)endTime withTimeStamp:(id *)stamp error:(id *)error
{
  v9 = *code;
  v8 = *stamp;
  return [(MIOWriterTimeRangeMetadataStreamInput *)self appendTimeCode:&v9 rangeStart:time rangeEnd:endTime withTimeStamp:&v8 error:error];
}

- (BOOL)appendTimeCode:(CVSMPTETime *)code rangeStart:(unint64_t)start rangeEnd:(unint64_t)end withTimeStamp:(id *)stamp error:(id *)error
{
  selfCopy = self;
  location = *stamp;
  if ([(MIOWriterStreamInput *)self prepareForAppendWithTimeStamp:&location error:error])
  {
    objc_initWeak(&location, selfCopy);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __96__MIOWriterTimeRangeMetadataStreamInput_appendTimeCode_rangeStart_rangeEnd_withTimeStamp_error___block_invoke;
    v19[3] = &unk_2798481C8;
    objc_copyWeak(v20, &location);
    v20[1] = start;
    v20[2] = end;
    v21 = *&code->subframes;
    v12 = *&code->hours;
    v23 = *&stamp->var0;
    var3 = stamp->var3;
    v22 = v12;
    v24 = var3;
    v19[4] = selfCopy;
    v14 = MEMORY[0x259C68980](v19);
    threadingOption = [selfCopy threadingOption];
    if (threadingOption)
    {
      if (threadingOption == 1)
      {
        LOBYTE(selfCopy) = v14[2](v14);
      }
    }

    else
    {
      selfCopy = [selfCopy processingQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __96__MIOWriterTimeRangeMetadataStreamInput_appendTimeCode_rangeStart_rangeEnd_withTimeStamp_error___block_invoke_207;
      block[3] = &unk_279847DC8;
      v18 = v14;
      dispatch_async(selfCopy, block);

      LOBYTE(selfCopy) = 1;
    }

    objc_destroyWeak(v20);
    objc_destroyWeak(&location);
  }

  else
  {
    LOBYTE(selfCopy) = 0;
  }

  return selfCopy & 1;
}

id __96__MIOWriterTimeRangeMetadataStreamInput_appendTimeCode_rangeStart_rangeEnd_withTimeStamp_error___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained perfLogHandle];
    v5 = [v3 processingSignPostID];
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
    {
      LOWORD(buf.start.value) = 0;
      _os_signpost_emit_with_name_impl(&dword_257883000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v5, "mio.processing", "", &buf, 2u);
    }

    v6 = objc_autoreleasePoolPush();
    v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:3];
    v8 = [MEMORY[0x277CE6520] metadataItemForTimeRangeMetadataStartTime:*(a1 + 48)];
    [v7 addObject:v8];

    v9 = [MEMORY[0x277CE6520] metadataItemForTimeRangeMetadataEndTime:*(a1 + 56)];
    [v7 addObject:v9];

    *&buf.start.value = *(a1 + 64);
    buf.start.epoch = *(a1 + 80);
    v10 = [MEMORY[0x277CE6520] metadataItemForTimeCode:&buf];
    [v7 addObject:v10];

    if (*(a1 + 100))
    {
      v17 = objc_alloc(MEMORY[0x277CE6648]);
      start = *(a1 + 88);
      duration = **&MEMORY[0x277CC0890];
      CMTimeRangeMake(&buf, &start, &duration);
      v18 = [v17 initWithItems:v7 timeRange:&buf];
      if (v18)
      {
        v20.receiver = *(a1 + 32);
        v20.super_class = MIOWriterTimeRangeMetadataStreamInput;
        v16 = objc_msgSendSuper2(&v20, sel_appendMetadata_, v18);
LABEL_12:

        objc_autoreleasePoolPop(v6);
        goto LABEL_13;
      }

      v13 = [MEMORY[0x277CCA9B8] writerWarningWithMessage:@"No metadata appended because the AVTimedMetadataGroup* is nil" code:0];
      v14 = [v3 writer];
      [v14 reportError:v13];
    }

    else
    {
      v11 = MEMORY[0x277CCACA8];
      v12 = [v3 streamId];
      v13 = [v11 stringWithFormat:@"Invalid time stamp is not supported for metadata for stream '%@'.", v12];

      v14 = [MEMORY[0x277CCA9B8] streamErrorWithMessage:v13 code:16];
      v15 = [v3 writer];
      [v15 reportError:v14];
    }

    v18 = 0;
    v16 = 0;
    goto LABEL_12;
  }

  v16 = 0;
LABEL_13:

  return v16;
}

- (id)inputSpecificTrackMetadataItems
{
  v5[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CE6520] trackMetadataItemWithTimeRangeMetadata:1];
  v5[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];

  return v3;
}

@end