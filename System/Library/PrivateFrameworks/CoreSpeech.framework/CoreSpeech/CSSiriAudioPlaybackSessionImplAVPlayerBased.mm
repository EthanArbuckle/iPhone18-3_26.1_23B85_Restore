@interface CSSiriAudioPlaybackSessionImplAVPlayerBased
- (CSSiriAudioPlaybackSessionImplAVPlayerBased)initWithQueue:(id)queue request:(id)request options:(unint64_t)options;
- (NSString)description;
- (void)_finalizeWithError:(id)error;
- (void)_handleEndInterruption:(BOOL)interruption;
- (void)_prepareWithOptions:(unint64_t)options audioSession:(id)session completion:(id)completion;
- (void)_resetPlayerItem;
- (void)_startWithOptions:(unint64_t)options audioSession:(id)session preparationHandler:(id)handler executionHandler:(id)executionHandler finalizationHandler:(id)finalizationHandler;
- (void)_stop:(BOOL)_stop;
- (void)playerItemDidPlayToEndTime:(id)time;
- (void)playerItemFailedToPlayToEndTime:(id)time;
- (void)prepareWithOptions:(unint64_t)options audioSession:(id)session completion:(id)completion;
- (void)startWithOptions:(unint64_t)options audioSession:(id)session preparationHandler:(id)handler executionHandler:(id)executionHandler finalizationHandler:(id)finalizationHandler;
@end

@implementation CSSiriAudioPlaybackSessionImplAVPlayerBased

- (void)playerItemFailedToPlayToEndTime:(id)time
{
  v15 = *MEMORY[0x277D85DE8];
  timeCopy = time;
  v5 = *MEMORY[0x277CEF0A0];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v12 = "[CSSiriAudioPlaybackSessionImplAVPlayerBased playerItemFailedToPlayToEndTime:]";
    v13 = 2112;
    v14 = timeCopy;
    _os_log_error_impl(&dword_222E4D000, v5, OS_LOG_TYPE_ERROR, "%s %@", buf, 0x16u);
  }

  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __79__CSSiriAudioPlaybackSessionImplAVPlayerBased_playerItemFailedToPlayToEndTime___block_invoke;
  v9[3] = &unk_2784C6FA8;
  v9[4] = self;
  v10 = timeCopy;
  v7 = timeCopy;
  dispatch_async(queue, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __79__CSSiriAudioPlaybackSessionImplAVPlayerBased_playerItemFailedToPlayToEndTime___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CEF2A0];
  v2 = *(a1 + 32);
  v5 = [*(a1 + 40) userInfo];
  v3 = [v5 objectForKey:*MEMORY[0x277CE60C8]];
  v4 = [v1 errorWithCode:1424 description:@"Player item failed to play to end time." underlyingError:v3];
  [v2 _finalizeWithError:v4];
}

