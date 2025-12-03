@interface MRUMRMetadataDataSource
- (MRUMRMetadataDataSource)init;
- (MRUMRMetadataDataSource)initWithEndpointController:(id)controller response:(id)response;
- (MRUMetadataDataSourceDelegate)delegate;
- (id)_stateDumpObject;
- (id)placeholder;
- (id)placeholderSymbolName;
- (void)dealloc;
- (void)setResponse:(id)response;
- (void)updateArtworkWithResponse:(id)response;
- (void)updateBundleIDWithResponse:(id)response;
- (void)updateData;
- (void)updateNowPlayingInfoWithResponse:(id)response;
- (void)updateTimeControlsWithResponse:(id)response;
- (void)updateTransportControlsWithResponse:(id)response;
@end

@implementation MRUMRMetadataDataSource

- (MRUMRMetadataDataSource)init
{
  v7.receiver = self;
  v7.super_class = MRUMRMetadataDataSource;
  v2 = [(MRUMRMetadataDataSource *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __31__MRUMRMetadataDataSource_init__block_invoke;
    v5[3] = &unk_1E7664C58;
    v6 = v2;
    v6->_stateHandle = __31__MRUMRMetadataDataSource_init__block_invoke(v5);
  }

  return v3;
}

uint64_t __31__MRUMRMetadataDataSource_init__block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %p", objc_opt_class(), *(a1 + 32)];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __31__MRUMRMetadataDataSource_init__block_invoke_2;
  v5[3] = &unk_1E7664C30;
  objc_copyWeak(&v6, &location);
  v3 = MCLogAddStateHandlerWithName(v2, v5);
  objc_destroyWeak(&v6);

  objc_destroyWeak(&location);
  return v3;
}

