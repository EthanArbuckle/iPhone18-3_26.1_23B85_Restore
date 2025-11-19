@interface FigCaptureVisionDataSinkPipeline
- (id)_buildVisionDataSinkPipeline:(uint64_t)a3 videoDataConnectionConfiguration:(void *)a4 graph:(uint64_t)a5 visionCaptureOutput:(_OWORD *)a6 clientAuditToken:(uint64_t)a7 delegate:;
- (uint64_t)setKeypointDetectionThreshold:(uint64_t)result;
- (uint64_t)setRuntimeUpdates:(uint64_t)result;
- (uint64_t)triggerVisionDataBurst;
- (void)dealloc;
- (void)initWithVisionDataConnectionConfiguration:(uint64_t)a3 videoDataConnectionConfiguration:(void *)a4 graph:(uint64_t)a5 name:(uint64_t)a6 visionCaptureOutput:(void *)a7 captureDevice:(_OWORD *)a8 clientAuditToken:(uint64_t)a9 delegate:;
@end

@implementation FigCaptureVisionDataSinkPipeline

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCaptureVisionDataSinkPipeline;
  [(FigCaptureRemoteQueueSinkPipeline *)&v3 dealloc];
}

- (void)initWithVisionDataConnectionConfiguration:(uint64_t)a3 videoDataConnectionConfiguration:(void *)a4 graph:(uint64_t)a5 name:(uint64_t)a6 visionCaptureOutput:(void *)a7 captureDevice:(_OWORD *)a8 clientAuditToken:(uint64_t)a9 delegate:
{
  if (!a1)
  {
    return 0;
  }

  v45.receiver = a1;
  v45.super_class = FigCaptureVisionDataSinkPipeline;
  v14 = objc_msgSendSuper2(&v45, sel_initWithGraph_name_sinkID_, a4, a5, [objc_msgSend(a2 "sinkConfiguration")]);
  if (v14)
  {
    v31 = a8;
    v33 = a4;
    v34 = a6;
    v14[8] = [objc_msgSend(a2 "sourceConfiguration")];
    v32 = a2;
    *(v14 + 18) = [a2 underlyingDeviceType];
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v15 = [a7 captureStreams];
    v16 = [v15 countByEnumeratingWithState:&v41 objects:v40 count:16];
    v17 = &OBJC_IVAR___BWStreamingFilterNode__maxLossyCompressionLevel;
    if (!v16)
    {
      goto LABEL_21;
    }

    v18 = v16;
    v19 = *v42;
    v20 = *off_1E798A0F8;
    v37 = *off_1E798A0D0;
    v36 = *off_1E798A0D8;
    v21 = *off_1E798A0C0;
    v35 = *off_1E798A0E0;
LABEL_5:
    v22 = 0;
    while (2)
    {
      if (*v42 != v19)
      {
        objc_enumerationMutation(v15);
      }

      v23 = *(*(&v41 + 1) + 8 * v22);
      v24 = [v23 portType];
      v25 = v24;
      switch(*(v14 + 18))
      {
        case 2:
          if ([v24 isEqualToString:v21])
          {
            goto LABEL_20;
          }

          v24 = v25;
          v26 = v35;
          goto LABEL_14;
        case 3:
          v26 = v36;
          goto LABEL_14;
        case 7:
          if ([v24 isEqualToString:v37])
          {
            goto LABEL_20;
          }

          v24 = v25;
          v26 = v20;
LABEL_14:
          if ([v24 isEqualToString:v26])
          {
LABEL_20:
            v27 = v23;
            v17 = &OBJC_IVAR___BWStreamingFilterNode__maxLossyCompressionLevel;
            v14[7] = v27;
            goto LABEL_21;
          }

LABEL_17:
          if (v18 != ++v22)
          {
            continue;
          }

          v18 = [v15 countByEnumeratingWithState:&v41 objects:v40 count:16];
          v17 = &OBJC_IVAR___BWStreamingFilterNode__maxLossyCompressionLevel;
          if (v18)
          {
            goto LABEL_5;
          }

LABEL_21:
          if (*(v14 + v17[101]))
          {
            v39.receiver = v14;
            v39.super_class = FigCaptureVisionDataSinkPipeline;
            objc_msgSendSuper2(&v39, sel_setUpstreamOutput_, v34);
            v28 = v31[1];
            v38[0] = *v31;
            v38[1] = v28;
            if (![(FigCaptureVisionDataSinkPipeline *)v14 _buildVisionDataSinkPipeline:v32 videoDataConnectionConfiguration:v29 graph:v33 visionCaptureOutput:v34 clientAuditToken:v38 delegate:a9])
            {
              return v14;
            }

            fig_log_get_emitter();
          }

          else
          {
            fig_log_get_emitter();
            OUTLINED_FUNCTION_0();
          }

          FigDebugAssert3();

          break;
        case 0xB:
          if (![v24 isEqualToString:v20])
          {
            goto LABEL_17;
          }

          goto LABEL_20;
        default:
          goto LABEL_17;
      }

      return 0;
    }
  }

  return v14;
}

