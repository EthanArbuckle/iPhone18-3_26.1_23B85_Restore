@interface BWDockKitNode
- (BWDockKitNode)initWithIsRunningForContinuityCapture:(BOOL)capture cinematicVideoEnabled:(BOOL)enabled captureDevice:(id)device;
- (void)dealloc;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input;
@end

@implementation BWDockKitNode

- (BWDockKitNode)initWithIsRunningForContinuityCapture:(BOOL)capture cinematicVideoEnabled:(BOOL)enabled captureDevice:(id)device
{
  v14.receiver = self;
  v14.super_class = BWDockKitNode;
  v8 = [(BWNode *)&v14 init];
  if (v8)
  {
    v9 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v8];
    v10 = objc_alloc_init(BWVideoFormatRequirements);
    [(BWNodeInput *)v9 setFormatRequirements:v10];

    [(BWNodeInput *)v9 setPassthroughMode:1];
    [(BWNode *)v8 addInput:v9];

    v11 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v8];
    v12 = objc_alloc_init(BWVideoFormatRequirements);
    [(BWNodeOutput *)v11 setFormatRequirements:v12];

    [(BWNodeOutput *)v11 setPassthroughMode:1];
    [(BWNode *)v8 addOutput:v11];

    v8->_deviceOrientationMonitor = objc_alloc_init(BWDeviceOrientationMonitor);
    v8->_isRunningForContinuityCapture = capture;
    v8->_cinematicVideoEnabled = enabled;
    v8->_dockingNotificationAgent = 0;
    [(BWNode *)v8 setSupportsLiveReconfiguration:1];
    [(BWNode *)v8 setSupportsPrepareWhileRunning:1];
    v8->_captureDevice = device;
  }

  return v8;
}

