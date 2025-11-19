@interface NSData(FamilyCircle)
- (CFTypeRef)_faCreateContextWithImage:()FamilyCircle crop:diameter:;
- (CFTypeRef)_faCreateImageRef;
- (__CFData)_faCircularImageDataWithDiameter:()FamilyCircle cropRect:;
- (double)_faTranformedRectForImageSize:()FamilyCircle cropRect:diameter:;
- (id)fa_dictionaryFromPlistData;
@end

@implementation NSData(FamilyCircle)

- (CFTypeRef)_faCreateImageRef
{
  v1 = CGDataProviderCreateWithCFData(a1);
  v2 = v1;
  if (!v1 || (v3 = CGImageSourceCreateWithDataProvider(v1, 0)) == 0)
  {
    CGDataProviderRelease(v2);
    return 0;
  }

  v4 = v3;
  ImageAtIndex = CGImageSourceCreateImageAtIndex(v3, 0, 0);
  CGDataProviderRelease(v2);
  CFRelease(v4);
  if (!ImageAtIndex)
  {
    return 0;
  }

  return CFAutorelease(ImageAtIndex);
}

- (double)_faTranformedRectForImageSize:()FamilyCircle cropRect:diameter:
{
  if (a5 <= 0.0)
  {
    return 0.0;
  }

  v7 = -(a3 * (a7 / a5));
  v9.origin.x = a3;
  v9.origin.y = a4;
  v9.size.width = a5;
  v9.size.height = a6;
  CGRectGetMaxY(v9);
  return v7;
}

- (CFTypeRef)_faCreateContextWithImage:()FamilyCircle crop:diameter:
{
  if (cf)
  {
    CFRetain(cf);
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    if (DeviceRGB)
    {
      v16 = CGBitmapContextCreate(0, a8, a8, 8uLL, 0, DeviceRGB, 1u);
    }

    else
    {
      v16 = 0;
    }

    CGContextSetInterpolationQuality(v16, kCGInterpolationMedium);
    v21.origin.x = 0.0;
    v21.origin.y = 0.0;
    v21.size.width = a8;
    v21.size.height = a8;
    v17 = CGPathCreateWithEllipseInRect(v21, 0);
    CGContextAddPath(v16, v17);
    CGContextClip(v16);
    Width = CGImageGetWidth(cf);
    [a1 _faTranformedRectForImageSize:Width cropRect:CGImageGetHeight(cf) diameter:{a4, a5, a6, a7, a8}];
    CGContextDrawImage(v16, v22, cf);
  }

  else
  {
    v17 = 0;
    v16 = 0;
    DeviceRGB = 0;
  }

  CGPathRelease(v17);
  CGColorSpaceRelease(DeviceRGB);
  CGImageRelease(cf);
  if (!v16)
  {
    return 0;
  }

  return CFAutorelease(v16);
}

- (__CFData)_faCircularImageDataWithDiameter:()FamilyCircle cropRect:
{
  v12 = objc_autoreleasePoolPush();
  if (a2 <= 0.0)
  {
    v14 = _FALogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [NSData(FamilyCircle) _faCircularImageDataWithDiameter:v14 cropRect:a2];
    }

    v15 = 0;
  }

  else
  {
    if ([a1 _faCreateImageRef])
    {
      v13 = CFRetain([a1 _faCreateImageRef]);
    }

    else
    {
      v13 = 0;
    }

    if ([a1 _faCreateContextWithImage:v13 crop:a3 diameter:{a4, a5, a6, a2}])
    {
      v16 = CFRetain([a1 _faCreateContextWithImage:v13 crop:a3 diameter:{a4, a5, a6, a2}]);
    }

    else
    {
      v16 = 0;
    }

    Image = CGBitmapContextCreateImage(v16);
    if (Image)
    {
      v18 = Image;
      Mutable = CFDataCreateMutable(0, 0);
      v20 = CGImageDestinationCreateWithData(Mutable, *MEMORY[0x1E6963860], 1uLL, 0);
      if (v20)
      {
        v21 = v20;
        CGImageDestinationAddImage(v20, v18, 0);
        CGImageDestinationFinalize(v21);
        CFRelease(v21);
      }

      CFRelease(v18);
    }

    else
    {
      Mutable = 0;
    }

    CGContextRelease(v16);
    if (v13)
    {
      CFRelease(v13);
    }

    if ([(__CFData *)Mutable length])
    {
      v15 = Mutable;
    }

    else
    {
      v15 = 0;
    }
  }

  objc_autoreleasePoolPop(v12);

  return v15;
}

- (id)fa_dictionaryFromPlistData
{
  v4 = 0;
  v1 = [MEMORY[0x1E696AE40] propertyListWithData:a1 options:0 format:0 error:&v4];
  if (v4 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v2 = 0;
  }

  else
  {
    v2 = v1;
  }

  return v2;
}

- (void)_faCircularImageDataWithDiameter:()FamilyCircle cropRect:.cold.1(os_log_t log, double a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 136315394;
  v4 = "[NSData(FamilyCircle) _faCircularImageDataWithDiameter:cropRect:]";
  v5 = 2048;
  v6 = a2;
  _os_log_error_impl(&dword_1B70B0000, log, OS_LOG_TYPE_ERROR, "%s invalid diameter %f", &v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

@end