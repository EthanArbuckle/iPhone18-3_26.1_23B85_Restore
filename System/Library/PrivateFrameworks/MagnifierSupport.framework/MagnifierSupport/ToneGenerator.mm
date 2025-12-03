@interface ToneGenerator
- (ToneGenerator)init;
- (id)configureAudioEngineWithError:(id *)error;
- (id)configureHapticPlayerWithVolume:(float)volume duration:(double)duration error:(id *)error;
- (void)configurePlayerWithPitchFactor:(float)factor leftBalance:(float)balance rightBalance:(float)rightBalance volume:(float)volume loop:(BOOL)loop;
- (void)pause;
- (void)playHapticsWithVolume:(float)volume pulseDuration:(double)duration;
- (void)playOnePulse;
- (void)playSoundWithPitchFactor:(float)factor leftBalance:(float)balance rightBalance:(float)rightBalance volume:(float)volume loop:(BOOL)loop;
- (void)setUseHapticFeedback:(BOOL)feedback;
- (void)setUseSoundFeedback:(BOOL)feedback;
- (void)startPulse;
- (void)stopPulse;
@end

@implementation ToneGenerator

- (void)setUseSoundFeedback:(BOOL)feedback
{
  if (self->_useSoundFeedback != feedback)
  {
    v16[7] = v3;
    v16[8] = v4;
    feedbackCopy = feedback;
    objc_initWeak(v16, self);
    soundHapticQueue = self->_soundHapticQueue;
    if (feedbackCopy)
    {
      v8 = &v15;
      v9 = v14;
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v10 = 1;
      v11 = __37__ToneGenerator_setUseSoundFeedback___block_invoke;
    }

    else
    {
      v10 = 0;
      v8 = &v13;
      v9 = v12;
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v11 = __37__ToneGenerator_setUseSoundFeedback___block_invoke_2;
    }

    v9[2] = v11;
    v9[3] = &unk_279854058;
    objc_copyWeak(v8, v16);
    dispatch_async(soundHapticQueue, v9);
    self->_useSoundFeedback = v10;
    objc_destroyWeak(v8);
    objc_destroyWeak(v16);
  }
}

void __37__ToneGenerator_setUseSoundFeedback___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = 0;
  v3 = [WeakRetained configureAudioEngineWithError:&v7];
  v4 = v7;
  v5 = objc_loadWeakRetained((a1 + 32));
  [v5 setAudioEngine:v3];

  if (v4)
  {
    v6 = MAGLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __37__ToneGenerator_setUseSoundFeedback___block_invoke_cold_1();
    }
  }
}

void __37__ToneGenerator_setUseSoundFeedback___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained audioEngine];
  [v1 stop];
}

- (void)setUseHapticFeedback:(BOOL)feedback
{
  if (self->_useHapticFeedback != feedback)
  {
    if (feedback)
    {
      if (!self->_hapticEngineStarted)
      {
        capabilitiesForHardware = [MEMORY[0x277CBF6B0] capabilitiesForHardware];
        supportsHaptics = [capabilitiesForHardware supportsHaptics];

        if (supportsHaptics)
        {
          soundHapticQueue = self->_soundHapticQueue;
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __38__ToneGenerator_setUseHapticFeedback___block_invoke;
          block[3] = &unk_2798540A8;
          block[4] = self;
          dispatch_async(soundHapticQueue, block);
        }
      }
    }

    else if (self->_hapticEngineStarted)
    {
      objc_initWeak(&location, self);
      hapticEngine = self->_hapticEngine;
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __38__ToneGenerator_setUseHapticFeedback___block_invoke_7;
      v8[3] = &unk_2798540D0;
      objc_copyWeak(&v9, &location);
      [(CHHapticEngine *)hapticEngine stopWithCompletionHandler:v8];
      self->_useHapticFeedback = 0;
      objc_destroyWeak(&v9);
      objc_destroyWeak(&location);
    }
  }
}

