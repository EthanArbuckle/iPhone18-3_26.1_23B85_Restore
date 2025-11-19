@interface HFAudioPlayer
- (BOOL)_configureAudioSession:(id *)a3;
- (BOOL)isPlaying;
- (BOOL)prepareToPlay:(id *)a3;
- (HFAudioPlayer)initWithAudioFileURL:(id)a3 audioSessionOptions:(unint64_t)a4 delegate:(id)a5;
- (HFAudioPlayerDelegate)delegate;
- (double)duration;
- (float)volume;
- (id)_audioSessionCategory;
- (unint64_t)_audioSessionCategoryOptions;
- (void)_cleanup;
- (void)_deactivateAudioSession;
- (void)_deregisterAudioSessionObservers;
- (void)_displayLinkUpdated:(id)a3;
- (void)_pauseWithReason:(id)a3;
- (void)_registerAudioSessionObservers;
- (void)_stopWithoutAudioSessionDeactivation;
- (void)audioPlayerDecodeErrorDidOccur:(id)a3 error:(id)a4;
- (void)audioPlayerDidFinishPlaying:(id)a3 successfully:(BOOL)a4;
- (void)audioSessionDidInterrupt:(id)a3;
- (void)audioSessionMediaServicesWereLost:(id)a3;
- (void)audioSessionMediaServicesWereReset:(id)a3;
- (void)audioSessionRouteChanged:(id)a3;
- (void)dealloc;
- (void)play;
- (void)resume;
- (void)setVolume:(float)a3;
- (void)stop;
- (void)updateAudioFileURL:(id)a3;
@end

@implementation HFAudioPlayer

- (HFAudioPlayer)initWithAudioFileURL:(id)a3 audioSessionOptions:(unint64_t)a4 delegate:(id)a5
{
  v9 = a3;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = HFAudioPlayer;
  v11 = [(HFAudioPlayer *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_delegate, v10);
    objc_storeStrong(&v12->_audioFileURL, a3);
    v12->_playerStopSource = 0;
    v13 = 2;
    if ((a4 & 1) == 0)
    {
      v13 = a4;
    }

    v12->_audioSessionOptions = v13;
  }

  return v12;
}

- (void)updateAudioFileURL:(id)a3
{
  v4 = a3;
  if ([(HFAudioPlayer *)self isPlaying])
  {
    [(HFAudioPlayer *)self _stopWithoutAudioSessionDeactivation];
  }

  audioFileURL = self->_audioFileURL;
  self->_audioFileURL = v4;
}

