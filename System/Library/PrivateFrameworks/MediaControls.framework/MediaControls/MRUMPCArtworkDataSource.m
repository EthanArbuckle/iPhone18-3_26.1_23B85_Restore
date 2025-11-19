@interface MRUMPCArtworkDataSource
- (MRUMPCArtworkDataSource)initWithEndpointController:(id)a3;
- (MRUMPCArtworkDataSourceDelegate)delegate;
- (id)artworkForSong:(id)a3 animatedArtworkSong:(id)a4;
- (void)clearPendingArtwork;
- (void)configureAllowsAutomaticResponseLoading;
- (void)configureAnimatedArtworkEndpointControllerForPlayerPath:(id)a3;
- (void)endpointController:(id)a3 didAllowAutomaticResponseLoading:(BOOL)a4;
- (void)endpointController:(id)a3 didChangeResponse:(id)a4;
- (void)publishArtwork:(id)a3 publishingDelay:(double)a4;
- (void)updateArtwork;
- (void)updateArtwork:(id)a3 publishImmediately:(BOOL)a4;
@end

@implementation MRUMPCArtworkDataSource

- (MRUMPCArtworkDataSource)initWithEndpointController:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MRUMPCArtworkDataSource;
  v6 = [(MRUMPCArtworkDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_endpointController, a3);
    [v5 addObserver:v7];
    [(MRUMPCArtworkDataSource *)v7 updateArtwork];
  }

  return v7;
}

- (void)endpointController:(id)a3 didChangeResponse:(id)a4
{
  v8 = a3;
  v6 = a4;
  if (self->_endpointController == v8)
  {
    [(MRUMPCArtworkDataSource *)self setResponse:v6];
    v7 = [v6 playerPath];
    [(MRUMPCArtworkDataSource *)self configureAnimatedArtworkEndpointControllerForPlayerPath:v7];
  }

  else if (self->_animatedArtworkEndpointController == v8)
  {
    [(MRUMPCArtworkDataSource *)self setAnimatedArtworkResponse:v6];
  }

  [(MRUMPCArtworkDataSource *)self updateArtwork];
}

- (void)endpointController:(id)a3 didAllowAutomaticResponseLoading:(BOOL)a4
{
  if (self->_endpointController == a3)
  {
    self->_allowsAutomaticResponseLoading = a4;
    [(MRUMPCArtworkDataSource *)self configureAllowsAutomaticResponseLoading];
  }
}

- (void)updateArtwork
{
  v3 = [(MPCPlayerResponse *)self->_response tracklist];
  v4 = [v3 playingItem];
  v5 = [v4 metadataObject];
  v21 = [v5 song];

  v6 = [(MPCPlayerResponse *)self->_animatedArtworkResponse tracklist];
  v7 = [v6 playingItem];
  v8 = [v7 metadataObject];
  v9 = [v8 song];

  v10 = [v21 identifiers];
  v11 = [v10 contentItemID];

  v12 = [v9 identifiers];
  v13 = [v12 contentItemID];

  if (!v11)
  {
    goto LABEL_4;
  }

  v14 = [MEMORY[0x1E69B09F0] animatedArtworkItemIdentifierFromSourceIdentifier:v11];
  v15 = v14;
  if (v14 == v13)
  {
LABEL_5:

    goto LABEL_6;
  }

  v16 = [v14 isEqual:v13];

  if ((v16 & 1) == 0)
  {
LABEL_4:
    v15 = v9;
    v9 = 0;
    goto LABEL_5;
  }

LABEL_6:
  v17 = [(MRUMPCArtworkDataSource *)self artworkForSong:v21 animatedArtworkSong:v9];
  if (_os_feature_enabled_impl() && _os_feature_enabled_impl() && self->_animatedArtworkEndpointController)
  {
    v18 = [v17 catalog];
    if (v9)
    {
      v19 = 1;
    }

    else
    {
      v19 = v18 == 0;
    }

    v20 = v19;
  }

  else
  {
    v20 = 1;
  }

  [(MRUMPCArtworkDataSource *)self updateArtwork:v17 publishImmediately:v20];
}