void __38__ToneGenerator_setUseHapticFeedback___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CBF6B0]);
  v3 = [MEMORY[0x277CB83F8] sharedInstance];
  v19 = 0;
  v4 = [v2 initWithAudioSession:v3 error:&v19];
  v5 = v19;
  v6 = *(a1 + 32);
  v7 = *(v6 + 112);
  *(v6 + 112) = v4;

  if (v5)
  {
    v8 = MAGLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __38__ToneGenerator_setUseHapticFeedback___block_invoke_cold_1();
    }

LABEL_7:

    return;
  }

  v9 = *(*(a1 + 32) + 112);
  v18 = 0;
  [v9 startAndReturnError:&v18];
  v10 = v18;
  if (v10)
  {
    v5 = v10;
    v8 = MAGLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __38__ToneGenerator_setUseHapticFeedback___block_invoke_cold_2();
    }

    goto LABEL_7;
  }

  objc_initWeak(&location, *(a1 + 32));
  v11 = *(*(a1 + 32) + 112);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __38__ToneGenerator_setUseHapticFeedback___block_invoke_4;
  v15[3] = &unk_279854058;
  objc_copyWeak(&v16, &location);
  [v11 setResetHandler:v15];
  v12 = *(*(a1 + 32) + 112);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __38__ToneGenerator_setUseHapticFeedback___block_invoke_5;
  v13[3] = &unk_279854080;
  objc_copyWeak(&v14, &location);
  [v12 setStoppedHandler:v13];
  *(*(a1 + 32) + 9) = 1;
  *(*(a1 + 32) + 24) = 1;
  objc_destroyWeak(&v14);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __38__ToneGenerator_setUseHapticFeedback___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained hapticEngine];
  v9 = 0;
  [v3 startAndReturnError:&v9];
  v4 = v9;

  if (v4)
  {
    v5 = MAGLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __38__ToneGenerator_setUseHapticFeedback___block_invoke_4_cold_1();
    }

    v6 = objc_loadWeakRetained((a1 + 32));
    [v6 setUseHapticFeedback:0];

    v7 = objc_loadWeakRetained((a1 + 32));
    [v7 setHapticEngineStarted:0];
  }

  else
  {
    v8 = objc_loadWeakRetained((a1 + 32));
    [v8 setHapticEngineStarted:1];

    v7 = objc_loadWeakRetained((a1 + 32));
    [v7 setUseHapticFeedback:1];
  }
}

void __38__ToneGenerator_setUseHapticFeedback___block_invoke_5(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setHapticEngineStarted:0];

  v5 = objc_loadWeakRetained((a1 + 32));
  [v5 setUseHapticFeedback:0];

  v6 = MAGLogCommon();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      if (v7)
      {
        __38__ToneGenerator_setUseHapticFeedback___block_invoke_5_cold_3();
      }
    }

    else
    {
      if (a2 != 3)
      {
LABEL_10:
        if (v7)
        {
          __38__ToneGenerator_setUseHapticFeedback___block_invoke_5_cold_5();
        }

        goto LABEL_16;
      }

      if (v7)
      {
        __38__ToneGenerator_setUseHapticFeedback___block_invoke_5_cold_2();
      }
    }
  }

  else
  {
    if (a2 != -1)
    {
      if (a2 == 1)
      {
        if (v7)
        {
          __38__ToneGenerator_setUseHapticFeedback___block_invoke_5_cold_4();
        }

        goto LABEL_16;
      }

      goto LABEL_10;
    }

    if (v7)
    {
      __38__ToneGenerator_setUseHapticFeedback___block_invoke_5_cold_1();
    }
  }

LABEL_16:
}

void __38__ToneGenerator_setUseHapticFeedback___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (v3)
  {
    v6 = [WeakRetained hapticEngineStarted];

    if (v6)
    {
      v7 = objc_loadWeakRetained((a1 + 32));
      [v7 setUseHapticFeedback:1];
    }

    v8 = MAGLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __38__ToneGenerator_setUseHapticFeedback___block_invoke_7_cold_1();
    }
  }

  else
  {
    [WeakRetained setHapticEngineStarted:0];
  }
}

