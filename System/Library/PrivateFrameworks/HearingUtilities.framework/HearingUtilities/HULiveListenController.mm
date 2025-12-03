@interface HULiveListenController
- (AXHALiveListenDelegate)delegate;
- (HULiveListenController)init;
- (double)_sampleRate;
- (float)audioLevel;
- (id)_connectUnits;
- (id)_setupAudioUnitsWithAudioFormat:(AudioStreamBasicDescription *)format;
- (id)_setupMixerUnitWithAudioFormat:(AudioStreamBasicDescription *)format;
- (id)_setupRioUnitWithAudioFormat:(AudioStreamBasicDescription *)format;
- (id)_setupSession;
- (id)combinedSessionTranscription;
- (void)audioSessionWasInterrupted:(id)interrupted;
- (void)dealloc;
- (void)setPersonalAudioMediaAccommodationsEnabled:(BOOL)enabled;
- (void)startListeningWithCompletion:(id)completion;
- (void)startLiveListenRewind;
- (void)stopListeningWithCompletion:(id)completion;
- (void)stopLiveListenRewind;
- (void)transcriptionDidStart;
- (void)transcriptionDidUpdate:(id)update;
@end

@implementation HULiveListenController

void __30__HULiveListenController_init__block_invoke_2(uint64_t a1)
{
  v2 = +[HUComfortSoundsSettings sharedInstance];
  v3 = [v2 comfortSoundsEnabled];

  if (v3)
  {
    v4 = HCLogHearingAids();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1DA5E2000, v4, OS_LOG_TYPE_DEFAULT, "Background Sounds enabled. Stopping.", v5, 2u);
    }

    [*(a1 + 32) stopListeningWithCompletion:0];
  }
}

- (HULiveListenController)init
{
  v37[1] = *MEMORY[0x1E69E9840];
  v36.receiver = self;
  v36.super_class = HULiveListenController;
  v2 = [(HULiveListenController *)&v36 init];
  if (v2)
  {
    if (_os_feature_enabled_impl())
    {
      v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
      v4 = dispatch_queue_create("playback_audio_queue", v3);
      playbackQueue = v2->_playbackQueue;
      v2->_playbackQueue = v4;

      if (!_AXSIsNonUIBuild())
      {
        v6 = [[HULiveListenTranscriptionController alloc] initWithDelegate:v2];
        transcriber = v2->_transcriber;
        v2->_transcriber = v6;
      }

      array = [MEMORY[0x1E695DF70] array];
      sessionTranscriptions = v2->_sessionTranscriptions;
      v2->_sessionTranscriptions = array;
    }

    mEMORY[0x1E69AED10] = [MEMORY[0x1E69AED10] sharedAVSystemController];
    v11 = MEMORY[0x1E69AE9C0];
    v37[0] = *MEMORY[0x1E69AE9C0];
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:1];
    [mEMORY[0x1E69AED10] setAttribute:v12 forKey:*MEMORY[0x1E69AECD8] error:0];

    v13 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v14 = dispatch_queue_create("ha_livelisten_audiounits_queue", v13);
    audioUnitsQueue = v2->_audioUnitsQueue;
    v2->_audioUnitsQueue = v14;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_audioSessionWasInterrupted_ name:*MEMORY[0x1E69580D8] object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v2 selector:sel_mediaServicesWereReset_ name:*MEMORY[0x1E6958128] object:0];

    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter3 addObserver:v2 selector:sel_audioRouteDidChange_ name:*MEMORY[0x1E6958228] object:0];

    defaultCenter4 = [MEMORY[0x1E696AD88] defaultCenter];
    v20 = *v11;
    mEMORY[0x1E69AED10]2 = [MEMORY[0x1E69AED10] sharedAVSystemController];
    [defaultCenter4 addObserver:v2 selector:sel_audioRouteDidChange_ name:v20 object:mEMORY[0x1E69AED10]2];

    defaultCenter5 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter5 addObserver:v2 selector:sel_audioRouteDidChange_ name:@"com.apple.accessibility.hearingaid.audio.route.changed" object:0];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, userChangedAudioRoute, @"AXSpringBoardUserChangedAudioRouteNotification", 0, 0);
    v24 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v24, v2, _hearingTestStarted_0, @"com.apple.HearingTest.test.started", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    objc_initWeak(&location, v2);
    v25 = +[HUHearingAidSettings sharedInstance];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __30__HULiveListenController_init__block_invoke;
    v33[3] = &unk_1E85C9F10;
    objc_copyWeak(&v34, &location);
    [v25 registerUpdateBlock:v33 forRetrieveSelector:sel_exportsLiveListenToFile withListener:v2];

    v26 = +[HUComfortSoundsSettings sharedInstance];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __30__HULiveListenController_init__block_invoke_2;
    v31[3] = &unk_1E85C9F60;
    v27 = v2;
    v32 = v27;
    [v26 registerUpdateBlock:v31 forRetrieveSelector:sel_comfortSoundsEnabled withListener:v27];

    v28 = +[HUHearingAidSettings sharedInstance];
    -[HULiveListenController setExportsLiveListenToFile:](v27, "setExportsLiveListenToFile:", [v28 exportsLiveListenToFile]);

    v27->_noise = -100.0;
    objc_destroyWeak(&v34);
    objc_destroyWeak(&location);
  }

  v29 = *MEMORY[0x1E69E9840];
  return v2;
}

