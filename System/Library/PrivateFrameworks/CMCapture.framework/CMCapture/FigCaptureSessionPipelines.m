@interface FigCaptureSessionPipelines
- (FigCaptureCameraSourcePipeline)firstColorCameraSourcePipeline;
- (id)audioDataSinkPipelineWithSinkID:(id)a3;
- (id)audioFileSinkPipelineWithFileSinkNode:(id)a3;
- (id)audioFileSinkPipelineWithSinkID:(id)a3;
- (id)cameraCalibrationDataSinkPipelineWithSinkID:(id)a3;
- (id)cameraSourcePipelineCompatibleWithCameraConfiguration:(id)a3;
- (id)cameraSourcePipelineWithSourceID:(id)a3;
- (id)cinematographyPipelineWithSourceID:(id)a3;
- (id)depthDataSinkPipelineWithSinkID:(id)a3;
- (id)depthDataSinkPipelineWithSourceID:(id)a3 sourceDeviceType:(int)a4;
- (id)lidarDepthPipelineWithRGBCameraSourceID:(id)a3;
- (id)metadataSinkPipelineWithSinkID:(id)a3;
- (id)metadataSinkPipelineWithSourceID:(id)a3 sourceDeviceType:(int)a4;
- (id)movieFileSinkPipelineWithFileCoordinatorNode:(id)a3;
- (id)movieFileSinkPipelineWithFileSinkNode:(id)a3;
- (id)movieFileSinkPipelineWithIrisStagingNode:(id)a3;
- (id)movieFileSinkPipelineWithSinkID:(id)a3;
- (id)movieFileSinkPipelineWithSourceID:(id)a3 sourceDeviceType:(int)a4;
- (id)movieFileSinkPipelineWithVideoConnectionID:(id)a3;
- (id)pointCloudDataSinkPipelineWithSinkID:(id)a3;
- (id)previewSinkPipelineWithSinkID:(id)a3;
- (id)previewSinkPipelineWithSourceID:(id)a3 sourceDeviceType:(int)a4;
- (id)stillImageSinkPipelineSessionStorageWithSinkID:(id)a3;
- (id)stillImageSinkPipelineSessionStorageWithStillImageCoordinator:(id)a3;
- (id)videoDataSinkPipelineForMetadataWithSourceID:(id)a3 sourceDeviceType:(int)a4;
- (id)videoDataSinkPipelineWithSinkID:(id)a3;
- (id)videoDataSinkPipelinesWithSourceID:(id)a3 sourceDeviceType:(int)a4;
- (id)videoThumbnailSinkPipelineWithSinkID:(id)a3;
- (id)visionDataSinkPipelineWithSinkID:(id)a3;
- (void)addAudioDataSinkPipeline:(id)a3;
- (void)addAudioFileSinkPipeline:(id)a3;
- (void)addCameraCalibrationDataSinkPipeline:(id)a3;
- (void)addCameraSourcePipeline:(id)a3;
- (void)addCameraSourcePipeline:(id)a3 sessionID:(id)a4;
- (void)addCinematographyPipeline:(id)a3;
- (void)addDepthDataSinkPipeline:(id)a3;
- (void)addLiDARDepthPipeline:(id)a3;
- (void)addMetadataSinkPipeline:(id)a3;
- (void)addMetadataSinkPipeline:(id)a3 sessionID:(id)a4;
- (void)addMetadataSourcePipeline:(id)a3;
- (void)addMovieFileSinkPipeline:(id)a3;
- (void)addPointCloudDataSinkPipeline:(id)a3;
- (void)addPreviewSinkPipeline:(id)a3;
- (void)addStillImageSinkPipelineSessionStorage:(id)a3;
- (void)addVideoDataSinkPipeline:(id)a3;
- (void)addVideoThumbnailSinkPipeline:(id)a3;
- (void)addVisionDataSinkPipeline:(id)a3;
- (void)dealloc;
- (void)removeCameraSourcePipelineWithSessionID:(id)a3;
- (void)removeMetadataSinkPipelineWithSessionID:(id)a3;
- (void)updateClientAuditToken:(id *)a3;
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
    v8 = [-[FigCaptureCameraSourcePipeline captureDevice](v7) deviceType];
    v9 = v8 > 0x14 || ((1 << v8) & 0x100420) == 0;
    if (v9 && v8 - 21 < 0xFFFFFFFC)
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

