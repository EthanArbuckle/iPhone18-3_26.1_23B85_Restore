@interface HFAudioRecorder
- (BOOL)_isPowerMeteringTimerValid;
- (HFAudioRecorder)initWithAudioRecorderDelegate:(id)a3;
- (HFAudioRecorderDelegate)audioRecorderDelegate;
- (double)currentRecordedDuration;
- (id)_audioRecorderSettings;
- (void)_activateRecordingAudioSession;
- (void)_cleanup;
- (void)_createSystemSounds;
- (void)_deactivateRecordingAudioSession;
- (void)_deregisterAudioSessionObservers;
- (void)_registerAudioSessionObservers;
- (void)_setupAudioFileForRecording;
- (void)_startPowerMeteringTimer;
- (void)_stopPowerMeteringTimer;
- (void)audioRecorderDidFinishRecording:(id)a3 successfully:(BOOL)a4;
- (void)audioSessionDidInterrupt:(id)a3;
- (void)audioSessionMediaServicesWereLost:(id)a3;
- (void)audioSessionMediaServicesWereReset:(id)a3;
- (void)audioSessionRouteChanged:(id)a3;
- (void)dealloc;
- (void)playAlertSoundForType:(unint64_t)a3 withCompletion:(id)a4;
- (void)prepareRecording;
- (void)startRecording;
- (void)stopRecording;
@end

@implementation HFAudioRecorder

- (HFAudioRecorder)initWithAudioRecorderDelegate:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v21.receiver = self;
  v21.super_class = HFAudioRecorder;
  v5 = [(HFAudioRecorder *)&v21 init];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_7;
  }

  objc_storeWeak(&v5->_audioRecorderDelegate, v4);
  v7 = objc_opt_new();
  dateFormatter = v6->_dateFormatter;
  v6->_dateFormatter = v7;

  v6->_recordingDurationLimit = -1.0;
  v6->_recordingStopSource = 0;
  [(HFAudioRecorder *)v6 _createSystemSounds];
  [(HFAudioRecorder *)v6 _registerAudioSessionObservers];
  [(HFAudioRecorder *)v6 _setupAudioFileForRecording];
  v9 = objc_alloc(MEMORY[0x277CB83E8]);
  v10 = [(HFAudioRecorder *)v6 recordingAudiofileURL];
  v11 = [(HFAudioRecorder *)v6 _audioRecorderSettings];
  v20 = 0;
  v12 = [v9 initWithURL:v10 settings:v11 error:&v20];
  v13 = v20;
  [(HFAudioRecorder *)v6 setAudioRecorder:v12];

  if (!v13)
  {
    v16 = [(HFAudioRecorder *)v6 audioRecorder];
    [v16 setDelegate:v6];

    v17 = [(HFAudioRecorder *)v6 audioRecorder];
    [v17 setMeteringEnabled:1];

LABEL_7:
    v15 = v6;
    goto LABEL_8;
  }

  v14 = HFLogForCategory(0xBuLL);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v23 = v13;
    _os_log_error_impl(&dword_20D9BF000, v14, OS_LOG_TYPE_ERROR, "[AVVoiceController initWithContext:...] failed with error %@", buf, 0xCu);
  }

  [(HFAudioRecorder *)v6 setAudioRecorder:0];
  v15 = 0;
LABEL_8:

  v18 = *MEMORY[0x277D85DE8];
  return v15;
}

- (void)dealloc
{
  [(AVAudioRecorder *)self->_audioRecorder setDelegate:0];
  [(HFAudioRecorder *)self _deactivateRecordingAudioSession];
  [(HFAudioRecorder *)self _cleanup];
  audioRecorder = self->_audioRecorder;
  self->_audioRecorder = 0;

  v4.receiver = self;
  v4.super_class = HFAudioRecorder;
  [(HFAudioRecorder *)&v4 dealloc];
}

- (void)prepareRecording
{
  v3 = HFLogForCategory(0xBuLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_ERROR, "Calling prepareRecording", v4, 2u);
  }

  [(HFAudioRecorder *)self _activateRecordingAudioSession];
}

