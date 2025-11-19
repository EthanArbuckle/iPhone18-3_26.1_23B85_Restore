@interface MusicKit
@end

@implementation MusicKit

void __100__MusicKit_SoftLinking_MPModelLibraryTransientStateController_sharedLibraryTransientStateController__block_invoke()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2050000000;
  v0 = getMPModelLibraryTransientStateControllerClass_softClass;
  v9 = getMPModelLibraryTransientStateControllerClass_softClass;
  if (!getMPModelLibraryTransientStateControllerClass_softClass)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __getMPModelLibraryTransientStateControllerClass_block_invoke;
    v5[3] = &unk_1E84C3838;
    v5[4] = &v6;
    __getMPModelLibraryTransientStateControllerClass_block_invoke(v5);
    v0 = v7[3];
  }

  v1 = v0;
  _Block_object_dispose(&v6, 8);
  v2 = [v0 sharedDeviceLibraryController];
  v3 = [[MusicKit_SoftLinking_MPModelLibraryTransientStateController alloc] _initWithUnderlyingLibraryTransientStateController:v2];
  v4 = sharedLibraryTransientStateController_sSharedDeviceLibraryController;
  sharedLibraryTransientStateController_sSharedDeviceLibraryController = v3;
}

void __77__MusicKit_SoftLinking_MPContentTasteController_sharedContentTasteController__block_invoke()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2050000000;
  v0 = getMPContentTasteControllerClass_softClass;
  v9 = getMPContentTasteControllerClass_softClass;
  if (!getMPContentTasteControllerClass_softClass)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __getMPContentTasteControllerClass_block_invoke;
    v5[3] = &unk_1E84C3838;
    v5[4] = &v6;
    __getMPContentTasteControllerClass_block_invoke(v5);
    v0 = v7[3];
  }

  v1 = v0;
  _Block_object_dispose(&v6, 8);
  v2 = [v0 sharedController];
  v3 = [[MusicKit_SoftLinking_MPContentTasteController alloc] _initWithUnderlyingContentTasteController:v2];
  v4 = sharedContentTasteController_sSharedContentTasteController;
  sharedContentTasteController_sSharedContentTasteController = v3;
}

uint64_t __70__MusicKit_SoftLinking_MPCloudServiceStatusController_instanceManager__block_invoke()
{
  instanceManager___musickit_lazy_init_variable_0 = [objc_alloc(MEMORY[0x1E69E4438]) initWithInstantiationHandler:&__block_literal_global_25];

  return MEMORY[0x1EEE66BB8]();
}

id __70__MusicKit_SoftLinking_MPCloudServiceStatusController_instanceManager__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [getMPCloudServiceStatusControllerClass() cloudServiceStatusControllerWithUserIdentity:v2];

  v4 = [[MusicKit_SoftLinking_MPCloudServiceStatusController alloc] _initWithUnderlyingServiceStatusController:v3];

  return v4;
}

uint64_t __57__MusicKit_SoftLinking_MPCloudController_instanceManager__block_invoke()
{
  instanceManager___musickit_lazy_init_variable = [objc_alloc(MEMORY[0x1E69E4438]) initWithInstantiationHandler:&__block_literal_global_28_0];

  return MEMORY[0x1EEE66BB8]();
}

id __57__MusicKit_SoftLinking_MPCloudController_instanceManager__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [getMPCloudControllerClass() controllerWithUserIdentity:v2];

  v4 = [[MusicKit_SoftLinking_MPCloudController alloc] _initWithUnderlyingCloudController:v3];

  return v4;
}

void __87__MusicKit_SoftLinking_MPCModelStorePlaybackItemsRequest_performWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a3;
  if (a2)
  {
    v5 = MEMORY[0x1E6977680];
    v6 = a2;
    a2 = [[v5 alloc] initWithUnderlyingResponse:v6];
  }

  (*(*(a1 + 32) + 16))();
}

uint64_t __78__MusicKit_SoftLinking_MPModelLibraryPlaylistEditController_isCuratorPlaylist__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) isCuratorPlaylist];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

void __82__MusicKit_SoftLinking_MPModelLibraryPlaylistEditController_commitWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a3;
  if (a2)
  {
    v5 = MEMORY[0x1E6977640];
    v6 = a2;
    a2 = [[v5 alloc] initWithUnderlyingModelObject:v6];
  }

  (*(*(a1 + 32) + 16))();
}

void __63__MusicKit_SoftLinking_MPCPlayerRequest_performWithCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 _errorFromUnderlyingError:a3];
  (*(*(a1 + 40) + 16))();
}

