@interface BWAudioSourceNode
+ (id)audioSourceNodeWithAttributes:(id)a3 sessionPreset:(id)a4 clock:(OpaqueCMClock *)a5 doConfigureAudio:(BOOL)a6 doMixWithOthers:(BOOL)a7 doAllowHQBluetoothRecording:(BOOL)a8 audioSession:(id)a9 isAppAudioSession:(BOOL)a10 doEndInterruption:(BOOL)a11 audioSessionIsProxy:(BOOL)a12 audioIsPlayingToBuiltinSpeaker:(BOOL)a13 audioSessionActivatedByBWGraph:(BOOL)a14 clientAuditToken:(id *)a15 clientSDKVersionToken:(unint64_t)a16 clientOSVersionSupportsDecoupledIO:(BOOL)a17 clientAudioClockDeviceUID:(id)a18 preferredIOBufferDuration:(id)a19 audioCaptureConnectionConfigurations:(id)a20 isConfiguredForContinuityCapture:(BOOL)a21 isAudioOnlyRecordingSession:(BOOL)a22 remoteIOOutputFormat:(id)a23 outErr:(int *)a24;
+ (void)initialize;
- (BOOL)mixWithOthersActive;
- (BOOL)start:(id *)a3;
- (BOOL)stop:(id *)a3;
- (CMSampleBufferRef)_createSampleBufferForTimestampedAudioBufferList:(int)a3 audioBufferIndex:;
- (NSArray)audioLevels;
- (char)_initWithAttributes:(uint64_t)a3 sessionPreset:(const void *)a4 clock:(char)a5 doConfigureAudio:(char)a6 doMixWithOthers:(char)a7 doAllowHQBluetoothRecording:(void *)a8 audioSession:(unsigned __int8)a9 isAppAudioSession:(char)a10 doEndInterruption:(unsigned __int8)a11 audioSessionIsProxy:(unsigned __int8)a12 audioIsPlayingToBuiltinSpeaker:(unsigned __int8)a13 audioSessionActivatedByBWGraph:(_OWORD *)a14 clientAuditToken:(uint64_t)a15 clientSDKVersionToken:(char)a16 clientOSVersionSupportsDecoupledIO:(void *)a17 clientAudioClockDeviceUID:(void *)a18 preferredIOBufferDuration:(void *)a19 audioCaptureConnectionConfigurations:(char)a20 isConfiguredForContinuityCapture:(unsigned __int8)a21 isAudioOnlyRecordingSession:(void *)a22 remoteIOOutputFormat:(int *)a23 outErr:;
- (double)_desiredSampleRate:(uint64_t)a1;
- (id)_copyAudioSessionMXProperty:(_DWORD *)a3 err:;
- (id)messageDispatchQueueForOutput:(id)a3;
- (id)outputForMicSourcePosition:(int)a3;
- (uint64_t)_configureAudioSessionWithDefaultHardwareSampleRate:(double)a3 didCallDoNotNotifyOtherSessionsOnNextInactive:;
- (uint64_t)_deactivateAudioSessionIfNecessary:(uint64_t)a1;
- (uint64_t)_generatePullBuffers;
- (uint64_t)_getAudioDevicePullFrames:(uint64_t)a1;
- (uint64_t)_selectMicForCurrentAudioRoute;
- (uint64_t)_setAudioSessionAudioModeAndSelectMic:(uint64_t)a1;
- (uint64_t)_setAudioSessionBatchedMXProperties:(uint64_t)a1;
- (uint64_t)_setAudioSessionMXPropertyWithKey:(uint64_t)a3 value:;
- (uint64_t)_setVADCameraParametersWithDirection:(uint64_t)a3 zoomFactor:(float)a4 forTime:;
- (uint64_t)_setupAudioUnit;
- (uint64_t)_setupPrepareToRecordStateWithFlags:(uint64_t)result;
- (uint64_t)_updatePullFormatDescription;
- (void)_activeAudioRouteDidChangeHandler;
- (void)_generateSamples;
- (void)_generateSilenceIfNeeded;
- (void)_signalAndClearStartGroup;
- (void)_updateMXSessionAudioMode;
- (void)_updateStereoAudioCapturePairedCameraZoomFactorAndStartTimer:(uint64_t)a1;
- (void)dealloc;
- (void)makeCurrentConfigurationLive;
- (void)makeOutputsLiveIfNeeded;
- (void)prepareForCurrentConfigurationToBecomeLive;
- (void)prepareToStartRecordingWithOrientation:(int)a3 recordingSettingsID:(int64_t)a4 prefersNoInterruptionsByRingtonesAndAlerts:(BOOL)a5 completionHandler:(id)a6;
- (void)setAudioCaptureMode:(int)audioCaptureMode;
- (void)setLevelMeteringEnabled:(BOOL)a3;
- (void)setStereoAudioCapturePairedCameraZoomFactor:(float)a3;
- (void)unprepareForRecording;
- (void)updateStereoAudioCapturePairedCameraBaseFieldOfView:(float)a3 zoomFactor:(float)a4;
- (void)updateWithAudioSession:(id)a3 clientAuditToken:(id *)a4;
- (void)zoomCommandHandler:(id)a3 didApplyZoomFactor:(float)a4 zoomFactorWithoutFudge:(float)a5 targetZoomFactor:(float)a6 rampComplete:(BOOL)a7 rampCommandID:(int)a8;
@end

@implementation BWAudioSourceNode

- (uint64_t)_setupAudioUnit
{
  if (!a1)
  {
    return 0;
  }

  v73 = 0;
  v71 = 0u;
  v72 = 0u;
  v70 = 0;
  v68 = 0u;
  v69 = 0u;
  v66 = 0;
  v67 = 0;
  v2 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    OUTLINED_FUNCTION_19_0();
    kdebug_trace();
  }

  v3 = *(a1 + 320);
  inDesc.componentType = 1635086197;
  inDesc.componentSubType = v3;
  *&inDesc.componentManufacturer = 1634758764;
  inDesc.componentFlagsMask = 0;
  Next = AudioComponentFindNext(0, &inDesc);
  if (Next)
  {
    v5 = Next;
    v6 = OUTLINED_FUNCTION_22_23();
    if (v6)
    {
      AudioUnitUninitialize(v6);
      v8 = OUTLINED_FUNCTION_22_23();
      AudioComponentInstanceDispose(v8);
      v7 = 312;
      *(a1 + 312) = 0;
    }

    Property = AudioComponentInstanceNew(v5, (a1 + v7));
    if (Property)
    {
      goto LABEL_31;
    }

    OUTLINED_FUNCTION_22_23();
    OUTLINED_FUNCTION_100();
    Property = AudioUnitSetProperty(v10, v11, v12, v13, v14, 0x20u);
    if (Property)
    {
      goto LABEL_31;
    }

    if (*(a1 + 248))
    {
      v15 = *(a1 + 160);
      if (v15)
      {
        PrimaryAudioSessionIDForAuditToken = [v15 opaqueSessionID];
LABEL_14:
        inData[1] = PrimaryAudioSessionIDForAuditToken;
        OUTLINED_FUNCTION_22_23();
        OUTLINED_FUNCTION_100();
        AudioUnitSetProperty(v17, v18, v19, v20, v21, 4u);
        goto LABEL_15;
      }

      if (*(a1 + 197))
      {
        PrimaryAudioSessionIDForAuditToken = AudioSessionGetPrimaryAudioSessionIDForAuditToken();
        goto LABEL_14;
      }
    }

LABEL_15:
    inData[0] = 1;
    OUTLINED_FUNCTION_22_23();
    OUTLINED_FUNCTION_50_14();
    Property = AudioUnitSetProperty(v22, v23, v24, v25, v26, 4u);
    if (!Property)
    {
      inData[0] = 0;
      v27 = OUTLINED_FUNCTION_22_23();
      Property = AudioUnitSetProperty(v27, 0x7D3u, 2u, 0, inData, 4u);
      if (!Property)
      {
        v63 = 40;
        OUTLINED_FUNCTION_22_23();
        OUTLINED_FUNCTION_50_14();
        Property = AudioUnitGetProperty(v28, v29, v30, v31, v32, v33);
        if (!Property)
        {
          v68 = v71;
          v69 = v72;
          v70 = v73;
          HIDWORD(v68) = 12;
          if (BYTE12(v71))
          {
            LODWORD(v70) = 16;
            v34 = 2;
          }

          else
          {
            v34 = v70 >> 3;
          }

          DWORD2(v69) = v34 * HIDWORD(v69);
          LODWORD(v69) = v34 * HIDWORD(v69);
          if (*(a1 + 160))
          {
            OUTLINED_FUNCTION_33();
            if (v36)
            {
              *&v68 = [(BWAudioSourceNode *)a1 _desiredSampleRate:?];
              if (*(a1 + 160))
              {
                v58 = [FigWeakReference weakReferenceToObject:a1];
                v59 = [MEMORY[0x1E696AD88] defaultCenter];
                v60 = *MEMORY[0x1E698D6D0];
                v61 = *(a1 + 160);
                v62[0] = MEMORY[0x1E69E9820];
                v62[1] = 3221225472;
                v62[2] = __36__BWAudioSourceNode__setupAudioUnit__block_invoke;
                v62[3] = &unk_1E798FC90;
                v62[4] = v58;
                [v59 addObserverForName:v60 object:v61 queue:0 usingBlock:v62];
              }
            }

            else
            {
              [v35 sampleRate];
              *&v68 = v37;
            }
          }

          OUTLINED_FUNCTION_22_23();
          OUTLINED_FUNCTION_52_14();
          Property = AudioUnitSetProperty(v38, v39, v40, v41, v42, 0x28u);
          if (!Property)
          {
            v43 = *(a1 + 296);
            if (v43)
            {
              CFRelease(v43);
              *(a1 + 296) = 0;
            }

            OUTLINED_FUNCTION_19_0();
            Property = CMAudioFormatDescriptionCreate(v44, v45, v46, v47, v48, 0, 0, v49);
            if (!Property)
            {
              for (i = 0; i != 24; i += 8)
              {
                [*(a1 + 128 + i) setFormat:+[BWAudioFormat formatWithAudioFormatDescription:](BWAudioFormat, "formatWithAudioFormatDescription:", *(a1 + 296))];
              }

              v66 = asn_audioUnitRenderProc;
              v67 = a1;
              OUTLINED_FUNCTION_22_23();
              OUTLINED_FUNCTION_100();
              Property = AudioUnitSetProperty(v51, v52, v53, v54, v55, 0x10u);
            }
          }
        }
      }
    }

LABEL_31:
    v56 = Property;
    goto LABEL_32;
  }

  v56 = 4294954514;
LABEL_32:
  if (*v2 == 1)
  {
    OUTLINED_FUNCTION_19_0();
    kdebug_trace();
  }

  return v56;
}

- (void)prepareForCurrentConfigurationToBecomeLive
{
  v2.receiver = self;
  v2.super_class = BWAudioSourceNode;
  [(BWNode *)&v2 prepareForCurrentConfigurationToBecomeLive];
}

void __36__BWAudioSourceNode__setupAudioUnit__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) referencedObject];

  [(BWAudioSourceNode *)v1 _activeAudioRouteDidChangeHandler];
}

- (void)_activeAudioRouteDidChangeHandler
{
  if (a1)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = [*(a1 + 160) currentRoute];
    v27 = 0;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v4 = [v3 inputs];
    v5 = [v4 countByEnumeratingWithState:&v23 objects:v22 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v24;
      v8 = *MEMORY[0x1E698D668];
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v24 != v7)
          {
            objc_enumerationMutation(v4);
          }

          if ([objc_msgSend(*(*(&v23 + 1) + 8 * i) "portType")])
          {
            v10 = 0;
            goto LABEL_12;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v23 objects:v22 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v10 = 1;
LABEL_12:
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v11 = [v3 outputs];
    v12 = [v11 countByEnumeratingWithState:&v18 objects:v17 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v19;
      v15 = *MEMORY[0x1E698D678];
LABEL_14:
      v16 = 0;
      while (1)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        if ([objc_msgSend(*(*(&v18 + 1) + 8 * v16) "portType")])
        {
          break;
        }

        if (v13 == ++v16)
        {
          v13 = [v11 countByEnumeratingWithState:&v18 objects:v17 count:16];
          if (v13)
          {
            goto LABEL_14;
          }

          goto LABEL_25;
        }
      }

      if (v10)
      {
        goto LABEL_25;
      }

      [*(a1 + 160) overrideOutputAudioPort:1936747378 error:&v27];
      [v27 code];
    }

    else
    {
LABEL_25:
      [(BWAudioSourceNode *)a1 _selectMicForCurrentAudioRoute];
    }

    objc_autoreleasePoolPop(v2);
  }
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (void)makeCurrentConfigurationLive
{
  generateSamplesDispatchQueue = self->_generateSamplesDispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__BWAudioSourceNode_makeCurrentConfigurationLive__block_invoke;
  block[3] = &unk_1E798F870;
  block[4] = self;
  dispatch_async(generateSamplesDispatchQueue, block);
}

