@interface MPCQueueControllerBehaviorMusicSharePlay
@end

@implementation MPCQueueControllerBehaviorMusicSharePlay

void __55___MPCQueueControllerBehaviorMusicSharePlay__setQueue___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [v4 identifier];
  if (([*(*(a1 + 32) + 152) containsObject:v3] & 1) == 0)
  {
    [*(a1 + 32) _emitEventsForAddedSharedListeningContainer:v4];
    [*(*(a1 + 32) + 152) addObject:v3];
  }
}

void __89___MPCQueueControllerBehaviorMusicSharePlay__sectionObjectForSharedListeningContainerID___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  v7 = [v10 identifiers];
  v8 = [v7 vendorID];
  v9 = [v8 isEqualToString:*(a1 + 32)];

  if (v9)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

void __74___MPCQueueControllerBehaviorMusicSharePlay__sectionedCollectionForQueue___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [v5 kind];
  if (v6 <= 2)
  {
    if (v6 == 1)
    {
      v15 = objc_alloc(MEMORY[0x1E6970550]);
      v16 = [MEMORY[0x1E6970638] identityKind];
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __74___MPCQueueControllerBehaviorMusicSharePlay__sectionedCollectionForQueue___block_invoke_2;
      v34[3] = &unk_1E82389D8;
      v9 = &v35;
      v35 = v5;
      v10 = [v15 initWithSource:@"MusicSharePlayBehavior" modelKind:v16 block:v34];

      v11 = objc_alloc(MEMORY[0x1E6970630]);
      v12 = &__block_literal_global_7751;
      goto LABEL_10;
    }

    if (v6 != 2)
    {
      goto LABEL_4;
    }

LABEL_7:
    v13 = objc_alloc(MEMORY[0x1E6970550]);
    v14 = [MEMORY[0x1E6970758] identityKind];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __74___MPCQueueControllerBehaviorMusicSharePlay__sectionedCollectionForQueue___block_invoke_8;
    v30[3] = &unk_1E82389D8;
    v9 = &v31;
    v31 = v5;
    v10 = [v13 initWithSource:@"MusicSharePlayBehavior" modelKind:v14 block:v30];

    v11 = objc_alloc(MEMORY[0x1E6970750]);
    v12 = &__block_literal_global_322;
    goto LABEL_10;
  }

  if (v6 == 3)
  {
    v17 = objc_alloc(MEMORY[0x1E6970550]);
    v18 = [MEMORY[0x1E6970730] identityKind];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __74___MPCQueueControllerBehaviorMusicSharePlay__sectionedCollectionForQueue___block_invoke_5;
    v32[3] = &unk_1E82389D8;
    v9 = &v33;
    v33 = v5;
    v10 = [v17 initWithSource:@"MusicSharePlayBehavior" modelKind:v18 block:v32];

    v11 = objc_alloc(MEMORY[0x1E6970718]);
    v12 = &__block_literal_global_317;
    goto LABEL_10;
  }

  if (v6 == 5)
  {
    goto LABEL_7;
  }

LABEL_4:
  v7 = objc_alloc(MEMORY[0x1E6970550]);
  v8 = [MEMORY[0x1E6970690] identityKind];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __74___MPCQueueControllerBehaviorMusicSharePlay__sectionedCollectionForQueue___block_invoke_11;
  v28[3] = &unk_1E82389D8;
  v9 = &v29;
  v29 = v5;
  v10 = [v7 initWithSource:@"MusicSharePlayBehavior" modelKind:v8 block:v28];

  v11 = objc_alloc(MEMORY[0x1E6970688]);
  v12 = &__block_literal_global_326;
LABEL_10:
  v19 = [v11 initWithIdentifiers:v10 block:v12];
  v20 = [MEMORY[0x1E6970670] genericObjectWithModelObject:v19];

  [*(a1 + 32) appendSection:v20];
  v21 = [*(a1 + 40) tracklist];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __74___MPCQueueControllerBehaviorMusicSharePlay__sectionedCollectionForQueue___block_invoke_13;
  v24[3] = &unk_1E82331D0;
  v22 = *(a1 + 48);
  v23 = *(a1 + 56);
  v25 = v22;
  v26 = v23;
  v27 = *(a1 + 32);
  [v21 enumerateItemsInSectionAtIndex:a3 usingBlock:v24];
}

void __74___MPCQueueControllerBehaviorMusicSharePlay__sectionedCollectionForQueue___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 identifier];
  [v4 setVendorID:v5];

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __74___MPCQueueControllerBehaviorMusicSharePlay__sectionedCollectionForQueue___block_invoke_3;
  v6[3] = &unk_1E8238988;
  v7 = *(a1 + 32);
  [v4 setUniversalStoreIdentifiersWithBlock:v6];
}

void __74___MPCQueueControllerBehaviorMusicSharePlay__sectionedCollectionForQueue___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 identifier];
  [v4 setVendorID:v5];

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __74___MPCQueueControllerBehaviorMusicSharePlay__sectionedCollectionForQueue___block_invoke_6;
  v6[3] = &unk_1E8238988;
  v7 = *(a1 + 32);
  [v4 setUniversalStoreIdentifiersWithBlock:v6];
}

void __74___MPCQueueControllerBehaviorMusicSharePlay__sectionedCollectionForQueue___block_invoke_8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 identifier];
  [v4 setVendorID:v5];

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __74___MPCQueueControllerBehaviorMusicSharePlay__sectionedCollectionForQueue___block_invoke_9;
  v6[3] = &unk_1E8237EE8;
  v7 = *(a1 + 32);
  [v4 setRadioIdentifiersWithBlock:v6];
}

void __74___MPCQueueControllerBehaviorMusicSharePlay__sectionedCollectionForQueue___block_invoke_11(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 identifier];
  [v3 setVendorID:v4];
}

