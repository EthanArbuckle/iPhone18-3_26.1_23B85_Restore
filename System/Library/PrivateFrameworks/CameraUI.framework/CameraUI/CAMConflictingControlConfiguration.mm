@interface CAMConflictingControlConfiguration
+ (BOOL)isNightModePhotoModeDepthConflictRelevantForMode:(int64_t)a3 device:(int64_t)a4 photoFormat:(id)a5;
+ (BOOL)shouldDisableMacroForLockedPortraitForMode:(int64_t)a3 devicePosition:(int64_t)a4 photoFormat:(id)a5 optionalDepthEffectEnabled:(BOOL)a6;
+ (int64_t)resolveDesiredMacroMode:(int64_t)a3 forMode:(int64_t)a4 device:(int64_t)a5 videoConfiguration:(int64_t)a6 videoStabilizationStrength:(int64_t)a7 photoFormat:(id)a8 optionalDepthEffectEnabled:(BOOL)a9 frontRearSimultaneousVideoEnabled:(BOOL)a10;
+ (unint64_t)resolveDesiredNightModeControlMode:(unint64_t)a3 nightModeConflicts:(unint64_t)a4 resolvedFlashMode:(int64_t)a5 captureMode:(int64_t)a6 captureDevice:(int64_t)a7 photoFormat:(id)a8 depthEffectEnabledFromSuggestion:(BOOL)a9;
+ (unint64_t)validatedNightModeConflicts:(unint64_t)a3 forMode:(int64_t)a4 device:(int64_t)a5 photoFormat:(id)a6;
+ (void)resolveDesiredRAWMode:(int64_t)a3 photoFormatConflicts:(unint64_t)a4 desiredLivePhotoMode:(int64_t)a5 desiredFlashMode:(int64_t)a6 toRAWMode:(int64_t *)a7 toLivePhotoMode:(int64_t *)a8 toFlashMode:(int64_t *)a9;
- (CAMConflictingControlConfiguration)initWithDesiredFlashMode:(int64_t)a3 desiredHDRMode:(int64_t)a4 desiredLivePhotoMode:(int64_t)a5 desiredRAWMode:(int64_t)a6 desiredPhotoResolution:(int64_t)a7 photoFormatConflicts:(unint64_t)a8 desiredNightModeControlMode:(unint64_t)a9 nightModeConflicts:(unint64_t)a10 desiredMacroMode:(int64_t)a11;
@end

@implementation CAMConflictingControlConfiguration

- (CAMConflictingControlConfiguration)initWithDesiredFlashMode:(int64_t)a3 desiredHDRMode:(int64_t)a4 desiredLivePhotoMode:(int64_t)a5 desiredRAWMode:(int64_t)a6 desiredPhotoResolution:(int64_t)a7 photoFormatConflicts:(unint64_t)a8 desiredNightModeControlMode:(unint64_t)a9 nightModeConflicts:(unint64_t)a10 desiredMacroMode:(int64_t)a11
{
  v21.receiver = self;
  v21.super_class = CAMConflictingControlConfiguration;
  v17 = [(CAMConflictingControlConfiguration *)&v21 init];
  v18 = v17;
  if (v17)
  {
    v17->_desiredFlashMode = a3;
    v17->_desiredHDRMode = a4;
    v17->_desiredLivePhotoMode = a5;
    v17->_desiredRAWMode = a6;
    v17->_desiredPhotoResolution = a7;
    v17->_photoFormatConflicts = a8;
    v17->_desiredNightModeControlMode = a9;
    v17->_nightModeConflicts = a10;
    v17->_desiredMacroMode = a11;
    v19 = v17;
  }

  return v18;
}

+ (void)resolveDesiredRAWMode:(int64_t)a3 photoFormatConflicts:(unint64_t)a4 desiredLivePhotoMode:(int64_t)a5 desiredFlashMode:(int64_t)a6 toRAWMode:(int64_t *)a7 toLivePhotoMode:(int64_t *)a8 toFlashMode:(int64_t *)a9
{
  if (a3 == 1)
  {
    v9 = a4 == 0;
  }

  else
  {
    v9 = a3;
  }

  if (a3 == 1 && a4 == 0)
  {
    v10 = 0;
  }

  else
  {
    v10 = a5;
  }

  if (a9)
  {
    *a9 = a6;
  }

  if (a8)
  {
    *a8 = v10;
  }

  if (a7)
  {
    *a7 = v9;
  }
}

