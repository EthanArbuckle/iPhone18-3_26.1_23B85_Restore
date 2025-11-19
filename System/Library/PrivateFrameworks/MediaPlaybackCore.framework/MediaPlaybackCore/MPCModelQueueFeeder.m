@interface MPCModelQueueFeeder
- (BOOL)controller:(id)a3 shouldRetryFailedRequestWithError:(id)a4;
- (BOOL)isExportableMediaTypeForItem:(id)a3 inSection:(id)a4;
- (BOOL)isPlayableItem:(id)a3 inSection:(id)a4;
- (BOOL)section:(id)a3 shouldShuffleExcludeItem:(id)a4;
- (BOOL)shouldUsePlaceholderForItem:(id)a3 inSection:(id)a4;
- (BOOL)supportsAutoPlayForItem:(id)a3 inSection:(id)a4;
- (MPCModelQueueFeeder)init;
- (MPCQueueControllerBehaviorMusicDataSourceDelegate)delegate;
- (NSString)playbackEngineID;
- (id)_emptyStaticRequest;
- (id)_modelPlayEventForItem:(id)a3;
- (id)_playlistFolderPlayEventForItem:(id)a3;
- (id)_sectionedModelObjectsRepresentationForSectionedCollection:(id)a3;
- (id)_supplementalLibraryRequestWithError:(id *)a3;
- (id)accountIDForItem:(id)a3 inSection:(id)a4;
- (id)firstItemIntersectingIdentifierSet:(id)a3;
- (id)firstModelPlayEvent;
- (id)identifiersForItem:(id)a3 inSection:(id)a4;
- (id)itemForItem:(id)a3 inSection:(id)a4;
- (id)modelPlayEventForItem:(id)a3 inSection:(id)a4;
- (id)playbackInfoForItem:(id)a3;
- (id)supplementalPlaybackContextWithReason:(int64_t)a3;
- (unint64_t)itemCountInSection:(id)a3;
- (void)_beginBackgroundTaskAssertion;
- (void)_clearQueueDueToAccountChange;
- (void)_endBackgroundTaskAssertion;
- (void)accountManager:(id)a3 didChangeAccounts:(id)a4;
- (void)applyVolumeNormalizationForItem:(id)a3;
- (void)clearSectionProxy;
- (void)controller:(id)a3 defersResponse:(id)a4 completion:(id)a5;
- (void)controllerReplacingResponse:(id)a3 withNewResponse:(id)a4 fromRequest:(id)a5;
- (void)dealloc;
- (void)getRepresentativeMetadataForPlaybackContext:(id)a3 properties:(id)a4 completion:(id)a5;
- (void)loadPlaybackContext:(id)a3 completion:(id)a4;
- (void)reloadSection:(id)a3 completion:(id)a4;
@end

@implementation MPCModelQueueFeeder

- (MPCQueueControllerBehaviorMusicDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (NSString)playbackEngineID
{
  v2 = [(MPCModelQueueFeeder *)self delegate];
  v3 = [v2 playbackEngineID];

  return v3;
}

- (void)accountManager:(id)a3 didChangeAccounts:(id)a4
{
  v6 = a3;
  v7 = a4;
  playbackRequestEnvironment = self->_playbackRequestEnvironment;
  if (playbackRequestEnvironment)
  {
    v9 = [(MPCPlaybackRequestEnvironment *)playbackRequestEnvironment userIdentity];

    if (v9)
    {
      v10 = [(MPCPlaybackRequestEnvironment *)self->_playbackRequestEnvironment userIdentity];
      v11 = [v6 accountForUserIdentity:v10];

      if (!v11)
      {
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __56__MPCModelQueueFeeder_accountManager_didChangeAccounts___block_invoke;
        block[3] = &unk_1E8239298;
        block[4] = self;
        dispatch_async(MEMORY[0x1E69E96A0], block);
      }
    }
  }
}

- (void)_clearQueueDueToAccountChange
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(MPCModelQueueFeeder *)self uniqueIdentifier];
    v11 = 138543618;
    v12 = v4;
    v13 = 2048;
    v14 = self;
    _os_log_impl(&dword_1C5C61000, v3, OS_LOG_TYPE_DEFAULT, "[MQF:%{public}@:%p] _clearQueueDueToAccountChange | clearing queue due to account identity no longer existing", &v11, 0x16u);
  }

  v5 = [(MPCModelQueueFeeder *)self _emptyStaticRequest];
  v6 = [(MPCModelPlaybackRequest *)self->_request label];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = @"<missing request label>";
  }

  v9 = [@"com.apple.MediaPlayer.MPCModelQueueFeeder.ClearedQueue: " stringByAppendingString:v8];
  [v5 setLabel:v9];

  v10 = [(MPCRequestController *)self->_requestController request];
  [v10 setModelRequest:v5];

  [(MPCRequestController *)self->_requestController setNeedsReload];
  [(MPCRequestController *)self->_requestController reloadIfNeeded];
}

- (id)_emptyStaticRequest
{
  v2 = objc_alloc_init(MEMORY[0x1E6970788]);
  v3 = [objc_alloc(MEMORY[0x1E6970790]) initWithRequest:v2];
  v4 = objc_alloc_init(MEMORY[0x1E6970818]);
  [v3 setResults:v4];
  [v2 setStaticResponse:v3];

  return v2;
}

id __45__MPCModelQueueFeeder__staticRegistryRequest__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 count];
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:v3];
  if (v3 >= 1)
  {
    for (i = 0; i != v3; ++i)
    {
      v6 = [v2 identifierSetAtIndex:i];
      v7 = [v6 modelKind];
      v8 = [v7 modelClass];
      if (!v8)
      {
        v8 = objc_opt_class();
      }

      v9 = [v8 alloc];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __45__MPCModelQueueFeeder__staticRegistryRequest__block_invoke_2;
      v17[3] = &unk_1E8234B10;
      v18 = v2;
      v19 = i;
      v10 = [v9 initWithIdentifiers:v6 block:v17];
      v11 = [(objc_class *)v8 mqf_requiredItemPlaybackProperties];
      v12 = [v10 copyWithPropertySet:v11];

      [v4 addObject:v12];
    }
  }

  v13 = objc_alloc_init(MEMORY[0x1E6970788]);
  v14 = [objc_alloc(MEMORY[0x1E6970790]) initWithRequest:v13];
  v15 = objc_alloc_init(MEMORY[0x1E6970818]);
  [v15 appendSection:&stru_1F454A698];
  [v15 appendItems:v4];
  [v14 setResults:v15];
  [v13 setStaticResponse:v14];

  return v13;
}

void __45__MPCModelQueueFeeder__staticRegistryRequest__block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = v7;
    v6 = [v4 itemAtIndex:v3];
    [v5 setTitle:v6];
  }
}

- (id)_supplementalLibraryRequestWithError:(id *)a3
{
  v106 = *MEMORY[0x1E69E9840];
  v4 = [(MPCModelPlaybackRequest *)self->_request copy];
  objc_opt_class();
  v5 = v4;
  if (objc_opt_isKindOfClass())
  {
    v6 = [(MPCModelPlaybackRequest *)self->_request mediaLibrary];
    [v4 setMediaLibrary:v6];
  }

  v68 = [v4 allowedSectionIdentifiers];
  v69 = v4;
  if ([v68 count])
  {
    v71 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v68, "count")}];
    v99 = 0u;
    v100 = 0u;
    v101 = 0u;
    v102 = 0u;
    v7 = v68;
    v8 = [v7 countByEnumeratingWithState:&v99 objects:v105 count:16];
    if (!v8)
    {
      goto LABEL_22;
    }

    v9 = v8;
    v10 = *v100;
    obj = v7;
    while (1)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v100 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v99 + 1) + 8 * i);
        v13 = [v12 personalizedStore];
        v14 = [v12 universalStore];
        v15 = v14;
        if (v13)
        {
          v16 = [v13 cloudID] != 0;
          if (!v15)
          {
            goto LABEL_14;
          }
        }

        else
        {
          v16 = 0;
          if (!v14)
          {
LABEL_14:
            v18 = 0;
            if (!v16)
            {
              goto LABEL_18;
            }

            goto LABEL_19;
          }
        }

        v17 = [v15 globalPlaylistID];
        if ([v17 length])
        {
          v18 = 1;
        }

        else
        {
          v19 = [v15 universalCloudLibraryID];
          v18 = [v19 length] != 0;
        }

        if (!v16)
        {
LABEL_18:
          if (!v18)
          {
            goto LABEL_20;
          }
        }

LABEL_19:
        v20 = objc_alloc(MEMORY[0x1E6970550]);
        v21 = [v12 modelKind];
        v94[0] = MEMORY[0x1E69E9820];
        v94[1] = 3221225472;
        v94[2] = __60__MPCModelQueueFeeder__supplementalLibraryRequestWithError___block_invoke;
        v94[3] = &unk_1E8234AE8;
        v97 = v16;
        v95 = v13;
        v98 = v18;
        v96 = v15;
        v22 = [v20 initWithSource:@"ModelQueueFeeder" modelKind:v21 block:v94];

        [v71 addObject:v22];
LABEL_20:
      }

      v7 = obj;
      v9 = [obj countByEnumeratingWithState:&v99 objects:v105 count:16];
      if (!v9)
      {
LABEL_22:

        v5 = v69;
        [v69 setAllowedSectionIdentifiers:v71];
        if ([v71 count])
        {

          break;
        }

        if (!a3)
        {
          v59 = 0;
          v23 = v71;
          goto LABEL_80;
        }

        v60 = MEMORY[0x1E696ABC0];
        v40 = [v7 msv_compactDescription];
        [v60 msv_errorWithDomain:@"MPCError" code:72 debugDescription:{@"Failed to create transportable allowedSectionIDs: %@", v40}];
        *a3 = v59 = 0;
LABEL_78:
        v23 = v71;
        goto LABEL_79;
      }
    }
  }

  v23 = [v5 allowedItemIdentifiers];
  v71 = v23;
  if (![v23 count])
  {
    goto LABEL_45;
  }

  obja = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v23, "count")}];
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v24 = v23;
  v25 = [v24 countByEnumeratingWithState:&v90 objects:v104 count:16];
  if (!v25)
  {
    goto LABEL_43;
  }

  v26 = v25;
  v27 = *v91;
  do
  {
    for (j = 0; j != v26; ++j)
    {
      if (*v91 != v27)
      {
        objc_enumerationMutation(v24);
      }

      v29 = *(*(&v90 + 1) + 8 * j);
      v30 = [v29 personalizedStore];
      v31 = [v29 universalStore];
      v32 = v31;
      if (v30)
      {
        v33 = [v30 cloudID] != 0;
        if (!v32)
        {
          goto LABEL_35;
        }
      }

      else
      {
        v33 = 0;
        if (!v31)
        {
LABEL_35:
          v35 = 0;
          if (!v33)
          {
            goto LABEL_39;
          }

          goto LABEL_40;
        }
      }

      v34 = [v32 universalCloudLibraryID];
      if ([v34 length])
      {
        v35 = 1;
      }

      else
      {
        v35 = [v32 purchasedAdamID] != 0;
      }

      if (!v33)
      {
LABEL_39:
        if (!v35)
        {
          goto LABEL_41;
        }
      }

LABEL_40:
      v36 = v24;
      v37 = objc_alloc(MEMORY[0x1E6970550]);
      v38 = [v29 modelKind];
      v85[0] = MEMORY[0x1E69E9820];
      v85[1] = 3221225472;
      v85[2] = __60__MPCModelQueueFeeder__supplementalLibraryRequestWithError___block_invoke_4;
      v85[3] = &unk_1E8234AE8;
      v88 = v33;
      v86 = v30;
      v89 = v35;
      v87 = v32;
      v39 = [v37 initWithSource:@"ModelQueueFeeder" modelKind:v38 block:v85];

      [obja addObject:v39];
      v24 = v36;

LABEL_41:
    }

    v26 = [v24 countByEnumeratingWithState:&v90 objects:v104 count:16];
  }

  while (v26);
LABEL_43:

  v5 = v69;
  v23 = v24;
  v40 = obja;
  [v69 setAllowedItemIdentifiers:obja];
  if (![obja count])
  {
    if (a3)
    {
      v61 = MEMORY[0x1E696ABC0];
      v62 = [v23 msv_compactDescription];
      *a3 = [v61 msv_errorWithDomain:@"MPCError" code:72 debugDescription:{@"Failed to create transportable allowedItemIDs: %@", v62}];

      v5 = v69;
    }

    v59 = 0;
    goto LABEL_79;
  }

  v23 = v71;
LABEL_45:
  v40 = [v5 scopedContainers];
  if (![v40 count])
  {
    goto LABEL_69;
  }

  v41 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v40, "count")}];
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v66 = v40;
  v40 = v40;
  v72 = [v40 countByEnumeratingWithState:&v81 objects:v103 count:16];
  if (!v72)
  {
    goto LABEL_67;
  }

  v42 = *v82;
  objb = v40;
  v70 = *v82;
  while (2)
  {
    v43 = 0;
    while (2)
    {
      if (*v82 != v42)
      {
        objc_enumerationMutation(objb);
      }

      v44 = *(*(&v81 + 1) + 8 * v43);
      v45 = [v44 identifiers];
      v46 = [v45 personalizedStore];

      v47 = [v44 identifiers];
      v48 = [v47 universalStore];

      if (v46)
      {
        v49 = [v46 cloudID] != 0;
        if (v48)
        {
          goto LABEL_53;
        }

LABEL_56:
        v51 = 0;
        if (v49)
        {
          goto LABEL_64;
        }

LABEL_63:
        if (v51)
        {
          goto LABEL_64;
        }
      }

      else
      {
        v49 = 0;
        if (!v48)
        {
          goto LABEL_56;
        }

LABEL_53:
        v50 = [v48 globalPlaylistID];
        if ([v50 length])
        {
          v51 = 1;
        }

        else
        {
          v52 = [v48 universalCloudLibraryID];
          if ([v52 length])
          {
            v51 = 1;
          }

          else
          {
            v51 = [v48 purchasedAdamID] != 0;
          }
        }

        if (!v49)
        {
          goto LABEL_63;
        }

LABEL_64:
        v53 = objc_alloc(MEMORY[0x1E6970550]);
        v54 = [v44 identifiers];
        [v54 modelKind];
        v56 = v55 = v41;
        v76[0] = MEMORY[0x1E69E9820];
        v76[1] = 3221225472;
        v76[2] = __60__MPCModelQueueFeeder__supplementalLibraryRequestWithError___block_invoke_7;
        v76[3] = &unk_1E8234AE8;
        v79 = v49;
        v77 = v46;
        v80 = v51;
        v78 = v48;
        v57 = [v53 initWithSource:@"ModelQueueFeeder" modelKind:v56 block:v76];

        v41 = v55;
        v42 = v70;

        v58 = [v44 copyWithIdentifiers:v57 block:&__block_literal_global_289];
        [v41 addObject:v58];
      }

      if (v72 != ++v43)
      {
        continue;
      }

      break;
    }

    v40 = objb;
    v72 = [objb countByEnumeratingWithState:&v81 objects:v103 count:16];
    if (v72)
    {
      continue;
    }

    break;
  }