id __134__MusicKit_SoftLinking_MPModelLibraryAddToPlaylistChangeRequest_initWithPlaylist_songIdentifiers_representativeObject_referralObject___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2050000000;
  v3 = getMPModelSongClass_softClass;
  v11 = getMPModelSongClass_softClass;
  if (!getMPModelSongClass_softClass)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __getMPModelSongClass_block_invoke;
    v7[3] = &unk_1E84C3838;
    v7[4] = &v8;
    __getMPModelSongClass_block_invoke(v7);
    v3 = v9[3];
  }

  v4 = v3;
  _Block_object_dispose(&v8, 8);
  v5 = [[v3 alloc] initWithIdentifiers:v2];

  return v5;
}

void __113__MusicKit_SoftLinking_MPModelLibraryTransientStateController_performAddToPlaylistWithRequest_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v45 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v38 = 0;
    v39 = &v38;
    v40 = 0x2050000000;
    v4 = getMPModelLibraryRequestClass_softClass;
    v41 = getMPModelLibraryRequestClass_softClass;
    if (!getMPModelLibraryRequestClass_softClass)
    {
      v33 = MEMORY[0x1E69E9820];
      v34 = 3221225472;
      v35 = __getMPModelLibraryRequestClass_block_invoke;
      v36 = &unk_1E84C3838;
      v37 = &v38;
      __getMPModelLibraryRequestClass_block_invoke(&v33);
      v4 = v39[3];
    }

    v5 = v4;
    _Block_object_dispose(&v38, 8);
    v6 = objc_alloc_init(v4);
    v7 = [MEMORY[0x1E6977628] _defaultPlaylistKind];
    [v6 setItemKind:v7];

    v38 = 0;
    v39 = &v38;
    v40 = 0x2050000000;
    v8 = getMPPropertySetClass_softClass;
    v41 = getMPPropertySetClass_softClass;
    if (!getMPPropertySetClass_softClass)
    {
      v33 = MEMORY[0x1E69E9820];
      v34 = 3221225472;
      v35 = __getMPPropertySetClass_block_invoke;
      v36 = &unk_1E84C3838;
      v37 = &v38;
      __getMPPropertySetClass_block_invoke(&v33);
      v8 = v39[3];
    }

    v9 = v8;
    _Block_object_dispose(&v38, 8);
    v10 = [v8 alloc];
    v38 = 0;
    v39 = &v38;
    v40 = 0x2020000000;
    v11 = getMPModelPropertyPlaylistLastModifiedDateComponentsSymbolLoc_ptr;
    v41 = getMPModelPropertyPlaylistLastModifiedDateComponentsSymbolLoc_ptr;
    if (!getMPModelPropertyPlaylistLastModifiedDateComponentsSymbolLoc_ptr)
    {
      v33 = MEMORY[0x1E69E9820];
      v34 = 3221225472;
      v35 = __getMPModelPropertyPlaylistLastModifiedDateComponentsSymbolLoc_block_invoke;
      v36 = &unk_1E84C3838;
      v37 = &v38;
      v12 = MediaPlayerLibrary_2();
      v13 = dlsym(v12, "MPModelPropertyPlaylistLastModifiedDateComponents");
      *(v37[1] + 24) = v13;
      getMPModelPropertyPlaylistLastModifiedDateComponentsSymbolLoc_ptr = *(v37[1] + 24);
      v11 = v39[3];
    }

    _Block_object_dispose(&v38, 8);
    if (!v11)
    {
      goto LABEL_18;
    }

    v14 = *v11;
    v43[0] = v14;
    v38 = 0;
    v39 = &v38;
    v40 = 0x2020000000;
    v15 = getMPModelPropertyPlaylistArtworkSymbolLoc_ptr;
    v41 = getMPModelPropertyPlaylistArtworkSymbolLoc_ptr;
    if (!getMPModelPropertyPlaylistArtworkSymbolLoc_ptr)
    {
      v33 = MEMORY[0x1E69E9820];
      v34 = 3221225472;
      v35 = __getMPModelPropertyPlaylistArtworkSymbolLoc_block_invoke;
      v36 = &unk_1E84C3838;
      v37 = &v38;
      v16 = MediaPlayerLibrary_2();
      v17 = dlsym(v16, "MPModelPropertyPlaylistArtwork");
      *(v37[1] + 24) = v17;
      getMPModelPropertyPlaylistArtworkSymbolLoc_ptr = *(v37[1] + 24);
      v15 = v39[3];
    }

    _Block_object_dispose(&v38, 8);
    if (!v15)
    {
      goto LABEL_18;
    }

    v18 = *v15;
    v43[1] = v18;
    v38 = 0;
    v39 = &v38;
    v40 = 0x2020000000;
    v19 = getMPModelPropertyPlaylistTracksTiledArtworkSymbolLoc_ptr;
    v41 = getMPModelPropertyPlaylistTracksTiledArtworkSymbolLoc_ptr;
    if (!getMPModelPropertyPlaylistTracksTiledArtworkSymbolLoc_ptr)
    {
      v33 = MEMORY[0x1E69E9820];
      v34 = 3221225472;
      v35 = __getMPModelPropertyPlaylistTracksTiledArtworkSymbolLoc_block_invoke;
      v36 = &unk_1E84C3838;
      v37 = &v38;
      v20 = MediaPlayerLibrary_2();
      v21 = dlsym(v20, "MPModelPropertyPlaylistTracksTiledArtwork");
      *(v37[1] + 24) = v21;
      getMPModelPropertyPlaylistTracksTiledArtworkSymbolLoc_ptr = *(v37[1] + 24);
      v19 = v39[3];
    }

    _Block_object_dispose(&v38, 8);
    if (!v19)
    {
LABEL_18:
      getMPModelLibraryPlaylistEditControllerDidChangeNotification_cold_1();
      __break(1u);
    }

    v44 = *v19;
    v22 = MEMORY[0x1E695DEC8];
    v23 = v44;
    v24 = [v22 arrayWithObjects:v43 count:3];

    v25 = [v10 initWithProperties:v24 relationships:MEMORY[0x1E695E0F8]];
    [v6 setItemProperties:v25];

    v26 = [*(a1 + 32) _underlyingLibraryAddToPlaylistChangeRequest];
    v27 = [v26 playlist];
    v28 = [v27 identifiers];
    v42 = v28;
    v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v42 count:1];
    [v6 setAllowedItemIdentifiers:v29];

    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __113__MusicKit_SoftLinking_MPModelLibraryTransientStateController_performAddToPlaylistWithRequest_completionHandler___block_invoke_2;
    v31[3] = &unk_1E84C3B38;
    v32 = *(a1 + 40);
    [v6 performWithResponseHandler:v31];
  }

  v30 = *MEMORY[0x1E69E9840];
}

