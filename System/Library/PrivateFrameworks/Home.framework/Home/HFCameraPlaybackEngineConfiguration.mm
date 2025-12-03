@interface HFCameraPlaybackEngineConfiguration
- (HFCameraClipScrubbing)clipScrubber;
- (HFCameraPlaybackEngineConfiguration)initWithHome:(id)home cameraProfile:(id)profile;
- (void)assertConfigurationIsValid;
- (void)assertIsValid:(id)valid cameraProfile:(id)profile;
@end

@implementation HFCameraPlaybackEngineConfiguration

- (HFCameraPlaybackEngineConfiguration)initWithHome:(id)home cameraProfile:(id)profile
{
  homeCopy = home;
  profileCopy = profile;
  v14.receiver = self;
  v14.super_class = HFCameraPlaybackEngineConfiguration;
  v9 = [(HFCameraPlaybackEngineConfiguration *)&v14 init];
  v10 = v9;
  if (v9)
  {
    [(HFCameraPlaybackEngineConfiguration *)v9 assertIsValid:homeCopy cameraProfile:profileCopy];
    objc_storeStrong(&v10->_home, home);
    objc_storeStrong(&v10->_cameraProfile, profile);
    v11 = +[HFCameraPlaybackPosition livePosition];
    playbackPosition = v10->_playbackPosition;
    v10->_playbackPosition = v11;
  }

  return v10;
}

- (void)assertConfigurationIsValid
{
  if (!+[HFUtilities isInternalTest])
  {
    cameraProfile = [(HFCameraPlaybackEngineConfiguration *)self cameraProfile];

    if (!cameraProfile)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"HFCameraPlaybackEngineConfiguration.m" lineNumber:36 description:@"Missing camera profile"];
    }

    home = [(HFCameraPlaybackEngineConfiguration *)self home];

    if (!home)
    {
      currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"HFCameraPlaybackEngineConfiguration.m" lineNumber:37 description:@"Missing home"];
    }

    playbackPosition = [(HFCameraPlaybackEngineConfiguration *)self playbackPosition];

    if (!playbackPosition)
    {
      currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler3 handleFailureInMethod:a2 object:self file:@"HFCameraPlaybackEngineConfiguration.m" lineNumber:38 description:@"Missing playback position"];
    }
  }
}

- (void)assertIsValid:(id)valid cameraProfile:(id)profile
{
  if (!+[HFUtilities isInternalTest])
  {
    if (profile)
    {
      if (valid)
      {
        return;
      }
    }

    else
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"HFCameraPlaybackEngineConfiguration.m" lineNumber:47 description:@"Missing camera profile"];

      if (valid)
      {
        return;
      }
    }

    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"HFCameraPlaybackEngineConfiguration.m" lineNumber:48 description:@"Missing home"];
  }
}

- (HFCameraClipScrubbing)clipScrubber
{
  WeakRetained = objc_loadWeakRetained(&self->_clipScrubber);

  return WeakRetained;
}

@end