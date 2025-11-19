@interface VCPVideoProcessorSession
- (BOOL)addFrameProcessingRequest:(id)a3 withConfiguration:(id)a4 error:(id *)a5;
- (BOOL)addRequest:(id)a3 withConfiguration:(id)a4 error:(id *)a5;
- (BOOL)allRequestsFinished;
- (BOOL)flushWithEndTime:(id *)a3 error:(id *)a4;
- (BOOL)processSampleBuffer:(opaqueCMSampleBuffer *)a3 error:(id *)a4;
- (BOOL)processSampleBuffer:(opaqueCMSampleBuffer *)a3 withEndTime:(id *)a4 error:(id *)a5;
- (BOOL)removeRequest:(id)a3 error:(id *)a4;
- (BOOL)shouldProcessSampleWithTimeRange:(id *)a3 atSamplingInterval:(id *)a4;
- (VCPVideoProcessorSession)init;
@end

@implementation VCPVideoProcessorSession

- (VCPVideoProcessorSession)init
{
  v10.receiver = self;
  v10.super_class = VCPVideoProcessorSession;
  v2 = [(VCPVideoProcessorSession *)&v10 init];
  v3 = v2;
  if (v2)
  {
    v2->_orientation = 1;
    v4 = dispatch_queue_create("com.apple.mediaanalysis.VCPVideoProcessorSession", 0);
    queue = v3->_queue;
    v3->_queue = v4;

    v6 = [MEMORY[0x1E695DF70] array];
    nodes = v3->_nodes;
    v3->_nodes = v6;

    v8 = MEMORY[0x1E6960C70];
    *(&v3->_modified + 4) = *MEMORY[0x1E6960C70];
    *&v3->_startTime.flags = *(v8 + 16);
  }

  return v3;
}