LABEL_67:

  v5 = v69;
  [v69 setScopedContainers:v41];
  if (![v41 count])
  {
    if (a3)
    {
      v63 = MEMORY[0x1E696ABC0];
      v64 = [v40 msv_compactDescription];
      *a3 = [v63 msv_errorWithDomain:@"MPCError" code:72 debugDescription:{@"Failed to create transportable scopedContainers: %@", v64}];

      v5 = v69;
    }

    v59 = 0;
    goto LABEL_78;
  }

  v23 = v71;
  v40 = v66;
LABEL_69:
  v59 = v5;
LABEL_79:

LABEL_80:

  return v59;
}

void __60__MPCModelQueueFeeder__supplementalLibraryRequestWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 48) == 1)
  {
    v4 = [*(a1 + 32) personID];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __60__MPCModelQueueFeeder__supplementalLibraryRequestWithError___block_invoke_2;
    v7[3] = &unk_1E82389B0;
    v8 = *(a1 + 32);
    [v3 setPersonalStoreIdentifiersWithPersonID:v4 block:v7];
  }

  if (*(a1 + 49) == 1)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __60__MPCModelQueueFeeder__supplementalLibraryRequestWithError___block_invoke_3;
    v5[3] = &unk_1E8238988;
    v6 = *(a1 + 40);
    [v3 setUniversalStoreIdentifiersWithBlock:v5];
  }
}

void __60__MPCModelQueueFeeder__supplementalLibraryRequestWithError___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 48) == 1)
  {
    v4 = [*(a1 + 32) personID];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __60__MPCModelQueueFeeder__supplementalLibraryRequestWithError___block_invoke_5;
    v7[3] = &unk_1E82389B0;
    v8 = *(a1 + 32);
    [v3 setPersonalStoreIdentifiersWithPersonID:v4 block:v7];
  }

  if (*(a1 + 49) == 1)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __60__MPCModelQueueFeeder__supplementalLibraryRequestWithError___block_invoke_6;
    v5[3] = &unk_1E8238988;
    v6 = *(a1 + 40);
    [v3 setUniversalStoreIdentifiersWithBlock:v5];
  }
}

void __60__MPCModelQueueFeeder__supplementalLibraryRequestWithError___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 48) == 1)
  {
    v4 = [*(a1 + 32) personID];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __60__MPCModelQueueFeeder__supplementalLibraryRequestWithError___block_invoke_8;
    v7[3] = &unk_1E82389B0;
    v8 = *(a1 + 32);
    [v3 setPersonalStoreIdentifiersWithPersonID:v4 block:v7];
  }

  if (*(a1 + 49) == 1)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __60__MPCModelQueueFeeder__supplementalLibraryRequestWithError___block_invoke_9;
    v5[3] = &unk_1E8238988;
    v6 = *(a1 + 40);
    [v3 setUniversalStoreIdentifiersWithBlock:v5];
  }
}

void __60__MPCModelQueueFeeder__supplementalLibraryRequestWithError___block_invoke_8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setCloudID:{objc_msgSend(v2, "cloudID")}];
}

void __60__MPCModelQueueFeeder__supplementalLibraryRequestWithError___block_invoke_9(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6 = a2;
  v4 = [v3 globalPlaylistID];
  [v6 setGlobalPlaylistID:v4];

  v5 = [*(a1 + 32) universalCloudLibraryID];
  [v6 setUniversalCloudLibraryID:v5];

  [v6 setPurchasedAdamID:{objc_msgSend(*(a1 + 32), "purchasedAdamID")}];
}

void __60__MPCModelQueueFeeder__supplementalLibraryRequestWithError___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setCloudID:{objc_msgSend(v2, "cloudID")}];
}

void __60__MPCModelQueueFeeder__supplementalLibraryRequestWithError___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  v4 = [v3 universalCloudLibraryID];
  [v5 setUniversalCloudLibraryID:v4];

  [v5 setPurchasedAdamID:{objc_msgSend(*(a1 + 32), "purchasedAdamID")}];
}

void __60__MPCModelQueueFeeder__supplementalLibraryRequestWithError___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setCloudID:{objc_msgSend(v2, "cloudID")}];
}

void __60__MPCModelQueueFeeder__supplementalLibraryRequestWithError___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 globalPlaylistID];
  [v4 setGlobalPlaylistID:v5];

  v6 = [*(a1 + 32) universalCloudLibraryID];
  [v4 setUniversalCloudLibraryID:v6];
}

- (id)_sectionedModelObjectsRepresentationForSectionedCollection:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E6970818]);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __82__MPCModelQueueFeeder__sectionedModelObjectsRepresentationForSectionedCollection___block_invoke;
  v11[3] = &unk_1E8234AC0;
  v6 = v5;
  v12 = v6;
  v13 = self;
  v14 = v4;
  v7 = v4;
  [v7 enumerateSectionsUsingBlock:v11];
  v8 = v14;
  v9 = v6;

  return v6;
}

void __82__MPCModelQueueFeeder__sectionedModelObjectsRepresentationForSectionedCollection___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = objc_alloc(MEMORY[0x1E69706F8]);
    v7 = [MEMORY[0x1E6970550] emptyIdentifierSet];
    v8 = [v6 initWithIdentifiers:v7 block:&__block_literal_global_268];

    v5 = v8;
  }

  [*(a1 + 32) appendSection:v5];
  v9 = [*(*(a1 + 40) + 248) request];
  v10 = [v9 itemKind];
  v11 = [v10 modelClass];

  if (v11)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v5 type] == 1)
    {
      v12 = *(a1 + 48);
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __82__MPCModelQueueFeeder__sectionedModelObjectsRepresentationForSectionedCollection___block_invoke_3;
      v17[3] = &unk_1E8234A70;
      v18[1] = v11;
      v13 = v18;
      v18[0] = *(a1 + 32);
      [v12 enumerateItemsInSectionAtIndex:a3 usingBlock:v17];
    }

    else
    {
      v14 = *(a1 + 48);
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __82__MPCModelQueueFeeder__sectionedModelObjectsRepresentationForSectionedCollection___block_invoke_5;
      v15[3] = &unk_1E8234A98;
      v16[1] = v11;
      v13 = v16;
      v16[0] = *(a1 + 32);
      [v14 enumerateItemIdentifiersInSectionAtIndex:a3 usingBlock:v15];
    }
  }
}

void __82__MPCModelQueueFeeder__sectionedModelObjectsRepresentationForSectionedCollection___block_invoke_3(uint64_t a1, void *a2)
{
  v4 = [a2 identifiers];
  v3 = [objc_alloc(*(a1 + 40)) initWithIdentifiers:v4 block:&__block_literal_global_270];
  [*(a1 + 32) appendItem:v3];
}

void __82__MPCModelQueueFeeder__sectionedModelObjectsRepresentationForSectionedCollection___block_invoke_5(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 40);
  v5 = a3;
  v6 = [[v4 alloc] initWithIdentifiers:v5 block:&__block_literal_global_274];

  [*(a1 + 32) appendItem:v6];
}

- (void)_endBackgroundTaskAssertion
{
  objc_initWeak(&location, self);
  v2 = dispatch_time(0, 1000000000);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __50__MPCModelQueueFeeder__endBackgroundTaskAssertion__block_invoke;
  v3[3] = &unk_1E8239500;
  objc_copyWeak(&v4, &location);
  dispatch_after(v2, MEMORY[0x1E69E96A0], v3);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __50__MPCModelQueueFeeder__endBackgroundTaskAssertion__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[28] - 1;
    WeakRetained[28] = v3;
    if (!v3)
    {
      v4 = *MEMORY[0x1E69B1358];
      if (WeakRetained[27] != *MEMORY[0x1E69B1358])
      {
        v5 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v6 = [v2 uniqueIdentifier];
          v7 = v2[27];
          v9 = 138543874;
          v10 = v6;
          v11 = 2048;
          v12 = v2;
          v13 = 2048;
          v14 = v7;
          _os_log_impl(&dword_1C5C61000, v5, OS_LOG_TYPE_DEFAULT, "[MQF:%{public}@:%p] _endBackgroundTaskAssertion | task ended [] task.id=%lu", &v9, 0x20u);
        }

        v8 = MPSharedBackgroundTaskProvider();
        [v8 endTask:v2[27]];

        v2[27] = v4;
      }
    }
  }
}

- (void)_beginBackgroundTaskAssertion
{
  v31 = *MEMORY[0x1E69E9840];
  backgroundTasks = self->_backgroundTasks;
  self->_backgroundTasks = backgroundTasks + 1;
  v4 = *MEMORY[0x1E69B1358];
  if (!backgroundTasks || self->_backgroundTaskIdentifier == v4)
  {
    v5 = [(MPCModelQueueFeeder *)self description];
    v6 = MPSharedBackgroundTaskProvider();
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __52__MPCModelQueueFeeder__beginBackgroundTaskAssertion__block_invoke;
    v20 = &unk_1E82392C0;
    v21 = self;
    v7 = v5;
    v22 = v7;
    self->_backgroundTaskIdentifier = [v6 beginTaskWithName:v7 expirationHandler:&v17];

    backgroundTaskIdentifier = self->_backgroundTaskIdentifier;
    v9 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    v10 = v9;
    if (backgroundTaskIdentifier == v4)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v11 = [(MPCModelQueueFeeder *)self uniqueIdentifier:v17];
        *buf = 138543874;
        v24 = v11;
        v25 = 2048;
        v26 = self;
        v27 = 2114;
        v28 = v7;
        v12 = "[MQF:%{public}@:%p] _beginBackgroundTaskAssertion | task failed to start [] task.name=%{public}@";
        v13 = v10;
        v14 = OS_LOG_TYPE_ERROR;
        v15 = 32;
LABEL_8:
        _os_log_impl(&dword_1C5C61000, v13, v14, v12, buf, v15);
      }
    }

    else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(MPCModelQueueFeeder *)self uniqueIdentifier:v17];
      v16 = self->_backgroundTaskIdentifier;
      *buf = 138544130;
      v24 = v11;
      v25 = 2048;
      v26 = self;
      v27 = 2114;
      v28 = v7;
      v29 = 2048;
      v30 = v16;
      v12 = "[MQF:%{public}@:%p] _beginBackgroundTaskAssertion | task started [] task.name=%{public}@ task.id=%lu";
      v13 = v10;
      v14 = OS_LOG_TYPE_DEFAULT;
      v15 = 42;
      goto LABEL_8;
    }
  }
}

void __52__MPCModelQueueFeeder__beginBackgroundTaskAssertion__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = [*(a1 + 32) uniqueIdentifier];
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v7 = 138543874;
    v8 = v3;
    v9 = 2048;
    v10 = v4;
    v11 = 2114;
    v12 = v5;
    _os_log_impl(&dword_1C5C61000, v2, OS_LOG_TYPE_ERROR, "[MQF:%{public}@:%p] BackgroundTask.expirationHandler | task expired [] task.name=%{public}@", &v7, 0x20u);
  }

  v6 = MPSharedBackgroundTaskProvider();
  [v6 endTask:*(*(a1 + 32) + 216)];

  *(*(a1 + 32) + 216) = *MEMORY[0x1E69B1358];
}

- (void)clearSectionProxy
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(MPCModelQueueFeeder *)self uniqueIdentifier];
    v6 = 138543618;
    v7 = v4;
    v8 = 2048;
    v9 = self;
    _os_log_impl(&dword_1C5C61000, v3, OS_LOG_TYPE_DEFAULT, "[MQF:%{public}@:%p] clearSectionProxy | clearing section proxy", &v6, 0x16u);
  }

  section = self->_section;
  self->_section = 0;
}

- (BOOL)section:(id)a3 shouldShuffleExcludeItem:(id)a4
{
  v5 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __56__MPCModelQueueFeeder_section_shouldShuffleExcludeItem___block_invoke;
  v10[3] = &unk_1E82355C8;
  v11 = v5;
  v6 = v5;
  v7 = [(MPQueueFeeder *)self identifierRegistryWithExclusiveAccessReturningObject:v10];
  v8 = [v7 shouldExcludeFromShuffle];

  return v8;
}

id __56__MPCModelQueueFeeder_section_shouldShuffleExcludeItem___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 indexForItem:*(a1 + 32)];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v5 = [v3 identifierSetAtIndex:v4];
  }

  return v5;
}

- (void)reloadSection:(id)a3 completion:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  objc_storeStrong(&self->_section, a3);
  v9 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(MPCModelQueueFeeder *)self uniqueIdentifier];
    *buf = 138543874;
    v19 = v10;
    v20 = 2048;
    v21 = self;
    v22 = 2048;
    v23 = v7;
    _os_log_impl(&dword_1C5C61000, v9, OS_LOG_TYPE_DEFAULT, "[MQF:%{public}@:%p] reloadSection: | connecting to section [] section=%p", buf, 0x20u);
  }

  diffQueue = self->_diffQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__MPCModelQueueFeeder_reloadSection_completion___block_invoke;
  block[3] = &unk_1E8239198;
  v15 = v7;
  v16 = self;
  v17 = v8;
  v12 = v8;
  v13 = v7;
  dispatch_async(diffQueue, block);
}

