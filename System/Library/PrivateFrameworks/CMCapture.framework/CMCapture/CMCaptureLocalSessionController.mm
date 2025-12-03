@interface CMCaptureLocalSessionController
+ (void)initialize;
- (BOOL)_configureVideoCameraStreamOutputFormat;
- (BOOL)_createCaptureSessions;
- (BOOL)_determineMetadataCameraConfiguration;
- (BOOL)_determineVideoCameraOutputMetadataIdentifiers;
- (BOOL)_startSessionForMetadataCameraStream:(id)stream outError:(id *)error;
- (BOOL)_startSessionForVideoCameraStream:(id)stream outError:(id *)error;
- (BOOL)_stopSessionForMetadataCameraStream:(id)stream outError:(id *)error;
- (BOOL)_stopSessionForVideoCameraStream:(id)stream outError:(id *)error;
- (BOOL)startSessionForStream:(id)stream outError:(id *)error;
- (BOOL)stopSessionForStream:(id)stream outError:(id *)error;
- (CMCaptureLocalSessionController)initWithQueue:(id)queue;
- (id)_newMetadataCameraFigCaptureSessionConfiguration;
- (id)_newVideoCameraFigCaptureSessionConfiguration;
- (int)setCaptureSourceProperty:(id)property withValue:(id)value;
- (void)_createCaptureSessions;
- (void)_enableConnectionsForActiveVideoCameraSourcedSinkIDs;
- (void)_resolveCaptureSourcePropertiesFromLocalVideoCameraSessionConfigurationValues;
- (void)_resolveMetadataCameraFigCaptureSessionConfigurationValuesFromLocalSessionConfigurationValues;
- (void)_resolveVideoCameraFigCaptureSessionConfigurationValuesFromLocalSessionConfigurationValues;
- (void)_startSession:(OpaqueFigCaptureSession *)session sessionRunningInOut:(BOOL *)out;
- (void)_stopSession:(OpaqueFigCaptureSession *)session sessionRunningInOut:(BOOL *)out;
- (void)_updateFrameRate;
- (void)_updateSessionConfigurationForMetadataCameraStream;
- (void)_updateSessionConfigurationForVideoCameraStream;
- (void)_updateVideoCameraActiveSinkIDsWhenStartingStream:(id)stream;
- (void)_updateVideoCameraActiveSinkIDsWhenStoppingStream:(id)stream;
- (void)associateStream:(id)stream withSink:(id)sink;
- (void)dealloc;
- (void)invalidate;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setActiveMaxFrameRate:(id)rate;
- (void)setActiveMinFrameRate:(id)rate;
- (void)updateSessionConfigurationForStream:(id)stream;
@end

@implementation CMCaptureLocalSessionController

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (CMCaptureLocalSessionController)initWithQueue:(id)queue
{
  v7.receiver = self;
  v7.super_class = CMCaptureLocalSessionController;
  v4 = [(CMCaptureLocalSessionController *)&v7 init];
  if (v4)
  {
    v4->_queue = queue;
    v4->_streamsBySinkID = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4->_activeVideoCameraSinkIDs = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v4->_activeVideoCameraOutputMetadataIdentifiers = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v4->_activeMetadataCameraMetadataIdentifiers = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v4->_activeMetadataCameraFaceTrackingAttributes = objc_alloc_init(MEMORY[0x1E695DF20]);
    if ([(CMCaptureLocalSessionController *)v4 _createCaptureSessions])
    {
      v4->_registeredForSystemStateChangeNotification = 1;
      [+[FigCaptureSystemStatus sharedInstance](FigCaptureSystemStatus addObserver:"addObserver:forKeyPath:options:context:" forKeyPath:v4 options:@"systemState" context:3, 0];
    }

    else
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      return 0;
    }
  }

  return v4;
}