void __74___MPCQueueControllerBehaviorMusicSharePlay__sectionedCollectionForQueue___block_invoke_13(id *a1, void *a2)
{
  v32[4] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 playParams];
  v5 = [v4 objectForKeyedSubscript:@"kind"];

  if (v5)
  {
    v6 = *MEMORY[0x1E6970418];
    v32[0] = *MEMORY[0x1E6970420];
    v32[1] = v6;
    v7 = *MEMORY[0x1E6970438];
    v32[2] = *MEMORY[0x1E6970430];
    v32[3] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:4];
    v9 = [v8 containsObject:v5];

    if (v9)
    {
      v10 = 0x1E6970778;
LABEL_11:
      v11 = [*v10 identityKind];
      v18 = objc_alloc(MEMORY[0x1E6970550]);
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __74___MPCQueueControllerBehaviorMusicSharePlay__sectionedCollectionForQueue___block_invoke_333;
      v22[3] = &unk_1E82389D8;
      v23 = v3;
      v19 = [v18 initWithSource:@"MusicSharePlayBehavior" modelKind:v11 block:v22];
      v20 = [objc_alloc(-[NSObject modelClass](v11 "modelClass"))];
      v21 = [MEMORY[0x1E6970670] genericObjectWithModelObject:v20];
      [a1[6] appendItem:v21];

      goto LABEL_12;
    }

    if ([v5 isEqualToString:*MEMORY[0x1E6970428]])
    {
      v10 = 0x1E69707B0;
      goto LABEL_11;
    }

    if ([v5 isEqualToString:*MEMORY[0x1E6970410]])
    {
      v10 = 0x1E69706F0;
      goto LABEL_11;
    }

    v11 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicSharePlayBehavior");
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_12;
    }

    v12 = [a1[4] engineID];
    v13 = [a1[5] sessionID];
    v14 = [v3 identifier];
    *buf = 138544130;
    v25 = v12;
    v26 = 2114;
    v27 = v13;
    v28 = 2114;
    v29 = v14;
    v30 = 2114;
    v31 = v5;
    v15 = "[BMSP:%{public}@:%{public}@] _sectionedCollectionForQueue: | bailing [unsupported playParams[kind]] itemID=%{public}@ playParamsKind=%{public}@";
    v16 = v11;
    v17 = 42;
    goto LABEL_6;
  }

  v11 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicSharePlayBehavior");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    v12 = [a1[4] engineID];
    v13 = [a1[5] sessionID];
    v14 = [v3 identifier];
    *buf = 138543874;
    v25 = v12;
    v26 = 2114;
    v27 = v13;
    v28 = 2114;
    v29 = v14;
    v15 = "[BMSP:%{public}@:%{public}@] _sectionedCollectionForQueue: | bailing [missing playParams[kind]] itemID=%{public}@";
    v16 = v11;
    v17 = 32;
LABEL_6:
    _os_log_impl(&dword_1C5C61000, v16, OS_LOG_TYPE_FAULT, v15, buf, v17);
  }

LABEL_12:
}

void __74___MPCQueueControllerBehaviorMusicSharePlay__sectionedCollectionForQueue___block_invoke_333(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 identifier];
  [v4 setVendorID:v5];

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __74___MPCQueueControllerBehaviorMusicSharePlay__sectionedCollectionForQueue___block_invoke_2_334;
  v6[3] = &unk_1E8238988;
  v7 = *(a1 + 32);
  [v4 setUniversalStoreIdentifiersWithBlock:v6];
}

void __74___MPCQueueControllerBehaviorMusicSharePlay__sectionedCollectionForQueue___block_invoke_2_334(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 mediaIdentifier];
  [v3 setAdamID:{objc_msgSend(v4, "longLongValue")}];
}

void __74___MPCQueueControllerBehaviorMusicSharePlay__sectionedCollectionForQueue___block_invoke_9(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 mediaIdentifier];
  [v4 setStationStringID:v5];

  v6 = [*(a1 + 32) stationHash];
  [v4 setStationHash:v6];
}

void __74___MPCQueueControllerBehaviorMusicSharePlay__sectionedCollectionForQueue___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 mediaIdentifier];
  [v3 setGlobalPlaylistID:v4];
}

void __74___MPCQueueControllerBehaviorMusicSharePlay__sectionedCollectionForQueue___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 mediaIdentifier];
  [v3 setAdamID:{objc_msgSend(v4, "longLongValue")}];
}

void __73___MPCQueueControllerBehaviorMusicSharePlay__reloadCacheDataWithOptions___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [a3 vendorID];
  [v4 setObject:v5 forKeyedSubscript:v6];
}

void __73___MPCQueueControllerBehaviorMusicSharePlay__reloadCacheDataWithOptions___block_invoke_2(void *a1, void *a2, uint64_t a3)
{
  v5 = [a2 identifier];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __73___MPCQueueControllerBehaviorMusicSharePlay__reloadCacheDataWithOptions___block_invoke_3;
  v10[3] = &unk_1E82331D0;
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v11 = v5;
  v12 = v6;
  v13 = v8;
  v9 = v5;
  [v7 enumerateItemsInSectionAtIndex:a3 usingBlock:v10];
}

void __73___MPCQueueControllerBehaviorMusicSharePlay__reloadCacheDataWithOptions___block_invoke_3(uint64_t a1, void *a2)
{
  v7 = [a2 identifier];
  v3 = [MPCQueueControllerBehaviorMusicIdentifierComponents itemComponentsWithSectionID:*(a1 + 32) itemID:v7];
  if ([*(a1 + 40) _useItemPlaceholderForItemID:v7])
  {
    v4 = [v3 copyAsPlaceholder];

    v3 = v4;
  }

  v5 = *(a1 + 48);
  v6 = [v3 contentItemID];
  [v5 addObject:v6];
}

void __68___MPCQueueControllerBehaviorMusicSharePlay__queueAsStateDictionary__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v6 identifier];
  v8 = [v5 _sectionObjectForSharedListeningContainerID:v7];

  if (objc_opt_respondsToSelector())
  {
    [v8 msp_shortDescription];
  }

  else
  {
    [v8 description];
  }
  v9 = ;
  v10 = *(a1 + 40);
  v11 = MEMORY[0x1E696AEC0];
  v12 = [v6 shortDescription];

  v13 = [v11 stringWithFormat:@"%@ - %@", v12, v9];
  [v10 addObject:v13];

  v14 = [MEMORY[0x1E695DF70] array];
  v15 = *(a1 + 48);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __68___MPCQueueControllerBehaviorMusicSharePlay__queueAsStateDictionary__block_invoke_2;
  v17[3] = &unk_1E8233158;
  v17[4] = *(a1 + 32);
  v18 = v14;
  v16 = v14;
  [v15 enumerateItemsInSectionAtIndex:a3 usingBlock:v17];
  [*(a1 + 40) addObject:v16];
}

void __68___MPCQueueControllerBehaviorMusicSharePlay__queueAsStateDictionary__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 identifier];
  v11 = [v3 _itemObjectForSharedListeningItemID:v5];

  if (objc_opt_respondsToSelector())
  {
    [v11 msp_shortDescription];
  }

  else
  {
    [v11 description];
  }
  v6 = ;
  v7 = *(a1 + 40);
  v8 = MEMORY[0x1E696AEC0];
  v9 = [v4 shortDescription];

  v10 = [v8 stringWithFormat:@"%@ - %@", v9, v6];
  [v7 addObject:v10];
}

uint64_t __75___MPCQueueControllerBehaviorMusicSharePlay__purgePendingActionsWithLabel___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 label];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