void __48__MPCModelQueueFeeder_reloadSection_completion___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) itemIdentifiers];
  v3 = *(a1 + 40);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __48__MPCModelQueueFeeder_reloadSection_completion___block_invoke_2;
  v12[3] = &unk_1E82355C8;
  v4 = v2;
  v13 = v4;
  v5 = [v3 identifierRegistryWithExclusiveAccessReturningObject:v12];
  v6 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*(a1 + 40) uniqueIdentifier];
    v9 = *(a1 + 32);
    v8 = *(a1 + 40);
    *buf = 138544130;
    v15 = v7;
    v16 = 2048;
    v17 = v8;
    v18 = 2048;
    v19 = v9;
    v20 = 2114;
    v21 = v5;
    _os_log_impl(&dword_1C5C61000, v6, OS_LOG_TYPE_DEFAULT, "[MQF:%{public}@:%p] reloadSection: | applying changes [] section=%p changes=%{public}@", buf, 0x2Au);
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __48__MPCModelQueueFeeder_reloadSection_completion___block_invoke_263;
  v11[3] = &unk_1E82356D0;
  v10 = *(a1 + 32);
  v11[4] = *(a1 + 40);
  [v10 applyChanges:v5 itemLookupBlock:v11];
  (*(*(a1 + 48) + 16))();
}

id __48__MPCModelQueueFeeder_reloadSection_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x1E69704C8];
  v5 = [*(a1 + 32) count];
  v6 = [v3 count];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __48__MPCModelQueueFeeder_reloadSection_completion___block_invoke_3;
  v10[3] = &unk_1E8235640;
  v11 = *(a1 + 32);
  v12 = v3;
  v7 = v3;
  v8 = [v4 changeDetailsWithPreviousCount:v5 finalCount:v6 isEqualBlock:v10 isUpdatedBlock:&__block_literal_global_262];

  return v8;
}

id __48__MPCModelQueueFeeder_reloadSection_completion___block_invoke_263(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__MPCModelQueueFeeder_reloadSection_completion___block_invoke_2_264;
  v5[3] = &__block_descriptor_40_e41__16__0__MPQueueFeederIdentifierRegistry_8l;
  v5[4] = a2;
  v3 = [v2 identifierRegistryWithExclusiveAccessReturningObject:v5];

  return v3;
}

uint64_t __48__MPCModelQueueFeeder_reloadSection_completion___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 32) objectAtIndexedSubscript:a2];
  v6 = [*(a1 + 40) itemAtIndex:a3];
  v7 = [v5 isEqual:v6];

  return v7;
}

- (BOOL)isPlayableItem:(id)a3 inSection:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __48__MPCModelQueueFeeder_isPlayableItem_inSection___block_invoke;
  v22[3] = &unk_1E8235550;
  v7 = v6;
  v23 = v7;
  v8 = [(MPQueueFeeder *)self identifierRegistryWithExclusiveAccessReturningInteger:v22];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [(MPCModelQueueFeeder *)self uniqueIdentifier];
      *buf = 138543874;
      v25 = v10;
      v26 = 2048;
      v27 = self;
      v28 = 2114;
      v29 = v7;
      _os_log_impl(&dword_1C5C61000, v9, OS_LOG_TYPE_ERROR, "[MQF:%{public}@:%p] isPlayableItem:inSection: | returning NO [no index for item in registry] item=%{public}@", buf, 0x20u);
    }

    v11 = 0;
  }

  else
  {
    v12 = v8;
    v9 = [(MPCModelPlaybackResponse *)self->_response results];
    v13 = [v9 indexPathForGlobalIndex:v12];
    v14 = v13;
    if (v13)
    {
      if ([v13 length] != 2)
      {
        v21 = [MEMORY[0x1E696AAA8] currentHandler];
        [v21 handleFailureInMethod:a2 object:self file:@"MPCModelQueueFeeder.m" lineNumber:1133 description:{@"IndexPath was not an item index path with globalIndex from registry: %ld indexPath=%@", v12, v14}];
      }

      v15 = [v9 itemAtIndexPath:v14];
      v16 = [MEMORY[0x1E6970670] genericObjectWithModelObject:v15];
      v17 = [v16 flattenedGenericObject];
      v11 = [v17 mpc_playable];
    }

    else
    {
      v15 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v18 = [(MPCModelQueueFeeder *)self uniqueIdentifier];
        v19 = [v9 totalItemCount];
        *buf = 138544642;
        v25 = v18;
        v26 = 2048;
        v27 = self;
        v28 = 2048;
        v29 = v12;
        v30 = 2114;
        v31 = v7;
        v32 = 2048;
        v33 = v9;
        v34 = 2048;
        v35 = v19;
        _os_log_impl(&dword_1C5C61000, v15, OS_LOG_TYPE_ERROR, "[MQF:%{public}@:%p] isPlayableItem:inSection: | returning NO [indexPathForGlobalIndex:%ld returned nil] item=%{public}@ results=%p results.totalItemCount=%ld", buf, 0x3Eu);
      }

      v11 = 0;
    }
  }

  return v11;
}

- (BOOL)shouldUsePlaceholderForItem:(id)a3 inSection:(id)a4
{
  v5 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __61__MPCModelQueueFeeder_shouldUsePlaceholderForItem_inSection___block_invoke;
  v10[3] = &unk_1E82355C8;
  v11 = v5;
  v6 = v5;
  v7 = [(MPQueueFeeder *)self identifierRegistryWithExclusiveAccessReturningObject:v10];
  v8 = [v7 isPlaceholder];

  return v8;
}

id __61__MPCModelQueueFeeder_shouldUsePlaceholderForItem_inSection___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 indexForItem:*(a1 + 32)];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v5 = [v3 identifierSetAtIndex:v4];
  }

  return v5;
}

- (id)itemForItem:(id)a3 inSection:(id)a4
{
  v54 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __45__MPCModelQueueFeeder_itemForItem_inSection___block_invoke;
  v40[3] = &unk_1E8235550;
  v9 = v7;
  v41 = v9;
  v10 = [(MPQueueFeeder *)self identifierRegistryWithExclusiveAccessReturningInteger:v40];
  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = v10;
    v11 = [(MPCModelPlaybackResponse *)self->_response results];
    v15 = [v11 indexPathForGlobalIndex:v14];
    v16 = v15;
    if (!v15)
    {
      v17 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v22 = [(MPCModelQueueFeeder *)self uniqueIdentifier];
        v23 = [v11 totalItemCount];
        *buf = 138544642;
        v43 = v22;
        v44 = 2048;
        v45 = self;
        v46 = 2048;
        v47 = v14;
        v48 = 2114;
        v49 = v9;
        v50 = 2048;
        v51 = v11;
        v52 = 2048;
        v53 = v23;
        _os_log_impl(&dword_1C5C61000, v17, OS_LOG_TYPE_ERROR, "[MQF:%{public}@:%p] itemForItem:inSection: | returning nil [indexPathForGlobalIndex:%ld returned nil] item=%{public}@ results=%p results.totalItemCount=%ld", buf, 0x3Eu);
      }

      v13 = 0;
      goto LABEL_21;
    }

    if ([v15 length] != 2)
    {
      v39 = [MEMORY[0x1E696AAA8] currentHandler];
      [v39 handleFailureInMethod:a2 object:self file:@"MPCModelQueueFeeder.m" lineNumber:1066 description:{@"IndexPath was not an item index path with globalIndex from registry: %ld indexPath=%@", v14, v16}];
    }

    v17 = [v11 itemAtIndexPath:v16];
    v18 = [MEMORY[0x1E6970670] genericObjectWithModelObject:v17];
    v19 = &OBJC_IVAR___MPCVocalAttenuationModel__processingDelay;
    if ([v18 type] == 10)
    {
      v20 = [MPCModelMediaClipAVItem alloc];
      v21 = [v18 mediaClip];
      v13 = [(MPCModelMediaClipAVItem *)v20 initWithMediaClip:v21];

      if (!v13)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v24 = [MPCModelGenericAVItem alloc];
      v25 = [(MPCModelPlaybackResponse *)self->_response request];
      v26 = [v25 itemProperties];
      v13 = [(MPCModelGenericAVItem *)v24 initWithGenericObject:v18 itemProperties:v26 playbackRequestEnvironment:self->_playbackRequestEnvironment identityPropertySet:self->_identityPropertySet];

      v27 = [MEMORY[0x1E696AD98] numberWithBool:self->_isSiriInitiated];
      [(MPCModelMediaClipAVItem *)v13 setSiriInitiated:v27];

      v28 = [(MPCModelPlaybackContext *)self->_playbackContext queueDescriptor];
      -[MPCModelMediaClipAVItem setPrioritizeStartupOverQuality:](v13, "setPrioritizeStartupOverQuality:", [v28 prioritizeStartupOverQuality]);

      v29 = [(MPCPlaybackRequestEnvironment *)self->_playbackRequestEnvironment userIdentity];
      v30 = [MPCMediaLibraryPlaybackAssetCacheProvider deviceLibraryProviderWithUserIdentity:v29];
      [(MPCModelMediaClipAVItem *)v13 setAssetCacheProvider:v30];

      if (objc_opt_respondsToSelector())
      {
        v31 = [(MPCModelPlaybackRequest *)self->_request mediaLibrary];
        [(MPCModelMediaClipAVItem *)v13 setMediaLibrary:v31];
      }

      os_unfair_lock_lock_with_options();
      activeModelGenericAVItems = self->_activeModelGenericAVItems;
      if (!activeModelGenericAVItems)
      {
        v33 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
        v34 = self->_activeModelGenericAVItems;
        self->_activeModelGenericAVItems = v33;

        activeModelGenericAVItems = self->_activeModelGenericAVItems;
      }

      [(NSHashTable *)activeModelGenericAVItems addObject:v13];
      os_unfair_lock_unlock(&self->_lock);
      v19 = &OBJC_IVAR___MPCVocalAttenuationModel__processingDelay;
      if (!v13)
      {
        goto LABEL_20;
      }
    }

    [(MPCModelMediaClipAVItem *)v13 setFeeder:self];
    [(MPCModelMediaClipAVItem *)v13 setQueueIdentifier:v9];
    v35 = [(MPCModelQueueFeeder *)self modelPlayEventForItem:v9 inSection:v8];
    [(MPCModelMediaClipAVItem *)v13 setModelPlayEvent:v35];

    v36 = [(MPCModelQueueFeeder *)self playbackInfoForItem:v13];
    [(MPCModelMediaClipAVItem *)v13 setPlaybackInfo:v36];

    v37 = [*(&self->super.super.isa + v19[638]) associatedParticipantIdentifier];
    [(MPCModelMediaClipAVItem *)v13 setAssociatedParticipantIdentifier:v37];

LABEL_20:
LABEL_21:

    goto LABEL_22;
  }

  v11 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = [(MPCModelQueueFeeder *)self uniqueIdentifier];
    *buf = 138543874;
    v43 = v12;
    v44 = 2048;
    v45 = self;
    v46 = 2114;
    v47 = v9;
    _os_log_impl(&dword_1C5C61000, v11, OS_LOG_TYPE_ERROR, "[MQF:%{public}@:%p] itemForItem:inSection: | returning nil [no index for item in registry] item=%{public}@", buf, 0x20u);
  }

  v13 = 0;
LABEL_22:

  return v13;
}

- (id)identifiersForItem:(id)a3 inSection:(id)a4
{
  v5 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __52__MPCModelQueueFeeder_identifiersForItem_inSection___block_invoke;
  v9[3] = &unk_1E82355C8;
  v10 = v5;
  v6 = v5;
  v7 = [(MPQueueFeeder *)self identifierRegistryWithExclusiveAccessReturningObject:v9];

  return v7;
}

id __52__MPCModelQueueFeeder_identifiersForItem_inSection___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 indexForItem:*(a1 + 32)];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v5 = [v3 identifierSetAtIndex:v4];
  }

  return v5;
}

