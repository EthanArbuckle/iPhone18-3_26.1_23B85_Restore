@interface CKAudioPlayer
- (BOOL)isPlaying;
- (BOOL)usesAVPlayer;
- (CKAudioPlayer)initWithFileURL:(id)a3;
- (CKAudioPlayer)initWithMediaObject:(id)a3 shouldUseAVPlayer:(BOOL)a4;
- (CKAudioPlayerDelegate)delegate;
- (double)currentTime;
- (double)duration;
- (double)playbackSpeed;
- (float)volume;
- (void)_handleAudioPlayerInterruption:(id)a3;
- (void)dealloc;
- (void)displayLinkFired:(id)a3;
- (void)internalAudioPlayerDidFinishPlaying:(id)a3 successfully:(BOOL)a4;
- (void)internalAudioPlayerDidPrepareAudioForPlaying:(id)a3 successfully:(BOOL)a4;
- (void)pause;
- (void)playAfterDelay:(double)a3 completion:(id)a4;
- (void)prepareToPlay;
- (void)setCurrentTime:(double)a3;
- (void)setPlaybackSpeed:(double)a3;
- (void)setVolume:(float)a3;
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

- (CKAudioPlayer)initWithMediaObject:(id)a3 shouldUseAVPlayer:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v16.receiver = self;
  v16.super_class = CKAudioPlayer;
  v7 = [(CKAudioPlayer *)&v16 init];
  v8 = v7;
  if (v7)
  {
    [(CKAudioPlayer *)v7 setMediaObject:v6];
    v9 = [CKInternalAudioPlayer alloc];
    v10 = [v6 fileURL];
    v11 = [(CKInternalAudioPlayer *)v9 initWithContentsOfURL:v10 playerType:v4];

    [(CKInternalAudioPlayer *)v11 setDelegate:v8];
    [(CKAudioPlayer *)v8 setAudioPlayer:v11];
    if (!v4)
    {
      v12 = [MEMORY[0x1E696AD88] defaultCenter];
      v13 = *MEMORY[0x1E69580D8];
      v14 = [MEMORY[0x1E6958460] sharedInstance];
      [v12 addObserver:v8 selector:sel__handleAudioPlayerInterruption_ name:v13 object:v14];
    }
  }

  return v8;
}

- (CKAudioPlayer)initWithFileURL:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CKAudioPlayer;
  v5 = [(CKAudioPlayer *)&v9 init];
  if (v5)
  {
    v6 = [[CKInternalAudioPlayer alloc] initWithContentsOfURL:v4 playerType:0];
    [(CKInternalAudioPlayer *)v6 setDelegate:v5];
    [(CKAudioPlayer *)v5 setAudioPlayer:v6];
    if ((!v4 || !v6) && IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v11 = v4;
        v12 = 2112;
        v13 = v6;
        _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Couldn't create an audio player. URL=%@, audioPlayer=%@", buf, 0x16u);
      }
    }
  }

  return v5;
}

- (void)playAfterDelay:(double)a3 completion:(id)a4
{
  v6 = a4;
  if (a3 < 0.0)
  {
    a3 = 0.0;
  }

  v12 = v6;
  if (self->_block)
  {
    (*(v6 + 2))(v6, 0, 0, 0);
  }

  else if (!v6)
  {
    goto LABEL_7;
  }

  [(CKAudioPlayer *)self setBlock:v12];
LABEL_7:
  v7 = [(CKAudioPlayer *)self audioPlayer];
  [v7 deviceCurrentTime];
  [v7 playAtTime:a3 + v8];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    v10 = [MEMORY[0x1E6979330] displayLinkWithTarget:self selector:sel_displayLinkFired_];
    [v10 setPreferredFramesPerSecond:60];
    v11 = [MEMORY[0x1E695DFD0] mainRunLoop];
    [v10 addToRunLoop:v11 forMode:*MEMORY[0x1E695DA28]];

    [(CKAudioPlayer *)self setDisplayLink:v10];
  }
}

