@interface HUCameraTimelapseController
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)cmTimeFromDate:(SEL)a3;
- (BOOL)canSeekWithClip:(id)a3;
- (HUCameraTimelapseController)initWithCameraProfile:(id)a3;
- (id)playerItemForURL:(id)a3;
- (void)_fallbackToHighQualityClip:(id)a3;
- (void)_hideAllTimelapseLayers;
- (void)_loadPlayerForTimelapseClip:(id)a3 atLocation:(id)a4;
- (void)_loadPlayerFromLocation:(id)a3;
- (void)_showOnlyImageLayer;
- (void)_showOnlyPlayerLayer;
- (void)_updateTimelapseClip:(id)a3 withHighQualityClip:(id)a4;
- (void)actuallySeekToTime;
- (void)dealloc;
- (void)didDownloadVideoFileForClip:(id)a3 toURL:(id)a4;
- (void)failedToDownloadVideoFileForClip:(id)a3;
- (void)foundVideoFileForClip:(id)a3 atURL:(id)a4;
- (void)hideAllViews;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)resetForNewCamera;
- (void)seekToDate:(id)a3;
- (void)setChaseTime:(id *)a3;
- (void)setTimelapseVisibility:(BOOL)a3;
- (void)trySeekToChaseTime;
- (void)updatePlaceholderContent;
- (void)updateToPlaybackPosition:(id)a3 forHighQualityClip:(id)a4;
- (void)updateVideoBounds:(CGRect)a3;
@end

@implementation HUCameraTimelapseController

- (HUCameraTimelapseController)initWithCameraProfile:(id)a3
{
  v5 = a3;
  v19.receiver = self;
  v19.super_class = HUCameraTimelapseController;
  v6 = [(HUCameraTimelapseController *)&v19 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_cameraProfile, a3);
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
  v3 = [(HUCameraTimelapseController *)self imageLayer];
  [v3 setContents:0];

  v4 = [(HUCameraTimelapseController *)self cachedPlayerItems];
  [v4 removeAllObjects];

  [(HUCameraTimelapseController *)self setCurrentClip:0];
  [(HUCameraTimelapseController *)self setHighQualityClip:0];

  [(HUCameraTimelapseController *)self setTimelapseVisibility:0];
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)cmTimeFromDate:(SEL)a3
{
  v6 = a4;
  v7 = [(HUCameraTimelapseController *)self currentClip];
  v8 = [v7 startDate];
  [v6 timeIntervalSinceDate:v8];
  v10 = v9;

  return CMTimeMakeWithSeconds(retstr, v10, 1000);
}

- (BOOL)canSeekWithClip:(id)a3
{
  v4 = a3;
  v5 = [(HUCameraTimelapseController *)self currentClip];
  v6 = [v5 uniqueIdentifier];
  v7 = [v4 uniqueIdentifier];

  LOBYTE(v4) = [v6 isEqual:v7];
  return v4;
}

- (id)playerItemForURL:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HUCameraTimelapseController *)self cachedPlayerItems];
  v6 = [v5 objectForKey:v4];

  if (!v6)
  {
    v7 = HFLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v4;
      _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "Adding player item to cache: %@", &v10, 0xCu);
    }

    v6 = [objc_alloc(MEMORY[0x277CE65B0]) initWithURL:v4];
    v8 = [(HUCameraTimelapseController *)self cachedPlayerItems];
    [v8 setObject:v6 forKey:v4];
  }

  return v6;
}

- (void)updatePlaceholderContent
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D14498] sharedManager];
  v4 = [(HUCameraTimelapseController *)self highQualityClip];
  v5 = [v3 firstPosterFrameImageForClip:v4];

  if (v5)
  {
    v6 = HFLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(HUCameraTimelapseController *)self highQualityClip];
      v8 = [v7 uniqueIdentifier];
      v9 = [(HUCameraTimelapseController *)self currentClip];
      v10 = [v9 uniqueIdentifier];
      v20 = 67109634;
      *v21 = 1;
      *&v21[4] = 2112;
      *&v21[6] = v8;
      v22 = 2112;
      v23 = v10;
      _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "IMAGE: Updating camera clip with first poster frame:%{BOOL}d for Full:%@ Timelapse:%@", &v20, 0x1Cu);
    }

