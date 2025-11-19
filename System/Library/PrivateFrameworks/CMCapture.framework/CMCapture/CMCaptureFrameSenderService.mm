@interface CMCaptureFrameSenderService
+ (void)initialize;
- (CMCaptureFrameSenderService)initWithEndpointType:(id)a3 endpointCameraUniqueID:(id)a4;
- (CMCaptureFrameSenderService)initWithEndpointType:(id)a3 endpointPID:(int)a4 endpointProxyPID:(int)a5 endpointAuditToken:(id)a6 endpointProxyAuditToken:(id)a7 endpointCameraUniqueID:(id)a8;
- (int)sendFrame:(opaqueCMSampleBuffer *)a3;
- (opaqueCMSampleBuffer)_newSampleBufferToSendFromSampleBuffer:(opaqueCMSampleBuffer *)a3;
- (void)_addConnection:(id)a3;
- (void)_cleanupSendingPixelBufferMachinery;
- (void)dealloc;
@end

@implementation CMCaptureFrameSenderService

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (CMCaptureFrameSenderService)initWithEndpointType:(id)a3 endpointCameraUniqueID:(id)a4
{
  memset(v9, 0, sizeof(v9));
  v7 = [MEMORY[0x1E695DEF0] dataWithBytes:v9 length:{32, FigCaptureGetCurrentProcessAuditToken(v9)}];
  return [(CMCaptureFrameSenderService *)self initWithEndpointType:a3 endpointPID:getpid() endpointProxyPID:0 endpointAuditToken:v7 endpointProxyAuditToken:0 endpointCameraUniqueID:a4];
}

- (CMCaptureFrameSenderService)initWithEndpointType:(id)a3 endpointPID:(int)a4 endpointProxyPID:(int)a5 endpointAuditToken:(id)a6 endpointProxyAuditToken:(id)a7 endpointCameraUniqueID:(id)a8
{
  v30.receiver = self;
  v30.super_class = CMCaptureFrameSenderService;
  v14 = [(CMCaptureFrameSenderService *)&v30 init];
  if (v14)
  {
    *(v14 + 1) = [objc_msgSend(MEMORY[0x1E696AFB0] "UUID")];
    *(v14 + 2) = [objc_alloc(MEMORY[0x1E696AEC0]) initWithString:a3];
    v14[12] = a4;
    v14[13] = a5;
    *(v14 + 4) = a6;
    *(v14 + 5) = a7;
    v15 = objc_alloc(MEMORY[0x1E696AEC0]);
    if (a8)
    {
      v16 = a8;
    }

    else
    {
      v16 = @"unknown";
    }

    *(v14 + 3) = [v15 initWithString:v16];
    v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v18 = dispatch_queue_create("com.apple.CMCapture.CMCaptureFrameSender", v17);
    *(v14 + 7) = v18;
    v19 = xpc_connection_create(0, v18);
    *(v14 + 8) = v19;
    *(v14 + 9) = xpc_endpoint_create(v19);
    *(v14 + 10) = objc_alloc_init(MEMORY[0x1E695DF70]);
    v20 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    *(v14 + 11) = dispatch_queue_create("com.apple.CMCapture.CMCaptureFrameSender.clients", v20);
    objc_initWeak(&location, v14);
    v21 = *(v14 + 8);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __147__CMCaptureFrameSenderService_initWithEndpointType_endpointPID_endpointProxyPID_endpointAuditToken_endpointProxyAuditToken_endpointCameraUniqueID___block_invoke;
    handler[3] = &unk_1E798F978;
    objc_copyWeak(&v28, &location);
    xpc_connection_set_event_handler(v21, handler);
    xpc_connection_activate(*(v14 + 8));
    if (initWithEndpointType_endpointPID_endpointProxyPID_endpointAuditToken_endpointProxyAuditToken_endpointCameraUniqueID__initAtExitHandler != -1)
    {
      [CMCaptureFrameSenderService initWithEndpointType:endpointPID:endpointProxyPID:endpointAuditToken:endpointProxyAuditToken:endpointCameraUniqueID:];
    }

    if (sRunningInsideCameracaptured == 1)
    {
      if ([CMCaptureFrameSenderEndpointsServerSideSingleton addEndpoint:*(v14 + 9) endpointUniqueID:*(v14 + 1) endpointType:*(v14 + 2) endpointPID:v14[12] endpointProxyPID:v14[13] endpointAuditToken:*(v14 + 4) endpointProxyAuditToken:*(v14 + 5) endpointCameraUniqueID:*(v14 + 3)])
      {
        [objc_msgSend(MEMORY[0x1E696ABB0] "defaultCenter")];
      }
    }

    else
    {
      FigCaptureSourceRemotePublishFrameSenderServerEndpoint(*(v14 + 9), *(v14 + 1), *(v14 + 2), v14[12], v14[13], *(v14 + 4), *(v14 + 5), *(v14 + 3));
    }

    *(v14 + 12) = 0;
    *(v14 + 13) = 0;
    *(v14 + 19) = 0;
    *(v14 + 20) = 0;
    v14[42] = 5;
    *(v14 + 172) = 0;
    *(v14 + 14) = 0;
    *(v14 + 15) = 0;
    *(v14 + 17) = 0x4014000000000000;
    *(v14 + 18) = 0;
    v22 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(v14 + 11));
    *(v14 + 16) = v22;
    dispatch_source_set_timer(v22, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    v23 = *(v14 + 16);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __147__CMCaptureFrameSenderService_initWithEndpointType_endpointPID_endpointProxyPID_endpointAuditToken_endpointProxyAuditToken_endpointCameraUniqueID___block_invoke_3;
    v25[3] = &unk_1E798F9C0;
    objc_copyWeak(&v26, &location);
    dispatch_source_set_event_handler(v23, v25);
    dispatch_activate(*(v14 + 16));
    objc_destroyWeak(&v26);
    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);
  }

  return v14;
}

