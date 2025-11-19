@interface CSPlaybackManager
- (BOOL)isPlaying;
- (CSPlaybackManager)init;
- (MPCPlayerResponseTracklist)tracklist;
- (NSString)currentValueText;
- (NSString)maxValueText;
- (float)currentValue;
- (float)maxValue;
- (float)minValue;
- (id)_stringFromSeconds:(float)a3;
- (void)_handleNewPlaybackState:(id)a3;
- (void)_sendRequest:(id)a3;
- (void)_setupMediaPlayerResponseController;
- (void)addObserver:(id)a3;
- (void)backward;
- (void)controller:(id)a3 defersResponseReplacement:(id)a4;
- (void)forward;
- (void)pause;
- (void)play;
- (void)removeObserver:(id)a3;
- (void)setVocalAttenuationLevel:(double)a3;
@end

@implementation CSPlaybackManager

- (CSPlaybackManager)init
{
  v6.receiver = self;
  v6.super_class = CSPlaybackManager;
  v2 = [(CSPlaybackManager *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = v3;

    [(CSPlaybackManager *)v2 _setupMediaPlayerResponseController];
  }

  return v2;
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  [(NSHashTable *)v5->_observers addObject:v4];
  if (v5->_currentState)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __33__CSPlaybackManager_addObserver___block_invoke;
    v6[3] = &unk_278E0AD78;
    v7 = v4;
    v8 = v5;
    dispatch_async(MEMORY[0x277D85CD0], v6);
  }

  objc_sync_exit(v5);
}

uint64_t __33__CSPlaybackManager_addObserver___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = *(a1 + 32);
    v5 = *(*(a1 + 40) + 40);

    return [v4 playbackManager:? didUpdateState:?];
  }

  return result;
}

- (void)removeObserver:(id)a3
{
  v5 = a3;
  v4 = self;
  objc_sync_enter(v4);
  [(NSHashTable *)v4->_observers removeObject:v5];
  objc_sync_exit(v4);
}

- (MPCPlayerResponseTracklist)tracklist
{
  v2 = [(MPRequestResponseController *)self->_mediaPlayerResponseController response];
  v3 = [v2 tracklist];

  return v3;
}

- (void)play
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v3 = ContinuitySingLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[CSPlaybackManager play]";
    _os_log_impl(&dword_2441FB000, v3, OS_LOG_TYPE_DEFAULT, "%s: Requesting play", &v6, 0xCu);
  }

  v4 = [(MPRequestResponseController *)self->_mediaPlayerResponseController response];
  v5 = [v4 play];

  [(CSPlaybackManager *)self _sendRequest:v5];
}

- (void)pause
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v3 = ContinuitySingLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[CSPlaybackManager pause]";
    _os_log_impl(&dword_2441FB000, v3, OS_LOG_TYPE_DEFAULT, "%s: Requesting pause", &v6, 0xCu);
  }

  v4 = [(MPRequestResponseController *)self->_mediaPlayerResponseController response];
  v5 = [v4 pause];

  [(CSPlaybackManager *)self _sendRequest:v5];
}

- (void)forward
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v3 = ContinuitySingLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[CSPlaybackManager forward]";
    _os_log_impl(&dword_2441FB000, v3, OS_LOG_TYPE_DEFAULT, "%s: Requesting forward", &v8, 0xCu);
  }

  v4 = [(MPRequestResponseController *)self->_mediaPlayerResponseController response];
  v5 = [v4 tracklist];
  v6 = [v5 changeItemCommand];
  v7 = [v6 nextItem];

  [(CSPlaybackManager *)self _sendRequest:v7];
}

- (void)backward
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v3 = ContinuitySingLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[CSPlaybackManager backward]";
    _os_log_impl(&dword_2441FB000, v3, OS_LOG_TYPE_DEFAULT, "%s: Requesting back", &v8, 0xCu);
  }

  v4 = [(MPRequestResponseController *)self->_mediaPlayerResponseController response];
  v5 = [v4 tracklist];
  v6 = [v5 changeItemCommand];
  v7 = [v6 previousItem];

  [(CSPlaybackManager *)self _sendRequest:v7];
}

