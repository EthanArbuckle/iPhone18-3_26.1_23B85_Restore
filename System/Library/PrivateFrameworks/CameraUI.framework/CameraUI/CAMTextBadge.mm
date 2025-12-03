@interface CAMTextBadge
- (void)_updateBadgeWithText:(id)text symbol:(id)symbol fillColor:(id)color;
- (void)updateForFlashMode:(int64_t)mode;
- (void)updateForLivePhotoMode:(int64_t)mode;
- (void)updateForNightModeControlMode:(unint64_t)mode;
- (void)updateForSharedLibraryMode:(int64_t)mode;
- (void)updateForSmartFramingAutoFramingDidZoom:(BOOL)zoom didRotate:(BOOL)rotate;
- (void)updateForSmartFramingAutoRotation:(BOOL)rotation;
- (void)updateForSmartFramingAutoZoom:(BOOL)zoom;
- (void)updateForSmartFramingDisabled;
- (void)updateForTorchMode:(int64_t)mode;
@end

@implementation CAMTextBadge

- (void)_updateBadgeWithText:(id)text symbol:(id)symbol fillColor:(id)color
{
  colorCopy = color;
  symbolCopy = symbol;
  [(CEKBadgeTextView *)self _setText:text];
  [(CEKBadgeTextView *)self _setSymbol:symbolCopy];

  [(CEKBadgeView *)self _setFillColor:colorCopy];
}

- (void)updateForFlashMode:(int64_t)mode
{
  switch(mode)
  {
    case 2:
      v5 = @"FLASH_AUTO_TEXT";
      goto LABEL_7;
    case 1:
      v5 = @"FLASH_ON_TEXT";
LABEL_7:
      v7 = CAMLocalizedFrameworkString(v5, 0);
      systemYellowColor = [MEMORY[0x1E69DC888] systemYellowColor];
      goto LABEL_8;
    case 0:
      v7 = CAMLocalizedFrameworkString(@"FLASH_OFF_TEXT", 0);
      systemYellowColor = [MEMORY[0x1E69DC888] whiteColor];
LABEL_8:
      v6 = systemYellowColor;
      goto LABEL_10;
  }

  v7 = 0;
  v6 = 0;
LABEL_10:
  [(CAMTextBadge *)self _updateBadgeWithText:v7 symbol:0 fillColor:v6];
}

- (void)updateForTorchMode:(int64_t)mode
{
  switch(mode)
  {
    case 2:
      v5 = @"FLASH_AUTO_TEXT";
      goto LABEL_7;
    case 1:
      v5 = @"FLASH_ON_TEXT";
LABEL_7:
      v7 = CAMLocalizedFrameworkString(v5, 0);
      systemYellowColor = [MEMORY[0x1E69DC888] systemYellowColor];
      goto LABEL_8;
    case 0:
      v7 = CAMLocalizedFrameworkString(@"FLASH_OFF_TEXT", 0);
      systemYellowColor = [MEMORY[0x1E69DC888] whiteColor];
LABEL_8:
      v6 = systemYellowColor;
      goto LABEL_10;
  }

  v7 = 0;
  v6 = 0;
LABEL_10:
  [(CAMTextBadge *)self _updateBadgeWithText:v7 symbol:0 fillColor:v6];
}

- (void)updateForNightModeControlMode:(unint64_t)mode
{
  switch(mode)
  {
    case 2uLL:
      v5 = @"NIGHT_MODE_MAX";
      goto LABEL_7;
    case 1uLL:
      v5 = @"NIGHT_MODE_AUTO";
LABEL_7:
      v7 = CAMLocalizedFrameworkString(v5, 0);
      systemYellowColor = [MEMORY[0x1E69DC888] systemYellowColor];
      goto LABEL_8;
    case 0uLL:
      v7 = CAMLocalizedFrameworkString(@"NIGHT_MODE_OFF", 0);
      systemYellowColor = [MEMORY[0x1E69DC888] whiteColor];
LABEL_8:
      v6 = systemYellowColor;
      goto LABEL_10;
  }

  v7 = 0;
  v6 = 0;
LABEL_10:
  [(CAMTextBadge *)self _updateBadgeWithText:v7 symbol:0 fillColor:v6];
}

