@interface HPSUISpatialProfileSingleStepSoundHapticManager
- (BOOL)isEnrollGuidancePlaying;
- (HPSUISpatialProfileSingleStepSoundHapticManager)init;
- (id)createPlayerWithFileName:(id)a3;
- (void)pauseEnrollGuidancePlayer;
- (void)pauseProgressPlayer;
- (void)playEnrollGuidance:(int)a3;
- (void)playProgressPlayer:(int)a3;
- (void)readDynamicEnrollmentFeedback;
- (void)setEnrollGuidancePitch:(float)a3;
- (void)setProgressPlayerPitch:(float)a3;
- (void)setupPlayers;
- (void)start;
- (void)startEnrollLoop;
- (void)stop;
- (void)stopEnrollLoop;
- (void)triggerSoundHapticForEarCaptureState:(int)a3 completion:(id)a4;
- (void)triggerSoundHapticForEnrollmentState:(int)a3 completion:(id)a4;
- (void)updateEnrollLoopVolume:(double)a3;
@end

@implementation HPSUISpatialProfileSingleStepSoundHapticManager

- (HPSUISpatialProfileSingleStepSoundHapticManager)init
{
  v10.receiver = self;
  v10.super_class = HPSUISpatialProfileSingleStepSoundHapticManager;
  v2 = [(HPSUISpatialProfileSingleStepSoundHapticManager *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x1E695F570]);
    v4 = [MEMORY[0x1E6958460] sharedInstance];
    v5 = [v3 initWithAudioSession:v4 error:0];
    engine = v2->_engine;
    v2->_engine = v5;

    v7 = dispatch_queue_create("com.apple.HeadphoneSettings.soundHapticSerialQueue", 0);
    soundHapticSerialQueue = v2->_soundHapticSerialQueue;
    v2->_soundHapticSerialQueue = v7;

    [(HPSUISpatialProfileSingleStepSoundHapticManager *)v2 readDynamicEnrollmentFeedback];
  }

  return v2;
}

- (void)start
{
  v3 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AC1C3000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Sound & Haptics: Start Engine", buf, 2u);
  }

  [(HPSUISpatialProfileSingleStepSoundHapticManager *)self setupPlayers];
  engine = self->_engine;
  v7 = 0;
  [(CHHapticEngine *)engine startAndReturnError:&v7];
  v5 = v7;
  if (v5)
  {
    v6 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [HPSUISpatialProfileSingleStepSoundHapticManager start];
    }
  }
}

- (void)stop
{
  v3 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1AC1C3000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Sound & Haptics: Stop Engine", v4, 2u);
  }

  [(CHHapticEngine *)self->_engine stopWithCompletionHandler:&__block_literal_global_3];
}

- (void)setupPlayers
{
  v3 = [(HPSUISpatialProfileSingleStepSoundHapticManager *)self createPlayerWithFileName:@"Spatial_Profile_Scan_Lock"];
  scanLockPlayer = self->_scanLockPlayer;
  self->_scanLockPlayer = v3;

  v5 = [(HPSUISpatialProfileSingleStepSoundHapticManager *)self createPlayerWithFileName:@"Spatial_Profile_Scan_In_Progress"];
  scanInProgressPlayer = self->_scanInProgressPlayer;
  self->_scanInProgressPlayer = v5;

  v7 = [(HPSUISpatialProfileSingleStepSoundHapticManager *)self createPlayerWithFileName:@"Spatial_Profile_Scan_Orient_User"];
  enrollGuidancePlayer = self->_enrollGuidancePlayer;
  self->_enrollGuidancePlayer = v7;

  v9 = [(HPSUISpatialProfileSingleStepSoundHapticManager *)self createPlayerWithFileName:@"Spatial_Profile_Single_Step_First_Ear_Completed"];
  enrollmentHalfDonePlayer = self->_enrollmentHalfDonePlayer;
  self->_enrollmentHalfDonePlayer = v9;

  v11 = [(HPSUISpatialProfileSingleStepSoundHapticManager *)self createPlayerWithFileName:@"Spatial_Profile_Single_Step_Second_Ear_Completed"];
  scanCompletedPlayer = self->_scanCompletedPlayer;
  self->_scanCompletedPlayer = v11;

  v13 = [(HPSUISpatialProfileSingleStepSoundHapticManager *)self createPlayerWithFileName:@"Spatial_Profile_Scan_Error"];
  scanErrorPlayer = self->_scanErrorPlayer;
  self->_scanErrorPlayer = v13;

  v15 = [(HPSUISpatialProfileSingleStepSoundHapticManager *)self createPlayerWithFileName:@"Spatial_Profile_Single_Step_Scan_Completed"];
  enrollmentCompletedPlayer = self->_enrollmentCompletedPlayer;
  self->_enrollmentCompletedPlayer = v15;

  v17 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v18 = [v17 URLForResource:@"tonal_loop" withExtension:@"wav"];

  NSLog(&cfstr_PathToPlay.isa, v18);
  v24 = 0;
  v19 = [objc_alloc(MEMORY[0x1E6958448]) initWithContentsOfURL:v18 error:&v24];
  v20 = v24;
  enrollLooplayer = self->_enrollLooplayer;
  self->_enrollLooplayer = v19;

  if (v20)
  {
    v22 = [v20 localizedDescription];
    NSLog(&cfstr_FailedWithReas.isa, v22);
  }

  else
  {
    [(AVAudioPlayer *)self->_enrollLooplayer setDelegate:self];
    [(AVAudioPlayer *)self->_enrollLooplayer setNumberOfLoops:-1];
    [(AVAudioPlayer *)self->_enrollLooplayer setCurrentTime:0.0];
    LODWORD(v23) = 1028443341;
    [(AVAudioPlayer *)self->_enrollLooplayer setVolume:v23];
  }
}

