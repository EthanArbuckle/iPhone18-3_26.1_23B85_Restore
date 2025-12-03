@interface HFCameraLiveStreamController
- (BOOL)isStreamingEnabled;
- (HFCameraLiveStreamController)init;
- (HFCameraLiveStreamController)initWithHome:(id)home cameraProfile:(id)profile;
- (HFCameraLiveStreamControllerDelegate)delegate;
- (HMCameraSource)liveCameraSource;
- (NSError)streamError;
- (NSString)debugDescription;
- (id)activeStream;
- (id)mostRecentSnapshot;
- (unint64_t)_derivedAudioStreamSetting;
- (unint64_t)streamState;
- (void)_updateAudioManagerState;
- (void)cameraSnapshotControlDidUpdateMostRecentSnapshot:(id)snapshot;
- (void)cameraStreamControl:(id)control didStopStreamWithError:(id)error;
- (void)cameraStreamControlDidUpdateManagerState:(id)state;
- (void)cameraStreamControlDidUpdateStreamState:(id)state;
- (void)cameraUserSettingsDidUpdate:(id)update;
- (void)dealloc;
- (void)setMicrophoneEnabled:(BOOL)enabled;
- (void)setStreamAudioEnabled:(BOOL)enabled;
- (void)setStreamAudioVolume:(float)volume;
- (void)startStreaming;
- (void)stopStreaming;
@end

@implementation HFCameraLiveStreamController

- (HFCameraLiveStreamController)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithHome_cameraProfile_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFCameraLiveStreamController.m" lineNumber:37 description:{@"%s is unavailable; use %@ instead", "-[HFCameraLiveStreamController init]", v5}];

  return 0;
}

- (HFCameraLiveStreamController)initWithHome:(id)home cameraProfile:(id)profile
{
  homeCopy = home;
  profileCopy = profile;
  v13.receiver = self;
  v13.super_class = HFCameraLiveStreamController;
  v9 = [(HFCameraLiveStreamController *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_home, home);
    objc_storeStrong(&v10->_cameraProfile, profile);
    v11 = +[HFHomeKitDispatcher sharedDispatcher];
    [v11 addCameraObserver:v10];

    v10->_startStreamingAfterStop = 0;
    v10->_inferredStreamState = 4;
  }

  return v10;
}

- (void)dealloc
{
  v13 = *MEMORY[0x277D85DE8];
  if (!+[HFUtilities isInternalTest])
  {
    v3 = HFLogForCategory(0x1CuLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      cameraProfile = [(HFCameraLiveStreamController *)self cameraProfile];
      accessory = [cameraProfile accessory];
      name = [accessory name];
      *buf = 138412546;
      selfCopy = self;
      v11 = 2112;
      v12 = name;
      _os_log_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_DEFAULT, "%@ dealloc for name:%@. Stop streaming requested.", buf, 0x16u);
    }

    [(HFCameraLiveStreamController *)self stopStreaming];
  }

  v8.receiver = self;
  v8.super_class = HFCameraLiveStreamController;
  [(HFCameraLiveStreamController *)&v8 dealloc];
  v7 = *MEMORY[0x277D85DE8];
}

- (unint64_t)streamState
{
  cameraProfile = [(HFCameraLiveStreamController *)self cameraProfile];
  streamControl = [cameraProfile streamControl];
  streamState = [streamControl streamState];

  return streamState;
}