- (BOOL)addRequest:(id)a3 withConfiguration:(id)a4 error:(id *)a5
{
  v26[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [v8 completionHandler];

  if (!v10)
  {
    if (!a5)
    {
      goto LABEL_7;
    }

    v12 = MEMORY[0x1E696ABC0];
    v25 = *MEMORY[0x1E696A578];
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Video processing requests must have completion handler"];
    v26[0] = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    *a5 = [v12 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v14];

LABEL_6:
    LOBYTE(a5) = 0;
    goto LABEL_7;
  }

  if (![VCPVideoProcessorNode validateConfiguration:v9 withError:a5])
  {
    goto LABEL_6;
  }

  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 1;
  queue = self->_queue;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __63__VCPVideoProcessorSession_addRequest_withConfiguration_error___block_invoke;
  v16[3] = &unk_1E834D350;
  v16[4] = self;
  v19 = &v21;
  v20 = a5;
  v17 = v8;
  v18 = v9;
  dispatch_sync(queue, v16);
  LOBYTE(a5) = *(v22 + 24);

  _Block_object_dispose(&v21, 8);
LABEL_7:

  return a5 & 1;
}

void __63__VCPVideoProcessorSession_addRequest_withConfiguration_error___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(*(a1 + 32) + 16);
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v3)
  {
    v4 = *v15;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v15 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = [*(*(&v14 + 1) + 8 * i) request];
        v7 = v6 == *(a1 + 40);

        if (v7)
        {
          if (*(a1 + 64))
          {
            v8 = MEMORY[0x1E696ABC0];
            v20 = *MEMORY[0x1E696A578];
            v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Specified request already active cannot add"];;
            v21 = v9;
            v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
            **(a1 + 64) = [v8 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v10];
          }

          goto LABEL_13;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v14 objects:v22 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v2 = [VCPVideoProcessorNode nodeWithRequest:*(a1 + 40) andConfiguration:*(a1 + 48)];
  if (v2)
  {
    [*(*(a1 + 32) + 16) addObject:v2];
    *(*(a1 + 32) + 24) = 1;
  }

  else
  {
    if (*(a1 + 64))
    {
      v11 = MEMORY[0x1E696ABC0];
      v18 = *MEMORY[0x1E696A578];
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to create request with specified configuration"];
      v19 = v12;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
      **(a1 + 64) = [v11 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v13];
    }

LABEL_13:
    *(*(*(a1 + 56) + 8) + 24) = 0;
  }
}

- (BOOL)removeRequest:(id)a3 error:(id *)a4
{
  v6 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 1;
  queue = self->_queue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __48__VCPVideoProcessorSession_removeRequest_error___block_invoke;
  v10[3] = &unk_1E834D5D8;
  v10[4] = self;
  v11 = v6;
  v12 = &v14;
  v13 = a4;
  v8 = v6;
  dispatch_sync(queue, v10);
  LOBYTE(self) = *(v15 + 24);

  _Block_object_dispose(&v14, 8);
  return self;
}

void __48__VCPVideoProcessorSession_removeRequest_error___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(*(a1 + 32) + 16);
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v3)
  {
    v4 = *v14;
LABEL_3:
    v5 = 0;
    while (1)
    {
      if (*v14 != v4)
      {
        objc_enumerationMutation(v2);
      }

      v6 = *(*(&v13 + 1) + 8 * v5);
      v7 = [v6 request];
      v8 = v7 == *(a1 + 40);

      if (v8)
      {
        break;
      }

      if (v3 == ++v5)
      {
        v3 = [v2 countByEnumeratingWithState:&v13 objects:v19 count:16];
        if (v3)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v9 = v6;

    if (!v9)
    {
      goto LABEL_12;
    }

    [*(*(a1 + 32) + 16) removeObject:v9];
    *(*(a1 + 32) + 24) = 1;
  }

  else
  {
LABEL_9:

LABEL_12:
    if (*(a1 + 56))
    {
      v10 = MEMORY[0x1E696ABC0];
      v17 = *MEMORY[0x1E696A578];
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Specified request not found cannot remove"];;
      v18 = v11;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
      **(a1 + 56) = [v10 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v12];
    }

    *(*(*(a1 + 48) + 8) + 24) = 0;
  }
}

- (BOOL)addFrameProcessingRequest:(id)a3 withConfiguration:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if ([VCPVideoProcessorNode validateConfiguration:v9 withError:a5])
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 1;
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __78__VCPVideoProcessorSession_addFrameProcessingRequest_withConfiguration_error___block_invoke;
    block[3] = &unk_1E834D8C8;
    v16 = v8;
    v17 = &v19;
    v18 = a5;
    v14 = v9;
    v15 = self;
    dispatch_sync(queue, block);
    v11 = *(v20 + 24);

    _Block_object_dispose(&v19, 8);
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

void __78__VCPVideoProcessorSession_addFrameProcessingRequest_withConfiguration_error___block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = [VCPVideoProcessorNode nodeWithFrameProcessor:*(a1 + 48) andConfiguration:*(a1 + 32)];
  if (v2)
  {
    [*(*(a1 + 40) + 16) addObject:v2];
    *(*(a1 + 40) + 24) = 1;
  }

  else
  {
    if (*(a1 + 64))
    {
      v3 = MEMORY[0x1E696ABC0];
      v6 = *MEMORY[0x1E696A578];
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to create video processor node with specified configuration"];
      v7[0] = v4;
      v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
      **(a1 + 64) = [v3 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v5];
    }

    *(*(*(a1 + 56) + 8) + 24) = 0;
  }
}