- (void)loadPlaybackContext:(id)a3 completion:(id)a4
{
  v178[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v151 = a4;
  objc_storeStrong(&self->_playbackContext, a3);
  v8 = [v7 fallbackSectionRepresentation];
  v9 = [v8 copy];
  fallbackSectionRepresentation = self->_fallbackSectionRepresentation;
  self->_fallbackSectionRepresentation = v9;

  v11 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback_Oversize");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(MPCModelQueueFeeder *)self uniqueIdentifier];
    *buf = 138543874;
    *&buf[4] = v12;
    *&buf[12] = 2048;
    *&buf[14] = self;
    *&buf[22] = 2114;
    v169 = v7;
    _os_log_impl(&dword_1C5C61000, v11, OS_LOG_TYPE_DEFAULT, "[MQF:%{public}@:%p] loadPlaybackContext: | [] playbackContext=%{public}@", buf, 0x20u);
  }

  v13 = [v7 playActivityRecommendationData];
  [(MPQueueFeeder *)self setPlayActivityRecommendationData:v13];

  v14 = [v7 playActivityQueueGroupingID];
  [(MPQueueFeeder *)self setPlayActivityQueueGroupingID:v14];

  v15 = [v7 playActivityFeatureName];
  [(MPQueueFeeder *)self setPlayActivityFeatureName:v15];

  v16 = [v7 siriReferenceIdentifier];
  [(MPQueueFeeder *)self setSiriReferenceIdentifier:v16];

  v17 = [v7 siriWHAMetricsInfo];
  [(MPQueueFeeder *)self setSiriWHAMetricsInfo:v17];

  v18 = [v7 startItemIdentifiers];
  startItemIdentifiers = self->_startItemIdentifiers;
  self->_startItemIdentifiers = v18;

  v20 = [v7 startTimeModifications];
  startTimeModifications = self->_startTimeModifications;
  self->_startTimeModifications = v20;

  v22 = [v7 endTimeModifications];
  endTimeModifications = self->_endTimeModifications;
  self->_endTimeModifications = v22;

  v24 = [v7 siriReferenceIdentifier];
  self->_isSiriInitiated = v24 != 0;

  v150 = [v7 siriAssetInfo];
  v25 = [v7 request];
  v26 = [v25 copy];
  request = self->_request;
  self->_request = v26;

  if (([(MPCModelPlaybackRequest *)self->_request conformsToProtocol:&unk_1F45B4178]& 1) == 0)
  {
    v144 = [MEMORY[0x1E696AAA8] currentHandler];
    [v144 handleFailureInMethod:a2 object:self file:@"MPCModelQueueFeeder.m" lineNumber:852 description:{@"Request class (%@) must conform to MPCModelPlaybackRequest", objc_opt_class()}];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v152 = self->_request;
    v28 = [(MPCModelPlaybackRequest *)v152 sectionKind];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v30 = [(MPCModelPlaybackRequest *)v152 sectionKind];
      if (([v30 variants] & 8) != 0)
      {
        v132 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:1 debugDescription:{@"Invalid request section kind [playlist variant Folder] kind=%@ request=%@", v30, self->_request}];
        (*(v151 + 2))(v151, 0, 0, v132);

        goto LABEL_104;
      }

      v31 = MEMORY[0x1E6970718];
      v32 = [v30 variants];
      v33 = [v30 playlistEntryKind];
      v34 = [v31 kindWithVariants:v32 playlistEntryKind:v33 options:{objc_msgSend(v30, "options") | 8}];
      [(MPCModelPlaybackRequest *)v152 setSectionKind:v34];

      v35 = MEMORY[0x1E69708B0];
      v177 = *MEMORY[0x1E6970118];
      v36 = *MEMORY[0x1E696FE28];
      v176[0] = *MEMORY[0x1E696FE10];
      v176[1] = v36;
      v176[2] = *MEMORY[0x1E696FE08];
      v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v176 count:3];
      v38 = [v35 propertySetWithProperties:v37];
      v178[0] = v38;
      v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v178 forKeys:&v177 count:1];
      v40 = [v35 propertySetWithRelationships:v39];
      [(MPCModelPlaybackRequest *)v152 setScopedContainersPropertySet:v40];
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v153 = self->_request;
    if (self->_startItemIdentifiers)
    {
      v41 = [(MPCModelPlaybackRequest *)v153 adjustedStartItemIdentifiersForIdentifiers:?];
      if (self->_startItemIdentifiers != v41)
      {
        objc_storeStrong(&self->_startItemIdentifiers, v41);
        v42 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          v43 = [(MPCModelQueueFeeder *)self uniqueIdentifier];
          v44 = self->_startItemIdentifiers;
          *buf = 138543874;
          *&buf[4] = v43;
          *&buf[12] = 2048;
          *&buf[14] = self;
          *&buf[22] = 2114;
          v169 = v44;
          _os_log_impl(&dword_1C5C61000, v42, OS_LOG_TYPE_DEFAULT, "[MQF:%{public}@:%p] loadPlaybackContext: | updated startItemIdentifiers [cleared misleading IDs] startItemIdentifiers=%{public}@", buf, 0x20u);
        }
      }
    }

    v45 = [MPCNetworkRequestMonitoredTag alloc];
    v174[0] = @"network-request-initiator";
    v174[1] = @"queue-section-id";
    v175[0] = @"MPCModelQueueFeeder";
    v46 = [(MPCModelQueueFeeder *)self delegate];
    v47 = [v46 sectionIdentifier];
    v48 = v47;
    if (!v47)
    {
      v48 = [MEMORY[0x1E695DFB0] null];
    }

    v175[1] = v48;
    v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v175 forKeys:v174 count:2];
    v50 = [(MPCNetworkRequestMonitoredTag *)v45 initWithContextInfo:v49 engineInfoProvider:self];
    [(MPCModelPlaybackRequest *)v153 setRequestContextTag:v50];

    if (!v47)
    {
    }

    if (_os_feature_enabled_impl())
    {
      [(MPCModelPlaybackRequest *)v153 setAllowLocalEquivalencies:1];
    }

    if (self->_isSiriInitiated && ![v150 length])
    {
      v51 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        v52 = [(MPCModelQueueFeeder *)self uniqueIdentifier];
        *buf = 138543618;
        *&buf[4] = v52;
        *&buf[12] = 2048;
        *&buf[14] = self;
        _os_log_impl(&dword_1C5C61000, v51, OS_LOG_TYPE_ERROR, "[MQF:%{public}@:%p] loadPlaybackContext: | generating ABC [missing siriAssetInfo for siri initiated storePlayback]", buf, 0x16u);
      }

      v53 = MEMORY[0x1E69B13D8];
      v171[0] = @"siriReferenceIdentifier";
      v54 = [v7 siriReferenceIdentifier];
      v55 = v54;
      if (v54)
      {
        v56 = v54;
      }

      else
      {
        v56 = @"<missing>";
      }

      v171[1] = @"storeItemsRequest.identifiers";
      v172[0] = v56;
      v57 = [(MPCModelPlaybackRequest *)v153 identifiers];
      v58 = v57;
      v59 = @"nil";
      if (v57)
      {
        v59 = v57;
      }

      v172[1] = v59;
      v60 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v172 forKeys:v171 count:2];
      v173 = v60;
      v61 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v173 count:1];
      [v53 snapshotWithDomain:*MEMORY[0x1E69B1340] type:@"Bug" subType:@"MissingSiriAssetInfo" context:@"SetPlaybackQueue" triggerThresholdValues:&stru_1F454A698 events:v61 completion:0];
    }
  }

  v62 = [(MPCModelPlaybackRequest *)self->_request itemKind];
  v63 = [v62 modelClass];

  v152 = [v63 mqf_requiredItemPlaybackProperties];
  if (v152)
  {
    if (self->_representativeMetadataPropertySet)
    {
      v64 = [v63 genericObjectType];
      if (v64)
      {
        v65 = [MEMORY[0x1E6970670] relationshipKeyForGenericObjectType:v64];
        if (v65)
        {
          v66 = [(MPPropertySet *)self->_representativeMetadataPropertySet relationships];
          v67 = [v66 objectForKeyedSubscript:v65];
          v68 = [(MPCModelPlaybackRequest *)v152 propertySetByCombiningWithPropertySet:v67];

          v152 = v68;
        }
      }
    }

    [(MPCModelPlaybackRequest *)self->_request setItemProperties:v152];
    v69 = [(MPCModelPlaybackRequest *)self->_request sectionKind];
    v70 = [v69 modelClass];

    v149 = [v70 mqf_requiredSectionPlaybackProperties];
    if (self->_representativeMetadataPropertySet)
    {
      v71 = [v70 genericObjectType];
      if (v71)
      {
        v72 = [MEMORY[0x1E6970670] relationshipKeyForGenericObjectType:v71];
        if (v72)
        {
          v73 = [(MPPropertySet *)self->_representativeMetadataPropertySet relationships];
          v74 = [v73 objectForKeyedSubscript:v72];
          v75 = [v149 propertySetByCombiningWithPropertySet:v74];

          v149 = v75;
        }
      }
    }

    [(MPCModelPlaybackRequest *)self->_request setSectionProperties:v149];
    if (objc_opt_respondsToSelector())
    {
      [(MPCModelPlaybackRequest *)self->_request setDisableImplicitSectioning:1];
    }

    if (objc_opt_respondsToSelector())
    {
      [(MPCModelPlaybackRequest *)self->_request setSupportsPaginatedResults:1];
    }

    if ([(MPCModelPlaybackRequest *)self->_request conformsToProtocol:&unk_1F45B4290])
    {
      v76 = self->_request;
      v77 = [(MPCModelPlaybackRequest *)v76 rtcReportingPlayQueueSourceIdentifier];
      rtcReportingPlayQueueSourceIdentifier = self->_rtcReportingPlayQueueSourceIdentifier;
      self->_rtcReportingPlayQueueSourceIdentifier = v77;
    }

    v79 = [v7 playbackRequestEnvironment];
    playbackRequestEnvironment = self->_playbackRequestEnvironment;
    self->_playbackRequestEnvironment = v79;

    if ([(MPCModelPlaybackRequest *)self->_request conformsToProtocol:&unk_1F45B4200])
    {
      v81 = self->_request;
      v82 = [(MPCModelPlaybackRequest *)v81 playbackRequestEnvironment];
      v83 = v82 == self->_playbackRequestEnvironment;

      if (!v83)
      {
        v84 = [(MPCModelPlaybackRequest *)v81 playbackRequestEnvironment];
        v85 = [v84 userIdentity];
        v86 = [(MPCPlaybackRequestEnvironment *)self->_playbackRequestEnvironment userIdentity];
        v87 = [MEMORY[0x1E69E4688] defaultIdentityStore];
        v88 = [v85 isEqualToIdentity:v86 inStore:v87];

        if ((v88 & 1) == 0)
        {
          v89 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
          if (os_log_type_enabled(v89, OS_LOG_TYPE_FAULT))
          {
            v90 = [(MPCModelQueueFeeder *)self uniqueIdentifier];
            v91 = [(MPCModelPlaybackRequest *)v81 playbackRequestEnvironment];
            v92 = self->_playbackRequestEnvironment;
            *buf = 138544130;
            *&buf[4] = v90;
            *&buf[12] = 2048;
            *&buf[14] = self;
            *&buf[22] = 2114;
            v169 = v91;
            LOWORD(v170) = 2114;
            *(&v170 + 2) = v92;
            _os_log_impl(&dword_1C5C61000, v89, OS_LOG_TYPE_FAULT, "[MQF:%{public}@:%p] loadPlaybackContext: | recovering user identity mismatch [self correcting] request.playbackRequestEnvironment=%{public}@ context.playbackRequestEnvironment=%{public}@", buf, 0x2Au);
          }
        }

        [(MPCModelPlaybackRequest *)v81 setPlaybackRequestEnvironment:self->_playbackRequestEnvironment];
      }
    }

    if (MSVDeviceOSIsInternalInstall())
    {
      v93 = [MEMORY[0x1E695E000] standardUserDefaults];
      v94 = [v93 BOOLForKey:@"_static_qf_debug"];

      if (v94)
      {
        v95 = [(MPCModelQueueFeeder *)self _staticRegistryRequest];
        v96 = self->_request;
        self->_request = v95;
      }
    }

    v97 = [(MPCModelPlaybackRequest *)self->_request label];
    v98 = v97;
    if (v97)
    {
      v99 = v97;
    }

    else
    {
      v99 = @"<missing request label>";
    }

    v100 = [@"com.apple.MediaPlayer.MPCModelQueueFeeder: " stringByAppendingString:v99];
    [(MPCModelPlaybackRequest *)self->_request setLabel:v100];

    v101 = objc_alloc_init(MEMORY[0x1E6970768]);
    [(MPCRequestController *)self->_requestController setRequest:v101];

    v102 = [(MPCRequestController *)self->_requestController request];
    [v102 setTimeoutInterval:0.0];

    v103 = [(MPCRequestController *)self->_requestController request];
    [v103 setQualityOfService:25];

    v104 = [(MPCModelPlaybackRequest *)self->_request label];
    v105 = [(MPCRequestController *)self->_requestController request];
    [v105 setLabel:v104];

    v106 = self->_request;
    v107 = [(MPCRequestController *)self->_requestController request];
    [v107 setModelRequest:v106];

    v108 = [v151 copy];
    loadingCompletionHandler = self->_loadingCompletionHandler;
    self->_loadingCompletionHandler = v108;

    v148 = [(MPCPlaybackRequestEnvironment *)self->_playbackRequestEnvironment _createStoreRequestContext];
    v158 = 0;
    v110 = [[MPCModelGenericAVItemUserIdentityPropertySet alloc] initWithRequestContext:v148 error:&v158];
    v111 = v158;
    identityPropertySet = self->_identityPropertySet;
    self->_identityPropertySet = v110;

    if (v111)
    {
      v113 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
      {
        v114 = [(MPCModelQueueFeeder *)self uniqueIdentifier];
        v115 = [v111 treeDescription];
        *buf = 138543874;
        *&buf[4] = v114;
        *&buf[12] = 2048;
        *&buf[14] = self;
        *&buf[22] = 2114;
        v169 = v115;
        _os_log_impl(&dword_1C5C61000, v113, OS_LOG_TYPE_ERROR, "[MQF:%{public}@:%p] loadPlaybackContext: | failed to load identity properties [] error=%{public}@", buf, 0x20u);
      }
    }

    else if (self->_identityPropertySet)
    {
      v117 = os_log_create("com.apple.amp.mediaplaybackcore", "Analytics");
      v118 = os_signpost_id_make_with_pointer(v117, self);

      v119 = os_log_create("com.apple.amp.mediaplaybackcore", "Analytics");
      v120 = v119;
      if (v118 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v119))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C5C61000, v120, OS_SIGNPOST_INTERVAL_BEGIN, v118, "ModelShimRequest", "", buf, 2u);
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v146 = self->_request;
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v169 = __Block_byref_object_copy__13630;
        *&v170 = __Block_byref_object_dispose__13631;
        *(&v170 + 1) = 0;
        if (v150)
        {
          v121 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback_Oversize");
          if (os_log_type_enabled(v121, OS_LOG_TYPE_DEFAULT))
          {
            v122 = [(MPCModelQueueFeeder *)self uniqueIdentifier];
            *v160 = 138543874;
            v161 = v122;
            v162 = 2048;
            v163 = self;
            v164 = 2114;
            v165 = v150;
            _os_log_impl(&dword_1C5C61000, v121, OS_LOG_TYPE_DEFAULT, "[MQF:%{public}@:%p] loadPlaybackContext: | received siriAssetInfo [] siriAssetInfo=%{public}@", v160, 0x20u);
          }

          v123 = [(MPCPlaybackRequestEnvironment *)self->_playbackRequestEnvironment userIdentity];
          v124 = [MPCModelStorePlaybackItemsRequest MPC_consumeSiriAssetInfo:v150 userIdentity:v123];

          if ([v7 shuffleType] && v124)
          {
            v125 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
            if (os_log_type_enabled(v125, OS_LOG_TYPE_DEFAULT))
            {
              v126 = [(MPCModelQueueFeeder *)self uniqueIdentifier];
              *v160 = 138543874;
              v161 = v126;
              v162 = 2048;
              v163 = self;
              v164 = 2114;
              v165 = v124;
              _os_log_impl(&dword_1C5C61000, v125, OS_LOG_TYPE_DEFAULT, "[MQF:%{public}@:%p] loadPlaybackContext: | overwriting startIdentifiers with preferredShuffleStartIdentifiers [shuffle enabled] preferredShuffleStartIdentifiers=%{public}@", v160, 0x20u);
            }

            objc_storeStrong(&self->_startItemIdentifiers, v124);
          }
        }

        v127 = [(MPCModelPlaybackRequest *)v146 identifiers];
        v128 = [v127 totalItemCount];
        v129 = self->_startItemIdentifiers;
        v130 = v129;
        if (v128 >= 1 && !v129)
        {
          if ([v7 shuffleType])
          {
            v131 = arc4random_uniform(v128);
          }

          else
          {
            v131 = 0;
          }

          v133 = [v127 indexPathForGlobalIndex:v131];
          v134 = *(*&buf[8] + 40);
          *(*&buf[8] + 40) = v133;

          v130 = [v127 identifiersForItemAtIndexPath:*(*&buf[8] + 40)];
          v135 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
          if (os_log_type_enabled(v135, OS_LOG_TYPE_DEFAULT))
          {
            v136 = [(MPCModelQueueFeeder *)self uniqueIdentifier];
            *v160 = 138544130;
            v161 = v136;
            v162 = 2048;
            v163 = self;
            v164 = 2048;
            v165 = v131;
            v166 = 2114;
            v167 = v130;
            _os_log_impl(&dword_1C5C61000, v135, OS_LOG_TYPE_DEFAULT, "[MQF:%{public}@:%p] loadPlaybackContext: | overwriting startIdentifiers with first item [not specified on playbackContext] startItemIdentifiers=(%llu)%{public}@", v160, 0x2Au);
          }
        }

        v137 = *&buf[8];
        if (v130 && !*(*&buf[8] + 40))
        {
          v155[0] = MEMORY[0x1E69E9820];
          v155[1] = 3221225472;
          v155[2] = __54__MPCModelQueueFeeder_loadPlaybackContext_completion___block_invoke;
          v155[3] = &unk_1E8234A48;
          v156 = v130;
          v157 = buf;
          [v127 enumerateItemIdentifiersUsingBlock:v155];

          v137 = *&buf[8];
        }

        v138 = *(v137 + 40);
        if (v138)
        {
          v159 = v138;
          v139 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v159 count:1];
          [(MPCModelPlaybackRequest *)v146 setPlaybackPrioritizedIndexPaths:v139];
        }

        _Block_object_dispose(buf, 8);
      }

      [(MPCRequestController *)self->_requestController setNeedsReload];
      [(MPCRequestController *)self->_requestController reloadIfNeeded];
      v140 = +[MPCCriticalSectionManager shared];
      v141 = [MEMORY[0x1E696AEC0] stringWithFormat:@"MQF-AutomaticReload:%p", self];
      v154[0] = MEMORY[0x1E69E9820];
      v154[1] = 3221225472;
      v154[2] = __54__MPCModelQueueFeeder_loadPlaybackContext_completion___block_invoke_2;
      v154[3] = &unk_1E8239298;
      v154[4] = self;
      v142 = [v140 performTaskNamed:v141 afterCriticalSection:v154];
      automaticResponseLoadingCriticalSection = self->_automaticResponseLoadingCriticalSection;
      self->_automaticResponseLoadingCriticalSection = v142;

      goto LABEL_103;
    }

    (*(self->_loadingCompletionHandler + 2))();
    v116 = self->_loadingCompletionHandler;
    self->_loadingCompletionHandler = 0;

