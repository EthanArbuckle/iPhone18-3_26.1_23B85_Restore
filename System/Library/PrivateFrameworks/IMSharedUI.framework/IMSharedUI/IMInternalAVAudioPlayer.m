@interface IMInternalAVAudioPlayer
- (BOOL)_playAtTime:(double)a3;
- (BOOL)isPlaying;
- (BOOL)playAtTime:(double)a3;
- (IMInternalAVAudioPlayer)initWithContentsOfURL:(id)a3 playerType:(int64_t)a4;
- (IMInternalAVAudioPlayerDelegate)delegate;
- (double)currentTime;
- (double)deviceCurrentTime;
- (double)duration;
- (float)volume;
- (void)_handleAVPlayerItemStateChange;
- (void)_playerItemDidEndNotification:(id)a3;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)pause;
- (void)prepareToPlay;
- (void)setVolume:(float)a3;
- (void)stop;
@end

@implementation IMInternalAVAudioPlayer

- (IMInternalAVAudioPlayer)initWithContentsOfURL:(id)a3 playerType:(int64_t)a4
{
  v43[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v41.receiver = self;
  v41.super_class = IMInternalAVAudioPlayer;
  v7 = [(IMInternalAVAudioPlayer *)&v41 init];
  v10 = v7;
  v11 = 0;
  if (v6 && v7)
  {
    if (objc_msgSend_isFileURL(v6, v8, v9))
    {
      *(v10 + 48) = a4;
      if (a4 == 1)
      {
        v42 = *MEMORY[0x277CE6260];
        v13 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v12, 0xFFFFLL);
        v43[0] = v13;
        v15 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v14, v43, &v42, 1);

        v17 = objc_msgSend_URLAssetWithURL_options_(MEMORY[0x277CE6650], v16, v6, v15);
        v19 = objc_msgSend_playerItemWithAsset_(MEMORY[0x277CE65B0], v18, v17);
        v20 = *(v10 + 24);
        *(v10 + 24) = v19;

        objc_msgSend_setPlayHapticTracks_(*(v10 + 24), v21, 1);
        v23 = objc_msgSend_playerWithPlayerItem_(MEMORY[0x277CE6598], v22, *(v10 + 24));
        v24 = *(v10 + 16);
        *(v10 + 16) = v23;

        objc_msgSend_addObserver_forKeyPath_options_context_(*(v10 + 24), v25, v10, @"status", 3, qword_27F6116A0);
        v28 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v26, v27);
        objc_msgSend_addObserver_selector_name_object_(v28, v29, v10, sel__playerItemDidEndNotification_, *MEMORY[0x277CE60C0], *(v10 + 24));

        v32 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v30, v31);
        objc_msgSend_addObserver_selector_name_object_(v32, v33, v10, sel__playerItemDidEndNotification_, *MEMORY[0x277CE60D0], *(v10 + 24));
      }

      else
      {
        v34 = objc_alloc(MEMORY[0x277CB83D0]);
        v36 = objc_msgSend_initWithContentsOfURL_error_(v34, v35, v6, 0);
        v37 = *(v10 + 8);
        *(v10 + 8) = v36;

        objc_msgSend_setDelegate_(*(v10 + 8), v38, v10);
      }

      v11 = v10;
    }

    else
    {
      v11 = 0;
    }
  }

  v39 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v11 = a5;
  if (qword_27F6116A0 == a6)
  {
    if (objc_msgSend_isEqualToString_(a3, v10, @"status"))
    {
      v13 = objc_msgSend_objectForKeyedSubscript_(v11, v12, *MEMORY[0x277CCA2F0]);
      v15 = objc_msgSend_objectForKeyedSubscript_(v11, v14, *MEMORY[0x277CCA300]);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && (objc_msgSend_isEqualToNumber_(v13, v16, v15) & 1) == 0)
        {
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = sub_2547FFAD8;
          block[3] = &unk_2797890E0;
          block[4] = self;
          dispatch_async(MEMORY[0x277D85CD0], block);
        }
      }
    }
  }

  else
  {
    v18.receiver = self;
    v18.super_class = IMInternalAVAudioPlayer;
    [(IMInternalAVAudioPlayer *)&v18 observeValueForKeyPath:a3 ofObject:a4 change:v11 context:a6];
  }
}

- (BOOL)playAtTime:(double)a3
{
  if (self->_playerType == 1 && !objc_msgSend_status(self->_playerItem, a2, v3))
  {
    self->_avPlayerPlayRequested = 1;
    return 1;
  }

  else
  {

    return MEMORY[0x2821F9670](self, sel__playAtTime_, v3);
  }
}

- (BOOL)_playAtTime:(double)a3
{
  v5 = MEMORY[0x259C1A7F0]("kCMTimeZero", @"CoreMedia");
  v13 = *v5;
  v14 = *(v5 + 16);
  if (self->_playerType == 1)
  {
    self->_avPlayerPlayRequested = 0;
    if (self->_avPlayerState == 3)
    {
      avPlayer = self->_avPlayer;
      v11 = v13;
      v12 = v14;
      objc_msgSend_seekToTime_(avPlayer, v6, &v11);
    }

    objc_msgSend_play(self->_avPlayer, v6, v7);
    self->_avPlayerState = 1;
    return 1;
  }

  else
  {
    avAudioPlayer = self->_avAudioPlayer;

    return objc_msgSend_playAtTime_(avAudioPlayer, v6, v7, a3);
  }
}

- (double)deviceCurrentTime
{
  if (self->_playerType == 1)
  {
    return 0.0;
  }

  objc_msgSend_deviceCurrentTime(self->_avAudioPlayer, a2, v2);
  return result;
}

