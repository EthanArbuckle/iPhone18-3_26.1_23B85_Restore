@interface HFAudioPlayer
- (BOOL)_configureAudioSession:(id *)session;
- (BOOL)isPlaying;
- (BOOL)prepareToPlay:(id *)play;
- (HFAudioPlayer)initWithAudioFileURL:(id)l audioSessionOptions:(unint64_t)options delegate:(id)delegate;
- (HFAudioPlayerDelegate)delegate;
- (double)duration;
- (float)volume;
- (id)_audioSessionCategory;
- (unint64_t)_audioSessionCategoryOptions;
- (void)_cleanup;
- (void)_deactivateAudioSession;
- (void)_deregisterAudioSessionObservers;
- (void)_displayLinkUpdated:(id)updated;
- (void)_pauseWithReason:(id)reason;
- (void)_registerAudioSessionObservers;
- (void)_stopWithoutAudioSessionDeactivation;
- (void)audioPlayerDecodeErrorDidOccur:(id)occur error:(id)error;
- (void)audioPlayerDidFinishPlaying:(id)playing successfully:(BOOL)successfully;
- (void)audioSessionDidInterrupt:(id)interrupt;
- (void)audioSessionMediaServicesWereLost:(id)lost;
- (void)audioSessionMediaServicesWereReset:(id)reset;
- (void)audioSessionRouteChanged:(id)changed;
- (void)dealloc;
- (void)play;
- (void)resume;
- (void)setVolume:(float)volume;
- (void)stop;
- (void)updateAudioFileURL:(id)l;
@end

@implementation HFAudioPlayer

- (HFAudioPlayer)initWithAudioFileURL:(id)l audioSessionOptions:(unint64_t)options delegate:(id)delegate
{
  lCopy = l;
  delegateCopy = delegate;
  v15.receiver = self;
  v15.super_class = HFAudioPlayer;
  v11 = [(HFAudioPlayer *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_delegate, delegateCopy);
    objc_storeStrong(&v12->_audioFileURL, l);
    v12->_playerStopSource = 0;
    optionsCopy = 2;
    if ((options & 1) == 0)
    {
      optionsCopy = options;
    }

    v12->_audioSessionOptions = optionsCopy;
  }

  return v12;
}

