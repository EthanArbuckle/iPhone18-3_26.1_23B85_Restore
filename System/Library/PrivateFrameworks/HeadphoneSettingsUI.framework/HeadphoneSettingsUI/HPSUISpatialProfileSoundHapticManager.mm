@interface HPSUISpatialProfileSoundHapticManager
- (BOOL)isEnrollGuidancePlaying;
- (HPSUISpatialProfileSoundHapticManager)init;
- (id)initPlayerWithFileName:(id)name;
- (void)pauseEnrollGuidancePlayer;
- (void)pauseProgressPlayer;
- (void)playEnrollGuidance:(int)guidance;
- (void)playProgressPlayer:(int)player;
- (void)readDynamicEnrollmentFeedback;
- (void)setEnrollGuidancePitch:(float)pitch;
- (void)setProgressPlayerPitch:(float)pitch;
- (void)setupPlayers;
- (void)start;
- (void)stop;
- (void)triggerSoundHapticForEarCaptureState:(int)state completion:(id)completion;
- (void)triggerSoundHapticForEnrollmentState:(int)state completion:(id)completion;
@end

@implementation HPSUISpatialProfileSoundHapticManager

- (HPSUISpatialProfileSoundHapticManager)init
{
  v10.receiver = self;
  v10.super_class = HPSUISpatialProfileSoundHapticManager;
  v2 = [(HPSUISpatialProfileSoundHapticManager *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x1E695F570]);
    mEMORY[0x1E6958460] = [MEMORY[0x1E6958460] sharedInstance];
    v5 = [v3 initWithAudioSession:mEMORY[0x1E6958460] error:0];
    engine = v2->_engine;
    v2->_engine = v5;

    v7 = dispatch_queue_create("com.apple.HeadphoneSettings.soundHapticSerialQueue", 0);
    soundHapticSerialQueue = v2->_soundHapticSerialQueue;
    v2->_soundHapticSerialQueue = v7;

    [(HPSUISpatialProfileSoundHapticManager *)v2 readDynamicEnrollmentFeedback];
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

  [(HPSUISpatialProfileSoundHapticManager *)self setupPlayers];
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

  [(CHHapticEngine *)self->_engine stopWithCompletionHandler:&__block_literal_global_5];
}

- (void)setupPlayers
{
  selfCopy = self;
  v3 = [(HPSUISpatialProfileSoundHapticManager *)selfCopy initPlayerWithFileName:@"Spatial_Profile_Scan_Lock"];
  scanLockPlayer = selfCopy->_scanLockPlayer;
  selfCopy->_scanLockPlayer = v3;

  v5 = selfCopy;
  v6 = [(HPSUISpatialProfileSoundHapticManager *)v5 initPlayerWithFileName:@"Spatial_Profile_Scan_In_Progress"];
  scanInProgressPlayer = v5->_scanInProgressPlayer;
  v5->_scanInProgressPlayer = v6;

  v8 = v5;
  v9 = [(HPSUISpatialProfileSoundHapticManager *)v8 initPlayerWithFileName:@"Spatial_Profile_Scan_Orient_User"];
  enrollGuidancePlayer = v8->_enrollGuidancePlayer;
  v8->_enrollGuidancePlayer = v9;

  v11 = v8;
  v12 = [(HPSUISpatialProfileSoundHapticManager *)v11 initPlayerWithFileName:@"Spatial_Profile_Scan_First_Tick"];
  scanFirstTickPlayer = v11->_scanFirstTickPlayer;
  v11->_scanFirstTickPlayer = v12;

  v14 = v11;
  v15 = [(HPSUISpatialProfileSoundHapticManager *)v14 initPlayerWithFileName:@"Spatial_Profile_Scan_Second_Tick"];
  scanSecondTickPlayer = v14->_scanSecondTickPlayer;
  v14->_scanSecondTickPlayer = v15;

  v17 = v14;
  v18 = [(HPSUISpatialProfileSoundHapticManager *)v17 initPlayerWithFileName:@"Spatial_Profile_Scan_Completed"];
  scanCompletedPlayer = v17->_scanCompletedPlayer;
  v17->_scanCompletedPlayer = v18;

  v20 = v17;
  v21 = [(HPSUISpatialProfileSoundHapticManager *)v20 initPlayerWithFileName:@"Spatial_Profile_Scan_Error"];
  scanErrorPlayer = v20->_scanErrorPlayer;
  v20->_scanErrorPlayer = v21;

  v23 = v20;
  v23->_enrollmentCompletedPlayer = [(HPSUISpatialProfileSoundHapticManager *)v23 initPlayerWithFileName:@"Spatial_Profile_Enrollment_Completed"];

  MEMORY[0x1EEE66BB8]();
}

