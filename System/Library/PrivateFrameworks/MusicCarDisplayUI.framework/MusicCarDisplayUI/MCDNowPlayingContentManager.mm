@interface MCDNowPlayingContentManager
@end

@implementation MCDNowPlayingContentManager

void __50___MCDNowPlayingContentManager__limitedUIChanged___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) tableView];
  [v2 reloadData];

  v3 = [*(a1 + 32) carSessionStatus];
  v7 = [v3 currentSession];

  v4 = [v7 limitUserInterfaces];
  if ([v4 BOOLValue])
  {
    v5 = [v7 configuration];
    [*(a1 + 32) setLimitedUI:{(objc_msgSend(v5, "limitableUserInterfaces") >> 3) & 1}];
  }

  else
  {
    [*(a1 + 32) setLimitedUI:0];
  }

  v6 = [*(a1 + 32) tableView];
  [v6 reloadData];
}

uint64_t __59___MCDNowPlayingContentManager_modelResponseDidInvalidate___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  v3 = *MEMORY[0x277CD5C20];
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) object];
  [v2 removeObserver:v4 name:v3 object:v5];

  v6 = *(a1 + 32);

  return [v6 _performRequest];
}

void __69___MCDNowPlayingContentManager_controller_defersResponseReplacement___block_invoke(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();
  v2 = [*(a1 + 32) response];
  v3 = [v2 playerPath];

  v4 = [v3 representedBundleID];
  v5 = [*(a1 + 40) bundleID];
  v6 = [v4 isEqualToString:v5];

  v7 = *(a1 + 40);
  if (v6)
  {
    v8 = [v7 lastReceivedResponse];
    v9 = [*(a1 + 32) response];
    [*(a1 + 40) setLastReceivedResponse:v9];

    v10 = [*(a1 + 40) lastReceivedResponse];
    [*(a1 + 40) setShouldShowPlayState:{objc_msgSend(v10, "state") == 2}];

    v84 = v8;
    v11 = [v8 tracklist];
    v12 = [v11 playingItem];
    v13 = [v12 contentItemIdentifier];
    v14 = [*(a1 + 32) response];
    v15 = [v14 tracklist];
    v16 = [v15 playingItem];
    v17 = [v16 contentItemIdentifier];
    LOBYTE(v8) = [v13 isEqualToString:v17];

    if ((v8 & 1) == 0)
    {
      v18 = [*(a1 + 40) videoPlaybackState];
      objc_initWeak(location, *(a1 + 40));
      v19 = [*(a1 + 40) videoPlaybackStateQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __69___MCDNowPlayingContentManager_controller_defersResponseReplacement___block_invoke_2;
      block[3] = &unk_2799241A0;
      objc_copyWeak(v87, location);
      v87[1] = v18;
      dispatch_async(v19, block);

      objc_destroyWeak(v87);
      objc_destroyWeak(location);
    }

    v20 = [*(a1 + 40) lastReceivedResponse];
    v21 = [v20 tracklist];
    v22 = [v21 playingItemIndexPath];

    v23 = *(a1 + 40);
    if (v22)
    {
      v24 = [v23 lastReceivedResponse];
      v25 = [v24 tracklist];
      v26 = [v25 items];
      v27 = [*(a1 + 40) lastReceivedResponse];
      v28 = [v27 tracklist];
      v29 = [v28 playingItemIndexPath];
      v30 = [v26 itemAtIndexPath:v29];
      [*(a1 + 40) setNowPlayingItem:v30];
    }

    else
    {
      [v23 setNowPlayingItem:0];
    }

    v34 = [*(a1 + 40) delegate];
    v35 = objc_opt_respondsToSelector();

    if (v35)
    {
      v36 = [*(a1 + 40) _shouldShowPlaybackQueueForItemCount:{objc_msgSend(*(a1 + 40), "_numberOfItemsInPlaybackQueue")}];
      v37 = [*(a1 + 40) delegate];
      [v37 contentManager:*(a1 + 40) shouldShowPlaybackQueue:v36];
    }

    v38 = [*(a1 + 40) delegate];
    v39 = objc_opt_respondsToSelector();

    if (v39)
    {
      v40 = [*(a1 + 40) nowPlayingItem];
      v41 = v40;
      if (v40)
      {
        [v40 duration];
        v42 = v85;
      }

      else
      {
        v42 = 0;
      }

      v43 = [*(a1 + 40) delegate];
      [v43 contentManager:*(a1 + 40) bufferingItem:v42 & 1];
    }

    [*(a1 + 40) setCurrentPlayingPlaylist:0];
    [*(a1 + 40) setCurrentPlayingRadioStation:0];
    v44 = [*(a1 + 40) lastReceivedResponse];
    v45 = [v44 tracklist];
    v46 = [v45 playingItemIndexPath];

    if (!v46)
    {
      goto LABEL_25;
    }

    v47 = [*(a1 + 40) lastReceivedResponse];
    v48 = [v47 tracklist];
    v49 = [v48 items];
    v50 = [v49 itemAtIndexPath:v46];

    if ([v50 isAutoPlay])
    {
LABEL_24:

LABEL_25:
      v58 = [*(a1 + 40) nowPlayingItem];
      v59 = [v58 metadataObject];

      v60 = [v59 flattenedGenericObject];
      v61 = [v60 anyObject];

      v62 = [*(a1 + 40) currentPlayingSong];

      if (v62 != v61)
      {
        [*(a1 + 40) setCurrentPlayingSong:v61];
        [*(a1 + 40) processArtworkForCurrentlyPlayingSong];
        if ([v59 type] == 5)
        {
          v63 = [v59 playlistEntry];
          [*(a1 + 40) setCurrentPlayingPlaylistEntry:v63];
        }

        else
        {
          [*(a1 + 40) setCurrentPlayingPlaylistEntry:0];
        }

        v64 = [*(a1 + 40) delegate];
        v65 = objc_opt_respondsToSelector();

        if (v65)
        {
          v66 = [*(a1 + 40) delegate];
          v67 = *(a1 + 40);
          v68 = [v67 currentPlayingSong];
          v69 = [*(a1 + 40) lastReceivedResponse];
          [v66 contentManager:v67 itemDidChange:v68 response:v69];
        }

        v70 = MCDGeneralLogging();
        if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(location[0]) = 0;
          _os_log_impl(&dword_25AD8E000, v70, OS_LOG_TYPE_DEFAULT, "Playing content has changed, posting notification", location, 2u);
        }

        v71 = [MEMORY[0x277CCAB98] defaultCenter];
        [v71 postNotificationName:@"MCDContentItemsChangedNotification" object:0];
      }

      v72 = [*(a1 + 40) lastReceivedResponse];
      v73 = [v72 state];

      if (v73 != [*(a1 + 40) playerState])
      {
        *(*(a1 + 40) + 160) = v73;
        v74 = [MEMORY[0x277CCAB98] defaultCenter];
        [v74 postNotificationName:@"MCDPlaybackStateChangedNotification" object:0];
      }

      v75 = *(a1 + 40);
      v76 = [*(a1 + 32) response];
      [v75 _processResponse:v76 error:0];

      v77 = [*(a1 + 40) delegate];
      LOBYTE(v76) = objc_opt_respondsToSelector();

      if (v76)
      {
        v78 = [*(a1 + 40) delegate];
        v79 = *(a1 + 40);
        v80 = [*(a1 + 32) response];
        [v78 contentManager:v79 processResponse:v80 error:0];
      }

      v81 = [*(a1 + 40) delegate];
      v82 = objc_opt_respondsToSelector();

      if (v82)
      {
        v83 = [*(a1 + 40) delegate];
        [v83 contentManagerReloadData:*(a1 + 40)];
      }

      goto LABEL_41;
    }

    v51 = [*(a1 + 40) lastReceivedResponse];
    v52 = [v51 tracklist];
    v53 = [v52 items];
    v54 = [v53 sectionAtIndex:{objc_msgSend(v46, "section")}];

    v55 = [v54 metadataObject];
    v56 = [v55 type];
    if (v56 == 13)
    {
      v57 = [v55 radioStation];
      [*(a1 + 40) setCurrentPlayingRadioStation:v57];
    }

    else
    {
      if (v56 != 4)
      {
LABEL_23:

        goto LABEL_24;
      }

      v57 = [v55 playlist];
      [*(a1 + 40) setCurrentPlayingPlaylist:v57];
    }

    goto LABEL_23;
  }

  [v7 setShouldShowPlayState:0];
  v31 = [*(a1 + 40) delegate];
  v32 = objc_opt_respondsToSelector();

  if (v32)
  {
    v33 = [*(a1 + 40) delegate];
    [v33 contentManagerReloadData:*(a1 + 40)];
  }

LABEL_41:
}

