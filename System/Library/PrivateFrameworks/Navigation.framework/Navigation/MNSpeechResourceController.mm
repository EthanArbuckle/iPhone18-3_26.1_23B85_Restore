@interface MNSpeechResourceController
- (BOOL)_createDurationCacheIfNecessary;
- (BOOL)cache:(id)a3 withDisclosure:(unint64_t)a4 andReport:(id *)a5;
- (BOOL)speak:(id)a3 withDisclosure:(unint64_t)a4 andReport:(id *)a5;
- (BOOL)stopSpeakingAndReport:(id *)a3;
- (MNSpeechControllerDelegate)delegate;
- (MNSpeechResourceController)initWithLanguage:(id)a3;
- (double)_estimateDurationForUtterance:(id)a3;
- (double)_volumeFromUserPreference;
- (double)durationOf:(id)a3;
- (void)_addDurationToCache:(double)a3 forUtterance:(id)a4;
- (void)_audioSessionInterruption:(id)a3;
- (void)_cachingTimeoutOccurred;
- (void)_cancelTimer;
- (void)_createTimerForUtterance:(id)a3 andIsCaching:(BOOL)a4;
- (void)_markVoiceForDownloadingWithLanguage:(id)a3 andVoiceName:(id)a4 andGender:(int64_t)a5;
- (void)_mediaSessionServicesWereReset:(id)a3;
- (void)_registerForObservation;
- (void)_speakingTimeoutOccurred:(double)a3;
- (void)_updateEstimatorWithDuration:(double)a3 andUtterance:(id)a4;
- (void)_voiceChanged;
- (void)_warmUpTTSForLanguage:(id)a3 andVoiceName:(id)a4 andGender:(int64_t)a5 andAudioSessionID:(unsigned int)a6;
- (void)dealloc;
- (void)didFinishSpeakingRequest:(id)a3 metrics:(id)a4 withError:(id)a5;
- (void)didFinishSynthesisRequest:(id)a3 withInstrumentMetrics:(id)a4 error:(id)a5;
- (void)didStartSpeakingRequest:(id)a3;
@end

@implementation MNSpeechResourceController

- (MNSpeechControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_mediaSessionServicesWereReset:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E698D710] sharedInstance];
  self->_audioSessionID = [v4 opaqueSessionID];

  v5 = GetAudioLogForMNSpeechResourceControllerCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    audioSessionID = self->_audioSessionID;
    v8[0] = 67109120;
    v8[1] = audioSessionID;
    _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_INFO, "ⓢ Media services were reset. New session id: %d", v8, 8u);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_audioSessionInterruption:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:*MEMORY[0x1E698D588]];
  v6 = [v5 integerValue];

  if (v6 == 1 && [(MNSpeechResourceController *)self speaking])
  {
    v7 = GetAudioLogForMNSpeechResourceControllerCategory();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
    v9 = MEMORY[0x1E698D570];
    if (v8)
    {
      v10 = [v4 objectForKey:*MEMORY[0x1E698D570]];
      *buf = 138412290;
      v24 = v10;
      _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_INFO, "ⓢ Media services were interrupted - %@", buf, 0xCu);
    }

    v11 = self->_utterance;
    [(MNSpeechResourceController *)self stopSpeakingAndReport:0];
    v12 = [(MNSpeechResourceController *)self delegate];
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      v14 = MEMORY[0x1E696ABC0];
      v15 = @"MNAudioSystemError";
      v16 = [v4 objectForKey:{*v9, *MEMORY[0x1E696AA08]}];
      v22 = v16;
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
      v18 = [v14 errorWithDomain:@"MNAudioSystemError" code:0 userInfo:v17];

      v19 = [(MNSpeechResourceController *)self delegate];
      [v19 speechResourceController:self wasInterruptedWhileSpeakingUtterance:v11 withError:v18];
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)_updateEstimatorWithDuration:(double)a3 andUtterance:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = v6;
  v8 = a3 >= 1.0 && a3 <= 60.0;
  if (v8 && [v6 length])
  {
    v9 = [v7 _navigation_stripTagsFromSpokenString];
    v10 = [v9 length];

    v11 = self->_charactersSpokenCount + v10;
    self->_charactersSpokenCount = v11;
    v12 = self->_charactersSpokenDuration + a3;
    self->_charactersSpokenDuration = v12;
    if (v11 < 0x2711)
    {
      v13 = GetAudioLogForMNSpeechResourceControllerCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        charactersSpokenCount = self->_charactersSpokenCount;
        charactersSpokenDuration = self->_charactersSpokenDuration;
        v20 = 134218240;
        v21 = charactersSpokenCount;
        v22 = 2048;
        v23 = charactersSpokenDuration;
        v16 = "ⓢ Updated estimator: chars spoken %lu : duration %f";
        goto LABEL_12;
      }
    }

    else
    {
      self->_charactersSpokenCount = v11 >> 1;
      self->_charactersSpokenDuration = v12 * 0.5;
      v13 = GetAudioLogForMNSpeechResourceControllerCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v14 = self->_charactersSpokenCount;
        v15 = self->_charactersSpokenDuration;
        v20 = 134218240;
        v21 = v14;
        v22 = 2048;
        v23 = v15;
        v16 = "ⓢ Updated estimator (clamped): chars spoken %lu : duration %f";
LABEL_12:
        _os_log_impl(&dword_1D311E000, v13, OS_LOG_TYPE_DEBUG, v16, &v20, 0x16u);
      }
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)didFinishSpeakingRequest:(id)a3 metrics:(id)a4 withError:(id)a5
{
  v39 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [(MNSpeechResourceController *)self _cancelTimer];
  self->_currentlySpeaking = 0;
  utterance = self->_utterance;
  self->_utterance = 0;

  [(SiriTTSDaemonSession *)self->_session setKeepActive:0];
  if (!v10)
  {
    [v9 audioDuration];
    v19 = v18;
    v20 = [v8 text];
    v21 = GetAudioLogForMNSpeechResourceControllerCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v36 = v8;
      v37 = 2048;
      v38 = v19;
      _os_log_impl(&dword_1D311E000, v21, OS_LOG_TYPE_DEFAULT, "Finished speech request (%p) in %0.1fs seconds.", buf, 0x16u);
    }

    [(MNSpeechResourceController *)self _addDurationToCache:v20 forUtterance:v19];
    [(MNSpeechResourceController *)self _updateEstimatorWithDuration:v20 andUtterance:v19];
    v22 = [(MNSpeechResourceController *)self delegate];
    v23 = objc_opt_respondsToSelector();

    if ((v23 & 1) == 0)
    {
      goto LABEL_18;
    }

    v24 = [(MNSpeechResourceController *)self delegate];
    [v24 speechResourceController:self didFinishSpeakingUtterance:v20 withDuration:v19];
LABEL_17:

LABEL_18:
    goto LABEL_19;
  }

  v12 = [v10 code];
  v13 = GetAudioLogForMNSpeechResourceControllerCategory();
  v14 = v13;
  if (v12 == 1)
  {
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    *buf = 134218242;
    v36 = v8;
    v37 = 2112;
    v38 = *&v10;
    v15 = "Cancelled speech request (%p): %@.";
    v16 = v14;
    v17 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    *buf = 134218242;
    v36 = v8;
    v37 = 2112;
    v38 = *&v10;
    v15 = "Finished speech request (%p) with error: %@.";
    v16 = v14;
    v17 = OS_LOG_TYPE_ERROR;
  }

  _os_log_impl(&dword_1D311E000, v16, v17, v15, buf, 0x16u);