void __147__CMCaptureFrameSenderService_initWithEndpointType_endpointPID_endpointProxyPID_endpointAuditToken_endpointProxyAuditToken_endpointCameraUniqueID___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (MEMORY[0x1B26F2E20](a2) == MEMORY[0x1E69E9E68])
    {
      WeakRetained = objc_loadWeakRetained((a1 + 32));
      if (WeakRetained)
      {
        v5 = WeakRetained;
        [WeakRetained _addConnection:a2];
      }
    }
  }
}

uint64_t __147__CMCaptureFrameSenderService_initWithEndpointType_endpointPID_endpointProxyPID_endpointAuditToken_endpointProxyAuditToken_endpointCameraUniqueID___block_invoke_2()
{
  if (FigCaptureCurrentProcessIsCameracaptured())
  {
    v0 = 1;
  }

  else
  {
    v0 = FigCaptureCurrentProcessIsMediaserverd() != 0;
  }

  sRunningInsideCameracaptured = v0;

  return atexit(cfss_atExitHandler);
}

void __147__CMCaptureFrameSenderService_initWithEndpointType_endpointPID_endpointProxyPID_endpointAuditToken_endpointProxyAuditToken_endpointCameraUniqueID___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    if (dword_1ED8441D0)
    {
      v7 = 0;
      v6 = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [v2 _cleanupSendingPixelBufferMachinery];
  }
}

- (void)dealloc
{
  if (sRunningInsideCameracaptured == 1)
  {
    if ([CMCaptureFrameSenderEndpointsServerSideSingleton removeEndpointWithUniqueID:self->_endpointUniqueID])
    {
      [objc_msgSend(MEMORY[0x1E696ABB0] "defaultCenter")];
    }
  }

  else
  {
    FigCaptureSourceRemoteSuppressFrameSenderServerEndpoint(self->_endpointUniqueID);
  }

  reapSendingPixelTransferSessionTimer = self->_reapSendingPixelTransferSessionTimer;
  if (reapSendingPixelTransferSessionTimer)
  {
    dispatch_source_cancel(reapSendingPixelTransferSessionTimer);

    self->_reapSendingPixelTransferSessionTimer = 0;
  }

  listener = self->_listener;
  if (listener)
  {
    xpc_connection_cancel(listener);
  }

  [(CMCaptureFrameSenderService *)self _cleanupSendingPixelBufferMachinery];
  v5.receiver = self;
  v5.super_class = CMCaptureFrameSenderService;
  [(CMCaptureFrameSenderService *)&v5 dealloc];
}

