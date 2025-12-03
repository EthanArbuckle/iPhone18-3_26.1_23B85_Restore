@interface HFAudioRecorder
- (BOOL)_isPowerMeteringTimerValid;
- (HFAudioRecorder)initWithAudioRecorderDelegate:(id)delegate;
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
- (void)audioRecorderDidFinishRecording:(id)recording successfully:(BOOL)successfully;
- (void)audioSessionDidInterrupt:(id)interrupt;
- (void)audioSessionMediaServicesWereLost:(id)lost;
- (void)audioSessionMediaServicesWereReset:(id)reset;
- (void)audioSessionRouteChanged:(id)changed;
- (void)dealloc;
- (void)playAlertSoundForType:(unint64_t)type withCompletion:(id)completion;
- (void)prepareRecording;
- (void)startRecording;
- (void)stopRecording;
@end

@implementation HFAudioRecorder

- (HFAudioRecorder)initWithAudioRecorderDelegate:(id)delegate
{
  v24 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  v21.receiver = self;
  v21.super_class = HFAudioRecorder;
  v5 = [(HFAudioRecorder *)&v21 init];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_7;
  }

  objc_storeWeak(&v5->_audioRecorderDelegate, delegateCopy);
  v7 = objc_opt_new();
  dateFormatter = v6->_dateFormatter;
  v6->_dateFormatter = v7;

  v6->_recordingDurationLimit = -1.0;
  v6->_recordingStopSource = 0;
  [(HFAudioRecorder *)v6 _createSystemSounds];
  [(HFAudioRecorder *)v6 _registerAudioSessionObservers];
  [(HFAudioRecorder *)v6 _setupAudioFileForRecording];
  v9 = objc_alloc(MEMORY[0x277CB83E8]);
  recordingAudiofileURL = [(HFAudioRecorder *)v6 recordingAudiofileURL];
  _audioRecorderSettings = [(HFAudioRecorder *)v6 _audioRecorderSettings];
  v20 = 0;
  v12 = [v9 initWithURL:recordingAudiofileURL settings:_audioRecorderSettings error:&v20];
  v13 = v20;
  [(HFAudioRecorder *)v6 setAudioRecorder:v12];

  if (!v13)
  {
    audioRecorder = [(HFAudioRecorder *)v6 audioRecorder];
    [audioRecorder setDelegate:v6];

    audioRecorder2 = [(HFAudioRecorder *)v6 audioRecorder];
    [audioRecorder2 setMeteringEnabled:1];

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

  audioRecorder = [(HFAudioRecorder *)self audioRecorder];
  [(HFAudioRecorder *)self recordingDurationLimit];
  v4 = [audioRecorder recordForDuration:?];

  v5 = HFLogForCategory(0xBuLL);
  v6 = v5;
  if ((v4 & 1) == 0)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_ERROR, "AVAudioRecorder failed to start recording", buf, 2u);
    }

    audioRecorderDelegate = [(HFAudioRecorder *)self audioRecorderDelegate];
    if ([audioRecorderDelegate conformsToProtocol:&unk_2825BAEE0])
    {
      audioRecorderDelegate2 = [(HFAudioRecorder *)self audioRecorderDelegate];
      v13 = objc_opt_respondsToSelector();

      if ((v13 & 1) == 0)
      {
LABEL_16:
        [(HFAudioRecorder *)self _cleanup];
        return;
      }

      audioRecorderDelegate = [(HFAudioRecorder *)self audioRecorderDelegate];
      v14 = [MEMORY[0x277CCA9B8] hf_errorWithCode:33];
      [audioRecorderDelegate audioRecorderFailedToStartRecording:v14];
    }

    goto LABEL_16;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 0;
    _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "AVAudioRecorder started recording successfully", v15, 2u);
  }

  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSince1970];
  [(HFAudioRecorder *)self setRecordingStartTimeInterval:?];

  [(HFAudioRecorder *)self _startPowerMeteringTimer];
  [(HFAudioRecorder *)self setRecording:1];
  audioRecorderDelegate3 = [(HFAudioRecorder *)self audioRecorderDelegate];
  if ([audioRecorderDelegate3 conformsToProtocol:&unk_2825BAEE0])
  {
    audioRecorderDelegate4 = [(HFAudioRecorder *)self audioRecorderDelegate];
    v10 = objc_opt_respondsToSelector();

    if ((v10 & 1) == 0)
    {
      return;
    }

    audioRecorderDelegate3 = [(HFAudioRecorder *)self audioRecorderDelegate];
    [audioRecorderDelegate3 audioRecorderDidStartRecording:self];
  }
}

- (void)stopRecording
{
  [(HFAudioRecorder *)self _deregisterAudioSessionObservers];
  audioRecorder = [(HFAudioRecorder *)self audioRecorder];
  [audioRecorder stop];
}