- (void)addCameraSourcePipeline:(id)a3
{
  cameraSourcePipelines = self->_cameraSourcePipelines;
  if (!cameraSourcePipelines)
  {
    cameraSourcePipelines = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    self->_cameraSourcePipelines = cameraSourcePipelines;
  }

  [(NSMutableArray *)cameraSourcePipelines addObject:a3];
}

- (id)cameraSourcePipelineWithSourceID:(id)a3
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

- (id)cameraSourcePipelineCompatibleWithCameraConfiguration:(id)a3
{
  v5 = [a3 sourceDeviceType];
  v6 = [a3 sourcePosition];
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
    if ([-[FigCaptureCameraSourcePipeline captureDevice](v12) position] == v6)
    {
      v13 = [-[FigCaptureCameraSourcePipeline captureDevice](v12) deviceType];
      if (FigCaptureSourceDeviceTypeIsSubsetOfDeviceType(v5, v13, v6))
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

- (void)addCameraSourcePipeline:(id)a3 sessionID:(id)a4
{
  cameraSourcePipelinesBySessionID = self->_cameraSourcePipelinesBySessionID;
  if (!cameraSourcePipelinesBySessionID)
  {
    cameraSourcePipelinesBySessionID = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
    self->_cameraSourcePipelinesBySessionID = cameraSourcePipelinesBySessionID;
  }

  [(NSMutableDictionary *)cameraSourcePipelinesBySessionID setObject:a3 forKeyedSubscript:a4];
}

- (void)removeCameraSourcePipelineWithSessionID:(id)a3
{
  [(NSMutableDictionary *)self->_cameraSourcePipelinesBySessionID setObject:0 forKeyedSubscript:a3];
  if (![(NSMutableDictionary *)self->_cameraSourcePipelinesBySessionID count])
  {

    self->_cameraSourcePipelinesBySessionID = 0;
  }
}

- (void)addMetadataSourcePipeline:(id)a3
{
  metadataSourcePipelines = self->_metadataSourcePipelines;
  if (!metadataSourcePipelines)
  {
    metadataSourcePipelines = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    self->_metadataSourcePipelines = metadataSourcePipelines;
  }

  [(NSMutableArray *)metadataSourcePipelines addObject:a3];
}

- (void)addPreviewSinkPipeline:(id)a3
{
  previewSinkPipelines = self->_previewSinkPipelines;
  if (!previewSinkPipelines)
  {
    previewSinkPipelines = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    self->_previewSinkPipelines = previewSinkPipelines;
  }

  [(NSMutableArray *)previewSinkPipelines addObject:a3];
}

- (id)previewSinkPipelineWithSinkID:(id)a3
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

- (id)previewSinkPipelineWithSourceID:(id)a3 sourceDeviceType:(int)a4
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
    if ([v11 sourceDeviceType] == a4 && (objc_msgSend(objc_msgSend(v11, "sourceID"), "isEqualToString:", a3) & 1) != 0)
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

- (void)addVideoDataSinkPipeline:(id)a3
{
  videoDataSinkPipelines = self->_videoDataSinkPipelines;
  if (!videoDataSinkPipelines)
  {
    videoDataSinkPipelines = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    self->_videoDataSinkPipelines = videoDataSinkPipelines;
  }

  [(NSMutableArray *)videoDataSinkPipelines addObject:a3];
}

- (id)videoDataSinkPipelineWithSinkID:(id)a3
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

- (id)videoDataSinkPipelineForMetadataWithSourceID:(id)a3 sourceDeviceType:(int)a4
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
    if (-[FigCaptureVideoDataSinkPipeline sourceDeviceType](v11) == a4 && [-[FigCaptureVideoDataSinkPipeline sourceID](v11) isEqualToString:a3] && (-[FigCaptureVideoDataSinkPipeline faceTrackingVideoCaptureOutput](v11) || -[FigCaptureVideoDataSinkPipeline offlineVISMotionDataCaptureOutput](v11)))
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

- (id)videoDataSinkPipelinesWithSourceID:(id)a3 sourceDeviceType:(int)a4
{
  v7 = [MEMORY[0x1E695DF70] array];
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
        if (-[FigCaptureVideoDataSinkPipeline sourceDeviceType](v13) == a4 && [-[FigCaptureVideoDataSinkPipeline sourceID](v13) isEqualToString:a3])
        {
          [v7 addObject:v13];
        }
      }

      v10 = [(NSMutableArray *)videoDataSinkPipelines countByEnumeratingWithState:&v16 objects:v15 count:16];
    }

    while (v10);
  }

  return v7;
}