void __30__HULiveListenController_init__block_invoke(uint64_t a1)
{
  v4 = +[HUHearingAidSettings sharedInstance];
  v2 = [v4 exportsLiveListenToFile];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setExportsLiveListenToFile:v2];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = HULiveListenController;
  [(HULiveListenController *)&v4 dealloc];
}

uint64_t __49__HULiveListenController_mediaServicesWereReset___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) isListening];
  v3 = HCLogHearingAids();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = v2;
    _os_log_impl(&dword_1DA5E2000, v3, OS_LOG_TYPE_DEFAULT, "Media reset, wasListening = %d", v6, 8u);
  }

  result = [*(a1 + 32) stopListeningWithCompletion:0];
  if (v2)
  {
    result = [*(a1 + 32) startListeningWithCompletion:0];
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)audioSessionWasInterrupted:(id)interrupted
{
  interruptedCopy = interrupted;
  v3 = interruptedCopy;
  AXPerformBlockOnMainThread();
}

void __53__HULiveListenController_audioSessionWasInterrupted___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 valueForKey:*MEMORY[0x1E6958100]];
  v4 = [v3 intValue];

  if (v4 == 1)
  {
    v5 = HCLogHearingAids();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1DA5E2000, v5, OS_LOG_TYPE_DEFAULT, "Session reset. Stopping", v6, 2u);
    }

    [*(a1 + 40) stopListeningWithCompletion:0];
  }
}

uint64_t __46__HULiveListenController_audioRouteDidChange___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  result = hearingAidStreamSelected();
  if ((result & 1) == 0)
  {
    result = liveListenStreamSelected();
    if ((result & 1) == 0)
    {
      v3 = HCLogHearingAids();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v5[0] = 67109376;
        v5[1] = hearingAidStreamSelected();
        v6 = 1024;
        v7 = liveListenStreamSelected();
        _os_log_impl(&dword_1DA5E2000, v3, OS_LOG_TYPE_DEFAULT, "Route changed. Stopping %d, %d", v5, 0xEu);
      }

      result = [*(a1 + 32) stopListeningWithCompletion:0];
    }
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)setPersonalAudioMediaAccommodationsEnabled:(BOOL)enabled
{
  if (self->_personalAudioMediaAccommodationsEnabled && !enabled)
  {
    v5 = HCLogHearingAids();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1DA5E2000, v5, OS_LOG_TYPE_DEFAULT, "PA media accommodations turned off, stopping live listen", v6, 2u);
    }

    [(HULiveListenController *)self stopListeningWithCompletion:0];
  }

  self->_personalAudioMediaAccommodationsEnabled = enabled;
}

- (float)audioLevel
{
  isListening = [(HULiveListenController *)self isListening];
  result = 0.0;
  if (isListening)
  {
    outValue = 0.0;
    AudioUnitGetParameter(self->_mixerUnit, 0x3E8u, 1u, 0, &outValue);
    v5 = __exp10(outValue * 0.05) * 50.0;
    v9 = 0.0;
    AudioUnitGetParameter(self->_mixerUnit, 0xFA0u, 1u, 0, &v9);
    p_signal = &self->_signal;
    if (v9 >= self->_signal)
    {
      noise = self->_noise;
      p_noise = &self->_noise;
      if (v9 <= noise)
      {
        return v5;
      }

      p_signal = p_noise;
    }

    *p_signal = v9;
    return v5;
  }

  return result;
}

- (void)startListeningWithCompletion:(id)completion
{
  completionCopy = completion;
  audioUnitsQueue = self->_audioUnitsQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__HULiveListenController_startListeningWithCompletion___block_invoke;
  v7[3] = &unk_1E85CA508;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(audioUnitsQueue, v7);
}

