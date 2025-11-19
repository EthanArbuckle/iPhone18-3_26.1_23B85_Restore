@interface HFCameraLiveStreamController
- (BOOL)isStreamingEnabled;
- (HFCameraLiveStreamController)init;
- (HFCameraLiveStreamController)initWithHome:(id)a3 cameraProfile:(id)a4;
- (HFCameraLiveStreamControllerDelegate)delegate;
- (HMCameraSource)liveCameraSource;
- (NSError)streamError;
- (NSString)debugDescription;
- (id)activeStream;
- (id)mostRecentSnapshot;
- (unint64_t)_derivedAudioStreamSetting;
- (unint64_t)streamState;
- (void)_updateAudioManagerState;
- (void)cameraSnapshotControlDidUpdateMostRecentSnapshot:(id)a3;
- (void)cameraStreamControl:(id)a3 didStopStreamWithError:(id)a4;
- (void)cameraStreamControlDidUpdateManagerState:(id)a3;
- (void)cameraStreamControlDidUpdateStreamState:(id)a3;
- (void)cameraUserSettingsDidUpdate:(id)a3;
- (void)dealloc;
- (void)setMicrophoneEnabled:(BOOL)a3;
- (void)setStreamAudioEnabled:(BOOL)a3;
- (void)setStreamAudioVolume:(float)a3;
- (void)startStreaming;
- (void)stopStreaming;
@end

@implementation HFCameraLiveStreamController

- (HFCameraLiveStreamController)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithHome_cameraProfile_);
  [v4 handleFailureInMethod:a2 object:self file:@"HFCameraLiveStreamController.m" lineNumber:37 description:{@"%s is unavailable; use %@ instead", "-[HFCameraLiveStreamController init]", v5}];

  return 0;
}

- (HFCameraLiveStreamController)initWithHome:(id)a3 cameraProfile:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = HFCameraLiveStreamController;
  v9 = [(HFCameraLiveStreamController *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_home, a3);
    objc_storeStrong(&v10->_cameraProfile, a4);
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
      v4 = [(HFCameraLiveStreamController *)self cameraProfile];
      v5 = [v4 accessory];
      v6 = [v5 name];
      *buf = 138412546;
      v10 = self;
      v11 = 2112;
      v12 = v6;
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
  v2 = [(HFCameraLiveStreamController *)self cameraProfile];
  v3 = [v2 streamControl];
  v4 = [v3 streamState];

  return v4;
}

- (HMCameraSource)liveCameraSource
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = [(HFCameraLiveStreamController *)self streamState];
  v4 = HFLogForCategory(0x18uLL);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3 == 2)
  {
    if (v5)
    {
      v6 = [(HFCameraLiveStreamController *)self cameraProfile];
      v7 = [v6 uniqueIdentifier];
      v8 = [(HFCameraLiveStreamController *)self cameraProfile];
      v9 = [v8 accessory];
      v10 = [v9 name];
      v19 = 138412802;
      v20 = self;
      v21 = 2112;
      v22 = v7;
      v23 = 2112;
      v24 = v10;
      _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "%@ Displaying stream control for profile:%@/%@", &v19, 0x20u);
    }

    v11 = [(HFCameraLiveStreamController *)self activeStream];
  }

  else
  {
    if (v5)
    {
      v12 = [(HFCameraLiveStreamController *)self cameraProfile];
      v13 = [v12 uniqueIdentifier];
      v14 = [(HFCameraLiveStreamController *)self cameraProfile];
      v15 = [v14 accessory];
      v16 = [v15 name];
      v19 = 138412802;
      v20 = self;
      v21 = 2112;
      v22 = v13;
      v23 = 2112;
      v24 = v16;
      _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "%@ Displaying liveCameraSource snapshot for profile:%@/%@", &v19, 0x20u);
    }

    v11 = [(HFCameraLiveStreamController *)self mostRecentSnapshot];
  }

  v17 = *MEMORY[0x277D85DE8];

  return v11;
}

- (NSError)streamError
{
  v2 = [(HFCameraLiveStreamController *)self cameraProfile];
  v3 = [v2 hf_cameraManager];
  v4 = [v3 cachedStreamError];

  return v4;
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
    v4 = [(HFCameraLiveStreamController *)self cameraProfile];
    v3 = [v4 hf_cameraManager];
    [v3 beginContinuousStreamingWithRequester:self];
  }
}

