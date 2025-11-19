@interface FigCaptureAudioDataSinkPipeline
- (id)_buildAudioDataSinkPipeline:(void *)a3 graph:(uint64_t)a4 sourceAudioOutput:(_OWORD *)a5 clientAuditToken:(uint64_t)a6 renderDelegate:;
- (void)initWithConfiguration:(void *)a3 graph:(uint64_t)a4 name:(uint64_t)a5 sourceAudioOutput:(_OWORD *)a6 clientAuditToken:(uint64_t)a7 renderDelegate:;
@end

@implementation FigCaptureAudioDataSinkPipeline

- (void)initWithConfiguration:(void *)a3 graph:(uint64_t)a4 name:(uint64_t)a5 sourceAudioOutput:(_OWORD *)a6 clientAuditToken:(uint64_t)a7 renderDelegate:
{
  if (!a1)
  {
    return 0;
  }

  v17.receiver = a1;
  v17.super_class = FigCaptureAudioDataSinkPipeline;
  v12 = objc_msgSendSuper2(&v17, sel_initWithGraph_name_sinkID_, a3, a4, [objc_msgSend(a2 "sinkConfiguration")]);
  v13 = v12;
  if (v12)
  {
    v15 = a6[1];
    v16[0] = *a6;
    v16[1] = v15;
    if ([(FigCaptureAudioDataSinkPipeline *)v12 _buildAudioDataSinkPipeline:a2 graph:a3 sourceAudioOutput:a5 clientAuditToken:v16 renderDelegate:a7])
    {
      fig_log_get_emitter();
      FigDebugAssert3();

      return 0;
    }
  }

  return v13;
}

- (id)_buildAudioDataSinkPipeline:(void *)a3 graph:(uint64_t)a4 sourceAudioOutput:(_OWORD *)a5 clientAuditToken:(uint64_t)a6 renderDelegate:
{
  if (result)
  {
    v11 = result;
    v20 = 0;
    v19.receiver = result;
    v19.super_class = FigCaptureAudioDataSinkPipeline;
    objc_msgSendSuper2(&v19, sel_setUpstreamOutput_, a4);
    v12 = [BWRemoteQueueSinkNode alloc];
    v13 = [v11 sinkID];
    v14 = a5[1];
    v18[0] = *a5;
    v18[1] = v14;
    v15 = [(BWRemoteQueueSinkNode *)v12 initWithMediaType:1936684398 clientAuditToken:v18 sinkID:v13 cameraInfoByPortType:0];
    [(BWNode *)v15 setName:@"Audio Data Remote Queue Sink"];
    [(BWRemoteQueueSinkNode *)v15 setDelegate:a6];
    v17.receiver = v11;
    v17.super_class = FigCaptureAudioDataSinkPipeline;
    if (objc_msgSendSuper2(&v17, sel_addNode_error_, v15, &v20))
    {
      v16.receiver = v11;
      v16.super_class = FigCaptureAudioDataSinkPipeline;
      objc_msgSendSuper2(&v16, sel_setSinkNode_, v15);
      if ([a3 connectOutput:a4 toInput:-[BWNode input](v15 pipelineStage:{"input"), 0}])
      {
        if ([a3 deferredNodePrepareSupported] && (objc_msgSend(objc_msgSend(a2, "sinkConfiguration"), "deferredStartEnabled") & 1) == 0)
        {
          [a3 enableDeferredPrepareForNodesNotInPathOfSinkNode:v15];
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