- (ToneGenerator)init
{
  v18.receiver = self;
  v18.super_class = ToneGenerator;
  v2 = [(ToneGenerator *)&v18 init];
  v3 = v2;
  if (v2)
  {
    v2[8] = 0;
    __asm { FMOV            V0.4S, #1.0 }

    *(v2 + 28) = _Q0;
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v9 URLForResource:@"ax_distance_midHigh" withExtension:@"aiff"];
    audioFileURL = v3->_audioFileURL;
    v3->_audioFileURL = v10;

    audioEngine = v3->_audioEngine;
    v3->_audioEngine = 0;

    v3->_useHapticFeedback = 0;
    v3->_hapticEngineStarted = 0;
    v3->_detectionType = 0;
    timer = v3->_timer;
    v3->_timer = 0;

    v14 = dispatch_queue_create("Sound and Haptic Queue", 0);
    soundHapticQueue = v3->_soundHapticQueue;
    v3->_soundHapticQueue = v14;

    v16 = v3;
  }

  return v3;
}

- (void)startPulse
{
  if (!self->_timer)
  {
    objc_initWeak(&location, self);
    v16[0] = 0;
    v16[1] = v16;
    v16[2] = 0x3032000000;
    v16[3] = __Block_byref_object_copy__0;
    v16[4] = __Block_byref_object_dispose__0;
    date = [MEMORY[0x277CBEAA8] date];
    v15[0] = 0;
    v15[1] = v15;
    v15[2] = 0x2020000000;
    v15[3] = 0x3FC3333333333333;
    v3 = objc_alloc(MEMORY[0x277CBEBB8]);
    date2 = [MEMORY[0x277CBEAA8] date];
    v8 = MEMORY[0x277D85DD0];
    v9 = 3221225472;
    v10 = __27__ToneGenerator_startPulse__block_invoke;
    v11 = &unk_2798540F8;
    objc_copyWeak(&v14, &location);
    v12 = v16;
    v13 = v15;
    v5 = [v3 initWithFireDate:date2 interval:1 repeats:&v8 block:0.001];
    timer = self->_timer;
    self->_timer = v5;

    currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
    [currentRunLoop addTimer:self->_timer forMode:*MEMORY[0x277CBE640]];

    objc_destroyWeak(&v14);
    _Block_object_dispose(v15, 8);
    _Block_object_dispose(v16, 8);

    objc_destroyWeak(&location);
  }
}

void __27__ToneGenerator_startPulse__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v19 = WeakRetained;
    [WeakRetained volume];
    if (v3 <= 0.0)
    {
      [v19 pause];
      v15 = [MEMORY[0x277CBEAA8] date];
      v16 = *(*(a1 + 32) + 8);
      v17 = *(v16 + 40);
      *(v16 + 40) = v15;

      [v19 maxPulseFrequency];
      v11 = v18;
      v9 = a1 + 40;
    }

    else
    {
      [v19 minPulseFrequency];
      v5 = v4;
      [v19 pulseFrequency];
      v7 = v6;
      [*(*(*(a1 + 32) + 8) + 40) timeIntervalSinceNow];
      v9 = a1 + 40;
      WeakRetained = v19;
      if (*(*(*(a1 + 40) + 8) + 24) > -v8)
      {
        goto LABEL_13;
      }

      if (v5 >= v7)
      {
        v10 = v5;
      }

      else
      {
        v10 = v7;
      }

      if (v10 <= 13.0)
      {
        v11 = v10;
      }

      else
      {
        v11 = 13.0;
      }

      v12 = [MEMORY[0x277CBEAA8] date];
      v13 = *(*(a1 + 32) + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = v12;

      [v19 playOnePulse];
    }

    *(*(*v9 + 8) + 24) = 1.0 / v11;
    WeakRetained = v19;
  }

LABEL_13:
}

- (void)stopPulse
{
  timer = self->_timer;
  if (timer)
  {
    [(NSTimer *)timer invalidate];
    v4 = self->_timer;
    self->_timer = 0;

    [(ToneGenerator *)self pause];
  }
}

