@interface FigCaptureLiDARDepthPipeline
- (BWNodeOutput)depthDataSinkOutput;
- (FigCaptureLiDARDepthPipeline)initWithCaptureDevice:(id)device cameraInfoByPortType:(id)type sensorIDStringsByPortType:(id)portType timeOfFlightCameraType:(int)cameraType depthDataCaptureConnectionConfiguration:(id)configuration videoSourceCaptureOutput:(id)output pointCloudOutput:(id)cloudOutput graph:(id)self0 name:(id)self1 rgbCameraSourceID:(id)self2 errorOut:(int *)self3;
- (int)_buildLiDARDepthPipelineWithVideoSourceCaptureOutput:(id)output pointCloudOutput:(id)cloudOutput graph:(id)graph timeOfFlightCameraType:(int)type;
- (void)dealloc;
@end

@implementation FigCaptureLiDARDepthPipeline

- (FigCaptureLiDARDepthPipeline)initWithCaptureDevice:(id)device cameraInfoByPortType:(id)type sensorIDStringsByPortType:(id)portType timeOfFlightCameraType:(int)cameraType depthDataCaptureConnectionConfiguration:(id)configuration videoSourceCaptureOutput:(id)output pointCloudOutput:(id)cloudOutput graph:(id)self0 name:(id)self1 rgbCameraSourceID:(id)self2 errorOut:(int *)self3
{
  v15 = *&cameraType;
  v22.receiver = self;
  v22.super_class = FigCaptureLiDARDepthPipeline;
  v19 = [(FigCapturePipeline *)&v22 initWithGraph:graph name:name];
  if (v19 && (v19->_captureDevice = device, v19->_cameraInfoByPortType = type, v19->_sensorIDStringsByPortType = portType, v19->_rgbCameraHorizontalSensorBinningFactor = [objc_msgSend(objc_msgSend(configuration "sourceConfiguration")], v19->_rgbCameraVerticalSensorBinningFactor = objc_msgSend(objc_msgSend(objc_msgSend(configuration, "sourceConfiguration"), "requiredFormat"), "verticalSensorBinningFactor"), v19->_depthPixelFormat = objc_msgSend(objc_msgSend(objc_msgSend(configuration, "sourceConfiguration"), "depthDataFormat"), "format"), v19->_depthDataFilteringEnabled = objc_msgSend(objc_msgSend(configuration, "depthDataSinkConfiguration"), "filteringEnabled"), v19->_depthOutputDimensions = objc_msgSend(objc_msgSend(objc_msgSend(configuration, "sourceConfiguration"), "depthDataFormat"), "dimensions"), v19->_depthDataCaptureConnectionConfiguration = configuration, v19->_rgbCameraSourceID = d, (v20 = -[FigCaptureLiDARDepthPipeline _buildLiDARDepthPipelineWithVideoSourceCaptureOutput:pointCloudOutput:graph:timeOfFlightCameraType:](v19, "_buildLiDARDepthPipelineWithVideoSourceCaptureOutput:pointCloudOutput:graph:timeOfFlightCameraType:", output, cloudOutput, graph, v15)) != 0))
  {
    [FigCaptureLiDARDepthPipeline initWithCaptureDevice:v20 cameraInfoByPortType:out sensorIDStringsByPortType:v19 timeOfFlightCameraType:? depthDataCaptureConnectionConfiguration:? videoSourceCaptureOutput:? pointCloudOutput:? graph:? name:? rgbCameraSourceID:? errorOut:?];
    return 0;
  }

  else
  {
    *out = 0;
  }

  return v19;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCaptureLiDARDepthPipeline;
  [(FigCapturePipeline *)&v3 dealloc];
}

- (BWNodeOutput)depthDataSinkOutput
{
  if (self->_depthRotatorNode)
  {
    depthRotatorNode = self->_depthRotatorNode;
  }

  else
  {
    depthRotatorNode = self->_pointCloudDensificationNode;
  }

  return [depthRotatorNode output];
}

- (int)_buildLiDARDepthPipelineWithVideoSourceCaptureOutput:(id)output pointCloudOutput:(id)cloudOutput graph:(id)graph timeOfFlightCameraType:(int)type
{
  v29 = 0;
  v11 = [[BWVideoPointCloudSynchronizerNode alloc] initWithCaptureDevice:self->_captureDevice timeOfFlightCameraType:*&type];
  self->_synchronizerNode = v11;
  if ([(FigCapturePipeline *)self addNode:v11 error:&v29])
  {
    if ([graph connectOutput:output toInput:-[BWVideoPointCloudSynchronizerNode imageInput](self->_synchronizerNode pipelineStage:{"imageInput"), 0}])
    {
      if ([graph connectOutput:cloudOutput toInput:-[BWVideoPointCloudSynchronizerNode pointCloudInput](self->_synchronizerNode pipelineStage:{"pointCloudInput"), 0}])
      {
        v12 = *off_1E798A0C0;
        v13 = [(NSDictionary *)self->_sensorIDStringsByPortType objectForKeyedSubscript:*off_1E798A0C0];
        if (v13)
        {
          v14 = v13;
          v15 = [(NSDictionary *)self->_cameraInfoByPortType objectForKeyedSubscript:v12];
          if (v15)
          {
            v16 = v15;
            v17 = *off_1E798A0C8;
            v18 = [(NSDictionary *)self->_sensorIDStringsByPortType objectForKeyedSubscript:*off_1E798A0C8];
            if (v18)
            {
              v19 = v18;
              graphCopy = graph;
              v20 = [(NSDictionary *)self->_cameraInfoByPortType objectForKeyedSubscript:v17];
              typeCopy = type;
              v21 = +[FigCaptureCameraParameters sharedInstance];
              LODWORD(v26) = typeCopy;
              self->_pointCloudDensificationNode = [[BWPointCloudDensificationNode alloc] initWithConfiguration:[[BWPointCloudDensificationNodeConfiguration alloc] initWithRGBSensorConfiguration:[[BWSensorConfiguration alloc] initWithPortType:v12 sensorIDString:v14 sensorIDDictionary:[(FigCaptureCameraParameters *)v21 sensorIDDictionaryForPortType:v12 sensorIDString:v14] cameraInfo:v16] timeOfFlightSensorConfiguration:[[BWSensorConfiguration alloc] initWithPortType:v17 sensorIDString:v19 sensorIDDictionary:[(FigCaptureCameraParameters *)v21 sensorIDDictionaryForPortType:v17 sensorIDString:v19] cameraInfo:v20] rgbCameraHorizontalSensorBinningFactor:self->_rgbCameraHorizontalSensorBinningFactor rgbCameraVerticalSensorBinningFactor:self->_rgbCameraVerticalSensorBinningFactor filteringEnabled:self->_depthDataFilteringEnabled depthPixelFormat:self->_depthPixelFormat depthOutputDimensions:*&self->_depthOutputDimensions timeOfFlightCameraType:v26]];
              v22 = [BWPipelineStage pipelineStageWithName:@"com.apple.coremedia.capture.pointcloud.densification" priority:13];
              if ([(FigCapturePipeline *)self addNode:self->_pointCloudDensificationNode error:&v29])
              {
                if ([graphCopy connectOutput:-[BWNode output](self->_synchronizerNode toInput:"output") pipelineStage:{-[BWNode input](self->_pointCloudDensificationNode, "input"), v22}])
                {
                  v23 = FigCaptureRotationDegreesWithMirroring([(FigVideoCaptureConnectionConfiguration *)self->_depthDataCaptureConnectionConfiguration rotationDegrees], [(FigVideoCaptureConnectionConfiguration *)self->_depthDataCaptureConnectionConfiguration mirroringEnabled]);
                  if (v23)
                  {
                    v24 = [[BWDepthRotatorNode alloc] initWithRotationDegrees:v23 separateDepthComponentsEnabled:0 depthProvidedAsAttachedMedia:1];
                    self->_depthRotatorNode = v24;
                    if ([(FigCapturePipeline *)self addNode:v24 error:&v29])
                    {
                      [graphCopy connectOutput:-[BWNode output](self->_pointCloudDensificationNode toInput:"output") pipelineStage:{-[BWNode input](self->_depthRotatorNode, "input"), v22}];
                    }

                    else
                    {
                      [FigCaptureLiDARDepthPipeline _buildLiDARDepthPipelineWithVideoSourceCaptureOutput:pointCloudOutput:graph:timeOfFlightCameraType:];
                    }
                  }
                }
              }

              else
              {
                [FigCaptureLiDARDepthPipeline _buildLiDARDepthPipelineWithVideoSourceCaptureOutput:pointCloudOutput:graph:timeOfFlightCameraType:];
              }

              goto LABEL_12;
            }

            [FigCaptureLiDARDepthPipeline _buildLiDARDepthPipelineWithVideoSourceCaptureOutput:pointCloudOutput:graph:timeOfFlightCameraType:];
          }

          else
          {
            [FigCaptureLiDARDepthPipeline _buildLiDARDepthPipelineWithVideoSourceCaptureOutput:pointCloudOutput:graph:timeOfFlightCameraType:];
          }
        }

        else
        {
          [FigCaptureLiDARDepthPipeline _buildLiDARDepthPipelineWithVideoSourceCaptureOutput:pointCloudOutput:graph:timeOfFlightCameraType:];
        }

        return -12780;
      }

      [FigCaptureLiDARDepthPipeline _buildLiDARDepthPipelineWithVideoSourceCaptureOutput:pointCloudOutput:graph:timeOfFlightCameraType:];
    }

    else
    {
      [FigCaptureLiDARDepthPipeline _buildLiDARDepthPipelineWithVideoSourceCaptureOutput:pointCloudOutput:graph:timeOfFlightCameraType:];
    }
  }

  else
  {
    [FigCaptureLiDARDepthPipeline _buildLiDARDepthPipelineWithVideoSourceCaptureOutput:pointCloudOutput:graph:timeOfFlightCameraType:];
  }

LABEL_12:
  result = v29;
  if (v29)
  {
    return [v29 code];
  }

  return result;
}

- (void)initWithCaptureDevice:(void *)a3 cameraInfoByPortType:sensorIDStringsByPortType:timeOfFlightCameraType:depthDataCaptureConnectionConfiguration:videoSourceCaptureOutput:pointCloudOutput:graph:name:rgbCameraSourceID:errorOut:.cold.1(int a1, _DWORD *a2, void *a3)
{
  fig_log_get_emitter();
  FigDebugAssert3();
  *a2 = a1;
}

- (uint64_t)_buildLiDARDepthPipelineWithVideoSourceCaptureOutput:pointCloudOutput:graph:timeOfFlightCameraType:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildLiDARDepthPipelineWithVideoSourceCaptureOutput:pointCloudOutput:graph:timeOfFlightCameraType:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildLiDARDepthPipelineWithVideoSourceCaptureOutput:pointCloudOutput:graph:timeOfFlightCameraType:.cold.3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildLiDARDepthPipelineWithVideoSourceCaptureOutput:pointCloudOutput:graph:timeOfFlightCameraType:.cold.4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildLiDARDepthPipelineWithVideoSourceCaptureOutput:pointCloudOutput:graph:timeOfFlightCameraType:.cold.5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildLiDARDepthPipelineWithVideoSourceCaptureOutput:pointCloudOutput:graph:timeOfFlightCameraType:.cold.6()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildLiDARDepthPipelineWithVideoSourceCaptureOutput:pointCloudOutput:graph:timeOfFlightCameraType:.cold.7()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildLiDARDepthPipelineWithVideoSourceCaptureOutput:pointCloudOutput:graph:timeOfFlightCameraType:.cold.8()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

@end