void __55__HULiveListenController_startListeningWithCompletion___block_invoke(uint64_t a1)
{
  v50 = *MEMORY[0x1E69E9840];
  v2 = +[HUUtilities sharedUtilities];
  [v2 clearAudioRoutes];

  v3 = hearingAidStreamAvailable();
  if ((liveListenStreamSelected() & 1) == 0 && (v3 & 1) == 0)
  {
    v4 = HCLogHearingAids();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.mSampleRate) = 0;
      _os_log_impl(&dword_1DA5E2000, v4, OS_LOG_TYPE_DEFAULT, "LiveListen not streamable", &buf, 2u);
    }

    v5 = *(a1 + 40);
    if (v5)
    {
      (*(v5 + 16))(v5, 0, 0);
    }

    goto LABEL_19;
  }

  v6 = +[HUComfortSoundsSettings sharedInstance];
  v7 = [v6 comfortSoundsEnabled];

  if (v7)
  {
    v8 = HCLogComfortSounds();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.mSampleRate) = 0;
      _os_log_impl(&dword_1DA5E2000, v8, OS_LOG_TYPE_DEFAULT, "Disabling to start Live Listen", &buf, 2u);
    }

    v9 = +[HUComfortSoundsSettings sharedInstance];
    [v9 setComfortSoundsEnabled:0];

    v10 = +[HUComfortSoundsController sharedController];
    [v10 stop];
  }

  v11 = [*(a1 + 32) _setupSession];
  if (v11)
  {
    goto LABEL_12;
  }

  [*(a1 + 32) _sampleRate];
  v19 = v18;
  v20 = [*(a1 + 32) session];
  LODWORD(v21) = [v20 inputNumberOfChannels];

  if ((v21 - 3) >= 0xFFFFFFFE)
  {
    v21 = v21;
  }

  else
  {
    v21 = 2;
  }

  if (_os_feature_enabled_impl())
  {
    v22 = [[HURingBuffer alloc] initWithCount:(v19 * 0.0078125 * 10.0)];
    [*(a1 + 32) setAudioRingBuffer:v22];
  }

  v23 = HCLogHearingAids();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = [*(a1 + 32) didInitializeAudioUnit];
    LODWORD(buf.mSampleRate) = 134218496;
    *(&buf.mSampleRate + 4) = v19;
    LOWORD(buf.mFormatFlags) = 1024;
    *(&buf.mFormatFlags + 2) = v21;
    HIWORD(buf.mBytesPerPacket) = 1024;
    buf.mFramesPerPacket = v24;
    _os_log_impl(&dword_1DA5E2000, v23, OS_LOG_TYPE_DEFAULT, "LiveListen: starting - sampleRate = %.f, numberOfChannels = %d, isInitialized = %d", &buf, 0x18u);
  }

  if ([*(a1 + 32) didInitializeAudioUnit])
  {
LABEL_33:
    v38 = AudioOutputUnitStart(*(*(a1 + 32) + 48));
    if (v38)
    {
      v39 = MEMORY[0x1E696ABC0];
      v40 = v38;
      v41 = [MEMORY[0x1E695DF20] dictionaryWithObject:@"Couldn't start remote i/o unit" forKey:*MEMORY[0x1E696A578]];
      v11 = [v39 errorWithDomain:@"com.apple.axlivelisten.audio" code:v40 userInfo:v41];

      [*(a1 + 32) setIsListening:v11 == 0];
      if (v11)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v42 = +[HUUtilities sharedUtilities];
      v43 = [v42 currentPickableAudioRoutes];
      v44 = [v43 valueForKey:@"AXSHARouteHearingAid"];

      if (v44)
      {
        v45 = [MEMORY[0x1E69AED10] sharedAVSystemController];
        [v45 setAttribute:v44 forKey:*MEMORY[0x1E69AEB00] error:0];
      }

      [*(a1 + 32) setIsListening:1];
    }

    v46 = +[HUUtilities sharedUtilities];
    [v46 addHearingFeatureUsage:8];

    if (_os_feature_enabled_impl())
    {
      v47 = [*(a1 + 32) transcriber];
      [v47 startTranscribing];
    }

    v11 = 0;
    v12 = 1;
    goto LABEL_14;
  }

  v25 = [objc_alloc(MEMORY[0x1E6958418]) initStandardFormatWithSampleRate:v21 channels:v19];
  v26 = [v25 streamDescription];
  v27 = *(v26 + 32);
  v28 = *(v26 + 16);
  *&buf.mSampleRate = *v26;
  *&buf.mBytesPerPacket = v28;
  *&buf.mBitsPerChannel = v27;
  if ([*(a1 + 32) exportsLiveListenToFile])
  {
    v29 = [objc_alloc(MEMORY[0x1E6958418]) initWithCommonFormat:3 sampleRate:v21 channels:1 interleaved:v19];
    v30 = [v29 streamDescription];
    v31 = *(v30 + 32);
    v32 = *(v30 + 16);
    *&inStreamDesc.mSampleRate = *v30;
    *&inStreamDesc.mBytesPerPacket = v32;
    *&inStreamDesc.mBitsPerChannel = v31;
    v33 = [MEMORY[0x1E696AC08] defaultManager];
    [v33 createDirectoryAtPath:@"/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs/Accessibility/" withIntermediateDirectories:1 attributes:0 error:0];

    v34 = MEMORY[0x1E695DFF8];
    v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@", @"/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs/Accessibility/", @"LiveListenCapture.wav"];
    ExtAudioFileCreateWithURL([v34 fileURLWithPath:v35], 0x57415645u, &inStreamDesc, 0, 1u, (*(a1 + 32) + 24));

    ExtAudioFileSetProperty(*(*(a1 + 32) + 24), 0x63666D74u, 0x28u, &buf);
  }

  v36 = *(a1 + 32);
  inStreamDesc = buf;
  v37 = [v36 _setupAudioUnitsWithAudioFormat:&inStreamDesc];
  if (!v37)
  {
    [*(a1 + 32) setDidInitializeAudioUnit:1];

    goto LABEL_33;
  }

  v11 = v37;

