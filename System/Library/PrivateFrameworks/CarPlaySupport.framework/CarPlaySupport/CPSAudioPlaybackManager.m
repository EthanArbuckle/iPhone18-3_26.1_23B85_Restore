@interface CPSAudioPlaybackManager
- ($04B05C73ED6AEEF31C5815932084562D)durationSnapshotForNowPlayingViewController:(SEL)a3;
- (BOOL)nowPlayingViewController:(id)a3 buttonShouldBeActive:(int64_t)a4;
- (BOOL)nowPlayingViewController:(id)a3 shouldDisplayButton:(int64_t)a4 withImage:(id *)a5 existingIdentifier:(id)a6 tinted:(BOOL *)a7;
- (BOOL)nowPlayingViewControllerCanRepeat:(id)a3;
- (BOOL)nowPlayingViewControllerCanShowAddToLibrary:(id)a3;
- (BOOL)nowPlayingViewControllerCanShowAlbumArt:(id)a3;
- (BOOL)nowPlayingViewControllerCanShowAlbumLink:(id)a3;
- (BOOL)nowPlayingViewControllerCanShowChangePlaybackRate:(id)a3;
- (BOOL)nowPlayingViewControllerCanShowMore:(id)a3;
- (BOOL)nowPlayingViewControllerCanShowUpNext:(id)a3;
- (BOOL)nowPlayingViewControllerCanShuffle:(id)a3;
- (BOOL)nowPlayingViewControllerIsPlaying:(id)a3;
- (BOOL)nowPlayingViewControllerIsRightHandDrive:(id)a3;
- (BOOL)nowPlayingViewControllerIsShowingExplicitTrack:(id)a3;
- (CPSAudioPlaybackManager)initWithNowPlayingTemplate:(id)a3 templateDelegate:(id)a4 environment:(id)a5;
- (CPSNowPlayingViewController)nowPlayingViewController;
- (CPSTemplateEnvironment)environment;
- (id)albumTextForNowPlayingController:(id)a3;
- (id)artistTextForNowPlayingController:(id)a3;
- (id)backgroundArtForNowPlayingController:(id)a3;
- (id)customPlaybackControlButtonsForNowPlayingViewController:(id)a3;
- (id)nowPlayingButtonWithClass:(Class)a3;
- (id)nowPlayingButtonWithIdentifier:(id)a3;
- (id)nowPlayingViewControllerGetPlaybackRate:(id)a3;
- (id)progressBarLocalizedDurationStringForNowPlayingViewController:(id)a3;
- (id)sportsDataForNowPlayingController:(id)a3;
- (id)sportsMode;
- (id)titleForNowPlayingController:(id)a3;
- (id)titleForUpNextInNowPlayingViewController:(id)a3;
- (int64_t)placeholderTypeForNowPlayingViewController:(id)a3;
- (int64_t)repeatTypeForNowPlayingViewController:(id)a3;
- (int64_t)shuffleTypeForNowPlayingViewController:(id)a3;
- (int64_t)videoPlaybackStateForNowPlayingController:(id)a3;
- (void)_updateAlbumArtFromSessionConfiguration:(id)a3;
- (void)_updateArtworkSizing;
- (void)dealloc;
- (void)nowPlayingManager:(id)a3 didReceiveArtworkResponse:(id)a4;
- (void)nowPlayingManager:(id)a3 didThrottleUpdateForBundleIdentifier:(id)a4;
- (void)nowPlayingManager:(id)a3 didUpdateSnapshot:(id)a4;
- (void)nowPlayingManager:(id)a3 willStartLoadingArtworkForCatalog:(id)a4 bundleIdentifier:(id)a5;
- (void)nowPlayingViewController:(id)a3 didSelectButton:(id)a4;
- (void)nowPlayingViewController:(id)a3 didSendAction:(int64_t)a4 state:(int64_t)a5;
- (void)nowPlayingViewControllerAddToLibrary:(id)a3;
- (void)nowPlayingViewControllerAlbumArtistButtonTapped:(id)a3;
- (void)nowPlayingViewControllerChangePlaybackRate:(id)a3;
- (void)nowPlayingViewControllerMore:(id)a3;
- (void)nowPlayingViewControllerToggleRepeat:(id)a3;
- (void)nowPlayingViewControllerToggleShuffle:(id)a3;
- (void)nowPlayingViewControllerUpNextButtonTapped:(id)a3;
- (void)session:(id)a3 didUpdateConfiguration:(id)a4;
- (void)setNowPlayingViewController:(id)a3;
- (void)setPlaceholderTimerActive:(BOOL)a3;
- (void)updateNowPlayingTemplate:(id)a3 templateDelegate:(id)a4;
@end

@implementation CPSAudioPlaybackManager

- (CPSAudioPlaybackManager)initWithNowPlayingTemplate:(id)a3 templateDelegate:(id)a4 environment:(id)a5
{
  v38 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v36 = 0;
  objc_storeStrong(&v36, a4);
  v35 = 0;
  objc_storeStrong(&v35, a5);
  v5 = v38;
  v38 = 0;
  v34.receiver = v5;
  v34.super_class = CPSAudioPlaybackManager;
  v32 = [(CPSAudioPlaybackManager *)&v34 init];
  v38 = v32;
  objc_storeStrong(&v38, v32);
  if (v32)
  {
    objc_storeStrong(&v38->_templateDelegate, v36);
    objc_storeStrong(&v38->_template, location[0]);
    objc_storeWeak(&v38->_environment, v35);
    v38->_shouldShowAlbumArt = 1;
    v33 = [v35 nowPlayingManager];
    v28 = [v33 snapshot];
    v27 = [v28 bundleIdentifier];
    v26 = [v35 bundleIdentifier];
    v29 = [v27 isEqualToString:?];
    MEMORY[0x277D82BD8](v26);
    MEMORY[0x277D82BD8](v27);
    v6 = MEMORY[0x277D82BD8](v28).n128_u64[0];
    if (v29)
    {
      v7 = [v33 snapshot];
      lastSnapshot = v38->_lastSnapshot;
      v38->_lastSnapshot = v7;
      v6 = MEMORY[0x277D82BD8](lastSnapshot).n128_u64[0];
    }

    v24 = [v33 artwork];
    v23 = [v24 bundleIdentifier];
    v22 = [v35 bundleIdentifier];
    v25 = [v23 isEqualToString:?];
    MEMORY[0x277D82BD8](v22);
    MEMORY[0x277D82BD8](v23);
    *&v9 = MEMORY[0x277D82BD8](v24).n128_u64[0];
    if (v25)
    {
      v21 = [v33 artwork];
      v10 = [v21 artworkImage];
      fullSizeArtwork = v38->_fullSizeArtwork;
      v38->_fullSizeArtwork = v10;
      MEMORY[0x277D82BD8](fullSizeArtwork);
      MEMORY[0x277D82BD8](v21);
    }

    v38->_videoPlaybackState = CPUIVideoPlaybackStateForCarPlay();
    [v33 addNowPlayingObserver:v38];
    objc_storeStrong(&v38->_nowPlayingManager, v33);
    v16 = [v35 sessionStatus];
    [v16 addSessionObserver:v38];
    *&v12 = MEMORY[0x277D82BD8](v16).n128_u64[0];
    v17 = v38;
    v20 = [v35 sessionStatus];
    v19 = [v20 currentSession];
    v18 = [v19 configuration];
    [(CPSAudioPlaybackManager *)v17 _updateAlbumArtFromSessionConfiguration:?];
    MEMORY[0x277D82BD8](v18);
    MEMORY[0x277D82BD8](v19);
    *&v13 = MEMORY[0x277D82BD8](v20).n128_u64[0];
    [(CPSAudioPlaybackManager *)v38 _updateArtworkSizing];
    objc_storeStrong(&v33, 0);
  }

  v15 = MEMORY[0x277D82BE0](v38);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v38, 0);
  return v15;
}

- (void)updateNowPlayingTemplate:(id)a3 templateDelegate:(id)a4
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = 0;
  objc_storeStrong(&v12, a4);
  v11 = [(CPSAudioPlaybackManager *)v14 sportsMode];
  objc_storeStrong(&v14->_template, location[0]);
  objc_storeStrong(&v14->_templateDelegate, v12);
  v7 = [(CPSAudioPlaybackManager *)v14 sportsMode];
  v9 = 0;
  LOBYTE(v8) = 0;
  if (v7)
  {
    v10 = [(CPSAudioPlaybackManager *)v14 sportsMode];
    v9 = 1;
    v8 = [v11 isEqual:?] ^ 1;
  }

  if (v9)
  {
    MEMORY[0x277D82BD8](v10);
  }

  v4 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  if (v8)
  {
    [(CPSAudioPlaybackManager *)v14 setLastSportsData:0, *&v4];
    v5 = [(CPSAudioPlaybackManager *)v14 nowPlayingViewController];
    [(CPSNowPlayingViewController *)v5 reloadData];
    v4 = MEMORY[0x277D82BD8](v5).n128_u64[0];
  }

  [(CPSAudioPlaybackManager *)v14 _updateArtworkSizing];
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

- (void)setNowPlayingViewController:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeWeak(&v4->_nowPlayingViewController, location[0]);
  [(CPSAudioPlaybackManager *)v4 _updateArtworkSizing];
  objc_storeStrong(location, 0);
}

- (void)dealloc
{
  v4 = self;
  v3 = a2;
  [(CPUINowPlayingManager *)self->_nowPlayingManager removeNowPlayingObserver:self];
  v2.receiver = v4;
  v2.super_class = CPSAudioPlaybackManager;
  [(CPSAudioPlaybackManager *)&v2 dealloc];
}