- (void)setEnrollGuidancePitch:(float)a3
{
  enrollGuidancePlayer = self->_enrollGuidancePlayer;
  if (enrollGuidancePlayer)
  {
    if (self->_dynamicEnrollmentFeedback)
    {
      [(CHHapticAdvancedPatternPlayer *)enrollGuidancePlayer setPlaybackRate:?];
    }
  }
}

- (BOOL)isEnrollGuidancePlaying
{
  enrollGuidancePlayer = self->_enrollGuidancePlayer;
  if (enrollGuidancePlayer)
  {
    LOBYTE(enrollGuidancePlayer) = [(CHHapticAdvancedPatternPlayer *)enrollGuidancePlayer loopEnabled];
  }

  return enrollGuidancePlayer;
}

- (void)pauseEnrollGuidancePlayer
{
  if (self->_dynamicEnrollmentFeedback)
  {
    v8[3] = v2;
    v8[4] = v3;
    enrollGuidancePlayer = self->_enrollGuidancePlayer;
    if (enrollGuidancePlayer)
    {
      v8[0] = 0;
      [(CHHapticAdvancedPatternPlayer *)enrollGuidancePlayer stopAtTime:v8 error:0.0];
      v6 = v8[0];
      [(CHHapticAdvancedPatternPlayer *)self->_enrollGuidancePlayer setLoopEnabled:0];
      if (v6)
      {
        v7 = sharedBluetoothSettingsLogComponent();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          [HPSUISpatialProfileSingleStepSoundHapticManager pauseEnrollGuidancePlayer];
        }
      }
    }
  }
}

- (void)playEnrollGuidance:(int)a3
{
  if (self->_dynamicEnrollmentFeedback)
  {
    v12[3] = v3;
    v12[4] = v4;
    if (a3 == 11 || a3 == 7)
    {
      enrollGuidancePlayer = self->_enrollGuidancePlayer;
      if (enrollGuidancePlayer)
      {
        if (([(CHHapticAdvancedPatternPlayer *)enrollGuidancePlayer loopEnabled]& 1) == 0)
        {
          [(CHHapticAdvancedPatternPlayer *)self->_enrollGuidancePlayer setLoopEnabled:1];
          LODWORD(v7) = 0.5;
          [(CHHapticAdvancedPatternPlayer *)self->_enrollGuidancePlayer setPlaybackRate:v7];
          v8 = self->_enrollGuidancePlayer;
          v12[0] = 0;
          [(CHHapticAdvancedPatternPlayer *)v8 startAtTime:v12 error:0.0];
          v9 = v12[0];
          if (v9)
          {
            v10 = v9;
            v11 = sharedBluetoothSettingsLogComponent();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
            {
              [HPSUISpatialProfileSingleStepSoundHapticManager playEnrollGuidance:];
            }
          }
        }
      }
    }
  }
}