- (void)stop
{
  if (self->_playerType == 1)
  {
    if ((self->_avPlayerState & 0xFFFFFFFFFFFFFFFELL) != 2)
    {
      objc_msgSend_pause(self->_avPlayer, a2, v2);
    }

    self->_avPlayerState = 3;
  }

  else
  {
    avAudioPlayer = self->_avAudioPlayer;

    objc_msgSend_stop(avAudioPlayer, a2, v2);
  }
}

- (void)pause
{
  if (self->_playerType == 1)
  {
    objc_msgSend_pause(self->_avPlayer, a2, v2);
    self->_avPlayerState = 2;
  }

  else
  {
    avAudioPlayer = self->_avAudioPlayer;

    objc_msgSend_pause(avAudioPlayer, a2, v2);
  }
}

- (float)volume
{
  v3 = 8;
  if (self->_playerType == 1)
  {
    v3 = 16;
  }

  objc_msgSend_volume(*(&self->super.isa + v3), a2, v2);
  return result;
}

- (void)setVolume:(float)a3
{
  v4 = 8;
  if (self->_playerType == 1)
  {
    v4 = 16;
  }

  objc_msgSend_setVolume_(*(&self->super.isa + v4), a2, v3);
}

- (BOOL)isPlaying
{
  if (self->_playerType == 1)
  {
    return self->_avPlayerState == 1;
  }

  else
  {
    return objc_msgSend_isPlaying(self->_avAudioPlayer, a2, v2);
  }
}

- (double)currentTime
{
  if (qword_27F611770 != -1)
  {
    sub_25480566C();
  }

  if (self->_playerType == 1)
  {
    v4 = off_27F611768;
    avPlayer = self->_avPlayer;
    if (avPlayer)
    {
      objc_msgSend_currentTime(avPlayer, a2, v2);
    }

    else
    {
      memset(v8, 0, sizeof(v8));
    }

    v4(v8);
  }

  else
  {
    avAudioPlayer = self->_avAudioPlayer;

    objc_msgSend_currentTime(avAudioPlayer, a2, v2);
  }

  return result;
}

- (double)duration
{
  if (qword_27F611780 != -1)
  {
    sub_254805680();
  }

  if (qword_27F611790 != -1)
  {
    sub_254805694();
  }

  v3 = MEMORY[0x259C1A7F0]("kCMTimeIndefinite", @"CoreMedia");
  v18 = *v3;
  v19 = *(v3 + 16);
  if (self->_playerType == 1)
  {
    v16 = 0uLL;
    v17 = 0;
    v6 = objc_msgSend_currentItem(self->_avPlayer, v4, v5);
    v9 = v6;
    if (v6)
    {
      objc_msgSend_duration(v6, v7, v8);
    }

    else
    {
      v16 = 0uLL;
      v17 = 0;
    }

    v14 = v16;
    v15 = v17;
    v12 = v18;
    v13 = v19;
    if (off_27F611778(&v14, &v12))
    {
      v14 = v16;
      v15 = v17;
      off_27F611788(&v14);
    }

    else
    {
      return 0.0;
    }
  }

  else
  {
    avAudioPlayer = self->_avAudioPlayer;

    objc_msgSend_duration(avAudioPlayer, v4, v5);
  }

  return result;
}

- (void)prepareToPlay
{
  if (self->_playerType != 1)
  {
    v7 = objc_msgSend_prepareToPlay(self->_avAudioPlayer, a2, v2);
LABEL_7:
    v6 = self;
    goto LABEL_8;
  }

  if (!objc_msgSend_isPlaying(self, a2, v2))
  {
    v8 = objc_msgSend_status(self->_playerItem, v4, v5);
    if (!v8)
    {
      self->_avPlayerPrepareRequested = 1;
      return;
    }

    v7 = v8 == 1;
    goto LABEL_7;
  }

  v6 = self;
  v7 = 1;
LABEL_8:

  objc_msgSend__notifyPlayerDidPrepareAudioFileSuccessfully_(v6, v4, v7);
}

- (void)dealloc
{
  objc_msgSend_removeObserver_forKeyPath_(self->_playerItem, a2, self, @"status");
  v5 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v3, v4);
  objc_msgSend_removeObserver_name_object_(v5, v6, self, *MEMORY[0x277CE60C0], self->_playerItem);

  v9 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v7, v8);
  objc_msgSend_removeObserver_name_object_(v9, v10, self, *MEMORY[0x277CE60D0], self->_playerItem);

  objc_msgSend_setDelegate_(self->_avAudioPlayer, v11, 0);
  v12.receiver = self;
  v12.super_class = IMInternalAVAudioPlayer;
  [(IMInternalAVAudioPlayer *)&v12 dealloc];
}

- (void)_playerItemDidEndNotification:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2548001C8;
  v6[3] = &unk_279789020;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

- (void)_handleAVPlayerItemStateChange
{
  v4 = objc_msgSend_status(self->_playerItem, a2, v2);
  v7 = v4;
  if (self->_avPlayerPrepareRequested)
  {
    self->_avPlayerPrepareRequested = 0;
    objc_msgSend__notifyPlayerDidPrepareAudioFileSuccessfully_(self, v5, v4 == 1);
  }

  if (self->_avPlayerPlayRequested && v7 != 0)
  {
    self->_avPlayerPlayRequested = 0;

    MEMORY[0x2821F9670](self, sel__playAtTime_, v6);
  }
}

- (IMInternalAVAudioPlayerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end