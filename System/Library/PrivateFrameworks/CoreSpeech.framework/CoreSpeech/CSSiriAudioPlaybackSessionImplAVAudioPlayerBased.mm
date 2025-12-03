@interface CSSiriAudioPlaybackSessionImplAVAudioPlayerBased
- (BOOL)_prepareWithOptions:(unint64_t)options audioSession:(id)session error:(id *)error;
- (CSSiriAudioPlaybackSessionImplAVAudioPlayerBased)initWithQueue:(id)queue request:(id)request options:(unint64_t)options;
- (NSString)description;
- (void)_didNotStartWithError:(id)error;
- (void)_didStopWithError:(id)error;
- (void)_finalizeWithError:(id)error;
- (void)_handleBeginInterruption;
- (void)_handleEndInterruption:(BOOL)interruption;
- (void)_startWithOptions:(unint64_t)options audioSession:(id)session preparationHandler:(id)handler executionHandler:(id)executionHandler finalizationHandler:(id)finalizationHandler;
- (void)_stop:(BOOL)_stop;
- (void)audioPlayerDecodeErrorDidOccur:(id)occur error:(id)error;
- (void)audioPlayerDidFinishPlaying:(id)playing successfully:(BOOL)successfully;
- (void)handleBeginInterruption;
- (void)prepareWithOptions:(unint64_t)options audioSession:(id)session completion:(id)completion;
- (void)startWithOptions:(unint64_t)options audioSession:(id)session preparationHandler:(id)handler executionHandler:(id)executionHandler finalizationHandler:(id)finalizationHandler;
@end

@implementation CSSiriAudioPlaybackSessionImplAVAudioPlayerBased

- (void)audioPlayerDecodeErrorDidOccur:(id)occur error:(id)error
{
  v26 = *MEMORY[0x277D85DE8];
  occurCopy = occur;
  errorCopy = error;
  v8 = *MEMORY[0x277CEF0A0];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_ERROR))
  {
    request = self->_request;
    *buf = 136315906;
    v19 = "[CSSiriAudioPlaybackSessionImplAVAudioPlayerBased audioPlayerDecodeErrorDidOccur:error:]";
    v20 = 2112;
    v21 = request;
    v22 = 2112;
    v23 = occurCopy;
    v24 = 2112;
    v25 = errorCopy;
    _os_log_error_impl(&dword_222E4D000, v8, OS_LOG_TYPE_ERROR, "%s request = %@, player = %@, error = %@", buf, 0x2Au);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __89__CSSiriAudioPlaybackSessionImplAVAudioPlayerBased_audioPlayerDecodeErrorDidOccur_error___block_invoke;
  block[3] = &unk_2784C6EE8;
  v15 = occurCopy;
  selfCopy = self;
  v17 = errorCopy;
  v10 = errorCopy;
  v11 = occurCopy;
  dispatch_async(queue, block);

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __89__CSSiriAudioPlaybackSessionImplAVAudioPlayerBased_audioPlayerDecodeErrorDidOccur_error___block_invoke(uint64_t result)
{
  if (*(result + 32) == *(*(result + 40) + 16))
  {
    return [*(result + 40) _didStopWithError:*(result + 48)];
  }

  return result;
}

- (void)audioPlayerDidFinishPlaying:(id)playing successfully:(BOOL)successfully
{
  successfullyCopy = successfully;
  v23 = *MEMORY[0x277D85DE8];
  playingCopy = playing;
  v7 = *MEMORY[0x277CEF0A0];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_INFO))
  {
    request = self->_request;
    *buf = 136315906;
    v16 = "[CSSiriAudioPlaybackSessionImplAVAudioPlayerBased audioPlayerDidFinishPlaying:successfully:]";
    v17 = 2112;
    v18 = request;
    v19 = 2112;
    v20 = playingCopy;
    v21 = 1024;
    v22 = successfullyCopy;
    _os_log_impl(&dword_222E4D000, v7, OS_LOG_TYPE_INFO, "%s request = %@, player = %@, success = %d", buf, 0x26u);
  }

  queue = self->_queue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __93__CSSiriAudioPlaybackSessionImplAVAudioPlayerBased_audioPlayerDidFinishPlaying_successfully___block_invoke;
  v12[3] = &unk_2784C6FA8;
  v13 = playingCopy;
  selfCopy = self;
  v10 = playingCopy;
  dispatch_async(queue, v12);

  v11 = *MEMORY[0x277D85DE8];
}