- (id)sportsMode
{
  v6 = [(CPSAudioPlaybackManager *)self template];
  v5 = [(CPNowPlayingTemplate *)v6 nowPlayingMode];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  MEMORY[0x277D82BD8](v5);
  *&v2 = MEMORY[0x277D82BD8](v6).n128_u64[0];
  if (isKindOfClass)
  {
    v4 = [(CPSAudioPlaybackManager *)self template];
    v9 = [(CPNowPlayingTemplate *)v4 nowPlayingMode];
    MEMORY[0x277D82BD8](v4);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)nowPlayingButtonWithClass:(Class)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v16 = self;
  v15 = a2;
  v14 = a3;
  memset(__b, 0, sizeof(__b));
  obj = [(CPNowPlayingTemplate *)v16->_template nowPlayingButtons];
  v10 = [(NSArray *)obj countByEnumeratingWithState:__b objects:v18 count:16];
  if (v10)
  {
    v6 = *__b[2];
    v7 = 0;
    v8 = v10;
    while (1)
    {
      v5 = v7;
      if (*__b[2] != v6)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(__b[1] + 8 * v7);
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      ++v7;
      if (v5 + 1 >= v8)
      {
        v7 = 0;
        v8 = [(NSArray *)obj countByEnumeratingWithState:__b objects:v18 count:16];
        if (!v8)
        {
          goto LABEL_9;
        }
      }
    }

    v17 = MEMORY[0x277D82BE0](v13);
    v11 = 1;
  }

  else
  {
LABEL_9:
    v11 = 0;
  }

  MEMORY[0x277D82BD8](obj);
  if (!v11)
  {
    v17 = 0;
  }

  v3 = v17;

  return v3;
}

- (id)nowPlayingButtonWithIdentifier:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  memset(__b, 0, sizeof(__b));
  obj = [(CPNowPlayingTemplate *)v18->_template nowPlayingButtons];
  v13 = [(NSArray *)obj countByEnumeratingWithState:__b objects:v20 count:16];
  if (v13)
  {
    v9 = *__b[2];
    v10 = 0;
    v11 = v13;
    while (1)
    {
      v8 = v10;
      if (*__b[2] != v9)
      {
        objc_enumerationMutation(obj);
      }

      v16 = *(__b[1] + 8 * v10);
      v6 = [v16 identifier];
      v7 = [v6 isEqual:location[0]];
      *&v3 = MEMORY[0x277D82BD8](v6).n128_u64[0];
      if (v7)
      {
        break;
      }

      ++v10;
      if (v8 + 1 >= v11)
      {
        v10 = 0;
        v11 = [(NSArray *)obj countByEnumeratingWithState:__b objects:v20 count:16, v3];
        if (!v11)
        {
          goto LABEL_9;
        }
      }
    }

    v19 = MEMORY[0x277D82BE0](v16);
    v14 = 1;
  }

  else
  {
LABEL_9:
    v14 = 0;
  }

  MEMORY[0x277D82BD8](obj);
  if (!v14)
  {
    v19 = 0;
  }

  objc_storeStrong(location, 0);
  v4 = v19;

  return v4;
}

- (void)_updateAlbumArtFromSessionConfiguration:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (location[0])
  {
    v8 = [location[0] nowPlayingAlbumArtMode] == 2;
    if (v8 != v14->_shouldShowAlbumArt)
    {
      oslog = CarPlaySupportGeneralLogging();
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        if (v8)
        {
          v3 = @"YES";
        }

        else
        {
          v3 = @"NO";
        }

        __os_log_helper_16_2_1_8_66(v15, v3);
        _os_log_impl(&dword_242FE8000, oslog, OS_LOG_TYPE_DEFAULT, "Session configuration allows artwork: %{public}@", v15, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
      v14->_shouldShowAlbumArt = v8;
      [(CPSAudioPlaybackManager *)v14 _updateArtworkSizing];
      v4 = [(CPSAudioPlaybackManager *)v14 nowPlayingViewController];
      [(CPSNowPlayingViewController *)v4 reloadData];
      MEMORY[0x277D82BD8](v4);
    }

    v9 = 0;
  }

  else
  {
    v12 = CarPlaySupportGeneralLogging();
    v11 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      log = v12;
      type = v11;
      __os_log_helper_16_0_0(v10);
      _os_log_impl(&dword_242FE8000, log, type, "Missing session configuration.", v10, 2u);
    }

    objc_storeStrong(&v12, 0);
    [(CPSAudioPlaybackManager *)v14 _updateArtworkSizing];
    v9 = 1;
  }

  objc_storeStrong(location, 0);
}

- (void)_updateArtworkSizing
{
  v30 = [(CPSAudioPlaybackManager *)self sportsMode];
  *&v2 = MEMORY[0x277D82BD8](v30).n128_u64[0];
  if (v30)
  {
    v28 = [(CPSAudioPlaybackManager *)self nowPlayingManager];
    [(CPUINowPlayingManager *)v28 setPreferredArtworkSize:?];
    v29 = [(CPSAudioPlaybackManager *)self nowPlayingManager];
    [(CPUINowPlayingManager *)v29 setPreferredArtworkScale:0.0];
    MEMORY[0x277D82BD8](v29);
  }

  else if ([(CPSAudioPlaybackManager *)self shouldShowAlbumArt])
  {
    v27 = [(CPSAudioPlaybackManager *)self nowPlayingViewController];
    MEMORY[0x277D82BD8](v27);
    if (v27)
    {
      v25 = [(CPSAudioPlaybackManager *)self nowPlayingViewController];
      v24 = [(CPSNowPlayingViewController *)v25 view];
      v23 = [v24 traitCollection];
      [v23 displayScale];
      v26 = v3;
      MEMORY[0x277D82BD8](v23);
      MEMORY[0x277D82BD8](v24);
      MEMORY[0x277D82BD8](v25);
      if (v26 <= 2.0)
      {
        v22 = 2.0;
      }

      else
      {
        v22 = v26;
      }

      v15 = [(CPSAudioPlaybackManager *)self nowPlayingManager];
      [(CPUINowPlayingManager *)v15 setPreferredArtworkScale:v22];
      v17 = [(CPSAudioPlaybackManager *)self nowPlayingViewController];
      v16 = [(CPSNowPlayingViewController *)v17 view];
      [v16 bounds];
      v18 = v4;
      MEMORY[0x277D82BD8](v16);
      MEMORY[0x277D82BD8](v17);
      v20 = [(CPSAudioPlaybackManager *)self nowPlayingViewController];
      v19 = [(CPSNowPlayingViewController *)v20 view];
      [v19 bounds];
      v21 = v5;
      MEMORY[0x277D82BD8](v19);
      MEMORY[0x277D82BD8](v20);
      if (v18 >= v21)
      {
        v14 = v18;
      }

      else
      {
        v14 = v21;
      }

      v11 = [(CPSAudioPlaybackManager *)self nowPlayingManager];
      [(CPUINowPlayingManager *)v11 setPreferredArtworkSize:v14];
      MEMORY[0x277D82BD8](v11);
      v12 = [(CPSAudioPlaybackManager *)self nowPlayingManager];
      [(CPUINowPlayingManager *)v12 preferredArtworkSize];
      v13 = v6;
      MEMORY[0x277D82BD8](v12);
      if (v13 <= 200.0)
      {
        v10 = 200.0;
      }

      else
      {
        v10 = v13;
      }

      v9 = [(CPSAudioPlaybackManager *)self nowPlayingManager];
      [(CPUINowPlayingManager *)v9 setPreferredArtworkSize:v10];
      MEMORY[0x277D82BD8](v9);
    }
  }

  else
  {
    v7 = [(CPSAudioPlaybackManager *)self nowPlayingManager];
    [(CPUINowPlayingManager *)v7 setPreferredArtworkSize:?];
    v8 = [(CPSAudioPlaybackManager *)self nowPlayingManager];
    [(CPUINowPlayingManager *)v8 setPreferredArtworkScale:0.0];
    MEMORY[0x277D82BD8](v8);
  }
}

- (id)artistTextForNowPlayingController:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = [(CPSAudioPlaybackManager *)v7 lastSnapshot];
  v5 = [(CPUINowPlayingSnapshot *)v4 artist];
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(location, 0);

  return v5;
}

- (id)albumTextForNowPlayingController:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = [(CPSAudioPlaybackManager *)v7 lastSnapshot];
  v5 = [(CPUINowPlayingSnapshot *)v4 album];
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(location, 0);

  return v5;
}

- (id)titleForNowPlayingController:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = [(CPSAudioPlaybackManager *)v7 lastSnapshot];
  v5 = [(CPUINowPlayingSnapshot *)v4 title];
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(location, 0);

  return v5;
}

- (id)backgroundArtForNowPlayingController:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = [(CPSAudioPlaybackManager *)v11 sportsMode];
  v7 = [v6 backgroundArtwork];
  v8 = 0;
  if (v7)
  {
    v3 = MEMORY[0x277D82BE0](v7);
  }

  else
  {
    v9 = [(CPSAudioPlaybackManager *)v11 fullSizeArtwork];
    v8 = 1;
    v3 = MEMORY[0x277D82BE0](v9);
  }

  v12 = v3;
  if (v8)
  {
    MEMORY[0x277D82BD8](v9);
  }

  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v6);
  objc_storeStrong(location, 0);
  v4 = v12;

  return v4;
}