uint64_t __49__BWAudioSourceNode_makeCurrentConfigurationLive__block_invoke(uint64_t a1)
{
  v2 = 128;
  v3 = 3;
  do
  {
    v4 = *(*(a1 + 32) + v2);
    if ([v4 liveFormat])
    {
      [*(*(a1 + 32) + v2) markEndOfLiveOutputForConfigurationID:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithLongLong:", objc_msgSend(*(a1 + 32), "liveConfigurationID"))}];
    }

    result = [v4 makeConfiguredFormatLive];
    v2 += 8;
    --v3;
  }

  while (v3);
  return result;
}

- (id)messageDispatchQueueForOutput:(id)a3
{
  v3 = self->_generateSamplesDispatchQueue;

  return v3;
}

- (BOOL)start:(id *)a3
{
  v5 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v105[0] = 0;
  if (self->_streamStarted)
  {
    v6 = 1;
    goto LABEL_69;
  }

  deviceIDOut[0] = 0;
  if (CMAudioDeviceClockGetAudioDevice(self->_clock, 0, deviceIDOut, 0))
  {
    self->_audioDeviceID = deviceIDOut[0];
  }

  if (self->_audioSessionIsProxy)
  {
    [BWAudioSourceNode start:];
    v16 = -12782;
    v30 = 1;
LABEL_125:
    v29 = a3;
    goto LABEL_49;
  }

  v89 = 280;
  audioSession = self->_audioSession;
  if (self->_configuresSession)
  {
    if (audioSession)
    {
      [(BWAudioSourceNode *)self _setAudioSessionAudioModeAndSelectMic:v105];
    }
  }

  else
  {
    if (audioSession)
    {
      v8 = dword_1ED844430 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (!v8)
    {
      LODWORD(v103) = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v10 = v103;
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type[0]))
      {
        v11 = v10;
      }

      else
      {
        v11 = v10 & 0xFFFFFFFE;
      }

      if (v11)
      {
        LODWORD(time.value) = 136315138;
        *(&time.value + 4) = "[BWAudioSourceNode start:]";
        LODWORD(v88) = 12;
        p_time = &time;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  v12 = self->_audioSession;
  if (!v12)
  {
LABEL_102:
    updated = [(BWAudioSourceNode *)self _updatePullFormatDescription];
    if (updated)
    {
      v16 = updated;
      v30 = 1;
LABEL_138:
      v29 = a3;
      goto LABEL_48;
    }

    generateSamplesDispatchQueue = self->_generateSamplesDispatchQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __27__BWAudioSourceNode_start___block_invoke;
    block[3] = &unk_1E798F870;
    block[4] = self;
    dispatch_async(generateSamplesDispatchQueue, block);
    self->_auRenderCount = 0;
    self->_silenceFramesGeneratedSinceLastAURenderProc = 0;
    self->_currentSilenceBuffer.sampleTime = 0.0;
    *&self->_currentSilenceBuffer.pts.timescale = 0u;
    *&self->_currentSilenceBuffer.abl = 0u;
    *&self->_currentSilenceBuffer.allocator = 0u;
    *&self->_currentSilenceBuffer.dataBytesCapacity = 0u;
    TimestampedAudioBufferListQueueTransfer(self->_activeBuffersQueue, self->_inactiveBuffersQueue);
    if (!self->_audioSession || self->_isAppAudioSession)
    {
LABEL_105:
      v58 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_generateSamplesDispatchQueue);
      self->_silenceTimer = v58;
      if (v58)
      {
        handler[0] = MEMORY[0x1E69E9820];
        handler[1] = 3221225472;
        handler[2] = __27__BWAudioSourceNode_start___block_invoke_36;
        handler[3] = &unk_1E798F870;
        handler[4] = self;
        dispatch_source_set_event_handler(v58, handler);
        StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(self->_auOutputFormatDescription);
        CurrentHostTime = AudioGetCurrentHostTime();
        v61 = AudioConvertHostTimeToNanos(CurrentHostTime);
        CMTimeMake(&time, v61, 1000000000);
        HostTimeClock = CMClockGetHostTimeClock();
        CMSyncConvertTime(&v104, &time, HostTimeClock, *(&self->super.super.super.isa + v89));
        *&self->_currentSilenceBuffer.pts.value = *&v104.value;
        epoch = v104.epoch;
        self->_currentSilenceBuffer.pts.epoch = v104.epoch;
        mSampleRate = StreamBasicDescription->mSampleRate;
        *&time.value = *&self->_currentSilenceBuffer.pts.value;
        time.epoch = epoch;
        v6 = 1;
        CMTimeConvertScale(&v104, &time, mSampleRate, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
        self->_currentSilenceBuffer.pts = v104;
        silenceTimer = self->_silenceTimer;
        v66 = dispatch_time(0, 2000000000);
        dispatch_source_set_timer(silenceTimer, v66, 0xFFFFFFFFFFFFFFFFLL, 0);
        dispatch_resume(self->_silenceTimer);
        v67 = AudioOutputUnitStart(self->_audioUnit);
        if (!v67)
        {
          self->_streamStarted = 1;
          zoomHandlerQueue = self->_zoomHandlerQueue;
          v92[0] = MEMORY[0x1E69E9820];
          v92[1] = 3221225472;
          v92[2] = __27__BWAudioSourceNode_start___block_invoke_37;
          v92[3] = &unk_1E798F870;
          v92[4] = self;
          dispatch_sync(zoomHandlerQueue, v92);
          v5 = MEMORY[0x1E695FF58];
          goto LABEL_70;
        }

        v16 = v67;
        if (self->_audioSession && !self->_isAppAudioSession)
        {
          v78 = MEMORY[0x1E695E110];
          [(BWAudioSourceNode *)self _setAudioSessionMXPropertyWithKey:MEMORY[0x1E695E110] value:?];
          [(BWAudioSourceNode *)self _setAudioSessionMXPropertyWithKey:v78 value:?];
        }

        LODWORD(v103) = 0;
        type[0] = OS_LOG_TYPE_DEFAULT;
        v68 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v69 = v103;
        if (os_log_type_enabled(v68, type[0]))
        {
          v70 = v69;
        }

        else
        {
          v70 = v69 & 0xFFFFFFFE;
        }

        v29 = a3;
        if (v70)
        {
          LODWORD(time.value) = 136315394;
          *(&time.value + 4) = "[BWAudioSourceNode start:]";
          LOWORD(time.flags) = 1024;
          *(&time.flags + 2) = v16;
          LODWORD(v88) = 18;
          p_time = &time;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v30 = 0;
        goto LABEL_48;
      }

      [BWAudioSourceNode start:];
      v30 = 0;
      v16 = -12780;
      goto LABEL_138;
    }

    v72 = [(BWAudioSourceNode *)self _setAudioSessionMXPropertyWithKey:MEMORY[0x1E695E118] value:?];
    if (v72)
    {
      v16 = v72;
      v74 = MEMORY[0x1E695FF58];
      LODWORD(v103) = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      v84 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v85 = v103;
      if (os_log_type_enabled(v84, type[0]))
      {
        v86 = v85;
      }

      else
      {
        v86 = v85 & 0xFFFFFFFE;
      }

      if (!v86)
      {
        goto LABEL_145;
      }
    }

    else
    {
      v73 = [(BWAudioSourceNode *)self _setAudioSessionMXPropertyWithKey:MEMORY[0x1E695E118] value:?];
      if (!v73)
      {
        goto LABEL_105;
      }

      v16 = v73;
      v74 = MEMORY[0x1E695FF58];
      LODWORD(v103) = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      v75 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v76 = v103;
      if (os_log_type_enabled(v75, type[0]))
      {
        v77 = v76;
      }

      else
      {
        v77 = v76 & 0xFFFFFFFE;
      }

      if (!v77)
      {
        goto LABEL_145;
      }
    }

    LODWORD(time.value) = 136315394;
    *(&time.value + 4) = "[BWAudioSourceNode start:]";
    LOWORD(time.flags) = 1024;
    *(&time.flags + 2) = v16;
    LODWORD(v88) = 18;
    p_time = &time;
    _os_log_send_and_compose_impl();
LABEL_145:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v30 = 0;
    v5 = v74;
    goto LABEL_125;
  }

  v13 = [(AVAudioSession *)v12 isActive];
  v14 = v13;
  if (!self->_clientAudioClockDeviceUID)
  {
    if (v13)
    {
      if (self->_audioSession && dword_1ED844430)
      {
        LODWORD(v103) = 0;
        type[0] = OS_LOG_TYPE_DEFAULT;
        v51 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v52 = v103;
        if (os_log_type_enabled(v51, type[0]))
        {
          v53 = v52;
        }

        else
        {
          v53 = v52 & 0xFFFFFFFE;
        }

        if (v53)
        {
          v54 = self->_audioSession;
          LODWORD(time.value) = 136315394;
          *(&time.value + 4) = "[BWAudioSourceNode start:]";
          LOWORD(time.flags) = 2048;
          *(&time.flags + 2) = v54;
          LODWORD(v88) = 22;
          p_time = &time;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

LABEL_101:
      [(BWAudioSourceNode *)self _setAudioSessionMXPropertyWithKey:MEMORY[0x1E695E110] value:?];
      goto LABEL_102;
    }

LABEL_32:
    v21 = self->_audioSession;
    if (v21)
    {
      if (dword_1ED844430)
      {
        LODWORD(v103) = 0;
        type[0] = OS_LOG_TYPE_DEFAULT;
        v22 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v23 = v103;
        if (os_log_type_enabled(v22, type[0]))
        {
          v24 = v23;
        }

        else
        {
          v24 = v23 & 0xFFFFFFFE;
        }

        if (v24)
        {
          v25 = self->_audioSession;
          LODWORD(time.value) = 136315394;
          *(&time.value + 4) = "[BWAudioSourceNode start:]";
          LOWORD(time.flags) = 2048;
          *(&time.flags + 2) = v25;
          LODWORD(v88) = 22;
          p_time = &time;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v21 = self->_audioSession;
      }

      v103 = 0;
      [(AVAudioSession *)v21 setActive:1 error:&v103, p_time, v88, 280];
      v16 = [v103 code];
      if (v16)
      {
        LODWORD(v103) = 0;
        type[0] = OS_LOG_TYPE_DEFAULT;
        v26 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v27 = v103;
        if (os_log_type_enabled(v26, type[0]))
        {
          v28 = v27;
        }

        else
        {
          v28 = v27 & 0xFFFFFFFE;
        }

        if (v28)
        {
          LODWORD(time.value) = 136315394;
          *(&time.value + 4) = "[BWAudioSourceNode start:]";
          LOWORD(time.flags) = 1024;
          *(&time.flags + 2) = v16;
          LODWORD(v88) = 18;
          p_time = &time;
          _os_log_send_and_compose_impl();
        }

        v29 = a3;
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        goto LABEL_47;
      }

      if (!self->_isConfiguredForContinuityCapture)
      {
        v95[0] = @"camera wind suppression";
        v96[0] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_windNoiseRemovalEnabled];
        v95[1] = @"camera real time dynamics";
        v96[1] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:!self->_cinematicVideoCaptureEnabled];
        v95[2] = @"camera capture is audio only";
        v96[2] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_isAudioOnlyRecordingSession];
        v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v96 forKeys:v95 count:3];
        if ([v47 count])
        {
          if (dword_1ED844430)
          {
            *type = 0;
            v101 = OS_LOG_TYPE_DEFAULT;
            v48 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v49 = *type;
            if (os_log_type_enabled(v48, v101))
            {
              v50 = v49;
            }

            else
            {
              v50 = v49 & 0xFFFFFFFE;
            }

            if (v50)
            {
              LODWORD(time.value) = 136315394;
              *(&time.value + 4) = "[BWAudioSourceNode start:]";
              LOWORD(time.flags) = 2112;
              *(&time.flags + 2) = v47;
              LODWORD(v88) = 22;
              p_time = &time;
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          v55 = [(BWAudioSourceNode *)self _setAudioSessionMXPropertyWithKey:v47 value:?];
          if (v55)
          {
            v16 = v55;
            [BWAudioSourceNode start:];
            v29 = a3;
LABEL_47:
            v30 = 1;
LABEL_48:
            v5 = MEMORY[0x1E695FF58];
            goto LABEL_49;
          }
        }
      }
    }

    self->_didBeginInterruption = 1;
    goto LABEL_101;
  }

  v103 = 0;
  v15 = [(AVAudioSession *)self->_audioSession setActive:0 error:&v103];
  v16 = [v103 code];
  if (!v16 && v15)
  {
    v17 = [(BWAudioSourceNode *)self _setAudioSessionMXPropertyWithKey:self->_clientAudioClockDeviceUID value:?];
    if (v17)
    {
      v16 = v17;
      v88 = v3;
      LODWORD(p_time) = v17;
      FigDebugAssert3();
      *type = 0;
      v101 = OS_LOG_TYPE_DEFAULT;
      v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v19 = *type;
      if (os_log_type_enabled(v18, v101))
      {
        v20 = v19;
      }

      else
      {
        v20 = v19 & 0xFFFFFFFE;
      }

      if (v20)
      {
        LODWORD(time.value) = 136315394;
        *(&time.value + 4) = "[BWAudioSourceNode start:]";
        LOWORD(time.flags) = 1024;
        *(&time.flags + 2) = v16;
        LODWORD(v88) = 18;
        p_time = &time;
        _os_log_send_and_compose_impl();
      }

      v29 = a3;
      v30 = 1;
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      goto LABEL_48;
    }

    goto LABEL_32;
  }

  v79 = MEMORY[0x1E695FF58];
  *type = 0;
  v101 = OS_LOG_TYPE_DEFAULT;
  v80 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v81 = *type;
  if (os_log_type_enabled(v80, v101))
  {
    v82 = v81;
  }

  else
  {
    v82 = v81 & 0xFFFFFFFE;
  }

  if (v82)
  {
    v83 = @"NO";
    *(&time.value + 4) = "[BWAudioSourceNode start:]";
    LOWORD(time.flags) = 2112;
    LODWORD(time.value) = 136315906;
    if (v14)
    {
      v83 = @"YES";
    }

    *(&time.flags + 2) = v83;
    HIWORD(time.epoch) = 1024;
    v98 = v15;
    v99 = 1024;
    v100 = v16;
    LODWORD(v88) = 34;
    p_time = &time;
    _os_log_send_and_compose_impl();
  }

  v29 = a3;
  v30 = 1;
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  v6 = 1;
  v5 = v79;
  if (!v16)
  {
    goto LABEL_69;
  }

LABEL_49:
  AudioUnitUninitialize(self->_audioUnit);
  if (self->_didBeginInterruption)
  {
    self->_didBeginInterruption = 0;
    v31 = self->_audioSession;
    if (v31)
    {
      *deviceIDOut = 0;
      [(AVAudioSession *)v31 setActive:0 error:deviceIDOut];
      if (*deviceIDOut)
      {
        v32 = v5;
        *type = 0;
        v101 = OS_LOG_TYPE_DEFAULT;
        v33 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v34 = *type;
        if (os_log_type_enabled(v33, v101))
        {
          v35 = v34;
        }

        else
        {
          v35 = v34 & 0xFFFFFFFE;
        }

        if (!v35)
        {
          goto LABEL_64;
        }

        goto LABEL_56;
      }
    }
  }

  else if (v105[0] == 1)
  {
    [(BWAudioSourceNode *)self _setAudioSessionMXPropertyWithKey:MEMORY[0x1E695E110] value:?];
    v36 = self->_audioSession;
    if (v36)
    {
      *deviceIDOut = 0;
      [(AVAudioSession *)v36 setActive:0 error:deviceIDOut];
      if (*deviceIDOut)
      {
        v32 = v5;
        *type = 0;
        v101 = OS_LOG_TYPE_DEFAULT;
        v37 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v38 = *type;
        if (os_log_type_enabled(v37, v101))
        {
          v39 = v38;
        }

        else
        {
          v39 = v38 & 0xFFFFFFFE;
        }

        if (!v39)
        {
          goto LABEL_64;
        }

LABEL_56:
        LODWORD(time.value) = 136315394;
        *(&time.value + 4) = "[BWAudioSourceNode start:]";
        LOWORD(time.flags) = 2112;
        *(&time.flags + 2) = *deviceIDOut;
        LODWORD(v88) = 22;
        p_time = &time;
        _os_log_send_and_compose_impl();
LABEL_64:
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v5 = v32;
      }
    }
  }

  if (!v29)
  {
    v6 = 0;
    if (!v30)
    {
      goto LABEL_70;
    }

    goto LABEL_69;
  }

  v6 = 0;
  *v29 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v16 userInfo:0];
  if (v30)
  {
LABEL_69:
    [(BWAudioSourceNode *)self makeOutputsLiveIfNeeded:p_time];
  }

LABEL_70:
  os_unfair_lock_lock(&self->_startGroupLock);
  startGroup = self->_startGroup;
  os_unfair_lock_unlock(&self->_startGroupLock);
  if (startGroup)
  {
    [(BWAudioSourceNode *)self _signalAndClearStartGroup];
  }

  else
  {
    FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
    deviceIDOut[0] = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v42 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v43 = deviceIDOut[0];
    if (os_log_type_enabled(v42, type[0]))
    {
      v44 = v43;
    }

    else
    {
      v44 = v43 & 0xFFFFFFFE;
    }

    if (v44)
    {
      LODWORD(time.value) = 136315138;
      *(&time.value + 4) = "[BWAudioSourceNode start:]";
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    LOWORD(v104.value) = 0;
    v45 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(FrameworkRadarComponent, v45, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWAudioSourceNode.m", 626, @"LastShownDate:BWAudioSourceNode.m:626", @"LastShownBuild:BWAudioSourceNode.m:626", 0);
    free(v45);
  }

  if (*v5 == 1)
  {
    kdebug_trace();
  }

  return v6;
}

void __27__BWAudioSourceNode_start___block_invoke(uint64_t a1)
{
  v1 = a1;
  v2 = 0;
  v3 = 128;
  v4 = -3;
  do
  {
    v5 = *(*(v1 + 32) + v3);
    if (v5)
    {
      if ([v5 liveFormat])
      {
        FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v1 = a1;
        [*(*(a1 + 32) + v3) format];
        [*(*(a1 + 32) + v3) liveFormat];
        v7 = _os_log_send_and_compose_impl();
        FigCapturePleaseFileRadar(FrameworkRadarComponent, v7, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWAudioSourceNode.m", 485, @"LastShownDate:BWAudioSourceNode.m:485", @"LastShownBuild:BWAudioSourceNode.m:485", 0);
        free(v7);
      }

      else
      {
        [*(*(v1 + 32) + v3) makeConfiguredFormatLive];
      }
    }

    ++v2;
    v3 += 8;
  }

  while (!__CFADD__(v4++, 1));
}

void __27__BWAudioSourceNode_start___block_invoke_37(uint64_t a1)
{
  *(*(a1 + 32) + 624) = FigGetUpTimeNanoseconds();
  v2 = *(a1 + 32);

  [(BWAudioSourceNode *)v2 _updateStereoAudioCapturePairedCameraZoomFactorAndStartTimer:?];
}

- (void)makeOutputsLiveIfNeeded
{
  generateSamplesDispatchQueue = self->_generateSamplesDispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__BWAudioSourceNode_makeOutputsLiveIfNeeded__block_invoke;
  block[3] = &unk_1E798F870;
  block[4] = self;
  dispatch_async(generateSamplesDispatchQueue, block);
}

void *__44__BWAudioSourceNode_makeOutputsLiveIfNeeded__block_invoke(uint64_t a1)
{
  v2 = 128;
  v3 = 3;
  do
  {
    result = *(*(a1 + 32) + v2);
    if (result)
    {
      result = [result liveFormat];
      if (!result)
      {
        result = [*(*(a1 + 32) + v2) makeConfiguredFormatLive];
      }
    }

    v2 += 8;
    --v3;
  }

  while (v3);
  return result;
}

- (BOOL)stop:(id *)a3
{
  v4 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  streamStarted = self->_streamStarted;
  self->_streamStarted = 0;
  silenceTimer = self->_silenceTimer;
  if (silenceTimer)
  {
    dispatch_source_cancel(silenceTimer);
  }

  generateSamplesDispatchQueue = self->_generateSamplesDispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __26__BWAudioSourceNode_stop___block_invoke;
  block[3] = &unk_1E798F870;
  block[4] = self;
  dispatch_async(generateSamplesDispatchQueue, block);
  if (streamStarted)
  {
    AudioOutputUnitStop(self->_audioUnit);
    AudioUnitUninitialize(self->_audioUnit);
    if (self->_audioSession)
    {
      if (self->_clientAudioClockDeviceUID)
      {
        [BWAudioSourceNode stop:?];
      }

      if (!self->_isAppAudioSession)
      {
        [BWAudioSourceNode stop:?];
      }
    }

    self->_nextExpectedHostTime = 0;
    v8 = MEMORY[0x1E6960C70];
    v9 = *(MEMORY[0x1E6960C70] + 16);
    self->_nextExpectedSampleTime.epoch = v9;
    v10 = *v8;
    *&self->_nextExpectedSampleTime.value = *v8;
    *&self->_prevPTS.value = v10;
    self->_prevPTS.epoch = v9;
    if (self->_didBeginInterruption && !self->_keepAudioSessionActiveOnStop)
    {
      audioSession = self->_audioSession;
      if (audioSession)
      {
        if (self->_doEndInterruption || self->_livePhotoCaptureEnabled || self->_mixWithOthersEnabled)
        {
          v15 = 0;
          [(AVAudioSession *)audioSession setActive:0 error:&v15];
          self->_didBeginInterruption = 0;
        }
      }
    }
  }

  zoomHandlerQueue = self->_zoomHandlerQueue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __26__BWAudioSourceNode_stop___block_invoke_2;
  v14[3] = &unk_1E798F870;
  v14[4] = self;
  dispatch_sync(zoomHandlerQueue, v14);
  if (!self->_stopSourceAsynchronously)
  {
    dispatch_sync(self->_generateSamplesDispatchQueue, &__block_literal_global_106);
  }

  if (*v4 == 1)
  {
    kdebug_trace();
  }

  return 1;
}

void __26__BWAudioSourceNode_stop___block_invoke(uint64_t a1)
{
  v2 = 128;
  v3 = 3;
  do
  {
    v4 = *(*(a1 + 32) + v2);
    if ([v4 liveFormat])
    {
      [v4 markEndOfLiveOutput];
    }

    v2 += 8;
    --v3;
  }

  while (v3);
  *(*(a1 + 32) + 449) = 1;
  v5 = *(*(a1 + 32) + 480);
  if (v5)
  {

    *(*(a1 + 32) + 480) = 0;
  }
}

void __26__BWAudioSourceNode_stop___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 632);
  if (v2)
  {
    dispatch_source_cancel(v2);

    *(*(a1 + 32) + 632) = 0;
  }
}

+ (id)audioSourceNodeWithAttributes:(id)a3 sessionPreset:(id)a4 clock:(OpaqueCMClock *)a5 doConfigureAudio:(BOOL)a6 doMixWithOthers:(BOOL)a7 doAllowHQBluetoothRecording:(BOOL)a8 audioSession:(id)a9 isAppAudioSession:(BOOL)a10 doEndInterruption:(BOOL)a11 audioSessionIsProxy:(BOOL)a12 audioIsPlayingToBuiltinSpeaker:(BOOL)a13 audioSessionActivatedByBWGraph:(BOOL)a14 clientAuditToken:(id *)a15 clientSDKVersionToken:(unint64_t)a16 clientOSVersionSupportsDecoupledIO:(BOOL)a17 clientAudioClockDeviceUID:(id)a18 preferredIOBufferDuration:(id)a19 audioCaptureConnectionConfigurations:(id)a20 isConfiguredForContinuityCapture:(BOOL)a21 isAudioOnlyRecordingSession:(BOOL)a22 remoteIOOutputFormat:(id)a23 outErr:(int *)a24
{
  v24 = [BWAudioSourceNode alloc];
  v25 = *&a15->var0[4];
  v34[0] = *a15->var0;
  v34[1] = v25;
  v26 = [(BWAudioSourceNode *)v24 _initWithAttributes:a3 sessionPreset:a4 clock:a5 doConfigureAudio:a6 doMixWithOthers:a7 doAllowHQBluetoothRecording:a8 audioSession:a9 isAppAudioSession:a10 doEndInterruption:a11 audioSessionIsProxy:a12 audioIsPlayingToBuiltinSpeaker:a13 audioSessionActivatedByBWGraph:a14 clientAuditToken:v34 clientSDKVersionToken:a16 clientOSVersionSupportsDecoupledIO:a17 clientAudioClockDeviceUID:a18 preferredIOBufferDuration:a19 audioCaptureConnectionConfigurations:a20 isConfiguredForContinuityCapture:a21 isAudioOnlyRecordingSession:a22 remoteIOOutputFormat:a23 outErr:a24];

  return v26;
}

- (void)setLevelMeteringEnabled:(BOOL)a3
{
  self->_levelMeteringEnabled = a3;
  inData = a3;
  if (AudioUnitSetProperty(self->_audioUnit, 0x766u, 1u, 1u, &inData, 4u))
  {
    self->_levelMeteringEnabled = 0;
  }
}

- (BOOL)mixWithOthersActive
{
  v7 = 0;
  v2 = [(BWAudioSourceNode *)self _copyAudioSessionMXProperty:&v7 err:?];
  v3 = v2;
  v4 = 0;
  if (v7)
  {
    v5 = 1;
  }

  else
  {
    v5 = v2 == 0;
  }

  if (!v5)
  {
    v4 = [v2 unsignedIntValue] == 16;
  }

  return v4;
}

- (void)setAudioCaptureMode:(int)audioCaptureMode
{
  if (dword_1ED844430)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  self->_audioCaptureMode = audioCaptureMode;
  if (audioCaptureMode == 5)
  {
    self->_silenceFramesFillingDisabled = 1;
    if (!dword_1ED844430)
    {
      return;
    }

    v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    audioCaptureMode = self->_audioCaptureMode;
  }

  if (audioCaptureMode == 7)
  {
    self->_useDecoupledIO = 1;
  }
}

- (void)updateWithAudioSession:(id)a3 clientAuditToken:(id *)a4
{
  if (self->_streamStarted)
  {
    FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
    v13 = 0;
    v12 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    LOWORD(v11[0]) = 0;
    v6 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(FrameworkRadarComponent, v6, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWAudioSourceNode.m", 1175, @"LastShownDate:BWAudioSourceNode.m:1175", @"LastShownBuild:BWAudioSourceNode.m:1175", 0);
    free(v6);
  }

  else
  {
    v9 = *&a4->var0[4];
    *self->_clientAuditToken.val = *a4->var0;
    *&self->_clientAuditToken.val[4] = v9;
    v10 = *&a4->var0[4];
    v11[0] = *a4->var0;
    v11[1] = v10;
    self->_clientPID = FigCaptureGetPIDFromAuditToken(v11);

    self->_audioSession = a3;
    self->_audioSessionIsProxy = 0;
    *&v11[0] = 0;
    if (FigAudioSessionClockCreateForAVAudioSession())
    {
      [BWAudioSourceNode updateWithAudioSession:clientAuditToken:];
    }

    else
    {
      [BWAudioSourceNode updateWithAudioSession:v11 clientAuditToken:?];
    }
  }
}

- (id)outputForMicSourcePosition:(int)a3
{
  if (a3 > 2)
  {
    return 0;
  }

  else
  {
    return self->_outputsByMicSourcePosition[a3];
  }
}

- (void)setStereoAudioCapturePairedCameraZoomFactor:(float)a3
{
  if (!self->_streamStarted)
  {
    self->_stereoAudioCapturePairedCameraZoomFactor = a3;
    self->_nextZoomFactor = a3;
  }
}

- (void)updateStereoAudioCapturePairedCameraBaseFieldOfView:(float)a3 zoomFactor:(float)a4
{
  os_unfair_lock_lock(&self->_zoomLock);
  stereoAudioCapturePairedCameraBaseFieldOfView = self->_stereoAudioCapturePairedCameraBaseFieldOfView;
  stereoAudioCapturePairedCameraZoomFactor = self->_stereoAudioCapturePairedCameraZoomFactor;
  if (stereoAudioCapturePairedCameraBaseFieldOfView == a3 && stereoAudioCapturePairedCameraZoomFactor == a4)
  {

    os_unfair_lock_unlock(&self->_zoomLock);
  }

  else
  {
    self->_stereoAudioCapturePairedCameraZoomFactor = (stereoAudioCapturePairedCameraBaseFieldOfView / a3) * stereoAudioCapturePairedCameraZoomFactor;
    self->_stereoAudioCapturePairedCameraBaseFieldOfView = a3;
    self->_nextZoomFactor = a4;
    os_unfair_lock_unlock(&self->_zoomLock);
    zoomHandlerQueue = self->_zoomHandlerQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __84__BWAudioSourceNode_updateStereoAudioCapturePairedCameraBaseFieldOfView_zoomFactor___block_invoke;
    block[3] = &unk_1E798F870;
    block[4] = self;
    dispatch_async(zoomHandlerQueue, block);
  }
}

- (void)zoomCommandHandler:(id)a3 didApplyZoomFactor:(float)a4 zoomFactorWithoutFudge:(float)a5 targetZoomFactor:(float)a6 rampComplete:(BOOL)a7 rampCommandID:(int)a8
{
  os_unfair_lock_lock(&self->_zoomLock);
  self->_nextZoomFactor = a4;
  os_unfair_lock_unlock(&self->_zoomLock);
  zoomHandlerQueue = self->_zoomHandlerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __126__BWAudioSourceNode_zoomCommandHandler_didApplyZoomFactor_zoomFactorWithoutFudge_targetZoomFactor_rampComplete_rampCommandID___block_invoke;
  block[3] = &unk_1E798F870;
  block[4] = self;
  dispatch_async(zoomHandlerQueue, block);
}

- (void)prepareToStartRecordingWithOrientation:(int)a3 recordingSettingsID:(int64_t)a4 prefersNoInterruptionsByRingtonesAndAlerts:(BOOL)a5 completionHandler:(id)a6
{
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  v16 = a5;
  self->_prefersNoInterruptionsByRingtonesAndAlerts = a5;
  if (a5 || FigCFEqual())
  {
    [(BWAudioSourceNode *)self _setupPrepareToRecordStateWithFlags:?];
    audioSessionSetRecordingRelatedPropertyQueue = self->_audioSessionSetRecordingRelatedPropertyQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __141__BWAudioSourceNode_prepareToStartRecordingWithOrientation_recordingSettingsID_prefersNoInterruptionsByRingtonesAndAlerts_completionHandler___block_invoke;
    block[3] = &unk_1E799B928;
    v14 = a3;
    block[4] = self;
    block[5] = a6;
    block[6] = v15;
    block[7] = a4;
    v11 = block;
  }

  else
  {
    audioSessionSetRecordingRelatedPropertyQueue = self->_preparedToRecordHandlerCallbackQueue;
    if (!audioSessionSetRecordingRelatedPropertyQueue)
    {
      audioSessionSetRecordingRelatedPropertyQueue = FigDispatchQueueCreateWithPriority();
      self->_preparedToRecordHandlerCallbackQueue = audioSessionSetRecordingRelatedPropertyQueue;
    }

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __141__BWAudioSourceNode_prepareToStartRecordingWithOrientation_recordingSettingsID_prefersNoInterruptionsByRingtonesAndAlerts_completionHandler___block_invoke_2;
    v12[3] = &unk_1E79903B8;
    v12[4] = a6;
    v12[5] = a4;
    v11 = v12;
  }

  dispatch_async(audioSessionSetRecordingRelatedPropertyQueue, v11);
  _Block_object_dispose(v15, 8);
}

void __141__BWAudioSourceNode_prepareToStartRecordingWithOrientation_recordingSettingsID_prefersNoInterruptionsByRingtonesAndAlerts_completionHandler___block_invoke(uint64_t a1)
{
  v25 = **&MEMORY[0x1E6960CC0];
  if (FigCFEqual())
  {
    os_unfair_lock_lock((*(a1 + 32) + 652));
    v2 = *(*(a1 + 32) + 656);
    os_unfair_lock_unlock((*(a1 + 32) + 652));
    if (v2)
    {
      v3 = dispatch_time(0, 2000000000);
      v4 = dispatch_group_wait(v2, v3);

      if (v4)
      {
        FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
        LODWORD(rhs.value) = 0;
        v24 = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        LOWORD(v23.value) = 0;
        v7 = _os_log_send_and_compose_impl();
        FigCapturePleaseFileRadar(FrameworkRadarComponent, v7, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWAudioSourceNode.m", 3251, @"LastShownDate:BWAudioSourceNode.m:3251", @"LastShownBuild:BWAudioSourceNode.m:3251", 0);
        free(v7);
      }
    }
  }

  if (*(*(*(a1 + 48) + 8) + 24) == 1 && *(*(a1 + 32) + 160))
  {
    FigGetUpTimeNanoseconds();
    v23.value = 0;
    [*(*(a1 + 32) + 160) setPrefersNoInterruptionsFromSystemAlerts:1 error:&v23];
    [v23.value code];
    FigGetUpTimeNanoseconds();
  }

  if (FigCFEqual())
  {
    FigGetUpTimeNanoseconds();
    v11 = [MEMORY[0x1E695DF88] dataWithLength:16];
    v12 = [v11 mutableBytes];
    *v12 = *(a1 + 64);
    *(v12 + 8) = 0;
    [(BWAudioSourceNode *)*(a1 + 32) _setAudioSessionMXPropertyWithKey:v11 value:?];
    FigGetUpTimeNanoseconds();
    v13 = AudioConvertHostTimeToNanos(*([v11 mutableBytes] + 8));
    CMTimeMake(&v25, v13, 1000000000);
    HostTimeClock = CMClockGetHostTimeClock();
    v15 = *(*(a1 + 32) + 280);
    time = v25;
    CMSyncConvertTime(&v23, &time, HostTimeClock, v15);
    v25 = v23;
    v16 = *(*(a1 + 32) + 464);
    time = v23;
    CMTimeConvertScale(&v23, &time, v16, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
    v25 = v23;
    v17 = *(a1 + 32) + 456;
    time = v23;
    v18 = *v17;
    rhs.epoch = *(v17 + 16);
    *&rhs.value = v18;
    CMTimeSubtract(&v23, &time, &rhs);
    v25 = v23;
  }

  v8 = *(*(a1 + 32) + 576);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __141__BWAudioSourceNode_prepareToStartRecordingWithOrientation_recordingSettingsID_prefersNoInterruptionsByRingtonesAndAlerts_completionHandler___block_invoke_103;
  block[3] = &unk_1E799B900;
  v9 = *(a1 + 40);
  v20 = v25;
  v10 = *(a1 + 56);
  block[4] = v9;
  block[5] = v10;
  dispatch_async(v8, block);
}

uint64_t __141__BWAudioSourceNode_prepareToStartRecordingWithOrientation_recordingSettingsID_prefersNoInterruptionsByRingtonesAndAlerts_completionHandler___block_invoke_103(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 16);
  v5 = *(a1 + 48);
  v6 = *(a1 + 64);
  return v3(v2, &v5, v1);
}

uint64_t __141__BWAudioSourceNode_prepareToStartRecordingWithOrientation_recordingSettingsID_prefersNoInterruptionsByRingtonesAndAlerts_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 16);
  v5 = *MEMORY[0x1E6960CC0];
  v6 = *(MEMORY[0x1E6960CC0] + 16);
  return v3(v2, &v5, v1);
}

- (void)unprepareForRecording
{
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x2020000000;
  prefersNoInterruptionsByRingtonesAndAlerts = self->_prefersNoInterruptionsByRingtonesAndAlerts;
  v3 = prefersNoInterruptionsByRingtonesAndAlerts;
  self->_prefersNoInterruptionsByRingtonesAndAlerts = 0;
  if (v3 || FigCFEqual())
  {
    audioSessionSetRecordingRelatedPropertyQueue = self->_audioSessionSetRecordingRelatedPropertyQueue;
    if (!audioSessionSetRecordingRelatedPropertyQueue)
    {
      audioSessionSetRecordingRelatedPropertyQueue = FigDispatchQueueCreateWithPriority();
      self->_audioSessionSetRecordingRelatedPropertyQueue = audioSessionSetRecordingRelatedPropertyQueue;
    }

    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __42__BWAudioSourceNode_unprepareForRecording__block_invoke;
    v5[3] = &unk_1E798FAF8;
    v5[4] = self;
    v5[5] = v6;
    dispatch_async(audioSessionSetRecordingRelatedPropertyQueue, v5);
  }

  _Block_object_dispose(v6, 8);
}

uint64_t __42__BWAudioSourceNode_unprepareForRecording__block_invoke(uint64_t a1)
{
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    FigGetUpTimeNanoseconds();
    v2 = *(*(a1 + 32) + 160);
    if (v2)
    {
      v5 = 0;
      [v2 setPrefersNoInterruptionsFromSystemAlerts:0 error:&v5];
      [v5 code];
    }

    FigGetUpTimeNanoseconds();
  }

  v3 = (a1 + 32);
  result = FigCFEqual();
  if (result)
  {
    return __42__BWAudioSourceNode_unprepareForRecording__block_invoke_cold_1(v3);
  }

  return result;
}

- (uint64_t)_setAudioSessionAudioModeAndSelectMic:(uint64_t)a1
{
  if (a1)
  {
    if (*(a1 + 160))
    {
      [(BWAudioSourceNode *)a1 _updateMXSessionAudioMode];
      v4 = [(BWAudioSourceNode *)a1 _desiredSampleRate:?];
      [(BWAudioSourceNode *)a1 _configureAudioSessionWithDefaultHardwareSampleRate:a2 didCallDoNotNotifyOtherSessionsOnNextInactive:v4];
    }

    [(BWAudioSourceNode *)a1 _selectMicForCurrentAudioRoute];
  }

  return 0;
}

- (uint64_t)_setAudioSessionMXPropertyWithKey:(uint64_t)a3 value:
{
  if (!a1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_18();
  if (v6)
  {
    OUTLINED_FUNCTION_19_0();
    kdebug_trace();
  }

  v9 = 0;
  [*(a1 + 160) setMXSessionProperty:a2 value:a3 error:&v9];
  v7 = [v9 code];
  OUTLINED_FUNCTION_18();
  if (v6)
  {
    OUTLINED_FUNCTION_19_0();
    kdebug_trace();
  }

  return v7;
}

- (uint64_t)_updatePullFormatDescription
{
  if (result)
  {
    v1 = result;
    v229[0] = 0;
    v2 = *(result + 588);
    memset(__s2, 0, sizeof(__s2));
    v3 = *(result + 160);
    v227 = 0;
    if (v3)
    {
      [v3 inputSampleRate];
      v5 = v4;
      StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(*(v1 + 296));
      if (!StreamBasicDescription)
      {
        v229[0] = -12710;
        OUTLINED_FUNCTION_19_29();
        OUTLINED_FUNCTION_18_28();
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v196 = OUTLINED_FUNCTION_27_17(os_log_and_send_and_compose_flags_and_os_log_type, v189, v190, v191, v192, v193, v194, v195, v215, v216, v217, v218, *v219, *&v219[8], *&v219[16], *&v219[24], v220, type, *__s1, *&__s1[8], *&__s1[16], *&__s1[24], *&__s1[32], *&__s1[40], v223, v224, v225[0]);
        if (OUTLINED_FUNCTION_5_2(v196))
        {
          *__s1 = 136315138;
          *&__s1[4] = "[BWAudioSourceNode _updatePullFormatDescription]";
          OUTLINED_FUNCTION_3_89();
          OUTLINED_FUNCTION_4_80();
          OUTLINED_FUNCTION_124();
        }

        goto LABEL_161;
      }

      v7 = *&StreamBasicDescription->mSampleRate;
      v8 = *&StreamBasicDescription->mBytesPerPacket;
      *&__s2[32] = *&StreamBasicDescription->mBitsPerChannel;
      *&__s2[16] = v8;
      *__s2 = v7;
      v9 = v5;
      if (*(v1 + 198) == 1)
      {
        v155 = [(BWAudioSourceNode *)v1 _desiredSampleRate:?];
        if (v5 <= v155)
        {
          v9 = v5;
        }

        else
        {
          v9 = v155;
        }
      }

      v10 = *__s2 != v9;
      if (*__s2 == v9)
      {
        if (dword_1ED844430)
        {
          OUTLINED_FUNCTION_19_29();
          OUTLINED_FUNCTION_18_28();
          v21 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v29 = OUTLINED_FUNCTION_17_30(v21, v22, v23, v24, v25, v26, v27, v28, v215, v216, v217, v218, *v219, *&v219[8], *&v219[16], *&v219[24], v220, type, *__s1, *&__s1[8], *&__s1[16], *&__s1[24], *&__s1[32], *&__s1[40], v223, v224, v225[0]);
          if (OUTLINED_FUNCTION_6(v29))
          {
            *__s1 = 136315650;
            OUTLINED_FUNCTION_42_13();
            *&__s1[24] = v5;
            OUTLINED_FUNCTION_3_89();
            OUTLINED_FUNCTION_4_80();
            OUTLINED_FUNCTION_18_2();
            OUTLINED_FUNCTION_32_12();
          }

          OUTLINED_FUNCTION_0_102();
          OUTLINED_FUNCTION_17_8();
        }
      }

      else
      {
        if (dword_1ED844430)
        {
          OUTLINED_FUNCTION_19_29();
          OUTLINED_FUNCTION_18_28();
          v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v19 = OUTLINED_FUNCTION_17_30(v11, v12, v13, v14, v15, v16, v17, v18, v215, v216, v217, v218, *v219, *&v219[8], *&v219[16], *&v219[24], v220, type, *__s1, *&__s1[8], *&__s1[16], *&__s1[24], *&__s1[32], *&__s1[40], v223, v224, v225[0]);
          if (OUTLINED_FUNCTION_6(v19))
          {
            *__s1 = 136315906;
            OUTLINED_FUNCTION_42_13();
            *&__s1[24] = v9;
            *&__s1[32] = v20;
            *&__s1[34] = v5;
            OUTLINED_FUNCTION_3_89();
            OUTLINED_FUNCTION_4_80();
            OUTLINED_FUNCTION_18_2();
            OUTLINED_FUNCTION_32_12();
          }

          OUTLINED_FUNCTION_0_102();
          OUTLINED_FUNCTION_17_8();
        }

        *__s2 = v9;
      }

      if (*(v1 + 160))
      {
        v156 = [(BWAudioSourceNode *)v1 _copyAudioSessionMXProperty:v229 err:?];
        v30 = [v156 intValue];

        if (dword_1ED844430)
        {
          OUTLINED_FUNCTION_19_29();
          OUTLINED_FUNCTION_18_28();
          v157 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v165 = OUTLINED_FUNCTION_58_14(v157, v158, v159, v160, v161, v162, v163, v164, v215, v216, v217, v218, *v219, *&v219[8], *&v219[16], *&v219[24], v220, type, *__s1, *&__s1[8], *&__s1[16], *&__s1[24], *&__s1[32], *&__s1[40], v223, v224, v225[0]);
          if (OUTLINED_FUNCTION_5_24(v165))
          {
            *__s1 = 136315394;
            *&__s1[4] = "[BWAudioSourceNode _updatePullFormatDescription]";
            *&__s1[12] = 1024;
            *&__s1[14] = v30;
            OUTLINED_FUNCTION_3_89();
            OUTLINED_FUNCTION_4_80();
            _os_log_send_and_compose_impl();
            OUTLINED_FUNCTION_40_16();
          }

          OUTLINED_FUNCTION_0_102();
          OUTLINED_FUNCTION_13_0();
        }

        if (v229[0])
        {
          OUTLINED_FUNCTION_19_29();
          OUTLINED_FUNCTION_18_28();
          v166 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v174 = OUTLINED_FUNCTION_27_17(v166, v167, v168, v169, v170, v171, v172, v173, v215, v216, v217, v218, *v219, *&v219[8], *&v219[16], *&v219[24], v220, type, *__s1, *&__s1[8], *&__s1[16], *&__s1[24], *&__s1[32], *&__s1[40], v223, v224, v225[0]);
          if (OUTLINED_FUNCTION_5_2(v174))
          {
            *__s1 = 136315394;
            OUTLINED_FUNCTION_9_54();
            OUTLINED_FUNCTION_3_89();
            OUTLINED_FUNCTION_4_80();
            OUTLINED_FUNCTION_124();
          }

          goto LABEL_161;
        }
      }

      else
      {
        v30 = 0;
      }

      if (*&__s2[28] != v30)
      {
        if (dword_1ED844430)
        {
          OUTLINED_FUNCTION_19_29();
          OUTLINED_FUNCTION_18_28();
          v31 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v39 = OUTLINED_FUNCTION_58_14(v31, v32, v33, v34, v35, v36, v37, v38, v215, v216, v217, v218, *v219, *&v219[8], *&v219[16], *&v219[24], v220, type, *__s1, *&__s1[8], *&__s1[16], *&__s1[24], *&__s1[32], *&__s1[40], v223, v224, v225[0]);
          if (OUTLINED_FUNCTION_5_24(v39))
          {
            *__s1 = 136315650;
            OUTLINED_FUNCTION_9_54();
            *&__s1[18] = v40;
            *&__s1[20] = v30;
            OUTLINED_FUNCTION_3_89();
            OUTLINED_FUNCTION_4_80();
            _os_log_send_and_compose_impl();
            OUTLINED_FUNCTION_40_16();
          }

          OUTLINED_FUNCTION_0_102();
          OUTLINED_FUNCTION_13_0();
        }

        *&__s2[24] = (*&__s2[32] >> 3) * v30;
        *&__s2[28] = v30;
        *&__s2[16] = *&__s2[24];
        v10 = 1;
      }

      if (FigCFEqual())
      {
        *__s1 = *__s2;
        *&__s1[16] = *&__s2[16];
        *&__s1[32] = *&__s2[32];
        if (*&__s2[28] != 3)
        {
          v229[0] = -12780;
          v206 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v214 = OUTLINED_FUNCTION_59_11(v206, v207, v208, v209, v210, v211, v212, v213, v215, v216, v217, v218, *v219, *&v219[8], *&v219[16], *&v219[24], v220, OS_LOG_TYPE_DEFAULT, *__s1, *&__s1[8], *&__s1[16], *&__s1[24], *&__s1[32], *&__s1[40], v223, v224, 0);
          if (OUTLINED_FUNCTION_5_2(v214))
          {
            OUTLINED_FUNCTION_2_1();
            OUTLINED_FUNCTION_4_80();
            OUTLINED_FUNCTION_124();
          }

          goto LABEL_161;
        }

        *&__s2[12] |= 0x20u;
        *&__s2[16] = *&__s2[32] >> 3;
        *&__s2[20] = 1;
        *&__s2[24] = *&__s2[32] >> 3;
        v10 = memcmp(__s1, __s2, 0x28uLL) != 0;
      }
    }

    else
    {
      v10 = 0;
      v9 = 0.0;
      v5 = 0.0;
    }

    if (*(v1 + 194) == 1)
    {
      *__s2 = 0x40E7700000000000;
      *&__s2[24] = 4;
      *&__s2[8] = xmmword_1AD0566D0;
      *&__s2[32] = 32;
      if (v2 == 5)
      {
        *&__s2[28] = 4;
        goto LABEL_33;
      }

      v10 = 1;
      *&__s2[28] = 1;
    }

    if (v2 != 2)
    {
      goto LABEL_34;
    }

    *__s2 = 0x40E7700000000000;
    *&__s2[8] = xmmword_1AD0566D0;
    *&__s2[24] = xmmword_1AD0566E0;
LABEL_33:
    v10 = 1;
LABEL_34:
    v41 = -346533888;
    if ([OUTLINED_FUNCTION_47_12() streamDescription])
    {
      v42 = [OUTLINED_FUNCTION_47_12() streamDescription];
      v2 = 0;
      v43 = *(v42 + 32);
      v44 = *(v42 + 16);
      *__s2 = *v42;
      *&__s2[16] = v44;
      *&__s2[32] = v43;
    }

    else if (!v10)
    {
      v69 = 0;
      goto LABEL_59;
    }

    if (dword_1ED844430)
    {
      OUTLINED_FUNCTION_15_35();
      v45 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v53 = OUTLINED_FUNCTION_17_30(v45, v46, v47, v48, v49, v50, v51, v52, v215, v216, v217, v218, *v219, *&v219[8], *&v219[16], *&v219[24], v220, type, *__s1, *&__s1[8], *&__s1[16], *&__s1[24], *&__s1[32], *&__s1[40], v223, v224, v225[0]);
      if (OUTLINED_FUNCTION_6(v53))
      {
        *__s1 = 136316418;
        *&__s1[4] = "[BWAudioSourceNode _updatePullFormatDescription]";
        *&__s1[12] = 1024;
        *&__s1[14] = *&__s2[8];
        *&__s1[18] = 2048;
        *&__s1[20] = *__s2;
        *&__s1[28] = 1024;
        *&__s1[30] = *&__s2[12];
        *&__s1[34] = 1024;
        *&__s1[36] = *&__s2[28];
        *&__s1[40] = 1024;
        *&__s1[42] = *&__s2[32];
        OUTLINED_FUNCTION_3_89();
        OUTLINED_FUNCTION_4_80();
        OUTLINED_FUNCTION_18_2();
        OUTLINED_FUNCTION_32_12();
      }

      OUTLINED_FUNCTION_0_102();
      OUTLINED_FUNCTION_17_8();
    }

    OUTLINED_FUNCTION_34_20();
    OUTLINED_FUNCTION_52_14();
    v229[0] = AudioUnitSetProperty(v54, v55, v56, v57, v58, 0x28u);
    if (v229[0])
    {
      return v229[0];
    }

    if (v2 == 2)
    {
      *__s1 = xmmword_1AD0566F0;
      *&__s1[16] = unk_1AD056700;
      OUTLINED_FUNCTION_34_20();
      OUTLINED_FUNCTION_52_14();
      v229[0] = AudioUnitSetProperty(v59, v60, v61, v62, v63, 0x20u);
      if (v229[0])
      {
        OUTLINED_FUNCTION_41_13();
        v197 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v205 = OUTLINED_FUNCTION_59_11(v197, v198, v199, v200, v201, v202, v203, v204, v215, v216, v217, v218, *v219, *&v219[8], *&v219[16], *&v219[24], v220, type, *__s1, *&__s1[8], *&__s1[16], *&__s1[24], *&__s1[32], *&__s1[40], v223, v224, *v225);
        if (OUTLINED_FUNCTION_5_2(v205))
        {
          OUTLINED_FUNCTION_2_1();
          OUTLINED_FUNCTION_4_80();
          OUTLINED_FUNCTION_124();
        }

        goto LABEL_161;
      }

      if ((dword_1ED844430 & 0x20) != 0)
      {
        OUTLINED_FUNCTION_41_13();
        v64 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v65 = *v225;
        if (os_log_type_enabled(v64, type))
        {
          v66 = v65;
        }

        else
        {
          v66 = v65 & 0xFFFFFFFE;
        }

        if (v66)
        {
          *v219 = 136315394;
          *&v219[4] = "[BWAudioSourceNode _updatePullFormatDescription]";
          *&v219[12] = 2112;
          *&v219[14] = BWStringFromAudioChannelLayout(__s1);
          OUTLINED_FUNCTION_2_1();
          OUTLINED_FUNCTION_58_1();
        }

        OUTLINED_FUNCTION_0_102();
        OUTLINED_FUNCTION_17_8();
      }

      v69 = 1;
      v2 = 2;
    }

    else if ([OUTLINED_FUNCTION_47_12() channelLayout] && (v67 = objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_47_12(), "channelLayout"), "layout")) != 0)
    {
      v68 = v67;
      OUTLINED_FUNCTION_34_20();
      v69 = 1;
      OUTLINED_FUNCTION_52_14();
      v229[0] = AudioUnitSetProperty(v70, v71, v72, v73, v68, v74);
      if (v229[0])
      {
        OUTLINED_FUNCTION_19_29();
        OUTLINED_FUNCTION_18_28();
        v75 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v76 = os_log_type_enabled(v75, v225[0]);
        if (OUTLINED_FUNCTION_6(v76))
        {
          *__s1 = 136315394;
          OUTLINED_FUNCTION_9_54();
          OUTLINED_FUNCTION_3_89();
          OUTLINED_FUNCTION_4_80();
          _os_log_send_and_compose_impl();
          OUTLINED_FUNCTION_32_12();
        }

        goto LABEL_131;
      }
    }

    else
    {
      v69 = 1;
    }

LABEL_59:
    ChannelLayout = CMAudioFormatDescriptionGetChannelLayout(*(v1 + 296), 0);
    v78 = OUTLINED_FUNCTION_34_20();
    v229[0] = AudioUnitInitialize(v78);
    if (v229[0])
    {
      OUTLINED_FUNCTION_15_35();
      v175 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v183 = OUTLINED_FUNCTION_27_17(v175, v176, v177, v178, v179, v180, v181, v182, v215, v216, v217, v218, *v219, *&v219[8], *&v219[16], *&v219[24], v220, type, *__s1, *&__s1[8], *&__s1[16], *&__s1[24], *&__s1[32], *&__s1[40], v223, v224, v225[0]);
      if (!OUTLINED_FUNCTION_5_2(v183))
      {
        goto LABEL_161;
      }

      *__s1 = 136315394;
      OUTLINED_FUNCTION_9_54();
      OUTLINED_FUNCTION_3_89();
      goto LABEL_151;
    }

    if (ChannelLayout)
    {
      v79 = v69;
    }

    else
    {
      v79 = 1;
    }

    if (v79 != 1)
    {
LABEL_124:
      v229[0] = [(BWAudioSourceNode *)v1 _getAudioDevicePullFrames:?];
      if (v229[0])
      {
        return v229[0];
      }

      v142 = v227;
      if (v9 != v5)
      {
        v142 = vcvtpd_u64_f64(v9 * v227 / v5);
        v227 = v142;
      }

      if (v142 != *(v1 + 304))
      {
        *(v1 + 304) = v142;
        v229[0] = [(BWAudioSourceNode *)v1 _generatePullBuffers];
        if (v229[0])
        {
          return v229[0];
        }
      }

      [OUTLINED_FUNCTION_24_20() sampleRate];
      v144 = v143;
      [OUTLINED_FUNCTION_24_20() inputLatency];
      CMTimeMake(&v226, (v144 * v145 + 0.5), *__s2);
      *(v1 + 456) = v226;
      CMTimeMake(&v226, 2, *__s2);
      *(v1 + 384) = v226;
      if (!dword_1ED844430)
      {
        return v229[0];
      }

      OUTLINED_FUNCTION_15_35();
      v146 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v154 = OUTLINED_FUNCTION_17_30(v146, v147, v148, v149, v150, v151, v152, v153, v215, v216, v217, v218, *v219, *&v219[8], *&v219[16], *&v219[24], v220, type, *__s1, *&__s1[8], *&__s1[16], *&__s1[24], *&__s1[32], *&__s1[40], v223, v224, v225[0]);
      if (OUTLINED_FUNCTION_6(v154))
      {
        *__s1 = 136315394;
        OUTLINED_FUNCTION_9_54();
        OUTLINED_FUNCTION_3_89();
        OUTLINED_FUNCTION_4_80();
        OUTLINED_FUNCTION_18_2();
        OUTLINED_FUNCTION_32_12();
      }

LABEL_131:
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      return v229[0];
    }

    *v225 = 0;
    HIDWORD(v224) = 0;
    if (*(v1 + 664))
    {
      v80 = 2;
    }

    else
    {
      v80 = 1;
    }

    v81 = OUTLINED_FUNCTION_34_20();
    v229[0] = AudioUnitGetPropertyInfo(v81, 0x13u, v80, 1u, &v224 + 1, 0);
    if (v229[0] || !HIDWORD(v224))
    {
      OUTLINED_FUNCTION_1_112();
      v89 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v90 = os_log_type_enabled(v89, type);
      if (OUTLINED_FUNCTION_6(v90))
      {
        *__s1 = 136315650;
        *&__s1[4] = "[BWAudioSourceNode _updatePullFormatDescription]";
        *&__s1[12] = 1024;
        *&__s1[14] = v229[0];
        *&__s1[18] = 1024;
        *&__s1[20] = HIDWORD(v224);
        OUTLINED_FUNCTION_3_89();
        OUTLINED_FUNCTION_4_80();
        OUTLINED_FUNCTION_18_2();
        OUTLINED_FUNCTION_32_12();
      }

      v84 = &unk_1ED844000;
      OUTLINED_FUNCTION_1_4();
      OUTLINED_FUNCTION_17_8();
    }

    else
    {
      v82 = malloc_type_malloc(HIDWORD(v224), 0x74A508A4uLL);
      v83 = OUTLINED_FUNCTION_34_20();
      v229[0] = AudioUnitGetProperty(v83, 0x13u, v80, 1u, v82, &v224 + 1);
      v84 = &unk_1ED844000;
      if (!v229[0])
      {
        goto LABEL_81;
      }

      OUTLINED_FUNCTION_1_112();
      v85 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v41 = *v219;
      if (os_log_type_enabled(v85, type))
      {
        v86 = *v219;
      }

      else
      {
        v86 = *v219 & 0xFFFFFFFE;
      }

      if (v86)
      {
        v87 = v229[0];
        v88 = BWStringFromAudioChannelLayout(v82);
        *__s1 = 136315906;
        *&__s1[4] = "[BWAudioSourceNode _updatePullFormatDescription]";
        *&__s1[12] = 1024;
        *&__s1[14] = v87;
        *&__s1[18] = 2112;
        *&__s1[20] = v88;
        *&__s1[28] = 1024;
        *&__s1[30] = HIDWORD(v224);
        OUTLINED_FUNCTION_3_89();
        OUTLINED_FUNCTION_4_4();
        _os_log_send_and_compose_impl();
        v41 = *v219;
      }

      OUTLINED_FUNCTION_1_4();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      HIDWORD(v224) = 0;
      if (!v82)
      {
LABEL_81:
        if (v84[268])
        {
          OUTLINED_FUNCTION_1_112();
          v91 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          OUTLINED_FUNCTION_26_21(v91, v92, v93, v94, v95, v96, v97, v98, v215, v216, v217, v218, *v219, *&v219[8], *&v219[16], *&v219[24], v220, type);
          OUTLINED_FUNCTION_46();
          if (v41)
          {
            v99 = BWStringFromAudioChannelLayout(v82);
            *__s1 = 136315394;
            *&__s1[4] = "[BWAudioSourceNode _updatePullFormatDescription]";
            *&__s1[12] = 2112;
            *&__s1[14] = v99;
            OUTLINED_FUNCTION_3_89();
            OUTLINED_FUNCTION_4_4();
            _os_log_send_and_compose_impl();
            OUTLINED_FUNCTION_40_16();
          }

          OUTLINED_FUNCTION_0_102();
          OUTLINED_FUNCTION_13_0();
        }

        if (v2 == 2 && v82)
        {
          if (!*v82 && v82[2] == 6 && v82[3] == 208 && v82[8] == 209 && v82[13] == 0x20000 && v82[18] == 131073 && v82[23] == 131074 && v82[28] == 131075)
          {
            goto LABEL_103;
          }

          OUTLINED_FUNCTION_1_112();
          v100 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          OUTLINED_FUNCTION_26_21(v100, v101, v102, v103, v104, v105, v106, v107, v215, v216, v217, v218, *v219, *&v219[8], *&v219[16], *&v219[24], v220, type);
          OUTLINED_FUNCTION_46();
          if (!v41)
          {
LABEL_102:
            OUTLINED_FUNCTION_1_4();
            OUTLINED_FUNCTION_13_0();
LABEL_103:
            OUTLINED_FUNCTION_2_5();
            v229[0] = CMAudioFormatDescriptionCreate(v117, v118, v119, v120, v121, v122, 0, v123);
            free(v82);
            if (!v229[0])
            {
              if (v84[268])
              {
                OUTLINED_FUNCTION_1_112();
                v124 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v125 = os_log_type_enabled(v124, type);
                if (OUTLINED_FUNCTION_5_24(v125))
                {
                  *__s1 = 136315394;
                  *&__s1[4] = "[BWAudioSourceNode _updatePullFormatDescription]";
                  *&__s1[12] = 2112;
                  *&__s1[14] = *v225;
                  OUTLINED_FUNCTION_3_89();
                  OUTLINED_FUNCTION_4_80();
                  _os_log_send_and_compose_impl();
                  OUTLINED_FUNCTION_40_16();
                }

                OUTLINED_FUNCTION_0_102();
                OUTLINED_FUNCTION_13_0();
              }

              v126 = *(v1 + 296);
              v127 = *v225;
              *(v1 + 296) = *v225;
              if (v127)
              {
                CFRetain(v127);
              }

              if (v126)
              {
                CFRelease(v126);
              }

              if (*v225)
              {
                CFRelease(*v225);
              }

              type = 0;
              if (!FigCFEqual())
              {
                type = CFRetain(*(v1 + 296));
LABEL_121:
                v140 = 3;
                v141 = v1;
                do
                {
                  [*(v141 + 128) setFormat:+[BWAudioFormat formatWithAudioFormatDescription:](BWAudioFormat, "formatWithAudioFormatDescription:", type)];
                  v141 += 8;
                  --v140;
                }

                while (v140);
                CFRelease(type);
                goto LABEL_124;
              }

              *v219 = *__s2;
              *&v219[16] = *&__s2[16];
              v220 = *&__s2[32];
              *&v219[28] = 1;
              *&v219[12] = *&__s2[12] & 0xFFFFFFDF;
              v128 = malloc_type_calloc(0xCuLL, 1uLL, 0xC43F175AuLL);
              *v128 = 6553601;
              OUTLINED_FUNCTION_2_5();
              v136 = CMAudioFormatDescriptionCreate(v129, v130, v131, v132, v133, v134, 0, v135);
              v229[0] = v136;
              if (v84[268])
              {
                OUTLINED_FUNCTION_39_17();
                v137 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v138 = os_log_type_enabled(v137, BYTE3(v218));
                if (OUTLINED_FUNCTION_5_24(v138))
                {
                  *__s1 = 136315394;
                  *&__s1[4] = "[BWAudioSourceNode _updatePullFormatDescription]";
                  *&__s1[12] = 2112;
                  *&__s1[14] = 0;
                  OUTLINED_FUNCTION_3_89();
                  OUTLINED_FUNCTION_4_80();
                  _os_log_send_and_compose_impl();
                }

                OUTLINED_FUNCTION_0_102();
                OUTLINED_FUNCTION_13_0();
                v139 = v229[0];
              }

              else
              {
                v139 = v136;
              }

              free(v128);
              if (!v139)
              {
                goto LABEL_121;
              }

              OUTLINED_FUNCTION_39_17();
              v186 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v187 = os_log_type_enabled(v186, BYTE3(v218));
              if (OUTLINED_FUNCTION_5_2(v187))
              {
                *__s1 = 136316674;
                *&__s1[4] = "[BWAudioSourceNode _updatePullFormatDescription]";
                *&__s1[12] = 1024;
                *&__s1[14] = v229[0];
                *&__s1[18] = 1024;
                *&__s1[20] = *&v219[8];
                *&__s1[24] = 2048;
                *&__s1[26] = *v219;
                *&__s1[34] = 1024;
                *&__s1[36] = *&v219[12];
                *&__s1[40] = 1024;
                *&__s1[42] = 1;
                *&__s1[46] = 1024;
                LODWORD(v223) = v220;
                OUTLINED_FUNCTION_3_89();
                OUTLINED_FUNCTION_4_80();
                OUTLINED_FUNCTION_124();
              }

LABEL_161:
              OUTLINED_FUNCTION_1_4();
              goto LABEL_131;
            }

            OUTLINED_FUNCTION_1_112();
            v184 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v185 = os_log_type_enabled(v184, type);
            if (!OUTLINED_FUNCTION_5_2(v185))
            {
              goto LABEL_161;
            }

            *__s1 = 136316674;
            *&__s1[4] = "[BWAudioSourceNode _updatePullFormatDescription]";
            *&__s1[12] = 1024;
            *&__s1[14] = v229[0];
            *&__s1[18] = 1024;
            *&__s1[20] = *&__s2[8];
            *&__s1[24] = 2048;
            *&__s1[26] = *__s2;
            *&__s1[34] = 1024;
            *&__s1[36] = *&__s2[12];
            *&__s1[40] = 1024;
            *&__s1[42] = *&__s2[28];
            *&__s1[46] = 1024;
            LODWORD(v223) = *&__s2[32];
            OUTLINED_FUNCTION_3_89();
LABEL_151:
            OUTLINED_FUNCTION_4_80();
            OUTLINED_FUNCTION_124();
            goto LABEL_161;
          }
        }

        else
        {
          if (v2 != 1 || !v82 || v82[2] == 2)
          {
            goto LABEL_103;
          }

          OUTLINED_FUNCTION_1_112();
          v108 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          OUTLINED_FUNCTION_26_21(v108, v109, v110, v111, v112, v113, v114, v115, v215, v216, v217, v218, *v219, *&v219[8], *&v219[16], *&v219[24], v220, type);
          OUTLINED_FUNCTION_46();
          if (!v41)
          {
            goto LABEL_102;
          }
        }

        v116 = BWStringFromAudioChannelLayout(v82);
        *__s1 = 136315394;
        *&__s1[4] = "[BWAudioSourceNode _updatePullFormatDescription]";
        *&__s1[12] = 2112;
        *&__s1[14] = v116;
        OUTLINED_FUNCTION_3_89();
        OUTLINED_FUNCTION_4_4();
        _os_log_send_and_compose_impl();
        OUTLINED_FUNCTION_40_16();
        goto LABEL_102;
      }

      free(v82);
    }

    v82 = 0;
    goto LABEL_81;
  }

  return result;
}

- (void)_generateSilenceIfNeeded
{
  if (a1 && (*(a1 + 648) & 1) == 0 && *(a1 + 448) == 1 && (*(a1 + 449) & 1) == 0)
  {
    v2 = objc_autoreleasePoolPush();
    if (*(a1 + 512) == atomic_fetch_add((a1 + 488), 0))
    {
      contexta = v2;
      StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(*(a1 + 296));
      memset(&v65, 0, sizeof(v65));
      OUTLINED_FUNCTION_30_13();
      CMTimeMake(&v65, v4, v5);
      memset(&v64, 0, sizeof(v64));
      CurrentHostTime = AudioGetCurrentHostTime();
      v7 = AudioConvertHostTimeToNanos(CurrentHostTime);
      CMTimeMake(&time, v7, 1000000000);
      HostTimeClock = CMClockGetHostTimeClock();
      CMSyncConvertTime(&v64, &time, HostTimeClock, *(a1 + 280));
      OUTLINED_FUNCTION_30_13();
      v62 = v64;
      CMTimeConvertScale(&time, &v62, v9, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
      v64 = time;
      *&v62.value = *&time.value;
      OUTLINED_FUNCTION_23_22();
      CMTimeSubtract(v12, v10, v11);
      v64 = time;
      memset(&time, 0, sizeof(time));
      *&v62.value = *(a1 + 528);
      OUTLINED_FUNCTION_23_22();
      CMTimeAdd(v15, v13, v14);
      if (OUTLINED_FUNCTION_29_17(time.epoch, v24, contexta, v32, v34, v36, v40, v44, v47, v50, v53, v57, v59, v60, time.value, *&time.timescale, v62.epoch) <= 0)
      {
        while (1)
        {
          *(a1 + 560) = *(a1 + 304);
          if ((StreamBasicDescription->mFormatFlags & 0x20) != 0 && *(a1 + 588) == 6)
          {
            break;
          }

          v19 = [(BWAudioSourceNode *)a1 _createSampleBufferForTimestampedAudioBufferList:0 audioBufferIndex:?];
          [*(a1 + 16) emitSampleBuffer:v19];
          NumSamples = CMSampleBufferGetNumSamples(v19);
          if (v19)
          {
            CFRelease(v19);
          }

LABEL_20:
          *(a1 + 496) += NumSamples;
          memset(&v62, 0, sizeof(v62));
          OUTLINED_FUNCTION_30_13();
          CMTimeMake(&v62, v20, v21);
          OUTLINED_FUNCTION_55_13(v62.epoch, v25, context, v62.value, *&v62.timescale, v37, v41, *(a1 + 528), *(a1 + 536), *(a1 + 544), v54, *v58);
          *(a1 + 528) = *v58;
          *(a1 + 544) = *&v58[16];
          OUTLINED_FUNCTION_49_11(a1 + 528);
          OUTLINED_FUNCTION_55_13(v65.epoch, v26, contextb, v65.value, *&v65.timescale, v38, v42, v45, v48, v51, v55, *v58);
          time = *v58;
          if (OUTLINED_FUNCTION_29_17(*&v58[16], v27, contextc, v33, v35, v39, v43, v46, v49, v52, v56, *v58, *&v58[16], v61, *v58, *&v58[8], v62.epoch) >= 1)
          {
            goto LABEL_21;
          }
        }

        v16 = 0;
        NumSamples = 0;
        while (1)
        {
          if (*(a1 + 128 + 8 * v16))
          {
            v18 = [(BWAudioSourceNode *)a1 _createSampleBufferForTimestampedAudioBufferList:v16 audioBufferIndex:?];
            [*(a1 + 128 + 8 * v16) emitSampleBuffer:v18];
            if (NumSamples)
            {
              if (!v18)
              {
                goto LABEL_11;
              }

LABEL_17:
              CFRelease(v18);
              goto LABEL_11;
            }

            NumSamples = CMSampleBufferGetNumSamples(v18);
            if (v18)
            {
              goto LABEL_17;
            }
          }

LABEL_11:
          if (++v16 == 3)
          {
            goto LABEL_20;
          }
        }
      }

LABEL_21:
      v62 = v65;
      Seconds = CMTimeGetSeconds(&v62);
      v23 = dispatch_time(0, (Seconds * 1000000000.0));
      OUTLINED_FUNCTION_53_10(v23);
      v2 = context;
    }

    objc_autoreleasePoolPop(v2);
  }
}

- (void)_updateStereoAudioCapturePairedCameraZoomFactorAndStartTimer:(uint64_t)a1
{
  if (a1)
  {
    if (!_FigIsCurrentDispatchQueue())
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3();
    }

    if (BWAudioCaptureModeIsSpatial(*(a1 + 588)))
    {
      OUTLINED_FUNCTION_33();
      if (v4)
      {
        if (!*(a1 + 632))
        {
          UpTimeNanoseconds = FigGetUpTimeNanoseconds();
          v6 = dispatch_time(0, 0);
          if (UpTimeNanoseconds >= *(a1 + 624))
          {
            os_unfair_lock_lock((a1 + 644));
            v9 = *(a1 + 640);
            os_unfair_lock_unlock((a1 + 644));
            [(BWAudioSourceNode *)a1 _setVADCameraParametersWithDirection:UpTimeNanoseconds zoomFactor:v9 forTime:?];
            if (!a2)
            {
              return;
            }
          }

          else if (!a2)
          {
            return;
          }

          v7 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(a1 + 608));
          *(a1 + 632) = v7;
          handler[0] = MEMORY[0x1E69E9820];
          handler[1] = 3221225472;
          handler[2] = __82__BWAudioSourceNode__updateStereoAudioCapturePairedCameraZoomFactorAndStartTimer___block_invoke;
          handler[3] = &unk_1E798F870;
          handler[4] = a1;
          dispatch_source_set_event_handler(v7, handler);
          v8 = dispatch_time(v6, *(a1 + 624) - UpTimeNanoseconds);
          OUTLINED_FUNCTION_53_10(v8);
          dispatch_resume(*(a1 + 632));
        }
      }
    }
  }
}

- (void)_signalAndClearStartGroup
{
  if (a1)
  {
    os_unfair_lock_lock((a1 + 652));
    v2 = *(a1 + 656);
    if (v2)
    {
      dispatch_group_leave(v2);

      *(a1 + 656) = 0;
    }

    os_unfair_lock_unlock((a1 + 652));
  }
}

- (char)_initWithAttributes:(uint64_t)a3 sessionPreset:(const void *)a4 clock:(char)a5 doConfigureAudio:(char)a6 doMixWithOthers:(char)a7 doAllowHQBluetoothRecording:(void *)a8 audioSession:(unsigned __int8)a9 isAppAudioSession:(char)a10 doEndInterruption:(unsigned __int8)a11 audioSessionIsProxy:(unsigned __int8)a12 audioIsPlayingToBuiltinSpeaker:(unsigned __int8)a13 audioSessionActivatedByBWGraph:(_OWORD *)a14 clientAuditToken:(uint64_t)a15 clientSDKVersionToken:(char)a16 clientOSVersionSupportsDecoupledIO:(void *)a17 clientAudioClockDeviceUID:(void *)a18 preferredIOBufferDuration:(void *)a19 audioCaptureConnectionConfigurations:(char)a20 isConfiguredForContinuityCapture:(unsigned __int8)a21 isAudioOnlyRecordingSession:(void *)a22 remoteIOOutputFormat:(int *)a23 outErr:
{
  v24 = a1;
  if (a1)
  {
    if (a4)
    {
      v97.receiver = a1;
      v97.super_class = BWAudioSourceNode;
      v24 = objc_msgSendSuper2(&v97, sel_init);
      if (!v24)
      {
        return v24;
      }

      v72 = v23;
      v33 = a22;
      v76 = a18;
      v75 = a17;
      v74 = a14;
      HIDWORD(v73) = a12;
      *(v24 + 35) = CFRetain(a4);
      *(v24 + 72) = 0;
      *(v24 + 113) = 1;
      *(v24 + 19) = [objc_msgSend(a2 objectForKeyedSubscript:{@"AudioSettingsForPresetsMap", "objectForKeyedSubscript:", a3}];
      v24[194] = a20;
      v24[648] = 0;
      if (v24[648] == 1 && dword_1ED844430)
      {
        v71 = a22;
        v96 = 0;
        v95 = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v33 = a22;
      }

      v35 = a13;
      v24[649] = a12;
      if (a8)
      {
        LODWORD(v71) = a21;
        LODWORD(v70) = a9;
        HIDWORD(v70) = a11;
        HIDWORD(v73) = a13;
        *(v24 + 20) = a8;
        v24[198] = a5;
        v24[199] = a6;
        v24[200] = a7;
        v24[196] = a10;
        v24[197] = a9;
        v24[192] = a11;
        OUTLINED_FUNCTION_33();
        if (v36)
        {
          *(v24 + 21) = CFRetain(*MEMORY[0x1E69AF828]);
          v37 = [objc_msgSend(a2 objectForKeyedSubscript:{@"PrefersDecoupledIO", "BOOLValue"}];
          v35 = a13;
          if (v37)
          {
            if (a16)
            {
              OUTLINED_FUNCTION_33();
              if (v36)
              {
                if ((v24[194] & 1) == 0)
                {
                  v24[176] = 1;
                }
              }
            }
          }
        }
      }

      v24[195] = v35;
      v38 = a14[1];
      *(v24 + 216) = *a14;
      *(v24 + 232) = v38;
      v39 = *(v24 + 232);
      v94[0] = *(v24 + 216);
      v94[1] = v39;
      *(v24 + 62) = FigCaptureGetPIDFromAuditToken(v94);
      *(v24 + 32) = a15;
      *(v24 + 33) = a17;
      *(v24 + 34) = a18;
      v24[650] = a21;
      v40 = v33;
      v48 = 0;
      *(v24 + 83) = v40;
      *(v24 + 80) = 1919512419;
      *(v24 + 26) = 0;
      do
      {
        v40 = OUTLINED_FUNCTION_60_1(v40, v41, v42, v43, v44, v45, v46, v47, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, 0);
        if (v40)
        {
          v49 = v40;
          v50 = MEMORY[0];
          while (2)
          {
            v51 = 0;
            do
            {
              if (MEMORY[0] != v50)
              {
                objc_enumerationMutation(a19);
              }

              v52 = *(8 * v51);
              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();
              if (isKindOfClass)
              {
                isKindOfClass = [v52 builtInMicrophonePosition];
                if (v48 == isKindOfClass)
                {
                  v61 = [[BWNodeOutput alloc] initWithMediaType:1936684398 node:v24];
                  *&v24[8 * v48 + 128] = v61;
                  [v24 addOutput:v61];

                  v40 = [v52 builtInMicrophoneRequiredSampleRate];
                  if (v62 > *(v24 + 26))
                  {
                    v40 = [v52 builtInMicrophoneRequiredSampleRate];
                    *(v24 + 26) = v63;
                  }

                  goto LABEL_30;
                }
              }

              v51 = v51 + 1;
            }

            while (v49 != v51);
            v40 = OUTLINED_FUNCTION_60_1(isKindOfClass, v54, v55, v56, v57, v58, v59, v60, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93);
            v49 = v40;
            if (v40)
            {
              continue;
            }

            break;
          }
        }

LABEL_30:
        ++v48;
      }

      while (v48 != 3);
      *(v24 + 55) = FigDispatchQueueCreateWithPriority();
      *(v24 + 76) = FigDispatchQueueCreateWithPriority();
      *(v24 + 161) = 0;
      *(v24 + 77) = 100000000;
      [v24 setSupportsLiveReconfiguration:1];
      [v24 setSupportsPrepareWhileRunning:1];
      v64 = [(BWAudioSourceNode *)v24 _setupAudioUnit];
      if (!v64)
      {
        *(v24 + 163) = 0;
        v65 = dispatch_group_create();
        *(v24 + 82) = v65;
        dispatch_group_enter(v65);
        return v24;
      }

      v66 = v64;
      OUTLINED_FUNCTION_1_5();
      FigDebugAssert3();
    }

    else
    {
      OUTLINED_FUNCTION_0_8();
      FigDebugAssert3();
      v66 = -12780;
    }

    if (a23)
    {
      *a23 = v66;
    }

    return 0;
  }

  return v24;
}

- (void)dealloc
{
  if (self->_configuresSession && self->_audioSession)
  {
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 removeObserver:self name:*MEMORY[0x1E698D6D0] object:self->_audioSession];
  }

  MXSessionAudioMode = self->_MXSessionAudioMode;
  if (MXSessionAudioMode)
  {
    CFRelease(MXSessionAudioMode);
    self->_MXSessionAudioMode = 0;
  }

  audioUnit = self->_audioUnit;
  if (audioUnit)
  {
    AudioUnitUninitialize(audioUnit);
    AudioComponentInstanceDispose(self->_audioUnit);
    self->_audioUnit = 0;
  }

  renderProcErrorQueue = self->_renderProcErrorQueue;
  if (renderProcErrorQueue)
  {
    CFRelease(renderProcErrorQueue);
    self->_renderProcErrorQueue = 0;
  }

  TimestampedAudioBufferListQueueReleaseAndClear(&self->_inactiveBuffersQueue);
  TimestampedAudioBufferListQueueReleaseAndClear(&self->_activeBuffersQueue);
  clock = self->_clock;
  if (clock)
  {
    CFRelease(clock);
    self->_clock = 0;
  }

  auOutputFormatDescription = self->_auOutputFormatDescription;
  if (auOutputFormatDescription)
  {
    CFRelease(auOutputFormatDescription);
    self->_auOutputFormatDescription = 0;
  }

  [(BWAudioSourceNode *)self _signalAndClearStartGroup];
  v9.receiver = self;
  v9.super_class = BWAudioSourceNode;
  [(BWNode *)&v9 dealloc];
}

- (id)_copyAudioSessionMXProperty:(_DWORD *)a3 err:
{
  if (!a1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_18();
  if (v6)
  {
    OUTLINED_FUNCTION_19_0();
    kdebug_trace();
  }

  v11 = 0;
  v7 = [*(a1 + 160) getMXSessionProperty:a2 error:&v11];
  if (v11)
  {
    v8 = [v11 code];
  }

  else
  {
    v8 = 0;
  }

  v9 = v7;
  if (a3)
  {
    *a3 = v8;
  }

  OUTLINED_FUNCTION_18();
  if (v6)
  {
    OUTLINED_FUNCTION_19_0();
    kdebug_trace();
  }

  return v9;
}

- (NSArray)audioLevels
{
  OUTLINED_FUNCTION_50_14();
  AudioUnitGetPropertyInfo(v2, v3, v4, v5, v6, 0);
  free(0);
  return 0;
}

- (uint64_t)_setVADCameraParametersWithDirection:(uint64_t)a3 zoomFactor:(float)a4 forTime:
{
  if (result)
  {
    v7 = result;
    result = _FigIsCurrentDispatchQueue();
    if (!result)
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_5();
      result = FigDebugAssert3();
    }

    if ((*(v7 + 194) & 1) == 0)
    {
      if (a4 < 1.0)
      {
        a4 = 1.0;
      }

      if (a2 != -1 || a4 != *(v7 + 600))
      {
        *&v8 = *(v7 + 596) / a4;
        v9 = [MEMORY[0x1E696AD98] numberWithFloat:v8];
        if ((a2 & 0x80000000) != 0)
        {
          v10 = 0;
        }

        else
        {
          v10 = [MEMORY[0x1E696AD98] numberWithInt:a2];
        }

        v11 = MEMORY[0x1E695DF20];
        v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(v7 + 592)];
        v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(v7 + 593) ^ 1u];
        v14 = [v11 dictionaryWithObjectsAndKeys:{v9, @"camera fov", v12, @"camera wind suppression", v13, @"camera real time dynamics", objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", *(v7 + 650)), @"camera capture is audio only", v10, @"camera dir", 0}];
        result = [(BWAudioSourceNode *)v7 _setAudioSessionMXPropertyWithKey:v14 value:?];
        if (!result)
        {
          *(v7 + 600) = a4;
        }
      }

      *(v7 + 624) = *(v7 + 616) + a3;
    }
  }

  return result;
}

uint64_t __82__BWAudioSourceNode__updateStereoAudioCapturePairedCameraZoomFactorAndStartTimer___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 632) = 0;
  v2 = *(a1 + 32);

  return [(BWAudioSourceNode *)v2 _updateStereoAudioCapturePairedCameraZoomFactorAndStartTimer:?];
}

- (double)_desiredSampleRate:(uint64_t)a1
{
  if (!a1)
  {
    return 0.0;
  }

  v3 = *(a1 + 208);
  result = fmax(v3, 0.0);
  if (*(a1 + 194))
  {
    result = 48000.0;
  }

  if (v3 > 0.0)
  {
    v5 = 1;
  }

  else
  {
    v5 = *(a1 + 194);
  }

  if (result == 0.0)
  {
    result = FigCaptureSourceDefaultAudioSampleRateForClientSDKVersionToken();
  }

  if (a2)
  {
    *a2 = v5;
  }

  return result;
}

- (uint64_t)_setAudioSessionBatchedMXProperties:(uint64_t)a1
{
  if (!a1)
  {
    return 0;
  }

  if (*MEMORY[0x1E695FF58] == 1)
  {
    OUTLINED_FUNCTION_19_0();
    kdebug_trace();
  }

  v35[0] = 0;
  [*(a1 + 160) setMXProperties:a2 propertyErrors:v35];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v35[0];
  v3 = [v35[0] countByEnumeratingWithState:&v31 objects:v30 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v32;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v32 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v31 + 1) + 8 * i);
        v9 = [objc_msgSend(v8 allKeys];
        v10 = [objc_msgSend(v8 objectForKeyedSubscript:{v9), "integerValue"}];
        if (v10)
        {
          v29 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v12 = v29;
          if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
          {
            v13 = v12;
          }

          else
          {
            v13 = v12 & 0xFFFFFFFE;
          }

          if (v13)
          {
            v14 = [a2 objectForKeyedSubscript:v9];
            v20 = 136315906;
            v21 = "[BWAudioSourceNode _setAudioSessionBatchedMXProperties:]";
            v22 = 2112;
            v23 = v9;
            v24 = 2112;
            v25 = v14;
            v26 = 1024;
            v27 = v10;
            LODWORD(v17) = 38;
            v16 = &v20;
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_1_4();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v5 = v10;
        }
      }

      v4 = [obj countByEnumeratingWithState:&v31 objects:v30 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  if (*MEMORY[0x1E695FF58] == 1)
  {
    OUTLINED_FUNCTION_19_0();
    kdebug_trace();
  }

  return v5;
}

- (uint64_t)_selectMicForCurrentAudioRoute
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  v2 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    OUTLINED_FUNCTION_19_0();
    kdebug_trace();
  }

  v15 = 0;
  v3 = [*(v1 + 160) availableInputs];
  if ([v3 count])
  {
    v4 = [v3 objectAtIndexedSubscript:0];
    v5 = [v4 portType];
    v6 = [v5 isEqualToString:*MEMORY[0x1E698D668]];
    if (v4)
    {
      if (v6)
      {
        OUTLINED_FUNCTION_48_15();
        if (!FigCFEqual())
        {
          OUTLINED_FUNCTION_48_15();
          if (!FigCFEqual())
          {
            OUTLINED_FUNCTION_48_15();
            if (!FigCFEqual())
            {
              OUTLINED_FUNCTION_48_15();
              if (!FigCFEqual())
              {
                [(BWAudioSourceNode *)v1 _setAudioSessionMXPropertyWithKey:0 value:?];
                goto LABEL_25;
              }
            }
          }
        }

        v7 = [(BWAudioSourceNode *)v1 _copyAudioSessionMXProperty:&v15 err:?];
        v8 = [v7 bw_builtInMicRouteDictionary];
        if (v8)
        {
          v9 = v8;
          if (*(v1 + 144))
          {
            if ([v1 isAudioPlayingToBuiltinSpeaker])
            {
              v10 = 1651799149;
            }

            else
            {
              v10 = 1718775412;
            }

LABEL_19:
            v11 = [v9 bw_dataSourceDictionaryForDesiredMicOrientation:v10];
            if (v11)
            {
              v12 = v11;
              v13 = [v11 bw_optimalMicPolarPatternForAudioCaptureMode:*(v1 + 588)];
              v14 = [MEMORY[0x1E695DEC8] bw_selectedInputsArrayForBuiltInMicRouteDictionary:v9 dataSource:v12 polarPattern:v13];
              if (v14)
              {
                v15 = [(BWAudioSourceNode *)v1 _setAudioSessionMXPropertyWithKey:v14 value:?];
                if (v15)
                {
                  OUTLINED_FUNCTION_1_5();
                  FigDebugAssert3();
                }
              }

              else
              {
                OUTLINED_FUNCTION_0();
                FigDebugAssert3();
                v15 = -12783;
              }
            }

            goto LABEL_23;
          }

          if (*(v1 + 136))
          {
            v10 = 1650549611;
            goto LABEL_19;
          }
        }

LABEL_23:
        if (v7)
        {
          CFRelease(v7);
        }
      }
    }
  }

LABEL_25:
  if (*v2 == 1)
  {
    OUTLINED_FUNCTION_19_0();
    kdebug_trace();
  }

  return v15;
}

