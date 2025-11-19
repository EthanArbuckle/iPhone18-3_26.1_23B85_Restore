@interface MRUMRMetadataDataSource
- (MRUMRMetadataDataSource)init;
- (MRUMRMetadataDataSource)initWithEndpointController:(id)a3 response:(id)a4;
- (MRUMetadataDataSourceDelegate)delegate;
- (id)_stateDumpObject;
- (id)placeholder;
- (id)placeholderSymbolName;
- (void)dealloc;
- (void)setResponse:(id)a3;
- (void)updateArtworkWithResponse:(id)a3;
- (void)updateBundleIDWithResponse:(id)a3;
- (void)updateData;
- (void)updateNowPlayingInfoWithResponse:(id)a3;
- (void)updateTimeControlsWithResponse:(id)a3;
- (void)updateTransportControlsWithResponse:(id)a3;
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

- (MRUMRMetadataDataSource)initWithEndpointController:(id)a3 response:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(MRUMRMetadataDataSource *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_endpointController, a3);
    [v7 addObserver:v10];
    objc_storeStrong(&v10->_response, a4);
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

- (void)setResponse:(id)a3
{
  objc_storeStrong(&self->_response, a3);

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

- (void)updateBundleIDWithResponse:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = [a3 playerPath];
  v5 = [v4 client];
  v6 = [v5 bundleIdentifier];

  if (![(NSString *)self->_bundleID isEqualToString:v6])
  {
    objc_storeStrong(&self->_bundleID, v6);
    v7 = MCLogCategoryDefault();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543618;
      v10 = objc_opt_class();
      v11 = 2114;
      v12 = v6;
      _os_log_impl(&dword_1A20FC000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ update bundleID: %{public}@", &v9, 0x16u);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained metadataDataSource:self didChangeBundleID:v6];
  }
}

- (void)updateArtworkWithResponse:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = [a3 playbackQueue];
  v5 = [v4 contentItems];
  v6 = [v5 firstObject];
  v7 = [v6 artwork];
  v8 = [v7 imageData];

  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithData:v8];
  }

  else
  {
    v9 = 0;
  }

  v10 = [[MRUArtwork alloc] initWithImage:v9];
  if (![(MRUArtwork *)self->_artwork isEqual:v10])
  {
    objc_storeStrong(&self->_artwork, v10);
    v11 = [(MRUArtwork *)v10 catalog];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    [v11 setCacheIdentifier:v13 forCacheReference:self];

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

- (void)updateNowPlayingInfoWithResponse:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MRUNowPlayingInfo alloc];
  v6 = [(MRUMRMetadataDataSource *)self placeholder];
  v7 = [(MRUNowPlayingInfo *)v5 initWithMRResponse:v4 placeholder:v6];

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

- (void)updateTimeControlsWithResponse:(id)a3
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

- (void)updateTransportControlsWithResponse:(id)a3
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
  v2 = [(MRUEndpointController *)self->_endpointController state];
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v2 = +[MRUStringsProvider loading];
    }

    else if (v2 == 3)
    {
      v2 = +[MRUStringsProvider notPlaying];
    }
  }

  else if (v2 >= 2)
  {
    if (v2 == -1)
    {
      v2 = +[MRUStringsProvider notConnected];
    }
  }

  else
  {
    v2 = +[MRUStringsProvider connecting];
  }

  return v2;
}

- (id)placeholderSymbolName
{
  v3 = [(MRUEndpointController *)self->_endpointController route];
  if (v3 && (v4 = v3, v5 = [(MRUEndpointController *)self->_endpointController isDeviceSystemRoute], v4, v5))
  {
    v6 = [MEMORY[0x1E6970490] _currentDeviceRoutingSymbolName];
  }

  else
  {
    v7 = MEMORY[0x1E6970490];
    v8 = [(MRUEndpointController *)self->_endpointController route];
    v6 = [v7 _symbolNameForRoute:v8];
  }

  return v6;
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