- (BOOL)nowPlayingViewControllerIsShowingExplicitTrack:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = [(CPSAudioPlaybackManager *)v9 sportsMode];
  *&v3 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  if (v7)
  {
    v10 = 0;
  }

  else
  {
    v6 = [(CPSAudioPlaybackManager *)v9 lastSnapshot];
    v5 = [(CPUINowPlayingSnapshot *)v6 song];
    v10 = [v5 isExplicitSong] & 1;
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v6);
  }

  objc_storeStrong(location, 0);
  return v10 & 1;
}

- (id)sportsDataForNowPlayingController:(id)a3
{
  v69 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v67 = [(CPSAudioPlaybackManager *)v69 sportsMode];
  if (v67)
  {
    v48 = [(CPSAudioPlaybackManager *)v69 lastSportsData];
    *&v3 = MEMORY[0x277D82BD8](v48).n128_u64[0];
    if (v48)
    {
      v70 = [(CPSAudioPlaybackManager *)v69 lastSportsData];
      v66 = 1;
    }

    else
    {
      v65 = objc_alloc_init(MEMORY[0x277CF9168]);
      v45 = [v67 leftTeam];
      v46 = [v45 logo];
      v47 = [v46 logo];
      v63 = 0;
      v61 = 0;
      v59 = 0;
      v57 = 0;
      if (v47)
      {
        v44 = v47;
      }

      else
      {
        v43 = MEMORY[0x277CF9168];
        v64 = [v67 leftTeam];
        v63 = 1;
        v62 = [v64 logo];
        v61 = 1;
        v60 = [v62 initials];
        v59 = 1;
        v58 = [v43 teamLogoWithInitials:?];
        v57 = 1;
        v44 = v58;
      }

      [v65 setLeftTeamLogo:v44];
      if (v57)
      {
        MEMORY[0x277D82BD8](v58);
      }

      if (v59)
      {
        MEMORY[0x277D82BD8](v60);
      }

      if (v61)
      {
        MEMORY[0x277D82BD8](v62);
      }

      if (v63)
      {
        MEMORY[0x277D82BD8](v64);
      }

      MEMORY[0x277D82BD8](v47);
      MEMORY[0x277D82BD8](v46);
      v40 = [v67 rightTeam];
      v41 = [v40 logo];
      v42 = [v41 logo];
      v55 = 0;
      v53 = 0;
      v51 = 0;
      v49 = 0;
      if (v42)
      {
        v39 = v42;
      }

      else
      {
        v38 = MEMORY[0x277CF9168];
        v56 = [v67 rightTeam];
        v55 = 1;
        v54 = [v56 logo];
        v53 = 1;
        v52 = [v54 initials];
        v51 = 1;
        v50 = [v38 teamLogoWithInitials:?];
        v49 = 1;
        v39 = v50;
      }

      [v65 setRightTeamLogo:v39];
      if (v49)
      {
        MEMORY[0x277D82BD8](v50);
      }

      if (v51)
      {
        MEMORY[0x277D82BD8](v52);
      }

      if (v53)
      {
        MEMORY[0x277D82BD8](v54);
      }

      if (v55)
      {
        MEMORY[0x277D82BD8](v56);
      }

      MEMORY[0x277D82BD8](v42);
      MEMORY[0x277D82BD8](v41);
      v10 = [v67 leftTeam];
      [v65 setLeftTeamFavorite:{objc_msgSend(v10, "isFavorite")}];
      v11 = [v67 rightTeam];
      v4 = [v11 isFavorite];
      [v65 setRightTeamFavorite:v4];
      v13 = [v67 leftTeam];
      v12 = [v13 eventScore];
      [v65 setLeftTeamScore:?];
      MEMORY[0x277D82BD8](v12);
      v15 = [v67 rightTeam];
      v14 = [v15 eventScore];
      [v65 setRightTeamScore:?];
      MEMORY[0x277D82BD8](v14);
      v17 = [v67 leftTeam];
      v16 = [v17 name];
      [v65 setLeftTeamName:?];
      MEMORY[0x277D82BD8](v16);
      v19 = [v67 rightTeam];
      v18 = [v19 name];
      [v65 setRightTeamName:?];
      MEMORY[0x277D82BD8](v18);
      v21 = [v67 leftTeam];
      v20 = [v21 teamStandings];
      [v65 setLeftTeamStanding:?];
      MEMORY[0x277D82BD8](v20);
      v23 = [v67 rightTeam];
      v22 = [v23 teamStandings];
      [v65 setRightTeamStanding:?];
      MEMORY[0x277D82BD8](v22);
      v25 = [v67 eventStatus];
      v24 = [v25 eventClock];
      [v24 timeValue];
      [v65 setTimer:?];
      MEMORY[0x277D82BD8](v24);
      v27 = [v67 eventStatus];
      v26 = [v27 eventClock];
      v5 = [v26 countsUp];
      [v65 setCountsUp:v5];
      MEMORY[0x277D82BD8](v26);
      v29 = [v67 eventStatus];
      v28 = [v29 eventClock];
      v6 = [v28 isPaused];
      [v65 setTimerPaused:v6];
      MEMORY[0x277D82BD8](v28);
      v31 = [v67 eventStatus];
      v30 = [v31 eventStatusImage];
      [v65 setEventStatusImage:?];
      MEMORY[0x277D82BD8](v30);
      v33 = [v67 leftTeam];
      v32 = [v33 possessionIndicator];
      [v65 setLeftPossessionIndicator:?];
      MEMORY[0x277D82BD8](v32);
      v35 = [v67 rightTeam];
      v34 = [v35 possessionIndicator];
      [v65 setRightPossessionIndicator:?];
      MEMORY[0x277D82BD8](v34);
      v37 = [v67 eventStatus];
      v36 = [v37 eventStatusText];
      [v65 setEventStatusText:?];
      MEMORY[0x277D82BD8](v36);
      *&v7 = MEMORY[0x277D82BD8](v37).n128_u64[0];
      [(CPSAudioPlaybackManager *)v69 setLastSportsData:v65, v7];
      v70 = MEMORY[0x277D82BE0](v65);
      v66 = 1;
      objc_storeStrong(&v65, 0);
    }
  }

  else
  {
    v70 = 0;
    v66 = 1;
  }

  objc_storeStrong(&v67, 0);
  objc_storeStrong(location, 0);
  v8 = v70;

  return v8;
}

- ($04B05C73ED6AEEF31C5815932084562D)durationSnapshotForNowPlayingViewController:(SEL)a3
{
  v9 = self;
  location[1] = a3;
  location[0] = 0;
  objc_storeStrong(location, a4);
  if (v9->_shouldShowPlayState)
  {
    v5 = [(CPSAudioPlaybackManager *)v9 lastSnapshot];
    if (v5)
    {
      [(CPUINowPlayingSnapshot *)v5 durationSnapshot];
    }

    else
    {
      memset(retstr, 0, sizeof($04B05C73ED6AEEF31C5815932084562D));
    }

    MEMORY[0x277D82BD8](v5);
  }

  else
  {
    memset(retstr, 0, sizeof($04B05C73ED6AEEF31C5815932084562D));
    v6 = [(CPSAudioPlaybackManager *)v9 lastSnapshot];
    if (v6)
    {
      [(CPUINowPlayingSnapshot *)v6 durationSnapshot];
    }

    else
    {
      memset(retstr, 0, sizeof($04B05C73ED6AEEF31C5815932084562D));
    }

    MEMORY[0x277D82BD8](v6);
    retstr->var5 = 0.0;
  }

  objc_storeStrong(location, 0);
  return result;
}

- (id)progressBarLocalizedDurationStringForNowPlayingViewController:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = [(CPSAudioPlaybackManager *)v8 lastSnapshot];
  v4 = [(CPUINowPlayingSnapshot *)v5 responseItem];
  v6 = [v4 localizedDurationString];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  objc_storeStrong(location, 0);

  return v6;
}

- (BOOL)nowPlayingViewControllerIsPlaying:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = [(CPSAudioPlaybackManager *)v6 shouldShowPlayState];
  objc_storeStrong(location, 0);
  return v4;
}

- (int64_t)shuffleTypeForNowPlayingViewController:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = [(CPSAudioPlaybackManager *)v9 lastSnapshot];
  v7 = [(CPUINowPlayingSnapshot *)v5 tracklist];
  *&v3 = MEMORY[0x277D82BD8](v5).n128_u64[0];
  v6 = [v7 shuffleType];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
  return v6;
}

- (int64_t)repeatTypeForNowPlayingViewController:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = [(CPSAudioPlaybackManager *)v9 lastSnapshot];
  v7 = [(CPUINowPlayingSnapshot *)v5 tracklist];
  *&v3 = MEMORY[0x277D82BD8](v5).n128_u64[0];
  v6 = [v7 repeatType];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
  return v6;
}

- (int64_t)placeholderTypeForNowPlayingViewController:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = [(CPSAudioPlaybackManager *)v11 lastSnapshot];
  if (v8)
  {
    [(CPUINowPlayingSnapshot *)v8 durationSnapshot];
  }

  else
  {
    memset(__b, 0, sizeof(__b));
  }

  v7 = __b[48];
  *&v3 = MEMORY[0x277D82BD8](v8).n128_u64[0];
  if (v7)
  {
    v12 = 4;
  }

  else
  {
    v6 = [(CPSAudioPlaybackManager *)v11 environment];
    v5 = [(CPSTemplateEnvironment *)v6 bundleIdentifier];
    v12 = CPUIPlaceholderTypeForBundleIdentifier();
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v6);
  }

  objc_storeStrong(location, 0);
  return v12;
}

