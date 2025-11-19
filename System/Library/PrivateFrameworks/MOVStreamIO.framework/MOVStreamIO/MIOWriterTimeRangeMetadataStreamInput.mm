@interface MIOWriterTimeRangeMetadataStreamInput
- (BOOL)appendTimeCode:(CVSMPTETime *)a3 rangeStart:(unint64_t)a4 rangeEnd:(unint64_t)a5 withTimeStamp:(id *)a6 error:(id *)a7;
- (BOOL)appendTimeCode:(CVSMPTETime *)a3 startTime:(unint64_t)a4 endTime:(unint64_t)a5 withTimeStamp:(id *)a6 error:(id *)a7;
- (MIOWriterTimeRangeMetadataStreamInput)init;
- (MIOWriterTimeRangeMetadataStreamInput)initWithStreamId:(id)a3;
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

- (MIOWriterTimeRangeMetadataStreamInput)initWithStreamId:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CE6520] createMIOTimeRangeMetadataStreamFormatDescription];
  if (v5)
  {
    v10.receiver = self;
    v10.super_class = MIOWriterTimeRangeMetadataStreamInput;
    v6 = [(MIOWriterMetadataStreamInput *)&v10 initWithStreamId:v4 format:v5];
    CFRelease(v5);
    self = v6;
    v7 = self;
  }

  else
  {
    v8 = +[MIOLog defaultLog];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_257883000, v8, OS_LOG_TYPE_ERROR, "Cannot create format description for time range metadata track.", buf, 2u);
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)appendTimeCode:(CVSMPTETime *)a3 startTime:(unint64_t)a4 endTime:(unint64_t)a5 withTimeStamp:(id *)a6 error:(id *)a7
{
  v9 = *a3;
  v8 = *a6;
  return [(MIOWriterTimeRangeMetadataStreamInput *)self appendTimeCode:&v9 rangeStart:a4 rangeEnd:a5 withTimeStamp:&v8 error:a7];
}

- (BOOL)appendTimeCode:(CVSMPTETime *)a3 rangeStart:(unint64_t)a4 rangeEnd:(unint64_t)a5 withTimeStamp:(id *)a6 error:(id *)a7
{
  v11 = self;
  location = *a6;
  if ([(MIOWriterStreamInput *)self prepareForAppendWithTimeStamp:&location error:a7])
  {
    objc_initWeak(&location, v11);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __96__MIOWriterTimeRangeMetadataStreamInput_appendTimeCode_rangeStart_rangeEnd_withTimeStamp_error___block_invoke;
    v19[3] = &unk_2798481C8;
    objc_copyWeak(v20, &location);
    v20[1] = a4;
    v20[2] = a5;
    v21 = *&a3->subframes;
    v12 = *&a3->hours;
    v23 = *&a6->var0;
    var3 = a6->var3;
    v22 = v12;
    v24 = var3;
    v19[4] = v11;
    v14 = MEMORY[0x259C68980](v19);
    v15 = [v11 threadingOption];
    if (v15)
    {
      if (v15 == 1)
      {
        LOBYTE(v11) = v14[2](v14);
      }
    }

    else
    {
      v11 = [v11 processingQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __96__MIOWriterTimeRangeMetadataStreamInput_appendTimeCode_rangeStart_rangeEnd_withTimeStamp_error___block_invoke_207;
      block[3] = &unk_279847DC8;
      v18 = v14;
      dispatch_async(v11, block);

      LOBYTE(v11) = 1;
    }

    objc_destroyWeak(v20);
    objc_destroyWeak(&location);
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11 & 1;
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