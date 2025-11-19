@interface MNAudioManager
- (BOOL)_deviceIsMuted;
- (BOOL)_deviceSettingsAllowSpeech;
- (BOOL)vibrateForShortPrompt:(unint64_t)a3;
- (BOOL)voiceGuidanceEnabled;
- (int)_supportedTransportTypeForTransportType:(int)a3;
- (void)audioSystemOptions:(id)a3 didChangeGuidanceLevel:(unint64_t)a4 transportType:(int)a5;
- (void)dealloc;
- (void)registerObserver:(id)a3;
- (void)requestSpeech:(id)a3 guidanceLevel:(unint64_t)a4 modifier:(unint64_t)a5 shortPromptType:(unint64_t)a6 completionHandler:(id)a7;
- (void)unregisterObserver:(id)a3;
@end

@implementation MNAudioManager

- (BOOL)voiceGuidanceEnabled
{
  v12 = *MEMORY[0x1E69E9840];
  if (![(MNAudioManager *)self voiceGuidanceLevel])
  {
    v3 = GetAudioLogForMNAudioManagerCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      transportType = self->_transportType;
      if (transportType >= 7)
      {
        v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_transportType];
      }

      else
      {
        v5 = *(&off_1E8430CD0 + transportType);
      }

      *buf = 138412290;
      v11 = v5;
      _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_INFO, "ⓜ Voice guidance not enabled - voice guidance for this transport type (%@) is None", buf, 0xCu);
    }

    goto LABEL_14;
  }

  if (self->_transportType == 1)
  {
    v3 = GetAudioLogForMNAudioManagerCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_INFO, "ⓜ Voice guidance not enabled - for Transit", buf, 2u);
    }

LABEL_14:
    LOBYTE(v6) = 0;
    goto LABEL_15;
  }

  v6 = [(MNAudioManager *)self _deviceSettingsAllowSpeech];
  v3 = GetAudioLogForMNAudioManagerCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v7 = "not";
    if (v6)
    {
      v7 = "is";
    }

    *buf = 136315138;
    v11 = v7;
    _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_INFO, "ⓜ Voice guidance %s enabled", buf, 0xCu);
  }

LABEL_15:

  v8 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)_deviceSettingsAllowSpeech
{
  v20 = *MEMORY[0x1E69E9840];
  if ((self->_transportType & 0xFFFFFFFE) == 2)
  {
    v2 = +[MNAudioHardwareEngine headphonesAreInUse];
    v3 = [MEMORY[0x1E69AED10] sharedAVSystemController];
    v4 = [v3 attributeForKey:*MEMORY[0x1E69AEA90]];
    v5 = [v4 BOOLValue];

    v6 = v2 | v5 ^ 1;
    v7 = GetAudioLogForMNAudioManagerCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = "DO NOT";
      v14 = 136315650;
      if ((v2 | v5 ^ 1))
      {
        v8 = "DO";
      }

      v15 = v8;
      v16 = 1024;
      v17 = v2;
      v18 = 1024;
      v19 = v5 & 1;
      v9 = "ⓜ Device settings %s allow speech, headphonesInUse=%d, systemIsMuted=%d";
      v10 = v7;
      v11 = 24;
      goto LABEL_8;
    }
  }

  else
  {
    v7 = GetAudioLogForMNAudioManagerCategory();
    v6 = 1;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      LOWORD(v14) = 0;
      v9 = "ⓜ Device settings allow speech";
      v10 = v7;
      v11 = 2;
LABEL_8:
      _os_log_impl(&dword_1D311E000, v10, OS_LOG_TYPE_INFO, v9, &v14, v11);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return v6 & 1;
}

- (void)audioSystemOptions:(id)a3 didChangeGuidanceLevel:(unint64_t)a4 transportType:(int)a5
{
  if (self->_transportType == a5)
  {
    [(GEOObserverHashTable *)self->_observers audioManager:self didChangeVoiceGuidanceLevel:a4];
  }
}

- (BOOL)vibrateForShortPrompt:(unint64_t)a3
{
  v14 = *MEMORY[0x1E69E9840];
  if (self->_transportType <= 1u)
  {
    v4 = GetAudioLogForMNAudioManagerCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      transportType = self->_transportType;
      if (transportType >= 7)
      {
        v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_transportType];
      }

      else
      {
        v6 = *(&off_1E8430CD0 + transportType);
      }

      *buf = 138412290;
      v13 = v6;
      _os_log_impl(&dword_1D311E000, v4, OS_LOG_TYPE_INFO, "ⓜ Vibration ignored - transport type doesn't support vibration: %@", buf, 0xCu);
    }

LABEL_13:

    v11 = *MEMORY[0x1E69E9840];
    return 0;
  }

  if (![(MNAudioManager *)self voiceGuidanceEnabled])
  {
    v4 = GetAudioLogForMNAudioManagerCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1D311E000, v4, OS_LOG_TYPE_INFO, "ⓜ Vibration ignored - voice guidance is muted", buf, 2u);
    }

    goto LABEL_13;
  }

  audioEngine = self->_audioEngine;
  v9 = *MEMORY[0x1E69E9840];

  return [(MNAudioHardwareEngine *)audioEngine vibrateForShortPrompt:a3];
}