void *__93__CSSiriAudioPlaybackSessionImplAVAudioPlayerBased_audioPlayerDidFinishPlaying_successfully___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = *(a1 + 40);
  if (v2 == result[2])
  {
    return [result _didStopWithError:0];
  }

  return result;
}

- (void)_finalizeWithError:(id)error
{
  v17 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = *MEMORY[0x277CEF0A0];
  if (errorCopy)
  {
    if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_ERROR))
    {
      request = self->_request;
      v11 = 136315650;
      v12 = "[CSSiriAudioPlaybackSessionImplAVAudioPlayerBased _finalizeWithError:]";
      v13 = 2112;
      v14 = request;
      v15 = 2112;
      v16 = errorCopy;
      _os_log_error_impl(&dword_222E4D000, v5, OS_LOG_TYPE_ERROR, "%s request = %@, error = %@", &v11, 0x20u);
    }
  }

  else if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_INFO))
  {
    v7 = self->_request;
    v11 = 136315394;
    v12 = "[CSSiriAudioPlaybackSessionImplAVAudioPlayerBased _finalizeWithError:]";
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_222E4D000, v5, OS_LOG_TYPE_INFO, "%s request = %@", &v11, 0x16u);
  }

  *&self->_isActive = 0;
  completion = self->_completion;
  if (completion)
  {
    completion[2](completion, errorCopy);
    v9 = self->_completion;
    self->_completion = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_didStopWithError:(id)error
{
  v18 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = MEMORY[0x277CEF0A0];
  v6 = *MEMORY[0x277CEF0A0];
  if (errorCopy)
  {
    if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_ERROR))
    {
      request = self->_request;
      v12 = 136315650;
      v13 = "[CSSiriAudioPlaybackSessionImplAVAudioPlayerBased _didStopWithError:]";
      v14 = 2112;
      v15 = request;
      v16 = 2112;
      v17 = errorCopy;
      _os_log_error_impl(&dword_222E4D000, v6, OS_LOG_TYPE_ERROR, "%s request = %@, error = %@", &v12, 0x20u);
    }
  }

  else if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_INFO))
  {
    v8 = self->_request;
    v12 = 136315394;
    v13 = "[CSSiriAudioPlaybackSessionImplAVAudioPlayerBased _didStopWithError:]";
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&dword_222E4D000, v6, OS_LOG_TYPE_INFO, "%s request = %@", &v12, 0x16u);
  }

  player = self->_player;
  if (player)
  {
    [(AVAudioPlayer *)player setDelegate:0];
    [(AVAudioPlayer *)self->_player stop];
  }

  else
  {
    v10 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_INFO))
    {
      v12 = 136315138;
      v13 = "[CSSiriAudioPlaybackSessionImplAVAudioPlayerBased _didStopWithError:]";
      _os_log_impl(&dword_222E4D000, v10, OS_LOG_TYPE_INFO, "%s Ignored because there's no audio player to destroy.", &v12, 0xCu);
    }
  }

  [(CSSiriAudioPlaybackSessionImplAVAudioPlayerBased *)self _finalizeWithError:errorCopy];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_didNotStartWithError:(id)error
{
  v14 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = *MEMORY[0x277CEF0A0];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_ERROR))
  {
    request = self->_request;
    v8 = 136315650;
    v9 = "[CSSiriAudioPlaybackSessionImplAVAudioPlayerBased _didNotStartWithError:]";
    v10 = 2112;
    v11 = request;
    v12 = 2112;
    v13 = errorCopy;
    _os_log_error_impl(&dword_222E4D000, v5, OS_LOG_TYPE_ERROR, "%s request = %@, error = %@", &v8, 0x20u);
  }

  [(CSSiriAudioPlaybackSessionImplAVAudioPlayerBased *)self _finalizeWithError:errorCopy];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_handleEndInterruption:(BOOL)interruption
{
  interruptionCopy = interruption;
  v17 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CEF0A0];
  v6 = *MEMORY[0x277CEF0A0];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_INFO))
  {
    request = self->_request;
    v11 = 136315650;
    v12 = "[CSSiriAudioPlaybackSessionImplAVAudioPlayerBased _handleEndInterruption:]";
    v13 = 2112;
    v14 = request;
    v15 = 1024;
    v16 = interruptionCopy;
    _os_log_impl(&dword_222E4D000, v6, OS_LOG_TYPE_INFO, "%s _request = %@, shouldResume = %d", &v11, 0x1Cu);
  }

  if (!interruptionCopy)
  {
    goto LABEL_7;
  }

  player = self->_player;
  if (player)
  {
    if (![(AVAudioPlayer *)player isPlaying]&& ![(AVAudioPlayer *)self->_player play])
    {
LABEL_7:
      [(CSSiriAudioPlaybackSessionImplAVAudioPlayerBased *)self _stop:1];
    }
  }

  else
  {
    v10 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_INFO))
    {
      v11 = 136315138;
      v12 = "[CSSiriAudioPlaybackSessionImplAVAudioPlayerBased _handleEndInterruption:]";
      _os_log_impl(&dword_222E4D000, v10, OS_LOG_TYPE_INFO, "%s Ignored because there's no audio player to resume playing.", &v11, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_handleBeginInterruption
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CEF0A0];
  v4 = *MEMORY[0x277CEF0A0];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_INFO))
  {
    request = self->_request;
    v8 = 136315394;
    v9 = "[CSSiriAudioPlaybackSessionImplAVAudioPlayerBased _handleBeginInterruption]";
    v10 = 2112;
    v11 = request;
    _os_log_impl(&dword_222E4D000, v4, OS_LOG_TYPE_INFO, "%s _request = %@", &v8, 0x16u);
  }

  if ([(AVAudioPlayer *)self->_player isPlaying])
  {
    [(AVAudioPlayer *)self->_player pause];
  }

  else
  {
    v6 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_INFO))
    {
      v8 = 136315138;
      v9 = "[CSSiriAudioPlaybackSessionImplAVAudioPlayerBased _handleBeginInterruption]";
      _os_log_impl(&dword_222E4D000, v6, OS_LOG_TYPE_INFO, "%s Ignored because there's no audio player to pause.", &v8, 0xCu);
    }
  }

  self->_isPrepared = 0;
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_stop:(BOOL)_stop
{
  _stopCopy = _stop;
  v23 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CEF0A0];
  v6 = *MEMORY[0x277CEF0A0];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_INFO))
  {
    request = self->_request;
    *buf = 136315650;
    v18 = "[CSSiriAudioPlaybackSessionImplAVAudioPlayerBased _stop:]";
    v19 = 2112;
    v20 = request;
    v21 = 1024;
    v22 = _stopCopy;
    _os_log_impl(&dword_222E4D000, v6, OS_LOG_TYPE_INFO, "%s request = %@, immediately = %d", buf, 0x1Cu);
  }

  if (self->_player)
  {
    [(AFAudioPlaybackRequest *)self->_request fadeOutDuration];
    if (_stopCopy || (v9 = v8, v8 == 0.0))
    {
      v13 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v18 = "[CSSiriAudioPlaybackSessionImplAVAudioPlayerBased _stop:]";
        _os_log_impl(&dword_222E4D000, v13, OS_LOG_TYPE_INFO, "%s Stopping audio player...", buf, 0xCu);
      }

      v14 = [MEMORY[0x277CEF2A0] errorWithCode:1408 description:@"Stopped playback of AVAudioPlayer." underlyingError:0];
      [(CSSiriAudioPlaybackSessionImplAVAudioPlayerBased *)self _didStopWithError:v14];
    }

    else
    {
      [(AVAudioPlayer *)self->_player setVolume:0.0 fadeDuration:v8];
      v10 = dispatch_time(0, (v9 * 1000000000.0));
      queue = self->_queue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __58__CSSiriAudioPlaybackSessionImplAVAudioPlayerBased__stop___block_invoke;
      block[3] = &unk_2784C6FD0;
      block[4] = self;
      dispatch_after(v10, queue, block);
    }
  }

  else
  {
    v12 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v18 = "[CSSiriAudioPlaybackSessionImplAVAudioPlayerBased _stop:]";
      _os_log_impl(&dword_222E4D000, v12, OS_LOG_TYPE_INFO, "%s Ignored because there's no audio player to stop.", buf, 0xCu);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __58__CSSiriAudioPlaybackSessionImplAVAudioPlayerBased__stop___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CEF0A0];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_INFO))
  {
    v6 = 136315138;
    v7 = "[CSSiriAudioPlaybackSessionImplAVAudioPlayerBased _stop:]_block_invoke";
    _os_log_impl(&dword_222E4D000, v2, OS_LOG_TYPE_INFO, "%s Stopping audio player...", &v6, 0xCu);
  }

  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CEF2A0] errorWithCode:1408 description:@"Stopped playback of AVAudioPlayer." underlyingError:0];
  [v3 _didStopWithError:v4];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_startWithOptions:(unint64_t)options audioSession:(id)session preparationHandler:(id)handler executionHandler:(id)executionHandler finalizationHandler:(id)finalizationHandler
{
  v48 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  handlerCopy = handler;
  executionHandlerCopy = executionHandler;
  finalizationHandlerCopy = finalizationHandler;
  v16 = MEMORY[0x277CEF0A0];
  v17 = *MEMORY[0x277CEF0A0];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_INFO))
  {
    request = self->_request;
    *buf = 136315394;
    v45 = "[CSSiriAudioPlaybackSessionImplAVAudioPlayerBased _startWithOptions:audioSession:preparationHandler:executionHandler:finalizationHandler:]";
    v46 = 2112;
    v47 = request;
    _os_log_impl(&dword_222E4D000, v17, OS_LOG_TYPE_INFO, "%s request = %@", buf, 0x16u);
  }

  if (!self->_isActive)
  {
    if (![(AVAudioPlayer *)self->_player isPlaying])
    {
      self->_isActive = 1;
      v25 = MEMORY[0x223DD26C0](finalizationHandlerCopy);
      completion = self->_completion;
      self->_completion = v25;

      if (handlerCopy)
      {
        handlerCopy[2](handlerCopy);
      }

      v43 = 0;
      v27 = [(CSSiriAudioPlaybackSessionImplAVAudioPlayerBased *)self _prepareWithOptions:options audioSession:sessionCopy error:&v43];
      v24 = v43;
      if (v27)
      {
        [(AVAudioPlayer *)self->_player setDelegate:self];
        v28 = *v16;
        if (os_log_type_enabled(*v16, OS_LOG_TYPE_INFO))
        {
          player = self->_player;
          *buf = 136315394;
          v45 = "[CSSiriAudioPlaybackSessionImplAVAudioPlayerBased _startWithOptions:audioSession:preparationHandler:executionHandler:finalizationHandler:]";
          v46 = 2112;
          v47 = player;
          _os_log_impl(&dword_222E4D000, v28, OS_LOG_TYPE_INFO, "%s Asking audio player %@ to play...", buf, 0x16u);
        }

        play = [(AVAudioPlayer *)self->_player play];
        v31 = *v16;
        if (play)
        {
          if (os_log_type_enabled(*v16, OS_LOG_TYPE_INFO))
          {
            v32 = self->_player;
            *buf = 136315394;
            v45 = "[CSSiriAudioPlaybackSessionImplAVAudioPlayerBased _startWithOptions:audioSession:preparationHandler:executionHandler:finalizationHandler:]";
            v46 = 2112;
            v47 = v32;
            _os_log_impl(&dword_222E4D000, v31, OS_LOG_TYPE_INFO, "%s Started playing audio player %@.", buf, 0x16u);
          }

          self->_isPrepared = 0;
          if (executionHandlerCopy)
          {
            executionHandlerCopy[2](executionHandlerCopy);
          }

          [(AFAudioPlaybackRequest *)self->_request fadeInDuration];
          if (v33 > 0.0)
          {
            v34 = self->_player;
            [(AFAudioPlaybackRequest *)self->_request volume];
            v36 = v35;
            [(AFAudioPlaybackRequest *)self->_request fadeInDuration];
            v38 = v37;
            LODWORD(v37) = v36;
            [(AVAudioPlayer *)v34 setVolume:v37 fadeDuration:v38];
          }
        }

        else
        {
          if (os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
          {
            v42 = self->_player;
            *buf = 136315394;
            v45 = "[CSSiriAudioPlaybackSessionImplAVAudioPlayerBased _startWithOptions:audioSession:preparationHandler:executionHandler:finalizationHandler:]";
            v46 = 2112;
            v47 = v42;
            _os_log_error_impl(&dword_222E4D000, v31, OS_LOG_TYPE_ERROR, "%s Failed to play audio player %@.", buf, 0x16u);
          }

          [(AVAudioPlayer *)self->_player setDelegate:0];
          v39 = self->_player;
          self->_player = 0;

          v40 = [MEMORY[0x277CEF2A0] errorWithCode:1403 description:@"Failed to play AVAudioPlayer." underlyingError:0];
          [(CSSiriAudioPlaybackSessionImplAVAudioPlayerBased *)self _didNotStartWithError:v40];
        }
      }

      else
      {
        [(CSSiriAudioPlaybackSessionImplAVAudioPlayerBased *)self _didNotStartWithError:v24];
      }

      goto LABEL_28;
    }

    v23 = *v16;
    if (os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v45 = "[CSSiriAudioPlaybackSessionImplAVAudioPlayerBased _startWithOptions:audioSession:preparationHandler:executionHandler:finalizationHandler:]";
      _os_log_error_impl(&dword_222E4D000, v23, OS_LOG_TYPE_ERROR, "%s Ignored because the audio player is already playing.", buf, 0xCu);
      if (!finalizationHandlerCopy)
      {
        goto LABEL_29;
      }
    }

    else if (!finalizationHandlerCopy)
    {
      goto LABEL_29;
    }

    v20 = MEMORY[0x277CEF2A0];
    v21 = @"Attempted to start audio playback session when AVAudioPlayer is already playing.";
    v22 = 1404;
    goto LABEL_11;
  }

  v19 = *v16;
  if (os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v45 = "[CSSiriAudioPlaybackSessionImplAVAudioPlayerBased _startWithOptions:audioSession:preparationHandler:executionHandler:finalizationHandler:]";
    _os_log_error_impl(&dword_222E4D000, v19, OS_LOG_TYPE_ERROR, "%s Ignored because the session is already active.", buf, 0xCu);
    if (!finalizationHandlerCopy)
    {
      goto LABEL_29;
    }

    goto LABEL_6;
  }

  if (finalizationHandlerCopy)
  {
LABEL_6:
    v20 = MEMORY[0x277CEF2A0];
    v21 = @"Attempted to start audio playback session when it is already active.";
    v22 = 1405;
LABEL_11:
    v24 = [v20 errorWithCode:v22 description:v21 underlyingError:0];
    finalizationHandlerCopy[2](finalizationHandlerCopy, v24);
LABEL_28:
  }

LABEL_29:

  v41 = *MEMORY[0x277D85DE8];
}

