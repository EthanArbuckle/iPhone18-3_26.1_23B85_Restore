@interface MRUMPCArtworkDataSource
- (MRUMPCArtworkDataSource)initWithEndpointController:(id)controller;
- (MRUMPCArtworkDataSourceDelegate)delegate;
- (id)artworkForSong:(id)song animatedArtworkSong:(id)artworkSong;
- (void)clearPendingArtwork;
- (void)configureAllowsAutomaticResponseLoading;
- (void)configureAnimatedArtworkEndpointControllerForPlayerPath:(id)path;
- (void)endpointController:(id)controller didAllowAutomaticResponseLoading:(BOOL)loading;
- (void)endpointController:(id)controller didChangeResponse:(id)response;
- (void)publishArtwork:(id)artwork publishingDelay:(double)delay;
- (void)updateArtwork;
- (void)updateArtwork:(id)artwork publishImmediately:(BOOL)immediately;
@end

@implementation MRUMPCArtworkDataSource

- (MRUMPCArtworkDataSource)initWithEndpointController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = MRUMPCArtworkDataSource;
  v6 = [(MRUMPCArtworkDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_endpointController, controller);
    [controllerCopy addObserver:v7];
    [(MRUMPCArtworkDataSource *)v7 updateArtwork];
  }

  return v7;
}

- (void)endpointController:(id)controller didChangeResponse:(id)response
{
  controllerCopy = controller;
  responseCopy = response;
  if (self->_endpointController == controllerCopy)
  {
    [(MRUMPCArtworkDataSource *)self setResponse:responseCopy];
    playerPath = [responseCopy playerPath];
    [(MRUMPCArtworkDataSource *)self configureAnimatedArtworkEndpointControllerForPlayerPath:playerPath];
  }

  else if (self->_animatedArtworkEndpointController == controllerCopy)
  {
    [(MRUMPCArtworkDataSource *)self setAnimatedArtworkResponse:responseCopy];
  }

  [(MRUMPCArtworkDataSource *)self updateArtwork];
}

- (void)endpointController:(id)controller didAllowAutomaticResponseLoading:(BOOL)loading
{
  if (self->_endpointController == controller)
  {
    self->_allowsAutomaticResponseLoading = loading;
    [(MRUMPCArtworkDataSource *)self configureAllowsAutomaticResponseLoading];
  }
}

- (void)updateArtwork
{
  tracklist = [(MPCPlayerResponse *)self->_response tracklist];
  playingItem = [tracklist playingItem];
  metadataObject = [playingItem metadataObject];
  song = [metadataObject song];

  tracklist2 = [(MPCPlayerResponse *)self->_animatedArtworkResponse tracklist];
  playingItem2 = [tracklist2 playingItem];
  metadataObject2 = [playingItem2 metadataObject];
  song2 = [metadataObject2 song];

  identifiers = [song identifiers];
  contentItemID = [identifiers contentItemID];

  identifiers2 = [song2 identifiers];
  contentItemID2 = [identifiers2 contentItemID];

  if (!contentItemID)
  {
    goto LABEL_4;
  }

  v14 = [MEMORY[0x1E69B09F0] animatedArtworkItemIdentifierFromSourceIdentifier:contentItemID];
  v15 = v14;
  if (v14 == contentItemID2)
  {
LABEL_5:

    goto LABEL_6;
  }

  v16 = [v14 isEqual:contentItemID2];

  if ((v16 & 1) == 0)
  {
LABEL_4:
    v15 = song2;
    song2 = 0;
    goto LABEL_5;
  }

LABEL_6:
  v17 = [(MRUMPCArtworkDataSource *)self artworkForSong:song animatedArtworkSong:song2];
  if (_os_feature_enabled_impl() && _os_feature_enabled_impl() && self->_animatedArtworkEndpointController)
  {
    catalog = [v17 catalog];
    if (song2)
    {
      v19 = 1;
    }

    else
    {
      v19 = catalog == 0;
    }

    v20 = v19;
  }

  else
  {
    v20 = 1;
  }

  [(MRUMPCArtworkDataSource *)self updateArtwork:v17 publishImmediately:v20];
}

