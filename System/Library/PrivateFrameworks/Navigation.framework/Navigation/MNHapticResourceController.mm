@interface MNHapticResourceController
- (BOOL)playHapticSound:(unint64_t)sound andReport:(id *)report;
- (BOOL)triggerVibration;
- (MNHapticControllerDelegate)delegate;
- (void)stopVibrating;
@end

@implementation MNHapticResourceController

- (MNHapticControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)playHapticSound:(unint64_t)sound andReport:(id *)report
{
  v19 = *MEMORY[0x1E69E9840];
  if (sound >= 3)
  {
    if (report)
    {
      v10 = MEMORY[0x1E696ABC0];
      v11 = @"MNAudioSystemError";
      *report = [v10 errorWithDomain:@"MNAudioSystemError" code:3500 userInfo:0];
    }
  }

  else
  {
    if (sound == 2)
    {
      v6 = 1415;
    }

    else
    {
      v6 = 1417;
    }

    if (sound == 1)
    {
      v7 = 1414;
    }

    else
    {
      v7 = v6;
    }

    v8 = GetAudioLogForMNHapticResourceControllerCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 134218240;
      soundCopy = sound;
      v17 = 1024;
      v18 = v7;
      _os_log_impl(&dword_1D311E000, v8, OS_LOG_TYPE_INFO, "ⓗ Starting haptic playback for id %lu (system id %u)", buf, 0x12u);
    }

    self->_isVibrating = 1;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __56__MNHapticResourceController_playHapticSound_andReport___block_invoke;
    v14[3] = &unk_1E8430A10;
    v14[4] = self;
    v14[5] = sound;
    AudioServicesPlaySystemSoundWithCompletion(v7, v14);
  }

  result = sound < 3;
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

void __56__MNHapticResourceController_playHapticSound_andReport___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __56__MNHapticResourceController_playHapticSound_andReport___block_invoke_2;
  v2[3] = &unk_1E8430A10;
  v1 = *(a1 + 40);
  v2[4] = *(a1 + 32);
  v2[5] = v1;
  dispatch_async(MEMORY[0x1E69E96A0], v2);
}

void __56__MNHapticResourceController_playHapticSound_andReport___block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  *(*(a1 + 32) + 8) = 0;
  v2 = GetAudioLogForMNHapticResourceControllerCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 40);
    v8 = 134217984;
    v9 = v3;
    _os_log_impl(&dword_1D311E000, v2, OS_LOG_TYPE_INFO, "ⓗ Finished haptic playback for id %lu", &v8, 0xCu);
  }

  v4 = [*(a1 + 32) delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [*(a1 + 32) delegate];
    [v6 hapticResourceController:*(a1 + 32) didFinishPlayingHapticIndicator:*(a1 + 40)];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)stopVibrating
{
  v3 = GetAudioLogForMNHapticResourceControllerCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_INFO, "ⓗ Stopping vibration", v4, 2u);
  }

  AudioServicesStopSystemSound();
  self->_isVibrating = 0;
}

- (BOOL)triggerVibration
{
  v20 = *MEMORY[0x1E69E9840];
  [(MNHapticResourceController *)self stopVibrating];
  v11[0] = *MEMORY[0x1E695E4D0];
  v11[1] = &unk_1F4EE2398;
  v12 = *MEMORY[0x1E695E4C0];
  v13 = &unk_1F4EE23B0;
  v14 = v11[0];
  v15 = &unk_1F4EE23C8;
  v16 = v12;
  v17 = &unk_1F4EE23E0;
  v18 = v11[0];
  v19 = &unk_1F4EE23F8;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:10];
  v3 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{&unk_1F4EE2C80, @"Intensity", v2, @"VibePattern", 0}];
  v9 = *MEMORY[0x1E695A8E0];
  v10 = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v5 = GetAudioLogForMNHapticResourceControllerCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_INFO, "ⓗ Started vibration", buf, 2u);
  }

  AudioServicesPlaySystemSoundWithOptions();
  v6 = *MEMORY[0x1E69E9840];
  return 1;
}

@end