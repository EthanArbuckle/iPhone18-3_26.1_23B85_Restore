@interface CKInternalAudioPlayer
- (BOOL)_playAtTime:(double)time;
- (BOOL)isPlaying;
- (BOOL)playAtTime:(double)time;
- (CKInternalAudioPlayer)initWithContentsOfURL:(id)l playerType:(int64_t)type;
- (CKInternalAudioPlayerDelegate)delegate;
- (double)currentTime;
- (double)deviceCurrentTime;
- (double)duration;
- (double)playbackSpeed;
- (float)volume;
- (void)_handleAVPlayerItemStateChange;
- (void)_notifyPlayerDidFinishSuccessfully:(BOOL)successfully;
- (void)_notifyPlayerDidPrepareAudioFileSuccessfully:(BOOL)successfully;
- (void)_playerItemDidEndNotification:(id)notification;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)pause;
- (void)prepareToPlay;
- (void)resetCurrentTime;
- (void)setCurrentTime:(double)time;
- (void)setPlaybackSpeed:(double)speed;
- (void)setVolume:(float)volume;
- (void)stop;
@end

@implementation CKInternalAudioPlayer

- (CKInternalAudioPlayer)initWithContentsOfURL:(id)l playerType:(int64_t)type
{
  lCopy = l;
  v20.receiver = self;
  v20.super_class = CKInternalAudioPlayer;
  v7 = [(CKInternalAudioPlayer *)&v20 init];
  v8 = v7;
  if (v7)
  {
    v7->_playerType = type;
    if (type == 1)
    {
      v9 = CKAVURLAssetForURL(lCopy);
      v10 = [MEMORY[0x1E69880B0] playerItemWithAsset:v9];
      playerItem = v8->_playerItem;
      v8->_playerItem = v10;

      [(AVPlayerItem *)v8->_playerItem setPlayHapticTracks:1];
      v12 = [MEMORY[0x1E6988098] playerWithPlayerItem:v8->_playerItem];
      avPlayer = v8->_avPlayer;
      v8->_avPlayer = v12;

      [(AVPlayerItem *)v8->_playerItem addObserver:v8 forKeyPath:@"status" options:3 context:CKInternalAudioPlayerAVPlayerItemKVOContext];
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:v8 selector:sel__playerItemDidEndNotification_ name:*MEMORY[0x1E6987A10] object:v8->_playerItem];

      defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter2 addObserver:v8 selector:sel__playerItemDidEndNotification_ name:*MEMORY[0x1E6987A20] object:v8->_playerItem];
    }

    else
    {
      v16 = [objc_alloc(MEMORY[0x1E6958448]) initWithContentsOfURL:lCopy error:0];
      avAudioPlayer = v8->_avAudioPlayer;
      v8->_avAudioPlayer = v16;

      [(AVAudioPlayer *)v8->_avAudioPlayer setDelegate:v8];
    }

    v18 = v8;
  }

  return v8;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  changeCopy = change;
  if (CKInternalAudioPlayerAVPlayerItemKVOContext == context)
  {
    if ([path isEqualToString:@"status"])
    {
      v11 = [changeCopy objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
      v12 = [changeCopy objectForKeyedSubscript:*MEMORY[0x1E696A500]];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && ([v11 isEqualToNumber:v12] & 1) == 0)
        {
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __72__CKInternalAudioPlayer_observeValueForKeyPath_ofObject_change_context___block_invoke;
          block[3] = &unk_1E72EBA18;
          block[4] = self;
          dispatch_async(MEMORY[0x1E69E96A0], block);
        }
      }
    }
  }

  else
  {
    v14.receiver = self;
    v14.super_class = CKInternalAudioPlayer;
    [(CKInternalAudioPlayer *)&v14 observeValueForKeyPath:path ofObject:object change:changeCopy context:context];
  }
}

- (BOOL)playAtTime:(double)time
{
  if (self->_playerType == 1 && [(AVPlayerItem *)self->_playerItem status]== AVPlayerItemStatusUnknown)
  {
    self->_avPlayerPlayRequested = 1;
    return 1;
  }

  else
  {

    return [(CKInternalAudioPlayer *)self _playAtTime:time];
  }
}

- (BOOL)_playAtTime:(double)time
{
  v5 = MEMORY[0x193AF5ED0]("kCMTimeZero", @"CoreMedia");
  v11 = *v5;
  v12 = *(v5 + 16);
  if (self->_playerType == 1)
  {
    self->_avPlayerPlayRequested = 0;
    if (self->_avPlayerState == 3)
    {
      avPlayer = self->_avPlayer;
      v9 = v11;
      v10 = v12;
      [(AVPlayer *)avPlayer seekToTime:&v9];
    }

    [(AVPlayer *)self->_avPlayer play];
    self->_avPlayerState = 1;
    return 1;
  }

  else
  {
    avAudioPlayer = self->_avAudioPlayer;

    return [(AVAudioPlayer *)avAudioPlayer playAtTime:time];
  }
}

