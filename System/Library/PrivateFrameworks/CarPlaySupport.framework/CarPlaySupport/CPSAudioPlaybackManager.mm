@interface CPSAudioPlaybackManager
- ($04B05C73ED6AEEF31C5815932084562D)durationSnapshotForNowPlayingViewController:(SEL)controller;
- (BOOL)nowPlayingViewController:(id)controller buttonShouldBeActive:(int64_t)active;
- (BOOL)nowPlayingViewController:(id)controller shouldDisplayButton:(int64_t)button withImage:(id *)image existingIdentifier:(id)identifier tinted:(BOOL *)tinted;
- (BOOL)nowPlayingViewControllerCanRepeat:(id)repeat;
- (BOOL)nowPlayingViewControllerCanShowAddToLibrary:(id)library;
- (BOOL)nowPlayingViewControllerCanShowAlbumArt:(id)art;
- (BOOL)nowPlayingViewControllerCanShowAlbumLink:(id)link;
- (BOOL)nowPlayingViewControllerCanShowChangePlaybackRate:(id)rate;
- (BOOL)nowPlayingViewControllerCanShowMore:(id)more;
- (BOOL)nowPlayingViewControllerCanShowUpNext:(id)next;
- (BOOL)nowPlayingViewControllerCanShuffle:(id)shuffle;
- (BOOL)nowPlayingViewControllerIsPlaying:(id)playing;
- (BOOL)nowPlayingViewControllerIsRightHandDrive:(id)drive;
- (BOOL)nowPlayingViewControllerIsShowingExplicitTrack:(id)track;
- (CPSAudioPlaybackManager)initWithNowPlayingTemplate:(id)template templateDelegate:(id)delegate environment:(id)environment;
- (CPSNowPlayingViewController)nowPlayingViewController;
- (CPSTemplateEnvironment)environment;
- (id)albumTextForNowPlayingController:(id)controller;
- (id)artistTextForNowPlayingController:(id)controller;
- (id)backgroundArtForNowPlayingController:(id)controller;
- (id)customPlaybackControlButtonsForNowPlayingViewController:(id)controller;
- (id)nowPlayingButtonWithClass:(Class)class;
- (id)nowPlayingButtonWithIdentifier:(id)identifier;
- (id)nowPlayingViewControllerGetPlaybackRate:(id)rate;
- (id)progressBarLocalizedDurationStringForNowPlayingViewController:(id)controller;
- (id)sportsDataForNowPlayingController:(id)controller;
- (id)sportsMode;
- (id)titleForNowPlayingController:(id)controller;
- (id)titleForUpNextInNowPlayingViewController:(id)controller;
- (int64_t)placeholderTypeForNowPlayingViewController:(id)controller;
- (int64_t)repeatTypeForNowPlayingViewController:(id)controller;
- (int64_t)shuffleTypeForNowPlayingViewController:(id)controller;
- (int64_t)videoPlaybackStateForNowPlayingController:(id)controller;
- (void)_updateAlbumArtFromSessionConfiguration:(id)configuration;
- (void)_updateArtworkSizing;
- (void)dealloc;
- (void)nowPlayingManager:(id)manager didReceiveArtworkResponse:(id)response;
- (void)nowPlayingManager:(id)manager didThrottleUpdateForBundleIdentifier:(id)identifier;
- (void)nowPlayingManager:(id)manager didUpdateSnapshot:(id)snapshot;
- (void)nowPlayingManager:(id)manager willStartLoadingArtworkForCatalog:(id)catalog bundleIdentifier:(id)identifier;
- (void)nowPlayingViewController:(id)controller didSelectButton:(id)button;
- (void)nowPlayingViewController:(id)controller didSendAction:(int64_t)action state:(int64_t)state;
- (void)nowPlayingViewControllerAddToLibrary:(id)library;
- (void)nowPlayingViewControllerAlbumArtistButtonTapped:(id)tapped;
- (void)nowPlayingViewControllerChangePlaybackRate:(id)rate;
- (void)nowPlayingViewControllerMore:(id)more;
- (void)nowPlayingViewControllerToggleRepeat:(id)repeat;
- (void)nowPlayingViewControllerToggleShuffle:(id)shuffle;
- (void)nowPlayingViewControllerUpNextButtonTapped:(id)tapped;
- (void)session:(id)session didUpdateConfiguration:(id)configuration;
- (void)setNowPlayingViewController:(id)controller;
- (void)setPlaceholderTimerActive:(BOOL)active;
- (void)updateNowPlayingTemplate:(id)template templateDelegate:(id)delegate;
@end

@implementation CPSAudioPlaybackManager

- (CPSAudioPlaybackManager)initWithNowPlayingTemplate:(id)template templateDelegate:(id)delegate environment:(id)environment
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, template);
  v36 = 0;
  objc_storeStrong(&v36, delegate);
  v35 = 0;
  objc_storeStrong(&v35, environment);
  v5 = selfCopy;
  selfCopy = 0;
  v34.receiver = v5;
  v34.super_class = CPSAudioPlaybackManager;
  v32 = [(CPSAudioPlaybackManager *)&v34 init];
  selfCopy = v32;
  objc_storeStrong(&selfCopy, v32);
  if (v32)
  {
    objc_storeStrong(&selfCopy->_templateDelegate, v36);
    objc_storeStrong(&selfCopy->_template, location[0]);
    objc_storeWeak(&selfCopy->_environment, v35);
    selfCopy->_shouldShowAlbumArt = 1;
    nowPlayingManager = [v35 nowPlayingManager];
    snapshot = [nowPlayingManager snapshot];
    bundleIdentifier = [snapshot bundleIdentifier];
    bundleIdentifier2 = [v35 bundleIdentifier];
    v29 = [bundleIdentifier isEqualToString:?];
    MEMORY[0x277D82BD8](bundleIdentifier2);
    MEMORY[0x277D82BD8](bundleIdentifier);
    v6 = MEMORY[0x277D82BD8](snapshot).n128_u64[0];
    if (v29)
    {
      snapshot2 = [nowPlayingManager snapshot];
      lastSnapshot = selfCopy->_lastSnapshot;
      selfCopy->_lastSnapshot = snapshot2;
      v6 = MEMORY[0x277D82BD8](lastSnapshot).n128_u64[0];
    }

    artwork = [nowPlayingManager artwork];
    bundleIdentifier3 = [artwork bundleIdentifier];
    bundleIdentifier4 = [v35 bundleIdentifier];
    v25 = [bundleIdentifier3 isEqualToString:?];
    MEMORY[0x277D82BD8](bundleIdentifier4);
    MEMORY[0x277D82BD8](bundleIdentifier3);
    *&v9 = MEMORY[0x277D82BD8](artwork).n128_u64[0];
    if (v25)
    {
      artwork2 = [nowPlayingManager artwork];
      artworkImage = [artwork2 artworkImage];
      fullSizeArtwork = selfCopy->_fullSizeArtwork;
      selfCopy->_fullSizeArtwork = artworkImage;
      MEMORY[0x277D82BD8](fullSizeArtwork);
      MEMORY[0x277D82BD8](artwork2);
    }

    selfCopy->_videoPlaybackState = CPUIVideoPlaybackStateForCarPlay();
    [nowPlayingManager addNowPlayingObserver:selfCopy];
    objc_storeStrong(&selfCopy->_nowPlayingManager, nowPlayingManager);
    sessionStatus = [v35 sessionStatus];
    [sessionStatus addSessionObserver:selfCopy];
    *&v12 = MEMORY[0x277D82BD8](sessionStatus).n128_u64[0];
    v17 = selfCopy;
    sessionStatus2 = [v35 sessionStatus];
    currentSession = [sessionStatus2 currentSession];
    configuration = [currentSession configuration];
    [(CPSAudioPlaybackManager *)v17 _updateAlbumArtFromSessionConfiguration:?];
    MEMORY[0x277D82BD8](configuration);
    MEMORY[0x277D82BD8](currentSession);
    *&v13 = MEMORY[0x277D82BD8](sessionStatus2).n128_u64[0];
    [(CPSAudioPlaybackManager *)selfCopy _updateArtworkSizing];
    objc_storeStrong(&nowPlayingManager, 0);
  }

  v15 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v15;
}