LABEL_12:

  v25 = [(MNSpeechResourceController *)self delegate];
  v26 = objc_opt_respondsToSelector();

  if (v26)
  {
    if ([v10 code] == 1)
    {
      v27 = 3608;
    }

    else
    {
      v27 = 3607;
    }

    v28 = MEMORY[0x1E696ABC0];
    v29 = @"MNAudioSystemError";
    v33 = *MEMORY[0x1E696AA08];
    v34 = v10;
    v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    v20 = [v28 errorWithDomain:@"MNAudioSystemError" code:v27 userInfo:v30];

    v24 = [(MNSpeechResourceController *)self delegate];
    v31 = [v8 text];
    [v24 speechResourceController:self didFailWhileSpeakingUtterance:v31 withError:v20];

    goto LABEL_17;
  }

LABEL_19:

  v32 = *MEMORY[0x1E69E9840];
}

- (void)didStartSpeakingRequest:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = GetAudioLogForMNSpeechResourceControllerCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    session = self->_session;
    v12 = 136315650;
    v13 = "[MNSpeechResourceController didStartSpeakingRequest:]";
    v14 = 2112;
    v15 = session;
    v16 = 2112;
    v17 = v4;
    _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_DEBUG, "%s : %@ : %@", &v12, 0x20u);
  }

  v7 = [(MNSpeechResourceController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(MNSpeechResourceController *)self delegate];
    v10 = [v4 text];
    [v9 speechResourceController:self willStartSpeakingUtterance:v10];
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)didFinishSynthesisRequest:(id)a3 withInstrumentMetrics:(id)a4 error:(id)a5
{
  v40 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = GetAudioLogForMNSpeechResourceControllerCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    session = self->_session;
    *buf = 136316162;
    v31 = "[MNSpeechResourceController didFinishSynthesisRequest:withInstrumentMetrics:error:]";
    v32 = 2112;
    v33 = session;
    v34 = 2112;
    v35 = v8;
    v36 = 2112;
    v37 = v9;
    v38 = 2112;
    v39 = v10;
    _os_log_impl(&dword_1D311E000, v11, OS_LOG_TYPE_DEBUG, "%s : %@ : %@ : %@ : %@", buf, 0x34u);
  }

  [(MNSpeechResourceController *)self _cancelTimer];
  [v9 audioDuration];
  v14 = v13;
  v15 = [v8 text];
  [(SiriTTSDaemonSession *)self->_session setKeepActive:0];
  if (v10)
  {
    v16 = GetAudioLogForMNSpeechResourceControllerCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v31 = v8;
      v32 = 2112;
      v33 = v10;
      _os_log_impl(&dword_1D311E000, v16, OS_LOG_TYPE_ERROR, "⒮    Error while processing synthesis request : %@ - %@", buf, 0x16u);
    }

    v17 = [(MNSpeechResourceController *)self delegate];
    v18 = objc_opt_respondsToSelector();

    if (v18)
    {
      if ([v10 code] == 1)
      {
        v19 = 3604;
      }

      else
      {
        v19 = 3603;
      }

      v20 = MEMORY[0x1E696ABC0];
      v21 = @"MNAudioSystemError";
      v28 = *MEMORY[0x1E696AA08];
      v29 = v10;
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
      v23 = [v20 errorWithDomain:@"MNAudioSystemError" code:v19 userInfo:v22];

      v24 = [(MNSpeechResourceController *)self delegate];
      [v24 speechResourceController:self didFailWhileCachingUtterance:v15 withError:v23];

      goto LABEL_13;
    }
  }

  else
  {
    [(MNSpeechResourceController *)self _addDurationToCache:v15 forUtterance:v14];
    [(MNSpeechResourceController *)self _updateEstimatorWithDuration:v15 andUtterance:v14];
    v25 = [(MNSpeechResourceController *)self delegate];
    v26 = objc_opt_respondsToSelector();

    if (v26)
    {
      v23 = [(MNSpeechResourceController *)self delegate];
      [v23 speechResourceController:self didCacheUtterance:v15 withDuration:v14];
LABEL_13:
    }
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (void)_speakingTimeoutOccurred:(double)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = GetAudioLogForMNSpeechResourceControllerCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v13 = 134217984;
    v14 = a3;
    _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_ERROR, "⒮ Synthesizer could not speak within specified time (%.3f) or nothing was spoken", &v13, 0xCu);
  }

  [(MNSpeechResourceController *)self _cancelTimer];
  [(SiriTTSDaemonSession *)self->_session setKeepActive:0];
  v6 = [(MNSpeechResourceController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = MEMORY[0x1E696ABC0];
    v9 = @"MNAudioSystemError";
    v10 = [v8 errorWithDomain:@"MNAudioSystemError" code:3609 userInfo:0];

    v11 = [(MNSpeechResourceController *)self delegate];
    [v11 speechResourceController:self didTimeoutWhileSpeakingUtterance:self->_utterance withError:v10];
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_cachingTimeoutOccurred
{
  v3 = GetAudioLogForMNSpeechResourceControllerCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *v10 = 0;
    _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_ERROR, "⒮ Synthesizer could not cache within specified time", v10, 2u);
  }

  [(MNSpeechResourceController *)self _cancelTimer];
  [(SiriTTSDaemonSession *)self->_session setKeepActive:0];
  v4 = [(MNSpeechResourceController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = MEMORY[0x1E696ABC0];
    v7 = @"MNAudioSystemError";
    v8 = [v6 errorWithDomain:@"MNAudioSystemError" code:3605 userInfo:0];

    v9 = [(MNSpeechResourceController *)self delegate];
    [v9 speechResourceController:self didTimeoutWhileSpeakingUtterance:self->_utterance withError:v8];
  }
}

- (void)_cancelTimer
{
  if (self->_timer)
  {
    v3 = GetAudioLogForMNSpeechResourceControllerCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *v5 = 0;
      _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_DEBUG, "ⓢ Stopping timer", v5, 2u);
    }

    [(MNDispatchTimer *)self->_timer cancel];
    timer = self->_timer;
    self->_timer = 0;
  }
}