- (void)dealloc
{
  [(HFAudioPlayer *)self _cleanup];
  v3.receiver = self;
  v3.super_class = HFAudioPlayer;
  [(HFAudioPlayer *)&v3 dealloc];
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

- (void)_displayLinkUpdated:(id)a3
{
  v4 = [(HFAudioPlayer *)self audioPlayer];
  [v4 currentTime];
  [(HFAudioPlayer *)self setPlayerCurrentTime:?];

  v5 = [(HFAudioPlayer *)self audioPlayer];
  v6 = [v5 isPlaying];

  if (!v6)
  {
    return;
  }

  v7 = [(HFAudioPlayer *)self delegate];
  if (v7)
  {
    v8 = v7;
    v9 = [(HFAudioPlayer *)self delegate];
    if (([v9 conformsToProtocol:&unk_2825BAE00] & 1) == 0)
    {

      goto LABEL_7;
    }

    v10 = [(HFAudioPlayer *)self delegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v8 = [(HFAudioPlayer *)self delegate];
      [(HFAudioPlayer *)self playerCurrentTime];
      [v8 audioPlayer:self didUpdatePlaybackTime:?];
LABEL_7:
    }
  }

  v12 = [(HFAudioPlayer *)self delegate];
  if (!v12)
  {
    return;
  }

  v17 = v12;
  v13 = [(HFAudioPlayer *)self delegate];
  if ([v13 conformsToProtocol:&unk_2825BAE00])
  {
    v14 = [(HFAudioPlayer *)self delegate];
    v15 = objc_opt_respondsToSelector();

    if ((v15 & 1) == 0)
    {
      return;
    }

    v17 = [(HFAudioPlayer *)self delegate];
    v13 = [(HFAudioPlayer *)self audioPlayer];
    [v13 averagePowerForChannel:0];
    [v17 audioPlayer:self didUpdateAveragePower:v16];
  }
}

- (BOOL)_configureAudioSession:(id *)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CB83F8] sharedInstance];
  [(HFAudioPlayer *)self setAudioSession:v5];

  v6 = [(HFAudioPlayer *)self _audioSessionCategory];
  v7 = [(HFAudioPlayer *)self _audioSessionCategoryOptions];
  v8 = HFLogForCategory(0xAuLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7];
    *buf = 138412546;
    v28 = v6;
    v29 = 2112;
    v30 = v24;
    _os_log_error_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_ERROR, "Now setting audioSession Category = [%@] with Category Option = [%@]", buf, 0x16u);
  }

  v9 = [(HFAudioPlayer *)self audioSession];
  v10 = *MEMORY[0x277CB80E8];
  v26 = 0;
  v11 = [v9 setCategory:v6 mode:v10 options:v7 error:&v26];
  v12 = v26;

  if (v11)
  {

    v13 = [(HFAudioPlayer *)self audioSession];
    v25 = 0;
    v14 = [v13 setActivationContext:MEMORY[0x277CBEC10] error:&v25];
    v12 = v25;

    v15 = HFLogForCategory(0xAuLL);
    v16 = v15;
    if (v14)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [(HFAudioPlayer *)self audioSession];
        v18 = [v17 outputDataSources];
        *buf = 138412290;
        v28 = v18;
        _os_log_impl(&dword_20D9BF000, v16, OS_LOG_TYPE_DEFAULT, "Successfully configured Audio session with outputDataSources [%@]", buf, 0xCu);
      }

      v19 = 1;
    }

    else
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v28 = v12;
        _os_log_error_impl(&dword_20D9BF000, v16, OS_LOG_TYPE_ERROR, "Error setting activation context [%@]", buf, 0xCu);
      }

      v21 = v12;
      v19 = 0;
      *a3 = v12;
    }
  }

  else
  {
    v20 = HFLogForCategory(0xAuLL);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v28 = v12;
      _os_log_error_impl(&dword_20D9BF000, v20, OS_LOG_TYPE_ERROR, "Error setting Default Audio Session Category [%@]", buf, 0xCu);
    }

    v19 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v19;
}

- (void)_deactivateAudioSession
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [(HFAudioPlayer *)self audioSession];
  v10 = 0;
  v4 = [v3 setActive:0 withOptions:1 error:&v10];
  v5 = v10;

  if ((v4 & 1) == 0)
  {
    v6 = HFLogForCategory(0xAuLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = v5;
      _os_log_error_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_ERROR, "Error deactivating audio session [%@]", buf, 0xCu);
    }
  }

  v7 = [(HFAudioPlayer *)self audioSession];
  v9 = 0;
  [v7 setActivationContext:MEMORY[0x277CBEC10] error:&v9];

  [(HFAudioPlayer *)self setAudioSessionIsActive:0];
  v8 = *MEMORY[0x277D85DE8];
}

- (id)_audioSessionCategory
{
  v3 = [(HFAudioPlayer *)self audioSessionOptions];
  v4 = [(HFAudioPlayer *)self audioSessionOptions];
  if ((v3 & 8) != 0)
  {
    v5 = MEMORY[0x277CB8020];
  }

  else
  {
    v5 = MEMORY[0x277CB8028];
    if ((v4 & 2) == 0)
    {
      v5 = MEMORY[0x277CB8030];
    }
  }

  v6 = *v5;

  return v6;
}

- (unint64_t)_audioSessionCategoryOptions
{
  if (([(HFAudioPlayer *)self audioSessionOptions]& 8) != 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = (([(HFAudioPlayer *)self audioSessionOptions]<< 62) >> 63) & 0x2C;
  }

  return ([(HFAudioPlayer *)self audioSessionOptions]>> 3) & 2 | v3;
}