- (void)updateNowPlayingTemplate:(id)template templateDelegate:(id)delegate
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, template);
  v12 = 0;
  objc_storeStrong(&v12, delegate);
  sportsMode = [(CPSAudioPlaybackManager *)selfCopy sportsMode];
  objc_storeStrong(&selfCopy->_template, location[0]);
  objc_storeStrong(&selfCopy->_templateDelegate, v12);
  sportsMode2 = [(CPSAudioPlaybackManager *)selfCopy sportsMode];
  v9 = 0;
  LOBYTE(v8) = 0;
  if (sportsMode2)
  {
    sportsMode3 = [(CPSAudioPlaybackManager *)selfCopy sportsMode];
    v9 = 1;
    v8 = [sportsMode isEqual:?] ^ 1;
  }

  if (v9)
  {
    MEMORY[0x277D82BD8](sportsMode3);
  }

  v4 = MEMORY[0x277D82BD8](sportsMode2).n128_u64[0];
  if (v8)
  {
    [(CPSAudioPlaybackManager *)selfCopy setLastSportsData:0, *&v4];
    nowPlayingViewController = [(CPSAudioPlaybackManager *)selfCopy nowPlayingViewController];
    [(CPSNowPlayingViewController *)nowPlayingViewController reloadData];
    v4 = MEMORY[0x277D82BD8](nowPlayingViewController).n128_u64[0];
  }

  [(CPSAudioPlaybackManager *)selfCopy _updateArtworkSizing];
  objc_storeStrong(&sportsMode, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

- (void)setNowPlayingViewController:(id)controller
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  objc_storeWeak(&selfCopy->_nowPlayingViewController, location[0]);
  [(CPSAudioPlaybackManager *)selfCopy _updateArtworkSizing];
  objc_storeStrong(location, 0);
}

- (void)dealloc
{
  selfCopy = self;
  v3 = a2;
  [(CPUINowPlayingManager *)self->_nowPlayingManager removeNowPlayingObserver:self];
  v2.receiver = selfCopy;
  v2.super_class = CPSAudioPlaybackManager;
  [(CPSAudioPlaybackManager *)&v2 dealloc];
}

- (id)sportsMode
{
  template = [(CPSAudioPlaybackManager *)self template];
  nowPlayingMode = [(CPNowPlayingTemplate *)template nowPlayingMode];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  MEMORY[0x277D82BD8](nowPlayingMode);
  *&v2 = MEMORY[0x277D82BD8](template).n128_u64[0];
  if (isKindOfClass)
  {
    template2 = [(CPSAudioPlaybackManager *)self template];
    nowPlayingMode2 = [(CPNowPlayingTemplate *)template2 nowPlayingMode];
    MEMORY[0x277D82BD8](template2);
  }

  else
  {
    nowPlayingMode2 = 0;
  }

  return nowPlayingMode2;
}

- (id)nowPlayingButtonWithClass:(Class)class
{
  v19 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v15 = a2;
  classCopy = class;
  memset(__b, 0, sizeof(__b));
  obj = [(CPNowPlayingTemplate *)selfCopy->_template nowPlayingButtons];
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

- (id)nowPlayingButtonWithIdentifier:(id)identifier
{
  v21 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, identifier);
  memset(__b, 0, sizeof(__b));
  obj = [(CPNowPlayingTemplate *)selfCopy->_template nowPlayingButtons];
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
      identifier = [v16 identifier];
      v7 = [identifier isEqual:location[0]];
      *&v3 = MEMORY[0x277D82BD8](identifier).n128_u64[0];
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

- (void)_updateAlbumArtFromSessionConfiguration:(id)configuration
{
  v16 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, configuration);
  if (location[0])
  {
    v8 = [location[0] nowPlayingAlbumArtMode] == 2;
    if (v8 != selfCopy->_shouldShowAlbumArt)
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
      selfCopy->_shouldShowAlbumArt = v8;
      [(CPSAudioPlaybackManager *)selfCopy _updateArtworkSizing];
      nowPlayingViewController = [(CPSAudioPlaybackManager *)selfCopy nowPlayingViewController];
      [(CPSNowPlayingViewController *)nowPlayingViewController reloadData];
      MEMORY[0x277D82BD8](nowPlayingViewController);
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
    [(CPSAudioPlaybackManager *)selfCopy _updateArtworkSizing];
    v9 = 1;
  }

  objc_storeStrong(location, 0);
}

- (void)_updateArtworkSizing
{
  sportsMode = [(CPSAudioPlaybackManager *)self sportsMode];
  *&v2 = MEMORY[0x277D82BD8](sportsMode).n128_u64[0];
  if (sportsMode)
  {
    nowPlayingManager = [(CPSAudioPlaybackManager *)self nowPlayingManager];
    [(CPUINowPlayingManager *)nowPlayingManager setPreferredArtworkSize:?];
    nowPlayingManager2 = [(CPSAudioPlaybackManager *)self nowPlayingManager];
    [(CPUINowPlayingManager *)nowPlayingManager2 setPreferredArtworkScale:0.0];
    MEMORY[0x277D82BD8](nowPlayingManager2);
  }

  else if ([(CPSAudioPlaybackManager *)self shouldShowAlbumArt])
  {
    nowPlayingViewController = [(CPSAudioPlaybackManager *)self nowPlayingViewController];
    MEMORY[0x277D82BD8](nowPlayingViewController);
    if (nowPlayingViewController)
    {
      nowPlayingViewController2 = [(CPSAudioPlaybackManager *)self nowPlayingViewController];
      view = [(CPSNowPlayingViewController *)nowPlayingViewController2 view];
      traitCollection = [view traitCollection];
      [traitCollection displayScale];
      v26 = v3;
      MEMORY[0x277D82BD8](traitCollection);
      MEMORY[0x277D82BD8](view);
      MEMORY[0x277D82BD8](nowPlayingViewController2);
      if (v26 <= 2.0)
      {
        v22 = 2.0;
      }

      else
      {
        v22 = v26;
      }

      nowPlayingManager3 = [(CPSAudioPlaybackManager *)self nowPlayingManager];
      [(CPUINowPlayingManager *)nowPlayingManager3 setPreferredArtworkScale:v22];
      nowPlayingViewController3 = [(CPSAudioPlaybackManager *)self nowPlayingViewController];
      view2 = [(CPSNowPlayingViewController *)nowPlayingViewController3 view];
      [view2 bounds];
      v18 = v4;
      MEMORY[0x277D82BD8](view2);
      MEMORY[0x277D82BD8](nowPlayingViewController3);
      nowPlayingViewController4 = [(CPSAudioPlaybackManager *)self nowPlayingViewController];
      view3 = [(CPSNowPlayingViewController *)nowPlayingViewController4 view];
      [view3 bounds];
      v21 = v5;
      MEMORY[0x277D82BD8](view3);
      MEMORY[0x277D82BD8](nowPlayingViewController4);
      if (v18 >= v21)
      {
        v14 = v18;
      }

      else
      {
        v14 = v21;
      }

      nowPlayingManager4 = [(CPSAudioPlaybackManager *)self nowPlayingManager];
      [(CPUINowPlayingManager *)nowPlayingManager4 setPreferredArtworkSize:v14];
      MEMORY[0x277D82BD8](nowPlayingManager4);
      nowPlayingManager5 = [(CPSAudioPlaybackManager *)self nowPlayingManager];
      [(CPUINowPlayingManager *)nowPlayingManager5 preferredArtworkSize];
      v13 = v6;
      MEMORY[0x277D82BD8](nowPlayingManager5);
      if (v13 <= 200.0)
      {
        v10 = 200.0;
      }

      else
      {
        v10 = v13;
      }

      nowPlayingManager6 = [(CPSAudioPlaybackManager *)self nowPlayingManager];
      [(CPUINowPlayingManager *)nowPlayingManager6 setPreferredArtworkSize:v10];
      MEMORY[0x277D82BD8](nowPlayingManager6);
    }
  }

  else
  {
    nowPlayingManager7 = [(CPSAudioPlaybackManager *)self nowPlayingManager];
    [(CPUINowPlayingManager *)nowPlayingManager7 setPreferredArtworkSize:?];
    nowPlayingManager8 = [(CPSAudioPlaybackManager *)self nowPlayingManager];
    [(CPUINowPlayingManager *)nowPlayingManager8 setPreferredArtworkScale:0.0];
    MEMORY[0x277D82BD8](nowPlayingManager8);
  }
}

- (id)artistTextForNowPlayingController:(id)controller
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  lastSnapshot = [(CPSAudioPlaybackManager *)selfCopy lastSnapshot];
  artist = [(CPUINowPlayingSnapshot *)lastSnapshot artist];
  MEMORY[0x277D82BD8](lastSnapshot);
  objc_storeStrong(location, 0);

  return artist;
}

- (id)albumTextForNowPlayingController:(id)controller
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  lastSnapshot = [(CPSAudioPlaybackManager *)selfCopy lastSnapshot];
  album = [(CPUINowPlayingSnapshot *)lastSnapshot album];
  MEMORY[0x277D82BD8](lastSnapshot);
  objc_storeStrong(location, 0);

  return album;
}