- (void)dealloc
{
  [(CMCaptureLocalSessionController *)self invalidate];
  if (self->_registeredForSystemStateChangeNotification)
  {
    [+[FigCaptureSystemStatus sharedInstance](FigCaptureSystemStatus removeObserver:"removeObserver:forKeyPath:context:" forKeyPath:self context:@"systemState", 0];
  }

  if (self->_availabilityChangedNotificationToken)
  {
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  }

  v3.receiver = self;
  v3.super_class = CMCaptureLocalSessionController;
  [(CMCaptureLocalSessionController *)&v3 dealloc];
}

- (BOOL)_createCaptureSessions
{
  v109 = 0u;
  v110 = 0u;
  FigCaptureGetCurrentProcessAuditToken(&v109);
  if (dword_1EB58E740)
  {
    LODWORD(cf) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v4 = *MEMORY[0x1E695E480];
  v107 = v109;
  v108 = v110;
  v87 = v4;
  v5 = FigCaptureSessionCreate(v4, &v107, 0, &self->_videoCameraCaptureSession);
  if (dword_1EB58E740)
  {
    LODWORD(cf) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v7 = cf;
    if (os_log_type_enabled(v6, type[0]))
    {
      v8 = v7;
    }

    else
    {
      v8 = v7 & 0xFFFFFFFE;
    }

    if (v8)
    {
      videoCameraCaptureSession = self->_videoCameraCaptureSession;
      v88 = 136315906;
      v89 = "[CMCaptureLocalSessionController _createCaptureSessions]";
      v90 = 2114;
      selfCopy11 = self;
      v92 = 2112;
      v93 = videoCameraCaptureSession;
      v94 = 1024;
      LODWORD(v95) = v5;
      LODWORD(v85) = 38;
      v84 = &v88;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v5)
  {
    LODWORD(cf) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v75 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v76 = cf;
    if (os_log_type_enabled(v75, type[0]))
    {
      v77 = v76;
    }

    else
    {
      v77 = v76 & 0xFFFFFFFE;
    }

    if (v77)
    {
      v88 = 136315650;
      v89 = "[CMCaptureLocalSessionController _createCaptureSessions]";
      v90 = 2112;
      selfCopy11 = self;
      v92 = 1024;
      LODWORD(v93) = v5;
      _os_log_send_and_compose_impl();
    }

    goto LABEL_141;
  }

  if (!self->_videoCameraCaptureSession)
  {
    LODWORD(cf) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v78 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v79 = cf;
    if (os_log_type_enabled(v78, type[0]))
    {
      v80 = v79;
    }

    else
    {
      v80 = v79 & 0xFFFFFFFE;
    }

    if (v80)
    {
      v88 = 136315394;
      v89 = "[CMCaptureLocalSessionController _createCaptureSessions]";
      v90 = 2112;
      selfCopy11 = self;
      _os_log_send_and_compose_impl();
    }

LABEL_141:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return 0;
  }

  v10 = FigCaptureSourceCopySources(1);
  if (dword_1EB58E740)
  {
    LODWORD(cf) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v12 = cf;
    if (os_log_type_enabled(v11, type[0]))
    {
      v13 = v12;
    }

    else
    {
      v13 = v12 & 0xFFFFFFFE;
    }

    if (v13)
    {
      v14 = self->_videoCameraCaptureSession;
      v88 = 136315906;
      v89 = "[CMCaptureLocalSessionController _createCaptureSessions]";
      v90 = 2114;
      selfCopy11 = self;
      v92 = 2112;
      v93 = v14;
      v94 = 2112;
      v95 = v10;
      LODWORD(v85) = 42;
      v84 = &v88;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if ([(__CFArray *)v10 count:v84])
  {
    v105 = 0u;
    v106 = 0u;
    v103 = 0u;
    v104 = 0u;
    v15 = [(__CFArray *)v10 countByEnumeratingWithState:&v103 objects:v102 count:16];
    if (!v15)
    {
      goto LABEL_121;
    }

    v16 = v15;
    v17 = *v104;
    obj = v10;
    while (1)
    {
      v18 = 0;
      do
      {
        if (*v104 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v103 + 1) + 8 * v18);
        *type = 0;
        cf = 0;
        v20 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (!v20)
        {
          v35 = -12782;
          goto LABEL_48;
        }

        v21 = v20(v19);
        if (v21)
        {
          v35 = v21;
LABEL_48:
          v99 = 0;
          v98 = OS_LOG_TYPE_DEFAULT;
          v36 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v37 = v99;
          if (os_log_type_enabled(v36, v98))
          {
            v38 = v37;
          }

          else
          {
            v38 = v37 & 0xFFFFFFFE;
          }

          if (v38)
          {
            v88 = 136315650;
            v89 = "[CMCaptureLocalSessionController _createCaptureSessions]";
            v90 = 2114;
            selfCopy11 = self;
            v92 = 1024;
            LODWORD(v93) = v35;
            goto LABEL_72;
          }

LABEL_73:
          fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_74:
          [(CMCaptureLocalSessionController *)type _createCaptureSessions];
          goto LABEL_104;
        }

        v22 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (!v22)
        {
          v31 = -12782;
          goto LABEL_41;
        }

        v23 = v22(v19, @"AttributesDictionary", v87, type);
        if (v23)
        {
          v31 = v23;
LABEL_41:
          v99 = 0;
          v98 = OS_LOG_TYPE_DEFAULT;
          v32 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v33 = v99;
          if (os_log_type_enabled(v32, v98))
          {
            v34 = v33;
          }

          else
          {
            v34 = v33 & 0xFFFFFFFE;
          }

          if (v34)
          {
            v88 = 136315650;
            v89 = "[CMCaptureLocalSessionController _createCaptureSessions]";
            v90 = 2114;
            selfCopy11 = self;
            v92 = 1024;
            LODWORD(v93) = v31;
            goto LABEL_46;
          }

LABEL_97:
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          goto LABEL_98;
        }

        if (!*type)
        {
          v99 = 0;
          v98 = OS_LOG_TYPE_DEFAULT;
          v62 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v63 = v99;
          if (os_log_type_enabled(v62, v98))
          {
            v64 = v63;
          }

          else
          {
            v64 = v63 & 0xFFFFFFFE;
          }

          if (v64)
          {
            v88 = 136315394;
            v89 = "[CMCaptureLocalSessionController _createCaptureSessions]";
            v90 = 2114;
            selfCopy11 = self;
LABEL_46:
            _os_log_send_and_compose_impl();
          }

          goto LABEL_97;
        }

        v24 = [CFDictionaryGetValue(*type @"DeviceType")];
        if (v24 == 7 || v24 == 2)
        {
          self->_videoCameraCaptureSource = CFRetain(v19);
          self->_videoCameraCaptureSourceAttributes = *type;
          if (*type)
          {
            CFRelease(*type);
          }

          *type = 0;
          videoCameraCaptureSource = self->_videoCameraCaptureSource;
          v40 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (!v40)
          {
            v41 = -12782;
LABEL_57:
            v99 = 0;
            v98 = OS_LOG_TYPE_DEFAULT;
            v42 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v43 = v99;
            if (os_log_type_enabled(v42, v98))
            {
              v44 = v43;
            }

            else
            {
              v44 = v43 & 0xFFFFFFFE;
            }

            if (!v44)
            {
              goto LABEL_73;
            }

LABEL_71:
            v88 = 136315650;
            v89 = "[CMCaptureLocalSessionController _createCaptureSessions]";
            v90 = 2114;
            selfCopy11 = self;
            v92 = 1024;
            LODWORD(v93) = v41;
LABEL_72:
            _os_log_send_and_compose_impl();
            goto LABEL_73;
          }

          v52 = v40(videoCameraCaptureSource, @"Formats", v87, &cf);
          if (v52)
          {
            v41 = v52;
            goto LABEL_57;
          }

          v53 = cf;
          if (cf)
          {
            if (![cf count])
            {
              goto LABEL_74;
            }

            firstObject = [v53 firstObject];
            self->_videoCameraDeviceFormat = firstObject;
            v55 = MEMORY[0x1E696AD98];
            [(FigCaptureSourceFormat *)firstObject minSupportedFrameRate];
            self->_activeMinFrameRate = [v55 numberWithFloat:?];
            v56 = MEMORY[0x1E696AD98];
            [(FigCaptureSourceFormat *)self->_videoCameraDeviceFormat maxSupportedFrameRate];
            self->_activeMaxFrameRate = [v56 numberWithFloat:?];
            if (dword_1EB58E740)
            {
              v99 = 0;
              v98 = OS_LOG_TYPE_DEFAULT;
              v57 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v58 = v99;
              if (os_log_type_enabled(v57, v98))
              {
                v59 = v58;
              }

              else
              {
                v59 = v58 & 0xFFFFFFFE;
              }

              if (v59)
              {
                activeMaxFrameRate = self->_activeMaxFrameRate;
                activeMinFrameRate = self->_activeMinFrameRate;
                v88 = 136315650;
                v89 = "[CMCaptureLocalSessionController _createCaptureSessions]";
                v90 = 2112;
                selfCopy11 = activeMinFrameRate;
                v92 = 2112;
                v93 = activeMaxFrameRate;
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            goto LABEL_79;
          }

          v99 = 0;
          v98 = OS_LOG_TYPE_DEFAULT;
          v69 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v70 = v99;
          if (os_log_type_enabled(v69, v98))
          {
            v71 = v70;
          }

          else
          {
            v71 = v70 & 0xFFFFFFFE;
          }

          if (!v71)
          {
            goto LABEL_73;
          }

LABEL_110:
          v88 = 136315394;
          v89 = "[CMCaptureLocalSessionController _createCaptureSessions]";
          v90 = 2114;
          selfCopy11 = self;
          goto LABEL_72;
        }

        if ((v24 - 17) <= 3)
        {
          if (!self->_metadataCameraCaptureSession)
          {
            v107 = v109;
            v108 = v110;
            v25 = FigCaptureSessionCreate(v87, &v107, 0, &self->_metadataCameraCaptureSession);
            if (dword_1EB58E740)
            {
              v26 = v25;
              v99 = 0;
              v98 = OS_LOG_TYPE_DEFAULT;
              v27 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v28 = v99;
              if (os_log_type_enabled(v27, v98))
              {
                v29 = v28;
              }

              else
              {
                v29 = v28 & 0xFFFFFFFE;
              }

              if (v29)
              {
                metadataCameraCaptureSession = self->_metadataCameraCaptureSession;
                v88 = 136316162;
                v89 = "[CMCaptureLocalSessionController _createCaptureSessions]";
                v90 = 2114;
                selfCopy11 = self;
                v92 = 2112;
                v93 = metadataCameraCaptureSession;
                v94 = 2112;
                v95 = v19;
                v96 = 1024;
                v97 = v26;
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            if (!self->_metadataCameraCaptureSession)
            {
              v73 = 0;
              v10 = obj;
              goto LABEL_122;
            }
          }

          self->_metadataCameraCaptureSource = CFRetain(v19);
          self->_metadataCameraCaptureSourceAttributes = *type;
          *type = 0;
          metadataCameraCaptureSource = self->_metadataCameraCaptureSource;
          v46 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v46)
          {
            v50 = v46(metadataCameraCaptureSource, @"Formats", v87, &cf);
            if (!v50)
            {
              v51 = cf;
              if (cf)
              {
                if (![cf count])
                {
                  goto LABEL_74;
                }

                self->_metadataDeviceFormat = [v51 firstObject];
LABEL_79:
                if (cf)
                {
                  CFRelease(cf);
                }

                cf = 0;
                goto LABEL_74;
              }

              v99 = 0;
              v98 = OS_LOG_TYPE_DEFAULT;
              v66 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v67 = v99;
              if (os_log_type_enabled(v66, v98))
              {
                v68 = v67;
              }

              else
              {
                v68 = v67 & 0xFFFFFFFE;
              }

              if (!v68)
              {
                goto LABEL_73;
              }

              goto LABEL_110;
            }

            v41 = v50;
          }

          else
          {
            v41 = -12782;
          }

          v99 = 0;
          v98 = OS_LOG_TYPE_DEFAULT;
          v47 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v48 = v99;
          if (os_log_type_enabled(v47, v98))
          {
            v49 = v48;
          }

          else
          {
            v49 = v48 & 0xFFFFFFFE;
          }

          if (!v49)
          {
            goto LABEL_73;
          }

          goto LABEL_71;
        }

LABEL_98:
        if (*type)
        {
          CFRelease(*type);
        }

        *type = 0;
        if (cf)
        {
          CFRelease(cf);
        }

        cf = 0;
        v65 = *(*(CMBaseObjectGetVTable() + 16) + 16);
        if (v65)
        {
          v65(v19);
        }

LABEL_104:
        ++v18;
      }

      while (v16 != v18);
      v10 = obj;
      v72 = [(__CFArray *)obj countByEnumeratingWithState:&v103 objects:v102 count:16];
      v16 = v72;
      if (!v72)
      {
LABEL_121:
        v73 = 1;
        goto LABEL_122;
      }
    }
  }

  LODWORD(cf) = 0;
  type[0] = OS_LOG_TYPE_DEFAULT;
  v81 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v82 = cf;
  if (os_log_type_enabled(v81, type[0]))
  {
    v83 = v82;
  }

  else
  {
    v83 = v82 & 0xFFFFFFFE;
  }

  if (v83)
  {
    v88 = 136315394;
    v89 = "[CMCaptureLocalSessionController _createCaptureSessions]";
    v90 = 2112;
    selfCopy11 = self;
    _os_log_send_and_compose_impl();
  }

  fig_log_call_emit_and_clean_up_after_send_and_compose();
  v73 = 0;
LABEL_122:
  if (v10)
  {
    CFRelease(v10);
  }

  return v73;
}

- (id)_newVideoCameraFigCaptureSessionConfiguration
{
  v3 = objc_alloc_init(FigCaptureSessionConfiguration);
  [(FigCaptureSessionConfiguration *)v3 setConfigurationID:1];
  [(FigCaptureSessionConfiguration *)v3 setSessionPreset:@"AVCaptureSessionPresetHigh"];
  [(FigCaptureSessionConfiguration *)v3 setUsesAppAudioSession:0];
  [(FigCaptureSessionConfiguration *)v3 setConfiguresAppAudioSession:0];
  [(FigCaptureSessionConfiguration *)v3 setAllowedToRunInMultitaskingMode:1];
  [(FigCaptureSessionConfiguration *)v3 setMultiCamSession:0];
  v24 = v3;
  [(FigCaptureSessionConfiguration *)v3 setXctestAuthorizedToStealDevice:0];
  v4 = [[FigCaptureSourceConfiguration alloc] initWithSource:self->_videoCameraCaptureSource];
  [(FigCaptureSourceConfiguration *)v4 setSourceID:@"AppleHXCamera"];
  [(NSNumber *)self->_activeMinFrameRate floatValue];
  FigCaptureFrameRateFromFloat();
  [(FigCaptureSourceConfiguration *)v4 setRequiredMinFrameRate:v6, v5];
  [(NSNumber *)self->_activeMaxFrameRate floatValue];
  FigCaptureFrameRateFromFloat();
  [(FigCaptureSourceConfiguration *)v4 setRequiredMaxFrameRate:v8, v7];
  [(FigCaptureSourceConfiguration *)v4 setRequiredFormat:self->_videoCameraDeviceFormat];
  selfCopy = self;
  [(FigCaptureSourceFormat *)self->_videoCameraDeviceFormat maxSupportedFrameRate];
  v26 = v4;
  [(FigCaptureSourceConfiguration *)v4 setMaxFrameRateClientOverride:?];
  if (dword_1EB58E740)
  {
    v33 = 0;
    v32 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [(FigCaptureSourceConfiguration *)v4 setFaceDrivenAEAFEnabledByDefault:1, v22, v23];
  [(FigCaptureSourceConfiguration *)v4 setFaceDrivenAEAFMode:[(FigCaptureSourceConfiguration *)v4 faceDrivenAEAFEnabledByDefault]];
  [(FigCaptureSourceConfiguration *)v4 setHighlightRecoveryEnabled:[(FigCaptureSourceVideoFormat *)[(FigCaptureSourceConfiguration *)v4 requiredFormat] isSIFRSupported]];
  [(FigCaptureSourceConfiguration *)v4 setImageControlMode:1];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  allKeys = [(NSMutableDictionary *)self->_streamsBySinkID allKeys];
  v11 = [allKeys countByEnumeratingWithState:&v28 objects:v27 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v29;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v29 != v13)
        {
          objc_enumerationMutation(allKeys);
        }

        v15 = *(*(&v28 + 1) + 8 * i);
        if (([v15 isEqualToString:@"CMCaptureLocalSessionSinkID_MetadataObject"] & 1) == 0 && (objc_msgSend(v15, "isEqualToString:", @"CMCaptureLocalSessionSinkID_MetadataCameraMetadataObject") & 1) == 0)
        {
          v16 = objc_alloc_init(FigVideoCaptureConnectionConfiguration);
          -[FigCaptureConnectionConfiguration setConnectionID:](v16, "setConnectionID:", [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.cameracaptured-%@", v15]);
          [(FigCaptureConnectionConfiguration *)v16 setSourceConfiguration:v26];
          -[FigCaptureConnectionConfiguration setUnderlyingDeviceType:](v16, "setUnderlyingDeviceType:", [-[NSDictionary objectForKeyedSubscript:](selfCopy->_videoCameraCaptureSourceAttributes objectForKeyedSubscript:{@"DeviceType", "intValue"}]);
          v17 = objc_alloc_init(FigCaptureVideoDataSinkConfiguration);
          [(FigCaptureConnectionConfiguration *)v16 setSinkConfiguration:v17];
          [(FigCaptureSinkConfiguration *)[(FigCaptureConnectionConfiguration *)v16 sinkConfiguration] setSinkID:v15];
          [(FigVideoCaptureConnectionConfiguration *)v16 setAttachMetadataToVideoBuffers:1];
          [(FigVideoCaptureConnectionConfiguration *)v16 setRetainedBufferCount:5];
          [(FigCaptureSessionConfiguration *)v24 addConnectionConfiguration:v16];
        }
      }

      v12 = [allKeys countByEnumeratingWithState:&v28 objects:v27 count:16];
    }

    while (v12);
  }

  v18 = objc_alloc_init(FigMetadataObjectCaptureConnectionConfiguration);
  -[FigCaptureConnectionConfiguration setConnectionID:](v18, "setConnectionID:", [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.cameracaptured-%@", @"CMCaptureLocalSessionSinkID_MetadataObject"]);
  [(FigCaptureConnectionConfiguration *)v18 setSourceConfiguration:v26];
  -[FigCaptureConnectionConfiguration setUnderlyingDeviceType:](v18, "setUnderlyingDeviceType:", [-[NSDictionary objectForKeyedSubscript:](selfCopy->_videoCameraCaptureSourceAttributes objectForKeyedSubscript:{@"DeviceType", "intValue"}]);
  [(FigCaptureConnectionConfiguration *)v18 setMediaType:1836016234];
  [(FigMetadataObjectCaptureConnectionConfiguration *)v18 setMetadataIdentifiers:0];
  [(FigMetadataObjectCaptureConnectionConfiguration *)v18 setMetadataRectOfInterest:0.0, 0.0, 1.0, 1.0];
  [(FigMetadataObjectCaptureConnectionConfiguration *)v18 setFaceTrackingMaxFaces:0];
  [(FigMetadataObjectCaptureConnectionConfiguration *)v18 setFaceTrackingUsesFaceRecognition:1];
  [(FigMetadataObjectCaptureConnectionConfiguration *)v18 setFaceTrackingPlusEnabled:0];
  [(FigMetadataObjectCaptureConnectionConfiguration *)v18 setFaceTrackingSuspended:0];
  [(FigMetadataObjectCaptureConnectionConfiguration *)v18 setFaceTrackingNetworkFailureThresholdMultiplier:0.0];
  LODWORD(v19) = -1.0;
  [(FigMetadataObjectCaptureConnectionConfiguration *)v18 setFaceTrackingFailureFieldOfViewModifier:v19];
  [(FigMetadataObjectCaptureConnectionConfiguration *)v18 setAttentionDetectionEnabled:0];
  v20 = objc_alloc_init(FigCaptureMetadataObjectSinkConfiguration);
  [(FigCaptureConnectionConfiguration *)v18 setSinkConfiguration:v20];
  [(FigCaptureSinkConfiguration *)[(FigCaptureConnectionConfiguration *)v18 sinkConfiguration] setSinkID:@"CMCaptureLocalSessionSinkID_MetadataObject"];
  [(FigMetadataObjectCaptureConnectionConfiguration *)v18 setAttachMetadataToVideoBuffers:1];
  [(FigCaptureSessionConfiguration *)v24 addConnectionConfiguration:v18];

  return v24;
}

- (id)_newMetadataCameraFigCaptureSessionConfiguration
{
  if (!self->_metadataCameraCaptureSource || ![-[NSMutableDictionary allKeys](self->_streamsBySinkID "allKeys")])
  {
    return 0;
  }

  v3 = objc_alloc_init(FigCaptureSessionConfiguration);
  [(FigCaptureSessionConfiguration *)v3 setConfigurationID:2];
  [(FigCaptureSessionConfiguration *)v3 setSessionPreset:@"AVCaptureSessionPresetHigh"];
  [(FigCaptureSessionConfiguration *)v3 setUsesAppAudioSession:0];
  [(FigCaptureSessionConfiguration *)v3 setConfiguresAppAudioSession:0];
  [(FigCaptureSessionConfiguration *)v3 setAllowedToRunInMultitaskingMode:1];
  [(FigCaptureSessionConfiguration *)v3 setMultiCamSession:0];
  [(FigCaptureSessionConfiguration *)v3 setXctestAuthorizedToStealDevice:0];
  v4 = [[FigCaptureSourceConfiguration alloc] initWithSource:self->_metadataCameraCaptureSource];
  [(FigCaptureSourceConfiguration *)v4 setSourceID:@"AppleHXCamera"];
  [(NSNumber *)self->_activeMinFrameRate floatValue];
  FigCaptureFrameRateFromFloat();
  [(FigCaptureSourceConfiguration *)v4 setRequiredMinFrameRate:v6, v5];
  [(NSNumber *)self->_activeMaxFrameRate floatValue];
  FigCaptureFrameRateFromFloat();
  [(FigCaptureSourceConfiguration *)v4 setRequiredMaxFrameRate:v8, v7];
  [(FigCaptureSourceConfiguration *)v4 setRequiredFormat:self->_metadataDeviceFormat];
  [(FigCaptureSourceFormat *)self->_metadataDeviceFormat maxSupportedFrameRate];
  [(FigCaptureSourceConfiguration *)v4 setMaxFrameRateClientOverride:?];
  if (dword_1EB58E740)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v10 = objc_alloc_init(FigMetadataObjectCaptureConnectionConfiguration);
  -[FigCaptureConnectionConfiguration setConnectionID:](v10, "setConnectionID:", [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.cameracaptured-%@", @"CMCaptureLocalSessionSinkID_MetadataCameraMetadataObject"]);
  [(FigCaptureConnectionConfiguration *)v10 setSourceConfiguration:v4];
  -[FigCaptureConnectionConfiguration setUnderlyingDeviceType:](v10, "setUnderlyingDeviceType:", [-[NSDictionary objectForKeyedSubscript:](self->_metadataCameraCaptureSourceAttributes objectForKeyedSubscript:{@"DeviceType", "intValue"}]);
  [(FigCaptureConnectionConfiguration *)v10 setMediaType:1836016234];
  [(FigMetadataObjectCaptureConnectionConfiguration *)v10 setMetadataIdentifiers:0];
  [(FigMetadataObjectCaptureConnectionConfiguration *)v10 setMetadataRectOfInterest:0.0, 0.0, 1.0, 1.0];
  [(FigMetadataObjectCaptureConnectionConfiguration *)v10 setFaceTrackingMaxFaces:0];
  [(FigMetadataObjectCaptureConnectionConfiguration *)v10 setFaceTrackingUsesFaceRecognition:1];
  [(FigMetadataObjectCaptureConnectionConfiguration *)v10 setFaceTrackingPlusEnabled:0];
  [(FigMetadataObjectCaptureConnectionConfiguration *)v10 setFaceTrackingSuspended:0];
  [(FigMetadataObjectCaptureConnectionConfiguration *)v10 setFaceTrackingNetworkFailureThresholdMultiplier:0.0];
  LODWORD(v11) = -1.0;
  [(FigMetadataObjectCaptureConnectionConfiguration *)v10 setFaceTrackingFailureFieldOfViewModifier:v11];
  [(FigMetadataObjectCaptureConnectionConfiguration *)v10 setAttentionDetectionEnabled:0];
  v12 = objc_alloc_init(FigCaptureMetadataObjectSinkConfiguration);
  [(FigCaptureConnectionConfiguration *)v10 setSinkConfiguration:v12];
  [(FigCaptureSinkConfiguration *)[(FigCaptureConnectionConfiguration *)v10 sinkConfiguration] setSinkID:@"CMCaptureLocalSessionSinkID_MetadataCameraMetadataObject"];
  [(FigCaptureSessionConfiguration *)v3 addConnectionConfiguration:v10];

  return v3;
}

- (void)_updateVideoCameraActiveSinkIDsWhenStartingStream:(id)stream
{
  if ([objc_msgSend(stream "associatedSinkIDs")])
  {
    activeVideoCameraSinkIDs = self->_activeVideoCameraSinkIDs;
    p_activeVideoCameraSinkIDs = &self->_activeVideoCameraSinkIDs;
    [(NSMutableSet *)activeVideoCameraSinkIDs addObject:@"CMCaptureLocalSessionSinkID_MainVideo"];
    v7 = @"CMCaptureLocalSessionSinkID_MetadataObject";
    if (![objc_msgSend(stream "associatedSinkIDs")] || !objc_msgSend(objc_msgSend(stream, "requestedMetadataObjects"), "count"))
    {
      return;
    }
  }

  else
  {
    v7 = @"CMCaptureLocalSessionSinkID_DeskcamVideo";
    if (![objc_msgSend(stream "associatedSinkIDs")])
    {
      return;
    }

    p_activeVideoCameraSinkIDs = &self->_activeVideoCameraSinkIDs;
  }

  v8 = *p_activeVideoCameraSinkIDs;

  [(NSMutableSet *)v8 addObject:v7];
}

- (void)_updateVideoCameraActiveSinkIDsWhenStoppingStream:(id)stream
{
  if ([objc_msgSend(stream "associatedSinkIDs")])
  {
    [(NSMutableSet *)self->_activeVideoCameraSinkIDs removeObject:@"CMCaptureLocalSessionSinkID_MainVideo"];
    activeVideoCameraSinkIDs = self->_activeVideoCameraSinkIDs;
    v6 = @"CMCaptureLocalSessionSinkID_MetadataObject";
  }

  else
  {
    if (![objc_msgSend(stream "associatedSinkIDs")])
    {
      return;
    }

    activeVideoCameraSinkIDs = self->_activeVideoCameraSinkIDs;
    v6 = @"CMCaptureLocalSessionSinkID_DeskcamVideo";
  }

  [(NSMutableSet *)activeVideoCameraSinkIDs removeObject:v6];
}

- (void)_enableConnectionsForActiveVideoCameraSourcedSinkIDs
{
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  connectionConfigurations = [(FigCaptureSessionConfiguration *)self->_videoCameraCaptureSessionConfig connectionConfigurations];
  v4 = [(NSArray *)connectionConfigurations countByEnumeratingWithState:&v9 objects:v8 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(connectionConfigurations);
        }

        [*(*(&v9 + 1) + 8 * v7) setEnabled:{-[NSMutableSet containsObject:](self->_activeVideoCameraSinkIDs, "containsObject:", objc_msgSend(objc_msgSend(*(*(&v9 + 1) + 8 * v7), "sinkConfiguration"), "sinkID"))}];
        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSArray *)connectionConfigurations countByEnumeratingWithState:&v9 objects:v8 count:16];
    }

    while (v5);
  }
}

- (BOOL)_configureVideoCameraStreamOutputFormat
{
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  connectionConfigurations = [(FigCaptureSessionConfiguration *)self->_videoCameraCaptureSessionConfig connectionConfigurations];
  v4 = [(NSArray *)connectionConfigurations countByEnumeratingWithState:&v38 objects:v37 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v39;
    v24 = *v39;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v39 != v7)
        {
          objc_enumerationMutation(connectionConfigurations);
        }

        v9 = *(*(&v38 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = [objc_msgSend(v9 "sinkConfiguration")];
          v11 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_streamsBySinkID objectForKeyedSubscript:{v10), "videoConfiguration"}];
          if (v11)
          {
            v12 = v11;
            dimensions = [v11 dimensions];
            if ([v9 outputWidth] != dimensions || (v14 = objc_msgSend(v12, "dimensions") >> 32, objc_msgSend(v9, "outputHeight") != v14) || (v15 = objc_msgSend(v12, "outputFormat"), v15 != objc_msgSend(v9, "outputFormat")))
            {
              v6 |= [(NSMutableSet *)self->_activeVideoCameraSinkIDs containsObject:v10, v22, v23];
            }

            [v9 setOutputWidth:{objc_msgSend(v12, "dimensions", v22, v23)}];
            [v9 setOutputHeight:{objc_msgSend(v12, "dimensions") >> 32}];
            [v9 setOutputFormat:objc_msgSend(v12, "outputFormat")];
            if (dword_1EB58E740)
            {
              v36 = 0;
              type = OS_LOG_TYPE_DEFAULT;
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v17 = v36;
              if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
              {
                v18 = v17;
              }

              else
              {
                v18 = v17 & 0xFFFFFFFE;
              }

              if (v18)
              {
                outputWidth = [v9 outputWidth];
                outputHeight = [v9 outputHeight];
                v25 = 136316162;
                v26 = "[CMCaptureLocalSessionController _configureVideoCameraStreamOutputFormat]";
                v27 = 2114;
                selfCopy = self;
                v29 = 2112;
                v30 = v10;
                v31 = 1024;
                v32 = outputWidth;
                v33 = 1024;
                v34 = outputHeight;
                LODWORD(v23) = 44;
                v22 = &v25;
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
              v7 = v24;
            }
          }
        }
      }

      v5 = [(NSArray *)connectionConfigurations countByEnumeratingWithState:&v38 objects:v37 count:16];
    }

    while (v5);
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6 & 1;
}

- (BOOL)_determineVideoCameraOutputMetadataIdentifiers
{
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  activeVideoCameraSinkIDs = self->_activeVideoCameraSinkIDs;
  v5 = [(NSMutableSet *)activeVideoCameraSinkIDs countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(activeVideoCameraSinkIDs);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        if ([(CMCaptureLocalSessionController *)self _detectedObjectsSupportedForSinkID:v9])
        {
          v10 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_streamsBySinkID objectForKeyedSubscript:{v9), "requestedMetadataObjects"}];
          if ([v10 count])
          {
            [v3 unionSet:v10];
          }
        }
      }

      v6 = [(NSMutableSet *)activeVideoCameraSinkIDs countByEnumeratingWithState:&v14 objects:v13 count:16];
    }

    while (v6);
  }

  v11 = [(NSMutableSet *)self->_activeVideoCameraOutputMetadataIdentifiers isEqualToSet:v3];
  if ((v11 & 1) == 0)
  {

    self->_activeVideoCameraOutputMetadataIdentifiers = [v3 copy];
  }

  return v11 ^ 1;
}

- (BOOL)_determineMetadataCameraConfiguration
{
  if (self->_metadataCameraSinkIDActive)
  {
    v3 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_streamsBySinkID objectForKeyedSubscript:{@"CMCaptureLocalSessionSinkID_MetadataCameraMetadataObject", "requestedMetadataObjects"}];
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSSet *)self->_activeMetadataCameraMetadataIdentifiers isEqualToSet:v3];
  if (!v4)
  {

    self->_activeMetadataCameraMetadataIdentifiers = [v3 copy];
  }

  v5 = !v4;
  if (self->_metadataCameraSinkIDActive)
  {
    v6 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_streamsBySinkID objectForKeyedSubscript:{@"CMCaptureLocalSessionSinkID_MetadataCameraMetadataObject", "faceTrackingAttributes"}];
  }

  else
  {
    v6 = MEMORY[0x1E695E0F8];
  }

  if (![(NSDictionary *)self->_activeMetadataCameraFaceTrackingAttributes isEqualToDictionary:v6])
  {

    self->_activeMetadataCameraFaceTrackingAttributes = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:v6];
    return 1;
  }

  return v5;
}