- (void)_pauseWithReason:(id)a3
{
  v12 = a3;
  v4 = [(HFAudioPlayer *)self audioPlayer];
  [v4 pause];

  v5 = [(HFAudioPlayer *)self audioPlayer];
  [v5 currentTime];
  [(HFAudioPlayer *)self setPlayerCurrentTime:?];

  v6 = [(HFAudioPlayer *)self displayLink];
  [v6 setPaused:1];

  self->_paused = 1;
  v7 = [(HFAudioPlayer *)self delegate];
  if (v7)
  {
    v8 = v7;
    v9 = [(HFAudioPlayer *)self delegate];
    if ([v9 conformsToProtocol:&unk_2825BAE00])
    {
      v10 = [(HFAudioPlayer *)self delegate];
      v11 = objc_opt_respondsToSelector();

      if ((v11 & 1) == 0)
      {
        goto LABEL_7;
      }

      v8 = [(HFAudioPlayer *)self delegate];
      [v8 audioPlayer:self didPausePlaybackWithReason:v12];
    }

    else
    {
    }
  }

LABEL_7:
}

- (void)_stopWithoutAudioSessionDeactivation
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = HFLogForCategory(0xAuLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(HFAudioPlayer *)self audioFileURL];
    v14 = 138412290;
    v15 = v4;
    _os_log_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_DEFAULT, "Stopping Audio Player for URL = [%@]", &v14, 0xCu);
  }

  v5 = [(HFAudioPlayer *)self audioPlayer];
  [v5 pause];

  v6 = [(HFAudioPlayer *)self audioPlayer];
  [v6 stop];

  v7 = [(HFAudioPlayer *)self audioPlayer];
  [v7 setCurrentTime:0.0];

  self->_paused = 0;
  v8 = [(HFAudioPlayer *)self delegate];
  if (v8)
  {
    v9 = v8;
    v10 = [(HFAudioPlayer *)self delegate];
    if (([v10 conformsToProtocol:&unk_2825BAE00] & 1) == 0)
    {

      goto LABEL_8;
    }

    v11 = [(HFAudioPlayer *)self delegate];
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      v9 = [(HFAudioPlayer *)self delegate];
      [v9 audioPlayerDidStopPlayback:self];
LABEL_8:
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_cleanup
{
  v3 = [(HFAudioPlayer *)self audioPlayer];
  v4 = [v3 isPlaying];

  if (v4)
  {
    v5 = [(HFAudioPlayer *)self audioPlayer];
    [v5 stop];
  }

  [(CADisplayLink *)self->_displayLink invalidate];
  [(HFAudioPlayer *)self _deregisterAudioSessionObservers];
  [(HFAudioPlayer *)self _deactivateAudioSession];
  audioPlayer = self->_audioPlayer;
  self->_audioPlayer = 0;

  audioSession = self->_audioSession;
  self->_audioSession = 0;

  displayLink = self->_displayLink;
  self->_displayLink = 0;

  self->_paused = 0;
}

- (BOOL)prepareToPlay:(id *)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc(MEMORY[0x277CB83D0]);
  v6 = [(HFAudioPlayer *)self audioFileURL];
  v27 = 0;
  v7 = [v5 initWithContentsOfURL:v6 error:&v27];
  v8 = v27;
  [(HFAudioPlayer *)self setAudioPlayer:v7];

  v9 = [(HFAudioPlayer *)self audioPlayer];
  [v9 setMeteringEnabled:1];

  v10 = [(HFAudioPlayer *)self audioPlayer];
  [v10 setDelegate:self];

  if (v8)
  {
    v11 = HFLogForCategory(0xAuLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v29 = v8;
      _os_log_error_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_ERROR, "Error initializing AVAudioPlayer [%@]", buf, 0xCu);
    }

    v12 = v8;
    v13 = 0;
    *a3 = v8;
  }

  else if ([(HFAudioPlayer *)self isAudioSessionActive])
  {
    v14 = HFLogForCategory(0xAuLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [(HFAudioPlayer *)self audioFileURL];
      *buf = 138412290;
      v29 = v15;
      _os_log_impl(&dword_20D9BF000, v14, OS_LOG_TYPE_DEFAULT, "Audio Session is already active continuining with AVAudioPlayer configured for URL [%@]", buf, 0xCu);
    }

    v8 = 0;
    v13 = 1;
  }

  else
  {
    v26 = 0;
    v16 = [(HFAudioPlayer *)self _configureAudioSession:&v26];
    v17 = v26;
    v18 = v17;
    if (v16)
    {
      v19 = [(HFAudioPlayer *)self audioSession];
      v25 = v18;
      v20 = [v19 setActive:1 error:&v25];
      v8 = v25;

      if (v20)
      {
        v13 = 1;
        [(HFAudioPlayer *)self setAudioSessionIsActive:1];
        v21 = [(HFAudioPlayer *)self audioPlayer];
        [v21 prepareToPlay];

        [(HFAudioPlayer *)self _registerAudioSessionObservers];
      }

      else
      {
        v22 = HFLogForCategory(0xAuLL);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v29 = v8;
          _os_log_error_impl(&dword_20D9BF000, v22, OS_LOG_TYPE_ERROR, "Failed activating audio session [%@]", buf, 0xCu);
        }

        [(HFAudioPlayer *)self setAudioSessionIsActive:0];
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
      v8 = v17;
    }
  }

  v23 = *MEMORY[0x277D85DE8];
  return v13;
}

