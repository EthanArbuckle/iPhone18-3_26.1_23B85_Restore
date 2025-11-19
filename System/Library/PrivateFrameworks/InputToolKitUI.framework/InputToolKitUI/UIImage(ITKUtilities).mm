@interface UIImage(ITKUtilities)
+ (double)itk_aspectFitImageFrameForViewWithFrame:()ITKUtilities imageSize:;
+ (id)itk_UIImageFromCIImage:()ITKUtilities;
+ (id)itk_fileIconForURL:()ITKUtilities withPreferredSize:;
+ (id)itk_imageNamed:()ITKUtilities withTint:;
+ (id)itk_imageNamed:()ITKUtilities withTint:size:;
+ (id)itk_imageWithCIImage:()ITKUtilities;
+ (id)itk_imageWithCVPixelBuffer:()ITKUtilities;
+ (id)itk_imageWithColor:()ITKUtilities size:;
+ (id)itk_imageWithContentsOfURL:()ITKUtilities;
+ (id)itk_mainScreenScaledImageWithData:()ITKUtilities;
+ (id)itk_orientationMetadataFromImageOrientation:()ITKUtilities;
+ (id)itk_orientedImageFromCGImage:()ITKUtilities scale:transform:;
+ (id)itk_orientedImageFromImage:()ITKUtilities fromOrientation:;
+ (id)itk_orientedImageFromImage:()ITKUtilities toOrientation:;
- (id)itk_HEICDataWithCompressionQuality:()ITKUtilities orientation:;
- (id)itk_JPEGDataWithOrientation:()ITKUtilities;
- (id)itk_PNGData;
- (id)itk_PNGDataWithOrientation:()ITKUtilities;
- (id)itk_decodeInBackground;
- (id)itk_imageDataWithRequirements:()ITKUtilities;
- (id)itk_imageDataWithUTType:()ITKUtilities;
- (id)itk_imageDataWithUTType:()ITKUtilities metadata:;
- (id)itk_imageFromSubrect:()ITKUtilities;
- (id)itk_imageView;
- (id)itk_imageWithTint:()ITKUtilities size:;
- (id)itk_scaledImageWithSize:()ITKUtilities scale:;
- (uint64_t)itk_HEICDataWithCompressionQuality:()ITKUtilities;
- (uint64_t)itk_JPEGData;
- (uint64_t)itk_cgImage;
- (uint64_t)itk_cgImageGeneratingIfNecessary;
- (uint64_t)itk_cgImagePropertyOrientation;
- (uint64_t)itk_horizontallyMirroredImage;
- (uint64_t)itk_scaledImageMaxDimension:()ITKUtilities scale:;
- (uint64_t)itk_scaledImageMinDimension:()ITKUtilities scale:;
- (uint64_t)itk_squareStickerImageWithEdgeLength:()ITKUtilities;
- (void)itk_cropRectZeroAlpha;
- (void)itk_decodeWithCompletion:()ITKUtilities;
- (void)itk_imageDataWithRequirements:()ITKUtilities completion:;
@end

@implementation UIImage(ITKUtilities)

+ (id)itk_imageWithContentsOfURL:()ITKUtilities
{
  v3 = MEMORY[0x277D755B8];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v4 path];

  v7 = [v5 initWithContentsOfFile:v6];

  return v7;
}

+ (id)itk_mainScreenScaledImageWithData:()ITKUtilities
{
  v3 = MEMORY[0x277D755B8];
  v4 = a3;
  v5 = [[v3 alloc] _initWithData:v4 preserveScale:1 cache:1];

  v6 = MEMORY[0x277D755B8];
  v7 = [v5 CGImage];
  v8 = [MEMORY[0x277D759A0] mainScreen];
  [v8 scale];
  v10 = [v6 imageWithCGImage:v7 scale:objc_msgSend(v5 orientation:{"imageOrientation"), v9}];

  return v10;
}

+ (id)itk_imageNamed:()ITKUtilities withTint:
{
  v5 = MEMORY[0x277D755B8];
  v6 = a4;
  v7 = [v5 imageNamed:a3];
  [v7 size];
  v8 = [v7 itk_imageWithTint:v6 size:?];

  return v8;
}