- (void)_resolveVideoCameraFigCaptureSessionConfigurationValuesFromLocalSessionConfigurationValues
{
  firstObject = [(NSArray *)[(FigCaptureSessionConfiguration *)self->_videoCameraCaptureSessionConfig sourceConfigurations] firstObject];
  faceDrivenAEAFEnabledByDefault = [firstObject faceDrivenAEAFEnabledByDefault];
  [firstObject setFaceDrivenAEAFEnabledByDefault:faceDrivenAEAFEnabledByDefault];
  v22 = firstObject;
  [firstObject setFaceDrivenAEAFMode:faceDrivenAEAFEnabledByDefault];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  connectionConfigurations = [(FigCaptureSessionConfiguration *)self->_videoCameraCaptureSessionConfig connectionConfigurations];
  v6 = [(NSArray *)connectionConfigurations countByEnumeratingWithState:&v24 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
    v9 = off_1E7989000;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(connectionConfigurations);
        }

        v11 = *(*(&v24 + 1) + 8 * i);
        if ([objc_msgSend(objc_msgSend(v11 "sinkConfiguration")])
        {
          v12 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_streamsBySinkID objectForKeyedSubscript:{@"CMCaptureLocalSessionSinkID_MainVideo", "videoConfiguration"}];
          if (![v12 supportsCenterStage])
          {
            continue;
          }

          [objc_msgSend(v11 "videoDataSinkConfiguration")];
          [v12 manualFramingPanningAngleX];
          *&v13 = v13;
          [v22 setManualFramingPanningAngleX:v13];
          [v12 manualFramingPanningAngleY];
          *&v14 = v14;
          [v22 setManualFramingPanningAngleY:v14];
          [v12 manualFramingZoomFactor];
          *&v15 = v15;
          [v22 setVideoZoomFactor:v15];
          v16 = connectionConfigurations;
          v17 = v9;
          cinematicFramingEnabled = [v12 cinematicFramingEnabled];
          videoDataSinkConfiguration = [v11 videoDataSinkConfiguration];
          v20 = cinematicFramingEnabled;
          v9 = v17;
          connectionConfigurations = v16;
          [videoDataSinkConfiguration setCinematicFramingEnabled:v20];
          v21 = v12;
          goto LABEL_13;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v11 setMetadataIdentifiers:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithArray:", -[NSMutableSet allObjects](self->_activeVideoCameraOutputMetadataIdentifiers, "allObjects"))}];
          continue;
        }

        if ([objc_msgSend(objc_msgSend(v11 "sinkConfiguration")])
        {
          v21 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_streamsBySinkID objectForKeyedSubscript:{@"CMCaptureLocalSessionSinkID_DeskcamVideo", "videoConfiguration"}];
LABEL_13:
          [objc_msgSend(v11 "videoDataSinkConfiguration")];
          continue;
        }
      }

      v7 = [(NSArray *)connectionConfigurations countByEnumeratingWithState:&v24 objects:v23 count:16];
    }

    while (v7);
  }
}