- (void)startRecording
{
  if (![(HFAudioRecorder *)self isAudioSessionActive])
  {
    [(HFAudioRecorder *)self _activateRecordingAudioSession];
  }

  v3 = [(HFAudioRecorder *)self audioRecorder];
  [(HFAudioRecorder *)self recordingDurationLimit];
  v4 = [v3 recordForDuration:?];

  v5 = HFLogForCategory(0xBuLL);
  v6 = v5;
  if ((v4 & 1) == 0)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_ERROR, "AVAudioRecorder failed to start recording", buf, 2u);
    }

    v11 = [(HFAudioRecorder *)self audioRecorderDelegate];
    if ([v11 conformsToProtocol:&unk_2825BAEE0])
    {
      v12 = [(HFAudioRecorder *)self audioRecorderDelegate];
      v13 = objc_opt_respondsToSelector();

      if ((v13 & 1) == 0)
      {
LABEL_16:
        [(HFAudioRecorder *)self _cleanup];
        return;
      }

      v11 = [(HFAudioRecorder *)self audioRecorderDelegate];
      v14 = [MEMORY[0x277CCA9B8] hf_errorWithCode:33];
      [v11 audioRecorderFailedToStartRecording:v14];
    }

    goto LABEL_16;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 0;
    _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "AVAudioRecorder started recording successfully", v15, 2u);
  }

  v7 = [MEMORY[0x277CBEAA8] date];
  [v7 timeIntervalSince1970];
  [(HFAudioRecorder *)self setRecordingStartTimeInterval:?];

  [(HFAudioRecorder *)self _startPowerMeteringTimer];
  [(HFAudioRecorder *)self setRecording:1];
  v8 = [(HFAudioRecorder *)self audioRecorderDelegate];
  if ([v8 conformsToProtocol:&unk_2825BAEE0])
  {
    v9 = [(HFAudioRecorder *)self audioRecorderDelegate];
    v10 = objc_opt_respondsToSelector();

    if ((v10 & 1) == 0)
    {
      return;
    }

    v8 = [(HFAudioRecorder *)self audioRecorderDelegate];
    [v8 audioRecorderDidStartRecording:self];
  }
}

- (void)stopRecording
{
  [(HFAudioRecorder *)self _deregisterAudioSessionObservers];
  v3 = [(HFAudioRecorder *)self audioRecorder];
  [v3 stop];
}

- (double)currentRecordedDuration
{
  v15 = *MEMORY[0x277D85DE8];
  [(HFAudioRecorder *)self recordingStopTimeInterval];
  if (v3 == 0.0)
  {
    v4 = [MEMORY[0x277CBEAA8] date];
    [v4 timeIntervalSince1970];
    v6 = v5;
  }

  else
  {
    [(HFAudioRecorder *)self recordingStopTimeInterval];
    v6 = v7;
  }

  [(HFAudioRecorder *)self recordingStartTimeInterval];
  v9 = v6 - v8;
  v10 = HFLogForCategory(0xBuLL);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 134217984;
    v14 = v9;
    _os_log_impl(&dword_20D9BF000, v10, OS_LOG_TYPE_DEFAULT, "Recorded so far %f", &v13, 0xCu);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)playAlertSoundForType:(unint64_t)a3 withCompletion:(id)a4
{
  v6 = a4;
  if (a3 == 1)
  {
    v7 = v6;
    [(HFAudioRecorder *)self _playStopRecordingToneWithCompletion:v6];
  }

  else
  {
    if (a3)
    {
      goto LABEL_6;
    }

    v7 = v6;
    [(HFAudioRecorder *)self _playStartRecordingToneWithCompletion:v6];
  }

  v6 = v7;
LABEL_6:
}

- (void)audioRecorderDidFinishRecording:(id)a3 successfully:(BOOL)a4
{
  v5 = HFLogForCategory(0xBuLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 0;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "AVAudioRecorder stopped recording", v15, 2u);
  }

  v6 = [MEMORY[0x277CBEAA8] date];
  [v6 timeIntervalSince1970];
  [(HFAudioRecorder *)self setRecordingStopTimeInterval:?];

  [(HFAudioRecorder *)self _stopPowerMeteringTimer];
  [(HFAudioRecorder *)self setRecording:0];
  v7 = [(HFAudioRecorder *)self recordingAudiofileID];
  if (v7)
  {
    AudioFileClose(v7);
    v8 = [(HFAudioRecorder *)self audioRecorderDelegate];
    if ([v8 conformsToProtocol:&unk_2825BAEE0])
    {
      v9 = [(HFAudioRecorder *)self audioRecorderDelegate];
      v10 = objc_opt_respondsToSelector();

      if ((v10 & 1) == 0)
      {
LABEL_8:
        [(HFAudioRecorder *)self _deactivateRecordingAudioSession];
        return;
      }

      v8 = [(HFAudioRecorder *)self audioRecorderDelegate];
      v11 = [(HFAudioRecorder *)self recordingAudiofileURL];
      [v8 audioRecorderFinishedRecording:self audioFile:v11];
    }

    goto LABEL_8;
  }

  v12 = [(HFAudioRecorder *)self audioRecorderDelegate];
  if (![v12 conformsToProtocol:&unk_2825BAEE0])
  {
    goto LABEL_12;
  }

  v13 = [(HFAudioRecorder *)self audioRecorderDelegate];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    v12 = [(HFAudioRecorder *)self audioRecorderDelegate];
    [v12 audioRecorderFailedToFinishRecording:self];
