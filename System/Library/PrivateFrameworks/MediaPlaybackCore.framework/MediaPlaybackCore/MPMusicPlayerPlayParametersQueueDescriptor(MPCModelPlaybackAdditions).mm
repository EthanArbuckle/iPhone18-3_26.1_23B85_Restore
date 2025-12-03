@interface MPMusicPlayerPlayParametersQueueDescriptor(MPCModelPlaybackAdditions)
- (MPCModelPlaybackContext)_classicalMusicAppPlaybackContextForPlayParametersQueue:()MPCModelPlaybackAdditions;
- (MPCModelPlaybackContext)_playbackContextForStorePlayParameters:()MPCModelPlaybackAdditions libraryItems:radioPlaybackContext:containsStartItem:;
- (id)_libraryItemsForPlayParameters:()MPCModelPlaybackAdditions;
- (id)playbackContexts;
- (uint64_t)matchesStartItem:()MPCModelPlaybackAdditions;
- (void)_configureiTunesLibraryRequest:()MPCModelPlaybackAdditions forLibraryItems:;
- (void)_updatePlaybackContextsForPlaybackParametersQueue:()MPCModelPlaybackAdditions libraryItems:radioPlaybackContext:storePlayParameters:contexts:containsStartItem:;
@end

@implementation MPMusicPlayerPlayParametersQueueDescriptor(MPCModelPlaybackAdditions)

- (uint64_t)matchesStartItem:()MPCModelPlaybackAdditions
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  startItemPlayParameters = [self startItemPlayParameters];

  if (startItemPlayParameters && ([self startItemPlayParameters], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "itemKind"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEqualToString:", *MEMORY[0x1E6970408]), v7, v6, (v8 & 1) == 0))
  {
    startItemPlayParameters2 = [self startItemPlayParameters];
    persistentID = [startItemPlayParameters2 persistentID];

    startItemPlayParameters3 = [self startItemPlayParameters];
    catalogID = [startItemPlayParameters3 catalogID];

    startItemPlayParameters4 = [self startItemPlayParameters];
    libraryID = [startItemPlayParameters4 libraryID];

    if ([v4 persistentID])
    {
      quot = [v4 persistentID];
      if (quot)
      {
        v17 = quot;
        v18 = &v26 + 1;
        do
        {
          v19 = lldiv(quot, 10);
          quot = v19.quot;
          if (v19.rem >= 0)
          {
            LOBYTE(v20) = v19.rem;
          }

          else
          {
            v20 = -v19.rem;
          }

          *(v18 - 2) = v20 + 48;
          v21 = (v18 - 2);
          --v18;
        }

        while (v19.quot);
        if (v17 < 0)
        {
          *(v18 - 2) = 45;
          v21 = (v18 - 2);
        }

        v22 = CFStringCreateWithBytes(0, v21, &v26 - v21, 0x8000100u, 0);
      }

      else
      {
        v22 = @"0";
      }
    }

    else
    {
      v22 = &stru_1F454A698;
    }

    cloudUniversalLibraryID = [v4 cloudUniversalLibraryID];
    if (libraryID == cloudUniversalLibraryID || ([libraryID isEqual:cloudUniversalLibraryID] & 1) != 0)
    {
      v9 = 1;
    }

    else
    {
      storeItemID = [v4 storeItemID];
      if (catalogID == storeItemID)
      {
        v9 = 1;
      }

      else
      {
        v9 = 1;
        if (([catalogID isEqual:storeItemID] & 1) == 0 && persistentID != v22)
        {
          v9 = [(__CFString *)persistentID isEqual:v22];
        }
      }
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (MPCModelPlaybackContext)_classicalMusicAppPlaybackContextForPlayParametersQueue:()MPCModelPlaybackAdditions
{
  v118[0] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(MPCModelPlaybackContext *)v4 count]< 2)
  {
    v5 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback");
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *buf = 138543362;
    v115 = v4;
    v6 = "MusicKit: Creating store playback context for classical music app: %{public}@";
  }

  else
  {
    v5 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback_Oversize");
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *buf = 138543362;
    v115 = v4;
    v6 = "MusicKit: Creating store playback contexts for classical music app: %{public}@";
  }

  _os_log_impl(&dword_1C5C61000, v5, OS_LOG_TYPE_DEFAULT, v6, buf, 0xCu);
LABEL_7:

  v7 = objc_alloc_init(MPCModelStorePlaybackItemsRequest);
  v8 = objc_alloc(MEMORY[0x1E6970570]);
  deviceMediaLibrary = [MEMORY[0x1E69705E8] deviceMediaLibrary];
  v10 = [v8 initWithLibrary:deviceMediaLibrary];

  v11 = objc_alloc(MEMORY[0x1E69708B0]);
  v112[0] = *MEMORY[0x1E6970158];
  emptyPropertySet = [MEMORY[0x1E69708B0] emptyPropertySet];
  v113[0] = emptyPropertySet;
  v112[1] = *MEMORY[0x1E69700D8];
  emptyPropertySet2 = [MEMORY[0x1E69708B0] emptyPropertySet];
  v113[1] = emptyPropertySet2;
  v112[2] = *MEMORY[0x1E6970118];
  emptyPropertySet3 = [MEMORY[0x1E69708B0] emptyPropertySet];
  v113[2] = emptyPropertySet3;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v113 forKeys:v112 count:3];
  v104 = [v11 initWithProperties:MEMORY[0x1E695E0F0] relationships:v15];

  playParametersQueue = [self playParametersQueue];
  v103 = v4;
  if ([playParametersQueue count] != 1)
  {

LABEL_12:
    containerPlayParameters = [self containerPlayParameters];

    if (!containerPlayParameters)
    {
      firstObject = 0;
      goto LABEL_33;
    }

    v27 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback");
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      containerPlayParameters2 = [self containerPlayParameters];
      containerPlayParameters3 = [self containerPlayParameters];
      identifiers = [containerPlayParameters3 identifiers];
      *buf = 138543618;
      v115 = containerPlayParameters2;
      v116 = 2114;
      v117 = identifiers;
      _os_log_impl(&dword_1C5C61000, v27, OS_LOG_TYPE_DEFAULT, "MusicKit: Attempting to create container item for container play params: %{public}@ with identifiers: %{public}@", buf, 0x16u);
    }

    containerPlayParameters4 = [self containerPlayParameters];
    identifiers2 = [containerPlayParameters4 identifiers];
    v33 = [v10 identifiersMatchingIdentifierSet:identifiers2 propertySet:v104 options:0 error:0];

    if (!v33)
    {
      v34 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback");
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        containerPlayParameters5 = [self containerPlayParameters];
        identifiers3 = [containerPlayParameters5 identifiers];
        *buf = 138543362;
        v115 = identifiers3;
        _os_log_impl(&dword_1C5C61000, v34, OS_LOG_TYPE_DEFAULT, "MusicKit: Could not find identifiers in library object database for identifiers: %{public}@", buf, 0xCu);
      }

      containerPlayParameters6 = [self containerPlayParameters];
      identifiers4 = [containerPlayParameters6 identifiers];

      activeAccount = [MEMORY[0x1E69E4680] activeAccount];
      v40 = *MEMORY[0x1E69E4388];
      if ([MEMORY[0x1E69B1418] hasBoolEntitlement:@"com.apple.accounts.appleaccount.fullaccess"])
      {
        v41 = v4;
        v42 = v10;
        defaultIdentityStore = [MEMORY[0x1E69E4688] defaultIdentityStore];
        v44 = [defaultIdentityStore DSIDForUserIdentity:activeAccount outError:0];
        stringValue = [v44 stringValue];

        if ([stringValue length])
        {
          v46 = stringValue;

          v40 = v46;
        }

        v10 = v42;

        v4 = v41;
      }

      v108[0] = MEMORY[0x1E69E9820];
      v108[1] = 3221225472;
      v108[2] = __129__MPMusicPlayerPlayParametersQueueDescriptor_MPCModelPlaybackAdditions___classicalMusicAppPlaybackContextForPlayParametersQueue___block_invoke_131;
      v108[3] = &unk_1E82389D8;
      v109 = v40;
      v47 = v40;
      v33 = [identifiers4 copyWithSource:@"MusicPlayerPlayParams+PersonAddition" block:v108];
    }

    v48 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback");
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v115 = v33;
      _os_log_impl(&dword_1C5C61000, v48, OS_LOG_TYPE_DEFAULT, "MusicKit: Creating container with container identifiers: %{public}@", buf, 0xCu);
    }

    containerPlayParameters7 = [self containerPlayParameters];
    itemKind = [containerPlayParameters7 itemKind];
    v51 = [itemKind isEqualToString:*MEMORY[0x1E69703F8]];

    if (v51)
    {
      v52 = 0x1E6970630;
    }

    else
    {
      containerPlayParameters8 = [self containerPlayParameters];
      itemKind2 = [containerPlayParameters8 itemKind];
      v55 = [itemKind2 isEqualToString:*MEMORY[0x1E6970400]];

      if (!v55)
      {
        firstObject = 0;
        goto LABEL_32;
      }

      v52 = 0x1E6970718;
    }

    firstObject = [objc_alloc(*v52) initWithIdentifiers:v33];