- (void)_resolveMetadataCameraFigCaptureSessionConfigurationValuesFromLocalSessionConfigurationValues
{
  firstObject = [(NSArray *)[(FigCaptureSessionConfiguration *)self->_metadataCameraCaptureSessionConfig sourceConfigurations] firstObject];
  faceDrivenAEAFEnabledByDefault = [firstObject faceDrivenAEAFEnabledByDefault];
  [firstObject setFaceDrivenAEAFEnabledByDefault:faceDrivenAEAFEnabledByDefault];
  [firstObject setFaceDrivenAEAFMode:faceDrivenAEAFEnabledByDefault];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  connectionConfigurations = [(FigCaptureSessionConfiguration *)self->_metadataCameraCaptureSessionConfig connectionConfigurations];
  v6 = [(NSArray *)connectionConfigurations countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(connectionConfigurations);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v10 setMetadataIdentifiers:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithArray:", -[NSSet allObjects](self->_activeMetadataCameraMetadataIdentifiers, "allObjects"))}];
          [(NSDictionary *)self->_activeMetadataCameraFaceTrackingAttributes objectForKeyedSubscript:@"FaceTrackingMaxFaces"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v10 setFaceTrackingMaxFaces:{objc_msgSend(-[NSDictionary objectForKeyedSubscript:](self->_activeMetadataCameraFaceTrackingAttributes, "objectForKeyedSubscript:", @"FaceTrackingMaxFaces", "intValue")}];
          }

          [(NSDictionary *)self->_activeMetadataCameraFaceTrackingAttributes objectForKeyedSubscript:@"FaceTrackingNetworkFailureThresholdMultiplier"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [-[NSDictionary objectForKeyedSubscript:](self->_activeMetadataCameraFaceTrackingAttributes objectForKeyedSubscript:{@"FaceTrackingNetworkFailureThresholdMultiplier", "floatValue"}];
            [v10 setFaceTrackingNetworkFailureThresholdMultiplier:?];
          }

          [(NSDictionary *)self->_activeMetadataCameraFaceTrackingAttributes objectForKeyedSubscript:@"FaceTrackingFailureFieldOfViewModifier"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [-[NSDictionary objectForKeyedSubscript:](self->_activeMetadataCameraFaceTrackingAttributes objectForKeyedSubscript:{@"FaceTrackingFailureFieldOfViewModifier", "floatValue"}];
            [v10 setFaceTrackingFailureFieldOfViewModifier:?];
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)connectionConfigurations countByEnumeratingWithState:&v12 objects:v11 count:16];
    }

    while (v7);
  }
}