- (id)_buildVisionDataSinkPipeline:(uint64_t)a3 videoDataConnectionConfiguration:(void *)a4 graph:(uint64_t)a5 visionCaptureOutput:(_OWORD *)a6 clientAuditToken:(uint64_t)a7 delegate:
{
  if (result)
  {
    v12 = result;
    v21 = 0;
    v13 = +[BWPipelineStage pipelineStageWithName:priority:](BWPipelineStage, "pipelineStageWithName:priority:", FigCaptureBuildPipelineStageName(@"com.apple.coremedia.capture.visiondata", [a2 sourceConfiguration]), 13);
    v14 = [BWRemoteQueueSinkNode alloc];
    v15 = [v12 sinkID];
    v16 = a6[1];
    v20[0] = *a6;
    v20[1] = v16;
    v17 = [(BWRemoteQueueSinkNode *)v14 initWithMediaType:1986618469 clientAuditToken:v20 sinkID:v15 cameraInfoByPortType:0];
    [(BWNode *)v17 setName:@"Vision Data Remote Queue Sink"];
    [(BWRemoteQueueSinkNode *)v17 setDelegate:a7];
    [(BWRemoteQueueSinkNode *)v17 setDiscardsLateSampleBuffers:0];
    -[BWRemoteQueueSinkNode setClientVideoRetainedBufferCount:](v17, "setClientVideoRetainedBufferCount:", [a2 retainedBufferCount]);
    v19.receiver = v12;
    v19.super_class = FigCaptureVisionDataSinkPipeline;
    if (objc_msgSendSuper2(&v19, sel_addNode_error_, v17, &v21) & 1) != 0 && ([a4 connectOutput:a5 toInput:-[BWNode input](v17 pipelineStage:{"input"), v13}])
    {
      v18.receiver = v12;
      v18.super_class = FigCaptureVisionDataSinkPipeline;
      objc_msgSendSuper2(&v18, sel_setSinkNode_, v17);
      if ([a4 deferredNodePrepareSupported] && (objc_msgSend(objc_msgSend(a2, "sinkConfiguration"), "deferredStartEnabled") & 1) == 0)
      {
        [a4 enableDeferredPrepareForNodesNotInPathOfSinkNode:v17];
      }
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0();
      FigDebugAssert3();
    }

    result = v21;
    if (v21)
    {
      return [v21 code];
    }
  }

  return result;
}

- (uint64_t)triggerVisionDataBurst
{
  if (result)
  {
    return [*(result + 56) triggerVisionDataBurst];
  }

  return result;
}

- (uint64_t)setRuntimeUpdates:(uint64_t)result
{
  if (result)
  {
    return [*(result + 56) setRuntimeUpdates:a2];
  }

  return result;
}

- (uint64_t)setKeypointDetectionThreshold:(uint64_t)result
{
  if (result)
  {
    return [*(result + 56) setVisionDataKeypointDetectionThreshold:?];
  }

  return result;
}

@end