LABEL_8:
    v17 = [v5 CGImage];
    v18 = [(HUCameraTimelapseController *)self imageLayer];
    [v18 setContents:v17];
    goto LABEL_9;
  }

  v11 = [(HUCameraTimelapseController *)self highQualityClip];
  v5 = [v3 heroFrameImageForClip:v11];

  v12 = HFLogForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [(HUCameraTimelapseController *)self highQualityClip];
    v14 = [v13 uniqueIdentifier];
    v15 = [(HUCameraTimelapseController *)self currentClip];
    v16 = [v15 uniqueIdentifier];
    v20 = 67109634;
    *v21 = v5 != 0;
    *&v21[4] = 2112;
    *&v21[6] = v14;
    v22 = 2112;
    v23 = v16;
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

  v18 = [(HUCameraTimelapseController *)self currentClip];
  v19 = [v18 uniqueIdentifier];
  v20 = 138412290;
  *v21 = v19;
  _os_log_error_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_ERROR, "IMAGE: No image available for %@. Using stale image.", &v20, 0xCu);

LABEL_9:
LABEL_10:
}

- (void)_updateTimelapseClip:(id)a3 withHighQualityClip:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(HUCameraTimelapseController *)self currentClip];
    v10 = [v9 uniqueIdentifier];
    v11 = [v6 uniqueIdentifier];
    v17 = 138412546;
    v18 = v10;
    v19 = 2112;
    v20 = v11;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "Updating timelapse from %@ to %@", &v17, 0x16u);
  }

  [(HUCameraTimelapseController *)self setPlayingHLSPlayerItem:0];
  [(HUCameraTimelapseController *)self setDownloadState:0];
  [(HUCameraTimelapseController *)self setCurrentClip:v6];
  v12 = [(HUCameraTimelapseController *)self imageLayer];
  [v12 setContents:0];

  v13 = [(HUCameraTimelapseController *)self currentClip];

  if (v13)
  {
    [(HUCameraTimelapseController *)self updatePlaceholderContent];
  }

  if ([v7 isComplete])
  {
    v14 = [MEMORY[0x277D144F8] sharedProvider];
    [v14 getVideoForTimelapseClip:v6 taskType:0 delegate:self];
  }

  else
  {
    v15 = HFLogForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v6 uniqueIdentifier];
      v17 = 138412290;
      v18 = v16;
      _os_log_impl(&dword_20CEB6000, v15, OS_LOG_TYPE_DEFAULT, "Using HLS Playlist to play in-progress timelapse clip:%@", &v17, 0xCu);
    }

    [(HUCameraTimelapseController *)self _fallbackToHighQualityClip:v7];
  }
}