- (void)_resolveCaptureSourcePropertiesFromLocalVideoCameraSessionConfigurationValues
{
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  connectionConfigurations = [(FigCaptureSessionConfiguration *)self->_videoCameraCaptureSessionConfig connectionConfigurations];
  v4 = [(NSArray *)connectionConfigurations countByEnumeratingWithState:&v63 objects:v62 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v64;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v64 != v6)
        {
          objc_enumerationMutation(connectionConfigurations);
        }

        if ([objc_msgSend(objc_msgSend(*(*(&v63 + 1) + 8 * i) "sinkConfiguration")])
        {
          v8 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_streamsBySinkID objectForKeyedSubscript:{@"CMCaptureLocalSessionSinkID_MainVideo", "videoConfiguration"}];
          if ([v8 supportsCenterStage])
          {
            [v8 centerStageRectOfInterest];
            DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v67);
            if (DictionaryRepresentation)
            {
              v10 = DictionaryRepresentation;
              videoCameraCaptureSource = self->_videoCameraCaptureSource;
              v12 = *(*(CMBaseObjectGetVTable() + 8) + 56);
              if (v12)
              {
                v12(videoCameraCaptureSource, @"CenterStageRectOfInterest", v10);
              }

              CFRelease(v10);
            }

            v13 = self->_videoCameraCaptureSource;
            v14 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v8, "centerStageFramingMode")}];
            v15 = *(*(CMBaseObjectGetVTable() + 8) + 56);
            if (v15)
            {
              v15(v13, @"CenterStageFramingMode", v14);
            }

            goto LABEL_17;
          }
        }
      }

      v5 = [(NSArray *)connectionConfigurations countByEnumeratingWithState:&v63 objects:v62 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:
  v16 = [(NSMutableSet *)self->_activeVideoCameraSinkIDs containsObject:@"CMCaptureLocalSessionSinkID_DeskcamVideo"];
  if (v16)
  {
    goto LABEL_52;
  }

  v17 = MEMORY[0x1E695F060];
  size = *MEMORY[0x1E695F060];
  CGSizeMakeWithDictionaryRepresentation([(NSDictionary *)self->_videoCameraCaptureSourceAttributes objectForKeyedSubscript:@"DefaultAutoExposureCenterWindowSize"], &size);
  width = size.width;
  height = size.height;
  if (*v17 == size.width && v17[1] == size.height)
  {
    FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
    *v60 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v58 = 0;
    v23 = _os_log_send_and_compose_impl();
    v50 = 0;
    FigCapturePleaseFileRadar(FrameworkRadarComponent, v23, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/CMCaptureLocal/CMCaptureLocalSessionController.m", 770, @"LastShownDate:CMCaptureLocalSessionController.m:770", @"LastShownBuild:CMCaptureLocalSessionController.m:770", 0);
    free(v23);
    size = vdupq_n_s64(0x3FECCCCCCCCCCCCDuLL);
    height = 0.9;
    width = 0.9;
  }

  v24 = fmax(0.5 - width * 0.5, 0.0);
  if (v24 >= 1.0 - width)
  {
    v24 = 1.0 - width;
  }

  v25 = fmax(0.5 - height * 0.5, 0.0);
  if (v25 >= 1.0 - height)
  {
    v25 = 1.0 - height;
  }

  v26 = CGRectCreateDictionaryRepresentation(*(&width - 2));
  v56[0] = @"ExposureMode";
  v56[1] = @"ExposureRect";
  v57[0] = &unk_1F2245A78;
  v57[1] = v26;
  v56[2] = @"ExposureRectIsDefault";
  v57[2] = MEMORY[0x1E695E118];
  v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v57 forKeys:v56 count:3];
  v28 = self->_videoCameraCaptureSource;
  v29 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v29)
  {
    v30 = -12782;
LABEL_32:
    if (dword_1EB58E740)
    {
      *v60 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v31 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v32 = *v60;
      if (os_log_type_enabled(v31, type))
      {
        v33 = v32;
      }

      else
      {
        v33 = v32 & 0xFFFFFFFE;
      }

      if (v33)
      {
        v51 = 136315650;
        v52 = "[CMCaptureLocalSessionController _resolveCaptureSourcePropertiesFromLocalVideoCameraSessionConfigurationValues]";
        v53 = 2114;
        *v54 = v27;
        *&v54[8] = 1024;
        v55 = v30;
        LODWORD(v50) = 28;
        v49 = &v51;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    goto LABEL_39;
  }

  v30 = v29(v28, @"ExposureOperation", v27);
  if (v30)
  {
    goto LABEL_32;
  }

LABEL_39:
  if (v26)
  {
    CFRelease(v26);
  }

  sourceConfigurations = [-[NSArray firstObject](-[FigCaptureSessionConfiguration sourceConfigurations](self->_videoCameraCaptureSessionConfig sourceConfigurations];
  v35 = self->_videoCameraCaptureSource;
  v36 = [MEMORY[0x1E696AD98] numberWithInt:sourceConfigurations];
  v37 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v37)
  {
    v38 = v37(v35, @"FaceDrivenAEAFMode", v36);
    if (!v38)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v38 = -12782;
  }

  if (dword_1EB58E740)
  {
    *v60 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v39 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v40 = *v60;
    if (os_log_type_enabled(v39, type))
    {
      v41 = v40;
    }

    else
    {
      v41 = v40 & 0xFFFFFFFE;
    }

    if (v41)
    {
      v51 = 136315650;
      v52 = "[CMCaptureLocalSessionController _resolveCaptureSourcePropertiesFromLocalVideoCameraSessionConfigurationValues]";
      v53 = 1024;
      *v54 = sourceConfigurations;
      *&v54[4] = 1024;
      *&v54[6] = v38;
      LODWORD(v50) = 24;
      v49 = &v51;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_52:
  v42 = self->_videoCameraCaptureSource;
  v43 = [MEMORY[0x1E696AD98] numberWithBool:{v16, v49, v50}];
  v44 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v44)
  {
    v45 = v44(v42, @"DeskViewEnabled", v43);
    if (!v45)
    {
      return;
    }
  }

  else
  {
    v45 = -12782;
  }

  if (dword_1EB58E740)
  {
    LODWORD(size.width) = 0;
    v60[0] = OS_LOG_TYPE_DEFAULT;
    v46 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    width_low = LODWORD(size.width);
    if (os_log_type_enabled(v46, v60[0]))
    {
      v48 = width_low;
    }

    else
    {
      v48 = width_low & 0xFFFFFFFE;
    }

    if (v48)
    {
      v51 = 136315394;
      v52 = "[CMCaptureLocalSessionController _resolveCaptureSourcePropertiesFromLocalVideoCameraSessionConfigurationValues]";
      v53 = 1024;
      *v54 = v45;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

- (BOOL)startSessionForStream:(id)stream outError:(id *)error
{
  if ([objc_msgSend(stream "sampleBufferReceiver")] == 2)
  {

    return [(CMCaptureLocalSessionController *)self _startSessionForMetadataCameraStream:stream outError:error];
  }

  else
  {

    return [(CMCaptureLocalSessionController *)self _startSessionForVideoCameraStream:stream outError:error];
  }
}

- (BOOL)_startSessionForVideoCameraStream:(id)stream outError:(id *)error
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v4 = atomic_load(&self->_invalidated);
  if (v4)
  {
    if (error)
    {
      *error = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"CMCaptureLocalDomain" code:1 userInfo:0];
    }
  }

  else
  {
    objc_initWeak(&location, self);
    dispatch_assert_queue_not_V2(self->_queue);
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __78__CMCaptureLocalSessionController__startSessionForVideoCameraStream_outError___block_invoke;
    block[3] = &unk_1E7999DD0;
    objc_copyWeak(&v11, &location);
    block[4] = stream;
    block[5] = self;
    block[6] = &v13;
    dispatch_async_and_wait(queue, block);
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  v8 = *(v14 + 24);
  _Block_object_dispose(&v13, 8);
  return v8;
}

void __78__CMCaptureLocalSessionController__startSessionForVideoCameraStream_outError___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    if (!WeakRetained[10])
    {
      WeakRetained[10] = [WeakRetained _newVideoCameraFigCaptureSessionConfiguration];
      if (dword_1EB58E740)
      {
        v40 = 0;
        v39 = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    v5 = [v3[3] count];
    v6 = [v3 _configureVideoCameraStreamOutputFormat];
    [v3 _updateVideoCameraActiveSinkIDsWhenStartingStream:*(a1 + 32)];
    v7 = v6 | [v3 _determineVideoCameraOutputMetadataIdentifiers];
    if (v5)
    {
      v8 = v7 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      if (v5)
      {
        if (dword_1EB58E740)
        {
          v40 = 0;
          v39 = OS_LOG_TYPE_DEFAULT;
          v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v10 = v40;
          if (os_log_type_enabled(v9, v39))
          {
            v11 = v10;
          }

          else
          {
            v11 = v10 & 0xFFFFFFFE;
          }

          if (v11)
          {
            v12 = *(a1 + 40);
            v13 = [*(a1 + 32) videoConfiguration];
            *v33 = 136315650;
            *&v33[4] = "[CMCaptureLocalSessionController _startSessionForVideoCameraStream:outError:]_block_invoke";
            v34 = 2114;
            v35 = v12;
            v36 = 2112;
            v37 = v13;
            LODWORD(v32) = 32;
            v30 = v33;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        [v3 _enableConnectionsForActiveVideoCameraSourcedSinkIDs];
        [v3 _resolveVideoCameraFigCaptureSessionConfigurationValuesFromLocalSessionConfigurationValues];
        v26 = v3[4];
        v27 = v3[10];
        v28 = *(*(CMBaseObjectGetVTable() + 16) + 24);
        if (v28)
        {
          v28(v26, v27);
        }

        else
        {
          *v33 = @"ErrorStatus";
          v38[0] = &unk_1F2245A90;
          [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v33 count:1];
          CMNotificationCenterGetDefaultLocalCenter();
          CMNotificationCenterPostNotification();
        }

        [v3 _resolveCaptureSourcePropertiesFromLocalVideoCameraSessionConfigurationValues];
        goto LABEL_40;
      }

      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterAddListener();
      if (dword_1EB58E740)
      {
        v40 = 0;
        v39 = OS_LOG_TYPE_DEFAULT;
        v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v19 = v40;
        if (os_log_type_enabled(v18, v39))
        {
          v20 = v19;
        }

        else
        {
          v20 = v19 & 0xFFFFFFFE;
        }

        if (v20)
        {
          v21 = *(a1 + 40);
          v22 = v21[4];
          *v33 = 136315650;
          *&v33[4] = "[CMCaptureLocalSessionController _startSessionForVideoCameraStream:outError:]_block_invoke";
          v34 = 2114;
          v35 = v21;
          v36 = 2112;
          v37 = v22;
          LODWORD(v32) = 32;
          v30 = v33;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    else
    {
      if (dword_1EB58E740)
      {
        v40 = 0;
        v39 = OS_LOG_TYPE_DEFAULT;
        v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v15 = v40;
        if (os_log_type_enabled(v14, v39))
        {
          v16 = v15;
        }

        else
        {
          v16 = v15 & 0xFFFFFFFE;
        }

        if (v16)
        {
          v17 = v3[4];
          *v33 = 136315650;
          *&v33[4] = "[CMCaptureLocalSessionController _startSessionForVideoCameraStream:outError:]_block_invoke";
          v34 = 2114;
          v35 = v3;
          v36 = 2112;
          v37 = v17;
          LODWORD(v32) = 32;
          v30 = v33;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      [v3 _stopSession:*(*(a1 + 40) + 32) sessionRunningInOut:{*(a1 + 40) + 96, v30, v32}];
    }

    [v3 _enableConnectionsForActiveVideoCameraSourcedSinkIDs];
    [v3 _resolveVideoCameraFigCaptureSessionConfigurationValuesFromLocalSessionConfigurationValues];
    v23 = v3[4];
    v24 = v3[10];
    v25 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v25)
    {
      v25(v23, v24);
    }

    else
    {
      *v33 = @"ErrorStatus";
      v38[0] = &unk_1F2245A90;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v33 count:1];
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
    }

    [v3 _resolveCaptureSourcePropertiesFromLocalVideoCameraSessionConfigurationValues];
    [v3 _startSession:*(*(a1 + 40) + 32) sessionRunningInOut:*(a1 + 40) + 96];
    *(*(*(a1 + 48) + 8) + 24) = 1;
LABEL_40:
  }
}

- (BOOL)_startSessionForMetadataCameraStream:(id)stream outError:(id *)error
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v4 = atomic_load(&self->_invalidated);
  if (v4)
  {
    if (error)
    {
      *error = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"CMCaptureLocalDomain" code:1 userInfo:0];
    }
  }

  else
  {
    objc_initWeak(&location, self);
    dispatch_assert_queue_not_V2(self->_queue);
    queue = self->_queue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __81__CMCaptureLocalSessionController__startSessionForMetadataCameraStream_outError___block_invoke;
    v9[3] = &unk_1E7999DF8;
    objc_copyWeak(&v10, &location);
    v9[4] = self;
    v9[5] = &v12;
    dispatch_async_and_wait(queue, v9);
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  v7 = *(v13 + 24);
  _Block_object_dispose(&v12, 8);
  return v7;
}

void __81__CMCaptureLocalSessionController__startSessionForMetadataCameraStream_outError___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    if (!WeakRetained[18])
    {
      WeakRetained[18] = [WeakRetained _newMetadataCameraFigCaptureSessionConfiguration];
      if (dword_1EB58E740)
      {
        v24 = 0;
        v23 = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    *(*(a1 + 32) + 161) = 1;
    [*(a1 + 32) _determineMetadataCameraConfiguration];
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterAddListener();
    if (dword_1EB58E740)
    {
      v24 = 0;
      v23 = OS_LOG_TYPE_DEFAULT;
      v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v6 = v24;
      if (os_log_type_enabled(v5, v23))
      {
        v7 = v6;
      }

      else
      {
        v7 = v6 & 0xFFFFFFFE;
      }

      if (v7)
      {
        v8 = *(a1 + 32);
        v9 = *(v8 + 104);
        *v17 = 136315650;
        *&v17[4] = "[CMCaptureLocalSessionController _startSessionForMetadataCameraStream:outError:]_block_invoke";
        v18 = 2114;
        v19 = v8;
        v20 = 2112;
        v21 = v9;
        LODWORD(v16) = 32;
        v14 = v17;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [v3 _resolveMetadataCameraFigCaptureSessionConfigurationValuesFromLocalSessionConfigurationValues];
    v10 = v3[13];
    v11 = v3[18];
    v12 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v12)
    {
      v12(v10, v11);
    }

    else
    {
      *v17 = @"ErrorStatus";
      v22 = &unk_1F2245A90;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:v17 count:1];
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
    }

    [v3 _startSession:*(*(a1 + 32) + 104) sessionRunningInOut:*(a1 + 32) + 160];
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

- (BOOL)stopSessionForStream:(id)stream outError:(id *)error
{
  if ([objc_msgSend(stream "sampleBufferReceiver")] == 2)
  {

    return [(CMCaptureLocalSessionController *)self _stopSessionForMetadataCameraStream:stream outError:error];
  }

  else
  {

    return [(CMCaptureLocalSessionController *)self _stopSessionForVideoCameraStream:stream outError:error];
  }
}

- (BOOL)_stopSessionForVideoCameraStream:(id)stream outError:(id *)error
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v4 = atomic_load(&self->_invalidated);
  if (v4)
  {
    if (error)
    {
      *error = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"CMCaptureLocalDomain" code:1 userInfo:0];
    }
  }

  else
  {
    objc_initWeak(&location, self);
    dispatch_assert_queue_not_V2(self->_queue);
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __77__CMCaptureLocalSessionController__stopSessionForVideoCameraStream_outError___block_invoke;
    block[3] = &unk_1E7999DD0;
    objc_copyWeak(&v11, &location);
    block[4] = stream;
    block[5] = self;
    block[6] = &v13;
    dispatch_async_and_wait(queue, block);
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  v8 = *(v14 + 24);
  _Block_object_dispose(&v13, 8);
  return v8;
}

void __77__CMCaptureLocalSessionController__stopSessionForVideoCameraStream_outError___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _updateVideoCameraActiveSinkIDsWhenStoppingStream:*(a1 + 32)];
    v4 = [v3[3] count];
    v5 = [v3 _determineVideoCameraOutputMetadataIdentifiers];
    if (v4)
    {
      v6 = v5 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      if (v4)
      {
        [v3 _enableConnectionsForActiveVideoCameraSourcedSinkIDs];
        [v3 _resolveVideoCameraFigCaptureSessionConfigurationValuesFromLocalSessionConfigurationValues];
        v7 = v3[4];
        v8 = v3[10];
        v9 = *(*(CMBaseObjectGetVTable() + 16) + 24);
        if (v9)
        {
          v9(v7, v8);
        }

        else
        {
          v17 = @"ErrorStatus";
          v18[0] = &unk_1F2245A90;
          [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
          CMNotificationCenterGetDefaultLocalCenter();
          CMNotificationCenterPostNotification();
        }

        [v3 _resolveCaptureSourcePropertiesFromLocalVideoCameraSessionConfigurationValues];
      }

      else
      {
        if (dword_1EB58E740)
        {
          v20 = 0;
          v19 = 0;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterRemoveListener();
        [v3 _stopSession:*(*(a1 + 40) + 32) sessionRunningInOut:*(a1 + 40) + 96];
        *(*(*(a1 + 48) + 8) + 24) = 1;
      }
    }

    else
    {
      if (dword_1EB58E740)
      {
        v20 = 0;
        v19 = 0;
        v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      [v3 _stopSession:*(*(a1 + 40) + 32) sessionRunningInOut:{*(a1 + 40) + 96, v15, v16}];
      [v3 _enableConnectionsForActiveVideoCameraSourcedSinkIDs];
      [v3 _resolveVideoCameraFigCaptureSessionConfigurationValuesFromLocalSessionConfigurationValues];
      v12 = v3[4];
      v13 = v3[10];
      v14 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (v14)
      {
        v14(v12, v13);
      }

      else
      {
        v17 = @"ErrorStatus";
        v18[0] = &unk_1F2245A90;
        [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterPostNotification();
      }

      [v3 _resolveCaptureSourcePropertiesFromLocalVideoCameraSessionConfigurationValues];
      [v3 _startSession:*(*(a1 + 40) + 32) sessionRunningInOut:*(a1 + 40) + 96];
    }
  }
}

- (BOOL)_stopSessionForMetadataCameraStream:(id)stream outError:(id *)error
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v4 = atomic_load(&self->_invalidated);
  if (v4)
  {
    if (error)
    {
      *error = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"CMCaptureLocalDomain" code:1 userInfo:0];
    }
  }

  else
  {
    objc_initWeak(&location, self);
    dispatch_assert_queue_not_V2(self->_queue);
    queue = self->_queue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __80__CMCaptureLocalSessionController__stopSessionForMetadataCameraStream_outError___block_invoke;
    v9[3] = &unk_1E7999DF8;
    objc_copyWeak(&v10, &location);
    v9[4] = self;
    v9[5] = &v12;
    dispatch_async_and_wait(queue, v9);
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  v7 = *(v13 + 24);
  _Block_object_dispose(&v12, 8);
  return v7;
}

void __80__CMCaptureLocalSessionController__stopSessionForMetadataCameraStream_outError___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    if (dword_1EB58E740)
    {
      v8 = 0;
      v7 = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    *(*(a1 + 32) + 161) = 0;
    [*(a1 + 32) _determineMetadataCameraConfiguration];
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterRemoveListener();
    [v3 _stopSession:*(*(a1 + 32) + 104) sessionRunningInOut:*(a1 + 32) + 160];
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

- (void)_updateFrameRate
{
  videoCameraCaptureSessionConfig = self->_videoCameraCaptureSessionConfig;
  if (!videoCameraCaptureSessionConfig)
  {
    videoCameraCaptureSessionConfig = [(CMCaptureLocalSessionController *)self _newVideoCameraFigCaptureSessionConfiguration];
    self->_videoCameraCaptureSessionConfig = videoCameraCaptureSessionConfig;
    if (dword_1EB58E740)
    {
      v43 = 0;
      v42 = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      videoCameraCaptureSessionConfig = self->_videoCameraCaptureSessionConfig;
    }
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v5 = [(FigCaptureSessionConfiguration *)videoCameraCaptureSessionConfig sourceConfigurations:v28];
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v36 objects:v35 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v37;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v37 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v36 + 1) + 8 * i);
        [(NSNumber *)self->_activeMaxFrameRate floatValue];
        FigCaptureFrameRateFromFloat();
        [v10 setRequiredMaxFrameRate:{v12, v11}];
        [(NSNumber *)self->_activeMinFrameRate floatValue];
        FigCaptureFrameRateFromFloat();
        [v10 setRequiredMinFrameRate:{v14, v13}];
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v36 objects:v35 count:16];
    }

    while (v7);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  sourceConfigurations = [(FigCaptureSessionConfiguration *)self->_metadataCameraCaptureSessionConfig sourceConfigurations];
  v16 = [(NSArray *)sourceConfigurations countByEnumeratingWithState:&v31 objects:v30 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v32;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v32 != v18)
        {
          objc_enumerationMutation(sourceConfigurations);
        }

        v20 = *(*(&v31 + 1) + 8 * j);
        [(NSNumber *)self->_activeMaxFrameRate floatValue];
        FigCaptureFrameRateFromFloat();
        [v20 setRequiredMaxFrameRate:{v22, v21}];
        [(NSNumber *)self->_activeMinFrameRate floatValue];
        FigCaptureFrameRateFromFloat();
        [v20 setRequiredMinFrameRate:{v24, v23}];
      }

      v17 = [(NSArray *)sourceConfigurations countByEnumeratingWithState:&v31 objects:v30 count:16];
    }

    while (v17);
  }

  if ([(NSMutableSet *)self->_activeVideoCameraSinkIDs count])
  {
    [(CMCaptureLocalSessionController *)self _resolveVideoCameraFigCaptureSessionConfigurationValuesFromLocalSessionConfigurationValues];
    videoCameraCaptureSession = self->_videoCameraCaptureSession;
    v26 = self->_videoCameraCaptureSessionConfig;
    v27 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v27)
    {
      v27(videoCameraCaptureSession, v26);
    }

    else
    {
      v40 = @"ErrorStatus";
      v41 = &unk_1F2245A90;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
    }

    [(CMCaptureLocalSessionController *)self _resolveCaptureSourcePropertiesFromLocalVideoCameraSessionConfigurationValues];
  }
}

- (void)setActiveMaxFrameRate:(id)rate
{
  v3 = atomic_load(&self->_invalidated);
  if ((v3 & 1) == 0)
  {
    objc_initWeak(&location, self);
    dispatch_assert_queue_not_V2(self->_queue);
    queue = self->_queue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __57__CMCaptureLocalSessionController_setActiveMaxFrameRate___block_invoke;
    v7[3] = &unk_1E7999E20;
    objc_copyWeak(&v8, &location);
    v7[4] = rate;
    v7[5] = self;
    dispatch_async_and_wait(queue, v7);
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void __57__CMCaptureLocalSessionController_setActiveMaxFrameRate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v4 = (a1 + 32);
    [*(a1 + 32) floatValue];
    v6 = v5;
    [v3[11] maxSupportedFrameRate];
    if (v6 <= v7)
    {
      [*v4 floatValue];
      v9 = v8;
      [v3[11] minSupportedFrameRate];
      if (v9 >= v10)
      {

        v3[5] = [*v4 copy];
        v11 = MEMORY[0x1E696AD98];
        [v3[6] floatValue];
        v13 = v12;
        [*v4 floatValue];
        if (v13 >= v14)
        {
          v15 = (a1 + 32);
        }

        else
        {
          v15 = v3 + 6;
        }

        [*v15 floatValue];
        v3[6] = [v11 numberWithFloat:?];
        if (dword_1EB58E740)
        {
          v20 = 0;
          v19 = 0;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        [v3 _updateFrameRate];
      }
    }
  }
}

- (void)setActiveMinFrameRate:(id)rate
{
  v3 = atomic_load(&self->_invalidated);
  if ((v3 & 1) == 0)
  {
    objc_initWeak(&location, self);
    dispatch_assert_queue_not_V2(self->_queue);
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__CMCaptureLocalSessionController_setActiveMinFrameRate___block_invoke;
    block[3] = &unk_1E798F9E8;
    objc_copyWeak(&v8, &location);
    block[4] = rate;
    dispatch_async_and_wait(queue, block);
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void __57__CMCaptureLocalSessionController_setActiveMinFrameRate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [*(a1 + 32) floatValue];
    v5 = v4;
    [v3[11] maxSupportedFrameRate];
    if (v5 <= v6)
    {
      [*(a1 + 32) floatValue];
      v8 = v7;
      [v3[11] minSupportedFrameRate];
      if (v8 >= v9)
      {

        v3[6] = [*(a1 + 32) copy];
        v10 = MEMORY[0x1E696AD98];
        [v3[5] floatValue];
        v12 = v11;
        [v3[6] floatValue];
        v13 = 6;
        if (v12 > v14)
        {
          v13 = 5;
        }

        [v3[v13] floatValue];
        v3[5] = [v10 numberWithFloat:?];
        if (dword_1EB58E740)
        {
          v19 = 0;
          v18 = 0;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        [v3 _updateFrameRate];
      }
    }
  }
}

- (void)updateSessionConfigurationForStream:(id)stream
{
  if ([objc_msgSend(stream "sampleBufferReceiver")] == 2)
  {

    [(CMCaptureLocalSessionController *)self _updateSessionConfigurationForMetadataCameraStream];
  }

  else
  {

    [(CMCaptureLocalSessionController *)self _updateSessionConfigurationForVideoCameraStream];
  }
}

- (void)_updateSessionConfigurationForVideoCameraStream
{
  v2 = atomic_load(&self->_invalidated);
  if ((v2 & 1) == 0)
  {
    objc_initWeak(&location, self);
    dispatch_assert_queue_not_V2(self->_queue);
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __82__CMCaptureLocalSessionController__updateSessionConfigurationForVideoCameraStream__block_invoke;
    block[3] = &unk_1E798F9E8;
    objc_copyWeak(&v6, &location);
    block[4] = self;
    dispatch_async_and_wait(queue, block);
    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

void __82__CMCaptureLocalSessionController__updateSessionConfigurationForVideoCameraStream__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v4 = [WeakRetained _configureVideoCameraStreamOutputFormat];
    v5 = [v3 _determineVideoCameraOutputMetadataIdentifiers];
    if ((v4 & 1) != 0 || v5)
    {
      if (dword_1EB58E740)
      {
        v19 = 0;
        v18 = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      [v3 _stopSession:*(*(a1 + 32) + 32) sessionRunningInOut:{*(a1 + 32) + 96, v14, v15}];
      [v3 _resolveVideoCameraFigCaptureSessionConfigurationValuesFromLocalSessionConfigurationValues];
      v8 = v3[4];
      v9 = v3[10];
      v10 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (v10)
      {
        v10(v8, v9);
      }

      else
      {
        v16 = @"ErrorStatus";
        v17[0] = &unk_1F2245A90;
        [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterPostNotification();
      }

      [v3 _resolveCaptureSourcePropertiesFromLocalVideoCameraSessionConfigurationValues];
      [v3 _startSession:*(*(a1 + 32) + 32) sessionRunningInOut:*(a1 + 32) + 96];
    }

    else if ([v3[3] count])
    {
      if (dword_1EB58E740)
      {
        v19 = 0;
        v18 = 0;
        v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      [v3 _resolveVideoCameraFigCaptureSessionConfigurationValuesFromLocalSessionConfigurationValues];
      v11 = v3[4];
      v12 = v3[10];
      v13 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (v13)
      {
        v13(v11, v12);
      }

      else
      {
        v16 = @"ErrorStatus";
        v17[0] = &unk_1F2245A90;
        [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterPostNotification();
      }

      [v3 _resolveCaptureSourcePropertiesFromLocalVideoCameraSessionConfigurationValues];
    }
  }
}

- (void)_updateSessionConfigurationForMetadataCameraStream
{
  v2 = atomic_load(&self->_invalidated);
  if ((v2 & 1) == 0)
  {
    objc_initWeak(&location, self);
    dispatch_assert_queue_not_V2(self->_queue);
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __85__CMCaptureLocalSessionController__updateSessionConfigurationForMetadataCameraStream__block_invoke;
    block[3] = &unk_1E798F9E8;
    objc_copyWeak(&v6, &location);
    block[4] = self;
    dispatch_async_and_wait(queue, block);
    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

void __85__CMCaptureLocalSessionController__updateSessionConfigurationForMetadataCameraStream__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    if ([WeakRetained _determineMetadataCameraConfiguration])
    {
      if (dword_1EB58E740)
      {
        v14 = 0;
        v13 = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v3[18] = [v3 _newMetadataCameraFigCaptureSessionConfiguration];
      [v3 _resolveMetadataCameraFigCaptureSessionConfigurationValuesFromLocalSessionConfigurationValues];
    }

    else
    {
      if (*(*(a1 + 32) + 161) != 1)
      {
LABEL_12:

        return;
      }

      if (dword_1EB58E740)
      {
        v14 = 0;
        v13 = 0;
        v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    v6 = v3[13];
    v7 = v3[18];
    v8 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v8)
    {
      v8(v6, v7);
    }

    else
    {
      v11 = @"ErrorStatus";
      v12 = &unk_1F2245A90;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:&v12 forKeys:&v11 count:{1, v9, v10}];
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
    }

    goto LABEL_12;
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  objc_initWeak(&location, self);
  dispatch_assert_queue_not_V2(self->_queue);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82__CMCaptureLocalSessionController_observeValueForKeyPath_ofObject_change_context___block_invoke;
  block[3] = &unk_1E7999E48;
  objc_copyWeak(&v11, &location);
  block[4] = path;
  block[5] = object;
  block[6] = self;
  dispatch_async_and_wait(queue, block);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __82__CMCaptureLocalSessionController_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    if ([*(a1 + 32) isEqualToString:@"systemState"])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (*(v3 + 4))
        {
          if ([+[FigCaptureSystemStatus systemState] sharedInstance]
          {
            if ([*(v3 + 3) count])
            {
              if (dword_1EB58E740)
              {
                v23 = 0;
                v22 = OS_LOG_TYPE_DEFAULT;
                os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              [v3 _stopSession:*(*(a1 + 48) + 32) sessionRunningInOut:{*(a1 + 48) + 96, v14, v15}];
            }

            if (*(v3 + 161) == 1)
            {
              if (dword_1EB58E740)
              {
                v23 = 0;
                v22 = OS_LOG_TYPE_DEFAULT;
                v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v7 = v23;
                if (os_log_type_enabled(v6, v22))
                {
                  v8 = v7;
                }

                else
                {
                  v8 = v7 & 0xFFFFFFFE;
                }

                if (v8)
                {
                  v9 = *(v3 + 13);
                  v16 = 136315650;
                  v17 = "[CMCaptureLocalSessionController observeValueForKeyPath:ofObject:change:context:]_block_invoke";
                  v18 = 2112;
                  v19 = v3;
                  v20 = 2112;
                  v21 = v9;
                  LODWORD(v15) = 32;
                  v14 = &v16;
                  _os_log_send_and_compose_impl();
                }

                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              [v3 _stopSession:*(*(a1 + 48) + 104) sessionRunningInOut:{*(a1 + 48) + 160, v14, v15}];
            }
          }

          else if (![+[FigCaptureSystemStatus systemState] sharedInstance]
          {
            if ([*(v3 + 3) count])
            {
              if (dword_1EB58E740)
              {
                v23 = 0;
                v22 = OS_LOG_TYPE_DEFAULT;
                v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              [v3 _resolveVideoCameraFigCaptureSessionConfigurationValuesFromLocalSessionConfigurationValues];
              FigCaptureSessionSetConfiguration(*(v3 + 4), *(v3 + 10));
              [v3 _resolveCaptureSourcePropertiesFromLocalVideoCameraSessionConfigurationValues];
              [v3 _startSession:*(*(a1 + 48) + 32) sessionRunningInOut:*(a1 + 48) + 96];
            }

            if (*(v3 + 161) == 1)
            {
              if (dword_1EB58E740)
              {
                v23 = 0;
                v22 = OS_LOG_TYPE_DEFAULT;
                v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v11 = v23;
                if (os_log_type_enabled(v10, v22))
                {
                  v12 = v11;
                }

                else
                {
                  v12 = v11 & 0xFFFFFFFE;
                }

                if (v12)
                {
                  v13 = *(v3 + 13);
                  v16 = 136315650;
                  v17 = "[CMCaptureLocalSessionController observeValueForKeyPath:ofObject:change:context:]_block_invoke";
                  v18 = 2112;
                  v19 = v3;
                  v20 = 2112;
                  v21 = v13;
                  LODWORD(v15) = 32;
                  v14 = &v16;
                  _os_log_send_and_compose_impl();
                }

                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              [v3 _resolveMetadataCameraFigCaptureSessionConfigurationValuesFromLocalSessionConfigurationValues];
              FigCaptureSessionSetConfiguration(*(v3 + 13), *(v3 + 18));
              [v3 _startSession:*(*(a1 + 48) + 104) sessionRunningInOut:*(a1 + 48) + 160];
            }
          }
        }
      }
    }
  }
}

- (int)setCaptureSourceProperty:(id)property withValue:(id)value
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  objc_initWeak(&location, self);
  dispatch_assert_queue_not_V2(self->_queue);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__CMCaptureLocalSessionController_setCaptureSourceProperty_withValue___block_invoke;
  block[3] = &unk_1E7999E70;
  objc_copyWeak(&v10, &location);
  block[5] = value;
  block[6] = &v12;
  block[4] = property;
  dispatch_async_and_wait(queue, block);
  LODWORD(value) = *(v13 + 6);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v12, 8);
  return value;
}

void __70__CMCaptureLocalSessionController_setCaptureSourceProperty_withValue___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v3 = *(WeakRetained + 8);
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v6)
    {
      v7 = v6(v3, v4, v5);
    }

    else
    {
      v7 = -12782;
    }

    *(*(*(a1 + 48) + 8) + 24) = v7;
  }
}

- (void)invalidate
{
  v2 = atomic_load(&self->_invalidated);
  if ((v2 & 1) == 0)
  {
    if (self->_videoCameraCaptureSession)
    {
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_0_86();
      videoCameraCaptureSession = self->_videoCameraCaptureSession;
      if (videoCameraCaptureSession)
      {
        v5 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        if (v5)
        {
          v5(videoCameraCaptureSession);
        }

        v6 = self->_videoCameraCaptureSession;
        if (v6)
        {
          CFRelease(v6);
        }
      }
    }

    videoCameraCaptureSource = self->_videoCameraCaptureSource;
    if (videoCameraCaptureSource)
    {
      v8 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v8)
      {
        v8(videoCameraCaptureSource);
      }

      v9 = self->_videoCameraCaptureSource;
      if (v9)
      {
        v10 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        if (v10)
        {
          v10(v9);
        }

        v11 = self->_videoCameraCaptureSource;
        if (v11)
        {
          CFRelease(v11);
        }
      }
    }

    if (self->_metadataCameraCaptureSession)
    {
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_0_86();
      metadataCameraCaptureSession = self->_metadataCameraCaptureSession;
      if (metadataCameraCaptureSession)
      {
        v13 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        if (v13)
        {
          v13(metadataCameraCaptureSession);
        }

        v14 = self->_metadataCameraCaptureSession;
        if (v14)
        {
          CFRelease(v14);
        }
      }
    }

    metadataCameraCaptureSource = self->_metadataCameraCaptureSource;
    if (metadataCameraCaptureSource)
    {
      v16 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v16)
      {
        v16(metadataCameraCaptureSource);
      }

      v17 = self->_metadataCameraCaptureSource;
      if (v17)
      {
        v18 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        if (v18)
        {
          v18(v17);
        }

        v19 = self->_metadataCameraCaptureSource;
        if (v19)
        {
          CFRelease(v19);
        }
      }
    }

    atomic_store(1u, &self->_invalidated);
  }
}

- (void)_startSession:(OpaqueFigCaptureSession *)session sessionRunningInOut:(BOOL *)out
{
  dispatch_assert_queue_V2(self->_queue);
  if (!*out)
  {
    if ([+[FigCaptureSystemStatus systemState] sharedInstance]
    {
      if (dword_1EB58E740)
      {
        v11 = 0;
        v10 = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    else
    {
      v7 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (v7)
      {
        v7(session);
      }

      else
      {
        v8 = @"ErrorStatus";
        v9 = &unk_1F2245A90;
        [MEMORY[0x1E695DF20] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterPostNotification();
      }

      *out = 1;
    }
  }
}

- (void)_stopSession:(OpaqueFigCaptureSession *)session sessionRunningInOut:(BOOL *)out
{
  dispatch_assert_queue_V2(self->_queue);
  if (*out)
  {
    *out = 0;
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (v6)
    {

      v6(session);
    }

    else
    {
      v7 = @"ErrorStatus";
      v8 = &unk_1F2245A90;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:&v8 forKeys:&v7 count:1];
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
    }
  }
}

- (void)associateStream:(id)stream withSink:(id)sink
{
  if (stream)
  {
    if (sink)
    {
      [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
    }
  }
}

- (void)_createCaptureSessions
{
  v4 = *self;
  if (v4)
  {
    CFRelease(v4);
  }

  *self = 0;
  if (*a2)
  {
    CFRelease(*a2);
  }
}

@end