@interface CAMPortraitModeInstructionLabel
+ (BOOL)shouldDisplayInstructionForShallowDepthOfFieldStatus:(int64_t)a3;
+ (id)_textForShallowDepthOfFieldStatus:(int64_t)a3 numberOfPeopleFound:(unint64_t)a4 flashSupported:(BOOL)a5 flashMode:(int64_t)a6 devicePosition:(int64_t)a7 lightingType:(int64_t)a8 nightMode:(int64_t)a9 nightModeStatus:(int64_t)a10 nightModePortraitSupported:(BOOL)a11;
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)_updateTextWithPriorStatus:(int64_t)a3;
- (void)setDevicePosition:(int64_t)a3;
- (void)setFlashMode:(int64_t)a3;
- (void)setFlashSupported:(BOOL)a3;
- (void)setLightingType:(int64_t)a3;
- (void)setNightMode:(int64_t)a3;
- (void)setNightModePortraitSupported:(BOOL)a3;
- (void)setNightModeStatus:(int64_t)a3;
- (void)setNumberOfPeopleFound:(unint64_t)a3;
- (void)setShallowDepthOfFieldStatus:(int64_t)a3;
@end

@implementation CAMPortraitModeInstructionLabel

- (void)setShallowDepthOfFieldStatus:(int64_t)a3
{
  shallowDepthOfFieldStatus = self->_shallowDepthOfFieldStatus;
  if (shallowDepthOfFieldStatus != a3)
  {
    self->_shallowDepthOfFieldStatus = a3;
    [(CAMPortraitModeInstructionLabel *)self _updateTextWithPriorStatus:shallowDepthOfFieldStatus];
    v6 = [(CAMInstructionLabel *)self delegate];
    [v6 instructionLabelDidChangeIntrinsicContentSize:self];
  }
}

- (void)setNumberOfPeopleFound:(unint64_t)a3
{
  if (self->_numberOfPeopleFound != a3)
  {
    self->_numberOfPeopleFound = a3;
    v5 = [(CAMPortraitModeInstructionLabel *)self shallowDepthOfFieldStatus];

    [(CAMPortraitModeInstructionLabel *)self _updateTextWithPriorStatus:v5];
  }
}

- (void)setFlashSupported:(BOOL)a3
{
  if (self->_flashSupported != a3)
  {
    self->_flashSupported = a3;
    v5 = [(CAMPortraitModeInstructionLabel *)self shallowDepthOfFieldStatus];

    [(CAMPortraitModeInstructionLabel *)self _updateTextWithPriorStatus:v5];
  }
}

- (void)setFlashMode:(int64_t)a3
{
  if (self->_flashMode != a3)
  {
    self->_flashMode = a3;
    v5 = [(CAMPortraitModeInstructionLabel *)self shallowDepthOfFieldStatus];

    [(CAMPortraitModeInstructionLabel *)self _updateTextWithPriorStatus:v5];
  }
}

- (void)setDevicePosition:(int64_t)a3
{
  if (self->_devicePosition != a3)
  {
    self->_devicePosition = a3;
    v5 = [(CAMPortraitModeInstructionLabel *)self shallowDepthOfFieldStatus];

    [(CAMPortraitModeInstructionLabel *)self _updateTextWithPriorStatus:v5];
  }
}

- (void)setLightingType:(int64_t)a3
{
  if (self->_lightingType != a3)
  {
    self->_lightingType = a3;
    v5 = [(CAMPortraitModeInstructionLabel *)self shallowDepthOfFieldStatus];

    [(CAMPortraitModeInstructionLabel *)self _updateTextWithPriorStatus:v5];
  }
}

- (void)setNightMode:(int64_t)a3
{
  if (self->_nightMode != a3)
  {
    self->_nightMode = a3;
    v5 = [(CAMPortraitModeInstructionLabel *)self shallowDepthOfFieldStatus];

    [(CAMPortraitModeInstructionLabel *)self _updateTextWithPriorStatus:v5];
  }
}

- (void)setNightModeStatus:(int64_t)a3
{
  if (self->_nightModeStatus != a3)
  {
    self->_nightModeStatus = a3;
    v5 = [(CAMPortraitModeInstructionLabel *)self shallowDepthOfFieldStatus];

    [(CAMPortraitModeInstructionLabel *)self _updateTextWithPriorStatus:v5];
  }
}