LABEL_103:
    goto LABEL_104;
  }

  if (MSVDeviceOSIsInternalInstall())
  {
    v145 = [MEMORY[0x1E696AAA8] currentHandler];
    [v145 handleFailureInMethod:a2 object:self file:@"MPCModelQueueFeeder.m" lineNumber:910 description:{@"Invalid request item class: %@ for %@", v63, self->_request}];
  }

  v152 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:1 debugDescription:{@"Invalid request item class: %@ for %@", v63, self->_request}];
  (*(v151 + 2))(v151, 0, 0, v152);
LABEL_104:
}

void __54__MPCModelQueueFeeder_loadPlaybackContext_completion___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = a2;
  if ([a3 mpc_intersectsSet:*(a1 + 32) ignoringModelKind:1])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

uint64_t __54__MPCModelQueueFeeder_loadPlaybackContext_completion___block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) uniqueIdentifier];
    v4 = *(a1 + 32);
    v6 = 138543618;
    v7 = v3;
    v8 = 2048;
    v9 = v4;
    _os_log_impl(&dword_1C5C61000, v2, OS_LOG_TYPE_DEFAULT, "[MQF:%{public}@:%p] loadPlaybackContext: | enabling automaticResponseLoading [after engine critical section]", &v6, 0x16u);
  }

  return [*(*(a1 + 32) + 112) beginAutomaticResponseLoading];
}

- (id)firstItemIntersectingIdentifierSet:(id)a3
{
  response = self->_response;
  v5 = a3;
  v6 = [(MPCModelPlaybackResponse *)response results];
  v7 = [v6 indexPathForItemWithIdentifiersIntersectingSet:v5];

  if (v7)
  {
    v8 = [(MPCModelPlaybackResponse *)self->_response results];
    v9 = [v8 globalIndexForIndexPath:v7];

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __58__MPCModelQueueFeeder_firstItemIntersectingIdentifierSet___block_invoke;
    v12[3] = &__block_descriptor_40_e41__16__0__MPQueueFeederIdentifierRegistry_8l;
    v12[4] = v9;
    v10 = [(MPQueueFeeder *)self identifierRegistryWithExclusiveAccessReturningObject:v12];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

id __58__MPCModelQueueFeeder_firstItemIntersectingIdentifierSet___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4 >= [v3 count])
  {
    v5 = 0;
  }

  else
  {
    v5 = [v3 itemAtIndex:*(a1 + 32)];
  }

  return v5;
}

- (unint64_t)itemCountInSection:(id)a3
{
  v3 = [(MPMutableIdentifierListSection *)self->_section itemIdentifiers];
  v4 = [v3 count];

  return v4;
}

- (id)accountIDForItem:(id)a3 inSection:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = [(MPCModelGenericAVItemUserIdentityPropertySet *)self->_identityPropertySet delegatedIdentityProperties:a3];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 DSID];
  }

  else
  {
    v8 = [(MPCModelGenericAVItemUserIdentityPropertySet *)self->_identityPropertySet identityProperties];
    v7 = [v8 DSID];
  }

  if (v7)
  {
    quot = [v7 longLongValue];
    if (quot)
    {
      v10 = quot;
      v11 = &v17 + 1;
      do
      {
        v12 = lldiv(quot, 10);
        quot = v12.quot;
        if (v12.rem >= 0)
        {
          LOBYTE(v13) = v12.rem;
        }

        else
        {
          v13 = -v12.rem;
        }

        *(v11 - 2) = v13 + 48;
        v14 = (v11 - 2);
        --v11;
      }

      while (v12.quot);
      if (v10 < 0)
      {
        *(v11 - 2) = 45;
        v14 = (v11 - 2);
      }

      v15 = CFStringCreateWithBytes(0, v14, &v17 - v14, 0x8000100u, 0);
    }

    else
    {
      v15 = @"0";
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)isExportableMediaTypeForItem:(id)a3 inSection:(id)a4
{
  v5 = a3;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __62__MPCModelQueueFeeder_isExportableMediaTypeForItem_inSection___block_invoke;
  v21[3] = &unk_1E8235550;
  v6 = v5;
  v22 = v6;
  v7 = [(MPQueueFeeder *)self identifierRegistryWithExclusiveAccessReturningInteger:v21];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = v7;
    v9 = [(MPCModelPlaybackResponse *)self->_response results];
    v10 = [v9 totalItemCount];

    if (v8 < v10)
    {
      v11 = [(MPCModelPlaybackResponse *)self->_response results];
      v12 = [v11 indexPathForGlobalIndex:v8];

      v13 = [(MPCModelPlaybackResponse *)self->_response results];
      v14 = [v13 itemAtIndexPath:v12];

      v15 = v14;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = v15;
LABEL_20:

        v17 = v16 != 0;
        goto LABEL_21;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = v15;
        if ([v18 type] == 1)
        {
          v16 = [v18 song];

          v19 = 0;
LABEL_19:

          goto LABEL_20;
        }

        if ([v18 type] == 5)
        {
          v19 = [v18 playlistEntry];
        }

        else
        {
          v19 = 0;
        }
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v19 = v15;
        }

        else
        {
          v19 = 0;
        }
      }

      if ([v19 type] == 1)
      {
        v16 = [v19 song];
      }

      else
      {
        v16 = 0;
      }

      goto LABEL_19;
    }
  }

  v17 = 0;
LABEL_21:

  return v17;
}

- (BOOL)supportsAutoPlayForItem:(id)a3 inSection:(id)a4
{
  v5 = a3;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __57__MPCModelQueueFeeder_supportsAutoPlayForItem_inSection___block_invoke;
  v21[3] = &unk_1E8235550;
  v6 = v5;
  v22 = v6;
  v7 = [(MPQueueFeeder *)self identifierRegistryWithExclusiveAccessReturningInteger:v21];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL || (v8 = v7, -[MPCModelPlaybackResponse results](self->_response, "results"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 totalItemCount], v9, v8 >= v10))
  {
    LOBYTE(v17) = 0;
    goto LABEL_25;
  }

  v11 = [(MPCModelPlaybackResponse *)self->_response results];
  v12 = [v11 indexPathForGlobalIndex:v8];

  v13 = [(MPCModelPlaybackResponse *)self->_response results];
  v14 = [v13 itemAtIndexPath:v12];

  v15 = v14;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = v15;
    goto LABEL_20;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v15;
    }

    else
    {
      v19 = 0;
    }

LABEL_16:
    if ([v19 type] == 1)
    {
      v16 = [v19 song];
    }

    else
    {
      v16 = 0;
    }

    goto LABEL_19;
  }

  v18 = v15;
  if ([v18 type] != 1)
  {
    if ([v18 type] == 5)
    {
      v19 = [v18 playlistEntry];
    }

    else
    {
      v19 = 0;
    }

    goto LABEL_16;
  }

  v16 = [v18 song];

  v19 = 0;
LABEL_19:

LABEL_20:
  if (v16 && ([v16 hasVideo] & 1) == 0)
  {
    v17 = [v16 isArtistUploadedContent] ^ 1;
  }

  else
  {
    LOBYTE(v17) = 0;
  }

LABEL_25:
  return v17;
}

- (void)controller:(id)a3 defersResponse:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (!v8)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"MPCModelQueueFeeder.m" lineNumber:428 description:@"MPCModelQueueFeeder expects non-nil response"];
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __60__MPCModelQueueFeeder_controller_defersResponse_completion___block_invoke;
  v13[3] = &unk_1E8238C70;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a2;
  v10 = v9;
  v11 = v8;
  dispatch_async(MEMORY[0x1E69E96A0], v13);
}

void __60__MPCModelQueueFeeder_controller_defersResponse_completion___block_invoke(uint64_t a1)
{
  v42 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 248);
  v3 = [*(a1 + 40) modelResponse];
  if (([v3 conformsToProtocol:&unk_1F45B5180] & 1) == 0)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"MPCModelQueueFeeder.m" lineNumber:433 description:{@"Response class (%@) must conform to MPCModelPlaybackResponse", objc_opt_class()}];
  }

  v4 = [v3 failedIDsCount];
  v5 = [v3 results];
  v6 = [v5 totalItemCount];
  v7 = [v3 results];
  v8 = [v7 numberOfSections];

  v9 = [v3 pendingIDsCount];
  v10 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v6 + v4 + v8;
    v12 = [*(a1 + 32) uniqueIdentifier];
    v13 = *(a1 + 32);
    *buf = 138544642;
    v31 = v12;
    v32 = 2048;
    v33 = v13;
    v34 = 2048;
    v35 = v3;
    v36 = 2048;
    v37 = v4;
    v38 = 2048;
    v39 = v11 - v9;
    v40 = 2048;
    v41 = v11;
    _os_log_impl(&dword_1C5C61000, v10, OS_LOG_TYPE_DEFAULT, "[MQF:%{public}@:%p] controller:defersResponse:completion: | processing new response [] newResponse=%p progress=[%lld + %lld/%lld]", buf, 0x3Eu);
  }

  v14 = *(a1 + 32);
  v15 = *(v14 + 168) == 0;
  v16 = *(v14 + 168) != 0;
  v17 = *(v14 + 80);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__MPCModelQueueFeeder_controller_defersResponse_completion___block_invoke_96;
  block[3] = &unk_1E8234A20;
  v24 = v2;
  v25 = v3;
  v26 = v14;
  v28 = v15;
  v29 = v16;
  v22 = *(a1 + 48);
  v18 = v22;
  v27 = v22;
  v19 = v3;
  v20 = v2;
  dispatch_async(v17, block);
}

void __60__MPCModelQueueFeeder_controller_defersResponse_completion___block_invoke_96(uint64_t a1)
{
  v2 = [*(a1 + 32) results];
  v3 = objc_alloc_init(MEMORY[0x1E6970818]);
  v4 = [*(a1 + 40) results];
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __60__MPCModelQueueFeeder_controller_defersResponse_completion___block_invoke_2;
  v44[3] = &unk_1E8234908;
  v5 = v3;
  v45 = v5;
  v6 = v4;
  v46 = v6;
  [v6 enumerateSectionIdentifiersUsingBlock:v44];
  v42[0] = 0;
  v42[1] = v42;
  v42[2] = 0x3032000000;
  v42[3] = __Block_byref_object_copy__13630;
  v42[4] = __Block_byref_object_dispose__13631;
  v43 = 0;
  v40[0] = 0;
  v40[1] = v40;
  v40[2] = 0x3032000000;
  v40[3] = __Block_byref_object_copy__13630;
  v40[4] = __Block_byref_object_dispose__13631;
  v41 = 0;
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x2020000000;
  v39[3] = 0x7FFFFFFFFFFFFFFFLL;
  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x2020000000;
  v38[3] = 0x7FFFFFFFFFFFFFFFLL;
  v7 = *(a1 + 48);
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __60__MPCModelQueueFeeder_controller_defersResponse_completion___block_invoke_4;
  v27[3] = &unk_1E8234930;
  v36 = *(a1 + 72);
  v32 = v39;
  v33 = v38;
  v34 = v42;
  v8 = v5;
  v28 = v8;
  v37 = *(a1 + 73);
  v9 = v2;
  v29 = v9;
  v35 = v40;
  v10 = v6;
  v11 = *(a1 + 48);
  v30 = v10;
  v31 = v11;
  [v7 identifierRegistryWithExclusiveAccess:v27];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__MPCModelQueueFeeder_controller_defersResponse_completion___block_invoke_129;
  block[3] = &unk_1E82349F8;
  v18 = *(a1 + 32);
  v16 = *(a1 + 40);
  v12 = v16.i64[0];
  v19 = vextq_s8(v16, v16, 8uLL);
  v23 = v40;
  v24 = v39;
  v22 = v42;
  v20 = v8;
  v14 = *(a1 + 56);
  v13 = *(a1 + 64);
  v25 = v38;
  v26 = v13;
  v21 = v14;
  v15 = v8;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  _Block_object_dispose(v38, 8);
  _Block_object_dispose(v39, 8);
  _Block_object_dispose(v40, 8);

  _Block_object_dispose(v42, 8);
}