- (void)setVocalAttenuationLevel:(double)a3
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v5 = [(MPRequestResponseController *)self->_mediaPlayerResponseController response];
  v6 = [v5 tracklist];
  v7 = [v6 vocalsControlCommand];

  if (([v7 isActive] & 1) == 0)
  {
    v8 = [v7 activateVocalsControl:1];
    [(CSPlaybackManager *)self _sendRequest:v8];
  }

  [v7 minLevel];
  v10 = v9;
  [v7 maxLevel];
  v12 = v11;
  v13 = v10;
  if (v11 != v10)
  {
    v14 = a3;
    v15 = fmax(fmin(v14, 1.0), 0.0);
    v13 = v10 + (v15 * (v12 - v10));
  }

  v16 = ContinuitySingLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 136316162;
    v20 = "[CSPlaybackManager setVocalAttenuationLevel:]";
    v21 = 2048;
    v22 = a3;
    v23 = 2048;
    v24 = v13;
    v25 = 2048;
    v26 = v10;
    v27 = 2048;
    v28 = v12;
    _os_log_impl(&dword_2441FB000, v16, OS_LOG_TYPE_DEFAULT, "%s: Setting unit level to %f with mediaVocalLevel %f, min %f and max %f", &v19, 0x34u);
  }

  *&v17 = v13;
  v18 = [v7 setVocalsLevel:v17];
  [(CSPlaybackManager *)self _sendRequest:v18];
}

- (void)_handleNewPlaybackState:(id)a3
{
  v5 = a3;
  [(CSPlaybackManager *)self willChangeValueForKey:@"playing"];
  objc_storeStrong(&self->_currentState, a3);
  [(CSPlaybackManager *)self didChangeValueForKey:@"playing"];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [(NSHashTable *)self->_observers copy];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 playbackManager:self didUpdateState:v5];
        }

        if (objc_opt_respondsToSelector())
        {
          v12 = [(CSPlaybackManager *)self tracklist];
          [v11 playbackManager:self didUpdateTracklist:v12];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v13 count:16];
    }

    while (v8);
  }
}

- (void)_setupMediaPlayerResponseController
{
  v3 = objc_alloc_init(MEMORY[0x277CD6030]);
  mediaPlayerResponseController = self->_mediaPlayerResponseController;
  self->_mediaPlayerResponseController = v3;

  [(MPRequestResponseController *)self->_mediaPlayerResponseController setDelegate:self];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __56__CSPlaybackManager__setupMediaPlayerResponseController__block_invoke;
  v5[3] = &unk_278E0ADA0;
  v5[4] = self;
  [MEMORY[0x277CD5D40] getActiveRouteWithCompletion:v5];
}

void __56__CSPlaybackManager__setupMediaPlayerResponseController__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__CSPlaybackManager__setupMediaPlayerResponseController__block_invoke_2;
  v6[3] = &unk_278E0AD78;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __56__CSPlaybackManager__setupMediaPlayerResponseController__block_invoke_2(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277D278E8]);
  v3 = [MEMORY[0x277D278D8] systemMusicPathWithRoute:*(a1 + 32) playerID:@"Music"];
  [v2 setPlayerPath:v3];

  v4 = objc_alloc(MEMORY[0x277CD6010]);
  v5 = *MEMORY[0x277CD5B10];
  v25[0] = *MEMORY[0x277CD5B00];
  v25[1] = v5;
  v6 = *MEMORY[0x277CD5B28];
  v25[2] = *MEMORY[0x277CD5B58];
  v25[3] = v6;
  v25[4] = v25[0];
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:5];
  v23[0] = *MEMORY[0x277CD5C00];
  v8 = MEMORY[0x277CD6010];
  v22 = *MEMORY[0x277CD5978];
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];
  v10 = [v8 propertySetWithProperties:v9];
  v24[0] = v10;
  v23[1] = *MEMORY[0x277CD5BF8];
  v11 = MEMORY[0x277CD6010];
  v21 = *MEMORY[0x277CD5968];
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
  v13 = [v11 propertySetWithProperties:v12];
  v24[1] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];
  v15 = [v4 initWithProperties:v7 relationships:v14];

  v16 = objc_alloc(MEMORY[0x277CD6010]);
  v19 = *MEMORY[0x277CD5BA8];
  v20 = v15;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  v18 = [v16 initWithProperties:0 relationships:v17];

  [v2 setQueueItemProperties:v18];
  [v2 setPlayingItemProperties:v18];
  [v2 setTracklistRange:{0, 99}];
  [*(*(a1 + 40) + 16) setRequest:v2];
  [*(*(a1 + 40) + 16) beginAutomaticResponseLoading];
}

