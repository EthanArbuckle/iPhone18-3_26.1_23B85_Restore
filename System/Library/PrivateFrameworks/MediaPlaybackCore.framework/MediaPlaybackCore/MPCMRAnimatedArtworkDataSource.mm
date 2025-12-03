@interface MPCMRAnimatedArtworkDataSource
- (MPCMRAnimatedArtworkDataSource)initWithController:(id)controller;
- (MPCMediaRemoteController)controller;
- (id)existingRepresentationOfKind:(int64_t)kind forArtworkCatalog:(id)catalog;
- (void)loadRepresentationOfKind:(int64_t)kind forArtworkCatalog:(id)catalog completionHandler:(id)handler;
@end

@implementation MPCMRAnimatedArtworkDataSource

- (MPCMediaRemoteController)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);

  return WeakRetained;
}

- (void)loadRepresentationOfKind:(int64_t)kind forArtworkCatalog:(id)catalog completionHandler:(id)handler
{
  catalogCopy = catalog;
  handlerCopy = handler;
  if (_os_feature_enabled_impl())
  {
    controller = [(MPCMRAnimatedArtworkDataSource *)self controller];
    token = [catalogCopy token];
    [catalogCopy scaledFittingSize];
    v13 = v12;
    v15 = v14;
    if (kind == 1)
    {
      identifier = [token identifier];
      artworkIdentifier = [token artworkIdentifier];
      artworkFormat = [token artworkFormat];
      v19 = [controller contentItemAnimatedArtworkForContentItemIdentifier:identifier artworkIdentifier:artworkIdentifier size:artworkFormat artworkFormat:v13, v15];
      v24 = MEMORY[0x1E69E9820];
      v25 = 3221225472;
      v26 = __95__MPCMRAnimatedArtworkDataSource_loadRepresentationOfKind_forArtworkCatalog_completionHandler___block_invoke_2;
      v27 = &unk_1E8238850;
      v20 = v29;
      v29[0] = handlerCopy;
      v21 = &v28;
      v28 = catalogCopy;
      *&v29[1] = v13;
      *&v29[2] = v15;
      v22 = &v24;
    }

    else
    {
      if (kind)
      {
LABEL_8:

        goto LABEL_9;
      }

      identifier = [token identifier];
      artworkIdentifier = [token artworkIdentifier];
      artworkFormat = [token artworkFormat];
      v19 = [controller contentItemAnimatedArtworkPreviewFrameForContentItemIdentifier:identifier artworkIdentifier:artworkIdentifier size:artworkFormat artworkFormat:v13, v15];
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __95__MPCMRAnimatedArtworkDataSource_loadRepresentationOfKind_forArtworkCatalog_completionHandler___block_invoke;
      v30[3] = &unk_1E8238878;
      v20 = v32;
      v32[0] = handlerCopy;
      v21 = &v31;
      v31 = catalogCopy;
      *&v32[1] = v13;
      *&v32[2] = v15;
      v22 = v30;
    }

    v23 = [v19 onCompletion:{v22, v24, v25, v26, v27, v28}];

    goto LABEL_8;
  }

  controller = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlayerRequestError" code:8000 debugDescription:@"MediaRemote/motion_on_lock_screen disabled"];
  (*(handlerCopy + 2))(handlerCopy, 0, controller);
LABEL_9:
}

void __95__MPCMRAnimatedArtworkDataSource_loadRepresentationOfKind_forArtworkCatalog_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E69704B0];
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = a3;
  v9 = a2;
  v11 = [v7 visualIdenticalityIdentifier];
  v10 = [v5 representationForVisualIdentity:v11 withSize:v9 image:{*(a1 + 48), *(a1 + 56)}];

  (*(v6 + 16))(v6, v10, v8);
}

void __95__MPCMRAnimatedArtworkDataSource_loadRepresentationOfKind_forArtworkCatalog_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E69704B0];
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = a3;
  v9 = a2;
  v11 = [v7 visualIdenticalityIdentifier];
  v10 = [v5 representationForVisualIdentity:v11 withSize:v9 video:{*(a1 + 48), *(a1 + 56)}];

  (*(v6 + 16))(v6, v10, v8);
}