- (void)_fallbackToHighQualityClip:(id)a3
{
  v4 = a3;
  if (v4)
  {
    [(HUCameraTimelapseController *)self setPlayingHLSPlayerItem:1];
    v5 = objc_alloc(MEMORY[0x277D14488]);
    v6 = [(HUCameraTimelapseController *)self cameraProfile];
    v7 = [v6 clipManager];
    v8 = [v5 initWithClipManager:v7 clip:v4];

    v9 = [(HUCameraTimelapseController *)self player];
    [v9 replaceCurrentItemWithPlayerItem:v8];
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

- (void)setTimelapseVisibility:(BOOL)a3
{
  if (!a3)
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
  v3 = [(HUCameraTimelapseController *)self playerLayer];
  [v3 setHidden:1];

  v4 = [(HUCameraTimelapseController *)self imageLayer];
  [v4 setHidden:1];
}

- (void)_showOnlyPlayerLayer
{
  v3 = [(HUCameraTimelapseController *)self playerLayer];
  [v3 setHidden:0];

  v4 = [(HUCameraTimelapseController *)self imageLayer];
  [v4 setHidden:1];
}

- (void)_showOnlyImageLayer
{
  v3 = [(HUCameraTimelapseController *)self playerLayer];
  [v3 setHidden:1];

  v4 = [(HUCameraTimelapseController *)self imageLayer];
  [v4 setHidden:0];
}

- (void)updateToPlaybackPosition:(id)a3 forHighQualityClip:(id)a4
{
  v17 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277D144F0] sharedManager];
  v8 = [v17 clipPlaybackDate];
  v9 = [v7 timelapseClipPositionForDate:v8 inHighQualityClip:v6];

  if (v9)
  {
    [(HUCameraTimelapseController *)self setTimelapseVisibility:0];
    [(HUCameraTimelapseController *)self setHighQualityClip:v6];
    v10 = [(HUCameraTimelapseController *)self currentClip];
    v11 = [v10 uniqueIdentifier];
    v12 = [v9 clip];
    v13 = [v12 uniqueIdentifier];
    v14 = [v11 isEqual:v13];

    if ((v14 & 1) == 0)
    {
      v15 = [v9 clip];
      [(HUCameraTimelapseController *)self _updateTimelapseClip:v15 withHighQualityClip:v6];
    }

    [(HUCameraTimelapseController *)self setTimelapseVisibility:1];
    v16 = [v17 clipPlaybackDate];
    [(HUCameraTimelapseController *)self seekToDate:v16];
  }

  else
  {
    [(HUCameraTimelapseController *)self setCurrentClip:0];
    [(HUCameraTimelapseController *)self setTimelapseVisibility:0];
  }
}

- (void)updateVideoBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  v23 = *MEMORY[0x277D85DE8];
  v6 = [(HUCameraTimelapseController *)self playerLayer:a3.origin.x];
  v7 = [v6 superlayer];
  [v7 bounds];
  v8 = CGRectGetMidX(v24) - width * 0.5;

  v9 = [(HUCameraTimelapseController *)self playerLayer];
  v10 = [v9 superlayer];
  [v10 bounds];
  v11 = CGRectGetMidY(v25) - height * 0.5;

  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setValue:*MEMORY[0x277CBED28] forKey:*MEMORY[0x277CDA918]];
  v12 = [(HUCameraTimelapseController *)self playerLayer];
  [v12 setFrame:{v8, v11, width, height}];

  v13 = [(HUCameraTimelapseController *)self imageLayer];
  [v13 setFrame:{v8, v11, width, height}];

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