- (id)configureAudioEngineWithError:(id *)error
{
  v5 = objc_alloc_init(MEMORY[0x277CB8388]);
  v6 = objc_alloc_init(MEMORY[0x277CB83E0]);
  player = self->_player;
  self->_player = v6;

  mainMixerNode = [v5 mainMixerNode];
  mixer = self->_mixer;
  self->_mixer = mainMixerNode;

  [v5 attachNode:self->_player];
  v11 = self->_player;
  v10 = self->_mixer;
  v12 = [(AVAudioPlayerNode *)v11 outputFormatForBus:0];
  [v5 connect:v11 to:v10 format:v12];

  v13 = [v5 startAndReturnError:error];
  v14 = 0;
  if (v13)
  {
    v14 = v5;
  }

  return v14;
}

- (void)playOnePulse
{
  *&v4 = self->_rightBalance;
  *&v2 = self->_pitchFactor;
  *&v5 = self->_volume;
  *&v3 = self->_leftBalance;
  [(ToneGenerator *)self playSoundWithPitchFactor:0 leftBalance:v2 rightBalance:v3 volume:v4 loop:v5];
  *&v7 = self->_volume;
  pulseDuration = self->_pulseDuration;

  [(ToneGenerator *)self playHapticsWithVolume:v7 pulseDuration:pulseDuration];
}

- (void)pause
{
  objc_initWeak(&location, self);
  soundHapticQueue = self->_soundHapticQueue;
  v4 = MEMORY[0x277D85DD0];
  v5 = 3221225472;
  v6 = __22__ToneGenerator_pause__block_invoke;
  v7 = &unk_279854058;
  objc_copyWeak(&v8, &location);
  dispatch_async(soundHapticQueue, &v4);
  [(AVAudioPlayerNode *)self->_player pause:v4];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __22__ToneGenerator_pause__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained audioEngine];
  v4 = [v3 isRunning];

  if ((v4 & 1) == 0)
  {
    v6 = objc_loadWeakRetained((a1 + 32));
    v5 = [v6 audioEngine];
    [v5 startAndReturnError:0];
  }
}