- (id)existingRepresentationOfKind:(int64_t)kind forArtworkCatalog:(id)catalog
{
  v37 = *MEMORY[0x1E69E9840];
  catalogCopy = catalog;
  if (!_os_feature_enabled_impl())
  {
    v25 = 0;
    goto LABEL_16;
  }

  controller = [(MPCMRAnimatedArtworkDataSource *)self controller];
  token = [catalogCopy token];
  [catalogCopy scaledFittingSize];
  v10 = v9;
  v12 = v11;
  if (kind == 1)
  {
    artworkIdentifier = [token artworkIdentifier];
    artworkFormat = [token artworkFormat];
    v28 = [controller contentItemAnimatedArtworkCacheStateForArtworkIdentifier:artworkIdentifier size:artworkFormat artworkFormat:v10, v12];

    if (v28)
    {
      identifier = [token identifier];
      artworkIdentifier2 = [token artworkIdentifier];
      artworkFormat2 = [token artworkFormat];
      v19 = [controller contentItemAnimatedArtworkForContentItemIdentifier:identifier artworkIdentifier:artworkIdentifier2 size:artworkFormat2 artworkFormat:v10, v12];

      v32 = os_log_create("com.apple.amp.mediaplaybackcore", "MediaRemote");
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        v35 = 138412290;
        v36 = catalogCopy;
        _os_log_impl(&dword_1C5C61000, v32, OS_LOG_TYPE_DEBUG, "Returning existing animated artwork representation for catalog: %@", &v35, 0xCu);
      }

      v33 = MEMORY[0x1E69704B0];
      visualIdenticalityIdentifier = [catalogCopy visualIdenticalityIdentifier];
      result = [v19 result];
      v24 = [v33 representationForVisualIdentity:visualIdenticalityIdentifier withSize:result video:{v10, v12}];
      goto LABEL_13;
    }

LABEL_14:
    v25 = 0;
    goto LABEL_15;
  }

  if (kind)
  {
    goto LABEL_14;
  }

  artworkIdentifier3 = [token artworkIdentifier];
  artworkFormat3 = [token artworkFormat];
  v15 = [controller contentItemAnimatedArtworkPreviewFrameCacheStateForArtworkIdentifier:artworkIdentifier3 size:artworkFormat3 artworkFormat:v10, v12];

  if (!v15)
  {
    goto LABEL_14;
  }

  identifier2 = [token identifier];
  artworkIdentifier4 = [token artworkIdentifier];
  artworkFormat4 = [token artworkFormat];
  v19 = [controller contentItemAnimatedArtworkPreviewFrameForContentItemIdentifier:identifier2 artworkIdentifier:artworkIdentifier4 size:artworkFormat4 artworkFormat:v10, v12];

  v20 = os_log_create("com.apple.amp.mediaplaybackcore", "MediaRemote");
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    v35 = 138412290;
    v36 = catalogCopy;
    _os_log_impl(&dword_1C5C61000, v20, OS_LOG_TYPE_DEBUG, "Returning existing animated artwork preview frame representation for catalog: %@", &v35, 0xCu);
  }

  v21 = MEMORY[0x1E69704B0];
  visualIdenticalityIdentifier = [catalogCopy visualIdenticalityIdentifier];
  result = [v19 result];
  v24 = [v21 representationForVisualIdentity:visualIdenticalityIdentifier withSize:result image:{v10, v12}];
LABEL_13:
  v25 = v24;

LABEL_15:
LABEL_16:

  return v25;
}

- (MPCMRAnimatedArtworkDataSource)initWithController:(id)controller
{
  controllerCopy = controller;
  v8.receiver = self;
  v8.super_class = MPCMRAnimatedArtworkDataSource;
  v5 = [(MPCMRAnimatedArtworkDataSource *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_controller, controllerCopy);
  }

  return v6;
}

@end