- (void)_addConnection:(id)a3
{
  objc_initWeak(&location, self);
  clientQueue = self->_clientQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__CMCaptureFrameSenderService__addConnection___block_invoke;
  block[3] = &unk_1E798F9E8;
  objc_copyWeak(&v7, &location);
  block[4] = a3;
  dispatch_async(clientQueue, block);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __46__CMCaptureFrameSenderService__addConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v2 = [[CMCaptureFrameSenderClient alloc] initWithConnection:*(a1 + 32) queue:*(WeakRetained + 11)];
    if (v2)
    {
      v3 = v2;
      [*(WeakRetained + 10) addObject:v2];
    }
  }
}

- (void)_cleanupSendingPixelBufferMachinery
{
  reapSendingPixelTransferSessionTimer = self->_reapSendingPixelTransferSessionTimer;
  if (reapSendingPixelTransferSessionTimer)
  {
    if (dword_1ED8441D0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      reapSendingPixelTransferSessionTimer = self->_reapSendingPixelTransferSessionTimer;
    }

    dispatch_source_set_timer(reapSendingPixelTransferSessionTimer, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
  }

  self->_sendingPixelBufferIsAWeirdSize = 0;
  self->_sendingPixelBufferHeight = 0;
  *&self->_sendingPixelBufferPixelFormatType = 0;
  self->_sendingPixelBufferWidth = 0;
  sendingPixelBufferPool = self->_sendingPixelBufferPool;
  if (sendingPixelBufferPool)
  {
    CFRelease(sendingPixelBufferPool);
    self->_sendingPixelBufferPool = 0;
  }

  sendingSampleBufferFormatDescription = self->_sendingSampleBufferFormatDescription;
  if (sendingSampleBufferFormatDescription)
  {
    CFRelease(sendingSampleBufferFormatDescription);
    self->_sendingSampleBufferFormatDescription = 0;
  }

  sendingPixelTransferSession = self->_sendingPixelTransferSession;
  if (sendingPixelTransferSession)
  {
    VTPixelTransferSessionInvalidate(sendingPixelTransferSession);
    v8 = self->_sendingPixelTransferSession;
    if (v8)
    {
      CFRelease(v8);
      self->_sendingPixelTransferSession = 0;
    }
  }

  sendingPixelRotationSession = self->_sendingPixelRotationSession;
  if (sendingPixelRotationSession)
  {
    VTPixelRotationSessionInvalidate(sendingPixelRotationSession);
    v10 = self->_sendingPixelRotationSession;
    if (v10)
    {
      CFRelease(v10);
      self->_sendingPixelRotationSession = 0;
    }
  }
}

- (opaqueCMSampleBuffer)_newSampleBufferToSendFromSampleBuffer:(opaqueCMSampleBuffer *)a3
{
  sampleBufferOut = 0;
  pixelBufferOut = 0;
  ImageBuffer = CMSampleBufferGetImageBuffer(a3);
  if (!ImageBuffer)
  {
    sampleBufferOut = CFRetain(a3);
    goto LABEL_77;
  }

  v6 = ImageBuffer;
  Width = CVPixelBufferGetWidth(ImageBuffer);
  Height = CVPixelBufferGetHeight(v6);
  PixelFormatType = CVPixelBufferGetPixelFormatType(v6);
  v10 = [CMGetAttachment(a3 @"CrossPlatformRotationDegrees"];
  v11 = v10;
  v12 = self->_sendingPixelBufferWidth == Width && self->_sendingPixelBufferHeight == Height && self->_sendingPixelBufferPixelFormatType == PixelFormatType && self->_crossPlatformRotationDegrees == v10;
  sendingPixelBufferPool = self->_sendingPixelBufferPool;
  if (sendingPixelBufferPool && !v12)
  {
    [(CMCaptureFrameSenderService *)self _cleanupSendingPixelBufferMachinery];
    sendingPixelBufferPool = self->_sendingPixelBufferPool;
  }

  v14 = MEMORY[0x1E695E480];
  v15 = &unk_1ED844000;
  if (sendingPixelBufferPool)
  {
    if (!self->_sendingPixelBufferIsAWeirdSize)
    {
      goto LABEL_37;
    }

    goto LABEL_30;
  }

  self->_sendingPixelBufferWidth = Width;
  self->_sendingPixelBufferHeight = Height;
  self->_sendingPixelBufferPixelFormatType = PixelFormatType;
  self->_crossPlatformRotationDegrees = v11;
  if (v11 == 270)
  {
    v16 = Width;
  }

  else
  {
    v16 = Height;
  }

  if (v11 == 270)
  {
    v17 = Height;
  }

  else
  {
    v17 = Width;
  }

  if (v11 == 90)
  {
    v18 = Height;
  }

  else
  {
    Width = v16;
    v18 = v17;
  }

  v79[0] = *MEMORY[0x1E6966208];
  v80[0] = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v18];
  v79[1] = *MEMORY[0x1E69660B8];
  v80[1] = [MEMORY[0x1E696AD98] numberWithUnsignedLong:Width];
  v79[2] = *MEMORY[0x1E6966130];
  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_sendingPixelBufferPixelFormatType];
  v79[3] = *MEMORY[0x1E69660D8];
  v80[2] = v19;
  v80[3] = MEMORY[0x1E695E0F8];
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v80 forKeys:v79 count:4];
  v77[0] = *MEMORY[0x1E6966160];
  v21 = [MEMORY[0x1E696AD98] numberWithInt:self->_sendingPixelBufferPoolSize];
  v77[1] = *MEMORY[0x1E6966158];
  v78[0] = v21;
  v78[1] = &unk_1F22424F0;
  v22 = CVPixelBufferPoolCreate(*v14, [MEMORY[0x1E695DF20] dictionaryWithObjects:v78 forKeys:v77 count:2], v20, &self->_sendingPixelBufferPool);
  v15 = &unk_1ED844000;
  v23 = v22;
  if (dword_1ED8441D0)
  {
    v76 = 0;
    v75 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v14 = MEMORY[0x1E695E480];
    v15 = &unk_1ED844000;
  }

  if (v23)
  {
    [CMCaptureFrameSenderService _newSampleBufferToSendFromSampleBuffer:];
    goto LABEL_89;
  }

  v25 = self->_sendingPixelBufferWidth >= 0x4000 && self->_sendingPixelBufferHeight < 0x21;
  self->_sendingPixelBufferIsAWeirdSize = v25;
  if (v25)
  {
LABEL_30:
    if (v15[116])
    {
      v76 = 0;
      v75 = OS_LOG_TYPE_DEFAULT;
      v26 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v27 = v76;
      if (os_log_type_enabled(v26, v75))
      {
        v28 = v27;
      }

      else
      {
        v28 = v27 & 0xFFFFFFFE;
      }

      if (v28)
      {
        sendingPixelBufferWidth = self->_sendingPixelBufferWidth;
        sendingPixelBufferHeight = self->_sendingPixelBufferHeight;
        sendingPixelBufferPixelFormatType = self->_sendingPixelBufferPixelFormatType;
        *timingArrayEntriesNeededOut = 136315906;
        *&timingArrayEntriesNeededOut[4] = "[CMCaptureFrameSenderService _newSampleBufferToSendFromSampleBuffer:]";
        v68 = 1024;
        v69 = sendingPixelBufferWidth;
        v70 = 1024;
        v71 = sendingPixelBufferHeight;
        v72 = 1024;
        v73 = sendingPixelBufferPixelFormatType;
        LODWORD(v60) = 30;
        v59 = timingArrayEntriesNeededOut;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

LABEL_37:
  p_sendingPixelTransferSession = &self->_sendingPixelTransferSession;
  if (self->_sendingPixelTransferSession || self->_sendingPixelRotationSession)
  {
    goto LABEL_44;
  }

  v33 = *v14;
  if (!self->_crossPlatformRotationDegrees)
  {
    if (VTPixelTransferSessionCreate(v33, &self->_sendingPixelTransferSession))
    {
      [CMCaptureFrameSenderService _newSampleBufferToSendFromSampleBuffer:];
      goto LABEL_89;
    }

    goto LABEL_44;
  }

  if (VTPixelRotationSessionCreate(v33, &self->_sendingPixelRotationSession))
  {
    [CMCaptureFrameSenderService _newSampleBufferToSendFromSampleBuffer:];
    goto LABEL_89;
  }

  sendingPixelRotationSession = self->_sendingPixelRotationSession;
  v35 = *MEMORY[0x1E6983D98];
  v36 = FigCaptureVTRotationFromDegrees(360 - self->_crossPlatformRotationDegrees);
  if (!VTSessionSetProperty(sendingPixelRotationSession, v35, v36))
  {
LABEL_44:
    v37 = *v14;
    if (CVPixelBufferPoolCreatePixelBuffer(*v14, self->_sendingPixelBufferPool, &pixelBufferOut))
    {
      [CMCaptureFrameSenderService _newSampleBufferToSendFromSampleBuffer:];
      goto LABEL_77;
    }

    if (*p_sendingPixelTransferSession)
    {
      if (!VTPixelTransferSessionTransferImage(*p_sendingPixelTransferSession, v6, pixelBufferOut))
      {
        goto LABEL_47;
      }
    }

    else if (!VTPixelRotationSessionRotateImage(self->_sendingPixelRotationSession, v6, pixelBufferOut))
    {
LABEL_47:
      p_sendingSampleBufferFormatDescription = &self->_sendingSampleBufferFormatDescription;
      if (!self->_sendingSampleBufferFormatDescription && CMVideoFormatDescriptionCreateForImageBuffer(v37, pixelBufferOut, &self->_sendingSampleBufferFormatDescription))
      {
        [CMCaptureFrameSenderService _newSampleBufferToSendFromSampleBuffer:];
        goto LABEL_89;
      }

      *timingArrayEntriesNeededOut = 0;
      v39 = *(MEMORY[0x1E6960CF0] + 48);
      *&timingArrayOut.presentationTimeStamp.timescale = *(MEMORY[0x1E6960CF0] + 32);
      *&timingArrayOut.decodeTimeStamp.value = v39;
      timingArrayOut.decodeTimeStamp.epoch = *(MEMORY[0x1E6960CF0] + 64);
      v40 = *(MEMORY[0x1E6960CF0] + 16);
      *&timingArrayOut.duration.value = *MEMORY[0x1E6960CF0];
      *&timingArrayOut.duration.epoch = v40;
      if (CMSampleBufferGetSampleTimingInfoArray(a3, 1, 0, timingArrayEntriesNeededOut))
      {
        [CMCaptureFrameSenderService _newSampleBufferToSendFromSampleBuffer:];
        goto LABEL_77;
      }

      if (*timingArrayEntriesNeededOut && CMSampleBufferGetSampleTimingInfoArray(a3, *timingArrayEntriesNeededOut, &timingArrayOut, timingArrayEntriesNeededOut))
      {
        [CMCaptureFrameSenderService _newSampleBufferToSendFromSampleBuffer:];
        goto LABEL_77;
      }

      v41 = CMSampleBufferCreateForImageBuffer(v37, pixelBufferOut, 1u, 0, 0, *p_sendingSampleBufferFormatDescription, &timingArrayOut, &sampleBufferOut);
      if (v41 == -12743)
      {
        if (*p_sendingSampleBufferFormatDescription)
        {
          CFRelease(*p_sendingSampleBufferFormatDescription);
          *p_sendingSampleBufferFormatDescription = 0;
        }

        if (CMVideoFormatDescriptionCreateForImageBuffer(v37, pixelBufferOut, &self->_sendingSampleBufferFormatDescription))
        {
          [CMCaptureFrameSenderService _newSampleBufferToSendFromSampleBuffer:];
          goto LABEL_77;
        }

        v41 = CMSampleBufferCreateForImageBuffer(v37, pixelBufferOut, 1u, 0, 0, *p_sendingSampleBufferFormatDescription, &timingArrayOut, &sampleBufferOut);
      }

      if (v41)
      {
        [CMCaptureFrameSenderService _newSampleBufferToSendFromSampleBuffer:];
        goto LABEL_77;
      }

      v42 = CMGetAttachment(a3, *off_1E798A3C8, 0);
      v43 = [v42 objectForKeyedSubscript:*off_1E798B540];
      v44 = [v42 objectForKeyedSubscript:*off_1E798B238];
      if ([v43 isEqualToString:*off_1E798A0F8])
      {
        LOBYTE(v45) = 0;
      }

      else
      {
        v45 = [v43 isEqualToString:*off_1E798A0E0] ^ 1;
      }

      IsExtensionDeviceType = BWDeviceTypeIsExtensionDeviceType([v44 integerValue]);
      v47 = [MEMORY[0x1E695DF90] dictionary];
      [v47 setObject:v43 forKeyedSubscript:@"PortType"];
      [v47 setObject:v44 forKeyedSubscript:@"DeviceType"];
      [v47 setObject:objc_msgSend(v42 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798B220), @"DetectedObjectsInfo"}];
      [v47 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", IsExtensionDeviceType), @"IsExternalCamera"}];
      v66[0] = 0x1F216A8D0;
      v66[1] = @"MirroredVertical";
      v66[2] = @"MirroredHorizontal";
      v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:3];
      v62 = 0u;
      v63 = 0u;
      v64 = 0u;
      v65 = 0u;
      v49 = [v48 countByEnumeratingWithState:&v62 objects:v61 count:16];
      if (!v49)
      {
LABEL_76:
        CMSetAttachment(sampleBufferOut, @"MetadataDictionary", v47, 1u);
        goto LABEL_77;
      }

      v50 = v49;
      v51 = *v63;
      v52 = v45 | IsExtensionDeviceType;
LABEL_63:
      v53 = 0;
      while (1)
      {
        if (*v63 != v51)
        {
          objc_enumerationMutation(v48);
        }

        v54 = *(*(&v62 + 1) + 8 * v53);
        v55 = CMGetAttachment(v6, v54, 0);
        if (v52 || ![(__CFString *)v54 isEqualToString:0x1F216A8D0])
        {
          goto LABEL_74;
        }

        v56 = FigCaptureNormalizeAngle([v55 intValue]);
        if (FigCaptureFrontCameraRotationAngle() == 90)
        {
          break;
        }

        if (!FigCaptureCameraRequires180DegreesRotation(1, 0))
        {
          v57 = 180;
          goto LABEL_72;
        }

LABEL_73:
        v55 = [MEMORY[0x1E696AD98] numberWithInt:v56];
LABEL_74:
        [v47 setObject:v55 forKeyedSubscript:v54];
        if (v50 == ++v53)
        {
          v50 = [v48 countByEnumeratingWithState:&v62 objects:v61 count:16];
          if (!v50)
          {
            goto LABEL_76;
          }

          goto LABEL_63;
        }
      }

      v57 = 90;
LABEL_72:
      v56 = FigCaptureNormalizeAngle(v56 + v57);
      goto LABEL_73;
    }

    [CMCaptureFrameSenderService _newSampleBufferToSendFromSampleBuffer:];
    goto LABEL_77;
  }

  [CMCaptureFrameSenderService _newSampleBufferToSendFromSampleBuffer:];
LABEL_89:
  [(CMCaptureFrameSenderService *)self _cleanupSendingPixelBufferMachinery:v59];
LABEL_77:
  if (pixelBufferOut)
  {
    CFRelease(pixelBufferOut);
  }

  return sampleBufferOut;
}

- (int)sendFrame:(opaqueCMSampleBuffer *)a3
{
  if (a3)
  {
    objc_initWeak(&location, self);
    clientQueue = self->_clientQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __41__CMCaptureFrameSenderService_sendFrame___block_invoke;
    block[3] = &unk_1E798FA10;
    objc_copyWeak(v8, &location);
    v8[1] = a3;
    dispatch_async_and_wait(clientQueue, block);
    objc_destroyWeak(v8);
    objc_destroyWeak(&location);
  }

  return 0;
}

void __41__CMCaptureFrameSenderService_sendFrame___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!WeakRetained)
  {
    return;
  }

  v2 = WeakRetained;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v3 = WeakRetained[10];
  v4 = [v3 countByEnumeratingWithState:&v37 objects:v36 count:16];
  if (!v4)
  {
    v9 = 0;
    goto LABEL_49;
  }

  v5 = v4;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = *v38;
  blockAllocator = *MEMORY[0x1E695E480];
  v29 = v3;
  do
  {
    v11 = 0;
    do
    {
      if (*v38 != v10)
      {
        objc_enumerationMutation(v3);
      }

      v12 = *(*(&v37 + 1) + 8 * v11);
      if ([v12 connectionIsValid])
      {
        if (v8)
        {
          goto LABEL_31;
        }

        v13 = *(v2 + 16);
        v14 = dispatch_time(0, (*(v2 + 17) * 1000000000.0));
        dispatch_source_set_timer(v13, v14, 0xFFFFFFFFFFFFFFFFLL, 0);
        v6 = [v2 _newSampleBufferToSendFromSampleBuffer:*(a1 + 40)];
        if (!v6)
        {
          goto LABEL_30;
        }

        dataPointerOut = 0;
        v44 = 0;
        totalLengthOut = 0;
        v7 = xpc_dictionary_create(0, 0, 0);
        if (FigRemote_CreateSerializedAtomDataBlockBufferForSampleBuffer())
        {
          __41__CMCaptureFrameSenderService_sendFrame___block_invoke_cold_1();
        }

        else
        {
          IsRangeContiguous = CMBlockBufferIsRangeContiguous(v44, 0, 0);
          v16 = v44;
          if (IsRangeContiguous)
          {
            goto LABEL_16;
          }

          blockBufferOut = 0;
          if (CMBlockBufferCreateContiguous(blockAllocator, v44, blockAllocator, 0, 0, 0, 0, &blockBufferOut))
          {
            __41__CMCaptureFrameSenderService_sendFrame___block_invoke_cold_2();
          }

          else
          {
            if (v44)
            {
              CFRelease(v44);
            }

            v16 = blockBufferOut;
            v44 = blockBufferOut;
LABEL_16:
            if (!CMBlockBufferGetDataPointer(v16, 0, 0, &totalLengthOut, &dataPointerOut))
            {
              v17 = xpc_data_create(dataPointerOut, totalLengthOut);
              xpc_dictionary_set_value(v7, "sample-buffer-basic-fields", v17);
              ImageBuffer = CMSampleBufferGetImageBuffer(v6);
              if (ImageBuffer)
              {
                IOSurface = CVPixelBufferGetIOSurface(ImageBuffer);
                if (IOSurface)
                {
                  XPCObject = IOSurfaceCreateXPCObject(IOSurface);
                  xpc_dictionary_set_value(v7, "sample-buffer-iosurface", XPCObject);
                  xpc_release(XPCObject);
                }
              }

              v21 = 0;
LABEL_21:
              if (v44)
              {
                CFRelease(v44);
              }

              if (v17)
              {
                xpc_release(v17);
              }

              if (v7)
              {
                v22 = v21;
              }

              else
              {
                v22 = 0;
              }

              if (v22 == 1)
              {
                xpc_release(v7);
                v7 = 0;
              }

LABEL_30:
              v3 = v29;
LABEL_31:
              if (v7)
              {
                [v12 sendXCPSampleBuffer:v7];
              }

              v8 = 1;
              goto LABEL_37;
            }

            __41__CMCaptureFrameSenderService_sendFrame___block_invoke_cold_3();
          }
        }

        v17 = 0;
        v21 = 1;
        goto LABEL_21;
      }

      if (!v9)
      {
        v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
      }

      [v9 addObject:v12];
LABEL_37:
      ++v11;
    }

    while (v5 != v11);
    v23 = [v3 countByEnumeratingWithState:&v37 objects:v36 count:16];
    v5 = v23;
  }

  while (v23);
  if (v6)
  {
    CFRelease(v6);
  }

  if (v7)
  {
    xpc_release(v7);
  }

LABEL_49:
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v24 = [v9 countByEnumeratingWithState:&v32 objects:v31 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v33;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v33 != v26)
        {
          objc_enumerationMutation(v9);
        }

        [*(v2 + 10) removeObject:*(*(&v32 + 1) + 8 * i)];
      }

      v25 = [v9 countByEnumeratingWithState:&v32 objects:v31 count:16];
    }

    while (v25);
  }
}

@end