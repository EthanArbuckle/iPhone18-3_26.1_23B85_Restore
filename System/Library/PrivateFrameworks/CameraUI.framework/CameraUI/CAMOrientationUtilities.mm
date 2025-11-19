@interface CAMOrientationUtilities
+ (id)imagePropertiesFromAssetAtUrl:(id)a3;
+ (int)exifOrientationFromDeviceOrientationForCaptureRequest:(id)a3;
+ (int64_t)captureOrientationFromPanoramaCaptureOrientation:(int64_t)a3;
+ (int64_t)imageOrientationForVideoRequest:(id)a3;
+ (int64_t)imageOrientationOfResult:(id)a3 withCaptureDevice:(int64_t)a4 captureOrientation:(int64_t)a5;
+ (int64_t)orientationFromAssetAtUrl:(id)a3;
+ (int64_t)orientationFromImageProperties:(id)a3;
+ (int64_t)panoramaCaptureOrientationFromCaptureOrientation:(int64_t)a3;
+ (int64_t)pixelHeightFromAssetAtUrl:(id)a3;
+ (int64_t)pixelHeightFromImageProperties:(id)a3;
+ (int64_t)pixelWidthFromAssetAtUrl:(id)a3;
+ (int64_t)pixelWidthFromImageProperties:(id)a3;
+ (int64_t)videoTrackOrientationForVideoRequest:(id)a3;
@end

@implementation CAMOrientationUtilities

+ (int64_t)imageOrientationForVideoRequest:(id)a3
{
  v3 = a3;
  v4 = [v3 isCaptureMirrored];
  v5 = [v3 captureOrientation];

  v6 = 4;
  if (!v4)
  {
    v6 = 0;
  }

  v7 = 5;
  if (!v4)
  {
    v7 = 1;
  }

  if (v5 != 4)
  {
    v7 = 0;
  }

  if (v5 != 3)
  {
    v6 = v7;
  }

  v8 = 3;
  if (v4)
  {
    v8 = 6;
  }

  v9 = 2;
  if (v4)
  {
    v9 = 7;
  }

  if (v5 != 2)
  {
    v9 = 0;
  }

  if (v5 >= 2)
  {
    v8 = v9;
  }

  if (v5 <= 2)
  {
    return v8;
  }

  else
  {
    return v6;
  }
}

+ (int64_t)videoTrackOrientationForVideoRequest:(id)a3
{
  v3 = a3;
  v4 = [v3 isCaptureMirrored];
  v5 = [v3 captureOrientation];

  v6 = v4;
  v7 = v4 ^ 1;
  if (v5 != 4)
  {
    v7 = 0;
  }

  if (v5 != 3)
  {
    v6 = v7;
  }

  v8 = 2;
  if (!v4)
  {
    v8 = 3;
  }

  v9 = 2;
  if (v4)
  {
    v9 = 3;
  }

  if (v5 != 2)
  {
    v9 = 0;
  }

  if (v5 >= 2)
  {
    v8 = v9;
  }

  if (v5 <= 2)
  {
    return v8;
  }

  else
  {
    return v6;
  }
}

+ (int)exifOrientationFromDeviceOrientationForCaptureRequest:(id)a3
{
  v3 = a3;
  v4 = [v3 captureDevicePosition];
  v5 = +[CAMCaptureCapabilities capabilities];
  v6 = [v5 frontCameraRotationAngle];

  if ([v3 isCaptureMirrored])
  {
    v7 = &unk_1F16C90E0;
  }

  else
  {
    v7 = &unk_1F16C90F8;
  }

  v8 = [v7 count];
  v9 = [v3 captureOrientation];

  if (v9 > 2)
  {
    if (v9 == 3)
    {
      if (v4 != 1)
      {
        v10 = 1;
        goto LABEL_19;
      }

      LODWORD(v10) = 5;
      goto LABEL_18;
    }

    if (v9 == 4)
    {
      v10 = 3;
      if (v4 != 1)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }
  }

  else
  {
    if (v9 < 2)
    {
      if (v4 != 1)
      {
        v10 = 0;
LABEL_19:
        v11 = [v7 objectAtIndexedSubscript:v10];
        v12 = [v11 intValue];

        return v12;
      }

      LODWORD(v10) = 2;
LABEL_18:
      v10 = (((((1240768329 * v6) >> 32) - v6) >> 6) + ((((1240768329 * v6) >> 32) - v6) >> 31) + v10) % v8;
      goto LABEL_19;
    }

    if (v9 == 2)
    {
      if (v4 != 1)
      {
        v10 = 2;
        goto LABEL_19;
      }

      LODWORD(v10) = 4;
      goto LABEL_18;
    }
  }

  return 1;
}