- (void)updateForLivePhotoMode:(int64_t)mode
{
  if ((mode - 1) < 2)
  {
    v6 = CAMLocalizedFrameworkString(@"LIVE", @"Text shown to the user when a Live Photo is being captured or has been enabled");
    systemYellowColor = [MEMORY[0x1E69DC888] systemYellowColor];
LABEL_5:
    v5 = systemYellowColor;
    goto LABEL_7;
  }

  if (!mode)
  {
    v6 = CAMLocalizedFrameworkString(@"LIVE_OFF", @"Text shown to the user when Live Photo recording has been disabled");
    systemYellowColor = [MEMORY[0x1E69DC888] whiteColor];
    goto LABEL_5;
  }

  v6 = 0;
  v5 = 0;
LABEL_7:
  [(CAMTextBadge *)self _updateBadgeWithText:v6 symbol:0 fillColor:v5];
}

- (void)updateForSharedLibraryMode:(int64_t)mode
{
  if (CAMSharedLibraryModeIsOn(mode))
  {
    v5 = @"SHARED_LIBRARY_CAPS";
  }

  else
  {
    v5 = @"PERSONAL_LIBRARY_CAPS";
  }

  v7 = CAMLocalizedFrameworkString(v5, 0);
  if (CAMSharedLibraryModeIsOn(mode))
  {
    [MEMORY[0x1E69DC888] systemYellowColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] whiteColor];
  }
  v6 = ;
  [(CAMTextBadge *)self _updateBadgeWithText:v7 symbol:0 fillColor:v6];
}

- (void)updateForSmartFramingAutoZoom:(BOOL)zoom
{
  if (zoom)
  {
    v5 = CAMLocalizedFrameworkString(@"CAMERA_SMART_FRAMING_AUTO_ZOOM_ON", 0);
    [MEMORY[0x1E69DC888] systemYellowColor];
  }

  else
  {
    v5 = CAMLocalizedFrameworkString(@"CAMERA_SMART_FRAMING_AUTO_ZOOM_OFF", 0);
    [MEMORY[0x1E69DC888] whiteColor];
  }
  v4 = ;
  [(CAMTextBadge *)self _updateBadgeWithText:v5 symbol:@"person.fill.viewfinder" fillColor:v4];
}

- (void)updateForSmartFramingAutoRotation:(BOOL)rotation
{
  if (rotation)
  {
    v5 = CAMLocalizedFrameworkString(@"CAMERA_SMART_FRAMING_AUTO_ROTATION_ON", 0);
    [MEMORY[0x1E69DC888] systemYellowColor];
  }

  else
  {
    v5 = CAMLocalizedFrameworkString(@"CAMERA_SMART_FRAMING_AUTO_ROTATION_OFF", 0);
    [MEMORY[0x1E69DC888] whiteColor];
  }
  v4 = ;
  [(CAMTextBadge *)self _updateBadgeWithText:v5 symbol:@"person.fill.viewfinder" fillColor:v4];
}

- (void)updateForSmartFramingDisabled
{
  v4 = CAMLocalizedFrameworkString(@"CAMERA_SMART_FRAMING_CENTER_STAGE_OFF", 0);
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  [(CAMTextBadge *)self _updateBadgeWithText:v4 symbol:@"person.fill.viewfinder" fillColor:whiteColor];
}

- (void)updateForSmartFramingAutoFramingDidZoom:(BOOL)zoom didRotate:(BOOL)rotate
{
  if (zoom || rotate)
  {
    v5 = @"CAMERA_SMART_FRAMING_ZOOM";
    if (zoom && rotate)
    {
      v5 = @"CAMERA_SMART_FRAMING_ZOOM_AND_ROTATE";
    }

    if (zoom)
    {
      v6 = v5;
    }

    else
    {
      v6 = @"CAMERA_SMART_FRAMING_ROTATE";
    }

    v8 = CAMLocalizedFrameworkString(v6, 0);
    systemYellowColor = [MEMORY[0x1E69DC888] systemYellowColor];
    [(CAMTextBadge *)self _updateBadgeWithText:v8 symbol:@"person.fill.viewfinder" fillColor:systemYellowColor];
  }
}

@end