- (void)playerItemDidPlayToEndTime:(id)time
{
  v13 = *MEMORY[0x277D85DE8];
  timeCopy = time;
  v5 = *MEMORY[0x277CEF0A0];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v10 = "[CSSiriAudioPlaybackSessionImplAVPlayerBased playerItemDidPlayToEndTime:]";
    v11 = 2112;
    v12 = timeCopy;
    _os_log_impl(&dword_222E4D000, v5, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__CSSiriAudioPlaybackSessionImplAVPlayerBased_playerItemDidPlayToEndTime___block_invoke;
  block[3] = &unk_2784C6FD0;
  block[4] = self;
  dispatch_async(queue, block);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_resetPlayerItem
{
  v12 = *MEMORY[0x277D85DE8];
  playerItem = self->_playerItem;
  if (playerItem)
  {
    v4 = *MEMORY[0x277CEF0A0];
    if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_INFO))
    {
      v8 = 136315394;
      v9 = "[CSSiriAudioPlaybackSessionImplAVPlayerBased _resetPlayerItem]";
      v10 = 2112;
      v11 = playerItem;
      _os_log_impl(&dword_222E4D000, v4, OS_LOG_TYPE_INFO, "%s Reset player item %@.", &v8, 0x16u);
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self name:*MEMORY[0x277CE60C0] object:self->_playerItem];
    [defaultCenter removeObserver:self name:*MEMORY[0x277CE60D0] object:self->_playerItem];
    [(AVPlayer *)self->_player replaceCurrentItemWithPlayerItem:0];
    v6 = self->_playerItem;
    self->_playerItem = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_finalizeWithError:(id)error
{
  v17 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = *MEMORY[0x277CEF0A0];
  v6 = os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_INFO);
  if (errorCopy)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    *v16 = 136315394;
    *&v16[4] = "[CSSiriAudioPlaybackSessionImplAVPlayerBased _finalizeWithError:]";
    *&v16[12] = 2112;
    *&v16[14] = errorCopy;
    v7 = "%s error = %@";
    v8 = v5;
    v9 = 22;
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    *v16 = 136315138;
    *&v16[4] = "[CSSiriAudioPlaybackSessionImplAVPlayerBased _finalizeWithError:]";
    v7 = "%s ";
    v8 = v5;
    v9 = 12;
  }

  _os_log_impl(&dword_222E4D000, v8, OS_LOG_TYPE_INFO, v7, v16, v9);
LABEL_7:
  if (self->_playerItem)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self name:*MEMORY[0x277CE60C0] object:self->_playerItem];
    [defaultCenter removeObserver:self name:*MEMORY[0x277CE60D0] object:self->_playerItem];
  }

  if (self->_isActive)
  {
    self->_isActive = 0;
    [(AVPlayer *)self->_player setRate:0.0];
    if (errorCopy)
    {
      domain = [errorCopy domain];
      if ([domain isEqualToString:*MEMORY[0x277CEF588]])
      {
        code = [errorCopy code];

        if (code == 1408)
        {
          goto LABEL_16;
        }
      }

      else
      {
      }

      [(CSSiriAudioPlaybackSessionImplAVPlayerBased *)self _resetPlayerItem:*v16];
    }
  }

LABEL_16:
  completion = self->_completion;
  if (completion)
  {
    completion[2](completion, errorCopy);
    v14 = self->_completion;
    self->_completion = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_handleEndInterruption:(BOOL)interruption
{
  if (interruption && self->_isActive)
  {
    LODWORD(v3) = 1.0;
    [(AVPlayer *)self->_player setRate:v3];
  }
}

- (void)_stop:(BOOL)_stop
{
  v4 = [MEMORY[0x277CEF2A0] errorWithCode:1408 description:@"Stopped playback."];
  [(CSSiriAudioPlaybackSessionImplAVPlayerBased *)self _finalizeWithError:v4];

  [(AVPlayer *)self->_player setRate:0.0];
  player = self->_player;
  v10 = *MEMORY[0x277CC08F0];
  v11 = *(MEMORY[0x277CC08F0] + 16);
  v8 = v10;
  v9 = v11;
  v6 = v10;
  v7 = v11;
  [(AVPlayer *)player seekToTime:&v10 toleranceBefore:&v8 toleranceAfter:&v6];
}

- (void)_startWithOptions:(unint64_t)options audioSession:(id)session preparationHandler:(id)handler executionHandler:(id)executionHandler finalizationHandler:(id)finalizationHandler
{
  v35 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  handlerCopy = handler;
  executionHandlerCopy = executionHandler;
  finalizationHandlerCopy = finalizationHandler;
  v16 = MEMORY[0x277CEF0A0];
  v17 = *MEMORY[0x277CEF0A0];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_INFO))
  {
    request = self->_request;
    options = self->_options;
    v20 = v17;
    v21 = AFAudioPlaybackOptionsGetNames();
    *buf = 136315650;
    v30 = "[CSSiriAudioPlaybackSessionImplAVPlayerBased _startWithOptions:audioSession:preparationHandler:executionHandler:finalizationHandler:]";
    v31 = 2112;
    selfCopy = request;
    v33 = 2112;
    v34 = v21;
    _os_log_impl(&dword_222E4D000, v20, OS_LOG_TYPE_INFO, "%s request = %@, options = %@", buf, 0x20u);
  }

  if (self->_isActive)
  {
    v22 = *v16;
    if (os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v30 = "[CSSiriAudioPlaybackSessionImplAVPlayerBased _startWithOptions:audioSession:preparationHandler:executionHandler:finalizationHandler:]";
      v31 = 2112;
      selfCopy = self;
      _os_log_error_impl(&dword_222E4D000, v22, OS_LOG_TYPE_ERROR, "%s Attempted to start %@ when it is already active.", buf, 0x16u);
      if (!finalizationHandlerCopy)
      {
        goto LABEL_10;
      }

      goto LABEL_6;
    }

    if (finalizationHandlerCopy)
    {
LABEL_6:
      v23 = [MEMORY[0x277CEF2A0] errorWithCode:1405 description:@"Attempted to start audio playback session when it is already active." underlyingError:0];
      finalizationHandlerCopy[2](finalizationHandlerCopy, v23);
    }
  }

  else
  {
    self->_isActive = 1;
    v24 = MEMORY[0x223DD26C0](finalizationHandlerCopy);
    completion = self->_completion;
    self->_completion = v24;

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy);
    }

    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __134__CSSiriAudioPlaybackSessionImplAVPlayerBased__startWithOptions_audioSession_preparationHandler_executionHandler_finalizationHandler___block_invoke;
    v27[3] = &unk_2784C4798;
    v27[4] = self;
    v28 = executionHandlerCopy;
    [(CSSiriAudioPlaybackSessionImplAVPlayerBased *)self _prepareWithOptions:options audioSession:sessionCopy completion:v27];
  }

