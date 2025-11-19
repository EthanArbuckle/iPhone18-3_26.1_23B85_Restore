@interface IMAudioController
+ (id)audioControllerWithContentsOfURLs:(id)a3;
- (IMAudioController)initWithContentsOfURLs:(id)a3;
- (IMAudioControllerDelegate)delegate;
- (NSArray)audioURLs;
- (double)currentMediaObjectDuration;
- (double)currentMediaObjectTime;
- (float)volume;
- (id)currentMediaObject;
- (unint64_t)audioSessionControllerOptions;
- (void)_playSoundWithURL:(id)a3 completion:(id)a4;
- (void)audioPlayerCurrentTimeDidChange:(id)a3;
- (void)audioPlayerDidFinishPlaying:(id)a3;
- (void)dealloc;
- (void)pause;
- (void)playAfterDelay:(double)a3;
- (void)playListenEndSound:(id)a3;
- (void)playListenSound:(id)a3;
- (void)prepareToPlay;
- (void)setVolume:(float)a3;
- (void)stop;
@end

@implementation IMAudioController

- (void)dealloc
{
  objc_msgSend_setDelegate_(self->_audioPlayer, a2, 0);
  objc_msgSend_stop(self->_audioPlayer, v3, v4);
  v5.receiver = self;
  v5.super_class = IMAudioController;
  [(IMAudioController *)&v5 dealloc];
}

- (IMAudioController)initWithContentsOfURLs:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = IMAudioController;
  v7 = [(IMAudioController *)&v11 init];
  if (v7)
  {
    v8 = objc_msgSend_mutableCopy(v4, v5, v6);
    audioURLs = v7->_audioURLs;
    v7->_audioURLs = v8;

    v7->_shouldUseSpeaker = 1;
    v7->_currentIndex = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v7;
}

+ (id)audioControllerWithContentsOfURLs:(id)a3
{
  v4 = a3;
  v7 = objc_alloc(objc_msgSend_audioControllerClass(a1, v5, v6));
  v9 = objc_msgSend_initWithContentsOfURLs_(v7, v8, v4);

  return v9;
}

- (NSArray)audioURLs
{
  v3 = objc_msgSend_copy(self->_audioURLs, a2, v2);

  return v3;
}

- (unint64_t)audioSessionControllerOptions
{
  shouldUseSpeaker = objc_msgSend_shouldUseSpeaker(self, a2, v2);
  if (objc_msgSend_shouldStopPlayingWhenSilent(self, v5, v6))
  {
    shouldUseSpeaker |= 2uLL;
  }

  if (objc_msgSend_shouldDuckOthers(self, v7, v8))
  {
    return shouldUseSpeaker | 4;
  }

  else
  {
    return shouldUseSpeaker;
  }
}