void __60__MPCModelQueueFeeder_controller_defersResponse_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) appendSection:?];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __60__MPCModelQueueFeeder_controller_defersResponse_completion___block_invoke_3;
  v5[3] = &unk_1E82348E0;
  v4 = *(a1 + 40);
  v6 = *(a1 + 32);
  [v4 enumerateItemIdentifiersInSectionAtIndex:a2 usingBlock:v5];
}

void __60__MPCModelQueueFeeder_controller_defersResponse_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  *(*(*(a1 + 64) + 8) + 24) = [v3 count];
  if (*(a1 + 96) == 1)
  {
    *(*(*(a1 + 72) + 8) + 24) = [v3 count];
    v4 = MEMORY[0x1E69704C8];
    v5 = *(*(*(a1 + 72) + 8) + 24);
    v6 = [*(a1 + 32) totalItemCount];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __60__MPCModelQueueFeeder_controller_defersResponse_completion___block_invoke_5;
    v25[3] = &unk_1E8235640;
    v26 = v3;
    v27 = *(a1 + 32);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __60__MPCModelQueueFeeder_controller_defersResponse_completion___block_invoke_6;
    v22[3] = &unk_1E8235640;
    v23 = v26;
    v24 = *(a1 + 32);
    v7 = [v4 changeDetailsWithPreviousCount:v5 finalCount:v6 isEqualBlock:v25 isUpdatedBlock:v22];
    v8 = *(*(a1 + 80) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  if (*(a1 + 97) == 1)
  {
    *(*(*(a1 + 72) + 8) + 24) = [*(a1 + 40) totalItemCount];
    v10 = MEMORY[0x1E69704C8];
    v11 = *(*(*(a1 + 72) + 8) + 24);
    v12 = [*(a1 + 32) totalItemCount];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __60__MPCModelQueueFeeder_controller_defersResponse_completion___block_invoke_7;
    v19[3] = &unk_1E8235640;
    v20 = *(a1 + 40);
    v21 = *(a1 + 32);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __60__MPCModelQueueFeeder_controller_defersResponse_completion___block_invoke_8;
    v16[3] = &unk_1E8235640;
    v17 = v3;
    v18 = *(a1 + 32);
    v13 = [v10 changeDetailsWithPreviousCount:v11 finalCount:v12 isEqualBlock:v19 isUpdatedBlock:v16];
    v14 = *(*(a1 + 88) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;
  }
}

void __60__MPCModelQueueFeeder_controller_defersResponse_completion___block_invoke_129(uint64_t a1)
{
  v113 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  v93 = a1;
  if (objc_opt_isKindOfClass())
  {
    v2 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [*(a1 + 40) uniqueIdentifier];
      v4 = *(a1 + 40);
      v5 = *(a1 + 32);
      v6 = *(a1 + 48);
      *buf = 138544130;
      *&buf[4] = v3;
      *&buf[12] = 2048;
      *&buf[14] = v4;
      *&buf[22] = 2048;
      *v112 = v5;
      *&v112[8] = 2048;
      *&v112[10] = v6;
      _os_log_impl(&dword_1C5C61000, v2, OS_LOG_TYPE_DEFAULT, "[MQF:%{public}@:%p] controller:defersResponse:completion: | clearing old response.results [] oldResponse=%p newResponse=%p", buf, 0x2Au);
    }

    [*(a1 + 32) clearResults];
  }

  objc_storeStrong((*(a1 + 40) + 248), *(a1 + 48));
  v7 = *(*(*(a1 + 72) + 8) + 40);
  if (v7)
  {
    v8 = v7;
LABEL_8:
    v9 = *(a1 + 40);
    v104[0] = MEMORY[0x1E69E9820];
    v104[1] = 3221225472;
    v104[2] = __60__MPCModelQueueFeeder_controller_defersResponse_completion___block_invoke_131;
    v104[3] = &unk_1E82349A8;
    v107 = *(a1 + 88);
    v104[4] = v9;
    v10 = v8;
    v11 = *(a1 + 96);
    v91 = v10;
    v105 = v10;
    v108 = v11;
    v12 = *(a1 + 56);
    v13 = *(a1 + 104);
    v106 = v12;
    v109 = v13;
    [v9 identifierRegistryWithExclusiveAccess:v104];

    goto LABEL_9;
  }

  v8 = *(*(*(a1 + 80) + 8) + 40);
  if (v8)
  {
    goto LABEL_8;
  }

  v91 = 0;
LABEL_9:
  v14 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [*(a1 + 40) uniqueIdentifier];
    v16 = *(a1 + 40);
    v17 = *(v93 + 48);
    v18 = [v17 results];
    v19 = [v18 totalItemCount];
    *buf = 138544386;
    *&buf[4] = v15;
    *&buf[12] = 2048;
    *&buf[14] = v16;
    *&buf[22] = 2048;
    *v112 = v17;
    *&v112[8] = 2048;
    *&v112[10] = v19;
    *&v112[18] = 2114;
    *&v112[20] = v91;
    _os_log_impl(&dword_1C5C61000, v14, OS_LOG_TYPE_DEFAULT, "[MQF:%{public}@:%p] controller:defersResponse:completion: | applying new response [] newResponse=%p totalItemCount=%ld changeDetails=%{public}@", buf, 0x34u);
  }

  os_unfair_lock_lock_with_options();
  v20 = [*(*(v93 + 40) + 88) copy];
  os_unfair_lock_unlock((*(v93 + 40) + 72));
  v95 = [*(*(v93 + 40) + 248) results];
  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  obj = v20;
  v21 = [obj countByEnumeratingWithState:&v100 objects:v110 count:16];
  if (v21)
  {
    v22 = *v101;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v101 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v100 + 1) + 8 * i);
        v25 = *(v93 + 40);
        v99[0] = MEMORY[0x1E69E9820];
        v99[1] = 3221225472;
        v99[2] = __60__MPCModelQueueFeeder_controller_defersResponse_completion___block_invoke_145;
        v99[3] = &unk_1E8235550;
        v99[4] = v24;
        v26 = [v95 indexPathForGlobalIndex:{objc_msgSend(v25, "identifierRegistryWithExclusiveAccessReturningInteger:", v99)}];
        if (v26)
        {
          v27 = [v95 itemAtIndexPath:v26];
          v28 = [MEMORY[0x1E6970670] genericObjectWithModelObject:v27];
          if (v28)
          {
            [v24 setGenericObject:v28];
          }
        }
      }

      v21 = [obj countByEnumeratingWithState:&v100 objects:v110 count:16];
    }

    while (v21);
  }

  v29 = v93;
  v30 = *(*(*(v93 + 80) + 8) + 40);
  if (v30)
  {
    v31 = *(v93 + 40);
    v32 = *(v31 + 168);
    v98[0] = MEMORY[0x1E69E9820];
    v98[1] = 3221225472;
    v98[2] = __60__MPCModelQueueFeeder_controller_defersResponse_completion___block_invoke_2_146;
    v98[3] = &unk_1E82356D0;
    v98[4] = v31;
    [v32 applyChanges:v30 itemLookupBlock:v98];
    v29 = v93;
  }

  if ([*(v29 + 48) isFinalResponse])
  {
    v33 = [*(*(v93 + 40) + 184) request];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v35 = [*(*(v93 + 40) + 184) request];
      v36 = [v35 sectionedModelObjects];
      v37 = v36 == 0;

      if (v37)
      {
        v38 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          v39 = [*(v93 + 40) uniqueIdentifier];
          v40 = *(v93 + 40);
          *buf = 138543618;
          *&buf[4] = v39;
          *&buf[12] = 2048;
          *&buf[14] = v40;
          _os_log_impl(&dword_1C5C61000, v38, OS_LOG_TYPE_DEFAULT, "[MQF:%{public}@:%p] controller:defersResponse:completion: | updating Section [promoting storeRequest.storeIDs to sectionedModelObjects]", buf, 0x16u);
        }

        v41 = *(v93 + 40);
        v42 = [*(v93 + 48) results];
        v43 = [v41 _sectionedModelObjectsRepresentationForSectionedCollection:v42];
        [v35 setSectionedModelObjects:v43];

        [v35 setStoreIDs:0];
        [*(*(v93 + 40) + 168) updateSection];
      }
    }
  }

  v44 = v93;
  if (*(*(v93 + 40) + 104))
  {
    v45 = [*(v93 + 48) results];
    v46 = [v45 mpc_indexPathForIdentifiers:*(*(v93 + 40) + 152)];

    v47 = [v46 length];
    if (v47 == 2)
    {
      v58 = [*(v93 + 48) results];
      v59 = [v58 identifiersForItemAtIndexPath:v46];

      if ([v59 isPlaceholder])
      {
        v48 = 0;
        v49 = @"startItem still placeholder";
      }

      else
      {
        v61 = [*(v93 + 48) results];
        v62 = [v61 globalIndexForIndexPath:v46];

        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        *v112 = 0;
        v63 = *(v93 + 40);
        v97[0] = MEMORY[0x1E69E9820];
        v97[1] = 3221225472;
        v97[2] = __60__MPCModelQueueFeeder_controller_defersResponse_completion___block_invoke_155;
        v97[3] = &unk_1E82349D0;
        v97[4] = buf;
        v97[5] = v62;
        v48 = [v63 identifierRegistryWithExclusiveAccessReturningObject:v97];
        if (v48)
        {
          v49 = 0;
        }

        else
        {
          v49 = [MEMORY[0x1E696AEC0] stringWithFormat:@"startIndex out of bounds (startIndex/registry.count = %ld/%ld)", v62, *(*&buf[8] + 24)];
        }

        _Block_object_dispose(buf, 8);
      }
    }

    else if (v47 == 1)
    {
      v50 = [*(v93 + 48) results];
      v51 = [v50 identifiersForSectionAtIndex:{objc_msgSend(v46, "section")}];

      v52 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        v53 = [*(v93 + 40) uniqueIdentifier];
        v54 = *(v93 + 40);
        v55 = *(v54 + 152);
        *buf = 138544130;
        *&buf[4] = v53;
        *&buf[12] = 2048;
        *&buf[14] = v54;
        *&buf[22] = 2114;
        *v112 = v55;
        *&v112[8] = 2114;
        *&v112[10] = v51;
        _os_log_impl(&dword_1C5C61000, v52, OS_LOG_TYPE_DEFAULT, "[MQF:%{public}@:%p] controller:defersResponse:completion: | clearing startIdentifiers [matched section ignoring modelKind] startIdentifiers=%{public}@ sectionIdentifiers=%{public}@", buf, 0x2Au);
      }

      v56 = *(v93 + 40);
      v57 = *(v56 + 152);
      *(v56 + 152) = 0;

      v48 = 0;
      v49 = 0;
    }

    else if (v47)
    {
      v60 = [MEMORY[0x1E696AAA8] currentHandler];
      [v60 handleFailureInMethod:*(v93 + 104) object:*(v93 + 40) file:@"MPCModelQueueFeeder.m" lineNumber:654 description:{@"mpc_indexPathForIdentifiers: returned invalid indexPath: %@", v46}];

      v49 = [MEMORY[0x1E696AEC0] stringWithFormat:@"mpc_indexPathForIdentifiers: returned invalid indexPath: %@", v46];
      v48 = 0;
    }

    else
    {
      v48 = 0;
      if (*(*(v93 + 40) + 152))
      {
        v49 = @"mpc_indexPathForIdentifiers returned nil";
      }

      else
      {
        v49 = 0;
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v64 = [*(v93 + 48) performanceMetrics];
    }

    else
    {
      v64 = 0;
    }

    v65 = os_log_create("com.apple.amp.mediaplaybackcore", "Analytics");
    v66 = os_signpost_id_make_with_pointer(v65, *(v93 + 40));

    if (v48 || [*(v93 + 56) totalItemCount] >= 1 && !*(*(v93 + 40) + 152))
    {
      v67 = os_log_create("com.apple.amp.mediaplaybackcore", "Analytics");
      v68 = v67;
      if (v66 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v67))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C5C61000, v68, OS_SIGNPOST_INTERVAL_END, v66, "ModelShimRequest", " enableTelemetry=YES ", buf, 2u);
      }

      v69 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
      {
        v70 = [*(v93 + 40) uniqueIdentifier];
        v71 = *(v93 + 40);
        v72 = *(v93 + 48);
        v73 = [v72 isFinalResponse];
        *buf = 138544386;
        *&buf[4] = v70;
        *&buf[12] = 2048;
        *&buf[14] = v71;
        *&buf[22] = 2048;
        *v112 = v72;
        *&v112[8] = 1024;
        *&v112[10] = v73;
        *&v112[14] = 2114;
        *&v112[16] = v48;
        _os_log_impl(&dword_1C5C61000, v69, OS_LOG_TYPE_DEFAULT, "[MQF:%{public}@:%p] controller:defersResponse:completion: | calling loadingCompletionHandler [start item satisfied] newResponse=%p isFinalResponse=%{BOOL}u startIdentifier=%{public}@", buf, 0x30u);
      }

      (*(*(*(v93 + 40) + 104) + 16))();
    }

    else
    {
      v74 = os_log_create("com.apple.amp.mediaplaybackcore", "Analytics");
      v75 = v74;
      if (v66 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v74))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C5C61000, v75, OS_SIGNPOST_INTERVAL_END, v66, "ModelShimRequest", "NoValidItems", buf, 2u);
      }

      v76 = [*(v93 + 56) totalItemCount];
      v77 = *(v93 + 40);
      if (v76)
      {
        [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:55 debugDescription:{@"Failed to resolve startItemIdentifiers [%@]: %@ for %@", v49, *(v77 + 152), *(v77 + 120)}];
      }

      else
      {
        [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:61 debugDescription:{@"No valid items found [empty model response] for %@", *(v77 + 120)}];
      }
      v78 = ;
      v79 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
      {
        v80 = [*(v93 + 40) uniqueIdentifier];
        v81 = *(v93 + 40);
        v82 = [*(v93 + 48) isFinalResponse];
        *buf = 138544130;
        *&buf[4] = v80;
        *&buf[12] = 2048;
        *&buf[14] = v81;
        *&buf[22] = 1024;
        *v112 = v82;
        *&v112[4] = 2114;
        *&v112[6] = v78;
        _os_log_impl(&dword_1C5C61000, v79, OS_LOG_TYPE_ERROR, "[MQF:%{public}@:%p] controller:defersResponse:completion: | calling loadingCompletionHandler [failure] isFinalResponse=%{BOOL}u error=%{public}@", buf, 0x26u);
      }

      (*(*(*(v93 + 40) + 104) + 16))();
    }

    v83 = *(v93 + 40);
    v84 = *(v83 + 104);
    *(v83 + 104) = 0;

    v85 = *(*(v93 + 40) + 152);
    *(*(v93 + 40) + 152) = 0;

    v44 = v93;
  }

  (*(*(v44 + 64) + 16))();
  if (([*(v93 + 48) isFinalResponse] & 1) == 0)
  {
    v86 = +[MPCCriticalSectionManager shared];
    v87 = *(v93 + 40);
    v94 = v93 + 40;
    v88 = [MEMORY[0x1E696AEC0] stringWithFormat:@"MQF-NextPage:%p", v87];
    v96[0] = MEMORY[0x1E69E9820];
    v96[1] = 3221225472;
    v96[2] = __60__MPCModelQueueFeeder_controller_defersResponse_completion___block_invoke_173;
    v96[3] = &unk_1E8239298;
    v96[4] = *v94;
    v89 = [v86 performTaskNamed:v88 afterCriticalSection:v96];
    v90 = *(*v94 + 208);
    *(*v94 + 208) = v89;
  }
}