- (id)artworkForSong:(id)a3 animatedArtworkSong:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MRUArtwork alloc];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __62__MRUMPCArtworkDataSource_artworkForSong_animatedArtworkSong___block_invoke;
  v22[3] = &unk_1E7663910;
  v23 = v6;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __62__MRUMPCArtworkDataSource_artworkForSong_animatedArtworkSong___block_invoke_2;
  v19[3] = &unk_1E7664330;
  v20 = v23;
  v21 = v7;
  v9 = v7;
  v10 = v23;
  v11 = [(MRUArtwork *)v8 initWithCatalogBlock:v22 animatedCatalogBlock:v19];
  v12 = [(MRUArtwork *)v11 catalog];
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  [v12 setCacheIdentifier:v14 forCacheReference:self];

  if (_os_feature_enabled_impl())
  {
    v15 = [(MRUArtwork *)v11 animatedCatalog];
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    [v15 setCacheIdentifier:v17 forCacheReference:self];
  }

  return v11;
}

id __62__MRUMPCArtworkDataSource_artworkForSong_animatedArtworkSong___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) animatedArtworkCatalogForFormat:a2];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [*(a1 + 40) animatedArtworkCatalogForFormat:a2];
  }

  v7 = v6;

  return v7;
}

- (void)updateArtwork:(id)a3 publishImmediately:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  v8 = v7;
  if (v4)
  {
    if (self->_publishedArtwork != v7 && ![(MRUArtwork *)v7 isEqual:?])
    {
      v9 = 0.0;
      if (self->_pendingArtworkDate)
      {
        v10 = [(MRUArtwork *)v8 catalog];
        v11 = [v10 visualIdenticalityIdentifier];
        v12 = [(MRUArtwork *)self->_pendingArtwork catalog];
        v13 = [v12 visualIdenticalityIdentifier];
        v14 = v13;
        if (v11 == v13)
        {
        }

        else
        {
          v15 = [v11 isEqual:v13];

          if ((v15 & 1) == 0)
          {
            goto LABEL_13;
          }
        }

        v21 = [MEMORY[0x1E695DF00] date];
        [v21 timeIntervalSinceDate:self->_pendingArtworkDate];
        v9 = v22;
      }

LABEL_13:
      [(MRUMPCArtworkDataSource *)self clearPendingArtwork];
      [(MRUMPCArtworkDataSource *)self publishArtwork:v8 publishingDelay:v9];
    }
  }

  else if (self->_pendingArtwork != v7 && ![(MRUArtwork *)v7 isEqual:?])
  {
    [(MRUMPCArtworkDataSource *)self clearPendingArtwork];
    v16 = [MEMORY[0x1E695DF00] date];
    pendingArtworkDate = self->_pendingArtworkDate;
    self->_pendingArtworkDate = v16;

    objc_storeStrong(&self->_pendingArtwork, a3);
    objc_initWeak(&location, self);
    v18 = MEMORY[0x1E69B14D8];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __60__MRUMPCArtworkDataSource_updateArtwork_publishImmediately___block_invoke;
    v23[3] = &unk_1E7663980;
    objc_copyWeak(&v25, &location);
    v24 = v8;
    v19 = [v18 timerWithInterval:0 repeats:v23 block:0.3];
    publishArtworkTimer = self->_publishArtworkTimer;
    self->_publishArtworkTimer = v19;

    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }
}

void __60__MRUMPCArtworkDataSource_updateArtwork_publishImmediately___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained publishArtwork:*(a1 + 32) publishingDelay:0.3];
}

- (void)clearPendingArtwork
{
  pendingArtwork = self->_pendingArtwork;
  self->_pendingArtwork = 0;

  pendingArtworkDate = self->_pendingArtworkDate;
  self->_pendingArtworkDate = 0;

  publishArtworkTimer = self->_publishArtworkTimer;

  [(MSVTimer *)publishArtworkTimer invalidate];
}