LABEL_10:

  v26 = *MEMORY[0x277D85DE8];
}

void __134__CSSiriAudioPlaybackSessionImplAVPlayerBased__startWithOptions_audioSession_preparationHandler_executionHandler_finalizationHandler___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = *MEMORY[0x277CEF0A0];
    if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 32);
      *buf = 136315650;
      *&buf[4] = "[CSSiriAudioPlaybackSessionImplAVPlayerBased _startWithOptions:audioSession:preparationHandler:executionHandler:finalizationHandler:]_block_invoke";
      *&buf[12] = 2112;
      *&buf[14] = v12;
      *&buf[22] = 2112;
      v20 = v3;
      _os_log_error_impl(&dword_222E4D000, v4, OS_LOG_TYPE_ERROR, "%s Failed to prepare %@ due to error %@.", buf, 0x20u);
    }

    [*(a1 + 32) _finalizeWithError:v3];
  }

  else
  {
    v5 = *(a1 + 32);
    if (*(v5 + 16))
    {
      [*(v5 + 24) setRate:0.0];
      v7 = *(a1 + 32);
      v6 = *(a1 + 40);
      v8 = *(v7 + 24);
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __134__CSSiriAudioPlaybackSessionImplAVPlayerBased__startWithOptions_audioSession_preparationHandler_executionHandler_finalizationHandler___block_invoke_37;
      v17[3] = &unk_2784C63E0;
      v17[4] = v7;
      v18 = v6;
      *buf = *MEMORY[0x277CC08F0];
      *&buf[16] = *(MEMORY[0x277CC08F0] + 16);
      v15 = *buf;
      v16 = *&buf[16];
      v13 = *buf;
      v14 = *&buf[16];
      [v8 seekToTime:buf toleranceBefore:&v15 toleranceAfter:&v13 completionHandler:v17];
    }

    else
    {
      v9 = *MEMORY[0x277CEF0A0];
      if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "[CSSiriAudioPlaybackSessionImplAVPlayerBased _startWithOptions:audioSession:preparationHandler:executionHandler:finalizationHandler:]_block_invoke";
        *&buf[12] = 2112;
        *&buf[14] = v5;
        _os_log_error_impl(&dword_222E4D000, v9, OS_LOG_TYPE_ERROR, "%s Failed to start %@ because it is already inactive after preparation.", buf, 0x16u);
        v5 = *(a1 + 32);
      }

      v10 = [MEMORY[0x277CEF2A0] errorWithCode:1409 description:@"Audio playback session is already inactive after preparation."];
      [v5 _finalizeWithError:v10];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __134__CSSiriAudioPlaybackSessionImplAVPlayerBased__startWithOptions_audioSession_preparationHandler_executionHandler_finalizationHandler___block_invoke_37(uint64_t a1, char a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __134__CSSiriAudioPlaybackSessionImplAVPlayerBased__startWithOptions_audioSession_preparationHandler_executionHandler_finalizationHandler___block_invoke_2;
  block[3] = &unk_2784C6778;
  block[4] = v3;
  v7 = a2;
  v6 = v2;
  dispatch_async(v4, block);
}

void __134__CSSiriAudioPlaybackSessionImplAVPlayerBased__startWithOptions_audioSession_preparationHandler_executionHandler_finalizationHandler___block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if ((v2[16] & 1) == 0)
  {
    v7 = *MEMORY[0x277CEF0A0];
    if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_ERROR))
    {
      v13 = 136315394;
      v14 = "[CSSiriAudioPlaybackSessionImplAVPlayerBased _startWithOptions:audioSession:preparationHandler:executionHandler:finalizationHandler:]_block_invoke_2";
      v15 = 2112;
      v16 = v2;
      _os_log_error_impl(&dword_222E4D000, v7, OS_LOG_TYPE_ERROR, "%s Failed to start %@ because it is already inactive after player seek to begin.", &v13, 0x16u);
      v2 = *(a1 + 32);
    }

    v8 = MEMORY[0x277CEF2A0];
    v9 = @"Audio playback session is already inactive after player seek to begin.";
    v10 = 1409;
    goto LABEL_13;
  }

  if ((*(a1 + 48) & 1) == 0)
  {
    v11 = *MEMORY[0x277CEF0A0];
    if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_ERROR))
    {
      v13 = 136315394;
      v14 = "[CSSiriAudioPlaybackSessionImplAVPlayerBased _startWithOptions:audioSession:preparationHandler:executionHandler:finalizationHandler:]_block_invoke";
      v15 = 2112;
      v16 = v2;
      _os_log_error_impl(&dword_222E4D000, v11, OS_LOG_TYPE_ERROR, "%s Failed to start %@ because player failed to seek to begin.", &v13, 0x16u);
      v2 = *(a1 + 32);
    }

    v8 = MEMORY[0x277CEF2A0];
    v9 = @"Player failed to seek to begin.";
    v10 = 1425;