void __88___MPCQueueControllerBehaviorMusicSharePlay__mpcSharedListeningEventForICLiveLinkEvent___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  v9 = a1[4];
  v10 = [v8 identifiers];
  v11 = [v10 vendorID];
  LODWORD(v9) = [v9 isEqualToString:v11];

  if (v9)
  {
    objc_storeStrong((*(a1[8] + 8) + 40), a2);
    *a4 = 1;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __88___MPCQueueControllerBehaviorMusicSharePlay__mpcSharedListeningEventForICLiveLinkEvent___block_invoke_2;
    v14[3] = &unk_1E8233090;
    v12 = a1[5];
    v13 = a1[7];
    v14[4] = a1[6];
    v15 = v13;
    [v12 enumerateItemsInSectionAtIndex:a3 usingBlock:v14];
  }
}

void __88___MPCQueueControllerBehaviorMusicSharePlay__mpcSharedListeningEventForICLiveLinkEvent___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  v9 = *(a1 + 32);
  v10 = [v8 identifiers];
  v11 = [v10 vendorID];
  LODWORD(v9) = [v9 isEqualToString:v11];

  if (v9)
  {
    objc_storeStrong((*(*(a1 + 72) + 8) + 40), a2);
    *a4 = 1;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __88___MPCQueueControllerBehaviorMusicSharePlay__mpcSharedListeningEventForICLiveLinkEvent___block_invoke_4;
    v16[3] = &unk_1E82330E0;
    v12 = *(a1 + 40);
    v13 = *(a1 + 56);
    v16[4] = *(a1 + 48);
    v14 = v13;
    v15 = *(a1 + 80);
    v17 = v14;
    v19 = v15;
    v18 = *(a1 + 64);
    [v12 enumerateItemsInSectionAtIndex:a3 usingBlock:v16];
  }
}

void __88___MPCQueueControllerBehaviorMusicSharePlay__mpcSharedListeningEventForICLiveLinkEvent___block_invoke_4(uint64_t a1, void *a2)
{
  obj = [a2 copyWithPropertySet:*(*(a1 + 32) + 104)];
  v3 = [*(a1 + 40) startItemIdentifier];
  v4 = [obj identifiers];
  v5 = [v4 vendorID];
  v6 = [v3 isEqualToString:v5];

  if (v6)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), obj);
  }

  [*(a1 + 48) addObject:obj];
}

void __88___MPCQueueControllerBehaviorMusicSharePlay__mpcSharedListeningEventForICLiveLinkEvent___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 copyWithPropertySet:*(*(a1 + 32) + 104)];
  [*(a1 + 40) addObject:v3];
}

void __66___MPCQueueControllerBehaviorMusicSharePlay__initializeWithQueue___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v66 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = v6;
    v8 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicSharePlayBehavior");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [*(a1 + 32) engineID];
      v10 = [*(a1 + 40) sessionID];
      *buf = 138543874;
      *&buf[4] = v9;
      *&buf[12] = 2114;
      *&buf[14] = v10;
      *&buf[22] = 2114;
      v64 = v7;
      _os_log_impl(&dword_1C5C61000, v8, OS_LOG_TYPE_ERROR, "[BMSP:%{public}@:%{public}@] _initializeWithQueue: | failing command [failed to get expectedCurrentItem] error=%{public}@", buf, 0x20u);
    }

    v11 = [v7 msv_errorByWrappingWithDomain:@"MPCMusicSharePlayBehaviorError" code:9 debugDescription:@"failed to get expectedCurrentItem from server during initial load"];

    (*(*(*(a1 + 40) + 16) + 16))();
    v12 = *(a1 + 40);
    v13 = *(v12 + 16);
    *(v12 + 16) = 0;

    [*(a1 + 48) rollback];
  }

  else
  {
    if (!v5)
    {
      v60 = [MEMORY[0x1E696AAA8] currentHandler];
      [v60 handleFailureInMethod:*(a1 + 64) object:*(a1 + 40) file:@"_MPCQueueControllerBehaviorMusicSharePlay.m" lineNumber:1353 description:@"Server didn't have expected current item"];
    }

    v14 = [*(a1 + 40) liveLink];
    v15 = [v5 identifier];
    [v14 expectingToJoinWithStartItem:v15 asInitiator:{objc_msgSend(*(a1 + 40), "joiningAsInitiator")}];

    v11 = objc_alloc_init(MPCModelStorePlaybackItemsRequest);
    [(MPCModelStorePlaybackItemsRequest *)v11 setPlaybackRequestEnvironment:*(*(a1 + 40) + 32)];
    v16 = [MEMORY[0x1E6970670] mqf_requiredItemPlaybackProperties];
    [(MPCModelStorePlaybackItemsRequest *)v11 setItemProperties:v16];

    v17 = [MEMORY[0x1E6970670] mqf_requiredSectionPlaybackProperties];
    [(MPCModelStorePlaybackItemsRequest *)v11 setSectionProperties:v17];

    v18 = [*(a1 + 40) requestedPropertySetForEvents];

    if (v18)
    {
      v19 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicSharePlayBehavior");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [*(a1 + 32) engineID];
        v21 = [*(a1 + 40) sessionID];
        v22 = [*(a1 + 40) requestedPropertySetForEvents];
        *buf = 138543874;
        *&buf[4] = v20;
        *&buf[12] = 2114;
        *&buf[14] = v21;
        *&buf[22] = 2114;
        v64 = v22;
        _os_log_impl(&dword_1C5C61000, v19, OS_LOG_TYPE_DEFAULT, "[BMSP:%{public}@:%{public}@] _initializeWithQueue: | adding client requested properites [] properites=%{public}@", buf, 0x20u);
      }

      v23 = [(MPCModelStorePlaybackItemsRequest *)v11 itemProperties];
      v24 = [*(a1 + 40) requestedPropertySetForEvents];
      v25 = [v23 propertySetByCombiningWithPropertySet:v24];
      [(MPCModelStorePlaybackItemsRequest *)v11 setItemProperties:v25];

      v26 = [(MPCModelStorePlaybackItemsRequest *)v11 sectionProperties];
      v27 = [*(a1 + 40) requestedPropertySetForEvents];
      v28 = [v26 propertySetByCombiningWithPropertySet:v27];
      [(MPCModelStorePlaybackItemsRequest *)v11 setSectionProperties:v28];
    }

    v29 = [*(a1 + 40) _sectionedCollectionForQueue:*(a1 + 56)];
    [(MPCModelStorePlaybackItemsRequest *)v11 setSectionedModelObjects:v29];

    v30 = [v5 identifier];
    v31 = objc_alloc(MEMORY[0x1E6970550]);
    v32 = [MEMORY[0x1E6970778] identityKind];
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = ___MPCQCBMSPSongIdentifierSetForVendorID_block_invoke;
    v64 = &unk_1E82389D8;
    v65 = v30;
    v33 = v30;
    v34 = [v31 initWithSource:@"MusicSharePlayBehavior" modelKind:v32 block:buf];

    v35 = [(MPCModelStorePlaybackItemsRequest *)v11 sectionedModelObjects];
    v36 = [v35 indexPathForItemWithIdentifiersIntersectingSet:v34];

    if (!v36)
    {
      v61 = [MEMORY[0x1E696AAA8] currentHandler];
      [v61 handleFailureInMethod:*(a1 + 64) object:*(a1 + 40) file:@"_MPCQueueControllerBehaviorMusicSharePlay.m" lineNumber:1372 description:{@"Invalid sectionedModelObjects -- does not contain start item: %@", v5}];
    }

    v62 = v36;
    v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v62 count:1];
    [(MPCModelStorePlaybackItemsRequest *)v11 setPlaybackPrioritizedIndexPaths:v37];

    [(MPCModelStorePlaybackItemsRequest *)v11 setClientIdentifier:@"com.apple.Music"];
    [(MPCModelStorePlaybackItemsRequest *)v11 setLabel:@"com.apple.MediaPlaybackCore.MPCQueueControllerBehaviorMusicSharePlay"];
    v38 = objc_alloc_init(MEMORY[0x1E6970768]);
    [*(*(a1 + 40) + 128) setRequest:v38];

    v39 = [*(*(a1 + 40) + 128) request];
    [v39 setTimeoutInterval:0.0];

    v40 = [*(*(a1 + 40) + 128) request];
    [v40 setQualityOfService:25];

    v41 = [(MPCModelStorePlaybackItemsRequest *)v11 label];
    v42 = [*(*(a1 + 40) + 128) request];
    [v42 setLabel:v41];

    v43 = [*(*(a1 + 40) + 128) request];
    [v43 setModelRequest:v11];

    [*(*(a1 + 40) + 128) setNeedsReload];
    v44 = [*(a1 + 56) tracklist];
    v45 = [v44 sectionAtIndex:{objc_msgSend(v36, "msv_section")}];

    v46 = [v45 identifier];
    v47 = [v5 identifier];
    v48 = [MPCQueueControllerBehaviorMusicIdentifierComponents itemComponentsWithSectionID:v46 itemID:v47];

    v49 = [v48 copyAsPlaceholder];
    v50 = *(a1 + 48);
    v51 = [v49 contentItemID];
    [v50 setSuggestedContentItemIDForStart:v51];

    [*(a1 + 40) _setQueue:*(a1 + 56)];
    [*(a1 + 48) commit];
    v52 = *(*(a1 + 40) + 8);
    v53 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicSharePlayBehavior");
    v54 = os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT);
    if (v52)
    {
      if (v54)
      {
        v55 = [*(a1 + 32) engineID];
        v56 = [*(a1 + 40) sessionID];
        v57 = *(*(a1 + 40) + 8);
        *buf = 138543874;
        *&buf[4] = v55;
        *&buf[12] = 2114;
        *&buf[14] = v56;
        *&buf[22] = 2114;
        v64 = v57;
        _os_log_impl(&dword_1C5C61000, v53, OS_LOG_TYPE_DEFAULT, "[BMSP:%{public}@:%{public}@] _initializeWithQueue: | begin synchronized playback with AVPlaybackCoordinator [] playbackCoordinator=%{public}@", buf, 0x20u);
      }

      [*(*(a1 + 40) + 112) beginSynchronizedPlaybackWithAVPlaybackCoordinator:*(*(a1 + 40) + 8)];
    }

    else
    {
      if (v54)
      {
        v58 = [*(a1 + 32) engineID];
        v59 = [*(a1 + 40) sessionID];
        *buf = 138543618;
        *&buf[4] = v58;
        *&buf[12] = 2114;
        *&buf[14] = v59;
        _os_log_impl(&dword_1C5C61000, v53, OS_LOG_TYPE_DEFAULT, "[BMSP:%{public}@:%{public}@] _initializeWithQueue: | deferred begin synchronized playback with AVPlaybackCoordinator [coordinator unavailable]", buf, 0x16u);
      }
    }
  }
}