- (void)configurePlayerWithPitchFactor:(float)factor leftBalance:(float)balance rightBalance:(float)rightBalance volume:(float)volume loop:(BOOL)loop
{
  if (self->_audioFileURL)
  {
    v12 = [(AVAudioMixerNode *)self->_mixer outputFormatForBus:0];
    [v12 sampleRate];
    v14 = v13;

    v15 = objc_alloc(MEMORY[0x277CB8398]);
    audioFileURL = self->_audioFileURL;
    v57 = 0;
    v17 = [v15 initForReading:audioFileURL error:&v57];
    v18 = v57;
    if (v18)
    {
      v19 = v18;
      v20 = MAGLogCommon();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [ToneGenerator configurePlayerWithPitchFactor:leftBalance:rightBalance:volume:loop:];
      }
    }

    else
    {
      v21 = [v17 length];
      v22 = objc_alloc(MEMORY[0x277CB83C8]);
      processingFormat = [v17 processingFormat];
      v20 = [v22 initWithPCMFormat:processingFormat frameCapacity:v21];

      [v20 setFrameLength:v21];
      v56 = 0;
      [v17 readIntoBuffer:v20 error:&v56];
      v19 = v56;
      if (v19)
      {
        v24 = MAGLogCommon();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          [ToneGenerator configurePlayerWithPitchFactor:leftBalance:rightBalance:volume:loop:];
        }
      }

      else
      {
        v25 = v14;
        v26 = v21 / factor;
        v27 = v26;
        self->_pulseDuration = (v26 / v25);
        v28 = objc_alloc(MEMORY[0x277CB83C8]);
        processingFormat2 = [v17 processingFormat];
        v30 = [v28 initWithPCMFormat:processingFormat2 frameCapacity:v27];
        buffer = self->_buffer;
        self->_buffer = v30;

        [(AVAudioPCMBuffer *)self->_buffer setFrameLength:v27];
        v32 = [(AVAudioMixerNode *)self->_mixer outputFormatForBus:0];
        channelCount = [v32 channelCount];

        if (channelCount)
        {
          floatChannelData = [v20 floatChannelData];
          floatChannelData2 = [(AVAudioPCMBuffer *)self->_buffer floatChannelData];
          v36 = malloc_type_malloc(4 * channelCount, 0x100004052888210uLL);
          if (channelCount == 1)
          {
            if (balance >= rightBalance)
            {
              rightBalanceCopy = balance;
            }

            else
            {
              rightBalanceCopy = rightBalance;
            }

            *v36 = rightBalanceCopy * volume;
          }

          else
          {
            v38 = (channelCount + 3) & 0x1FFFFFFFCLL;
            v39 = vdupq_n_s64(channelCount - 1);
            v40 = balance * volume;
            v41 = rightBalance * volume;
            v42 = xmmword_257ED6C10;
            v43 = xmmword_257ED6C20;
            v44 = v36 + 2;
            v45 = vdupq_n_s64(4uLL);
            do
            {
              v46 = vmovn_s64(vcgeq_u64(v39, v43));
              if (vuzp1_s16(v46, *v39.i8).u8[0])
              {
                *(v44 - 2) = v40;
              }

              if (vuzp1_s16(v46, *&v39).i8[2])
              {
                *(v44 - 1) = v41;
              }

              if (vuzp1_s16(*&v39, vmovn_s64(vcgeq_u64(v39, *&v42))).i32[1])
              {
                *v44 = v40;
                v44[1] = v41;
              }

              v42 = vaddq_s64(v42, v45);
              v43 = vaddq_s64(v43, v45);
              v44 += 4;
              v38 -= 4;
            }

            while (v38);
          }

          v47 = 0;
          v48 = (v21 - 1);
          do
          {
            if (v27)
            {
              v49 = 0;
              v50 = v36[v47];
              v51 = *(floatChannelData + 8 * v47);
              v52 = floatChannelData2[v47];
              do
              {
                v53 = v49 * factor;
                if (v53 >= v48)
                {
                  v55 = *(v51 + 4 * v48);
                }

                else
                {
                  v54 = vcvtms_s32_f32(v53);
                  v55 = *(v51 + 4 * v54) + ((*(v51 + 4 * vcvtps_s32_f32(v53)) - *(v51 + 4 * v54)) * (v53 - floorf(v53)));
                }

                v52[v49++] = v50 * v55;
              }

              while (v27 != v49);
            }

            ++v47;
          }

          while (v47 != channelCount);
          free(v36);
        }
      }
    }
  }
}

- (void)playSoundWithPitchFactor:(float)factor leftBalance:(float)balance rightBalance:(float)rightBalance volume:(float)volume loop:(BOOL)loop
{
  objc_initWeak(&location, self);
  soundHapticQueue = self->_soundHapticQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__ToneGenerator_playSoundWithPitchFactor_leftBalance_rightBalance_volume_loop___block_invoke;
  block[3] = &unk_279854120;
  objc_copyWeak(&v15, &location);
  factorCopy = factor;
  balanceCopy = balance;
  rightBalanceCopy = rightBalance;
  volumeCopy = volume;
  loopCopy = loop;
  dispatch_async(soundHapticQueue, block);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __79__ToneGenerator_playSoundWithPitchFactor_leftBalance_rightBalance_volume_loop___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained useSoundFeedback];

  if (v3)
  {
    v4 = objc_loadWeakRetained((a1 + 32));
    LODWORD(v5) = *(a1 + 40);
    LODWORD(v6) = *(a1 + 44);
    LODWORD(v7) = *(a1 + 48);
    LODWORD(v8) = *(a1 + 52);
    [v4 configurePlayerWithPitchFactor:*(a1 + 56) leftBalance:v5 rightBalance:v6 volume:v7 loop:v8];

    v9 = objc_loadWeakRetained((a1 + 32));
    v10 = [v9 buffer];

    if (v10)
    {
      v11 = objc_loadWeakRetained((a1 + 32));
      v12 = [v11 audioEngine];
      v13 = [v12 isRunning];

      if (v13)
      {
        if (*(a1 + 56))
        {
          v14 = 5;
        }

        else
        {
          v14 = 4;
        }

        v15 = objc_loadWeakRetained((a1 + 32));
        v16 = [v15 player];
        v17 = objc_loadWeakRetained((a1 + 32));
        v18 = [v17 buffer];
        [v16 scheduleBuffer:v18 atTime:0 options:v14 completionHandler:&__block_literal_global_1];

        v25 = objc_loadWeakRetained((a1 + 32));
        v19 = [v25 player];
        [v19 play];
      }

      else
      {
        v20 = objc_loadWeakRetained((a1 + 32));
        v26 = 0;
        v21 = [v20 configureAudioEngineWithError:&v26];
        v22 = v26;
        v23 = objc_loadWeakRetained((a1 + 32));
        [v23 setAudioEngine:v21];

        if (v22)
        {
          v24 = MAGLogCommon();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            __37__ToneGenerator_setUseSoundFeedback___block_invoke_cold_1();
          }
        }
      }
    }
  }
}

