@interface AVCaptureDevice(CAMDebugging)
- (uint64_t)cam_debugFocusAndExposureState;
- (void)cam_debugExposureState;
- (void)cam_debugFocusState;
@end

@implementation AVCaptureDevice(CAMDebugging)

- (void)cam_debugFocusState
{
  if ([a1 isFocusPointOfInterestSupported])
  {
    [a1 focusPointOfInterest];
    v3 = v2;
    v5 = v4;
    v6 = [a1 focusMode];
    if (v6 > 2)
    {
      v7 = @"Unknown focus mode";
    }

    else
    {
      v7 = off_1E76F9570[v6];
    }

    NSLog(&cfstr_Focus2f2fSmoot.isa, v7, v3, v5, [a1 isSmoothAutoFocusEnabled]);
  }

  else
  {
    v8 = [a1 focusMode];
    if (v8 > 2)
    {
      v9 = @"Unknown focus mode";
    }

    else
    {
      v9 = off_1E76F9570[v8];
    }

    NSLog(&cfstr_Focus.isa, v9);
  }
}

- (void)cam_debugExposureState
{
  if ([a1 isExposurePointOfInterestSupported])
  {
    [a1 exposurePointOfInterest];
    v3 = v2;
    v5 = v4;
    v6 = [a1 exposureMode];
    if (v6 > 2)
    {
      v7 = @"Unknown exposure mode";
    }

    else
    {
      v7 = off_1E76F9588[v6];
    }

    [a1 exposureTargetBias];
    NSLog(&cfstr_Exposure2f2fBi.isa, v7, v3, v5, v10);
  }

  else
  {
    v8 = [a1 exposureMode];
    if (v8 > 2)
    {
      v9 = @"Unknown exposure mode";
    }

    else
    {
      v9 = off_1E76F9588[v8];
    }

    [a1 exposureTargetBias];
    NSLog(&cfstr_ExposureBias2f.isa, v9, v11);
  }
}

- (uint64_t)cam_debugFocusAndExposureState
{
  [a1 cam_debugFocusState];

  return [a1 cam_debugExposureState];
}

@end