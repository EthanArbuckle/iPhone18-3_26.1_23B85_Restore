@interface FigCaptureVideoThumbnailSinkPipeline
- (uint64_t)_buildVideoFilterThumbnailPipeline:(uint64_t)pipeline videoSourceOutput:(uint64_t)output videoSourceTransform:(uint64_t)transform outputTransform:(unint64_t)outputTransform videoThumbnailConnectionConfiguration:(uint64_t)configuration maxLossyCompressionLevel:(void *)level clientAuditToken:(unsigned int)token;
- (uint64_t)imageQueueSinkNode;
- (uint64_t)updateClientAuditToken:(uint64_t)result;
- (void)dealloc;
- (void)imageQueueSinkNode:(id)node didAttemptToEnqueuePreviewSampleBuffer:(opaqueCMSampleBuffer *)buffer withSuccess:(BOOL)success;
- (void)initWithGraph:(uint64_t)graph name:(uint64_t)name videoSourceOutput:(uint64_t)output videoSourceTransform:(uint64_t)transform outputTransform:(unint64_t)outputTransform videoThumbnailConnectionConfiguration:(uint64_t)configuration maxLossyCompressionLevel:(void *)level clientAuditToken:(unsigned int)self0 notificationDelegate:(_OWORD *)self1;
- (void)setDiscardsSampleData:(BOOL)data;
@end

@implementation FigCaptureVideoThumbnailSinkPipeline

- (uint64_t)imageQueueSinkNode
{
  if (result)
  {
    return *(result + 56);
  }

  return result;
}

- (void)dealloc
{
  notificationQueue = self->_notificationQueue;
  if (notificationQueue)
  {
    dispatch_release(notificationQueue);
  }

  v4.receiver = self;
  v4.super_class = FigCaptureVideoThumbnailSinkPipeline;
  [(FigCaptureSinkPipeline *)&v4 dealloc];
}

void __210__FigCaptureVideoThumbnailSinkPipeline__buildVideoFilterThumbnailPipeline_videoSourceOutput_videoSourceTransform_outputTransform_videoThumbnailConnectionConfiguration_maxLossyCompressionLevel_clientAuditToken___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 64);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __vtsp_invalidateThumbnailSinkContentsIfNeeded_block_invoke;
  block[3] = &unk_1E798F870;
  block[4] = v1;
  dispatch_sync(v2, block);
}

- (void)setDiscardsSampleData:(BOOL)data
{
  dataCopy = data;
  discardsSampleData = [(FigCaptureSinkPipeline *)self discardsSampleData];
  v7.receiver = self;
  v7.super_class = FigCaptureVideoThumbnailSinkPipeline;
  [(FigCaptureSinkPipeline *)&v7 setDiscardsSampleData:dataCopy];
  if (!discardsSampleData && dataCopy)
  {
    notificationQueue = self->_notificationQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __vtsp_invalidateThumbnailSinkContentsIfNeeded_block_invoke;
    block[3] = &unk_1E798F870;
    block[4] = self;
    dispatch_sync(notificationQueue, block);
  }
}

- (void)imageQueueSinkNode:(id)node didAttemptToEnqueuePreviewSampleBuffer:(opaqueCMSampleBuffer *)buffer withSuccess:(BOOL)success
{
  notificationQueue = self->_notificationQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __110__FigCaptureVideoThumbnailSinkPipeline_imageQueueSinkNode_didAttemptToEnqueuePreviewSampleBuffer_withSuccess___block_invoke;
  v6[3] = &unk_1E798F898;
  v6[4] = self;
  v6[5] = node;
  dispatch_sync(notificationQueue, v6);
}