- (HMCameraSource)liveCameraSource
{
  v25 = *MEMORY[0x277D85DE8];
  streamState = [(HFCameraLiveStreamController *)self streamState];
  v4 = HFLogForCategory(0x18uLL);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (streamState == 2)
  {
    if (v5)
    {
      cameraProfile = [(HFCameraLiveStreamController *)self cameraProfile];
      uniqueIdentifier = [cameraProfile uniqueIdentifier];
      cameraProfile2 = [(HFCameraLiveStreamController *)self cameraProfile];
      accessory = [cameraProfile2 accessory];
      name = [accessory name];
      v19 = 138412802;
      selfCopy2 = self;
      v21 = 2112;
      v22 = uniqueIdentifier;
      v23 = 2112;
      v24 = name;
      _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "%@ Displaying stream control for profile:%@/%@", &v19, 0x20u);
    }

    activeStream = [(HFCameraLiveStreamController *)self activeStream];
  }

  else
  {
    if (v5)
    {
      cameraProfile3 = [(HFCameraLiveStreamController *)self cameraProfile];
      uniqueIdentifier2 = [cameraProfile3 uniqueIdentifier];
      cameraProfile4 = [(HFCameraLiveStreamController *)self cameraProfile];
      accessory2 = [cameraProfile4 accessory];
      name2 = [accessory2 name];
      v19 = 138412802;
      selfCopy2 = self;
      v21 = 2112;
      v22 = uniqueIdentifier2;
      v23 = 2112;
      v24 = name2;
      _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "%@ Displaying liveCameraSource snapshot for profile:%@/%@", &v19, 0x20u);
    }

    activeStream = [(HFCameraLiveStreamController *)self mostRecentSnapshot];
  }

  v17 = *MEMORY[0x277D85DE8];

  return activeStream;
}

- (NSError)streamError
{
  cameraProfile = [(HFCameraLiveStreamController *)self cameraProfile];
  hf_cameraManager = [cameraProfile hf_cameraManager];
  cachedStreamError = [hf_cameraManager cachedStreamError];

  return cachedStreamError;
}

- (void)startStreaming
{
  if ([(HFCameraLiveStreamController *)self inferredStreamState]== 3)
  {

    [(HFCameraLiveStreamController *)self setStartStreamingAfterStop:1];
  }

  else
  {
    self->_inferredStreamState = 1;
    cameraProfile = [(HFCameraLiveStreamController *)self cameraProfile];
    hf_cameraManager = [cameraProfile hf_cameraManager];
    [hf_cameraManager beginContinuousStreamingWithRequester:self];
  }
}

- (void)stopStreaming
{
  if ([(HFCameraLiveStreamController *)self inferredStreamState]!= 4)
  {
    [(HFCameraLiveStreamController *)self setInferredStreamState:3];
  }

  [(HFCameraLiveStreamController *)self setStartStreamingAfterStop:0];
  cameraProfile = [(HFCameraLiveStreamController *)self cameraProfile];
  hf_cameraManager = [cameraProfile hf_cameraManager];
  [hf_cameraManager endContinuousStreamingWithRequester:self];
}

- (BOOL)isStreamingEnabled
{
  cameraProfile = [(HFCameraLiveStreamController *)self cameraProfile];
  hf_cameraManager = [cameraProfile hf_cameraManager];
  isContinuousStreamingEnabled = [hf_cameraManager isContinuousStreamingEnabled];

  return isContinuousStreamingEnabled;
}

