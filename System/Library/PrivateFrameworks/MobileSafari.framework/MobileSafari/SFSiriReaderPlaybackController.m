@interface SFSiriReaderPlaybackController
+ (BOOL)playerResponseIsForSiriReadThis:(id)a3;
+ (SFSiriReaderPlaybackController)sharedPlaybackController;
- (BOOL)_tearDownListenerIfNowPlayControllerIsTakenOverByResponse:(id)a3;
- (SFSiriReaderPlaybackControllerDelegate)delegate;
- (void)controller:(id)a3 contentItemsDidUpdate:(id)a4;
- (void)controller:(id)a3 playbackRateDidChangeFrom:(float)a4 to:(float)a5;
- (void)controller:(id)a3 playbackStateDidChangeFrom:(unsigned int)a4 to:(unsigned int)a5;
- (void)pause;
- (void)play;
- (void)setPlaybackRate:(double)a3;
- (void)setupNowPlayingListenerIfNeeded;
- (void)skipBackward;
- (void)skipForward;
- (void)updateContentIdentifierOnQueue:(id)a3 completion:(id)a4;
- (void)updatePlaybackStateWithCompletion:(id)a3;
@end

@implementation SFSiriReaderPlaybackController

+ (SFSiriReaderPlaybackController)sharedPlaybackController
{
  if (sharedPlaybackController_onceToken != -1)
  {
    +[SFSiriReaderPlaybackController sharedPlaybackController];
  }

  v3 = sharedPlaybackController_sharedPlaybackController;

  return v3;
}

void __58__SFSiriReaderPlaybackController_sharedPlaybackController__block_invoke()
{
  v0 = objc_alloc_init(SFSiriReaderPlaybackController);
  v1 = sharedPlaybackController_sharedPlaybackController;
  sharedPlaybackController_sharedPlaybackController = v0;
}

- (void)setupNowPlayingListenerIfNeeded
{
  if (!self->_playbackController)
  {
    v4 = [MEMORY[0x1E69B0A10] localDestination];
    destination = self->_destination;
    self->_destination = v4;

    v6 = [objc_alloc(MEMORY[0x1E69B0A88]) initWithDestination:self->_destination];
    playbackController = self->_playbackController;
    self->_playbackController = v6;

    [(MRNowPlayingController *)self->_playbackController setDelegate:self];
    v8 = self->_playbackController;

    [(MRNowPlayingController *)v8 beginLoadingUpdates];
  }
}

- (void)play
{
  This = WBS_LOG_CHANNEL_PREFIXSiriReadThis();
  if (os_log_type_enabled(This, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_18B7AC000, This, OS_LOG_TYPE_DEFAULT, "Safari requested unpausing playback", v4, 2u);
  }

  [(MRNowPlayingController *)self->_playbackController sendCommand:0 options:0 completion:&__block_literal_global_5];
}

void __38__SFSiriReaderPlaybackController_play__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 error];

  if (v3)
  {
    This = WBS_LOG_CHANNEL_PREFIXSiriReadThis();
    if (os_log_type_enabled(This, OS_LOG_TYPE_ERROR))
    {
      __38__SFSiriReaderPlaybackController_play__block_invoke_cold_1(This);
    }
  }
}

- (void)pause
{
  This = WBS_LOG_CHANNEL_PREFIXSiriReadThis();
  if (os_log_type_enabled(This, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_18B7AC000, This, OS_LOG_TYPE_DEFAULT, "Safari requested pausing playback", v4, 2u);
  }

  [(MRNowPlayingController *)self->_playbackController sendCommand:1 options:0 completion:&__block_literal_global_7];
}

void __39__SFSiriReaderPlaybackController_pause__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 error];

  if (v3)
  {
    This = WBS_LOG_CHANNEL_PREFIXSiriReadThis();
    if (os_log_type_enabled(This, OS_LOG_TYPE_ERROR))
    {
      __39__SFSiriReaderPlaybackController_pause__block_invoke_cold_1(This);
    }
  }
}

- (void)skipForward
{
  This = WBS_LOG_CHANNEL_PREFIXSiriReadThis();
  if (os_log_type_enabled(This, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_18B7AC000, This, OS_LOG_TYPE_DEFAULT, "Safari requested skipping forward playback", v4, 2u);
  }

  [(MRNowPlayingController *)self->_playbackController sendCommand:17 options:0 completion:&__block_literal_global_9];
}

