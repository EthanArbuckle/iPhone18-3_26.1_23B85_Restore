@interface MPMusicPlayerPlayParametersQueueDescriptor
@end

@implementation MPMusicPlayerPlayParametersQueueDescriptor

id __129__MPMusicPlayerPlayParametersQueueDescriptor_MPCModelPlaybackAdditions___classicalMusicAppPlaybackContextForPlayParametersQueue___block_invoke_2_138(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) identifiersMatchingIdentifierSet:v3 propertySet:*(a1 + 40) options:0 error:0];
  if (!v4)
  {
    v4 = v3;
  }

  return v4;
}

__CFString *__129__MPMusicPlayerPlayParametersQueueDescriptor_MPCModelPlaybackAdditions___classicalMusicAppPlaybackContextForPlayParametersQueue___block_invoke_144(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = [v2 universalStore];
  v4 = [v3 subscriptionAdamID];

  v5 = [v2 universalStore];
  v6 = v5;
  if (v4)
  {
    quot = [v5 subscriptionAdamID];
    if (quot)
    {
      v8 = quot;
      v9 = &v23 + 1;
      do
      {
        v10 = lldiv(quot, 10);
        quot = v10.quot;
        if (v10.rem >= 0)
        {
          LOBYTE(v11) = v10.rem;
        }

        else
        {
          v11 = -v10.rem;
        }

        *(v9 - 2) = v11 + 48;
        v12 = (v9 - 2);
        --v9;
      }

      while (v10.quot);
LABEL_16:
      if (v8 < 0)
      {
        *(v9 - 2) = 45;
        v12 = (v9 - 2);
      }

      v18 = CFStringCreateWithBytes(0, v12, &v23 - v12, 0x8000100u, 0);
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  v13 = [v5 adamID];

  v14 = [v2 universalStore];
  v6 = v14;
  if (v13)
  {
    v15 = [v14 adamID];
    if (v15)
    {
      v8 = v15;
      v9 = &v23 + 1;
      do
      {
        v16 = lldiv(v15, 10);
        v15 = v16.quot;
        if (v16.rem >= 0)
        {
          LOBYTE(v17) = v16.rem;
        }

        else
        {
          v17 = -v16.rem;
        }

        *(v9 - 2) = v17 + 48;
        v12 = (v9 - 2);
        --v9;
      }

      while (v16.quot);
      goto LABEL_16;
    }

LABEL_20:
    v19 = @"0";
    goto LABEL_21;
  }

  v21 = [v14 globalPlaylistID];
  v22 = [v21 length];

  if (v22)
  {
    v6 = [v2 universalStore];
    v18 = [v6 globalPlaylistID];
LABEL_19:
    v19 = v18;
LABEL_21:

    goto LABEL_22;
  }

  v19 = 0;
LABEL_22:

  return v19;
}

id __129__MPMusicPlayerPlayParametersQueueDescriptor_MPCModelPlaybackAdditions___classicalMusicAppPlaybackContextForPlayParametersQueue___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E6970770];
  v3 = a2;
  v4 = [[v2 alloc] initWithIdentifiers:v3 block:&__block_literal_global_143_24483];

  return v4;
}

id __164__MPMusicPlayerPlayParametersQueueDescriptor_MPCModelPlaybackAdditions___playbackContextForStorePlayParameters_libraryItems_radioPlaybackContext_containsStartItem___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isLibraryContent])
  {
    [v2 catalogID];
  }

  else
  {
    [v2 itemID];
  }
  v3 = ;

  return v3;
}

id __164__MPMusicPlayerPlayParametersQueueDescriptor_MPCModelPlaybackAdditions___playbackContextForStorePlayParameters_libraryItems_radioPlaybackContext_containsStartItem___block_invoke_2_55(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E6970770];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 identifiers];

  v6 = [v4 initWithIdentifiers:v5 block:&__block_literal_global_61];

  return v6;
}

