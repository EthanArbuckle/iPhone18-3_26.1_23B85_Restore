@interface FigCaptureDepthDataPipeline
- (FigCaptureDepthDataPipeline)initWithConfiguration:(id)a3 sourceOutput:(id)a4 graph:(id)a5 name:(id)a6 delegate:(id)a7;
- (id)_buildDepthDataSinkPipeline:(uint64_t)a3 sourceOutput:(void *)a4 graph:(_OWORD *)a5 clientAuditToken:(uint64_t)a6 delegate:(int)a7 insertCopier:;
- (id)_buildDepthPipelineWithConfiguration:(uint64_t)a3 sourceOutput:(void *)a4 graph:(uint64_t)a5 delegate:;
- (uint64_t)_buildDepthConversionPipelineWithConfiguration:(uint64_t)a3 sourceOutput:(void *)a4 graph:(uint64_t *)a5 convertedDepthOutputsOut:;
- (void)dealloc;
@end

@implementation FigCaptureDepthDataPipeline

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCaptureDepthDataPipeline;
  [(FigCaptureRemoteQueueSinkPipeline *)&v3 dealloc];
}

- (FigCaptureDepthDataPipeline)initWithConfiguration:(id)a3 sourceOutput:(id)a4 graph:(id)a5 name:(id)a6 delegate:(id)a7
{
  if (a3)
  {
    v12 = *(a3 + 1);
  }

  else
  {
    v12 = 0;
  }

  v16.receiver = self;
  v16.super_class = FigCaptureDepthDataPipeline;
  v13 = -[FigCaptureSinkPipeline initWithGraph:name:sinkID:](&v16, sel_initWithGraph_name_sinkID_, a5, a6, [objc_msgSend(v12 "sinkConfiguration")]);
  if (!v13)
  {
    goto LABEL_4;
  }

  if (a3)
  {
    v15 = *(a3 + 1);
    if (!v15)
    {
      v15 = *(a3 + 2);
      if (!v15)
      {
        v15 = *(a3 + 3);
      }
    }
  }

  else
  {
    v15 = 0;
  }

  v13->_sourceID = [objc_msgSend(v15 "sourceConfiguration")];
  v13->_sourceDeviceType = [v15 underlyingDeviceType];
  if ([(FigCaptureDepthDataPipeline *)v13 _buildDepthPipelineWithConfiguration:a3 sourceOutput:a4 graph:a5 delegate:a7])
  {
    fig_log_get_emitter();
    FigDebugAssert3();

    return 0;
  }

  else
  {
LABEL_4:
    [objc_msgSend(a5 "memoryAnalyticsPayload")];
  }

  return v13;
}

