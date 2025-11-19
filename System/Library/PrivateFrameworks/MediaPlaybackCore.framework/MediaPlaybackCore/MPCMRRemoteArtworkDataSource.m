@interface MPCMRRemoteArtworkDataSource
- (BOOL)areRepresentationsAvailableForCatalog:(id)a3;
- (BOOL)isRepresentation:(id)a3 bestRepresentationForArtworkCatalog:(id)a4;
- (MPCMRRemoteArtworkDataSource)initWithController:(id)a3;
- (MPCMediaRemoteController)controller;
- (id)existingRepresentationForArtworkCatalog:(id)a3;
- (id)visualIdenticalityIdentifierForCatalog:(id)a3;
- (void)cancelLoadingRepresentationForArtworkCatalog:(id)a3;
- (void)loadRepresentationForArtworkCatalog:(id)a3 completionHandler:(id)a4;
@end

@implementation MPCMRRemoteArtworkDataSource

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
  v9 = [v8 storeArtworkCatalog];
  if (v9)
  {
    v10 = [MEMORY[0x1E6970980] sharedStoreArtworkDataSource];
    [v10 loadRepresentationForArtworkCatalog:v9 completionHandler:v7];
  }

  else
  {
    [v6 scaledFittingSize];
    v12 = v11;
    v14 = v13;
    v15 = [(MPCMRRemoteArtworkDataSource *)self controller];
    v16 = [v8 identifier];
    v17 = [v8 artworkIdentifier];
    v18 = [v15 contentItemRemoteArtworkForContentItemIdentifier:v16 artworkIdentifier:v17 size:*MEMORY[0x1E6970298] artworkFormat:v12, v14];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __86__MPCMRRemoteArtworkDataSource_loadRepresentationForArtworkCatalog_completionHandler___block_invoke;
    v20[3] = &unk_1E82388C0;
    v23 = v7;
    v21 = v6;
    v22 = v8;
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

- (id)visualIdenticalityIdentifierForCatalog:(id)a3
{
  v3 = [a3 token];
  v4 = [v3 storeArtworkCatalog];
  if (v4)
  {
    v5 = [MEMORY[0x1E6970980] sharedStoreArtworkDataSource];
    v6 = [v5 visualIdenticalityIdentifierForCatalog:v4];
  }

  else
  {
    v6 = [v3 identifier];
  }

  return v6;
}

- (void)cancelLoadingRepresentationForArtworkCatalog:(id)a3
{
  v5 = [a3 token];
  v3 = [v5 storeArtworkCatalog];
  if (v3)
  {
    v4 = [MEMORY[0x1E6970980] sharedStoreArtworkDataSource];
    [v4 cancelLoadingRepresentationForArtworkCatalog:v3];
  }
}

- (id)existingRepresentationForArtworkCatalog:(id)a3
{
  v3 = [a3 token];
  v4 = [v3 storeArtworkCatalog];
  if (v4)
  {
    v5 = [MEMORY[0x1E6970980] sharedStoreArtworkDataSource];
    v6 = [v5 existingRepresentationForArtworkCatalog:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isRepresentation:(id)a3 bestRepresentationForArtworkCatalog:(id)a4
{
  v5 = a3;
  v6 = [a4 token];
  v7 = [v6 storeArtworkCatalog];
  if (v7)
  {
    v8 = [MEMORY[0x1E6970980] sharedStoreArtworkDataSource];
    v9 = [v8 isRepresentation:v5 bestRepresentationForArtworkCatalog:v7];
  }

  else
  {
    v9 = v5 != 0;
  }

  return v9;
}

- (BOOL)areRepresentationsAvailableForCatalog:(id)a3
{
  v3 = [a3 token];
  v4 = [v3 storeArtworkCatalog];
  if (v4)
  {
    v5 = [MEMORY[0x1E6970980] sharedStoreArtworkDataSource];
    v6 = [v5 areRepresentationsAvailableForCatalog:v4];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (MPCMRRemoteArtworkDataSource)initWithController:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MPCMRRemoteArtworkDataSource;
  v5 = [(MPCMRRemoteArtworkDataSource *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_controller, v4);
  }

  return v6;
}

@end