- (BOOL)usesAVPlayer
{
  v2 = [(CKAudioPlayer *)self audioPlayer];
  v3 = [v2 playerType] == 1;

  return v3;
}

- (void)stop
{
  v3 = [(CKAudioPlayer *)self audioPlayer];
  [v3 stop];

  v4 = [(CKAudioPlayer *)self audioPlayer];
  [v4 resetCurrentTime];

  v5 = [(CKAudioPlayer *)self displayLink];
  [v5 invalidate];

  [(CKAudioPlayer *)self setDisplayLink:0];

  [(CKAudioPlayer *)self setPrevCurrentTime:0.0];
}

- (void)pause
{
  v3 = [(CKAudioPlayer *)self audioPlayer];
  [v3 pause];

  v4 = [(CKAudioPlayer *)self displayLink];
  [v4 invalidate];

  [(CKAudioPlayer *)self setDisplayLink:0];
}

- (void)prepareToPlay
{
  v2 = [(CKAudioPlayer *)self audioPlayer];
  [v2 prepareToPlay];
}

- (BOOL)isPlaying
{
  v2 = [(CKAudioPlayer *)self audioPlayer];
  v3 = [v2 isPlaying];

  return v3;
}

- (void)setCurrentTime:(double)a3
{
  v5 = [(CKAudioPlayer *)self audioPlayer];
  [v5 setCurrentTime:a3];

  v6 = [(CKAudioPlayer *)self delegate];
  [v6 audioPlayerCurrentTimeDidChange:self];
}

- (double)currentTime
{
  v2 = [(CKAudioPlayer *)self audioPlayer];
  [v2 currentTime];
  v4 = v3;

  return v4;
}

- (void)setPlaybackSpeed:(double)a3
{
  v4 = [(CKAudioPlayer *)self audioPlayer];
  [v4 setPlaybackSpeed:a3];
}

- (double)playbackSpeed
{
  v2 = [(CKAudioPlayer *)self audioPlayer];
  [v2 playbackSpeed];
  v4 = v3;

  return v4;
}

- (double)duration
{
  v2 = [(CKAudioPlayer *)self audioPlayer];
  [v2 duration];
  v4 = v3;

  return v4;
}

- (void)setVolume:(float)a3
{
  v5 = [(CKAudioPlayer *)self audioPlayer];
  *&v4 = a3;
  [v5 setVolume:v4];
}

- (float)volume
{
  v2 = [(CKAudioPlayer *)self audioPlayer];
  [v2 volume];
  v4 = v3;

  return v4;
}

- (void)internalAudioPlayerDidFinishPlaying:(id)a3 successfully:(BOOL)a4
{
  v4 = a4;
  v5 = self;
  block = v5->_block;
  v9 = v5;
  if (block)
  {
    block[2](block, 1, v4, 0);
    v5 = v9;
    v7 = v9->_block;
  }

  else
  {
    v7 = 0;
  }

  v5->_block = 0;

  v8 = [(CKAudioPlayer *)v9 displayLink];
  [v8 invalidate];

  [(CKAudioPlayer *)v9 setDisplayLink:0];
}

- (void)internalAudioPlayerDidPrepareAudioForPlaying:(id)a3 successfully:(BOOL)a4
{
  v4 = a4;
  v6 = [(CKAudioPlayer *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v6 audioPlayerDidPrepareAudioToPlay:self successfully:v4];
  }
}

- (void)_handleAudioPlayerInterruption:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E6958100]];
  v6 = [v5 integerValue];

  if (v6 == 1)
  {
    v7 = [(CKAudioPlayer *)self delegate];
    [v7 audioPlayerDidGetInterrupted];
  }
}

- (void)displayLinkFired:(id)a3
{
  v4 = [(CKAudioPlayer *)self delegate];
  [v4 audioPlayerCurrentTimeDidChange:self];
}

- (CKAudioPlayerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end