LABEL_12:
  [*(a1 + 32) setIsListening:0];
LABEL_13:
  [*(a1 + 32) stopListeningWithCompletion:0];
  v12 = 0;
LABEL_14:
  v13 = HCLogHearingAids();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [*(a1 + 32) isListening];
    LODWORD(buf.mSampleRate) = 67109378;
    HIDWORD(buf.mSampleRate) = v14;
    LOWORD(buf.mFormatID) = 2112;
    *(&buf.mFormatID + 2) = v11;
    _os_log_impl(&dword_1DA5E2000, v13, OS_LOG_TYPE_DEFAULT, "Is Listening (%d) with error %@", &buf, 0x12u);
  }

  v15 = [*(a1 + 32) delegate];
  [v15 liveListenControllerStateDidChange];

  v16 = *(a1 + 40);
  if (v16)
  {
    (*(v16 + 16))(v16, v12, v11);
  }

LABEL_19:
  v17 = *MEMORY[0x1E69E9840];
}

- (void)stopListeningWithCompletion:(id)completion
{
  completionCopy = completion;
  self->_waitingForAccessoryUpdate = 0;
  v5 = *&self->_noise;
  *&self->_noise = 3267887104;
  isListening = [(HULiveListenController *)self isListening];
  [(HULiveListenController *)self setIsListening:0];
  if (_os_feature_enabled_impl())
  {
    [(HURingBuffer *)self->_audioRingBuffer reset];
    audioRingBuffer = self->_audioRingBuffer;
    self->_audioRingBuffer = 0;

    if ([(HULiveListenController *)self isPlayingBack])
    {
      audioQueue = [(HULiveListenController *)self audioQueue];
      [audioQueue stop];

      [(HULiveListenController *)self setIsPlayingBack:0];
    }

    [(HULiveListenController *)self setTranscription:0];
    array = [MEMORY[0x1E695DF70] array];
    [(HULiveListenController *)self setSessionTranscriptions:array];

    transcriber = [(HULiveListenController *)self transcriber];
    [transcriber stopTranscribing];
  }

  audioUnitsQueue = self->_audioUnitsQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __54__HULiveListenController_stopListeningWithCompletion___block_invoke;
  v13[3] = &unk_1E85CCF40;
  v16 = isListening;
  v13[4] = self;
  v14 = completionCopy;
  v15 = vrev64_s32(v5);
  v12 = completionCopy;
  dispatch_async(audioUnitsQueue, v13);
}