- (void)_createTimerForUtterance:(id)a3 andIsCaching:(BOOL)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  [(MNSpeechResourceController *)self durationOf:v6];
  v8 = fmax(v7 * 1.5, v7 + 2.0);
  v9 = GetAudioLogForMNSpeechResourceControllerCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v20 = v8;
    _os_log_impl(&dword_1D311E000, v9, OS_LOG_TYPE_INFO, "ⓢ Creating timer with timeout: %f", buf, 0xCu);
  }

  [(MNSpeechResourceController *)self _cancelTimer];
  objc_initWeak(buf, self);
  v10 = [MNDispatchTimer alloc];
  v11 = MNNavigationQueue();
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __68__MNSpeechResourceController__createTimerForUtterance_andIsCaching___block_invoke;
  v16[3] = &unk_1E842FB60;
  v18 = a4;
  objc_copyWeak(v17, buf);
  v17[1] = *&v8;
  v12 = [(MNDispatchTimer *)v10 initWithTime:v11 queue:v16 handler:v8];
  timer = self->_timer;
  p_timer = &self->_timer;
  *p_timer = v12;

  [*p_timer activate];
  objc_destroyWeak(v17);
  objc_destroyWeak(buf);

  v15 = *MEMORY[0x1E69E9840];
}

void __68__MNSpeechResourceController__createTimerForUtterance_andIsCaching___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (v2 == 1)
  {
    [WeakRetained _cachingTimeoutOccurred];
  }

  else
  {
    [WeakRetained _speakingTimeoutOccurred:*(a1 + 40)];
  }
}