- (id)artworkForSong:(id)song animatedArtworkSong:(id)artworkSong
{
  songCopy = song;
  artworkSongCopy = artworkSong;
  v8 = [MRUArtwork alloc];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __62__MRUMPCArtworkDataSource_artworkForSong_animatedArtworkSong___block_invoke;
  v22[3] = &unk_1E7663910;
  v23 = songCopy;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __62__MRUMPCArtworkDataSource_artworkForSong_animatedArtworkSong___block_invoke_2;
  v19[3] = &unk_1E7664330;
  v20 = v23;
  v21 = artworkSongCopy;
  v9 = artworkSongCopy;
  v10 = v23;
  v11 = [(MRUArtwork *)v8 initWithCatalogBlock:v22 animatedCatalogBlock:v19];
  catalog = [(MRUArtwork *)v11 catalog];
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  [catalog setCacheIdentifier:v14 forCacheReference:self];

  if (_os_feature_enabled_impl())
  {
    animatedCatalog = [(MRUArtwork *)v11 animatedCatalog];
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    [animatedCatalog setCacheIdentifier:v17 forCacheReference:self];
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

- (void)updateArtwork:(id)artwork publishImmediately:(BOOL)immediately
{
  immediatelyCopy = immediately;
  artworkCopy = artwork;
  v8 = artworkCopy;
  if (immediatelyCopy)
  {
    if (self->_publishedArtwork != artworkCopy && ![(MRUArtwork *)artworkCopy isEqual:?])
    {
      v9 = 0.0;
      if (self->_pendingArtworkDate)
      {
        catalog = [(MRUArtwork *)v8 catalog];
        visualIdenticalityIdentifier = [catalog visualIdenticalityIdentifier];
        catalog2 = [(MRUArtwork *)self->_pendingArtwork catalog];
        visualIdenticalityIdentifier2 = [catalog2 visualIdenticalityIdentifier];
        v14 = visualIdenticalityIdentifier2;
        if (visualIdenticalityIdentifier == visualIdenticalityIdentifier2)
        {
        }

        else
        {
          v15 = [visualIdenticalityIdentifier isEqual:visualIdenticalityIdentifier2];

          if ((v15 & 1) == 0)
          {
            goto LABEL_13;
          }
        }

        date = [MEMORY[0x1E695DF00] date];
        [date timeIntervalSinceDate:self->_pendingArtworkDate];
        v9 = v22;
      }

LABEL_13:
      [(MRUMPCArtworkDataSource *)self clearPendingArtwork];
      [(MRUMPCArtworkDataSource *)self publishArtwork:v8 publishingDelay:v9];
    }
  }

  else if (self->_pendingArtwork != artworkCopy && ![(MRUArtwork *)artworkCopy isEqual:?])
  {
    [(MRUMPCArtworkDataSource *)self clearPendingArtwork];
    date2 = [MEMORY[0x1E695DF00] date];
    pendingArtworkDate = self->_pendingArtworkDate;
    self->_pendingArtworkDate = date2;

    objc_storeStrong(&self->_pendingArtwork, artwork);
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

- (void)publishArtwork:(id)artwork publishingDelay:(double)delay
{
  v21 = *MEMORY[0x1E69E9840];
  artworkCopy = artwork;
  if (delay == 0.3)
  {
    v7 = MCLogCategoryDefault();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138543874;
      selfCopy3 = self;
      v17 = 2114;
      v18 = artworkCopy;
      v19 = 2048;
      delayCopy = 0.3;
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
    if (delay >= 0.005)
    {
      if (v9)
      {
        v15 = 138543874;
        selfCopy3 = self;
        v17 = 2114;
        v18 = artworkCopy;
        v19 = 2048;
        delayCopy = delay;
        v8 = "%{public}@ update artwork: %{public}@. delay: %.2fs";
        goto LABEL_9;
      }
    }

    else if (v9)
    {
      v15 = 138543618;
      selfCopy3 = self;
      v17 = 2114;
      v18 = artworkCopy;
      v8 = "%{public}@ update artwork: %{public}@";
      v10 = v7;
      v11 = 22;
LABEL_10:
      _os_log_impl(&dword_1A20FC000, v10, OS_LOG_TYPE_DEFAULT, v8, &v15, v11);
    }
  }

  publishedArtwork = self->_publishedArtwork;
  self->_publishedArtwork = artworkCopy;
  v13 = artworkCopy;

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained artworkDataSource:self didChangeArtwork:v13];
}

- (void)configureAllowsAutomaticResponseLoading
{
  endpointController = [(MRUEndpointController *)self->_animatedArtworkEndpointController endpointController];
  [endpointController setAllowsAutomaticResponseLoading:self->_allowsAutomaticResponseLoading];
  [endpointController setOnScreen:self->_allowsAutomaticResponseLoading];
  [endpointController setDeviceUnlocked:self->_allowsAutomaticResponseLoading];
}

- (void)configureAnimatedArtworkEndpointControllerForPlayerPath:(id)path
{
  pathCopy = path;
  if (_os_feature_enabled_impl() && _os_feature_enabled_impl())
  {
    if ([pathCopy isLocalDevice])
    {
      isSystemMusicPath = [pathCopy isSystemMusicPath];
    }

    else
    {
      isSystemMusicPath = 0;
    }

    v5 = [MEMORY[0x1E69B0B10] systemMediaBundleIDForBundle:0 type:1];
    v6 = objc_alloc(MEMORY[0x1E69B0AD0]);
    localOrigin = [MEMORY[0x1E69B0AA0] localOrigin];
    v8 = [objc_alloc(MEMORY[0x1E69B09D8]) initWithBundleIdentifier:v5];
    defaultPlayer = [MEMORY[0x1E69B0AC8] defaultPlayer];
    v10 = [v6 initWithOrigin:localOrigin client:v8 player:defaultPlayer];

    if (isSystemMusicPath && v10 && ([pathCopy mrPlayerPath], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isEqual:", v10), v11, (v12 & 1) == 0))
    {
      if (!self->_animatedArtworkEndpointController)
      {
        v15 = [MRUEndpointController alloc];
        client = [v10 client];
        bundleIdentifier = [client bundleIdentifier];
        player = [v10 player];
        identifier = [player identifier];
        v20 = [(MRUEndpointController *)v15 initWithRouteUID:0 client:bundleIdentifier player:identifier];
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