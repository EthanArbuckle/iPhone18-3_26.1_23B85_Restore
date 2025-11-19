@interface MPCMRArtworkDataSource
- (MPCMRArtworkDataSource)initWithController:(id)a3;
- (MPCMediaRemoteController)controller;
- (id)existingRepresentationForArtworkCatalog:(id)a3;
- (void)loadRepresentationForArtworkCatalog:(id)a3 completionHandler:(id)a4;
@end

@implementation MPCMRArtworkDataSource

- (MPCMediaRemoteController)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);

  return WeakRetained;
}

- (void)loadRepresentationForArtworkCatalog:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 token];
  [v6 scaledFittingSize];
  v10 = v9;
  v12 = v11;
  v13 = [(MPCMRArtworkDataSource *)self controller];
  v14 = [v8 identifier];
  v15 = [v8 artworkIdentifier];
  v16 = [v13 contentItemArtworkForContentItemIdentifier:v14 artworkIdentifier:v15 size:{v10, v12}];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __80__MPCMRArtworkDataSource_loadRepresentationForArtworkCatalog_completionHandler___block_invoke;
  v20[3] = &unk_1E8238878;
  v21 = v6;
  v22 = v7;
  v23 = v10;
  v24 = v12;
  v17 = v6;
  v18 = v7;
  v19 = [v16 onCompletion:v20];
}

void __80__MPCMRArtworkDataSource_loadRepresentationForArtworkCatalog_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (id)existingRepresentationForArtworkCatalog:(id)a3
{
  v4 = a3;
  v5 = [v4 token];
  [v4 scaledFittingSize];
  v7 = v6;
  v9 = v8;
  v10 = [(MPCMRArtworkDataSource *)self controller];
  v11 = [v5 artworkIdentifier];
  v12 = [v10 contentItemArtworkCacheStateForArtworkIdentifier:v11 size:{v7, v9}];

  if (v12)
  {
    v13 = [v5 identifier];
    v14 = [v5 artworkIdentifier];
    v15 = [v10 contentItemArtworkForContentItemIdentifier:v13 artworkIdentifier:v14 size:{v7, v9}];

    v16 = MEMORY[0x1E69704B0];
    v17 = [v4 visualIdenticalityIdentifier];
    v18 = [v15 result];
    v19 = [v16 representationForVisualIdentity:v17 withSize:v18 image:{v7, v9}];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (MPCMRArtworkDataSource)initWithController:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MPCMRArtworkDataSource;
  v5 = [(MPCMRArtworkDataSource *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_controller, v4);
  }

  return v6;
}

@end