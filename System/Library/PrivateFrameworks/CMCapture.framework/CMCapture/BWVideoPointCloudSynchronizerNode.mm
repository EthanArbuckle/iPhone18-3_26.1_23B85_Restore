@interface BWVideoPointCloudSynchronizerNode
+ (void)initialize;
- (BOOL)_attachPointCloudDataToSampleBuffer:(opaqueCMSampleBuffer *)a3;
- (BWVideoPointCloudSynchronizerNode)initWithCaptureDevice:(id)a3 timeOfFlightCameraType:(int)a4;
- (void)_setUpPointCloudMediaConfigurationForOutput:(id)a3 inputAttachedMediaKey:(id)a4 outputAttachedMediaKey:(id)a5;
- (void)_tryToEmitBuffersWithRGBBuffer:(opaqueCMSampleBuffer *)a3;
- (void)_updateNumberOfReceivedRGBFramesBeforeEmittingDepthFrameWithDepthMaxFrameRate:(float)a3 rgbMaxFrameRate:(float)a4;
- (void)configurationWithID:(int64_t)a3 updatedFormat:(id)a4 didBecomeLiveForInput:(id)a5;
- (void)dealloc;
- (void)didChangeDepthMaxFrameRate:(float)a3;
- (void)didReachEndOfDataForInput:(id)a3;
- (void)didSelectFormat:(id)a3 forInput:(id)a4 forAttachedMediaKey:(id)a5;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4;
@end

