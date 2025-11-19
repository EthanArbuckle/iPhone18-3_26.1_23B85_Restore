@interface MPCStoreLibraryPersonalizationMiddlewareOperation
- (MPCStoreLibraryPersonalizationMiddlewareOperation)initWithMiddleware:(id)a3 playerRequest:(id)a4;
- (NSArray)inputProtocols;
- (void)execute;
@end

@implementation MPCStoreLibraryPersonalizationMiddlewareOperation

- (NSArray)inputProtocols
{
  v4[3] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F45D1E50;
  v4[1] = &unk_1F45D15C8;
  v4[2] = &unk_1F45D1498;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:3];

  return v2;
}

- (void)execute
{
  v68 = *MEMORY[0x1E69E9840];
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v3 = [(MPCStoreLibraryPersonalizationMiddlewareOperation *)self inputOperations];
  v4 = [v3 objectForKey:&unk_1F45D1498];

  v5 = [v4 countByEnumeratingWithState:&v61 objects:v67 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v62;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v62 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v61 + 1) + 8 * i) controller];
        if (v9)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v61 objects:v67 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  v11 = [v10 resolvedPlayerPath];
  if (([v11 isSystemMusicPath] & 1) != 0 && !objc_msgSend(v11, "isLocalDevice"))
  {
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v12 = [(MPCStoreLibraryPersonalizationMiddlewareOperation *)self inputOperations];
    v13 = [v12 objectForKey:&unk_1F45D15C8];

    v14 = [v13 countByEnumeratingWithState:&v57 objects:v66 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v58;
      while (2)
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v58 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v57 + 1) + 8 * j);
          v19 = [v18 modelObjects];
          if (v19)
          {
            v20 = v19;
            v21 = [v18 playingIndexPath];
            goto LABEL_24;
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v57 objects:v66 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    v20 = 0;
    v21 = 0;
LABEL_24:

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v22 = [(MPCStoreLibraryPersonalizationMiddlewareOperation *)self inputOperations];
    v23 = [v22 objectForKey:&unk_1F45D1E50];

    v24 = [v23 countByEnumeratingWithState:&v53 objects:v65 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v54;
      while (2)
      {
        for (k = 0; k != v25; ++k)
        {
          if (*v54 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = [*(*(&v53 + 1) + 8 * k) overridePlayingItem];
          if (v28)
          {
            v29 = v28;
            goto LABEL_34;
          }
        }

        v25 = [v23 countByEnumeratingWithState:&v53 objects:v65 count:16];
        if (v25)
        {
          continue;
        }

        break;
      }
    }

    v29 = 0;
LABEL_34:

    if (v20)
    {
      v30 = objc_alloc_init(MEMORY[0x1E6970818]);
      v48[0] = MEMORY[0x1E69E9820];
      v48[1] = 3221225472;
      v48[2] = __60__MPCStoreLibraryPersonalizationMiddlewareOperation_execute__block_invoke;
      v48[3] = &unk_1E8238B68;
      v31 = v30;
      v49 = v31;
      v50 = v20;
      v45 = v21;
      v43 = v21;
      v51 = v43;
      v52 = v29;
      [v50 enumerateSectionsUsingBlock:v48];
      v44 = v31;
      v32 = [objc_alloc(MEMORY[0x1E69709E0]) initWithUnpersonalizedContentDescriptors:v31];
      v33 = [(MPCPlayerRequest *)self->_playerRequest userIdentity];
      [v32 setUserIdentity:v33];

      v34 = [MEMORY[0x1E69709D8] lightweightPersonalizationPropertiesForModelClass:objc_opt_class()];
      v35 = [(MPCPlayerRequest *)self->_playerRequest queueSectionProperties];
      v36 = [v35 propertySetByCombiningWithPropertySet:v34];
      [v32 setSectionProperties:v36];

      v37 = [(MPCPlayerRequest *)self->_playerRequest queueItemProperties];
      v38 = [v37 propertySetByCombiningWithPropertySet:v34];
      [v32 setItemProperties:v38];

      [v32 setMatchAlbumArtistsOnNameAndStoreID:0];
      v39 = [(MPCPlayerRequest *)self->_playerRequest playingItemProperties];
      v40 = [v39 propertySetByCombiningWithPropertySet:v34];

      if (v43 && v40)
      {
        [v32 setProperties:v40 forItemAtIndexPath:?];
      }

      v41 = _Block_copy(self->_invalidationHandler);
      v46[0] = MEMORY[0x1E69E9820];
      v46[1] = 3221225472;
      v46[2] = __60__MPCStoreLibraryPersonalizationMiddlewareOperation_execute__block_invoke_3;
      v46[3] = &unk_1E8238BB8;
      v46[4] = self;
      v47 = v41;
      v42 = v41;
      [v32 performWithResponseHandler:v46];

      v21 = v45;
    }

    else
    {
      [(MPAsyncOperation *)self finish];
    }
  }

  else
  {
    [(MPAsyncOperation *)self finish];
  }
}

