@interface CAMConflictingControlConfiguration
+ (BOOL)isNightModePhotoModeDepthConflictRelevantForMode:(int64_t)mode device:(int64_t)device photoFormat:(id)format;
+ (BOOL)shouldDisableMacroForLockedPortraitForMode:(int64_t)mode devicePosition:(int64_t)position photoFormat:(id)format optionalDepthEffectEnabled:(BOOL)enabled;
+ (int64_t)resolveDesiredMacroMode:(int64_t)mode forMode:(int64_t)forMode device:(int64_t)device videoConfiguration:(int64_t)configuration videoStabilizationStrength:(int64_t)strength photoFormat:(id)format optionalDepthEffectEnabled:(BOOL)enabled frontRearSimultaneousVideoEnabled:(BOOL)self0;
+ (unint64_t)resolveDesiredNightModeControlMode:(unint64_t)mode nightModeConflicts:(unint64_t)conflicts resolvedFlashMode:(int64_t)flashMode captureMode:(int64_t)captureMode captureDevice:(int64_t)device photoFormat:(id)format depthEffectEnabledFromSuggestion:(BOOL)suggestion;
+ (unint64_t)validatedNightModeConflicts:(unint64_t)conflicts forMode:(int64_t)mode device:(int64_t)device photoFormat:(id)format;
+ (void)resolveDesiredRAWMode:(int64_t)mode photoFormatConflicts:(unint64_t)conflicts desiredLivePhotoMode:(int64_t)photoMode desiredFlashMode:(int64_t)flashMode toRAWMode:(int64_t *)wMode toLivePhotoMode:(int64_t *)livePhotoMode toFlashMode:(int64_t *)toFlashMode;
- (CAMConflictingControlConfiguration)initWithDesiredFlashMode:(int64_t)mode desiredHDRMode:(int64_t)rMode desiredLivePhotoMode:(int64_t)photoMode desiredRAWMode:(int64_t)wMode desiredPhotoResolution:(int64_t)resolution photoFormatConflicts:(unint64_t)conflicts desiredNightModeControlMode:(unint64_t)controlMode nightModeConflicts:(unint64_t)self0 desiredMacroMode:(int64_t)self1;
@end

@implementation CAMConflictingControlConfiguration

- (CAMConflictingControlConfiguration)initWithDesiredFlashMode:(int64_t)mode desiredHDRMode:(int64_t)rMode desiredLivePhotoMode:(int64_t)photoMode desiredRAWMode:(int64_t)wMode desiredPhotoResolution:(int64_t)resolution photoFormatConflicts:(unint64_t)conflicts desiredNightModeControlMode:(unint64_t)controlMode nightModeConflicts:(unint64_t)self0 desiredMacroMode:(int64_t)self1
{
  v21.receiver = self;
  v21.super_class = CAMConflictingControlConfiguration;
  v17 = [(CAMConflictingControlConfiguration *)&v21 init];
  v18 = v17;
  if (v17)
  {
    v17->_desiredFlashMode = mode;
    v17->_desiredHDRMode = rMode;
    v17->_desiredLivePhotoMode = photoMode;
    v17->_desiredRAWMode = wMode;
    v17->_desiredPhotoResolution = resolution;
    v17->_photoFormatConflicts = conflicts;
    v17->_desiredNightModeControlMode = controlMode;
    v17->_nightModeConflicts = modeConflicts;
    v17->_desiredMacroMode = macroMode;
    v19 = v17;
  }

  return v18;
}

+ (void)resolveDesiredRAWMode:(int64_t)mode photoFormatConflicts:(unint64_t)conflicts desiredLivePhotoMode:(int64_t)photoMode desiredFlashMode:(int64_t)flashMode toRAWMode:(int64_t *)wMode toLivePhotoMode:(int64_t *)livePhotoMode toFlashMode:(int64_t *)toFlashMode
{
  if (mode == 1)
  {
    modeCopy = conflicts == 0;
  }

  else
  {
    modeCopy = mode;
  }

  if (mode == 1 && conflicts == 0)
  {
    photoModeCopy = 0;
  }

  else
  {
    photoModeCopy = photoMode;
  }

  if (toFlashMode)
  {
    *toFlashMode = flashMode;
  }

  if (livePhotoMode)
  {
    *livePhotoMode = photoModeCopy;
  }

  if (wMode)
  {
    *wMode = modeCopy;
  }
}