@implementation BWVideoPointCloudSynchronizerNode

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (BWVideoPointCloudSynchronizerNode)initWithCaptureDevice:(id)a3 timeOfFlightCameraType:(int)a4
{
  v15.receiver = self;
  v15.super_class = BWVideoPointCloudSynchronizerNode;
  v6 = [(BWNode *)&v15 init];
  if (v6)
  {
    v7 = a3;
    v6->_captureDevice = v7;
    [(BWFigVideoCaptureDevice *)v7 depthMaxFrameRate];
    v6->_depthMaxFrameRate = v8;
    v6->_depthMaxFrameRateAdjustmentPending = 1;
    v6->_multiplePointCloudAttachmentsEnabled = a4 == 2;
    if (a4 == 2)
    {
      v9 = 2;
    }

    else
    {
      v9 = 1;
    }

    v6->_latestPointCloudBuffersCapacity = v9;
    v6->_latestPointCloudBuffers = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v6->_latestPointCloudBuffersCapacity];
    v10 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v6 index:0];
    [(BWNodeInput *)v10 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
    [(BWNodeInput *)v10 setPassthroughMode:1];
    [(BWNode *)v6 addInput:v10];
    v11 = [[BWNodeInput alloc] initWithMediaType:1885564004 node:v6 index:1];
    [(BWNodeInput *)v11 setFormatRequirements:objc_alloc_init(BWPointCloudFormatRequirements)];
    [(BWNodeInput *)v11 setPassthroughMode:1];
    [(BWNodeInput *)v11 setRetainedBufferCount:v6->_latestPointCloudBuffersCapacity];
    v12 = objc_alloc_init(BWNodeInputMediaConfiguration);
    [(BWNodeInputMediaConfiguration *)v12 setPassthroughMode:0];
    [(BWNodeInput *)v11 setUnspecifiedAttachedMediaConfiguration:v12];
    [(BWNode *)v6 addInput:v11];
    v6->_imageInput = v10;
    v6->_pointCloudInput = v11;
    v13 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v6];
    [(BWNodeOutputMediaConfiguration *)[(BWNodeOutput *)v13 primaryMediaConfiguration] setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
    [(BWNodeOutput *)v13 setPassthroughMode:1];
    [(BWVideoPointCloudSynchronizerNode *)v6 _setUpPointCloudMediaConfigurationForOutput:v13 inputAttachedMediaKey:@"PrimaryFormat" outputAttachedMediaKey:0x1F219CD30];
    if (v6->_multiplePointCloudAttachmentsEnabled)
    {
      [(BWVideoPointCloudSynchronizerNode *)v6 _setUpPointCloudMediaConfigurationForOutput:v13 inputAttachedMediaKey:@"PrimaryFormat" outputAttachedMediaKey:0x1F21AAE50];
    }

    [(BWNode *)v6 addOutput:v13];
    v6->_bufferServicingLock._os_unfair_lock_opaque = 0;
    [(BWFigVideoCaptureDevice *)v6->_captureDevice setMaxDepthFrameRateChangedDelegate:v6];
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWVideoPointCloudSynchronizerNode;
  [(BWNode *)&v3 dealloc];
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4
{
  os_unfair_lock_lock(&self->_bufferServicingLock);
  if (self->_imageInput == a4)
  {
    if (self->_depthMaxFrameRateAdjustmentPending)
    {
      [objc_msgSend(CMGetAttachment(a3 *off_1E798A3C8];
      LODWORD(v9) = v8;
      *&v10 = self->_depthMaxFrameRate;
      [(BWVideoPointCloudSynchronizerNode *)self _updateNumberOfReceivedRGBFramesBeforeEmittingDepthFrameWithDepthMaxFrameRate:v10 rgbMaxFrameRate:v9];
      self->_depthMaxFrameRateAdjustmentPending = 0;
    }

    if (self->_shouldLetThroughFrames)
    {
      ++self->_numberOfReceivedRGBFramesSinceLastDepthFrameEmission;
    }

    if ([(BWVideoPointCloudSynchronizerNode *)self _shouldEmitBuffer])
    {
      [(BWVideoPointCloudSynchronizerNode *)self _tryToEmitBuffersWithRGBBuffer:a3];
    }
  }

  else if (self->_pointCloudInput == a4)
  {
    v7 = self->_numberOfReceivedPointCloudFramesBeforeEmitted % self->_latestPointCloudBuffersCapacity;
    self->_indexForLatestReceivedPointCloudFrame = v7;
    [(NSMutableArray *)self->_latestPointCloudBuffers setObject:a3 atIndexedSubscript:v7];
    ++self->_numberOfReceivedPointCloudFramesBeforeEmitted;
  }

  os_unfair_lock_unlock(&self->_bufferServicingLock);
}

- (void)didSelectFormat:(id)a3 forInput:(id)a4 forAttachedMediaKey:(id)a5
{
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = [(BWNode *)self outputs];
  v26 = [(NSArray *)obj countByEnumeratingWithState:&v36 objects:v35 count:16];
  if (v26)
  {
    v23 = *v37;
    do
    {
      v6 = 0;
      do
      {
        if (*v37 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v27 = v6;
        v7 = *(*(&v36 + 1) + 8 * v6);
        v8 = [v7 attachedMediaKeyDrivenByInputAttachedMediaKey:a5 inputIndex:{objc_msgSend(a4, "index")}];
        if (v8)
        {
          v9 = v8;
          if ([v7 passthroughMode])
          {
            if (self->_multiplePointCloudAttachmentsEnabled && [v9 isEqualToString:0x1F219CD30])
            {
              v34[0] = 0x1F219CD30;
              v34[1] = 0x1F21AAE50;
              v10 = MEMORY[0x1E695DEC8];
              v11 = v34;
              v12 = 2;
            }

            else
            {
              v33 = v9;
              v10 = MEMORY[0x1E695DEC8];
              v11 = &v33;
              v12 = 1;
            }

            v13 = [v10 arrayWithObjects:v11 count:v12];
            v31 = 0u;
            v32 = 0u;
            v29 = 0u;
            v30 = 0u;
            v14 = [v13 countByEnumeratingWithState:&v29 objects:v28 count:16];
            if (v14)
            {
              v15 = v14;
              v16 = *v30;
              do
              {
                for (i = 0; i != v15; ++i)
                {
                  if (*v30 != v16)
                  {
                    objc_enumerationMutation(v13);
                  }

                  v18 = *(*(&v29 + 1) + 8 * i);
                  v19 = [v7 mediaPropertiesForAttachedMediaKey:v18];
                  if (!v19)
                  {
                    if ([v18 isEqualToString:@"PrimaryFormat"])
                    {
                      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ output %@ has no media properties for the primary format (provided media key is %@)", self, v7, a5];
                      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v20 userInfo:0]);
                    }

                    v19 = objc_alloc_init(BWNodeOutputMediaProperties);
                    [v7 _setMediaProperties:v19 forAttachedMediaKey:v18];
                  }

                  [(BWNodeOutputMediaProperties *)v19 setResolvedFormat:a3];
                }

                v15 = [v13 countByEnumeratingWithState:&v29 objects:v28 count:16];
              }

              while (v15);
            }
          }
        }

        v6 = v27 + 1;
      }

      while (v27 + 1 != v26);
      v26 = [(NSArray *)obj countByEnumeratingWithState:&v36 objects:v35 count:16];
    }

    while (v26);
  }
}

- (void)configurationWithID:(int64_t)a3 updatedFormat:(id)a4 didBecomeLiveForInput:(id)a5
{
  os_unfair_lock_lock(&self->_bufferServicingLock);
  if (![(BWNodeOutput *)self->super._output liveFormat])
  {
    [(BWNodeOutput *)self->super._output makeConfiguredFormatLive];
  }

  os_unfair_lock_unlock(&self->_bufferServicingLock);
}

- (void)didReachEndOfDataForInput:(id)a3
{
  v4 = atomic_fetch_add_explicit(&self->_numEODMessagesReceived, 1u, memory_order_relaxed) + 1;
  if ([(NSArray *)[(BWNode *)self inputs] count]== v4)
  {
    os_unfair_lock_lock(&self->_bufferServicingLock);
    [(BWNodeOutput *)self->super._output markEndOfLiveOutput];
    os_unfair_lock_unlock(&self->_bufferServicingLock);
    self->_numEODMessagesReceived = 0;
  }
}

- (void)_tryToEmitBuffersWithRGBBuffer:(opaqueCMSampleBuffer *)a3
{
  os_unfair_lock_assert_owner(&self->_bufferServicingLock);
  if ([(BWVideoPointCloudSynchronizerNode *)self _attachPointCloudDataToSampleBuffer:a3])
  {
    [(BWNodeOutput *)self->super._output emitSampleBuffer:a3];
    self->_numberOfReceivedRGBFramesSinceLastDepthFrameEmission = 0;
  }
}

- (void)_setUpPointCloudMediaConfigurationForOutput:(id)a3 inputAttachedMediaKey:(id)a4 outputAttachedMediaKey:(id)a5
{
  v8 = objc_alloc_init(BWNodeOutputMediaConfiguration);
  [(BWNodeOutputMediaConfiguration *)v8 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
  [(BWNodeOutputMediaConfiguration *)v8 setPassthroughMode:1];
  [(BWNodeOutputMediaConfiguration *)v8 setIndexOfInputWhichDrivesThisOutput:1];
  [(BWNodeOutputMediaConfiguration *)v8 setAttachedMediaKeyOfInputWhichDrivesThisOutput:a4];

  [a3 setMediaConfiguration:v8 forAttachedMediaKey:a5];
}

- (void)_updateNumberOfReceivedRGBFramesBeforeEmittingDepthFrameWithDepthMaxFrameRate:(float)a3 rgbMaxFrameRate:(float)a4
{
  os_unfair_lock_assert_owner(&self->_bufferServicingLock);
  if (a3 == 0.0)
  {
    v7 = 0;
  }

  else if (vabds_f32(a4, a3) >= 0.1)
  {
    v7 = vcvtps_s32_f32(a4 / a3);
  }

  else
  {
    v7 = 1;
  }

  self->_shouldLetThroughFrames = a3 != 0.0;
  self->_numberOfReceivedRGBFramesBeforeEmittingDepthFrame = v7;
  if (dword_1EB58E540)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

- (void)didChangeDepthMaxFrameRate:(float)a3
{
  os_unfair_lock_lock(&self->_bufferServicingLock);
  if (self->_depthMaxFrameRate != a3)
  {
    self->_depthMaxFrameRate = a3;
    self->_depthMaxFrameRateAdjustmentPending = 1;
  }

  os_unfair_lock_unlock(&self->_bufferServicingLock);
}

- (BOOL)_attachPointCloudDataToSampleBuffer:(opaqueCMSampleBuffer *)a3
{
  os_unfair_lock_assert_owner(&self->_bufferServicingLock);
  if (self->_numberOfReceivedPointCloudFramesBeforeEmitted < self->_latestPointCloudBuffersCapacity)
  {
    return 0;
  }

  if (self->_multiplePointCloudAttachmentsEnabled)
  {
    v5 = [(NSMutableArray *)self->_latestPointCloudBuffers objectAtIndexedSubscript:self->_indexForLatestReceivedPointCloudFrame == 0];
    v6 = [(NSMutableArray *)self->_latestPointCloudBuffers objectAtIndexedSubscript:self->_indexForLatestReceivedPointCloudFrame];
    memset(&v16, 0, sizeof(v16));
    CMSampleBufferGetPresentationTimeStamp(&v16, v5);
    memset(&v15, 0, sizeof(v15));
    CMSampleBufferGetPresentationTimeStamp(&v15, v6);
    lhs = v15;
    v12 = v16;
    CMTimeSubtract(&time, &lhs, &v12);
    Seconds = CMTimeGetSeconds(&time);
    v8 = Seconds * 1000.0;
    v9 = v8 < 40.0;
    if (v8 < 40.0)
    {
      BWSampleBufferSetAttachedMedia(a3, 0x1F219CD30, v5);
      BWSampleBufferSetAttachedMedia(a3, 0x1F21AAE50, v6);
      [(NSMutableArray *)self->_latestPointCloudBuffers removeAllObjects];
      v10 = 0;
    }

    else
    {
      [(NSMutableArray *)self->_latestPointCloudBuffers removeObject:v5];
      v10 = 1;
    }

    self->_numberOfReceivedPointCloudFramesBeforeEmitted = v10;
  }

  else
  {
    BWSampleBufferSetAttachedMedia(a3, 0x1F219CD30, [(NSMutableArray *)self->_latestPointCloudBuffers objectAtIndexedSubscript:0]);
    self->_numberOfReceivedPointCloudFramesBeforeEmitted = 0;
    return 1;
  }

  return v9;
}

@end