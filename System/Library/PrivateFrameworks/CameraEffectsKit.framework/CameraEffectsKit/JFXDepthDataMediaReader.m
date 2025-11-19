@interface JFXDepthDataMediaReader
- ($AC64C642040120CEEAD84DEEACA9A5CE)readableTimeRange;
- (BOOL)beginReading;
- (BOOL)beginReadingAtTimeRange:(id *)a3;
- (BOOL)isScrubbing;
- (JFXDepthDataMediaReader)initWithVideoTrackReader:(id)a3;
- (NSError)error;
- (NSString)name;
- (id)JFX_cachedDepthDataForTime:(id *)a3;
- (id)JFX_decompressAVDepthDataFromVideoTrackReaderSample:(id)a3;
- (id)JFX_readDepthDataForTime:(id *)a3;
- (id)depthDataForTime:(id *)a3;
- (id)videoSampleForTime:(id *)a3;
- (int64_t)status;
- (unint64_t)signPostID;
- (void)setIsScrubbing:(BOOL)a3;
@end

@implementation JFXDepthDataMediaReader

- (JFXDepthDataMediaReader)initWithVideoTrackReader:(id)a3
{
  v5 = a3;
  v19.receiver = self;
  v19.super_class = JFXDepthDataMediaReader;
  v6 = [(JFXDepthDataMediaReader *)&v19 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_reader, a3);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_attr_make_with_qos_class(v8, QOS_CLASS_UNSPECIFIED, 0);

    v10 = MEMORY[0x277CCACA8];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = [v10 stringWithFormat:@"com.apple.%@", v12];

    v14 = dispatch_queue_create([v13 UTF8String], v9);
    synchronizationQueue = v7->_synchronizationQueue;
    v7->_synchronizationQueue = v14;

    v16 = objc_opt_new();
    depthDecompressor = v7->_depthDecompressor;
    v7->_depthDecompressor = v16;
  }

  return v7;
}

- (id)depthDataForTime:(id *)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = JFXMediaDataReaderIntervalSignpostCategory();
  v6 = [(JFXDepthDataMediaReader *)self signPostID];
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = v6;
    if (os_signpost_enabled(v5))
    {
      v15 = *a3;
      Seconds = CMTimeGetSeconds(&v15);
      LODWORD(v15.var0) = 138412546;
      *(&v15.var0 + 4) = self;
      LOWORD(v15.var2) = 2048;
      *(&v15.var2 + 2) = Seconds;
      _os_signpost_emit_with_name_impl(&dword_242A3B000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v7, "depthDataForTime", "%@ time %f", &v15, 0x16u);
    }
  }

  v15 = *a3;
  v9 = [(JFXDepthDataMediaReader *)self JFX_readDepthDataForTime:&v15];
  if (v9)
  {
    [(JFXDepthDataMediaReader *)self setCachedDepthData:v9];
  }

  v10 = JFXMediaDataReaderIntervalSignpostCategory();
  v11 = [(JFXDepthDataMediaReader *)self signPostID];
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v12 = v11;
    if (os_signpost_enabled(v10))
    {
      v15 = *a3;
      v13 = CMTimeGetSeconds(&v15);
      LODWORD(v15.var0) = 134217984;
      *(&v15.var0 + 4) = v13;
      _os_signpost_emit_with_name_impl(&dword_242A3B000, v10, OS_SIGNPOST_INTERVAL_END, v12, "depthDataForTime", "time %f", &v15, 0xCu);
    }
  }

  return v9;
}

