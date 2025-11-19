@interface MPCMediaRemoteMiddlewareMetadataOperation
- (MPCMediaRemoteMiddlewareMetadataOperation)initWithMiddleware:(id)a3 request:(id)a4;
- (MPSectionedCollection)modelObjects;
- (MPSectionedCollection)sourceContentItems;
- (NSArray)outputProtocols;
- (NSIndexPath)playingIndexPath;
- (_MSVSignedRange)rangeFromTracklistRange:(id)a3;
- (id)_genericObjectPropertySetForContentItem:(id)a3 preferredRelationships:(id)a4 propertySet:(id)a5;
- (id)_itemGenericObjectPropertySetForContentItem:(id)a3 propertySet:(id)a4;
- (id)timeoutDescription;
- (void)_loadPlaybackQueueWithCompletion:(id)a3;
- (void)execute;
@end

@implementation MPCMediaRemoteMiddlewareMetadataOperation

- (NSArray)outputProtocols
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F45D15C8;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (void)execute
{
  v3 = [(MPCMediaRemoteMiddlewareMetadataOperation *)self middleware];
  v4 = [v3 controller];

  if (v4)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __52__MPCMediaRemoteMiddlewareMetadataOperation_execute__block_invoke;
    v5[3] = &unk_1E8238788;
    v5[4] = self;
    [(MPCMediaRemoteMiddlewareMetadataOperation *)self _loadPlaybackQueueWithCompletion:v5];
  }

  else
  {
    [(MPAsyncOperation *)self cancel];
    [(MPAsyncOperation *)self finish];
  }
}

- (id)_itemGenericObjectPropertySetForContentItem:(id)a3 propertySet:(id)a4
{
  v47[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 deviceSpecificUserInfo];
  v9 = [v8 objectForKeyedSubscript:*MEMORY[0x1E6970288]];

  v10 = [v7 relationships];
  v11 = *MEMORY[0x1E6970120];
  v12 = [v10 objectForKeyedSubscript:*MEMORY[0x1E6970120]];

  if (v9)
  {
    v13 = v12 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v14 = MEMORY[0x1E695E0F0];
    goto LABEL_24;
  }

  v15 = [v6 mediaType];
  v14 = MEMORY[0x1E695E0F0];
  if (v15 <= 511)
  {
    if (v15 != 1)
    {
      if (v15 != 2)
      {
        if (v15 != 256)
        {
          goto LABEL_21;
        }

        goto LABEL_16;
      }

      v44 = *MEMORY[0x1E69701A0];
      v16 = MEMORY[0x1E695DEC8];
      v17 = &v44;
LABEL_19:
      v19 = 1;
      goto LABEL_20;
    }

LABEL_15:
    v47[0] = *MEMORY[0x1E69701A0];
    v16 = MEMORY[0x1E695DEC8];
    v17 = v47;
    goto LABEL_19;
  }

  switch(v15)
  {
    case 0x200:
      v20 = *MEMORY[0x1E6970198];
      v45[0] = *MEMORY[0x1E69701A8];
      v45[1] = v20;
      v45[2] = *MEMORY[0x1E69701A0];
      v16 = MEMORY[0x1E695DEC8];
      v17 = v45;
      v19 = 3;
      goto LABEL_20;
    case 0x2000:
LABEL_16:
      v18 = *MEMORY[0x1E69701A0];
      v46[0] = *MEMORY[0x1E6970198];
      v46[1] = v18;
      v16 = MEMORY[0x1E695DEC8];
      v17 = v46;
      v19 = 2;
LABEL_20:
      v14 = [v16 arrayWithObjects:v17 count:v19];
      break;
    case 0x800:
      goto LABEL_15;
  }

LABEL_21:
  v21 = [(MPCMediaRemoteMiddlewareMetadataOperation *)self _genericObjectPropertySetForContentItem:v6 preferredRelationships:v14 propertySet:v12];

  if (v21)
  {
    v22 = objc_alloc(MEMORY[0x1E69708B0]);
    v42 = v11;
    v43 = v21;
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
    v24 = [v22 initWithProperties:0 relationships:v23];

    v12 = v21;
    goto LABEL_46;
  }

  v12 = 0;
LABEL_24:
  v25 = [v6 mediaType];
  if (v25 <= 255)
  {
    if (v25 != 1)
    {
      if (v25 == 2)
      {
        v31 = *MEMORY[0x1E6970158];
        v38[0] = *MEMORY[0x1E6970130];
        v38[1] = v31;
        v27 = MEMORY[0x1E695DEC8];
        v28 = v38;
        goto LABEL_39;
      }

      if (v25 != 4)
      {
        goto LABEL_41;
      }

      v37 = *MEMORY[0x1E6970158];
      v27 = MEMORY[0x1E695DEC8];
      v28 = &v37;
LABEL_36:
      v29 = 1;
      goto LABEL_40;
    }

LABEL_35:
    v41 = *MEMORY[0x1E6970158];
    v27 = MEMORY[0x1E695DEC8];
    v28 = &v41;
    goto LABEL_36;
  }

  if (v25 > 2047)
  {
    if (v25 == 0x2000)
    {
      goto LABEL_37;
    }

    if (v25 != 2048)
    {
      goto LABEL_41;
    }

    goto LABEL_35;
  }

  if (v25 == 256)
  {
LABEL_37:
    v30 = *MEMORY[0x1E6970158];
    v40[0] = *MEMORY[0x1E6970110];
    v40[1] = v30;
    v27 = MEMORY[0x1E695DEC8];
    v28 = v40;
LABEL_39:
    v29 = 2;
    goto LABEL_40;
  }

  if (v25 == 512)
  {
    v26 = *MEMORY[0x1E6970110];
    v39[0] = *MEMORY[0x1E6970160];
    v39[1] = v26;
    v39[2] = *MEMORY[0x1E6970158];
    v27 = MEMORY[0x1E695DEC8];
    v28 = v39;
    v29 = 3;
LABEL_40:
    v32 = [v27 arrayWithObjects:v28 count:v29];

    v14 = v32;
  }

LABEL_41:
  if (objc_opt_respondsToSelector())
  {
    v33 = [(MPCMediaRemoteMiddlewareMetadataOperation *)self request];
    v34 = [v33 preferredFallbackItemRelationship];

    if (v34)
    {
      v35 = [v14 arrayByAddingObject:v34];

      v14 = v35;
    }
  }

  v24 = [(MPCMediaRemoteMiddlewareMetadataOperation *)self _genericObjectPropertySetForContentItem:v6 preferredRelationships:v14 propertySet:v7];
LABEL_46:

  return v24;
}