- (id)configureHapticPlayerWithVolume:(float)volume duration:(double)duration error:(id *)error
{
  v131[1] = *MEMORY[0x277D85DE8];
  v130 = *MEMORY[0x277CBF688];
  v127 = *MEMORY[0x277CBF658];
  v8 = *MEMORY[0x277CBF650];
  v9 = *MEMORY[0x277CBF690];
  v125[0] = *MEMORY[0x277CBF670];
  v125[1] = v9;
  v126[0] = v8;
  v126[1] = &unk_286927208;
  v125[2] = *MEMORY[0x277CBF660];
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:duration];
  v126[2] = v10;
  v125[3] = *MEMORY[0x277CBF668];
  v11 = *MEMORY[0x277CBF678];
  v123[0] = *MEMORY[0x277CBF638];
  v12 = *MEMORY[0x277CBF680];
  v122[0] = v11;
  v122[1] = v12;
  *&v13 = volume;
  v14 = [MEMORY[0x277CCABB0] numberWithFloat:v13];
  v123[1] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v123 forKeys:v122 count:2];
  v124 = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v124 count:1];
  v126[3] = v16;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v126 forKeys:v125 count:4];
  v128 = v17;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v128 forKeys:&v127 count:1];
  v129 = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v129 count:1];
  v131[0] = v19;
  v78 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v131 forKeys:&v130 count:1];

  detectionType = self->_detectionType;
  v21 = MEMORY[0x277CBF640];
  selfCopy = self;
  if (detectionType == 1)
  {
    v120 = *MEMORY[0x277CBF688];
    v117 = *MEMORY[0x277CBF658];
    v22 = *MEMORY[0x277CBF650];
    v23 = *MEMORY[0x277CBF690];
    v115[0] = *MEMORY[0x277CBF670];
    v115[1] = v23;
    v116[0] = v22;
    v116[1] = &unk_286927208;
    v115[2] = *MEMORY[0x277CBF660];
    v74 = [MEMORY[0x277CCABB0] numberWithDouble:duration];
    v116[2] = v74;
    v115[3] = *MEMORY[0x277CBF668];
    v24 = *MEMORY[0x277CBF678];
    v113[0] = *MEMORY[0x277CBF638];
    v25 = *MEMORY[0x277CBF680];
    v112[0] = v24;
    v112[1] = v25;
    *&v26 = volume;
    v27 = [MEMORY[0x277CCABB0] numberWithFloat:v26];
    v113[1] = v27;
    v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v113 forKeys:v112 count:2];
    v114 = v28;
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v114 count:1];
    v115[4] = *v21;
    v116[3] = v29;
    v116[4] = &unk_286927218;
    v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v116 forKeys:v115 count:5];
    v118 = v30;
    v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v118 forKeys:&v117 count:1];
    v119 = v31;
    v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v119 count:1];
    v121 = v32;
    v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v121 forKeys:&v120 count:1];

    detectionType = selfCopy->_detectionType;
    v34 = v33;
  }

  else
  {
    v34 = v78;
  }

  if (detectionType == 2)
  {
    v110 = *MEMORY[0x277CBF688];
    v107 = *MEMORY[0x277CBF658];
    v35 = *MEMORY[0x277CBF650];
    v36 = *MEMORY[0x277CBF690];
    v105[0] = *MEMORY[0x277CBF670];
    v105[1] = v36;
    v106[0] = v35;
    v106[1] = &unk_286927208;
    v105[2] = *MEMORY[0x277CBF660];
    v75 = [MEMORY[0x277CCABB0] numberWithDouble:duration];
    v106[2] = v75;
    v105[3] = *MEMORY[0x277CBF668];
    v37 = *MEMORY[0x277CBF678];
    v103[0] = *MEMORY[0x277CBF638];
    v38 = *MEMORY[0x277CBF680];
    v102[0] = v37;
    v102[1] = v38;
    *&v39 = volume;
    [MEMORY[0x277CCABB0] numberWithFloat:v39];
    v40 = v79 = v34;
    v103[1] = v40;
    v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v103 forKeys:v102 count:2];
    v104 = v41;
    v42 = [MEMORY[0x277CBEA60] arrayWithObjects:&v104 count:1];
    v105[4] = *MEMORY[0x277CBF640];
    v106[3] = v42;
    v106[4] = &unk_286927228;
    v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v106 forKeys:v105 count:5];
    v108 = v43;
    v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v108 forKeys:&v107 count:1];
    v109 = v44;
    v45 = [MEMORY[0x277CBEA60] arrayWithObjects:&v109 count:1];
    v111 = v45;
    v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v111 forKeys:&v110 count:1];

    v46 = selfCopy;
    detectionType = selfCopy->_detectionType;
  }

  else
  {
    v46 = selfCopy;
  }

  if (detectionType == 3)
  {
    v100 = *MEMORY[0x277CBF688];
    v97 = *MEMORY[0x277CBF658];
    v47 = *MEMORY[0x277CBF650];
    v48 = *MEMORY[0x277CBF690];
    v95[0] = *MEMORY[0x277CBF670];
    v95[1] = v48;
    v96[0] = v47;
    v96[1] = &unk_286927208;
    v95[2] = *MEMORY[0x277CBF660];
    [MEMORY[0x277CCABB0] numberWithDouble:duration];
    v49 = v80 = v34;
    v96[2] = v49;
    v95[3] = *MEMORY[0x277CBF668];
    v50 = *MEMORY[0x277CBF678];
    v93[0] = *MEMORY[0x277CBF638];
    v51 = *MEMORY[0x277CBF680];
    v92[0] = v50;
    v92[1] = v51;
    *&v52 = volume;
    v53 = [MEMORY[0x277CCABB0] numberWithFloat:v52];
    v93[1] = v53;
    v54 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v93 forKeys:v92 count:2];
    v94 = v54;
    v55 = [MEMORY[0x277CBEA60] arrayWithObjects:&v94 count:1];
    v95[4] = *MEMORY[0x277CBF640];
    v96[3] = v55;
    v96[4] = &unk_286927238;
    v56 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v96 forKeys:v95 count:5];
    v98 = v56;
    v57 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v98 forKeys:&v97 count:1];
    v99 = v57;
    v58 = [MEMORY[0x277CBEA60] arrayWithObjects:&v99 count:1];
    v101 = v58;
    v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v101 forKeys:&v100 count:1];

    v46 = selfCopy;
    detectionType = selfCopy->_detectionType;
  }

  if (detectionType == 4)
  {
    v90 = *MEMORY[0x277CBF688];
    v87 = *MEMORY[0x277CBF658];
    v59 = *MEMORY[0x277CBF650];
    v60 = *MEMORY[0x277CBF690];
    v85[0] = *MEMORY[0x277CBF670];
    v85[1] = v60;
    v86[0] = v59;
    v86[1] = &unk_286927208;
    v85[2] = *MEMORY[0x277CBF660];
    [MEMORY[0x277CCABB0] numberWithDouble:duration];
    v61 = v81 = v34;
    v86[2] = v61;
    v85[3] = *MEMORY[0x277CBF668];
    v62 = *MEMORY[0x277CBF678];
    v83[0] = *MEMORY[0x277CBF638];
    v63 = *MEMORY[0x277CBF680];
    v82[0] = v62;
    v82[1] = v63;
    *&v64 = volume;
    v65 = [MEMORY[0x277CCABB0] numberWithFloat:v64];
    v83[1] = v65;
    v66 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v83 forKeys:v82 count:2];
    v84 = v66;
    v67 = [MEMORY[0x277CBEA60] arrayWithObjects:&v84 count:1];
    v85[4] = *MEMORY[0x277CBF640];
    v86[3] = v67;
    v86[4] = &unk_286927248;
    v68 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v86 forKeys:v85 count:5];
    v88 = v68;
    v69 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v88 forKeys:&v87 count:1];
    v89 = v69;
    v70 = [MEMORY[0x277CBEA60] arrayWithObjects:&v89 count:1];
    v91 = v70;
    v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v91 forKeys:&v90 count:1];

    v46 = selfCopy;
  }

  v71 = [objc_alloc(MEMORY[0x277CBF6D0]) initWithDictionary:v34 error:error];
  if (v71)
  {
    v72 = [(CHHapticEngine *)v46->_hapticEngine createPlayerWithPattern:v71 error:error];
  }

  else
  {
    v72 = 0;
  }

  return v72;
}

