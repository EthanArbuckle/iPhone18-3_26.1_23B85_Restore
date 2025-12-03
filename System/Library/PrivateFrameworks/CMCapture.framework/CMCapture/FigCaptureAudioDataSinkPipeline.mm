@interface FigCaptureAudioDataSinkPipeline
- (id)_buildAudioDataSinkPipeline:(void *)pipeline graph:(uint64_t)graph sourceAudioOutput:(_OWORD *)output clientAuditToken:(uint64_t)token renderDelegate:;
- (void)initWithConfiguration:(void *)configuration graph:(uint64_t)graph name:(uint64_t)name sourceAudioOutput:(_OWORD *)output clientAuditToken:(uint64_t)token renderDelegate:;
@end

@implementation FigCaptureAudioDataSinkPipeline

- (void)initWithConfiguration:(void *)configuration graph:(uint64_t)graph name:(uint64_t)name sourceAudioOutput:(_OWORD *)output clientAuditToken:(uint64_t)token renderDelegate:
{
  if (!self)
  {
    return 0;
  }

  v17.receiver = self;
  v17.super_class = FigCaptureAudioDataSinkPipeline;
  v12 = objc_msgSendSuper2(&v17, sel_initWithGraph_name_sinkID_, configuration, graph, [objc_msgSend(a2 "sinkConfiguration")]);
  v13 = v12;
  if (v12)
  {
    v15 = output[1];
    v16[0] = *output;
    v16[1] = v15;
    if ([(FigCaptureAudioDataSinkPipeline *)v12 _buildAudioDataSinkPipeline:a2 graph:configuration sourceAudioOutput:name clientAuditToken:v16 renderDelegate:token])
    {
      fig_log_get_emitter();
      FigDebugAssert3();

      return 0;
    }
  }

  return v13;
}

- (id)_buildAudioDataSinkPipeline:(void *)pipeline graph:(uint64_t)graph sourceAudioOutput:(_OWORD *)output clientAuditToken:(uint64_t)token renderDelegate:
{
  if (result)
  {
    v11 = result;
    v20 = 0;
    v19.receiver = result;
    v19.super_class = FigCaptureAudioDataSinkPipeline;
    objc_msgSendSuper2(&v19, sel_setUpstreamOutput_, graph);
    v12 = [BWRemoteQueueSinkNode alloc];
    sinkID = [v11 sinkID];
    v14 = output[1];
    v18[0] = *output;
    v18[1] = v14;
    v15 = [(BWRemoteQueueSinkNode *)v12 initWithMediaType:1936684398 clientAuditToken:v18 sinkID:sinkID cameraInfoByPortType:0];
    [(BWNode *)v15 setName:@"Audio Data Remote Queue Sink"];
    [(BWRemoteQueueSinkNode *)v15 setDelegate:token];
    v17.receiver = v11;
    v17.super_class = FigCaptureAudioDataSinkPipeline;
    if (objc_msgSendSuper2(&v17, sel_addNode_error_, v15, &v20))
    {
      v16.receiver = v11;
      v16.super_class = FigCaptureAudioDataSinkPipeline;
      objc_msgSendSuper2(&v16, sel_setSinkNode_, v15);
      if ([pipeline connectOutput:graph toInput:-[BWNode input](v15 pipelineStage:{"input"), 0}])
      {
        if ([pipeline deferredNodePrepareSupported] && (objc_msgSend(objc_msgSend(a2, "sinkConfiguration"), "deferredStartEnabled") & 1) == 0)
        {
          [pipeline enableDeferredPrepareForNodesNotInPathOfSinkNode:v15];
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