void __54__HULiveListenController_stopListeningWithCompletion___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  if (*(a1 + 56))
  {
    goto LABEL_2;
  }

  if ([*(a1 + 32) didInitializeAudioUnit])
  {
    if ((*(a1 + 56) & 1) == 0)
    {
      v9 = 0;
LABEL_11:
      v11 = *(a1 + 32);
      if (v11[3])
      {
        ExtAudioFileDispose(v11[3]);
        *(*(a1 + 32) + 24) = 0;
        v12 = [MEMORY[0x1E696AC08] defaultManager];
        v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@", @"/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs/Accessibility/", @"LiveListenCapture.wav"];
        v14 = MEMORY[0x1E696AEC0];
        v15 = vabds_f32(*(a1 + 48), *(a1 + 52));
        v16 = [MEMORY[0x1E695DF00] date];
        v17 = [v14 stringWithFormat:@"LiveListenComplete(%1.2lf_dB)_%@.wav", *&v15, v16];
        v18 = [v14 stringWithFormat:@"%@/%@", @"/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs/Accessibility/", v17];
        v32 = v9;
        [v12 moveItemAtPath:v13 toPath:v18 error:&v32];
        v19 = v32;

        v11 = *(a1 + 32);
        v9 = v19;
      }

      if (v11[5])
      {
        AudioComponentInstanceDispose(v11[5]);
        *(*(a1 + 32) + 40) = 0;
        v11 = *(a1 + 32);
      }

      if ([(ExtAudioFileRef *)v11 rioUnit])
      {
        AudioComponentInstanceDispose(*(*(a1 + 32) + 48));
        *(*(a1 + 32) + 48) = 0;
      }

      [*(a1 + 32) setIsListening:0];
      if (_os_feature_enabled_impl())
      {
        [*(a1 + 32) setIsPlayingBack:0];
      }

      [*(a1 + 32) setDidInitializeAudioUnit:0];
      v20 = [*(a1 + 32) delegate];
      [v20 liveListenControllerStateDidChange];

      v21 = HCLogHearingAids();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = [*(a1 + 32) isListening];
        v23 = *(a1 + 48);
        v24 = *(a1 + 52);
        *buf = 67109890;
        *v35 = v22;
        *&v35[4] = 2112;
        *&v35[6] = v9;
        v36 = 2048;
        v37 = v23;
        v38 = 2048;
        v39 = v24;
        _os_log_impl(&dword_1DA5E2000, v21, OS_LOG_TYPE_DEFAULT, "Is Listening (%d) %@ - %lf, %lf", buf, 0x26u);
      }

      v25 = HCLogHearingAids();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = [*(a1 + 32) session];
        *buf = 138412290;
        *v35 = v26;
        _os_log_impl(&dword_1DA5E2000, v25, OS_LOG_TYPE_DEFAULT, "LiveListen will release auxiliarySession: %@", buf, 0xCu);
      }

      [*(a1 + 32) setSession:0];
      v27 = *(a1 + 40);
      if (v27)
      {
        (*(v27 + 16))(v27, 1, v9);
      }

      goto LABEL_26;
    }

LABEL_2:
    v2 = [*(a1 + 32) session];
    v33 = 0;
    [v2 setActive:0 forFeature:8 error:&v33];
    v3 = v33;

    v4 = *(*(a1 + 32) + 48);
    if (v4 && (v5 = AudioOutputUnitStop(v4)) != 0)
    {
      v6 = MEMORY[0x1E696ABC0];
      v7 = v5;
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObject:@"Couldn't stop remote I/O unit" forKey:*MEMORY[0x1E696A578]];
      v9 = [v6 errorWithDomain:@"com.apple.axlivelisten.audio" code:v7 userInfo:v8];

      v10 = HCLogHearingAids();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __54__HULiveListenController_stopListeningWithCompletion___block_invoke_cold_1(v9, v10);
      }
    }

    else
    {
      v9 = v3;
    }

    goto LABEL_11;
  }

  v29 = *(a1 + 40);
  if (!v29)
  {
LABEL_26:
    v28 = *MEMORY[0x1E69E9840];
    return;
  }

  v31 = [MEMORY[0x1E696ABC0] ax_errorWithDomain:@"Hearing" description:{@"Won't stop live listen controller, not listening"}];
  (*(v29 + 16))(v29, 0);
  v30 = *MEMORY[0x1E69E9840];
}

- (void)startLiveListenRewind
{
  if (_os_feature_enabled_impl())
  {
    transcriber = [(HULiveListenController *)self transcriber];
    [transcriber stopTranscribing];

    [(HULiveListenController *)self setIsPlayingBack:1];
    [(HULiveListenController *)self _sampleRate];
    v5 = v4;
    v6 = [objc_alloc(MEMORY[0x1E6958418]) initStandardFormatWithSampleRate:-[AVAudioSession inputNumberOfChannels](self->_session channels:{"inputNumberOfChannels"), v4}];
    v7 = [[HUWrappedAudioQueue alloc] initWithSampleRate:v5];
    [(HULiveListenController *)self setAudioQueue:v7];

    playbackQueue = self->_playbackQueue;
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __47__HULiveListenController_startLiveListenRewind__block_invoke;
    v15 = &unk_1E85C9F38;
    selfCopy = self;
    v17 = v6;
    v9 = v6;
    dispatch_async(playbackQueue, &v12);
    [(HULiveListenController *)self setTranscription:0, v12, v13, v14, v15, selfCopy];
    array = [MEMORY[0x1E695DF70] array];
    [(HULiveListenController *)self setSessionTranscriptions:array];

    transcriber2 = [(HULiveListenController *)self transcriber];
    [transcriber2 startTranscribing];
  }
}