uint64_t __110__FigCaptureVideoThumbnailSinkPipeline_imageQueueSinkNode_didAttemptToEnqueuePreviewSampleBuffer_withSuccess___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if ((*(v1 + 72) & 1) == 0)
  {
    v2 = result;
    result = [objc_msgSend(objc_msgSend(objc_msgSend(*(v1 + 48) "input")];
    if ((result & 1) == 0)
    {
      result = [*(v2 + 40) imageQueueSlot];
      if (result)
      {
        v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{result, @"ImageQueueSlot"}];
        result = [*(*(v2 + 32) + 80) postNotification:@"ThumbnailImageQueueUpdated" notificationPayload:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v4, &v3, 1)}];
        *(*(v2 + 32) + 72) = 1;
      }
    }
  }

  return result;
}

- (void)initWithGraph:(uint64_t)graph name:(uint64_t)name videoSourceOutput:(uint64_t)output videoSourceTransform:(uint64_t)transform outputTransform:(unint64_t)outputTransform videoThumbnailConnectionConfiguration:(uint64_t)configuration maxLossyCompressionLevel:(void *)level clientAuditToken:(unsigned int)self0 notificationDelegate:(_OWORD *)self1
{
  if (!self)
  {
    return 0;
  }

  v23.receiver = self;
  v23.super_class = FigCaptureVideoThumbnailSinkPipeline;
  v17 = objc_msgSendSuper2(&v23, sel_initWithGraph_name_sinkID_, a2, graph, [objc_msgSend(level "sinkConfiguration")]);
  if (v17)
  {
    if (level)
    {
      v17[8] = FigDispatchQueueCreateWithPriority();
      v17[10] = a12;
      v22.receiver = v17;
      v22.super_class = FigCaptureVideoThumbnailSinkPipeline;
      objc_msgSendSuper2(&v22, sel_setUpstreamOutput_, name);
      v17[11] = [objc_msgSend(level "sourceConfiguration")];
      *(v17 + 24) = [level underlyingDeviceType];
      v18 = delegate[1];
      v21[0] = *delegate;
      v21[1] = v18;
      [(FigCaptureVideoThumbnailSinkPipeline *)v17 _buildVideoFilterThumbnailPipeline:a2 videoSourceOutput:name videoSourceTransform:output outputTransform:transform videoThumbnailConnectionConfiguration:outputTransform maxLossyCompressionLevel:configuration clientAuditToken:level, token, v21];
      return v17;
    }

    fig_log_get_emitter();
    FigDebugAssert3();

    return 0;
  }

  return v17;
}