- (id)titleForNowPlayingController:(id)controller
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  lastSnapshot = [(CPSAudioPlaybackManager *)selfCopy lastSnapshot];
  title = [(CPUINowPlayingSnapshot *)lastSnapshot title];
  MEMORY[0x277D82BD8](lastSnapshot);
  objc_storeStrong(location, 0);

  return title;
}

- (id)backgroundArtForNowPlayingController:(id)controller
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  sportsMode = [(CPSAudioPlaybackManager *)selfCopy sportsMode];
  backgroundArtwork = [sportsMode backgroundArtwork];
  v8 = 0;
  if (backgroundArtwork)
  {
    v3 = MEMORY[0x277D82BE0](backgroundArtwork);
  }

  else
  {
    fullSizeArtwork = [(CPSAudioPlaybackManager *)selfCopy fullSizeArtwork];
    v8 = 1;
    v3 = MEMORY[0x277D82BE0](fullSizeArtwork);
  }

  v12 = v3;
  if (v8)
  {
    MEMORY[0x277D82BD8](fullSizeArtwork);
  }

  MEMORY[0x277D82BD8](backgroundArtwork);
  MEMORY[0x277D82BD8](sportsMode);
  objc_storeStrong(location, 0);
  v4 = v12;

  return v4;
}

- (BOOL)nowPlayingViewControllerIsShowingExplicitTrack:(id)track
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, track);
  sportsMode = [(CPSAudioPlaybackManager *)selfCopy sportsMode];
  *&v3 = MEMORY[0x277D82BD8](sportsMode).n128_u64[0];
  if (sportsMode)
  {
    v10 = 0;
  }

  else
  {
    lastSnapshot = [(CPSAudioPlaybackManager *)selfCopy lastSnapshot];
    song = [(CPUINowPlayingSnapshot *)lastSnapshot song];
    v10 = [song isExplicitSong] & 1;
    MEMORY[0x277D82BD8](song);
    MEMORY[0x277D82BD8](lastSnapshot);
  }

  objc_storeStrong(location, 0);
  return v10 & 1;
}

- (id)sportsDataForNowPlayingController:(id)controller
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  sportsMode = [(CPSAudioPlaybackManager *)selfCopy sportsMode];
  if (sportsMode)
  {
    lastSportsData = [(CPSAudioPlaybackManager *)selfCopy lastSportsData];
    *&v3 = MEMORY[0x277D82BD8](lastSportsData).n128_u64[0];
    if (lastSportsData)
    {
      lastSportsData2 = [(CPSAudioPlaybackManager *)selfCopy lastSportsData];
      v66 = 1;
    }

    else
    {
      v65 = objc_alloc_init(MEMORY[0x277CF9168]);
      leftTeam = [sportsMode leftTeam];
      logo = [leftTeam logo];
      v46Logo = [logo logo];
      v63 = 0;
      v61 = 0;
      v59 = 0;
      v57 = 0;
      if (v46Logo)
      {
        v44 = v46Logo;
      }

      else
      {
        v43 = MEMORY[0x277CF9168];
        leftTeam2 = [sportsMode leftTeam];
        v63 = 1;
        logo2 = [leftTeam2 logo];
        v61 = 1;
        initials = [logo2 initials];
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
        MEMORY[0x277D82BD8](initials);
      }

      if (v61)
      {
        MEMORY[0x277D82BD8](logo2);
      }

      if (v63)
      {
        MEMORY[0x277D82BD8](leftTeam2);
      }

      MEMORY[0x277D82BD8](v46Logo);
      MEMORY[0x277D82BD8](logo);
      rightTeam = [sportsMode rightTeam];
      logo3 = [rightTeam logo];
      v41Logo = [logo3 logo];
      v55 = 0;
      v53 = 0;
      v51 = 0;
      v49 = 0;
      if (v41Logo)
      {
        v39 = v41Logo;
      }

      else
      {
        v38 = MEMORY[0x277CF9168];
        rightTeam2 = [sportsMode rightTeam];
        v55 = 1;
        logo4 = [rightTeam2 logo];
        v53 = 1;
        initials2 = [logo4 initials];
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
        MEMORY[0x277D82BD8](initials2);
      }

      if (v53)
      {
        MEMORY[0x277D82BD8](logo4);
      }

      if (v55)
      {
        MEMORY[0x277D82BD8](rightTeam2);
      }

      MEMORY[0x277D82BD8](v41Logo);
      MEMORY[0x277D82BD8](logo3);
      leftTeam3 = [sportsMode leftTeam];
      [v65 setLeftTeamFavorite:{objc_msgSend(leftTeam3, "isFavorite")}];
      rightTeam3 = [sportsMode rightTeam];
      isFavorite = [rightTeam3 isFavorite];
      [v65 setRightTeamFavorite:isFavorite];
      leftTeam4 = [sportsMode leftTeam];
      eventScore = [leftTeam4 eventScore];
      [v65 setLeftTeamScore:?];
      MEMORY[0x277D82BD8](eventScore);
      rightTeam4 = [sportsMode rightTeam];
      eventScore2 = [rightTeam4 eventScore];
      [v65 setRightTeamScore:?];
      MEMORY[0x277D82BD8](eventScore2);
      leftTeam5 = [sportsMode leftTeam];
      name = [leftTeam5 name];
      [v65 setLeftTeamName:?];
      MEMORY[0x277D82BD8](name);
      rightTeam5 = [sportsMode rightTeam];
      name2 = [rightTeam5 name];
      [v65 setRightTeamName:?];
      MEMORY[0x277D82BD8](name2);
      leftTeam6 = [sportsMode leftTeam];
      teamStandings = [leftTeam6 teamStandings];
      [v65 setLeftTeamStanding:?];
      MEMORY[0x277D82BD8](teamStandings);
      rightTeam6 = [sportsMode rightTeam];
      teamStandings2 = [rightTeam6 teamStandings];
      [v65 setRightTeamStanding:?];
      MEMORY[0x277D82BD8](teamStandings2);
      eventStatus = [sportsMode eventStatus];
      eventClock = [eventStatus eventClock];
      [eventClock timeValue];
      [v65 setTimer:?];
      MEMORY[0x277D82BD8](eventClock);
      eventStatus2 = [sportsMode eventStatus];
      eventClock2 = [eventStatus2 eventClock];
      countsUp = [eventClock2 countsUp];
      [v65 setCountsUp:countsUp];
      MEMORY[0x277D82BD8](eventClock2);
      eventStatus3 = [sportsMode eventStatus];
      eventClock3 = [eventStatus3 eventClock];
      isPaused = [eventClock3 isPaused];
      [v65 setTimerPaused:isPaused];
      MEMORY[0x277D82BD8](eventClock3);
      eventStatus4 = [sportsMode eventStatus];
      eventStatusImage = [eventStatus4 eventStatusImage];
      [v65 setEventStatusImage:?];
      MEMORY[0x277D82BD8](eventStatusImage);
      leftTeam7 = [sportsMode leftTeam];
      possessionIndicator = [leftTeam7 possessionIndicator];
      [v65 setLeftPossessionIndicator:?];
      MEMORY[0x277D82BD8](possessionIndicator);
      rightTeam7 = [sportsMode rightTeam];
      possessionIndicator2 = [rightTeam7 possessionIndicator];
      [v65 setRightPossessionIndicator:?];
      MEMORY[0x277D82BD8](possessionIndicator2);
      eventStatus5 = [sportsMode eventStatus];
      eventStatusText = [eventStatus5 eventStatusText];
      [v65 setEventStatusText:?];
      MEMORY[0x277D82BD8](eventStatusText);
      *&v7 = MEMORY[0x277D82BD8](eventStatus5).n128_u64[0];
      [(CPSAudioPlaybackManager *)selfCopy setLastSportsData:v65, v7];
      lastSportsData2 = MEMORY[0x277D82BE0](v65);
      v66 = 1;
      objc_storeStrong(&v65, 0);
    }
  }

  else
  {
    lastSportsData2 = 0;
    v66 = 1;
  }

  objc_storeStrong(&sportsMode, 0);
  objc_storeStrong(location, 0);
  v8 = lastSportsData2;

  return v8;
}