- (int64_t)videoPlaybackStateForNowPlayingController:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  videoPlaybackState = v6->_videoPlaybackState;
  objc_storeStrong(location, 0);
  return videoPlaybackState;
}

- (id)nowPlayingViewControllerGetPlaybackRate:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v29 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = [(CPSAudioPlaybackManager *)v29 lastSnapshot];
  v14 = [(CPUINowPlayingSnapshot *)v15 responseItem];
  v27 = [v14 playbackRateCommand];
  MEMORY[0x277D82BD8](v14);
  *&v3 = MEMORY[0x277D82BD8](v15).n128_u64[0];
  if (v27)
  {
    v12 = MEMORY[0x277CCABB0];
    [v27 preferredPlaybackRate];
    v26 = [v12 numberWithFloat:?];
    [v26 floatValue];
    v24 = 0;
    v13 = 0;
    if (v4 == 0.0)
    {
      v25 = [(CPSAudioPlaybackManager *)v29 lastSavedPlaybackRate];
      v24 = 1;
      v13 = v25 != 0;
    }

    if (v24)
    {
      MEMORY[0x277D82BD8](v25);
    }

    if (v13)
    {
      v23 = CarPlaySupportGeneralLogging();
      v22 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [(CPSAudioPlaybackManager *)v29 lastSavedPlaybackRate];
        __os_log_helper_16_2_1_8_64(v32, v11);
        _os_log_impl(&dword_242FE8000, v23, v22, "Playing with a playback rate equal to 0x, returning last saved playback rate: %@", v32, 0xCu);
        MEMORY[0x277D82BD8](v11);
      }

      objc_storeStrong(&v23, 0);
      v30 = [(CPSAudioPlaybackManager *)v29 lastSavedPlaybackRate];
      v21 = 1;
    }

    else
    {
      [(CPSAudioPlaybackManager *)v29 setLastSavedPlaybackRate:v26];
      v30 = MEMORY[0x277D82BE0](v26);
      v21 = 1;
    }

    objc_storeStrong(&v26, 0);
  }

  else
  {
    v10 = [(CPSAudioPlaybackManager *)v29 lastSavedPlaybackRate];
    MEMORY[0x277D82BD8](v10);
    if (v10)
    {
      v20 = CarPlaySupportGeneralLogging();
      v19 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [(CPSAudioPlaybackManager *)v29 lastSavedPlaybackRate];
        __os_log_helper_16_2_1_8_64(v31, v9);
        _os_log_impl(&dword_242FE8000, v20, v19, "Returning last saved playback rate: %@", v31, 0xCu);
        MEMORY[0x277D82BD8](v9);
      }

      objc_storeStrong(&v20, 0);
      v30 = [(CPSAudioPlaybackManager *)v29 lastSavedPlaybackRate];
      v21 = 1;
    }

    else
    {
      oslog = CarPlaySupportGeneralLogging();
      v17 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        v7 = oslog;
        v8 = v17;
        __os_log_helper_16_0_0(v16);
        _os_log_impl(&dword_242FE8000, v7, v8, "Returning 0x playback rate", v16, 2u);
      }

      objc_storeStrong(&oslog, 0);
      v30 = MEMORY[0x277D82BE0](&unk_2855C4EC8);
      v21 = 1;
    }
  }

  objc_storeStrong(&v27, 0);
  objc_storeStrong(location, 0);
  v5 = v30;

  return v5;
}

- (void)nowPlayingViewControllerAlbumArtistButtonTapped:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (([(CPNowPlayingClientTemplateDelegate *)v4->_templateDelegate conformsToProtocol:&unk_285632888]& 1) != 0)
  {
    [(CPNowPlayingClientTemplateDelegate *)v4->_templateDelegate albumArtistButtonTapped];
  }

  objc_storeStrong(location, 0);
}

- (BOOL)nowPlayingViewControllerCanShowUpNext:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = [(CPNowPlayingTemplate *)v6->_template isUpNextButtonEnabled];
  objc_storeStrong(location, 0);
  return v4;
}

- (id)titleForUpNextInNowPlayingViewController:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = [(CPNowPlayingTemplate *)v6->_template upNextTitle];
  objc_storeStrong(location, 0);

  return v4;
}

- (void)nowPlayingViewControllerUpNextButtonTapped:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (([(CPNowPlayingClientTemplateDelegate *)v4->_templateDelegate conformsToProtocol:&unk_285632888]& 1) != 0)
  {
    [(CPNowPlayingClientTemplateDelegate *)v4->_templateDelegate upNextButtonTapped];
  }

  objc_storeStrong(location, 0);
}

- (void)nowPlayingViewControllerChangePlaybackRate:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = [(CPSAudioPlaybackManager *)v7 nowPlayingButtonWithClass:objc_opt_class()];
  if (v5)
  {
    templateDelegate = v7->_templateDelegate;
    v4 = [v5 identifier];
    [(CPNowPlayingClientTemplateDelegate *)templateDelegate handleActionForControlIdentifier:?];
    MEMORY[0x277D82BD8](v4);
  }

  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)nowPlayingViewControllerAddToLibrary:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = [(CPSAudioPlaybackManager *)v7 nowPlayingButtonWithClass:objc_opt_class()];
  if (v5)
  {
    templateDelegate = v7->_templateDelegate;
    v4 = [v5 identifier];
    [(CPNowPlayingClientTemplateDelegate *)templateDelegate handleActionForControlIdentifier:?];
    MEMORY[0x277D82BD8](v4);
  }

  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)nowPlayingViewControllerToggleRepeat:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = [(CPSAudioPlaybackManager *)v7 nowPlayingButtonWithClass:objc_opt_class()];
  if (v5)
  {
    templateDelegate = v7->_templateDelegate;
    v4 = [v5 identifier];
    [(CPNowPlayingClientTemplateDelegate *)templateDelegate handleActionForControlIdentifier:?];
    MEMORY[0x277D82BD8](v4);
  }

  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)nowPlayingViewControllerToggleShuffle:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = [(CPSAudioPlaybackManager *)v7 nowPlayingButtonWithClass:objc_opt_class()];
  if (v5)
  {
    templateDelegate = v7->_templateDelegate;
    v4 = [v5 identifier];
    [(CPNowPlayingClientTemplateDelegate *)templateDelegate handleActionForControlIdentifier:?];
    MEMORY[0x277D82BD8](v4);
  }

  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)nowPlayingViewControllerMore:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = [(CPSAudioPlaybackManager *)v7 nowPlayingButtonWithClass:objc_opt_class()];
  if (v5)
  {
    templateDelegate = v7->_templateDelegate;
    v4 = [v5 identifier];
    [(CPNowPlayingClientTemplateDelegate *)templateDelegate handleActionForControlIdentifier:?];
    MEMORY[0x277D82BD8](v4);
  }

  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)nowPlayingViewController:(id)a3 didSelectButton:(id)a4
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = 0;
  objc_storeStrong(&v11, a4);
  v8 = v13;
  v9 = [v11 identifier];
  v10 = [(CPSAudioPlaybackManager *)v8 nowPlayingButtonWithIdentifier:?];
  *&v4 = MEMORY[0x277D82BD8](v9).n128_u64[0];
  if (v10)
  {
    templateDelegate = v13->_templateDelegate;
    v6 = [v10 identifier];
    [(CPNowPlayingClientTemplateDelegate *)templateDelegate handleActionForControlIdentifier:?];
    MEMORY[0x277D82BD8](v6);
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (id)customPlaybackControlButtonsForNowPlayingViewController:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v20 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v18 = [MEMORY[0x277CBEB18] array];
  v5 = [(CPSAudioPlaybackManager *)v20 nowPlayingViewController];
  v17 = [(CPUINowPlayingViewController *)v5 playModeControlView];
  v16 = [v17 mediaButtons];
  v6 = [(CPNowPlayingTemplate *)v20->_template nowPlayingButtons];
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __83__CPSAudioPlaybackManager_customPlaybackControlButtonsForNowPlayingViewController___block_invoke;
  v12 = &unk_278D92C70;
  v13 = MEMORY[0x277D82BE0](v16);
  v14 = MEMORY[0x277D82BE0](v17);
  v15 = MEMORY[0x277D82BE0](v18);
  [(NSArray *)v6 enumerateObjectsUsingBlock:&v8];
  MEMORY[0x277D82BD8](v6);
  oslog = CarPlaySupportGeneralLogging();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v21, v18);
    _os_log_impl(&dword_242FE8000, oslog, OS_LOG_TYPE_DEFAULT, "Returning custom media buttons %@", v21, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v4 = MEMORY[0x277D82BE0](v18);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);

  return v4;
}