- (void)addMovieFileSinkPipeline:(id)a3
{
  movieFileSinkPipelines = self->_movieFileSinkPipelines;
  if (!movieFileSinkPipelines)
  {
    movieFileSinkPipelines = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    self->_movieFileSinkPipelines = movieFileSinkPipelines;
  }

  [(NSMutableArray *)movieFileSinkPipelines addObject:a3];
}

- (id)movieFileSinkPipelineWithSinkID:(id)a3
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

- (id)movieFileSinkPipelineWithSourceID:(id)a3 sourceDeviceType:(int)a4
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
    if (-[FigCaptureMovieFileSinkPipeline videoSourceDeviceType](v11) == a4 && ([-[FigCaptureMovieFileSinkPipeline videoSourceID](v11) isEqualToString:a3] & 1) != 0)
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

- (id)movieFileSinkPipelineWithFileSinkNode:(id)a3
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
    if ([-[FigCaptureMovieFileSinkPipeline movieFileSinkNodes](v9) indexOfObjectIdenticalTo:a3] != 0x7FFFFFFFFFFFFFFFLL)
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

- (id)movieFileSinkPipelineWithVideoConnectionID:(id)a3
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
    if ([-[FigCaptureMovieFileSinkPipeline videoConnectionID](v9) isEqual:a3])
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

- (id)movieFileSinkPipelineWithFileCoordinatorNode:(id)a3
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
    if ([(FigCaptureMovieFileSinkPipeline *)v9 fileCoordinatorNode]== a3)
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

- (id)movieFileSinkPipelineWithIrisStagingNode:(id)a3
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
    if ([(FigCaptureMovieFileSinkPipeline *)v9 irisStagingNode]== a3)
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

- (void)addStillImageSinkPipelineSessionStorage:(id)a3
{
  stillImageSinkPipelineStorages = self->_stillImageSinkPipelineStorages;
  if (!stillImageSinkPipelineStorages)
  {
    stillImageSinkPipelineStorages = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    self->_stillImageSinkPipelineStorages = stillImageSinkPipelineStorages;
  }

  if (!a3)
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

  [(NSMutableArray *)stillImageSinkPipelineStorages addObject:a3];
}

- (id)stillImageSinkPipelineSessionStorageWithSinkID:(id)a3
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