- ($04B05C73ED6AEEF31C5815932084562D)durationSnapshotForNowPlayingViewController:(SEL)controller
{
  selfCopy = self;
  location[1] = controller;
  location[0] = 0;
  objc_storeStrong(location, a4);
  if (selfCopy->_shouldShowPlayState)
  {
    lastSnapshot = [(CPSAudioPlaybackManager *)selfCopy lastSnapshot];
    if (lastSnapshot)
    {
      [(CPUINowPlayingSnapshot *)lastSnapshot durationSnapshot];
    }

    else
    {
      memset(retstr, 0, sizeof($04B05C73ED6AEEF31C5815932084562D));
    }

    MEMORY[0x277D82BD8](lastSnapshot);
  }

  else
  {
    memset(retstr, 0, sizeof($04B05C73ED6AEEF31C5815932084562D));
    lastSnapshot2 = [(CPSAudioPlaybackManager *)selfCopy lastSnapshot];
    if (lastSnapshot2)
    {
      [(CPUINowPlayingSnapshot *)lastSnapshot2 durationSnapshot];
    }

    else
    {
      memset(retstr, 0, sizeof($04B05C73ED6AEEF31C5815932084562D));
    }

    MEMORY[0x277D82BD8](lastSnapshot2);
    retstr->var5 = 0.0;
  }

  objc_storeStrong(location, 0);
  return result;
}

- (id)progressBarLocalizedDurationStringForNowPlayingViewController:(id)controller
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  lastSnapshot = [(CPSAudioPlaybackManager *)selfCopy lastSnapshot];
  responseItem = [(CPUINowPlayingSnapshot *)lastSnapshot responseItem];
  localizedDurationString = [responseItem localizedDurationString];
  MEMORY[0x277D82BD8](responseItem);
  MEMORY[0x277D82BD8](lastSnapshot);
  objc_storeStrong(location, 0);

  return localizedDurationString;
}

- (BOOL)nowPlayingViewControllerIsPlaying:(id)playing
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, playing);
  shouldShowPlayState = [(CPSAudioPlaybackManager *)selfCopy shouldShowPlayState];
  objc_storeStrong(location, 0);
  return shouldShowPlayState;
}

- (int64_t)shuffleTypeForNowPlayingViewController:(id)controller
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  lastSnapshot = [(CPSAudioPlaybackManager *)selfCopy lastSnapshot];
  tracklist = [(CPUINowPlayingSnapshot *)lastSnapshot tracklist];
  *&v3 = MEMORY[0x277D82BD8](lastSnapshot).n128_u64[0];
  shuffleType = [tracklist shuffleType];
  objc_storeStrong(&tracklist, 0);
  objc_storeStrong(location, 0);
  return shuffleType;
}

- (int64_t)repeatTypeForNowPlayingViewController:(id)controller
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  lastSnapshot = [(CPSAudioPlaybackManager *)selfCopy lastSnapshot];
  tracklist = [(CPUINowPlayingSnapshot *)lastSnapshot tracklist];
  *&v3 = MEMORY[0x277D82BD8](lastSnapshot).n128_u64[0];
  repeatType = [tracklist repeatType];
  objc_storeStrong(&tracklist, 0);
  objc_storeStrong(location, 0);
  return repeatType;
}

- (int64_t)placeholderTypeForNowPlayingViewController:(id)controller
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  lastSnapshot = [(CPSAudioPlaybackManager *)selfCopy lastSnapshot];
  if (lastSnapshot)
  {
    [(CPUINowPlayingSnapshot *)lastSnapshot durationSnapshot];
  }

  else
  {
    memset(__b, 0, sizeof(__b));
  }

  v7 = __b[48];
  *&v3 = MEMORY[0x277D82BD8](lastSnapshot).n128_u64[0];
  if (v7)
  {
    v12 = 4;
  }

  else
  {
    environment = [(CPSAudioPlaybackManager *)selfCopy environment];
    bundleIdentifier = [(CPSTemplateEnvironment *)environment bundleIdentifier];
    v12 = CPUIPlaceholderTypeForBundleIdentifier();
    MEMORY[0x277D82BD8](bundleIdentifier);
    MEMORY[0x277D82BD8](environment);
  }

  objc_storeStrong(location, 0);
  return v12;
}

- (int64_t)videoPlaybackStateForNowPlayingController:(id)controller
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  videoPlaybackState = selfCopy->_videoPlaybackState;
  objc_storeStrong(location, 0);
  return videoPlaybackState;
}

- (id)nowPlayingViewControllerGetPlaybackRate:(id)rate
{
  v33 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, rate);
  lastSnapshot = [(CPSAudioPlaybackManager *)selfCopy lastSnapshot];
  responseItem = [(CPUINowPlayingSnapshot *)lastSnapshot responseItem];
  playbackRateCommand = [responseItem playbackRateCommand];
  MEMORY[0x277D82BD8](responseItem);
  *&v3 = MEMORY[0x277D82BD8](lastSnapshot).n128_u64[0];
  if (playbackRateCommand)
  {
    v12 = MEMORY[0x277CCABB0];
    [playbackRateCommand preferredPlaybackRate];
    v26 = [v12 numberWithFloat:?];
    [v26 floatValue];
    v24 = 0;
    v13 = 0;
    if (v4 == 0.0)
    {
      lastSavedPlaybackRate = [(CPSAudioPlaybackManager *)selfCopy lastSavedPlaybackRate];
      v24 = 1;
      v13 = lastSavedPlaybackRate != 0;
    }

    if (v24)
    {
      MEMORY[0x277D82BD8](lastSavedPlaybackRate);
    }

    if (v13)
    {
      v23 = CarPlaySupportGeneralLogging();
      v22 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        lastSavedPlaybackRate2 = [(CPSAudioPlaybackManager *)selfCopy lastSavedPlaybackRate];
        __os_log_helper_16_2_1_8_64(v32, lastSavedPlaybackRate2);
        _os_log_impl(&dword_242FE8000, v23, v22, "Playing with a playback rate equal to 0x, returning last saved playback rate: %@", v32, 0xCu);
        MEMORY[0x277D82BD8](lastSavedPlaybackRate2);
      }

      objc_storeStrong(&v23, 0);
      lastSavedPlaybackRate3 = [(CPSAudioPlaybackManager *)selfCopy lastSavedPlaybackRate];
      v21 = 1;
    }

    else
    {
      [(CPSAudioPlaybackManager *)selfCopy setLastSavedPlaybackRate:v26];
      lastSavedPlaybackRate3 = MEMORY[0x277D82BE0](v26);
      v21 = 1;
    }

    objc_storeStrong(&v26, 0);
  }

  else
  {
    lastSavedPlaybackRate4 = [(CPSAudioPlaybackManager *)selfCopy lastSavedPlaybackRate];
    MEMORY[0x277D82BD8](lastSavedPlaybackRate4);
    if (lastSavedPlaybackRate4)
    {
      v20 = CarPlaySupportGeneralLogging();
      v19 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        lastSavedPlaybackRate5 = [(CPSAudioPlaybackManager *)selfCopy lastSavedPlaybackRate];
        __os_log_helper_16_2_1_8_64(v31, lastSavedPlaybackRate5);
        _os_log_impl(&dword_242FE8000, v20, v19, "Returning last saved playback rate: %@", v31, 0xCu);
        MEMORY[0x277D82BD8](lastSavedPlaybackRate5);
      }

      objc_storeStrong(&v20, 0);
      lastSavedPlaybackRate3 = [(CPSAudioPlaybackManager *)selfCopy lastSavedPlaybackRate];
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
      lastSavedPlaybackRate3 = MEMORY[0x277D82BE0](&unk_2855C4EC8);
      v21 = 1;
    }
  }

  objc_storeStrong(&playbackRateCommand, 0);
  objc_storeStrong(location, 0);
  v5 = lastSavedPlaybackRate3;

  return v5;
}

- (void)nowPlayingViewControllerAlbumArtistButtonTapped:(id)tapped
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, tapped);
  if (([(CPNowPlayingClientTemplateDelegate *)selfCopy->_templateDelegate conformsToProtocol:&unk_285632888]& 1) != 0)
  {
    [(CPNowPlayingClientTemplateDelegate *)selfCopy->_templateDelegate albumArtistButtonTapped];
  }

  objc_storeStrong(location, 0);
}

- (BOOL)nowPlayingViewControllerCanShowUpNext:(id)next
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, next);
  isUpNextButtonEnabled = [(CPNowPlayingTemplate *)selfCopy->_template isUpNextButtonEnabled];
  objc_storeStrong(location, 0);
  return isUpNextButtonEnabled;
}

- (id)titleForUpNextInNowPlayingViewController:(id)controller
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  upNextTitle = [(CPNowPlayingTemplate *)selfCopy->_template upNextTitle];
  objc_storeStrong(location, 0);

  return upNextTitle;
}

- (void)nowPlayingViewControllerUpNextButtonTapped:(id)tapped
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, tapped);
  if (([(CPNowPlayingClientTemplateDelegate *)selfCopy->_templateDelegate conformsToProtocol:&unk_285632888]& 1) != 0)
  {
    [(CPNowPlayingClientTemplateDelegate *)selfCopy->_templateDelegate upNextButtonTapped];
  }

  objc_storeStrong(location, 0);
}