- (void)playAfterDelay:(double)a3
{
  v63 = *MEMORY[0x277D85DE8];
  v5 = self->_audioURLs;
  v8 = objc_msgSend_audio(IMSharedUILogs, v6, v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    currentIndex = self->_currentIndex;
    LODWORD(buf) = 67109376;
    HIDWORD(buf) = currentIndex;
    v61 = 1024;
    v62 = objc_msgSend_count(v5, v9, v10);
    _os_log_impl(&dword_2547F8000, v8, OS_LOG_TYPE_INFO, "Playing %d of %d audio messages", &buf, 0xEu);
  }

  v14 = objc_msgSend_audioPlayer(self, v12, v13);
  objc_initWeak(&buf, self);
  if (v14)
  {
    if ((objc_msgSend_isPlaying(v14, v15, v16) & 1) == 0)
    {
      objc_initWeak(&location, v14);
      v19 = objc_msgSend_sharedInstance(IMAudioSessionController, v17, v18);
      v22 = objc_msgSend_audioSessionControllerOptions(self, v20, v21);
      v54[0] = MEMORY[0x277D85DD0];
      v54[1] = 3221225472;
      v54[2] = sub_2547FE614;
      v54[3] = &unk_279789090;
      v14 = v14;
      v55 = v14;
      v58[1] = *&a3;
      objc_copyWeak(&v57, &buf);
      objc_copyWeak(v58, &location);
      v56 = self;
      objc_msgSend_activateWithOptions_completion_(v19, v23, v22, v54);

      objc_destroyWeak(v58);
      objc_destroyWeak(&v57);

      objc_destroyWeak(&location);
    }
  }

  else
  {
    v24 = self->_currentIndex;
    if (v24 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v24 = 0;
      self->_currentIndex = 0;
    }

    if (v24 >= objc_msgSend_count(v5, v15, v16))
    {
      v14 = 0;
    }

    else
    {
      v26 = objc_msgSend_objectAtIndex_(v5, v25, self->_currentIndex);
      shouldUseAVPlayer = objc_msgSend_shouldUseAVPlayer(self, v27, v28);
      v31 = objc_msgSend_audioPlayerWithContentsOfURL_shouldUseAVPlayer_(IMAudioPlayer, v30, v26, shouldUseAVPlayer);
      objc_msgSend_setDelegate_(v31, v32, self);
      objc_msgSend_setAudioPlayer_(self, v33, v31);
      objc_initWeak(&location, v31);
      v36 = objc_msgSend_sharedInstance(IMAudioSessionController, v34, v35);
      v39 = objc_msgSend_audioSessionControllerOptions(self, v37, v38);
      v49[0] = MEMORY[0x277D85DD0];
      v49[1] = 3221225472;
      v49[2] = sub_2547FE768;
      v49[3] = &unk_279789090;
      v14 = v31;
      v50 = v14;
      v53[1] = *&a3;
      objc_copyWeak(&v52, &buf);
      objc_copyWeak(v53, &location);
      v51 = self;
      objc_msgSend_activateWithOptions_completion_(v36, v40, v39, v49);

      v43 = objc_msgSend_delegate(self, v41, v42);
      if (objc_opt_respondsToSelector())
      {
        objc_msgSend_duration(v14, v44, v45);
        objc_msgSend_audioController_didChangeProgressForContentAtURL_currentTime_duration_(v43, v46, self, v26, 0.0, v47);
      }

      objc_destroyWeak(v53);
      objc_destroyWeak(&v52);

      objc_destroyWeak(&location);
    }
  }

  objc_destroyWeak(&buf);

  v48 = *MEMORY[0x277D85DE8];
}

- (void)prepareToPlay
{
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = sub_2547FEBF0;
  v34 = sub_2547FEC00;
  v35 = objc_msgSend_audioPlayer(self, a2, v2);
  if (objc_msgSend_isPlaying(v31[5], v4, v5))
  {
    v8 = objc_msgSend_audioURL(v31[5], v6, v7);
    objc_msgSend__notifyPlayerDidPrepareAudioURL_successfully_(self, v9, v8, 1);
  }

  else
  {
    if (self->_currentIndex == 0x7FFFFFFFFFFFFFFFLL)
    {
      self->_currentIndex = 0;
    }

    v8 = self->_audioURLs;
    v12 = v31[5];
    if (v12)
    {
      goto LABEL_6;
    }

    currentIndex = self->_currentIndex;
    if (currentIndex >= objc_msgSend_count(v8, v10, v11))
    {
      objc_msgSend__notifyPlayerDidPrepareAudioURL_successfully_(self, v10, 0, 0);
      goto LABEL_8;
    }

    v12 = v31[5];
    if (v12)
    {
LABEL_6:
      v13 = objc_msgSend_audioURL(v12, v10, v11);
    }

    else
    {
      v13 = objc_msgSend_objectAtIndex_(v8, v10, self->_currentIndex);
    }

    v16 = v13;
    v17 = objc_msgSend_sharedInstance(IMAudioSessionController, v14, v15);
    v20 = objc_msgSend_audioSessionControllerOptions(self, v18, v19);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = sub_2547FEC08;
    v25[3] = &unk_2797890B8;
    v21 = v17;
    v26 = v21;
    v27 = self;
    v22 = v16;
    v28 = v22;
    v29 = &v30;
    objc_msgSend_activateWithOptions_completion_(v21, v23, v20, v25);
  }

LABEL_8:

  _Block_object_dispose(&v30, 8);
}

- (void)pause
{
  v4 = objc_msgSend_audioPlayer(self, a2, v2);
  objc_msgSend_pause(v4, v5, v6);

  objc_msgSend_setPlaying_(self, v7, 0);
  v11 = objc_msgSend_delegate(self, v8, v9);
  if (objc_opt_respondsToSelector())
  {
    objc_msgSend_audioControllerDidPause_(v11, v10, self);
  }
}