LABEL_13:
    v3 = [v8 errorWithCode:v10 description:v9];
    [v2 _finalizeWithError:v3];
    goto LABEL_14;
  }

  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:*(a1 + 32) selector:sel_playerItemDidPlayToEndTime_ name:*MEMORY[0x277CE60C0] object:*(*(a1 + 32) + 32)];
  [v3 addObserver:*(a1 + 32) selector:sel_playerItemFailedToPlayToEndTime_ name:*MEMORY[0x277CE60D0] object:*(*(a1 + 32) + 32)];
  LODWORD(v4) = 1.0;
  [*(*(a1 + 32) + 24) setRate:v4];
  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))();
  }

  v6 = *MEMORY[0x277CEF0A0];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_INFO))
  {
    v13 = 136315138;
    v14 = "[CSSiriAudioPlaybackSessionImplAVPlayerBased _startWithOptions:audioSession:preparationHandler:executionHandler:finalizationHandler:]_block_invoke";
    _os_log_impl(&dword_222E4D000, v6, OS_LOG_TYPE_INFO, "%s started", &v13, 0xCu);
  }

LABEL_14:

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_prepareWithOptions:(unint64_t)options audioSession:(id)session completion:(id)completion
{
  v80 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  completionCopy = completion;
  v9 = MEMORY[0x277CEF0A0];
  v10 = *MEMORY[0x277CEF0A0];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_INFO))
  {
    request = self->_request;
    options = self->_options;
    v13 = v10;
    v14 = AFAudioPlaybackOptionsGetNames();
    *buf = 136315650;
    *&buf[4] = "[CSSiriAudioPlaybackSessionImplAVPlayerBased _prepareWithOptions:audioSession:completion:]";
    *&buf[12] = 2112;
    *&buf[14] = request;
    *&buf[22] = 2112;
    v78 = v14;
    _os_log_impl(&dword_222E4D000, v13, OS_LOG_TYPE_INFO, "%s request = %@, options = %@", buf, 0x20u);
  }

  v15 = objc_alloc(MEMORY[0x277CEF340]);
  v75[0] = MEMORY[0x277D85DD0];
  v75[1] = 3221225472;
  v75[2] = __91__CSSiriAudioPlaybackSessionImplAVPlayerBased__prepareWithOptions_audioSession_completion___block_invoke;
  v75[3] = &unk_2784C6480;
  v16 = completionCopy;
  v76 = v16;
  v17 = [MEMORY[0x277CEF2A0] errorWithCode:40];
  v18 = [v15 initWithBlock:v75 defaultValue:v17];

  if ([(AVPlayerItem *)self->_playerItem status]== AVPlayerItemStatusFailed)
  {
    v19 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
    {
      playerItem = self->_playerItem;
      v54 = v19;
      error = [(AVPlayerItem *)playerItem error];
      *buf = 136315650;
      *&buf[4] = "[CSSiriAudioPlaybackSessionImplAVPlayerBased _prepareWithOptions:audioSession:completion:]";
      *&buf[12] = 2112;
      *&buf[14] = playerItem;
      *&buf[22] = 2112;
      v78 = error;
      _os_log_error_impl(&dword_222E4D000, v54, OS_LOG_TYPE_ERROR, "%s Player item %@ status is failed with error %@.", buf, 0x20u);
    }

    [(CSSiriAudioPlaybackSessionImplAVPlayerBased *)self _resetPlayerItem];
  }

  if (self->_playerItem)
  {
    goto LABEL_17;
  }

  itemURL = [(AFAudioPlaybackRequest *)self->_request itemURL];
  if (itemURL)
  {
    v21 = [objc_alloc(MEMORY[0x277CE65B0]) initWithURL:itemURL];
    v22 = self->_playerItem;
    self->_playerItem = v21;

    v23 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEBUG))
    {
      v57 = self->_playerItem;
      *buf = 136315650;
      *&buf[4] = "[CSSiriAudioPlaybackSessionImplAVPlayerBased _prepareWithOptions:audioSession:completion:]";
      *&buf[12] = 2112;
      *&buf[14] = v57;
      *&buf[22] = 2112;
      v78 = itemURL;
      _os_log_debug_impl(&dword_222E4D000, v23, OS_LOG_TYPE_DEBUG, "%s Created player item %@ from URL %@.", buf, 0x20u);
    }
  }

  if (self->_playerItem)
  {
    goto LABEL_17;
  }

  itemData = [(AFAudioPlaybackRequest *)self->_request itemData];
  if (itemData)
  {
    v25 = [MEMORY[0x277CE63D8] assetWithData:itemData contentType:*MEMORY[0x277CE5DB8] options:0];
    v26 = [objc_alloc(MEMORY[0x277CE65B0]) initWithAsset:v25];
    v27 = self->_playerItem;
    self->_playerItem = v26;

    v28 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEBUG))
    {
      v61 = self->_playerItem;
      v59 = v28;
      v60 = [itemData length];
      *buf = 136315650;
      *&buf[4] = "[CSSiriAudioPlaybackSessionImplAVPlayerBased _prepareWithOptions:audioSession:completion:]";
      *&buf[12] = 2112;
      *&buf[14] = v61;
      *&buf[22] = 2048;
      v78 = v60;
      _os_log_debug_impl(&dword_222E4D000, v59, OS_LOG_TYPE_DEBUG, "%s Created player item %@ from WAVE asset with %tu bytes of data .", buf, 0x20u);
    }
  }

  if (self->_playerItem)
  {
LABEL_17:
    player = self->_player;
    if (!player)
    {
      v30 = [objc_alloc(MEMORY[0x277CE6598]) initWithDispatchQueue:self->_queue];
      v31 = self->_player;
      self->_player = v30;

      v32 = self->_player;
      [(AFAudioPlaybackRequest *)self->_request volume];
      [(AVPlayer *)v32 setVolume:?];
      [(AVPlayer *)self->_player setActionAtItemEnd:2];
      v33 = *v9;
      if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEBUG))
      {
        v56 = self->_player;
        *buf = 136315394;
        *&buf[4] = "[CSSiriAudioPlaybackSessionImplAVPlayerBased _prepareWithOptions:audioSession:completion:]";
        *&buf[12] = 2112;
        *&buf[14] = v56;
        _os_log_debug_impl(&dword_222E4D000, v33, OS_LOG_TYPE_DEBUG, "%s Created player %@.", buf, 0x16u);
      }

      player = self->_player;
    }

    [(AVPlayer *)player setAudioSession:sessionCopy, v61];
    [(AVPlayer *)self->_player replaceCurrentItemWithPlayerItem:self->_playerItem];
    currentItem = [(AVPlayer *)self->_player currentItem];
    v35 = self->_playerItem;
    if (currentItem == v35)
    {
      if ([(AVPlayerItem *)self->_playerItem status]== AVPlayerItemStatusReadyToPlay)
      {
        v38 = *v9;
        if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEBUG))
        {
          v58 = self->_playerItem;
          *buf = 136315394;
          *&buf[4] = "[CSSiriAudioPlaybackSessionImplAVPlayerBased _prepareWithOptions:audioSession:completion:]";
          *&buf[12] = 2112;
          *&buf[14] = v58;
          _os_log_debug_impl(&dword_222E4D000, v38, OS_LOG_TYPE_DEBUG, "%s Player item %@ status is ready to play.", buf, 0x16u);
        }

        [v18 invokeWithValue:0];
      }

      else
      {
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v78 = __Block_byref_object_copy__8995;
        *&v79 = __Block_byref_object_dispose__8996;
        *(&v79 + 1) = 0;
        v69 = 0;
        v70 = &v69;
        v71 = 0x3032000000;
        v72 = __Block_byref_object_copy__8995;
        v73 = __Block_byref_object_dispose__8996;
        v74 = 0;
        v68[0] = MEMORY[0x277D85DD0];
        v68[1] = 3221225472;
        v68[2] = __91__CSSiriAudioPlaybackSessionImplAVPlayerBased__prepareWithOptions_audioSession_completion___block_invoke_15;
        v68[3] = &unk_2784C4060;
        v68[4] = buf;
        v68[5] = &v69;
        v39 = MEMORY[0x223DD26C0](v68);
        v40 = objc_alloc(MEMORY[0x277CEF530]);
        queue = self->_queue;
        v64[0] = MEMORY[0x277D85DD0];
        v64[1] = 3221225472;
        v64[2] = __91__CSSiriAudioPlaybackSessionImplAVPlayerBased__prepareWithOptions_audioSession_completion___block_invoke_2;
        v64[3] = &unk_2784C6C68;
        v42 = v18;
        v65 = v42;
        selfCopy = self;
        v43 = v39;
        v67 = v43;
        v44 = [v40 initWithTimeoutInterval:queue onQueue:v64 timeoutHandler:2.0];
        v45 = v70[5];
        v70[5] = v44;

        [v70[5] start];
        v46 = self->_playerItem;
        v62 = v42;
        v63 = v43;
        v47 = [objc_alloc(MEMORY[0x277CEF2D0]) initWithQueue:self->_queue qosClass:33 asynchronous:1];
        v48 = AFKeyValueObservingCreate();
        v49 = *(*&buf[8] + 40);
        *(*&buf[8] + 40) = v48;

        _Block_object_dispose(&v69, 8);
        _Block_object_dispose(buf, 8);
      }
    }

    else
    {
      v36 = *v9;
      if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
      {
        v52 = self->_player;
        *buf = 136315906;
        *&buf[4] = "[CSSiriAudioPlaybackSessionImplAVPlayerBased _prepareWithOptions:audioSession:completion:]";
        *&buf[12] = 2112;
        *&buf[14] = v52;
        *&buf[22] = 2112;
        v78 = v35;
        LOWORD(v79) = 2112;
        *(&v79 + 2) = currentItem;
        _os_log_error_impl(&dword_222E4D000, v36, OS_LOG_TYPE_ERROR, "%s Unable to replace current item of player %@. Expected current item is %@, actual current item is %@.", buf, 0x2Au);
      }

      v37 = [MEMORY[0x277CEF2A0] errorWithCode:1420 description:@"Unable to replace current item of player."];
      [v18 invokeWithValue:v37];
    }
  }

  else
  {
    v50 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = "[CSSiriAudioPlaybackSessionImplAVPlayerBased _prepareWithOptions:audioSession:completion:]";
      _os_log_error_impl(&dword_222E4D000, v50, OS_LOG_TYPE_ERROR, "%s Unable to create player item.", buf, 0xCu);
    }

    currentItem = [MEMORY[0x277CEF2A0] errorWithCode:1423 description:{@"Unable to create player item.", v61}];
    [v18 invokeWithValue:currentItem];
  }

  v51 = *MEMORY[0x277D85DE8];
}

