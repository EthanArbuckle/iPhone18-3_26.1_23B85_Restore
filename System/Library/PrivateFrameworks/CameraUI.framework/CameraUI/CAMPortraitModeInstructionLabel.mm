@interface CAMPortraitModeInstructionLabel
+ (BOOL)shouldDisplayInstructionForShallowDepthOfFieldStatus:(int64_t)status;
+ (id)_textForShallowDepthOfFieldStatus:(int64_t)status numberOfPeopleFound:(unint64_t)found flashSupported:(BOOL)supported flashMode:(int64_t)mode devicePosition:(int64_t)position lightingType:(int64_t)type nightMode:(int64_t)nightMode nightModeStatus:(int64_t)self0 nightModePortraitSupported:(BOOL)self1;
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)_updateTextWithPriorStatus:(int64_t)status;
- (void)setDevicePosition:(int64_t)position;
- (void)setFlashMode:(int64_t)mode;
- (void)setFlashSupported:(BOOL)supported;
- (void)setLightingType:(int64_t)type;
- (void)setNightMode:(int64_t)mode;
- (void)setNightModePortraitSupported:(BOOL)supported;
- (void)setNightModeStatus:(int64_t)status;
- (void)setNumberOfPeopleFound:(unint64_t)found;
- (void)setShallowDepthOfFieldStatus:(int64_t)status;
@end

@implementation CAMPortraitModeInstructionLabel

- (void)setShallowDepthOfFieldStatus:(int64_t)status
{
  shallowDepthOfFieldStatus = self->_shallowDepthOfFieldStatus;
  if (shallowDepthOfFieldStatus != status)
  {
    self->_shallowDepthOfFieldStatus = status;
    [(CAMPortraitModeInstructionLabel *)self _updateTextWithPriorStatus:shallowDepthOfFieldStatus];
    delegate = [(CAMInstructionLabel *)self delegate];
    [delegate instructionLabelDidChangeIntrinsicContentSize:self];
  }
}

- (void)setNumberOfPeopleFound:(unint64_t)found
{
  if (self->_numberOfPeopleFound != found)
  {
    self->_numberOfPeopleFound = found;
    shallowDepthOfFieldStatus = [(CAMPortraitModeInstructionLabel *)self shallowDepthOfFieldStatus];

    [(CAMPortraitModeInstructionLabel *)self _updateTextWithPriorStatus:shallowDepthOfFieldStatus];
  }
}

- (void)setFlashSupported:(BOOL)supported
{
  if (self->_flashSupported != supported)
  {
    self->_flashSupported = supported;
    shallowDepthOfFieldStatus = [(CAMPortraitModeInstructionLabel *)self shallowDepthOfFieldStatus];

    [(CAMPortraitModeInstructionLabel *)self _updateTextWithPriorStatus:shallowDepthOfFieldStatus];
  }
}

- (void)setFlashMode:(int64_t)mode
{
  if (self->_flashMode != mode)
  {
    self->_flashMode = mode;
    shallowDepthOfFieldStatus = [(CAMPortraitModeInstructionLabel *)self shallowDepthOfFieldStatus];

    [(CAMPortraitModeInstructionLabel *)self _updateTextWithPriorStatus:shallowDepthOfFieldStatus];
  }
}

- (void)setDevicePosition:(int64_t)position
{
  if (self->_devicePosition != position)
  {
    self->_devicePosition = position;
    shallowDepthOfFieldStatus = [(CAMPortraitModeInstructionLabel *)self shallowDepthOfFieldStatus];

    [(CAMPortraitModeInstructionLabel *)self _updateTextWithPriorStatus:shallowDepthOfFieldStatus];
  }
}

- (void)setLightingType:(int64_t)type
{
  if (self->_lightingType != type)
  {
    self->_lightingType = type;
    shallowDepthOfFieldStatus = [(CAMPortraitModeInstructionLabel *)self shallowDepthOfFieldStatus];

    [(CAMPortraitModeInstructionLabel *)self _updateTextWithPriorStatus:shallowDepthOfFieldStatus];
  }
}

- (void)setNightMode:(int64_t)mode
{
  if (self->_nightMode != mode)
  {
    self->_nightMode = mode;
    shallowDepthOfFieldStatus = [(CAMPortraitModeInstructionLabel *)self shallowDepthOfFieldStatus];

    [(CAMPortraitModeInstructionLabel *)self _updateTextWithPriorStatus:shallowDepthOfFieldStatus];
  }
}

- (void)setNightModeStatus:(int64_t)status
{
  if (self->_nightModeStatus != status)
  {
    self->_nightModeStatus = status;
    shallowDepthOfFieldStatus = [(CAMPortraitModeInstructionLabel *)self shallowDepthOfFieldStatus];

    [(CAMPortraitModeInstructionLabel *)self _updateTextWithPriorStatus:shallowDepthOfFieldStatus];
  }
}

- (void)setNightModePortraitSupported:(BOOL)supported
{
  if (self->_nightModePortraitSupported != supported)
  {
    self->_nightModePortraitSupported = supported;
    shallowDepthOfFieldStatus = [(CAMPortraitModeInstructionLabel *)self shallowDepthOfFieldStatus];

    [(CAMPortraitModeInstructionLabel *)self _updateTextWithPriorStatus:shallowDepthOfFieldStatus];
  }
}