- (void)setProgressPlayerPitch:(float)a3
{
  scanInProgressPlayer = self->_scanInProgressPlayer;
  if (scanInProgressPlayer)
  {
    [(CHHapticAdvancedPatternPlayer *)scanInProgressPlayer setPlaybackRate:?];
  }
}

- (void)pauseProgressPlayer
{
  scanInProgressPlayer = self->_scanInProgressPlayer;
  if (scanInProgressPlayer)
  {
    v6 = 0;
    [(CHHapticAdvancedPatternPlayer *)scanInProgressPlayer stopAtTime:&v6 error:0.0];
    v3 = v6;
    if (v3)
    {
      v4 = v3;
      v5 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        [HPSUISpatialProfileSingleStepSoundHapticManager pauseEnrollGuidancePlayer];
      }
    }
  }
}

- (void)playProgressPlayer:(int)a3
{
  if (a3 == 11 || a3 == 7)
  {
    scanInProgressPlayer = self->_scanInProgressPlayer;
    if (scanInProgressPlayer)
    {
      [(CHHapticAdvancedPatternPlayer *)scanInProgressPlayer setLoopEnabled:1];
      LODWORD(v5) = 1.0;
      [(CHHapticAdvancedPatternPlayer *)self->_scanInProgressPlayer setPlaybackRate:v5];
      v6 = self->_scanInProgressPlayer;
      v10 = 0;
      [(CHHapticAdvancedPatternPlayer *)v6 startAtTime:&v10 error:0.0];
      v7 = v10;
      if (v7)
      {
        v8 = v7;
        v9 = sharedBluetoothSettingsLogComponent();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          [HPSUISpatialProfileSingleStepSoundHapticManager playEnrollGuidance:];
        }
      }
    }
  }
}

- (id)createPlayerWithFileName:(id)a3
{
  v4 = MEMORY[0x1E696AAE8];
  v5 = a3;
  v6 = [v4 bundleForClass:objc_opt_class()];
  v7 = [v6 URLForResource:v5 withExtension:@"ahap"];

  v17 = 0;
  v8 = [objc_alloc(MEMORY[0x1E695F5A0]) initWithContentsOfURL:v7 error:&v17];
  v9 = v17;
  if (v9)
  {
    v10 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [HPSUISpatialProfileSingleStepSoundHapticManager createPlayerWithFileName:];
    }
  }

  engine = self->_engine;
  v16 = 0;
  v12 = [(CHHapticEngine *)engine createAdvancedPlayerWithPattern:v8 error:&v16];
  v13 = v16;
  if (v13)
  {
    v14 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [HPSUISpatialProfileSingleStepSoundHapticManager createPlayerWithFileName:];
    }
  }

  return v12;
}

- (void)triggerSoundHapticForEnrollmentState:(int)a3 completion:(id)a4
{
  v6 = a4;
  v7 = dispatch_group_create();
  v8 = [MEMORY[0x1E6958460] sharedInstance];
  v9 = *MEMORY[0x1E6958068];
  v41 = 0;
  [v8 setCategory:v9 error:&v41];
  v10 = v41;

  if (v10)
  {
    v11 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [HPSUISpatialProfileSingleStepSoundHapticManager triggerSoundHapticForEnrollmentState:completion:];
    }
  }

  if (a3 > 6)
  {
    switch(a3)
    {
      case 7:
        v18 = sharedBluetoothSettingsLogComponent();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1AC1C3000, v18, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Sound & Haptics: Scan Start", buf, 2u);
        }

        soundHapticSerialQueue = self->_soundHapticSerialQueue;
        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 3221225472;
        v34[2] = __99__HPSUISpatialProfileSingleStepSoundHapticManager_triggerSoundHapticForEnrollmentState_completion___block_invoke;
        v34[3] = &unk_1E7970A90;
        v35 = v7;
        v36 = self;
        v38 = 7;
        v37 = v6;
        dispatch_async(soundHapticSerialQueue, v34);

        v14 = v35;
        goto LABEL_30;
      case 8:
        v20 = sharedBluetoothSettingsLogComponent();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1AC1C3000, v20, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Sound & Haptics: Scan Completed", buf, 2u);
        }

        v21 = self->_soundHapticSerialQueue;
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __99__HPSUISpatialProfileSingleStepSoundHapticManager_triggerSoundHapticForEnrollmentState_completion___block_invoke_51;
        v31[3] = &unk_1E79707B8;
        v31[4] = self;
        v32 = v7;
        v33 = v6;
        dispatch_async(v21, v31);

        v14 = v32;
        goto LABEL_30;
      case 12:
        v12 = sharedBluetoothSettingsLogComponent();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1AC1C3000, v12, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Sound & Haptics: Enrollment Completed", buf, 2u);
        }

        v13 = self->_soundHapticSerialQueue;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __99__HPSUISpatialProfileSingleStepSoundHapticManager_triggerSoundHapticForEnrollmentState_completion___block_invoke_57;
        block[3] = &unk_1E79707B8;
        v28 = v7;
        v29 = self;
        v30 = v6;
        dispatch_async(v13, block);

        v14 = v28;
