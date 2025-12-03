@interface FigCaptureCameraCalibrationDataSinkPipeline
- (id)_buildCameraCalibrationDataSinkPipelineWithConfiguration:(uint64_t)configuration sourceOutput:(void *)output graph:(uint64_t)graph cameraInfoByPortType:(_OWORD *)type clientAuditToken:(uint64_t)token delegate:;
- (void)dealloc;
- (void)initWithConfiguration:(uint64_t)configuration sourceOutput:(void *)output graph:(uint64_t)graph name:(uint64_t)name cameraInfoByPortType:(_OWORD *)type clientAuditToken:(uint64_t)token delegate:;
@end

@implementation FigCaptureCameraCalibrationDataSinkPipeline

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCaptureCameraCalibrationDataSinkPipeline;
  [(FigCaptureRemoteQueueSinkPipeline *)&v3 dealloc];
}

- (void)initWithConfiguration:(uint64_t)configuration sourceOutput:(void *)output graph:(uint64_t)graph name:(uint64_t)name cameraInfoByPortType:(_OWORD *)type clientAuditToken:(uint64_t)token delegate:
{
  if (!self)
  {
    return 0;
  }

  v18.receiver = self;
  v18.super_class = FigCaptureCameraCalibrationDataSinkPipeline;
  v14 = objc_msgSendSuper2(&v18, sel_initWithGraph_name_sinkID_, output, graph, [objc_msgSend(a2 "sinkConfiguration")]);
  if (v14)
  {
    v14[7] = [objc_msgSend(a2 "sourceConfiguration")];
    v16 = type[1];
    v17[0] = *type;
    v17[1] = v16;
    if ([(FigCaptureCameraCalibrationDataSinkPipeline *)v14 _buildCameraCalibrationDataSinkPipelineWithConfiguration:a2 sourceOutput:configuration graph:output cameraInfoByPortType:name clientAuditToken:v17 delegate:token])
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_6();
      FigDebugAssert3();

      return 0;
    }
  }

  return v14;
}

- (id)_buildCameraCalibrationDataSinkPipelineWithConfiguration:(uint64_t)configuration sourceOutput:(void *)output graph:(uint64_t)graph cameraInfoByPortType:(_OWORD *)type clientAuditToken:(uint64_t)token delegate:
{
  if (result)
  {
    v12 = result;
    v24 = 0;
    v23.receiver = result;
    v23.super_class = FigCaptureCameraCalibrationDataSinkPipeline;
    objc_msgSendSuper2(&v23, sel_setUpstreamOutput_);
    v13 = [[BWStreamingCameraCalibrationDataNode alloc] initWithCameraInfoByPortType:graph];
    [(BWNode *)v13 setName:@"Streaming Camera Calibration Data Node"];
    sourceConfiguration = [a2 sourceConfiguration];
    [objc_msgSend(sourceConfiguration "requiredFormat")];
    [OUTLINED_FUNCTION_15() setHorizontalSensorBinningFactor:?];
    [objc_msgSend(sourceConfiguration "requiredFormat")];
    [OUTLINED_FUNCTION_15() setVerticalSensorBinningFactor:?];
    FigCaptureRotationDegreesWithMirroring([a2 rotationDegrees], objc_msgSend(a2, "mirroringEnabled"));
    [OUTLINED_FUNCTION_15() setRotationDegrees:?];
    [a2 mirroringEnabled];
    [OUTLINED_FUNCTION_15() setMirroringEnabled:?];
    v22.receiver = v12;
    v22.super_class = FigCaptureCameraCalibrationDataSinkPipeline;
    if (objc_msgSendSuper2(&v22, sel_addNode_error_, v13, &v24) & 1) != 0 && (OUTLINED_FUNCTION_2_36([(BWNode *)v13 input]))
    {
      [(BWNode *)v13 output];
      v15 = [BWRemoteQueueSinkNode alloc];
      sinkID = [v12 sinkID];
      v17 = type[1];
      v21[0] = *type;
      v21[1] = v17;
      v18 = [(BWRemoteQueueSinkNode *)v15 initWithMediaType:1667326820 clientAuditToken:v21 sinkID:sinkID cameraInfoByPortType:0];
      [(BWNode *)v18 setName:@"Camera Calibration Data Remote Queue Sink"];
      [(BWRemoteQueueSinkNode *)v18 setDelegate:token];
      -[BWRemoteQueueSinkNode setDiscardsLateSampleBuffers:](v18, "setDiscardsLateSampleBuffers:", [objc_msgSend(a2 "cameraCalibrationDataSinkConfiguration")]);
      v20.receiver = v12;
      v20.super_class = FigCaptureCameraCalibrationDataSinkPipeline;
      if (objc_msgSendSuper2(&v20, sel_addNode_error_, v18, &v24))
      {
        v19.receiver = v12;
        v19.super_class = FigCaptureCameraCalibrationDataSinkPipeline;
        objc_msgSendSuper2(&v19, sel_setSinkNode_, v18);
        if (OUTLINED_FUNCTION_2_36([(BWNode *)v18 input]))
        {
          if ([output deferredNodePrepareSupported] && (objc_msgSend(objc_msgSend(a2, "sinkConfiguration"), "deferredStartEnabled") & 1) == 0)
          {
            [output enableDeferredPrepareForNodesNotInPathOfSinkNode:v18];
          }

          goto LABEL_9;
        }

        fig_log_get_emitter();
        OUTLINED_FUNCTION_1_6();
      }

      else
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_1_6();
      }
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_6();
    }

    FigDebugAssert3();
LABEL_9:
    result = v24;
    if (v24)
    {
      return [v24 code];
    }
  }

  return result;
}

@end