void __113__MusicKit_SoftLinking_MPModelLibraryTransientStateController_performAddToPlaylistWithRequest_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 results];
  v4 = [v3 allItems];
  v6 = [v4 firstObject];

  if (v6)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69775D8] code:2 userInfo:0];
    (*(*(a1 + 32) + 16))();
  }
}

uint64_t __119__MusicKit_SoftLinking_MPModelLibraryTransientStateController_performLibraryImportChangeWithRequest_completionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __131__MusicKit_SoftLinking_MPModelLibraryTransientStateController_performPlaylistEditChangeRequest_completionPolicy_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  if (!*(a1 + 40))
  {
    v6 = a2;
    v7 = [a3 identifiers];
    (*(*(a1 + 32) + 16))();
  }
}

void __131__MusicKit_SoftLinking_MPModelLibraryTransientStateController_performPlaylistEditChangeRequest_completionPolicy_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  if (*(a1 + 40) == 1)
  {
    v6 = a2;
    v7 = [a3 identifiers];
    (*(*(a1 + 32) + 16))();
  }
}

void __116__MusicKit_SoftLinking_MPModelLibraryRemoveFromPlaylistChangeRequest_performWithCompletionPolicy_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 40) + 8) + 40);
  v4 = a2;
  v5 = [v3 identifiers];
  (*(*(a1 + 32) + 16))();
}

void __88__MusicKit_SoftLinking_MPAVRoutingController_routingControllerAvailableRoutesDidChange___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleRoutesDidChange:v3];
}

BOOL __69__MusicKit_RemotePlaybackQueue_extractDialogFromCommandResult_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 dialog];
  v3 = v2 != 0;

  return v3;
}

BOOL __69__MusicKit_RemotePlaybackQueue_extractDialogFromCommandResult_error___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 commandError];
  v3 = v2 != 0;

  return v3;
}

void __89__MusicKit_RemoteRadioStationPlaybackQueue_setQueueWithPath_sessionID_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  v3 = [MusicKit_RemotePlaybackQueue extractDialogFromCommandResult:a2 error:&v5];
  v4 = v5;
  (*(*(a1 + 32) + 16))();
}