void __45__SFSiriReaderPlaybackController_skipForward__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 error];

  if (v3)
  {
    This = WBS_LOG_CHANNEL_PREFIXSiriReadThis();
    if (os_log_type_enabled(This, OS_LOG_TYPE_ERROR))
    {
      __45__SFSiriReaderPlaybackController_skipForward__block_invoke_cold_1(This);
    }
  }
}

- (void)skipBackward
{
  This = WBS_LOG_CHANNEL_PREFIXSiriReadThis();
  if (os_log_type_enabled(This, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_18B7AC000, This, OS_LOG_TYPE_DEFAULT, "Safari requested skipping backward playback", v4, 2u);
  }

  [(MRNowPlayingController *)self->_playbackController sendCommand:18 options:0 completion:&__block_literal_global_11];
}

void __46__SFSiriReaderPlaybackController_skipBackward__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 error];

  if (v3)
  {
    This = WBS_LOG_CHANNEL_PREFIXSiriReadThis();
    if (os_log_type_enabled(This, OS_LOG_TYPE_ERROR))
    {
      __46__SFSiriReaderPlaybackController_skipBackward__block_invoke_cold_1(This);
    }
  }
}

+ (BOOL)playerResponseIsForSiriReadThis:(id)a3
{
  v3 = a3;
  v4 = [v3 playerPath];
  v5 = [v4 client];
  v6 = [v5 bundleIdentifier];
  v7 = [v6 containsString:@"sirireaderd"];

  if (v7)
  {
    v8 = [v3 playerPath];
    v9 = [v8 client];
    v10 = [v9 parentApplicationBundleIdentifier];
    v11 = [v10 isEqualToString:*MEMORY[0x1E69C8DA8]];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)setPlaybackRate:(double)a3
{
  v15 = *MEMORY[0x1E69E9840];
  This = WBS_LOG_CHANNEL_PREFIXSiriReadThis();
  if (os_log_type_enabled(This, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v14 = a3;
    _os_log_impl(&dword_18B7AC000, This, OS_LOG_TYPE_DEFAULT, "Safari requested changing playback rate to %f", buf, 0xCu);
  }

  playbackController = self->_playbackController;
  v11 = *MEMORY[0x1E69B1188];
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v12 = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __50__SFSiriReaderPlaybackController_setPlaybackRate___block_invoke;
  v10[3] = &__block_descriptor_40_e25_v16__0__MRCommandResult_8l;
  *&v10[4] = a3;
  [(MRNowPlayingController *)playbackController sendCommand:19 options:v8 completion:v10];

  v9 = a3;
  self->_currentPlaybackRate = v9;
}

void __50__SFSiriReaderPlaybackController_setPlaybackRate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 error];

  if (v4)
  {
    This = WBS_LOG_CHANNEL_PREFIXSiriReadThis();
    if (os_log_type_enabled(This, OS_LOG_TYPE_ERROR))
    {
      __50__SFSiriReaderPlaybackController_setPlaybackRate___block_invoke_cold_1(a1, This);
    }
  }
}

- (void)updateContentIdentifierOnQueue:(id)a3 completion:(id)a4
{
  v6 = a4;
  if (v6)
  {
    v7 = MEMORY[0x1E69B0A98];
    v8 = a3;
    v9 = [[v7 alloc] initWithDestination:self->_destination];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __76__SFSiriReaderPlaybackController_updateContentIdentifierOnQueue_completion___block_invoke;
    v10[3] = &unk_1E721B800;
    v11 = v6;
    [v9 requestNowPlayingItemMetadataOnQueue:v8 completion:v10];
  }
}

void __76__SFSiriReaderPlaybackController_updateContentIdentifierOnQueue_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    This = WBS_LOG_CHANNEL_PREFIXSiriReadThis();
    if (os_log_type_enabled(This, OS_LOG_TYPE_ERROR))
    {
      __76__SFSiriReaderPlaybackController_updateContentIdentifierOnQueue_completion___block_invoke_cold_1(This);
    }
  }

  v8 = *(a1 + 32);
  v9 = [v5 contentIdentifier];
  (*(v8 + 16))(v8, v9);
}

- (void)updatePlaybackStateWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E69B0A98]) initWithDestination:self->_destination];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__SFSiriReaderPlaybackController_updatePlaybackStateWithCompletion___block_invoke;
  v7[3] = &unk_1E721B828;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 requestPlaybackStateOnQueue:MEMORY[0x1E69E96A0] completion:v7];
}