LABEL_32:

LABEL_33:
    itemKind3 = [(MPCModelPlaybackContext *)v4 msv_compactMap:&__block_literal_global_137];
    v105[0] = MEMORY[0x1E69E9820];
    v105[1] = 3221225472;
    v105[2] = __129__MPMusicPlayerPlayParametersQueueDescriptor_MPCModelPlaybackAdditions___classicalMusicAppPlaybackContextForPlayParametersQueue___block_invoke_2_138;
    v105[3] = &unk_1E8237A20;
    v21 = v10;
    v106 = v10;
    v107 = v104;
    v56 = [itemKind3 msv_compactMap:v105];
    v57 = [v56 msv_compactMap:&__block_literal_global_141];
    if (firstObject)
    {
      v58 = objc_alloc_init(MEMORY[0x1E6970818]);
      [(MPCModelPlaybackContext *)v58 appendSection:firstObject];
      [(MPCModelPlaybackContext *)v58 appendItems:v57];
      [(MPCModelStorePlaybackItemsRequest *)v7 setSectionedModelObjects:v58];
      v59 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback");
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v115 = firstObject;
        v116 = 2114;
        v117 = v57;
        v60 = "MusicKit: Created SPIR with container: %{public}@ and items %{public}@";
        v61 = v59;
        v62 = 22;
LABEL_38:
        _os_log_impl(&dword_1C5C61000, v61, OS_LOG_TYPE_DEFAULT, v60, buf, v62);
      }
    }

    else
    {
      v58 = [v56 msv_compactMap:&__block_literal_global_146_24479];
      [(MPCModelStorePlaybackItemsRequest *)v7 setStoreIDs:v58];
      v59 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback");
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v115 = v58;
        v60 = "MusicKit: Created SPIR with storeIDs %{public}@";
        v61 = v59;
        v62 = 12;
        goto LABEL_38;
      }
    }

    v22 = 0;
    identifiers7 = v106;
    goto LABEL_40;
  }

  containerPlayParameters9 = [self containerPlayParameters];

  if (containerPlayParameters9)
  {
    goto LABEL_12;
  }

  playParametersQueue2 = [self playParametersQueue];
  firstObject = [playParametersQueue2 firstObject];

  itemKind3 = [(MPCModelPlaybackContext *)firstObject itemKind];
  v21 = v10;
  if (![itemKind3 isEqualToString:*MEMORY[0x1E6970408]])
  {
    if ([(MPCModelPlaybackContext *)firstObject isLibraryContent])
    {
      [(MPCModelPlaybackContext *)firstObject catalogID];
    }

    else
    {
      [(MPCModelPlaybackContext *)firstObject itemID];
    }
    v82 = ;
    identifiers7 = v82;
    if (v82)
    {
      v111 = v82;
      identifiers6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v111 count:1];
      [(MPCModelStorePlaybackItemsRequest *)v7 setStoreIDs:identifiers6];
LABEL_87:
      v22 = 0;
      goto LABEL_88;
    }

    v83 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback_Oversize");
    if (os_log_type_enabled(v83, OS_LOG_TYPE_FAULT))
    {
      *buf = 138543618;
      v115 = v103;
      v116 = 2114;
      v117 = firstObject;
      _os_log_impl(&dword_1C5C61000, v83, OS_LOG_TYPE_FAULT, "MusicKit: Unable to set store ids for classical music app for queue: %{public}@ with first item play parameters: %{public}@", buf, 0x16u);
    }

    identifiers5 = [(MPCModelPlaybackContext *)firstObject identifiers];
    identifiers6 = [v21 identifiersMatchingIdentifierSet:identifiers5 propertySet:v104 options:0 error:0];

    if (!identifiers6)
    {
      identifiers6 = [(MPCModelPlaybackContext *)firstObject identifiers];
    }

    universalStore = [identifiers6 universalStore];
    subscriptionAdamID = [universalStore subscriptionAdamID];

    universalStore2 = [identifiers6 universalStore];
    universalStore4 = universalStore2;
    if (subscriptionAdamID)
    {
      quot = [universalStore2 subscriptionAdamID];
      if (quot)
      {
        v90 = quot;
        v91 = v118 + 1;
        do
        {
          v92 = lldiv(quot, 10);
          quot = v92.quot;
          if (v92.rem >= 0)
          {
            LOBYTE(v93) = v92.rem;
          }

          else
          {
            v93 = -v92.rem;
          }

          *(v91 - 2) = v93 + 48;
          v94 = (v91 - 2);
          --v91;
        }

        while (v92.quot);
LABEL_80:
        if (v90 < 0)
        {
          *(v91 - 2) = 45;
          v94 = (v91 - 2);
        }

        globalPlaylistID2 = CFStringCreateWithBytes(0, v94, v118 - v94, 0x8000100u, 0);
LABEL_83:
        identifiers7 = globalPlaylistID2;

        if (!identifiers7)
        {
          goto LABEL_87;
        }

        goto LABEL_86;
      }
    }

    else
    {
      adamID = [universalStore2 adamID];

      universalStore3 = [identifiers6 universalStore];
      universalStore4 = universalStore3;
      if (!adamID)
      {
        globalPlaylistID = [universalStore3 globalPlaylistID];
        identifiers7 = [globalPlaylistID length];

        if (!identifiers7)
        {
          goto LABEL_87;
        }

        universalStore4 = [identifiers6 universalStore];
        globalPlaylistID2 = [universalStore4 globalPlaylistID];
        goto LABEL_83;
      }

      adamID2 = [universalStore3 adamID];
      if (adamID2)
      {
        v90 = adamID2;
        v91 = v118 + 1;
        do
        {
          v98 = lldiv(adamID2, 10);
          adamID2 = v98.quot;
          if (v98.rem >= 0)
          {
            LOBYTE(v99) = v98.rem;
          }

          else
          {
            v99 = -v98.rem;
          }

          *(v91 - 2) = v99 + 48;
          v94 = (v91 - 2);
          --v91;
        }

        while (v98.quot);
        goto LABEL_80;
      }
    }

    identifiers7 = @"0";