id __31__MRUMRMetadataDataSource_init__block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) == 3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v3 = WeakRetained;
    if (WeakRetained)
    {
      v4 = [WeakRetained _stateDumpObject];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (MRUMRMetadataDataSource)initWithEndpointController:(id)controller response:(id)response
{
  controllerCopy = controller;
  responseCopy = response;
  v9 = [(MRUMRMetadataDataSource *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_endpointController, controller);
    [controllerCopy addObserver:v10];
    objc_storeStrong(&v10->_response, response);
    [(MRUMRMetadataDataSource *)v10 updateData];
  }

  return v10;
}

- (void)dealloc
{
  os_state_remove_handler();
  v3.receiver = self;
  v3.super_class = MRUMRMetadataDataSource;
  [(MRUMRMetadataDataSource *)&v3 dealloc];
}

- (void)setResponse:(id)response
{
  objc_storeStrong(&self->_response, response);

  [(MRUMRMetadataDataSource *)self updateData];
}

- (void)updateData
{
  v3 = self->_response;
  [(MRUMRMetadataDataSource *)self updateBundleIDWithResponse:v3];
  [(MRUMRMetadataDataSource *)self updateArtworkWithResponse:v3];
  [(MRUMRMetadataDataSource *)self updateNowPlayingInfoWithResponse:v3];
  [(MRUMRMetadataDataSource *)self updateTimeControlsWithResponse:v3];
  [(MRUMRMetadataDataSource *)self updateTransportControlsWithResponse:v3];
}

- (void)updateBundleIDWithResponse:(id)response
{
  v13 = *MEMORY[0x1E69E9840];
  playerPath = [response playerPath];
  client = [playerPath client];
  bundleIdentifier = [client bundleIdentifier];

  if (![(NSString *)self->_bundleID isEqualToString:bundleIdentifier])
  {
    objc_storeStrong(&self->_bundleID, bundleIdentifier);
    v7 = MCLogCategoryDefault();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543618;
      v10 = objc_opt_class();
      v11 = 2114;
      v12 = bundleIdentifier;
      _os_log_impl(&dword_1A20FC000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ update bundleID: %{public}@", &v9, 0x16u);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained metadataDataSource:self didChangeBundleID:bundleIdentifier];
  }
}

- (void)updateArtworkWithResponse:(id)response
{
  v20 = *MEMORY[0x1E69E9840];
  playbackQueue = [response playbackQueue];
  contentItems = [playbackQueue contentItems];
  firstObject = [contentItems firstObject];
  artwork = [firstObject artwork];
  imageData = [artwork imageData];

  if (imageData)
  {
    v9 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithData:imageData];
  }

  else
  {
    v9 = 0;
  }

  v10 = [[MRUArtwork alloc] initWithImage:v9];
  if (![(MRUArtwork *)self->_artwork isEqual:v10])
  {
    objc_storeStrong(&self->_artwork, v10);
    catalog = [(MRUArtwork *)v10 catalog];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    [catalog setCacheIdentifier:v13 forCacheReference:self];

    v14 = MCLogCategoryDefault();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138543618;
      v17 = objc_opt_class();
      v18 = 2114;
      v19 = v10;
      _os_log_impl(&dword_1A20FC000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ update artwork: %{public}@", &v16, 0x16u);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained metadataDataSource:self didChangeArtwork:v10];
  }
}

- (void)updateNowPlayingInfoWithResponse:(id)response
{
  v14 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  v5 = [MRUNowPlayingInfo alloc];
  placeholder = [(MRUMRMetadataDataSource *)self placeholder];
  v7 = [(MRUNowPlayingInfo *)v5 initWithMRResponse:responseCopy placeholder:placeholder];

  if (![(MRUNowPlayingInfo *)self->_nowPlayingInfo isEqual:v7])
  {
    objc_storeStrong(&self->_nowPlayingInfo, v7);
    v8 = MCLogCategoryDefault();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543618;
      v11 = objc_opt_class();
      v12 = 2114;
      v13 = v7;
      _os_log_impl(&dword_1A20FC000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ update metadata: %{public}@", &v10, 0x16u);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained metadataDataSource:self didChangeNowPlayingInfo:v7];
  }
}

- (void)updateTimeControlsWithResponse:(id)response
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MRUTimeControls);
  if (![(MRUTimeControls *)self->_timeControls isEqual:v4])
  {
    objc_storeStrong(&self->_timeControls, v4);
    v5 = MCLogCategoryDefault();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543618;
      v8 = objc_opt_class();
      v9 = 2114;
      v10 = v4;
      _os_log_impl(&dword_1A20FC000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ update time controls: %{public}@", &v7, 0x16u);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained metadataDataSource:self didChangeTimeControls:v4];
  }
}

- (void)updateTransportControlsWithResponse:(id)response
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MRUTransportControls);
  if (![(MRUTransportControls *)self->_transportControls isEqual:v4])
  {
    objc_storeStrong(&self->_transportControls, v4);
    v5 = MCLogCategoryDefault();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543618;
      v8 = objc_opt_class();
      v9 = 2114;
      v10 = v4;
      _os_log_impl(&dword_1A20FC000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ update transport controls: %{public}@", &v7, 0x16u);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained metadataDataSource:self didChangeTransportControls:v4];
  }
}

- (id)placeholder
{
  state = [(MRUEndpointController *)self->_endpointController state];
  if (state > 1)
  {
    if (state == 2)
    {
      state = +[MRUStringsProvider loading];
    }

    else if (state == 3)
    {
      state = +[MRUStringsProvider notPlaying];
    }
  }

  else if (state >= 2)
  {
    if (state == -1)
    {
      state = +[MRUStringsProvider notConnected];
    }
  }

  else
  {
    state = +[MRUStringsProvider connecting];
  }

  return state;
}

- (id)placeholderSymbolName
{
  route = [(MRUEndpointController *)self->_endpointController route];
  if (route && (v4 = route, v5 = [(MRUEndpointController *)self->_endpointController isDeviceSystemRoute], v4, v5))
  {
    _currentDeviceRoutingSymbolName = [MEMORY[0x1E6970490] _currentDeviceRoutingSymbolName];
  }

  else
  {
    v7 = MEMORY[0x1E6970490];
    route2 = [(MRUEndpointController *)self->_endpointController route];
    _currentDeviceRoutingSymbolName = [v7 _symbolNameForRoute:route2];
  }

  return _currentDeviceRoutingSymbolName;
}

- (id)_stateDumpObject
{
  v12 = *MEMORY[0x1E69E9840];
  v7[0] = @"bundleID";
  v7[1] = @"artwork";
  transportControls = @"<NONE>";
  v8 = vbslq_s8(vceqzq_s64(*&self->_bundleID), vdupq_n_s64(@"<NONE>"), *&self->_bundleID);
  v7[2] = @"nowPlayingInfo";
  v7[3] = @"timeControls";
  timeControls = self->_timeControls;
  nowPlayingInfo = self->_nowPlayingInfo;
  if (!nowPlayingInfo)
  {
    nowPlayingInfo = @"<NONE>";
  }

  if (!timeControls)
  {
    timeControls = @"<NONE>";
  }

  v9 = nowPlayingInfo;
  v10 = timeControls;
  v7[4] = @"transportControls";
  if (self->_transportControls)
  {
    transportControls = self->_transportControls;
  }

  v11 = transportControls;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v8 forKeys:v7 count:5];

  return v5;
}

- (MRUMetadataDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end