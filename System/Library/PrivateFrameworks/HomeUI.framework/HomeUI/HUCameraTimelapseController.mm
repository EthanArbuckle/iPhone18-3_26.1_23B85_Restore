@interface HUCameraTimelapseController
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)cmTimeFromDate:(SEL)date;
- (BOOL)canSeekWithClip:(id)clip;
- (HUCameraTimelapseController)initWithCameraProfile:(id)profile;
- (id)playerItemForURL:(id)l;
- (void)_fallbackToHighQualityClip:(id)clip;
- (void)_hideAllTimelapseLayers;
- (void)_loadPlayerForTimelapseClip:(id)clip atLocation:(id)location;
- (void)_loadPlayerFromLocation:(id)location;
- (void)_showOnlyImageLayer;
- (void)_showOnlyPlayerLayer;
- (void)_updateTimelapseClip:(id)clip withHighQualityClip:(id)qualityClip;
- (void)actuallySeekToTime;
- (void)dealloc;
- (void)didDownloadVideoFileForClip:(id)clip toURL:(id)l;
- (void)failedToDownloadVideoFileForClip:(id)clip;
- (void)foundVideoFileForClip:(id)clip atURL:(id)l;
- (void)hideAllViews;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)resetForNewCamera;
- (void)seekToDate:(id)date;
- (void)setChaseTime:(id *)time;
- (void)setTimelapseVisibility:(BOOL)visibility;
- (void)trySeekToChaseTime;
- (void)updatePlaceholderContent;
- (void)updateToPlaybackPosition:(id)position forHighQualityClip:(id)clip;
- (void)updateVideoBounds:(CGRect)bounds;
@end

@implementation HUCameraTimelapseController

- (HUCameraTimelapseController)initWithCameraProfile:(id)profile
{
  profileCopy = profile;
  v19.receiver = self;
  v19.super_class = HUCameraTimelapseController;
  v6 = [(HUCameraTimelapseController *)&v19 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_cameraProfile, profile);
    v8 = objc_alloc_init(MEMORY[0x277CE6598]);
    player = v7->_player;
    v7->_player = v8;

    [(AVPlayer *)v7->_player addObserver:v7 forKeyPath:@"status" options:0 context:HUCameraTimelapseControllerContext];
    v10 = [MEMORY[0x277CE65D8] playerLayerWithPlayer:v7->_player];
    playerLayer = v7->_playerLayer;
    v7->_playerLayer = v10;

    v12 = objc_alloc_init(MEMORY[0x277CD9ED0]);
    imageLayer = v7->_imageLayer;
    v7->_imageLayer = v12;

    [(HUCameraTimelapseController *)v7 _hideAllTimelapseLayers];
    v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
    cachedVideos = v7->_cachedVideos;
    v7->_cachedVideos = v14;

    v16 = objc_alloc_init(MEMORY[0x277CBEA78]);
    cachedPlayerItems = v7->_cachedPlayerItems;
    v7->_cachedPlayerItems = v16;

    [(NSCache *)v7->_cachedPlayerItems setCountLimit:6];
    v7->_downloadState = 0;
  }

  return v7;
}

- (void)resetForNewCamera
{
  imageLayer = [(HUCameraTimelapseController *)self imageLayer];
  [imageLayer setContents:0];

  cachedPlayerItems = [(HUCameraTimelapseController *)self cachedPlayerItems];
  [cachedPlayerItems removeAllObjects];

  [(HUCameraTimelapseController *)self setCurrentClip:0];
  [(HUCameraTimelapseController *)self setHighQualityClip:0];

  [(HUCameraTimelapseController *)self setTimelapseVisibility:0];
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)cmTimeFromDate:(SEL)date
{
  v6 = a4;
  currentClip = [(HUCameraTimelapseController *)self currentClip];
  startDate = [currentClip startDate];
  [v6 timeIntervalSinceDate:startDate];
  v10 = v9;

  return CMTimeMakeWithSeconds(retstr, v10, 1000);
}

