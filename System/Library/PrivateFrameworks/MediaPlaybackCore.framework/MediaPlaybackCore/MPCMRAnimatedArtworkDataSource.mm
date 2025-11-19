@interface MPCMRAnimatedArtworkDataSource
- (MPCMRAnimatedArtworkDataSource)initWithController:(id)a3;
- (MPCMediaRemoteController)controller;
- (id)existingRepresentationOfKind:(int64_t)a3 forArtworkCatalog:(id)a4;
- (void)loadRepresentationOfKind:(int64_t)a3 forArtworkCatalog:(id)a4 completionHandler:(id)a5;
@end

@implementation MPCMRAnimatedArtworkDataSource

- (MPCMediaRemoteController)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);

  return WeakRetained;
}

- (void)loadRepresentationOfKind:(int64_t)a3 forArtworkCatalog:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (_os_feature_enabled_impl())
  {
    v10 = [(MPCMRAnimatedArtworkDataSource *)self controller];
    v11 = [v8 token];
    [v8 scaledFittingSize];
    v13 = v12;
    v15 = v14;
    if (a3 == 1)
    {
      v16 = [v11 identifier];
      v17 = [v11 artworkIdentifier];
      v18 = [v11 artworkFormat];
      v19 = [v10 contentItemAnimatedArtworkForContentItemIdentifier:v16 artworkIdentifier:v17 size:v18 artworkFormat:v13, v15];
      v24 = MEMORY[0x1E69E9820];
      v25 = 3221225472;
      v26 = __95__MPCMRAnimatedArtworkDataSource_loadRepresentationOfKind_forArtworkCatalog_completionHandler___block_invoke_2;
      v27 = &unk_1E8238850;
      v20 = v29;
      v29[0] = v9;
      v21 = &v28;
      v28 = v8;
      *&v29[1] = v13;
      *&v29[2] = v15;
      v22 = &v24;
    }

    else
    {
      if (a3)
      {
LABEL_8:

        goto LABEL_9;
      }

      v16 = [v11 identifier];
      v17 = [v11 artworkIdentifier];
      v18 = [v11 artworkFormat];
      v19 = [v10 contentItemAnimatedArtworkPreviewFrameForContentItemIdentifier:v16 artworkIdentifier:v17 size:v18 artworkFormat:v13, v15];
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __95__MPCMRAnimatedArtworkDataSource_loadRepresentationOfKind_forArtworkCatalog_completionHandler___block_invoke;
      v30[3] = &unk_1E8238878;
      v20 = v32;
      v32[0] = v9;
      v21 = &v31;
      v31 = v8;
      *&v32[1] = v13;
      *&v32[2] = v15;
      v22 = v30;
    }

    v23 = [v19 onCompletion:{v22, v24, v25, v26, v27, v28}];

    goto LABEL_8;
  }

  v10 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlayerRequestError" code:8000 debugDescription:@"MediaRemote/motion_on_lock_screen disabled"];
  (*(v9 + 2))(v9, 0, v10);
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

- (id)existingRepresentationOfKind:(int64_t)a3 forArtworkCatalog:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (!_os_feature_enabled_impl())
  {
    v25 = 0;
    goto LABEL_16;
  }

  v7 = [(MPCMRAnimatedArtworkDataSource *)self controller];
  v8 = [v6 token];
  [v6 scaledFittingSize];
  v10 = v9;
  v12 = v11;
  if (a3 == 1)
  {
    v26 = [v8 artworkIdentifier];
    v27 = [v8 artworkFormat];
    v28 = [v7 contentItemAnimatedArtworkCacheStateForArtworkIdentifier:v26 size:v27 artworkFormat:v10, v12];

    if (v28)
    {
      v29 = [v8 identifier];
      v30 = [v8 artworkIdentifier];
      v31 = [v8 artworkFormat];
      v19 = [v7 contentItemAnimatedArtworkForContentItemIdentifier:v29 artworkIdentifier:v30 size:v31 artworkFormat:v10, v12];

      v32 = os_log_create("com.apple.amp.mediaplaybackcore", "MediaRemote");
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        v35 = 138412290;
        v36 = v6;
        _os_log_impl(&dword_1C5C61000, v32, OS_LOG_TYPE_DEBUG, "Returning existing animated artwork representation for catalog: %@", &v35, 0xCu);
      }

      v33 = MEMORY[0x1E69704B0];
      v22 = [v6 visualIdenticalityIdentifier];
      v23 = [v19 result];
      v24 = [v33 representationForVisualIdentity:v22 withSize:v23 video:{v10, v12}];
      goto LABEL_13;
    }

LABEL_14:
    v25 = 0;
    goto LABEL_15;
  }

  if (a3)
  {
    goto LABEL_14;
  }

  v13 = [v8 artworkIdentifier];
  v14 = [v8 artworkFormat];
  v15 = [v7 contentItemAnimatedArtworkPreviewFrameCacheStateForArtworkIdentifier:v13 size:v14 artworkFormat:v10, v12];

  if (!v15)
  {
    goto LABEL_14;
  }

  v16 = [v8 identifier];
  v17 = [v8 artworkIdentifier];
  v18 = [v8 artworkFormat];
  v19 = [v7 contentItemAnimatedArtworkPreviewFrameForContentItemIdentifier:v16 artworkIdentifier:v17 size:v18 artworkFormat:v10, v12];

  v20 = os_log_create("com.apple.amp.mediaplaybackcore", "MediaRemote");
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    v35 = 138412290;
    v36 = v6;
    _os_log_impl(&dword_1C5C61000, v20, OS_LOG_TYPE_DEBUG, "Returning existing animated artwork preview frame representation for catalog: %@", &v35, 0xCu);
  }

  v21 = MEMORY[0x1E69704B0];
  v22 = [v6 visualIdenticalityIdentifier];
  v23 = [v19 result];
  v24 = [v21 representationForVisualIdentity:v22 withSize:v23 image:{v10, v12}];
LABEL_13:
  v25 = v24;

LABEL_15:
LABEL_16:

  return v25;
}

- (MPCMRAnimatedArtworkDataSource)initWithController:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MPCMRAnimatedArtworkDataSource;
  v5 = [(MPCMRAnimatedArtworkDataSource *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_controller, v4);
  }

  return v6;
}

@end