LABEL_30:

        goto LABEL_31;
    }

    goto LABEL_32;
  }

  if (a3 == 3)
  {
    v22 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [HPSUISpatialProfileSingleStepSoundHapticManager triggerSoundHapticForEnrollmentState:v22 completion:?];
    }

    v23 = self->_soundHapticSerialQueue;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __99__HPSUISpatialProfileSingleStepSoundHapticManager_triggerSoundHapticForEnrollmentState_completion___block_invoke_63;
    v24[3] = &unk_1E79707B8;
    v24[4] = self;
    v25 = v7;
    v26 = v6;
    dispatch_async(v23, v24);

    v14 = v25;
    goto LABEL_30;
  }

  if (a3 != 6)
  {
LABEL_32:
    if (v6)
    {
      v6[2](v6);
    }

    goto LABEL_31;
  }

  scanInProgressPlayer = self->_scanInProgressPlayer;
  v40 = v10;
  [(CHHapticAdvancedPatternPlayer *)scanInProgressPlayer stopAtTime:&v40 error:0.0];
  v16 = v40;

  if (v16)
  {
    v17 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [HPSUISpatialProfileSingleStepSoundHapticManager pauseEnrollGuidancePlayer];
    }
  }

  if (v6)
  {
    v6[2](v6);
  }

  v10 = v16;
LABEL_31:
}

void __99__HPSUISpatialProfileSingleStepSoundHapticManager_triggerSoundHapticForEnrollmentState_completion___block_invoke(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __99__HPSUISpatialProfileSingleStepSoundHapticManager_triggerSoundHapticForEnrollmentState_completion___block_invoke_2;
  v15[3] = &unk_1E7970288;
  v16 = *(a1 + 32);
  [*(*(a1 + 40) + 16) setCompletionHandler:v15];
  v2 = *(*(a1 + 40) + 16);
  v14 = 0;
  [v2 startAtTime:&v14 error:0.0];
  v3 = v14;
  if (v3)
  {
    v4 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __99__HPSUISpatialProfileSingleStepSoundHapticManager_triggerSoundHapticForEnrollmentState_completion___block_invoke_cold_1();
    }
  }

  [*(*(a1 + 40) + 24) setLoopEnabled:1];
  LODWORD(v5) = 1.0;
  [*(*(a1 + 40) + 24) setPlaybackRate:v5];
  v6 = *(*(a1 + 40) + 24);
  v13 = v3;
  [v6 startAtTime:&v13 error:0.0];
  v7 = v13;

  v8 = *(a1 + 40);
  if (v8[72] == 1)
  {
    [v8 playEnrollGuidance:*(a1 + 56)];
  }

  if (v7)
  {
    v9 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [HPSUISpatialProfileSingleStepSoundHapticManager playEnrollGuidance:];
    }
  }

  v10 = *(a1 + 32);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __99__HPSUISpatialProfileSingleStepSoundHapticManager_triggerSoundHapticForEnrollmentState_completion___block_invoke_49;
  v11[3] = &unk_1E7970258;
  v12 = *(a1 + 48);
  dispatch_group_notify(v10, MEMORY[0x1E69E96A0], v11);
}

void __99__HPSUISpatialProfileSingleStepSoundHapticManager_triggerSoundHapticForEnrollmentState_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    NSLog(&cfstr_SpatialProfile_17.isa, a2);
  }

  v3 = *(a1 + 32);

  dispatch_group_leave(v3);
}