- (id)_genericObjectPropertySetForContentItem:(id)a3 preferredRelationships:(id)a4 propertySet:(id)a5
{
  v41 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a5;
  v8 = [MEMORY[0x1E6970670] requiredStoreLibraryPersonalizationProperties];
  v9 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v10 = v6;
  v11 = [v10 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v36;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v36 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v35 + 1) + 8 * i);
        v16 = [v7 relationships];
        v17 = [v16 objectForKeyedSubscript:v15];

        if (v17)
        {
          v18 = [v8 relationships];
          v19 = [v18 objectForKeyedSubscript:v15];
          v20 = v19;
          if (!v19)
          {
            v20 = [MEMORY[0x1E69708B0] emptyPropertySet];
          }

          v21 = [v17 propertySetByCombiningWithPropertySet:v20];
          [v9 setObject:v21 forKeyedSubscript:v15];

          if (!v19)
          {
          }

          goto LABEL_15;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v35 objects:v40 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:

  if (![v9 count])
  {
    memset(v34, 0, sizeof(v34));
    v22 = [v7 relationships];
    if ([v22 countByEnumeratingWithState:v34 objects:v39 count:16])
    {
      v23 = **(&v34[0] + 1);
      v33 = [v7 relationships];
      v24 = [v33 objectForKeyedSubscript:v23];
      v32 = v8;
      v25 = [v8 relationships];
      v26 = [v25 objectForKeyedSubscript:v23];
      v27 = v26;
      if (!v26)
      {
        v27 = [MEMORY[0x1E69708B0] emptyPropertySet];
      }

      [v24 propertySetByCombiningWithPropertySet:v27];
      v29 = v28 = v24;
      [v9 setObject:v29 forKeyedSubscript:v23];

      if (!v26)
      {
      }

      v8 = v32;
    }
  }

  if ([v9 count])
  {
    v30 = [objc_alloc(MEMORY[0x1E69708B0]) initWithProperties:0 relationships:v9];

    v7 = v30;
  }

  return v7;
}