LABEL_86:
    v110 = identifiers7;
    v101 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v110 count:1];
    [(MPCModelStorePlaybackItemsRequest *)v7 setStoreIDs:v101];

    goto LABEL_87;
  }

  v22 = objc_alloc_init(MPCModelRadioPlaybackContext);
  v23 = objc_alloc(MEMORY[0x1E6970750]);
  identifiers7 = [(MPCModelPlaybackContext *)firstObject identifiers];
  identifiers6 = [v23 initWithIdentifiers:identifiers7 block:&__block_literal_global_121_24471];
  [(MPCModelRadioPlaybackContext *)v22 setRadioStation:identifiers6];
LABEL_88:

LABEL_40:
  sectionedModelObjects = [(MPCModelStorePlaybackItemsRequest *)v7 sectionedModelObjects];
  if (sectionedModelObjects)
  {
  }

  else
  {
    storeIDs = [(MPCModelStorePlaybackItemsRequest *)v7 storeIDs];

    if (!storeIDs)
    {
      v65 = v22;
      goto LABEL_46;
    }
  }

  v65 = objc_alloc_init(MPCModelPlaybackContext);
  [(MPCModelPlaybackContext *)v65 setRequest:v7];
  startItemPlayParameters = [self startItemPlayParameters];

  if (startItemPlayParameters)
  {
    startItemPlayParameters2 = [self startItemPlayParameters];
    identifiers8 = [startItemPlayParameters2 identifiers];
    [(MPCModelPlaybackContext *)v65 setStartItemIdentifiers:identifiers8];
  }

  startTimes = [self startTimes];
  [(MPCModelPlaybackContext *)v65 setStartTimeModifications:startTimes];

  endTimes = [self endTimes];
  [(MPCModelPlaybackContext *)v65 setEndTimeModifications:endTimes];

  -[MPCModelPlaybackContext setShuffleType:](v65, "setShuffleType:", [self shuffleType]);
  -[MPCModelPlaybackContext setRepeatType:](v65, "setRepeatType:", [self repeatType]);
  [(MPCModelPlaybackContext *)v65 setAllowsJumpToIt:1];

