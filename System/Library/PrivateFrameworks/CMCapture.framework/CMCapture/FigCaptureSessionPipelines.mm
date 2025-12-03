@interface FigCaptureSessionPipelines
- (FigCaptureCameraSourcePipeline)firstColorCameraSourcePipeline;
- (id)audioDataSinkPipelineWithSinkID:(id)d;
- (id)audioFileSinkPipelineWithFileSinkNode:(id)node;
- (id)audioFileSinkPipelineWithSinkID:(id)d;
- (id)cameraCalibrationDataSinkPipelineWithSinkID:(id)d;
- (id)cameraSourcePipelineCompatibleWithCameraConfiguration:(id)configuration;
- (id)cameraSourcePipelineWithSourceID:(id)d;
- (id)cinematographyPipelineWithSourceID:(id)d;
- (id)depthDataSinkPipelineWithSinkID:(id)d;
- (id)depthDataSinkPipelineWithSourceID:(id)d sourceDeviceType:(int)type;
- (id)lidarDepthPipelineWithRGBCameraSourceID:(id)d;
- (id)metadataSinkPipelineWithSinkID:(id)d;
- (id)metadataSinkPipelineWithSourceID:(id)d sourceDeviceType:(int)type;
- (id)movieFileSinkPipelineWithFileCoordinatorNode:(id)node;
- (id)movieFileSinkPipelineWithFileSinkNode:(id)node;
- (id)movieFileSinkPipelineWithIrisStagingNode:(id)node;
- (id)movieFileSinkPipelineWithSinkID:(id)d;
- (id)movieFileSinkPipelineWithSourceID:(id)d sourceDeviceType:(int)type;
- (id)movieFileSinkPipelineWithVideoConnectionID:(id)d;
- (id)pointCloudDataSinkPipelineWithSinkID:(id)d;
- (id)previewSinkPipelineWithSinkID:(id)d;
- (id)previewSinkPipelineWithSourceID:(id)d sourceDeviceType:(int)type;
- (id)stillImageSinkPipelineSessionStorageWithSinkID:(id)d;
- (id)stillImageSinkPipelineSessionStorageWithStillImageCoordinator:(id)coordinator;
- (id)videoDataSinkPipelineForMetadataWithSourceID:(id)d sourceDeviceType:(int)type;
- (id)videoDataSinkPipelineWithSinkID:(id)d;
- (id)videoDataSinkPipelinesWithSourceID:(id)d sourceDeviceType:(int)type;
- (id)videoThumbnailSinkPipelineWithSinkID:(id)d;
- (id)visionDataSinkPipelineWithSinkID:(id)d;
- (void)addAudioDataSinkPipeline:(id)pipeline;
- (void)addAudioFileSinkPipeline:(id)pipeline;
- (void)addCameraCalibrationDataSinkPipeline:(id)pipeline;
- (void)addCameraSourcePipeline:(id)pipeline;
- (void)addCameraSourcePipeline:(id)pipeline sessionID:(id)d;
- (void)addCinematographyPipeline:(id)pipeline;
- (void)addDepthDataSinkPipeline:(id)pipeline;
- (void)addLiDARDepthPipeline:(id)pipeline;
- (void)addMetadataSinkPipeline:(id)pipeline;
- (void)addMetadataSinkPipeline:(id)pipeline sessionID:(id)d;
- (void)addMetadataSourcePipeline:(id)pipeline;
- (void)addMovieFileSinkPipeline:(id)pipeline;
- (void)addPointCloudDataSinkPipeline:(id)pipeline;
- (void)addPreviewSinkPipeline:(id)pipeline;
- (void)addStillImageSinkPipelineSessionStorage:(id)storage;
- (void)addVideoDataSinkPipeline:(id)pipeline;
- (void)addVideoThumbnailSinkPipeline:(id)pipeline;
- (void)addVisionDataSinkPipeline:(id)pipeline;
- (void)dealloc;
- (void)removeCameraSourcePipelineWithSessionID:(id)d;
- (void)removeMetadataSinkPipelineWithSessionID:(id)d;
- (void)updateClientAuditToken:(id *)token;
@end

@implementation FigCaptureSessionPipelines