- (void)publishArtwork:(id)a3 publishingDelay:(double)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (a4 == 0.3)
  {
    v7 = MCLogCategoryDefault();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138543874;
      v16 = self;
      v17 = 2114;
      v18 = v6;
      v19 = 2048;
      v20 = 0.3;
      v8 = "%{public}@ update artwork: %{public}@. delay: %.2fs (timeout)";
LABEL_9:
      v10 = v7;
      v11 = 32;
      goto LABEL_10;
    }
  }

  else
  {
    v7 = MCLogCategoryDefault();
    v9 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (a4 >= 0.005)
    {
      if (v9)
      {
        v15 = 138543874;
        v16 = self;
        v17 = 2114;
        v18 = v6;
        v19 = 2048;
        v20 = a4;
        v8 = "%{public}@ update artwork: %{public}@. delay: %.2fs";
        goto LABEL_9;
      }
    }

    else if (v9)
    {
      v15 = 138543618;
      v16 = self;
      v17 = 2114;
      v18 = v6;
      v8 = "%{public}@ update artwork: %{public}@";
      v10 = v7;
      v11 = 22;
LABEL_10:
      _os_log_impl(&dword_1A20FC000, v10, OS_LOG_TYPE_DEFAULT, v8, &v15, v11);
    }
  }

  publishedArtwork = self->_publishedArtwork;
  self->_publishedArtwork = v6;
  v13 = v6;

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained artworkDataSource:self didChangeArtwork:v13];
}

- (void)configureAllowsAutomaticResponseLoading
{
  v3 = [(MRUEndpointController *)self->_animatedArtworkEndpointController endpointController];
  [v3 setAllowsAutomaticResponseLoading:self->_allowsAutomaticResponseLoading];
  [v3 setOnScreen:self->_allowsAutomaticResponseLoading];
  [v3 setDeviceUnlocked:self->_allowsAutomaticResponseLoading];
}

- (void)configureAnimatedArtworkEndpointControllerForPlayerPath:(id)a3
{
  v22 = a3;
  if (_os_feature_enabled_impl() && _os_feature_enabled_impl())
  {
    if ([v22 isLocalDevice])
    {
      v4 = [v22 isSystemMusicPath];
    }

    else
    {
      v4 = 0;
    }

    v5 = [MEMORY[0x1E69B0B10] systemMediaBundleIDForBundle:0 type:1];
    v6 = objc_alloc(MEMORY[0x1E69B0AD0]);
    v7 = [MEMORY[0x1E69B0AA0] localOrigin];
    v8 = [objc_alloc(MEMORY[0x1E69B09D8]) initWithBundleIdentifier:v5];
    v9 = [MEMORY[0x1E69B0AC8] defaultPlayer];
    v10 = [v6 initWithOrigin:v7 client:v8 player:v9];

    if (v4 && v10 && ([v22 mrPlayerPath], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isEqual:", v10), v11, (v12 & 1) == 0))
    {
      if (!self->_animatedArtworkEndpointController)
      {
        v15 = [MRUEndpointController alloc];
        v16 = [v10 client];
        v17 = [v16 bundleIdentifier];
        v18 = [v10 player];
        v19 = [v18 identifier];
        v20 = [(MRUEndpointController *)v15 initWithRouteUID:0 client:v17 player:v19];
        animatedArtworkEndpointController = self->_animatedArtworkEndpointController;
        self->_animatedArtworkEndpointController = v20;

        [(MRUEndpointController *)self->_animatedArtworkEndpointController addObserver:self];
        [(MRUMPCArtworkDataSource *)self configureAllowsAutomaticResponseLoading];
      }
    }

    else
    {
      v13 = self->_animatedArtworkEndpointController;
      if (v13)
      {
        self->_animatedArtworkEndpointController = 0;

        animatedArtworkResponse = self->_animatedArtworkResponse;
        self->_animatedArtworkResponse = 0;
      }
    }
  }
}

- (MRUMPCArtworkDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end