- (void)play
{
  v3 = [(HFAudioPlayer *)self displayLink];

  if (v3)
  {
    v4 = [(HFAudioPlayer *)self displayLink];
    [v4 invalidate];
  }

  v5 = [MEMORY[0x277CD9E48] displayLinkWithTarget:self selector:sel__displayLinkUpdated_];
  [(HFAudioPlayer *)self setDisplayLink:v5];

  v6 = [(HFAudioPlayer *)self displayLink];
  [v6 setPreferredFramesPerSecond:60];

  v7 = [(HFAudioPlayer *)self displayLink];
  v8 = [MEMORY[0x277CBEB88] mainRunLoop];
  [v7 addToRunLoop:v8 forMode:*MEMORY[0x277CBE738]];

  v9 = [(HFAudioPlayer *)self audioPlayer];
  [v9 play];
}

- (void)resume
{
  v3 = [(HFAudioPlayer *)self audioPlayer];
  [v3 play];

  v4 = [(HFAudioPlayer *)self audioPlayer];
  [(HFAudioPlayer *)self playerCurrentTime];
  v6 = v5;
  [(HFAudioPlayer *)self playerCurrentTime];
  if (v6 >= 0.02)
  {
    v7 = v7 + -0.02;
  }

  [v4 setCurrentTime:v7];

  v8 = [(HFAudioPlayer *)self displayLink];
  [v8 setPaused:0];

  self->_paused = 0;
  v9 = [(HFAudioPlayer *)self delegate];
  if (v9)
  {
    v13 = v9;
    v10 = [(HFAudioPlayer *)self delegate];
    if ([v10 conformsToProtocol:&unk_2825BAE00])
    {
      v11 = [(HFAudioPlayer *)self delegate];
      v12 = objc_opt_respondsToSelector();

      if ((v12 & 1) == 0)
      {
        return;
      }

      v13 = [(HFAudioPlayer *)self delegate];
      [v13 audioPlayerDidResumePlayback:self];
    }

    else
    {
    }
  }
}

- (void)stop
{
  [(HFAudioPlayer *)self _stopWithoutAudioSessionDeactivation];

  [(HFAudioPlayer *)self _cleanup];
}

- (BOOL)isPlaying
{
  v2 = [(HFAudioPlayer *)self audioPlayer];
  v3 = [v2 isPlaying];

  return v3;
}