void __83__CPSAudioPlaybackManager_customPlaybackControlButtonsForNowPlayingViewController___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v67 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v63[3] = a3;
  v63[2] = a4;
  v63[1] = a1;
  v63[0] = 0;
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](*(a1 + 32));
  v50 = [obj countByEnumeratingWithState:__b objects:v66 count:16];
  if (v50)
  {
    v43 = *__b[2];
    v44 = 0;
    v45 = v50;
    while (1)
    {
      v42 = v44;
      if (*__b[2] != v43)
      {
        objc_enumerationMutation(obj);
      }

      v62 = *(__b[1] + 8 * v44);
      objc_opt_class();
      v59 = 0;
      v57 = 0;
      v41 = 0;
      if (objc_opt_isKindOfClass())
      {
        v60 = [v62 identifier];
        v59 = 1;
        v58 = [location[0] identifier];
        v57 = 1;
        v41 = [v60 isEqual:?];
      }

      if (v57)
      {
        MEMORY[0x277D82BD8](v58);
      }

      if (v59)
      {
        MEMORY[0x277D82BD8](v60);
      }

      if (v41)
      {
        break;
      }

      ++v44;
      if (v42 + 1 >= v45)
      {
        v44 = 0;
        v45 = [obj countByEnumeratingWithState:__b objects:v66 count:16];
        if (!v45)
        {
          goto LABEL_15;
        }
      }
    }

    v4 = objc_opt_class();
    v5 = CPSSafeCast_11(v4, v62);
    v6 = v63[0];
    v63[0] = v5;
    MEMORY[0x277D82BD8](v6);
    v56 = 2;
  }

  else
  {
LABEL_15:
    v56 = 0;
  }

  MEMORY[0x277D82BD8](obj);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || v63[0])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = [*(a1 + 40) moreButton];
      v21 = v63[0];
      v63[0] = v20;
      MEMORY[0x277D82BD8](v21);
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v22 = [*(a1 + 40) repeatButton];
        v23 = v63[0];
        v63[0] = v22;
        MEMORY[0x277D82BD8](v23);
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v24 = [*(a1 + 40) shuffleButton];
          v25 = v63[0];
          v63[0] = v24;
          MEMORY[0x277D82BD8](v25);
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v26 = [*(a1 + 40) addToLibraryButton];
            v27 = v63[0];
            v63[0] = v26;
            MEMORY[0x277D82BD8](v27);
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v28 = [*(a1 + 40) playbackRateButton];
              v29 = v63[0];
              v63[0] = v28;
              MEMORY[0x277D82BD8](v29);
            }
          }
        }
      }
    }
  }

  else
  {
    v7 = objc_opt_class();
    v55 = CPSSafeCast_11(v7, location[0]);
    v8 = objc_opt_new();
    v9 = v63[0];
    v63[0] = v8;
    [v8 setTranslatesAutoresizingMaskIntoConstraints:{0, MEMORY[0x277D82BD8](v9).n128_f64[0]}];
    v54 = 0;
    v40 = [v55 image];
    [v40 size];
    v52 = v10;
    v53 = v11;
    MEMORY[0x277D82BD8](v40);
    if (__CGSizeEqualToSize(v52, v53, *MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)))
    {
      oslog = CarPlaySupportGeneralLogging();
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        v39 = [v55 identifier];
        __os_log_helper_16_2_1_8_64(v65, v39);
        _os_log_impl(&dword_242FE8000, oslog, OS_LOG_TYPE_DEFAULT, "Empty custom image provided for now playing button with identifier: %@", v65, 0xCu);
        MEMORY[0x277D82BD8](v39);
      }

      objc_storeStrong(&oslog, 0);
      v38 = [v63[0] traitCollection];
      v12 = CPUIQuestionmarkGlyph();
      v13 = v54;
      v54 = v12;
      MEMORY[0x277D82BD8](v13);
      v14 = MEMORY[0x277D82BD8](v38).n128_u64[0];
    }

    else
    {
      v37 = [v55 image];
      v15 = CPImageByScalingImageToSize();
      v16 = v54;
      v54 = v15;
      MEMORY[0x277D82BD8](v16);
      v14 = MEMORY[0x277D82BD8](v37).n128_u64[0];
    }

    v17 = [v54 imageWithRenderingMode:{2, *&v14}];
    v18 = v54;
    v54 = v17;
    *&v19 = MEMORY[0x277D82BD8](v18).n128_u64[0];
    [v63[0] setImage:v54 forState:{0, v19}];
    v33 = v63[0];
    v32 = v54;
    v36 = [MEMORY[0x277D75348] labelColor];
    v35 = [v36 colorWithAlphaComponent:0.2];
    v34 = [v32 imageWithTintColor:?];
    [v33 setImage:? forState:?];
    MEMORY[0x277D82BD8](v34);
    MEMORY[0x277D82BD8](v35);
    MEMORY[0x277D82BD8](v36);
    objc_storeStrong(&v54, 0);
    objc_storeStrong(&v55, 0);
  }

  if (v63[0])
  {
    v30 = v63[0];
    v31 = [location[0] identifier];
    [v30 setIdentifier:?];
    [v63[0] setEnabled:{objc_msgSend(location[0], "isEnabled", MEMORY[0x277D82BD8](v31).n128_f64[0])}];
    [v63[0] setSelected:{objc_msgSend(location[0], "isSelected")}];
    [*(a1 + 48) addObject:v63[0]];
  }

  objc_storeStrong(v63, 0);
  objc_storeStrong(location, 0);
}