- (double)_estimateDurationForUtterance:(id)a3
{
  v4 = [a3 _navigation_stripTagsFromSpokenString];
  v5 = v4;
  charactersSpokenCount = self->_charactersSpokenCount;
  if (charactersSpokenCount < 0x33)
  {
    if ([v4 _navigation_isCJK])
    {
      v7 = 0.2;
    }

    else
    {
      v7 = 0.07;
    }
  }

  else
  {
    v7 = fmax(fmin(self->_charactersSpokenDuration / charactersSpokenCount, 0.4), 0.04);
  }

  v8 = v7 * [v5 length];

  return v8;
}

- (void)_addDurationToCache:(double)a3 forUtterance:(id)a4
{
  durations = self->_durations;
  v6 = MEMORY[0x1E696AD98];
  v7 = a4;
  v8 = [v6 numberWithDouble:a3];
  [(NSCache *)durations setObject:v8 forKey:v7];
}

- (BOOL)_createDurationCacheIfNecessary
{
  durations = self->_durations;
  if (!durations)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    v5 = self->_durations;
    self->_durations = v4;
  }

  return durations == 0;
}

- (double)_volumeFromUserPreference
{
  if (GEOConfigGetBOOL())
  {
    v2 = &NavigationConfig_SpokenGuidanceDebugVolume;
  }

  else
  {
    Integer = GEOConfigGetInteger();
    if (Integer <= 2)
    {
      v2 = *(&off_1E842FB80 + Integer);
      v4 = *(&off_1E842FB98 + Integer);
      goto LABEL_7;
    }

    v2 = &NavigationConfig_SpokenGuidanceVolumeNormal;
  }

  v4 = v2 + 1;
LABEL_7:
  v5 = *v2;
  v6 = *v4;

  GEOConfigGetDouble();
  return result;
}

- (BOOL)stopSpeakingAndReport:(id *)a3
{
  [(MNSpeechResourceController *)self _cancelTimer];
  if ([(MNSpeechResourceController *)self speaking])
  {
    [(SiriTTSDaemonSession *)self->_session setKeepActive:0];
    if (self->_onGoingRequest)
    {
      v4 = GetAudioLogForMNSpeechResourceControllerCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1D311E000, v4, OS_LOG_TYPE_INFO, "Ⓢ Attempting to immediately stop current speech", buf, 2u);
      }

      [(SiriTTSDaemonSession *)self->_session cancelWithRequest:self->_onGoingRequest];
    }

    else
    {
      self->_currentlySpeaking = 0;
      utterance = self->_utterance;
      self->_utterance = 0;

      v6 = GetAudioLogForMNSpeechResourceControllerCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *v10 = 0;
        _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_INFO, "Ⓢ No speech currently in progress", v10, 2u);
      }
    }

    v7 = GetAudioLogForMNSpeechResourceControllerCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *v9 = 0;
      _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_DEBUG, "Ⓢ    Stop speaking request was successful", v9, 2u);
    }
  }

  return 1;
}