+ (int64_t)imageOrientationOfResult:(id)a3 withCaptureDevice:(int64_t)a4 captureOrientation:(int64_t)a5
{
  v5 = [a3 metadata];
  v6 = [v5 objectForKey:*MEMORY[0x1E696DE78]];
  v7 = v6;
  if (v6)
  {
    [v6 intValue];
    v8 = PLImageOrientationFromExifOrientation();
  }

  else
  {
    PLSensorOrientationFromCaptureOrientation();
    v8 = PLImageOrientationFromDeviceOrientation();
  }

  v9 = v8;

  return v9;
}

+ (int64_t)orientationFromAssetAtUrl:(id)a3
{
  v4 = [a1 imagePropertiesFromAssetAtUrl:a3];
  v5 = [a1 orientationFromImageProperties:v4];

  return v5;
}

+ (int64_t)pixelWidthFromAssetAtUrl:(id)a3
{
  v4 = [a1 imagePropertiesFromAssetAtUrl:a3];
  v5 = [a1 pixelWidthFromImageProperties:v4];

  return v5;
}

+ (int64_t)pixelHeightFromAssetAtUrl:(id)a3
{
  v4 = [a1 imagePropertiesFromAssetAtUrl:a3];
  v5 = [a1 pixelHeightFromImageProperties:v4];

  return v5;
}

+ (id)imagePropertiesFromAssetAtUrl:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = CGImageSourceCreateWithURL(v3, 0);
  if (v4)
  {
    v5 = v4;
    v6 = CGImageSourceCopyPropertiesAtIndex(v4, 0, 0);
    CFRelease(v5);
  }

  else
  {
    v7 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v3;
      _os_log_impl(&dword_1A3640000, v7, OS_LOG_TYPE_DEFAULT, "Failed to create image source for asset at path %@", &v9, 0xCu);
    }

    v6 = 0;
  }

  return v6;
}

+ (int64_t)orientationFromImageProperties:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:*MEMORY[0x1E696DE78]];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 integerValue];
  }

  else
  {
    v6 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1A3640000, v6, OS_LOG_TYPE_DEFAULT, "No orientation metadata found for asset", v8, 2u);
    }

    v5 = 0;
  }

  return v5;
}

+ (int64_t)pixelWidthFromImageProperties:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:*MEMORY[0x1E696DED8]];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 integerValue];
  }

  else
  {
    v6 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1A3640000, v6, OS_LOG_TYPE_DEFAULT, "No pixelWidth metadata found for asset", v8, 2u);
    }

    v5 = 0;
  }

  return v5;
}

+ (int64_t)pixelHeightFromImageProperties:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:*MEMORY[0x1E696DEC8]];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 integerValue];
  }

  else
  {
    v6 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1A3640000, v6, OS_LOG_TYPE_DEFAULT, "No pixelHeight metadata found for asset", v8, 2u);
    }

    v5 = 0;
  }

  return v5;
}

+ (int64_t)panoramaCaptureOrientationFromCaptureOrientation:(int64_t)a3
{
  if ((a3 - 2) > 2)
  {
    return 3;
  }

  else
  {
    return qword_1A3A64C00[a3 - 2];
  }
}

+ (int64_t)captureOrientationFromPanoramaCaptureOrientation:(int64_t)a3
{
  if (a3 > 4)
  {
    return 0;
  }

  else
  {
    return qword_1A3A64C18[a3];
  }
}

@end