- (BOOL)canSeekWithClip:(id)clip
{
  clipCopy = clip;
  currentClip = [(HUCameraTimelapseController *)self currentClip];
  uniqueIdentifier = [currentClip uniqueIdentifier];
  uniqueIdentifier2 = [clipCopy uniqueIdentifier];

  LOBYTE(clipCopy) = [uniqueIdentifier isEqual:uniqueIdentifier2];
  return clipCopy;
}

- (id)playerItemForURL:(id)l
{
  v12 = *MEMORY[0x277D85DE8];
  lCopy = l;
  cachedPlayerItems = [(HUCameraTimelapseController *)self cachedPlayerItems];
  v6 = [cachedPlayerItems objectForKey:lCopy];

  if (!v6)
  {
    v7 = HFLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = lCopy;
      _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "Adding player item to cache: %@", &v10, 0xCu);
    }

    v6 = [objc_alloc(MEMORY[0x277CE65B0]) initWithURL:lCopy];
    cachedPlayerItems2 = [(HUCameraTimelapseController *)self cachedPlayerItems];
    [cachedPlayerItems2 setObject:v6 forKey:lCopy];
  }

  return v6;
}

- (void)updatePlaceholderContent
{
  v24 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D14498] = [MEMORY[0x277D14498] sharedManager];
  highQualityClip = [(HUCameraTimelapseController *)self highQualityClip];
  v5 = [mEMORY[0x277D14498] firstPosterFrameImageForClip:highQualityClip];

  if (v5)
  {
    v6 = HFLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      highQualityClip2 = [(HUCameraTimelapseController *)self highQualityClip];
      uniqueIdentifier = [highQualityClip2 uniqueIdentifier];
      currentClip = [(HUCameraTimelapseController *)self currentClip];
      uniqueIdentifier2 = [currentClip uniqueIdentifier];
      v20 = 67109634;
      *v21 = 1;
      *&v21[4] = 2112;
      *&v21[6] = uniqueIdentifier;
      v22 = 2112;
      v23 = uniqueIdentifier2;
      _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "IMAGE: Updating camera clip with first poster frame:%{BOOL}d for Full:%@ Timelapse:%@", &v20, 0x1Cu);
    }

LABEL_8:
    cGImage = [v5 CGImage];
    imageLayer = [(HUCameraTimelapseController *)self imageLayer];
    [imageLayer setContents:cGImage];
    goto LABEL_9;
  }

  highQualityClip3 = [(HUCameraTimelapseController *)self highQualityClip];
  v5 = [mEMORY[0x277D14498] heroFrameImageForClip:highQualityClip3];

  v12 = HFLogForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    highQualityClip4 = [(HUCameraTimelapseController *)self highQualityClip];
    uniqueIdentifier3 = [highQualityClip4 uniqueIdentifier];
    currentClip2 = [(HUCameraTimelapseController *)self currentClip];
    uniqueIdentifier4 = [currentClip2 uniqueIdentifier];
    v20 = 67109634;
    *v21 = v5 != 0;
    *&v21[4] = 2112;
    *&v21[6] = uniqueIdentifier3;
    v22 = 2112;
    v23 = uniqueIdentifier4;
    _os_log_impl(&dword_20CEB6000, v12, OS_LOG_TYPE_DEFAULT, "IMAGE: Updating camera clip with hero frame:%{BOOL}d for Full:%@ Timelapse:%@", &v20, 0x1Cu);
  }

  if (v5)
  {
    goto LABEL_8;
  }

  [(HUCameraTimelapseController *)self setTimelapseVisibility:0];
  v5 = HFLogForCategory();
  if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_10;
  }

  imageLayer = [(HUCameraTimelapseController *)self currentClip];
  uniqueIdentifier5 = [imageLayer uniqueIdentifier];
  v20 = 138412290;
  *v21 = uniqueIdentifier5;
  _os_log_error_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_ERROR, "IMAGE: No image available for %@. Using stale image.", &v20, 0xCu);

LABEL_9:
LABEL_10:
}