+ (id)itk_imageNamed:()ITKUtilities withTint:size:
{
  v9 = MEMORY[0x277D755B8];
  v10 = a6;
  v11 = [v9 imageNamed:a5];
  v12 = [v11 itk_imageWithTint:v10 size:{a1, a2}];

  return v12;
}

- (id)itk_imageWithTint:()ITKUtilities size:
{
  v8 = a5;
  v9 = [MEMORY[0x277D75568] defaultFormat];
  v10 = [MEMORY[0x277D759A0] mainScreen];
  [v10 scale];
  [v9 setScale:?];

  v11 = [objc_alloc(MEMORY[0x277D75560]) initWithSize:v9 format:{a2, a3}];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __48__UIImage_ITKUtilities__itk_imageWithTint_size___block_invoke;
  v15[3] = &unk_2797B0428;
  v18 = a2;
  v19 = a3;
  v20 = 0;
  v21 = 0;
  v22 = a2;
  v23 = a3;
  v16 = v8;
  v17 = a1;
  v12 = v8;
  v13 = [v11 imageWithActions:v15];

  return v13;
}

- (id)itk_imageView
{
  v2 = objc_alloc(MEMORY[0x277D755E8]);
  [a1 size];
  ITKRectWithSize();
  v3 = [v2 initWithFrame:?];
  [v3 setImage:a1];

  return v3;
}

