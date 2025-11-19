@interface MRUMediaSuggestionsController
- (MRUMediaSuggestionsController)initWithEndpointController:(id)a3 metadataController:(id)a4 dataSource:(id)a5;
- (MRUMediaSuggestionsControllerDelegate)delegate;
- (void)metadataController:(id)a3 didChangeNowPlayingInfo:(id)a4;
- (void)playSuggestion:(id)a3 completion:(id)a4;
- (void)setContext:(id)a3;
- (void)setIsQueueHandoffActive:(BOOL)a3;
- (void)setMediaSuggestions:(id)a3;
- (void)updateLastPlayedDate;
- (void)updateMediaSuggestions;
- (void)updatePlayingState;
@end

@implementation MRUMediaSuggestionsController

- (MRUMediaSuggestionsController)initWithEndpointController:(id)a3 metadataController:(id)a4 dataSource:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v20.receiver = self;
  v20.super_class = MRUMediaSuggestionsController;
  v12 = [(MRUMediaSuggestionsController *)&v20 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_endpointController, a3);
    if ([v9 updatesActiveEndpointInPlace])
    {
      [(MRUEndpointController *)v13->_endpointController addObserver:v13];
    }

    objc_storeStrong(&v13->_metadataController, a4);
    [(MRUMetadataController *)v13->_metadataController addObserver:v13];
    objc_storeStrong(&v13->_dataSource, a5);
    [(MRUMediaSuggestionsDataSource *)v13->_dataSource setDelegate:v13];
    v14 = dispatch_queue_create("com.apple.MediaControls.MRUMediaSuggestionsController/requestQueue", 0);
    requestQueue = v13->_requestQueue;
    v13->_requestQueue = v14;

    objc_storeStrong(&v13->_context, *MEMORY[0x1E69B0978]);
    v16 = +[MRULockScreenMonitor sharedMonitor];
    lockscreenMonitor = v13->_lockscreenMonitor;
    v13->_lockscreenMonitor = v16;

    [(MRULockScreenMonitor *)v13->_lockscreenMonitor addObserver:v13];
    v18 = [v10 nowPlayingInfo];
    v13->_isPlaying = [v18 isPlaying];

    [(MRUMediaSuggestionsController *)v13 updateLastPlayedDate];
  }

  return v13;
}

- (void)setContext:(id)a3
{
  v5 = a3;
  if (![(NSString *)self->_context isEqualToString:?])
  {
    objc_storeStrong(&self->_context, a3);
    [(MRUMediaSuggestionsController *)self updateMediaSuggestions];
  }
}

- (void)setIsQueueHandoffActive:(BOOL)a3
{
  if (self->_isQueueHandoffActive != a3)
  {
    self->_isQueueHandoffActive = a3;
    [(MRUMediaSuggestionsController *)self updateMediaSuggestions];
  }
}

- (void)setMediaSuggestions:(id)a3
{
  v6 = a3;
  if (![(NSArray *)self->_mediaSuggestions isEqualToArray:?])
  {
    objc_storeStrong(&self->_mediaSuggestions, a3);
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained mediaSuggestionsController:self didChangeMediaSuggestions:v6];
  }
}

- (void)playSuggestion:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MRUEndpointController *)self->_endpointController route];
  v9 = [v8 endpoint];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __59__MRUMediaSuggestionsController_playSuggestion_completion___block_invoke;
  v12[3] = &unk_1E7666370;
  v12[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  [v11 playOnEndpoint:v9 completion:v12];
}

void __59__MRUMediaSuggestionsController_playSuggestion_completion___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = MCLogCategoryDefault();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = objc_opt_class();
      v6 = *(a1 + 40);
      *buf = 138543874;
      v11 = v5;
      v12 = 2114;
      v13 = v6;
      v14 = 2114;
      v15 = v3;
      _os_log_impl(&dword_1A20FC000, v4, OS_LOG_TYPE_ERROR, "%{public}@ Error trying to play suggestion: %{public}@ error: %{public}@", buf, 0x20u);
    }
  }

  if (*(a1 + 48))
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __59__MRUMediaSuggestionsController_playSuggestion_completion___block_invoke_1;
    v7[3] = &unk_1E7663FD8;
    v9 = *(a1 + 48);
    v8 = v3;
    dispatch_async(MEMORY[0x1E69E96A0], v7);
  }
}

- (void)metadataController:(id)a3 didChangeNowPlayingInfo:(id)a4
{
  [(MRUMediaSuggestionsController *)self updatePlayingState:a3];

  [(MRUMediaSuggestionsController *)self updateMediaSuggestions];
}

- (void)updatePlayingState
{
  v3 = [(MRUMetadataController *)self->_metadataController nowPlayingInfo];
  v4 = v3;
  v8 = v3;
  if (self->_isPlaying)
  {
    v5 = [v3 isPlaying];
    v4 = v8;
    if ((v5 & 1) == 0)
    {
      v6 = [MEMORY[0x1E695DF00] now];
      lastPlayingDate = self->_lastPlayingDate;
      self->_lastPlayingDate = v6;

      v4 = v8;
    }
  }

  self->_isPlaying = [v4 isPlaying];
}