LABEL_12:
  }

  [(HFAudioRecorder *)self _cleanup];
}

- (void)audioSessionDidInterrupt:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HFLogForCategory(0xBuLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "Audio Session was interrupted [%@]", &v7, 0xCu);
  }

  [(HFAudioRecorder *)self setRecordingStopSource:1];
  [(HFAudioRecorder *)self stopRecording];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)audioSessionMediaServicesWereLost:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HFLogForCategory(0xBuLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "Media Services Were Lost [%@]", &v7, 0xCu);
  }

  [(HFAudioRecorder *)self setRecordingStopSource:2];
  [(HFAudioRecorder *)self stopRecording];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)audioSessionMediaServicesWereReset:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HFLogForCategory(0xBuLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "Media Services Were Reset [%@]", &v7, 0xCu);
  }

  [(HFAudioRecorder *)self setRecordingStopSource:2];
  [(HFAudioRecorder *)self stopRecording];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)audioSessionRouteChanged:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(HFAudioRecorder *)self isAudioSessionActive])
  {
    v5 = [v4 userInfo];
    v6 = [v5 objectForKey:*MEMORY[0x277CB8220]];
    v7 = [v6 unsignedIntegerValue];

    if ((v7 - 1) <= 1)
    {
      v8 = HFLogForCategory(0xBuLL);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138412290;
        v12 = v4;
        _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "Audio Session Route Changed [%@]", &v11, 0xCu);
      }

      [(HFAudioRecorder *)self setRecordingStopSource:3];
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7];
      [(HFAudioRecorder *)self setRouteChangeReason:v9];

      [(HFAudioRecorder *)self stopRecording];
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)_audioRecorderSettings
{
  v8[4] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CB82E0];
  v7[0] = *MEMORY[0x277CB8258];
  v7[1] = v2;
  v8[0] = &unk_282524060;
  v8[1] = &unk_2825255A0;
  v3 = *MEMORY[0x277CB82B0];
  v7[2] = *MEMORY[0x277CB8280];
  v7[3] = v3;
  v8[2] = &unk_282524078;
  v8[3] = &unk_282524090;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:4];
  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)_registerAudioSessionObservers
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:self selector:sel_audioSessionDidInterrupt_ name:*MEMORY[0x277CB8068] object:0];
  [v3 addObserver:self selector:sel_audioSessionRouteChanged_ name:*MEMORY[0x277CB8210] object:0];
  [v3 addObserver:self selector:sel_audioSessionMediaServicesWereLost_ name:*MEMORY[0x277CB8098] object:0];
  [v3 addObserver:self selector:sel_audioSessionMediaServicesWereReset_ name:*MEMORY[0x277CB80A0] object:0];
}

- (void)_deregisterAudioSessionObservers
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277CB8068] object:0];
  [v3 removeObserver:self name:*MEMORY[0x277CB8210] object:0];
  [v3 removeObserver:self name:*MEMORY[0x277CB8098] object:0];
  [v3 removeObserver:self name:*MEMORY[0x277CB80A0] object:0];
}