- (uint64_t)itk_scaledImageMinDimension:()ITKUtilities scale:
{
  [a1 size];
  if (v6 >= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  v9 = a2 / v8;
  v10 = round(v6 * v9);
  v11 = round(v7 * v9);

  return [a1 itk_scaledImageWithSize:v10 scale:{v11, a3}];
}

- (uint64_t)itk_scaledImageMaxDimension:()ITKUtilities scale:
{
  [a1 size];
  if (v6 >= v7)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  v9 = a2 / v8;
  v10 = round(v6 * v9);
  v11 = round(v7 * v9);

  return [a1 itk_scaledImageWithSize:v10 scale:{v11, a3}];
}

- (id)itk_scaledImageWithSize:()ITKUtilities scale:
{
  v8 = [a1 imageRendererFormat];
  [v8 setScale:a4];
  v9 = [objc_alloc(MEMORY[0x277D75560]) initWithSize:v8 format:{a2, a3}];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __55__UIImage_ITKUtilities__itk_scaledImageWithSize_scale___block_invoke;
  v12[3] = &unk_2797B0450;
  v12[4] = a1;
  *&v12[5] = a2;
  *&v12[6] = a3;
  v10 = [v9 imageWithActions:v12];

  return v10;
}

- (id)itk_imageFromSubrect:()ITKUtilities
{
  [a1 scale];
  if (v10 > 1.0)
  {
    [a1 scale];
    a2 = a2 * v11;
    [a1 scale];
    a3 = a3 * v12;
    [a1 scale];
    a4 = a4 * v13;
    [a1 scale];
    a5 = a5 * v14;
  }

  if ([a1 CGImage])
  {
    v15 = [a1 itk_cgImage];
    v25.origin.x = a2;
    v25.origin.y = a3;
    v25.size.width = a4;
    v25.size.height = a5;
    v16 = CGImageCreateWithImageInRect(v15, v25);
    v17 = MEMORY[0x277D755B8];
    [a1 scale];
    v19 = [v17 imageWithCGImage:v16 scale:objc_msgSend(a1 orientation:{"imageOrientation"), v18}];
    CGImageRelease(v16);
  }

  else
  {
    v20 = [a1 CIImage];

    if (v20)
    {
      v21 = [a1 CIImage];
      v22 = [v21 imageByCroppingToRect:{a2, a3, a4, a5}];
      v19 = [objc_alloc(MEMORY[0x277D755B8]) initWithCIImage:v22];
    }

    else
    {
      v19 = 0;
    }
  }

  return v19;
}

- (uint64_t)itk_squareStickerImageWithEdgeLength:()ITKUtilities
{
  [a1 size];
  ITKRectWithSize();
  ITKFitOrFillSizeInRect();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  AlignedBytesPerRow = CGBitmapGetAlignedBytesPerRow();
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v14 = CGBitmapContextCreate(0, a2, a2, 8uLL, AlignedBytesPerRow, DeviceRGB, 0x2002u);
  CGColorSpaceRelease(DeviceRGB);
  CGContextSetInterpolationQuality(v14, kCGInterpolationHigh);
  v15 = [a1 itk_cgImageGeneratingIfNecessary];
  v20.origin.x = v5;
  v20.origin.y = v7;
  v20.size.width = v9;
  v20.size.height = v11;
  CGContextDrawImage(v14, v20, v15);
  Image = CGBitmapContextCreateImage(v14);
  CGContextRelease(v14);
  v17 = MEMORY[0x277D755B8];

  return [v17 itk_imageWithCGImage:Image];
}

+ (id)itk_UIImageFromCIImage:()ITKUtilities
{
  v3 = a3;
  [v3 extent];
  v5 = v4;
  v7 = v6;
  v14.width = v4;
  v14.height = v6;
  UIGraphicsBeginImageContext(v14);
  v8 = *MEMORY[0x277CBF348];
  v9 = *(MEMORY[0x277CBF348] + 8);
  v10 = [MEMORY[0x277D755B8] imageWithCIImage:v3];

  [v10 drawInRect:{v8, v9, v5, v7}];
  v11 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v11;
}

+ (id)itk_orientedImageFromCGImage:()ITKUtilities scale:transform:
{
  v8 = *MEMORY[0x277CBF348];
  v9 = *(MEMORY[0x277CBF348] + 8);
  Width = CGImageGetWidth(image);
  Height = CGImageGetHeight(image);
  v12 = a5[1];
  *&v24.a = *a5;
  *&v24.c = v12;
  *&v24.tx = a5[2];
  v13 = v8;
  *&v12 = v9;
  v14 = Width;
  v15 = Height;
  v26 = CGRectApplyAffineTransform(*(&v12 - 8), &v24);
  x = v26.origin.x;
  y = v26.origin.y;
  v18 = ITKCreateRGBABitmapContext(0, v26.size.width, v26.size.height, a4);
  if (!v18 || (v19 = v18, CGContextTranslateCTM(v18, -x, -y), v20 = a5[1], *&v24.a = *a5, *&v24.c = v20, *&v24.tx = a5[2], CGContextConcatCTM(v19, &v24), v27.origin.x = v8, v27.origin.y = v9, v27.size.width = Width, v27.size.height = Height, CGContextDrawImage(v19, v27, image), v21 = CGBitmapContextCreateImage(v19), CGContextRelease(v19), !v21) || ([MEMORY[0x277D755B8] itk_imageWithCGImage:v21 scale:0 orientation:a4], v22 = objc_claimAutoreleasedReturnValue(), CGImageRelease(v21), !v22))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      +[UIImage(ITKUtilities) itk_orientedImageFromCGImage:scale:transform:];
    }

    v22 = [MEMORY[0x277D755B8] itk_imageWithCGImage:image];
  }

  return v22;
}

+ (id)itk_orientedImageFromImage:()ITKUtilities fromOrientation:
{
  v5 = [a3 itk_cgImage];
  memset(&v10, 0, sizeof(v10));
  itk_transformToImageOrientation(a4, &v10);
  v8 = v10;
  CGAffineTransformInvert(&v9, &v8);
  v10 = v9;
  v6 = [MEMORY[0x277D755B8] itk_orientedImageFromCGImage:v5 scale:&v9 transform:1.0];

  return v6;
}

+ (id)itk_orientedImageFromImage:()ITKUtilities toOrientation:
{
  v5 = [a3 itk_cgImage];
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  itk_transformFromImageOrientation(a4, &v9);
  v8[0] = v9;
  v8[1] = v10;
  v8[2] = v11;
  v6 = [MEMORY[0x277D755B8] itk_orientedImageFromCGImage:v5 scale:v8 transform:1.0];

  return v6;
}

+ (id)itk_imageWithCIImage:()ITKUtilities
{
  v3 = MEMORY[0x277D755B8];
  v4 = a3;
  v5 = [[v3 alloc] initWithCIImage:v4];

  return v5;
}