_BYTE *__90___MPCQueueControllerBehaviorMusicSharePlay__emitEventsForParticipants_localUserIdentity___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 msp_mpcParticipant];
  v5 = [v3 identifier];

  v6 = [*(a1 + 32) identifier];
  if (v5 != v6)
  {
    v7 = [v5 isEqual:v6];
    if (!v4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = 1;
  if (v4)
  {
LABEL_3:
    v4[8] = v7;
  }

LABEL_4:

  return v4;
}

void __81___MPCQueueControllerBehaviorMusicSharePlay__componentsForSharedListeningItemID___block_invoke(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v25 = a2;
  v7 = a3;
  v8 = [v25 identifier];
  v9 = [v8 isEqualToString:a1[4]];

  if (v9)
  {
    v10 = [*(a1[5] + 120) tracklist];
    v11 = [v10 sectionAtIndex:{objc_msgSend(v7, "msv_section")}];

    v12 = [v11 identifier];
    v13 = [v25 identifier];
    v14 = [MPCQueueControllerBehaviorMusicIdentifierComponents itemComponentsWithSectionID:v12 itemID:v13];
    v15 = *(a1[6] + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    v17 = a1[5];
    v18 = [v25 identifier];
    LODWORD(v17) = [v17 _useItemPlaceholderForItemID:v18];

    if (v17)
    {
      v19 = [*(*(a1[6] + 8) + 40) copyAsPlaceholder];
      v20 = *(a1[6] + 8);
      v21 = *(v20 + 40);
      *(v20 + 40) = v19;
    }

    if ([v25 isAutoPlayItem])
    {
      v22 = [*(*(a1[6] + 8) + 40) copyWithBehaviorFlags:1];
      v23 = *(a1[6] + 8);
      v24 = *(v23 + 40);
      *(v23 + 40) = v22;
    }

    *a4 = 1;
  }
}

void __70___MPCQueueControllerBehaviorMusicSharePlay_liveLink_didReceiveEvent___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) primaryReferencedIdentifier];
  if (v2)
  {
    objc_initWeak(location, *(a1 + 40));
    v3 = *(a1 + 40);
    v4 = MEMORY[0x1E696AEC0];
    [*(a1 + 32) type];
    v5 = NSStringFromICLiveLinkEventType();
    v6 = [v4 stringWithFormat:@"Event-%@", v5];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __70___MPCQueueControllerBehaviorMusicSharePlay_liveLink_didReceiveEvent___block_invoke_2;
    v14[3] = &unk_1E8237590;
    v14[4] = *(a1 + 40);
    v15 = v2;
    v16 = *(a1 + 32);
    objc_copyWeak(&v17, location);
    [v3 _enqueuePendingActionWithLabel:v6 itemIdentifier:v15 block:v14];

    objc_destroyWeak(&v17);
    objc_destroyWeak(location);
  }

  else
  {
    v7 = [*(a1 + 40) host];
    v8 = [*(a1 + 40) _mpcSharedListeningEventForICLiveLinkEvent:*(a1 + 32)];
    if (v8)
    {
      v9 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicSharePlayBehavior");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [v7 engineID];
        v11 = [*(a1 + 40) sessionID];
        v12 = *(a1 + 32);
        *location = 138544130;
        *&location[4] = v10;
        v19 = 2114;
        v20 = v11;
        v21 = 2114;
        v22 = v12;
        v23 = 2114;
        v24 = v8;
        _os_log_impl(&dword_1C5C61000, v9, OS_LOG_TYPE_DEFAULT, "[BMSP:%{public}@:%{public}@] liveLink:didReceiveEvent: | calling delegate [] event=%{public}@ sharedListeningEvent=%{public}@", location, 0x2Au);
      }

      v13 = [*(a1 + 40) musicSharePlayBehaviorDelegate];
      [v13 behavior:*(a1 + 40) didReceiveSharedListeningEvent:v8];
    }

    else
    {
    }
  }
}