- (BOOL)_prepareWithOptions:(unint64_t)options audioSession:(id)session error:(id *)error
{
  v50 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  if (error)
  {
    *error = 0;
  }

  v9 = MEMORY[0x277CEF0A0];
  if (self->_player)
  {
    if (self->_audioSession != sessionCopy)
    {
      objc_storeStrong(&self->_audioSession, session);
      [(AVAudioPlayer *)self->_player setAudioSession:sessionCopy];
      self->_isPrepared = 0;
    }

    v10 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_INFO))
    {
      player = self->_player;
      *buf = 136315650;
      v45 = "[CSSiriAudioPlaybackSessionImplAVAudioPlayerBased _prepareWithOptions:audioSession:error:]";
      v46 = 2112;
      v47 = player;
      v48 = 2112;
      v49 = sessionCopy;
      v12 = "%s Reused audio player %@ with audio session %@.";
LABEL_8:
      _os_log_impl(&dword_222E4D000, v10, OS_LOG_TYPE_INFO, v12, buf, 0x20u);
    }
  }

  else
  {
    self->_isPrepared = 0;
    v25 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v45 = "[CSSiriAudioPlaybackSessionImplAVAudioPlayerBased _prepareWithOptions:audioSession:error:]";
      _os_log_impl(&dword_222E4D000, v25, OS_LOG_TYPE_INFO, "%s Creating audio player...", buf, 0xCu);
    }

    itemData = [(AFAudioPlaybackRequest *)self->_request itemData];

    v27 = objc_alloc(MEMORY[0x277CB83D0]);
    request = self->_request;
    if (itemData)
    {
      itemData2 = [(AFAudioPlaybackRequest *)request itemData];
      v43 = 0;
      v30 = &v43;
      v31 = [v27 initWithData:itemData2 error:&v43];
    }

    else
    {
      itemData2 = [(AFAudioPlaybackRequest *)request itemURL];
      v42 = 0;
      v30 = &v42;
      v31 = [v27 initWithContentsOfURL:itemData2 error:&v42];
    }

    v33 = v31;
    v34 = *v30;
    v35 = self->_player;
    self->_player = v33;

    if (v34)
    {
      v36 = *v9;
      if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v45 = "[CSSiriAudioPlaybackSessionImplAVAudioPlayerBased _prepareWithOptions:audioSession:error:]";
        v46 = 2112;
        v47 = v34;
        _os_log_error_impl(&dword_222E4D000, v36, OS_LOG_TYPE_ERROR, "%s Failed to create audio player due to error %@.", buf, 0x16u);
      }

      v37 = self->_player;
      self->_player = 0;

      if (error)
      {
        *error = [MEMORY[0x277CEF2A0] errorWithCode:1401 description:@"Failed to initialize AVAudioPlayer." underlyingError:v34];
      }

      goto LABEL_35;
    }

    objc_storeStrong(&self->_audioSession, session);
    [(AVAudioPlayer *)self->_player setAudioSession:sessionCopy];
    v10 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_INFO))
    {
      v40 = self->_player;
      *buf = 136315650;
      v45 = "[CSSiriAudioPlaybackSessionImplAVAudioPlayerBased _prepareWithOptions:audioSession:error:]";
      v46 = 2112;
      v47 = v40;
      v48 = 2112;
      v49 = sessionCopy;
      v12 = "%s Created audio player %@ with audio session %@.";
      goto LABEL_8;
    }
  }

  if (self->_isPrepared)
  {
    v13 = *v9;
    v14 = 1;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_INFO))
    {
      v15 = self->_player;
      *buf = 136315394;
      v45 = "[CSSiriAudioPlaybackSessionImplAVAudioPlayerBased _prepareWithOptions:audioSession:error:]";
      v46 = 2112;
      v47 = v15;
      _os_log_impl(&dword_222E4D000, v13, OS_LOG_TYPE_INFO, "%s Audio player %@ is already prepared to play.", buf, 0x16u);
    }

    goto LABEL_36;
  }

  [(AVAudioPlayer *)self->_player setNumberOfLoops:[(AFAudioPlaybackRequest *)self->_request numberOfLoops]];
  [(AFAudioPlaybackRequest *)self->_request fadeInDuration];
  v17 = v16;
  v18 = self->_player;
  v19 = 0.0;
  if (v17 <= 0.0)
  {
    [(AFAudioPlaybackRequest *)self->_request volume];
  }

  [(AVAudioPlayer *)v18 setVolume:v19];
  v20 = *v9;
  if (os_log_type_enabled(*v9, OS_LOG_TYPE_INFO))
  {
    v21 = self->_player;
    *buf = 136315394;
    v45 = "[CSSiriAudioPlaybackSessionImplAVAudioPlayerBased _prepareWithOptions:audioSession:error:]";
    v46 = 2112;
    v47 = v21;
    _os_log_impl(&dword_222E4D000, v20, OS_LOG_TYPE_INFO, "%s Preparing audio player %@ to play...", buf, 0x16u);
  }

  prepareToPlay = [(AVAudioPlayer *)self->_player prepareToPlay];
  v23 = *v9;
  if (!prepareToPlay)
  {
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
    {
      v41 = self->_player;
      *buf = 136315394;
      v45 = "[CSSiriAudioPlaybackSessionImplAVAudioPlayerBased _prepareWithOptions:audioSession:error:]";
      v46 = 2112;
      v47 = v41;
      _os_log_error_impl(&dword_222E4D000, v23, OS_LOG_TYPE_ERROR, "%s Failed to prepare audio player %@ to play.", buf, 0x16u);
    }

    v32 = self->_player;
    self->_player = 0;

    if (error)
    {
      [MEMORY[0x277CEF2A0] errorWithCode:1402 description:@"Failed to prepare to play AVAudioPlayer." underlyingError:0];
      *error = v14 = 0;
      goto LABEL_36;
    }

LABEL_35:
    v14 = 0;
    goto LABEL_36;
  }

  v14 = 1;
  if (os_log_type_enabled(*v9, OS_LOG_TYPE_INFO))
  {
    v24 = self->_player;
    *buf = 136315394;
    v45 = "[CSSiriAudioPlaybackSessionImplAVAudioPlayerBased _prepareWithOptions:audioSession:error:]";
    v46 = 2112;
    v47 = v24;
    _os_log_impl(&dword_222E4D000, v23, OS_LOG_TYPE_INFO, "%s Prepared audio player %@ to play.", buf, 0x16u);
  }

  self->_isPrepared = 1;