- (BOOL)speak:(id)a3 withDisclosure:(unint64_t)a4 andReport:(id *)a5
{
  v52 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = GetAudioLogForMNSpeechResourceControllerCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    cachedVoiceLanguage = self->_cachedVoiceLanguage;
    cachedVoiceName = self->_cachedVoiceName;
    cachedVoiceGender = self->_cachedVoiceGender;
    *buf = 138413570;
    *&buf[4] = cachedVoiceLanguage;
    *&buf[12] = 2112;
    *&buf[14] = cachedVoiceName;
    *&buf[22] = 1024;
    LODWORD(v48) = cachedVoiceGender;
    WORD2(v48) = 2080;
    *(&v48 + 6) = "[MNSpeechResourceController speak:withDisclosure:andReport:]";
    HIWORD(v48) = 2112;
    v49 = v9;
    v50 = 2048;
    v51 = a4;
    _os_log_impl(&dword_1D311E000, v10, OS_LOG_TYPE_DEBUG, "Speak with language %@, name %@, gender %d\nⓢ %s : %@ : %lu", buf, 0x3Au);
  }

  if (!GEOConfigGetBOOL())
  {
    if ([v9 length])
    {
      if (a4 < 2)
      {
        [(MNSpeechResourceController *)self stopSpeakingAndReport:0];
        [(SiriTTSDaemonSession *)self->_session setKeepActive:1];
        v20 = [(MNSpeechResourceController *)self _speechRequestForUtterance:v9 withLanguage:self->_cachedVoiceLanguage andVoiceName:self->_cachedVoiceName andAudioSessionID:self->_audioSessionID andPrivacySensitive:a4 == 0];
        v30 = GetAudioLogForMNSpeechResourceControllerCategory();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218243;
          *&buf[4] = v20;
          *&buf[12] = 2113;
          *&buf[14] = v9;
          _os_log_impl(&dword_1D311E000, v30, OS_LOG_TYPE_DEFAULT, "Sending speech request (%p): %{private}@", buf, 0x16u);
        }

        objc_initWeak(&location, self);
        objc_initWeak(&from, v20);
        v40[0] = MEMORY[0x1E69E9820];
        v40[1] = 3221225472;
        v40[2] = __61__MNSpeechResourceController_speak_withDisclosure_andReport___block_invoke;
        v40[3] = &unk_1E842FAC8;
        objc_copyWeak(&v41, &location);
        objc_copyWeak(&v42, &from);
        [(__CFString *)v20 setDidStartSpeaking:v40];
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        *&v48 = __Block_byref_object_copy__14191;
        *(&v48 + 1) = __Block_byref_object_dispose__14192;
        v49 = 0;
        v39[0] = MEMORY[0x1E69E9820];
        v39[1] = 3221225472;
        v39[2] = __61__MNSpeechResourceController_speak_withDisclosure_andReport___block_invoke_2;
        v39[3] = &unk_1E842FA68;
        v39[4] = buf;
        [(__CFString *)v20 setDidReportInstrument:v39];
        self->_currentlySpeaking = 1;
        session = self->_session;
        v36[0] = MEMORY[0x1E69E9820];
        v36[1] = 3221225472;
        v36[2] = __61__MNSpeechResourceController_speak_withDisclosure_andReport___block_invoke_3;
        v36[3] = &unk_1E842FA90;
        objc_copyWeak(&v37, &location);
        objc_copyWeak(&v38, &from);
        v36[4] = buf;
        [(SiriTTSDaemonSession *)session speakWithSpeechRequest:v20 didFinish:v36];
        v32 = GetAudioLogForMNSpeechResourceControllerCategory();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          *v35 = 0;
          _os_log_impl(&dword_1D311E000, v32, OS_LOG_TYPE_INFO, "Ⓢ    Speech request submitted", v35, 2u);
        }

        objc_storeStrong(&self->_onGoingRequest, v20);
        objc_storeStrong(&self->_utterance, a3);
        [(MNSpeechResourceController *)self _createTimerForUtterance:v9 andIsCaching:0];
        objc_destroyWeak(&v38);
        objc_destroyWeak(&v37);
        _Block_object_dispose(buf, 8);

        objc_destroyWeak(&v42);
        objc_destroyWeak(&v41);
        objc_destroyWeak(&from);
        objc_destroyWeak(&location);
        goto LABEL_27;
      }

      v21 = GetAudioLogForMNSpeechResourceControllerCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *&buf[4] = a4;
        _os_log_impl(&dword_1D311E000, v21, OS_LOG_TYPE_ERROR, "⒮ Invalid disclosure level: %lu", buf, 0xCu);
      }

      if (a5)
      {
        v22 = MEMORY[0x1E696ABC0];
        v23 = @"MNAudioSystemError";
        v45 = @"InvalidDisclosure";
        v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
        v46 = v24;
        v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
        *a5 = [v22 errorWithDomain:@"MNAudioSystemError" code:3601 userInfo:v25];

        v26 = 0;
LABEL_21:
        v20 = @"MNAudioSystemError";
LABEL_28:

        goto LABEL_29;
      }
    }

    else
    {
      v27 = GetAudioLogForMNSpeechResourceControllerCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1D311E000, v27, OS_LOG_TYPE_ERROR, "⒮ Invalid utterance", buf, 2u);
      }

      if (a5)
      {
        v28 = MEMORY[0x1E696ABC0];
        v29 = @"MNAudioSystemError";
        [v28 errorWithDomain:@"MNAudioSystemError" code:3600 userInfo:0];
        *a5 = v26 = 0;
        goto LABEL_21;
      }
    }

    v26 = 0;
    goto LABEL_29;
  }

  v14 = GetAudioLogForMNSpeechResourceControllerCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 138477827;
    *&buf[4] = @"ⓢ Debug Panel has the Mute Voice switch ON";
    _os_log_impl(&dword_1D311E000, v14, OS_LOG_TYPE_INFO, "%{private}@", buf, 0xCu);
  }

  v15 = [(MNSpeechResourceController *)self delegate];
  v16 = objc_opt_respondsToSelector();

  if (v16)
  {
    v17 = [(MNSpeechResourceController *)self delegate];
    [v17 speechResourceController:self willStartSpeakingUtterance:v9];
  }

  v18 = [(MNSpeechResourceController *)self delegate];
  v19 = objc_opt_respondsToSelector();

  if (v19)
  {
    v20 = [(MNSpeechResourceController *)self delegate];
    [(__CFString *)v20 speechResourceController:self didFinishSpeakingUtterance:v9 withDuration:2.0];
LABEL_27:
    v26 = 1;
    goto LABEL_28;
  }

  v26 = 1;