void __60__MPCModelQueueFeeder_controller_defersResponse_completion___block_invoke_131(uint64_t a1, void *a2)
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(*(a1 + 56) + 8) + 24);
  if (v4 != [v3 count])
  {
    v5 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [*(a1 + 32) uniqueIdentifier];
      v7 = *(a1 + 32);
      v8 = *(*(*(a1 + 56) + 8) + 24);
      *buf = 138544130;
      v31 = v6;
      v32 = 2048;
      v33 = v7;
      v34 = 2048;
      v35 = v8;
      v36 = 2048;
      v37 = [v3 count];
      _os_log_impl(&dword_1C5C61000, v5, OS_LOG_TYPE_ERROR, "[MQF:%{public}@:%p] defersResponse:completion: | change details out of sync [identifierRegistry count mismatch] countDuringDiff=%ld countDuringApply=%ld", buf, 0x2Au);
    }
  }

  v9 = *(*(*(a1 + 64) + 8) + 24);
  v10 = *(a1 + 40);
  v11 = [*(a1 + 48) totalItemCount];
  v29 = 0;
  LOBYTE(v10) = [v10 isValidForPreviousCount:v9 finalCount:v11 reason:&v29];
  v12 = v29;
  if ((v10 & 1) == 0)
  {
    v13 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [*(a1 + 32) uniqueIdentifier];
      v15 = *(a1 + 32);
      v16 = *(a1 + 40);
      *buf = 138544130;
      v31 = v14;
      v32 = 2048;
      v33 = v15;
      v34 = 2114;
      v35 = v12;
      v36 = 2114;
      v37 = v16;
      _os_log_impl(&dword_1C5C61000, v13, OS_LOG_TYPE_ERROR, "[MQF:%{public}@:%p] defersResponse:completion: | crashing [invalid change details] reason=%{public}@ changeDetails=%{public}@", buf, 0x2Au);
    }

    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:*(a1 + 72) object:*(a1 + 32) file:@"MPCModelQueueFeeder.m" lineNumber:541 description:{@"%@", v12}];
  }

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __60__MPCModelQueueFeeder_controller_defersResponse_completion___block_invoke_135;
  v24[3] = &unk_1E8234958;
  v18 = *(a1 + 40);
  v19 = *(a1 + 48);
  v28 = *(a1 + 72);
  v20 = *(a1 + 32);
  v21 = *(a1 + 40);
  v25 = v19;
  v26 = v20;
  v27 = v21;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __60__MPCModelQueueFeeder_controller_defersResponse_completion___block_invoke_2_143;
  v22[3] = &unk_1E8234980;
  v22[4] = *(a1 + 32);
  v23 = *(a1 + 48);
  [v3 applyChanges:v18 identifierSetLookupBlock:v24 itemIdentifierLookupBlock:v22];
}

uint64_t __60__MPCModelQueueFeeder_controller_defersResponse_completion___block_invoke_145(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 queueIdentifier];
  v5 = [v3 indexForItem:v4];

  return v5;
}

id __60__MPCModelQueueFeeder_controller_defersResponse_completion___block_invoke_2_146(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __60__MPCModelQueueFeeder_controller_defersResponse_completion___block_invoke_3_147;
  v5[3] = &__block_descriptor_40_e41__16__0__MPQueueFeederIdentifierRegistry_8l;
  v5[4] = a2;
  v3 = [v2 identifierRegistryWithExclusiveAccessReturningObject:v5];

  return v3;
}

id __60__MPCModelQueueFeeder_controller_defersResponse_completion___block_invoke_155(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 32) + 8) + 24) = [v3 count];
  if (*(a1 + 40) >= *(*(*(a1 + 32) + 8) + 24))
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 itemAtIndex:?];
  }

  return v4;
}

uint64_t __60__MPCModelQueueFeeder_controller_defersResponse_completion___block_invoke_173(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) uniqueIdentifier];
    v4 = *(a1 + 32);
    v6 = 138543618;
    v7 = v3;
    v8 = 2048;
    v9 = v4;
    _os_log_impl(&dword_1C5C61000, v2, OS_LOG_TYPE_DEFAULT, "[MQF:%{public}@:%p] controller:defersResponse:completion: | requestController.setNeedsReload [received non-final response]", &v6, 0x16u);
  }

  return [*(*(a1 + 32) + 112) setNeedsReload];
}

id __60__MPCModelQueueFeeder_controller_defersResponse_completion___block_invoke_135(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) indexPathForGlobalIndex:a2];
  if (!v4)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:*(a1 + 56) object:*(a1 + 40) file:@"MPCModelQueueFeeder.m" lineNumber:545 description:{@"Unable to apply changes [missing identifier set in new collection] index=%ld/%ld changeDetails=%@", a2, objc_msgSend(*(a1 + 32), "totalItemCount"), *(a1 + 48)}];
  }

  v5 = [*(a1 + 32) itemAtIndexPath:v4];
  if (!v5)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:*(a1 + 56) object:*(a1 + 40) file:@"MPCModelQueueFeeder.m" lineNumber:547 description:{@"newCollection failed to produce identifierSet for indexPath: %@", v4}];
  }

  return v5;
}

id __60__MPCModelQueueFeeder_controller_defersResponse_completion___block_invoke_2_143(uint64_t a1, uint64_t a2)
{
  v4 = [*(*(a1 + 32) + 184) overrideStartItemID];

  if (v4)
  {
    v5 = [*(a1 + 40) indexPathForGlobalIndex:a2];
    v6 = [*(a1 + 40) itemAtIndexPath:v5];
    v7 = [*(*(a1 + 32) + 184) overrideStartItemID];
    v8 = [v7 first];

    v9 = [*(*(a1 + 32) + 184) overrideStartItemID];
    v10 = [v9 second];

    v11 = MSVNanoIDCreateTaggedPointer();
    if ([v8 intersectsSet:v6])
    {
      v12 = v10;

      [*(*(a1 + 32) + 184) setOverrideStartItemID:0];
      v11 = v12;
    }
  }

  else
  {
    v11 = MSVNanoIDCreateTaggedPointer();
  }

  return v11;
}

uint64_t __60__MPCModelQueueFeeder_controller_defersResponse_completion___block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 32) identifierSetAtIndex:a2];
  v6 = *(a1 + 40);
  v7 = [v6 indexPathForGlobalIndex:a3];
  v8 = [v6 itemAtIndexPath:v7];

  v9 = [v5 mpc_intersectsSet:v8 ignoringModelKind:1];
  return v9;
}

uint64_t __60__MPCModelQueueFeeder_controller_defersResponse_completion___block_invoke_6(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 32) identifierSetAtIndex:a2];
  v6 = *(a1 + 40);
  v7 = [v6 indexPathForGlobalIndex:a3];
  v8 = [v6 itemAtIndexPath:v7];

  LODWORD(v6) = [v5 shouldExcludeFromShuffle];
  if (v6 != [v8 shouldExcludeFromShuffle])
  {
    goto LABEL_4;
  }

  v9 = [v5 modelKind];
  v10 = [v8 modelKind];
  v11 = v10;
  if (v9 == v10)
  {

    goto LABEL_6;
  }

  v12 = [v9 isEqual:v10];

  if (v12)
  {
LABEL_6:
    v14 = [v5 isPlaceholder];
    v13 = v14 ^ [v8 isPlaceholder];
    goto LABEL_7;
  }

LABEL_4:
  v13 = 1;
LABEL_7:

  return v13;
}

uint64_t __60__MPCModelQueueFeeder_controller_defersResponse_completion___block_invoke_7(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = [v5 indexPathForGlobalIndex:a2];
  v7 = [v5 identifiersForItemAtIndexPath:v6];

  v8 = *(a1 + 40);
  v9 = [v8 indexPathForGlobalIndex:a3];
  v10 = [v8 itemAtIndexPath:v9];

  v11 = [v7 mpc_intersectsSet:v10 ignoringModelKind:1];
  return v11;
}

uint64_t __60__MPCModelQueueFeeder_controller_defersResponse_completion___block_invoke_8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 32) identifierSetAtIndex:a2];
  v6 = *(a1 + 40);
  v7 = [v6 indexPathForGlobalIndex:a3];
  v8 = [v6 itemAtIndexPath:v7];

  LODWORD(v6) = [v5 shouldExcludeFromShuffle];
  if (v6 != [v8 shouldExcludeFromShuffle])
  {
    goto LABEL_4;
  }

  v9 = [v5 modelKind];
  v10 = [v8 modelKind];
  v11 = v10;
  if (v9 == v10)
  {

    goto LABEL_6;
  }

  v12 = [v9 isEqual:v10];

  if (v12)
  {
LABEL_6:
    v14 = [v5 isPlaceholder];
    v13 = v14 ^ [v8 isPlaceholder];
    goto LABEL_7;
  }

LABEL_4:
  v13 = 1;
LABEL_7:

  return v13;
}

- (void)controllerReplacingResponse:(id)a3 withNewResponse:(id)a4 fromRequest:(id)a5
{
  v6 = a5;
  v8 = [a4 modelResponse];
  v7 = [v6 modelRequest];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v7 setPreviousResponse:v8];
  }
}

- (BOOL)controller:(id)a3 shouldRetryFailedRequestWithError:(id)a4
{
  v5 = a4;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__MPCModelQueueFeeder_controller_shouldRetryFailedRequestWithError___block_invoke;
  block[3] = &unk_1E8238A50;
  block[4] = self;
  v10 = v5;
  v11 = &v12;
  v6 = v5;
  dispatch_sync(MEMORY[0x1E69E96A0], block);
  v7 = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return v7;
}

void __68__MPCModelQueueFeeder_controller_shouldRetryFailedRequestWithError___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(v2 + 104))
  {
    [*(v2 + 200) cancel];
    v3 = *(a1 + 32);
    v4 = *(v3 + 200);
    *(v3 + 200) = 0;

    v5 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:79 underlyingError:*(a1 + 40) debugDescription:@"initial request failed"];
    v6 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [*(a1 + 32) uniqueIdentifier];
      v8 = *(a1 + 32);
      v11 = 138543874;
      v12 = v7;
      v13 = 2048;
      v14 = v8;
      v15 = 2114;
      v16 = v5;
      _os_log_impl(&dword_1C5C61000, v6, OS_LOG_TYPE_ERROR, "[MQF:%{public}@:%p] controller:shouldRetryFailedRequestWithError: | calling loadingCompletionHandler [failure]  error=%{public}@", &v11, 0x20u);
    }

    (*(*(*(a1 + 32) + 104) + 16))();
    v9 = *(a1 + 32);
    v10 = *(v9 + 104);
    *(v9 + 104) = 0;
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

- (void)getRepresentativeMetadataForPlaybackContext:(id)a3 properties:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  representativeMetadataPropertySet = self->_representativeMetadataPropertySet;
  self->_representativeMetadataPropertySet = v9;
  v12 = v9;

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __89__MPCModelQueueFeeder_getRepresentativeMetadataForPlaybackContext_properties_completion___block_invoke;
  v15[3] = &unk_1E82348B8;
  v16 = v8;
  v17 = self;
  v18 = v10;
  v13 = v10;
  v14 = v8;
  [(MPCModelQueueFeeder *)self loadPlaybackContext:v14 completion:v15];
}

void __89__MPCModelQueueFeeder_getRepresentativeMetadataForPlaybackContext_properties_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  if ([*(a1 + 32) shuffleType])
  {
    v6 = MEMORY[0x1E6970670];
    v7 = [*(*(a1 + 40) + 248) results];
    v8 = [v7 firstSection];
    v9 = [v6 genericObjectWithModelObject:v8];

    if (v9)
    {
      v10 = 0;
    }

    else
    {
      v10 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:1 debugDescription:{@"Unable to obtain metadata for shuffled context: %@", *(a1 + 32)}];
    }

    (*(*(a1 + 48) + 16))();
LABEL_12:

    goto LABEL_13;
  }

  v11 = v15;
  if (v11 || ([*(a1 + 40) identifierRegistryWithExclusiveAccessReturningObject:&__block_literal_global_13752], (v11 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v9 = v11;
    v10 = [*(a1 + 40) itemForItem:v11 inSection:@"<REPRESENTATIVE ITEM LOADER>"];
    v12 = [v10 modelGenericObject];
    if (v12)
    {
      v13 = 0;
    }

    else
    {
      v13 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:1 debugDescription:{@"Could not convert startItem into metadata: %@", v10}];
    }

    (*(*(a1 + 48) + 16))();

    goto LABEL_12;
  }

  v14 = *(a1 + 48);
  v9 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:1 debugDescription:{@"No start item was found for playback context: %@", *(a1 + 32)}];
  (*(v14 + 16))(v14, 0, v5, v9);
LABEL_13:
}

id __89__MPCModelQueueFeeder_getRepresentativeMetadataForPlaybackContext_properties_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 count])
  {
    v3 = [v2 itemAtIndex:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)modelPlayEventForItem:(id)a3 inSection:(id)a4
{
  v5 = a3;
  v6 = [(MPCModelQueueFeeder *)self _playlistFolderPlayEventForItem:v5];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [(MPCModelQueueFeeder *)self _modelPlayEventForItem:v5];
  }

  v9 = v8;

  return v9;
}