+ (unint64_t)resolveDesiredNightModeControlMode:(unint64_t)a3 nightModeConflicts:(unint64_t)a4 resolvedFlashMode:(int64_t)a5 captureMode:(int64_t)a6 captureDevice:(int64_t)a7 photoFormat:(id)a8 depthEffectEnabledFromSuggestion:(BOOL)a9
{
  v11 = [a1 validatedNightModeConflicts:a4 forMode:a6 device:a7 photoFormat:a8.var0, a8.var1];
  v13 = a5 != 2 || v11 != 1;
  if (v11)
  {
    v14 = a3 == 2;
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  if (v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = a3;
  }

  if (v15 == 1 && v13)
  {
    return 0;
  }

  else
  {
    return v15;
  }
}

+ (unint64_t)validatedNightModeConflicts:(unint64_t)a3 forMode:(int64_t)a4 device:(int64_t)a5 photoFormat:(id)a6
{
  var1 = a6.var1;
  var0 = a6.var0;
  v12 = +[CAMCaptureCapabilities capabilities];
  if ((a5 - 1) > 0xA)
  {
    v13 = 0;
    if ((a3 & 8) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v13 = qword_1A3A687D8[a5 - 1];
    if ((a3 & 8) == 0)
    {
      goto LABEL_7;
    }
  }

  if (([a1 isNightModePhotoModeDepthConflictRelevantForMode:a4 device:a5 photoFormat:var0, var1] & 1) == 0)
  {
    a3 = (a3 & 0xFFFFFFFFFFFFFFF7) != 0;
  }

LABEL_7:
  if ((a3 & 4) == 0)
  {
    if ((a3 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  if (([v12 isLivePhotoSupportedForMode:a4 devicePosition:v13] & 1) == 0)
  {
    a3 = (a3 & 0xFFFFFFFFFFFFFFFBLL) != 0;
  }

  if (a3)
  {
LABEL_9:
    if (([v12 isFlashSupportedForMode:a4 devicePosition:v13] & 1) == 0)
    {
      a3 = a3 > 1;
    }
  }

LABEL_11:

  return a3;
}

+ (BOOL)isNightModePhotoModeDepthConflictRelevantForMode:(int64_t)a3 device:(int64_t)a4 photoFormat:(id)a5
{
  var1 = a5.var1;
  var0 = a5.var0;
  v9 = +[CAMCaptureCapabilities capabilities];
  v10 = v9;
  if ((a4 - 1) > 0xA)
  {
    v11 = 0;
  }

  else
  {
    v11 = qword_1A3A687D8[a4 - 1];
  }

  v12 = [v9 isDepthSuggestionSupportedForMode:a3 devicePosition:v11 photoFormat:var0, var1];
  v13 = [v10 isNightModeSupportedForMode:a3 device:a4];
  v14 = v13 & ([v10 isNightModeWithDepthSupportedForMode:a3 device:a4] ^ 1);
  if (v12)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (int64_t)resolveDesiredMacroMode:(int64_t)a3 forMode:(int64_t)a4 device:(int64_t)a5 videoConfiguration:(int64_t)a6 videoStabilizationStrength:(int64_t)a7 photoFormat:(id)a8 optionalDepthEffectEnabled:(BOOL)a9 frontRearSimultaneousVideoEnabled:(BOOL)a10
{
  v16 = +[CAMCaptureCapabilities capabilities];
  if ([v16 isSuperWideAutoMacroSupportedForMode:a4 device:a5 videoConfiguration:a6 videoStabilizationStrength:a7 frontRearSimultaneousVideoEnabled:a10])
  {
    if ((a5 - 1) > 0xA)
    {
      v17 = 0;
    }

    else
    {
      v17 = qword_1A3A687D8[a5 - 1];
    }

    if ([a1 shouldDisableMacroForLockedPortraitForMode:a4 devicePosition:v17 photoFormat:a8.var0 optionalDepthEffectEnabled:a8.var1, a9])
    {
      a3 = 0;
    }
  }

  else
  {
    a3 = 0;
  }

  return a3;
}

+ (BOOL)shouldDisableMacroForLockedPortraitForMode:(int64_t)a3 devicePosition:(int64_t)a4 photoFormat:(id)a5 optionalDepthEffectEnabled:(BOOL)a6
{
  var1 = a5.var1;
  var0 = a5.var0;
  v11 = +[CAMCaptureCapabilities capabilities];
  LOBYTE(var1) = [v11 isDepthSuggestionSupportedForMode:a3 devicePosition:a4 photoFormat:var0, var1];
  LOBYTE(var0) = (~[v11 portraitInPhotoModeBehavior] & 0x11) == 0;

  return var1 & a6 & var0;
}

@end