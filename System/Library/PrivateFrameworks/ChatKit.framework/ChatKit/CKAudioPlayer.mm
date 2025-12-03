@interface CKAudioPlayer
- (BOOL)isPlaying;
- (BOOL)usesAVPlayer;
- (CKAudioPlayer)initWithFileURL:(id)l;
- (CKAudioPlayer)initWithMediaObject:(id)object shouldUseAVPlayer:(BOOL)player;
- (CKAudioPlayerDelegate)delegate;
- (double)currentTime;
- (double)duration;
- (double)playbackSpeed;
- (float)volume;
- (void)_handleAudioPlayerInterruption:(id)interruption;
- (void)dealloc;
- (void)displayLinkFired:(id)fired;
- (void)internalAudioPlayerDidFinishPlaying:(id)playing successfully:(BOOL)successfully;
- (void)internalAudioPlayerDidPrepareAudioForPlaying:(id)playing successfully:(BOOL)successfully;
- (void)pause;
- (void)playAfterDelay:(double)delay completion:(id)completion;
- (void)prepareToPlay;
- (void)setCurrentTime:(double)time;
- (void)setPlaybackSpeed:(double)speed;
- (void)setVolume:(float)volume;
- (void)stop;
@end

@implementation CKAudioPlayer

- (void)dealloc
{
  if ([(CKInternalAudioPlayer *)self->_audioPlayer isPlaying]&& self->_block && IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "CKAudioPlayer deallocated while playing, completion block won't be called.", buf, 2u);
    }
  }

  [(CKInternalAudioPlayer *)self->_audioPlayer setDelegate:0];
  [(CADisplayLink *)self->_displayLink invalidate];
  v4.receiver = self;
  v4.super_class = CKAudioPlayer;
  [(CKAudioPlayer *)&v4 dealloc];
}

- (CKAudioPlayer)initWithMediaObject:(id)object shouldUseAVPlayer:(BOOL)player
{
  playerCopy = player;
  objectCopy = object;
  v16.receiver = self;
  v16.super_class = CKAudioPlayer;
  v7 = [(CKAudioPlayer *)&v16 init];
  v8 = v7;
  if (v7)
  {
    [(CKAudioPlayer *)v7 setMediaObject:objectCopy];
    v9 = [CKInternalAudioPlayer alloc];
    fileURL = [objectCopy fileURL];
    v11 = [(CKInternalAudioPlayer *)v9 initWithContentsOfURL:fileURL playerType:playerCopy];

    [(CKInternalAudioPlayer *)v11 setDelegate:v8];
    [(CKAudioPlayer *)v8 setAudioPlayer:v11];
    if (!playerCopy)
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      v13 = *MEMORY[0x1E69580D8];
      mEMORY[0x1E6958460] = [MEMORY[0x1E6958460] sharedInstance];
      [defaultCenter addObserver:v8 selector:sel__handleAudioPlayerInterruption_ name:v13 object:mEMORY[0x1E6958460]];
    }
  }

  return v8;
}

- (CKAudioPlayer)initWithFileURL:(id)l
{
  v14 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v9.receiver = self;
  v9.super_class = CKAudioPlayer;
  v5 = [(CKAudioPlayer *)&v9 init];
  if (v5)
  {
    v6 = [[CKInternalAudioPlayer alloc] initWithContentsOfURL:lCopy playerType:0];
    [(CKInternalAudioPlayer *)v6 setDelegate:v5];
    [(CKAudioPlayer *)v5 setAudioPlayer:v6];
    if ((!lCopy || !v6) && IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v11 = lCopy;
        v12 = 2112;
        v13 = v6;
        _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Couldn't create an audio player. URL=%@, audioPlayer=%@", buf, 0x16u);
      }
    }
  }

  return v5;
}

- (void)playAfterDelay:(double)delay completion:(id)completion
{
  completionCopy = completion;
  if (delay < 0.0)
  {
    delay = 0.0;
  }

  v12 = completionCopy;
  if (self->_block)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0, 0);
  }

  else if (!completionCopy)
  {
    goto LABEL_7;
  }

  [(CKAudioPlayer *)self setBlock:v12];
LABEL_7:
  audioPlayer = [(CKAudioPlayer *)self audioPlayer];
  [audioPlayer deviceCurrentTime];
  [audioPlayer playAtTime:delay + v8];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    v10 = [MEMORY[0x1E6979330] displayLinkWithTarget:self selector:sel_displayLinkFired_];
    [v10 setPreferredFramesPerSecond:60];
    mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
    [v10 addToRunLoop:mainRunLoop forMode:*MEMORY[0x1E695DA28]];

    [(CKAudioPlayer *)self setDisplayLink:v10];
  }
}

