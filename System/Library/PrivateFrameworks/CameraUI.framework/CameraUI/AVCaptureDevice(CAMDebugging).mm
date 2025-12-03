@interface AVCaptureDevice(CAMDebugging)
- (uint64_t)cam_debugFocusAndExposureState;
- (void)cam_debugExposureState;
- (void)cam_debugFocusState;
@end

@implementation AVCaptureDevice(CAMDebugging)

- (void)cam_debugFocusState
{
  if ([self isFocusPointOfInterestSupported])
  {
    [self focusPointOfInterest];
    v3 = v2;
    v5 = v4;
    focusMode = [self focusMode];
    if (focusMode > 2)
    {
      v7 = @"Unknown focus mode";
    }

    else
    {
      v7 = off_1E76F9570[focusMode];
    }

    NSLog(&cfstr_Focus2f2fSmoot.isa, v7, v3, v5, [self isSmoothAutoFocusEnabled]);
  }

  else
  {
    focusMode2 = [self focusMode];
    if (focusMode2 > 2)
    {
      v9 = @"Unknown focus mode";
    }

    else
    {
      v9 = off_1E76F9570[focusMode2];
    }

    NSLog(&cfstr_Focus.isa, v9);
  }
}

- (void)cam_debugExposureState
{
  if ([self isExposurePointOfInterestSupported])
  {
    [self exposurePointOfInterest];
    v3 = v2;
    v5 = v4;
    exposureMode = [self exposureMode];
    if (exposureMode > 2)
    {
      v7 = @"Unknown exposure mode";
    }

    else
    {
      v7 = off_1E76F9588[exposureMode];
    }

    [self exposureTargetBias];
    NSLog(&cfstr_Exposure2f2fBi.isa, v7, v3, v5, v10);
  }

  else
  {
    exposureMode2 = [self exposureMode];
    if (exposureMode2 > 2)
    {
      v9 = @"Unknown exposure mode";
    }

    else
    {
      v9 = off_1E76F9588[exposureMode2];
    }

    [self exposureTargetBias];
    NSLog(&cfstr_ExposureBias2f.isa, v9, v11);
  }
}

- (uint64_t)cam_debugFocusAndExposureState
{
  [self cam_debugFocusState];

  return [self cam_debugExposureState];
}

@end