- (void)updateMediaSuggestions
{
  v49 = *MEMORY[0x1E69E9840];
  v3 = [(MRUMetadataController *)self->_metadataController nowPlayingInfo];
  v4 = [(MRUMediaSuggestionsDataSource *)self->_dataSource mediaSuggestions];
  v5 = [v4 objectForKeyedSubscript:self->_context];
  v6 = [v5 copy];

  v7 = [v6 count];
  lastPlayingDate = self->_lastPlayingDate;
  if (lastPlayingDate)
  {
    [(NSDate *)lastPlayingDate timeIntervalSinceNow];
    v10 = -v9 >= 480.0;
  }

  else
  {
    v10 = 0;
  }

  if ([(MRUEndpointController *)self->_endpointController isEndpointDiscovered])
  {
    v30 = [(MRUEndpointController *)self->_endpointController state]== 3;
  }

  else
  {
    v30 = 0;
  }

  v11 = [(MRULockScreenMonitor *)self->_lockscreenMonitor isDeviceLocked];
  v12 = [v3 isPlaying];
  v13 = [v3 showPlaceholder];
  isQueueHandoffActive = self->_isQueueHandoffActive;
  v15 = +[MRUFeatureFlagProvider isMediaSuggestionsDevEnabled];
  v29 = v7;
  v16 = !v11;
  v17 = v15 || v10;
  v18 = v7 >= 4 || v15;
  v19 = 0;
  if (v16)
  {
    v20 = isQueueHandoffActive | ~v18;
  }

  else
  {
    v20 = isQueueHandoffActive | ~MRUseInternalUI() | ~v18;
  }

  if (((v20 | v12) & 1) == 0 && v30)
  {
    if ((v17 | v13))
    {
      v19 = v6;
    }

    else
    {
      v19 = 0;
    }
  }

  v21 = v19;

  if (![(NSArray *)self->_mediaSuggestions isEqualToArray:v21])
  {
    objc_storeStrong(&self->_mediaSuggestions, v19);
    v22 = MCLogCategoryDefault();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = objc_opt_class();
      v24 = self->_isQueueHandoffActive;
      v25 = [v3 isPlaying];
      v26 = [v3 showPlaceholder];
      context = self->_context;
      *buf = 138545410;
      v32 = v23;
      v33 = 2048;
      v34 = v29;
      v35 = 1024;
      v36 = v16;
      v37 = 1024;
      v38 = v24;
      v39 = 1024;
      v40 = v25;
      v41 = 1024;
      v42 = v30;
      v43 = 1024;
      v44 = v17;
      v45 = 1024;
      v46 = v26;
      v47 = 2114;
      v48 = context;
      _os_log_impl(&dword_1A20FC000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@ update media suggestions: #%lu | unlocked: %{BOOL}u | QHO: %{BOOL}u | playing: %{BOOL}u, connected: %{BOOL}u | elapsed: %{BOOL}u | placeholder: %{BOOL}u | context: %{public}@", buf, 0x44u);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained mediaSuggestionsController:self didChangeMediaSuggestions:v21];
  }
}

- (void)updateLastPlayedDate
{
  v3 = [(MRUEndpointController *)self->_endpointController route];
  v4 = [objc_msgSend(v3 "endpoint")];

  v5 = [objc_alloc(MEMORY[0x1E69B0A98]) initWithOrigin:v4];
  objc_initWeak(&location, self);
  requestQueue = self->_requestQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __53__MRUMediaSuggestionsController_updateLastPlayedDate__block_invoke;
  v8[3] = &unk_1E7666398;
  v8[4] = self;
  v7 = v4;
  v9 = v7;
  objc_copyWeak(&v10, &location);
  [v5 requestDeviceLastPlayingDateOnQueue:requestQueue completion:v8];
  objc_destroyWeak(&v10);

  objc_destroyWeak(&location);
}

void __53__MRUMediaSuggestionsController_updateLastPlayedDate__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = MCLogCategoryDefault();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = objc_opt_class();
      v9 = *(a1 + 40);
      *buf = 138412802;
      v15 = v8;
      v16 = 2112;
      v17 = v9;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&dword_1A20FC000, v7, OS_LOG_TYPE_ERROR, "%@, failed to get the last playing date for origin: %@, error: %@", buf, 0x20u);
    }
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __53__MRUMediaSuggestionsController_updateLastPlayedDate__block_invoke_7;
  v11[3] = &unk_1E7663980;
  objc_copyWeak(&v13, (a1 + 48));
  v12 = v5;
  v10 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v11);

  objc_destroyWeak(&v13);
}

void __53__MRUMediaSuggestionsController_updateLastPlayedDate__block_invoke_7(uint64_t a1)
{
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setLastPlayingDate:v2];

  v4 = objc_loadWeakRetained((a1 + 40));
  [v4 updateMediaSuggestions];
}

- (MRUMediaSuggestionsControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end