- (id)stillImageSinkPipelineSessionStorageWithStillImageCoordinator:(id)a3
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
      v10 = [v9 stillImageSinkPipelines];
      v11 = [v10 countByEnumeratingWithState:&v17 objects:v16 count:16];
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
            objc_enumerationMutation(v10);
          }

          if ([*(*(&v17 + 1) + 8 * v14) stillImageCoordinatorNode] == a3)
          {
            return v9;
          }

          if (v12 == ++v14)
          {
            v12 = [v10 countByEnumeratingWithState:&v17 objects:v16 count:16];
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

- (void)addDepthDataSinkPipeline:(id)a3
{
  depthDataSinkPipelines = self->_depthDataSinkPipelines;
  if (!depthDataSinkPipelines)
  {
    depthDataSinkPipelines = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    self->_depthDataSinkPipelines = depthDataSinkPipelines;
  }

  [(NSMutableArray *)depthDataSinkPipelines addObject:a3];
}

- (id)depthDataSinkPipelineWithSinkID:(id)a3
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

- (id)depthDataSinkPipelineWithSourceID:(id)a3 sourceDeviceType:(int)a4
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
    if ([v11 sourceDeviceType] == a4 && (objc_msgSend(objc_msgSend(v11, "sourceID"), "isEqualToString:", a3) & 1) != 0)
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

- (void)addVideoThumbnailSinkPipeline:(id)a3
{
  videoThumbnailSinkPipelines = self->_videoThumbnailSinkPipelines;
  if (!videoThumbnailSinkPipelines)
  {
    videoThumbnailSinkPipelines = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    self->_videoThumbnailSinkPipelines = videoThumbnailSinkPipelines;
  }

  [(NSMutableArray *)videoThumbnailSinkPipelines addObject:a3];
}

- (id)videoThumbnailSinkPipelineWithSinkID:(id)a3
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

- (void)addMetadataSinkPipeline:(id)a3
{
  metadataSinkPipelines = self->_metadataSinkPipelines;
  if (!metadataSinkPipelines)
  {
    metadataSinkPipelines = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    self->_metadataSinkPipelines = metadataSinkPipelines;
  }

  [(NSMutableArray *)metadataSinkPipelines addObject:a3];
}

- (void)addMetadataSinkPipeline:(id)a3 sessionID:(id)a4
{
  metadataSinkPipelinesBySessionID = self->_metadataSinkPipelinesBySessionID;
  if (!metadataSinkPipelinesBySessionID)
  {
    metadataSinkPipelinesBySessionID = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
    self->_metadataSinkPipelinesBySessionID = metadataSinkPipelinesBySessionID;
  }

  [(NSMutableDictionary *)metadataSinkPipelinesBySessionID setObject:a3 forKeyedSubscript:a4];
}

- (void)removeMetadataSinkPipelineWithSessionID:(id)a3
{
  [(NSMutableDictionary *)self->_metadataSinkPipelinesBySessionID setObject:0 forKeyedSubscript:a3];
  if (![(NSMutableDictionary *)self->_metadataSinkPipelinesBySessionID count])
  {

    self->_metadataSinkPipelinesBySessionID = 0;
  }
}

- (id)metadataSinkPipelineWithSinkID:(id)a3
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

- (id)metadataSinkPipelineWithSourceID:(id)a3 sourceDeviceType:(int)a4
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
    if (-[FigCaptureMetadataSinkPipeline sourceDeviceType](v11) == a4 && ([-[FigCaptureMetadataSinkPipeline sourceID](v11) isEqualToString:a3] & 1) != 0)
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

- (void)addVisionDataSinkPipeline:(id)a3
{
  visionDataSinkPipelines = self->_visionDataSinkPipelines;
  if (!visionDataSinkPipelines)
  {
    visionDataSinkPipelines = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    self->_visionDataSinkPipelines = visionDataSinkPipelines;
  }

  [(NSMutableArray *)visionDataSinkPipelines addObject:a3];
}

- (id)visionDataSinkPipelineWithSinkID:(id)a3
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

- (void)addAudioDataSinkPipeline:(id)a3
{
  audioDataSinkPipelines = self->_audioDataSinkPipelines;
  if (!audioDataSinkPipelines)
  {
    audioDataSinkPipelines = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    self->_audioDataSinkPipelines = audioDataSinkPipelines;
  }

  [(NSMutableArray *)audioDataSinkPipelines addObject:a3];
}

- (id)audioDataSinkPipelineWithSinkID:(id)a3
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

- (void)addAudioFileSinkPipeline:(id)a3
{
  audioFileSinkPipelines = self->_audioFileSinkPipelines;
  if (!audioFileSinkPipelines)
  {
    audioFileSinkPipelines = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    self->_audioFileSinkPipelines = audioFileSinkPipelines;
  }

  [(NSMutableArray *)audioFileSinkPipelines addObject:a3];
}

- (id)audioFileSinkPipelineWithSinkID:(id)a3
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

- (id)audioFileSinkPipelineWithFileSinkNode:(id)a3
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
    if ([(FigCaptureAudioFileSinkPipeline *)v9 audioFileSinkNode]== a3)
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

- (void)addPointCloudDataSinkPipeline:(id)a3
{
  pointCloudDataSinkPipelines = self->_pointCloudDataSinkPipelines;
  if (!pointCloudDataSinkPipelines)
  {
    pointCloudDataSinkPipelines = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    self->_pointCloudDataSinkPipelines = pointCloudDataSinkPipelines;
  }

  [(NSMutableArray *)pointCloudDataSinkPipelines addObject:a3];
}

- (id)pointCloudDataSinkPipelineWithSinkID:(id)a3
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

- (void)addCameraCalibrationDataSinkPipeline:(id)a3
{
  cameraCalibrationDataSinkPipelines = self->_cameraCalibrationDataSinkPipelines;
  if (!cameraCalibrationDataSinkPipelines)
  {
    cameraCalibrationDataSinkPipelines = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    self->_cameraCalibrationDataSinkPipelines = cameraCalibrationDataSinkPipelines;
  }

  [(NSMutableArray *)cameraCalibrationDataSinkPipelines addObject:a3];
}

- (id)cameraCalibrationDataSinkPipelineWithSinkID:(id)a3
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

- (void)addCinematographyPipeline:(id)a3
{
  cinematographyPipelines = self->_cinematographyPipelines;
  if (!cinematographyPipelines)
  {
    cinematographyPipelines = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    self->_cinematographyPipelines = cinematographyPipelines;
  }

  [(NSMutableArray *)cinematographyPipelines addObject:a3];
}

- (id)cinematographyPipelineWithSourceID:(id)a3
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
    if ([-[FigCaptureCinematographyPipeline sourceID](v9) isEqualToString:a3])
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

- (void)addLiDARDepthPipeline:(id)a3
{
  lidarDepthPipelines = self->_lidarDepthPipelines;
  if (!lidarDepthPipelines)
  {
    lidarDepthPipelines = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    self->_lidarDepthPipelines = lidarDepthPipelines;
  }

  [(NSMutableArray *)lidarDepthPipelines addObject:a3];
}

- (id)lidarDepthPipelineWithRGBCameraSourceID:(id)a3
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

- (void)updateClientAuditToken:(id *)a3
{
  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v5 = [(FigCaptureSessionPipelines *)self videoDataSinkPipelines];
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v111 objects:v110 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v111 + 1) + 8 * v9);
        v11 = *&a3->var0[4];
        v108 = *a3->var0;
        v109 = v11;
        [v10 updateClientAuditToken:&v108];
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v111 objects:v110 count:16];
    }

    while (v7);
  }

  v107 = 0u;
  v106 = 0u;
  v105 = 0u;
  v104 = 0u;
  v12 = [(FigCaptureSessionPipelines *)self previewSinkPipelines];
  v13 = [(NSArray *)v12 countByEnumeratingWithState:&v104 objects:v103 count:16];
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
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v104 + 1) + 8 * v16);
        v18 = *&a3->var0[4];
        v108 = *a3->var0;
        v109 = v18;
        [v17 updateClientAuditToken:&v108];
        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSArray *)v12 countByEnumeratingWithState:&v104 objects:v103 count:16];
    }

    while (v14);
  }

  v102 = 0u;
  v101 = 0u;
  v100 = 0u;
  v99 = 0u;
  v19 = [(FigCaptureSessionPipelines *)self depthDataSinkPipelines];
  v20 = [(NSArray *)v19 countByEnumeratingWithState:&v99 objects:v98 count:16];
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
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v99 + 1) + 8 * v23);
        v25 = *&a3->var0[4];
        v108 = *a3->var0;
        v109 = v25;
        [v24 updateClientAuditToken:&v108];
        ++v23;
      }

      while (v21 != v23);
      v21 = [(NSArray *)v19 countByEnumeratingWithState:&v99 objects:v98 count:16];
    }

    while (v21);
  }

  v97 = 0u;
  v96 = 0u;
  v95 = 0u;
  v94 = 0u;
  v26 = [(FigCaptureSessionPipelines *)self videoThumbnailSinkPipelines];
  v27 = [(NSArray *)v26 countByEnumeratingWithState:&v94 objects:v93 count:16];
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
          objc_enumerationMutation(v26);
        }

        v31 = *(*(&v94 + 1) + 8 * v30);
        v32 = *&a3->var0[4];
        v108 = *a3->var0;
        v109 = v32;
        [(FigCaptureVideoThumbnailSinkPipeline *)v31 updateClientAuditToken:?];
        ++v30;
      }

      while (v28 != v30);
      v28 = [(NSArray *)v26 countByEnumeratingWithState:&v94 objects:v93 count:16];
    }

    while (v28);
  }

  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v33 = [(FigCaptureSessionPipelines *)self metadataSinkPipelines];
  v34 = [(NSArray *)v33 countByEnumeratingWithState:&v89 objects:v88 count:16];
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
          objc_enumerationMutation(v33);
        }

        v38 = *(*(&v89 + 1) + 8 * v37);
        v39 = *&a3->var0[4];
        v108 = *a3->var0;
        v109 = v39;
        [v38 updateClientAuditToken:&v108];
        ++v37;
      }

      while (v35 != v37);
      v35 = [(NSArray *)v33 countByEnumeratingWithState:&v89 objects:v88 count:16];
    }

    while (v35);
  }

  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v40 = [(FigCaptureSessionPipelines *)self visionDataSinkPipelines];
  v41 = [(NSArray *)v40 countByEnumeratingWithState:&v84 objects:v83 count:16];
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
          objc_enumerationMutation(v40);
        }

        v45 = *(*(&v84 + 1) + 8 * v44);
        v46 = *&a3->var0[4];
        v108 = *a3->var0;
        v109 = v46;
        [v45 updateClientAuditToken:&v108];
        ++v44;
      }

      while (v42 != v44);
      v42 = [(NSArray *)v40 countByEnumeratingWithState:&v84 objects:v83 count:16];
    }

    while (v42);
  }

  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v47 = [(FigCaptureSessionPipelines *)self audioDataSinkPipelines];
  v48 = [(NSArray *)v47 countByEnumeratingWithState:&v79 objects:v78 count:16];
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
          objc_enumerationMutation(v47);
        }

        v52 = *(*(&v79 + 1) + 8 * v51);
        v53 = *&a3->var0[4];
        v108 = *a3->var0;
        v109 = v53;
        [v52 updateClientAuditToken:&v108];
        ++v51;
      }

      while (v49 != v51);
      v49 = [(NSArray *)v47 countByEnumeratingWithState:&v79 objects:v78 count:16];
    }

    while (v49);
  }

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v54 = [(FigCaptureSessionPipelines *)self pointCloudDataSinkPipelines];
  v55 = [(NSArray *)v54 countByEnumeratingWithState:&v74 objects:v73 count:16];
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
          objc_enumerationMutation(v54);
        }

        v59 = *(*(&v74 + 1) + 8 * v58);
        v60 = *&a3->var0[4];
        v108 = *a3->var0;
        v109 = v60;
        [v59 updateClientAuditToken:&v108];
        ++v58;
      }

      while (v56 != v58);
      v56 = [(NSArray *)v54 countByEnumeratingWithState:&v74 objects:v73 count:16];
    }

    while (v56);
  }

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v61 = [(FigCaptureSessionPipelines *)self cameraCalibrationDataSinkPipelines];
  v62 = [(NSArray *)v61 countByEnumeratingWithState:&v69 objects:v68 count:16];
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
          objc_enumerationMutation(v61);
        }

        v66 = *(*(&v69 + 1) + 8 * v65);
        v67 = *&a3->var0[4];
        v108 = *a3->var0;
        v109 = v67;
        [v66 updateClientAuditToken:&v108];
        ++v65;
      }

      while (v63 != v65);
      v63 = [(NSArray *)v61 countByEnumeratingWithState:&v69 objects:v68 count:16];
    }

    while (v63);
  }
}

@end