uint64_t __68__SFSiriReaderPlaybackController_updatePlaybackStateWithCompletion___block_invoke(uint64_t a1, int a2)
{
  v2 = 2 * (a2 == 2);
  if (a2 == 1)
  {
    v2 = 1;
  }

  *(*(a1 + 32) + 40) = v2;
  return (*(*(a1 + 40) + 16))();
}

- (BOOL)_tearDownListenerIfNowPlayControllerIsTakenOverByResponse:(id)a3
{
  if ([SFSiriReaderPlaybackController playerResponseIsForSiriReadThis:a3])
  {
    return 0;
  }

  nowPlayingContentIdentifier = self->_nowPlayingContentIdentifier;
  v5 = +[SFSiriVoiceUtilities sharedVoiceUtilities];
  v6 = [v5 activeSiriReaderSessionIdentifier];
  LOBYTE(nowPlayingContentIdentifier) = [(NSString *)nowPlayingContentIdentifier isEqualToString:v6];

  if (nowPlayingContentIdentifier)
  {
    return 0;
  }

  [(MRNowPlayingController *)self->_playbackController endLoadingUpdates];
  playbackController = self->_playbackController;
  self->_playbackController = 0;

  self->_currentPlaybackState = 3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained playbackStateDidChangeForSiriReaderPlaybackController:self];
  v10 = self->_nowPlayingContentIdentifier;
  self->_nowPlayingContentIdentifier = 0;

  [WeakRetained playbackContentIdentifierDidChangeForSiriReaderPlaybackController:self];
  return 1;
}

- (void)controller:(id)a3 playbackStateDidChangeFrom:(unsigned int)a4 to:(unsigned int)a5
{
  v7 = [a3 response];
  v8 = [(SFSiriReaderPlaybackController *)self _tearDownListenerIfNowPlayControllerIsTakenOverByResponse:v7];

  if (v8)
  {
    return;
  }

  if (a5 != 2)
  {
    v9 = 0;
    goto LABEL_6;
  }

  if (self->_currentPlaybackState != 3)
  {
    v9 = 2;
LABEL_6:
    if (a5 == 1)
    {
      v9 = 1;
    }

    self->_currentPlaybackState = v9;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained playbackStateDidChangeForSiriReaderPlaybackController:self];
}

- (void)controller:(id)a3 playbackRateDidChangeFrom:(float)a4 to:(float)a5
{
  v7 = a3;
  if (self->_currentPlaybackRate != a5)
  {
    v10 = v7;
    v8 = [v7 response];
    v9 = [(SFSiriReaderPlaybackController *)self _tearDownListenerIfNowPlayControllerIsTakenOverByResponse:v8];

    v7 = v10;
    if (!v9)
    {
      self->_currentPlaybackRate = a5;
    }
  }
}

- (void)controller:(id)a3 contentItemsDidUpdate:(id)a4
{
  v13 = a3;
  v6 = a4;
  nowPlayingContentIdentifier = self->_nowPlayingContentIdentifier;
  v8 = [v6 objectAtIndexedSubscript:0];
  LOBYTE(nowPlayingContentIdentifier) = [(NSString *)nowPlayingContentIdentifier isEqualToString:v8];

  if ((nowPlayingContentIdentifier & 1) == 0)
  {
    v9 = [v13 response];
    [(SFSiriReaderPlaybackController *)self _tearDownListenerIfNowPlayControllerIsTakenOverByResponse:v9];

    v10 = [v6 objectAtIndexedSubscript:0];
    v11 = self->_nowPlayingContentIdentifier;
    self->_nowPlayingContentIdentifier = v10;

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained playbackContentIdentifierDidChangeForSiriReaderPlaybackController:self];
  }
}

- (SFSiriReaderPlaybackControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __38__SFSiriReaderPlaybackController_play__block_invoke_cold_1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1() error];
  v4 = [v3 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
}

void __39__SFSiriReaderPlaybackController_pause__block_invoke_cold_1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1() error];
  v4 = [v3 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
}

void __45__SFSiriReaderPlaybackController_skipForward__block_invoke_cold_1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1() error];
  v4 = [v3 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
}

void __46__SFSiriReaderPlaybackController_skipBackward__block_invoke_cold_1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1() error];
  v4 = [v3 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
}

void __50__SFSiriReaderPlaybackController_setPlaybackRate___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [OUTLINED_FUNCTION_1() error];
  v10 = [v4 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void __76__SFSiriReaderPlaybackController_updateContentIdentifierOnQueue_completion___block_invoke_cold_1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

@end