- (void)setStreamAudioEnabled:(BOOL)enabled
{
  v11 = *MEMORY[0x277D85DE8];
  if (self->_streamAudioEnabled != enabled)
  {
    enabledCopy = enabled;
    self->_streamAudioEnabled = enabled;
    v5 = HFLogForCategory(0x1CuLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412546;
      selfCopy = self;
      v9 = 1024;
      v10 = enabledCopy;
      _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "%@ Updating stream audio state to %d", &v7, 0x12u);
    }

    [(HFCameraLiveStreamController *)self _updateAudioManagerState];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)setMicrophoneEnabled:(BOOL)enabled
{
  v11 = *MEMORY[0x277D85DE8];
  if (self->_microphoneEnabled != enabled)
  {
    enabledCopy = enabled;
    self->_microphoneEnabled = enabled;
    v5 = HFLogForCategory(0x1CuLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412546;
      selfCopy = self;
      v9 = 1024;
      v10 = enabledCopy;
      _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "%@ Updating microphone state to %d", &v7, 0x12u);
    }

    [(HFCameraLiveStreamController *)self _updateAudioManagerState];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)setStreamAudioVolume:(float)volume
{
  v11 = *MEMORY[0x277D85DE8];
  if (self->_streamAudioVolume != volume)
  {
    self->_streamAudioVolume = volume;
    v5 = HFLogForCategory(0x1CuLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412546;
      selfCopy = self;
      v9 = 2048;
      volumeCopy = volume;
      _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "%@ Updating stream audio volume to %f", &v7, 0x16u);
    }

    [(HFCameraLiveStreamController *)self _updateAudioManagerState];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (id)activeStream
{
  cameraProfile = [(HFCameraLiveStreamController *)self cameraProfile];
  streamControl = [cameraProfile streamControl];
  cameraStream = [streamControl cameraStream];

  return cameraStream;
}

- (id)mostRecentSnapshot
{
  cameraProfile = [(HFCameraLiveStreamController *)self cameraProfile];
  snapshotControl = [cameraProfile snapshotControl];
  mostRecentSnapshot = [snapshotControl mostRecentSnapshot];

  return mostRecentSnapshot;
}

- (void)_updateAudioManagerState
{
  v43 = *MEMORY[0x277D85DE8];
  activeStream = [(HFCameraLiveStreamController *)self activeStream];

  if (activeStream)
  {
    audioManager = [(HFCameraLiveStreamController *)self audioManager];

    if (!audioManager)
    {
      v5 = [HFCameraAudioManager alloc];
      cameraProfile = [(HFCameraLiveStreamController *)self cameraProfile];
      activeStream2 = [(HFCameraLiveStreamController *)self activeStream];
      home = [(HFCameraLiveStreamController *)self home];
      hf_characteristicValueManager = [home hf_characteristicValueManager];
      v10 = [(HFCameraAudioManager *)v5 initWithCameraProfile:cameraProfile cameraStream:activeStream2 valueManager:hf_characteristicValueManager];
      [(HFCameraLiveStreamController *)self setAudioManager:v10];
    }
  }

  else
  {
    [(HFCameraLiveStreamController *)self setAudioManager:0];
  }

  v11 = HFLogForCategory(0x1CuLL);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    [(HFCameraLiveStreamController *)self audioManager];
    v12 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    isStreamAudioEnabled = [(HFCameraLiveStreamController *)self isStreamAudioEnabled];
    isMicrophoneEnabled = [(HFCameraLiveStreamController *)self isMicrophoneEnabled];
    [(HFCameraLiveStreamController *)self streamAudioVolume];
    v33 = 138413314;
    selfCopy2 = self;
    v35 = 2112;
    v36 = v12;
    v37 = 1024;
    v38 = isStreamAudioEnabled;
    v39 = 1024;
    v40 = isMicrophoneEnabled;
    v41 = 2048;
    v42 = v15;
    _os_log_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_DEFAULT, "%@ Updating audio manager state with manager: %@, stream audio enabled: %d, microphone enabled: %d, stream audio volume: %f", &v33, 0x2Cu);
  }

  audioManager2 = [(HFCameraLiveStreamController *)self audioManager];

  if (audioManager2)
  {
    _derivedAudioStreamSetting = [(HFCameraLiveStreamController *)self _derivedAudioStreamSetting];
    audioManager3 = [(HFCameraLiveStreamController *)self audioManager];
    audioStreamSetting = [audioManager3 audioStreamSetting];

    if (_derivedAudioStreamSetting != audioStreamSetting)
    {
      audioManager4 = [(HFCameraLiveStreamController *)self audioManager];
      v21 = [audioManager4 updateAudioStreamSetting:{-[HFCameraLiveStreamController _derivedAudioStreamSetting](self, "_derivedAudioStreamSetting")}];
    }

    [(HFCameraLiveStreamController *)self streamAudioVolume];
    v23 = v22;
    audioManager5 = [(HFCameraLiveStreamController *)self audioManager];
    [audioManager5 incomingAudioVolume];
    v26 = v25;

    if (v23 != v26)
    {
      if (+[HFUtilities isAMac])
      {
        v27 = HFLogForCategory(0x1CuLL);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          [(HFCameraLiveStreamController *)self streamAudioVolume];
          v33 = 138412546;
          selfCopy2 = self;
          v35 = 2048;
          v36 = v28;
          _os_log_impl(&dword_20D9BF000, v27, OS_LOG_TYPE_DEFAULT, "%@ Performing volume update to %.02f on Mac", &v33, 0x16u);
        }

        audioManager6 = [(HFCameraLiveStreamController *)self audioManager];
        [(HFCameraLiveStreamController *)self streamAudioVolume];
        v30 = [audioManager6 setIncomingAudioVolume:?];
      }

      else
      {
        audioManager6 = [(HFCameraLiveStreamController *)self audioManager];
        [audioManager6 incomingAudioVolume];
        self->_streamAudioVolume = v31;
      }
    }
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (unint64_t)_derivedAudioStreamSetting
{
  if ([(HFCameraLiveStreamController *)self isMicrophoneEnabled])
  {
    return 3;
  }

  if ([(HFCameraLiveStreamController *)self isStreamAudioEnabled])
  {
    return 2;
  }

  return 1;
}