void __47__HULiveListenController_startLiveListenRewind__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 104) content];
  v3 = [v2 copy];

  AudioUnitSetParameter(*(*(a1 + 32) + 40), 0, 2u, 0, 0.0, 0);
  v4 = [*(a1 + 32) audioQueue];
  [v4 play];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v16 != v8)
      {
        objc_enumerationMutation(v5);
      }

      if (*(*(a1 + 32) + 58) != 1)
      {
        break;
      }

      v10 = *(*(&v15 + 1) + 8 * v9);
      v11 = objc_alloc(MEMORY[0x1E6958440]);
      v12 = [v11 initWithPCMFormat:*(a1 + 40) bufferListNoCopy:objc_msgSend(v10 deallocator:"bufferList", v15), &__block_literal_global_25];
      v13 = [*(a1 + 32) audioQueue];
      [v13 scheduleBuffer:v12 completionHandler:&__block_literal_global_71];

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  [*(a1 + 32) stopLiveListenRewind];
  v14 = *MEMORY[0x1E69E9840];
}

- (void)stopLiveListenRewind
{
  if (_os_feature_enabled_impl())
  {
    [(HULiveListenController *)self setIsPlayingBack:0];
    audioQueue = [(HULiveListenController *)self audioQueue];
    [audioQueue stop];

    AudioUnitSetParameter(self->_mixerUnit, 0, 2u, 0, 1.0, 0);
    transcriber = [(HULiveListenController *)self transcriber];
    [transcriber stopTranscribing];

    [(HULiveListenController *)self setTranscription:0];
    array = [MEMORY[0x1E695DF70] array];
    [(HULiveListenController *)self setSessionTranscriptions:array];

    transcriber2 = [(HULiveListenController *)self transcriber];
    [transcriber2 startTranscribing];
  }
}

- (id)combinedSessionTranscription
{
  sessionTranscriptions = [(HULiveListenController *)self sessionTranscriptions];
  transcription = [(HULiveListenController *)self transcription];
  v5 = transcription;
  if (transcription)
  {
    v6 = transcription;
  }

  else
  {
    v6 = &stru_1F5614A78;
  }

  v7 = [sessionTranscriptions arrayByAddingObject:v6];
  v8 = [v7 componentsJoinedByString:@"\n"];

  return v8;
}

- (id)_setupSession
{
  v29 = *MEMORY[0x1E69E9840];
  session = self->_session;
  if (!session)
  {
    auxiliarySession = [MEMORY[0x1E6958460] auxiliarySession];
    v5 = self->_session;
    self->_session = auxiliarySession;

    v6 = HCLogHearingAids();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = self->_session;
      *buf = 138412290;
      v28 = v7;
      _os_log_impl(&dword_1DA5E2000, v6, OS_LOG_TYPE_DEFAULT, "LiveListen created auxiliarySession: %@", buf, 0xCu);
    }

    session = self->_session;
  }

  v26 = 0;
  [(AVAudioSession *)session setAudioHardwareControlFlags:18 error:&v26];
  v8 = v26;
  if (!v8)
  {
    v9 = self->_session;
    v10 = *MEMORY[0x1E6958060];
    v25 = 0;
    [(AVAudioSession *)v9 setCategory:v10 withOptions:5 error:&v25];
    v8 = v25;
    if (!v8)
    {
      v11 = self->_session;
      v12 = *MEMORY[0x1E6958140];
      v24 = 0;
      [(AVAudioSession *)v11 setMode:v12 error:&v24];
      v8 = v24;
      if (!v8)
      {
        v13 = self->_session;
        v23 = 0;
        [(AVAudioSession *)v13 setPreferredIOBufferFrameSize:128 error:&v23];
        v8 = v23;
        if (!v8)
        {
          v14 = self->_session;
          v22 = 0;
          [(AVAudioSession *)v14 setPrefersNoDucking:0 error:&v22];
          v8 = v22;
          if (!v8)
          {
            v15 = self->_session;
            v16 = *MEMORY[0x1E69B0318];
            v21 = 0;
            [(AVAudioSession *)v15 setMXSessionProperty:v16 value:MEMORY[0x1E695E118] error:&v21];
            v8 = v21;
            if (!v8)
            {
              v17 = self->_session;
              v20 = 0;
              [(AVAudioSession *)v17 setActive:1 forFeature:8 error:&v20];
              v8 = v20;
            }
          }
        }
      }
    }
  }

  v18 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)_setupAudioUnitsWithAudioFormat:(AudioStreamBasicDescription *)format
{
  v5 = *&format->mBytesPerPacket;
  v10 = *&format->mSampleRate;
  v11 = v5;
  v12 = *&format->mBitsPerChannel;
  _connectUnits = [(HULiveListenController *)self _setupMixerUnitWithAudioFormat:&v10];
  if (!_connectUnits)
  {
    v7 = *&format->mBytesPerPacket;
    v10 = *&format->mSampleRate;
    v11 = v7;
    v12 = *&format->mBitsPerChannel;
    _connectUnits = [(HULiveListenController *)self _setupRioUnitWithAudioFormat:&v10];
    if (!_connectUnits)
    {
      _connectUnits = [(HULiveListenController *)self _connectUnits];
    }
  }

  v8 = _connectUnits;

  return v8;
}