- (void)_updateTimelapseClip:(id)clip withHighQualityClip:(id)qualityClip
{
  v21 = *MEMORY[0x277D85DE8];
  clipCopy = clip;
  qualityClipCopy = qualityClip;
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    currentClip = [(HUCameraTimelapseController *)self currentClip];
    uniqueIdentifier = [currentClip uniqueIdentifier];
    uniqueIdentifier2 = [clipCopy uniqueIdentifier];
    v17 = 138412546;
    v18 = uniqueIdentifier;
    v19 = 2112;
    v20 = uniqueIdentifier2;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "Updating timelapse from %@ to %@", &v17, 0x16u);
  }

  [(HUCameraTimelapseController *)self setPlayingHLSPlayerItem:0];
  [(HUCameraTimelapseController *)self setDownloadState:0];
  [(HUCameraTimelapseController *)self setCurrentClip:clipCopy];
  imageLayer = [(HUCameraTimelapseController *)self imageLayer];
  [imageLayer setContents:0];

  currentClip2 = [(HUCameraTimelapseController *)self currentClip];

  if (currentClip2)
  {
    [(HUCameraTimelapseController *)self updatePlaceholderContent];
  }

  if ([qualityClipCopy isComplete])
  {
    mEMORY[0x277D144F8] = [MEMORY[0x277D144F8] sharedProvider];
    [mEMORY[0x277D144F8] getVideoForTimelapseClip:clipCopy taskType:0 delegate:self];
  }

  else
  {
    v15 = HFLogForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      uniqueIdentifier3 = [clipCopy uniqueIdentifier];
      v17 = 138412290;
      v18 = uniqueIdentifier3;
      _os_log_impl(&dword_20CEB6000, v15, OS_LOG_TYPE_DEFAULT, "Using HLS Playlist to play in-progress timelapse clip:%@", &v17, 0xCu);
    }

    [(HUCameraTimelapseController *)self _fallbackToHighQualityClip:qualityClipCopy];
  }
}

- (void)_fallbackToHighQualityClip:(id)clip
{
  clipCopy = clip;
  if (clipCopy)
  {
    [(HUCameraTimelapseController *)self setPlayingHLSPlayerItem:1];
    v5 = objc_alloc(MEMORY[0x277D14488]);
    cameraProfile = [(HUCameraTimelapseController *)self cameraProfile];
    clipManager = [cameraProfile clipManager];
    v8 = [v5 initWithClipManager:clipManager clip:clipCopy];

    player = [(HUCameraTimelapseController *)self player];
    [player replaceCurrentItemWithPlayerItem:v8];
  }

  else
  {
    v10 = HFLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_error_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_ERROR, "Trying to fallback to high quality clip but it is nil", v11, 2u);
    }
  }
}

- (void)setTimelapseVisibility:(BOOL)visibility
{
  if (!visibility)
  {
LABEL_8:

    [(HUCameraTimelapseController *)self _hideAllTimelapseLayers];
    return;
  }

  if ([(HUCameraTimelapseController *)self isPlayingHLSPlayerItem])
  {
LABEL_3:

    [(HUCameraTimelapseController *)self _showOnlyPlayerLayer];
    return;
  }

  if ([(HUCameraTimelapseController *)self downloadState])
  {
    if ([(HUCameraTimelapseController *)self downloadState]!= 2)
    {
      if ([(HUCameraTimelapseController *)self downloadState]!= 1)
      {
        return;
      }

      goto LABEL_3;
    }

    goto LABEL_8;
  }

  [(HUCameraTimelapseController *)self _showOnlyImageLayer];
}

- (void)_hideAllTimelapseLayers
{
  playerLayer = [(HUCameraTimelapseController *)self playerLayer];
  [playerLayer setHidden:1];

  imageLayer = [(HUCameraTimelapseController *)self imageLayer];
  [imageLayer setHidden:1];
}

- (void)_showOnlyPlayerLayer
{
  playerLayer = [(HUCameraTimelapseController *)self playerLayer];
  [playerLayer setHidden:0];

  imageLayer = [(HUCameraTimelapseController *)self imageLayer];
  [imageLayer setHidden:1];
}

- (void)_showOnlyImageLayer
{
  playerLayer = [(HUCameraTimelapseController *)self playerLayer];
  [playerLayer setHidden:1];

  imageLayer = [(HUCameraTimelapseController *)self imageLayer];
  [imageLayer setHidden:0];
}