LABEL_46:
  if ([(MPCModelPlaybackContext *)v65 conformsToProtocol:&unk_1F45B4200])
  {
    v71 = v65;
    playbackRequestEnvironment = [(MPCModelPlaybackContext *)v71 playbackRequestEnvironment];
    v73 = [playbackRequestEnvironment mutableCopy];

    v74 = [objc_alloc(MEMORY[0x1E69E43B0]) initWithSystemApplicationType:0];
    clientIdentifier = [v74 clientIdentifier];
    [v73 setClientIdentifier:clientIdentifier];

    clientVersion = [v74 clientVersion];
    [v73 setClientVersion:clientVersion];

    [self _addRequestingBundleIdentifierToPlaybackRequestEnvironment:v73];
    [(MPCModelPlaybackContext *)v71 setPlaybackRequestEnvironment:v73];
  }

  if ([self isPrivate])
  {
    [(MPCModelPlaybackContext *)v65 setPrivateListeningOverride:MEMORY[0x1E695E118]];
  }

  playActivityFeatureName = [self playActivityFeatureName];
  [(MPCModelPlaybackContext *)v65 setPlayActivityFeatureName:playActivityFeatureName];

  playActivityRecommendationData = [self playActivityRecommendationData];
  [(MPCModelPlaybackContext *)v65 setPlayActivityRecommendationData:playActivityRecommendationData];

  playActivityQueueGroupingID = [self playActivityQueueGroupingID];
  [(MPCModelPlaybackContext *)v65 setPlayActivityQueueGroupingID:playActivityQueueGroupingID];

  [(MPCModelPlaybackContext *)v65 setQueueDescriptor:self];
  v80 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback_Oversize");
  if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v115 = v65;
    _os_log_impl(&dword_1C5C61000, v80, OS_LOG_TYPE_DEFAULT, "MusicKit: Created playback context: %{public}@", buf, 0xCu);
  }

  return v65;
}

- (id)_libraryItemsForPlayParameters:()MPCModelPlaybackAdditions
{
  v111 = *MEMORY[0x1E69E9840];
  v3 = a3;
  identifiers = [v3 identifiers];
  itemKind = [v3 itemKind];
  v6 = *MEMORY[0x1E69703F8];
  if (([itemKind isEqualToString:*MEMORY[0x1E69703F8]] & 1) != 0 || objc_msgSend(itemKind, "isEqualToString:", *MEMORY[0x1E6970400])) && !objc_msgSend(v3, "isLibraryContent") || (objc_msgSend(itemKind, "isEqualToString:", *MEMORY[0x1E6970408]))
  {
    array = MEMORY[0x1E695E0F0];
    goto LABEL_38;
  }

  array = [MEMORY[0x1E695DF70] array];
  v105 = itemKind;
  if ([itemKind isEqual:*MEMORY[0x1E6970400]])
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    universalStore = [identifiers universalStore];
    globalPlaylistID = [universalStore globalPlaylistID];
    v11 = [globalPlaylistID length];

    if (v11)
    {
      v12 = MEMORY[0x1E6970610];
      universalStore2 = [identifiers universalStore];
      globalPlaylistID2 = [universalStore2 globalPlaylistID];
      v15 = [v12 predicateWithValue:globalPlaylistID2 forProperty:*MEMORY[0x1E696FBB8]];
      [v8 addObject:v15];
    }

    universalStore3 = [identifiers universalStore];
    universalCloudLibraryID = [universalStore3 universalCloudLibraryID];
    v18 = [universalCloudLibraryID length];

    if (v18)
    {
      v19 = MEMORY[0x1E6970610];
      universalStore4 = [identifiers universalStore];
      universalCloudLibraryID2 = [universalStore4 universalCloudLibraryID];
      v22 = [v19 predicateWithValue:universalCloudLibraryID2 forProperty:*MEMORY[0x1E696FBC0]];
      [v8 addObject:v22];
    }

    library = [identifiers library];
    persistentID = [library persistentID];

    if (persistentID)
    {
      v25 = MEMORY[0x1E6970610];
      v26 = MEMORY[0x1E696AD98];
      library2 = [identifiers library];
      v28 = [v26 numberWithLongLong:{objc_msgSend(library2, "persistentID")}];
      v29 = [v25 predicateWithValue:v28 forProperty:*MEMORY[0x1E696FBD0]];
      [v8 addObject:v29];
    }

    v30 = [MEMORY[0x1E69705A0] predicateMatchingPredicates:{v8, identifiers}];
    v31 = objc_alloc(MEMORY[0x1E6970618]);
    v32 = [MEMORY[0x1E695DFD8] setWithObject:v30];
    deviceMediaLibrary = [MEMORY[0x1E69705E8] deviceMediaLibrary];
    v34 = [v31 initWithFilterPredicates:v32 library:deviceMediaLibrary];

    [v34 setShouldIncludeNonLibraryEntities:1];
    v35 = v34;
    v36 = 6;
LABEL_22:
    [v35 setGroupingType:v36];
LABEL_23:

    collections = [v34 collections];
    v106 = 0u;
    v107 = 0u;
    v108 = 0u;
    v109 = 0u;
    v68 = [collections countByEnumeratingWithState:&v106 objects:v110 count:16];
    if (v68)
    {
      v69 = v68;
      v70 = *v107;
      do
      {
        for (i = 0; i != v69; ++i)
        {
          if (*v107 != v70)
          {
            objc_enumerationMutation(collections);
          }

          v72 = *(*(&v106 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [array addObject:v72];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              items = [v72 items];
              if ([items count])
              {
                [array addObjectsFromArray:items];
              }
            }
          }
        }

        v69 = [collections countByEnumeratingWithState:&v106 objects:v110 count:16];
      }

      while (v69);
    }

    identifiers = v104;
    goto LABEL_37;
  }

  v37 = [itemKind isEqual:v6];
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  universalStore5 = [identifiers universalStore];
  subscriptionAdamID = [universalStore5 subscriptionAdamID];

  if (v37)
  {
    if (subscriptionAdamID)
    {
      v40 = MEMORY[0x1E6970610];
      v41 = MEMORY[0x1E696AD98];
      universalStore6 = [identifiers universalStore];
      v43 = [v41 numberWithLongLong:{objc_msgSend(universalStore6, "subscriptionAdamID")}];
      v44 = [v40 predicateWithValue:v43 forProperty:*MEMORY[0x1E696FB60]];
      [v8 addObject:v44];

      v45 = MEMORY[0x1E6970610];
      v46 = MEMORY[0x1E696AD98];
      universalStore7 = [identifiers universalStore];
      v48 = [v46 numberWithLongLong:{objc_msgSend(universalStore7, "subscriptionAdamID")}];
      v49 = [v45 predicateWithValue:v48 forProperty:*MEMORY[0x1E696FB80]];
      [v8 addObject:v49];
    }

    universalStore8 = [identifiers universalStore];
    universalCloudLibraryID3 = [universalStore8 universalCloudLibraryID];
    v52 = [universalCloudLibraryID3 length];

    if (v52)
    {
      v53 = MEMORY[0x1E6970610];
      universalStore9 = [identifiers universalStore];
      universalCloudLibraryID4 = [universalStore9 universalCloudLibraryID];
      v56 = [v53 predicateWithValue:universalCloudLibraryID4 forProperty:*MEMORY[0x1E696FB40]];
      [v8 addObject:v56];
    }

    library3 = [identifiers library];
    persistentID2 = [library3 persistentID];

    if (persistentID2)
    {
      v59 = MEMORY[0x1E6970610];
      v60 = MEMORY[0x1E696AD98];
      library4 = [identifiers library];
      v62 = [v60 numberWithLongLong:{objc_msgSend(library4, "persistentID")}];
      v63 = [v59 predicateWithValue:v62 forProperty:*MEMORY[0x1E696F910]];
      [v8 addObject:v63];
    }

    v30 = [MEMORY[0x1E69705A0] predicateMatchingPredicates:{v8, identifiers}];
    v64 = objc_alloc(MEMORY[0x1E6970618]);
    v65 = [MEMORY[0x1E695DFD8] setWithObject:v30];
    deviceMediaLibrary2 = [MEMORY[0x1E69705E8] deviceMediaLibrary];
    v34 = [v64 initWithFilterPredicates:v65 library:deviceMediaLibrary2];

    v35 = v34;
    v36 = 1;
    goto LABEL_22;
  }

  if (subscriptionAdamID)
  {
    v75 = MEMORY[0x1E6970610];
    v76 = MEMORY[0x1E696AD98];
    universalStore10 = [identifiers universalStore];
    v78 = [v76 numberWithLongLong:{objc_msgSend(universalStore10, "subscriptionAdamID")}];
    v79 = [v75 predicateWithValue:v78 forProperty:*MEMORY[0x1E696FB60]];
    [v8 addObject:v79];

    v80 = MEMORY[0x1E6970610];
    v81 = MEMORY[0x1E696AD98];
    universalStore11 = [identifiers universalStore];
    v83 = [v81 numberWithLongLong:{objc_msgSend(universalStore11, "subscriptionAdamID")}];
    v84 = [v80 predicateWithValue:v83 forProperty:*MEMORY[0x1E696FB80]];
    [v8 addObject:v84];
  }

  universalStore12 = [identifiers universalStore];
  universalCloudLibraryID5 = [universalStore12 universalCloudLibraryID];
  v87 = [universalCloudLibraryID5 length];

  if (v87)
  {
    v88 = MEMORY[0x1E6970610];
    universalStore13 = [identifiers universalStore];
    universalCloudLibraryID6 = [universalStore13 universalCloudLibraryID];
    v91 = [v88 predicateWithValue:universalCloudLibraryID6 forProperty:*MEMORY[0x1E696FB40]];
    [v8 addObject:v91];
  }

  library5 = [identifiers library];
  persistentID3 = [library5 persistentID];

  if (persistentID3)
  {
    v94 = MEMORY[0x1E6970610];
    v95 = MEMORY[0x1E696AD98];
    library6 = [identifiers library];
    v97 = [v95 numberWithLongLong:{objc_msgSend(library6, "persistentID")}];
    v98 = [v94 predicateWithValue:v97 forProperty:*MEMORY[0x1E696FA98]];
    [v8 addObject:v98];
  }

  v30 = [MEMORY[0x1E69705A0] predicateMatchingPredicates:v8];
  v99 = objc_alloc(MEMORY[0x1E6970618]);
  v100 = [MEMORY[0x1E695DFD8] setWithObject:v30];
  deviceMediaLibrary3 = [MEMORY[0x1E69705E8] deviceMediaLibrary];
  v34 = [v99 initWithFilterPredicates:v100 library:deviceMediaLibrary3];

  items2 = [v34 items];
  firstObject = [items2 firstObject];

  if (!firstObject)
  {
    v104 = identifiers;
    goto LABEL_23;
  }

  [array addObject:firstObject];