- (id)_setupMixerUnitWithAudioFormat:(AudioStreamBasicDescription *)format
{
  v15 = 1;
  inData[0] = RenderAudio;
  inData[1] = self;
  *&v13.componentType = xmmword_1DA6876B0;
  v13.componentFlagsMask = 0;
  Next = AudioComponentFindNext(0, &v13);
  v6 = AudioComponentInstanceNew(Next, &self->_mixerUnit);
  if (v6)
  {
    v7 = @"Couldn't open the mixer unit";
LABEL_17:
    v8 = MEMORY[0x1E696ABC0];
    v9 = v6;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObject:v7 forKey:*MEMORY[0x1E696A578]];
    v11 = [v8 errorWithDomain:@"com.apple.axlivelisten.audio" code:v9 userInfo:v10];

    goto LABEL_18;
  }

  v6 = AudioUnitSetProperty(self->_mixerUnit, 0x17u, 1u, 0, inData, 0x10u);
  if (v6)
  {
    v7 = @"Couldn't set mixer render callback";
    goto LABEL_17;
  }

  v6 = AudioUnitSetProperty(self->_mixerUnit, 8u, 1u, 0, format, 0x28u);
  if (v6)
  {
    v7 = @"Couldn't set the mixer unit's input bus format";
    goto LABEL_17;
  }

  v6 = AudioUnitSetProperty(self->_mixerUnit, 8u, 2u, 0, format, 0x28u);
  if (v6)
  {
    v7 = @"Couldn't set the mixer unit's output bus format";
    goto LABEL_17;
  }

  v6 = AudioUnitSetProperty(self->_mixerUnit, 0xBBFu, 1u, 0, &v15, 4u);
  if (v6)
  {
    v7 = @"Couldn't enable metering mode";
    goto LABEL_17;
  }

  v6 = AudioUnitInitialize(self->_mixerUnit);
  if (v6)
  {
    v7 = @"Couldn't initialize the mixer unit";
    goto LABEL_17;
  }

  v6 = AudioUnitSetParameter(self->_mixerUnit, 0, 2u, 0, 1.0, 0);
  if (v6)
  {
    v7 = @"Couldn't set mixer output volume";
    goto LABEL_17;
  }

  v6 = AudioUnitSetParameter(self->_mixerUnit, 0, 1u, 0, 1.0, 0);
  if (v6)
  {
    v7 = @"Couldn't set mixer input volume";
    goto LABEL_17;
  }

  v11 = 0;
LABEL_18:

  return v11;
}