- (id)JFX_cachedDepthDataForTime:(id *)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = [(JFXDepthDataMediaReader *)self cachedDepthData];
  v6 = v5;
  if (v5 && ([v5 timeRange], time = *a3, CMTimeRangeContainsTime(&range, &time)))
  {
    v7 = JFXLog_DebugMediaDataReader();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);

    if (v8)
    {
      v9 = JFXLog_DebugMediaDataReader();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *&range.start.value = *&a3->var0;
        range.start.epoch = a3->var3;
        Seconds = CMTimeGetSeconds(&range.start);
        [v6 timeRange];
        *&range.start.value = v23;
        range.start.epoch = v24;
        v19 = CMTimeGetSeconds(&range.start);
        [v6 timeRange];
        CMTimeRangeGetEnd(&time, &range);
        v20 = CMTimeGetSeconds(&time);
        LODWORD(range.start.value) = 138413058;
        *(&range.start.value + 4) = self;
        LOWORD(range.start.flags) = 2048;
        *(&range.start.flags + 2) = Seconds;
        HIWORD(range.start.epoch) = 2048;
        range.duration.value = v19;
        LOWORD(range.duration.timescale) = 2048;
        *(&range.duration.timescale + 2) = v20;
        _os_log_debug_impl(&dword_242A3B000, v9, OS_LOG_TYPE_DEBUG, "%@ cached data found for time %f in cached sample at timerange %f-%f", &range, 0x2Au);
      }
    }

    v10 = JFXMediaDataReaderEventSignpostPointCategory();
    v11 = [(JFXDepthDataMediaReader *)self signPostID];
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v12 = v11;
      if (os_signpost_enabled(v10))
      {
        *&range.start.value = *&a3->var0;
        range.start.epoch = a3->var3;
        v13 = CMTimeGetSeconds(&range.start);
        [v6 timeRange];
        *&range.start.value = v21;
        range.start.epoch = v22;
        v14 = CMTimeGetSeconds(&range.start);
        [v6 timeRange];
        CMTimeRangeGetEnd(&time, &range);
        v15 = CMTimeGetSeconds(&time);
        LODWORD(range.start.value) = 138413058;
        *(&range.start.value + 4) = self;
        LOWORD(range.start.flags) = 2048;
        *(&range.start.flags + 2) = v13;
        HIWORD(range.start.epoch) = 2048;
        range.duration.value = v14;
        LOWORD(range.duration.timescale) = 2048;
        *(&range.duration.timescale + 2) = v15;
        _os_signpost_emit_with_name_impl(&dword_242A3B000, v10, OS_SIGNPOST_EVENT, v12, "depthDataFoundInCache", "%@ found for time %f in cached sample at timerange %f-%f", &range, 0x2Au);
      }
    }

    v16 = v6;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)JFX_readDepthDataForTime:(id *)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__10;
  v14 = __Block_byref_object_dispose__10;
  v15 = 0;
  v5 = [(JFXDepthDataMediaReader *)self synchronizationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__JFXDepthDataMediaReader_JFX_readDepthDataForTime___block_invoke;
  block[3] = &unk_278D79E10;
  block[4] = self;
  block[5] = &v10;
  v9 = *a3;
  dispatch_sync(v5, block);

  v6 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v6;
}

void __52__JFXDepthDataMediaReader_JFX_readDepthDataForTime___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v19[0] = *(a1 + 48);
  v3 = [v2 JFX_cachedDepthDataForTime:v19];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v6 = [*(a1 + 32) reader];
    v19[0] = *(a1 + 48);
    v7 = [v6 videoSampleForTime:v19];

    if (v7)
    {
      v8 = [v7 sampleBufferRef];
      if (CMGetAttachment(v8, *MEMORY[0x277CC06D8], 0) != *MEMORY[0x277CBED28])
      {
        v9 = [*(a1 + 32) JFX_decompressAVDepthDataFromVideoTrackReaderSample:v7];
        if (v9)
        {
          v10 = [JFXMediaReaderDepthData alloc];
          [v7 timeRange];
          v11 = [(JFXMediaReaderDepthData *)v10 initWithAVDepthData:v9 timeRange:v19];
          v12 = *(*(a1 + 40) + 8);
          v13 = *(v12 + 40);
          *(v12 + 40) = v11;
        }

        goto LABEL_9;
      }

      v9 = JFXLog_DebugMediaDataReader();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
LABEL_9:

        return;
      }

      v17 = *(a1 + 32);
      v19[0] = *(a1 + 48);
      Seconds = CMTimeGetSeconds(v19);
      LODWORD(v19[0].value) = 138412546;
      *(&v19[0].value + 4) = v17;
      LOWORD(v19[0].flags) = 2048;
      *(&v19[0].flags + 2) = Seconds;
      v16 = "%@ empty frame found at time %f";
    }

    else
    {
      v9 = JFXLog_DebugMediaDataReader();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_9;
      }

      v14 = *(a1 + 32);
      v19[0] = *(a1 + 48);
      v15 = CMTimeGetSeconds(v19);
      LODWORD(v19[0].value) = 138412546;
      *(&v19[0].value + 4) = v14;
      LOWORD(v19[0].flags) = 2048;
      *(&v19[0].flags + 2) = v15;
      v16 = "%@ could not read video sample at time %f";
    }

    _os_log_debug_impl(&dword_242A3B000, v9, OS_LOG_TYPE_DEBUG, v16, v19, 0x16u);
    goto LABEL_9;
  }
}