- (double)currentRecordedDuration
{
  v15 = *MEMORY[0x277D85DE8];
  [(HFAudioRecorder *)self recordingStopTimeInterval];
  if (v3 == 0.0)
  {
    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSince1970];
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

- (void)playAlertSoundForType:(unint64_t)type withCompletion:(id)completion
{
  completionCopy = completion;
  if (type == 1)
  {
    v7 = completionCopy;
    [(HFAudioRecorder *)self _playStopRecordingToneWithCompletion:completionCopy];
  }

  else
  {
    if (type)
    {
      goto LABEL_6;
    }

    v7 = completionCopy;
    [(HFAudioRecorder *)self _playStartRecordingToneWithCompletion:completionCopy];
  }

  completionCopy = v7;
LABEL_6:
}

- (void)audioRecorderDidFinishRecording:(id)recording successfully:(BOOL)successfully
{
  v5 = HFLogForCategory(0xBuLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 0;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "AVAudioRecorder stopped recording", v15, 2u);
  }

  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSince1970];
  [(HFAudioRecorder *)self setRecordingStopTimeInterval:?];

  [(HFAudioRecorder *)self _stopPowerMeteringTimer];
  [(HFAudioRecorder *)self setRecording:0];
  recordingAudiofileID = [(HFAudioRecorder *)self recordingAudiofileID];
  if (recordingAudiofileID)
  {
    AudioFileClose(recordingAudiofileID);
    audioRecorderDelegate = [(HFAudioRecorder *)self audioRecorderDelegate];
    if ([audioRecorderDelegate conformsToProtocol:&unk_2825BAEE0])
    {
      audioRecorderDelegate2 = [(HFAudioRecorder *)self audioRecorderDelegate];
      v10 = objc_opt_respondsToSelector();

      if ((v10 & 1) == 0)
      {
LABEL_8:
        [(HFAudioRecorder *)self _deactivateRecordingAudioSession];
        return;
      }

      audioRecorderDelegate = [(HFAudioRecorder *)self audioRecorderDelegate];
      recordingAudiofileURL = [(HFAudioRecorder *)self recordingAudiofileURL];
      [audioRecorderDelegate audioRecorderFinishedRecording:self audioFile:recordingAudiofileURL];
    }

    goto LABEL_8;
  }

  audioRecorderDelegate3 = [(HFAudioRecorder *)self audioRecorderDelegate];
  if (![audioRecorderDelegate3 conformsToProtocol:&unk_2825BAEE0])
  {
    goto LABEL_12;
  }

  audioRecorderDelegate4 = [(HFAudioRecorder *)self audioRecorderDelegate];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    audioRecorderDelegate3 = [(HFAudioRecorder *)self audioRecorderDelegate];
    [audioRecorderDelegate3 audioRecorderFailedToFinishRecording:self];
LABEL_12:
  }

  [(HFAudioRecorder *)self _cleanup];
}

- (void)audioSessionDidInterrupt:(id)interrupt
{
  v9 = *MEMORY[0x277D85DE8];
  interruptCopy = interrupt;
  v5 = HFLogForCategory(0xBuLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = interruptCopy;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "Audio Session was interrupted [%@]", &v7, 0xCu);
  }

  [(HFAudioRecorder *)self setRecordingStopSource:1];
  [(HFAudioRecorder *)self stopRecording];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)audioSessionMediaServicesWereLost:(id)lost
{
  v9 = *MEMORY[0x277D85DE8];
  lostCopy = lost;
  v5 = HFLogForCategory(0xBuLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = lostCopy;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "Media Services Were Lost [%@]", &v7, 0xCu);
  }

  [(HFAudioRecorder *)self setRecordingStopSource:2];
  [(HFAudioRecorder *)self stopRecording];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)audioSessionMediaServicesWereReset:(id)reset
{
  v9 = *MEMORY[0x277D85DE8];
  resetCopy = reset;
  v5 = HFLogForCategory(0xBuLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = resetCopy;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "Media Services Were Reset [%@]", &v7, 0xCu);
  }

  [(HFAudioRecorder *)self setRecordingStopSource:2];
  [(HFAudioRecorder *)self stopRecording];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)audioSessionRouteChanged:(id)changed
{
  v13 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  if ([(HFAudioRecorder *)self isAudioSessionActive])
  {
    userInfo = [changedCopy userInfo];
    v6 = [userInfo objectForKey:*MEMORY[0x277CB8220]];
    unsignedIntegerValue = [v6 unsignedIntegerValue];

    if ((unsignedIntegerValue - 1) <= 1)
    {
      v8 = HFLogForCategory(0xBuLL);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138412290;
        v12 = changedCopy;
        _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "Audio Session Route Changed [%@]", &v11, 0xCu);
      }

      [(HFAudioRecorder *)self setRecordingStopSource:3];
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue];
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
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_audioSessionDidInterrupt_ name:*MEMORY[0x277CB8068] object:0];
  [defaultCenter addObserver:self selector:sel_audioSessionRouteChanged_ name:*MEMORY[0x277CB8210] object:0];
  [defaultCenter addObserver:self selector:sel_audioSessionMediaServicesWereLost_ name:*MEMORY[0x277CB8098] object:0];
  [defaultCenter addObserver:self selector:sel_audioSessionMediaServicesWereReset_ name:*MEMORY[0x277CB80A0] object:0];
}

