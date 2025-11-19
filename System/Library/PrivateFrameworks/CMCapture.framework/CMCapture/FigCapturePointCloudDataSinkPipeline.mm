@interface FigCapturePointCloudDataSinkPipeline
- (id)_buildPointCloudDataSinkPipelineWithConfiguration:(uint64_t)a3 sourceOutput:(void *)a4 graph:(_OWORD *)a5 clientAuditToken:(uint64_t)a6 delegate:;
- (void)dealloc;
- (void)initWithConfiguration:(uint64_t)a3 sourceOutput:(void *)a4 graph:(uint64_t)a5 name:(_OWORD *)a6 clientAuditToken:(uint64_t)a7 delegate:;
@end

@implementation FigCapturePointCloudDataSinkPipeline

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCapturePointCloudDataSinkPipeline;
  [(FigCaptureRemoteQueueSinkPipeline *)&v3 dealloc];
}

- (void)initWithConfiguration:(uint64_t)a3 sourceOutput:(void *)a4 graph:(uint64_t)a5 name:(_OWORD *)a6 clientAuditToken:(uint64_t)a7 delegate:
{
  if (!a1)
  {
    return 0;
  }

  v16.receiver = a1;
  v16.super_class = FigCapturePointCloudDataSinkPipeline;
  v12 = objc_msgSendSuper2(&v16, sel_initWithGraph_name_sinkID_, a4, a5, [objc_msgSend(a2 "sinkConfiguration")]);
  if (v12)
  {
    v12[7] = [objc_msgSend(a2 "sourceConfiguration")];
    v14 = a6[1];
    v15[0] = *a6;
    v15[1] = v14;
    if ([(FigCapturePointCloudDataSinkPipeline *)v12 _buildPointCloudDataSinkPipelineWithConfiguration:a2 sourceOutput:a3 graph:a4 clientAuditToken:v15 delegate:a7])
    {
      fig_log_get_emitter();
      FigDebugAssert3();

      return 0;
    }
  }

  return v12;
}

- (id)_buildPointCloudDataSinkPipelineWithConfiguration:(uint64_t)a3 sourceOutput:(void *)a4 graph:(_OWORD *)a5 clientAuditToken:(uint64_t)a6 delegate:
{
  if (result)
  {
    v11 = result;
    v20 = 0;
    v19.receiver = result;
    v19.super_class = FigCapturePointCloudDataSinkPipeline;
    objc_msgSendSuper2(&v19, sel_setUpstreamOutput_);
    v12 = [BWRemoteQueueSinkNode alloc];
    v13 = [v11 sinkID];
    v14 = a5[1];
    v18[0] = *a5;
    v18[1] = v14;
    v15 = [(BWRemoteQueueSinkNode *)v12 initWithMediaType:1885564004 clientAuditToken:v18 sinkID:v13 cameraInfoByPortType:0];
    [(BWNode *)v15 setName:@"Point Cloud Data Remote Queue Sink"];
    [(BWRemoteQueueSinkNode *)v15 setDelegate:a6];
    -[BWRemoteQueueSinkNode setDiscardsLateSampleBuffers:](v15, "setDiscardsLateSampleBuffers:", [objc_msgSend(a2 "pointCloudDataSinkConfiguration")]);
    -[BWRemoteQueueSinkNode setClientVideoRetainedBufferCount:](v15, "setClientVideoRetainedBufferCount:", [a2 retainedBufferCount]);
    v17.receiver = v11;
    v17.super_class = FigCapturePointCloudDataSinkPipeline;
    if (objc_msgSendSuper2(&v17, sel_addNode_error_, v15, &v20))
    {
      v16.receiver = v11;
      v16.super_class = FigCapturePointCloudDataSinkPipeline;
      objc_msgSendSuper2(&v16, sel_setSinkNode_, v15);
      if ([a4 connectOutput:a3 toInput:-[BWNode input](v15 pipelineStage:{"input"), 0}])
      {
        if ([a4 deferredNodePrepareSupported] && (objc_msgSend(objc_msgSend(a2, "sinkConfiguration"), "deferredStartEnabled") & 1) == 0)
        {
          [a4 enableDeferredPrepareForNodesNotInPathOfSinkNode:v15];
        }

        goto LABEL_7;
      }

      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_5();
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_5();
    }

    FigDebugAssert3();
LABEL_7:
    result = v20;
    if (v20)
    {
      return [v20 code];
    }
  }

  return result;
}

@end