- (_MSVSignedRange)rangeFromTracklistRange:(id)a3
{
  if (a3.var1 >= 0)
  {
    var1 = a3.var1;
  }

  else
  {
    var1 = -a3.var1;
  }

  if (a3.var0 >= 0)
  {
    var0 = a3.var0;
  }

  else
  {
    var0 = -a3.var0;
  }

  v5 = -var0;
  v6 = var1 + var0 + 1;
  result.length = v6;
  result.location = v5;
  return result;
}

- (id)timeoutDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(MPCMediaRemoteMiddlewareMetadataOperation *)self playQueueIdentifiersFuture];
  v5 = [(MPCMediaRemoteMiddlewareMetadataOperation *)self playingIdentifierFuture];
  v6 = +[MPCPlayerPathCache sharedCache];
  v7 = [(MPCMediaRemoteMiddlewareMetadataOperation *)self request];
  v8 = [v7 playerPath];
  v9 = [v6 observationTokenDescriptionForPlayerPath:v8];
  v10 = [v3 stringWithFormat:@"playQueueIdentifiersFuture=%@ playingIdentifierFuture=%@ playerPathObserver=%@", v4, v5, v9];

  return v10;
}

void __52__MPCMediaRemoteMiddlewareMetadataOperation_execute__block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = [*(a1 + 32) isCancelled];
  if (v15 || v16)
  {
    [*(a1 + 32) finishWithError:v15];
  }

  else if ([v11 count])
  {
    v17 = *(a1 + 32);
    if (v12)
    {
      v59 = v14;
      v60 = v13;
      v64 = v12;
      v18 = [v17 request];
      v19 = [v18 queueSectionProperties];

      v20 = [*(a1 + 32) request];
      v67 = [v20 queueItemProperties];

      v21 = objc_alloc_init(MEMORY[0x1E6970818]);
      v22 = objc_alloc_init(MEMORY[0x1E6970818]);
      v23 = [MEMORY[0x1E6970620] translatorForMPModelClass:objc_opt_class()];
      v24 = objc_alloc_init(MEMORY[0x1E6970628]);
      v25 = [*(a1 + 32) middleware];
      v26 = [v25 controller];
      [v24 setArtworkGenerator:v26];

      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __52__MPCMediaRemoteMiddlewareMetadataOperation_execute__block_invoke_2;
      aBlock[3] = &unk_1E8238760;
      v61 = v22;
      v69 = v61;
      v63 = v23;
      v70 = v63;
      v57 = v19;
      v71 = v57;
      v62 = v24;
      v72 = v62;
      v65 = v21;
      v73 = v65;
      v27 = _Block_copy(aBlock);
      v28 = [v11 firstObject];
      v66 = v27;
      (*(v27 + 2))(v27, v28);
      if ([v11 count] >= 1)
      {
        v29 = 0;
        while (1)
        {
          v30 = [v11 objectAtIndexedSubscript:{v29, v57}];
          v31 = [v30 collectionIdentifier];
          if (v31)
          {
            v32 = [v30 collectionIdentifier];
            v33 = [v28 collectionIdentifier];
            v34 = [v32 isEqualToString:v33] ^ 1;
          }

          else
          {
            v34 = 0;
          }

          v35 = [v30 collectionInfo];
          if (v35)
          {
            v36 = [v30 collectionInfo];
            v37 = [v28 collectionInfo];
            v38 = [v36 isEqualToDictionary:v37] ^ 1;
          }

          else
          {
            v38 = 0;
          }

          if ((v34 | v38))
          {
            v39 = v30;

            (v66)[2](v66, v39);
            v28 = v39;
          }

          v40 = v67;
          v41 = [*(a1 + 32) middleware];
          v42 = [v41 playingIndexPath];
          if (v42)
          {
            goto LABEL_18;
          }

          v43 = [v30 identifier];
          v44 = [v43 isEqualToString:v64];

          if (v44)
          {
            break;
          }

LABEL_19:
          if (v40)
          {
            v49 = [*(a1 + 32) _itemGenericObjectPropertySetForContentItem:v30 propertySet:v40];
            v50 = v49;
            if (v30 && v49)
            {
              v51 = [v63 objectForPropertySet:v49 contentItem:v30 context:v62];
              if (v51)
              {
                [v65 appendItem:v51];
                [v61 appendItem:v30];
              }
            }
          }

          if (++v29 >= [v11 count])
          {
            goto LABEL_27;
          }
        }

        v45 = [v65 numberOfSections] - 1;
        v46 = [MEMORY[0x1E696AC88] indexPathForItem:objc_msgSend(v65 inSection:{"numberOfItemsInSection:", v45), v45}];
        v47 = [*(a1 + 32) middleware];
        [v47 setPlayingIndexPath:v46];

        v41 = [*(a1 + 32) request];
        v48 = [v41 playingItemProperties];
        v42 = v40;
        v40 = v48;
LABEL_18:

        goto LABEL_19;
      }

LABEL_27:
      v52 = [*(a1 + 32) middleware];
      [v52 setQueueContentItems:v61];

      v53 = [*(a1 + 32) middleware];
      [v53 setQueueModelObjects:v65];

      v54 = [*(a1 + 32) middleware];
      v13 = v60;
      [v54 setQueueIdentifier:v60];

      v55 = [*(a1 + 32) middleware];
      v14 = v59;
      [v55 setQueueProperties:v59];

      [*(a1 + 32) finish];
      v12 = v64;
      v15 = 0;
    }

    else
    {
      v56 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlayerRequestError" code:2000 debugDescription:@"Failed to get playing identifier"];
      [v17 finishWithError:v56];
    }
  }

  else
  {
    [*(a1 + 32) finish];
  }
}