- (uint64_t)_buildVideoFilterThumbnailPipeline:(uint64_t)pipeline videoSourceOutput:(uint64_t)output videoSourceTransform:(uint64_t)transform outputTransform:(unint64_t)outputTransform videoThumbnailConnectionConfiguration:(uint64_t)configuration maxLossyCompressionLevel:(void *)level clientAuditToken:(unsigned int)token
{
  __s1[0] = output;
  __s1[1] = transform;
  if (self)
  {
    v39 = 0;
    v15 = +[BWPipelineStage pipelineStageWithName:priority:](BWPipelineStage, "pipelineStageWithName:priority:", FigCaptureBuildPipelineStageName(@"com.apple.coremedia.capture.preview.thumbnails", [level sourceConfiguration]), 6);
    thumbnailSinkConfiguration = [level thumbnailSinkConfiguration];
    if (thumbnailSinkConfiguration)
    {
      [thumbnailSinkConfiguration thumbnailSize];
      *&v17 = v17 * 0.5;
      v18 = (2 * llroundf(*&v17));
      *&v17 = v19 * 0.5;
      v20 = (2 * llroundf(*&v17));
    }

    else
    {
      v18 = *MEMORY[0x1E695F060];
      v20 = *(MEMORY[0x1E695F060] + 8);
    }

    v21 = v18;
    v22 = v20;
    v23 = v21 / v22;
    v24 = objc_alloc_init(BWPixelTransferNode);
    [(BWNode *)v24 setName:@"Video Filter Thumbs Downscaler"];
    if (!memcmp(__s1, &kFigCaptureVideoTransform_Identity, 0x10uLL))
    {
      v25 = HIDWORD(outputTransform);
      v26 = FigCaptureTransformFlipAppliedBeforeRotationToAfter(outputTransform & 1, SHIDWORD(outputTransform));
      [(BWPixelTransferNode *)v24 setFlipHorizontal:v26 == 1];
      [(BWPixelTransferNode *)v24 setFlipVertical:v26 == 2];
      [(BWPixelTransferNode *)v24 setRotationDegrees:v25];
    }

    [(BWPixelTransferNode *)v24 setInputCropRect:FigCaptureMakeRectWithAspectRatioInsideDimensions(configuration, 0, v23)];
    [(BWPixelTransferNode *)v24 setCropMode:0];
    [(BWPixelTransferNode *)v24 setAppliesPrimaryCaptureRect:1];
    [(BWPixelTransferNode *)v24 setOutputWidth:v18];
    [(BWPixelTransferNode *)v24 setOutputHeight:v20];
    [(BWPixelTransferNode *)v24 setMaxLossyCompressionLevel:token];
    v38.receiver = self;
    v38.super_class = FigCaptureVideoThumbnailSinkPipeline;
    if (objc_msgSendSuper2(&v38, sel_addNode_error_, v24, &v39) & 1) != 0 && (self[6] = v24, (OUTLINED_FUNCTION_1_67([(BWNode *)v24 input])))
    {
      [(BWNode *)v24 output];
      v27 = -[BWMultiFilterThumbnailNode initWithFilters:thumbnailSize:maxLossyCompressionLevel:]([BWMultiFilterThumbnailNode alloc], "initWithFilters:thumbnailSize:maxLossyCompressionLevel:", [objc_msgSend(level "thumbnailSinkConfiguration")], token, v18, v20);
      [(BWNode *)v27 setName:@"Video Filter Thumb Render"];
      v37.receiver = self;
      v37.super_class = FigCaptureVideoThumbnailSinkPipeline;
      if (objc_msgSendSuper2(&v37, sel_addNode_error_, v27, &v39) & 1) != 0 && (OUTLINED_FUNCTION_1_67([(BWNode *)v27 input]))
      {
        output = [(BWNode *)v27 output];
        v29 = [BWImageQueueSinkNode alloc];
        sinkID = [self sinkID];
        v31 = a10[1];
        v36[0] = *a10;
        v36[1] = v31;
        v32 = [(BWImageQueueSinkNode *)v29 initWithHFRSupport:0 ispJitterCompensationEnabled:0 clientAuditToken:v36 sinkID:sinkID];
        [(BWNode *)v32 setName:@"Video Filter Thumbs Sink"];
        [(BWImageQueueSinkNode *)v32 setPreviewTapDelegate:self];
        [(BWImageQueueSinkNode *)v32 setMaxLossyCompressionLevel:token];
        v35[0] = MEMORY[0x1E69E9820];
        v35[1] = 3221225472;
        v35[2] = __210__FigCaptureVideoThumbnailSinkPipeline__buildVideoFilterThumbnailPipeline_videoSourceOutput_videoSourceTransform_outputTransform_videoThumbnailConnectionConfiguration_maxLossyCompressionLevel_clientAuditToken___block_invoke;
        v35[3] = &unk_1E798F870;
        v35[4] = self;
        [(BWSinkNode *)v32 notifyWhenIdle:v35];
        v34.receiver = self;
        v34.super_class = FigCaptureVideoThumbnailSinkPipeline;
        if (objc_msgSendSuper2(&v34, sel_addNode_error_, v32, &v39))
        {
          self[7] = v32;
          if ([a2 connectOutput:output toInput:-[BWNode input](v32 pipelineStage:{"input"), v15}])
          {
            return 0;
          }
        }

        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_9();
      }

      else
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_9();
      }
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_9();
    }

    FigDebugAssert3();
  }

  return 0;
}

- (uint64_t)updateClientAuditToken:(uint64_t)result
{
  if (result)
  {
    v2 = *(result + 56);
    v3 = a2[1];
    v4[0] = *a2;
    v4[1] = v3;
    return [v2 updateClientAuditToken:v4];
  }

  return result;
}

@end