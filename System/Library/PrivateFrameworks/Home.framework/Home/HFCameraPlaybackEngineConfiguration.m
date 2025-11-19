@interface HFCameraPlaybackEngineConfiguration
- (HFCameraClipScrubbing)clipScrubber;
- (HFCameraPlaybackEngineConfiguration)initWithHome:(id)a3 cameraProfile:(id)a4;
- (void)assertConfigurationIsValid;
- (void)assertIsValid:(id)a3 cameraProfile:(id)a4;
@end

@implementation HFCameraPlaybackEngineConfiguration

- (HFCameraPlaybackEngineConfiguration)initWithHome:(id)a3 cameraProfile:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = HFCameraPlaybackEngineConfiguration;
  v9 = [(HFCameraPlaybackEngineConfiguration *)&v14 init];
  v10 = v9;
  if (v9)
  {
    [(HFCameraPlaybackEngineConfiguration *)v9 assertIsValid:v7 cameraProfile:v8];
    objc_storeStrong(&v10->_home, a3);
    objc_storeStrong(&v10->_cameraProfile, a4);
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
    v4 = [(HFCameraPlaybackEngineConfiguration *)self cameraProfile];

    if (!v4)
    {
      v7 = [MEMORY[0x277CCA890] currentHandler];
      [v7 handleFailureInMethod:a2 object:self file:@"HFCameraPlaybackEngineConfiguration.m" lineNumber:36 description:@"Missing camera profile"];
    }

    v5 = [(HFCameraPlaybackEngineConfiguration *)self home];

    if (!v5)
    {
      v8 = [MEMORY[0x277CCA890] currentHandler];
      [v8 handleFailureInMethod:a2 object:self file:@"HFCameraPlaybackEngineConfiguration.m" lineNumber:37 description:@"Missing home"];
    }

    v6 = [(HFCameraPlaybackEngineConfiguration *)self playbackPosition];

    if (!v6)
    {
      v9 = [MEMORY[0x277CCA890] currentHandler];
      [v9 handleFailureInMethod:a2 object:self file:@"HFCameraPlaybackEngineConfiguration.m" lineNumber:38 description:@"Missing playback position"];
    }
  }
}

- (void)assertIsValid:(id)a3 cameraProfile:(id)a4
{
  if (!+[HFUtilities isInternalTest])
  {
    if (a4)
    {
      if (a3)
      {
        return;
      }
    }

    else
    {
      v8 = [MEMORY[0x277CCA890] currentHandler];
      [v8 handleFailureInMethod:a2 object:self file:@"HFCameraPlaybackEngineConfiguration.m" lineNumber:47 description:@"Missing camera profile"];

      if (a3)
      {
        return;
      }
    }

    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"HFCameraPlaybackEngineConfiguration.m" lineNumber:48 description:@"Missing home"];
  }
}

- (HFCameraClipScrubbing)clipScrubber
{
  WeakRetained = objc_loadWeakRetained(&self->_clipScrubber);

  return WeakRetained;
}

@end