uint64_t __99__HPSUISpatialProfileSingleStepSoundHapticManager_triggerSoundHapticForEnrollmentState_completion___block_invoke_49(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __99__HPSUISpatialProfileSingleStepSoundHapticManager_triggerSoundHapticForEnrollmentState_completion___block_invoke_51(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 72) == 1)
  {
    [v2 pauseEnrollGuidancePlayer];
    v2 = *(a1 + 32);
  }

  v3 = *(v2 + 24);
  v15 = 0;
  [v3 stopAtTime:&v15 error:0.0];
  v4 = v15;
  if (v4)
  {
    v5 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [HPSUISpatialProfileSingleStepSoundHapticManager pauseEnrollGuidancePlayer];
    }
  }

  dispatch_group_enter(*(a1 + 40));
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __99__HPSUISpatialProfileSingleStepSoundHapticManager_triggerSoundHapticForEnrollmentState_completion___block_invoke_52;
  v13[3] = &unk_1E7970288;
  v14 = *(a1 + 40);
  [*(*(a1 + 32) + 48) setCompletionHandler:v13];
  v6 = *(*(a1 + 32) + 48);
  v12 = v4;
  [v6 startAtTime:&v12 error:0.0];
  v7 = v12;

  if (v7)
  {
    v8 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __99__HPSUISpatialProfileSingleStepSoundHapticManager_triggerSoundHapticForEnrollmentState_completion___block_invoke_51_cold_2();
    }
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __99__HPSUISpatialProfileSingleStepSoundHapticManager_triggerSoundHapticForEnrollmentState_completion___block_invoke_56;
  v10[3] = &unk_1E7970258;
  v9 = *(a1 + 40);
  v11 = *(a1 + 48);
  dispatch_group_notify(v9, MEMORY[0x1E69E96A0], v10);
}

void __99__HPSUISpatialProfileSingleStepSoundHapticManager_triggerSoundHapticForEnrollmentState_completion___block_invoke_52(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    NSLog(&cfstr_SpatialProfile_18.isa, a2);
  }

  v3 = *(a1 + 32);

  dispatch_group_leave(v3);
}

uint64_t __99__HPSUISpatialProfileSingleStepSoundHapticManager_triggerSoundHapticForEnrollmentState_completion___block_invoke_56(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __99__HPSUISpatialProfileSingleStepSoundHapticManager_triggerSoundHapticForEnrollmentState_completion___block_invoke_57(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __99__HPSUISpatialProfileSingleStepSoundHapticManager_triggerSoundHapticForEnrollmentState_completion___block_invoke_2_58;
  v9[3] = &unk_1E7970288;
  v10 = *(a1 + 32);
  [*(*(a1 + 40) + 64) setCompletionHandler:v9];
  v2 = *(*(a1 + 40) + 64);
  v8 = 0;
  [v2 startAtTime:&v8 error:0.0];
  v3 = v8;
  if (v3)
  {
    v4 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __99__HPSUISpatialProfileSingleStepSoundHapticManager_triggerSoundHapticForEnrollmentState_completion___block_invoke_57_cold_1();
    }
  }

  v5 = *(a1 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __99__HPSUISpatialProfileSingleStepSoundHapticManager_triggerSoundHapticForEnrollmentState_completion___block_invoke_62;
  block[3] = &unk_1E7970258;
  v7 = *(a1 + 48);
  dispatch_group_notify(v5, MEMORY[0x1E69E96A0], block);
}

void __99__HPSUISpatialProfileSingleStepSoundHapticManager_triggerSoundHapticForEnrollmentState_completion___block_invoke_2_58(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    NSLog(&cfstr_SpatialProfile_19.isa, a2);
  }

  v3 = *(a1 + 32);

  dispatch_group_leave(v3);
}