- (void)_deregisterAudioSessionObservers
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277CB8068] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x277CB8210] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x277CB8098] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x277CB80A0] object:0];
}

- (void)_setupAudioFileForRecording
{
  v33 = *MEMORY[0x277D85DE8];
  outAudioFile = 0;
  dateFormatter = [(HFAudioRecorder *)self dateFormatter];
  [dateFormatter setDateFormat:@"MM-dd-yyyy"];

  v4 = MEMORY[0x277CCACA8];
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  dateFormatter2 = [(HFAudioRecorder *)self dateFormatter];
  date = [MEMORY[0x277CBEAA8] date];
  v9 = [dateFormatter2 stringFromDate:date];
  v10 = [v4 stringWithFormat:@"%@-%@.%@", uUIDString, v9, @"caf"];

  v11 = +[HFUtilities sharedAnnouncementsDirectoryURL];
  path = [v11 path];
  v13 = MEMORY[0x277CBEBC0];
  v14 = [path stringByAppendingPathComponent:v10];
  v15 = [v13 fileURLWithPath:v14];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  uRLByDeletingLastPathComponent = [v15 URLByDeletingLastPathComponent];
  v28 = 0;
  [defaultManager createDirectoryAtURL:uRLByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v28];
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

      uRLByDeletingLastPathComponent2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v22 userInfo:0];
      *v30 = 138412290;
      v31 = uRLByDeletingLastPathComponent2;
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

      uRLByDeletingLastPathComponent2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v25 userInfo:0];
      *v30 = 138412290;
      v31 = uRLByDeletingLastPathComponent2;
      v23 = "AudioFileCreateWithURL error %@";
    }

    _os_log_impl(&dword_20D9BF000, v19, OS_LOG_TYPE_DEFAULT, v23, v30, 0xCu);
    goto LABEL_11;
  }

  v19 = HFLogForCategory(0xBuLL);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    uRLByDeletingLastPathComponent2 = [v15 URLByDeletingLastPathComponent];
    LODWORD(buf.mSampleRate) = 138412546;
    *(&buf.mSampleRate + 4) = uRLByDeletingLastPathComponent2;
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

  mEMORY[0x277CB83F8] = [MEMORY[0x277CB83F8] sharedInstance];
  v5 = *MEMORY[0x277CB8028];
  v6 = *MEMORY[0x277CB80A8];
  v14 = 0;
  [mEMORY[0x277CB83F8] setCategory:v5 mode:v6 routeSharingPolicy:0 options:12 error:&v14];
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

  [mEMORY[0x277CB83F8] setInterruptionFadeDuration:&unk_2825255B0 error:0];
  v13 = 0;
  [mEMORY[0x277CB83F8] setActive:1 error:&v13];
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

  mEMORY[0x277CB83F8] = [MEMORY[0x277CB83F8] sharedInstance];
  v8 = 0;
  [mEMORY[0x277CB83F8] setActive:0 withOptions:1 error:&v8];
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
  powerMeteringTimer = [(HFAudioRecorder *)self powerMeteringTimer];

  if (powerMeteringTimer)
  {
    [(HFAudioRecorder *)self _stopPowerMeteringTimer];
  }

  v4 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, MEMORY[0x277D85CD0]);
  [(HFAudioRecorder *)self setPowerMeteringTimer:v4];

  powerMeteringTimer2 = [(HFAudioRecorder *)self powerMeteringTimer];
  dispatch_source_set_timer(powerMeteringTimer2, 0, 0x3F940AAuLL, 0);

  objc_initWeak(&location, self);
  powerMeteringTimer3 = [(HFAudioRecorder *)self powerMeteringTimer];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __43__HFAudioRecorder__startPowerMeteringTimer__block_invoke;
  v11 = &unk_277DF4460;
  objc_copyWeak(&v12, &location);
  dispatch_source_set_event_handler(powerMeteringTimer3, &v8);

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
    powerMeteringTimer = [(HFAudioRecorder *)self powerMeteringTimer];
    dispatch_source_cancel(powerMeteringTimer);
  }
}

- (BOOL)_isPowerMeteringTimerValid
{
  powerMeteringTimer = [(HFAudioRecorder *)self powerMeteringTimer];
  if (powerMeteringTimer)
  {
    powerMeteringTimer2 = [(HFAudioRecorder *)self powerMeteringTimer];
    v5 = dispatch_source_testcancel(powerMeteringTimer2) == 0;
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