- (id)JFX_decompressAVDepthDataFromVideoTrackReaderSample:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(JFXDepthDataMediaReader *)self synchronizationQueue];
  dispatch_assert_queue_V2(v5);

  v6 = JFXMediaDataReaderIntervalSignpostCategory();
  v7 = [(JFXDepthDataMediaReader *)self signPostID];
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v8 = v7;
    if (os_signpost_enabled(v6))
    {
      if (v4)
      {
        [v4 timeRange];
      }

      else
      {
        v33 = 0u;
        v34 = 0u;
        v32 = 0u;
      }

      *&time.value = v32;
      time.epoch = v33;
      Seconds = CMTimeGetSeconds(&time);
      LODWORD(time.value) = 138412546;
      *(&time.value + 4) = self;
      LOWORD(time.flags) = 2048;
      *(&time.flags + 2) = Seconds;
      _os_signpost_emit_with_name_impl(&dword_242A3B000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v8, "decompressAVDepthData", "%@ time %f", &time, 0x16u);
    }
  }

  v10 = [(JFXDepthDataMediaReader *)self depthDecompressor];
  v31 = 0;
  v11 = [v10 decompressAVDepthData:objc_msgSend(v4 error:{"sampleBufferRef"), &v31}];
  v12 = v31;

  if (v4)
  {
    [v4 timeRange];
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
    v28 = 0u;
  }

  *&time.value = v28;
  time.epoch = v29;
  v13 = CMTimeGetSeconds(&time);
  v14 = [(JFXDepthDataMediaReader *)self depthDecompressor];
  v15 = [v14 depthCodecType];

  if (!v15)
  {
    v16 = JFXLog_mediaDataReader();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [(JFXDepthDataMediaReader *)self JFX_decompressAVDepthDataFromVideoTrackReaderSample:v16, v13];
    }
  }

  v17 = JFXLog_DebugMediaDataReader();
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG);
  if (!v11 || v12)
  {
    if (v18)
    {
      v26[0] = HIBYTE(v15);
      v26[1] = BYTE2(v15);
      v26[2] = BYTE1(v15);
      v26[3] = v15;
      v26[4] = 0;
      LODWORD(time.value) = 138413058;
      *(&time.value + 4) = self;
      LOWORD(time.flags) = 2112;
      *(&time.flags + 2) = v12;
      HIWORD(time.epoch) = 2048;
      v36 = v13;
      v37 = 2080;
      v38 = v26;
      v19 = "%@ depth data decompression failed with error %@ for time %f, type detected %s";
      v20 = v17;
      v21 = 42;
      goto LABEL_26;
    }
  }

  else if (v18)
  {
    v27[0] = HIBYTE(v15);
    v27[1] = BYTE2(v15);
    v27[2] = BYTE1(v15);
    v27[3] = v15;
    v27[4] = 0;
    LODWORD(time.value) = 138412802;
    *(&time.value + 4) = self;
    LOWORD(time.flags) = 2048;
    *(&time.flags + 2) = v13;
    HIWORD(time.epoch) = 2080;
    v36 = COERCE_DOUBLE(v27);
    v19 = "%@ depth data decompression succeeded for time %f, type detected %s";
    v20 = v17;
    v21 = 32;
LABEL_26:
    _os_log_debug_impl(&dword_242A3B000, v20, OS_LOG_TYPE_DEBUG, v19, &time, v21);
  }

  v22 = JFXMediaDataReaderIntervalSignpostCategory();
  v23 = [(JFXDepthDataMediaReader *)self signPostID];
  if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v24 = v23;
    if (os_signpost_enabled(v22))
    {
      LOWORD(time.value) = 0;
      _os_signpost_emit_with_name_impl(&dword_242A3B000, v22, OS_SIGNPOST_INTERVAL_END, v24, "decompressAVDepthData", &unk_242B66C87, &time, 2u);
    }
  }

  return v11;
}

- ($AC64C642040120CEEAD84DEEACA9A5CE)readableTimeRange
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x5010000000;
  v13 = "";
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(JFXDepthDataMediaReader *)self synchronizationQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __44__JFXDepthDataMediaReader_readableTimeRange__block_invoke;
  v9[3] = &unk_278D79C60;
  v9[4] = self;
  v9[5] = &v10;
  dispatch_sync(v5, v9);

  v6 = v11;
  v7 = *(v11 + 3);
  *&retstr->var0.var0 = *(v11 + 2);
  *&retstr->var0.var3 = v7;
  *&retstr->var1.var1 = *(v6 + 4);
  _Block_object_dispose(&v10, 8);
  return result;
}

__n128 __44__JFXDepthDataMediaReader_readableTimeRange__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) reader];
  v3 = v2;
  if (v2)
  {
    [v2 readableTimeRange];
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
    v6 = 0u;
  }

  v4 = *(*(a1 + 40) + 8);
  v4[2] = v6;
  v4[3] = v7;
  v4[4] = v8;

  return result;
}