LABEL_37:
  itemKind = v105;
LABEL_38:

  return array;
}

- (void)_configureiTunesLibraryRequest:()MPCModelPlaybackAdditions forLibraryItems:
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E6970770] kindWithVariants:7];
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v31;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v31 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v30 + 1) + 8 * i);
        type = [v14 type];
        if (type == 1)
        {
          v28 = v14;
          [v5 setItemKind:v7];
          identifiers = [v28 identifiers];

          [array addObject:identifiers];
        }

        else
        {
          if (type == 4)
          {
            v22 = MEMORY[0x1E6970730];
            v23 = v14;
            identityKind = [v22 identityKind];
            [v5 setSectionKind:identityKind];

            identifiers2 = [v23 identifiers];
            [array2 addObject:identifiers2];

            v26 = MEMORY[0x1E6970720];
            v34 = v7;
            v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];

            identifiers = [v26 kindWithKinds:v27];

            v20 = v5;
            v21 = identifiers;
          }

          else
          {
            if (type != 2)
            {
              continue;
            }

            v16 = MEMORY[0x1E6970638];
            identifiers = v14;
            identityKind2 = [v16 identityKind];
            [v5 setSectionKind:identityKind2];

            v17Identifiers = [identifiers identifiers];
            [array2 addObject:v17Identifiers];

            v20 = v5;
            v21 = v7;
          }

          [v20 setItemKind:v21];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v11);
  }

  [v5 setAllowedItemIdentifiers:array];
  [v5 setAllowedSectionIdentifiers:array2];
}

