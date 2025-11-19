@interface CKInternalAudioPlayer
- (BOOL)_playAtTime:(double)a3;
- (BOOL)isPlaying;
- (BOOL)playAtTime:(double)a3;
- (CKInternalAudioPlayer)initWithContentsOfURL:(id)a3 playerType:(int64_t)a4;
- (CKInternalAudioPlayerDelegate)delegate;
- (double)currentTime;
- (double)deviceCurrentTime;
- (double)duration;
- (double)playbackSpeed;
- (float)volume;
- (void)_handleAVPlayerItemStateChange;
- (void)_notifyPlayerDidFinishSuccessfully:(BOOL)a3;
- (void)_notifyPlayerDidPrepareAudioFileSuccessfully:(BOOL)a3;
- (void)_playerItemDidEndNotification:(id)a3;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)pause;
- (void)prepareToPlay;
- (void)resetCurrentTime;
- (void)setCurrentTime:(double)a3;
- (void)setPlaybackSpeed:(double)a3;
- (void)setVolume:(float)a3;
- (void)stop;
@end

@implementation CKInternalAudioPlayer

- (CKInternalAudioPlayer)initWithContentsOfURL:(id)a3 playerType:(int64_t)a4
{
  v6 = a3;
  v20.receiver = self;
  v20.super_class = CKInternalAudioPlayer;
  v7 = [(CKInternalAudioPlayer *)&v20 init];
  v8 = v7;
  if (v7)
  {
    v7->_playerType = a4;
    if (a4 == 1)
    {
      v9 = CKAVURLAssetForURL(v6);
      v10 = [MEMORY[0x1E69880B0] playerItemWithAsset:v9];
      playerItem = v8->_playerItem;
      v8->_playerItem = v10;

      [(AVPlayerItem *)v8->_playerItem setPlayHapticTracks:1];
      v12 = [MEMORY[0x1E6988098] playerWithPlayerItem:v8->_playerItem];
      avPlayer = v8->_avPlayer;
      v8->_avPlayer = v12;

      [(AVPlayerItem *)v8->_playerItem addObserver:v8 forKeyPath:@"status" options:3 context:CKInternalAudioPlayerAVPlayerItemKVOContext];
      v14 = [MEMORY[0x1E696AD88] defaultCenter];
      [v14 addObserver:v8 selector:sel__playerItemDidEndNotification_ name:*MEMORY[0x1E6987A10] object:v8->_playerItem];

      v15 = [MEMORY[0x1E696AD88] defaultCenter];
      [v15 addObserver:v8 selector:sel__playerItemDidEndNotification_ name:*MEMORY[0x1E6987A20] object:v8->_playerItem];
    }

    else
    {
      v16 = [objc_alloc(MEMORY[0x1E6958448]) initWithContentsOfURL:v6 error:0];
      avAudioPlayer = v8->_avAudioPlayer;
      v8->_avAudioPlayer = v16;

      [(AVAudioPlayer *)v8->_avAudioPlayer setDelegate:v8];
    }

    v18 = v8;
  }

  return v8;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a5;
  if (CKInternalAudioPlayerAVPlayerItemKVOContext == a6)
  {
    if ([a3 isEqualToString:@"status"])
    {
      v11 = [v10 objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
      v12 = [v10 objectForKeyedSubscript:*MEMORY[0x1E696A500]];
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
    [(CKInternalAudioPlayer *)&v14 observeValueForKeyPath:a3 ofObject:a4 change:v10 context:a6];
  }
}

- (BOOL)playAtTime:(double)a3
{
  if (self->_playerType == 1 && [(AVPlayerItem *)self->_playerItem status]== AVPlayerItemStatusUnknown)
  {
    self->_avPlayerPlayRequested = 1;
    return 1;
  }

  else
  {

    return [(CKInternalAudioPlayer *)self _playAtTime:a3];
  }
}

- (BOOL)_playAtTime:(double)a3
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

    return [(AVAudioPlayer *)avAudioPlayer playAtTime:a3];
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

- (void)setVolume:(float)a3
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

- (void)setCurrentTime:(double)a3
{
  if (self->_playerType == 1)
  {
    v8 = v3;
    v9 = v4;
    avPlayer = self->_avPlayer;
    CMTimeMake(&v7, a3, 1);
    [(AVPlayer *)avPlayer seekToTime:&v7];
  }

  else
  {
    avAudioPlayer = self->_avAudioPlayer;

    [(AVAudioPlayer *)avAudioPlayer setCurrentTime:a3];
  }
}

- (void)setPlaybackSpeed:(double)a3
{
  v3 = a3;
  if (self->_playerType == 1)
  {
    avPlayer = self->_avPlayer;
    *&a3 = a3;

    [(AVPlayer *)avPlayer setRate:a3];
  }

  else
  {
    if (![(AVAudioPlayer *)self->_avAudioPlayer enableRate])
    {
      [(AVAudioPlayer *)self->_avAudioPlayer setEnableRate:1];
    }

    *&v6 = v3;
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
    v4 = [(AVPlayer *)self->_avPlayer currentItem];
    v5 = v4;
    if (v4)
    {
      [v4 duration];
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
    v4 = [(AVAudioPlayer *)self->_avAudioPlayer prepareToPlay];
LABEL_7:
    v3 = self;
    goto LABEL_8;
  }

  if (![(CKInternalAudioPlayer *)self isPlaying])
  {
    v5 = [(AVPlayerItem *)self->_playerItem status];
    if (v5 == AVPlayerItemStatusUnknown)
    {
      self->_avPlayerPrepareRequested = 1;
      return;
    }

    v4 = v5 == AVPlayerItemStatusReadyToPlay;
    goto LABEL_7;
  }

  v3 = self;
  v4 = 1;
LABEL_8:

  [(CKInternalAudioPlayer *)v3 _notifyPlayerDidPrepareAudioFileSuccessfully:v4];
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
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E6987A10] object:self->_playerItem];

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 removeObserver:self name:*MEMORY[0x1E6987A20] object:self->_playerItem];

  [(AVAudioPlayer *)self->_avAudioPlayer setDelegate:0];
  v5.receiver = self;
  v5.super_class = CKInternalAudioPlayer;
  [(CKInternalAudioPlayer *)&v5 dealloc];
}

- (void)_playerItemDidEndNotification:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__CKInternalAudioPlayer__playerItemDidEndNotification___block_invoke;
  v6[3] = &unk_1E72EB8D0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
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
  v3 = [(AVPlayerItem *)self->_playerItem status];
  v4 = v3;
  if (self->_avPlayerPrepareRequested)
  {
    self->_avPlayerPrepareRequested = 0;
    [(CKInternalAudioPlayer *)self _notifyPlayerDidPrepareAudioFileSuccessfully:v3 == AVPlayerItemStatusReadyToPlay];
  }

  if (self->_avPlayerPlayRequested && v4 != AVPlayerItemStatusUnknown)
  {
    self->_avPlayerPlayRequested = 0;

    [(CKInternalAudioPlayer *)self _playAtTime:0.0];
  }
}

- (void)_notifyPlayerDidFinishSuccessfully:(BOOL)a3
{
  v3 = a3;
  v5 = [(CKInternalAudioPlayer *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 internalAudioPlayerDidFinishPlaying:self successfully:v3];
  }
}

- (void)_notifyPlayerDidPrepareAudioFileSuccessfully:(BOOL)a3
{
  v3 = a3;
  v5 = [(CKInternalAudioPlayer *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 internalAudioPlayerDidPrepareAudioForPlaying:self successfully:v3];
  }
}

- (CKInternalAudioPlayerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end