- (void)setEnrollGuidancePitch:(float)pitch
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

- (void)playEnrollGuidance:(int)guidance
{
  if (self->_dynamicEnrollmentFeedback)
  {
    v12[3] = v3;
    v12[4] = v4;
    if (guidance == 11 || guidance == 7)
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

- (void)setProgressPlayerPitch:(float)pitch
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

- (void)playProgressPlayer:(int)player
{
  if (player == 11 || player == 7)
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

- (id)initPlayerWithFileName:(id)name
{
  v4 = MEMORY[0x1E696AAE8];
  nameCopy = name;
  v6 = [v4 bundleForClass:objc_opt_class()];
  v7 = [v6 URLForResource:nameCopy withExtension:@"ahap"];

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

- (void)triggerSoundHapticForEnrollmentState:(int)state completion:(id)completion
{
  completionCopy = completion;
  v7 = dispatch_group_create();
  mEMORY[0x1E6958460] = [MEMORY[0x1E6958460] sharedInstance];
  v9 = *MEMORY[0x1E6958068];
  v41 = 0;
  [mEMORY[0x1E6958460] setCategory:v9 error:&v41];
  v10 = v41;

  if (v10)
  {
    v11 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [HPSUISpatialProfileSingleStepSoundHapticManager triggerSoundHapticForEnrollmentState:completion:];
    }
  }

  if (state > 10)
  {
    if (state <= 16)
    {
      if (state != 11)
      {
        if (state != 12)
        {
          if (state == 16)
          {
            v12 = sharedBluetoothSettingsLogComponent();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_1AC1C3000, v12, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Sound & Haptics: Enrollment Completed", buf, 2u);
            }

            soundHapticSerialQueue = self->_soundHapticSerialQueue;
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __89__HPSUISpatialProfileSoundHapticManager_triggerSoundHapticForEnrollmentState_completion___block_invoke_47;
            block[3] = &unk_1E79707B8;
            v28 = v7;
            selfCopy = self;
            v30 = completionCopy;
            dispatch_async(soundHapticSerialQueue, block);

            v14 = v28;
LABEL_29:

            goto LABEL_30;
          }

          goto LABEL_38;
        }

LABEL_17:
        v15 = sharedBluetoothSettingsLogComponent();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1AC1C3000, v15, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Sound & Haptics: Scan Completed", buf, 2u);
        }

        v16 = self->_soundHapticSerialQueue;
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __89__HPSUISpatialProfileSoundHapticManager_triggerSoundHapticForEnrollmentState_completion___block_invoke_41;
        v31[3] = &unk_1E79707B8;
        v31[4] = self;
        v32 = v7;
        v33 = completionCopy;
        dispatch_async(v16, v31);

        v14 = v32;
        goto LABEL_29;
      }

      goto LABEL_26;
    }

    if ((state - 17) < 3)
    {
      v17 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [HPSUISpatialProfileSingleStepSoundHapticManager triggerSoundHapticForEnrollmentState:v17 completion:?];
      }

      v18 = self->_soundHapticSerialQueue;
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __89__HPSUISpatialProfileSoundHapticManager_triggerSoundHapticForEnrollmentState_completion___block_invoke_53;
      v24[3] = &unk_1E79707B8;
      v24[4] = self;
      v25 = v7;
      v26 = completionCopy;
      dispatch_async(v18, v24);

      v14 = v25;
      goto LABEL_29;
    }

    goto LABEL_38;
  }

  if (state > 3)
  {
    switch(state)
    {
      case 4:
        goto LABEL_17;
      case 7:
LABEL_26:
        v19 = sharedBluetoothSettingsLogComponent();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1AC1C3000, v19, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Sound & Haptics: Scan Start", buf, 2u);
        }

        v20 = self->_soundHapticSerialQueue;
        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 3221225472;
        v34[2] = __89__HPSUISpatialProfileSoundHapticManager_triggerSoundHapticForEnrollmentState_completion___block_invoke;
        v34[3] = &unk_1E7970A90;
        v35 = v7;
        selfCopy2 = self;
        stateCopy = state;
        v37 = completionCopy;
        dispatch_async(v20, v34);

        v14 = v35;
        goto LABEL_29;
      case 8:
        goto LABEL_17;
    }

LABEL_38:
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }

    goto LABEL_30;
  }

  if (state != 2)
  {
    if (state == 3)
    {
      goto LABEL_26;
    }

    goto LABEL_38;
  }

  scanInProgressPlayer = self->_scanInProgressPlayer;
  v40 = v10;
  [(CHHapticAdvancedPatternPlayer *)scanInProgressPlayer stopAtTime:&v40 error:0.0];
  v22 = v40;

  if (v22)
  {
    v23 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [HPSUISpatialProfileSingleStepSoundHapticManager pauseEnrollGuidancePlayer];
    }
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }

  v10 = v22;