- (void)nowPlayingViewControllerChangePlaybackRate:(id)rate
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, rate);
  v5 = [(CPSAudioPlaybackManager *)selfCopy nowPlayingButtonWithClass:objc_opt_class()];
  if (v5)
  {
    templateDelegate = selfCopy->_templateDelegate;
    identifier = [v5 identifier];
    [(CPNowPlayingClientTemplateDelegate *)templateDelegate handleActionForControlIdentifier:?];
    MEMORY[0x277D82BD8](identifier);
  }

  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)nowPlayingViewControllerAddToLibrary:(id)library
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, library);
  v5 = [(CPSAudioPlaybackManager *)selfCopy nowPlayingButtonWithClass:objc_opt_class()];
  if (v5)
  {
    templateDelegate = selfCopy->_templateDelegate;
    identifier = [v5 identifier];
    [(CPNowPlayingClientTemplateDelegate *)templateDelegate handleActionForControlIdentifier:?];
    MEMORY[0x277D82BD8](identifier);
  }

  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)nowPlayingViewControllerToggleRepeat:(id)repeat
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, repeat);
  v5 = [(CPSAudioPlaybackManager *)selfCopy nowPlayingButtonWithClass:objc_opt_class()];
  if (v5)
  {
    templateDelegate = selfCopy->_templateDelegate;
    identifier = [v5 identifier];
    [(CPNowPlayingClientTemplateDelegate *)templateDelegate handleActionForControlIdentifier:?];
    MEMORY[0x277D82BD8](identifier);
  }

  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)nowPlayingViewControllerToggleShuffle:(id)shuffle
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, shuffle);
  v5 = [(CPSAudioPlaybackManager *)selfCopy nowPlayingButtonWithClass:objc_opt_class()];
  if (v5)
  {
    templateDelegate = selfCopy->_templateDelegate;
    identifier = [v5 identifier];
    [(CPNowPlayingClientTemplateDelegate *)templateDelegate handleActionForControlIdentifier:?];
    MEMORY[0x277D82BD8](identifier);
  }

  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)nowPlayingViewControllerMore:(id)more
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, more);
  v5 = [(CPSAudioPlaybackManager *)selfCopy nowPlayingButtonWithClass:objc_opt_class()];
  if (v5)
  {
    templateDelegate = selfCopy->_templateDelegate;
    identifier = [v5 identifier];
    [(CPNowPlayingClientTemplateDelegate *)templateDelegate handleActionForControlIdentifier:?];
    MEMORY[0x277D82BD8](identifier);
  }

  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)nowPlayingViewController:(id)controller didSelectButton:(id)button
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v11 = 0;
  objc_storeStrong(&v11, button);
  v8 = selfCopy;
  identifier = [v11 identifier];
  v10 = [(CPSAudioPlaybackManager *)v8 nowPlayingButtonWithIdentifier:?];
  *&v4 = MEMORY[0x277D82BD8](identifier).n128_u64[0];
  if (v10)
  {
    templateDelegate = selfCopy->_templateDelegate;
    identifier2 = [v10 identifier];
    [(CPNowPlayingClientTemplateDelegate *)templateDelegate handleActionForControlIdentifier:?];
    MEMORY[0x277D82BD8](identifier2);
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (id)customPlaybackControlButtonsForNowPlayingViewController:(id)controller
{
  v22 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  array = [MEMORY[0x277CBEB18] array];
  nowPlayingViewController = [(CPSAudioPlaybackManager *)selfCopy nowPlayingViewController];
  playModeControlView = [(CPUINowPlayingViewController *)nowPlayingViewController playModeControlView];
  mediaButtons = [playModeControlView mediaButtons];
  nowPlayingButtons = [(CPNowPlayingTemplate *)selfCopy->_template nowPlayingButtons];
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __83__CPSAudioPlaybackManager_customPlaybackControlButtonsForNowPlayingViewController___block_invoke;
  v12 = &unk_278D92C70;
  v13 = MEMORY[0x277D82BE0](mediaButtons);
  v14 = MEMORY[0x277D82BE0](playModeControlView);
  v15 = MEMORY[0x277D82BE0](array);
  [(NSArray *)nowPlayingButtons enumerateObjectsUsingBlock:&v8];
  MEMORY[0x277D82BD8](nowPlayingButtons);
  oslog = CarPlaySupportGeneralLogging();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v21, array);
    _os_log_impl(&dword_242FE8000, oslog, OS_LOG_TYPE_DEFAULT, "Returning custom media buttons %@", v21, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v4 = MEMORY[0x277D82BE0](array);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&mediaButtons, 0);
  objc_storeStrong(&playModeControlView, 0);
  objc_storeStrong(&array, 0);
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

- (void)nowPlayingViewController:(id)controller didSendAction:(int64_t)action state:(int64_t)state
{
  v87 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  actionCopy = action;
  stateCopy = state;
  v81 = 0;
  if (action != -1)
  {
    if (action)
    {
      if (action == 1)
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
        if (stateCopy == 1)
        {
          [(CPSAudioPlaybackManager *)selfCopy setActionStateHeld:1];
          lastSnapshot = [(CPSAudioPlaybackManager *)selfCopy lastSnapshot];
          v22 = [(CPUINowPlayingSnapshot *)lastSnapshot commandWithType:7];
          v23 = v81;
          v81 = v22;
          MEMORY[0x277D82BD8](v23);
          v5 = MEMORY[0x277D82BD8](lastSnapshot).n128_u64[0];
        }

        else if (stateCopy == 2 && [(CPSAudioPlaybackManager *)selfCopy actionStateHeld])
        {
          [(CPSAudioPlaybackManager *)selfCopy setActionStateHeld:0];
          lastSnapshot2 = [(CPSAudioPlaybackManager *)selfCopy lastSnapshot];
          v24 = [(CPUINowPlayingSnapshot *)lastSnapshot2 commandWithType:9];
          v25 = v81;
          v81 = v24;
          MEMORY[0x277D82BD8](v25);
          v5 = MEMORY[0x277D82BD8](lastSnapshot2).n128_u64[0];
        }

        else
        {
          lastSnapshot3 = [(CPSAudioPlaybackManager *)selfCopy lastSnapshot];
          jumpForwardInterval = [(CPUINowPlayingSnapshot *)lastSnapshot3 jumpForwardInterval];
          MEMORY[0x277D82BD8](jumpForwardInterval);
          *&v26 = MEMORY[0x277D82BD8](lastSnapshot3).n128_u64[0];
          if (jumpForwardInterval)
          {
            lastSnapshot4 = [(CPSAudioPlaybackManager *)selfCopy lastSnapshot];
            v27 = [(CPUINowPlayingSnapshot *)lastSnapshot4 commandWithType:5];
            v28 = v81;
            v81 = v27;
            MEMORY[0x277D82BD8](v28);
            v5 = MEMORY[0x277D82BD8](lastSnapshot4).n128_u64[0];
          }

          else
          {
            lastSnapshot5 = [(CPSAudioPlaybackManager *)selfCopy lastSnapshot];
            v29 = [(CPUINowPlayingSnapshot *)lastSnapshot5 commandWithType:3];
            v30 = v81;
            v81 = v29;
            MEMORY[0x277D82BD8](v30);
            v5 = MEMORY[0x277D82BD8](lastSnapshot5).n128_u64[0];
          }
        }
      }

      else if (action == 2)
      {
        v52 = selfCopy;
        nowPlayingViewController = [(CPSAudioPlaybackManager *)selfCopy nowPlayingViewController];
        v54 = [(CPSAudioPlaybackManager *)v52 nowPlayingViewControllerIsPlaying:?];
        *&v15 = MEMORY[0x277D82BD8](nowPlayingViewController).n128_u64[0];
        if (v54)
        {
          lastSnapshot6 = [(CPSAudioPlaybackManager *)selfCopy lastSnapshot];
          showsStopButton = [(CPUINowPlayingSnapshot *)lastSnapshot6 showsStopButton];
          MEMORY[0x277D82BD8](lastSnapshot6);
          if (showsStopButton)
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
            lastSnapshot7 = [(CPSAudioPlaybackManager *)selfCopy lastSnapshot];
            v16 = [(CPUINowPlayingSnapshot *)lastSnapshot7 commandWithType:0];
            v17 = v81;
            v81 = v16;
            MEMORY[0x277D82BD8](v17);
            v5 = MEMORY[0x277D82BD8](lastSnapshot7).n128_u64[0];
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
            lastSnapshot8 = [(CPSAudioPlaybackManager *)selfCopy lastSnapshot];
            v18 = [(CPUINowPlayingSnapshot *)lastSnapshot8 commandWithType:2];
            v19 = v81;
            v81 = v18;
            MEMORY[0x277D82BD8](v19);
            v5 = MEMORY[0x277D82BD8](lastSnapshot8).n128_u64[0];
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
          lastSnapshot9 = [(CPSAudioPlaybackManager *)selfCopy lastSnapshot];
          v20 = [(CPUINowPlayingSnapshot *)lastSnapshot9 commandWithType:1];
          v21 = v81;
          v81 = v20;
          MEMORY[0x277D82BD8](v21);
          v5 = MEMORY[0x277D82BD8](lastSnapshot9).n128_u64[0];
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
      if (stateCopy == 1)
      {
        [(CPSAudioPlaybackManager *)selfCopy setActionStateHeld:1];
        lastSnapshot10 = [(CPSAudioPlaybackManager *)selfCopy lastSnapshot];
        v6 = [(CPUINowPlayingSnapshot *)lastSnapshot10 commandWithType:8];
        v7 = v81;
        v81 = v6;
        MEMORY[0x277D82BD8](v7);
        v5 = MEMORY[0x277D82BD8](lastSnapshot10).n128_u64[0];
      }

      else if (stateCopy == 2 && [(CPSAudioPlaybackManager *)selfCopy actionStateHeld])
      {
        [(CPSAudioPlaybackManager *)selfCopy setActionStateHeld:0];
        lastSnapshot11 = [(CPSAudioPlaybackManager *)selfCopy lastSnapshot];
        v8 = [(CPUINowPlayingSnapshot *)lastSnapshot11 commandWithType:9];
        v9 = v81;
        v81 = v8;
        MEMORY[0x277D82BD8](v9);
        v5 = MEMORY[0x277D82BD8](lastSnapshot11).n128_u64[0];
      }

      else
      {
        lastSnapshot12 = [(CPSAudioPlaybackManager *)selfCopy lastSnapshot];
        jumpBackInterval = [(CPUINowPlayingSnapshot *)lastSnapshot12 jumpBackInterval];
        MEMORY[0x277D82BD8](jumpBackInterval);
        *&v10 = MEMORY[0x277D82BD8](lastSnapshot12).n128_u64[0];
        if (jumpBackInterval)
        {
          lastSnapshot13 = [(CPSAudioPlaybackManager *)selfCopy lastSnapshot];
          v11 = [(CPUINowPlayingSnapshot *)lastSnapshot13 commandWithType:6];
          v12 = v81;
          v81 = v11;
          MEMORY[0x277D82BD8](v12);
          v5 = MEMORY[0x277D82BD8](lastSnapshot13).n128_u64[0];
        }

        else
        {
          lastSnapshot14 = [(CPSAudioPlaybackManager *)selfCopy lastSnapshot];
          v13 = [(CPUINowPlayingSnapshot *)lastSnapshot14 commandWithType:4];
          v14 = v81;
          v81 = v13;
          MEMORY[0x277D82BD8](v14);
          v5 = MEMORY[0x277D82BD8](lastSnapshot14).n128_u64[0];
        }
      }
    }
  }

  if (v81)
  {
    nowPlayingManager = [(CPSAudioPlaybackManager *)selfCopy nowPlayingManager];
    [(CPUINowPlayingManager *)nowPlayingManager performCommandRequest:v81 completion:0];
    MEMORY[0x277D82BD8](nowPlayingManager);
  }

  else
  {
    v65 = CarPlaySupportGeneralLogging();
    if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
    {
      v31 = [MEMORY[0x277CCABB0] numberWithInteger:actionCopy];
      __os_log_helper_16_2_1_8_64(v86, v31);
      _os_log_error_impl(&dword_242FE8000, v65, OS_LOG_TYPE_ERROR, "No available remote command for action %@", v86, 0xCu);
      MEMORY[0x277D82BD8](v31);
    }

    objc_storeStrong(&v65, 0);
  }

  objc_storeStrong(&v81, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)nowPlayingViewController:(id)controller shouldDisplayButton:(int64_t)button withImage:(id *)image existingIdentifier:(id)identifier tinted:(BOOL *)tinted
{
  v102[1] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  buttonCopy = button;
  imageCopy = image;
  v93 = 0;
  objc_storeStrong(&v93, identifier);
  tintedCopy = tinted;
  if (buttonCopy)
  {
    if (buttonCopy == 1)
    {
      lastSnapshot = [(CPSAudioPlaybackManager *)selfCopy lastSnapshot];
      jumpForwardInterval = [(CPUINowPlayingSnapshot *)lastSnapshot jumpForwardInterval];
      *&v17 = MEMORY[0x277D82BD8](lastSnapshot).n128_u64[0];
      if (jumpForwardInterval)
      {
        v76 = 0;
        knownJumpIntervals = [MEMORY[0x277CF9160] knownJumpIntervals];
        v33 = [knownJumpIntervals containsObject:jumpForwardInterval];
        *&v18 = MEMORY[0x277D82BD8](knownJumpIntervals).n128_u64[0];
        if (v33)
        {
          stringValue = [jumpForwardInterval stringValue];
          v20 = v76;
          v76 = stringValue;
          *&v21 = MEMORY[0x277D82BD8](v20).n128_u64[0];
        }

        else
        {
          v75 = CarPlaySupportGeneralLogging();
          if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
          {
            __os_log_helper_16_2_1_8_66(v98, jumpForwardInterval);
            _os_log_error_impl(&dword_242FE8000, v75, OS_LOG_TYPE_ERROR, "Received request for unknown jump forward interval %{public}@", v98, 0xCu);
          }

          objc_storeStrong(&v75, 0);
        }

        stringValue2 = [jumpForwardInterval stringValue];
        nowPlayingViewController = [(CPSAudioPlaybackManager *)selfCopy nowPlayingViewController];
        traitCollection = [(CPSNowPlayingViewController *)nowPlayingViewController traitCollection];
        v29 = CPUIImageForTransportButton();
        v22 = v29;
        *imageCopy = v29;
        MEMORY[0x277D82BD8](traitCollection);
        MEMORY[0x277D82BD8](nowPlayingViewController);
        MEMORY[0x277D82BD8](stringValue2);
        objc_storeStrong(&v76, 0);
      }

      else
      {
        nowPlayingViewController2 = [(CPSAudioPlaybackManager *)selfCopy nowPlayingViewController];
        traitCollection2 = [(CPSNowPlayingViewController *)nowPlayingViewController2 traitCollection];
        v26 = CPUIImageForTransportButton();
        v23 = v26;
        *imageCopy = v26;
        MEMORY[0x277D82BD8](traitCollection2);
        MEMORY[0x277D82BD8](nowPlayingViewController2);
      }

      objc_storeStrong(&jumpForwardInterval, 0);
    }

    else if (buttonCopy == 2)
    {
      v68 = selfCopy;
      nowPlayingViewController3 = [(CPSAudioPlaybackManager *)selfCopy nowPlayingViewController];
      v70 = [(CPSAudioPlaybackManager *)v68 nowPlayingViewControllerIsPlaying:?];
      *&v7 = MEMORY[0x277D82BD8](nowPlayingViewController3).n128_u64[0];
      if (v70)
      {
        lastSnapshot2 = [(CPSAudioPlaybackManager *)selfCopy lastSnapshot];
        showsStopButton = [(CPUINowPlayingSnapshot *)lastSnapshot2 showsStopButton];
        MEMORY[0x277D82BD8](lastSnapshot2);
        v91 = showsStopButton;
        if (showsStopButton)
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
          transportControlView = [location[0] transportControlView];
          [transportControlView setPauseButtonImageName:@"stop.fill"];
          MEMORY[0x277D82BD8](transportControlView);
          v63 = CPUILocalizedStringForKey();
          v102[0] = v63;
          v62 = [MEMORY[0x277CBEA60] arrayWithObjects:v102 count:1];
          transportControlView2 = [location[0] transportControlView];
          playPauseButton = [transportControlView2 playPauseButton];
          [playPauseButton setAccessibilityUserInputLabels:v62];
          MEMORY[0x277D82BD8](playPauseButton);
          MEMORY[0x277D82BD8](transportControlView2);
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
          transportControlView3 = [location[0] transportControlView];
          [transportControlView3 setPauseButtonImageName:@"pause.fill"];
          MEMORY[0x277D82BD8](transportControlView3);
          v56 = CPUILocalizedStringForKey();
          v101 = v56;
          v55 = [MEMORY[0x277CBEA60] arrayWithObjects:&v101 count:1];
          transportControlView4 = [location[0] transportControlView];
          playPauseButton2 = [transportControlView4 playPauseButton];
          [playPauseButton2 setAccessibilityUserInputLabels:v55];
          MEMORY[0x277D82BD8](playPauseButton2);
          MEMORY[0x277D82BD8](transportControlView4);
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
        transportControlView5 = [location[0] transportControlView];
        [transportControlView5 setPlayButtonImageName:@"play.fill"];
        MEMORY[0x277D82BD8](transportControlView5);
        v49 = CPUILocalizedStringForKey();
        v100 = v49;
        v48 = [MEMORY[0x277CBEA60] arrayWithObjects:&v100 count:1];
        transportControlView6 = [location[0] transportControlView];
        playPauseButton3 = [transportControlView6 playPauseButton];
        [playPauseButton3 setAccessibilityUserInputLabels:v48];
        MEMORY[0x277D82BD8](playPauseButton3);
        MEMORY[0x277D82BD8](transportControlView6);
        MEMORY[0x277D82BD8](v48);
        MEMORY[0x277D82BD8](v49);
      }
    }
  }

  else
  {
    lastSnapshot3 = [(CPSAudioPlaybackManager *)selfCopy lastSnapshot];
    jumpBackInterval = [(CPUINowPlayingSnapshot *)lastSnapshot3 jumpBackInterval];
    *&v8 = MEMORY[0x277D82BD8](lastSnapshot3).n128_u64[0];
    if (jumpBackInterval)
    {
      v80 = 0;
      v9 = [MEMORY[0x277CCABB0] numberWithInteger:{-objc_msgSend(jumpBackInterval, "integerValue", v8)}];
      v10 = jumpBackInterval;
      jumpBackInterval = v9;
      knownJumpIntervals2 = [MEMORY[0x277CF9160] knownJumpIntervals];
      v43 = [knownJumpIntervals2 containsObject:jumpBackInterval];
      *&v11 = MEMORY[0x277D82BD8](knownJumpIntervals2).n128_u64[0];
      if (v43)
      {
        stringValue3 = [jumpBackInterval stringValue];
        v13 = v80;
        v80 = stringValue3;
        *&v14 = MEMORY[0x277D82BD8](v13).n128_u64[0];
      }

      else
      {
        v79 = CarPlaySupportGeneralLogging();
        v78 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_1_8_66(v99, jumpBackInterval);
          _os_log_error_impl(&dword_242FE8000, v79, v78, "Received request for unknown jump back interval %{public}@", v99, 0xCu);
        }

        objc_storeStrong(&v79, 0);
      }

      stringValue4 = [jumpBackInterval stringValue];
      nowPlayingViewController4 = [(CPSAudioPlaybackManager *)selfCopy nowPlayingViewController];
      traitCollection3 = [(CPSNowPlayingViewController *)nowPlayingViewController4 traitCollection];
      v39 = CPUIImageForTransportButton();
      v15 = v39;
      *imageCopy = v39;
      MEMORY[0x277D82BD8](traitCollection3);
      MEMORY[0x277D82BD8](nowPlayingViewController4);
      MEMORY[0x277D82BD8](stringValue4);
      objc_storeStrong(&v80, 0);
    }

    else
    {
      nowPlayingViewController5 = [(CPSAudioPlaybackManager *)selfCopy nowPlayingViewController];
      traitCollection4 = [(CPSNowPlayingViewController *)nowPlayingViewController5 traitCollection];
      v36 = CPUIImageForTransportButton();
      v16 = v36;
      *imageCopy = v36;
      MEMORY[0x277D82BD8](traitCollection4);
      MEMORY[0x277D82BD8](nowPlayingViewController5);
    }

    objc_storeStrong(&jumpBackInterval, 0);
  }

  objc_storeStrong(&v93, 0);
  objc_storeStrong(location, 0);
  return 1;
}

- (BOOL)nowPlayingViewController:(id)controller buttonShouldBeActive:(int64_t)active
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  if (active == -1)
  {
    goto LABEL_9;
  }

  if (active)
  {
    if (active == 1)
    {
      lastSnapshot = [(CPSAudioPlaybackManager *)selfCopy lastSnapshot];
      v10 = [(CPUINowPlayingSnapshot *)lastSnapshot shouldEnableNextButton]& 1;
      MEMORY[0x277D82BD8](lastSnapshot);
    }

    else
    {
      if (active != 2)
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
    lastSnapshot2 = [(CPSAudioPlaybackManager *)selfCopy lastSnapshot];
    v10 = [(CPUINowPlayingSnapshot *)lastSnapshot2 shouldEnableBackButton]& 1;
    MEMORY[0x277D82BD8](lastSnapshot2);
  }

LABEL_10:
  objc_storeStrong(location, 0);
  return v10 & 1;
}

- (BOOL)nowPlayingViewControllerCanShuffle:(id)shuffle
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, shuffle);
  v3 = [(CPSAudioPlaybackManager *)selfCopy nowPlayingButtonWithClass:objc_opt_class()];
  v5 = v3 != 0;
  MEMORY[0x277D82BD8](v3);
  objc_storeStrong(location, 0);
  return v5;
}