LABEL_29:

  v33 = *MEMORY[0x1E69E9840];
  return v26;
}

void __61__MNSpeechResourceController_speak_withDisclosure_andReport___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained didStartSpeakingRequest:v2];
}

void __61__MNSpeechResourceController_speak_withDisclosure_andReport___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = objc_loadWeakRetained((a1 + 48));
  [WeakRetained didFinishSpeakingRequest:v4 metrics:*(*(*(a1 + 32) + 8) + 40) withError:v3];
}

- (double)durationOf:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 length])
  {
    if (![(MNSpeechResourceController *)self _createDurationCacheIfNecessary])
    {
      v5 = [(NSCache *)self->_durations objectForKey:v4];
      v6 = v5;
      if (v5)
      {
        [v5 doubleValue];
        if (v7 > 0.0)
        {
          v9 = v7;
          v10 = GetAudioLogForMNSpeechResourceControllerCategory();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
          {
            v13 = 134218243;
            v14 = v9;
            v15 = 2113;
            v16 = v4;
            _os_log_impl(&dword_1D311E000, v10, OS_LOG_TYPE_INFO, "ⓢ Duration is using a cached value of %f for '%{private}@'", &v13, 0x16u);
          }

          goto LABEL_12;
        }
      }
    }

    [(MNSpeechResourceController *)self _estimateDurationForUtterance:v4];
    v9 = v8;
    [(MNSpeechResourceController *)self _addDurationToCache:v4 forUtterance:?];
    v6 = GetAudioLogForMNSpeechResourceControllerCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v13 = 134218243;
      v14 = v9;
      v15 = 2113;
      v16 = v4;
      _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_INFO, "ⓢ Duration is using an estimated value of %f for '%{private}@'", &v13, 0x16u);
    }

LABEL_12:

    goto LABEL_13;
  }

  v9 = 0.0;
LABEL_13:

  v11 = *MEMORY[0x1E69E9840];
  return v9;
}

- (BOOL)cache:(id)a3 withDisclosure:(unint64_t)a4 andReport:(id *)a5
{
  v39[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = GetAudioLogForMNSpeechResourceControllerCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "[MNSpeechResourceController cache:withDisclosure:andReport:]";
    *&buf[12] = 2112;
    *&buf[14] = v9;
    *&buf[22] = 2048;
    v35 = a4;
    _os_log_impl(&dword_1D311E000, v10, OS_LOG_TYPE_DEBUG, "%s : %@ : %lu", buf, 0x20u);
  }

  if (![v9 length])
  {
    v17 = GetAudioLogForMNSpeechResourceControllerCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1D311E000, v17, OS_LOG_TYPE_ERROR, "⒮ Invalid utterance", buf, 2u);
    }

    if (a5)
    {
      v18 = MEMORY[0x1E696ABC0];
      v19 = @"MNAudioSystemError";
      [v18 errorWithDomain:@"MNAudioSystemError" code:3600 userInfo:0];
      *a5 = v16 = 0;
      goto LABEL_13;
    }

LABEL_20:
    v16 = 0;
    goto LABEL_21;
  }

  if (a4 < 2)
  {
    [(SiriTTSDaemonSession *)self->_session setKeepActive:1];
    v21 = GetAudioLogForMNSpeechResourceControllerCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 138477827;
      *&buf[4] = v9;
      _os_log_impl(&dword_1D311E000, v21, OS_LOG_TYPE_INFO, "Ⓢ Attempting to start caching '%{private}@'", buf, 0xCu);
    }

    v20 = [objc_alloc(MEMORY[0x1E69D3320]) initWithLanguage:self->_cachedVoiceLanguage name:self->_cachedVoiceName];
    v22 = [objc_alloc(MEMORY[0x1E69D3310]) initWithText:v9 voice:v20];
    [v22 setPrivacySensitive:a4 == 0];
    objc_initWeak(&location, self);
    objc_initWeak(&from, v22);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v35 = __Block_byref_object_copy__14191;
    v36 = __Block_byref_object_dispose__14192;
    v37 = 0;
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __61__MNSpeechResourceController_cache_withDisclosure_andReport___block_invoke;
    v31[3] = &unk_1E842FA68;
    v31[4] = buf;
    [v22 setDidReportInstrument:v31];
    session = self->_session;
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __61__MNSpeechResourceController_cache_withDisclosure_andReport___block_invoke_2;
    v28[3] = &unk_1E842FA90;
    objc_copyWeak(&v29, &location);
    objc_copyWeak(&v30, &from);
    v28[4] = buf;
    [(SiriTTSDaemonSession *)session synthesizeWithRequest:v22 didFinish:v28];
    v24 = GetAudioLogForMNSpeechResourceControllerCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *v27 = 0;
      _os_log_impl(&dword_1D311E000, v24, OS_LOG_TYPE_INFO, "Ⓢ    Synthesis request submitted", v27, 2u);
    }

    objc_storeStrong(&self->_utterance, a3);
    [(MNSpeechResourceController *)self _createTimerForUtterance:v9 andIsCaching:1];
    objc_destroyWeak(&v30);
    objc_destroyWeak(&v29);
    _Block_object_dispose(buf, 8);

    objc_destroyWeak(&from);
    objc_destroyWeak(&location);

    v16 = 1;
    goto LABEL_19;
  }

  v11 = GetAudioLogForMNSpeechResourceControllerCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    *&buf[4] = a4;
    _os_log_impl(&dword_1D311E000, v11, OS_LOG_TYPE_ERROR, "⒮ Invalid disclosure level: %lu", buf, 0xCu);
  }

  if (!a5)
  {
    goto LABEL_20;
  }

  v12 = MEMORY[0x1E696ABC0];
  v13 = @"MNAudioSystemError";
  v38 = @"InvalidDisclosure";
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  v39[0] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:&v38 count:1];
  *a5 = [v12 errorWithDomain:@"MNAudioSystemError" code:3601 userInfo:v15];

  v16 = 0;