- (uint64_t)_configureAudioSessionWithDefaultHardwareSampleRate:(double)a3 didCallDoNotNotifyOtherSessionsOnNextInactive:
{
  if (!a1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_18();
  if (v10)
  {
    OUTLINED_FUNCTION_19_0();
    kdebug_trace();
  }

  v30 = 0;
  v6 = *(a1 + 176);
  [(BWAudioSourceNode *)a1 _deactivateAudioSessionIfNecessary:a2];
  v7 = [MEMORY[0x1E695DF90] dictionary];
  [v7 setObject:@"PlayAndRecord" forKeyedSubscript:*MEMORY[0x1E69AFCC0]];
  [v7 setObject:*(a1 + 168) forKeyedSubscript:*MEMORY[0x1E69AFCE8]];
  [v7 setObject:@"Speaker" forKeyedSubscript:*MEMORY[0x1E69AFD70]];
  v8 = [MEMORY[0x1E69AED10] sharedAVSystemController];
  [objc_msgSend(v8 attributeForKey:{*MEMORY[0x1E69AEB30]), "count"}];
  if ((*(a1 + 584) & 1) != 0 || ((OUTLINED_FUNCTION_33(), v10) ? (v10 = v9 == 0) : (v10 = 0), v10))
  {
    [v7 setObject:&unk_1F2246360 forKeyedSubscript:*MEMORY[0x1E69B0020]];
  }

  [(BWAudioSourceNode *)a1 _setAudioSessionBatchedMXProperties:v7];
  if (-[BWAudioSourceNode _setAudioSessionMXPropertyWithKey:value:](a1, *MEMORY[0x1E69B02B8], [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 200)]))
  {
    OUTLINED_FUNCTION_1_5();
    goto LABEL_49;
  }

  if (v6 && ([OUTLINED_FUNCTION_24_20() preferDecoupledIO:1 error:&v30], !objc_msgSend(v30, "code")))
  {
    [OUTLINED_FUNCTION_24_20() setPreferredInputSampleRate:&v30 error:a3];
  }

  else
  {
    [OUTLINED_FUNCTION_24_20() setPreferredOutputSampleRate:&v30 error:a3];
  }

  [v30 code];
  [OUTLINED_FUNCTION_24_20() setAudioHardwareControlFlags:? error:?];
  if ([v30 code])
  {
    goto LABEL_48;
  }

  v11 = *(a1 + 272);
  if (v11)
  {
    v12 = *(a1 + 160);
    [v11 doubleValue];
    [v12 setPreferredIOBufferFrameSize:(v13 * a3) error:&v30];
    if ([v30 code])
    {
      goto LABEL_48;
    }
  }

  OUTLINED_FUNCTION_33();
  if (!v10)
  {
    goto LABEL_23;
  }

  v14 = [MEMORY[0x1E69AED10] sharedInstance];
  v15 = [objc_msgSend(a1 "graph")];
  [v14 setAttribute:v15 forKey:*MEMORY[0x1E69AE9E0] error:&v30];
  if ([v30 code])
  {
LABEL_48:
    OUTLINED_FUNCTION_0_8();
    goto LABEL_49;
  }

  if ([(BWAudioSourceNode *)a1 _setAudioSessionMXPropertyWithKey:MEMORY[0x1E695E118] value:?])
  {
    goto LABEL_45;
  }

LABEL_23:
  if ([(BWAudioSourceNode *)a1 _setAudioSessionMXPropertyWithKey:0 value:?])
  {
LABEL_45:
    OUTLINED_FUNCTION_1_5();
    goto LABEL_49;
  }

  if (BWAudioCaptureModeIsSpatial(*(a1 + 588)))
  {
    v16 = *(a1 + 144) == 0;
    os_unfair_lock_lock((a1 + 644));
    v17 = *(a1 + 640);
    os_unfair_lock_unlock((a1 + 644));
    v18 = *(a1 + 608);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __119__BWAudioSourceNode__configureAudioSessionWithDefaultHardwareSampleRate_didCallDoNotNotifyOtherSessionsOnNextInactive___block_invoke;
    block[3] = &unk_1E7990178;
    block[4] = a1;
    v28 = v16;
    v29 = v17;
    dispatch_async(v18, block);
    goto LABEL_28;
  }

  if (!FigCFEqual() || (*(a1 + 194) & 1) != 0)
  {
    goto LABEL_28;
  }

  v20 = *(a1 + 128);
  v10 = v20 == 0;
  v21 = v20 != 0;
  if (v10)
  {
    v22 = 2;
  }

  else
  {
    v22 = 3;
  }

  if (*(a1 + 136))
  {
    v21 = v22;
  }

  v23 = *(a1 + 144) ? v21 | 4 : v21;
  v25[0] = @"camera mics";
  v26[0] = [MEMORY[0x1E696AD98] numberWithInt:v23];
  v25[1] = @"camera wind suppression";
  v26[1] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(a1 + 592)];
  v25[2] = @"camera real time dynamics";
  v26[2] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(a1 + 593) ^ 1u];
  v25[3] = @"camera capture is audio only";
  v26[3] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(a1 + 650)];
  v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:4];
  if (![(BWAudioSourceNode *)a1 _setAudioSessionMXPropertyWithKey:v24 value:?])
  {
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_1_5();
LABEL_49:
  FigDebugAssert3();
LABEL_28:
  OUTLINED_FUNCTION_18();
  if (v10)
  {
    OUTLINED_FUNCTION_19_0();
    kdebug_trace();
  }

  return 0;
}