- (BOOL)nowPlayingViewControllerCanRepeat:(id)repeat
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, repeat);
  v3 = [(CPSAudioPlaybackManager *)selfCopy nowPlayingButtonWithClass:objc_opt_class()];
  v5 = v3 != 0;
  MEMORY[0x277D82BD8](v3);
  objc_storeStrong(location, 0);
  return v5;
}

- (BOOL)nowPlayingViewControllerCanShowAddToLibrary:(id)library
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, library);
  v3 = [(CPSAudioPlaybackManager *)selfCopy nowPlayingButtonWithClass:objc_opt_class()];
  v5 = v3 != 0;
  MEMORY[0x277D82BD8](v3);
  objc_storeStrong(location, 0);
  return v5;
}

- (BOOL)nowPlayingViewControllerCanShowAlbumLink:(id)link
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, link);
  isAlbumArtistButtonEnabled = [(CPNowPlayingTemplate *)selfCopy->_template isAlbumArtistButtonEnabled];
  objc_storeStrong(location, 0);
  return isAlbumArtistButtonEnabled;
}

- (BOOL)nowPlayingViewControllerCanShowChangePlaybackRate:(id)rate
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, rate);
  v3 = [(CPSAudioPlaybackManager *)selfCopy nowPlayingButtonWithClass:objc_opt_class()];
  v5 = v3 != 0;
  MEMORY[0x277D82BD8](v3);
  objc_storeStrong(location, 0);
  return v5;
}