void __52__MPCMediaRemoteMiddlewareMetadataOperation_execute__block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  [*(a1 + 32) appendSection:v6];
  if (!v6 || ([*(a1 + 40) sectionObjectForPropertySet:*(a1 + 48) contentItem:v6 context:*(a1 + 56)], (v3 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v4 = objc_alloc(MEMORY[0x1E6970670]);
    v5 = [MEMORY[0x1E6970550] emptyIdentifierSet];
    v3 = [v4 initWithIdentifiers:v5 block:&__block_literal_global_27091];
  }

  [*(a1 + 64) appendSection:v3];
}

- (void)_loadPlaybackQueueWithCompletion:(id)a3
{
  v55[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _Block_copy(self->_invalidationHandler);
  v6 = [(MPCMediaRemoteMiddlewareMetadataOperation *)self request];
  v7 = [v6 tracklistRange];
  v9 = [(MPCMediaRemoteMiddlewareMetadataOperation *)self rangeFromTracklistRange:v7, v8];
  v11 = v10;

  v12 = [objc_alloc(MEMORY[0x1E69B0AC0]) initWithRange:{v9, v11}];
  v13 = [(MPCMediaRemoteMiddlewareMetadataOperation *)self request];
  v14 = [v13 playingItemProperties];
  v15 = [v14 relationships];
  v16 = *MEMORY[0x1E6970130];
  v17 = [v15 objectForKeyedSubscript:*MEMORY[0x1E6970130]];
  if (v17)
  {
  }

  else
  {
    [(MPCMediaRemoteMiddlewareMetadataOperation *)self request];
    v18 = v47 = v4;
    [v18 queueItemProperties];
    v46 = v12;
    v20 = v19 = v5;
    v21 = [v20 relationships];
    v22 = [v21 objectForKeyedSubscript:v16];

    v5 = v19;
    v12 = v46;

    v4 = v47;
    if (!v22)
    {
      goto LABEL_7;
    }
  }

  [v12 setIncludeInfo:1];
  [v12 setIncludeSections:1];
  v23 = [(MPCMediaRemoteMiddlewareMetadataOperation *)self request];
  v24 = [v23 playingItemProperties];
  v25 = [v24 relationships];
  v26 = [v25 objectForKeyedSubscript:v16];

  v27 = [v26 properties];
  LODWORD(v24) = [v27 containsObject:*MEMORY[0x1E696FE58]];

  if (v24)
  {
    [v12 setIncludeAlignments:1];
  }

LABEL_7:
  v28 = [(MPCMediaRemoteMiddlewareMetadataOperation *)self request];
  v29 = [v28 label];
  v30 = v29;
  if (v29)
  {
    v31 = v29;
  }

  else
  {
    v31 = &stru_1F454A698;
  }

  [v12 setLabel:v31];

  v32 = [(MPCMediaRemoteMiddlewareMetadataOperation *)self middleware];
  v33 = [v32 controller];
  v34 = [v33 playbackQueueForRequest:v12];
  [(MPCMediaRemoteMiddlewareMetadataOperation *)self setPlaybackQueueFuture:v34];

  v35 = [(MPCMediaRemoteMiddlewareMetadataOperation *)self playbackQueueFuture];
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = __78__MPCMediaRemoteMiddlewareMetadataOperation__loadPlaybackQueueWithCompletion___block_invoke;
  v53[3] = &unk_1E8239528;
  v36 = v5;
  v54 = v36;
  v37 = [v35 onInvalid:v53];

  v55[0] = v37;
  v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:1];
  invalidationObservers = self->_invalidationObservers;
  self->_invalidationObservers = v38;

  v40 = [(MPCMediaRemoteMiddlewareMetadataOperation *)self playbackQueueFuture];
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __78__MPCMediaRemoteMiddlewareMetadataOperation__loadPlaybackQueueWithCompletion___block_invoke_2;
  v50[3] = &unk_1E8238718;
  v50[4] = self;
  v51 = v36;
  v41 = v4;
  v52 = v41;
  v42 = v36;
  v43 = [v40 onSuccess:v50];
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __78__MPCMediaRemoteMiddlewareMetadataOperation__loadPlaybackQueueWithCompletion___block_invoke_5;
  v48[3] = &unk_1E8238D28;
  v49 = v41;
  v44 = v41;
  v45 = [v43 onFailure:v48];
}

void __78__MPCMediaRemoteMiddlewareMetadataOperation__loadPlaybackQueueWithCompletion___block_invoke_2(id *a1, void *a2)
{
  v3 = a2;
  if ([a1[4] isCancelled])
  {
    [a1[4] finish];
  }

  else
  {
    v4 = [v3 identifiers];
    v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
    v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
    v32[0] = 0;
    v32[1] = v32;
    v32[2] = 0x3032000000;
    v32[3] = __Block_byref_object_copy__27102;
    v32[4] = __Block_byref_object_dispose__27103;
    v33 = 0;
    v7 = dispatch_group_create();
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __78__MPCMediaRemoteMiddlewareMetadataOperation__loadPlaybackQueueWithCompletion___block_invoke_7;
    v25[3] = &unk_1E82386C8;
    v8 = v7;
    v9 = a1[4];
    v26 = v8;
    v27 = v9;
    v10 = v5;
    v28 = v10;
    v11 = v6;
    v29 = v11;
    v30 = a1[5];
    v31 = v32;
    [v4 enumerateObjectsUsingBlock:v25];
    v12 = [a1[4] isCancelled];
    v13 = a1[4];
    if (v12)
    {
      [v13 finish];
    }

    else
    {
      v14 = [v13[35] arrayByAddingObject:v11];
      v15 = a1[4];
      v16 = v15[35];
      v15[35] = v14;

      v17 = [a1[4] request];
      v18 = [v17 qualityOfService];
      if ((v18 + 1) > 0x22 || ((1 << (v18 + 1)) & 0x404040400) == 0)
      {
        v18 = 0;
      }

      v19 = dispatch_get_global_queue(v18, 0);
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __78__MPCMediaRemoteMiddlewareMetadataOperation__loadPlaybackQueueWithCompletion___block_invoke_4;
      v20[3] = &unk_1E82386F0;
      v24 = v32;
      v23 = a1[6];
      v21 = v10;
      v22 = v3;
      dispatch_group_notify(v8, v19, v20);
    }

    _Block_object_dispose(v32, 8);
  }
}

void __78__MPCMediaRemoteMiddlewareMetadataOperation__loadPlaybackQueueWithCompletion___block_invoke_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlayerRequestError" code:2000 underlyingError:a2 debugDescription:@"Failed to get playback queue"];
  (*(v2 + 16))(v2, 0, 0, 0, 0, v3);
}