- (void)requestSpeech:(id)a3 guidanceLevel:(unint64_t)a4 modifier:(unint64_t)a5 shortPromptType:(unint64_t)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a7;
  if (![v12 length])
  {
    v14 = GetAudioLogForMNAudioManagerCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v15 = "⒨ String is empty";
      v16 = buf;
      goto LABEL_7;
    }

LABEL_8:

    goto LABEL_12;
  }

  if (self->_transportType == 1)
  {
    v14 = GetAudioLogForMNAudioManagerCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v18 = 0;
      v15 = "ⓜ Voice guidance not enabled - for Transit";
      v16 = &v18;
LABEL_7:
      _os_log_impl(&dword_1D311E000, v14, OS_LOG_TYPE_INFO, v15, v16, 2u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  if (a5 == 1)
  {
    a6 |= 0x40uLL;
  }

  v17 = [v12 _navigation_stringByMarkingAsNavigationText];
  [(MNAudioHardwareEngine *)self->_audioEngine requestSpeech:v17 guidanceLevel:a4 shortPromptType:a6 completionHandler:v13];

LABEL_12:
}

- (BOOL)_deviceIsMuted
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69AED10] sharedAVSystemController];
  v3 = [v2 attributeForKey:*MEMORY[0x1E69AEA90]];
  v4 = [v3 BOOLValue];

  v5 = [MEMORY[0x1E69AED10] sharedAVSystemController];
  v6 = [v5 getSilentMode];

  v7 = GetAudioLogForMNAudioManagerCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = "not";
    v11 = 136315650;
    if ((v4 | v6))
    {
      v8 = "is";
    }

    v12 = v8;
    v13 = 1024;
    v14 = v4;
    v15 = 1024;
    v16 = (v6 & 1) == 0;
    _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_INFO, "ⓜ Device %s muted, systemMuted=%d, ringerSwitchEnabled=%d", &v11, 0x18u);
  }

  v9 = *MEMORY[0x1E69E9840];
  return (v4 | v6) & 1;
}

- (int)_supportedTransportTypeForTransportType:(int)a3
{
  if ((a3 & 0xFFFFFFFE) == 2)
  {
    return a3;
  }

  else
  {
    return 0;
  }
}

- (void)unregisterObserver:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 conformsToProtocol:&unk_1F4EFDF00];
    v7 = GetAudioLogForMNAudioManagerCategory();
    observers = v7;
    if ((v6 & 1) == 0)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v11 = 138412290;
        v12 = v5;
        _os_log_impl(&dword_1D311E000, observers, OS_LOG_TYPE_ERROR, "⒨ Object isn't a MNAudioManagerObserver : %@", &v11, 0xCu);
      }

      goto LABEL_11;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v11 = 138412290;
      v12 = v5;
      _os_log_impl(&dword_1D311E000, observers, OS_LOG_TYPE_DEBUG, "ⓜ Removing observer : %@", &v11, 0xCu);
    }

    [(GEOObserverHashTable *)self->_observers unregisterObserver:v5];
    if (([(GEOObserverHashTable *)self->_observers hasObservers]& 1) == 0)
    {
      v9 = GetAudioLogForMNAudioManagerCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v11) = 0;
        _os_log_impl(&dword_1D311E000, v9, OS_LOG_TYPE_DEBUG, "ⓜ Observer table empty; destroying", &v11, 2u);
      }

      observers = self->_observers;
      self->_observers = 0;
LABEL_11:
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)registerObserver:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if ([v4 conformsToProtocol:&unk_1F4EFDF00])
    {
      if (!self->_observers)
      {
        v6 = GetAudioLogForMNAudioManagerCategory();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(v14) = 0;
          _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_DEBUG, "ⓜ Creating observer table", &v14, 2u);
        }

        v7 = objc_alloc(MEMORY[0x1E69A22D8]);
        v8 = MNNavigationQueue();
        v9 = [v7 initWithProtocol:&unk_1F4EFDF00 queue:v8];
        observers = self->_observers;
        self->_observers = v9;
      }

      v11 = GetAudioLogForMNAudioManagerCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v14 = 138412290;
        v15 = v5;
        _os_log_impl(&dword_1D311E000, v11, OS_LOG_TYPE_DEBUG, "ⓜ Adding observer : %@", &v14, 0xCu);
      }

      [(GEOObserverHashTable *)self->_observers registerObserver:v5];
    }

    else
    {
      v12 = GetAudioLogForMNAudioManagerCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v14 = 138412290;
        v15 = v5;
        _os_log_impl(&dword_1D311E000, v12, OS_LOG_TYPE_ERROR, "⒨ Object isn't a MNAudioManagerObserver : %@", &v14, 0xCu);
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  [(MNAudioSystemOptions *)self->_audioSystemOptions unregisterObserver:self];
  [(MNAudioHardwareEngine *)self->_audioEngine unregisterObserver:self];
  v3.receiver = self;
  v3.super_class = MNAudioManager;
  [(MNAudioManager *)&v3 dealloc];
}

@end