- (BOOL)nowPlayingViewControllerCanShowMore:(id)more
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, more);
  v3 = [(CPSAudioPlaybackManager *)selfCopy nowPlayingButtonWithClass:objc_opt_class()];
  v5 = v3 != 0;
  MEMORY[0x277D82BD8](v3);
  objc_storeStrong(location, 0);
  return v5;
}

- (BOOL)nowPlayingViewControllerCanShowAlbumArt:(id)art
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, art);
  shouldShowAlbumArt = [(CPSAudioPlaybackManager *)selfCopy shouldShowAlbumArt];
  objc_storeStrong(location, 0);
  return shouldShowAlbumArt;
}

- (BOOL)nowPlayingViewControllerIsRightHandDrive:(id)drive
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, drive);
  environment = [(CPSAudioPlaybackManager *)selfCopy environment];
  rightHandDrive = [(CPSTemplateEnvironment *)environment rightHandDrive];
  MEMORY[0x277D82BD8](environment);
  objc_storeStrong(location, 0);
  return rightHandDrive;
}

- (void)session:(id)session didUpdateConfiguration:(id)configuration
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, session);
  v15 = 0;
  objc_storeStrong(&v15, configuration);
  v6 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85CD0];
  queue = v6;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __58__CPSAudioPlaybackManager_session_didUpdateConfiguration___block_invoke;
  v12 = &unk_278D910D8;
  v13 = MEMORY[0x277D82BE0](selfCopy);
  v14 = MEMORY[0x277D82BE0](v15);
  dispatch_async(queue, &v8);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