- (BOOL)usesAVPlayer
{
  audioPlayer = [(CKAudioPlayer *)self audioPlayer];
  v3 = [audioPlayer playerType] == 1;

  return v3;
}

- (void)stop
{
  audioPlayer = [(CKAudioPlayer *)self audioPlayer];
  [audioPlayer stop];

  audioPlayer2 = [(CKAudioPlayer *)self audioPlayer];
  [audioPlayer2 resetCurrentTime];

  displayLink = [(CKAudioPlayer *)self displayLink];
  [displayLink invalidate];

  [(CKAudioPlayer *)self setDisplayLink:0];

  [(CKAudioPlayer *)self setPrevCurrentTime:0.0];
}

- (void)pause
{
  audioPlayer = [(CKAudioPlayer *)self audioPlayer];
  [audioPlayer pause];

  displayLink = [(CKAudioPlayer *)self displayLink];
  [displayLink invalidate];

  [(CKAudioPlayer *)self setDisplayLink:0];
}

- (void)prepareToPlay
{
  audioPlayer = [(CKAudioPlayer *)self audioPlayer];
  [audioPlayer prepareToPlay];
}

- (BOOL)isPlaying
{
  audioPlayer = [(CKAudioPlayer *)self audioPlayer];
  isPlaying = [audioPlayer isPlaying];

  return isPlaying;
}

- (void)setCurrentTime:(double)time
{
  audioPlayer = [(CKAudioPlayer *)self audioPlayer];
  [audioPlayer setCurrentTime:time];

  delegate = [(CKAudioPlayer *)self delegate];
  [delegate audioPlayerCurrentTimeDidChange:self];
}

- (double)currentTime
{
  audioPlayer = [(CKAudioPlayer *)self audioPlayer];
  [audioPlayer currentTime];
  v4 = v3;

  return v4;
}

- (void)setPlaybackSpeed:(double)speed
{
  audioPlayer = [(CKAudioPlayer *)self audioPlayer];
  [audioPlayer setPlaybackSpeed:speed];
}

- (double)playbackSpeed
{
  audioPlayer = [(CKAudioPlayer *)self audioPlayer];
  [audioPlayer playbackSpeed];
  v4 = v3;

  return v4;
}

- (double)duration
{
  audioPlayer = [(CKAudioPlayer *)self audioPlayer];
  [audioPlayer duration];
  v4 = v3;

  return v4;
}

- (void)setVolume:(float)volume
{
  audioPlayer = [(CKAudioPlayer *)self audioPlayer];
  *&v4 = volume;
  [audioPlayer setVolume:v4];
}

- (float)volume
{
  audioPlayer = [(CKAudioPlayer *)self audioPlayer];
  [audioPlayer volume];
  v4 = v3;

  return v4;
}

- (void)internalAudioPlayerDidFinishPlaying:(id)playing successfully:(BOOL)successfully
{
  successfullyCopy = successfully;
  selfCopy = self;
  block = selfCopy->_block;
  v9 = selfCopy;
  if (block)
  {
    block[2](block, 1, successfullyCopy, 0);
    selfCopy = v9;
    v7 = v9->_block;
  }

  else
  {
    v7 = 0;
  }

  selfCopy->_block = 0;

  displayLink = [(CKAudioPlayer *)v9 displayLink];
  [displayLink invalidate];

  [(CKAudioPlayer *)v9 setDisplayLink:0];
}

- (void)internalAudioPlayerDidPrepareAudioForPlaying:(id)playing successfully:(BOOL)successfully
{
  successfullyCopy = successfully;
  delegate = [(CKAudioPlayer *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate audioPlayerDidPrepareAudioToPlay:self successfully:successfullyCopy];
  }
}

- (void)_handleAudioPlayerInterruption:(id)interruption
{
  userInfo = [interruption userInfo];
  v5 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E6958100]];
  integerValue = [v5 integerValue];

  if (integerValue == 1)
  {
    delegate = [(CKAudioPlayer *)self delegate];
    [delegate audioPlayerDidGetInterrupted];
  }
}

- (void)displayLinkFired:(id)fired
{
  delegate = [(CKAudioPlayer *)self delegate];
  [delegate audioPlayerCurrentTimeDidChange:self];
}

- (CKAudioPlayerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end