- (void)updateToPlaybackPosition:(id)position forHighQualityClip:(id)clip
{
  positionCopy = position;
  clipCopy = clip;
  mEMORY[0x277D144F0] = [MEMORY[0x277D144F0] sharedManager];
  clipPlaybackDate = [positionCopy clipPlaybackDate];
  v9 = [mEMORY[0x277D144F0] timelapseClipPositionForDate:clipPlaybackDate inHighQualityClip:clipCopy];

  if (v9)
  {
    [(HUCameraTimelapseController *)self setTimelapseVisibility:0];
    [(HUCameraTimelapseController *)self setHighQualityClip:clipCopy];
    currentClip = [(HUCameraTimelapseController *)self currentClip];
    uniqueIdentifier = [currentClip uniqueIdentifier];
    clip = [v9 clip];
    uniqueIdentifier2 = [clip uniqueIdentifier];
    v14 = [uniqueIdentifier isEqual:uniqueIdentifier2];

    if ((v14 & 1) == 0)
    {
      clip2 = [v9 clip];
      [(HUCameraTimelapseController *)self _updateTimelapseClip:clip2 withHighQualityClip:clipCopy];
    }

    [(HUCameraTimelapseController *)self setTimelapseVisibility:1];
    clipPlaybackDate2 = [positionCopy clipPlaybackDate];
    [(HUCameraTimelapseController *)self seekToDate:clipPlaybackDate2];
  }

  else
  {
    [(HUCameraTimelapseController *)self setCurrentClip:0];
    [(HUCameraTimelapseController *)self setTimelapseVisibility:0];
  }
}

- (void)updateVideoBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  v23 = *MEMORY[0x277D85DE8];
  v6 = [(HUCameraTimelapseController *)self playerLayer:bounds.origin.x];
  superlayer = [v6 superlayer];
  [superlayer bounds];
  v8 = CGRectGetMidX(v24) - width * 0.5;

  playerLayer = [(HUCameraTimelapseController *)self playerLayer];
  superlayer2 = [playerLayer superlayer];
  [superlayer2 bounds];
  v11 = CGRectGetMidY(v25) - height * 0.5;

  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setValue:*MEMORY[0x277CBED28] forKey:*MEMORY[0x277CDA918]];
  playerLayer2 = [(HUCameraTimelapseController *)self playerLayer];
  [playerLayer2 setFrame:{v8, v11, width, height}];

  imageLayer = [(HUCameraTimelapseController *)self imageLayer];
  [imageLayer setFrame:{v8, v11, width, height}];

  [MEMORY[0x277CD9FF0] commit];
  v14 = HFLogForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v15 = 134218752;
    v16 = v8;
    v17 = 2048;
    v18 = v11;
    v19 = 2048;
    v20 = width;
    v21 = 2048;
    v22 = height;
    _os_log_debug_impl(&dword_20CEB6000, v14, OS_LOG_TYPE_DEBUG, "Updating timelapse video bounds :%.0f, %.0f, %.0f, %.0f", &v15, 0x2Au);
  }
}

- (void)hideAllViews
{
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "Hiding timelapse views", v4, 2u);
  }

  [(HUCameraTimelapseController *)self setTimelapseVisibility:0];
}

- (void)seekToDate:(id)date
{
  memset(&v6, 0, sizeof(v6));
  [(HUCameraTimelapseController *)self cmTimeFromDate:date];
  [(HUCameraTimelapseController *)self chaseTime];
  v4 = v6;
  if (CMTimeCompare(&v4, &time2))
  {
    time2 = v6;
    [(HUCameraTimelapseController *)self setChaseTime:&time2];
    if (![(HUCameraTimelapseController *)self isSeekInProgress])
    {
      [(HUCameraTimelapseController *)self trySeekToChaseTime];
    }
  }
}

