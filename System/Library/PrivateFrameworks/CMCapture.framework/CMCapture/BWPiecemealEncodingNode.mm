@interface BWPiecemealEncodingNode
- (BWPiecemealEncodingNode)initWithNodeConfiguration:(id)configuration;
- (void)_releaseResources;
- (void)dealloc;
- (void)didReachEndOfDataForConfigurationID:(id)d input:(id)input;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input;
@end

@implementation BWPiecemealEncodingNode

- (BWPiecemealEncodingNode)initWithNodeConfiguration:(id)configuration
{
  v8.receiver = self;
  v8.super_class = BWPiecemealEncodingNode;
  v4 = [(BWNode *)&v8 init];
  if (v4)
  {
    v5 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v4];
    [(BWNodeInput *)v5 setFormatRequirements:+[BWVideoFormatRequirements formatRequirements]];
    [(BWNodeInput *)v5 setPassthroughMode:1];
    [(BWNode *)v4 addInput:v5];
    v6 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v4];
    [(BWNodeOutput *)v6 setFormatRequirements:+[BWVideoFormatRequirements formatRequirements]];
    [(BWNodeOutput *)v6 setPassthroughMode:1];
    [(BWNode *)v4 addOutput:v6];
    v4->_nodeConfiguration = configuration;
    [(BWNode *)v4 setSupportsLiveReconfiguration:1];
    [(BWNode *)v4 setSupportsPrepareWhileRunning:1];
  }

  return v4;
}

- (void)dealloc
{
  [(BWPiecemealEncodingNode *)self _releaseResources];
  v3.receiver = self;
  v3.super_class = BWPiecemealEncodingNode;
  [(BWNode *)&v3 dealloc];
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input
{
  if (!buffer)
  {
    v7 = 0;
    v6 = 0;
LABEL_22:
    FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    [objc_msgSend(v6 "requestedSettings")];
    v22 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(FrameworkRadarComponent, v22, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWPiecemealEncodingNode.m", 152, @"LastShownDate:BWPiecemealEncodingNode.m:152", @"LastShownBuild:BWPiecemealEncodingNode.m:152", 0);
    free(v22);
    v23 = [BWNodeError newError:4294954513 sourceNode:self stillImageSettings:v6 metadata:v7];
    [(BWNodeOutput *)self->super._output emitNodeError:v23];

    return;
  }

  v6 = CMGetAttachment(buffer, @"StillSettings", 0);
  if (!v6)
  {
    v7 = 0;
    goto LABEL_22;
  }

  v7 = CMGetAttachment(buffer, *off_1E798A3C8, 0);
  if (!v7 || !self->_photoEncoderController)
  {
    goto LABEL_22;
  }

  if (BWPhotoEncoderSupportsPiecemealEnocding(v6))
  {
    v8 = [CMGetAttachment(buffer @"StillImageBufferFrameType"];
    if (v8 != 40)
    {
      v9 = v8;
      optimizedEnhancedResolutionDepthPipelineEnabled = [(BWStillImageNodeConfiguration *)self->_nodeConfiguration optimizedEnhancedResolutionDepthPipelineEnabled];
      if ((v9 != 13 || !optimizedEnhancedResolutionDepthPipelineEnabled) && ([CMGetAttachment(buffer @"NonProcessedReferenceFrame"] & 1) == 0)
      {
        v11 = [v7 objectForKeyedSubscript:*off_1E798B540];
        if ([v11 isEqualToString:{objc_msgSend(objc_msgSend(v6, "captureSettings"), "masterPortType")}])
        {
          v12 = [(BWPhotoEncoderController *)self->_photoEncoderController inputForStillImageSettings:v6 portType:v11 portraitAdjustedImage:0 optionalSampleBuffer:0 forEarlyEncoding:1];
          if (v12)
          {
            v13 = v12;
            v14 = BWStillImageProcessingFlagsForSampleBuffer(buffer);
            [v13 addSbufForPiecemealEncoding:buffer attachedMediakey:@"PrimaryFormat" primaryImageMetadata:v7 processingFlags:v14];
            v15 = [MEMORY[0x1E695DF70] arrayWithObject:0x1F217BF50];
            [v15 addObjectsFromArray:BWPhotoEncoderSmartStylesAttachedMediaKeysForPiecemealEncoding(v6)];
            v27 = 0u;
            v28 = 0u;
            v25 = 0u;
            v26 = 0u;
            v16 = [v15 countByEnumeratingWithState:&v25 objects:v24 count:16];
            if (v16)
            {
              v17 = v16;
              v18 = *v26;
              do
              {
                for (i = 0; i != v17; ++i)
                {
                  if (*v26 != v18)
                  {
                    objc_enumerationMutation(v15);
                  }

                  [v13 addSbufForPiecemealEncoding:BWSampleBufferGetAttachedMedia(buffer attachedMediakey:*(*(&v25 + 1) + 8 * i)) primaryImageMetadata:*(*(&v25 + 1) + 8 * i) processingFlags:{v7, v14}];
                }

                v17 = [v15 countByEnumeratingWithState:&v25 objects:v24 count:16];
              }

              while (v17);
            }
          }
        }
      }
    }
  }

  [(BWNodeOutput *)self->super._output emitSampleBuffer:buffer];
}

- (void)_releaseResources
{
  self->_nodeConfiguration = 0;

  self->_photoEncoderController = 0;
}

- (void)didReachEndOfDataForConfigurationID:(id)d input:(id)input
{
  if (!d)
  {
    [(BWPiecemealEncodingNode *)self _releaseResources];
  }

  v7.receiver = self;
  v7.super_class = BWPiecemealEncodingNode;
  [(BWNode *)&v7 didReachEndOfDataForConfigurationID:d input:input];
}

@end