LABEL_36:

  v38 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)handleBeginInterruption
{
  dispatch_assert_queue_V2(self->_queue);

  [(CSSiriAudioPlaybackSessionImplAVAudioPlayerBased *)self _handleBeginInterruption];
}

- (void)startWithOptions:(unint64_t)options audioSession:(id)session preparationHandler:(id)handler executionHandler:(id)executionHandler finalizationHandler:(id)finalizationHandler
{
  queue = self->_queue;
  finalizationHandlerCopy = finalizationHandler;
  executionHandlerCopy = executionHandler;
  handlerCopy = handler;
  sessionCopy = session;
  dispatch_assert_queue_V2(queue);
  [(CSSiriAudioPlaybackSessionImplAVAudioPlayerBased *)self _startWithOptions:options audioSession:sessionCopy preparationHandler:handlerCopy executionHandler:executionHandlerCopy finalizationHandler:finalizationHandlerCopy];
}

- (void)prepareWithOptions:(unint64_t)options audioSession:(id)session completion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  sessionCopy = session;
  dispatch_assert_queue_V2(queue);
  v12 = 0;
  [(CSSiriAudioPlaybackSessionImplAVAudioPlayerBased *)self _prepareWithOptions:options audioSession:sessionCopy error:&v12];

  v11 = v12;
  if (completionCopy)
  {
    completionCopy[2](completionCopy, v11);
  }
}

- (CSSiriAudioPlaybackSessionImplAVAudioPlayerBased)initWithQueue:(id)queue request:(id)request options:(unint64_t)options
{
  queueCopy = queue;
  requestCopy = request;
  v16.receiver = self;
  v16.super_class = CSSiriAudioPlaybackSessionImplAVAudioPlayerBased;
  v11 = [(CSSiriAudioPlaybackSessionImplAVAudioPlayerBased *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_queue, queue);
    v13 = [requestCopy copy];
    request = v12->_request;
    v12->_request = v13;

    v12->_options = options;
  }

  return v12;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v10.receiver = self;
  v10.super_class = CSSiriAudioPlaybackSessionImplAVAudioPlayerBased;
  v4 = [(CSSiriAudioPlaybackSessionImplAVAudioPlayerBased *)&v10 description];
  request = self->_request;
  options = self->_options;
  v7 = AFAudioPlaybackOptionsGetNames();
  v8 = [v3 initWithFormat:@"%@ {request = %@, options = %@, player = %@}", v4, request, v7, self->_player];

  return v8;
}

@end