void __129__MusicKit_SoftLinking_MPSectionedCollection_MusicKit_SoftLinking_MPCPlayerResponseTracklist__enumeratePlayerSectionsUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v4 = getMPCPlayerResponseTracklistDisplaySectionPreviousItemsSymbolLoc_ptr;
  v18 = getMPCPlayerResponseTracklistDisplaySectionPreviousItemsSymbolLoc_ptr;
  if (!getMPCPlayerResponseTracklistDisplaySectionPreviousItemsSymbolLoc_ptr)
  {
    v5 = MediaPlaybackCoreLibrary_1();
    v16[3] = dlsym(v5, "MPCPlayerResponseTracklistDisplaySectionPreviousItems");
    getMPCPlayerResponseTracklistDisplaySectionPreviousItemsSymbolLoc_ptr = v16[3];
    v4 = v16[3];
  }

  _Block_object_dispose(&v15, 8);
  if (!v4)
  {
    getMPModelLibraryPlaylistEditControllerDidChangeNotification_cold_1();
LABEL_23:
    getMPModelLibraryPlaylistEditControllerDidChangeNotification_cold_1();
LABEL_24:
    getMPModelLibraryPlaylistEditControllerDidChangeNotification_cold_1();
    goto LABEL_25;
  }

  if ([v3 isEqualToString:*v4])
  {
    goto LABEL_21;
  }

  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v6 = getMPCPlayerResponseTracklistDisplaySectionPlayingItemSymbolLoc_ptr;
  v18 = getMPCPlayerResponseTracklistDisplaySectionPlayingItemSymbolLoc_ptr;
  if (!getMPCPlayerResponseTracklistDisplaySectionPlayingItemSymbolLoc_ptr)
  {
    v7 = MediaPlaybackCoreLibrary_1();
    v16[3] = dlsym(v7, "MPCPlayerResponseTracklistDisplaySectionPlayingItem");
    getMPCPlayerResponseTracklistDisplaySectionPlayingItemSymbolLoc_ptr = v16[3];
    v6 = v16[3];
  }

  _Block_object_dispose(&v15, 8);
  if (!v6)
  {
    goto LABEL_23;
  }

  if ([v3 isEqualToString:*v6])
  {
    goto LABEL_21;
  }

  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v8 = getMPCPlayerResponseTracklistDisplaySectionUpNextItemsSymbolLoc_ptr;
  v18 = getMPCPlayerResponseTracklistDisplaySectionUpNextItemsSymbolLoc_ptr;
  if (!getMPCPlayerResponseTracklistDisplaySectionUpNextItemsSymbolLoc_ptr)
  {
    v9 = MediaPlaybackCoreLibrary_1();
    v16[3] = dlsym(v9, "MPCPlayerResponseTracklistDisplaySectionUpNextItems");
    getMPCPlayerResponseTracklistDisplaySectionUpNextItemsSymbolLoc_ptr = v16[3];
    v8 = v16[3];
  }

  _Block_object_dispose(&v15, 8);
  if (!v8)
  {
    goto LABEL_24;
  }

  if ([v3 isEqualToString:*v8])
  {
    goto LABEL_21;
  }

  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v10 = getMPCPlayerResponseTracklistDisplaySectionNextItemsSymbolLoc_ptr;
  v18 = getMPCPlayerResponseTracklistDisplaySectionNextItemsSymbolLoc_ptr;
  if (!getMPCPlayerResponseTracklistDisplaySectionNextItemsSymbolLoc_ptr)
  {
    v11 = MediaPlaybackCoreLibrary_1();
    v16[3] = dlsym(v11, "MPCPlayerResponseTracklistDisplaySectionNextItems");
    getMPCPlayerResponseTracklistDisplaySectionNextItemsSymbolLoc_ptr = v16[3];
    v10 = v16[3];
  }

  _Block_object_dispose(&v15, 8);
  if (!v10)
  {
LABEL_25:
    getMPModelLibraryPlaylistEditControllerDidChangeNotification_cold_1();
    goto LABEL_26;
  }

  if (([v3 isEqualToString:*v10] & 1) == 0)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v12 = getMPCPlayerResponseTracklistDisplaySectionAutoPlayItemsSymbolLoc_ptr;
    v18 = getMPCPlayerResponseTracklistDisplaySectionAutoPlayItemsSymbolLoc_ptr;
    if (!getMPCPlayerResponseTracklistDisplaySectionAutoPlayItemsSymbolLoc_ptr)
    {
      v13 = MediaPlaybackCoreLibrary_1();
      v16[3] = dlsym(v13, "MPCPlayerResponseTracklistDisplaySectionAutoPlayItems");
      getMPCPlayerResponseTracklistDisplaySectionAutoPlayItemsSymbolLoc_ptr = v16[3];
      v12 = v16[3];
    }

    _Block_object_dispose(&v15, 8);
    if (v12)
    {
      [v3 isEqualToString:*v12];
      goto LABEL_21;
    }