void __60__MPCStoreLibraryPersonalizationMiddlewareOperation_execute__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  if (v5)
  {
    v7 = [objc_alloc(MEMORY[0x1E69709D8]) initWithModel:v5 personalizationStyle:1];
    [v6 appendSection:v7];
  }

  else
  {
    [*(a1 + 32) appendSection:&stru_1F454A698];
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __60__MPCStoreLibraryPersonalizationMiddlewareOperation_execute__block_invoke_2;
  v9[3] = &unk_1E8238B40;
  v8 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v13 = a3;
  v12 = *(a1 + 32);
  [v8 enumerateItemsInSectionAtIndex:a3 usingBlock:v9];
}

void __60__MPCStoreLibraryPersonalizationMiddlewareOperation_execute__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 results];
  v5 = [*(a1 + 32) middleware];
  [v5 setPersonalizedModelObjects:v4];

  if (v3)
  {
    v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:1];
    v7 = objc_alloc(MEMORY[0x1E6970828]);
    v8 = *MEMORY[0x1E6970240];
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __60__MPCStoreLibraryPersonalizationMiddlewareOperation_execute__block_invoke_4;
    v16 = &unk_1E8238B90;
    v17 = v3;
    v18 = *(a1 + 40);
    v9 = [v7 initWithName:v8 object:v17 handler:&v13];
    [v6 addObject:{v9, v13, v14, v15, v16}];
    v10 = *(a1 + 32);
    v11 = *(v10 + 288);
    *(v10 + 288) = v6;
    v12 = v6;
  }

  [*(a1 + 32) finish];
}

void __60__MPCStoreLibraryPersonalizationMiddlewareOperation_execute__block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(v1 + 16);
  v3 = *(a1 + 32);
  v2(v1, @"Personalization response did invalidate");
}

uint64_t __60__MPCStoreLibraryPersonalizationMiddlewareOperation_execute__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  if (v6 && *(a1 + 40))
  {
    v11 = v5;
    if ([v6 section] == *(a1 + 56) && objc_msgSend(*(a1 + 32), "item") == a3)
    {
      v7 = *(a1 + 40);

      v5 = v7;
    }

    else
    {
      v5 = v11;
    }
  }

  if (v5)
  {
    v8 = *(a1 + 48);
    v9 = [objc_alloc(MEMORY[0x1E69709D8]) initWithModel:v5 personalizationStyle:1];
    [v8 appendItem:v9];
  }

  return MEMORY[0x1EEE66BB8]();
}

- (MPCStoreLibraryPersonalizationMiddlewareOperation)initWithMiddleware:(id)a3 playerRequest:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = MPCStoreLibraryPersonalizationMiddlewareOperation;
  v9 = [(MPAsyncOperation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_middleware, a3);
    objc_storeStrong(&v10->_playerRequest, a4);
  }

  return v10;
}

@end