- (void)nowPlayingViewController:(id)a3 didSendAction:(int64_t)a4 state:(int64_t)a5
{
  v87 = *MEMORY[0x277D85DE8];
  v85 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v83 = a4;
  v82 = a5;
  v81 = 0;
  if (a4 != -1)
  {
    if (a4)
    {
      if (a4 == 1)
      {
        v68 = CarPlaySupportGeneralLogging();
        v67 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
        {
          v39 = v68;
          v40 = v67;
          __os_log_helper_16_0_0(v66);
          _os_log_impl(&dword_242FE8000, v39, v40, "Sending next action.", v66, 2u);
        }

        objc_storeStrong(&v68, 0);
        if (v82 == 1)
        {
          [(CPSAudioPlaybackManager *)v85 setActionStateHeld:1];
          v38 = [(CPSAudioPlaybackManager *)v85 lastSnapshot];
          v22 = [(CPUINowPlayingSnapshot *)v38 commandWithType:7];
          v23 = v81;
          v81 = v22;
          MEMORY[0x277D82BD8](v23);
          v5 = MEMORY[0x277D82BD8](v38).n128_u64[0];
        }

        else if (v82 == 2 && [(CPSAudioPlaybackManager *)v85 actionStateHeld])
        {
          [(CPSAudioPlaybackManager *)v85 setActionStateHeld:0];
          v37 = [(CPSAudioPlaybackManager *)v85 lastSnapshot];
          v24 = [(CPUINowPlayingSnapshot *)v37 commandWithType:9];
          v25 = v81;
          v81 = v24;
          MEMORY[0x277D82BD8](v25);
          v5 = MEMORY[0x277D82BD8](v37).n128_u64[0];
        }

        else
        {
          v35 = [(CPSAudioPlaybackManager *)v85 lastSnapshot];
          v36 = [(CPUINowPlayingSnapshot *)v35 jumpForwardInterval];
          MEMORY[0x277D82BD8](v36);
          *&v26 = MEMORY[0x277D82BD8](v35).n128_u64[0];
          if (v36)
          {
            v34 = [(CPSAudioPlaybackManager *)v85 lastSnapshot];
            v27 = [(CPUINowPlayingSnapshot *)v34 commandWithType:5];
            v28 = v81;
            v81 = v27;
            MEMORY[0x277D82BD8](v28);
            v5 = MEMORY[0x277D82BD8](v34).n128_u64[0];
          }

          else
          {
            v33 = [(CPSAudioPlaybackManager *)v85 lastSnapshot];
            v29 = [(CPUINowPlayingSnapshot *)v33 commandWithType:3];
            v30 = v81;
            v81 = v29;
            MEMORY[0x277D82BD8](v30);
            v5 = MEMORY[0x277D82BD8](v33).n128_u64[0];
          }
        }
      }

      else if (a4 == 2)
      {
        v52 = v85;
        v53 = [(CPSAudioPlaybackManager *)v85 nowPlayingViewController];
        v54 = [(CPSAudioPlaybackManager *)v52 nowPlayingViewControllerIsPlaying:?];
        *&v15 = MEMORY[0x277D82BD8](v53).n128_u64[0];
        if (v54)
        {
          v50 = [(CPSAudioPlaybackManager *)v85 lastSnapshot];
          v51 = [(CPUINowPlayingSnapshot *)v50 showsStopButton];
          MEMORY[0x277D82BD8](v50);
          if (v51)
          {
            v77 = CarPlaySupportGeneralLogging();
            v76 = OS_LOG_TYPE_DEFAULT;
            if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
            {
              log = v77;
              type = v76;
              __os_log_helper_16_0_0(v75);
              _os_log_impl(&dword_242FE8000, log, type, "Sending stop action.", v75, 2u);
            }

            objc_storeStrong(&v77, 0);
            v47 = [(CPSAudioPlaybackManager *)v85 lastSnapshot];
            v16 = [(CPUINowPlayingSnapshot *)v47 commandWithType:0];
            v17 = v81;
            v81 = v16;
            MEMORY[0x277D82BD8](v17);
            v5 = MEMORY[0x277D82BD8](v47).n128_u64[0];
          }

          else
          {
            v74 = CarPlaySupportGeneralLogging();
            v73 = OS_LOG_TYPE_DEFAULT;
            if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
            {
              v45 = v74;
              v46 = v73;
              __os_log_helper_16_0_0(v72);
              _os_log_impl(&dword_242FE8000, v45, v46, "Sending pause action.", v72, 2u);
            }

            objc_storeStrong(&v74, 0);
            v44 = [(CPSAudioPlaybackManager *)v85 lastSnapshot];
            v18 = [(CPUINowPlayingSnapshot *)v44 commandWithType:2];
            v19 = v81;
            v81 = v18;
            MEMORY[0x277D82BD8](v19);
            v5 = MEMORY[0x277D82BD8](v44).n128_u64[0];
          }
        }

        else
        {
          v71 = CarPlaySupportGeneralLogging();
          v70 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
          {
            v42 = v71;
            v43 = v70;
            __os_log_helper_16_0_0(v69);
            _os_log_impl(&dword_242FE8000, v42, v43, "Sending play action.", v69, 2u);
          }

          objc_storeStrong(&v71, 0);
          v41 = [(CPSAudioPlaybackManager *)v85 lastSnapshot];
          v20 = [(CPUINowPlayingSnapshot *)v41 commandWithType:1];
          v21 = v81;
          v81 = v20;
          MEMORY[0x277D82BD8](v21);
          v5 = MEMORY[0x277D82BD8](v41).n128_u64[0];
        }
      }
    }

    else
    {
      v80 = CarPlaySupportGeneralLogging();
      v79 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
      {
        v61 = v80;
        v62 = v79;
        __os_log_helper_16_0_0(v78);
        _os_log_impl(&dword_242FE8000, v61, v62, "Sending back action.", v78, 2u);
      }

      objc_storeStrong(&v80, 0);
      if (v82 == 1)
      {
        [(CPSAudioPlaybackManager *)v85 setActionStateHeld:1];
        v60 = [(CPSAudioPlaybackManager *)v85 lastSnapshot];
        v6 = [(CPUINowPlayingSnapshot *)v60 commandWithType:8];
        v7 = v81;
        v81 = v6;
        MEMORY[0x277D82BD8](v7);
        v5 = MEMORY[0x277D82BD8](v60).n128_u64[0];
      }

      else if (v82 == 2 && [(CPSAudioPlaybackManager *)v85 actionStateHeld])
      {
        [(CPSAudioPlaybackManager *)v85 setActionStateHeld:0];
        v59 = [(CPSAudioPlaybackManager *)v85 lastSnapshot];
        v8 = [(CPUINowPlayingSnapshot *)v59 commandWithType:9];
        v9 = v81;
        v81 = v8;
        MEMORY[0x277D82BD8](v9);
        v5 = MEMORY[0x277D82BD8](v59).n128_u64[0];
      }

      else
      {
        v57 = [(CPSAudioPlaybackManager *)v85 lastSnapshot];
        v58 = [(CPUINowPlayingSnapshot *)v57 jumpBackInterval];
        MEMORY[0x277D82BD8](v58);
        *&v10 = MEMORY[0x277D82BD8](v57).n128_u64[0];
        if (v58)
        {
          v56 = [(CPSAudioPlaybackManager *)v85 lastSnapshot];
          v11 = [(CPUINowPlayingSnapshot *)v56 commandWithType:6];
          v12 = v81;
          v81 = v11;
          MEMORY[0x277D82BD8](v12);
          v5 = MEMORY[0x277D82BD8](v56).n128_u64[0];
        }

        else
        {
          v55 = [(CPSAudioPlaybackManager *)v85 lastSnapshot];
          v13 = [(CPUINowPlayingSnapshot *)v55 commandWithType:4];
          v14 = v81;
          v81 = v13;
          MEMORY[0x277D82BD8](v14);
          v5 = MEMORY[0x277D82BD8](v55).n128_u64[0];
        }
      }
    }
  }

  if (v81)
  {
    v32 = [(CPSAudioPlaybackManager *)v85 nowPlayingManager];
    [(CPUINowPlayingManager *)v32 performCommandRequest:v81 completion:0];
    MEMORY[0x277D82BD8](v32);
  }

  else
  {
    v65 = CarPlaySupportGeneralLogging();
    if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
    {
      v31 = [MEMORY[0x277CCABB0] numberWithInteger:v83];
      __os_log_helper_16_2_1_8_64(v86, v31);
      _os_log_error_impl(&dword_242FE8000, v65, OS_LOG_TYPE_ERROR, "No available remote command for action %@", v86, 0xCu);
      MEMORY[0x277D82BD8](v31);
    }

    objc_storeStrong(&v65, 0);
  }

  objc_storeStrong(&v81, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)nowPlayingViewController:(id)a3 shouldDisplayButton:(int64_t)a4 withImage:(id *)a5 existingIdentifier:(id)a6 tinted:(BOOL *)a7
{
  v102[1] = *MEMORY[0x277D85DE8];
  v97 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v95 = a4;
  v94 = a5;
  v93 = 0;
  objc_storeStrong(&v93, a6);
  v92 = a7;
  if (v95)
  {
    if (v95 == 1)
    {
      v34 = [(CPSAudioPlaybackManager *)v97 lastSnapshot];
      v77 = [(CPUINowPlayingSnapshot *)v34 jumpForwardInterval];
      *&v17 = MEMORY[0x277D82BD8](v34).n128_u64[0];
      if (v77)
      {
        v76 = 0;
        v32 = [MEMORY[0x277CF9160] knownJumpIntervals];
        v33 = [v32 containsObject:v77];
        *&v18 = MEMORY[0x277D82BD8](v32).n128_u64[0];
        if (v33)
        {
          v19 = [v77 stringValue];
          v20 = v76;
          v76 = v19;
          *&v21 = MEMORY[0x277D82BD8](v20).n128_u64[0];
        }

        else
        {
          v75 = CarPlaySupportGeneralLogging();
          if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
          {
            __os_log_helper_16_2_1_8_66(v98, v77);
            _os_log_error_impl(&dword_242FE8000, v75, OS_LOG_TYPE_ERROR, "Received request for unknown jump forward interval %{public}@", v98, 0xCu);
          }

          objc_storeStrong(&v75, 0);
        }

        v31 = [v77 stringValue];
        v30 = [(CPSAudioPlaybackManager *)v97 nowPlayingViewController];
        v28 = [(CPSNowPlayingViewController *)v30 traitCollection];
        v29 = CPUIImageForTransportButton();
        v22 = v29;
        *v94 = v29;
        MEMORY[0x277D82BD8](v28);
        MEMORY[0x277D82BD8](v30);
        MEMORY[0x277D82BD8](v31);
        objc_storeStrong(&v76, 0);
      }

      else
      {
        v27 = [(CPSAudioPlaybackManager *)v97 nowPlayingViewController];
        v25 = [(CPSNowPlayingViewController *)v27 traitCollection];
        v26 = CPUIImageForTransportButton();
        v23 = v26;
        *v94 = v26;
        MEMORY[0x277D82BD8](v25);
        MEMORY[0x277D82BD8](v27);
      }

      objc_storeStrong(&v77, 0);
    }

    else if (v95 == 2)
    {
      v68 = v97;
      v69 = [(CPSAudioPlaybackManager *)v97 nowPlayingViewController];
      v70 = [(CPSAudioPlaybackManager *)v68 nowPlayingViewControllerIsPlaying:?];
      *&v7 = MEMORY[0x277D82BD8](v69).n128_u64[0];
      if (v70)
      {
        v66 = [(CPSAudioPlaybackManager *)v97 lastSnapshot];
        v67 = [(CPUINowPlayingSnapshot *)v66 showsStopButton];
        MEMORY[0x277D82BD8](v66);
        v91 = v67;
        if (v67)
        {
          v90 = CarPlaySupportGeneralLogging();
          v89 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
          {
            log = v90;
            type = v89;
            __os_log_helper_16_0_0(v88);
            _os_log_impl(&dword_242FE8000, log, type, "Showing stop button", v88, 2u);
          }

          objc_storeStrong(&v90, 0);
          v59 = [location[0] transportControlView];
          [v59 setPauseButtonImageName:@"stop.fill"];
          MEMORY[0x277D82BD8](v59);
          v63 = CPUILocalizedStringForKey();
          v102[0] = v63;
          v62 = [MEMORY[0x277CBEA60] arrayWithObjects:v102 count:1];
          v61 = [location[0] transportControlView];
          v60 = [v61 playPauseButton];
          [v60 setAccessibilityUserInputLabels:v62];
          MEMORY[0x277D82BD8](v60);
          MEMORY[0x277D82BD8](v61);
          MEMORY[0x277D82BD8](v62);
          MEMORY[0x277D82BD8](v63);
        }

        else
        {
          v87 = CarPlaySupportGeneralLogging();
          v86 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
          {
            v57 = v87;
            v58 = v86;
            __os_log_helper_16_0_0(v85);
            _os_log_impl(&dword_242FE8000, v57, v58, "Showing pause button", v85, 2u);
          }

          objc_storeStrong(&v87, 0);
          v52 = [location[0] transportControlView];
          [v52 setPauseButtonImageName:@"pause.fill"];
          MEMORY[0x277D82BD8](v52);
          v56 = CPUILocalizedStringForKey();
          v101 = v56;
          v55 = [MEMORY[0x277CBEA60] arrayWithObjects:&v101 count:1];
          v54 = [location[0] transportControlView];
          v53 = [v54 playPauseButton];
          [v53 setAccessibilityUserInputLabels:v55];
          MEMORY[0x277D82BD8](v53);
          MEMORY[0x277D82BD8](v54);
          MEMORY[0x277D82BD8](v55);
          MEMORY[0x277D82BD8](v56);
        }
      }

      else
      {
        v84 = CarPlaySupportGeneralLogging();
        v83 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
        {
          v50 = v84;
          v51 = v83;
          __os_log_helper_16_0_0(v82);
          _os_log_impl(&dword_242FE8000, v50, v51, "Showing play button", v82, 2u);
        }

        objc_storeStrong(&v84, 0);
        v45 = [location[0] transportControlView];
        [v45 setPlayButtonImageName:@"play.fill"];
        MEMORY[0x277D82BD8](v45);
        v49 = CPUILocalizedStringForKey();
        v100 = v49;
        v48 = [MEMORY[0x277CBEA60] arrayWithObjects:&v100 count:1];
        v47 = [location[0] transportControlView];
        v46 = [v47 playPauseButton];
        [v46 setAccessibilityUserInputLabels:v48];
        MEMORY[0x277D82BD8](v46);
        MEMORY[0x277D82BD8](v47);
        MEMORY[0x277D82BD8](v48);
        MEMORY[0x277D82BD8](v49);
      }
    }
  }

  else
  {
    v44 = [(CPSAudioPlaybackManager *)v97 lastSnapshot];
    v81 = [(CPUINowPlayingSnapshot *)v44 jumpBackInterval];
    *&v8 = MEMORY[0x277D82BD8](v44).n128_u64[0];
    if (v81)
    {
      v80 = 0;
      v9 = [MEMORY[0x277CCABB0] numberWithInteger:{-objc_msgSend(v81, "integerValue", v8)}];
      v10 = v81;
      v81 = v9;
      v42 = [MEMORY[0x277CF9160] knownJumpIntervals];
      v43 = [v42 containsObject:v81];
      *&v11 = MEMORY[0x277D82BD8](v42).n128_u64[0];
      if (v43)
      {
        v12 = [v81 stringValue];
        v13 = v80;
        v80 = v12;
        *&v14 = MEMORY[0x277D82BD8](v13).n128_u64[0];
      }

      else
      {
        v79 = CarPlaySupportGeneralLogging();
        v78 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_1_8_66(v99, v81);
          _os_log_error_impl(&dword_242FE8000, v79, v78, "Received request for unknown jump back interval %{public}@", v99, 0xCu);
        }

        objc_storeStrong(&v79, 0);
      }

      v41 = [v81 stringValue];
      v40 = [(CPSAudioPlaybackManager *)v97 nowPlayingViewController];
      v38 = [(CPSNowPlayingViewController *)v40 traitCollection];
      v39 = CPUIImageForTransportButton();
      v15 = v39;
      *v94 = v39;
      MEMORY[0x277D82BD8](v38);
      MEMORY[0x277D82BD8](v40);
      MEMORY[0x277D82BD8](v41);
      objc_storeStrong(&v80, 0);
    }

    else
    {
      v37 = [(CPSAudioPlaybackManager *)v97 nowPlayingViewController];
      v35 = [(CPSNowPlayingViewController *)v37 traitCollection];
      v36 = CPUIImageForTransportButton();
      v16 = v36;
      *v94 = v36;
      MEMORY[0x277D82BD8](v35);
      MEMORY[0x277D82BD8](v37);
    }

    objc_storeStrong(&v81, 0);
  }

  objc_storeStrong(&v93, 0);
  objc_storeStrong(location, 0);
  return 1;
}