- (uint64_t)_deactivateAudioSessionIfNecessary:(uint64_t)a1
{
  if (a1 && [*(a1 + 160) isActive] && (objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_24_20(), "category"), "isEqualToString:", *MEMORY[0x1E698D510]) & 1) == 0)
  {
    if ((*(a1 + 196) & 1) == 0)
    {
      [(BWAudioSourceNode *)a1 _setAudioSessionMXPropertyWithKey:MEMORY[0x1E695E118] value:?];
      *a2 = 1;
    }

    v5 = 0;
    [OUTLINED_FUNCTION_24_20() setActive:0 error:&v5];
  }

  return 0;
}

uint64_t __119__BWAudioSourceNode__configureAudioSessionWithDefaultHardwareSampleRate_didCallDoNotNotifyOtherSessionsOnNextInactive___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 44);
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();

  return [(BWAudioSourceNode *)v1 _setVADCameraParametersWithDirection:v2 zoomFactor:UpTimeNanoseconds forTime:v3];
}

- (void)_updateMXSessionAudioMode
{
  if (a1)
  {
    v1 = *(a1 + 588);
    if (v1 == 6)
    {
      v2 = MEMORY[0x1E69AF8B0];
    }

    else if (*(a1 + 584) == 1)
    {
      v2 = MEMORY[0x1E69AF870];
    }

    else if (v1 == 2)
    {
      v2 = MEMORY[0x1E69AF918];
    }

    else if (v1 == 1)
    {
      v2 = MEMORY[0x1E69AF920];
    }

    else if (*(a1 + 594) == 1)
    {
      v2 = MEMORY[0x1E69AF978];
    }

    else if ((v1 - 3) < 2)
    {
      v2 = MEMORY[0x1E69AF9B0];
    }

    else if (v1 == 5)
    {
      v2 = MEMORY[0x1E69AF9B8];
    }

    else if (v1 == 7)
    {
      v2 = MEMORY[0x1E69AF890];
    }

    else
    {
      v2 = MEMORY[0x1E69AF828];
    }

    v3 = *v2;
    v4 = *(a1 + 168);
    *(a1 + 168) = v3;
    if (v3)
    {
      CFRetain(v3);
    }

    if (v4)
    {

      CFRelease(v4);
    }
  }
}

