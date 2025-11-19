@interface VCPVideoAnalysisPipelineManager
- (VCPVideoAnalysisPipelineManager)initWithVideoAnalysisBlocks:(id)a3 videoDecoder:(id)a4 maxBufferedFrames:(unint64_t)a5 cancelBlock:(id)a6;
- (id)lastFrameResource;
- (id)nextFrameResource;
- (int)addFrameResource:(id)a3;
- (int)manageFrameResources;
- (int)run;
- (int)runWithGraph;
- (void)executeDecode;
- (void)executePipelineStageAt:(unint64_t)a3 currentFrameResource:(id)a4 nextFrameSample:(opaqueCMSampleBuffer *)a5;
- (void)flushFrameResources;
@end

@implementation VCPVideoAnalysisPipelineManager

- (VCPVideoAnalysisPipelineManager)initWithVideoAnalysisBlocks:(id)a3 videoDecoder:(id)a4 maxBufferedFrames:(unint64_t)a5 cancelBlock:(id)a6
{
  v54 = *MEMORY[0x1E69E9840];
  v46 = a3;
  v45 = a4;
  aBlock = a6;
  v47.receiver = self;
  v47.super_class = VCPVideoAnalysisPipelineManager;
  v11 = [(VCPVideoAnalysisPipelineManager *)&v47 init];
  if (!v11)
  {
    goto LABEL_16;
  }

  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%@]", objc_opt_class()];
  logPrefix = v11->_logPrefix;
  v11->_logPrefix = v12;

  if (!v45)
  {
    if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    v20 = v11->_logPrefix;
    *buf = 138412290;
    v49 = v20;
    v17 = MEMORY[0x1E69E9C10];
    v18 = "%@ video decoder can not be nil.";
LABEL_14:
    v19 = 12;
    goto LABEL_15;
  }

  if (![v46 count])
  {
    if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    v21 = v11->_logPrefix;
    *buf = 138412290;
    v49 = v21;
    v17 = MEMORY[0x1E69E9C10];
    v18 = "%@ empty analysis blocks.";
    goto LABEL_14;
  }

  v14 = [v46 count];
  v15 = v14 + 1;
  if (v14 + 1 > a5)
  {
    if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    v16 = v11->_logPrefix;
    *buf = 138412802;
    v49 = v16;
    v50 = 1024;
    v51 = a5;
    v52 = 1024;
    v53 = v15;
    v17 = MEMORY[0x1E69E9C10];
    v18 = "%@ maxBufferedFrames %u < pipelineDepth %u";
    v19 = 24;
LABEL_15:
    _os_log_impl(&dword_1C9B70000, v17, OS_LOG_TYPE_ERROR, v18, buf, v19);
LABEL_16:
    v22 = 0;
    goto LABEL_17;
  }

  atomic_store(0, &v11->_err);
  v11->_flags = 0;
  objc_storeStrong(&v11->_decoder, a4);
  v11->_decodeDone = 0;
  v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
  frameResources = v11->_frameResources;
  v11->_frameResources = v24;

  v11->_maxBufferedFrames = a5;
  objc_storeStrong(&v11->_pipelineBlocks, a3);
  v26 = _Block_copy(aBlock);
  cancelBlock = v11->_cancelBlock;
  v11->_cancelBlock = v26;

  v28 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.", objc_opt_class()];
  v30 = [v29 stringByAppendingString:@"Decode"];
  v31 = v30;
  v32 = dispatch_queue_create([v30 UTF8String], v28);
  decodeQueue = v11->_decodeQueue;
  v11->_decodeQueue = v32;

  v34 = objc_alloc_init(MEMORY[0x1E695DF70]);
  pipelineQueues = v11->_pipelineQueues;
  v11->_pipelineQueues = v34;

  for (i = 0; i < [(NSArray *)v11->_pipelineBlocks count]; ++i)
  {
    v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Stage-%lu", i];
    v38 = v11->_pipelineQueues;
    v39 = [v29 stringByAppendingString:v37];
    v40 = v39;
    v41 = dispatch_queue_create([v39 UTF8String], v28);
    [(NSMutableArray *)v38 addObject:v41];
  }

  v42 = dispatch_group_create();
  group = v11->_group;
  v11->_group = v42;

  v22 = v11;
LABEL_17:

  return v22;
}

- (void)flushFrameResources
{
  for (i = self->_frameResources; [(NSMutableArray *)i count]; i = self->_frameResources)
  {
    v4 = [(NSMutableArray *)self->_frameResources objectAtIndex:0];
    self->_flags |= [v4 frameFlags];
    [(NSMutableArray *)self->_frameResources removeObjectAtIndex:0];
  }
}

