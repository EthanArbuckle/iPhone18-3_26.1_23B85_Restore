@interface AVCaptureDeviceFormat
@end

@implementation AVCaptureDeviceFormat

void __65__AVCaptureDeviceFormat_CAMCaptureEngine__cam_supportsFrameRate___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  [v9 minFrameRate];
  v6 = *(a1 + 40);
  if (v7 <= v6)
  {
    [v9 maxFrameRate];
    if (v6 <= v8)
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
      *a4 = 1;
    }
  }
}

void __69__AVCaptureDeviceFormat_CAMCaptureEngine__cam_supportsFrameDuration___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = v6;
  if (v6)
  {
    [v6 minFrameDuration];
  }

  else
  {
    memset(&time1, 0, sizeof(time1));
  }

  v8 = *(a1 + 40);
  if (CMTimeCompare(&time1, &v8) <= 0)
  {
    if (v7)
    {
      [v7 maxFrameDuration];
    }

    else
    {
      memset(&time1, 0, sizeof(time1));
    }

    v8 = *(a1 + 40);
    if (CMTimeCompare(&v8, &time1) <= 0)
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
      *a4 = 1;
    }
  }
}

void __77__AVCaptureDeviceFormat_CAMCaptureEngine__cam_supportsPanoramaConfiguration___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  [v6 minFrameRate];
  v8 = v7;
  v9 = *(a1 + 32);
  if (v9)
  {
    [v9 minimumFramerate];
    v10 = v18;
  }

  else
  {
    v17 = 0;
    v18 = 0;
    v10 = 0.0;
    v19 = 0;
  }

  if (v8 <= v10)
  {
    v11 = *(a1 + 32);
    if (v11)
    {
      [v11 maximumFramerate];
      v12 = v15;
    }

    else
    {
      v14 = 0;
      v15 = 0;
      v12 = 0.0;
      v16 = 0;
    }

    [v6 maxFrameRate];
    if (v13 >= v12)
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      *a4 = 1;
    }
  }
}

void __63__AVCaptureDeviceFormat_CAMCaptureEngine__cam_maximumFrameRate__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  [v5 maxFrameRate];
  if (v3 > *(*(*(a1 + 32) + 8) + 24))
  {
    [v5 maxFrameRate];
    *(*(*(a1 + 32) + 8) + 24) = v4;
  }
}

@end