- (void)seekToDate:(id)a3
{
  memset(&v6, 0, sizeof(v6));
  [(HUCameraTimelapseController *)self cmTimeFromDate:a3];
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

  v3 = [(HUCameraTimelapseController *)self player];
  v4 = [v3 currentItem];
  v5 = [v4 asset];
  v6 = [v5 URL];

  v7 = [(HUCameraTimelapseController *)self currentClip];

  if (!v7)
  {
    goto LABEL_18;
  }

  v8 = [v6 path];
  v9 = [(HUCameraTimelapseController *)self currentClip];
  v10 = [v9 uniqueIdentifier];
  v11 = [v10 UUIDString];
  if ([v8 containsString:v11])
  {

LABEL_12:
    v14 = HFLogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [(HUCameraTimelapseController *)self player];
      v16 = [v15 currentItem];
      v17 = [v16 asset];
      v18 = [(HUCameraTimelapseController *)self currentClip];
      v19 = [v18 uniqueIdentifier];
      v26 = 138412546;
      v27 = v17;
      v28 = 2112;
      v29 = v19;
      _os_log_impl(&dword_20CEB6000, v14, OS_LOG_TYPE_DEFAULT, "Seeking with current item:%@ for clip:%@", &v26, 0x16u);
    }

    [(HUCameraTimelapseController *)self actuallySeekToTime];
    goto LABEL_18;
  }

  v13 = [(HUCameraTimelapseController *)self isPlayingHLSPlayerItem];

  if (v13)
  {
    goto LABEL_12;
  }

  v20 = HFLogForCategory();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    v21 = [(HUCameraTimelapseController *)self player];
    v22 = [v21 currentItem];
    v23 = [v22 asset];
    v24 = [(HUCameraTimelapseController *)self currentClip];
    v25 = [v24 uniqueIdentifier];
    v26 = 138412546;
    v27 = v23;
    v28 = 2112;
    v29 = v25;
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
  v3 = [(HUCameraTimelapseController *)self player];
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
  [v3 seekToTime:&v8 toleranceBefore:&v6 toleranceAfter:&v4 completionHandler:v10];
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

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v17 = *MEMORY[0x277D85DE8];
  if (HUCameraTimelapseControllerContext == a6)
  {
    if ([a3 isEqual:{@"status", a4, a5}])
    {
      v7 = HFLogForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = MEMORY[0x277CCABB0];
        v9 = [(HUCameraTimelapseController *)self player];
        v10 = [v8 numberWithInteger:{objc_msgSend(v9, "status")}];
        *buf = 138412546;
        v14 = self;
        v15 = 2112;
        v16 = v10;
        _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "Player:%@ status changed:%@", buf, 0x16u);
      }

      v11 = [(HUCameraTimelapseController *)self player];
      -[HUCameraTimelapseController setPlayerItemStatus:](self, "setPlayerItemStatus:", [v11 status]);
    }
  }

  else
  {
    v12.receiver = self;
    v12.super_class = HUCameraTimelapseController;
    [(HUCameraTimelapseController *)&v12 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }
}

- (void)dealloc
{
  v3 = [(HUCameraTimelapseController *)self player];
  [v3 removeObserver:self forKeyPath:@"status"];

  v4 = [MEMORY[0x277D144F0] sharedManager];
  [v4 setClipManager:0];

  v5.receiver = self;
  v5.super_class = HUCameraTimelapseController;
  [(HUCameraTimelapseController *)&v5 dealloc];
}

- (void)didDownloadVideoFileForClip:(id)a3 toURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__HUCameraTimelapseController_didDownloadVideoFileForClip_toURL___block_invoke;
  block[3] = &unk_277DB8810;
  block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)foundVideoFileForClip:(id)a3 atURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__HUCameraTimelapseController_foundVideoFileForClip_atURL___block_invoke;
  block[3] = &unk_277DB8810;
  block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)failedToDownloadVideoFileForClip:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_error_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_ERROR, "Error fetching clip: %@", &v6, 0xCu);
  }

  [(HUCameraTimelapseController *)self setDownloadState:2];
  [(HUCameraTimelapseController *)self setTimelapseVisibility:0];
}

- (void)_loadPlayerForTimelapseClip:(id)a3 atLocation:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HUCameraTimelapseController *)self currentClip];
  v9 = [v8 uniqueIdentifier];
  v10 = [v6 uniqueIdentifier];
  v11 = [v9 hmf_isEqualToUUID:v10];

  if (v11)
  {
    [(HUCameraTimelapseController *)self _loadPlayerFromLocation:v7];
  }

  else
  {
    v12 = HFLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412290;
      v14 = v6;
      _os_log_error_impl(&dword_20CEB6000, v12, OS_LOG_TYPE_ERROR, "No longer need timelapse for clip: %@", &v13, 0xCu);
    }
  }
}

- (void)_loadPlayerFromLocation:(id)a3
{
  v4 = a3;
  [(HUCameraTimelapseController *)self setDownloadState:1];
  [(HUCameraTimelapseController *)self setTimelapseVisibility:1];
  v6 = [(HUCameraTimelapseController *)self playerItemForURL:v4];

  v5 = [(HUCameraTimelapseController *)self player];
  [v5 replaceCurrentItemWithPlayerItem:v6];
}

- (void)setChaseTime:(id *)a3
{
  v3 = *&a3->var0;
  self->_chaseTime.epoch = a3->var3;
  *&self->_chaseTime.value = v3;
}

@end