LABEL_26:
    v14 = getMPModelLibraryPlaylistEditControllerDidChangeNotification_cold_1();
    _Block_object_dispose(&v15, 8);
    _Unwind_Resume(v14);
  }

LABEL_21:
  (*(*(a1 + 32) + 16))();
}

void __96__MusicKit_SoftLinking_DownloadedSongs_requestDownloadedSongsForMediaLibrary_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a3;
  if (a2)
  {
    v5 = MEMORY[0x1E6977680];
    v6 = a2;
    a2 = [[v5 alloc] initWithUnderlyingResponse:v6];
  }

  (*(*(a1 + 32) + 16))();
}

void __88__MusicKit_SoftLinking_MPLibraryKeepLocalStatusObserver_initWithIdentifyingModelObject___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) _underlyingModelObject];
  v2 = [v5 newKeepLocalStatusObserverConfiguration];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __88__MusicKit_SoftLinking_MPLibraryKeepLocalStatusObserver_initWithIdentifyingModelObject___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleUpdatedUnderlyingActiveKeepLocalStatus:{a2, a3}];
}

void __83__MusicKit_SoftLinking_MPLibraryKeepLocalStatusObserver_setIdentifyingModelObject___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) _underlyingModelObject];
  v2 = [v5 newKeepLocalStatusObserverConfiguration];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __118__MusicKit_SoftLinking_MPLibraryKeepLocalStatusObserver_calculateDownloadProgressWithIdentifyingModelObject_children___block_invoke(uint64_t a1)
{
  v2 = [[MusicKit_SoftLinking_MPModelResponseDetailedKeepLocalStatusRequesting alloc] initWithModelObject:*(a1 + 32) children:*(a1 + 40)];
  objc_initWeak(&location, *(a1 + 48));
  v5 = MEMORY[0x1E69E9820];
  v6 = 3221225472;
  v7 = __118__MusicKit_SoftLinking_MPLibraryKeepLocalStatusObserver_calculateDownloadProgressWithIdentifyingModelObject_children___block_invoke_2;
  v8 = &unk_1E84C3EB8;
  objc_copyWeak(&v9, &location);
  v3 = [(MusicKit_SoftLinking_MPModelResponseDetailedKeepLocalStatusRequesting *)v2 newOperationForDetailedKeepLocalStatusConfigurationForSectionAtIndex:0 responseHandler:&v5];
  v4 = [MusicKit_SoftLinking_MPModelLibraryTransientStateController sharedLibraryTransientStateController:v5];
  [v4 performOperation:v3];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __118__MusicKit_SoftLinking_MPLibraryKeepLocalStatusObserver_calculateDownloadProgressWithIdentifyingModelObject_children___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __118__MusicKit_SoftLinking_MPLibraryKeepLocalStatusObserver_calculateDownloadProgressWithIdentifyingModelObject_children___block_invoke_3;
  v5[3] = &unk_1E84C3E90;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);

  objc_destroyWeak(&v7);
}

void __118__MusicKit_SoftLinking_MPLibraryKeepLocalStatusObserver_calculateDownloadProgressWithIdentifyingModelObject_children___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && *(a1 + 32))
  {
    v3 = WeakRetained;
    [WeakRetained[1] setConfiguration:?];
    WeakRetained = v3;
  }
}

