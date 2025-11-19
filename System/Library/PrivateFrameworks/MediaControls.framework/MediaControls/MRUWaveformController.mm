@interface MRUWaveformController
- (CGSize)artworkFittingSize;
- (MRUWaveformController)init;
- (MRUWaveformControllerDelegate)delegate;
- (void)controller:(id)a3 playerPathDidChange:(id)a4;
- (void)dealloc;
- (void)nowPlayingController:(id)a3 endpointController:(id)a4 didChangeRoute:(id)a5;
- (void)nowPlayingController:(id)a3 metadataController:(id)a4 didChangeNowPlayingInfo:(id)a5;
- (void)routeDidUpdateNotification:(id)a3;
- (void)setArtworkImage:(id)a3;
- (void)setEndpointRoute:(id)a3;
- (void)setNowPlayingController:(id)a3;
- (void)setNowPlayingPID:(int)a3;
- (void)setPlaying:(BOOL)a3;
- (void)setRouteSupportsWaveform:(BOOL)a3;
- (void)setVisible:(BOOL)a3;
- (void)setWaveform:(id)a3;
- (void)updateAnalyzer;
- (void)updateImage:(id)a3;
- (void)updateRoute:(id)a3;
@end

@implementation MRUWaveformController

- (MRUWaveformController)init
{
  v19.receiver = self;
  v19.super_class = MRUWaveformController;
  v2 = [(MRUWaveformController *)&v19 init];
  if (v2)
  {
    v3 = +[MRUWaveformData zero];
    waveform = v2->_waveform;
    v2->_waveform = v3;

    __asm { FMOV            V0.2D, #30.0 }

    v2->_artworkFittingSize = _Q0;
    v10 = objc_alloc(MEMORY[0x1E69B0A90]);
    v11 = [MEMORY[0x1E69B0A10] proactiveDestination];
    v12 = [v10 initWithDestination:v11];

    v13 = [(MRNowPlayingController *)v2->_mrNowPlayingController configuration];
    [v13 setRequestPlaybackQueue:0];

    v14 = [(MRNowPlayingController *)v2->_mrNowPlayingController configuration];
    [v14 setRequestPlaybackState:0];

    v15 = [(MRNowPlayingController *)v2->_mrNowPlayingController configuration];
    [v15 setRequestSupportedCommands:0];

    v16 = [objc_alloc(MEMORY[0x1E69B0A88]) initWithConfiguration:v12];
    mrNowPlayingController = v2->_mrNowPlayingController;
    v2->_mrNowPlayingController = v16;

    [(MRNowPlayingController *)v2->_mrNowPlayingController setDelegate:v2];
    [(MRNowPlayingController *)v2->_mrNowPlayingController beginLoadingUpdates];
  }

  return v2;
}

- (void)dealloc
{
  [(MRUAudioAnalyzer *)self->_audioAnalyzer removeObserver:self];
  v3.receiver = self;
  v3.super_class = MRUWaveformController;
  [(MRUWaveformController *)&v3 dealloc];
}

- (void)updateAnalyzer
{
  v20 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v3 = [MEMORY[0x1E69B0B08] currentSettings];
  v4 = [v3 staticWaveform];

  if (v4)
  {
    if (self->_playing)
    {
      +[MRUWaveformData staticData];
    }

    else
    {
      +[MRUWaveformData zero];
    }
    v15 = ;
    [(MRUWaveformController *)self setWaveform:?];
  }

  else if (self->_playing && self->_visible && self->_routeSupportsWaveform && self->_nowPlayingPID)
  {
    if ([(MRUAudioAnalyzer *)self->_audioAnalyzer pid]!= self->_nowPlayingPID)
    {
      v5 = MCLogCategoryWaveform();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        nowPlayingPID = self->_nowPlayingPID;
        *buf = 138412546;
        v17 = self;
        v18 = 1024;
        LODWORD(v19) = nowPlayingPID;
        _os_log_impl(&dword_1A20FC000, v5, OS_LOG_TYPE_DEFAULT, "%@ Creating new audio analyzer for PID: %u", buf, 0x12u);
      }

      [(MRUAudioAnalyzer *)self->_audioAnalyzer removeObserver:self];
      self->_isAnalyzingAudio = 0;
      v7 = [MRUAudioAnalyzer audioAnalyzerForPID:self->_nowPlayingPID];
      audioAnalyzer = self->_audioAnalyzer;
      self->_audioAnalyzer = v7;
    }

    if (!self->_isAnalyzingAudio)
    {
      v9 = +[MRUWaveformData zero];
      [(MRUWaveformController *)self setWaveform:v9];

      v10 = MCLogCategoryWaveform();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = self->_audioAnalyzer;
        *buf = 138412546;
        v17 = self;
        v18 = 2112;
        v19 = v11;
        _os_log_impl(&dword_1A20FC000, v10, OS_LOG_TYPE_DEFAULT, "%@ Starting audio analyzer: %@", buf, 0x16u);
      }

      [(MRUAudioAnalyzer *)self->_audioAnalyzer addObserver:self];
      self->_isAnalyzingAudio = 1;
    }
  }

  else if (self->_audioAnalyzer && self->_isAnalyzingAudio)
  {
    v12 = MCLogCategoryWaveform();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = self->_audioAnalyzer;
      *buf = 138412546;
      v17 = self;
      v18 = 2112;
      v19 = v13;
      _os_log_impl(&dword_1A20FC000, v12, OS_LOG_TYPE_DEFAULT, "%@ Stopping audio analyzer: %@", buf, 0x16u);
    }

    [(MRUAudioAnalyzer *)self->_audioAnalyzer removeObserver:self];
    self->_isAnalyzingAudio = 0;
    v14 = +[MRUWaveformData zero];
    [(MRUWaveformController *)self setWaveform:v14];
  }
}