LABEL_30:
}

void __89__HPSUISpatialProfileSoundHapticManager_triggerSoundHapticForEnrollmentState_completion___block_invoke(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __89__HPSUISpatialProfileSoundHapticManager_triggerSoundHapticForEnrollmentState_completion___block_invoke_2;
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
  if (v8[80] == 1)
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
  v11[2] = __89__HPSUISpatialProfileSoundHapticManager_triggerSoundHapticForEnrollmentState_completion___block_invoke_39;
  v11[3] = &unk_1E7970258;
  v12 = *(a1 + 48);
  dispatch_group_notify(v10, MEMORY[0x1E69E96A0], v11);
}

void __89__HPSUISpatialProfileSoundHapticManager_triggerSoundHapticForEnrollmentState_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    NSLog(&cfstr_SpatialProfile_17.isa, a2);
  }

  v3 = *(a1 + 32);

  dispatch_group_leave(v3);
}

uint64_t __89__HPSUISpatialProfileSoundHapticManager_triggerSoundHapticForEnrollmentState_completion___block_invoke_39(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __89__HPSUISpatialProfileSoundHapticManager_triggerSoundHapticForEnrollmentState_completion___block_invoke_41(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 80) == 1)
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
  v13[2] = __89__HPSUISpatialProfileSoundHapticManager_triggerSoundHapticForEnrollmentState_completion___block_invoke_42;
  v13[3] = &unk_1E7970288;
  v14 = *(a1 + 40);
  [*(*(a1 + 32) + 56) setCompletionHandler:v13];
  v6 = *(*(a1 + 32) + 56);
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
  v10[2] = __89__HPSUISpatialProfileSoundHapticManager_triggerSoundHapticForEnrollmentState_completion___block_invoke_46;
  v10[3] = &unk_1E7970258;
  v9 = *(a1 + 40);
  v11 = *(a1 + 48);
  dispatch_group_notify(v9, MEMORY[0x1E69E96A0], v10);
}

void __89__HPSUISpatialProfileSoundHapticManager_triggerSoundHapticForEnrollmentState_completion___block_invoke_42(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    NSLog(&cfstr_SpatialProfile_18.isa, a2);
  }

  v3 = *(a1 + 32);

  dispatch_group_leave(v3);
}

uint64_t __89__HPSUISpatialProfileSoundHapticManager_triggerSoundHapticForEnrollmentState_completion___block_invoke_46(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __89__HPSUISpatialProfileSoundHapticManager_triggerSoundHapticForEnrollmentState_completion___block_invoke_47(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __89__HPSUISpatialProfileSoundHapticManager_triggerSoundHapticForEnrollmentState_completion___block_invoke_2_48;
  v9[3] = &unk_1E7970288;
  v10 = *(a1 + 32);
  [*(*(a1 + 40) + 72) setCompletionHandler:v9];
  v2 = *(*(a1 + 40) + 72);
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
  block[2] = __89__HPSUISpatialProfileSoundHapticManager_triggerSoundHapticForEnrollmentState_completion___block_invoke_52;
  block[3] = &unk_1E7970258;
  v7 = *(a1 + 48);
  dispatch_group_notify(v5, MEMORY[0x1E69E96A0], block);
}

void __89__HPSUISpatialProfileSoundHapticManager_triggerSoundHapticForEnrollmentState_completion___block_invoke_2_48(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    NSLog(&cfstr_SpatialProfile_19.isa, a2);
  }

  v3 = *(a1 + 32);

  dispatch_group_leave(v3);
}

uint64_t __89__HPSUISpatialProfileSoundHapticManager_triggerSoundHapticForEnrollmentState_completion___block_invoke_52(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __89__HPSUISpatialProfileSoundHapticManager_triggerSoundHapticForEnrollmentState_completion___block_invoke_53(uint64_t a1)
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
  v12[2] = __89__HPSUISpatialProfileSoundHapticManager_triggerSoundHapticForEnrollmentState_completion___block_invoke_54;
  v12[3] = &unk_1E7970288;
  v13 = *(a1 + 40);
  [*(*(a1 + 32) + 64) setCompletionHandler:v12];
  v5 = *(*(a1 + 32) + 64);
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
  v9[2] = __89__HPSUISpatialProfileSoundHapticManager_triggerSoundHapticForEnrollmentState_completion___block_invoke_58;
  v9[3] = &unk_1E7970258;
  v8 = *(a1 + 40);
  v10 = *(a1 + 48);
  dispatch_group_notify(v8, MEMORY[0x1E69E96A0], v9);
}