- (id)_modelPlayEventForItem:(id)a3
{
  v4 = a3;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __46__MPCModelQueueFeeder__modelPlayEventForItem___block_invoke;
  v19[3] = &unk_1E8235550;
  v5 = v4;
  v20 = v5;
  v6 = [(MPQueueFeeder *)self identifierRegistryWithExclusiveAccessReturningInteger:v19];
  v7 = [(MPCModelPlaybackResponse *)self->_response results];
  v8 = [v7 indexPathForGlobalIndex:v6];

  if (v8)
  {
    v9 = [(MPCModelPlaybackResponse *)self->_response results];
    v10 = [v9 sectionAtIndex:{objc_msgSend(v8, "section")}];
  }

  else
  {
    v10 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [v10 anyObject];
    v12 = [v10 type] == 21;

    v10 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v10 == 0 || v12)
  {
    fallbackSectionRepresentation = self->_fallbackSectionRepresentation;
    if (fallbackSectionRepresentation)
    {
      v14 = [(MPModelGenericObject *)fallbackSectionRepresentation anyObject];

      v10 = v14;
    }
  }

  v15 = MEMORY[0x1E6970708];
  v16 = [(MPQueueFeeder *)self playActivityFeatureName];
  v17 = [v15 playEventWithModelObject:v10 featureName:v16];

  return v17;
}

- (id)firstModelPlayEvent
{
  v3 = [(MPCModelPlaybackResponse *)self->_response results];
  v4 = [v3 firstItem];
  v5 = [(MPCModelQueueFeeder *)self _playlistFolderPlayEventForItem:v4];

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v7 = MEMORY[0x1E6970708];
    v8 = [(MPCModelPlaybackResponse *)self->_response results];
    v9 = [v8 firstSection];
    fallbackSectionRepresentation = v9;
    if (!v9)
    {
      fallbackSectionRepresentation = self->_fallbackSectionRepresentation;
    }

    v11 = [(MPQueueFeeder *)self playActivityFeatureName];
    v6 = [v7 playEventWithModelObject:fallbackSectionRepresentation featureName:v11];
  }

  return v6;
}

- (id)_playlistFolderPlayEventForItem:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(MPCModelPlaybackResponse *)self->_response scopedContainers];
    v6 = [v5 lastObject];

    if ([v6 type] == 4)
    {
      v7 = [v6 playlist];
      if ([v7 type] == 3)
      {
        v8 = MEMORY[0x1E6970708];
        v9 = [(MPCModelQueueFeeder *)self _modelPlayEventForItem:v4];
        v10 = [(MPQueueFeeder *)self playActivityFeatureName];
        v11 = [v8 mpc_playEventWithModelObject:v7 nestedPlayEvent:v9 featureName:v10];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)supplementalPlaybackContextWithReason:(int64_t)a3
{
  v37 = *MEMORY[0x1E69E9840];
  if ([(MPCModelQueueFeeder *)self supplementalPlaybackContextBehavior]!= 1)
  {
    v16 = 0;
    goto LABEL_27;
  }

  v5 = [(MPCModelPlaybackResponse *)self->_response results];
  if ([v5 totalItemCount])
  {
    v6 = objc_alloc_init(MPCModelStorePlaybackItemsRequest);
    if (a3 < 2)
    {
      v17 = [MEMORY[0x1E69708A8] standardUserDefaults];
      v18 = [v17 forceLibrarySupplementalContexts];

      if ((v18 & 1) == 0)
      {
        v16 = 0;
        goto LABEL_25;
      }
    }

    else if (a3 != 2)
    {
      if (a3 == 3)
      {
        v7 = [v5 firstSection];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x2020000000;
          LOBYTE(v34) = 0;
          v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v5, "numberOfSections")}];
          v29[0] = MEMORY[0x1E69E9820];
          v29[1] = 3221225472;
          v29[2] = __61__MPCModelQueueFeeder_supplementalPlaybackContextWithReason___block_invoke;
          v29[3] = &unk_1E8234B60;
          v10 = v9;
          v30 = v10;
          v31 = v5;
          v32 = buf;
          [v31 enumerateSectionIdentifiersUsingBlock:v29];
          if ([v10 count] && (*(*&buf[8] + 24) & 1) == 0)
          {
            [(MPCModelStorePlaybackItemsRequest *)v6 setStoreIDs:v10];
          }

          _Block_object_dispose(buf, 8);
        }

        v11 = [(MPCModelStorePlaybackItemsRequest *)v6 storeIDs];
        v12 = v11 == 0;

        v13 = objc_alloc_init(MPCModelPlaybackContext);
        if (v12)
        {
          v28 = 0;
          v14 = [(MPCModelQueueFeeder *)self _supplementalLibraryRequestWithError:&v28];
          v15 = v28;
          if (!v14)
          {
            v26 = _MPCLogCategoryPlayback();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              v27 = [(MPCModelQueueFeeder *)self uniqueIdentifier];
              *buf = 138544130;
              *&buf[4] = v27;
              *&buf[12] = 2048;
              *&buf[14] = self;
              *&buf[22] = 2048;
              v34 = 3;
              v35 = 2114;
              v36 = v15;
              _os_log_impl(&dword_1C5C61000, v26, OS_LOG_TYPE_ERROR, "[MQF:%{public}@:%p] supplementalPlaybackContextWithReason:%ld | failed to create library supplemental [] error=%{public}@", buf, 0x2Au);
            }

            v16 = 0;
            goto LABEL_23;
          }

          [(MPCModelPlaybackContext *)v13 setRequest:v14];
          [(MPCModelPlaybackContext *)v13 setSkipEncodingMediaLibraryUniqueID:1];

LABEL_20:
          [(MPCModelPlaybackContext *)v13 setPlaybackRequestEnvironment:self->_playbackRequestEnvironment];
          v20 = [(MPQueueFeeder *)self playActivityQueueGroupingID];
          [(MPCModelPlaybackContext *)v13 setPlayActivityQueueGroupingID:v20];

          v21 = [(MPQueueFeeder *)self playActivityFeatureName];
          [(MPCModelPlaybackContext *)v13 setPlayActivityFeatureName:v21];

          v22 = [(MPQueueFeeder *)self playActivityRecommendationData];
          [(MPCModelPlaybackContext *)v13 setPlayActivityRecommendationData:v22];

          v23 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            v24 = [(MPCModelQueueFeeder *)self uniqueIdentifier];
            *buf = 138544130;
            *&buf[4] = v24;
            *&buf[12] = 2048;
            *&buf[14] = self;
            *&buf[22] = 2048;
            v34 = a3;
            v35 = 2114;
            v36 = v13;
            _os_log_impl(&dword_1C5C61000, v23, OS_LOG_TYPE_DEFAULT, "[MQF:%{public}@:%p] supplementalPlaybackContextWithReason:%ld | created supplemental [] supplementalContext=%{public}@", buf, 0x2Au);
          }

          v13 = v13;
          v16 = v13;
LABEL_23:

LABEL_25:
          goto LABEL_26;
        }

LABEL_19:
        [(MPCModelStorePlaybackItemsRequest *)v6 setClientIdentifier:@"com.apple.Music"];
        [(MPCModelPlaybackContext *)v13 setRequest:v6];
        goto LABEL_20;
      }

LABEL_18:
      v13 = objc_alloc_init(MPCModelPlaybackContext);
      goto LABEL_19;
    }

    v19 = [(MPCModelQueueFeeder *)self _sectionedModelObjectsRepresentationForSectionedCollection:v5];
    [(MPCModelStorePlaybackItemsRequest *)v6 setSectionedModelObjects:v19];

    goto LABEL_18;
  }

  v16 = 0;
LABEL_26:

LABEL_27:

  return v16;
}

void __61__MPCModelQueueFeeder_supplementalPlaybackContextWithReason___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v7 = [a3 preferredStoreStringIdentifierForPersonID:0];
  if ([v7 length])
  {
    [*(a1 + 32) addObject:v7];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __61__MPCModelQueueFeeder_supplementalPlaybackContextWithReason___block_invoke_2;
    v9[3] = &unk_1E8234870;
    v8 = *(a1 + 40);
    v9[4] = *(a1 + 48);
    [v8 enumerateItemIdentifiersInSectionAtIndex:a2 usingBlock:v9];
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    *a4 = 1;
  }
}

void __61__MPCModelQueueFeeder_supplementalPlaybackContextWithReason___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = [a3 preferredStoreStringIdentifierForPersonID:0];
  if (![v6 length])
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }
}

- (id)playbackInfoForItem:(id)a3
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF90] dictionary];
  v6 = [v4 modelGenericObject];
  v7 = [v6 identifiers];

  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__13630;
  v32 = __Block_byref_object_dispose__13631;
  v33 = 0;
  startTimeModifications = self->_startTimeModifications;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __43__MPCModelQueueFeeder_playbackInfoForItem___block_invoke;
  v25[3] = &unk_1E8234848;
  v9 = v7;
  v26 = v9;
  v27 = &v28;
  [(NSDictionary *)startTimeModifications enumerateKeysAndObjectsUsingBlock:v25];
  if (v29[5])
  {
    v10 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(MPCModelQueueFeeder *)self uniqueIdentifier];
      v12 = v29[5];
      *buf = 138544130;
      *&buf[4] = v11;
      *&buf[12] = 2048;
      *&buf[14] = self;
      *&buf[22] = 2114;
      v43 = v12;
      LOWORD(v44) = 2114;
      *(&v44 + 2) = v4;
      _os_log_impl(&dword_1C5C61000, v10, OS_LOG_TYPE_DEFAULT, "[MQF:%{public}@:%p] playbackInfoForItem | setting override start time [] startTime=%{public}@ item=%{public}@", buf, 0x2Au);
    }

    [v5 setObject:v29[5] forKey:*MEMORY[0x1E696F7F0]];
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v43 = __Block_byref_object_copy__13630;
  *&v44 = __Block_byref_object_dispose__13631;
  *(&v44 + 1) = 0;
  endTimeModifications = self->_endTimeModifications;
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __43__MPCModelQueueFeeder_playbackInfoForItem___block_invoke_8;
  v22 = &unk_1E8234848;
  v14 = v9;
  v23 = v14;
  v24 = buf;
  [(NSDictionary *)endTimeModifications enumerateKeysAndObjectsUsingBlock:&v19];
  if (*(*&buf[8] + 40))
  {
    v15 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [(MPCModelQueueFeeder *)self uniqueIdentifier:v19];
      v17 = *(*&buf[8] + 40);
      *v34 = 138544130;
      v35 = v16;
      v36 = 2048;
      v37 = self;
      v38 = 2114;
      v39 = v17;
      v40 = 2114;
      v41 = v4;
      _os_log_impl(&dword_1C5C61000, v15, OS_LOG_TYPE_DEFAULT, "[MQF:%{public}@:%p] playbackInfoForItem | setting override stop time [] stopTime=%{public}@ item=%{public}@", v34, 0x2Au);
    }

    [v5 setObject:*(*&buf[8] + 40) forKey:*MEMORY[0x1E696F7D8]];
  }

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(&v28, 8);

  return v5;
}

void __43__MPCModelQueueFeeder_playbackInfoForItem___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = a3;
  if ([a2 mpc_intersectsSet:*(a1 + 32) ignoringModelKind:1])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    *a4 = 1;
  }
}

void __43__MPCModelQueueFeeder_playbackInfoForItem___block_invoke_8(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = a3;
  if ([a2 mpc_intersectsSet:*(a1 + 32) ignoringModelKind:1])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    *a4 = 1;
  }
}

- (void)applyVolumeNormalizationForItem:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 modelPlayEvent];
  if ([v4 itemType] == 1)
  {
    v5 = [v3 modelGenericObject];
    if ([v5 type] == 1)
    {
      v6 = [v5 song];
      v7 = [v6 album];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  if ([v7 hasLoadedValueForKey:*MEMORY[0x1E696FC50]])
  {
    [v7 volumeNormalization];
    v9 = v8;
  }

  else
  {
    v9 = NAN;
  }

  v10 = [MEMORY[0x1E69708A8] standardUserDefaults];
  v11 = [v10 soundCheckEnabled];

  v12 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v15[0] = 67109120;
    v15[1] = v11;
    _os_log_impl(&dword_1C5C61000, v12, OS_LOG_TYPE_DEFAULT, "MPCModelQueueFeeder applyVolumeNormalizationForItem: soundCheckEnabled=%{BOOL}u", v15, 8u);
  }

  v13 = 0.0;
  if (v11)
  {
    *&v13 = v9;
  }

  [v3 setSoundCheckVolumeNormalization:v13];
  *&v14 = v9;
  [v3 setLoudnessInfoVolumeNormalization:v14];
}

- (void)dealloc
{
  [(MPCCriticalSectionTaskCancellable *)self->_automaticResponseLoadingCriticalSection cancel];
  [(MPCCriticalSectionTaskCancellable *)self->_loadNextPageCriticalSection cancel];
  v3 = +[MPCPlaybackAccountManager sharedManager];
  [v3 unregisterObserver:self];

  if (self->_backgroundTaskIdentifier != *MEMORY[0x1E69B1358])
  {
    v4 = MPSharedBackgroundTaskProvider();
    [v4 endTask:self->_backgroundTaskIdentifier];
  }

  v5.receiver = self;
  v5.super_class = MPCModelQueueFeeder;
  [(MPCModelQueueFeeder *)&v5 dealloc];
}

- (MPCModelQueueFeeder)init
{
  v14.receiver = self;
  v14.super_class = MPCModelQueueFeeder;
  v2 = [(MPQueueFeeder *)&v14 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_attr_make_with_qos_class(v4, QOS_CLASS_USER_INITIATED, 0);
    v6 = dispatch_queue_create("com.apple.MediaPlaybackCore.MPCModelQueueFeeder.diffQueue", v5);
    diffQueue = v3->_diffQueue;
    v3->_diffQueue = v6;

    if (!v3->_playbackRequestEnvironment)
    {
      v8 = +[MPCPlaybackRequestEnvironment activeAccountRequestEnvironment];
      playbackRequestEnvironment = v3->_playbackRequestEnvironment;
      v3->_playbackRequestEnvironment = v8;
    }

    v10 = objc_alloc_init(MPCRequestController);
    requestController = v3->_requestController;
    v3->_requestController = v10;

    [(MPCRequestController *)v3->_requestController setDelegate:v3];
    v12 = +[MPCPlaybackAccountManager sharedManager];
    [v12 registerObserver:v3];
  }

  return v3;
}

@end