- (BOOL)shouldProcessSampleWithTimeRange:(id *)a3 atSamplingInterval:(id *)a4
{
  v21 = *MEMORY[0x1E69E9840];
  memset(&v17, 0, sizeof(v17));
  v7 = *&a3->var0.var3;
  *&range.start.value = *&a3->var0.var0;
  *&range.start.epoch = v7;
  *&range.duration.timescale = *&a3->var1.var1;
  CMTimeRangeGetEnd(&v17, &range);
  memset(&v16, 0, sizeof(v16));
  *&range.start.value = *&a3->var0.var0;
  range.start.epoch = a3->var0.var3;
  *&rhs.value = *(&self->_modified + 4);
  rhs.epoch = *&self->_startTime.flags;
  CMTimeSubtract(&v16, &range.start, &rhs);
  v8 = vcvtpd_s64_f64(a4->var1 * v16.value / (a4->var0 * v16.timescale));
  memset(&start, 0, sizeof(start));
  range.start = *a4;
  CMTimeMultiply(&v18, &range.start, v8);
  *&range.start.value = *(&self->_modified + 4);
  range.start.epoch = *&self->_startTime.flags;
  rhs = v18;
  CMTimeAdd(&start, &range.start, &rhs);
  range.start = start;
  rhs = v17;
  v9 = CMTimeCompare(&range.start, &rhs);
  if ((v9 & 0x80000000) != 0)
  {
    rhs = start;
    v18 = *a4;
    CMTimeAdd(&range.start, &rhs, &v18);
    start = range.start;
    rhs = v17;
    if (CMTimeCompare(&range.start, &rhs) < 0 && MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *&range.start.value = *&a4->var0;
      range.start.epoch = a4->var3;
      Seconds = CMTimeGetSeconds(&range.start);
      var0 = a3->var0.var0;
      var1 = a3->var0.var1;
      LODWORD(range.start.value) = 134218496;
      *(&range.start.value + 4) = Seconds;
      LOWORD(range.start.flags) = 2048;
      *(&range.start.flags + 2) = var0;
      HIWORD(range.start.epoch) = 1024;
      LODWORD(range.duration.value) = var1;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Multiple sampling times (%0.1fs) intersect frame at %lld/%d", &range, 0x1Cu);
    }
  }

  return v9 >> 31;
}

- (BOOL)allRequestsFinished
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = self->_nodes;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if (([*(*(&v8 + 1) + 8 * i) finished] & 1) == 0)
        {
          v6 = 0;
          goto LABEL_11;
        }
      }

      v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v6 = 1;
LABEL_11:

  return v6;
}

