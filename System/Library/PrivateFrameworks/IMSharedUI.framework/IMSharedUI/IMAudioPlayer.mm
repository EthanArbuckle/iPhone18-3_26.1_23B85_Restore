@interface IMAudioPlayer
+ (IMAudioPlayer)audioPlayerWithContentsOfURL:(id)l;
- (BOOL)isPlaying;
- (BOOL)usesAVPlayer;
- (IMAudioPlayer)initWithContentsOfURL:(id)l shouldUseAVPlayer:(BOOL)player;
- (IMAudioPlayerDelegate)delegate;
- (double)currentTime;
- (double)duration;
- (float)volume;
- (void)dealloc;
- (void)pause;
- (void)playAfterDelay:(double)delay completion:(id)completion;
- (void)prepareToPlay;
- (void)setVolume:(float)volume;
- (void)startTimer;
- (void)stop;
- (void)stopTimer;
- (void)timerDidExpire:(id)expire;
@end

@implementation IMAudioPlayer

- (void)dealloc
{
  if (objc_msgSend_isPlaying(self->_audioPlayer, a2, v2) && self->_block)
  {
    v6 = objc_msgSend_audio(IMSharedUILogs, v4, v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_254805CD0(v6);
    }
  }

  objc_msgSend_setDelegate_(self->_audioPlayer, v4, 0);
  objc_msgSend_stopTimer(self, v7, v8);
  v9.receiver = self;
  v9.super_class = IMAudioPlayer;
  [(IMAudioPlayer *)&v9 dealloc];
}

- (IMAudioPlayer)initWithContentsOfURL:(id)l shouldUseAVPlayer:(BOOL)player
{
  playerCopy = player;
  lCopy = l;
  v18.receiver = self;
  v18.super_class = IMAudioPlayer;
  v9 = [(IMAudioPlayer *)&v18 init];
  if (v9)
  {
    v10 = objc_msgSend_copy(lCopy, v7, v8);
    v11 = *(v9 + 1);
    *(v9 + 1) = v10;

    v12 = [IMInternalAVAudioPlayer alloc];
    v14 = objc_msgSend_initWithContentsOfURL_playerType_(v12, v13, *(v9 + 1), playerCopy);
    objc_msgSend_setDelegate_(v14, v15, v9);
    objc_msgSend_setAudioPlayer_(v9, v16, v14);
  }

  return v9;
}

+ (IMAudioPlayer)audioPlayerWithContentsOfURL:(id)l
{
  lCopy = l;
  v4 = objc_alloc(objc_opt_class());
  shouldUseAVPlayer = objc_msgSend_initWithContentsOfURL_shouldUseAVPlayer_(v4, v5, lCopy, 0);

  return shouldUseAVPlayer;
}

- (void)playAfterDelay:(double)delay completion:(id)completion
{
  completionCopy = completion;
  v9 = fmax(delay, 0.0);
  v19 = completionCopy;
  if (self->_block)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0, 0);
  }

  else if (!completionCopy)
  {
    goto LABEL_5;
  }

  objc_msgSend_setBlock_(self, v7, v19);
LABEL_5:
  v10 = objc_msgSend_audioPlayer(self, v7, v8);
  objc_msgSend_deviceCurrentTime(v10, v11, v12);
  objc_msgSend_playAtTime_(v10, v14, v15, v9 + v13);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    objc_msgSend_startTimer(self, v17, v18);
  }
}

- (BOOL)usesAVPlayer
{
  v3 = objc_msgSend_audioPlayer(self, a2, v2);
  v6 = objc_msgSend_playerType(v3, v4, v5) == 1;

  return v6;
}

- (void)startTimer
{
  objc_msgSend_stopTimer(self, a2, v2);
  v8 = objc_msgSend_displayLinkWithTarget_selector_(IMDisplayLink, v4, self, sel_timerDidExpire_);
  objc_msgSend_schedule(v8, v5, v6);
  objc_msgSend_setDisplayLink_(self, v7, v8);
}

- (void)stopTimer
{
  displayLink = self->_displayLink;
  if (displayLink)
  {
    objc_msgSend_invalidate(displayLink, a2, v2);
    v5 = self->_displayLink;
    self->_displayLink = 0;
  }
}

- (void)timerDidExpire:(id)expire
{
  v5 = objc_msgSend_delegate(self, a2, expire);
  objc_msgSend_audioPlayerCurrentTimeDidChange_(v5, v4, self);
}

- (void)stop
{
  v4 = objc_msgSend_audioPlayer(self, a2, v2);
  objc_msgSend_setDelegate_(v4, v5, 0);

  v8 = objc_msgSend_audioPlayer(self, v6, v7);
  objc_msgSend_stop(v8, v9, v10);

  objc_msgSend_stopTimer(self, v11, v12);
}

- (void)pause
{
  v4 = objc_msgSend_audioPlayer(self, a2, v2);
  objc_msgSend_pause(v4, v5, v6);

  objc_msgSend_stopTimer(self, v7, v8);
}

- (void)prepareToPlay
{
  v5 = objc_msgSend_audioPlayer(self, a2, v2);
  objc_msgSend_prepareToPlay(v5, v3, v4);
}

- (BOOL)isPlaying
{
  v3 = objc_msgSend_audioPlayer(self, a2, v2);
  isPlaying = objc_msgSend_isPlaying(v3, v4, v5);

  return isPlaying;
}

- (double)currentTime
{
  prevCurrentTime = self->_prevCurrentTime;
  v5 = objc_msgSend_audioPlayer(self, a2, v2);
  objc_msgSend_currentTime(v5, v6, v7);
  v9 = v8;

  if (prevCurrentTime >= v9)
  {
    result = prevCurrentTime;
  }

  else
  {
    result = v9;
  }

  self->_prevCurrentTime = result;
  return result;
}

- (double)duration
{
  v3 = objc_msgSend_audioPlayer(self, a2, v2);
  objc_msgSend_duration(v3, v4, v5);
  v7 = v6;

  return v7;
}

- (void)setVolume:(float)volume
{
  v8 = objc_msgSend_audioPlayer(self, a2, v3);
  *&v5 = volume;
  objc_msgSend_setVolume_(v8, v6, v7, v5);
}

- (float)volume
{
  v3 = objc_msgSend_audioPlayer(self, a2, v2);
  objc_msgSend_volume(v3, v4, v5);
  v7 = v6;

  return v7;
}

- (IMAudioPlayerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end