- (MPCModelPlaybackContext)_playbackContextForStorePlayParameters:()MPCModelPlaybackAdditions libraryItems:radioPlaybackContext:containsStartItem:
{
  v103 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v12)
  {
    v13 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v102 = v12;
      _os_log_impl(&dword_1C5C61000, v13, OS_LOG_TYPE_DEFAULT, "Creating radio playback context: %{public}@", buf, 0xCu);
    }

    v14 = v12;
  }

  else
  {
    if ([v11 count])
    {
      playParametersQueue = [self playParametersQueue];
      v16 = [playParametersQueue count];

      if (v16 == 1)
      {
        playParametersQueue2 = [self playParametersQueue];
        firstObject = [playParametersQueue2 firstObject];

        itemKind = [firstObject itemKind];
        if (([itemKind isEqualToString:*MEMORY[0x1E69703F8]] & 1) != 0 || objc_msgSend(itemKind, "isEqualToString:", *MEMORY[0x1E6970400]))
        {
          [self setContainerPlayParameters:firstObject];
        }
      }

      v20 = objc_alloc_init(MEMORY[0x1E69706C8]);
      containerPlayParameters = [self containerPlayParameters];

      if (containerPlayParameters)
      {
        v93 = a6;
        v91 = v11;
        v92 = v10;
        containerPlayParameters2 = [self containerPlayParameters];
        identifiers = [containerPlayParameters2 identifiers];
        modelKind = [identifiers modelKind];
        [v20 setSectionKind:modelKind];

        containerPlayParameters3 = [self containerPlayParameters];
        identifiers2 = [containerPlayParameters3 identifiers];
        v100 = identifiers2;
        v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v100 count:1];
        [v20 setAllowedSectionIdentifiers:v27];

        v28 = [MEMORY[0x1E6970770] kindWithVariants:7];
        sectionKind = [v20 sectionKind];
        identityKind = [sectionKind identityKind];
        identityKind2 = [MEMORY[0x1E6970730] identityKind];
        v32 = [identityKind isEqual:identityKind2];

        v33 = v28;
        if (v32)
        {
          v34 = MEMORY[0x1E6970720];
          v99 = v28;
          v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v99 count:1];
          v33 = [v34 kindWithKinds:v35];
        }

        sectionKind2 = [v20 sectionKind];
        identityKind3 = [sectionKind2 identityKind];
        identityKind4 = [MEMORY[0x1E6970638] identityKind];
        v39 = [identityKind3 isEqual:identityKind4];

        if (v39)
        {
          v40 = MEMORY[0x1E6970780];
          v97 = *MEMORY[0x1E696FF28];
          v90 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v97 count:1];
          v89 = [v40 sortDescriptorWithKeyPath:v90 ascending:1];
          v98[0] = v89;
          v41 = MEMORY[0x1E6970780];
          v96 = *MEMORY[0x1E696FFB8];
          v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v96 count:1];
          v43 = [v41 sortDescriptorWithKeyPath:v42 ascending:1];
          v98[1] = v43;
          v44 = MEMORY[0x1E6970780];
          v95 = *MEMORY[0x1E696FFB0];
          v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v95 count:1];
          v46 = [v44 sortDescriptorWithKeyPath:v45 ascending:1];
          v98[2] = v46;
          v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:v98 count:3];
          [v20 setItemSortDescriptors:v47];
        }

        [v20 setItemKind:v33];
        containerPlayParameters4 = [self containerPlayParameters];
        isLibraryContent = [containerPlayParameters4 isLibraryContent];

        v11 = v91;
        if ((isLibraryContent & 1) == 0)
        {
          [v20 setFilteringOptions:4];
        }

        v10 = v92;
        a6 = v93;
      }

      else
      {
        v60 = [objc_alloc(MEMORY[0x1E6970618]) initWithEntities:v11 entityType:0];
        [v20 setLegacyMediaQuery:v60];
      }

      v61 = MEMORY[0x1E696AEC0];
      playActivityFeatureName = [self playActivityFeatureName];
      v63 = [v61 stringWithFormat:@"PlayParametersQueueDescriptor-%@", playActivityFeatureName];
      [v20 setLabel:v63];

      v64 = v20;
      v65 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback");
      if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v102 = v64;
        _os_log_impl(&dword_1C5C61000, v65, OS_LOG_TYPE_DEFAULT, "MusicKit: Creating library playback context with request: %{public}@", buf, 0xCu);
      }

      v50 = v64;
    }

    else
    {
      v50 = objc_alloc_init(MPCModelStorePlaybackItemsRequest);
      containerPlayParameters5 = [self containerPlayParameters];

      if (containerPlayParameters5)
      {
        v52 = objc_alloc_init(MEMORY[0x1E6970818]);
        containerPlayParameters6 = [self containerPlayParameters];
        itemKind2 = [containerPlayParameters6 itemKind];
        v55 = [itemKind2 isEqualToString:*MEMORY[0x1E69703F8]];

        v94 = a6;
        if (v55)
        {
          v56 = objc_alloc(MEMORY[0x1E6970630]);
          containerPlayParameters7 = [self containerPlayParameters];
          identifiers3 = [containerPlayParameters7 identifiers];
          v59 = &__block_literal_global_47_24495;
        }

        else
        {
          containerPlayParameters8 = [self containerPlayParameters];
          itemKind3 = [containerPlayParameters8 itemKind];
          v69 = [itemKind3 isEqualToString:*MEMORY[0x1E6970400]];

          if (v69)
          {
            v56 = objc_alloc(MEMORY[0x1E6970718]);
            containerPlayParameters7 = [self containerPlayParameters];
            identifiers3 = [containerPlayParameters7 identifiers];
            v59 = &__block_literal_global_51;
          }

          else
          {
            v70 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback");
            if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
            {
              containerPlayParameters9 = [self containerPlayParameters];
              *buf = 138543362;
              v102 = containerPlayParameters9;
              _os_log_impl(&dword_1C5C61000, v70, OS_LOG_TYPE_DEFAULT, "MusicKit: Unable to determine valid container play parameters itemKind for play parameters: %{public}@. Defaulting to album.", buf, 0xCu);
            }

            v56 = objc_alloc(MEMORY[0x1E6970630]);
            containerPlayParameters7 = [self containerPlayParameters];
            identifiers3 = [containerPlayParameters7 identifiers];
            v59 = &__block_literal_global_54;
          }
        }

        v72 = [v56 initWithIdentifiers:identifiers3 block:v59];

        [v52 appendSection:v72];
        v73 = [v10 msv_compactMap:&__block_literal_global_58];
        [v52 appendItems:v73];
        [(MPCModelStorePlaybackItemsRequest *)v50 setSectionedModelObjects:v52];

        a6 = v94;
      }

      else
      {
        v66 = [v10 msv_compactMap:&__block_literal_global_63];
        [(MPCModelStorePlaybackItemsRequest *)v50 setStoreIDs:v66];
      }

      [(MPCModelStorePlaybackItemsRequest *)v50 setClientIdentifier:@"com.apple.Music"];
      v64 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback");
      if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v102 = v50;
        _os_log_impl(&dword_1C5C61000, v64, OS_LOG_TYPE_DEFAULT, "MusicKit: Creating store playback context with request: %{public}@", buf, 0xCu);
      }
    }

    v14 = objc_alloc_init(MPCModelPlaybackContext);
    [(MPCModelPlaybackContext *)v14 setRequest:v50];
    if (a6)
    {
      startItemPlayParameters = [self startItemPlayParameters];
      identifiers4 = [startItemPlayParameters identifiers];
      [(MPCModelPlaybackContext *)v14 setStartItemIdentifiers:identifiers4];
    }

    startTimes = [self startTimes];
    [(MPCModelPlaybackContext *)v14 setStartTimeModifications:startTimes];

    endTimes = [self endTimes];
    [(MPCModelPlaybackContext *)v14 setEndTimeModifications:endTimes];

    -[MPCModelPlaybackContext setShuffleType:](v14, "setShuffleType:", [self shuffleType]);
    -[MPCModelPlaybackContext setRepeatType:](v14, "setRepeatType:", [self repeatType]);
    [(MPCModelPlaybackContext *)v14 setAllowsJumpToIt:1];
  }

  playActivityFeatureName2 = [self playActivityFeatureName];
  [(MPCModelPlaybackContext *)v14 setPlayActivityFeatureName:playActivityFeatureName2];

  playActivityRecommendationData = [self playActivityRecommendationData];
  [(MPCModelPlaybackContext *)v14 setPlayActivityRecommendationData:playActivityRecommendationData];

  playActivityQueueGroupingID = [self playActivityQueueGroupingID];
  [(MPCModelPlaybackContext *)v14 setPlayActivityQueueGroupingID:playActivityQueueGroupingID];

  if ([self isPrivate])
  {
    [(MPCModelPlaybackContext *)v14 setPrivateListeningOverride:MEMORY[0x1E695E118]];
  }

  if ([(MPCModelPlaybackContext *)v14 conformsToProtocol:&unk_1F45B4200])
  {
    v81 = v14;
    playbackRequestEnvironment = [(MPCModelPlaybackContext *)v81 playbackRequestEnvironment];
    v83 = [playbackRequestEnvironment mutableCopy];

    v84 = [objc_alloc(MEMORY[0x1E69E43B0]) initWithSystemApplicationType:0];
    clientIdentifier = [v84 clientIdentifier];
    [v83 setClientIdentifier:clientIdentifier];

    clientVersion = [v84 clientVersion];
    [v83 setClientVersion:clientVersion];

    [self _addRequestingBundleIdentifierToPlaybackRequestEnvironment:v83];
    [(MPCModelPlaybackContext *)v81 setPlaybackRequestEnvironment:v83];
  }

  [(MPCModelPlaybackContext *)v14 setQueueDescriptor:self];
  v87 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback_Oversize");
  if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v102 = v14;
    _os_log_impl(&dword_1C5C61000, v87, OS_LOG_TYPE_DEFAULT, "MusicKit: Created playback context: %{public}@", buf, 0xCu);
  }

  return v14;
}