- (void)setNightModePortraitSupported:(BOOL)a3
{
  if (self->_nightModePortraitSupported != a3)
  {
    self->_nightModePortraitSupported = a3;
    v5 = [(CAMPortraitModeInstructionLabel *)self shallowDepthOfFieldStatus];

    [(CAMPortraitModeInstructionLabel *)self _updateTextWithPriorStatus:v5];
  }
}

- (void)_updateTextWithPriorStatus:(int64_t)a3
{
  v4 = [(CAMPortraitModeInstructionLabel *)self shallowDepthOfFieldStatus];
  v5 = [(CAMPortraitModeInstructionLabel *)self numberOfPeopleFound];
  v6 = [(CAMPortraitModeInstructionLabel *)self isFlashSupported];
  v7 = [(CAMPortraitModeInstructionLabel *)self flashMode];
  v8 = objc_opt_class();
  v9 = [(CAMPortraitModeInstructionLabel *)self devicePosition];
  v10 = [(CAMPortraitModeInstructionLabel *)self lightingType];
  v11 = [(CAMPortraitModeInstructionLabel *)self nightMode];
  v12 = [(CAMPortraitModeInstructionLabel *)self nightModeStatus];
  LOBYTE(v21) = [(CAMPortraitModeInstructionLabel *)self nightModePortraitSupported];
  v24 = [v8 _textForShallowDepthOfFieldStatus:v4 numberOfPeopleFound:v5 flashSupported:v6 flashMode:v7 devicePosition:v9 lightingType:v10 nightMode:v11 nightModeStatus:v12 nightModePortraitSupported:v21];
  v13 = objc_opt_class();
  v14 = [(CAMPortraitModeInstructionLabel *)self devicePosition];
  v15 = [(CAMPortraitModeInstructionLabel *)self lightingType];
  v16 = [(CAMPortraitModeInstructionLabel *)self nightMode];
  v17 = [(CAMPortraitModeInstructionLabel *)self nightModeStatus];
  LOBYTE(v22) = [(CAMPortraitModeInstructionLabel *)self nightModePortraitSupported];
  v18 = [v13 _textForShallowDepthOfFieldStatus:a3 numberOfPeopleFound:v5 flashSupported:v6 flashMode:v7 devicePosition:v14 lightingType:v15 nightMode:v16 nightModeStatus:v17 nightModePortraitSupported:v22];
  v19 = v18;
  if (v24)
  {
    [(CAMInstructionLabel *)self setText:?];
    if (v19)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (v18)
  {
LABEL_3:
    v20 = [(CAMInstructionLabel *)self delegate];
    [v20 instructionLabelDidChangeIntrinsicContentSize:self];
  }

LABEL_4:
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = CAMPortraitModeInstructionLabel;
  [(CAMInstructionLabel *)&v9 sizeThatFits:?];
  if (v5 < 108.0 && height == 0.0 && width == 0.0)
  {
    v5 = 108.0;
  }

  result.height = v6;
  result.width = v5;
  return result;
}

+ (BOOL)shouldDisplayInstructionForShallowDepthOfFieldStatus:(int64_t)a3
{
  LOBYTE(v6) = 0;
  v3 = [a1 _textForShallowDepthOfFieldStatus:a3 numberOfPeopleFound:0 flashSupported:1 flashMode:2 devicePosition:0 lightingType:0 nightMode:0 nightModeStatus:0 nightModePortraitSupported:v6];
  v4 = [v3 length] != 0;

  return v4;
}

+ (id)_textForShallowDepthOfFieldStatus:(int64_t)a3 numberOfPeopleFound:(unint64_t)a4 flashSupported:(BOOL)a5 flashMode:(int64_t)a6 devicePosition:(int64_t)a7 lightingType:(int64_t)a8 nightMode:(int64_t)a9 nightModeStatus:(int64_t)a10 nightModePortraitSupported:(BOOL)a11
{
  v11 = 0;
  if (a6)
  {
    v12 = 0;
  }

  else
  {
    v12 = a5;
  }

  if (a3 > 6)
  {
    switch(a3)
    {
      case 7:
        v15 = @"PORTRAIT_MODE_TOO_MUCH_LIGHT";
        break;
      case 8:
        v15 = @"PORTRAIT_MODE_BACKGROUND_TOO_FAR";
        break;
      case 10:
        v15 = @"PORTRAIT_MODE_LOW_LIGHT_NIGHT_MODE_AVAILABLE";
        goto LABEL_19;
      default:
        goto LABEL_30;
    }

LABEL_28:
    v16 = &stru_1F1660A30;
    goto LABEL_29;
  }

  if (a3 != 3)
  {
    if (a3 == 4)
    {
      v15 = @"PORTRAIT_MODE_SUBJECT_TOO_CLOSE";
    }

    else
    {
      if (a3 != 5)
      {
        goto LABEL_30;
      }

      v13 = a11;
      if (a9)
      {
        v14 = 1;
      }

      else
      {
        v14 = (a10 - 1) >= 2;
      }

      if (v14)
      {
        v13 = 0;
      }

      if (v13 && v12)
      {
        v15 = @"PORTRAIT_MODE_LOW_LIGHT_NIGHT_MODE_DISABLED_FLASH_DISABLED";
LABEL_19:
        v16 = 0;
LABEL_29:
        v11 = CAMLocalizedFrameworkString(v15, v16);
        goto LABEL_30;
      }

      if (v12)
      {
        v15 = @"PORTRAIT_MODE_LOW_LIGHT_FLASH_DISABLED";
      }

      else
      {
        v15 = @"PORTRAIT_MODE_LOW_LIGHT";
      }
    }

    goto LABEL_28;
  }

  v20 = a8 - 4;
  v21 = CAMPortraitModeInstructionLabelMeasurementFormatter();
  v22 = [v21 locale];
  v23 = [v22 objectForKey:*MEMORY[0x1E695D9B8]];
  v24 = +[CAMCaptureCapabilities capabilities];
  v25 = [v24 isSingleCameraPortraitModeSupportedForDevicePosition:a7];

  if ([v23 isEqualToString:*MEMORY[0x1E695D9D0]] & 1) != 0 || (objc_msgSend(v23, "isEqualToString:", *MEMORY[0x1E695D9C8]))
  {
    v26 = [MEMORY[0x1E696B058] feet];
    v27 = 3.0;
    v28 = a7 == 1;
    v29 = 8.0;
    if (a7 == 1)
    {
      v29 = 3.0;
    }

    v30 = 6.0;
    v31 = 1.5;
  }

  else
  {
    v26 = [MEMORY[0x1E696B058] meters];
    v27 = 1.0;
    v28 = a7 == 1;
    v29 = 2.5;
    if (a7 == 1)
    {
      v29 = 1.0;
    }

    v30 = 2.0;
    v31 = 0.5;
  }

  if (v28)
  {
    v30 = v31;
  }

  if (v20 <= 2)
  {
    v29 = v30;
  }

  if (v25)
  {
    v33 = v27;
  }

  else
  {
    v33 = v29;
  }

  v34 = [objc_alloc(MEMORY[0x1E696AD28]) initWithDoubleValue:v26 unit:v33];
  v35 = [v21 stringFromMeasurement:v34];
  v36 = @"PORTRAIT_MODE_SUBJECT_TOO_FAR";
  if (v20 < 3)
  {
    v36 = @"PORTRAIT_MODE_SUBJECT_TOO_FAR_STAGE";
  }

  if (a8 == 6)
  {
    v36 = @"PORTRAIT_MODE_SUBJECT_TOO_FAR_HIGH_KEY";
  }

  if (v25)
  {
    v37 = @"PORTRAIT_MODE_SUBJECT_TOO_FAR_SINGLE_CAMERA";
  }

  else
  {
    v37 = v36;
  }

  v38 = CAMLocalizedFrameworkString(v37, &stru_1F1660A30);
  v11 = [MEMORY[0x1E696AEC0] localizedStringWithValidatedFormat:v38 validFormatSpecifiers:@"%lu%@" error:0, a4, v35];

LABEL_30:

  return v11;
}

@end