- (void)_sendRequest:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = MEMORY[0x277D278B8];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __34__CSPlaybackManager__sendRequest___block_invoke;
    v7[3] = &unk_278E0ADC8;
    v8 = v3;
    [v5 performRequest:v8 completion:v7];
    v6 = v8;
  }

  else
  {
    v6 = ContinuitySingLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [CSPlaybackManager _sendRequest:v6];
    }
  }
}

void __34__CSPlaybackManager__sendRequest___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ContinuitySingLog();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __34__CSPlaybackManager__sendRequest___block_invoke_cold_1(a1, v3, v5);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = 136315394;
    v8 = "[CSPlaybackManager _sendRequest:]_block_invoke";
    v9 = 2112;
    v10 = v6;
    _os_log_impl(&dword_2441FB000, v5, OS_LOG_TYPE_DEFAULT, "%s: Request completed. Request: %@", &v7, 0x16u);
  }
}

- (void)controller:(id)a3 defersResponseReplacement:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__CSPlaybackManager_controller_defersResponseReplacement___block_invoke;
  block[3] = &unk_278E0ADF0;
  v11 = v6;
  v12 = v7;
  block[4] = self;
  v8 = v6;
  v9 = v7;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __58__CSPlaybackManager_controller_defersResponseReplacement___block_invoke(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();
  v2 = [*(a1 + 40) response];
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;

  v5 = [MEMORY[0x277CBEAA8] now];
  v6 = *(a1 + 32);
  v7 = *(v6 + 32);
  *(v6 + 32) = v5;

  v8 = [*(*(a1 + 32) + 24) tracklist];
  v9 = objc_alloc_init(CSPlaybackState);
  v10 = [v8 playingItem];
  v11 = [v10 metadataObject];
  v12 = [v11 type];

  if (v12 == 1)
  {
    v13 = [v8 playingItem];
    v14 = [v13 metadataObject];
    v15 = [v14 song];
    [(CSPlaybackState *)v9 setCurrentSong:v15];
  }

  v16 = [v8 playingItemIndexPath];

  if (v16)
  {
    v17 = [*(*(a1 + 32) + 24) state];
  }

  else
  {
    v17 = 1;
  }

  [(CSPlaybackState *)v9 setPlayerState:v17];
  v18 = [v8 vocalsControlCommand];
  [(CSPlaybackState *)v9 setVocalAttenuationIsAvailable:v18 != 0];
  if ([v18 isActive])
  {
    [v18 level];
    v20 = v19;
    [v18 minLevel];
    v22 = v21;
    [v18 maxLevel];
    v24 = v23;
    v25 = 0.0;
    if (v23 != v22)
    {
      v25 = ((fmaxf(v22, fminf(v20, v23)) - v22) / (v23 - v22));
    }

    v26 = ContinuitySingLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v29 = 136316162;
      v30 = "[CSPlaybackManager controller:defersResponseReplacement:]_block_invoke";
      v31 = 2048;
      v32 = v20;
      v33 = 2048;
      v34 = v22;
      v35 = 2048;
      v36 = v24;
      v37 = 2048;
      v38 = v25;
      _os_log_impl(&dword_2441FB000, v26, OS_LOG_TYPE_DEFAULT, "%s: Received mediaVocalLevel %f with min %f, max %f and unit level %f", &v29, 0x34u);
    }

    v27 = v9;
    v28 = v25;
  }

  else
  {
    v28 = 1.0;
    v27 = v9;
  }

  [(CSPlaybackState *)v27 setVocalAttenuationLevel:v28];
  [*(a1 + 32) _handleNewPlaybackState:v9];
}

