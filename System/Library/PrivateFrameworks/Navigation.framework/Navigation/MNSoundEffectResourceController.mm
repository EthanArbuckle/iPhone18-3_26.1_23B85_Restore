@interface MNSoundEffectResourceController
- (AVAudioPlayer)approach;
- (AVAudioPlayer)leftTurn;
- (AVAudioPlayer)rightTurn;
- (BOOL)playSound:(unint64_t)sound andReport:(id *)report;
- (BOOL)playing;
- (MNSoundEffectControllerDelegate)delegate;
- (MNSoundEffectResourceController)init;
- (id)_playerForFileName:(id)name andExtension:(id)extension;
- (void)_audioSessionInterruption:(id)interruption;
- (void)_mediaSessionServicesWereLost:(id)lost;
- (void)_mediaSessionServicesWereReset:(id)reset;
- (void)_registerForObservation;
- (void)audioPlayerDecodeErrorDidOccur:(id)occur error:(id)error;
- (void)audioPlayerDidFinishPlaying:(id)playing successfully:(BOOL)successfully;
- (void)stop;
@end

@implementation MNSoundEffectResourceController

- (MNSoundEffectControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_mediaSessionServicesWereReset:(id)reset
{
  v4 = GetAudioLogForMNSoundEffectResourceControllerCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_1D311E000, v4, OS_LOG_TYPE_INFO, "ⓧ Media services were reset", v8, 2u);
  }

  approach = self->_approach;
  self->_approach = 0;

  leftTurn = self->_leftTurn;
  self->_leftTurn = 0;

  rightTurn = self->_rightTurn;
  self->_rightTurn = 0;
}

- (void)_mediaSessionServicesWereLost:(id)lost
{
  v4 = GetAudioLogForMNSoundEffectResourceControllerCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_1D311E000, v4, OS_LOG_TYPE_INFO, "ⓧ Media services were lost", v5, 2u);
  }

  [(MNSoundEffectResourceController *)self stop];
}