- (void)_setupAudioFileForRecording
{
  v33 = *MEMORY[0x277D85DE8];
  outAudioFile = 0;
  v3 = [(HFAudioRecorder *)self dateFormatter];
  [v3 setDateFormat:@"MM-dd-yyyy"];

  v4 = MEMORY[0x277CCACA8];
  v5 = [MEMORY[0x277CCAD78] UUID];
  v6 = [v5 UUIDString];
  v7 = [(HFAudioRecorder *)self dateFormatter];
  v8 = [MEMORY[0x277CBEAA8] date];
  v9 = [v7 stringFromDate:v8];
  v10 = [v4 stringWithFormat:@"%@-%@.%@", v6, v9, @"caf"];

  v11 = +[HFUtilities sharedAnnouncementsDirectoryURL];
  v12 = [v11 path];
  v13 = MEMORY[0x277CBEBC0];
  v14 = [v12 stringByAppendingPathComponent:v10];
  v15 = [v13 fileURLWithPath:v14];

  v16 = [MEMORY[0x277CCAA00] defaultManager];
  v17 = [v15 URLByDeletingLastPathComponent];
  v28 = 0;
  [v16 createDirectoryAtURL:v17 withIntermediateDirectories:1 attributes:0 error:&v28];
  v18 = v28;

  if (!v18)
  {
    memset(&buf.mFormatID, 0, 32);
    buf.mSampleRate = 24000.0;
    buf.mChannelsPerFrame = 1;
    buf.mFormatID = 1869641075;
    buf.mFramesPerPacket = 480;
    ioPropertyDataSize = 40;
    Property = AudioFormatGetProperty(0x666D7469u, 0, 0, &ioPropertyDataSize, &buf);
    if (Property)
    {
      v22 = Property;
      v19 = HFLogForCategory(0xBuLL);
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_12;
      }

      v20 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v22 userInfo:0];
      *v30 = 138412290;
      v31 = v20;
      v23 = "AudioFormatGetProperty failed with error [%@]";
    }

    else
    {
      v24 = AudioFileCreateWithURL(v15, 0x63616666u, &buf, 3u, &outAudioFile);
      if (!v24)
      {
        [(HFAudioRecorder *)self setRecordingAudiofileURL:v15];
        [(HFAudioRecorder *)self setRecordingAudiofileID:outAudioFile];
        goto LABEL_13;
      }

      v25 = v24;
      v19 = HFLogForCategory(0xBuLL);
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_12;
      }

      v20 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v25 userInfo:0];
      *v30 = 138412290;
      v31 = v20;
      v23 = "AudioFileCreateWithURL error %@";
    }

    _os_log_impl(&dword_20D9BF000, v19, OS_LOG_TYPE_DEFAULT, v23, v30, 0xCu);
    goto LABEL_11;
  }

  v19 = HFLogForCategory(0xBuLL);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v20 = [v15 URLByDeletingLastPathComponent];
    LODWORD(buf.mSampleRate) = 138412546;
    *(&buf.mSampleRate + 4) = v20;
    LOWORD(buf.mFormatFlags) = 2112;
    *(&buf.mFormatFlags + 2) = v18;
    _os_log_error_impl(&dword_20D9BF000, v19, OS_LOG_TYPE_ERROR, "Error creating audio file at path [%@] - [%@]", &buf, 0x16u);
LABEL_11:
  }

LABEL_12:

LABEL_13:
  v26 = *MEMORY[0x277D85DE8];
}

- (void)_activateRecordingAudioSession
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = HFLogForCategory(0xBuLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_DEFAULT, "Now Activiation AudioSession", buf, 2u);
  }

  v4 = [MEMORY[0x277CB83F8] sharedInstance];
  v5 = *MEMORY[0x277CB8028];
  v6 = *MEMORY[0x277CB80A8];
  v14 = 0;
  [v4 setCategory:v5 mode:v6 routeSharingPolicy:0 options:12 error:&v14];
  v7 = v14;
  if (v7)
  {
    v8 = v7;
    v9 = HFLogForCategory(0xBuLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v8;
      v10 = "AudioSession error setting category - [%@]";
LABEL_9:
      _os_log_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_DEFAULT, v10, buf, 0xCu);
      goto LABEL_10;
    }

    goto LABEL_10;
  }

  [v4 setInterruptionFadeDuration:&unk_2825255B0 error:0];
  v13 = 0;
  [v4 setActive:1 error:&v13];
  v11 = v13;
  if (v11)
  {
    v8 = v11;
    v9 = HFLogForCategory(0xBuLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v8;
      v10 = "AudioSession error activating audio session - [%@]";
      goto LABEL_9;
    }

LABEL_10:

    goto LABEL_11;
  }

  [(HFAudioRecorder *)self setAudioSessionIsActive:1];
  v8 = HFLogForCategory(0xBuLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "AudioSession activated  successfully", buf, 2u);
  }