- (FigCaptureCameraSourcePipeline)firstColorCameraSourcePipeline
{
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  cameraSourcePipelines = self->_cameraSourcePipelines;
  v3 = [(NSMutableArray *)cameraSourcePipelines countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *v13;
LABEL_3:
  v6 = 0;
  while (1)
  {
    if (*v13 != v5)
    {
      objc_enumerationMutation(cameraSourcePipelines);
    }

    v7 = *(*(&v12 + 1) + 8 * v6);
    deviceType = [-[FigCaptureCameraSourcePipeline captureDevice](v7) deviceType];
    v9 = deviceType > 0x14 || ((1 << deviceType) & 0x100420) == 0;
    if (v9 && deviceType - 21 < 0xFFFFFFFC)
    {
      return v7;
    }

    if (v4 == ++v6)
    {
      v4 = [(NSMutableArray *)cameraSourcePipelines countByEnumeratingWithState:&v12 objects:v11 count:16];
      if (v4)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCaptureSessionPipelines;
  [(FigCaptureSessionPipelines *)&v3 dealloc];
}

- (void)addCameraSourcePipeline:(id)pipeline
{
  cameraSourcePipelines = self->_cameraSourcePipelines;
  if (!cameraSourcePipelines)
  {
    cameraSourcePipelines = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    self->_cameraSourcePipelines = cameraSourcePipelines;
  }

  [(NSMutableArray *)cameraSourcePipelines addObject:pipeline];
}

- (id)cameraSourcePipelineWithSourceID:(id)d
{
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  cameraSourcePipelines = self->_cameraSourcePipelines;
  v5 = [(NSMutableArray *)cameraSourcePipelines countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *v13;
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (*v13 != v7)
    {
      objc_enumerationMutation(cameraSourcePipelines);
    }

    v9 = *(*(&v12 + 1) + 8 * v8);
    if ([objc_msgSend(v9 "sourceID")])
    {
      return v9;
    }

    if (v6 == ++v8)
    {
      v6 = [(NSMutableArray *)cameraSourcePipelines countByEnumeratingWithState:&v12 objects:v11 count:16];
      if (v6)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (id)cameraSourcePipelineCompatibleWithCameraConfiguration:(id)configuration
{
  sourceDeviceType = [configuration sourceDeviceType];
  sourcePosition = [configuration sourcePosition];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  cameraSourcePipelines = self->_cameraSourcePipelines;
  v8 = [(NSMutableArray *)cameraSourcePipelines countByEnumeratingWithState:&v16 objects:v15 count:16];
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = *v17;
LABEL_3:
  v11 = 0;
  while (1)
  {
    if (*v17 != v10)
    {
      objc_enumerationMutation(cameraSourcePipelines);
    }

    v12 = *(*(&v16 + 1) + 8 * v11);
    if ([-[FigCaptureCameraSourcePipeline captureDevice](v12) position] == sourcePosition)
    {
      deviceType = [-[FigCaptureCameraSourcePipeline captureDevice](v12) deviceType];
      if (FigCaptureSourceDeviceTypeIsSubsetOfDeviceType(sourceDeviceType, deviceType, sourcePosition))
      {
        return v12;
      }
    }

    if (v9 == ++v11)
    {
      v9 = [(NSMutableArray *)cameraSourcePipelines countByEnumeratingWithState:&v16 objects:v15 count:16];
      if (v9)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (void)addCameraSourcePipeline:(id)pipeline sessionID:(id)d
{
  cameraSourcePipelinesBySessionID = self->_cameraSourcePipelinesBySessionID;
  if (!cameraSourcePipelinesBySessionID)
  {
    cameraSourcePipelinesBySessionID = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
    self->_cameraSourcePipelinesBySessionID = cameraSourcePipelinesBySessionID;
  }

  [(NSMutableDictionary *)cameraSourcePipelinesBySessionID setObject:pipeline forKeyedSubscript:d];
}

- (void)removeCameraSourcePipelineWithSessionID:(id)d
{
  [(NSMutableDictionary *)self->_cameraSourcePipelinesBySessionID setObject:0 forKeyedSubscript:d];
  if (![(NSMutableDictionary *)self->_cameraSourcePipelinesBySessionID count])
  {

    self->_cameraSourcePipelinesBySessionID = 0;
  }
}

- (void)addMetadataSourcePipeline:(id)pipeline
{
  metadataSourcePipelines = self->_metadataSourcePipelines;
  if (!metadataSourcePipelines)
  {
    metadataSourcePipelines = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    self->_metadataSourcePipelines = metadataSourcePipelines;
  }

  [(NSMutableArray *)metadataSourcePipelines addObject:pipeline];
}

- (void)addPreviewSinkPipeline:(id)pipeline
{
  previewSinkPipelines = self->_previewSinkPipelines;
  if (!previewSinkPipelines)
  {
    previewSinkPipelines = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    self->_previewSinkPipelines = previewSinkPipelines;
  }

  [(NSMutableArray *)previewSinkPipelines addObject:pipeline];
}

- (id)previewSinkPipelineWithSinkID:(id)d
{
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  previewSinkPipelines = self->_previewSinkPipelines;
  v5 = [(NSMutableArray *)previewSinkPipelines countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *v13;
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (*v13 != v7)
    {
      objc_enumerationMutation(previewSinkPipelines);
    }

    v9 = *(*(&v12 + 1) + 8 * v8);
    if ([objc_msgSend(v9 "sinkID")])
    {
      return v9;
    }

    if (v6 == ++v8)
    {
      v6 = [(NSMutableArray *)previewSinkPipelines countByEnumeratingWithState:&v12 objects:v11 count:16];
      if (v6)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (id)previewSinkPipelineWithSourceID:(id)d sourceDeviceType:(int)type
{
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  previewSinkPipelines = self->_previewSinkPipelines;
  v7 = [(NSMutableArray *)previewSinkPipelines countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = *v15;
LABEL_3:
  v10 = 0;
  while (1)
  {
    if (*v15 != v9)
    {
      objc_enumerationMutation(previewSinkPipelines);
    }

    v11 = *(*(&v14 + 1) + 8 * v10);
    if ([v11 sourceDeviceType] == type && (objc_msgSend(objc_msgSend(v11, "sourceID"), "isEqualToString:", d) & 1) != 0)
    {
      return v11;
    }

    if (v8 == ++v10)
    {
      v8 = [(NSMutableArray *)previewSinkPipelines countByEnumeratingWithState:&v14 objects:v13 count:16];
      if (v8)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (void)addVideoDataSinkPipeline:(id)pipeline
{
  videoDataSinkPipelines = self->_videoDataSinkPipelines;
  if (!videoDataSinkPipelines)
  {
    videoDataSinkPipelines = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    self->_videoDataSinkPipelines = videoDataSinkPipelines;
  }

  [(NSMutableArray *)videoDataSinkPipelines addObject:pipeline];
}

- (id)videoDataSinkPipelineWithSinkID:(id)d
{
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  videoDataSinkPipelines = self->_videoDataSinkPipelines;
  v5 = [(NSMutableArray *)videoDataSinkPipelines countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *v13;
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (*v13 != v7)
    {
      objc_enumerationMutation(videoDataSinkPipelines);
    }

    v9 = *(*(&v12 + 1) + 8 * v8);
    if ([objc_msgSend(v9 "sinkID")])
    {
      return v9;
    }

    if (v6 == ++v8)
    {
      v6 = [(NSMutableArray *)videoDataSinkPipelines countByEnumeratingWithState:&v12 objects:v11 count:16];
      if (v6)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (id)videoDataSinkPipelineForMetadataWithSourceID:(id)d sourceDeviceType:(int)type
{
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  videoDataSinkPipelines = self->_videoDataSinkPipelines;
  v7 = [(NSMutableArray *)videoDataSinkPipelines countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = *v15;
LABEL_3:
  v10 = 0;
  while (1)
  {
    if (*v15 != v9)
    {
      objc_enumerationMutation(videoDataSinkPipelines);
    }

    v11 = *(*(&v14 + 1) + 8 * v10);
    if (-[FigCaptureVideoDataSinkPipeline sourceDeviceType](v11) == type && [-[FigCaptureVideoDataSinkPipeline sourceID](v11) isEqualToString:d] && (-[FigCaptureVideoDataSinkPipeline faceTrackingVideoCaptureOutput](v11) || -[FigCaptureVideoDataSinkPipeline offlineVISMotionDataCaptureOutput](v11)))
    {
      return v11;
    }

    if (v8 == ++v10)
    {
      v8 = [(NSMutableArray *)videoDataSinkPipelines countByEnumeratingWithState:&v14 objects:v13 count:16];
      if (v8)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (id)videoDataSinkPipelinesWithSourceID:(id)d sourceDeviceType:(int)type
{
  array = [MEMORY[0x1E695DF70] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  videoDataSinkPipelines = self->_videoDataSinkPipelines;
  v9 = [(NSMutableArray *)videoDataSinkPipelines countByEnumeratingWithState:&v16 objects:v15 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(videoDataSinkPipelines);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        if (-[FigCaptureVideoDataSinkPipeline sourceDeviceType](v13) == type && [-[FigCaptureVideoDataSinkPipeline sourceID](v13) isEqualToString:d])
        {
          [array addObject:v13];
        }
      }

      v10 = [(NSMutableArray *)videoDataSinkPipelines countByEnumeratingWithState:&v16 objects:v15 count:16];
    }

    while (v10);
  }

  return array;
}

- (void)addMovieFileSinkPipeline:(id)pipeline
{
  movieFileSinkPipelines = self->_movieFileSinkPipelines;
  if (!movieFileSinkPipelines)
  {
    movieFileSinkPipelines = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    self->_movieFileSinkPipelines = movieFileSinkPipelines;
  }

  [(NSMutableArray *)movieFileSinkPipelines addObject:pipeline];
}

- (id)movieFileSinkPipelineWithSinkID:(id)d
{
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  movieFileSinkPipelines = self->_movieFileSinkPipelines;
  v5 = [(NSMutableArray *)movieFileSinkPipelines countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *v13;
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (*v13 != v7)
    {
      objc_enumerationMutation(movieFileSinkPipelines);
    }

    v9 = *(*(&v12 + 1) + 8 * v8);
    if ([objc_msgSend(v9 "sinkID")])
    {
      return v9;
    }

    if (v6 == ++v8)
    {
      v6 = [(NSMutableArray *)movieFileSinkPipelines countByEnumeratingWithState:&v12 objects:v11 count:16];
      if (v6)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (id)movieFileSinkPipelineWithSourceID:(id)d sourceDeviceType:(int)type
{
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  movieFileSinkPipelines = self->_movieFileSinkPipelines;
  v7 = [(NSMutableArray *)movieFileSinkPipelines countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = *v15;
LABEL_3:
  v10 = 0;
  while (1)
  {
    if (*v15 != v9)
    {
      objc_enumerationMutation(movieFileSinkPipelines);
    }

    v11 = *(*(&v14 + 1) + 8 * v10);
    if (-[FigCaptureMovieFileSinkPipeline videoSourceDeviceType](v11) == type && ([-[FigCaptureMovieFileSinkPipeline videoSourceID](v11) isEqualToString:d] & 1) != 0)
    {
      return v11;
    }

    if (v8 == ++v10)
    {
      v8 = [(NSMutableArray *)movieFileSinkPipelines countByEnumeratingWithState:&v14 objects:v13 count:16];
      if (v8)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (id)movieFileSinkPipelineWithFileSinkNode:(id)node
{
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  movieFileSinkPipelines = self->_movieFileSinkPipelines;
  v5 = [(NSMutableArray *)movieFileSinkPipelines countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *v13;
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (*v13 != v7)
    {
      objc_enumerationMutation(movieFileSinkPipelines);
    }

    v9 = *(*(&v12 + 1) + 8 * v8);
    if ([-[FigCaptureMovieFileSinkPipeline movieFileSinkNodes](v9) indexOfObjectIdenticalTo:node] != 0x7FFFFFFFFFFFFFFFLL)
    {
      return v9;
    }

    if (v6 == ++v8)
    {
      v6 = [(NSMutableArray *)movieFileSinkPipelines countByEnumeratingWithState:&v12 objects:v11 count:16];
      if (v6)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (id)movieFileSinkPipelineWithVideoConnectionID:(id)d
{
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  movieFileSinkPipelines = self->_movieFileSinkPipelines;
  v5 = [(NSMutableArray *)movieFileSinkPipelines countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *v13;
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (*v13 != v7)
    {
      objc_enumerationMutation(movieFileSinkPipelines);
    }

    v9 = *(*(&v12 + 1) + 8 * v8);
    if ([-[FigCaptureMovieFileSinkPipeline videoConnectionID](v9) isEqual:d])
    {
      return v9;
    }

    if (v6 == ++v8)
    {
      v6 = [(NSMutableArray *)movieFileSinkPipelines countByEnumeratingWithState:&v12 objects:v11 count:16];
      if (v6)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (id)movieFileSinkPipelineWithFileCoordinatorNode:(id)node
{
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  movieFileSinkPipelines = self->_movieFileSinkPipelines;
  v5 = [(NSMutableArray *)movieFileSinkPipelines countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *v13;
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (*v13 != v7)
    {
      objc_enumerationMutation(movieFileSinkPipelines);
    }

    v9 = *(*(&v12 + 1) + 8 * v8);
    if ([(FigCaptureMovieFileSinkPipeline *)v9 fileCoordinatorNode]== node)
    {
      return v9;
    }

    if (v6 == ++v8)
    {
      v6 = [(NSMutableArray *)movieFileSinkPipelines countByEnumeratingWithState:&v12 objects:v11 count:16];
      if (v6)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (id)movieFileSinkPipelineWithIrisStagingNode:(id)node
{
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  movieFileSinkPipelines = self->_movieFileSinkPipelines;
  v5 = [(NSMutableArray *)movieFileSinkPipelines countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *v13;
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (*v13 != v7)
    {
      objc_enumerationMutation(movieFileSinkPipelines);
    }

    v9 = *(*(&v12 + 1) + 8 * v8);
    if ([(FigCaptureMovieFileSinkPipeline *)v9 irisStagingNode]== node)
    {
      return v9;
    }

    if (v6 == ++v8)
    {
      v6 = [(NSMutableArray *)movieFileSinkPipelines countByEnumeratingWithState:&v12 objects:v11 count:16];
      if (v6)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (void)addStillImageSinkPipelineSessionStorage:(id)storage
{
  stillImageSinkPipelineStorages = self->_stillImageSinkPipelineStorages;
  if (!stillImageSinkPipelineStorages)
  {
    stillImageSinkPipelineStorages = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    self->_stillImageSinkPipelineStorages = stillImageSinkPipelineStorages;
  }

  if (!storage)
  {
    FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v8 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(FrameworkRadarComponent, v8, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/CaptureSession/FigCaptureSessionPipelines.m", 641, @"LastShownDate:FigCaptureSessionPipelines.m:641", @"LastShownBuild:FigCaptureSessionPipelines.m:641", 0);
    free(v8);
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"Failure to create still image sink pipeline! This is a fatal error.", 0}]);
  }

  [(NSMutableArray *)stillImageSinkPipelineStorages addObject:storage];
}

- (id)stillImageSinkPipelineSessionStorageWithSinkID:(id)d
{
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  stillImageSinkPipelineStorages = self->_stillImageSinkPipelineStorages;
  v5 = [(NSMutableArray *)stillImageSinkPipelineStorages countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *v13;
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (*v13 != v7)
    {
      objc_enumerationMutation(stillImageSinkPipelineStorages);
    }

    v9 = *(*(&v12 + 1) + 8 * v8);
    if ([objc_msgSend(objc_msgSend(v9 "primaryStillImageSinkPipeline")])
    {
      return v9;
    }

    if (v6 == ++v8)
    {
      v6 = [(NSMutableArray *)stillImageSinkPipelineStorages countByEnumeratingWithState:&v12 objects:v11 count:16];
      if (v6)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (id)stillImageSinkPipelineSessionStorageWithStillImageCoordinator:(id)coordinator
{
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  stillImageSinkPipelineStorages = self->_stillImageSinkPipelineStorages;
  v5 = [(NSMutableArray *)stillImageSinkPipelineStorages countByEnumeratingWithState:&v22 objects:v21 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *v23;
  while (2)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v23 != v7)
      {
        objc_enumerationMutation(stillImageSinkPipelineStorages);
      }

      v9 = *(*(&v22 + 1) + 8 * i);
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      stillImageSinkPipelines = [v9 stillImageSinkPipelines];
      v11 = [stillImageSinkPipelines countByEnumeratingWithState:&v17 objects:v16 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v18;
LABEL_8:
        v14 = 0;
        while (1)
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(stillImageSinkPipelines);
          }

          if ([*(*(&v17 + 1) + 8 * v14) stillImageCoordinatorNode] == coordinator)
          {
            return v9;
          }

          if (v12 == ++v14)
          {
            v12 = [stillImageSinkPipelines countByEnumeratingWithState:&v17 objects:v16 count:16];
            if (v12)
            {
              goto LABEL_8;
            }

            break;
          }
        }
      }
    }

    v6 = [(NSMutableArray *)stillImageSinkPipelineStorages countByEnumeratingWithState:&v22 objects:v21 count:16];
    v9 = 0;
    if (v6)
    {
      continue;
    }

    return v9;
  }
}

- (void)addDepthDataSinkPipeline:(id)pipeline
{
  depthDataSinkPipelines = self->_depthDataSinkPipelines;
  if (!depthDataSinkPipelines)
  {
    depthDataSinkPipelines = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    self->_depthDataSinkPipelines = depthDataSinkPipelines;
  }

  [(NSMutableArray *)depthDataSinkPipelines addObject:pipeline];
}

- (id)depthDataSinkPipelineWithSinkID:(id)d
{
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  depthDataSinkPipelines = self->_depthDataSinkPipelines;
  v5 = [(NSMutableArray *)depthDataSinkPipelines countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *v13;
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (*v13 != v7)
    {
      objc_enumerationMutation(depthDataSinkPipelines);
    }

    v9 = *(*(&v12 + 1) + 8 * v8);
    if ([objc_msgSend(v9 "sinkID")])
    {
      return v9;
    }

    if (v6 == ++v8)
    {
      v6 = [(NSMutableArray *)depthDataSinkPipelines countByEnumeratingWithState:&v12 objects:v11 count:16];
      if (v6)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (id)depthDataSinkPipelineWithSourceID:(id)d sourceDeviceType:(int)type
{
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  depthDataSinkPipelines = self->_depthDataSinkPipelines;
  v7 = [(NSMutableArray *)depthDataSinkPipelines countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = *v15;
LABEL_3:
  v10 = 0;
  while (1)
  {
    if (*v15 != v9)
    {
      objc_enumerationMutation(depthDataSinkPipelines);
    }

    v11 = *(*(&v14 + 1) + 8 * v10);
    if ([v11 sourceDeviceType] == type && (objc_msgSend(objc_msgSend(v11, "sourceID"), "isEqualToString:", d) & 1) != 0)
    {
      return v11;
    }

    if (v8 == ++v10)
    {
      v8 = [(NSMutableArray *)depthDataSinkPipelines countByEnumeratingWithState:&v14 objects:v13 count:16];
      if (v8)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (void)addVideoThumbnailSinkPipeline:(id)pipeline
{
  videoThumbnailSinkPipelines = self->_videoThumbnailSinkPipelines;
  if (!videoThumbnailSinkPipelines)
  {
    videoThumbnailSinkPipelines = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    self->_videoThumbnailSinkPipelines = videoThumbnailSinkPipelines;
  }

  [(NSMutableArray *)videoThumbnailSinkPipelines addObject:pipeline];
}

- (id)videoThumbnailSinkPipelineWithSinkID:(id)d
{
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  videoThumbnailSinkPipelines = self->_videoThumbnailSinkPipelines;
  v5 = [(NSMutableArray *)videoThumbnailSinkPipelines countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *v13;
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (*v13 != v7)
    {
      objc_enumerationMutation(videoThumbnailSinkPipelines);
    }

    v9 = *(*(&v12 + 1) + 8 * v8);
    if ([objc_msgSend(v9 "sinkID")])
    {
      return v9;
    }

    if (v6 == ++v8)
    {
      v6 = [(NSMutableArray *)videoThumbnailSinkPipelines countByEnumeratingWithState:&v12 objects:v11 count:16];
      if (v6)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (void)addMetadataSinkPipeline:(id)pipeline
{
  metadataSinkPipelines = self->_metadataSinkPipelines;
  if (!metadataSinkPipelines)
  {
    metadataSinkPipelines = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    self->_metadataSinkPipelines = metadataSinkPipelines;
  }

  [(NSMutableArray *)metadataSinkPipelines addObject:pipeline];
}

- (void)addMetadataSinkPipeline:(id)pipeline sessionID:(id)d
{
  metadataSinkPipelinesBySessionID = self->_metadataSinkPipelinesBySessionID;
  if (!metadataSinkPipelinesBySessionID)
  {
    metadataSinkPipelinesBySessionID = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
    self->_metadataSinkPipelinesBySessionID = metadataSinkPipelinesBySessionID;
  }

  [(NSMutableDictionary *)metadataSinkPipelinesBySessionID setObject:pipeline forKeyedSubscript:d];
}

- (void)removeMetadataSinkPipelineWithSessionID:(id)d
{
  [(NSMutableDictionary *)self->_metadataSinkPipelinesBySessionID setObject:0 forKeyedSubscript:d];
  if (![(NSMutableDictionary *)self->_metadataSinkPipelinesBySessionID count])
  {

    self->_metadataSinkPipelinesBySessionID = 0;
  }
}

- (id)metadataSinkPipelineWithSinkID:(id)d
{
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  metadataSinkPipelines = self->_metadataSinkPipelines;
  v5 = [(NSMutableArray *)metadataSinkPipelines countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *v13;
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (*v13 != v7)
    {
      objc_enumerationMutation(metadataSinkPipelines);
    }

    v9 = *(*(&v12 + 1) + 8 * v8);
    if ([objc_msgSend(v9 "sinkID")])
    {
      return v9;
    }

    if (v6 == ++v8)
    {
      v6 = [(NSMutableArray *)metadataSinkPipelines countByEnumeratingWithState:&v12 objects:v11 count:16];
      if (v6)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (id)metadataSinkPipelineWithSourceID:(id)d sourceDeviceType:(int)type
{
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  metadataSinkPipelines = self->_metadataSinkPipelines;
  v7 = [(NSMutableArray *)metadataSinkPipelines countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = *v15;
LABEL_3:
  v10 = 0;
  while (1)
  {
    if (*v15 != v9)
    {
      objc_enumerationMutation(metadataSinkPipelines);
    }

    v11 = *(*(&v14 + 1) + 8 * v10);
    if (-[FigCaptureMetadataSinkPipeline sourceDeviceType](v11) == type && ([-[FigCaptureMetadataSinkPipeline sourceID](v11) isEqualToString:d] & 1) != 0)
    {
      return v11;
    }

    if (v8 == ++v10)
    {
      v8 = [(NSMutableArray *)metadataSinkPipelines countByEnumeratingWithState:&v14 objects:v13 count:16];
      if (v8)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (void)addVisionDataSinkPipeline:(id)pipeline
{
  visionDataSinkPipelines = self->_visionDataSinkPipelines;
  if (!visionDataSinkPipelines)
  {
    visionDataSinkPipelines = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    self->_visionDataSinkPipelines = visionDataSinkPipelines;
  }

  [(NSMutableArray *)visionDataSinkPipelines addObject:pipeline];
}

- (id)visionDataSinkPipelineWithSinkID:(id)d
{
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  visionDataSinkPipelines = self->_visionDataSinkPipelines;
  v5 = [(NSMutableArray *)visionDataSinkPipelines countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *v13;
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (*v13 != v7)
    {
      objc_enumerationMutation(visionDataSinkPipelines);
    }

    v9 = *(*(&v12 + 1) + 8 * v8);
    if ([objc_msgSend(v9 "sinkID")])
    {
      return v9;
    }

    if (v6 == ++v8)
    {
      v6 = [(NSMutableArray *)visionDataSinkPipelines countByEnumeratingWithState:&v12 objects:v11 count:16];
      if (v6)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (void)addAudioDataSinkPipeline:(id)pipeline
{
  audioDataSinkPipelines = self->_audioDataSinkPipelines;
  if (!audioDataSinkPipelines)
  {
    audioDataSinkPipelines = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    self->_audioDataSinkPipelines = audioDataSinkPipelines;
  }

  [(NSMutableArray *)audioDataSinkPipelines addObject:pipeline];
}

- (id)audioDataSinkPipelineWithSinkID:(id)d
{
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  audioDataSinkPipelines = self->_audioDataSinkPipelines;
  v5 = [(NSMutableArray *)audioDataSinkPipelines countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *v13;
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (*v13 != v7)
    {
      objc_enumerationMutation(audioDataSinkPipelines);
    }

    v9 = *(*(&v12 + 1) + 8 * v8);
    if ([objc_msgSend(v9 "sinkID")])
    {
      return v9;
    }

    if (v6 == ++v8)
    {
      v6 = [(NSMutableArray *)audioDataSinkPipelines countByEnumeratingWithState:&v12 objects:v11 count:16];
      if (v6)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (void)addAudioFileSinkPipeline:(id)pipeline
{
  audioFileSinkPipelines = self->_audioFileSinkPipelines;
  if (!audioFileSinkPipelines)
  {
    audioFileSinkPipelines = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    self->_audioFileSinkPipelines = audioFileSinkPipelines;
  }

  [(NSMutableArray *)audioFileSinkPipelines addObject:pipeline];
}

- (id)audioFileSinkPipelineWithSinkID:(id)d
{
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  audioFileSinkPipelines = self->_audioFileSinkPipelines;
  v5 = [(NSMutableArray *)audioFileSinkPipelines countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *v13;
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (*v13 != v7)
    {
      objc_enumerationMutation(audioFileSinkPipelines);
    }

    v9 = *(*(&v12 + 1) + 8 * v8);
    if ([objc_msgSend(v9 "sinkID")])
    {
      return v9;
    }

    if (v6 == ++v8)
    {
      v6 = [(NSMutableArray *)audioFileSinkPipelines countByEnumeratingWithState:&v12 objects:v11 count:16];
      if (v6)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (id)audioFileSinkPipelineWithFileSinkNode:(id)node
{
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  audioFileSinkPipelines = self->_audioFileSinkPipelines;
  v5 = [(NSMutableArray *)audioFileSinkPipelines countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *v13;
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (*v13 != v7)
    {
      objc_enumerationMutation(audioFileSinkPipelines);
    }

    v9 = *(*(&v12 + 1) + 8 * v8);
    if ([(FigCaptureAudioFileSinkPipeline *)v9 audioFileSinkNode]== node)
    {
      return v9;
    }

    if (v6 == ++v8)
    {
      v6 = [(NSMutableArray *)audioFileSinkPipelines countByEnumeratingWithState:&v12 objects:v11 count:16];
      if (v6)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (void)addPointCloudDataSinkPipeline:(id)pipeline
{
  pointCloudDataSinkPipelines = self->_pointCloudDataSinkPipelines;
  if (!pointCloudDataSinkPipelines)
  {
    pointCloudDataSinkPipelines = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    self->_pointCloudDataSinkPipelines = pointCloudDataSinkPipelines;
  }

  [(NSMutableArray *)pointCloudDataSinkPipelines addObject:pipeline];
}

- (id)pointCloudDataSinkPipelineWithSinkID:(id)d
{
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  pointCloudDataSinkPipelines = self->_pointCloudDataSinkPipelines;
  v5 = [(NSMutableArray *)pointCloudDataSinkPipelines countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *v13;
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (*v13 != v7)
    {
      objc_enumerationMutation(pointCloudDataSinkPipelines);
    }

    v9 = *(*(&v12 + 1) + 8 * v8);
    if ([objc_msgSend(v9 "sinkID")])
    {
      return v9;
    }

    if (v6 == ++v8)
    {
      v6 = [(NSMutableArray *)pointCloudDataSinkPipelines countByEnumeratingWithState:&v12 objects:v11 count:16];
      if (v6)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (void)addCameraCalibrationDataSinkPipeline:(id)pipeline
{
  cameraCalibrationDataSinkPipelines = self->_cameraCalibrationDataSinkPipelines;
  if (!cameraCalibrationDataSinkPipelines)
  {
    cameraCalibrationDataSinkPipelines = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    self->_cameraCalibrationDataSinkPipelines = cameraCalibrationDataSinkPipelines;
  }

  [(NSMutableArray *)cameraCalibrationDataSinkPipelines addObject:pipeline];
}

- (id)cameraCalibrationDataSinkPipelineWithSinkID:(id)d
{
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  cameraCalibrationDataSinkPipelines = self->_cameraCalibrationDataSinkPipelines;
  v5 = [(NSMutableArray *)cameraCalibrationDataSinkPipelines countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *v13;
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (*v13 != v7)
    {
      objc_enumerationMutation(cameraCalibrationDataSinkPipelines);
    }

    v9 = *(*(&v12 + 1) + 8 * v8);
    if ([objc_msgSend(v9 "sinkID")])
    {
      return v9;
    }

    if (v6 == ++v8)
    {
      v6 = [(NSMutableArray *)cameraCalibrationDataSinkPipelines countByEnumeratingWithState:&v12 objects:v11 count:16];
      if (v6)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (void)addCinematographyPipeline:(id)pipeline
{
  cinematographyPipelines = self->_cinematographyPipelines;
  if (!cinematographyPipelines)
  {
    cinematographyPipelines = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    self->_cinematographyPipelines = cinematographyPipelines;
  }

  [(NSMutableArray *)cinematographyPipelines addObject:pipeline];
}

- (id)cinematographyPipelineWithSourceID:(id)d
{
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  cinematographyPipelines = self->_cinematographyPipelines;
  v5 = [(NSMutableArray *)cinematographyPipelines countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *v13;
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (*v13 != v7)
    {
      objc_enumerationMutation(cinematographyPipelines);
    }

    v9 = *(*(&v12 + 1) + 8 * v8);
    if ([-[FigCaptureCinematographyPipeline sourceID](v9) isEqualToString:d])
    {
      return v9;
    }

    if (v6 == ++v8)
    {
      v6 = [(NSMutableArray *)cinematographyPipelines countByEnumeratingWithState:&v12 objects:v11 count:16];
      if (v6)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (void)addLiDARDepthPipeline:(id)pipeline
{
  lidarDepthPipelines = self->_lidarDepthPipelines;
  if (!lidarDepthPipelines)
  {
    lidarDepthPipelines = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    self->_lidarDepthPipelines = lidarDepthPipelines;
  }

  [(NSMutableArray *)lidarDepthPipelines addObject:pipeline];
}

- (id)lidarDepthPipelineWithRGBCameraSourceID:(id)d
{
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  lidarDepthPipelines = self->_lidarDepthPipelines;
  v5 = [(NSMutableArray *)lidarDepthPipelines countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *v13;
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (*v13 != v7)
    {
      objc_enumerationMutation(lidarDepthPipelines);
    }

    v9 = *(*(&v12 + 1) + 8 * v8);
    if ([objc_msgSend(v9 "rgbCameraSourceID")])
    {
      return v9;
    }

    if (v6 == ++v8)
    {
      v6 = [(NSMutableArray *)lidarDepthPipelines countByEnumeratingWithState:&v12 objects:v11 count:16];
      if (v6)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (void)updateClientAuditToken:(id *)token
{
  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  videoDataSinkPipelines = [(FigCaptureSessionPipelines *)self videoDataSinkPipelines];
  v6 = [(NSArray *)videoDataSinkPipelines countByEnumeratingWithState:&v111 objects:v110 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v112;
    do
    {
      v9 = 0;
      do
      {
        if (*v112 != v8)
        {
          objc_enumerationMutation(videoDataSinkPipelines);
        }

        v10 = *(*(&v111 + 1) + 8 * v9);
        v11 = *&token->var0[4];
        v108 = *token->var0;
        v109 = v11;
        [v10 updateClientAuditToken:&v108];
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)videoDataSinkPipelines countByEnumeratingWithState:&v111 objects:v110 count:16];
    }

    while (v7);
  }

  v107 = 0u;
  v106 = 0u;
  v105 = 0u;
  v104 = 0u;
  previewSinkPipelines = [(FigCaptureSessionPipelines *)self previewSinkPipelines];
  v13 = [(NSArray *)previewSinkPipelines countByEnumeratingWithState:&v104 objects:v103 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v105;
    do
    {
      v16 = 0;
      do
      {
        if (*v105 != v15)
        {
          objc_enumerationMutation(previewSinkPipelines);
        }

        v17 = *(*(&v104 + 1) + 8 * v16);
        v18 = *&token->var0[4];
        v108 = *token->var0;
        v109 = v18;
        [v17 updateClientAuditToken:&v108];
        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSArray *)previewSinkPipelines countByEnumeratingWithState:&v104 objects:v103 count:16];
    }

    while (v14);
  }

  v102 = 0u;
  v101 = 0u;
  v100 = 0u;
  v99 = 0u;
  depthDataSinkPipelines = [(FigCaptureSessionPipelines *)self depthDataSinkPipelines];
  v20 = [(NSArray *)depthDataSinkPipelines countByEnumeratingWithState:&v99 objects:v98 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v100;
    do
    {
      v23 = 0;
      do
      {
        if (*v100 != v22)
        {
          objc_enumerationMutation(depthDataSinkPipelines);
        }

        v24 = *(*(&v99 + 1) + 8 * v23);
        v25 = *&token->var0[4];
        v108 = *token->var0;
        v109 = v25;
        [v24 updateClientAuditToken:&v108];
        ++v23;
      }

      while (v21 != v23);
      v21 = [(NSArray *)depthDataSinkPipelines countByEnumeratingWithState:&v99 objects:v98 count:16];
    }

    while (v21);
  }

  v97 = 0u;
  v96 = 0u;
  v95 = 0u;
  v94 = 0u;
  videoThumbnailSinkPipelines = [(FigCaptureSessionPipelines *)self videoThumbnailSinkPipelines];
  v27 = [(NSArray *)videoThumbnailSinkPipelines countByEnumeratingWithState:&v94 objects:v93 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v95;
    do
    {
      v30 = 0;
      do
      {
        if (*v95 != v29)
        {
          objc_enumerationMutation(videoThumbnailSinkPipelines);
        }

        v31 = *(*(&v94 + 1) + 8 * v30);
        v32 = *&token->var0[4];
        v108 = *token->var0;
        v109 = v32;
        [(FigCaptureVideoThumbnailSinkPipeline *)v31 updateClientAuditToken:?];
        ++v30;
      }

      while (v28 != v30);
      v28 = [(NSArray *)videoThumbnailSinkPipelines countByEnumeratingWithState:&v94 objects:v93 count:16];
    }

    while (v28);
  }

  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  metadataSinkPipelines = [(FigCaptureSessionPipelines *)self metadataSinkPipelines];
  v34 = [(NSArray *)metadataSinkPipelines countByEnumeratingWithState:&v89 objects:v88 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v90;
    do
    {
      v37 = 0;
      do
      {
        if (*v90 != v36)
        {
          objc_enumerationMutation(metadataSinkPipelines);
        }

        v38 = *(*(&v89 + 1) + 8 * v37);
        v39 = *&token->var0[4];
        v108 = *token->var0;
        v109 = v39;
        [v38 updateClientAuditToken:&v108];
        ++v37;
      }

      while (v35 != v37);
      v35 = [(NSArray *)metadataSinkPipelines countByEnumeratingWithState:&v89 objects:v88 count:16];
    }

    while (v35);
  }

  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  visionDataSinkPipelines = [(FigCaptureSessionPipelines *)self visionDataSinkPipelines];
  v41 = [(NSArray *)visionDataSinkPipelines countByEnumeratingWithState:&v84 objects:v83 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v85;
    do
    {
      v44 = 0;
      do
      {
        if (*v85 != v43)
        {
          objc_enumerationMutation(visionDataSinkPipelines);
        }

        v45 = *(*(&v84 + 1) + 8 * v44);
        v46 = *&token->var0[4];
        v108 = *token->var0;
        v109 = v46;
        [v45 updateClientAuditToken:&v108];
        ++v44;
      }

      while (v42 != v44);
      v42 = [(NSArray *)visionDataSinkPipelines countByEnumeratingWithState:&v84 objects:v83 count:16];
    }

    while (v42);
  }

  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  audioDataSinkPipelines = [(FigCaptureSessionPipelines *)self audioDataSinkPipelines];
  v48 = [(NSArray *)audioDataSinkPipelines countByEnumeratingWithState:&v79 objects:v78 count:16];
  if (v48)
  {
    v49 = v48;
    v50 = *v80;
    do
    {
      v51 = 0;
      do
      {
        if (*v80 != v50)
        {
          objc_enumerationMutation(audioDataSinkPipelines);
        }

        v52 = *(*(&v79 + 1) + 8 * v51);
        v53 = *&token->var0[4];
        v108 = *token->var0;
        v109 = v53;
        [v52 updateClientAuditToken:&v108];
        ++v51;
      }

      while (v49 != v51);
      v49 = [(NSArray *)audioDataSinkPipelines countByEnumeratingWithState:&v79 objects:v78 count:16];
    }

    while (v49);
  }

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  pointCloudDataSinkPipelines = [(FigCaptureSessionPipelines *)self pointCloudDataSinkPipelines];
  v55 = [(NSArray *)pointCloudDataSinkPipelines countByEnumeratingWithState:&v74 objects:v73 count:16];
  if (v55)
  {
    v56 = v55;
    v57 = *v75;
    do
    {
      v58 = 0;
      do
      {
        if (*v75 != v57)
        {
          objc_enumerationMutation(pointCloudDataSinkPipelines);
        }

        v59 = *(*(&v74 + 1) + 8 * v58);
        v60 = *&token->var0[4];
        v108 = *token->var0;
        v109 = v60;
        [v59 updateClientAuditToken:&v108];
        ++v58;
      }

      while (v56 != v58);
      v56 = [(NSArray *)pointCloudDataSinkPipelines countByEnumeratingWithState:&v74 objects:v73 count:16];
    }

    while (v56);
  }

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  cameraCalibrationDataSinkPipelines = [(FigCaptureSessionPipelines *)self cameraCalibrationDataSinkPipelines];
  v62 = [(NSArray *)cameraCalibrationDataSinkPipelines countByEnumeratingWithState:&v69 objects:v68 count:16];
  if (v62)
  {
    v63 = v62;
    v64 = *v70;
    do
    {
      v65 = 0;
      do
      {
        if (*v70 != v64)
        {
          objc_enumerationMutation(cameraCalibrationDataSinkPipelines);
        }

        v66 = *(*(&v69 + 1) + 8 * v65);
        v67 = *&token->var0[4];
        v108 = *token->var0;
        v109 = v67;
        [v66 updateClientAuditToken:&v108];
        ++v65;
      }

      while (v63 != v65);
      v63 = [(NSArray *)cameraCalibrationDataSinkPipelines countByEnumeratingWithState:&v69 objects:v68 count:16];
    }

    while (v63);
  }
}

@end