- (void)_updatePlaybackContextsForPlaybackParametersQueue:()MPCModelPlaybackAdditions libraryItems:radioPlaybackContext:storePlayParameters:contexts:containsStartItem:
{
  v80 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __204__MPMusicPlayerPlayParametersQueueDescriptor_MPCModelPlaybackAdditions___updatePlaybackContextsForPlaybackParametersQueue_libraryItems_radioPlaybackContext_storePlayParameters_contexts_containsStartItem___block_invoke;
  aBlock[3] = &unk_1E8237930;
  v19 = v16;
  v70 = v19;
  selfCopy = self;
  v20 = v17;
  v72 = v20;
  v21 = v15;
  v73 = v21;
  v45 = _Block_copy(aBlock);
  v63[0] = MEMORY[0x1E69E9820];
  v63[1] = 3221225472;
  v63[2] = __204__MPMusicPlayerPlayParametersQueueDescriptor_MPCModelPlaybackAdditions___updatePlaybackContextsForPlaybackParametersQueue_libraryItems_radioPlaybackContext_storePlayParameters_contexts_containsStartItem___block_invoke_32;
  v63[3] = &unk_1E8237958;
  v48 = v20;
  v64 = v48;
  v22 = v21;
  v65 = v22;
  v54 = v18;
  v66 = v54;
  selfCopy2 = self;
  v23 = v19;
  v68 = v23;
  v44 = _Block_copy(v63);
  v51 = v22;
  v42 = v14;
  if (v22)
  {
    v61 = 0uLL;
    v62 = 0uLL;
    v59 = 0uLL;
    v60 = 0uLL;
    obj = v14;
    v50 = [obj countByEnumeratingWithState:&v59 objects:v79 count:16];
    if (v50)
    {
      v49 = *v60;
      v43 = *MEMORY[0x1E6970408];
      selfCopy3 = self;
      do
      {
        for (i = 0; i != v50; ++i)
        {
          if (*v60 != v49)
          {
            objc_enumerationMutation(obj);
          }

          v25 = *(*(&v59 + 1) + 8 * i);
          identifiers = [v25 identifiers];
          itemKind = [v25 itemKind];
          v28 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback");
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v76 = itemKind;
            v77 = 2114;
            v78 = identifiers;
            _os_log_impl(&dword_1C5C61000, v28, OS_LOG_TYPE_DEFAULT, "MusicKit: Handling play parameters for type: %{public}@ and identifiers: %{public}@", buf, 0x16u);
          }

          v29 = [self _libraryItemsForPlayParameters:v25];
          if ([v29 count])
          {
            v52 = itemKind;
            v30 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback");
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v76 = identifiers;
              _os_log_impl(&dword_1C5C61000, v30, OS_LOG_TYPE_DEFAULT, "MusicKit: Static entities created for item with identifiers: %{public}@", buf, 0xCu);
            }

            if (v23 || [v48 count])
            {
              v31 = [self _playbackContextForStorePlayParameters:v48 libraryItems:v51 radioPlaybackContext:v23 containsStartItem:{objc_msgSend(*a8, "BOOLValue")}];
              [v54 addObject:v31];

              *a8 = MEMORY[0x1E695E110];
              self = selfCopy3;
              [v48 removeAllObjects];
            }

            [v51 addObjectsFromArray:v29];
            startItemPlayParameters = [self startItemPlayParameters];
            v33 = [startItemPlayParameters isEqual:v25];

            v23 = 0;
            if (v33)
            {
              *a8 = MEMORY[0x1E695E118];
            }

            itemKind = v52;
          }

          else if ([itemKind isEqualToString:v43])
          {
            v45[2](v45, v54, a8, identifiers, v25);
          }

          else
          {
            v44[2](v44, v54, a8, identifiers, v25, v23);
          }
        }

        v50 = [obj countByEnumeratingWithState:&v59 objects:v79 count:16];
      }

      while (v50);
    }
  }

  else
  {
    v57 = 0uLL;
    v58 = 0uLL;
    v55 = 0uLL;
    v56 = 0uLL;
    v53 = v14;
    v34 = [v53 countByEnumeratingWithState:&v55 objects:v74 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v56;
      v37 = *MEMORY[0x1E6970408];
      do
      {
        for (j = 0; j != v35; ++j)
        {
          if (*v56 != v36)
          {
            objc_enumerationMutation(v53);
          }

          v39 = *(*(&v55 + 1) + 8 * j);
          identifiers2 = [v39 identifiers];
          itemKind2 = [v39 itemKind];
          if ([itemKind2 isEqualToString:v37])
          {
            v45[2](v45, v54, a8, identifiers2, v39);
          }

          else
          {
            v44[2](v44, v54, a8, identifiers2, v39, v23);
          }
        }

        v35 = [v53 countByEnumeratingWithState:&v55 objects:v74 count:16];
      }

      while (v35);
    }
  }
}