+ (unint64_t)resolveDesiredNightModeControlMode:(unint64_t)mode nightModeConflicts:(unint64_t)conflicts resolvedFlashMode:(int64_t)flashMode captureMode:(int64_t)captureMode captureDevice:(int64_t)device photoFormat:(id)format depthEffectEnabledFromSuggestion:(BOOL)suggestion
{
  v11 = [self validatedNightModeConflicts:conflicts forMode:captureMode device:device photoFormat:format.var0, format.var1];
  v13 = flashMode != 2 || v11 != 1;
  if (v11)
  {
    v14 = mode == 2;
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  if (v14)
  {
    modeCopy = 1;
  }

  else
  {
    modeCopy = mode;
  }

  if (modeCopy == 1 && v13)
  {
    return 0;
  }

  else
  {
    return modeCopy;
  }
}

+ (unint64_t)validatedNightModeConflicts:(unint64_t)conflicts forMode:(int64_t)mode device:(int64_t)device photoFormat:(id)format
{
  var1 = format.var1;
  var0 = format.var0;
  v12 = +[CAMCaptureCapabilities capabilities];
  if ((device - 1) > 0xA)
  {
    v13 = 0;
    if ((conflicts & 8) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v13 = qword_1A3A687D8[device - 1];
    if ((conflicts & 8) == 0)
    {
      goto LABEL_7;
    }
  }

  if (([self isNightModePhotoModeDepthConflictRelevantForMode:mode device:device photoFormat:var0, var1] & 1) == 0)
  {
    conflicts = (conflicts & 0xFFFFFFFFFFFFFFF7) != 0;
  }

LABEL_7:
  if ((conflicts & 4) == 0)
  {
    if ((conflicts & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  if (([v12 isLivePhotoSupportedForMode:mode devicePosition:v13] & 1) == 0)
  {
    conflicts = (conflicts & 0xFFFFFFFFFFFFFFFBLL) != 0;
  }

  if (conflicts)
  {
LABEL_9:
    if (([v12 isFlashSupportedForMode:mode devicePosition:v13] & 1) == 0)
    {
      conflicts = conflicts > 1;
    }
  }

LABEL_11:

  return conflicts;
}

+ (BOOL)isNightModePhotoModeDepthConflictRelevantForMode:(int64_t)mode device:(int64_t)device photoFormat:(id)format
{
  var1 = format.var1;
  var0 = format.var0;
  v9 = +[CAMCaptureCapabilities capabilities];
  v10 = v9;
  if ((device - 1) > 0xA)
  {
    v11 = 0;
  }

  else
  {
    v11 = qword_1A3A687D8[device - 1];
  }

  var1 = [v9 isDepthSuggestionSupportedForMode:mode devicePosition:v11 photoFormat:var0, var1];
  v13 = [v10 isNightModeSupportedForMode:mode device:device];
  v14 = v13 & ([v10 isNightModeWithDepthSupportedForMode:mode device:device] ^ 1);
  if (var1)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (int64_t)resolveDesiredMacroMode:(int64_t)mode forMode:(int64_t)forMode device:(int64_t)device videoConfiguration:(int64_t)configuration videoStabilizationStrength:(int64_t)strength photoFormat:(id)format optionalDepthEffectEnabled:(BOOL)enabled frontRearSimultaneousVideoEnabled:(BOOL)self0
{
  v16 = +[CAMCaptureCapabilities capabilities];
  if ([v16 isSuperWideAutoMacroSupportedForMode:forMode device:device videoConfiguration:configuration videoStabilizationStrength:strength frontRearSimultaneousVideoEnabled:videoEnabled])
  {
    if ((device - 1) > 0xA)
    {
      v17 = 0;
    }

    else
    {
      v17 = qword_1A3A687D8[device - 1];
    }

    if ([self shouldDisableMacroForLockedPortraitForMode:forMode devicePosition:v17 photoFormat:format.var0 optionalDepthEffectEnabled:format.var1, enabled])
    {
      mode = 0;
    }
  }

  else
  {
    mode = 0;
  }

  return mode;
}

+ (BOOL)shouldDisableMacroForLockedPortraitForMode:(int64_t)mode devicePosition:(int64_t)position photoFormat:(id)format optionalDepthEffectEnabled:(BOOL)enabled
{
  var1 = format.var1;
  var0 = format.var0;
  v11 = +[CAMCaptureCapabilities capabilities];
  LOBYTE(var1) = [v11 isDepthSuggestionSupportedForMode:mode devicePosition:position photoFormat:var0, var1];
  LOBYTE(var0) = (~[v11 portraitInPhotoModeBehavior] & 0x11) == 0;

  return var1 & enabled & var0;
}

@end