void __91__CSSiriAudioPlaybackSessionImplAVPlayerBased__prepareWithOptions_audioSession_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF0A0];
  if (v3)
  {
    if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "[CSSiriAudioPlaybackSessionImplAVPlayerBased _prepareWithOptions:audioSession:completion:]_block_invoke";
      v9 = 2112;
      v10 = v3;
      _os_log_error_impl(&dword_222E4D000, v4, OS_LOG_TYPE_ERROR, "%s error = %@", &v7, 0x16u);
    }
  }

  else if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_INFO))
  {
    v7 = 136315138;
    v8 = "[CSSiriAudioPlaybackSessionImplAVPlayerBased _prepareWithOptions:audioSession:completion:]_block_invoke";
    _os_log_impl(&dword_222E4D000, v4, OS_LOG_TYPE_INFO, "%s prepared", &v7, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __91__CSSiriAudioPlaybackSessionImplAVPlayerBased__prepareWithOptions_audioSession_completion___block_invoke_15(uint64_t a1)
{
  [*(*(*(a1 + 32) + 8) + 40) invalidate];
  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  [*(*(*(a1 + 40) + 8) + 40) cancel];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;
}

uint64_t __91__CSSiriAudioPlaybackSessionImplAVPlayerBased__prepareWithOptions_audioSession_completion___block_invoke_2(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = [MEMORY[0x277CEF2A0] errorWithCode:1421 description:@"Timed out when waiting for player item status to change to ready to play."];
  LODWORD(v2) = [v2 invokeWithValue:v3];

  if (v2)
  {
    v4 = *MEMORY[0x277CEF0A0];
    if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1[5] + 32);
      v8 = 136315394;
      v9 = "[CSSiriAudioPlaybackSessionImplAVPlayerBased _prepareWithOptions:audioSession:completion:]_block_invoke_2";
      v10 = 2112;
      v11 = v7;
      _os_log_error_impl(&dword_222E4D000, v4, OS_LOG_TYPE_ERROR, "%s Timed out when waiting for player item %@ status to change to ready to play.", &v8, 0x16u);
    }
  }

  result = (*(a1[6] + 16))();
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void __91__CSSiriAudioPlaybackSessionImplAVPlayerBased__prepareWithOptions_audioSession_completion___block_invoke_24(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 integerValue];
    if (v5 == 2)
    {
      v7 = [*(*(a1 + 40) + 32) error];
      v8 = *(a1 + 32);
      v9 = [MEMORY[0x277CEF2A0] errorWithCode:1422 description:@"Failed to change player item status to ready to play." underlyingError:v7];
      LODWORD(v8) = [v8 invokeWithValue:v9];

      if (v8)
      {
        v10 = *MEMORY[0x277CEF0A0];
        if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_ERROR))
        {
          v13 = *(*(a1 + 40) + 32);
          v14 = 136315650;
          v15 = "[CSSiriAudioPlaybackSessionImplAVPlayerBased _prepareWithOptions:audioSession:completion:]_block_invoke";
          v16 = 2112;
          v17 = v13;
          v18 = 2112;
          v19 = v7;
          _os_log_error_impl(&dword_222E4D000, v10, OS_LOG_TYPE_ERROR, "%s Failed to change player item %@ status to ready to play due to error %@.", &v14, 0x20u);
        }
      }

      (*(*(a1 + 48) + 16))();
    }

    else if (v5 == 1)
    {
      if ([*(a1 + 32) invokeWithValue:0])
      {
        v6 = *MEMORY[0x277CEF0A0];
        if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_DEBUG))
        {
          v12 = *(*(a1 + 40) + 32);
          v14 = 136315394;
          v15 = "[CSSiriAudioPlaybackSessionImplAVPlayerBased _prepareWithOptions:audioSession:completion:]_block_invoke";
          v16 = 2112;
          v17 = v12;
          _os_log_debug_impl(&dword_222E4D000, v6, OS_LOG_TYPE_DEBUG, "%s Successfully changed player item %@ status to ready to play.", &v14, 0x16u);
        }
      }

      (*(*(a1 + 48) + 16))();
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)startWithOptions:(unint64_t)options audioSession:(id)session preparationHandler:(id)handler executionHandler:(id)executionHandler finalizationHandler:(id)finalizationHandler
{
  queue = self->_queue;
  finalizationHandlerCopy = finalizationHandler;
  executionHandlerCopy = executionHandler;
  handlerCopy = handler;
  sessionCopy = session;
  dispatch_assert_queue_V2(queue);
  [(CSSiriAudioPlaybackSessionImplAVPlayerBased *)self _startWithOptions:options audioSession:sessionCopy preparationHandler:handlerCopy executionHandler:executionHandlerCopy finalizationHandler:finalizationHandlerCopy];
}