- (BOOL)processSampleBuffer:(opaqueCMSampleBuffer *)a3 withEndTime:(id *)a4 error:(id *)a5
{
  v7 = a3;
  v81[1] = *MEMORY[0x1E69E9840];
  if (!CMSampleBufferGetImageBuffer(a3))
  {
    if (a5)
    {
      v13 = MEMORY[0x1E696ABC0];
      v80 = *MEMORY[0x1E696A578];
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Sample buffer does not contain video frame"];
      v81[0] = v14;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v81 forKeys:&v80 count:1];
      *a5 = [v13 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v15];

      LOBYTE(a5) = 0;
    }

    return a5;
  }

  memset(&v75, 0, sizeof(v75));
  CMSampleBufferGetPresentationTimeStamp(&start, v7);
  end[0] = *a4;
  CMTimeRangeFromTimeToTime(&v75, &start, end);
  start.value = 0;
  *&start.timescale = &start;
  start.epoch = 0x3032000000;
  v72 = __Block_byref_object_copy__21;
  v73 = __Block_byref_object_dispose__21;
  v74 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__VCPVideoProcessorSession_processSampleBuffer_withEndTime_error___block_invoke;
  block[3] = &unk_1E834C4B0;
  block[4] = self;
  block[5] = &start;
  dispatch_sync(queue, block);
  v66 = 0;
  v67 = &v66;
  v68 = 0x2020000000;
  v69 = 0;
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = objc_alloc(MEMORY[0x1E69845B8]);
  v12 = [(VCPVideoProcessorSession *)self orientation];
  v50 = [v11 initWithCMSampleBuffer:v7 orientation:v12 options:MEMORY[0x1E695E0F8]];
  frameCount = self->_frameCount;
  self->_frameCount = frameCount + 1;
  if (v67[3])
  {
    goto LABEL_3;
  }

  v51 = v7;
  do
  {
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    obj = *(*&start.timescale + 40);
    v16 = [obj countByEnumeratingWithState:&v62 objects:v79 count:16];
    if (!v16)
    {
      goto LABEL_51;
    }

    v17 = *v63;
    while (2)
    {
      v18 = 0;
      do
      {
        if (*v63 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v62 + 1) + 8 * v18);
        if (([v10 containsObject:v19] & 1) == 0)
        {
          v58 = 0;
          v59 = &v58;
          v60 = 0x2020000000;
          v61 = 0;
          v20 = self->_queue;
          v57[0] = MEMORY[0x1E69E9820];
          v57[1] = 3221225472;
          v57[2] = __66__VCPVideoProcessorSession_processSampleBuffer_withEndTime_error___block_invoke_2;
          v57[3] = &unk_1E834D210;
          v57[5] = v19;
          v57[6] = &v58;
          v57[4] = self;
          dispatch_sync(v20, v57);
          if (v59[3])
          {
            goto LABEL_14;
          }

          if ([v19 frameInterval] >= 2 && frameCount % objc_msgSend(v19, "frameInterval"))
          {
            if (MediaAnalysisLogLevel() < 7 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_14;
            }
          }

          else
          {
            if (v19)
            {
              [v19 timeInterval];
            }

            else
            {
              memset(&v56[1], 0, 24);
            }

            end[0] = *&v56[1];
            time2 = **&MEMORY[0x1E6960CC0];
            if (!CMTimeCompare(end, &time2))
            {
              goto LABEL_30;
            }

            *&end[0].value = v75;
            if (v19)
            {
              [v19 timeInterval];
            }

            else
            {
              memset(&time2, 0, sizeof(time2));
            }

            if ([(VCPVideoProcessorSession *)self shouldProcessSampleWithTimeRange:end atSamplingInterval:&time2])
            {
LABEL_30:
              v22 = [v19 frameLimit];
              v23 = v22 == 0;

              if (v23 || (v24 = [v19 processedFrameCount], objc_msgSend(v19, "frameLimit"), v25 = objc_claimAutoreleasedReturnValue(), LOBYTE(v24) = v24 < objc_msgSend(v25, "unsignedIntegerValue"), v25, (v24 & 1) != 0))
              {
                LOBYTE(time2.value) = 0;
                v26 = [v19 frameProcessor];
                v27 = v26 == 0;

                if (v27)
                {
                  v34 = [v19 request];
                  v35 = v34 == 0;

                  if (v35)
                  {
                    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                    {
                      LOWORD(end[0].value) = 0;
                      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "A processor node must contain either a frame processor or a vision request!", end, 2u);
                    }

                    _Block_object_dispose(&v58, 8);

                    LOBYTE(a5) = 0;
                    goto LABEL_57;
                  }

                  v36 = [v19 request];
                  v77 = v36;
                  v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v77 count:1];
                  v56[0] = 0;
                  v38 = [v50 performRequests:v37 error:v56];
                  v28 = v56[0];

                  v7 = v51;
                  if ((v38 & 1) == 0 && MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
                  {
                    v48 = [v19 request];
                    v39 = objc_opt_class();
                    v49 = NSStringFromClass(v39);
                    value = v75.start.value;
                    timescale = v75.start.timescale;
                    v42 = [v28 description];
                    LODWORD(end[0].value) = 138413058;
                    *(&end[0].value + 4) = v49;
                    LOWORD(end[0].flags) = 2048;
                    *(&end[0].flags + 2) = value;
                    HIWORD(end[0].epoch) = 1024;
                    LODWORD(end[1].value) = timescale;
                    WORD2(end[1].value) = 2112;
                    *(&end[1].value + 6) = v42;
                    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%@ failed for sample at %lld/%d (%@)", end, 0x26u);

                    v7 = v51;
                  }
                }

                else
                {
                  v28 = [v19 frameProcessor];
                  (*(v28 + 2))(v28, v7, &time2);
                }

                [v19 setProcessedFrameCount:{objc_msgSend(v19, "processedFrameCount") + 1}];
                if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
                {
                  v43 = [v19 typeDescription];
                  LODWORD(end[0].value) = 138413058;
                  *(&end[0].value + 4) = v43;
                  LOWORD(end[0].flags) = 2048;
                  *(&end[0].flags + 2) = frameCount;
                  HIWORD(end[0].epoch) = 2048;
                  end[1].value = v75.start.value;
                  LOWORD(end[1].timescale) = 1024;
                  *(&end[1].timescale + 2) = v75.start.timescale;
                  _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%@ processed sample %llu at %lld/%d", end, 0x26u);
                }

                [v10 addObject:v19];
                if (LOBYTE(time2.value) == 1)
                {
                  v44 = self->_queue;
                  v55[0] = MEMORY[0x1E69E9820];
                  v55[1] = 3221225472;
                  v55[2] = __66__VCPVideoProcessorSession_processSampleBuffer_withEndTime_error___block_invoke_24;
                  v55[3] = &unk_1E834D238;
                  v55[4] = self;
                  v55[5] = v19;
                  dispatch_sync(v44, v55);
                }
              }

              else if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
              {
                v29 = [v19 typeDescription];
                v30 = v75.start.value;
                v31 = v75.start.timescale;
                v32 = [v19 frameLimit];
                v33 = [v32 unsignedIntegerValue];
                LODWORD(end[0].value) = 138413314;
                *(&end[0].value + 4) = v29;
                LOWORD(end[0].flags) = 2048;
                *(&end[0].flags + 2) = frameCount;
                HIWORD(end[0].epoch) = 2048;
                end[1].value = v30;
                LOWORD(end[1].timescale) = 1024;
                *(&end[1].timescale + 2) = v31;
                HIWORD(end[1].flags) = 2048;
                end[1].epoch = v33;
                _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%@ skipping sample %llu at %lld/%d due to frame process limit %llu reached", end, 0x30u);

                v7 = v51;
              }

              goto LABEL_14;
            }

            if (MediaAnalysisLogLevel() < 7 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
            {
LABEL_14:
              _Block_object_dispose(&v58, 8);
              goto LABEL_15;
            }
          }

          v21 = [v19 typeDescription];
          LODWORD(end[0].value) = 138413058;
          *(&end[0].value + 4) = v21;
          LOWORD(end[0].flags) = 2048;
          *(&end[0].flags + 2) = frameCount;
          HIWORD(end[0].epoch) = 2048;
          end[1].value = v75.start.value;
          LOWORD(end[1].timescale) = 1024;
          *(&end[1].timescale + 2) = v75.start.timescale;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%@ skipping sample %lld at %lld/%d", end, 0x26u);

          goto LABEL_14;
        }

LABEL_15:
        ++v18;
      }

      while (v16 != v18);
      v45 = [obj countByEnumeratingWithState:&v62 objects:v79 count:16];
      v16 = v45;
      if (v45)
      {
        continue;
      }

      break;
    }