- (uint64_t)_getAudioDevicePullFrames:(uint64_t)a1
{
  if (!a1)
  {
    return 0;
  }

  v3 = 0;
  v8 = 0;
  if (a2)
  {
    v5 = [(BWAudioSourceNode *)a1 _copyAudioSessionMXProperty:&v8 err:?];
    v6 = v5;
    if (v8)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_1_4();
      OUTLINED_FUNCTION_17_8();
    }

    else
    {
      *a2 = [v5 intValue];
    }

    return v8;
  }

  return v3;
}

- (uint64_t)_generatePullBuffers
{
  if (!a1)
  {
    return 0;
  }

  TimestampedAudioBufferListQueueReleaseAndClear((a1 + 336));
  TimestampedAudioBufferListQueueReleaseAndClear((a1 + 344));
  v2 = *(a1 + 328);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 328) = 0;
  }

  StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(*(a1 + 296));
  if (StreamBasicDescription->mSampleRate <= 0.0)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(a1 + 304);
    if (v4)
    {
      v4 = (StreamBasicDescription->mSampleRate / v4);
    }
  }

  if (v4 <= 5)
  {
    v5 = 5;
  }

  else
  {
    v5 = v4;
  }

  v6 = *MEMORY[0x1E695E480];
  v7 = OUTLINED_FUNCTION_46_16(336);
  if (v7)
  {
    return v7;
  }

  v7 = OUTLINED_FUNCTION_46_16(344);
  if (v7)
  {
    return v7;
  }

  v7 = OUTLINED_FUNCTION_46_16(328);
  if (v7)
  {
    return v7;
  }

  OUTLINED_FUNCTION_100();
  AudioUnitGetProperty(v8, v9, v10, v11, v12, v13);
  mFormatFlags = StreamBasicDescription->mFormatFlags;
  if ((mFormatFlags & 0x20) != 0)
  {
    mChannelsPerFrame = StreamBasicDescription->mChannelsPerFrame;
  }

  else
  {
    mChannelsPerFrame = 1;
  }

  if ((mFormatFlags & 0x20) != 0)
  {
    v16 = 1;
  }

  else
  {
    v16 = StreamBasicDescription->mChannelsPerFrame;
  }

  while (1)
  {
    v17 = TimestampedAudioBufferListNew(v6, mChannelsPerFrame, v16, StreamBasicDescription->mBytesPerFrame << 12);
    v18 = CMSimpleQueueEnqueue(*(a1 + 336), v17);
    if (v18)
    {
      break;
    }

    if (!--v5)
    {
      v19 = 0;
      *(a1 + 352) = 0;
      v20 = *MEMORY[0x1E6960C70];
      v21 = *(MEMORY[0x1E6960C70] + 16);
      *(a1 + 376) = v21;
      *(a1 + 360) = v20;
      *(a1 + 408) = v20;
      *(a1 + 424) = v21;
      return v19;
    }
  }

  v19 = v18;
  TimestampedAudioBufferListDispose(v17);
  return v19;
}