- (void)updateAudioFileURL:(id)l
{
  lCopy = l;
  if ([(HFAudioPlayer *)self isPlaying])
  {
    [(HFAudioPlayer *)self _stopWithoutAudioSessionDeactivation];
  }

  audioFileURL = self->_audioFileURL;
  self->_audioFileURL = lCopy;
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

- (void)_displayLinkUpdated:(id)updated
{
  audioPlayer = [(HFAudioPlayer *)self audioPlayer];
  [audioPlayer currentTime];
  [(HFAudioPlayer *)self setPlayerCurrentTime:?];

  audioPlayer2 = [(HFAudioPlayer *)self audioPlayer];
  isPlaying = [audioPlayer2 isPlaying];

  if (!isPlaying)
  {
    return;
  }

  delegate = [(HFAudioPlayer *)self delegate];
  if (delegate)
  {
    delegate4 = delegate;
    delegate2 = [(HFAudioPlayer *)self delegate];
    if (([delegate2 conformsToProtocol:&unk_2825BAE00] & 1) == 0)
    {

      goto LABEL_7;
    }

    delegate3 = [(HFAudioPlayer *)self delegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      delegate4 = [(HFAudioPlayer *)self delegate];
      [(HFAudioPlayer *)self playerCurrentTime];
      [delegate4 audioPlayer:self didUpdatePlaybackTime:?];
LABEL_7:
    }
  }

  delegate5 = [(HFAudioPlayer *)self delegate];
  if (!delegate5)
  {
    return;
  }

  delegate8 = delegate5;
  delegate6 = [(HFAudioPlayer *)self delegate];
  if ([delegate6 conformsToProtocol:&unk_2825BAE00])
  {
    delegate7 = [(HFAudioPlayer *)self delegate];
    v15 = objc_opt_respondsToSelector();

    if ((v15 & 1) == 0)
    {
      return;
    }

    delegate8 = [(HFAudioPlayer *)self delegate];
    delegate6 = [(HFAudioPlayer *)self audioPlayer];
    [delegate6 averagePowerForChannel:0];
    [delegate8 audioPlayer:self didUpdateAveragePower:v16];
  }
}

- (BOOL)_configureAudioSession:(id *)session
{
  v31 = *MEMORY[0x277D85DE8];
  mEMORY[0x277CB83F8] = [MEMORY[0x277CB83F8] sharedInstance];
  [(HFAudioPlayer *)self setAudioSession:mEMORY[0x277CB83F8]];

  _audioSessionCategory = [(HFAudioPlayer *)self _audioSessionCategory];
  _audioSessionCategoryOptions = [(HFAudioPlayer *)self _audioSessionCategoryOptions];
  v8 = HFLogForCategory(0xAuLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:_audioSessionCategoryOptions];
    *buf = 138412546;
    v28 = _audioSessionCategory;
    v29 = 2112;
    v30 = v24;
    _os_log_error_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_ERROR, "Now setting audioSession Category = [%@] with Category Option = [%@]", buf, 0x16u);
  }

  audioSession = [(HFAudioPlayer *)self audioSession];
  v10 = *MEMORY[0x277CB80E8];
  v26 = 0;
  v11 = [audioSession setCategory:_audioSessionCategory mode:v10 options:_audioSessionCategoryOptions error:&v26];
  v12 = v26;

  if (v11)
  {

    audioSession2 = [(HFAudioPlayer *)self audioSession];
    v25 = 0;
    v14 = [audioSession2 setActivationContext:MEMORY[0x277CBEC10] error:&v25];
    v12 = v25;

    v15 = HFLogForCategory(0xAuLL);
    v16 = v15;
    if (v14)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        audioSession3 = [(HFAudioPlayer *)self audioSession];
        outputDataSources = [audioSession3 outputDataSources];
        *buf = 138412290;
        v28 = outputDataSources;
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
      *session = v12;
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
  audioSession = [(HFAudioPlayer *)self audioSession];
  v10 = 0;
  v4 = [audioSession setActive:0 withOptions:1 error:&v10];
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

  audioSession2 = [(HFAudioPlayer *)self audioSession];
  v9 = 0;
  [audioSession2 setActivationContext:MEMORY[0x277CBEC10] error:&v9];

  [(HFAudioPlayer *)self setAudioSessionIsActive:0];
  v8 = *MEMORY[0x277D85DE8];
}