- (uint64_t)itk_cgImage
{
  v1 = a1;

  return [v1 CGImage];
}

- (uint64_t)itk_cgImageGeneratingIfNecessary
{
  v2 = [a1 itk_cgImage];
  if (!v2)
  {
    v3 = [a1 itk_ciImage];
    if (v3)
    {
      v4 = v3;
      v5 = [objc_alloc(MEMORY[0x277CBF740]) initWithOptions:0];
      [v4 extent];
      v6 = [v5 createCGImage:v4 fromRect:?];
      if (v6)
      {
        v2 = v6;
        CFAutorelease(v6);

        return v2;
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [UIImage(ITKUtilities) itk_cgImageGeneratingIfNecessary];
    }

    return 0;
  }

  return v2;
}

- (uint64_t)itk_horizontallyMirroredImage
{
  v2 = MEMORY[0x277D755B8];
  v3 = [a1 itk_cgImage];
  [a1 scale];

  return [v2 imageWithCGImage:v3 scale:4 orientation:?];
}

+ (id)itk_imageWithCVPixelBuffer:()ITKUtilities
{
  imageOut = 0;
  VTCreateCGImageFromCVPixelBuffer(pixelBuffer, 0, &imageOut);
  if (imageOut)
  {
    v4 = [a1 itk_imageWithCGImage:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (uint64_t)itk_cgImagePropertyOrientation
{
  v1 = [a1 itk_imageOrientation];

  return itk_cgImagePropertyOrientationFromITKOrientation(v1);
}

+ (id)itk_orientationMetadataFromImageOrientation:()ITKUtilities
{
  v8[1] = *MEMORY[0x277D85DE8];
  if ((a3 - 1) > 6)
  {
    v3 = 1;
  }

  else
  {
    v3 = dword_254C2B3A0[a3 - 1];
  }

  v7 = @"Orientation";
  v4 = [MEMORY[0x277CCABB0] numberWithInt:v3];
  v8[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  return v5;
}

- (uint64_t)itk_JPEGData
{
  v2 = [a1 itk_imageOrientation];

  return [a1 itk_JPEGDataWithOrientation:v2];
}

- (id)itk_JPEGDataWithOrientation:()ITKUtilities
{
  v5 = [*MEMORY[0x277CE1DC0] identifier];
  v6 = [objc_opt_class() itk_orientationMetadataFromImageOrientation:a3];
  v7 = [a1 itk_imageDataWithUTType:v5 metadata:v6];

  return v7;
}

- (id)itk_PNGData
{
  v2 = [*MEMORY[0x277CE1E10] identifier];
  v3 = [a1 itk_imageDataWithUTType:v2 metadata:0];

  return v3;
}

- (id)itk_PNGDataWithOrientation:()ITKUtilities
{
  v5 = [*MEMORY[0x277CE1E10] identifier];
  v6 = [objc_opt_class() itk_orientationMetadataFromImageOrientation:a3];
  v7 = [a1 itk_imageDataWithUTType:v5 metadata:v6];

  return v7;
}

- (uint64_t)itk_HEICDataWithCompressionQuality:()ITKUtilities
{
  v4 = [a1 itk_imageOrientation];

  return [a1 itk_HEICDataWithCompressionQuality:v4 orientation:a2];
}

- (id)itk_HEICDataWithCompressionQuality:()ITKUtilities orientation:
{
  v6 = [objc_opt_class() itk_orientationMetadataFromImageOrientation:a4];
  v7 = [v6 mutableCopy];

  v8 = [MEMORY[0x277CCABB0] numberWithDouble:a2];
  [v7 setObject:v8 forKeyedSubscript:*MEMORY[0x277CD2D48]];

  v9 = [*MEMORY[0x277CE1D90] identifier];
  v10 = [a1 itk_imageDataWithUTType:v9 metadata:v7];

  return v10;
}

- (id)itk_imageDataWithUTType:()ITKUtilities
{
  v4 = a3;
  v5 = [*MEMORY[0x277CE1DC0] identifier];
  v6 = [v4 isEqualToString:v5];

  if (v6)
  {
    v7 = [objc_opt_class() itk_orientationMetadataFromImageOrientation:{objc_msgSend(a1, "itk_imageOrientation")}];
  }

  else
  {
    v7 = 0;
  }

  v8 = [a1 itk_imageDataWithUTType:v4 metadata:v7];

  return v8;
}

- (id)itk_imageDataWithUTType:()ITKUtilities metadata:
{
  v6 = a4;
  v7 = a3;
  v8 = itk_dataFromCGImage([a1 itk_cgImage], v7, v6);

  return v8;
}

- (id)itk_imageDataWithRequirements:()ITKUtilities
{
  v4 = a3;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__0;
  v12 = __Block_byref_object_dispose__0;
  v13 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__UIImage_ITKUtilities__itk_imageDataWithRequirements___block_invoke;
  v7[3] = &unk_2797B0478;
  v7[4] = &v8;
  [a1 itk_imageDataWithRequirements:v4 completion:v7];
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (void)itk_imageDataWithRequirements:()ITKUtilities completion:
{
  v38[6] = *MEMORY[0x277D85DE8];
  v37 = a3;
  v36 = a4;
  v6 = [v37 uti];
  v7 = [*MEMORY[0x277CE1D90] identifier];
  if (![v6 isEqual:v7])
  {
    v8 = [v37 uti];
    v9 = [*MEMORY[0x277CE1DC0] identifier];
    if (([v8 isEqual:v9] & 1) == 0)
    {
      v33 = [v37 uti];
      v34 = [*MEMORY[0x277CE1E10] identifier];
      v35 = [v33 isEqual:v34];

      if ((v35 & 1) == 0)
      {
        [MEMORY[0x277D1C0E8] handleFailedAssertWithCondition:"validUTI" functionName:"-[UIImage(ITKUtilities) itk_imageDataWithRequirements:completion:]" simulateCrash:0 showAlert:0 format:{@"UTI should be HEIC, JPEG, or PNG."}];
      }

      goto LABEL_5;
    }
  }

LABEL_5:
  if (![v37 maxLength])
  {
    [MEMORY[0x277D1C0E8] handleFailedAssertWithCondition:"requirements.maxLength > 0" functionName:"-[UIImage(ITKUtilities) itk_imageDataWithRequirements:completion:]" simulateCrash:0 showAlert:0 format:@"The max length requirement should be greater than zero."];
  }

  if (![v37 minLength])
  {
    [MEMORY[0x277D1C0E8] handleFailedAssertWithCondition:"requirements.minLength > 0" functionName:"-[UIImage(ITKUtilities) itk_imageDataWithRequirements:completion:]" simulateCrash:0 showAlert:0 format:@"The min length requirement should be greater than zero."];
  }

  if (![v37 maxDataLength])
  {
    [MEMORY[0x277D1C0E8] handleFailedAssertWithCondition:"requirements.maxDataLength > 0" functionName:"-[UIImage(ITKUtilities) itk_imageDataWithRequirements:completion:]" simulateCrash:0 showAlert:0 format:@"The max data length requirement should be greater than zero."];
  }

  v10 = [v37 maxLength];
  if (v10 <= [v37 minLength])
  {
    [MEMORY[0x277D1C0E8] handleFailedAssertWithCondition:"requirements.maxLength > requirements.minLength" functionName:"-[UIImage(ITKUtilities) itk_imageDataWithRequirements:completion:]" simulateCrash:0 showAlert:0 format:@"The max length requirement should not be less than the min length requirement."];
  }

  v11 = [a1 itk_cgImage];
  v12 = [objc_opt_class() itk_orientationMetadataFromImageOrientation:{objc_msgSend(a1, "itk_imageOrientation")}];
  v13 = [v12 mutableCopy];

  Width = CGImageGetWidth(v11);
  Height = CGImageGetHeight(v11);
  [v37 maxLength];
  ITKClampSizeToMaxLength();
  v38[0] = v16;
  v38[1] = v17;
  [v37 minLength];
  [v37 maxLength];
  [v37 minLength];
  ITKClampSizeToMaxLength();
  v38[2] = v18;
  v38[3] = v19;
  [v37 minLength];
  ITKClampSizeToMaxLength();
  v20 = 0;
  v38[4] = v21;
  v38[5] = v22;
  v23 = *MEMORY[0x277CD2D48];
  do
  {
    v24 = &v38[2 * v20];
    v25 = *v24;
    v26 = v24[1];
    ResizedCGImage = itk_createResizedCGImage(v11, *v24, v26);
    v28 = 0;
    while (1)
    {
      v29 = [MEMORY[0x277CCABB0] numberWithDouble:*&qword_254C2B388[v28]];
      [v13 setObject:v29 forKeyedSubscript:v23];

      v30 = [v37 uti];
      v31 = itk_dataFromCGImage(ResizedCGImage, v30, v13);

      v32 = [v31 length];
      if (v32 <= [v37 maxDataLength])
      {
        break;
      }

      if (++v28 == 3)
      {
        CGImageRelease(ResizedCGImage);
        goto LABEL_19;
      }
    }

    CGImageRelease(ResizedCGImage);
    Height = v26;
    Width = v25;
    if (v31)
    {
      goto LABEL_21;
    }

LABEL_19:
    ++v20;
  }

  while (v20 != 3);
  v31 = 0;
  v25 = Width;
  v26 = Height;
LABEL_21:
  v36[2](v36, v31, v25, v26);
}

+ (id)itk_fileIconForURL:()ITKUtilities withPreferredSize:
{
  if (!a5)
  {
    v9 = 0;
    goto LABEL_33;
  }

  v7 = [MEMORY[0x277CC1EB8] documentProxyForURL:a5 isContentManaged:0 sourceAuditToken:0];
  v8 = [MEMORY[0x277D755B8] _iconForResourceProxy:v7 format:3];
  v9 = v8;
  if (!v8 || ([v8 size], v10 < a1) || (objc_msgSend(v9, "size"), v11 < a2))
  {
    v12 = [MEMORY[0x277D755B8] _iconForResourceProxy:v7 format:6];
    if (v12)
    {
      v13 = v12;
      if (!v9 || ([v12 size], v15 = v14, objc_msgSend(v9, "size"), v15 > v16) && (objc_msgSend(v13, "size"), v18 = v17, objc_msgSend(v9, "size"), v18 > v19))
      {
        v20 = v13;

        v9 = v20;
      }
    }

    else if (!v9)
    {
      v23 = 1;
      goto LABEL_16;
    }
  }

  [v9 size];
  if (v21 >= a1)
  {
    [v9 size];
    if (v22 >= a2)
    {
      goto LABEL_22;
    }
  }

  v23 = 0;
LABEL_16:
  v24 = [MEMORY[0x277D755B8] _iconForResourceProxy:v7 format:4];
  v25 = v24;
  if (v24 && ((v23 & 1) != 0 || ([v24 size], v27 = v26, objc_msgSend(v9, "size"), v27 > v28) && (objc_msgSend(v25, "size"), v30 = v29, objc_msgSend(v9, "size"), v30 > v31)))
  {

    v9 = v25;
  }

  else
  {

    if (!v9)
    {
      v34 = 1;
LABEL_26:
      v35 = [MEMORY[0x277D755B8] _iconForResourceProxy:v7 format:7];
      v36 = v35;
      if (v35)
      {
        if ((v34 & 1) != 0 || ([v35 size], v39 = v38, objc_msgSend(v9, "size"), v39 > v40) && (objc_msgSend(v36, "size"), v42 = v41, objc_msgSend(v9, "size"), v42 > v43))
        {
          v37 = v36;

          v9 = v37;
        }
      }

      goto LABEL_32;
    }
  }

LABEL_22:
  [v9 size];
  if (v32 < a1 || ([v9 size], v33 < a2))
  {
    v34 = 0;
    goto LABEL_26;
  }

LABEL_32:

LABEL_33:

  return v9;
}

- (void)itk_decodeWithCompletion:()ITKUtilities
{
  v4 = itk_decodeWithCompletion__onceToken;
  v5 = a3;
  if (v4 != -1)
  {
    [UIImage(ITKUtilities) itk_decodeWithCompletion:];
  }

  v6 = [v5 copy];

  v7 = MEMORY[0x277CCA8C8];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __50__UIImage_ITKUtilities__itk_decodeWithCompletion___block_invoke_2;
  v13 = &unk_2797B04E8;
  v14 = a1;
  v15 = v6;
  v8 = v6;
  v9 = [v7 blockOperationWithBlock:&v10];
  [itk_decodeWithCompletion__drawingDecodingOperationQueue addOperation:{v9, v10, v11, v12, v13, v14}];
}

- (id)itk_decodeInBackground
{
  v2 = [a1 imageRendererFormat];
  [a1 scale];
  [v2 setScale:?];
  v3 = objc_alloc(MEMORY[0x277D75560]);
  [a1 size];
  v4 = [v3 initWithSize:v2 format:?];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__UIImage_ITKUtilities__itk_decodeInBackground__block_invoke;
  v7[3] = &unk_2797B0510;
  v7[4] = a1;
  v5 = [v4 imageWithActions:v7];

  return v5;
}

+ (id)itk_imageWithColor:()ITKUtilities size:
{
  v7 = a5;
  v13.width = a1;
  v13.height = a2;
  UIGraphicsBeginImageContext(v13);
  CurrentContext = UIGraphicsGetCurrentContext();
  v9 = [v7 CGColor];

  CGContextSetFillColorWithColor(CurrentContext, v9);
  v14.origin.x = 0.0;
  v14.origin.y = 0.0;
  v14.size.width = a1;
  v14.size.height = a2;
  CGContextFillRect(CurrentContext, v14);
  v10 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v10;
}

+ (double)itk_aspectFitImageFrameForViewWithFrame:()ITKUtilities imageSize:
{
  v11 = 0;
  v12 = 0;
  v13 = CGRectGetWidth(*(&a3 - 2)) / a5;
  v19.origin.x = 0.0;
  v19.origin.y = 0.0;
  v19.size.width = a3;
  v19.size.height = a4;
  v14 = CGRectGetHeight(v19) / a6;
  v15 = a5 * fminf(v13, v14);
  v20.origin.x = 0.0;
  v20.origin.y = 0.0;
  v20.size.width = a3;
  v20.size.height = a4;
  v16 = (CGRectGetWidth(v20) - v15) * 0.5;
  v17 = roundf(v16);
  v21.origin.x = 0.0;
  v21.origin.y = 0.0;
  v21.size.width = a3;
  v21.size.height = a4;
  CGRectGetHeight(v21);
  return a1 + v17;
}

- (void)itk_cropRectZeroAlpha
{
  v2 = [a1 itk_cgImage];
  v3 = itk_newARGB8BitmapContextFromImage(v2);
  if (v3)
  {
    v4 = v3;
    Width = CGImageGetWidth(v2);
    Height = CGImageGetHeight(v2);
    v21.size.height = Height;
    v21.origin.x = 0.0;
    v21.origin.y = 0.0;
    v21.size.width = Width;
    CGContextDrawImage(v4, v21, v2);
    Data = CGBitmapContextGetData(v4);
    if (Data)
    {
      if (Height)
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = Height;
        v12 = Width;
        do
        {
          if (Width)
          {
            v13 = 0;
            v14 = Data;
            do
            {
              v16 = *v14;
              v14 += 4;
              v15 = v16;
              if (v12 >= v13)
              {
                v17 = v13;
              }

              else
              {
                v17 = v12;
              }

              if (v10 <= v13)
              {
                v18 = v13;
              }

              else
              {
                v18 = v10;
              }

              if (v11 >= v8)
              {
                v19 = v8;
              }

              else
              {
                v19 = v11;
              }

              if (v9 <= v8)
              {
                v20 = v8;
              }

              else
              {
                v20 = v9;
              }

              if (v15)
              {
                v12 = v17;
                v11 = v19;
                v10 = v18;
                v9 = v20;
              }

              ++v13;
            }

            while (Width != v13);
            Data += 4 * Width;
          }

          ++v8;
        }

        while (v8 != Height);
      }

      CGContextRelease(v4);
      [a1 scale];
    }

    else
    {
      CGContextRelease(v4);
    }
  }
}

@end