- (int)manageFrameResources
{
  v11 = *MEMORY[0x1E69E9840];
  if ([(NSMutableArray *)self->_frameResources count]>= self->_maxBufferedFrames)
  {
    v3 = [(NSMutableArray *)self->_frameResources objectAtIndex:0];
    self->_flags |= [v3 frameFlags];
    [(NSMutableArray *)self->_frameResources removeObjectAtIndex:0];
  }

  if ([(NSMutableArray *)self->_frameResources count]< self->_maxBufferedFrames)
  {
    return 0;
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    logPrefix = self->_logPrefix;
    v6 = [(NSMutableArray *)self->_frameResources count];
    v7 = 138412546;
    v8 = logPrefix;
    v9 = 1024;
    v10 = v6;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ total buffered %u frames exceeding capacity.", &v7, 0x12u);
  }

  return -18;
}

- (id)nextFrameResource
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = [(VCPVideoTrackDecoder *)self->_decoder copyNextSampleBuffer];
  if (v3)
  {
    v4 = [[VCPVideoAnalysisPipelineFrameResource alloc] initWithSampleBuffer:v3];
  }

  else
  {
    self->_decodeDone = 1;
    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      logPrefix = self->_logPrefix;
      v7 = 138412290;
      v8 = logPrefix;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%@ frame decoding finished.", &v7, 0xCu);
    }

    v4 = 0;
  }

  return v4;
}

- (id)lastFrameResource
{
  v3 = [(NSMutableArray *)self->_frameResources count];
  if (v3)
  {
    v3 = [(NSMutableArray *)self->_frameResources lastObject];
  }

  return v3;
}

- (int)addFrameResource:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(NSMutableArray *)self->_frameResources count]>= self->_maxBufferedFrames)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      logPrefix = self->_logPrefix;
      v7 = [(NSMutableArray *)self->_frameResources count];
      v9 = 138412546;
      v10 = logPrefix;
      v11 = 1024;
      v12 = v7;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ total buffered %u frames exceeding capacity.", &v9, 0x12u);
    }

    v5 = -18;
  }

  else
  {
    [(NSMutableArray *)self->_frameResources addObject:v4];
    v5 = 0;
  }

  return v5;
}

- (void)executeDecode
{
  v3 = VCPSignPostLog();
  v4 = os_signpost_id_generate(v3);

  v5 = VCPSignPostLog();
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "VCPVideoAnalysisPipelineManager_ExecuteDecode", "", buf, 2u);
  }

  if (!atomic_load(&self->_err))
  {
    cancelBlock = self->_cancelBlock;
    if (cancelBlock && cancelBlock[2]())
    {
      atomic_store(0xFFFFFF80, &self->_err);
    }

    else if (!self->_decodeDone)
    {
      v9 = [(VCPVideoAnalysisPipelineManager *)self manageFrameResources];
      if (v9)
      {
        atomic_store(v9, &self->_err);
      }

      else
      {
        v10 = [(VCPVideoAnalysisPipelineManager *)self lastFrameResource];
        v11 = [(VCPVideoAnalysisPipelineManager *)self nextFrameResource];
        if (v11 && (v12 = [(VCPVideoAnalysisPipelineManager *)self addFrameResource:v11]) != 0)
        {
          atomic_store(v12, &self->_err);
        }

        else
        {
          if (v10)
          {
            group = self->_group;
            v14 = [(NSMutableArray *)self->_pipelineQueues objectAtIndex:0];
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __48__VCPVideoAnalysisPipelineManager_executeDecode__block_invoke;
            block[3] = &unk_1E834D020;
            block[4] = self;
            v18 = v10;
            v19 = v11;
            dispatch_group_async(group, v14, block);
          }

          v15 = VCPSignPostLog();
          v16 = v15;
          if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_1C9B70000, v16, OS_SIGNPOST_INTERVAL_END, v4, "VCPVideoAnalysisPipelineManager_ExecuteDecode", "", buf, 2u);
          }
        }
      }
    }
  }
}

uint64_t __48__VCPVideoAnalysisPipelineManager_executeDecode__block_invoke(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = a1[6];
  if (v3)
  {
    v4 = [v3 frameSampleBuffer];
  }

  else
  {
    v4 = 0;
  }

  return [v1 executePipelineStageAt:0 currentFrameResource:v2 nextFrameSample:v4];
}