void __204__MPMusicPlayerPlayParametersQueueDescriptor_MPCModelPlaybackAdditions___updatePlaybackContextsForPlaybackParametersQueue_libraryItems_radioPlaybackContext_storePlayParameters_contexts_containsStartItem___block_invoke(id *a1, void *a2, id *a3, void *a4, void *a5)
{
  v21 = *MEMORY[0x1E69E9840];
  v9 = a5;
  v10 = a4;
  v11 = a2;
  v12 = objc_alloc_init(MPCModelRadioPlaybackContext);
  v13 = [objc_alloc(MEMORY[0x1E6970750]) initWithIdentifiers:v10 block:&__block_literal_global_24509];

  [(MPCModelRadioPlaybackContext *)v12 setRadioStation:v13];
  v14 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [a1[4] stationURL];
    v19 = 138543362;
    v20 = v15;
    _os_log_impl(&dword_1C5C61000, v14, OS_LOG_TYPE_DEFAULT, "MusicKit: Adding playback context for radio station: %{public}@", &v19, 0xCu);
  }

  v16 = [a1[5] _playbackContextForStorePlayParameters:a1[6] libraryItems:a1[7] radioPlaybackContext:v12 containsStartItem:{objc_msgSend(*a3, "BOOLValue")}];
  [v11 addObject:v16];

  *a3 = MEMORY[0x1E695E110];
  [a1[6] removeAllObjects];
  [a1[7] removeAllObjects];
  v17 = [a1[5] startItemPlayParameters];
  v18 = [v17 isEqual:v9];

  if (v18)
  {
    *a3 = MEMORY[0x1E695E118];
  }
}

void __204__MPMusicPlayerPlayParametersQueueDescriptor_MPCModelPlaybackAdditions___updatePlaybackContextsForPlaybackParametersQueue_libraryItems_radioPlaybackContext_storePlayParameters_contexts_containsStartItem___block_invoke_32(uint64_t a1, uint64_t a2, id *a3, uint64_t a4, void *a5, void *a6)
{
  v21 = *MEMORY[0x1E69E9840];
  v9 = a5;
  v10 = a6;
  v11 = os_log_create("com.apple.amp.mediaplaybackcore", "SDKPlayback");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 32);
    v19 = 138543362;
    v20 = v12;
    _os_log_impl(&dword_1C5C61000, v11, OS_LOG_TYPE_DEFAULT, "MusicKit: Adding store playback context for store play parameters %{public}@", &v19, 0xCu);
  }

  v13 = *(a1 + 32);
  if (v13)
  {
    if (v10 || (v14 = [*(a1 + 40) count], v13 = *(a1 + 32), v14))
    {
      v15 = *(a1 + 48);
      v16 = [*(a1 + 56) _playbackContextForStorePlayParameters:v13 libraryItems:*(a1 + 40) radioPlaybackContext:*(a1 + 64) containsStartItem:{objc_msgSend(*a3, "BOOLValue")}];
      [v15 addObject:v16];

      *a3 = MEMORY[0x1E695E110];
      [*(a1 + 40) removeAllObjects];
      v13 = *(a1 + 32);
    }

    [v13 addObject:v9];
    v17 = [*(a1 + 56) startItemPlayParameters];
    v18 = [v17 isEqual:v9];

    if (v18)
    {
      v10 = 0;
      *a3 = MEMORY[0x1E695E118];
    }

    else
    {
      v10 = 0;
    }
  }
}

void __89__MPMusicPlayerPlayParametersQueueDescriptor_MPCModelPlaybackAdditions__playbackContexts__block_invoke(uint64_t a1)
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = MRMediaRemoteCopyLocalDeviceSystemClassicalRoomApplicationDisplayID();
  v3 = [v2 mutableCopy];
  v4 = [v3 stringByAppendingString:@".tst"];

  v7[0] = v2;
  v7[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];
  v6 = [*(a1 + 32) requestingBundleIdentifier];
  playbackContexts_isClassicMusicApp = [v5 containsObject:v6];
}

@end