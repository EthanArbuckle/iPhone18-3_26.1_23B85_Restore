@interface CAMOrientationUtilities
+ (id)imagePropertiesFromAssetAtUrl:(id)url;
+ (int)exifOrientationFromDeviceOrientationForCaptureRequest:(id)request;
+ (int64_t)captureOrientationFromPanoramaCaptureOrientation:(int64_t)orientation;
+ (int64_t)imageOrientationForVideoRequest:(id)request;
+ (int64_t)imageOrientationOfResult:(id)result withCaptureDevice:(int64_t)device captureOrientation:(int64_t)orientation;
+ (int64_t)orientationFromAssetAtUrl:(id)url;
+ (int64_t)orientationFromImageProperties:(id)properties;
+ (int64_t)panoramaCaptureOrientationFromCaptureOrientation:(int64_t)orientation;
+ (int64_t)pixelHeightFromAssetAtUrl:(id)url;
+ (int64_t)pixelHeightFromImageProperties:(id)properties;
+ (int64_t)pixelWidthFromAssetAtUrl:(id)url;
+ (int64_t)pixelWidthFromImageProperties:(id)properties;
+ (int64_t)videoTrackOrientationForVideoRequest:(id)request;
@end

@implementation CAMOrientationUtilities

+ (int64_t)imageOrientationForVideoRequest:(id)request
{
  requestCopy = request;
  isCaptureMirrored = [requestCopy isCaptureMirrored];
  captureOrientation = [requestCopy captureOrientation];

  v6 = 4;
  if (!isCaptureMirrored)
  {
    v6 = 0;
  }

  v7 = 5;
  if (!isCaptureMirrored)
  {
    v7 = 1;
  }

  if (captureOrientation != 4)
  {
    v7 = 0;
  }

  if (captureOrientation != 3)
  {
    v6 = v7;
  }

  v8 = 3;
  if (isCaptureMirrored)
  {
    v8 = 6;
  }

  v9 = 2;
  if (isCaptureMirrored)
  {
    v9 = 7;
  }

  if (captureOrientation != 2)
  {
    v9 = 0;
  }

  if (captureOrientation >= 2)
  {
    v8 = v9;
  }

  if (captureOrientation <= 2)
  {
    return v8;
  }

  else
  {
    return v6;
  }
}

+ (int64_t)videoTrackOrientationForVideoRequest:(id)request
{
  requestCopy = request;
  isCaptureMirrored = [requestCopy isCaptureMirrored];
  captureOrientation = [requestCopy captureOrientation];

  v6 = isCaptureMirrored;
  v7 = isCaptureMirrored ^ 1;
  if (captureOrientation != 4)
  {
    v7 = 0;
  }

  if (captureOrientation != 3)
  {
    v6 = v7;
  }

  v8 = 2;
  if (!isCaptureMirrored)
  {
    v8 = 3;
  }

  v9 = 2;
  if (isCaptureMirrored)
  {
    v9 = 3;
  }

  if (captureOrientation != 2)
  {
    v9 = 0;
  }

  if (captureOrientation >= 2)
  {
    v8 = v9;
  }

  if (captureOrientation <= 2)
  {
    return v8;
  }

  else
  {
    return v6;
  }
}