- (void)setNowPlayingController:(id)a3
{
  v5 = a3;
  nowPlayingController = self->_nowPlayingController;
  if (nowPlayingController != v5)
  {
    v11 = v5;
    [(MRUNowPlayingController *)nowPlayingController removeObserver:self];
    objc_storeStrong(&self->_nowPlayingController, a3);
    v7 = [(MRUNowPlayingController *)v11 metadataController];
    v8 = [v7 nowPlayingInfo];
    -[MRUWaveformController setPlaying:](self, "setPlaying:", [v8 isPlaying]);

    v9 = [(MRUNowPlayingController *)v11 endpointController];
    v10 = [v9 route];
    [(MRUWaveformController *)self setEndpointRoute:v10];

    nowPlayingController = [(MRUNowPlayingController *)v11 addObserver:self];
    v5 = v11;
  }

  MEMORY[0x1EEE66BB8](nowPlayingController, v5);
}

- (void)setNowPlayingPID:(int)a3
{
  v13 = *MEMORY[0x1E69E9840];
  if (self->_nowPlayingPID != a3)
  {
    v5 = MCLogCategoryWaveform();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      nowPlayingPID = self->_nowPlayingPID;
      v7 = 138412802;
      v8 = self;
      v9 = 1024;
      v10 = nowPlayingPID;
      v11 = 1024;
      v12 = a3;
      _os_log_impl(&dword_1A20FC000, v5, OS_LOG_TYPE_DEFAULT, "%@ nowPlaying PID changing from: %u to: %u", &v7, 0x18u);
    }

    self->_nowPlayingPID = a3;
    [(MRUWaveformController *)self updateAnalyzer];
  }
}

- (void)setVisible:(BOOL)a3
{
  v11 = *MEMORY[0x1E69E9840];
  if (self->_visible != a3)
  {
    v3 = a3;
    self->_visible = a3;
    v5 = MCLogCategoryWaveform();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412546;
      v8 = self;
      v9 = 1024;
      v10 = v3;
      _os_log_impl(&dword_1A20FC000, v5, OS_LOG_TYPE_DEFAULT, "%@ isVisible changed to: %u", &v7, 0x12u);
    }

    [(MRUWaveformController *)self updateRoute:self->_endpointRoute];
    [(MRUWaveformController *)self updateAnalyzer];
    v6 = [(MRUWaveformController *)self nowPlayingController];
    [v6 updateAutomaticResponseLoading];
  }
}

- (void)setPlaying:(BOOL)a3
{
  v10 = *MEMORY[0x1E69E9840];
  if (self->_playing != a3)
  {
    v3 = a3;
    self->_playing = a3;
    v5 = MCLogCategoryWaveform();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412546;
      v7 = self;
      v8 = 1024;
      v9 = v3;
      _os_log_impl(&dword_1A20FC000, v5, OS_LOG_TYPE_DEFAULT, "%@ isPlaying changed to: %u", &v6, 0x12u);
    }

    [(MRUWaveformController *)self updateAnalyzer];
  }
}

- (void)setWaveform:(id)a3
{
  objc_storeStrong(&self->_waveform, a3);
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained waveformController:self waveformDidChange:v5];
}