void __78__MPCMediaRemoteMiddlewareMetadataOperation__loadPlaybackQueueWithCompletion___block_invoke_7(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  dispatch_group_enter(*(a1 + 32));
  v6 = [*(a1 + 40) middleware];
  v7 = [v6 controller];
  v8 = [v7 contentItemForIdentifier:v5];

  [*(a1 + 48) addObject:v8];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __78__MPCMediaRemoteMiddlewareMetadataOperation__loadPlaybackQueueWithCompletion___block_invoke_2_8;
  v21[3] = &unk_1E8239170;
  v9 = *(a1 + 56);
  v23 = *(a1 + 64);
  v10 = v5;
  v22 = v10;
  v11 = [v8 onInvalid:v21];
  [v9 addObject:v11];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __78__MPCMediaRemoteMiddlewareMetadataOperation__loadPlaybackQueueWithCompletion___block_invoke_3;
  v15[3] = &unk_1E82386A0;
  v12 = *(a1 + 48);
  v19 = *(a1 + 72);
  v20 = a3;
  v16 = v12;
  v17 = v10;
  v18 = *(a1 + 32);
  v13 = v10;
  v14 = [v8 onCompletion:v15];
}

void __78__MPCMediaRemoteMiddlewareMetadataOperation__loadPlaybackQueueWithCompletion___block_invoke_4(uint64_t a1)
{
  v2 = *(*(*(a1 + 56) + 8) + 40);
  if (v2)
  {
    v8 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlayerRequestError" code:2000 underlyingError:v2 debugDescription:@"Failed to get play queue identifers"];
  }

  else
  {
    v8 = 0;
  }

  v3 = *(a1 + 48);
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) playingIdentifier];
  v6 = [*(a1 + 40) queueIdentifier];
  v7 = [*(a1 + 40) queueProperties];
  (*(v3 + 16))(v3, v4, v5, v6, v7, v8);
}