- (id)_setupRioUnitWithAudioFormat:(AudioStreamBasicDescription *)format
{
  v24 = 1;
  *&inDesc.componentType = xmmword_1DA6876C0;
  inDesc.componentFlagsMask = 0;
  Next = AudioComponentFindNext(0, &inDesc);
  v6 = AudioComponentInstanceNew(Next, &self->_rioUnit);
  if (v6)
  {
    v7 = MEMORY[0x1E696ABC0];
    v8 = v6;
    v9 = MEMORY[0x1E695DF20];
    v10 = *MEMORY[0x1E696A578];
    v11 = @"Couldn't open the remote I/O unit";
LABEL_15:
    v19 = [v9 dictionaryWithObject:v11 forKey:v10];
    v20 = [v7 errorWithDomain:@"com.apple.axlivelisten.audio" code:v8 userInfo:v19];

    goto LABEL_16;
  }

  session = self->_session;
  if (session)
  {
    mEMORY[0x1E6958460] = [MEMORY[0x1E6958460] sharedInstance];

    if (session != mEMORY[0x1E6958460])
    {
      inData = [(AVAudioSession *)self->_session opaqueSessionID];
      v14 = AudioUnitSetProperty(self->_rioUnit, 0x7E7u, 0, 0, &inData, 4u);
      if (v14)
      {
        v7 = MEMORY[0x1E696ABC0];
        v8 = v14;
        v9 = MEMORY[0x1E695DF20];
        v10 = *MEMORY[0x1E696A578];
        v11 = @"Couldn't set rio unit's sessionID";
        goto LABEL_15;
      }
    }
  }

  v15 = AudioUnitSetProperty(self->_rioUnit, 0x7D3u, 2u, 0, &v24, 4u);
  if (v15)
  {
    v7 = MEMORY[0x1E696ABC0];
    v8 = v15;
    v9 = MEMORY[0x1E695DF20];
    v10 = *MEMORY[0x1E696A578];
    v11 = @"Couldn't enable output on the remote I/O unit";
    goto LABEL_15;
  }

  v16 = AudioUnitSetProperty(self->_rioUnit, 0x7D3u, 1u, 1u, &v24, 4u);
  if (v16)
  {
    v7 = MEMORY[0x1E696ABC0];
    v8 = v16;
    v9 = MEMORY[0x1E695DF20];
    v10 = *MEMORY[0x1E696A578];
    v11 = @"Couldn't enable input on the remote I/O unit";
    goto LABEL_15;
  }

  v17 = AudioUnitSetProperty(self->_rioUnit, 8u, 1u, 0, format, 0x28u);
  if (v17)
  {
    v7 = MEMORY[0x1E696ABC0];
    v8 = v17;
    v9 = MEMORY[0x1E695DF20];
    v10 = *MEMORY[0x1E696A578];
    v11 = @"Couldn't set the remote I/O unit's output client format";
    goto LABEL_15;
  }

  v18 = AudioUnitSetProperty(self->_rioUnit, 8u, 2u, 1u, format, 0x28u);
  if (v18)
  {
    v7 = MEMORY[0x1E696ABC0];
    v8 = v18;
    v9 = MEMORY[0x1E695DF20];
    v10 = *MEMORY[0x1E696A578];
    v11 = @"Couldn't set the remote I/O unit's input client format";
    goto LABEL_15;
  }

  v20 = 0;
LABEL_16:

  return v20;
}

- (id)_connectUnits
{
  v3 = malloc_type_malloc(0x10uLL, 0x74024B8FuLL);
  *v3 = self->_mixerUnit;
  v3[1] = 0;
  v4 = AudioUnitSetProperty(self->_rioUnit, 1u, 1u, 0, v3, 0x10u);
  free(v3);
  if (v4)
  {
    v5 = @"Couldn't connect mixer to rio";
LABEL_5:
    v7 = MEMORY[0x1E696ABC0];
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObject:v5 forKey:*MEMORY[0x1E696A578]];
    v9 = [v7 errorWithDomain:@"com.apple.axlivelisten.audio" code:v4 userInfo:v8];

    goto LABEL_6;
  }

  v6 = AudioUnitInitialize(self->_rioUnit);
  if (v6)
  {
    v4 = v6;
    v5 = @"Couldn't initialize the remote I/O unit";
    goto LABEL_5;
  }

  v9 = 0;
LABEL_6:

  return v9;
}

- (double)_sampleRate
{
  session = [(HULiveListenController *)self session];
  [session sampleRate];
  v4 = v3;

  result = 16000.0;
  if (v4 > 0.0)
  {
    return v4;
  }

  return result;
}

- (void)transcriptionDidStart
{
  if (_os_feature_enabled_impl())
  {
    transcription = [(HULiveListenController *)self transcription];
    v4 = [transcription length];

    if (v4)
    {
      sessionTranscriptions = [(HULiveListenController *)self sessionTranscriptions];
      transcription2 = [(HULiveListenController *)self transcription];
      [sessionTranscriptions addObject:transcription2];
    }

    [(HULiveListenController *)self setTranscription:&stru_1F5614A78];
  }
}

- (void)transcriptionDidUpdate:(id)update
{
  updateCopy = update;
  if (_os_feature_enabled_impl())
  {
    [(HULiveListenController *)self setTranscription:updateCopy];
  }
}

- (AXHALiveListenDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __54__HULiveListenController_stopListeningWithCompletion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1DA5E2000, a2, OS_LOG_TYPE_ERROR, "Stop LiveListen unit error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end