LABEL_13:
  v20 = @"MNAudioSystemError";
LABEL_19:

LABEL_21:
  v25 = *MEMORY[0x1E69E9840];
  return v16;
}

void __61__MNSpeechResourceController_cache_withDisclosure_andReport___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = objc_loadWeakRetained((a1 + 48));
  [WeakRetained didFinishSynthesisRequest:v4 withInstrumentMetrics:*(*(*(a1 + 32) + 8) + 40) error:v3];
}

- (void)dealloc
{
  v3 = GetAudioLogForMNSpeechResourceControllerCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_DEBUG, "ⓢ Deallocating", buf, 2u);
  }

  [(MNSpeechResourceController *)self _cancelTimer];
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 removeObserver:self name:*MEMORY[0x1E698D090] object:0];
  [v4 removeObserver:self name:*MEMORY[0x1E698D558] object:0];
  [v4 removeObserver:self name:*MEMORY[0x1E698D5C0] object:0];

  v5.receiver = self;
  v5.super_class = MNSpeechResourceController;
  [(MNSpeechResourceController *)&v5 dealloc];
}

- (void)_registerForObservation
{
  v3 = GetAudioLogForMNSpeechResourceControllerCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_DEBUG, "Registering for observation", v5, 2u);
  }

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 addObserver:self selector:sel__audioSessionInterruption_ name:*MEMORY[0x1E698D558] object:0];
  [v4 addObserver:self selector:sel__mediaSessionServicesWereReset_ name:*MEMORY[0x1E698D5C0] object:0];
  [v4 addObserver:self selector:sel__voiceChanged name:*MEMORY[0x1E698D090] object:0];
}

- (void)_voiceChanged
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E698D0F8] outputVoice];
  v4 = GetAudioLogForMNSpeechResourceControllerCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 languageCode];
    v6 = [v3 name];
    v16 = 138412802;
    v17 = v5;
    v18 = 2112;
    v19 = v6;
    v20 = 1024;
    v21 = [v3 gender];
    _os_log_impl(&dword_1D311E000, v4, OS_LOG_TYPE_DEFAULT, "Output voice changed to language %@, name %@, gender %d", &v16, 0x1Cu);
  }

  cachedVoiceLanguage = self->_cachedVoiceLanguage;
  v8 = [v3 languageCode];
  if ([(NSString *)cachedVoiceLanguage isEqualToString:v8])
  {
    cachedVoiceName = self->_cachedVoiceName;
    v10 = [v3 name];
    if ([(NSString *)cachedVoiceName isEqualToString:v10])
    {
      cachedVoiceGender = self->_cachedVoiceGender;
      v12 = [v3 gender];

      if (cachedVoiceGender == v12)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

LABEL_9:
  v13 = [v3 languageCode];
  v14 = [v3 name];
  -[MNSpeechResourceController _prepareSynthesizerWithLanguage:andVoiceName:andGender:andAudioSessionID:](self, "_prepareSynthesizerWithLanguage:andVoiceName:andGender:andAudioSessionID:", v13, v14, [v3 gender], self->_audioSessionID);

LABEL_10:
  v15 = *MEMORY[0x1E69E9840];
}

- (void)_markVoiceForDownloadingWithLanguage:(id)a3 andVoiceName:(id)a4 andGender:(int64_t)a5
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = +[MNUserOptionsEngine sharedInstance];
  v10 = [v9 currentVoiceLanguage];
  v11 = [v10 isEqualToString:v7];

  if (v11)
  {
    v12 = [objc_alloc(MEMORY[0x1E69D3320]) initWithLanguage:v7 name:v8];
    v13 = GetAudioLogForMNSpeechResourceControllerCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v22 = v12;
      _os_log_impl(&dword_1D311E000, v13, OS_LOG_TYPE_INFO, "ⓢ Marking voice asset to auto-download %@", buf, 0xCu);
    }

    session = self->_session;
    v20 = v12;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __90__MNSpeechResourceController__markVoiceForDownloadingWithLanguage_andVoiceName_andGender___block_invoke;
    v18[3] = &unk_1E842FA40;
    v19 = v12;
    v16 = v12;
    [(SiriTTSDaemonSession *)session subscribeWithVoices:v15 reply:v18];
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __90__MNSpeechResourceController__markVoiceForDownloadingWithLanguage_andVoiceName_andGender___block_invoke(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = GetAudioLogForMNSpeechResourceControllerCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 32);
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_INFO, "⒮    Error marking voice asset to auto-download %@", &v6, 0xCu);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)_warmUpTTSForLanguage:(id)a3 andVoiceName:(id)a4 andGender:(int64_t)a5 andAudioSessionID:(unsigned int)a6
{
  v7 = [(MNSpeechResourceController *)self _synthesisRequestForUtterance:@"prewarm kick" withLanguage:a3 andVoiceName:a4 andPrivacySensitive:0];
  v8 = GetAudioLogForMNSpeechResourceControllerCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1D311E000, v8, OS_LOG_TYPE_INFO, "Ⓢ Attempting to prewarm SiriTTSDaemonSession", buf, 2u);
  }

  [(SiriTTSDaemonSession *)self->_session setKeepActive:1];
  session = self->_session;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __93__MNSpeechResourceController__warmUpTTSForLanguage_andVoiceName_andGender_andAudioSessionID___block_invoke;
  v11[3] = &unk_1E842FA18;
  v12 = v7;
  v13 = self;
  v10 = v7;
  [(SiriTTSDaemonSession *)session prewarmWithRequest:v10 didFinish:v11];
}