void __89__HPSUISpatialProfileSoundHapticManager_triggerSoundHapticForEnrollmentState_completion___block_invoke_54(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    NSLog(&cfstr_SpatialProfile_20.isa, a2);
  }

  v3 = *(a1 + 32);

  dispatch_group_leave(v3);
}

uint64_t __89__HPSUISpatialProfileSoundHapticManager_triggerSoundHapticForEnrollmentState_completion___block_invoke_58(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)triggerSoundHapticForEarCaptureState:(int)state completion:(id)completion
{
  completionCopy = completion;
  mEMORY[0x1E6958460] = [MEMORY[0x1E6958460] sharedInstance];
  [mEMORY[0x1E6958460] setCategory:*MEMORY[0x1E6958068] error:0];

  v8 = dispatch_group_create();
  soundHapticSerialQueue = self->_soundHapticSerialQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __89__HPSUISpatialProfileSoundHapticManager_triggerSoundHapticForEarCaptureState_completion___block_invoke;
  v12[3] = &unk_1E7970A90;
  stateCopy = state;
  v13 = v8;
  selfCopy = self;
  v15 = completionCopy;
  v10 = completionCopy;
  v11 = v8;
  dispatch_async(soundHapticSerialQueue, v12);
}

void __89__HPSUISpatialProfileSoundHapticManager_triggerSoundHapticForEarCaptureState_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2 == 1)
  {
    v12 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AC1C3000, v12, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Sound & Haptics: Ear Progress Second", buf, 2u);
    }

    dispatch_group_enter(*(a1 + 32));
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __89__HPSUISpatialProfileSoundHapticManager_triggerSoundHapticForEarCaptureState_completion___block_invoke_64;
    v18[3] = &unk_1E7970288;
    v4 = &v19;
    v19 = *(a1 + 32);
    [*(*(a1 + 40) + 48) setCompletionHandler:v18];
    v13 = *(*(a1 + 40) + 48);
    v17 = 0;
    [v13 startAtTime:&v17 error:0.0];
    v6 = v17;
    if (v6)
    {
      v14 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        __89__HPSUISpatialProfileSoundHapticManager_triggerSoundHapticForEarCaptureState_completion___block_invoke_cold_1();
      }
    }

    v8 = *(a1 + 32);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __89__HPSUISpatialProfileSoundHapticManager_triggerSoundHapticForEarCaptureState_completion___block_invoke_68;
    v15[3] = &unk_1E7970258;
    v9 = &v16;
    v16 = *(a1 + 48);
    v10 = MEMORY[0x1E69E96A0];
    v11 = v15;
  }

  else
  {
    if (v2)
    {
      return;
    }

    v3 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AC1C3000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Sound & Haptics: Ear Progress First", buf, 2u);
    }

    dispatch_group_enter(*(a1 + 32));
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __89__HPSUISpatialProfileSoundHapticManager_triggerSoundHapticForEarCaptureState_completion___block_invoke_59;
    v23[3] = &unk_1E7970288;
    v4 = &v24;
    v24 = *(a1 + 32);
    [*(*(a1 + 40) + 40) setCompletionHandler:v23];
    v5 = *(*(a1 + 40) + 40);
    v22 = 0;
    [v5 startAtTime:&v22 error:0.0];
    v6 = v22;
    if (v6)
    {
      v7 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __89__HPSUISpatialProfileSoundHapticManager_triggerSoundHapticForEarCaptureState_completion___block_invoke_cold_2();
      }
    }

    v8 = *(a1 + 32);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __89__HPSUISpatialProfileSoundHapticManager_triggerSoundHapticForEarCaptureState_completion___block_invoke_63;
    v20[3] = &unk_1E7970258;
    v9 = &v21;
    v21 = *(a1 + 48);
    v10 = MEMORY[0x1E69E96A0];
    v11 = v20;
  }

  dispatch_group_notify(v8, v10, v11);
}

void __89__HPSUISpatialProfileSoundHapticManager_triggerSoundHapticForEarCaptureState_completion___block_invoke_59(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    NSLog(&cfstr_SpatialProfile_25.isa, a2);
  }

  v3 = *(a1 + 32);

  dispatch_group_leave(v3);
}

uint64_t __89__HPSUISpatialProfileSoundHapticManager_triggerSoundHapticForEarCaptureState_completion___block_invoke_63(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __89__HPSUISpatialProfileSoundHapticManager_triggerSoundHapticForEarCaptureState_completion___block_invoke_64(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    NSLog(&cfstr_SpatialProfile_26.isa, a2);
  }

  v3 = *(a1 + 32);

  dispatch_group_leave(v3);
}

uint64_t __89__HPSUISpatialProfileSoundHapticManager_triggerSoundHapticForEarCaptureState_completion___block_invoke_68(uint64_t a1)
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

@end