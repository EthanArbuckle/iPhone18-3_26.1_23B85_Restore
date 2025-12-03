@interface MPCMRRemoteArtworkDataSource
- (BOOL)areRepresentationsAvailableForCatalog:(id)catalog;
- (BOOL)isRepresentation:(id)representation bestRepresentationForArtworkCatalog:(id)catalog;
- (MPCMRRemoteArtworkDataSource)initWithController:(id)controller;
- (MPCMediaRemoteController)controller;
- (id)existingRepresentationForArtworkCatalog:(id)catalog;
- (id)visualIdenticalityIdentifierForCatalog:(id)catalog;
- (void)cancelLoadingRepresentationForArtworkCatalog:(id)catalog;
- (void)loadRepresentationForArtworkCatalog:(id)catalog completionHandler:(id)handler;
@end

@implementation MPCMRRemoteArtworkDataSource

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
  storeArtworkCatalog = [token storeArtworkCatalog];
  if (storeArtworkCatalog)
  {
    mEMORY[0x1E6970980] = [MEMORY[0x1E6970980] sharedStoreArtworkDataSource];
    [mEMORY[0x1E6970980] loadRepresentationForArtworkCatalog:storeArtworkCatalog completionHandler:handlerCopy];
  }

  else
  {
    [catalogCopy scaledFittingSize];
    v12 = v11;
    v14 = v13;
    controller = [(MPCMRRemoteArtworkDataSource *)self controller];
    identifier = [token identifier];
    artworkIdentifier = [token artworkIdentifier];
    v18 = [controller contentItemRemoteArtworkForContentItemIdentifier:identifier artworkIdentifier:artworkIdentifier size:*MEMORY[0x1E6970298] artworkFormat:v12, v14];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __86__MPCMRRemoteArtworkDataSource_loadRepresentationForArtworkCatalog_completionHandler___block_invoke;
    v20[3] = &unk_1E82388C0;
    v23 = handlerCopy;
    v21 = catalogCopy;
    v22 = token;
    v19 = [v18 onCompletion:v20];
  }
}

void __86__MPCMRRemoteArtworkDataSource_loadRepresentationForArtworkCatalog_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v25[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  if (!a3)
  {
    v7 = *MEMORY[0x1E6970298];
    v24 = *MEMORY[0x1E6970298];
    v25[0] = v5;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    if (![v8 count])
    {
      v20 = 0;
      goto LABEL_15;
    }

    v9 = [v8 objectForKeyedSubscript:v7];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 artworkURLTemplateData];

      if (v11)
      {
        v12 = MEMORY[0x1E696ACB0];
        v13 = [v10 artworkURLTemplateData];
        v14 = [v12 JSONObjectWithData:v13 options:0 error:0];

        if (v14)
        {
          v15 = [objc_alloc(MEMORY[0x1E69E45C0]) initWithArtworkResponseDictionary:v14];

          if (v15)
          {
            goto LABEL_11;
          }
        }
      }

      v16 = [v10 artworkURLString];
      v17 = [v16 length];

      if (v17)
      {
        v18 = MEMORY[0x1E695DFF8];
        v19 = [v10 artworkURLString];
        v20 = [v18 URLWithString:v19];

        if (!v20)
        {
LABEL_13:

LABEL_15:
          [*(a1 + 32) fittingSize];
          [v20 setFittingSize:?];
          [*(a1 + 32) destinationScale];
          [v20 setDestinationScale:?];
          [*(a1 + 40) setStoreArtworkCatalog:v20];
          v23 = [MEMORY[0x1E6970980] sharedStoreArtworkDataSource];
          [v23 loadRepresentationForArtworkCatalog:v20 completionHandler:*(a1 + 48)];

          goto LABEL_16;
        }

        v15 = [objc_alloc(MEMORY[0x1E69E45C0]) initWithArtworkURL:v20];

        if (v15)
        {
LABEL_11:
          v21 = [MEMORY[0x1E6970988] tokenWithImageArtworkInfo:v15];
          v22 = [MEMORY[0x1E6970980] sharedStoreArtworkDataSource];
          v20 = [objc_alloc(MEMORY[0x1E69704A0]) initWithToken:v21 dataSource:v22];

          goto LABEL_13;
        }
      }
    }

    v20 = 0;
    goto LABEL_13;
  }

  (*(*(a1 + 48) + 16))();
LABEL_16:
}

- (id)visualIdenticalityIdentifierForCatalog:(id)catalog
{
  token = [catalog token];
  storeArtworkCatalog = [token storeArtworkCatalog];
  if (storeArtworkCatalog)
  {
    mEMORY[0x1E6970980] = [MEMORY[0x1E6970980] sharedStoreArtworkDataSource];
    identifier = [mEMORY[0x1E6970980] visualIdenticalityIdentifierForCatalog:storeArtworkCatalog];
  }

  else
  {
    identifier = [token identifier];
  }

  return identifier;
}

- (void)cancelLoadingRepresentationForArtworkCatalog:(id)catalog
{
  token = [catalog token];
  storeArtworkCatalog = [token storeArtworkCatalog];
  if (storeArtworkCatalog)
  {
    mEMORY[0x1E6970980] = [MEMORY[0x1E6970980] sharedStoreArtworkDataSource];
    [mEMORY[0x1E6970980] cancelLoadingRepresentationForArtworkCatalog:storeArtworkCatalog];
  }
}

- (id)existingRepresentationForArtworkCatalog:(id)catalog
{
  token = [catalog token];
  storeArtworkCatalog = [token storeArtworkCatalog];
  if (storeArtworkCatalog)
  {
    mEMORY[0x1E6970980] = [MEMORY[0x1E6970980] sharedStoreArtworkDataSource];
    v6 = [mEMORY[0x1E6970980] existingRepresentationForArtworkCatalog:storeArtworkCatalog];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isRepresentation:(id)representation bestRepresentationForArtworkCatalog:(id)catalog
{
  representationCopy = representation;
  token = [catalog token];
  storeArtworkCatalog = [token storeArtworkCatalog];
  if (storeArtworkCatalog)
  {
    mEMORY[0x1E6970980] = [MEMORY[0x1E6970980] sharedStoreArtworkDataSource];
    v9 = [mEMORY[0x1E6970980] isRepresentation:representationCopy bestRepresentationForArtworkCatalog:storeArtworkCatalog];
  }

  else
  {
    v9 = representationCopy != 0;
  }

  return v9;
}

- (BOOL)areRepresentationsAvailableForCatalog:(id)catalog
{
  token = [catalog token];
  storeArtworkCatalog = [token storeArtworkCatalog];
  if (storeArtworkCatalog)
  {
    mEMORY[0x1E6970980] = [MEMORY[0x1E6970980] sharedStoreArtworkDataSource];
    v6 = [mEMORY[0x1E6970980] areRepresentationsAvailableForCatalog:storeArtworkCatalog];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (MPCMRRemoteArtworkDataSource)initWithController:(id)controller
{
  controllerCopy = controller;
  v8.receiver = self;
  v8.super_class = MPCMRRemoteArtworkDataSource;
  v5 = [(MPCMRRemoteArtworkDataSource *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_controller, controllerCopy);
  }

  return v6;
}

@end