@interface CAMCinematicFocusCommand
- (CAMCinematicFocusCommand)initWithMetadataObjectID:(int64_t)d atPointOfInterest:(CGPoint)interest useFixedOpticalFocus:(BOOL)focus useHardFocus:(BOOL)hardFocus;
- (CGPoint)_pointOfInterest;
- (id)copyWithZone:(_NSZone *)zone;
- (void)executeWithContext:(id)context;
@end

@implementation CAMCinematicFocusCommand

- (CAMCinematicFocusCommand)initWithMetadataObjectID:(int64_t)d atPointOfInterest:(CGPoint)interest useFixedOpticalFocus:(BOOL)focus useHardFocus:(BOOL)hardFocus
{
  y = interest.y;
  x = interest.x;
  v15.receiver = self;
  v15.super_class = CAMCinematicFocusCommand;
  v11 = [(CAMCaptureCommand *)&v15 initWithSubcommands:0];
  v12 = v11;
  if (v11)
  {
    v11->__metadataObjectID = d;
    v11->__pointOfInterest.x = x;
    v11->__pointOfInterest.y = y;
    v11->__useFixedOpticalFocus = focus;
    v11->__useHardFocus = hardFocus;
    v13 = v11;
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = CAMCinematicFocusCommand;
  v4 = [(CAMCaptureCommand *)&v8 copyWithZone:zone];
  v4[4] = [(CAMCinematicFocusCommand *)self _metadataObjectID];
  [(CAMCinematicFocusCommand *)self _pointOfInterest];
  v4[5] = v5;
  v4[6] = v6;
  *(v4 + 24) = [(CAMCinematicFocusCommand *)self _useFixedOpticalFocus];
  *(v4 + 25) = [(CAMCinematicFocusCommand *)self _useHardFocus];
  return v4;
}

- (void)executeWithContext:(id)context
{
  v24 = *MEMORY[0x1E69E9840];
  currentVideoDevice = [context currentVideoDevice];
  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    isCinematicVideoFocusAtPointSupported = [currentVideoDevice isCinematicVideoFocusAtPointSupported];
    v6 = os_log_create("com.apple.camera", "Camera");
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (isCinematicVideoFocusAtPointSupported)
    {
      if (v7)
      {
        [(CAMCinematicFocusCommand *)self _pointOfInterest];
        v8 = NSStringFromCGPoint(v25);
        _metadataObjectID = [(CAMCinematicFocusCommand *)self _metadataObjectID];
        if ([(CAMCinematicFocusCommand *)self _useHardFocus])
        {
          v10 = @"YES";
        }

        else
        {
          v10 = @"NO";
        }

        v11 = v10;
        if ([(CAMCinematicFocusCommand *)self _useFixedOpticalFocus])
        {
          v12 = @"YES";
        }

        else
        {
          v12 = @"NO";
        }

        v13 = v12;
        v16 = 138544130;
        v17 = v8;
        v18 = 2048;
        v19 = _metadataObjectID;
        v20 = 2114;
        v21 = v11;
        v22 = 2114;
        v23 = v13;
        _os_log_impl(&dword_1A3640000, v6, OS_LOG_TYPE_DEFAULT, "Requested to set CinematicVideoFocus at point:%{public}@ objectID:%ld isHardFocus:%{public}@ isFixedPlaneFocus:%{public}@", &v16, 0x2Au);
      }

      [(CAMCinematicFocusCommand *)self _pointOfInterest];
      [currentVideoDevice setCinematicVideoFocusAtPoint:-[CAMCinematicFocusCommand _metadataObjectID](self objectID:"_metadataObjectID") isHardFocus:-[CAMCinematicFocusCommand _useHardFocus](self isFixedPlaneFocus:{"_useHardFocus"), -[CAMCinematicFocusCommand _useFixedOpticalFocus](self, "_useFixedOpticalFocus"), v14, v15}];
    }

    else
    {
      if (v7)
      {
        LOWORD(v16) = 0;
        _os_log_impl(&dword_1A3640000, v6, OS_LOG_TYPE_DEFAULT, "Attempting to set cinematic focus on a video device that does not support it", &v16, 2u);
      }
    }
  }
}

- (CGPoint)_pointOfInterest
{
  x = self->__pointOfInterest.x;
  y = self->__pointOfInterest.y;
  result.y = y;
  result.x = x;
  return result;
}

@end