- (void)stop
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_audio(IMSharedUILogs, a2, v2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v23[0] = 67109120;
    v23[1] = objc_msgSend_interrupted(self, v5, v6);
    _os_log_impl(&dword_2547F8000, v4, OS_LOG_TYPE_INFO, "Stop (interruption: %d)", v23, 8u);
  }

  v9 = objc_msgSend_audioPlayer(self, v7, v8);
  objc_msgSend_stop(v9, v10, v11);

  objc_msgSend_setPlaying_(self, v12, 0);
  if ((objc_msgSend_interrupted(self, v13, v14) & 1) == 0)
  {
    v17 = objc_msgSend_sharedInstance(IMAudioSessionController, v15, v16);
    objc_msgSend_deactivate(v17, v18, v19);
  }

  v20 = objc_msgSend_delegate(self, v15, v16);
  if (objc_opt_respondsToSelector())
  {
    objc_msgSend_audioControllerDidStop_(v20, v21, self);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (id)currentMediaObject
{
  currentIndex = self->_currentIndex;
  if (currentIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 0;
  }

  else
  {
    v4 = objc_msgSend_objectAtIndex_(self->_audioURLs, a2, currentIndex);
  }

  return v4;
}

- (double)currentMediaObjectTime
{
  v3 = objc_msgSend_audioPlayer(self, a2, v2);
  objc_msgSend_currentTime(v3, v4, v5);
  v7 = v6;

  return v7;
}

- (double)currentMediaObjectDuration
{
  v3 = objc_msgSend_audioPlayer(self, a2, v2);
  objc_msgSend_duration(v3, v4, v5);
  v7 = v6;

  return v7;
}

- (void)setVolume:(float)a3
{
  v8 = objc_msgSend_audioPlayer(self, a2, v3);
  *&v5 = a3;
  objc_msgSend_setVolume_(v8, v6, v7, v5);
}

- (float)volume
{
  v3 = objc_msgSend_audioPlayer(self, a2, v2);
  objc_msgSend_volume(v3, v4, v5);
  v7 = v6;

  return v7;
}

- (void)audioPlayerCurrentTimeDidChange:(id)a3
{
  v18 = a3;
  v6 = objc_msgSend_delegate(self, v4, v5);
  if (objc_opt_respondsToSelector())
  {
    v9 = objc_msgSend_currentMediaObject(self, v7, v8);
    objc_msgSend_currentTime(v18, v10, v11);
    v13 = v12;
    objc_msgSend_duration(v18, v14, v15);
    objc_msgSend_audioController_didChangeProgressForContentAtURL_currentTime_duration_(v6, v16, self, v9, v13, v17);
  }
}

- (void)audioPlayerDidFinishPlaying:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_delegate(self, v5, v6);
  if (objc_opt_respondsToSelector())
  {
    v10 = objc_msgSend_currentMediaObject(self, v8, v9);
    objc_msgSend_audioController_didFinishPlayingContentAtURL_(v7, v11, self, v10);
  }

  objc_msgSend_setDelegate_(v4, v8, 0);
  objc_msgSend_setAudioPlayer_(self, v12, 0);
  v13 = self->_currentIndex + 1;
  if (v13 >= objc_msgSend_count(self->_audioURLs, v14, v15))
  {
    if (objc_msgSend_shouldUseSpeaker(self, v16, v17))
    {
      objc_msgSend_stop(self, v18, v19);
    }

    else
    {
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = sub_2547FF1FC;
      v20[3] = &unk_2797890E0;
      v20[4] = self;
      objc_msgSend_playListenEndSound_(self, v18, v20);
    }
  }

  else
  {
    ++self->_currentIndex;
    objc_msgSend_play(self, v16, v17);
  }
}

- (void)_playSoundWithURL:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v9 = objc_msgSend_audioPlayerWithContentsOfURL_(IMAudioPlayer, v8, v6);
  objc_msgSend_setListenAudioPlayer_(self, v10, v9);
  objc_initWeak(&location, self);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_2547FF410;
  v13[3] = &unk_279789108;
  objc_copyWeak(&v15, &location);
  v11 = v7;
  v14 = v11;
  objc_msgSend_playAfterDelay_completion_(v9, v12, v13, 0.0);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (void)playListenSound:(id)a3
{
  v4 = a3;
  v6 = IMURLForResourceFromSharedUIBundle(@"MessageListen", @"caf");
  objc_msgSend__playSoundWithURL_completion_(self, v5, v6, v4);
}

- (void)playListenEndSound:(id)a3
{
  v4 = a3;
  v6 = IMURLForResourceFromSharedUIBundle(@"MessageListenEnd", @"caf");
  objc_msgSend__playSoundWithURL_completion_(self, v5, v6, v4);
}

- (IMAudioControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end