- (void)prepareWithOptions:(unint64_t)options audioSession:(id)session completion:(id)completion
{
  sessionCopy = session;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_queue);
  if (self->_isActive)
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0);
    }
  }

  else
  {
    [(CSSiriAudioPlaybackSessionImplAVPlayerBased *)self _prepareWithOptions:options audioSession:sessionCopy completion:completionCopy];
  }
}

- (CSSiriAudioPlaybackSessionImplAVPlayerBased)initWithQueue:(id)queue request:(id)request options:(unint64_t)options
{
  queueCopy = queue;
  requestCopy = request;
  v16.receiver = self;
  v16.super_class = CSSiriAudioPlaybackSessionImplAVPlayerBased;
  v11 = [(CSSiriAudioPlaybackSessionImplAVPlayerBased *)&v16 init];
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
  v10.super_class = CSSiriAudioPlaybackSessionImplAVPlayerBased;
  v4 = [(CSSiriAudioPlaybackSessionImplAVPlayerBased *)&v10 description];
  request = self->_request;
  options = self->_options;
  v7 = AFAudioPlaybackOptionsGetNames();
  v8 = [v3 initWithFormat:@"%@ {request = %@, options = %@, player = %@, playerItem = %@}", v4, request, v7, self->_player, self->_playerItem];

  return v8;
}

@end