void __115__MusicKit_SoftLinking_MPModelLibraryDuplicatePlaylistChangeRequest_performWithCompletionPolicy_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2050000000;
  v6 = getMPIdentifierSetClass_softClass;
  v22 = getMPIdentifierSetClass_softClass;
  if (!getMPIdentifierSetClass_softClass)
  {
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __getMPIdentifierSetClass_block_invoke;
    v17 = &unk_1E84C3838;
    v18 = &v19;
    __getMPIdentifierSetClass_block_invoke(&v14);
    v6 = v20[3];
  }

  v7 = v6;
  _Block_object_dispose(&v19, 8);
  v8 = [v6 alloc];
  v19 = 0;
  v20 = &v19;
  v21 = 0x2050000000;
  v9 = getMPModelPlaylistKindClass_softClass;
  v22 = getMPModelPlaylistKindClass_softClass;
  if (!getMPModelPlaylistKindClass_softClass)
  {
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __getMPModelPlaylistKindClass_block_invoke;
    v17 = &unk_1E84C3838;
    v18 = &v19;
    __getMPModelPlaylistKindClass_block_invoke(&v14);
    v9 = v20[3];
  }

  v10 = v9;
  _Block_object_dispose(&v19, 8);
  v11 = [v9 identityKind];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __115__MusicKit_SoftLinking_MPModelLibraryDuplicatePlaylistChangeRequest_performWithCompletionPolicy_completionHandler___block_invoke_2;
  v13[3] = &unk_1E84C3F40;
  v13[4] = *(a1 + 32);
  v13[5] = a2;
  v12 = [v8 initWithSource:@"MusicKit_Duplicate_Playlist" modelKind:v11 block:v13];

  (*(*(a1 + 40) + 16))();
}

void __115__MusicKit_SoftLinking_MPModelLibraryDuplicatePlaylistChangeRequest_performWithCompletionPolicy_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 8);
  v4 = a2;
  v5 = [v3 mediaLibrary];
  v6 = [v5 uniqueIdentifier];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __115__MusicKit_SoftLinking_MPModelLibraryDuplicatePlaylistChangeRequest_performWithCompletionPolicy_completionHandler___block_invoke_3;
  v7[3] = &__block_descriptor_40_e44_v16__0___MPMutableLocalLibraryIdentifiers__8l;
  v7[4] = *(a1 + 40);
  [v4 setLibraryIdentifiersWithDatabaseID:v6 block:v7];
}

void __88__MusicKit_SoftLinking_MPModelLibraryDownloadQueueRequest_performWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E6977680];
  v6 = a3;
  v7 = a2;
  v9 = [[v5 alloc] initWithUnderlyingResponse:v7];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _applyUnderlyingResponse:v7];

  (*(*(a1 + 32) + 16))();
}

uint64_t __109__MusicKit_SoftLinking_MPModelLibraryDownloadQueueRequest_requestDownloadingSongsCountWithCompletionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 32);
  }

  else
  {
    v6 = [a2 results];
    [v6 totalItemCount];
  }

  v5 = *(*(a1 + 32) + 16);

  return v5();
}

uint64_t __63__MusicKit_SoftLinking_MPCloudController_sharedCloudController__block_invoke()
{
  sharedCloudController___musickit_lazy_init_variable = __63__MusicKit_SoftLinking_MPCloudController_sharedCloudController__block_invoke_2();

  return MEMORY[0x1EEE66BB8]();
}

id __63__MusicKit_SoftLinking_MPCloudController_sharedCloudController__block_invoke_2()
{
  v0 = [getMPCloudControllerClass() sharedCloudController];
  v1 = [[MusicKit_SoftLinking_MPCloudController alloc] _initWithUnderlyingCloudController:v0];

  return v1;
}

void __73__MusicKit_SoftLinking_MPServerObjectDatabase_sharedServerObjectDatabase__block_invoke()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2050000000;
  v0 = getMPServerObjectDatabaseClass_softClass;
  v9 = getMPServerObjectDatabaseClass_softClass;
  if (!getMPServerObjectDatabaseClass_softClass)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __getMPServerObjectDatabaseClass_block_invoke;
    v5[3] = &unk_1E84C3838;
    v5[4] = &v6;
    __getMPServerObjectDatabaseClass_block_invoke(v5);
    v0 = v7[3];
  }

  v1 = v0;
  _Block_object_dispose(&v6, 8);
  v2 = [v0 sharedServerObjectDatabase];
  v3 = [[MusicKit_SoftLinking_MPServerObjectDatabase alloc] _initWithUnderlyingServerObjectDatabase:v2];
  v4 = sharedServerObjectDatabase_sSharedServerObjectDatabase;
  sharedServerObjectDatabase_sSharedServerObjectDatabase = v3;
}