void __78__MPCMediaRemoteMiddlewareMetadataOperation__loadPlaybackQueueWithCompletion___block_invoke_2_8(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [@"Item Changed: " stringByAppendingString:*(a1 + 32)];
  (*(v1 + 16))(v1, v2);
}

void __78__MPCMediaRemoteMiddlewareMetadataOperation__loadPlaybackQueueWithCompletion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = v5;
  if (v8)
  {
    [*(a1 + 32) replaceObjectAtIndex:*(a1 + 64) withObject:v8];
  }

  else
  {
    v7 = v5;
    if (!v5)
    {
      v7 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlayerRequestError" code:2000 debugDescription:{@"Content item completed without error or value: %@", *(a1 + 40)}];
    }

    objc_storeStrong((*(*(a1 + 56) + 8) + 40), v7);
    if (!v6)
    {
    }
  }

  dispatch_group_leave(*(a1 + 48));
}

- (MPCMediaRemoteMiddlewareMetadataOperation)initWithMiddleware:(id)a3 request:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = MPCMediaRemoteMiddlewareMetadataOperation;
  v9 = [(MPAsyncOperation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_middleware, a3);
    objc_storeStrong(&v10->_request, a4);
  }

  return v10;
}

- (MPSectionedCollection)sourceContentItems
{
  v2 = [(MPCMediaRemoteMiddlewareMetadataOperation *)self middleware];
  v3 = [v2 queueContentItems];

  return v3;
}

- (MPSectionedCollection)modelObjects
{
  v2 = [(MPCMediaRemoteMiddlewareMetadataOperation *)self middleware];
  v3 = [v2 queueModelObjects];

  return v3;
}

- (NSIndexPath)playingIndexPath
{
  v2 = [(MPCMediaRemoteMiddlewareMetadataOperation *)self middleware];
  v3 = [v2 playingIndexPath];

  return v3;
}

@end