void __93__MNSpeechResourceController__warmUpTTSForLanguage_andVoiceName_andGender_andAudioSessionID___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GetAudioLogForMNSpeechResourceControllerCategory();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v9 = 138412546;
      v10 = v6;
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_ERROR, "⒮    Error submitting prewarm request (this is a problem in SiriTTSDaemonSession): %@ - %@", &v9, 0x16u);
    }

    [*(*(a1 + 40) + 8) setKeepActive:0];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_INFO, "Ⓢ    Prewarm request succeeded: %@", &v9, 0xCu);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (MNSpeechResourceController)initWithLanguage:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (![v4 length])
  {
    v10 = GetAudioLogForMNSpeechResourceControllerCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1D311E000, v10, OS_LOG_TYPE_ERROR, "⒮ Invalid language", buf, 2u);
    }

    v17 = 0;
    goto LABEL_17;
  }

  v24.receiver = self;
  v24.super_class = MNSpeechResourceController;
  v5 = [(MNSpeechResourceController *)&v24 init];
  if (v5)
  {
    v6 = v5;
    v7 = objc_alloc_init(MEMORY[0x1E69D32E8]);
    session = v6->_session;
    v6->_session = v7;

    v9 = [MEMORY[0x1E698D710] sharedInstance];
    v6->_audioSessionID = [v9 opaqueSessionID];

    v10 = [MEMORY[0x1E698D178] sharedInstance];
    v11 = [v10 getBaseLocale:v4];
    v12 = [MEMORY[0x1E698D0F8] outputVoice];
    v13 = GetAudioLogForMNSpeechResourceControllerCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v26 = v12;
      _os_log_impl(&dword_1D311E000, v13, OS_LOG_TYPE_DEFAULT, "AssistantServices voice info: %@", buf, 0xCu);
    }

    v14 = [v12 languageCode];
    v15 = [v10 getBaseLocale:v14];

    if ([v11 isEqualToString:v15])
    {
      v16 = [v12 name];
    }

    else
    {
      v18 = GetAudioLogForMNSpeechResourceControllerCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        *v26 = v11;
        *&v26[8] = 2112;
        *&v26[10] = v12;
        _os_log_impl(&dword_1D311E000, v18, OS_LOG_TYPE_ERROR, "Desired language %@ does not match language in AssistantServices voiceInfo: %@", buf, 0x16u);
      }

      v16 = 0;
    }

    v19 = [v12 gender];
    v20 = GetAudioLogForMNSpeechResourceControllerCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      audioSessionID = v6->_audioSessionID;
      *buf = 67109890;
      *v26 = audioSessionID;
      *&v26[4] = 2112;
      *&v26[6] = v4;
      *&v26[14] = 2112;
      *&v26[16] = v16;
      v27 = 1024;
      v28 = v19;
      _os_log_impl(&dword_1D311E000, v20, OS_LOG_TYPE_DEFAULT, "MNSpeechResourceController init: AVAudioSession id: %d | Language: %@ | Name: '%@' | Gender: %d", buf, 0x22u);
    }

    [(MNSpeechResourceController *)v6 _prepareSynthesizerWithLanguage:v4 andVoiceName:v16 andGender:v19 andAudioSessionID:v6->_audioSessionID];
    [(MNSpeechResourceController *)v6 _registerForObservation];
    self = v6;

    v17 = self;
LABEL_17:

    goto LABEL_18;
  }

  v17 = 0;
LABEL_18:

  v22 = *MEMORY[0x1E69E9840];
  return v17;
}

@end