- (void)trySeekToChaseTime
{
  v30 = *MEMORY[0x277D85DE8];
  if (![(HUCameraTimelapseController *)self playerItemStatus])
  {
    v6 = HFLogForCategory();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    LOWORD(v26) = 0;
    v12 = "Not seeking because status is unknown.";
LABEL_10:
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, v12, &v26, 2u);
    goto LABEL_18;
  }

  if ([(HUCameraTimelapseController *)self playerItemStatus]!= 1)
  {
    v6 = HFLogForCategory();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    LOWORD(v26) = 0;
    v12 = "Not seeking because status is failed";
    goto LABEL_10;
  }

  player = [(HUCameraTimelapseController *)self player];
  currentItem = [player currentItem];
  asset = [currentItem asset];
  v6 = [asset URL];

  currentClip = [(HUCameraTimelapseController *)self currentClip];

  if (!currentClip)
  {
    goto LABEL_18;
  }

  path = [v6 path];
  currentClip2 = [(HUCameraTimelapseController *)self currentClip];
  uniqueIdentifier = [currentClip2 uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  if ([path containsString:uUIDString])
  {

LABEL_12:
    v14 = HFLogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      player2 = [(HUCameraTimelapseController *)self player];
      currentItem2 = [player2 currentItem];
      asset2 = [currentItem2 asset];
      currentClip3 = [(HUCameraTimelapseController *)self currentClip];
      uniqueIdentifier2 = [currentClip3 uniqueIdentifier];
      v26 = 138412546;
      v27 = asset2;
      v28 = 2112;
      v29 = uniqueIdentifier2;
      _os_log_impl(&dword_20CEB6000, v14, OS_LOG_TYPE_DEFAULT, "Seeking with current item:%@ for clip:%@", &v26, 0x16u);
    }

    [(HUCameraTimelapseController *)self actuallySeekToTime];
    goto LABEL_18;
  }

  isPlayingHLSPlayerItem = [(HUCameraTimelapseController *)self isPlayingHLSPlayerItem];

  if (isPlayingHLSPlayerItem)
  {
    goto LABEL_12;
  }

  v20 = HFLogForCategory();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    player3 = [(HUCameraTimelapseController *)self player];
    currentItem3 = [player3 currentItem];
    asset3 = [currentItem3 asset];
    currentClip4 = [(HUCameraTimelapseController *)self currentClip];
    uniqueIdentifier3 = [currentClip4 uniqueIdentifier];
    v26 = 138412546;
    v27 = asset3;
    v28 = 2112;
    v29 = uniqueIdentifier3;
    _os_log_error_impl(&dword_20CEB6000, v20, OS_LOG_TYPE_ERROR, "Unable to seek due to mismatched item:%@ for clip:%@", &v26, 0x16u);
  }

LABEL_18:
}

- (void)actuallySeekToTime
{
  [(HUCameraTimelapseController *)self setSeekInProgress:1];
  v13 = 0uLL;
  v14 = 0;
  [(HUCameraTimelapseController *)self chaseTime];
  player = [(HUCameraTimelapseController *)self player];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __49__HUCameraTimelapseController_actuallySeekToTime__block_invoke;
  v10[3] = &unk_277DC43B0;
  v11 = v13;
  v10[4] = self;
  v12 = v14;
  v8 = v13;
  v9 = v14;
  v6 = *MEMORY[0x277CC08F0];
  v7 = *(MEMORY[0x277CC08F0] + 16);
  v4 = v6;
  v5 = v7;
  [player seekToTime:&v8 toleranceBefore:&v6 toleranceAfter:&v4 completionHandler:v10];
}

