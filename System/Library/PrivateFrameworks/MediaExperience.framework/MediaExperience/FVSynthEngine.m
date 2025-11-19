@interface FVSynthEngine
@end

@implementation FVSynthEngine

void __FVSynthEngine_SendVibeStoppedNotification_block_invoke(uint64_t a1)
{
  CMNotificationCenterGetDefaultLocalCenter();
  v2 = *(a1 + 40);
  CMNotificationCenterPostNotification();
  v3 = *(a1 + 40);
  if (v3)
  {

    CFRelease(v3);
  }
}

void __FVSynthEngine_StartVibrationWithPattern_block_invoke(uint64_t a1)
{
  v1 = *(gFVInfo + 8);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __FVSynthEngine_StartVibrationWithPattern_block_invoke_2;
  v2[3] = &__block_descriptor_40_e5_v8__0l;
  v2[4] = *(a1 + 32);
  MXDispatchAsync("FVSynthEngine_StartVibrationWithPattern_block_invoke", "FigVibrator_VibeSynthEngine.m", 51, 0, 0, v1, v2);
}

void __FVSynthEngine_StartVibrationWithPattern_block_invoke_2(uint64_t a1)
{
  if (gFVInfo)
  {
    v2 = *(a1 + 32);
    v3 = *gFVInfo;
    if (!FigSimpleMutexLock())
    {
      v4 = gFVInfo;
      v5 = *(gFVInfo + 68);
      if (v5)
      {
        *(gFVInfo + 68) = --v5;
      }

      if (*(v4 + 20))
      {
        notify_set_state(*(v4 + 16), 0);
        notify_post("com.apple.coremedia.vibration");
        v5 = *(v4 + 68);
      }

      if (!v5)
      {
        FigVibratorPostNotification(@"VibeWillStop");
      }

      if (v2)
      {
        FVSynthEngine_SendVibeStoppedNotification(v4, v2);
      }

      v6 = *gFVInfo;
      FigSimpleMutexUnlock();
    }
  }

  else
  {
    FigSignalErrorAtGM();
  }

  v7 = *(a1 + 32);
  if (v7)
  {

    CFRelease(v7);
  }
}

@end