void __94__MusicKit_SoftLinking_MPServerObjectDatabase_payloadDataForIdentifier_identifierKinds_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __94__MusicKit_SoftLinking_MPServerObjectDatabase_payloadDataForIdentifier_identifierKinds_error___block_invoke_2;
  v11[3] = &unk_1E84C41A8;
  v4 = *(a1 + 32);
  v13 = *(a1 + 40);
  v12 = v4;
  [v3 setUniversalStoreIdentifiersWithBlock:v11];
  if ((*(a1 + 40) & 0x40) != 0)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __94__MusicKit_SoftLinking_MPServerObjectDatabase_payloadDataForIdentifier_identifierKinds_error___block_invoke_3;
    v9[3] = &unk_1E84C41D0;
    v10 = *(a1 + 32);
    [v3 setRadioIdentifiersWithBlock:v9];
  }

  v5 = [MEMORY[0x1E69E4680] activeAccount];
  v6 = [MEMORY[0x1E69E4688] defaultIdentityStore];
  v7 = [v6 DSIDForUserIdentity:v5 outError:0];
  v8 = [v7 stringValue];

  if (v8)
  {
    [v3 setPersonalStoreIdentifiersWithPersonID:v8 block:&__block_literal_global_16_0];
  }
}

void __94__MusicKit_SoftLinking_MPServerObjectDatabase_payloadDataForIdentifier_identifierKinds_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 32);
  if ((*(a1 + 40) & 0x20) != 0)
  {
    [v3 setSocialProfileID:v5];
    goto LABEL_15;
  }

  v6 = v5;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v7 = getMPStoreItemMetadataInt64NormalizeStoreIDValueSymbolLoc_ptr;
  v15 = getMPStoreItemMetadataInt64NormalizeStoreIDValueSymbolLoc_ptr;
  if (!getMPStoreItemMetadataInt64NormalizeStoreIDValueSymbolLoc_ptr)
  {
    v8 = MediaPlayerLibrary_12();
    v13[3] = dlsym(v8, "MPStoreItemMetadataInt64NormalizeStoreIDValue");
    getMPStoreItemMetadataInt64NormalizeStoreIDValueSymbolLoc_ptr = v13[3];
    v7 = v13[3];
  }

  _Block_object_dispose(&v12, 8);
  if (!v7)
  {
    v11 = getMPModelLibraryPlaylistEditControllerDidChangeNotification_cold_1();
    _Block_object_dispose(&v12, 8);
    _Unwind_Resume(v11);
  }

  v9 = v7(v6);

  v10 = *(a1 + 40);
  if (!v10)
  {
    if (!v9)
    {
LABEL_14:
      [v4 setGlobalPlaylistID:*(a1 + 32)];
      goto LABEL_15;
    }

LABEL_13:
    [v4 setAdamID:v9];
    [v4 setSubscriptionAdamID:v9];
    goto LABEL_15;
  }

  if ((v10 & 1) != 0 && v9)
  {
    goto LABEL_13;
  }

  if ((v10 & 0x10) != 0 && !v9)
  {
    goto LABEL_14;
  }

LABEL_15:
}

void __96__MusicKit_RemoteLibraryPlaybackQueue_setQueueWithPath_shuffleMode_sessionID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(a1 + 32) + 24), a2);
  v4 = a2;
  [*(a1 + 32) _setQueueWithPath:*(a1 + 40) shuffleMode:*(a1 + 64) sessionID:*(a1 + 48) completionHandler:*(a1 + 56)];
}

void __97__MusicKit_RemoteLibraryPlaybackQueue__setQueueWithPath_shuffleMode_sessionID_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v3 = [MusicKit_RemotePlaybackQueue extractDialogFromCommandResult:a2 error:&v6];
  v4 = v6;
  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3, v4);
  }
}

void __96__MusicKit_RemoteLibraryPlaybackQueue_insertQueueWithPath_position_sessionID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(a1 + 32) + 24), a2);
  v4 = a2;
  [*(a1 + 32) _insertQueueWithPath:*(a1 + 40) position:*(a1 + 64) sessionID:*(a1 + 48) completionHandler:*(a1 + 56)];
}

void __97__MusicKit_RemoteLibraryPlaybackQueue__insertQueueWithPath_position_sessionID_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v3 = [MusicKit_RemotePlaybackQueue extractDialogFromCommandResult:a2 error:&v6];
  v4 = v6;
  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3, v4);
  }
}

void __93__MusicKit_RemoteLibraryPlaybackQueue__resolveMediaQueryForLibraryRequest_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E695DF70];
  v4 = a2;
  v5 = objc_alloc_init(v3);
  v6 = [v4 results];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __93__MusicKit_RemoteLibraryPlaybackQueue__resolveMediaQueryForLibraryRequest_completionHandler___block_invoke_2;
  v9[3] = &unk_1E84C4258;
  v10 = v5;
  v7 = v5;
  [v6 enumerateItemsUsingBlock:v9];

  v8 = [objc_alloc(getMPMediaQueryClass()) initWithEntities:v7 entityType:0];
  (*(*(a1 + 32) + 16))();
}