- (void)_audioSessionInterruption:(id)interruption
{
  v25 = *MEMORY[0x1E69E9840];
  userInfo = [interruption userInfo];
  v5 = [userInfo objectForKey:*MEMORY[0x1E698D588]];
  integerValue = [v5 integerValue];

  if (integerValue == 1 && [(MNSoundEffectResourceController *)self playing])
  {
    v7 = GetAudioLogForMNSoundEffectResourceControllerCategory();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
    v9 = MEMORY[0x1E698D570];
    if (v8)
    {
      v10 = [userInfo objectForKey:*MEMORY[0x1E698D570]];
      *buf = 138412290;
      v24 = v10;
      _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_INFO, "ⓧ Media services were interrupted - %@", buf, 0xCu);
    }

    indicatorID = self->_indicatorID;
    [(MNSoundEffectResourceController *)self stop];
    delegate = [(MNSoundEffectResourceController *)self delegate];
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      v14 = MEMORY[0x1E696ABC0];
      v15 = @"MNAudioSystemError";
      v16 = [userInfo objectForKey:{*v9, *MEMORY[0x1E696AA08]}];
      v22 = v16;
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
      v18 = [v14 errorWithDomain:@"MNAudioSystemError" code:0 userInfo:v17];

      delegate2 = [(MNSoundEffectResourceController *)self delegate];
      [delegate2 soundEffectResourceController:self wasInterruptedWhilePlayingIndicator:indicatorID withError:v18];
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)audioPlayerDecodeErrorDidOccur:(id)occur error:(id)error
{
  v25 = *MEMORY[0x1E69E9840];
  occurCopy = occur;
  errorCopy = error;
  v8 = GetAudioLogForMNSoundEffectResourceControllerCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v20 = "[MNSoundEffectResourceController audioPlayerDecodeErrorDidOccur:error:]";
    v21 = 2112;
    v22 = occurCopy;
    v23 = 2112;
    v24 = errorCopy;
    _os_log_impl(&dword_1D311E000, v8, OS_LOG_TYPE_INFO, "ⓧ %s : %@ : %@", buf, 0x20u);
  }

  delegate = [(MNSoundEffectResourceController *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = MEMORY[0x1E696ABC0];
    v12 = @"MNAudioSystemError";
    v17 = *MEMORY[0x1E696AA08];
    v18 = errorCopy;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v14 = [v11 errorWithDomain:@"MNAudioSystemError" code:3702 userInfo:v13];

    delegate2 = [(MNSoundEffectResourceController *)self delegate];
    [delegate2 soundEffectResourceController:self didFailWhilePlayingIndicator:self->_indicatorID withError:v14];
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)audioPlayerDidFinishPlaying:(id)playing successfully:(BOOL)successfully
{
  successfullyCopy = successfully;
  v22 = *MEMORY[0x1E69E9840];
  playingCopy = playing;
  v7 = GetAudioLogForMNSoundEffectResourceControllerCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v16 = 136315650;
    v17 = "[MNSoundEffectResourceController audioPlayerDidFinishPlaying:successfully:]";
    v18 = 2112;
    v19 = playingCopy;
    v20 = 1024;
    v21 = successfullyCopy;
    _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_INFO, "ⓧ %s : %@ : %d", &v16, 0x1Cu);
  }

  delegate = [(MNSoundEffectResourceController *)self delegate];
  if (successfullyCopy)
  {
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      delegate2 = [(MNSoundEffectResourceController *)self delegate];
      [delegate2 soundEffectResourceController:self didFinishPlayingIndicator:self->_indicatorID];
LABEL_8:
    }
  }

  else
  {
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = MEMORY[0x1E696ABC0];
      v13 = @"MNAudioSystemError";
      delegate2 = [v12 errorWithDomain:@"MNAudioSystemError" code:3701 userInfo:0];

      delegate3 = [(MNSoundEffectResourceController *)self delegate];
      [delegate3 soundEffectResourceController:self didFailWhilePlayingIndicator:self->_indicatorID withError:delegate2];

      goto LABEL_8;
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (id)_playerForFileName:(id)name andExtension:(id)extension
{
  v22 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  extensionCopy = extension;
  if ([nameCopy length] && objc_msgSend(extensionCopy, "length"))
  {
    _navigationBundle = [MEMORY[0x1E696AAE8] _navigationBundle];
    v8 = [_navigationBundle URLForResource:nameCopy withExtension:extensionCopy];

    v15 = 0;
    v9 = [objc_alloc(MEMORY[0x1E6958448]) initWithContentsOfURL:v8 error:&v15];
    v10 = v15;
    if (v10)
    {
      v11 = GetAudioLogForMNSoundEffectResourceControllerCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v17 = nameCopy;
        v18 = 2112;
        v19 = extensionCopy;
        v20 = 2112;
        v21 = v10;
        _os_log_impl(&dword_1D311E000, v11, OS_LOG_TYPE_ERROR, "⒳    Error creating player for %@.%@ - %@", buf, 0x20u);
      }

      v12 = 0;
    }

    else
    {
      v12 = v9;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (void)stop
{
  if ([(MNSoundEffectResourceController *)self playing])
  {
    v3 = GetAudioLogForMNSoundEffectResourceControllerCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_INFO, "ⓧ Stopping sound playback", v4, 2u);
    }

    [(AVAudioPlayer *)self->_approach stop];
    [(AVAudioPlayer *)self->_approach setCurrentTime:0.0];
    [(AVAudioPlayer *)self->_leftTurn stop];
    [(AVAudioPlayer *)self->_leftTurn setCurrentTime:0.0];
    [(AVAudioPlayer *)self->_rightTurn stop];
    [(AVAudioPlayer *)self->_rightTurn setCurrentTime:0.0];
    self->_indicatorID = 3;
  }
}

- (BOOL)playSound:(unint64_t)sound andReport:(id *)report
{
  v24 = *MEMORY[0x1E69E9840];
  if (sound < 3)
  {
    [(MNSoundEffectResourceController *)self stop];
    v10 = GetAudioLogForMNSoundEffectResourceControllerCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v22 = 134217984;
      soundCopy2 = sound;
      _os_log_impl(&dword_1D311E000, v10, OS_LOG_TYPE_INFO, "Ⓧ Attempting to start playing id %lu", &v22, 0xCu);
    }

    if (sound == 2)
    {
      rightTurn = [(MNSoundEffectResourceController *)self rightTurn];
    }

    else
    {
      if (sound == 1)
      {
        [(MNSoundEffectResourceController *)self leftTurn];
      }

      else
      {
        [(MNSoundEffectResourceController *)self approach];
      }
      rightTurn = ;
    }

    v12 = rightTurn;
    play = [rightTurn play];
    v13 = GetAudioLogForMNSoundEffectResourceControllerCategory();
    v14 = v13;
    if (play)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        LOWORD(v22) = 0;
        _os_log_impl(&dword_1D311E000, v14, OS_LOG_TYPE_INFO, "Ⓧ    Playback was successfully started", &v22, 2u);
      }

      self->_indicatorID = sound;
      delegate = [(MNSoundEffectResourceController *)self delegate];
      v16 = objc_opt_respondsToSelector();

      if ((v16 & 1) == 0)
      {
        goto LABEL_23;
      }

      delegate2 = [(MNSoundEffectResourceController *)self delegate];
      [(__CFString *)delegate2 soundEffectResourceController:self willStartPlayingIndicator:self->_indicatorID];
    }

    else
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v22 = 134217984;
        soundCopy2 = sound;
        _os_log_impl(&dword_1D311E000, v14, OS_LOG_TYPE_ERROR, "⒳    Error trying to play id %lu (this is a problem in AVAudioPlayer)", &v22, 0xCu);
      }

      if (!report)
      {
        goto LABEL_23;
      }

      v18 = MEMORY[0x1E696ABC0];
      delegate2 = @"MNAudioSystemError";
      v19 = @"MNAudioSystemError";
      *report = [v18 errorWithDomain:@"MNAudioSystemError" code:3700 userInfo:0];
    }

