@interface FigCaptureVisionDataSinkPipeline
- (id)_buildVisionDataSinkPipeline:(uint64_t)pipeline videoDataConnectionConfiguration:(void *)configuration graph:(uint64_t)graph visionCaptureOutput:(_OWORD *)output clientAuditToken:(uint64_t)token delegate:;
- (uint64_t)setKeypointDetectionThreshold:(uint64_t)result;
- (uint64_t)setRuntimeUpdates:(uint64_t)result;
- (uint64_t)triggerVisionDataBurst;
- (void)dealloc;
- (void)initWithVisionDataConnectionConfiguration:(uint64_t)configuration videoDataConnectionConfiguration:(void *)connectionConfiguration graph:(uint64_t)graph name:(uint64_t)name visionCaptureOutput:(void *)output captureDevice:(_OWORD *)device clientAuditToken:(uint64_t)token delegate:;
@end

@implementation FigCaptureVisionDataSinkPipeline

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCaptureVisionDataSinkPipeline;
  [(FigCaptureRemoteQueueSinkPipeline *)&v3 dealloc];
}

- (void)initWithVisionDataConnectionConfiguration:(uint64_t)configuration videoDataConnectionConfiguration:(void *)connectionConfiguration graph:(uint64_t)graph name:(uint64_t)name visionCaptureOutput:(void *)output captureDevice:(_OWORD *)device clientAuditToken:(uint64_t)token delegate:
{
  if (!self)
  {
    return 0;
  }

  v45.receiver = self;
  v45.super_class = FigCaptureVisionDataSinkPipeline;
  v14 = objc_msgSendSuper2(&v45, sel_initWithGraph_name_sinkID_, connectionConfiguration, graph, [objc_msgSend(a2 "sinkConfiguration")]);
  if (v14)
  {
    deviceCopy = device;
    connectionConfigurationCopy = connectionConfiguration;
    nameCopy = name;
    v14[8] = [objc_msgSend(a2 "sourceConfiguration")];
    v32 = a2;
    *(v14 + 18) = [a2 underlyingDeviceType];
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    captureStreams = [output captureStreams];
    v16 = [captureStreams countByEnumeratingWithState:&v41 objects:v40 count:16];
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
        objc_enumerationMutation(captureStreams);
      }

      v23 = *(*(&v41 + 1) + 8 * v22);
      portType = [v23 portType];
      v25 = portType;
      switch(*(v14 + 18))
      {
        case 2:
          if ([portType isEqualToString:v21])
          {
            goto LABEL_20;
          }

          portType = v25;
          v26 = v35;
          goto LABEL_14;
        case 3:
          v26 = v36;
          goto LABEL_14;
        case 7:
          if ([portType isEqualToString:v37])
          {
            goto LABEL_20;
          }

          portType = v25;
          v26 = v20;
LABEL_14:
          if ([portType isEqualToString:v26])
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

          v18 = [captureStreams countByEnumeratingWithState:&v41 objects:v40 count:16];
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
            objc_msgSendSuper2(&v39, sel_setUpstreamOutput_, nameCopy);
            v28 = deviceCopy[1];
            v38[0] = *deviceCopy;
            v38[1] = v28;
            if (![(FigCaptureVisionDataSinkPipeline *)v14 _buildVisionDataSinkPipeline:v32 videoDataConnectionConfiguration:v29 graph:connectionConfigurationCopy visionCaptureOutput:nameCopy clientAuditToken:v38 delegate:token])
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
          if (![portType isEqualToString:v20])
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

- (id)_buildVisionDataSinkPipeline:(uint64_t)pipeline videoDataConnectionConfiguration:(void *)configuration graph:(uint64_t)graph visionCaptureOutput:(_OWORD *)output clientAuditToken:(uint64_t)token delegate:
{
  if (result)
  {
    v12 = result;
    v21 = 0;
    v13 = +[BWPipelineStage pipelineStageWithName:priority:](BWPipelineStage, "pipelineStageWithName:priority:", FigCaptureBuildPipelineStageName(@"com.apple.coremedia.capture.visiondata", [a2 sourceConfiguration]), 13);
    v14 = [BWRemoteQueueSinkNode alloc];
    sinkID = [v12 sinkID];
    v16 = output[1];
    v20[0] = *output;
    v20[1] = v16;
    v17 = [(BWRemoteQueueSinkNode *)v14 initWithMediaType:1986618469 clientAuditToken:v20 sinkID:sinkID cameraInfoByPortType:0];
    [(BWNode *)v17 setName:@"Vision Data Remote Queue Sink"];
    [(BWRemoteQueueSinkNode *)v17 setDelegate:token];
    [(BWRemoteQueueSinkNode *)v17 setDiscardsLateSampleBuffers:0];
    -[BWRemoteQueueSinkNode setClientVideoRetainedBufferCount:](v17, "setClientVideoRetainedBufferCount:", [a2 retainedBufferCount]);
    v19.receiver = v12;
    v19.super_class = FigCaptureVisionDataSinkPipeline;
    if (objc_msgSendSuper2(&v19, sel_addNode_error_, v17, &v21) & 1) != 0 && ([configuration connectOutput:graph toInput:-[BWNode input](v17 pipelineStage:{"input"), v13}])
    {
      v18.receiver = v12;
      v18.super_class = FigCaptureVisionDataSinkPipeline;
      objc_msgSendSuper2(&v18, sel_setSinkNode_, v17);
      if ([configuration deferredNodePrepareSupported] && (objc_msgSend(objc_msgSend(a2, "sinkConfiguration"), "deferredStartEnabled") & 1) == 0)
      {
        [configuration enableDeferredPrepareForNodesNotInPathOfSinkNode:v17];
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