uint64_t __99__HPSUISpatialProfileSingleStepSoundHapticManager_triggerSoundHapticForEnrollmentState_completion___block_invoke_62(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __99__HPSUISpatialProfileSingleStepSoundHapticManager_triggerSoundHapticForEnrollmentState_completion___block_invoke_63(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  v14 = 0;
  [v2 stopAtTime:&v14 error:0.0];
  v3 = v14;
  if (v3)
  {
    v4 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [HPSUISpatialProfileSingleStepSoundHapticManager pauseEnrollGuidancePlayer];
    }
  }

  dispatch_group_enter(*(a1 + 40));
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __99__HPSUISpatialProfileSingleStepSoundHapticManager_triggerSoundHapticForEnrollmentState_completion___block_invoke_64;
  v12[3] = &unk_1E7970288;
  v13 = *(a1 + 40);
  [*(*(a1 + 32) + 56) setCompletionHandler:v12];
  v5 = *(*(a1 + 32) + 56);
  v11 = v3;
  [v5 startAtTime:&v11 error:0.0];
  v6 = v11;

  if (v6)
  {
    v7 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __99__HPSUISpatialProfileSingleStepSoundHapticManager_triggerSoundHapticForEnrollmentState_completion___block_invoke_63_cold_2();
    }
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __99__HPSUISpatialProfileSingleStepSoundHapticManager_triggerSoundHapticForEnrollmentState_completion___block_invoke_68;
  v9[3] = &unk_1E7970258;
  v8 = *(a1 + 40);
  v10 = *(a1 + 48);
  dispatch_group_notify(v8, MEMORY[0x1E69E96A0], v9);
}

void __99__HPSUISpatialProfileSingleStepSoundHapticManager_triggerSoundHapticForEnrollmentState_completion___block_invoke_64(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    NSLog(&cfstr_SpatialProfile_20.isa, a2);
  }

  v3 = *(a1 + 32);

  dispatch_group_leave(v3);
}

uint64_t __99__HPSUISpatialProfileSingleStepSoundHapticManager_triggerSoundHapticForEnrollmentState_completion___block_invoke_68(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)triggerSoundHapticForEarCaptureState:(int)a3 completion:(id)a4
{
  v6 = a4;
  v7 = dispatch_group_create();
  v8 = sharedBluetoothSettingsLogComponent();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (a3)
  {
    if (v9)
    {
      *buf = 0;
      _os_log_impl(&dword_1AC1C3000, v8, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Sound & Haptics: Scan Completed", buf, 2u);
    }

    soundHapticSerialQueue = self->_soundHapticSerialQueue;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __99__HPSUISpatialProfileSingleStepSoundHapticManager_triggerSoundHapticForEarCaptureState_completion___block_invoke_70;
    v17[3] = &unk_1E79707B8;
    v17[4] = self;
    v18 = v7;
    v19 = v6;
    v11 = v6;
    v12 = v7;
    dispatch_async(soundHapticSerialQueue, v17);

    v13 = v18;
  }

  else
  {
    if (v9)
    {
      *buf = 0;
      _os_log_impl(&dword_1AC1C3000, v8, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Sound & Haptics: Scan Completed", buf, 2u);
    }

    v14 = self->_soundHapticSerialQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __99__HPSUISpatialProfileSingleStepSoundHapticManager_triggerSoundHapticForEarCaptureState_completion___block_invoke;
    block[3] = &unk_1E79707B8;
    v21 = v7;
    v22 = self;
    v23 = v6;
    v15 = v6;
    v16 = v7;
    dispatch_async(v14, block);

    v13 = v21;
  }
}

void __99__HPSUISpatialProfileSingleStepSoundHapticManager_triggerSoundHapticForEarCaptureState_completion___block_invoke(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __99__HPSUISpatialProfileSingleStepSoundHapticManager_triggerSoundHapticForEarCaptureState_completion___block_invoke_2;
  v9[3] = &unk_1E7970288;
  v10 = *(a1 + 32);
  [*(*(a1 + 40) + 40) setCompletionHandler:v9];
  v2 = *(*(a1 + 40) + 40);
  v8 = 0;
  [v2 startAtTime:&v8 error:0.0];
  v3 = v8;
  if (v3)
  {
    v4 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __99__HPSUISpatialProfileSingleStepSoundHapticManager_triggerSoundHapticForEnrollmentState_completion___block_invoke_51_cold_2();
    }
  }

  v5 = *(a1 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __99__HPSUISpatialProfileSingleStepSoundHapticManager_triggerSoundHapticForEarCaptureState_completion___block_invoke_69;
  block[3] = &unk_1E7970258;
  v7 = *(a1 + 48);
  dispatch_group_notify(v5, MEMORY[0x1E69E96A0], block);
}

void __99__HPSUISpatialProfileSingleStepSoundHapticManager_triggerSoundHapticForEarCaptureState_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    NSLog(&cfstr_SpatialProfile_18.isa, a2);
  }

  v3 = *(a1 + 32);

  dispatch_group_leave(v3);
}

