@interface MRUMPCMetadataDataSource
- (MRUMPCMetadataDataSource)init;
- (MRUMPCMetadataDataSource)initWithEndpointController:(id)controller;
- (MRUMetadataDataSourceDelegate)delegate;
- (id)_stateDumpObject;
- (id)placeholder;
- (void)artworkDataSource:(id)source didChangeArtwork:(id)artwork;
- (void)dealloc;
- (void)setResponse:(id)response;
- (void)updateBundleIDWithResponse:(id)response;
- (void)updateData;
- (void)updateNowPlayingInfoWithResponse:(id)response;
- (void)updateTimeControlsWithResponse:(id)response;
- (void)updateTransportControlsWithResponse:(id)response;
@end

@implementation MRUMPCMetadataDataSource

- (MRUMPCMetadataDataSource)init
{
  v7.receiver = self;
  v7.super_class = MRUMPCMetadataDataSource;
  v2 = [(MRUMPCMetadataDataSource *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __32__MRUMPCMetadataDataSource_init__block_invoke;
    v5[3] = &unk_1E7664C58;
    v6 = v2;
    v6->_stateHandle = __32__MRUMPCMetadataDataSource_init__block_invoke(v5);
  }

  return v3;
}

uint64_t __32__MRUMPCMetadataDataSource_init__block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %p", objc_opt_class(), *(a1 + 32)];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __32__MRUMPCMetadataDataSource_init__block_invoke_2;
  v5[3] = &unk_1E7664C30;
  objc_copyWeak(&v6, &location);
  v3 = MCLogAddStateHandlerWithName(v2, v5);
  objc_destroyWeak(&v6);

  objc_destroyWeak(&location);
  return v3;
}

id __32__MRUMPCMetadataDataSource_init__block_invoke_2(uint64_t a1, uint64_t a2)
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

- (MRUMPCMetadataDataSource)initWithEndpointController:(id)controller
{
  controllerCopy = controller;
  v6 = [(MRUMPCMetadataDataSource *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_endpointController, controller);
    [controllerCopy addObserver:v7];
    v8 = [[MRUMPCArtworkDataSource alloc] initWithEndpointController:controllerCopy];
    artworkDataSource = v7->_artworkDataSource;
    v7->_artworkDataSource = v8;

    [(MRUMPCArtworkDataSource *)v7->_artworkDataSource setDelegate:v7];
    [(MRUMPCMetadataDataSource *)v7 updateData];
  }

  return v7;
}

- (void)dealloc
{
  os_state_remove_handler();
  v3.receiver = self;
  v3.super_class = MRUMPCMetadataDataSource;
  [(MRUMPCMetadataDataSource *)&v3 dealloc];
}

- (void)setResponse:(id)response
{
  objc_storeStrong(&self->_response, response);

  [(MRUMPCMetadataDataSource *)self updateData];
}

- (void)artworkDataSource:(id)source didChangeArtwork:(id)artwork
{
  objc_storeStrong(&self->_artwork, artwork);
  artworkCopy = artwork;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained metadataDataSource:self didChangeArtwork:artworkCopy];
}

- (void)updateData
{
  v3 = self->_response;
  [(MRUMPCMetadataDataSource *)self updateBundleIDWithResponse:v3];
  [(MRUMPCMetadataDataSource *)self updateNowPlayingInfoWithResponse:v3];
  [(MRUMPCMetadataDataSource *)self updateTimeControlsWithResponse:v3];
  [(MRUMPCMetadataDataSource *)self updateTransportControlsWithResponse:v3];
}

- (void)updateBundleIDWithResponse:(id)response
{
  v12 = *MEMORY[0x1E69E9840];
  endpointController = [(MRUEndpointController *)self->_endpointController endpointController];
  representedBundleID = [endpointController representedBundleID];
  if (![(NSString *)self->_bundleID isEqualToString:representedBundleID])
  {
    objc_storeStrong(&self->_bundleID, representedBundleID);
    v6 = MCLogCategoryDefault();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543618;
      v9 = objc_opt_class();
      v10 = 2114;
      v11 = representedBundleID;
      _os_log_impl(&dword_1A20FC000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ update bundleID: %{public}@", &v8, 0x16u);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained metadataDataSource:self didChangeBundleID:representedBundleID];
  }
}

- (void)updateNowPlayingInfoWithResponse:(id)response
{
  v14 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  v5 = [MRUNowPlayingInfo alloc];
  placeholder = [(MRUMPCMetadataDataSource *)self placeholder];
  v7 = [(MRUNowPlayingInfo *)v5 initWithMPCResponse:responseCopy placeholder:placeholder];

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
  v15 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  v5 = [MRUTimeControls alloc];
  tracklist = [responseCopy tracklist];

  playingItem = [tracklist playingItem];
  v8 = [(MRUTimeControls *)v5 initWithResponseItem:playingItem];

  if (![(MRUTimeControls *)self->_timeControls isEqual:v8])
  {
    objc_storeStrong(&self->_timeControls, v8);
    v9 = MCLogCategoryDefault();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543618;
      v12 = objc_opt_class();
      v13 = 2114;
      v14 = v8;
      _os_log_impl(&dword_1A20FC000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ update time controls: %{public}@", &v11, 0x16u);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained metadataDataSource:self didChangeTimeControls:v8];
  }
}

- (void)updateTransportControlsWithResponse:(id)response
{
  v12 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  v5 = [[MRUTransportControls alloc] initWithMPCResponse:responseCopy];

  objc_storeStrong(&self->_transportControls, v5);
  v6 = MCLogCategoryDefault();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543618;
    v9 = objc_opt_class();
    v10 = 2114;
    v11 = v5;
    _os_log_impl(&dword_1A20FC000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ update transport controls: %{public}@", &v8, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained metadataDataSource:self didChangeTransportControls:v5];
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