LABEL_23:
    goto LABEL_24;
  }

  if (report)
  {
    v5 = MEMORY[0x1E696ABC0];
    v6 = @"MNAudioSystemError";
    *report = [v5 errorWithDomain:@"MNAudioSystemError" code:3500 userInfo:0];
  }

  play = 0;
LABEL_24:
  v20 = *MEMORY[0x1E69E9840];
  return play;
}

- (BOOL)playing
{
  if ([(AVAudioPlayer *)self->_approach isPlaying]|| [(AVAudioPlayer *)self->_leftTurn isPlaying])
  {
    return 1;
  }

  rightTurn = self->_rightTurn;

  return [(AVAudioPlayer *)rightTurn isPlaying];
}

- (AVAudioPlayer)rightTurn
{
  rightTurn = self->_rightTurn;
  if (!rightTurn)
  {
    v4 = [(MNSoundEffectResourceController *)self _playerForFileName:@"TurnRight" andExtension:@"caf"];
    v5 = self->_rightTurn;
    self->_rightTurn = v4;

    [(AVAudioPlayer *)self->_rightTurn setDelegate:self];
    rightTurn = self->_rightTurn;
  }

  return rightTurn;
}

- (AVAudioPlayer)leftTurn
{
  leftTurn = self->_leftTurn;
  if (!leftTurn)
  {
    v4 = [(MNSoundEffectResourceController *)self _playerForFileName:@"TurnLeft" andExtension:@"caf"];
    v5 = self->_leftTurn;
    self->_leftTurn = v4;

    [(AVAudioPlayer *)self->_leftTurn setDelegate:self];
    leftTurn = self->_leftTurn;
  }

  return leftTurn;
}

- (AVAudioPlayer)approach
{
  approach = self->_approach;
  if (!approach)
  {
    v4 = [(MNSoundEffectResourceController *)self _playerForFileName:@"Approach" andExtension:@"caf"];
    v5 = self->_approach;
    self->_approach = v4;

    [(AVAudioPlayer *)self->_approach setDelegate:self];
    approach = self->_approach;
  }

  return approach;
}

- (void)_registerForObservation
{
  v3 = GetAudioLogForMNSoundEffectResourceControllerCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_DEBUG, "ⓧ Registering observers", v5, 2u);
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__audioSessionInterruption_ name:*MEMORY[0x1E698D558] object:0];
  [defaultCenter addObserver:self selector:sel__mediaSessionServicesWereLost_ name:*MEMORY[0x1E698D5B0] object:0];
  [defaultCenter addObserver:self selector:sel__mediaSessionServicesWereReset_ name:*MEMORY[0x1E698D5C0] object:0];
}

- (MNSoundEffectResourceController)init
{
  v6.receiver = self;
  v6.super_class = MNSoundEffectResourceController;
  v2 = [(MNSoundEffectResourceController *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(MNSoundEffectResourceController *)v2 _registerForObservation];
    v3->_indicatorID = 3;
    v4 = v3;
  }

  return v3;
}

@end