- (void)executePipelineStageAt:(unint64_t)a3 currentFrameResource:(id)a4 nextFrameSample:(opaqueCMSampleBuffer *)a5
{
  v30 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = VCPSignPostLog();
  v10 = os_signpost_id_generate(v9);

  v11 = VCPSignPostLog();
  v12 = v11;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 67109120;
    v29 = a3;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "VCPVideoAnalysisPipelineManager_ExecuteStage", "-%u", buf, 8u);
  }

  if (!atomic_load(&self->_err))
  {
    cancelBlock = self->_cancelBlock;
    if (cancelBlock && cancelBlock[2]())
    {
      atomic_store(0xFFFFFF80, &self->_err);
    }

    else
    {
      v15 = [(NSArray *)self->_pipelineBlocks objectAtIndex:a3];
      v16 = (v15)[2](v15, v8, a5);

      if (v16)
      {
        atomic_store(v16, &self->_err);
      }

      else
      {
        v17 = (a3 + 1) % [(NSArray *)self->_pipelineBlocks count];
        group = self->_group;
        if (v17)
        {
          v19 = [(NSMutableArray *)self->_pipelineQueues objectAtIndex:v17];
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __95__VCPVideoAnalysisPipelineManager_executePipelineStageAt_currentFrameResource_nextFrameSample___block_invoke_2;
          block[3] = &unk_1E8350720;
          block[4] = self;
          v25 = v17;
          v24 = v8;
          v26 = a5;
          dispatch_group_async(group, v19, block);
        }

        else
        {
          decodeQueue = self->_decodeQueue;
          v27[0] = MEMORY[0x1E69E9820];
          v27[1] = 3221225472;
          v27[2] = __95__VCPVideoAnalysisPipelineManager_executePipelineStageAt_currentFrameResource_nextFrameSample___block_invoke;
          v27[3] = &unk_1E834BDC0;
          v27[4] = self;
          dispatch_group_async(group, decodeQueue, v27);
        }

        v21 = VCPSignPostLog();
        v22 = v21;
        if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
        {
          *buf = 67109120;
          v29 = a3;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v22, OS_SIGNPOST_INTERVAL_END, v10, "VCPVideoAnalysisPipelineManager_ExecuteStage", "-%u", buf, 8u);
        }
      }
    }
  }
}

- (int)runWithGraph
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MADProcessingGraph);
  v4 = [MEMORY[0x1E695DF70] array];
  for (i = 0; i < [(NSArray *)self->_pipelineBlocks count]; ++i)
  {
    v6 = [MADVideoAnalysisPipelineNode alloc];
    v7 = [(NSMutableArray *)self->_pipelineQueues objectAtIndexedSubscript:i];
    v8 = [(NSArray *)self->_pipelineBlocks objectAtIndexedSubscript:i];
    v9 = [(MADVideoAnalysisPipelineNode *)v6 initWithQueue:v7 pipelineBlock:v8];
    [v4 addObject:v9];
  }

  v35 = 0;
  v10 = [v4 objectAtIndexedSubscript:0];
  [(MADProcessingGraph *)v3 addRoot:v10 error:&v35];

  v11 = [v4 objectAtIndexedSubscript:1];
  v12 = [v4 objectAtIndexedSubscript:0];
  [(MADProcessingGraph *)v3 addChild:v11 toParent:v12 error:&v35];

  v13 = [v4 objectAtIndexedSubscript:2];
  v14 = [v4 objectAtIndexedSubscript:1];
  [(MADProcessingGraph *)v3 addChild:v13 toParent:v14 error:&v35];

  for (j = 3; j < [(NSArray *)self->_pipelineBlocks count]; ++j)
  {
    v16 = [v4 objectAtIndexedSubscript:j];
    [(MADProcessingGraph *)v3 addRoot:v16 error:&v35];
  }

  if (v35)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      logPrefix = self->_logPrefix;
      *buf = 138412546;
      v37 = logPrefix;
      v38 = 2112;
      v39 = v35;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ graph construction failed: %@", buf, 0x16u);
    }

    v18 = -18;
  }

  else
  {
    [(MADProcessingGraph *)v3 setDispatchGroup:self->_group];
    v19 = [(VCPVideoTrackDecoder *)self->_decoder copyNextSampleBuffer];
    v20 = [[VCPVideoAnalysisPipelineFrameResource alloc] initWithSampleBuffer:v19];
    v34 = 0;
    if (v19)
    {
      while (1)
      {
        cancelBlock = self->_cancelBlock;
        if (cancelBlock)
        {
          if (cancelBlock[2]())
          {
            break;
          }
        }

        if ([(MADProcessingGraph *)v3 hasProcessingFailure])
        {
          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v25 = self->_logPrefix;
            *buf = 138412290;
            v37 = v25;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Processing graph had failure", buf, 0xCu);
          }

          v18 = -18;
          goto LABEL_34;
        }

        v22 = [(VCPVideoTrackDecoder *)self->_decoder copyNextSampleBuffer];
        v23 = [[MADNodeData alloc] initWithCurrentFrameResource:v20 nextSampleBuffer:v22];
        if (![(MADProcessingGraph *)v3 addInput:v23 error:&v34])
        {
          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v26 = self->_logPrefix;
            *buf = 138412546;
            v37 = v26;
            v38 = 2112;
            v39 = v34;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Failed to add input to queue (%@)", buf, 0x16u);
          }

          if (![(MADProcessingGraph *)v3 hasProcessingFailure])
          {
            [(MADProcessingGraph *)v3 cancelProcessing];
          }

          v18 = [v34 code];

          goto LABEL_34;
        }

        if (!v22)
        {
          if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
          {
            v27 = self->_logPrefix;
            *buf = 138412290;
            v37 = v27;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%@ frame decoding finished", buf, 0xCu);
          }

          self->_decodeDone = 1;

          goto LABEL_33;
        }

        v24 = [[VCPVideoAnalysisPipelineFrameResource alloc] initWithSampleBuffer:v22];

        v20 = v24;
      }

      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        v33 = self->_logPrefix;
        *buf = 138412290;
        v37 = v33;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%@ processing cancelled", buf, 0xCu);
      }

      [(MADProcessingGraph *)v3 cancelProcessing];
      v18 = -128;
    }

    else
    {
LABEL_33:
      v28 = [(MADProcessingGraph *)v3 waitForResultsWithError:0, v34];
      v29 = +[MADVideoAnalysisPipelineNode flagsKey];
      v30 = [v28 objectForKeyedSubscript:v29];
      v31 = [v30 unsignedLongLongValue];

      self->_flags |= v31;
      v18 = 0;
    }

