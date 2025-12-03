@interface MPCMRArtworkDataSource
- (MPCMRArtworkDataSource)initWithController:(id)controller;
- (MPCMediaRemoteController)controller;
- (id)existingRepresentationForArtworkCatalog:(id)catalog;
- (void)loadRepresentationForArtworkCatalog:(id)catalog completionHandler:(id)handler;
@end

@implementation MPCMRArtworkDataSource

- (MPCMediaRemoteController)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);

  return WeakRetained;
}

- (void)loadRepresentationForArtworkCatalog:(id)catalog completionHandler:(id)handler
{
  catalogCopy = catalog;
  handlerCopy = handler;
  token = [catalogCopy token];
  [catalogCopy scaledFittingSize];
  v10 = v9;
  v12 = v11;
  controller = [(MPCMRArtworkDataSource *)self controller];
  identifier = [token identifier];
  artworkIdentifier = [token artworkIdentifier];
  v16 = [controller contentItemArtworkForContentItemIdentifier:identifier artworkIdentifier:artworkIdentifier size:{v10, v12}];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __80__MPCMRArtworkDataSource_loadRepresentationForArtworkCatalog_completionHandler___block_invoke;
  v20[3] = &unk_1E8238878;
  v21 = catalogCopy;
  v22 = handlerCopy;
  v23 = v10;
  v24 = v12;
  v17 = catalogCopy;
  v18 = handlerCopy;
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

- (id)existingRepresentationForArtworkCatalog:(id)catalog
{
  catalogCopy = catalog;
  token = [catalogCopy token];
  [catalogCopy scaledFittingSize];
  v7 = v6;
  v9 = v8;
  controller = [(MPCMRArtworkDataSource *)self controller];
  artworkIdentifier = [token artworkIdentifier];
  v12 = [controller contentItemArtworkCacheStateForArtworkIdentifier:artworkIdentifier size:{v7, v9}];

  if (v12)
  {
    identifier = [token identifier];
    artworkIdentifier2 = [token artworkIdentifier];
    v15 = [controller contentItemArtworkForContentItemIdentifier:identifier artworkIdentifier:artworkIdentifier2 size:{v7, v9}];

    v16 = MEMORY[0x1E69704B0];
    visualIdenticalityIdentifier = [catalogCopy visualIdenticalityIdentifier];
    result = [v15 result];
    v19 = [v16 representationForVisualIdentity:visualIdenticalityIdentifier withSize:result image:{v7, v9}];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (MPCMRArtworkDataSource)initWithController:(id)controller
{
  controllerCopy = controller;
  v8.receiver = self;
  v8.super_class = MPCMRArtworkDataSource;
  v5 = [(MPCMRArtworkDataSource *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_controller, controllerCopy);
  }

  return v6;
}

@end