- (BOOL)isPlaying
{
  v2 = [(CSPlaybackManager *)self currentState];
  v3 = [v2 playerState] == 2;

  return v3;
}

- (float)minValue
{
  v2 = [(MPCPlayerResponse *)self->_currentResponse tracklist];
  v3 = [v2 playingItem];
  v4 = v3;
  if (v3)
  {
    [v3 duration];
    v5 = v7;
  }

  else
  {
    v5 = 0.0;
  }

  return v5;
}

- (float)maxValue
{
  [(CSPlaybackManager *)self minValue];
  v4 = v3;
  v5 = [(MPCPlayerResponse *)self->_currentResponse tracklist];
  v6 = [v5 playingItem];
  v7 = v6;
  if (v6)
  {
    [v6 duration];
    v8 = v11;
  }

  else
  {
    v8 = 0.0;
  }

  v9 = v8 + v4;

  return v9;
}

- (float)currentValue
{
  v3 = 0.0;
  if ([(CSPlaybackManager *)self isPlaying])
  {
    v4 = [MEMORY[0x277CBEAA8] now];
    [v4 timeIntervalSinceDate:self->_responseDate];
    v3 = v5;
  }

  [(CSPlaybackManager *)self minValue];
  v7 = v6;
  v8 = [(MPCPlayerResponse *)self->_currentResponse tracklist];
  v9 = [v8 playingItem];
  v10 = v9;
  if (v9)
  {
    [v9 duration];
    v11 = v15;
  }

  else
  {
    v11 = 0.0;
  }

  if (!self->_responseDate)
  {
    return 0.0;
  }

  v12 = v11 + v7;
  v13 = v3 + v12;
  [(CSPlaybackManager *)self maxValue];
  if (v13 < result)
  {
    return v13;
  }

  return result;
}

- (NSString)currentValueText
{
  [(CSPlaybackManager *)self currentValue];

  return [(CSPlaybackManager *)self _stringFromSeconds:?];
}

- (NSString)maxValueText
{
  v3 = MEMORY[0x277CCACA8];
  [(CSPlaybackManager *)self maxValue];
  v5 = v4;
  [(CSPlaybackManager *)self currentValue];
  *&v7 = v5 - v6;
  v8 = [(CSPlaybackManager *)self _stringFromSeconds:v7];
  v9 = [v3 stringWithFormat:@"-%@", v8];

  return v9;
}

- (id)_stringFromSeconds:(float)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v4 setDateFormat:@"m:ss"];
  v5 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v5 setMinute:v3 / 60];
  [v5 setSecond:v3 % 60];
  v6 = [MEMORY[0x277CBEA80] currentCalendar];
  v7 = [v6 dateFromComponents:v5];
  v8 = [v4 stringFromDate:v7];

  return v8;
}

- (void)_sendRequest:(os_log_t)log .cold.1(os_log_t log)
{
  v1 = 136315138;
  v2 = "[CSPlaybackManager _sendRequest:]";
  _os_log_error_impl(&dword_2441FB000, log, OS_LOG_TYPE_ERROR, "%s: Request is nil!", &v1, 0xCu);
}

void __34__CSPlaybackManager__sendRequest___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 32);
  v4 = 136315650;
  v5 = "[CSPlaybackManager _sendRequest:]_block_invoke";
  v6 = 2112;
  v7 = v3;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&dword_2441FB000, log, OS_LOG_TYPE_ERROR, "%s: error performing request: %@ error: %@", &v4, 0x20u);
}

@end