- (void)setPlaceholderTimerActive:(BOOL)active
{
  selfCopy = self;
  v24 = a2;
  activeCopy = active;
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

  [(NSTimer *)selfCopy->_placeholderTimer invalidate];
  objc_storeStrong(&selfCopy->_placeholderTimer, 0);
  if (activeCopy)
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
    objc_initWeak(&v16, selfCopy);
    v5 = MEMORY[0x277CBEBB8];
    v10 = MEMORY[0x277D85DD0];
    v11 = -1073741824;
    v12 = 0;
    v13 = __53__CPSAudioPlaybackManager_setPlaceholderTimerActive___block_invoke;
    v14 = &unk_278D92C98;
    objc_copyWeak(&v15, &v16);
    v3 = [v5 scheduledTimerWithTimeInterval:0 repeats:&v10 block:2.0];
    placeholderTimer = selfCopy->_placeholderTimer;
    selfCopy->_placeholderTimer = v3;
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

- (void)nowPlayingManager:(id)manager didUpdateSnapshot:(id)snapshot
{
  v35 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, manager);
  v30 = 0;
  objc_storeStrong(&v30, snapshot);
  bundleIdentifier = [v30 bundleIdentifier];
  if (bundleIdentifier)
  {
    if (v30)
    {
      environment = [(CPSAudioPlaybackManager *)selfCopy environment];
      bundleIdentifier2 = [(CPSTemplateEnvironment *)environment bundleIdentifier];
      v13 = [bundleIdentifier isEqualToString:?];
      MEMORY[0x277D82BD8](bundleIdentifier2);
      MEMORY[0x277D82BD8](environment);
      if (v13)
      {
        v19 = CarPlaySupportGeneralLogging();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          __os_log_helper_16_2_1_8_64(v33, bundleIdentifier);
          _os_log_impl(&dword_242FE8000, v19, OS_LOG_TYPE_DEFAULT, "Received a now playing update for the current app: %@", v33, 0xCu);
        }

        objc_storeStrong(&v19, 0);
        [(CPSAudioPlaybackManager *)selfCopy setLastSnapshot:v30];
        lastSnapshot = [(CPSAudioPlaybackManager *)selfCopy lastSnapshot];
        v4 = [(CPUINowPlayingSnapshot *)lastSnapshot state]== 2;
        [(CPSAudioPlaybackManager *)selfCopy setShouldShowPlayState:v4];
        *&v5 = MEMORY[0x277D82BD8](lastSnapshot).n128_u64[0];
        nowPlayingViewController = [(CPSAudioPlaybackManager *)selfCopy nowPlayingViewController];
        [(CPSNowPlayingViewController *)nowPlayingViewController reloadData];
        MEMORY[0x277D82BD8](nowPlayingViewController);
        v25 = 0;
      }

      else
      {
        v21 = CarPlaySupportGeneralLogging();
        v20 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          environment2 = [(CPSAudioPlaybackManager *)selfCopy environment];
          bundleIdentifier3 = [(CPSTemplateEnvironment *)environment2 bundleIdentifier];
          __os_log_helper_16_2_2_8_66_8_66(v34, bundleIdentifier, bundleIdentifier3);
          _os_log_impl(&dword_242FE8000, v21, v20, "Received a now playing update for a different app: %{public}@ vs ours: %{public}@", v34, 0x16u);
          MEMORY[0x277D82BD8](bundleIdentifier3);
          MEMORY[0x277D82BD8](environment2);
        }

        objc_storeStrong(&v21, 0);
        [(CPSAudioPlaybackManager *)selfCopy setShouldShowPlayState:0];
        nowPlayingViewController2 = [(CPSAudioPlaybackManager *)selfCopy nowPlayingViewController];
        [(CPSNowPlayingViewController *)nowPlayingViewController2 reloadData];
        MEMORY[0x277D82BD8](nowPlayingViewController2);
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

  objc_storeStrong(&bundleIdentifier, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(location, 0);
}

- (void)nowPlayingManager:(id)manager didThrottleUpdateForBundleIdentifier:(id)identifier
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, manager);
  v7 = 0;
  objc_storeStrong(&v7, identifier);
  if (v7)
  {
    v5 = +[CPSAnalytics sharedInstance];
    [(CPSAnalytics *)v5 audioAppMetadataThrottledWithBundleIdentifier:v7];
    MEMORY[0x277D82BD8](v5);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"CPSAudioManagerDidThrottleUpdateNotification" object:selfCopy];
  MEMORY[0x277D82BD8](defaultCenter);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (void)nowPlayingManager:(id)manager willStartLoadingArtworkForCatalog:(id)catalog bundleIdentifier:(id)identifier
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, manager);
  v17 = 0;
  objc_storeStrong(&v17, catalog);
  v16 = 0;
  objc_storeStrong(&v16, identifier);
  v12 = v16;
  environment = [(CPSAudioPlaybackManager *)selfCopy environment];
  bundleIdentifier = [(CPSTemplateEnvironment *)environment bundleIdentifier];
  v15 = [v12 isEqualToString:?];
  MEMORY[0x277D82BD8](bundleIdentifier);
  *&v5 = MEMORY[0x277D82BD8](environment).n128_u64[0];
  if (v15)
  {
    lastSnapshot = [(CPSAudioPlaybackManager *)selfCopy lastSnapshot];
    artworkCatalog = [(CPUINowPlayingSnapshot *)lastSnapshot artworkCatalog];
    v9 = [artworkCatalog isArtworkVisuallyIdenticalToCatalog:v17];
    MEMORY[0x277D82BD8](artworkCatalog);
    *&v6 = MEMORY[0x277D82BD8](lastSnapshot).n128_u64[0];
    if (v9)
    {
      [(CPSAudioPlaybackManager *)selfCopy setPlaceholderTimerActive:1, v6];
    }
  }

  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
}

- (void)nowPlayingManager:(id)manager didReceiveArtworkResponse:(id)response
{
  v52 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, manager);
  v48 = 0;
  objc_storeStrong(&v48, response);
  sportsMode = [(CPSAudioPlaybackManager *)selfCopy sportsMode];
  *&v4 = MEMORY[0x277D82BD8](sportsMode).n128_u64[0];
  if (sportsMode)
  {
    v47 = 1;
  }

  else
  {
    bundleIdentifier = [v48 bundleIdentifier];
    environment = [(CPSAudioPlaybackManager *)selfCopy environment];
    bundleIdentifier2 = [(CPSTemplateEnvironment *)environment bundleIdentifier];
    v29 = [bundleIdentifier isEqualToString:?];
    MEMORY[0x277D82BD8](bundleIdentifier2);
    MEMORY[0x277D82BD8](environment);
    *&v5 = MEMORY[0x277D82BD8](bundleIdentifier).n128_u64[0];
    if (v29)
    {
      lastSnapshot = [(CPSAudioPlaybackManager *)selfCopy lastSnapshot];
      artworkCatalog = [(CPUINowPlayingSnapshot *)lastSnapshot artworkCatalog];
      artworkCatalog2 = [v48 artworkCatalog];
      v22 = [artworkCatalog isArtworkVisuallyIdenticalToCatalog:?];
      MEMORY[0x277D82BD8](artworkCatalog2);
      MEMORY[0x277D82BD8](artworkCatalog);
      *&v6 = MEMORY[0x277D82BD8](lastSnapshot).n128_u64[0];
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
        [(CPSAudioPlaybackManager *)selfCopy setPlaceholderTimerActive:0];
        artworkImage = [v48 artworkImage];
        [(CPSAudioPlaybackManager *)selfCopy setFullSizeArtwork:?];
        *&v7 = MEMORY[0x277D82BD8](artworkImage).n128_u64[0];
        nowPlayingViewController = [(CPSAudioPlaybackManager *)selfCopy nowPlayingViewController];
        [(CPSNowPlayingViewController *)nowPlayingViewController reloadData];
        MEMORY[0x277D82BD8](nowPlayingViewController);
      }

      else
      {
        artworkCatalog3 = [v48 artworkCatalog];
        v40 = 0;
        v38 = 0;
        v14 = 0;
        if (!artworkCatalog3)
        {
          snapshot = [v48 snapshot];
          v40 = 1;
          lastSnapshot2 = [(CPSAudioPlaybackManager *)selfCopy lastSnapshot];
          v38 = 1;
          v14 = [snapshot isEqual:?];
        }

        if (v38)
        {
          MEMORY[0x277D82BD8](lastSnapshot2);
        }

        if (v40)
        {
          MEMORY[0x277D82BD8](snapshot);
        }

        MEMORY[0x277D82BD8](artworkCatalog3);
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
          [(CPSAudioPlaybackManager *)selfCopy setFullSizeArtwork:0];
          nowPlayingViewController2 = [(CPSAudioPlaybackManager *)selfCopy nowPlayingViewController];
          [(CPSNowPlayingViewController *)nowPlayingViewController2 reloadData];
          MEMORY[0x277D82BD8](nowPlayingViewController2);
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
        bundleIdentifier3 = [v48 bundleIdentifier];
        environment2 = [(CPSAudioPlaybackManager *)selfCopy environment];
        bundleIdentifier4 = [(CPSTemplateEnvironment *)environment2 bundleIdentifier];
        __os_log_helper_16_2_2_8_66_8_66(v51, bundleIdentifier3, bundleIdentifier4);
        _os_log_impl(&dword_242FE8000, v46, v45, "Received an artwork update for a different app: %{public}@ vs ours: %{public}@", v51, 0x16u);
        MEMORY[0x277D82BD8](bundleIdentifier4);
        MEMORY[0x277D82BD8](environment2);
        MEMORY[0x277D82BD8](bundleIdentifier3);
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