void __69___MCDNowPlayingContentManager_controller_defersResponseReplacement___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = CPUIVideoPlaybackStateForCarPlay();
    if (*(a1 + 40) != v3)
    {
      v4[0] = MEMORY[0x277D85DD0];
      v4[1] = 3221225472;
      v4[2] = __69___MCDNowPlayingContentManager_controller_defersResponseReplacement___block_invoke_3;
      v4[3] = &unk_279923DA8;
      v4[4] = WeakRetained;
      v4[5] = v3;
      dispatch_async(MEMORY[0x277D85CD0], v4);
    }
  }
}

void __69___MCDNowPlayingContentManager_controller_defersResponseReplacement___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setVideoPlaybackState:*(a1 + 40)];
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 reloadData];
  }
}

void __69___MCDNowPlayingContentManager_processArtworkForCurrentlyPlayingSong__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = MCDGeneralLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __69___MCDNowPlayingContentManager_processArtworkForCurrentlyPlayingSong__block_invoke_cold_1(WeakRetained, v2);
  }

  [WeakRetained _showPlaceholderArtwork];
}

void __69___MCDNowPlayingContentManager_processArtworkForCurrentlyPlayingSong__block_invoke_55(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __69___MCDNowPlayingContentManager_processArtworkForCurrentlyPlayingSong__block_invoke_2;
    block[3] = &unk_279923FA0;
    v7 = *(a1 + 32);
    v8 = WeakRetained;
    v9 = v4;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __69___MCDNowPlayingContentManager_processArtworkForCurrentlyPlayingSong__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) currentPlayingSong];
  v4 = [v3 artworkCatalog];
  LODWORD(v2) = [v2 isArtworkVisuallyIdenticalToCatalog:v4];

  if (v2)
  {
    [*(a1 + 40) setArtworkTimer:0];
    [*(a1 + 40) setAlbumArtwork:*(a1 + 48)];
    v5 = [*(a1 + 40) delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = [*(a1 + 40) delegate];
      [v7 contentManagerReloadData:*(a1 + 40)];
    }
  }
}

void __69___MCDNowPlayingContentManager_processArtworkForCurrentlyPlayingSong__block_invoke_cold_1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 artworkCatalog];
  v5 = 134217984;
  v6 = v3;
  _os_log_debug_impl(&dword_25AD8E000, a2, OS_LOG_TYPE_DEBUG, "Timeout while waiting for artworkCatalog=%p", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end