void __70___MPCQueueControllerBehaviorMusicSharePlay_liveLink_didReceiveEvent___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = [*(a1 + 32) host];
  if (a2 == 2)
  {
    v5 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicSharePlayBehavior");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v4 engineID];
      v7 = [*(a1 + 32) sessionID];
      v11 = *(a1 + 40);
      v12 = *(a1 + 48);
      v22 = 138544130;
      v23 = v6;
      v24 = 2114;
      v25 = v7;
      v26 = 2114;
      v27 = v11;
      v28 = 2114;
      v29 = v12;
      v10 = "[BMSP:%{public}@:%{public}@] liveLink:didReceiveEvent: | dropping event [purged waiting on item: %{public}@] event=%{public}@";
      goto LABEL_7;
    }
  }

  else if (a2 == 1)
  {
    v5 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicSharePlayBehavior");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v4 engineID];
      v7 = [*(a1 + 32) sessionID];
      v8 = *(a1 + 40);
      v9 = *(a1 + 48);
      v22 = 138544130;
      v23 = v6;
      v24 = 2114;
      v25 = v7;
      v26 = 2114;
      v27 = v8;
      v28 = 2114;
      v29 = v9;
      v10 = "[BMSP:%{public}@:%{public}@] liveLink:didReceiveEvent: | dropping event [expired waiting on item: %{public}@] event=%{public}@";
LABEL_7:
      _os_log_impl(&dword_1C5C61000, v5, OS_LOG_TYPE_DEFAULT, v10, &v22, 0x2Au);
LABEL_15:
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v5 = WeakRetained;
    if (WeakRetained)
    {
      v6 = [WeakRetained _mpcSharedListeningEventForICLiveLinkEvent:*(a1 + 48)];
      v14 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicSharePlayBehavior");
      v7 = v14;
      if (v6)
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = [v4 engineID];
          v16 = [*(a1 + 32) sessionID];
          v17 = *(a1 + 40);
          v18 = *(a1 + 48);
          v22 = 138544386;
          v23 = v15;
          v24 = 2114;
          v25 = v16;
          v26 = 2114;
          v27 = v17;
          v28 = 2114;
          v29 = v18;
          v30 = 2114;
          v31 = v6;
          _os_log_impl(&dword_1C5C61000, v7, OS_LOG_TYPE_DEFAULT, "[BMSP:%{public}@:%{public}@] liveLink:didReceiveEvent: | calling delegate [item valid: %{public}@] event=%{public}@ sharedListeningEvent=%{public}@", &v22, 0x34u);
        }

        v7 = [v5 musicSharePlayBehaviorDelegate];
        [v7 behavior:v5 didReceiveSharedListeningEvent:v6];
      }

      else if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v19 = [v4 engineID];
        v20 = [*(a1 + 32) sessionID];
        v21 = *(a1 + 48);
        v22 = 138543874;
        v23 = v19;
        v24 = 2114;
        v25 = v20;
        v26 = 2114;
        v27 = v21;
        _os_log_impl(&dword_1C5C61000, v7, OS_LOG_TYPE_ERROR, "[BMSP:%{public}@:%{public}@] liveLink:didReceiveEvent: | dropping event [unable to convert to shared listening event] event=%{public}@", &v22, 0x20u);
      }

      goto LABEL_15;
    }
  }
}

void __105___MPCQueueControllerBehaviorMusicSharePlay_liveLink_didReceiveDirectCurrentItemChanged_fromParticipant___block_invoke(id *a1)
{
  v20[2] = *MEMORY[0x1E69E9840];
  [a1[4] _purgePendingActionsWithLabel:@"ChangeCurrentItem"];
  objc_initWeak(&location, a1[4]);
  v2 = [a1[5] identifier];
  v3 = [a1[4] host];
  v4 = [v3 eventStream];
  v19[0] = @"shared-session-id";
  v5 = [a1[4] liveLink];
  v6 = [v5 identifier];
  v7 = v6;
  if (!v6)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v19[1] = @"originating-participant";
  v20[0] = v7;
  v8 = [a1[6] msp_mpcParticipant];
  v9 = v8;
  if (!v8)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v20[1] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];
  [v4 emitEventType:@"shared-session-synchronization-begin" payload:v10];

  if (!v8)
  {
  }

  if (!v6)
  {
  }

  v11 = a1[4];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __105___MPCQueueControllerBehaviorMusicSharePlay_liveLink_didReceiveDirectCurrentItemChanged_fromParticipant___block_invoke_2;
  v14[3] = &unk_1E8232FB8;
  objc_copyWeak(v17, &location);
  v12 = v2;
  v17[1] = a1[7];
  v13 = a1[4];
  v15 = v12;
  v16 = v13;
  [v11 _enqueuePendingActionWithLabel:@"ChangeCurrentItem" itemIdentifier:v12 block:v14];

  objc_destroyWeak(v17);
  objc_destroyWeak(&location);
}