uint64_t __99__HPSUISpatialProfileSingleStepSoundHapticManager_triggerSoundHapticForEarCaptureState_completion___block_invoke_69(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __99__HPSUISpatialProfileSingleStepSoundHapticManager_triggerSoundHapticForEarCaptureState_completion___block_invoke_70(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 72) == 1)
  {
    [v2 pauseEnrollGuidancePlayer];
    v2 = *(a1 + 32);
  }

  v3 = *(v2 + 24);
  v15 = 0;
  [v3 stopAtTime:&v15 error:0.0];
  v4 = v15;
  if (v4)
  {
    v5 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [HPSUISpatialProfileSingleStepSoundHapticManager pauseEnrollGuidancePlayer];
    }
  }

  dispatch_group_enter(*(a1 + 40));
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __99__HPSUISpatialProfileSingleStepSoundHapticManager_triggerSoundHapticForEarCaptureState_completion___block_invoke_71;
  v13[3] = &unk_1E7970288;
  v14 = *(a1 + 40);
  [*(*(a1 + 32) + 48) setCompletionHandler:v13];
  v6 = *(*(a1 + 32) + 48);
  v12 = v4;
  [v6 startAtTime:&v12 error:0.0];
  v7 = v12;

  if (v7)
  {
    v8 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __99__HPSUISpatialProfileSingleStepSoundHapticManager_triggerSoundHapticForEnrollmentState_completion___block_invoke_51_cold_2();
    }
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __99__HPSUISpatialProfileSingleStepSoundHapticManager_triggerSoundHapticForEarCaptureState_completion___block_invoke_72;
  v10[3] = &unk_1E7970258;
  v9 = *(a1 + 40);
  v11 = *(a1 + 48);
  dispatch_group_notify(v9, MEMORY[0x1E69E96A0], v10);
}

void __99__HPSUISpatialProfileSingleStepSoundHapticManager_triggerSoundHapticForEarCaptureState_completion___block_invoke_71(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    NSLog(&cfstr_SpatialProfile_18.isa, a2);
  }

  v3 = *(a1 + 32);

  dispatch_group_leave(v3);
}

uint64_t __99__HPSUISpatialProfileSingleStepSoundHapticManager_triggerSoundHapticForEarCaptureState_completion___block_invoke_72(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)readDynamicEnrollmentFeedback
{
  keyExistsAndHasValidFormat = 0;
  CFPreferencesAppSynchronize(@"com.apple.BTServer");
  if (CFPreferencesGetAppBooleanValue(@"DynamicEnrollmentFeedback", @"com.apple.BTServer", &keyExistsAndHasValidFormat))
  {
    v3 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = !v3;
  self->_dynamicEnrollmentFeedback = v4;
}

- (void)startEnrollLoop
{
  if (![(AVAudioPlayer *)self->_enrollLooplayer isPlaying])
  {
    soundHapticSerialQueue = self->_soundHapticSerialQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __66__HPSUISpatialProfileSingleStepSoundHapticManager_startEnrollLoop__block_invoke;
    block[3] = &unk_1E7970208;
    block[4] = self;
    dispatch_async(soundHapticSerialQueue, block);
  }
}

- (void)stopEnrollLoop
{
  soundHapticSerialQueue = self->_soundHapticSerialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__HPSUISpatialProfileSingleStepSoundHapticManager_stopEnrollLoop__block_invoke;
  block[3] = &unk_1E7970208;
  block[4] = self;
  dispatch_async(soundHapticSerialQueue, block);
}

uint64_t __65__HPSUISpatialProfileSingleStepSoundHapticManager_stopEnrollLoop__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 88) stop];
  v2 = *(*(a1 + 32) + 88);

  return [v2 setVolume:0.0];
}

- (void)updateEnrollLoopVolume:(double)a3
{
  soundHapticSerialQueue = self->_soundHapticSerialQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __74__HPSUISpatialProfileSingleStepSoundHapticManager_updateEnrollLoopVolume___block_invoke;
  v4[3] = &unk_1E7970508;
  v4[4] = self;
  *&v4[5] = a3 * 0.7 + 0.05;
  dispatch_async(soundHapticSerialQueue, v4);
}

uint64_t __74__HPSUISpatialProfileSingleStepSoundHapticManager_updateEnrollLoopVolume___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  *&v1 = v1;
  return [*(*(a1 + 32) + 88) setVolume:v1];
}

@end