+ (int)exifOrientationFromDeviceOrientationForCaptureRequest:(id)request
{
  requestCopy = request;
  captureDevicePosition = [requestCopy captureDevicePosition];
  v5 = +[CAMCaptureCapabilities capabilities];
  frontCameraRotationAngle = [v5 frontCameraRotationAngle];

  if ([requestCopy isCaptureMirrored])
  {
    v7 = &unk_1F16C90E0;
  }

  else
  {
    v7 = &unk_1F16C90F8;
  }

  v8 = [v7 count];
  captureOrientation = [requestCopy captureOrientation];

  if (captureOrientation > 2)
  {
    if (captureOrientation == 3)
    {
      if (captureDevicePosition != 1)
      {
        v10 = 1;
        goto LABEL_19;
      }

      LODWORD(v10) = 5;
      goto LABEL_18;
    }

    if (captureOrientation == 4)
    {
      v10 = 3;
      if (captureDevicePosition != 1)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }
  }

  else
  {
    if (captureOrientation < 2)
    {
      if (captureDevicePosition != 1)
      {
        v10 = 0;
LABEL_19:
        v11 = [v7 objectAtIndexedSubscript:v10];
        intValue = [v11 intValue];

        return intValue;
      }

      LODWORD(v10) = 2;
LABEL_18:
      v10 = (((((1240768329 * frontCameraRotationAngle) >> 32) - frontCameraRotationAngle) >> 6) + ((((1240768329 * frontCameraRotationAngle) >> 32) - frontCameraRotationAngle) >> 31) + v10) % v8;
      goto LABEL_19;
    }

    if (captureOrientation == 2)
    {
      if (captureDevicePosition != 1)
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

+ (int64_t)imageOrientationOfResult:(id)result withCaptureDevice:(int64_t)device captureOrientation:(int64_t)orientation
{
  metadata = [result metadata];
  v6 = [metadata objectForKey:*MEMORY[0x1E696DE78]];
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

+ (int64_t)orientationFromAssetAtUrl:(id)url
{
  v4 = [self imagePropertiesFromAssetAtUrl:url];
  v5 = [self orientationFromImageProperties:v4];

  return v5;
}

+ (int64_t)pixelWidthFromAssetAtUrl:(id)url
{
  v4 = [self imagePropertiesFromAssetAtUrl:url];
  v5 = [self pixelWidthFromImageProperties:v4];

  return v5;
}

+ (int64_t)pixelHeightFromAssetAtUrl:(id)url
{
  v4 = [self imagePropertiesFromAssetAtUrl:url];
  v5 = [self pixelHeightFromImageProperties:v4];

  return v5;
}

+ (id)imagePropertiesFromAssetAtUrl:(id)url
{
  v11 = *MEMORY[0x1E69E9840];
  urlCopy = url;
  v4 = CGImageSourceCreateWithURL(urlCopy, 0);
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
      v10 = urlCopy;
      _os_log_impl(&dword_1A3640000, v7, OS_LOG_TYPE_DEFAULT, "Failed to create image source for asset at path %@", &v9, 0xCu);
    }

    v6 = 0;
  }

  return v6;
}

+ (int64_t)orientationFromImageProperties:(id)properties
{
  v3 = [properties objectForKeyedSubscript:*MEMORY[0x1E696DE78]];
  v4 = v3;
  if (v3)
  {
    integerValue = [v3 integerValue];
  }

  else
  {
    v6 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1A3640000, v6, OS_LOG_TYPE_DEFAULT, "No orientation metadata found for asset", v8, 2u);
    }

    integerValue = 0;
  }

  return integerValue;
}

+ (int64_t)pixelWidthFromImageProperties:(id)properties
{
  v3 = [properties objectForKeyedSubscript:*MEMORY[0x1E696DED8]];
  v4 = v3;
  if (v3)
  {
    integerValue = [v3 integerValue];
  }

  else
  {
    v6 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1A3640000, v6, OS_LOG_TYPE_DEFAULT, "No pixelWidth metadata found for asset", v8, 2u);
    }

    integerValue = 0;
  }

  return integerValue;
}

+ (int64_t)pixelHeightFromImageProperties:(id)properties
{
  v3 = [properties objectForKeyedSubscript:*MEMORY[0x1E696DEC8]];
  v4 = v3;
  if (v3)
  {
    integerValue = [v3 integerValue];
  }

  else
  {
    v6 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1A3640000, v6, OS_LOG_TYPE_DEFAULT, "No pixelHeight metadata found for asset", v8, 2u);
    }

    integerValue = 0;
  }

  return integerValue;
}

+ (int64_t)panoramaCaptureOrientationFromCaptureOrientation:(int64_t)orientation
{
  if ((orientation - 2) > 2)
  {
    return 3;
  }

  else
  {
    return qword_1A3A64C00[orientation - 2];
  }
}

+ (int64_t)captureOrientationFromPanoramaCaptureOrientation:(int64_t)orientation
{
  if (orientation > 4)
  {
    return 0;
  }

  else
  {
    return qword_1A3A64C18[orientation];
  }
}

@end