void __105___MPCQueueControllerBehaviorMusicSharePlay_liveLink_didReceiveDirectCurrentItemChanged_fromParticipant___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v22[2] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (!WeakRetained)
  {
LABEL_10:
    v11 = 0;
    goto LABEL_14;
  }

  if (a2 == 2)
  {
    [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCMusicSharePlayBehaviorError" code:12 underlyingError:0 debugDescription:{@"Pending action for %@ was interrupted", *(a1 + 32)}];
  }

  else
  {
    if (a2 != 1)
    {
      if (!a2)
      {
        v6 = [WeakRetained _componentsForSharedListeningItemID:*(a1 + 32)];
        if (!v6)
        {
          v19 = [MEMORY[0x1E696AAA8] currentHandler];
          [v19 handleFailureInMethod:*(a1 + 56) object:*(a1 + 40) file:@"_MPCQueueControllerBehaviorMusicSharePlay.m" lineNumber:1138 description:{@"Pending action flushed but item was still not found [nil components]: %@", *(a1 + 32)}];
        }

        v7 = [v5[20] objectForKeyedSubscript:*(a1 + 32)];
        if (!v7)
        {
          v20 = [MEMORY[0x1E696AAA8] currentHandler];
          [v20 handleFailureInMethod:*(a1 + 56) object:*(a1 + 40) file:@"_MPCQueueControllerBehaviorMusicSharePlay.m" lineNumber:1141 description:{@"Pending action flushed but item was still not found [nil indexPath]: %@", *(a1 + 32)}];
        }

        v8 = [v5 externalSyncHost];
        v9 = [v8 beginExternalSyncEditWithReason:@"LiveLink-DirectItemChange"];

        v10 = [v6 contentItemID];
        [v9 setTargetContentItemID:v10];

        [v9 commit];
      }

      goto LABEL_10;
    }

    [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCMusicSharePlayBehaviorError" code:13 underlyingError:0 debugDescription:{@"Pending action for %@ timed out [item never arrived]", *(a1 + 32)}];
  }
  v11 = ;
LABEL_14:
  v12 = [v5 host];
  v13 = [v12 eventStream];
  v21[0] = @"shared-session-id";
  v14 = [v5 liveLink];
  v15 = [v14 identifier];
  v16 = v15;
  if (!v15)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v21[1] = @"shared-sync-error";
  v22[0] = v16;
  v17 = v11;
  if (!v11)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v22[1] = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];
  [v13 emitEventType:@"shared-session-synchronization-end" payload:v18];

  if (!v11)
  {

    if (v15)
    {
      goto LABEL_20;
    }

LABEL_22:

    goto LABEL_20;
  }

  if (!v15)
  {
    goto LABEL_22;
  }

LABEL_20:
}

void __69___MPCQueueControllerBehaviorMusicSharePlay_liveLink_didUpdateQueue___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[15])
  {
    v3 = [v2 host];
    v8 = [v3 beginEditWithReason:@"BehaviorSharePlay-liveLinkDidUpdateQueue"];

    v4 = [*(*(a1 + 32) + 128) request];
    v5 = [v4 modelRequest];

    [v5 setPlaybackPrioritizedIndexPaths:MEMORY[0x1E695E0F0]];
    v6 = [*(a1 + 32) _sectionedCollectionForQueue:*(a1 + 40)];
    [v5 setSectionedModelObjects:v6];

    [*(*(a1 + 32) + 128) setNeedsReload];
    [*(a1 + 32) _setQueue:*(a1 + 40)];
    [v8 commit];
  }

  else
  {
    v7 = *(a1 + 40);

    [v2 _initializeWithQueue:v7];
  }
}

void __76___MPCQueueControllerBehaviorMusicSharePlay_liveLink_didUpdateParticipants___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [*(a1 + 48) identity];
  [v1 _emitEventsForParticipants:v2 localUserIdentity:v3];
}

void __82___MPCQueueControllerBehaviorMusicSharePlay_liveLink_didEncounterError_willRetry___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) host];
  v3 = v2;
  if (*(a1 + 48))
  {
    v4 = [v2 eventStream];
    v5 = [*(a1 + 32) sessionID];
    v6 = v5;
    if (!v5)
    {
      v6 = [MEMORY[0x1E695DFB0] null];
    }

    v14[0] = v6;
    v14[1] = @"LiveLink Encountered Error";
    v13[1] = @"shared-session-event-reason";
    v13[2] = @"shared-session-is-reconnect";
    v14[2] = MEMORY[0x1E695E118];
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];
    [v4 emitEventType:@"shared-session-end" payload:v7];

    if (!v5)
    {
    }

    goto LABEL_10;
  }

  v8 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicSharePlayBehavior");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = [v3 engineID];
    v10 = [*(a1 + 32) sessionID];
    v11 = *(a1 + 40);
    *buf = 138543874;
    v16 = v9;
    v17 = 2114;
    v18 = v10;
    v19 = 2114;
    v20 = v11;
    _os_log_impl(&dword_1C5C61000, v8, OS_LOG_TYPE_ERROR, "[BMSP:%{public}@:%{public}@] liveLink:didEncounterError: | stopping [not attempting retry] error=%{public}@", buf, 0x20u);
  }

  if (*(*(a1 + 32) + 16))
  {
    v4 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCMusicSharePlayBehaviorError" code:9 underlyingError:*(a1 + 40) debugDescription:@"Unexpected live link error during initial load"];
    (*(*(*(a1 + 32) + 16) + 16))();
    v12 = *(a1 + 32);
    v5 = *(v12 + 16);
    *(v12 + 16) = 0;
LABEL_10:
  }
}

void __61___MPCQueueControllerBehaviorMusicSharePlay_didStopLiveLink___block_invoke(uint64_t a1)
{
  v15[2] = *MEMORY[0x1E69E9840];
  *(*(a1 + 32) + 40) = 1;
  v2 = [*(a1 + 32) host];
  v3 = [v2 beginEditWithReason:@"LiveLinkDidStop"];
  [*(a1 + 32) _setQueue:0];
  v4 = [*(*(a1 + 32) + 128) request];
  v5 = [v4 modelRequest];

  [v5 setPlaybackPrioritizedIndexPaths:MEMORY[0x1E695E0F0]];
  v6 = objc_alloc_init(MEMORY[0x1E6970938]);
  [v5 setSectionedModelObjects:v6];

  [*(*(a1 + 32) + 128) setNeedsReload];
  [v3 commit];
  v7 = [v2 eventStream];
  v14[0] = @"session-id";
  v8 = [*(a1 + 32) sessionID];
  v9 = v8;
  if (!v8)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v14[1] = @"shared-session-event-reason";
  v15[0] = v9;
  v15[1] = @"LiveLink Stopped";
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];
  [v7 emitEventType:@"shared-session-end" payload:v10];

  if (!v8)
  {
  }

  v11 = *(a1 + 32);
  v12 = v11[41];
  v13 = [v11 musicSharePlayBehaviorDelegate];
  [v13 behavior:*(a1 + 32) didEndSharePlaySessionWithReason:v12 ^ 1];
}

void __66___MPCQueueControllerBehaviorMusicSharePlay_liveLinkDidReconnect___block_invoke(uint64_t a1)
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) host];
  v3 = [v2 eventStream];
  v9[0] = @"session-id";
  v4 = [*(a1 + 32) sessionID];
  v5 = v4;
  if (!v4)
  {
    v5 = [MEMORY[0x1E695DFB0] null];
  }

  v10[0] = v5;
  v9[1] = @"shared-session-id";
  v6 = [*(a1 + 32) sessionID];
  v7 = v6;
  if (!v6)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v10[1] = v7;
  v10[2] = &unk_1F4599208;
  v9[2] = @"shared-session-type";
  v9[3] = @"shared-session-event-reason";
  v9[4] = @"shared-session-is-reconnect";
  v10[3] = @"LiveLink Reconnect";
  v10[4] = MEMORY[0x1E695E118];
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:5];
  [v3 emitEventType:@"shared-session-begin" payload:v8];

  if (!v6)
  {
  }

  if (!v4)
  {
  }
}