- (id)playbackContexts
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  array = [MEMORY[0x1E695DF70] array];
  playParametersQueue = [self playParametersQueue];
  array2 = [MEMORY[0x1E695DF70] array];
  if ([playParametersQueue count] < 2)
  {
    v6 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback_Oversize");
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *buf = 138543362;
    v25 = playParametersQueue;
  }

  else
  {
    v6 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback");
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *buf = 138543362;
    v25 = playParametersQueue;
  }

  _os_log_impl(&dword_1C5C61000, v6, OS_LOG_TYPE_DEFAULT, "MusicKit: MPMusicPlayerPlayParametersQueueDescriptor playParametersQueue: %{public}@", buf, 0xCu);
LABEL_7:

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __89__MPMusicPlayerPlayParametersQueueDescriptor_MPCModelPlaybackAdditions__playbackContexts__block_invoke;
  block[3] = &unk_1E8239298;
  block[4] = self;
  if (playbackContexts_sOnceToken != -1)
  {
    dispatch_once(&playbackContexts_sOnceToken, block);
  }

  if (playbackContexts_isClassicMusicApp == 1)
  {
    playParametersQueue2 = [self playParametersQueue];
    v8 = [self _classicalMusicAppPlaybackContextForPlayParametersQueue:playParametersQueue2];

    if (v8)
    {
      v23 = v8;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
      goto LABEL_28;
    }

    v10 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback_Oversize");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v25 = playParametersQueue;
      _os_log_impl(&dword_1C5C61000, v10, OS_LOG_TYPE_DEFAULT, "MusicKit: Unable to produce playback context for play parameters queue %{public}@. Defaulting to public SDK playback (non-filtered).", buf, 0xCu);
    }
  }

  if ([playParametersQueue count] == 1 && (objc_msgSend(self, "startItemPlayParameters"), v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
  {
    firstObject = [playParametersQueue firstObject];
    itemKind = [firstObject itemKind];

    v14 = MEMORY[0x1E696AD98];
    if ([itemKind isEqualToString:*MEMORY[0x1E69703F8]])
    {
      v15 = 1;
    }

    else
    {
      v15 = [itemKind isEqualToString:*MEMORY[0x1E6970400]];
    }

    v16 = [v14 numberWithInt:v15];
  }

  else
  {
    v16 = MEMORY[0x1E695E110];
  }

  v21 = v16;
  [self _updatePlaybackContextsForPlaybackParametersQueue:playParametersQueue libraryItems:array radioPlaybackContext:0 storePlayParameters:v2 contexts:array2 containsStartItem:&v21];
  v8 = v21;

  if ([v2 count] || objc_msgSend(array, "count"))
  {
    v17 = [self _playbackContextForStorePlayParameters:v2 libraryItems:array radioPlaybackContext:0 containsStartItem:{objc_msgSend(v8, "BOOLValue")}];
    [array2 addObject:v17];
  }

  v18 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback_Oversize");
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v25 = array2;
    _os_log_impl(&dword_1C5C61000, v18, OS_LOG_TYPE_DEFAULT, "MusicKit: Returning playback contexts for MPMusicPlayerPlayParamertersQueueDescriptor: Contexts = %{public}@", buf, 0xCu);
  }

  v9 = array2;
LABEL_28:
  v19 = v9;

  return v19;
}

@end