- (double)duration
{
  v2 = [(HFAudioPlayer *)self audioPlayer];
  [v2 duration];
  v4 = v3;

  return v4;
}

- (void)setVolume:(float)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = HFLogForCategory(0xAuLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134217984;
    v10 = a3;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "Setting player volume to [%f]", &v9, 0xCu);
  }

  v6 = [(HFAudioPlayer *)self audioPlayer];
  *&v7 = a3;
  [v6 setVolume:v7];

  v8 = *MEMORY[0x277D85DE8];
}

- (float)volume
{
  v2 = [(HFAudioPlayer *)self audioPlayer];
  [v2 volume];
  v4 = v3;

  return v4;
}

- (void)audioSessionDidInterrupt:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HFLogForCategory(0xAuLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "Audio Session was interrupted [%@]", &v7, 0xCu);
  }

  [(HFAudioPlayer *)self setPlayerStopSource:2];
  [(HFAudioPlayer *)self _pauseWithReason:@"Audio Session Interrupted"];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)audioSessionMediaServicesWereLost:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HFLogForCategory(0xAuLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "Media Services Were Lost [%@]", &v7, 0xCu);
  }

  [(HFAudioPlayer *)self setPlayerStopSource:3];
  [(HFAudioPlayer *)self _pauseWithReason:@"Audio Session Lost"];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)audioSessionMediaServicesWereReset:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HFLogForCategory(0xAuLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "Media Services Were Reset [%@]", &v7, 0xCu);
  }

  [(HFAudioPlayer *)self setPlayerStopSource:3];
  [(HFAudioPlayer *)self _pauseWithReason:@"Audio Session Reset"];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)audioSessionRouteChanged:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HFLogForCategory(0xAuLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = v4;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "Audio Session Route Changed [%@]", &v12, 0xCu);
  }

  if ([(HFAudioPlayer *)self isAudioSessionActive])
  {
    v6 = [v4 userInfo];
    v7 = [v6 objectForKey:*MEMORY[0x277CB8220]];
    v8 = [v7 unsignedIntegerValue];

    if ((v8 - 1) <= 1)
    {
      v9 = HFLogForCategory(0xAuLL);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v8];
        v12 = 138412290;
        v13 = v10;
        _os_log_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_DEFAULT, "Routes Changed for reason [%@]", &v12, 0xCu);
      }

      [(HFAudioPlayer *)self setPlayerStopSource:4];
      [(HFAudioPlayer *)self _pauseWithReason:@"Audio Routes Changed"];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)audioPlayerDidFinishPlaying:(id)a3 successfully:(BOOL)a4
{
  v4 = a4;
  v6 = [(HFAudioPlayer *)self displayLink];
  [v6 invalidate];

  [(HFAudioPlayer *)self setPlayerCurrentTime:0.0];
  v7 = [(HFAudioPlayer *)self delegate];
  if (v7)
  {
    v13 = v7;
    v8 = [(HFAudioPlayer *)self delegate];
    if ([v8 conformsToProtocol:&unk_2825BAE00])
    {
      v9 = [(HFAudioPlayer *)self delegate];
      v10 = objc_opt_respondsToSelector();

      if ((v10 & 1) == 0)
      {
        return;
      }

      v11 = [(HFAudioPlayer *)self delegate];
      v13 = v11;
      if (v4)
      {
        [v11 audioPlayerDidFinishPlayback:self withError:0];
      }

      else
      {
        v12 = [MEMORY[0x277CCA9B8] hf_errorWithCode:60];
        [v13 audioPlayerDidFinishPlayback:self withError:v12];
      }
    }

    else
    {
    }
  }
}

- (void)audioPlayerDecodeErrorDidOccur:(id)a3 error:(id)a4
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = HFLogForCategory(0xAuLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412290;
    v9 = v5;
    _os_log_error_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_ERROR, "Audio Player Decode Error [%@]", &v8, 0xCu);
  }

  [(HFAudioPlayer *)self _cleanup];
  v7 = *MEMORY[0x277D85DE8];
}

- (HFAudioPlayerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end