void __82___MPCQueueControllerBehaviorMusicSharePlay_controller_defersResponseReplacement___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) host];
  v21 = [v2 beginEditWithReason:@"BehaviorMusicSharePlay-newResponse"];

  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) _reloadCacheDataWithOptions:1];
  v3 = [*(*(a1 + 32) + 128) response];
  v4 = [v3 modelResponse];
  v5 = [v4 results];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = *(*(a1 + 32) + 176);
  v7 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        v12 = [v11 modelGenericObject];
        v13 = [v12 identifiers];
        v14 = [v13 vendorID];

        if (v14)
        {
          v15 = [*(*(a1 + 32) + 160) objectForKeyedSubscript:v14];
          if (v15)
          {
            v16 = [v5 itemAtIndexPath:v15];
            if (v16)
            {
              [v11 setGenericObject:v16];
            }
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v8);
  }

  [v21 commit];
  v17 = *(a1 + 32);
  v18 = v17[2];
  if (v18)
  {
    (*(v18 + 16))(v17[2], 0);
    v19 = *(a1 + 32);
    v20 = *(v19 + 16);
    *(v19 + 16) = 0;

    v17 = *(a1 + 32);
  }

  [v17 _dequeuePendingActions];
}

void __97___MPCQueueControllerBehaviorMusicSharePlay_performInsertCommand_targetContentItemID_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (!v5 || a3)
  {
    v13 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCMusicSharePlayBehaviorError" code:10 underlyingError:a3 debugDescription:{@"Failed to build playback context: %@", *(a1 + 32)}];
    (*(*(a1 + 64) + 16))();
    [*(a1 + 40) rollback];
  }

  else
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __97___MPCQueueControllerBehaviorMusicSharePlay_performInsertCommand_targetContentItemID_completion___block_invoke_2;
    v14[3] = &unk_1E8232F18;
    v15 = v5;
    v7 = *(a1 + 64);
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    *&v10 = *(a1 + 56);
    *(&v10 + 1) = v7;
    *&v11 = v8;
    *(&v11 + 1) = v9;
    v16 = v11;
    v17 = v10;
    v18 = *(a1 + 72);
    v12 = [v15 getSharedListeningTracklistWithCompletion:v14];
  }
}

void __97___MPCQueueControllerBehaviorMusicSharePlay_performInsertCommand_targetContentItemID_completion___block_invoke_2(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  if (!a4)
  {
    v9 = [*(a1 + 48) insertAfterContentItemID];
    aBlock = MEMORY[0x1E69E9820];
    v23 = 3221225472;
    v24 = __97___MPCQueueControllerBehaviorMusicSharePlay_performInsertCommand_targetContentItemID_completion___block_invoke_3;
    v25 = &unk_1E8234C68;
    v28 = *(a1 + 64);
    v10 = *(a1 + 40);
    v11 = *(a1 + 56);
    v26 = v10;
    v27 = v11;
    v12 = _Block_copy(&aBlock);
    if (v9)
    {
      v13 = [*(a1 + 56) _componentsForContentItemID:v9];
      v14 = [v13 itemID];
    }

    else
    {
      v14 = 0;
    }

    if ([*(a1 + 40) allowsChangingCurrentItem])
    {
      [*(*(a1 + 56) + 120) insertTracklist:v7 afterItemIdentifier:v14 playNowWithPreferredStartIndexPath:v8 completionEx:v12];
LABEL_17:

      goto LABEL_18;
    }

    v15 = [*(a1 + 48) insertionPosition];
    if (v15 == 3)
    {
      v16 = [MEMORY[0x1E69E45B8] specifiedPositionAfterItemIdentifier:v14];
    }

    else if (v15 == 2)
    {
      v16 = [MEMORY[0x1E69E45B8] playLastPositionWithAfterItemIdentifierHint:v14];
    }

    else
    {
      if (v15)
      {
        v18 = [MEMORY[0x1E696AAA8] currentHandler];
        v19 = *(a1 + 72);
        v20 = *(a1 + 56);
        v21 = [*(a1 + 48) insertionPosition];
        [v18 handleFailureInMethod:v19 object:v20 file:@"_MPCQueueControllerBehaviorMusicSharePlay.m" lineNumber:905 description:{@"[BMSP] completion performInsertCommand unsupported insertion position: %ld", v21, aBlock, v23, v24, v25}];

        v17 = 0;
        goto LABEL_16;
      }

      v16 = [MEMORY[0x1E69E45B8] playNextPositionWithAfterItemIdentifierHint:v14];
    }

    v17 = v16;
LABEL_16:
    [*(*(a1 + 56) + 120) insertTracklist:v7 atPosition:v17 completionEx:v12];

    goto LABEL_17;
  }

  v9 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCMusicSharePlayBehaviorError" code:10 underlyingError:a4 debugDescription:{@"Failed to build shared tracklist for context: %@", *(a1 + 32)}];
  (*(*(a1 + 64) + 16))();
  [*(a1 + 40) rollback];
LABEL_18:
}

void __97___MPCQueueControllerBehaviorMusicSharePlay_performInsertCommand_targetContentItemID_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v8 = a3;
  v10 = *(a1 + 48);
  v9 = *(a1 + 32);
  v6 = v5;
  v7 = v8;
  msv_dispatch_on_main_queue();
}

void __97___MPCQueueControllerBehaviorMusicSharePlay_performInsertCommand_targetContentItemID_completion___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(a1 + 64);
    v4 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCMusicSharePlayBehaviorError" code:7 underlyingError:v2 debugDescription:@"Failed to insert content"];
    (*(v3 + 16))(v3, v4);

    v5 = *(a1 + 40);

    [v5 rollback];
  }

  else
  {
    v8 = [*(a1 + 48) _componentsForSharedListeningItemID:*(a1 + 56)];
    v6 = *(a1 + 40);
    v7 = [v8 contentItemID];
    [v6 setSuggestedContentItemIDForStart:v7];

    [*(a1 + 40) commit];
    (*(*(a1 + 64) + 16))();
  }
}

void __70___MPCQueueControllerBehaviorMusicSharePlay_canReuseQueue_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (!v5 || a3)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __70___MPCQueueControllerBehaviorMusicSharePlay_canReuseQueue_completion___block_invoke_2;
    v9[3] = &unk_1E8232EF0;
    v10 = v5;
    v7 = *(a1 + 40);
    v11 = *(a1 + 32);
    v12 = v7;
    v8 = [v10 getSharedListeningTracklistWithCompletion:v9];
  }
}