- (CMSampleBufferRef)_createSampleBufferForTimestampedAudioBufferList:(int)a3 audioBufferIndex:
{
  if (result)
  {
    v5 = result;
    v6 = [objc_msgSend(*(result + 2) "format")];
    StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(v6);
    v8 = StreamBasicDescription;
    mBytesPerFrame = StreamBasicDescription->mBytesPerFrame;
    v10 = mBytesPerFrame * *(a2 + 56);
    v11 = *(a2 + 20) * mBytesPerFrame;
    if (StreamBasicDescription->mChannelsPerFrame >= 2 && (StreamBasicDescription->mFormatFlags & 0x20) != 0 && [objc_msgSend(v5 "outputs")] == 1)
    {
      mChannelsPerFrame = v8->mChannelsPerFrame;
      v10 = mChannelsPerFrame * v10;
      v11 = mChannelsPerFrame * v11;
      v13 = 1;
    }

    else
    {
      v13 = 0;
    }

    v46 = 0;
    blockBufferOut = 0;
    dataPointerOut = 0;
    memset(&v44, 0, sizeof(v44));
    mBytesPerPacket = 0;
    v14 = *MEMORY[0x1E695E480];
    v15 = 1;
    OUTLINED_FUNCTION_2_5();
    if (!CMBlockBufferCreateWithMemoryBlock(v16, v17, v18, v19, v20, v21, v22, 1u, &blockBufferOut) && !CMBlockBufferGetDataPointer(blockBufferOut, 0, 0, 0, &dataPointerOut))
    {
      v39 = v5;
      if (v10)
      {
        v23 = v13;
      }

      else
      {
        v23 = 1;
      }

      if ((v23 & 1) == 0)
      {
        bzero(dataPointerOut, v10);
      }

      formatDescription = v6;
      if (v11)
      {
        if (v5[595] == 1 && v8->mChannelsPerFrame == 2 && (v8->mFormatFlags & 0x20) == 0)
        {
          v24 = 0;
          v25 = v8->mBytesPerFrame >> 1;
          v26 = *(*(a2 + 48) + 16 * a3 + 16);
          v27 = &dataPointerOut[v10];
          do
          {
            memcpy(&v27[v25], v26, v25);
            memcpy(v27, &v26[v25], v25);
            v28 = v8->mBytesPerFrame;
            v26 += v28;
            v27 += v28;
            v24 += v28;
          }

          while (v24 < v11);
        }

        else if (v13)
        {
          if (**(a2 + 48))
          {
            v29 = 0;
            v30 = v8->mChannelsPerFrame;
            v31 = v10 / v30;
            v32 = v11 / v30;
            v33 = v32 + v10 / v30;
            v34 = 16;
            do
            {
              v35 = &dataPointerOut[v33 * v29];
              bzero(v35, v31);
              memcpy(&v35[v31], *(*(a2 + 48) + v34), v32);
              ++v29;
              v34 += 16;
            }

            while (v29 < **(a2 + 48));
          }
        }

        else
        {
          memcpy(&dataPointerOut[v10], *(*(a2 + 48) + 16 * a3 + 16), v11);
        }
      }

      mBytesPerPacket = v8->mBytesPerPacket;
      if (v13)
      {
        sampleSizeArray = 0;
      }

      else
      {
        sampleSizeArray = &mBytesPerPacket;
      }

      CMTimeMake(&v44.duration, 1, v8->mSampleRate);
      lhs = *(a2 + 24);
      OUTLINED_FUNCTION_49_11((v39 + 456));
      CMTimeSubtract(&v42, &lhs, &rhs);
      v44.presentationTimeStamp = v42;
      v44.decodeTimeStamp = **&MEMORY[0x1E6960C70];
      v15 = CMSampleBufferCreate(v14, blockBufferOut, 1u, 0, 0, formatDescription, (*(a2 + 56) + *(a2 + 20)), 1, &v44, v13 ^ 1u, sampleSizeArray, &v46) != 0;
    }

    if (blockBufferOut)
    {
      CFRelease(blockBufferOut);
    }

    result = v46;
    if (v46)
    {
      v37 = v15;
    }

    else
    {
      v37 = 0;
    }

    if (v37)
    {
      CFRelease(v46);
      return 0;
    }
  }

  return result;
}