- (void)stopStreaming
{
  if ([(HFCameraLiveStreamController *)self inferredStreamState]!= 4)
  {
    [(HFCameraLiveStreamController *)self setInferredStreamState:3];
  }

  [(HFCameraLiveStreamController *)self setStartStreamingAfterStop:0];
  v4 = [(HFCameraLiveStreamController *)self cameraProfile];
  v3 = [v4 hf_cameraManager];
  [v3 endContinuousStreamingWithRequester:self];
}

- (BOOL)isStreamingEnabled
{
  v2 = [(HFCameraLiveStreamController *)self cameraProfile];
  v3 = [v2 hf_cameraManager];
  v4 = [v3 isContinuousStreamingEnabled];

  return v4;
}

- (void)setStreamAudioEnabled:(BOOL)a3
{
  v11 = *MEMORY[0x277D85DE8];
  if (self->_streamAudioEnabled != a3)
  {
    v3 = a3;
    self->_streamAudioEnabled = a3;
    v5 = HFLogForCategory(0x1CuLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412546;
      v8 = self;
      v9 = 1024;
      v10 = v3;
      _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "%@ Updating stream audio state to %d", &v7, 0x12u);
    }

    [(HFCameraLiveStreamController *)self _updateAudioManagerState];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)setMicrophoneEnabled:(BOOL)a3
{
  v11 = *MEMORY[0x277D85DE8];
  if (self->_microphoneEnabled != a3)
  {
    v3 = a3;
    self->_microphoneEnabled = a3;
    v5 = HFLogForCategory(0x1CuLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412546;
      v8 = self;
      v9 = 1024;
      v10 = v3;
      _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "%@ Updating microphone state to %d", &v7, 0x12u);
    }

    [(HFCameraLiveStreamController *)self _updateAudioManagerState];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)setStreamAudioVolume:(float)a3
{
  v11 = *MEMORY[0x277D85DE8];
  if (self->_streamAudioVolume != a3)
  {
    self->_streamAudioVolume = a3;
    v5 = HFLogForCategory(0x1CuLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412546;
      v8 = self;
      v9 = 2048;
      v10 = a3;
      _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "%@ Updating stream audio volume to %f", &v7, 0x16u);
    }

    [(HFCameraLiveStreamController *)self _updateAudioManagerState];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (id)activeStream
{
  v2 = [(HFCameraLiveStreamController *)self cameraProfile];
  v3 = [v2 streamControl];
  v4 = [v3 cameraStream];

  return v4;
}

- (id)mostRecentSnapshot
{
  v2 = [(HFCameraLiveStreamController *)self cameraProfile];
  v3 = [v2 snapshotControl];
  v4 = [v3 mostRecentSnapshot];

  return v4;
}

- (void)_updateAudioManagerState
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = [(HFCameraLiveStreamController *)self activeStream];

  if (v3)
  {
    v4 = [(HFCameraLiveStreamController *)self audioManager];

    if (!v4)
    {
      v5 = [HFCameraAudioManager alloc];
      v6 = [(HFCameraLiveStreamController *)self cameraProfile];
      v7 = [(HFCameraLiveStreamController *)self activeStream];
      v8 = [(HFCameraLiveStreamController *)self home];
      v9 = [v8 hf_characteristicValueManager];
      v10 = [(HFCameraAudioManager *)v5 initWithCameraProfile:v6 cameraStream:v7 valueManager:v9];
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
    v13 = [(HFCameraLiveStreamController *)self isStreamAudioEnabled];
    v14 = [(HFCameraLiveStreamController *)self isMicrophoneEnabled];
    [(HFCameraLiveStreamController *)self streamAudioVolume];
    v33 = 138413314;
    v34 = self;
    v35 = 2112;
    v36 = v12;
    v37 = 1024;
    v38 = v13;
    v39 = 1024;
    v40 = v14;
    v41 = 2048;
    v42 = v15;
    _os_log_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_DEFAULT, "%@ Updating audio manager state with manager: %@, stream audio enabled: %d, microphone enabled: %d, stream audio volume: %f", &v33, 0x2Cu);
  }

  v16 = [(HFCameraLiveStreamController *)self audioManager];

  if (v16)
  {
    v17 = [(HFCameraLiveStreamController *)self _derivedAudioStreamSetting];
    v18 = [(HFCameraLiveStreamController *)self audioManager];
    v19 = [v18 audioStreamSetting];

    if (v17 != v19)
    {
      v20 = [(HFCameraLiveStreamController *)self audioManager];
      v21 = [v20 updateAudioStreamSetting:{-[HFCameraLiveStreamController _derivedAudioStreamSetting](self, "_derivedAudioStreamSetting")}];
    }

    [(HFCameraLiveStreamController *)self streamAudioVolume];
    v23 = v22;
    v24 = [(HFCameraLiveStreamController *)self audioManager];
    [v24 incomingAudioVolume];
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
          v34 = self;
          v35 = 2048;
          v36 = v28;
          _os_log_impl(&dword_20D9BF000, v27, OS_LOG_TYPE_DEFAULT, "%@ Performing volume update to %.02f on Mac", &v33, 0x16u);
        }

        v29 = [(HFCameraLiveStreamController *)self audioManager];
        [(HFCameraLiveStreamController *)self streamAudioVolume];
        v30 = [v29 setIncomingAudioVolume:?];
      }

      else
      {
        v29 = [(HFCameraLiveStreamController *)self audioManager];
        [v29 incomingAudioVolume];
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

- (void)cameraStreamControlDidUpdateStreamState:(id)a3
{
  [(HFCameraLiveStreamController *)self _updateAudioManagerState];
  v4 = [(HFCameraLiveStreamController *)self delegate];
  [v4 streamControllerStateDidUpdate:self];
}

- (void)cameraStreamControlDidUpdateManagerState:(id)a3
{
  v4 = [(HFCameraLiveStreamController *)self delegate];
  [v4 streamControllerStateDidUpdate:self];
}

- (void)cameraSnapshotControlDidUpdateMostRecentSnapshot:(id)a3
{
  v4 = a3;
  v5 = [(HFCameraLiveStreamController *)self liveCameraSource];
  v6 = [v4 mostRecentSnapshot];

  if (v5 == v6)
  {
    v7 = [(HFCameraLiveStreamController *)self delegate];
    [v7 streamControllerStateDidUpdate:self];
  }
}

- (void)cameraStreamControl:(id)a3 didStopStreamWithError:(id)a4
{
  [(HFCameraLiveStreamController *)self setInferredStreamState:4, a4];
  if ([(HFCameraLiveStreamController *)self startStreamingAfterStop])
  {
    [(HFCameraLiveStreamController *)self setStartStreamingAfterStop:0];

    [(HFCameraLiveStreamController *)self startStreaming];
  }
}

- (NSString)debugDescription
{
  v18 = MEMORY[0x277CCACA8];
  v21 = [(HFCameraLiveStreamController *)self cameraProfile];
  v17 = [v21 uniqueIdentifier];
  v20 = [(HFCameraLiveStreamController *)self cameraProfile];
  v19 = [v20 accessory];
  v16 = [v19 name];
  v15 = [(HFCameraLiveStreamController *)self isStreamingEnabled];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HFCameraLiveStreamController streamState](self, "streamState")}];
  v13 = [(HFCameraLiveStreamController *)self streamError];
  v14 = [(HFCameraLiveStreamController *)self isMicrophoneEnabled];
  v4 = [(HFCameraLiveStreamController *)self isStreamAudioEnabled];
  v5 = [(HFCameraLiveStreamController *)self cameraProfile];
  v6 = [v5 streamControl];
  v7 = [v6 cameraStream];
  v8 = [(HFCameraLiveStreamController *)self cameraProfile];
  v9 = [v8 snapshotControl];
  v10 = [v9 mostRecentSnapshot];
  v11 = [v18 stringWithFormat:@"\n%@ - profile:%@/%@ StreamingEnabled:%d Stream State:%@ Stream Error:%@ Microphone Enabled:%d Stream Audio Enabled:%d CameraStream:%@ Snapshot:%@", self, v17, v16, v15, v3, v13, v14, v4, v7, v10];

  return v11;
}

- (void)cameraUserSettingsDidUpdate:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HFLogForCategory(0x1AuLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 138412546;
    v8 = self;
    v9 = 2112;
    v10 = v4;
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