void __70___MPCQueueControllerBehaviorMusicSharePlay_canReuseQueue_completion___block_invoke_2(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  if (a4)
  {
    v9 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCMusicSharePlayBehaviorError" code:10 underlyingError:a4 debugDescription:{@"Failed to build shared tracklist for context: %@", *(a1 + 32)}];
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __70___MPCQueueControllerBehaviorMusicSharePlay_canReuseQueue_completion___block_invoke_3;
    block[3] = &unk_1E8237160;
    block[4] = *(a1 + 40);
    v11 = v7;
    v12 = v8;
    v13 = *(a1 + 48);
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __70___MPCQueueControllerBehaviorMusicSharePlay_canReuseQueue_completion___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(v1 + 120);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __70___MPCQueueControllerBehaviorMusicSharePlay_canReuseQueue_completion___block_invoke_4;
  v5[3] = &unk_1E8232EC8;
  v5[4] = v1;
  v4 = *(a1 + 48);
  v6 = *(a1 + 56);
  [v3 insertTracklist:v2 afterItemIdentifier:0 playNowWithPreferredStartIndexPath:v4 completionEx:v5];
}

void __70___MPCQueueControllerBehaviorMusicSharePlay_canReuseQueue_completion___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __70___MPCQueueControllerBehaviorMusicSharePlay_canReuseQueue_completion___block_invoke_5;
  v11[3] = &unk_1E8237160;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v12 = v6;
  v13 = v7;
  v14 = v5;
  v15 = v8;
  v9 = v5;
  v10 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], v11);
}

void __70___MPCQueueControllerBehaviorMusicSharePlay_canReuseQueue_completion___block_invoke_5(uint64_t a1)
{
  v5 = [*(a1 + 32) msv_errorByWrappingWithDomain:@"MPCMusicSharePlayBehaviorError" code:5 debugDescription:@"canReuseQueue -> linkLink.queue.PlayNow failed"];
  v2 = [*(a1 + 40) _componentsForSharedListeningItemID:*(a1 + 48)];
  v3 = *(a1 + 56);
  v4 = [v2 contentItemID];
  (*(v3 + 16))(v3, 1, v4, @"live link processed", v5);
}

void __95___MPCQueueControllerBehaviorMusicSharePlay_setAutoPlayEnabled_targetContentItemID_completion___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (v3)
  {
    v6 = [WeakRetained host];
    v7 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicSharePlayBehavior");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [v6 engineID];
      v9 = [v5 sessionID];
      v10 = *(a1 + 48);
      *buf = 138544130;
      v13 = v8;
      v14 = 2114;
      v15 = v9;
      v16 = 1024;
      v17 = v10;
      v18 = 2114;
      v19 = v3;
      _os_log_impl(&dword_1C5C61000, v7, OS_LOG_TYPE_ERROR, "[BMSP:%{public}@:%{public}@] setAutoPlayEnabled:targetContentItemID:completion: | failed [server error] autoPlayEnabled=%{BOOL}u error=%{public}@", buf, 0x26u);
    }

    v11 = [v3 msv_errorByWrappingWithDomain:@"MPCMusicSharePlayBehaviorError" code:4 debugDescription:{@"setAutoPlayEnabled:%ld failed", *(a1 + 48)}];
  }

  else
  {
    v11 = 0;
  }

  [v5 _emitEventsForPlaybackBehaviorChange];
  (*(*(a1 + 32) + 16))();
}

void __93___MPCQueueControllerBehaviorMusicSharePlay_getExpectedCurrentItemModelObjectWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v8 = a3;
  v9 = *(a1 + 40);
  v6 = v8;
  v7 = v5;
  msv_dispatch_on_main_queue();
}

void __93___MPCQueueControllerBehaviorMusicSharePlay_getExpectedCurrentItemModelObjectWithCompletion___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(a1 + 40) == 0;
  }

  else
  {
    v2 = 0;
  }

  if (v2)
  {
    objc_initWeak(&location, *(a1 + 48));
    v4 = [*(a1 + 32) identifier];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __93___MPCQueueControllerBehaviorMusicSharePlay_getExpectedCurrentItemModelObjectWithCompletion___block_invoke_3;
    v9[3] = &unk_1E8232E00;
    v5 = *(a1 + 48);
    v12 = *(a1 + 56);
    objc_copyWeak(v13, &location);
    v6 = v4;
    v13[1] = *(a1 + 64);
    v7 = *(a1 + 48);
    v10 = v6;
    v11 = v7;
    [v5 _enqueuePendingActionWithLabel:@"getExpectedCurrentItemModelObject" itemIdentifier:v6 block:v9];

    objc_destroyWeak(v13);
    objc_destroyWeak(&location);
  }

  else
  {
    v3 = *(a1 + 56);
    v8 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCMusicSharePlayBehaviorError" code:15 underlyingError:? debugDescription:?];
    (*(v3 + 16))(v3, 0, v8);
  }
}

void __93___MPCQueueControllerBehaviorMusicSharePlay_getExpectedCurrentItemModelObjectWithCompletion___block_invoke_3(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 48);
    v14 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCMusicSharePlayBehaviorError" code:13 debugDescription:@"failed to get model object - pending action timed out"];
    (*(v3 + 16))(v3, 0, v14);
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v14 = WeakRetained;
    if (WeakRetained)
    {
      v5 = [WeakRetained _componentsForSharedListeningItemID:*(a1 + 32)];
      if (!v5)
      {
        v12 = [MEMORY[0x1E696AAA8] currentHandler];
        [v12 handleFailureInMethod:*(a1 + 64) object:*(a1 + 40) file:@"_MPCQueueControllerBehaviorMusicSharePlay.m" lineNumber:208 description:{@"Pending action flushed but item was still not found [nil components]: %@", *(a1 + 32)}];
      }

      v6 = [v14[16] response];
      v7 = [v6 modelResponse];
      v8 = [v7 results];

      v9 = [v14[20] objectForKeyedSubscript:*(a1 + 32)];
      if (!v9)
      {
        v13 = [MEMORY[0x1E696AAA8] currentHandler];
        [v13 handleFailureInMethod:*(a1 + 64) object:*(a1 + 40) file:@"_MPCQueueControllerBehaviorMusicSharePlay.m" lineNumber:212 description:{@"Pending action flushed but item was still not found [nil indexPath]: %@", *(a1 + 32)}];
      }

      v10 = [v8 itemAtIndexPath:v9];
      (*(*(a1 + 48) + 16))();
    }

    else
    {
      v11 = *(a1 + 48);
      v5 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCMusicSharePlayBehaviorError" code:11 debugDescription:@"failed to get model object - sharePlay behavior was dealloc'd"];
      (*(v11 + 16))(v11, 0, v5);
    }
  }
}

@end