- (id)_audioSessionCategory
{
  audioSessionOptions = [(HFAudioPlayer *)self audioSessionOptions];
  audioSessionOptions2 = [(HFAudioPlayer *)self audioSessionOptions];
  if ((audioSessionOptions & 8) != 0)
  {
    v5 = MEMORY[0x277CB8020];
  }

  else
  {
    v5 = MEMORY[0x277CB8028];
    if ((audioSessionOptions2 & 2) == 0)
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

- (void)_pauseWithReason:(id)reason
{
  reasonCopy = reason;
  audioPlayer = [(HFAudioPlayer *)self audioPlayer];
  [audioPlayer pause];

  audioPlayer2 = [(HFAudioPlayer *)self audioPlayer];
  [audioPlayer2 currentTime];
  [(HFAudioPlayer *)self setPlayerCurrentTime:?];

  displayLink = [(HFAudioPlayer *)self displayLink];
  [displayLink setPaused:1];

  self->_paused = 1;
  delegate = [(HFAudioPlayer *)self delegate];
  if (delegate)
  {
    delegate4 = delegate;
    delegate2 = [(HFAudioPlayer *)self delegate];
    if ([delegate2 conformsToProtocol:&unk_2825BAE00])
    {
      delegate3 = [(HFAudioPlayer *)self delegate];
      v11 = objc_opt_respondsToSelector();

      if ((v11 & 1) == 0)
      {
        goto LABEL_7;
      }

      delegate4 = [(HFAudioPlayer *)self delegate];
      [delegate4 audioPlayer:self didPausePlaybackWithReason:reasonCopy];
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
    audioFileURL = [(HFAudioPlayer *)self audioFileURL];
    v14 = 138412290;
    v15 = audioFileURL;
    _os_log_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_DEFAULT, "Stopping Audio Player for URL = [%@]", &v14, 0xCu);
  }

  audioPlayer = [(HFAudioPlayer *)self audioPlayer];
  [audioPlayer pause];

  audioPlayer2 = [(HFAudioPlayer *)self audioPlayer];
  [audioPlayer2 stop];

  audioPlayer3 = [(HFAudioPlayer *)self audioPlayer];
  [audioPlayer3 setCurrentTime:0.0];

  self->_paused = 0;
  delegate = [(HFAudioPlayer *)self delegate];
  if (delegate)
  {
    delegate4 = delegate;
    delegate2 = [(HFAudioPlayer *)self delegate];
    if (([delegate2 conformsToProtocol:&unk_2825BAE00] & 1) == 0)
    {

      goto LABEL_8;
    }

    delegate3 = [(HFAudioPlayer *)self delegate];
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      delegate4 = [(HFAudioPlayer *)self delegate];
      [delegate4 audioPlayerDidStopPlayback:self];
LABEL_8:
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_cleanup
{
  audioPlayer = [(HFAudioPlayer *)self audioPlayer];
  isPlaying = [audioPlayer isPlaying];

  if (isPlaying)
  {
    audioPlayer2 = [(HFAudioPlayer *)self audioPlayer];
    [audioPlayer2 stop];
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

- (BOOL)prepareToPlay:(id *)play
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc(MEMORY[0x277CB83D0]);
  audioFileURL = [(HFAudioPlayer *)self audioFileURL];
  v27 = 0;
  v7 = [v5 initWithContentsOfURL:audioFileURL error:&v27];
  v8 = v27;
  [(HFAudioPlayer *)self setAudioPlayer:v7];

  audioPlayer = [(HFAudioPlayer *)self audioPlayer];
  [audioPlayer setMeteringEnabled:1];

  audioPlayer2 = [(HFAudioPlayer *)self audioPlayer];
  [audioPlayer2 setDelegate:self];

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
    *play = v8;
  }

  else if ([(HFAudioPlayer *)self isAudioSessionActive])
  {
    v14 = HFLogForCategory(0xAuLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      audioFileURL2 = [(HFAudioPlayer *)self audioFileURL];
      *buf = 138412290;
      v29 = audioFileURL2;
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
      audioSession = [(HFAudioPlayer *)self audioSession];
      v25 = v18;
      v20 = [audioSession setActive:1 error:&v25];
      v8 = v25;

      if (v20)
      {
        v13 = 1;
        [(HFAudioPlayer *)self setAudioSessionIsActive:1];
        audioPlayer3 = [(HFAudioPlayer *)self audioPlayer];
        [audioPlayer3 prepareToPlay];

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
  displayLink = [(HFAudioPlayer *)self displayLink];

  if (displayLink)
  {
    displayLink2 = [(HFAudioPlayer *)self displayLink];
    [displayLink2 invalidate];
  }

  v5 = [MEMORY[0x277CD9E48] displayLinkWithTarget:self selector:sel__displayLinkUpdated_];
  [(HFAudioPlayer *)self setDisplayLink:v5];

  displayLink3 = [(HFAudioPlayer *)self displayLink];
  [displayLink3 setPreferredFramesPerSecond:60];

  displayLink4 = [(HFAudioPlayer *)self displayLink];
  mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
  [displayLink4 addToRunLoop:mainRunLoop forMode:*MEMORY[0x277CBE738]];

  audioPlayer = [(HFAudioPlayer *)self audioPlayer];
  [audioPlayer play];
}

- (void)resume
{
  audioPlayer = [(HFAudioPlayer *)self audioPlayer];
  [audioPlayer play];

  audioPlayer2 = [(HFAudioPlayer *)self audioPlayer];
  [(HFAudioPlayer *)self playerCurrentTime];
  v6 = v5;
  [(HFAudioPlayer *)self playerCurrentTime];
  if (v6 >= 0.02)
  {
    v7 = v7 + -0.02;
  }

  [audioPlayer2 setCurrentTime:v7];

  displayLink = [(HFAudioPlayer *)self displayLink];
  [displayLink setPaused:0];

  self->_paused = 0;
  delegate = [(HFAudioPlayer *)self delegate];
  if (delegate)
  {
    delegate4 = delegate;
    delegate2 = [(HFAudioPlayer *)self delegate];
    if ([delegate2 conformsToProtocol:&unk_2825BAE00])
    {
      delegate3 = [(HFAudioPlayer *)self delegate];
      v12 = objc_opt_respondsToSelector();

      if ((v12 & 1) == 0)
      {
        return;
      }

      delegate4 = [(HFAudioPlayer *)self delegate];
      [delegate4 audioPlayerDidResumePlayback:self];
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
  audioPlayer = [(HFAudioPlayer *)self audioPlayer];
  isPlaying = [audioPlayer isPlaying];

  return isPlaying;
}

- (double)duration
{
  audioPlayer = [(HFAudioPlayer *)self audioPlayer];
  [audioPlayer duration];
  v4 = v3;

  return v4;
}

- (void)setVolume:(float)volume
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = HFLogForCategory(0xAuLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134217984;
    volumeCopy = volume;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "Setting player volume to [%f]", &v9, 0xCu);
  }

  audioPlayer = [(HFAudioPlayer *)self audioPlayer];
  *&v7 = volume;
  [audioPlayer setVolume:v7];

  v8 = *MEMORY[0x277D85DE8];
}

- (float)volume
{
  audioPlayer = [(HFAudioPlayer *)self audioPlayer];
  [audioPlayer volume];
  v4 = v3;

  return v4;
}

- (void)audioSessionDidInterrupt:(id)interrupt
{
  v9 = *MEMORY[0x277D85DE8];
  interruptCopy = interrupt;
  v5 = HFLogForCategory(0xAuLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = interruptCopy;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "Audio Session was interrupted [%@]", &v7, 0xCu);
  }

  [(HFAudioPlayer *)self setPlayerStopSource:2];
  [(HFAudioPlayer *)self _pauseWithReason:@"Audio Session Interrupted"];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)audioSessionMediaServicesWereLost:(id)lost
{
  v9 = *MEMORY[0x277D85DE8];
  lostCopy = lost;
  v5 = HFLogForCategory(0xAuLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = lostCopy;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "Media Services Were Lost [%@]", &v7, 0xCu);
  }

  [(HFAudioPlayer *)self setPlayerStopSource:3];
  [(HFAudioPlayer *)self _pauseWithReason:@"Audio Session Lost"];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)audioSessionMediaServicesWereReset:(id)reset
{
  v9 = *MEMORY[0x277D85DE8];
  resetCopy = reset;
  v5 = HFLogForCategory(0xAuLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = resetCopy;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "Media Services Were Reset [%@]", &v7, 0xCu);
  }

  [(HFAudioPlayer *)self setPlayerStopSource:3];
  [(HFAudioPlayer *)self _pauseWithReason:@"Audio Session Reset"];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)audioSessionRouteChanged:(id)changed
{
  v14 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  v5 = HFLogForCategory(0xAuLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = changedCopy;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "Audio Session Route Changed [%@]", &v12, 0xCu);
  }

  if ([(HFAudioPlayer *)self isAudioSessionActive])
  {
    userInfo = [changedCopy userInfo];
    v7 = [userInfo objectForKey:*MEMORY[0x277CB8220]];
    unsignedIntegerValue = [v7 unsignedIntegerValue];

    if ((unsignedIntegerValue - 1) <= 1)
    {
      v9 = HFLogForCategory(0xAuLL);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue];
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

- (void)audioPlayerDidFinishPlaying:(id)playing successfully:(BOOL)successfully
{
  successfullyCopy = successfully;
  displayLink = [(HFAudioPlayer *)self displayLink];
  [displayLink invalidate];

  [(HFAudioPlayer *)self setPlayerCurrentTime:0.0];
  delegate = [(HFAudioPlayer *)self delegate];
  if (delegate)
  {
    v13 = delegate;
    delegate2 = [(HFAudioPlayer *)self delegate];
    if ([delegate2 conformsToProtocol:&unk_2825BAE00])
    {
      delegate3 = [(HFAudioPlayer *)self delegate];
      v10 = objc_opt_respondsToSelector();

      if ((v10 & 1) == 0)
      {
        return;
      }

      delegate4 = [(HFAudioPlayer *)self delegate];
      v13 = delegate4;
      if (successfullyCopy)
      {
        [delegate4 audioPlayerDidFinishPlayback:self withError:0];
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

- (void)audioPlayerDecodeErrorDidOccur:(id)occur error:(id)error
{
  v10 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v6 = HFLogForCategory(0xAuLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412290;
    v9 = errorCopy;
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