- (void)_generateSamples
{
  if (a1 && (*(a1 + 449) & 1) == 0)
  {
    context = objc_autoreleasePoolPush();
    StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(*(a1 + 296));
    mFormatFlags = StreamBasicDescription->mFormatFlags;
    v5 = *(a1 + 496);
    *(a1 + 496) = 0;
      ;
    }

    v6 = CMSimpleQueueDequeue(*(a1 + 344));
    if (v6)
    {
      v8 = v6;
      v9 = &OBJC_IVAR___BWVISNode__frameMotionTensorsRingBuffer;
      *&v7 = 136315394;
      v31 = v7;
      do
      {
        v37 = *(v8 + 1);
        if (v8[14])
        {
          OUTLINED_FUNCTION_30_13();
          CMTimeMake(&rhs, v10, v11);
          lhs = *(v8 + 1);
          CMTimeAdd(&v37, &lhs, &rhs);
        }

        if (v5)
        {
          v12 = v8[14];
          if (v12)
          {
            v13 = v12 - v5;
            if (v13 < 0)
            {
              v35 = 0;
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              if (OUTLINED_FUNCTION_54_10(os_log_and_send_and_compose_flags_and_os_log_type))
              {
                v15 = v1;
              }

              else
              {
                v15 = v1 & 0xFFFFFFFE;
              }

              if (v15)
              {
                LODWORD(lhs.value) = v31;
                OUTLINED_FUNCTION_16_36(&lhs);
                _os_log_send_and_compose_impl();
              }

              v9 = &OBJC_IVAR___BWVISNode__frameMotionTensorsRingBuffer;
              OUTLINED_FUNCTION_1_4();
              fig_log_call_emit_and_clean_up_after_send_and_compose();
              LODWORD(v13) = 0;
            }

            v8[14] = v13;
            OUTLINED_FUNCTION_30_13();
            CMTimeMake(&lhs, v18, v19);
            OUTLINED_FUNCTION_57_12(*(v8 + 5), v27, v28, v29, context, v31, *(&v31 + 1), *(v8 + 3), *(v8 + 4), v32, v33, rhs.value);
            *(v8 + 1) = rhs;
          }

          else
          {
            v35 = 0;
            v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            if (OUTLINED_FUNCTION_54_10(v16))
            {
              v17 = v1;
            }

            else
            {
              v17 = v1 & 0xFFFFFFFE;
            }

            if (v17)
            {
              LODWORD(lhs.value) = v31;
              OUTLINED_FUNCTION_16_36(&lhs);
              _os_log_send_and_compose_impl();
            }

            v9 = &OBJC_IVAR___BWVISNode__frameMotionTensorsRingBuffer;
            OUTLINED_FUNCTION_1_4();
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }
        }

        if ((mFormatFlags & 0x20) != 0 && *(a1 + 588) == 6)
        {
          for (i = 0; i != 3; ++i)
          {
            if (*(a1 + 128 + 8 * i))
            {
              v21 = [(BWAudioSourceNode *)a1 _createSampleBufferForTimestampedAudioBufferList:v8 audioBufferIndex:i];
              [*(a1 + 128 + 8 * i) emitSampleBuffer:v21];
              if (v21)
              {
                CFRelease(v21);
              }
            }
          }
        }

        else
        {
          v22 = [(BWAudioSourceNode *)a1 _createSampleBufferForTimestampedAudioBufferList:v8 audioBufferIndex:0];
          [*(a1 + 16) emitSampleBuffer:v22];
          if (v22)
          {
            CFRelease(v22);
          }
        }

        v23 = a1 + v9[1009];
        *(v23 + 8) = *(v8 + 1);
        OUTLINED_FUNCTION_30_13();
        CMTimeMake(&lhs, v24, v25);
        OUTLINED_FUNCTION_57_12(v37.epoch, v27, v28, v29, context, v31, *(&v31 + 1), v37.value, *&v37.timescale, v32, v33, rhs.value);
        *(v23 + 24) = rhs;
        v1 = *(a1 + 480);
        v26 = dispatch_time(0, ((2 * v8[5]) / StreamBasicDescription->mSampleRate * 1000000000.0));
        dispatch_source_set_timer(v1, v26, 0xFFFFFFFFFFFFFFFFLL, 0);
        TimestampedAudioBufferListReset(v8);
        CMSimpleQueueEnqueue(*(a1 + 336), v8);
        v8 = CMSimpleQueueDequeue(*(a1 + 344));
        v5 = 0;
      }

      while (v8);
    }

    objc_autoreleasePoolPop(context);
  }
}

