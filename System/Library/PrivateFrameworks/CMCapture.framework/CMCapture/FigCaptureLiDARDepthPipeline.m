@interface FigCaptureLiDARDepthPipeline
- (BWNodeOutput)depthDataSinkOutput;
- (FigCaptureLiDARDepthPipeline)initWithCaptureDevice:(id)a3 cameraInfoByPortType:(id)a4 sensorIDStringsByPortType:(id)a5 timeOfFlightCameraType:(int)a6 depthDataCaptureConnectionConfiguration:(id)a7 videoSourceCaptureOutput:(id)a8 pointCloudOutput:(id)a9 graph:(id)a10 name:(id)a11 rgbCameraSourceID:(id)a12 errorOut:(int *)a13;
- (int)_buildLiDARDepthPipelineWithVideoSourceCaptureOutput:(id)a3 pointCloudOutput:(id)a4 graph:(id)a5 timeOfFlightCameraType:(int)a6;
- (void)dealloc;
@end

@implementation FigCaptureLiDARDepthPipeline

- (FigCaptureLiDARDepthPipeline)initWithCaptureDevice:(id)a3 cameraInfoByPortType:(id)a4 sensorIDStringsByPortType:(id)a5 timeOfFlightCameraType:(int)a6 depthDataCaptureConnectionConfiguration:(id)a7 videoSourceCaptureOutput:(id)a8 pointCloudOutput:(id)a9 graph:(id)a10 name:(id)a11 rgbCameraSourceID:(id)a12 errorOut:(int *)a13
{
  v15 = *&a6;
  v22.receiver = self;
  v22.super_class = FigCaptureLiDARDepthPipeline;
  v19 = [(FigCapturePipeline *)&v22 initWithGraph:a10 name:a11];
  if (v19 && (v19->_captureDevice = a3, v19->_cameraInfoByPortType = a4, v19->_sensorIDStringsByPortType = a5, v19->_rgbCameraHorizontalSensorBinningFactor = [objc_msgSend(objc_msgSend(a7 "sourceConfiguration")], v19->_rgbCameraVerticalSensorBinningFactor = objc_msgSend(objc_msgSend(objc_msgSend(a7, "sourceConfiguration"), "requiredFormat"), "verticalSensorBinningFactor"), v19->_depthPixelFormat = objc_msgSend(objc_msgSend(objc_msgSend(a7, "sourceConfiguration"), "depthDataFormat"), "format"), v19->_depthDataFilteringEnabled = objc_msgSend(objc_msgSend(a7, "depthDataSinkConfiguration"), "filteringEnabled"), v19->_depthOutputDimensions = objc_msgSend(objc_msgSend(objc_msgSend(a7, "sourceConfiguration"), "depthDataFormat"), "dimensions"), v19->_depthDataCaptureConnectionConfiguration = a7, v19->_rgbCameraSourceID = a12, (v20 = -[FigCaptureLiDARDepthPipeline _buildLiDARDepthPipelineWithVideoSourceCaptureOutput:pointCloudOutput:graph:timeOfFlightCameraType:](v19, "_buildLiDARDepthPipelineWithVideoSourceCaptureOutput:pointCloudOutput:graph:timeOfFlightCameraType:", a8, a9, a10, v15)) != 0))
  {
    [FigCaptureLiDARDepthPipeline initWithCaptureDevice:v20 cameraInfoByPortType:a13 sensorIDStringsByPortType:v19 timeOfFlightCameraType:? depthDataCaptureConnectionConfiguration:? videoSourceCaptureOutput:? pointCloudOutput:? graph:? name:? rgbCameraSourceID:? errorOut:?];
    return 0;
  }

  else
  {
    *a13 = 0;
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

- (int)_buildLiDARDepthPipelineWithVideoSourceCaptureOutput:(id)a3 pointCloudOutput:(id)a4 graph:(id)a5 timeOfFlightCameraType:(int)a6
{
  v29 = 0;
  v11 = [[BWVideoPointCloudSynchronizerNode alloc] initWithCaptureDevice:self->_captureDevice timeOfFlightCameraType:*&a6];
  self->_synchronizerNode = v11;
  if ([(FigCapturePipeline *)self addNode:v11 error:&v29])
  {
    if ([a5 connectOutput:a3 toInput:-[BWVideoPointCloudSynchronizerNode imageInput](self->_synchronizerNode pipelineStage:{"imageInput"), 0}])
    {
      if ([a5 connectOutput:a4 toInput:-[BWVideoPointCloudSynchronizerNode pointCloudInput](self->_synchronizerNode pipelineStage:{"pointCloudInput"), 0}])
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
              v27 = a5;
              v20 = [(NSDictionary *)self->_cameraInfoByPortType objectForKeyedSubscript:v17];
              v28 = a6;
              v21 = +[FigCaptureCameraParameters sharedInstance];
              LODWORD(v26) = v28;
              self->_pointCloudDensificationNode = [[BWPointCloudDensificationNode alloc] initWithConfiguration:[[BWPointCloudDensificationNodeConfiguration alloc] initWithRGBSensorConfiguration:[[BWSensorConfiguration alloc] initWithPortType:v12 sensorIDString:v14 sensorIDDictionary:[(FigCaptureCameraParameters *)v21 sensorIDDictionaryForPortType:v12 sensorIDString:v14] cameraInfo:v16] timeOfFlightSensorConfiguration:[[BWSensorConfiguration alloc] initWithPortType:v17 sensorIDString:v19 sensorIDDictionary:[(FigCaptureCameraParameters *)v21 sensorIDDictionaryForPortType:v17 sensorIDString:v19] cameraInfo:v20] rgbCameraHorizontalSensorBinningFactor:self->_rgbCameraHorizontalSensorBinningFactor rgbCameraVerticalSensorBinningFactor:self->_rgbCameraVerticalSensorBinningFactor filteringEnabled:self->_depthDataFilteringEnabled depthPixelFormat:self->_depthPixelFormat depthOutputDimensions:*&self->_depthOutputDimensions timeOfFlightCameraType:v26]];
              v22 = [BWPipelineStage pipelineStageWithName:@"com.apple.coremedia.capture.pointcloud.densification" priority:13];
              if ([(FigCapturePipeline *)self addNode:self->_pointCloudDensificationNode error:&v29])
              {
                if ([v27 connectOutput:-[BWNode output](self->_synchronizerNode toInput:"output") pipelineStage:{-[BWNode input](self->_pointCloudDensificationNode, "input"), v22}])
                {
                  v23 = FigCaptureRotationDegreesWithMirroring([(FigVideoCaptureConnectionConfiguration *)self->_depthDataCaptureConnectionConfiguration rotationDegrees], [(FigVideoCaptureConnectionConfiguration *)self->_depthDataCaptureConnectionConfiguration mirroringEnabled]);
                  if (v23)
                  {
                    v24 = [[BWDepthRotatorNode alloc] initWithRotationDegrees:v23 separateDepthComponentsEnabled:0 depthProvidedAsAttachedMedia:1];
                    self->_depthRotatorNode = v24;
                    if ([(FigCapturePipeline *)self addNode:v24 error:&v29])
                    {
                      [v27 connectOutput:-[BWNode output](self->_pointCloudDensificationNode toInput:"output") pipelineStage:{-[BWNode input](self->_depthRotatorNode, "input"), v22}];
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