- (void)dealloc
{
  [(BWDeviceOrientationMonitor *)self->_deviceOrientationMonitor stop];

  [(DKTrackingAgent *)self->_agent stop];
  [(DKNotificationAgent *)self->_dockingNotificationAgent deregisterNotifications];

  v3.receiver = self;
  v3.super_class = BWDockKitNode;
  [(BWNode *)&v3 dealloc];
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input
{
  if (DockKitCoreLibraryCore() && getDKTrackingAgentClass())
  {
    if (!self->_agent)
    {
      if (self->_clientApplicationID)
      {
        clientApplicationID = self->_clientApplicationID;
      }

      else
      {
        clientApplicationID = &stru_1F216A3D0;
      }

      if (self->_isRunningForContinuityCapture)
      {
        if (dword_1EB58E1A0)
        {
          LODWORD(t2.a) = 0;
          LOBYTE(type.a) = 0;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        clientApplicationID = @"continuitycapture";
      }

      self->_agent = objc_alloc(getDKTrackingAgentClass());
      v9 = NSSelectorFromString(&cfstr_Initwithconfig.isa);
      v10 = objc_opt_respondsToSelector();
      agent = self->_agent;
      if (v10)
      {
        v87[0] = @"appID";
        v87[1] = @"customInferenceEnabled";
        v88[0] = clientApplicationID;
        v88[1] = [MEMORY[0x1E696AD98] numberWithBool:self->_customInferenceEnabled];
        -[DKTrackingAgent performSelector:withObject:](agent, "performSelector:withObject:", v9, [MEMORY[0x1E695DF20] dictionaryWithObjects:v88 forKeys:v87 count:2]);
      }

      else
      {
        [(DKTrackingAgent *)self->_agent initWithClientApplicationID:clientApplicationID];
      }

      [(BWDeviceOrientationMonitor *)self->_deviceOrientationMonitor start:v60];
    }

    if (!self->_dockingNotificationAgent && getDKNotificationAgentClass())
    {
      self->_dockingNotificationAgent = [objc_alloc(getDKNotificationAgentClass()) init];
      objc_initWeak(location, self);
      dockingNotificationAgent = self->_dockingNotificationAgent;
      v85[0] = MEMORY[0x1E69E9820];
      v85[1] = 3221225472;
      v85[2] = __45__BWDockKitNode_renderSampleBuffer_forInput___block_invoke;
      v85[3] = &unk_1E799BDF0;
      objc_copyWeak(&v86, location);
      [(DKNotificationAgent *)dockingNotificationAgent registerNotifications:v85];
      if ([(DKNotificationAgent *)self->_dockingNotificationAgent isTracking])
      {
        [objc_loadWeak(&self->_cinematicVideoFocusDetectionsProvider) setFocusDetectionProviderEnabled:1];
        [(BWFigVideoCaptureDevice *)self->_captureDevice setDockedTrackingActive:1];
      }

      objc_destroyWeak(&v86);
      objc_destroyWeak(location);
    }

    v13 = self->_agent;
    if (v13 && ([(DKTrackingAgent *)v13 tracking]& 1) != 0)
    {
      if ([(BWGraph *)[(BWNode *)self graph] memoryAnalyticsReportingEnabled])
      {
        [(BWMemoryAnalyticsPayload *)[(BWGraph *)[(BWNode *)self graph] memoryAnalyticsPayload] setDockKitDeviceConnected:1];
      }

      ImageBuffer = CMSampleBufferGetImageBuffer(buffer);
      if (ImageBuffer)
      {
        v15 = ImageBuffer;
        v16 = CMGetAttachment(buffer, *off_1E798A3C8, 0);
        if (v16)
        {
          v17 = v16;
          v83 = 0u;
          v84 = 0u;
          v82 = 0u;
          v18 = CMGetAttachment(buffer, *MEMORY[0x1E6960470], 0);
          if (v18)
          {
            v19 = v18;
            if ([v18 length] == 48)
            {
              [v19 getBytes:&v82 length:{objc_msgSend(v19, "length")}];
              v20 = v82;
              v21 = DWORD1(v83);
              v66 = *&v84;
              v22 = *(&v84 + 1);
              v80[0] = [MEMORY[0x1E696AD98] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(DWORD1(v84), v82))}];
              v80[1] = &unk_1F2246900;
              v80[2] = [MEMORY[0x1E696AD98] numberWithFloat:v66];
              v81[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v80 count:3];
              v79[0] = &unk_1F2246900;
              LODWORD(v23) = v21;
              v79[1] = [MEMORY[0x1E696AD98] numberWithFloat:v23];
              *&v24 = v22;
              v79[2] = [MEMORY[0x1E696AD98] numberWithFloat:v24];
              v81[1] = [MEMORY[0x1E695DEC8] arrayWithObjects:v79 count:3];
              v81[2] = &unk_1F22499A8;
              v68 = [MEMORY[0x1E695DEC8] arrayWithObjects:v81 count:3];
              v25 = [v17 objectForKeyedSubscript:*off_1E798B220];
              if (v25)
              {
                v76 = 0;
                v77 = 0;
                __asm { FMOV            V0.2D, #1.0 }

                v78 = _Q0;
                FigCFDictionaryGetCGRectIfPresent();
                if (*&v78 != 1.0 || *(&v78 + 1) != 1.0)
                {
                  Width = CVPixelBufferGetWidth(v15);
                  Height = CVPixelBufferGetHeight(v15);
                  v33 = v78;
                  memset(location, 0, 48);
                  CGAffineTransformMakeTranslation(location, -0.0, -0.0);
                  CGAffineTransformMakeScale(&t2, *&v33, *(&v33 + 1));
                  type = location[0];
                  CGAffineTransformConcat(&v75, &type, &t2);
                  location[0] = v75;
                  FigCaptureMakeMirrorAndRotateVideoTransform((*&v33 * Width + -1.0), (*(&v33 + 1) * Height + -1.0), 0, 0, &t2);
                  type = location[0];
                  CGAffineTransformConcat(&v75, &type, &t2);
                  location[0] = v75;
                  v34 = v75.ty + v75.d * v22 + v75.b * *&v66;
                  v35 = v75.tx + v75.c * v22 + v75.a * *&v66;
                  v36 = v34;
                  LODWORD(v34) = v20;
                  v71[0] = [MEMORY[0x1E696AD98] numberWithFloat:v34];
                  v71[1] = &unk_1F2246900;
                  *&v37 = v35;
                  v71[2] = [MEMORY[0x1E696AD98] numberWithFloat:v37];
                  v72[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v71 count:3];
                  v70[0] = &unk_1F2246900;
                  LODWORD(v38) = v21;
                  v70[1] = [MEMORY[0x1E696AD98] numberWithFloat:v38];
                  *&v39 = v36;
                  v70[2] = [MEMORY[0x1E696AD98] numberWithFloat:v39];
                  v72[1] = [MEMORY[0x1E695DEC8] arrayWithObjects:v70 count:3];
                  v72[2] = &unk_1F22499C0;
                  v68 = [v68 arrayByAddingObjectsFromArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v72, 3)}];
                }
              }

              v40 = MEMORY[0x1E695FF58];
              if (*MEMORY[0x1E695FF58] == 1)
              {
                kdebug_trace();
              }

              v41 = [v17 objectForKeyedSubscript:*off_1E798B540];
              mostRecentPortraitLandscapeOrientation = [(BWDeviceOrientationMonitor *)self->_deviceOrientationMonitor mostRecentPortraitLandscapeOrientation];
              v43 = [MEMORY[0x1E695F658] imageWithCVImageBuffer:v15];
              if (v43)
              {
                v44 = v43;
                if (self->_cinematicVideoEnabled && objc_loadWeak(&self->_cinematicVideoFocusDetectionsProvider) && [objc_loadWeak(&self->_cinematicVideoFocusDetectionsProvider) focusDetectionProviderEnabled])
                {
                  copyCinematicVideoFocusDetections = [objc_loadWeak(&self->_cinematicVideoFocusDetectionsProvider) copyCinematicVideoFocusDetections];
                  firstObject = [copyCinematicVideoFocusDetections firstObject];
                  if (firstObject)
                  {
                    v46 = firstObject;
                    v64 = objc_alloc(getDKFocusObservationClass());
                    identifier = [v46 identifier];
                    [v46 rect];
                    v51 = [v64 initWithIdentifier:identifier rect:objc_msgSend(v46 focusStrong:{"userFocusStrong"), v47, v48, v49, v50}];
                    v63 = self->_agent;
                    v65 = v51;
                    v69 = v51;
                    v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v69 count:1];
                    [v44 extent];
                    [(DKTrackingAgent *)v63 trackWithFocusObservations:v52 detectedObjectsInfo:v25 cameraPortType:v41 cameraIntrinsics:v68 referenceDimensions:mostRecentPortraitLandscapeOrientation orientation:&__block_literal_global_117 completionHandler:v53, v54];
                  }
                }

                else
                {
                  v55 = self->_agent;
                  [v44 extent];
                  [(DKTrackingAgent *)v55 trackWithDetectedObjectsInfo:v25 image:v44 cameraPortType:v41 cameraIntrinsics:v68 referenceDimensions:mostRecentPortraitLandscapeOrientation orientation:&__block_literal_global_33 completionHandler:v56, v57];
                }

                if (*v40 == 1)
                {
                  kdebug_trace();
                }

                v58 = [MEMORY[0x1E695DFD8] setWithArray:{-[DKTrackingAgent getSelectedFaceIds](self->_agent, "getSelectedFaceIds")}];
                v59 = [MEMORY[0x1E695DFD8] setWithArray:{-[DKTrackingAgent getSelectedBodyIds](self->_agent, "getSelectedBodyIds")}];
                if ([v58 count])
                {
                  CMSetAttachment(buffer, *off_1E798A350, v58, 1u);
                }

                if ([v59 count])
                {
                  CMSetAttachment(buffer, *off_1E798A348, v59, 1u);
                }
              }
            }
          }
        }
      }
    }

    [(BWNodeOutput *)self->super._output emitSampleBuffer:buffer];
  }

  else
  {
    output = self->super._output;

    [(BWNodeOutput *)output emitSampleBuffer:buffer];
  }
}

uint64_t __45__BWDockKitNode_renderSampleBuffer_forInput___block_invoke(uint64_t a1, uint64_t a2)
{
  if (dword_1EB58E1A0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [objc_msgSend(objc_loadWeak((a1 + 32)) "cinematicVideoFocusDetectionsProvider")];
  return [objc_msgSend(objc_loadWeak((a1 + 32)) "captureDevice")];
}

@end