- (double)deviceCurrentTime
{
  if (self->_playerType == 1)
  {
    return 0.0;
  }

  [(AVAudioPlayer *)self->_avAudioPlayer deviceCurrentTime];
  return result;
}

- (void)stop
{
  if (self->_playerType == 1)
  {
    if ((self->_avPlayerState & 0xFFFFFFFFFFFFFFFELL) != 2)
    {
      [(AVPlayer *)self->_avPlayer pause];
    }

    self->_avPlayerState = 3;
  }

  else
  {
    avAudioPlayer = self->_avAudioPlayer;

    [(AVAudioPlayer *)avAudioPlayer stop];
  }
}

- (void)pause
{
  if (self->_playerType == 1)
  {
    [(AVPlayer *)self->_avPlayer pause];
    self->_avPlayerState = 2;
  }

  else
  {
    avAudioPlayer = self->_avAudioPlayer;

    [(AVAudioPlayer *)avAudioPlayer pause];
  }
}

- (float)volume
{
  v2 = 8;
  if (self->_playerType == 1)
  {
    v2 = 16;
  }

  [*(&self->super.isa + v2) volume];
  return result;
}

- (void)setVolume:(float)volume
{
  v3 = 8;
  if (self->_playerType == 1)
  {
    v3 = 16;
  }

  [*(&self->super.isa + v3) setVolume:?];
}

- (BOOL)isPlaying
{
  if (self->_playerType == 1)
  {
    return self->_avPlayerState == 1;
  }

  else
  {
    return [(AVAudioPlayer *)self->_avAudioPlayer isPlaying];
  }
}

- (void)setCurrentTime:(double)time
{
  if (self->_playerType == 1)
  {
    v8 = v3;
    v9 = v4;
    avPlayer = self->_avPlayer;
    CMTimeMake(&v7, time, 1);
    [(AVPlayer *)avPlayer seekToTime:&v7];
  }

  else
  {
    avAudioPlayer = self->_avAudioPlayer;

    [(AVAudioPlayer *)avAudioPlayer setCurrentTime:time];
  }
}

- (void)setPlaybackSpeed:(double)speed
{
  speedCopy = speed;
  if (self->_playerType == 1)
  {
    avPlayer = self->_avPlayer;
    *&speed = speed;

    [(AVPlayer *)avPlayer setRate:speed];
  }

  else
  {
    if (![(AVAudioPlayer *)self->_avAudioPlayer enableRate])
    {
      [(AVAudioPlayer *)self->_avAudioPlayer setEnableRate:1];
    }

    *&v6 = speedCopy;
    [(AVAudioPlayer *)self->_avAudioPlayer setRate:v6];
    avAudioPlayer = self->_avAudioPlayer;
    [(AVAudioPlayer *)avAudioPlayer currentTime];

    [(AVAudioPlayer *)avAudioPlayer setCurrentTime:?];
  }
}

- (double)playbackSpeed
{
  if (self->_playerType == 1)
  {
    p_avPlayer = &self->_avPlayer;
  }

  else
  {
    p_avPlayer = &self->_avAudioPlayer;
    if (![(AVAudioPlayer *)self->_avAudioPlayer enableRate])
    {
      [*p_avPlayer setEnableRate:1];
    }
  }

  [*p_avPlayer rate];
  return v3;
}

- (double)currentTime
{
  if (currentTime__pred_CMTimeGetSecondsCoreMedia != -1)
  {
    [CKInternalAudioPlayer currentTime];
  }

  if (self->_playerType == 1)
  {
    v3 = currentTime__CMTimeGetSeconds;
    avPlayer = self->_avPlayer;
    if (avPlayer)
    {
      [(AVPlayer *)avPlayer currentTime];
    }

    else
    {
      memset(v7, 0, sizeof(v7));
    }

    v3(v7);
  }

  else
  {
    avAudioPlayer = self->_avAudioPlayer;

    [(AVAudioPlayer *)avAudioPlayer currentTime];
  }

  return result;
}

void *__36__CKInternalAudioPlayer_currentTime__block_invoke()
{
  result = MEMORY[0x193AF5ED0]("CMTimeGetSeconds", @"CoreMedia");
  currentTime__CMTimeGetSeconds = result;
  return result;
}

- (double)duration
{
  if (duration__pred_CMTimeCompareCoreMedia != -1)
  {
    [CKInternalAudioPlayer duration];
  }

  if (duration__pred_CMTimeGetSecondsCoreMedia_0 != -1)
  {
    [CKInternalAudioPlayer duration];
  }

  v3 = MEMORY[0x193AF5ED0]("kCMTimeIndefinite", @"CoreMedia");
  v14 = *v3;
  v15 = *(v3 + 16);
  if (self->_playerType == 1)
  {
    v12 = 0uLL;
    v13 = 0;
    currentItem = [(AVPlayer *)self->_avPlayer currentItem];
    v5 = currentItem;
    if (currentItem)
    {
      [currentItem duration];
    }

    else
    {
      v12 = 0uLL;
      v13 = 0;
    }

    v10 = v12;
    v11 = v13;
    v8 = v14;
    v9 = v15;
    if (duration__CMTimeCompare(&v10, &v8))
    {
      v10 = v12;
      v11 = v13;
      duration__CMTimeGetSeconds_0(&v10);
    }

    else
    {
      return 0.0;
    }
  }

  else
  {
    avAudioPlayer = self->_avAudioPlayer;

    [(AVAudioPlayer *)avAudioPlayer duration];
  }

  return result;
}