- (void)cameraStreamControlDidUpdateStreamState:(id)state
{
  [(HFCameraLiveStreamController *)self _updateAudioManagerState];
  delegate = [(HFCameraLiveStreamController *)self delegate];
  [delegate streamControllerStateDidUpdate:self];
}

- (void)cameraStreamControlDidUpdateManagerState:(id)state
{
  delegate = [(HFCameraLiveStreamController *)self delegate];
  [delegate streamControllerStateDidUpdate:self];
}

- (void)cameraSnapshotControlDidUpdateMostRecentSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  liveCameraSource = [(HFCameraLiveStreamController *)self liveCameraSource];
  mostRecentSnapshot = [snapshotCopy mostRecentSnapshot];

  if (liveCameraSource == mostRecentSnapshot)
  {
    delegate = [(HFCameraLiveStreamController *)self delegate];
    [delegate streamControllerStateDidUpdate:self];
  }
}

- (void)cameraStreamControl:(id)control didStopStreamWithError:(id)error
{
  [(HFCameraLiveStreamController *)self setInferredStreamState:4, error];
  if ([(HFCameraLiveStreamController *)self startStreamingAfterStop])
  {
    [(HFCameraLiveStreamController *)self setStartStreamingAfterStop:0];

    [(HFCameraLiveStreamController *)self startStreaming];
  }
}

- (NSString)debugDescription
{
  v18 = MEMORY[0x277CCACA8];
  cameraProfile = [(HFCameraLiveStreamController *)self cameraProfile];
  uniqueIdentifier = [cameraProfile uniqueIdentifier];
  cameraProfile2 = [(HFCameraLiveStreamController *)self cameraProfile];
  accessory = [cameraProfile2 accessory];
  name = [accessory name];
  isStreamingEnabled = [(HFCameraLiveStreamController *)self isStreamingEnabled];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HFCameraLiveStreamController streamState](self, "streamState")}];
  streamError = [(HFCameraLiveStreamController *)self streamError];
  isMicrophoneEnabled = [(HFCameraLiveStreamController *)self isMicrophoneEnabled];
  isStreamAudioEnabled = [(HFCameraLiveStreamController *)self isStreamAudioEnabled];
  cameraProfile3 = [(HFCameraLiveStreamController *)self cameraProfile];
  streamControl = [cameraProfile3 streamControl];
  cameraStream = [streamControl cameraStream];
  cameraProfile4 = [(HFCameraLiveStreamController *)self cameraProfile];
  snapshotControl = [cameraProfile4 snapshotControl];
  mostRecentSnapshot = [snapshotControl mostRecentSnapshot];
  v11 = [v18 stringWithFormat:@"\n%@ - profile:%@/%@ StreamingEnabled:%d Stream State:%@ Stream Error:%@ Microphone Enabled:%d Stream Audio Enabled:%d CameraStream:%@ Snapshot:%@", self, uniqueIdentifier, name, isStreamingEnabled, v3, streamError, isMicrophoneEnabled, isStreamAudioEnabled, cameraStream, mostRecentSnapshot];

  return v11;
}

- (void)cameraUserSettingsDidUpdate:(id)update
{
  v11 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  v5 = HFLogForCategory(0x1AuLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 138412546;
    selfCopy = self;
    v9 = 2112;
    v10 = updateCopy;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_INFO, "%@ settings updated:%@", &v7, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (HFCameraLiveStreamControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end