- (BOOL)isScrubbing
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(JFXDepthDataMediaReader *)self synchronizationQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __38__JFXDepthDataMediaReader_isScrubbing__block_invoke;
  v5[3] = &unk_278D79C60;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

void __38__JFXDepthDataMediaReader_isScrubbing__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) reader];
  *(*(*(a1 + 40) + 8) + 24) = [v2 isScrubbing];
}

- (void)setIsScrubbing:(BOOL)a3
{
  v5 = [(JFXDepthDataMediaReader *)self synchronizationQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__JFXDepthDataMediaReader_setIsScrubbing___block_invoke;
  v6[3] = &unk_278D79E38;
  v6[4] = self;
  v7 = a3;
  dispatch_async(v5, v6);
}

void __42__JFXDepthDataMediaReader_setIsScrubbing___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) reader];
  [v2 setIsScrubbing:v1];
}

- (int64_t)status
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 2;
  v3 = [(JFXDepthDataMediaReader *)self synchronizationQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __33__JFXDepthDataMediaReader_status__block_invoke;
  v6[3] = &unk_278D79C60;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __33__JFXDepthDataMediaReader_status__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) reader];
  *(*(*(a1 + 40) + 8) + 24) = [v2 status];
}

- (NSError)error
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__10;
  v11 = __Block_byref_object_dispose__10;
  v12 = 0;
  v3 = [(JFXDepthDataMediaReader *)self synchronizationQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __32__JFXDepthDataMediaReader_error__block_invoke;
  v6[3] = &unk_278D79C60;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __32__JFXDepthDataMediaReader_error__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) reader];
  v3 = [v2 error];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) lastDecodeError];

    MEMORY[0x2821F96F8]();
  }
}

- (BOOL)beginReadingAtTimeRange:(id *)a3
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v5 = [(JFXDepthDataMediaReader *)self synchronizationQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__JFXDepthDataMediaReader_beginReadingAtTimeRange___block_invoke;
  v8[3] = &unk_278D7A030;
  v8[4] = self;
  v8[5] = &v12;
  v6 = *&a3->var0.var3;
  v9 = *&a3->var0.var0;
  v10 = v6;
  v11 = *&a3->var1.var1;
  dispatch_sync(v5, v8);

  LOBYTE(a3) = *(v13 + 24);
  _Block_object_dispose(&v12, 8);
  return a3;
}

void __51__JFXDepthDataMediaReader_beginReadingAtTimeRange___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) reader];
  v3 = *(a1 + 64);
  v4[0] = *(a1 + 48);
  v4[1] = v3;
  v4[2] = *(a1 + 80);
  *(*(*(a1 + 40) + 8) + 24) = [v2 beginReadingAtTimeRange:v4];
}

- (BOOL)beginReading
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(JFXDepthDataMediaReader *)self synchronizationQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __39__JFXDepthDataMediaReader_beginReading__block_invoke;
  v5[3] = &unk_278D79C60;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

void __39__JFXDepthDataMediaReader_beginReading__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) reader];
  *(*(*(a1 + 40) + 8) + 24) = [v2 beginReading];
}

- (NSString)name
{
  v2 = [(JFXDepthDataMediaReader *)self reader];
  v3 = [v2 name];

  return v3;
}

- (unint64_t)signPostID
{
  v2 = [(JFXDepthDataMediaReader *)self reader];
  v3 = [v2 signPostID];

  return v3;
}

- (id)videoSampleForTime:(id *)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__10;
  v14 = __Block_byref_object_dispose__10;
  v15 = 0;
  v5 = [(JFXDepthDataMediaReader *)self synchronizationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__JFXDepthDataMediaReader_videoSampleForTime___block_invoke;
  block[3] = &unk_278D79E10;
  block[4] = self;
  block[5] = &v10;
  v9 = *a3;
  dispatch_sync(v5, block);

  v6 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v6;
}

void __46__JFXDepthDataMediaReader_videoSampleForTime___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) reader];
  v6 = *(a1 + 48);
  v7 = *(a1 + 64);
  v3 = [v2 videoSampleForTime:&v6];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)JFX_decompressAVDepthDataFromVideoTrackReaderSample:(double)a3 .cold.1(uint64_t a1, NSObject *a2, double a3)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2048;
  v6 = a3;
  _os_log_error_impl(&dword_242A3B000, a2, OS_LOG_TYPE_ERROR, "%@ found data with invalid depth data at time %f", &v3, 0x16u);
}

@end