- (id)_buildDepthPipelineWithConfiguration:(uint64_t)a3 sourceOutput:(void *)a4 graph:(uint64_t)a5 delegate:
{
  if (!a1)
  {
    return 0;
  }

  v18 = 0;
  if (!a2)
  {
    a1[9] = 0;
    [(FigCaptureDepthDataPipeline *)a1 _buildDepthConversionPipelineWithConfiguration:a3 sourceOutput:a4 graph:&v18 convertedDepthOutputsOut:?];
    return 0;
  }

  a1[9] = *(a2 + 40);
  [(FigCaptureDepthDataPipeline *)a1 _buildDepthConversionPipelineWithConfiguration:a2 sourceOutput:a3 graph:a4 convertedDepthOutputsOut:&v18];
  v10 = *(a2 + 8);
  if (v10)
  {
    v13 = [v18 objectAtIndexedSubscript:0];
    v14 = *(a2 + 64);
    v17[0] = *(a2 + 48);
    v17[1] = v14;
    v15 = -[FigCaptureDepthDataPipeline _buildDepthDataSinkPipeline:sourceOutput:graph:clientAuditToken:delegate:insertCopier:](a1, v10, v13, a4, v17, a5, [v18 count] > 1);
    if (v15)
    {
      v12 = v15;
      fig_log_get_emitter();
      FigDebugAssert3();
      return v12;
    }

    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  if (*(a2 + 34) != 1)
  {
    return 0;
  }

  v12 = 0;
  a1[8] = [v18 objectAtIndexedSubscript:v11];
  return v12;
}

- (uint64_t)_buildDepthConversionPipelineWithConfiguration:(uint64_t)a3 sourceOutput:(void *)a4 graph:(uint64_t *)a5 convertedDepthOutputsOut:
{
  if (!result)
  {
    return result;
  }

  v9 = result;
  v34 = 0;
  v33 = 0;
  if (a2)
  {
    v10 = *(a2 + 8);
    v11 = *(a2 + 34);
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  v12 = FigCaptureBuildPipelineStageName(@"com.apple.coremedia.capture.depthdata", [v10 sourceConfiguration]);
  if (a2)
  {
    v13 = *(a2 + 40);
    if (v13)
    {
      if ((v10 != 0) | v11 & 1)
      {
        v14 = (v10 != 0) & v11;
        if (v14)
        {
          v15 = 2;
        }

        else
        {
          v15 = 1;
        }

        goto LABEL_15;
      }

LABEL_42:
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0();
      goto LABEL_45;
    }
  }

  v16 = [BWPipelineStage pipelineStageWithName:v12 priority:13];
  if (!((v10 != 0) | v11 & 1))
  {
    goto LABEL_42;
  }

  v13 = v16;
  v14 = (v10 != 0) & v11;
  if (v14)
  {
    v15 = 2;
  }

  else
  {
    v15 = 1;
  }

  if (!a2)
  {
    FigCaptureMetadataObjectConfigurationRequiresFaceTracking(0);
    v22 = 0;
    v20 = 0;
    v18 = 0;
    v17 = 0;
    v19 = 0;
    v21 = 0;
    v23 = 0;
    goto LABEL_22;
  }

LABEL_15:
  if (FigCaptureMetadataObjectConfigurationRequiresFaceTracking(*(a2 + 24)))
  {
    v17 = *(a2 + 104) == 2;
  }

  else
  {
    v17 = 0;
  }

  if ((*(a2 + 32) & 1) == 0)
  {
    v18 = *(a2 + 16);
    v19 = *(a2 + 24);
    v21 = *(a2 + 88);
    v20 = *(a2 + 96);
    v22 = *(a2 + 80);
    v23 = *(a2 + 33);
LABEL_22:
    v24 = FigCaptureCreateAndConfigureDepthConverterNode(v10, v18, v19, v20, v21, v22, v23 & 1, v17, &v34);
    if (v34)
    {
      fig_log_get_emitter();
      goto LABEL_50;
    }

    v25 = v24;
    if (v24)
    {
      v32.receiver = v9;
      v32.super_class = FigCaptureDepthDataPipeline;
      if ((objc_msgSendSuper2(&v32, sel_addNode_error_, v24, &v33) & 1) == 0 || ([a4 connectOutput:a3 toInput:-[BWNode input](v25 pipelineStage:{"input"), v13}] & 1) == 0)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0();
        goto LABEL_50;
      }

      v9[7] = v25;
      a3 = [(BWNode *)v25 output];
      if (v14)
      {
        goto LABEL_27;
      }

      goto LABEL_33;
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_0();
LABEL_45:
    FigDebugAssert3();
    v34 = -12780;
    goto LABEL_38;
  }

  if (v14)
  {
LABEL_27:
    v26 = [[BWFanOutNode alloc] initWithFanOutCount:v15 mediaType:1986618469];
    [(BWNode *)v26 setName:@"Depth Splitter"];
    v31.receiver = v9;
    v31.super_class = FigCaptureDepthDataPipeline;
    if (objc_msgSendSuper2(&v31, sel_addNode_error_, v26, &v33))
    {
      v27 = [(BWNode *)v26 input];
      v28 = a2 ? *(a2 + 40) : 0;
      if ([a4 connectOutput:a3 toInput:v27 pipelineStage:v28])
      {
        v29 = [(BWNode *)v26 outputs];
        if (!a5)
        {
          goto LABEL_38;
        }

        goto LABEL_37;
      }
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_0();
LABEL_50:
    FigDebugAssert3();
    goto LABEL_38;
  }

LABEL_33:
  if (!a3)
  {
    v29 = 0;
    if (!a5)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  v30 = a3;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
  if (a5)
  {
LABEL_37:
    *a5 = v29;
  }

LABEL_38:
  result = v34;
  if (!v34)
  {
    if (v33)
    {
      return [v33 code];
    }
  }

  return result;
}

- (id)_buildDepthDataSinkPipeline:(uint64_t)a3 sourceOutput:(void *)a4 graph:(_OWORD *)a5 clientAuditToken:(uint64_t)a6 delegate:(int)a7 insertCopier:
{
  if (result)
  {
    v12 = result;
    v26.receiver = result;
    v26.super_class = FigCaptureDepthDataPipeline;
    v27[0] = 0;
    objc_msgSendSuper2(&v26, sel_setUpstreamOutput_);
    v13 = [BWAttachedMediaSplitNode alloc];
    v25 = @"Depth";
    v14 = -[BWAttachedMediaSplitNode initWithAttachedMediaKeys:](v13, "initWithAttachedMediaKeys:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1]);
    [(BWNode *)v14 setName:@"Depth Splitter"];
    v24.receiver = v12;
    v24.super_class = FigCaptureDepthDataPipeline;
    if (objc_msgSendSuper2(&v24, sel_addNode_error_, v14, v27) & 1) != 0 && (OUTLINED_FUNCTION_2_123([(BWNode *)v14 input]))
    {
      [(NSArray *)[(BWNode *)v14 outputs] objectAtIndexedSubscript:0];
      if (a7)
      {
        v15 = [[BWPixelTransferNode alloc] initWithfractionalSourceRectEnabled:0];
        [(BWNode *)v15 setName:@"Depth Data Copier"];
        -[BWPixelTransferNode setOutputPixelFormat:](v15, "setOutputPixelFormat:", [a2 outputFormat]);
        v23.receiver = v12;
        v23.super_class = FigCaptureDepthDataPipeline;
        if ((objc_msgSendSuper2(&v23, sel_addNode_error_, v15, v27) & 1) == 0 || (OUTLINED_FUNCTION_2_123([(BWNode *)v15 input]) & 1) == 0)
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_1_16();
          goto LABEL_21;
        }

        [(BWNode *)v15 output];
      }

      v16 = [BWRemoteQueueSinkNode alloc];
      v17 = [v12 sinkID];
      v18 = a5[1];
      v22[0] = *a5;
      v22[1] = v18;
      v19 = [(BWRemoteQueueSinkNode *)v16 initWithMediaType:1986618469 clientAuditToken:v22 sinkID:v17 cameraInfoByPortType:0];
      [(BWNode *)v19 setName:@"Depth Data Remote Queue Sink"];
      [(BWRemoteQueueSinkNode *)v19 setDelegate:a6];
      -[BWRemoteQueueSinkNode setDiscardsLateSampleBuffers:](v19, "setDiscardsLateSampleBuffers:", [objc_msgSend(a2 "depthDataSinkConfiguration")]);
      -[BWRemoteQueueSinkNode setClientVideoRetainedBufferCount:](v19, "setClientVideoRetainedBufferCount:", [a2 retainedBufferCount]);
      v21.receiver = v12;
      v21.super_class = FigCaptureDepthDataPipeline;
      if (objc_msgSendSuper2(&v21, sel_addNode_error_, v19, v27))
      {
        v20.receiver = v12;
        v20.super_class = FigCaptureDepthDataPipeline;
        objc_msgSendSuper2(&v20, sel_setSinkNode_, v19);
        if (OUTLINED_FUNCTION_2_123([(BWNode *)v19 input]))
        {
          if ([a4 deferredNodePrepareSupported] && (objc_msgSend(objc_msgSend(a2, "sinkConfiguration"), "deferredStartEnabled") & 1) == 0)
          {
            [a4 enableDeferredPrepareForNodesNotInPathOfSinkNode:v19];
          }

          goto LABEL_13;
        }

        fig_log_get_emitter();
        OUTLINED_FUNCTION_1_16();
      }

      else
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_1_16();
      }
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_16();
    }

LABEL_21:
    FigDebugAssert3();
LABEL_13:
    result = v27[0];
    if (v27[0])
    {
      return [v27[0] code];
    }
  }

  return result;
}

@end