- (uint64_t)_setupPrepareToRecordStateWithFlags:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    if ((a2 & 1) != 0 && !*(result + 184))
    {
      result = FigDispatchQueueCreateWithPriority();
      *(v3 + 184) = result;
      if ((a2 & 2) == 0)
      {
        return result;
      }
    }

    else if ((a2 & 2) == 0)
    {
      return result;
    }

    if (!*(v3 + 576))
    {
      result = FigDispatchQueueCreateWithPriority();
      *(v3 + 576) = result;
    }
  }

  return result;
}

- (uint64_t)start:.cold.2()
{
  v0 = OUTLINED_FUNCTION_31_18();
  v8 = OUTLINED_FUNCTION_4_1(v0, v1, v2, v3, v4, v5, v6, v7, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_5_2(v8))
  {
    OUTLINED_FUNCTION_2_11("[BWAudioSourceNode start:]");
    OUTLINED_FUNCTION_21();
  }

  OUTLINED_FUNCTION_1_4();
  return fig_log_call_emit_and_clean_up_after_send_and_compose();
}

- (uint64_t)start:.cold.3()
{
  v0 = OUTLINED_FUNCTION_31_18();
  v8 = OUTLINED_FUNCTION_4_1(v0, v1, v2, v3, v4, v5, v6, v7, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_5_2(v8))
  {
    OUTLINED_FUNCTION_2_11("[BWAudioSourceNode start:]");
    OUTLINED_FUNCTION_21();
  }

  OUTLINED_FUNCTION_1_4();
  return fig_log_call_emit_and_clean_up_after_send_and_compose();
}

- (uint64_t)stop:(uint64_t)a1 .cold.2(uint64_t a1)
{
  v2 = MEMORY[0x1E695E110];
  [(BWAudioSourceNode *)a1 _setAudioSessionMXPropertyWithKey:MEMORY[0x1E695E110] value:?];
  return [(BWAudioSourceNode *)a1 _setAudioSessionMXPropertyWithKey:v2 value:?];
}

- (uint64_t)updateWithAudioSession:(uint64_t)a1 clientAuditToken:(void *)a2 .cold.2(uint64_t a1, void *a2)
{
  v4 = *(a1 + 280);
  if (v4)
  {
    CFRelease(v4);
  }

  *(a1 + 280) = *a2;
  result = [(BWAudioSourceNode *)a1 _setupAudioUnit];
  if (result)
  {
    OUTLINED_FUNCTION_1_5();
    return FigDebugAssert3();
  }

  return result;
}

uint64_t __42__BWAudioSourceNode_unprepareForRecording__block_invoke_cold_1(uint64_t *a1)
{
  v2 = [MEMORY[0x1E695DF88] dataWithLength:16];
  *[v2 mutableBytes] = 5;
  FigGetUpTimeNanoseconds();
  [(BWAudioSourceNode *)*a1 _setAudioSessionMXPropertyWithKey:v2 value:?];
  return FigGetUpTimeNanoseconds();
}

@end