LABEL_11:

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_deactivateRecordingAudioSession
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = HFLogForCategory(0xBuLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_DEFAULT, "Releasing Audio Session", buf, 2u);
  }

  v4 = [MEMORY[0x277CB83F8] sharedInstance];
  v8 = 0;
  [v4 setActive:0 withOptions:1 error:&v8];
  v5 = v8;
  if (v5)
  {
    v6 = HFLogForCategory(0xBuLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v10 = v5;
      _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "Error Deactivating audio session - [%@]", buf, 0xCu);
    }
  }

  [(HFAudioRecorder *)self setAudioSessionIsActive:0];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_cleanup
{
  [(HFAudioRecorder *)self setRecording:0];
  [(HFAudioRecorder *)self setRecordingAudiofileID:0];
  [(HFAudioRecorder *)self setRecordingAudiofileURL:0];
  [(HFAudioRecorder *)self setTotalPacketsCount:0];
  [(HFAudioRecorder *)self setRecordingStartTimeInterval:0.0];
  [(HFAudioRecorder *)self setRecordingStopTimeInterval:0.0];
  v3 = HFLogForCategory(0xBuLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_DEFAULT, "Cleaning up current recording session is now complete", v4, 2u);
  }
}

- (void)_startPowerMeteringTimer
{
  v3 = [(HFAudioRecorder *)self powerMeteringTimer];

  if (v3)
  {
    [(HFAudioRecorder *)self _stopPowerMeteringTimer];
  }

  v4 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, MEMORY[0x277D85CD0]);
  [(HFAudioRecorder *)self setPowerMeteringTimer:v4];

  v5 = [(HFAudioRecorder *)self powerMeteringTimer];
  dispatch_source_set_timer(v5, 0, 0x3F940AAuLL, 0);

  objc_initWeak(&location, self);
  v6 = [(HFAudioRecorder *)self powerMeteringTimer];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __43__HFAudioRecorder__startPowerMeteringTimer__block_invoke;
  v11 = &unk_277DF4460;
  objc_copyWeak(&v12, &location);
  dispatch_source_set_event_handler(v6, &v8);

  v7 = [(HFAudioRecorder *)self powerMeteringTimer:v8];
  dispatch_resume(v7);

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __43__HFAudioRecorder__startPowerMeteringTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained audioRecorder];
  [v1 updateMeters];

  v2 = [WeakRetained audioRecorder];
  [v2 averagePowerForChannel:0];
  v4 = v3;

  v5 = [WeakRetained audioRecorderDelegate];
  if ([v5 conformsToProtocol:&unk_2825BAEE0])
  {
    v6 = [WeakRetained audioRecorderDelegate];
    v7 = objc_opt_respondsToSelector();

    if ((v7 & 1) == 0)
    {
      goto LABEL_5;
    }

    v5 = [WeakRetained audioRecorderDelegate];
    LODWORD(v8) = v4;
    [v5 didUpdateAveragePower:v8];
  }

LABEL_5:
}

- (void)_stopPowerMeteringTimer
{
  if ([(HFAudioRecorder *)self _isPowerMeteringTimerValid])
  {
    v3 = [(HFAudioRecorder *)self powerMeteringTimer];
    dispatch_source_cancel(v3);
  }
}

- (BOOL)_isPowerMeteringTimerValid
{
  v3 = [(HFAudioRecorder *)self powerMeteringTimer];
  if (v3)
  {
    v4 = [(HFAudioRecorder *)self powerMeteringTimer];
    v5 = dispatch_source_testcancel(v4) == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_createSystemSounds
{
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v7 pathForResource:@"mic_open-Announce" ofType:@"wav"];
  v4 = [MEMORY[0x277CBEBC0] fileURLWithPath:v3];
  v5 = [v7 pathForResource:@"mic_closed-Announce" ofType:@"wav"];
  v6 = [MEMORY[0x277CBEBC0] fileURLWithPath:v5];
  AudioServicesCreateSystemSoundID(v4, &self->_soundIDForRecordBegin);
  AudioServicesCreateSystemSoundID(v6, &self->_soundIDForRecordEnd);
}

- (HFAudioRecorderDelegate)audioRecorderDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_audioRecorderDelegate);

  return WeakRetained;
}

@end