- (BOOL)nowPlayingViewController:(id)a3 buttonShouldBeActive:(int64_t)a4
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (a4 == -1)
  {
    goto LABEL_9;
  }

  if (a4)
  {
    if (a4 == 1)
    {
      v5 = [(CPSAudioPlaybackManager *)v9 lastSnapshot];
      v10 = [(CPUINowPlayingSnapshot *)v5 shouldEnableNextButton]& 1;
      MEMORY[0x277D82BD8](v5);
    }

    else
    {
      if (a4 != 2)
      {
LABEL_9:
        v10 = 0;
        goto LABEL_10;
      }

      v10 = 1;
    }
  }

  else
  {
    v6 = [(CPSAudioPlaybackManager *)v9 lastSnapshot];
    v10 = [(CPUINowPlayingSnapshot *)v6 shouldEnableBackButton]& 1;
    MEMORY[0x277D82BD8](v6);
  }

LABEL_10:
  objc_storeStrong(location, 0);
  return v10 & 1;
}

- (BOOL)nowPlayingViewControllerCanShuffle:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(CPSAudioPlaybackManager *)v7 nowPlayingButtonWithClass:objc_opt_class()];
  v5 = v3 != 0;
  MEMORY[0x277D82BD8](v3);
  objc_storeStrong(location, 0);
  return v5;
}

- (BOOL)nowPlayingViewControllerCanRepeat:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(CPSAudioPlaybackManager *)v7 nowPlayingButtonWithClass:objc_opt_class()];
  v5 = v3 != 0;
  MEMORY[0x277D82BD8](v3);
  objc_storeStrong(location, 0);
  return v5;
}

- (BOOL)nowPlayingViewControllerCanShowAddToLibrary:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(CPSAudioPlaybackManager *)v7 nowPlayingButtonWithClass:objc_opt_class()];
  v5 = v3 != 0;
  MEMORY[0x277D82BD8](v3);
  objc_storeStrong(location, 0);
  return v5;
}

- (BOOL)nowPlayingViewControllerCanShowAlbumLink:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = [(CPNowPlayingTemplate *)v6->_template isAlbumArtistButtonEnabled];
  objc_storeStrong(location, 0);
  return v4;
}

- (BOOL)nowPlayingViewControllerCanShowChangePlaybackRate:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(CPSAudioPlaybackManager *)v7 nowPlayingButtonWithClass:objc_opt_class()];
  v5 = v3 != 0;
  MEMORY[0x277D82BD8](v3);
  objc_storeStrong(location, 0);
  return v5;
}

- (BOOL)nowPlayingViewControllerCanShowMore:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(CPSAudioPlaybackManager *)v7 nowPlayingButtonWithClass:objc_opt_class()];
  v5 = v3 != 0;
  MEMORY[0x277D82BD8](v3);
  objc_storeStrong(location, 0);
  return v5;
}

- (BOOL)nowPlayingViewControllerCanShowAlbumArt:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = [(CPSAudioPlaybackManager *)v6 shouldShowAlbumArt];
  objc_storeStrong(location, 0);
  return v4;
}

- (BOOL)nowPlayingViewControllerIsRightHandDrive:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = [(CPSAudioPlaybackManager *)v7 environment];
  v5 = [(CPSTemplateEnvironment *)v4 rightHandDrive];
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(location, 0);
  return v5;
}

- (void)session:(id)a3 didUpdateConfiguration:(id)a4
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = 0;
  objc_storeStrong(&v15, a4);
  v6 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85CD0];
  queue = v6;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __58__CPSAudioPlaybackManager_session_didUpdateConfiguration___block_invoke;
  v12 = &unk_278D910D8;
  v13 = MEMORY[0x277D82BE0](v17);
  v14 = MEMORY[0x277D82BE0](v15);
  dispatch_async(queue, &v8);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

- (void)setPlaceholderTimerActive:(BOOL)a3
{
  v25 = self;
  v24 = a2;
  v23 = a3;
  if ([(NSTimer *)self->_placeholderTimer isValid])
  {
    location = CarPlaySupportGeneralLogging();
    v21 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
    {
      log = location;
      type = v21;
      __os_log_helper_16_0_0(v20);
      _os_log_impl(&dword_242FE8000, log, type, "Cancelling artwork placeholder timer.", v20, 2u);
    }

    objc_storeStrong(&location, 0);
  }

  [(NSTimer *)v25->_placeholderTimer invalidate];
  objc_storeStrong(&v25->_placeholderTimer, 0);
  if (v23)
  {
    v19 = CarPlaySupportGeneralLogging();
    v18 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v19;
      v7 = v18;
      __os_log_helper_16_0_0(v17);
      _os_log_impl(&dword_242FE8000, v6, v7, "Scheduling artwork placeholder timer.", v17, 2u);
    }

    objc_storeStrong(&v19, 0);
    objc_initWeak(&v16, v25);
    v5 = MEMORY[0x277CBEBB8];
    v10 = MEMORY[0x277D85DD0];
    v11 = -1073741824;
    v12 = 0;
    v13 = __53__CPSAudioPlaybackManager_setPlaceholderTimerActive___block_invoke;
    v14 = &unk_278D92C98;
    objc_copyWeak(&v15, &v16);
    v3 = [v5 scheduledTimerWithTimeInterval:0 repeats:&v10 block:2.0];
    placeholderTimer = v25->_placeholderTimer;
    v25->_placeholderTimer = v3;
    MEMORY[0x277D82BD8](placeholderTimer);
    objc_destroyWeak(&v15);
    objc_destroyWeak(&v16);
  }
}

void __53__CPSAudioPlaybackManager_setPlaceholderTimerActive___block_invoke(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9[1] = a1;
  v9[0] = CarPlaySupportGeneralLogging();
  v8 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v9[0], OS_LOG_TYPE_DEFAULT))
  {
    log = v9[0];
    type = v8;
    __os_log_helper_16_0_0(v7);
    _os_log_impl(&dword_242FE8000, log, type, "Artwork placeholder timer fired.", v7, 2u);
  }

  objc_storeStrong(v9, 0);
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  [WeakRetained setFullSizeArtwork:?];
  v2 = [WeakRetained nowPlayingViewController];
  [v2 reloadData];
  MEMORY[0x277D82BD8](v2);
  objc_storeStrong(&WeakRetained, 0);
  objc_storeStrong(location, 0);
}