void __49__HUCameraTimelapseController_actuallySeekToTime__block_invoke(uint64_t a1, int a2)
{
  v10 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setSeekInProgress:0];
  v4 = *(a1 + 32);
  if (v4)
  {
    [v4 chaseTime];
  }

  else
  {
    memset(&time2, 0, sizeof(time2));
  }

  v8 = *(a1 + 40);
  v5 = CMTimeCompare(&v8, &time2);
  v6 = HFLogForCategory();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      LODWORD(time2.value) = 67109120;
      HIDWORD(time2.value) = a2;
      _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "Finished seeking. Previous seek request to complete. Completed current seek:%{BOOL}d", &time2, 8u);
    }

    [*(a1 + 32) trySeekToChaseTime];
  }

  else
  {
    if (v7)
    {
      LODWORD(time2.value) = 67109120;
      HIDWORD(time2.value) = a2;
      _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "Finished seeking. Completed current seek:%{BOOL}d", &time2, 8u);
    }
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v17 = *MEMORY[0x277D85DE8];
  if (HUCameraTimelapseControllerContext == context)
  {
    if ([path isEqual:{@"status", object, change}])
    {
      v7 = HFLogForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = MEMORY[0x277CCABB0];
        player = [(HUCameraTimelapseController *)self player];
        v10 = [v8 numberWithInteger:{objc_msgSend(player, "status")}];
        *buf = 138412546;
        selfCopy = self;
        v15 = 2112;
        v16 = v10;
        _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "Player:%@ status changed:%@", buf, 0x16u);
      }

      player2 = [(HUCameraTimelapseController *)self player];
      -[HUCameraTimelapseController setPlayerItemStatus:](self, "setPlayerItemStatus:", [player2 status]);
    }
  }

  else
  {
    v12.receiver = self;
    v12.super_class = HUCameraTimelapseController;
    [(HUCameraTimelapseController *)&v12 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

- (void)dealloc
{
  player = [(HUCameraTimelapseController *)self player];
  [player removeObserver:self forKeyPath:@"status"];

  mEMORY[0x277D144F0] = [MEMORY[0x277D144F0] sharedManager];
  [mEMORY[0x277D144F0] setClipManager:0];

  v5.receiver = self;
  v5.super_class = HUCameraTimelapseController;
  [(HUCameraTimelapseController *)&v5 dealloc];
}

- (void)didDownloadVideoFileForClip:(id)clip toURL:(id)l
{
  clipCopy = clip;
  lCopy = l;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__HUCameraTimelapseController_didDownloadVideoFileForClip_toURL___block_invoke;
  block[3] = &unk_277DB8810;
  block[4] = self;
  v11 = clipCopy;
  v12 = lCopy;
  v8 = lCopy;
  v9 = clipCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)foundVideoFileForClip:(id)clip atURL:(id)l
{
  clipCopy = clip;
  lCopy = l;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__HUCameraTimelapseController_foundVideoFileForClip_atURL___block_invoke;
  block[3] = &unk_277DB8810;
  block[4] = self;
  v11 = clipCopy;
  v12 = lCopy;
  v8 = lCopy;
  v9 = clipCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)failedToDownloadVideoFileForClip:(id)clip
{
  v8 = *MEMORY[0x277D85DE8];
  clipCopy = clip;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = clipCopy;
    _os_log_error_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_ERROR, "Error fetching clip: %@", &v6, 0xCu);
  }

  [(HUCameraTimelapseController *)self setDownloadState:2];
  [(HUCameraTimelapseController *)self setTimelapseVisibility:0];
}

- (void)_loadPlayerForTimelapseClip:(id)clip atLocation:(id)location
{
  v15 = *MEMORY[0x277D85DE8];
  clipCopy = clip;
  locationCopy = location;
  currentClip = [(HUCameraTimelapseController *)self currentClip];
  uniqueIdentifier = [currentClip uniqueIdentifier];
  uniqueIdentifier2 = [clipCopy uniqueIdentifier];
  v11 = [uniqueIdentifier hmf_isEqualToUUID:uniqueIdentifier2];

  if (v11)
  {
    [(HUCameraTimelapseController *)self _loadPlayerFromLocation:locationCopy];
  }

  else
  {
    v12 = HFLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412290;
      v14 = clipCopy;
      _os_log_error_impl(&dword_20CEB6000, v12, OS_LOG_TYPE_ERROR, "No longer need timelapse for clip: %@", &v13, 0xCu);
    }
  }
}

- (void)_loadPlayerFromLocation:(id)location
{
  locationCopy = location;
  [(HUCameraTimelapseController *)self setDownloadState:1];
  [(HUCameraTimelapseController *)self setTimelapseVisibility:1];
  v6 = [(HUCameraTimelapseController *)self playerItemForURL:locationCopy];

  player = [(HUCameraTimelapseController *)self player];
  [player replaceCurrentItemWithPlayerItem:v6];
}

- (void)setChaseTime:(id *)time
{
  v3 = *&time->var0;
  self->_chaseTime.epoch = time->var3;
  *&self->_chaseTime.value = v3;
}

@end