- (void)playHapticsWithVolume:(float)volume pulseDuration:(double)duration
{
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x3032000000;
  v12[3] = __Block_byref_object_copy__0;
  v12[4] = __Block_byref_object_dispose__0;
  v7 = objc_initWeak(&location, self);
  hapticEngine = [(ToneGenerator *)self hapticEngine];

  soundHapticQueue = self->_soundHapticQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__ToneGenerator_playHapticsWithVolume_pulseDuration___block_invoke;
  block[3] = &unk_279854148;
  objc_copyWeak(v10, &location);
  block[4] = v12;
  volumeCopy = volume;
  v10[1] = *&duration;
  dispatch_async(soundHapticQueue, block);
  objc_destroyWeak(v10);
  _Block_object_dispose(v12, 8);

  objc_destroyWeak(&location);
}

void __53__ToneGenerator_playHapticsWithVolume_pulseDuration___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained useHapticFeedback];

  if (v3)
  {
    v4 = objc_loadWeakRetained((a1 + 40));
    v5 = [v4 hapticEngineStarted];

    if ((v5 & 1) == 0)
    {
      v6 = *(*(*(a1 + 32) + 8) + 40);
      v16 = 0;
      [v6 startAndReturnError:&v16];
      v7 = v16;
      if (v7)
      {
        v8 = v7;
        v9 = MAGLogCommon();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          __53__ToneGenerator_playHapticsWithVolume_pulseDuration___block_invoke_cold_1();
        }

LABEL_12:

        return;
      }

      v10 = objc_loadWeakRetained((a1 + 40));
      [v10 setHapticEngineStarted:1];
    }

    v11 = objc_loadWeakRetained((a1 + 40));
    LODWORD(v12) = *(a1 + 56);
    v13 = *(a1 + 48);
    v15 = 0;
    v9 = [v11 configureHapticPlayerWithVolume:&v15 duration:v12 error:v13];
    v8 = v15;

    if (v8)
    {
      v14 = MAGLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        __53__ToneGenerator_playHapticsWithVolume_pulseDuration___block_invoke_cold_2();
      }
    }

    else
    {
      [v9 startAtTime:0 error:0.0];
    }

    goto LABEL_12;
  }
}

void __38__ToneGenerator_setUseHapticFeedback___block_invoke_5_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __38__ToneGenerator_setUseHapticFeedback___block_invoke_5_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __38__ToneGenerator_setUseHapticFeedback___block_invoke_5_cold_3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __38__ToneGenerator_setUseHapticFeedback___block_invoke_5_cold_4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __38__ToneGenerator_setUseHapticFeedback___block_invoke_5_cold_5()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end