- (void)setRouteSupportsWaveform:(BOOL)a3
{
  v10 = *MEMORY[0x1E69E9840];
  if (self->_routeSupportsWaveform != a3)
  {
    v3 = a3;
    self->_routeSupportsWaveform = a3;
    v5 = MCLogCategoryWaveform();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412546;
      v7 = self;
      v8 = 1024;
      v9 = v3;
      _os_log_impl(&dword_1A20FC000, v5, OS_LOG_TYPE_DEFAULT, "%@ routeSupportsWaveform changed to: %{BOOL}u", &v6, 0x12u);
    }

    [(MRUWaveformController *)self updateAnalyzer];
  }
}

- (void)setArtworkImage:(id)a3
{
  objc_storeStrong(&self->_artworkImage, a3);
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained waveformController:self artworkImageDidChange:v5];
}

- (void)setEndpointRoute:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (self->_endpointRoute != v5)
  {
    objc_storeStrong(&self->_endpointRoute, a3);
    v6 = MCLogCategoryWaveform();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412546;
      v11 = self;
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&dword_1A20FC000, v6, OS_LOG_TYPE_DEFAULT, "%@ endpointRoute changed to: %@", &v10, 0x16u);
    }

    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    v8 = *MEMORY[0x1E696F860];
    [v7 removeObserver:self name:*MEMORY[0x1E696F860] object:0];

    [(MRUWaveformController *)self updateRoute:v5];
    if (v5)
    {
      v9 = [MEMORY[0x1E696AD88] defaultCenter];
      [v9 addObserver:self selector:sel_routeDidUpdateNotification_ name:v8 object:v5];
    }
  }
}

- (void)routeDidUpdateNotification:(id)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__MRUWaveformController_routeDidUpdateNotification___block_invoke;
  block[3] = &unk_1E7663898;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)updateRoute:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v5 = MCLogCategoryWaveform();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v22 = self;
    v23 = 2112;
    v24 = v4;
    _os_log_impl(&dword_1A20FC000, v5, OS_LOG_TYPE_INFO, "%@ updating info from route: %@", buf, 0x16u);
  }

  v6 = [v4 endpointObject];
  v7 = [v6 outputDevices];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = 0;
    v12 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v16 + 1) + 8 * i);
        if ([v14 isLocalDevice])
        {
          if ([v14 deviceSubtype] == 14 || objc_msgSend(v14, "deviceType") == 3)
          {
            v10 = 1;
          }
        }

        else
        {
          v11 = 1;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
    v15 = (v11 | v10) ^ 1;
  }

  else
  {
    v15 = 1;
  }

  [(MRUWaveformController *)self setRouteSupportsWaveform:v15 & 1];
}

- (void)updateImage:(id)a3
{
  v4 = [MRUImageUtilities formatImage:a3 forDisplayAtSize:self->_artworkFittingSize.width, self->_artworkFittingSize.height];
  [(MRUWaveformController *)self setArtworkImage:v4];
}

- (void)controller:(id)a3 playerPathDidChange:(id)a4
{
  v5 = [a4 client];
  v6 = [v5 processIdentifier];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__MRUWaveformController_controller_playerPathDidChange___block_invoke;
  v7[3] = &unk_1E7664308;
  v7[4] = self;
  v8 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

- (void)nowPlayingController:(id)a3 metadataController:(id)a4 didChangeNowPlayingInfo:(id)a5
{
  v6 = a5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __89__MRUWaveformController_nowPlayingController_metadataController_didChangeNowPlayingInfo___block_invoke;
  v8[3] = &unk_1E76639D0;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], v8);
}

void __89__MRUWaveformController_nowPlayingController_metadataController_didChangeNowPlayingInfo___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setPlaying:{objc_msgSend(*(a1 + 40), "isPlaying")}];
  v2 = [*(a1 + 40) identifier];
  v3 = [v2 isEqual:*(*(a1 + 32) + 72)];

  if ((v3 & 1) == 0)
  {
    v4 = [*(a1 + 40) identifier];
    v5 = *(a1 + 32);
    v6 = *(v5 + 72);
    *(v5 + 72) = v4;

    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 40));
    [WeakRetained waveformControllerTrackDidChange:*(a1 + 32)];
  }
}

- (void)nowPlayingController:(id)a3 endpointController:(id)a4 didChangeRoute:(id)a5
{
  v6 = a5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __80__MRUWaveformController_nowPlayingController_endpointController_didChangeRoute___block_invoke;
  v8[3] = &unk_1E76639D0;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], v8);
}

- (MRUWaveformControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGSize)artworkFittingSize
{
  width = self->_artworkFittingSize.width;
  height = self->_artworkFittingSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end