LABEL_34:
  }

  return v18;
}

- (int)run
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = VCPSignPostLog();
  v4 = os_signpost_id_generate(v3);

  v5 = VCPSignPostLog();
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "VCPVideoAnalysisPipelineManager_Run", "", buf, 2u);
  }

  if ([objc_opt_class() shouldUseGraphProcessing])
  {
    v7 = [(VCPVideoAnalysisPipelineManager *)self runWithGraph];
    if (v7)
    {
      atomic_store(v7, &self->_err);
    }
  }

  else
  {
    if (self->_maxBufferedFrames)
    {
      v8 = 0;
      v9 = MEMORY[0x1E69E9820];
      do
      {
        group = self->_group;
        decodeQueue = self->_decodeQueue;
        block[0] = v9;
        block[1] = 3221225472;
        block[2] = __38__VCPVideoAnalysisPipelineManager_run__block_invoke;
        block[3] = &unk_1E834BDC0;
        block[4] = self;
        dispatch_group_async(group, decodeQueue, block);
        ++v8;
      }

      while (v8 < self->_maxBufferedFrames);
    }

    dispatch_group_wait(self->_group, 0xFFFFFFFFFFFFFFFFLL);
  }

  if (atomic_load(&self->_err))
  {
    v13 = atomic_load(&self->_err);
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      logPrefix = self->_logPrefix;
      *buf = 138412546;
      v22 = logPrefix;
      v23 = 1024;
      v24 = v13;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Pipeline execution err: %d.", buf, 0x12u);
    }
  }

  else
  {
    if (!self->_decodeDone && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = self->_logPrefix;
      *buf = 138412290;
      v22 = v15;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ decoding was not done after group finished", buf, 0xCu);
    }

    if ([(VCPVideoTrackDecoder *)self->_decoder status]== 2)
    {
      [(VCPVideoAnalysisPipelineManager *)self flushFrameResources];
      v16 = VCPSignPostLog();
      v17 = v16;
      if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v17, OS_SIGNPOST_INTERVAL_END, v4, "VCPVideoAnalysisPipelineManager_Run", "", buf, 2u);
      }

      return 0;
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v18 = self->_logPrefix;
        *buf = 138412290;
        v22 = v18;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ video decoder read err.", buf, 0xCu);
      }

      return -19;
    }
  }

  return v13;
}

@end