LABEL_51:

    v46 = self->_queue;
    v54[0] = MEMORY[0x1E69E9820];
    v54[1] = 3221225472;
    v54[2] = __66__VCPVideoProcessorSession_processSampleBuffer_withEndTime_error___block_invoke_2_25;
    v54[3] = &unk_1E834D8F0;
    v54[4] = self;
    v54[5] = &start;
    v54[6] = &v66;
    dispatch_sync(v46, v54);
  }

  while ((v67[3] & 1) == 0);
LABEL_3:
  LOBYTE(a5) = 1;
LABEL_57:

  _Block_object_dispose(&v66, 8);
  _Block_object_dispose(&start, 8);

  return a5;
}

void __66__VCPVideoProcessorSession_processSampleBuffer_withEndTime_error___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DEC8] arrayWithArray:*(*(a1 + 32) + 16)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  *(*(a1 + 32) + 24) = 0;
}

uint64_t __66__VCPVideoProcessorSession_processSampleBuffer_withEndTime_error___block_invoke_2(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (*(v2 + 24) == 1)
  {
    result = [*(v2 + 16) containsObject:*(result + 40)];
    v3 = result ^ 1;
  }

  else
  {
    v3 = 0;
  }

  *(*(*(v1 + 48) + 8) + 24) = v3;
  return result;
}