void *__33__CKInternalAudioPlayer_duration__block_invoke()
{
  result = MEMORY[0x193AF5ED0]("CMTimeCompare", @"CoreMedia");
  duration__CMTimeCompare = result;
  return result;
}

void *__33__CKInternalAudioPlayer_duration__block_invoke_2()
{
  result = MEMORY[0x193AF5ED0]("CMTimeGetSeconds", @"CoreMedia");
  duration__CMTimeGetSeconds_0 = result;
  return result;
}

- (void)prepareToPlay
{
  if (self->_playerType != 1)
  {
    prepareToPlay = [(AVAudioPlayer *)self->_avAudioPlayer prepareToPlay];
LABEL_7:
    selfCopy2 = self;
    goto LABEL_8;
  }

  if (![(CKInternalAudioPlayer *)self isPlaying])
  {
    status = [(AVPlayerItem *)self->_playerItem status];
    if (status == AVPlayerItemStatusUnknown)
    {
      self->_avPlayerPrepareRequested = 1;
      return;
    }

    prepareToPlay = status == AVPlayerItemStatusReadyToPlay;
    goto LABEL_7;
  }

  selfCopy2 = self;
  prepareToPlay = 1;
LABEL_8:

  [(CKInternalAudioPlayer *)selfCopy2 _notifyPlayerDidPrepareAudioFileSuccessfully:prepareToPlay];
}

- (void)resetCurrentTime
{
  if (self->_playerType == 1)
  {
    v8 = v2;
    v9 = v3;
    avPlayer = self->_avPlayer;
    v6 = *MEMORY[0x1E6960CC0];
    v7 = *(MEMORY[0x1E6960CC0] + 16);
    [(AVPlayer *)avPlayer seekToTime:&v6];
  }

  else
  {
    avAudioPlayer = self->_avAudioPlayer;

    [(AVAudioPlayer *)avAudioPlayer setCurrentTime:0.0];
  }
}

- (void)dealloc
{
  [(AVPlayerItem *)self->_playerItem removeObserver:self forKeyPath:@"status"];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E6987A10] object:self->_playerItem];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 removeObserver:self name:*MEMORY[0x1E6987A20] object:self->_playerItem];

  [(AVAudioPlayer *)self->_avAudioPlayer setDelegate:0];
  v5.receiver = self;
  v5.super_class = CKInternalAudioPlayer;
  [(CKInternalAudioPlayer *)&v5 dealloc];
}

- (void)_playerItemDidEndNotification:(id)notification
{
  notificationCopy = notification;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__CKInternalAudioPlayer__playerItemDidEndNotification___block_invoke;
  v6[3] = &unk_1E72EB8D0;
  v6[4] = self;
  v7 = notificationCopy;
  v5 = notificationCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

uint64_t __55__CKInternalAudioPlayer__playerItemDidEndNotification___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 32) = 3;
  v2 = [*(a1 + 40) name];
  v3 = [v2 isEqualToString:*MEMORY[0x1E6987A10]];

  v4 = *(a1 + 32);

  return [v4 _notifyPlayerDidFinishSuccessfully:v3];
}

- (void)_handleAVPlayerItemStateChange
{
  status = [(AVPlayerItem *)self->_playerItem status];
  v4 = status;
  if (self->_avPlayerPrepareRequested)
  {
    self->_avPlayerPrepareRequested = 0;
    [(CKInternalAudioPlayer *)self _notifyPlayerDidPrepareAudioFileSuccessfully:status == AVPlayerItemStatusReadyToPlay];
  }

  if (self->_avPlayerPlayRequested && v4 != AVPlayerItemStatusUnknown)
  {
    self->_avPlayerPlayRequested = 0;

    [(CKInternalAudioPlayer *)self _playAtTime:0.0];
  }
}

- (void)_notifyPlayerDidFinishSuccessfully:(BOOL)successfully
{
  successfullyCopy = successfully;
  delegate = [(CKInternalAudioPlayer *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate internalAudioPlayerDidFinishPlaying:self successfully:successfullyCopy];
  }
}

- (void)_notifyPlayerDidPrepareAudioFileSuccessfully:(BOOL)successfully
{
  successfullyCopy = successfully;
  delegate = [(CKInternalAudioPlayer *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate internalAudioPlayerDidPrepareAudioForPlaying:self successfully:successfullyCopy];
  }
}

- (CKInternalAudioPlayerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end