- (void)nowPlayingManager:(id)a3 didUpdateSnapshot:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v32 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v30 = 0;
  objc_storeStrong(&v30, a4);
  v29 = [v30 bundleIdentifier];
  if (v29)
  {
    if (v30)
    {
      v12 = [(CPSAudioPlaybackManager *)v32 environment];
      v11 = [(CPSTemplateEnvironment *)v12 bundleIdentifier];
      v13 = [v29 isEqualToString:?];
      MEMORY[0x277D82BD8](v11);
      MEMORY[0x277D82BD8](v12);
      if (v13)
      {
        v19 = CarPlaySupportGeneralLogging();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          __os_log_helper_16_2_1_8_64(v33, v29);
          _os_log_impl(&dword_242FE8000, v19, OS_LOG_TYPE_DEFAULT, "Received a now playing update for the current app: %@", v33, 0xCu);
        }

        objc_storeStrong(&v19, 0);
        [(CPSAudioPlaybackManager *)v32 setLastSnapshot:v30];
        v6 = [(CPSAudioPlaybackManager *)v32 lastSnapshot];
        v4 = [(CPUINowPlayingSnapshot *)v6 state]== 2;
        [(CPSAudioPlaybackManager *)v32 setShouldShowPlayState:v4];
        *&v5 = MEMORY[0x277D82BD8](v6).n128_u64[0];
        v7 = [(CPSAudioPlaybackManager *)v32 nowPlayingViewController];
        [(CPSNowPlayingViewController *)v7 reloadData];
        MEMORY[0x277D82BD8](v7);
        v25 = 0;
      }

      else
      {
        v21 = CarPlaySupportGeneralLogging();
        v20 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v10 = [(CPSAudioPlaybackManager *)v32 environment];
          v9 = [(CPSTemplateEnvironment *)v10 bundleIdentifier];
          __os_log_helper_16_2_2_8_66_8_66(v34, v29, v9);
          _os_log_impl(&dword_242FE8000, v21, v20, "Received a now playing update for a different app: %{public}@ vs ours: %{public}@", v34, 0x16u);
          MEMORY[0x277D82BD8](v9);
          MEMORY[0x277D82BD8](v10);
        }

        objc_storeStrong(&v21, 0);
        [(CPSAudioPlaybackManager *)v32 setShouldShowPlayState:0];
        v8 = [(CPSAudioPlaybackManager *)v32 nowPlayingViewController];
        [(CPSNowPlayingViewController *)v8 reloadData];
        MEMORY[0x277D82BD8](v8);
        v25 = 1;
      }
    }

    else
    {
      v24 = CarPlaySupportGeneralLogging();
      v23 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v14 = v24;
        v15 = v23;
        __os_log_helper_16_0_0(v22);
        _os_log_impl(&dword_242FE8000, v14, v15, "Received an empty now playing snapshot.", v22, 2u);
      }

      objc_storeStrong(&v24, 0);
      v25 = 1;
    }
  }

  else
  {
    v28 = CarPlaySupportGeneralLogging();
    v27 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      log = v28;
      type = v27;
      __os_log_helper_16_0_0(v26);
      _os_log_impl(&dword_242FE8000, log, type, "Received a now playing update for an unknown application.", v26, 2u);
    }

    objc_storeStrong(&v28, 0);
    v25 = 1;
  }

  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(location, 0);
}

- (void)nowPlayingManager:(id)a3 didThrottleUpdateForBundleIdentifier:(id)a4
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = 0;
  objc_storeStrong(&v7, a4);
  if (v7)
  {
    v5 = +[CPSAnalytics sharedInstance];
    [(CPSAnalytics *)v5 audioAppMetadataThrottledWithBundleIdentifier:v7];
    MEMORY[0x277D82BD8](v5);
  }

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 postNotificationName:@"CPSAudioManagerDidThrottleUpdateNotification" object:v9];
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (void)nowPlayingManager:(id)a3 willStartLoadingArtworkForCatalog:(id)a4 bundleIdentifier:(id)a5
{
  v19 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v17 = 0;
  objc_storeStrong(&v17, a4);
  v16 = 0;
  objc_storeStrong(&v16, a5);
  v12 = v16;
  v14 = [(CPSAudioPlaybackManager *)v19 environment];
  v13 = [(CPSTemplateEnvironment *)v14 bundleIdentifier];
  v15 = [v12 isEqualToString:?];
  MEMORY[0x277D82BD8](v13);
  *&v5 = MEMORY[0x277D82BD8](v14).n128_u64[0];
  if (v15)
  {
    v8 = [(CPSAudioPlaybackManager *)v19 lastSnapshot];
    v7 = [(CPUINowPlayingSnapshot *)v8 artworkCatalog];
    v9 = [v7 isArtworkVisuallyIdenticalToCatalog:v17];
    MEMORY[0x277D82BD8](v7);
    *&v6 = MEMORY[0x277D82BD8](v8).n128_u64[0];
    if (v9)
    {
      [(CPSAudioPlaybackManager *)v19 setPlaceholderTimerActive:1, v6];
    }
  }

  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
}

- (void)nowPlayingManager:(id)a3 didReceiveArtworkResponse:(id)a4
{
  v52 = *MEMORY[0x277D85DE8];
  v50 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v48 = 0;
  objc_storeStrong(&v48, a4);
  v31 = [(CPSAudioPlaybackManager *)v50 sportsMode];
  *&v4 = MEMORY[0x277D82BD8](v31).n128_u64[0];
  if (v31)
  {
    v47 = 1;
  }

  else
  {
    v28 = [v48 bundleIdentifier];
    v27 = [(CPSAudioPlaybackManager *)v50 environment];
    v26 = [(CPSTemplateEnvironment *)v27 bundleIdentifier];
    v29 = [v28 isEqualToString:?];
    MEMORY[0x277D82BD8](v26);
    MEMORY[0x277D82BD8](v27);
    *&v5 = MEMORY[0x277D82BD8](v28).n128_u64[0];
    if (v29)
    {
      v21 = [(CPSAudioPlaybackManager *)v50 lastSnapshot];
      v20 = [(CPUINowPlayingSnapshot *)v21 artworkCatalog];
      v19 = [v48 artworkCatalog];
      v22 = [v20 isArtworkVisuallyIdenticalToCatalog:?];
      MEMORY[0x277D82BD8](v19);
      MEMORY[0x277D82BD8](v20);
      *&v6 = MEMORY[0x277D82BD8](v21).n128_u64[0];
      if (v22)
      {
        v44 = CarPlaySupportGeneralLogging();
        v43 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          v17 = v44;
          v18 = v43;
          __os_log_helper_16_0_0(v42);
          _os_log_impl(&dword_242FE8000, v17, v18, "Received an artwork update for the current catalog.", v42, 2u);
        }

        objc_storeStrong(&v44, 0);
        [(CPSAudioPlaybackManager *)v50 setPlaceholderTimerActive:0];
        v15 = [v48 artworkImage];
        [(CPSAudioPlaybackManager *)v50 setFullSizeArtwork:?];
        *&v7 = MEMORY[0x277D82BD8](v15).n128_u64[0];
        v16 = [(CPSAudioPlaybackManager *)v50 nowPlayingViewController];
        [(CPSNowPlayingViewController *)v16 reloadData];
        MEMORY[0x277D82BD8](v16);
      }

      else
      {
        v13 = [v48 artworkCatalog];
        v40 = 0;
        v38 = 0;
        v14 = 0;
        if (!v13)
        {
          v41 = [v48 snapshot];
          v40 = 1;
          v39 = [(CPSAudioPlaybackManager *)v50 lastSnapshot];
          v38 = 1;
          v14 = [v41 isEqual:?];
        }

        if (v38)
        {
          MEMORY[0x277D82BD8](v39);
        }

        if (v40)
        {
          MEMORY[0x277D82BD8](v41);
        }

        MEMORY[0x277D82BD8](v13);
        if (v14)
        {
          v37 = CarPlaySupportGeneralLogging();
          v36 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            v11 = v37;
            v12 = v36;
            __os_log_helper_16_0_0(v35);
            _os_log_impl(&dword_242FE8000, v11, v12, "Received empty artwork response; setting placeholder", v35, 2u);
          }

          objc_storeStrong(&v37, 0);
          [(CPSAudioPlaybackManager *)v50 setFullSizeArtwork:0];
          v10 = [(CPSAudioPlaybackManager *)v50 nowPlayingViewController];
          [(CPSNowPlayingViewController *)v10 reloadData];
          MEMORY[0x277D82BD8](v10);
        }

        else
        {
          v34 = CarPlaySupportGeneralLogging();
          v33 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            v8 = v34;
            v9 = v33;
            __os_log_helper_16_0_0(v32);
            _os_log_impl(&dword_242FE8000, v8, v9, "Artwork response is not visually identical to current snapshot; ignoring.", v32, 2u);
          }

          objc_storeStrong(&v34, 0);
        }
      }

      v47 = 0;
    }

    else
    {
      v46 = CarPlaySupportGeneralLogging();
      v45 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        v25 = [v48 bundleIdentifier];
        v24 = [(CPSAudioPlaybackManager *)v50 environment];
        v23 = [(CPSTemplateEnvironment *)v24 bundleIdentifier];
        __os_log_helper_16_2_2_8_66_8_66(v51, v25, v23);
        _os_log_impl(&dword_242FE8000, v46, v45, "Received an artwork update for a different app: %{public}@ vs ours: %{public}@", v51, 0x16u);
        MEMORY[0x277D82BD8](v23);
        MEMORY[0x277D82BD8](v24);
        MEMORY[0x277D82BD8](v25);
      }

      objc_storeStrong(&v46, 0);
      v47 = 1;
    }
  }

  objc_storeStrong(&v48, 0);
  objc_storeStrong(location, 0);
}

- (CPSNowPlayingViewController)nowPlayingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_nowPlayingViewController);

  return WeakRetained;
}

- (CPSTemplateEnvironment)environment
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);

  return WeakRetained;
}

@end