- (void)_updateTextWithPriorStatus:(int64_t)status
{
  shallowDepthOfFieldStatus = [(CAMPortraitModeInstructionLabel *)self shallowDepthOfFieldStatus];
  numberOfPeopleFound = [(CAMPortraitModeInstructionLabel *)self numberOfPeopleFound];
  isFlashSupported = [(CAMPortraitModeInstructionLabel *)self isFlashSupported];
  flashMode = [(CAMPortraitModeInstructionLabel *)self flashMode];
  v8 = objc_opt_class();
  devicePosition = [(CAMPortraitModeInstructionLabel *)self devicePosition];
  lightingType = [(CAMPortraitModeInstructionLabel *)self lightingType];
  nightMode = [(CAMPortraitModeInstructionLabel *)self nightMode];
  nightModeStatus = [(CAMPortraitModeInstructionLabel *)self nightModeStatus];
  LOBYTE(v21) = [(CAMPortraitModeInstructionLabel *)self nightModePortraitSupported];
  v24 = [v8 _textForShallowDepthOfFieldStatus:shallowDepthOfFieldStatus numberOfPeopleFound:numberOfPeopleFound flashSupported:isFlashSupported flashMode:flashMode devicePosition:devicePosition lightingType:lightingType nightMode:nightMode nightModeStatus:nightModeStatus nightModePortraitSupported:v21];
  v13 = objc_opt_class();
  devicePosition2 = [(CAMPortraitModeInstructionLabel *)self devicePosition];
  lightingType2 = [(CAMPortraitModeInstructionLabel *)self lightingType];
  nightMode2 = [(CAMPortraitModeInstructionLabel *)self nightMode];
  nightModeStatus2 = [(CAMPortraitModeInstructionLabel *)self nightModeStatus];
  LOBYTE(v22) = [(CAMPortraitModeInstructionLabel *)self nightModePortraitSupported];
  v18 = [v13 _textForShallowDepthOfFieldStatus:status numberOfPeopleFound:numberOfPeopleFound flashSupported:isFlashSupported flashMode:flashMode devicePosition:devicePosition2 lightingType:lightingType2 nightMode:nightMode2 nightModeStatus:nightModeStatus2 nightModePortraitSupported:v22];
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
    delegate = [(CAMInstructionLabel *)self delegate];
    [delegate instructionLabelDidChangeIntrinsicContentSize:self];
  }

LABEL_4:
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
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

+ (BOOL)shouldDisplayInstructionForShallowDepthOfFieldStatus:(int64_t)status
{
  LOBYTE(v6) = 0;
  v3 = [self _textForShallowDepthOfFieldStatus:status numberOfPeopleFound:0 flashSupported:1 flashMode:2 devicePosition:0 lightingType:0 nightMode:0 nightModeStatus:0 nightModePortraitSupported:v6];
  v4 = [v3 length] != 0;

  return v4;
}

+ (id)_textForShallowDepthOfFieldStatus:(int64_t)status numberOfPeopleFound:(unint64_t)found flashSupported:(BOOL)supported flashMode:(int64_t)mode devicePosition:(int64_t)position lightingType:(int64_t)type nightMode:(int64_t)nightMode nightModeStatus:(int64_t)self0 nightModePortraitSupported:(BOOL)self1
{
  v11 = 0;
  if (mode)
  {
    supportedCopy = 0;
  }

  else
  {
    supportedCopy = supported;
  }

  if (status > 6)
  {
    switch(status)
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

  if (status != 3)
  {
    if (status == 4)
    {
      v15 = @"PORTRAIT_MODE_SUBJECT_TOO_CLOSE";
    }

    else
    {
      if (status != 5)
      {
        goto LABEL_30;
      }

      portraitSupportedCopy = portraitSupported;
      if (nightMode)
      {
        v14 = 1;
      }

      else
      {
        v14 = (modeStatus - 1) >= 2;
      }

      if (v14)
      {
        portraitSupportedCopy = 0;
      }

      if (portraitSupportedCopy && supportedCopy)
      {
        v15 = @"PORTRAIT_MODE_LOW_LIGHT_NIGHT_MODE_DISABLED_FLASH_DISABLED";
LABEL_19:
        v16 = 0;
LABEL_29:
        v11 = CAMLocalizedFrameworkString(v15, v16);
        goto LABEL_30;
      }

      if (supportedCopy)
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

  v20 = type - 4;
  v21 = CAMPortraitModeInstructionLabelMeasurementFormatter();
  locale = [v21 locale];
  v23 = [locale objectForKey:*MEMORY[0x1E695D9B8]];
  v24 = +[CAMCaptureCapabilities capabilities];
  v25 = [v24 isSingleCameraPortraitModeSupportedForDevicePosition:position];

  if ([v23 isEqualToString:*MEMORY[0x1E695D9D0]] & 1) != 0 || (objc_msgSend(v23, "isEqualToString:", *MEMORY[0x1E695D9C8]))
  {
    feet = [MEMORY[0x1E696B058] feet];
    v27 = 3.0;
    v28 = position == 1;
    v29 = 8.0;
    if (position == 1)
    {
      v29 = 3.0;
    }

    v30 = 6.0;
    v31 = 1.5;
  }

  else
  {
    feet = [MEMORY[0x1E696B058] meters];
    v27 = 1.0;
    v28 = position == 1;
    v29 = 2.5;
    if (position == 1)
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

  v34 = [objc_alloc(MEMORY[0x1E696AD28]) initWithDoubleValue:feet unit:v33];
  v35 = [v21 stringFromMeasurement:v34];
  v36 = @"PORTRAIT_MODE_SUBJECT_TOO_FAR";
  if (v20 < 3)
  {
    v36 = @"PORTRAIT_MODE_SUBJECT_TOO_FAR_STAGE";
  }

  if (type == 6)
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
  v11 = [MEMORY[0x1E696AEC0] localizedStringWithValidatedFormat:v38 validFormatSpecifiers:@"%lu%@" error:0, found, v35];

LABEL_30:

  return v11;
}

@end