void __93__MusicKit_RemoteLibraryPlaybackQueue__resolveMediaQueryForLibraryRequest_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v16 = a2;
  v3 = [v16 identifiers];
  v4 = [v3 library];
  v5 = [v4 persistentID];

  getMPModelPlaylistEntryClass_0();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v16;
    v7 = [v6 song];

    if (v7)
    {
      v8 = [v6 song];
    }

    else
    {
      v9 = [v6 tvEpisode];

      if (v9)
      {
        v8 = [v6 tvEpisode];
      }

      else
      {
        v10 = [v6 movie];

        if (!v10)
        {
LABEL_9:

          goto LABEL_10;
        }

        v8 = [v6 movie];
      }
    }

    v11 = v8;
    v12 = [v8 identifiers];
    v13 = [v12 library];
    v5 = [v13 persistentID];

    goto LABEL_9;
  }

LABEL_10:
  v14 = [getMPMediaLibraryClass_0() defaultMediaLibrary];
  v15 = [v14 entityWithPersistentID:v5 entityType:0];

  [*(a1 + 32) addObject:v15];
}

uint64_t __71__MusicKit_SoftLinking_MPCloudServiceStatusController_sharedController__block_invoke()
{
  sharedController___musickit_lazy_init_variable = __71__MusicKit_SoftLinking_MPCloudServiceStatusController_sharedController__block_invoke_2();

  return MEMORY[0x1EEE66BB8]();
}

id __71__MusicKit_SoftLinking_MPCloudServiceStatusController_sharedController__block_invoke_2()
{
  v0 = [getMPCloudServiceStatusControllerClass() sharedController];
  v1 = [[MusicKit_SoftLinking_MPCloudServiceStatusController alloc] _initWithUnderlyingServiceStatusController:v0];

  return v1;
}

void __82__MusicKit_SoftLinking_MPLibraryAddStatusObserver_initWithIdentifyingModelObject___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) _underlyingModelObject];
  v2 = [v4 libraryAddStatusObserverConfiguration];
  v3 = *(*(a1 + 40) + 8);
  *(v3 + 36) = BYTE4(v2);
  *(v3 + 32) = v2;
}

void __82__MusicKit_SoftLinking_MPLibraryAddStatusObserver_initWithIdentifyingModelObject___block_invoke_2(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleUpdatedUnderlyingLibraryAddStatus:a2];
}

void __77__MusicKit_SoftLinking_MPLibraryAddStatusObserver_setIdentifyingModelObject___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) _underlyingModelObject];
  v2 = [v4 libraryAddStatusObserverConfiguration];
  v3 = *(*(a1 + 40) + 8);
  *(v3 + 36) = BYTE4(v2);
  *(v3 + 32) = v2;
}

uint64_t __113__MusicKit_SoftLinking_MPLibraryAddStatusObserver_calculateDetailedAddStatusWithIdentifyingModelObject_children___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) libraryAddStatusObserverConfiguration];
  v3 = *(*(a1 + 40) + 8);
  *(v3 + 36) = BYTE4(result);
  *(v3 + 32) = result;
  return result;
}

uint64_t __113__MusicKit_SoftLinking_MPLibraryAddStatusObserver_calculateDetailedAddStatusWithIdentifyingModelObject_children___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) isExplicitSong];
  *(*(*(a1 + 40) + 8) + 24) = result ^ 1;
  return result;
}

uint64_t __57__MusicKit_PlayerPathSessionManager_sharedSessionManager__block_invoke()
{
  sharedSessionManager_sSharedSessionManager = objc_alloc_init(MusicKit_PlayerPathSessionManager);

  return MEMORY[0x1EEE66BB8]();
}

void __69__MusicKit_SoftLinking_MPCPlayerChangeRequest_performWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v15 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v14 + 1) + 8 * v9);
      v11 = [v10 dialog];

      if (v11)
      {
        [v4 addObject:v10];
        goto LABEL_12;
      }

      if ([v10 type] == 2)
      {
        break;
      }

      [v4 addObject:v10];
      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_12;
      }
    }

    v13 = [v10 error];

    if (!v13)
    {
      goto LABEL_13;
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
LABEL_12:

LABEL_13:
    (*(*(a1 + 32) + 16))();
  }

  v12 = *MEMORY[0x1E69E9840];
}

@end