uint64_t __66__VCPVideoProcessorSession_processSampleBuffer_withEndTime_error___block_invoke_24(uint64_t a1)
{
  result = [*(*(a1 + 32) + 16) removeObject:*(a1 + 40)];
  *(*(a1 + 32) + 24) = 1;
  return result;
}

void __66__VCPVideoProcessorSession_processSampleBuffer_withEndTime_error___block_invoke_2_25(void *a1)
{
  v2 = a1[4];
  if (*(v2 + 24) == 1)
  {
    v3 = [MEMORY[0x1E695DEC8] arrayWithArray:*(v2 + 16)];
    v4 = *(a1[5] + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    *(a1[4] + 24) = 0;
  }

  else
  {
    *(*(a1[6] + 8) + 24) = 1;
  }
}

- (BOOL)processSampleBuffer:(opaqueCMSampleBuffer *)a3 error:(id *)a4
{
  v20[1] = *MEMORY[0x1E69E9840];
  if (CMSampleBufferGetImageBuffer(a3))
  {
    v7 = objc_autoreleasePoolPush();
    p_nextSampleBuffer = &self->_nextSampleBuffer;
    value = self->_nextSampleBuffer.value_;
    if (value)
    {
      value = CFRetain(value);
    }

    v18 = value;
    v17.value = CFRetain(a3);
    CF<__CVBuffer *>::operator=(&self->_nextSampleBuffer.value_, &v17);
    CF<__CVBuffer *>::~CF(&v17);
    v10 = v18;
    if (v18)
    {
      CMSampleBufferGetPresentationTimeStamp(&v17, p_nextSampleBuffer->value_);
      v16 = 0;
      v11 = [(VCPVideoProcessorSession *)self processSampleBuffer:v10 withEndTime:&v17 error:&v16];
      v12 = v16;
    }

    else
    {
      CMSampleBufferGetPresentationTimeStamp(&v17, p_nextSampleBuffer->value_);
      v11 = 0;
      v12 = 0;
      *(&self->_modified + 4) = v17;
    }

    CF<__CVBuffer *>::~CF(&v18);
    objc_autoreleasePoolPop(v7);
    if (v10)
    {
      if (a4 && v12)
      {
        *a4 = [v12 copy];
      }
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    if (!a4)
    {
      return 0;
    }

    v13 = MEMORY[0x1E696ABC0];
    v19 = *MEMORY[0x1E696A578];
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Sample buffer must contain uncompressed video"];
    v20[0] = v12;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    *a4 = [v13 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v14];

    v11 = 0;
  }

  return v11;
}

- (BOOL)flushWithEndTime:(id *)a3 error:(id *)a4
{
  v7 = objc_autoreleasePoolPush();
  value = self->_nextSampleBuffer.value_;
  if (value)
  {
    v9 = CFRetain(value);
    v10 = self->_nextSampleBuffer.value_;
    v18 = v9;
    if (v10)
    {
      CFRelease(v10);
      self->_nextSampleBuffer.value_ = 0;
      v9 = v18;
    }

    if (v9)
    {
      v16 = *&a3->var0;
      var3 = a3->var3;
      v15 = 0;
      v11 = [(VCPVideoProcessorSession *)self processSampleBuffer:v9 withEndTime:&v16 error:&v15];
      v12 = v15;
      v13 = 0;
      goto LABEL_9;
    }

    v11 = 0;
    v12 = 0;
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v18 = 0;
  }

  v13 = 1;
LABEL_9:
  CF<__CVBuffer *>::~CF(&v18);
  objc_autoreleasePoolPop(v7);
  if (v13)
  {
    v11 = 1;
  }

  else if (a4 && v12)
  {
    *a4 = [v12 copy];
  }

  return v11;
}

@end