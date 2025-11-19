@interface UIImage(Utilities)
+ (double)ic_aspectFitImageFrameForViewWithFrame:()Utilities imageSize:;
+ (id)ic_UIImageFromCIImage:()Utilities;
+ (id)ic_fileIconForURL:()Utilities withPreferredSize:;
+ (id)ic_imageNamed:()Utilities withTint:;
+ (id)ic_imageNamed:()Utilities withTint:size:;
+ (id)ic_imageWithColor:()Utilities size:;
+ (id)ic_imageWithContentsOfURL:()Utilities;
+ (id)ic_orientationMetadataFromImageOrientation:()Utilities;
+ (id)ic_orientedImageFromCGImage:()Utilities scale:transform:;
+ (id)ic_orientedImageFromImage:()Utilities fromOrientation:;
+ (id)ic_orientedImageFromImage:()Utilities toOrientation:;
+ (id)ic_symbolGraphicNamed:()Utilities size:symbolColor:backgroundColor:;
+ (id)ic_symbolsNeedingPrivateCatalog;
+ (id)ic_symbolsNeedingUIAsset;
+ (id)ic_systemImageNamed:()Utilities;
+ (id)ic_systemImageNamed:()Utilities usePrivateCatalog:;
+ (id)ic_systemImageNamed:()Utilities withConfiguration:;
+ (void)ic_cacheSystemImages;
- (CGContextRef)ic_newARGB8BitmapContextFromImage:()Utilities;
- (id)ic_JPEGDataWithOrientation:()Utilities;
- (id)ic_PDFData;
- (id)ic_PNGData;
- (id)ic_PNGDataWithOrientation:()Utilities;
- (id)ic_decodeInBackground;
- (id)ic_imageCenteredWithBackgroundColor:()Utilities size:cornerRadius:;
- (id)ic_imageDataWithUTType:()Utilities;
- (id)ic_imageDataWithUTType:()Utilities metadata:;
- (id)ic_imageFromRect:()Utilities;
- (id)ic_imageWithBackgroundColor:()Utilities;
- (id)ic_imageWithTint:()Utilities;
- (id)ic_imageWithTint:()Utilities size:;
- (id)ic_scaledImageWithSize:()Utilities scale:;
- (uint64_t)ic_CGImage;
- (uint64_t)ic_JPEGData;
- (uint64_t)ic_horizontallyMirroredImage;
- (uint64_t)ic_scaledImageMaxDimension:()Utilities scale:;
- (uint64_t)ic_scaledImageMinDimension:()Utilities scale:;
- (void)ic_cropRectZeroAlpha;
- (void)ic_decodeWithCompletion:()Utilities;
@end

@implementation UIImage(Utilities)

+ (void)ic_cacheSystemImages
{
  v14 = *MEMORY[0x1E69E9840];
  if (ic_systemImageCache)
  {
    v0 = MEMORY[0x1E69B7A38];

    [v0 handleFailedAssertWithCondition:"__objc_no" functionName:"+[UIImage(Utilities) ic_cacheSystemImages]" simulateCrash:1 showAlert:0 format:@"ic_cacheSystemImages should only be called once at launch"];
  }

  else
  {
    if ([MEMORY[0x1E696AF00] isMainThread])
    {
      [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"![NSThread isMainThread]" functionName:"+[UIImage(Utilities) ic_cacheSystemImages]" simulateCrash:1 showAlert:0 format:@"Unexpected call from main thread"];
    }

    v1 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v2 = [&unk_1F4FC3A38 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v2)
    {
      v3 = v2;
      v4 = *v10;
      do
      {
        for (i = 0; i != v3; ++i)
        {
          if (*v10 != v4)
          {
            objc_enumerationMutation(&unk_1F4FC3A38);
          }

          v6 = *(*(&v9 + 1) + 8 * i);
          v7 = [MEMORY[0x1E69DCAB8] ic_systemImageNamed:v6];
          [v1 setObject:v7 forKey:v6];
        }

        v3 = [&unk_1F4FC3A38 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v3);
    }

    v8 = ic_systemImageCache;
    ic_systemImageCache = v1;
  }
}

+ (id)ic_symbolsNeedingUIAsset
{
  if (ic_symbolsNeedingUIAsset_token != -1)
  {
    +[UIImage(Utilities) ic_symbolsNeedingUIAsset];
  }

  v1 = ic_symbolsNeedingUIAsset_symbolsNeedingUIAsset;

  return v1;
}

+ (id)ic_symbolsNeedingPrivateCatalog
{
  if (ic_symbolsNeedingPrivateCatalog_token != -1)
  {
    +[UIImage(Utilities) ic_symbolsNeedingPrivateCatalog];
  }

  v1 = ic_symbolsNeedingPrivateCatalog_symbolsNeedingPrivateCatalog;

  return v1;
}

- (id)ic_decodeInBackground
{
  v2 = [a1 imageRendererFormat];
  [a1 scale];
  [v2 setScale:?];
  [v2 setPreferredRange:0];
  v3 = objc_alloc(MEMORY[0x1E69DCA78]);
  [a1 size];
  v4 = [v3 initWithSize:v2 format:?];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__UIImage_Utilities__ic_decodeInBackground__block_invoke;
  v7[3] = &unk_1E8468D20;
  v7[4] = a1;
  v5 = [v4 imageWithActions:v7];

  return v5;
}

- (uint64_t)ic_CGImage
{
  v1 = a1;

  return [v1 CGImage];
}

+ (id)ic_imageWithContentsOfURL:()Utilities
{
  v3 = MEMORY[0x1E69DCAB8];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v4 path];

  v7 = [v5 initWithContentsOfFile:v6];

  return v7;
}

+ (id)ic_imageNamed:()Utilities withTint:
{
  v5 = MEMORY[0x1E69DCAB8];
  v6 = a4;
  v7 = [v5 imageNamed:a3];
  v8 = [v7 ic_imageWithTint:v6];

  return v8;
}

+ (id)ic_imageNamed:()Utilities withTint:size:
{
  v9 = MEMORY[0x1E69DCAB8];
  v10 = a6;
  v11 = [v9 imageNamed:a5];
  v12 = [v11 ic_imageWithTint:v10 size:{a1, a2}];

  return v12;
}

+ (id)ic_systemImageNamed:()Utilities
{
  v4 = a3;
  v5 = [ic_systemImageCache objectForKey:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = [a1 ic_symbolsNeedingUIAsset];
    v9 = [v8 containsObject:v4];

    if (v9)
    {
      v10 = MEMORY[0x1E696AAE8];
      v11 = ICUIFrameworkBundleIdentifier();
      v12 = [v10 bundleWithIdentifier:v11];

      v13 = [MEMORY[0x1E69DCAB8] imageNamed:v4 inBundle:v12];

      goto LABEL_7;
    }

    v14 = [a1 ic_symbolsNeedingPrivateCatalog];
    v15 = [v14 containsObject:v4];

    v7 = [a1 ic_systemImageNamed:v4 usePrivateCatalog:v15];
  }

  v13 = v7;
LABEL_7:

  return v13;
}

+ (id)ic_systemImageNamed:()Utilities withConfiguration:
{
  v6 = a3;
  v7 = a4;
  v8 = [ic_systemImageCache objectForKey:v6];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
LABEL_3:
    v11 = v10;
    goto LABEL_4;
  }

  v13 = [a1 ic_symbolsNeedingUIAsset];
  v14 = [v13 containsObject:v6];

  if (!v14)
  {
    v18 = [a1 ic_symbolsNeedingPrivateCatalog];
    v19 = [v18 containsObject:v6];

    if (v19)
    {
      [MEMORY[0x1E69DCAB8] _systemImageNamed:v6 withConfiguration:v7];
    }

    else
    {
      [MEMORY[0x1E69DCAB8] systemImageNamed:v6 withConfiguration:v7];
    }
    v10 = ;
    goto LABEL_3;
  }

  v15 = MEMORY[0x1E696AAE8];
  v16 = ICUIFrameworkBundleIdentifier();
  v17 = [v15 bundleWithIdentifier:v16];

  v11 = [MEMORY[0x1E69DCAB8] imageNamed:v6 inBundle:v17];

LABEL_4:

  return v11;
}

+ (id)ic_systemImageNamed:()Utilities usePrivateCatalog:
{
  if (a4)
  {
    [MEMORY[0x1E69DCAB8] _systemImageNamed:?];
  }

  else
  {
    [MEMORY[0x1E69DCAB8] systemImageNamed:?];
  }
  v4 = ;

  return v4;
}

+ (id)ic_symbolGraphicNamed:()Utilities size:symbolColor:backgroundColor:
{
  v26[1] = *MEMORY[0x1E69E9840];
  v11 = a6;
  v12 = a7;
  v13 = MEMORY[0x1E69A89B0];
  v14 = a5;
  v15 = [[v13 alloc] initWithSymbolName:v14 bundleURL:0];

  if (v11)
  {
    v16 = [objc_alloc(MEMORY[0x1E69A8968]) initWithCGColor:{objc_msgSend(v11, "CGColor")}];
    if (v12)
    {
LABEL_3:
      v17 = [objc_alloc(MEMORY[0x1E69A8968]) initWithCGColor:{objc_msgSend(v12, "CGColor")}];
      goto LABEL_6;
    }
  }

  else
  {
    v16 = 0;
    if (v12)
    {
      goto LABEL_3;
    }
  }

  v17 = 0;
LABEL_6:
  v18 = objc_alloc_init(MEMORY[0x1E69A8970]);
  [v18 setSize:{a1, a2}];
  if (v16)
  {
    v26[0] = v16;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
    [v18 setSymbolColors:v19];
  }

  if (v17)
  {
    v25 = v17;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
    [v18 setEnclosureColors:v20];
  }

  [v18 setRenderingMode:3];
  v21 = [v15 imageForGraphicSymbolDescriptor:v18];
  v22 = [v21 CGImage];
  v23 = [MEMORY[0x1E69DCAB8] imageWithCGImage:v22 scale:0 orientation:CGImageGetWidth(v22) / a1];

  return v23;
}

- (id)ic_imageWithTint:()Utilities
{
  v4 = a3;
  [a1 size];
  v5 = [a1 ic_imageWithTint:v4 size:?];

  return v5;
}

- (id)ic_imageWithTint:()Utilities size:
{
  v8 = a5;
  v9 = [MEMORY[0x1E69DCA80] defaultFormat];
  v10 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v10 scale];
  [v9 setScale:?];

  v11 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:v9 format:{a2, a3}];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __44__UIImage_Utilities__ic_imageWithTint_size___block_invoke;
  v15[3] = &unk_1E8468C58;
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

- (uint64_t)ic_scaledImageMinDimension:()Utilities scale:
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

  return [a1 ic_scaledImageWithSize:v10 scale:{v11, a3}];
}

- (uint64_t)ic_scaledImageMaxDimension:()Utilities scale:
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

  return [a1 ic_scaledImageWithSize:v10 scale:{v11, a3}];
}

- (id)ic_scaledImageWithSize:()Utilities scale:
{
  if (_UIApplicationIsExtension())
  {
    v8 = [a1 imageByPreparingThumbnailOfSize:{a2, a3}];
  }

  else
  {
    v9 = [a1 imageRendererFormat];
    [v9 setScale:a4];
    v10 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:v9 format:{a2, a3}];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __51__UIImage_Utilities__ic_scaledImageWithSize_scale___block_invoke;
    v12[3] = &unk_1E8468C80;
    v12[4] = a1;
    *&v12[5] = a2;
    *&v12[6] = a3;
    v8 = [v10 imageWithActions:v12];
  }

  return v8;
}

- (id)ic_imageFromRect:()Utilities
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

  v15 = [a1 ic_CGImage];
  v22.origin.x = a2;
  v22.origin.y = a3;
  v22.size.width = a4;
  v22.size.height = a5;
  v16 = CGImageCreateWithImageInRect(v15, v22);
  v17 = MEMORY[0x1E69DCAB8];
  [a1 scale];
  v19 = [v17 imageWithCGImage:v16 scale:objc_msgSend(a1 orientation:{"imageOrientation"), v18}];
  CGImageRelease(v16);

  return v19;
}

- (id)ic_imageWithBackgroundColor:()Utilities
{
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x1E69DCA78]);
  [a1 size];
  v6 = [v5 initWithSize:?];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __50__UIImage_Utilities__ic_imageWithBackgroundColor___block_invoke;
  v10[3] = &unk_1E8468BC8;
  v11 = v4;
  v12 = a1;
  v7 = v4;
  v8 = [v6 imageWithActions:v10];

  return v8;
}

+ (id)ic_UIImageFromCIImage:()Utilities
{
  v3 = a3;
  [v3 extent];
  v5 = v4;
  v7 = v6;
  v14.width = v4;
  v14.height = v6;
  UIGraphicsBeginImageContext(v14);
  v8 = *MEMORY[0x1E695EFF8];
  v9 = *(MEMORY[0x1E695EFF8] + 8);
  v10 = [MEMORY[0x1E69DCAB8] imageWithCIImage:v3];

  [v10 drawInRect:{v8, v9, v5, v7}];
  v11 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v11;
}

+ (id)ic_orientedImageFromCGImage:()Utilities scale:transform:
{
  v8 = a5[1];
  *&v27.a = *a5;
  *&v27.c = v8;
  *&v27.tx = a5[2];
  CGAffineTransformInvert(&transform, &v27);
  v9 = *&transform.c;
  *a5 = *&transform.a;
  a5[1] = v9;
  a5[2] = *&transform.tx;
  v10 = *MEMORY[0x1E695EFF8];
  v11 = *(MEMORY[0x1E695EFF8] + 8);
  Width = CGImageGetWidth(a4);
  Height = CGImageGetHeight(a4);
  v14 = a5[1];
  *&transform.a = *a5;
  *&transform.c = v14;
  *&transform.tx = a5[2];
  v15 = v10;
  *&v14 = v11;
  v16 = Width;
  v17 = Height;
  v30 = CGRectApplyAffineTransform(*(&v14 - 8), &transform);
  x = v30.origin.x;
  y = v30.origin.y;
  v20 = TSUCreateRGBABitmapContext();
  if (!v20 || (v21 = v20, CGContextTranslateCTM(v20, -x, -y), v22 = a5[1], *&transform.a = *a5, *&transform.c = v22, *&transform.tx = a5[2], CGContextConcatCTM(v21, &transform), v31.origin.x = v10, v31.origin.y = v11, v31.size.width = Width, v31.size.height = Height, CGContextDrawImage(v21, v31, a4), Image = CGBitmapContextCreateImage(v21), CGContextRelease(v21), !Image) || ([MEMORY[0x1E69DCAB8] ic_imageWithCGImage:Image scale:0 orientation:a1], v24 = objc_claimAutoreleasedReturnValue(), CGImageRelease(Image), !v24))
  {
    v25 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [UIImage(Utilities) ic_orientedImageFromCGImage:v25 scale:? transform:?];
    }

    v24 = [MEMORY[0x1E69DCAB8] ic_imageWithCGImage:a4];
  }

  return v24;
}

+ (id)ic_orientedImageFromImage:()Utilities fromOrientation:
{
  v3 = [a3 ic_CGImage];
  CGImageGetWidth(v3);
  CGImageGetHeight(v3);
  ICTransformFromImageOrientation();
  memset(v6, 0, sizeof(v6));
  v4 = [MEMORY[0x1E69DCAB8] ic_orientedImageFromCGImage:v3 scale:v6 transform:1.0];

  return v4;
}

+ (id)ic_orientedImageFromImage:()Utilities toOrientation:
{
  v3 = [a3 ic_CGImage];
  CGImageGetWidth(v3);
  CGImageGetHeight(v3);
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  ICTransformFromImageOrientation();
  v4 = MEMORY[0x1E69DCAB8];
  memset(&v7, 0, sizeof(v7));
  CGAffineTransformInvert(&v8, &v7);
  v5 = [v4 ic_orientedImageFromCGImage:v3 scale:&v8 transform:1.0];

  return v5;
}

- (uint64_t)ic_horizontallyMirroredImage
{
  v2 = MEMORY[0x1E69DCAB8];
  v3 = [a1 ic_CGImage];
  [a1 scale];

  return [v2 imageWithCGImage:v3 scale:4 orientation:?];
}

- (id)ic_imageCenteredWithBackgroundColor:()Utilities size:cornerRadius:
{
  v10 = a6;
  v11 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:{a2, a3}];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __76__UIImage_Utilities__ic_imageCenteredWithBackgroundColor_size_cornerRadius___block_invoke;
  v15[3] = &unk_1E8468CA8;
  v18 = a2;
  v19 = a3;
  v20 = a4;
  v16 = v10;
  v17 = a1;
  v12 = v10;
  v13 = [v11 imageWithActions:v15];

  return v13;
}

+ (id)ic_orientationMetadataFromImageOrientation:()Utilities
{
  v8[1] = *MEMORY[0x1E69E9840];
  if ((a3 - 1) > 6)
  {
    v3 = 1;
  }

  else
  {
    v3 = dword_1D4433F90[a3 - 1];
  }

  v7 = @"Orientation";
  v4 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  v8[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  return v5;
}

- (uint64_t)ic_JPEGData
{
  v2 = [a1 ic_imageOrientation];

  return [a1 ic_JPEGDataWithOrientation:v2];
}

- (id)ic_JPEGDataWithOrientation:()Utilities
{
  v5 = [*MEMORY[0x1E6982E58] identifier];
  v6 = [objc_opt_class() ic_orientationMetadataFromImageOrientation:a3];
  v7 = [a1 ic_imageDataWithUTType:v5 metadata:v6];

  return v7;
}

- (id)ic_PNGData
{
  v2 = [*MEMORY[0x1E6982F28] identifier];
  v3 = [a1 ic_imageDataWithUTType:v2 metadata:0];

  return v3;
}

- (id)ic_PNGDataWithOrientation:()Utilities
{
  v5 = [*MEMORY[0x1E6982F28] identifier];
  v6 = [objc_opt_class() ic_orientationMetadataFromImageOrientation:a3];
  v7 = [a1 ic_imageDataWithUTType:v5 metadata:v6];

  return v7;
}

- (id)ic_PDFData
{
  v2 = objc_alloc_init(MEMORY[0x1E6978028]);
  v3 = [objc_alloc(MEMORY[0x1E6978038]) initWithImage:a1];
  [v2 insertPage:v3 atIndex:0];
  v4 = [v2 dataRepresentation];

  return v4;
}

- (id)ic_imageDataWithUTType:()Utilities
{
  v4 = a3;
  v5 = [*MEMORY[0x1E6982E58] identifier];
  v6 = [v4 isEqualToString:v5];

  if (v6)
  {
    v7 = [objc_opt_class() ic_orientationMetadataFromImageOrientation:{objc_msgSend(a1, "ic_imageOrientation")}];
  }

  else
  {
    v7 = 0;
  }

  v8 = [a1 ic_imageDataWithUTType:v4 metadata:v7];

  return v8;
}

- (id)ic_imageDataWithUTType:()Utilities metadata:
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x1E695DF88]);
  v9 = CGImageDestinationCreateWithData(v8, v6, 1uLL, 0);
  if (v9)
  {
    v10 = v9;
    CGImageDestinationAddImage(v9, [a1 ic_CGImage], v7);
    if (CGImageDestinationFinalize(v10))
    {
      CFRelease(v10);
      v11 = [(__CFData *)v8 copy];
      goto LABEL_11;
    }

    v13 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [UIImage(Utilities) ic_imageDataWithUTType:v6 metadata:v13];
    }

    CFRelease(v10);
  }

  else
  {
    v12 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [UIImage(Utilities) ic_imageDataWithUTType:v12 metadata:?];
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

+ (id)ic_fileIconForURL:()Utilities withPreferredSize:
{
  if (!a5)
  {
    v9 = 0;
    goto LABEL_33;
  }

  v7 = [MEMORY[0x1E6963658] documentProxyForURL:a5 isContentManaged:0 sourceAuditToken:0];
  v8 = [MEMORY[0x1E69DCAB8] _iconForResourceProxy:v7 format:3];
  v9 = v8;
  if (!v8 || ([v8 size], v10 < a1) || (objc_msgSend(v9, "size"), v11 < a2))
  {
    v12 = [MEMORY[0x1E69DCAB8] _iconForResourceProxy:v7 format:6];
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
  v24 = [MEMORY[0x1E69DCAB8] _iconForResourceProxy:v7 format:4];
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
      v35 = [MEMORY[0x1E69DCAB8] _iconForResourceProxy:v7 format:7];
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

- (void)ic_decodeWithCompletion:()Utilities
{
  v4 = ic_decodeWithCompletion__onceToken;
  v5 = a3;
  if (v4 != -1)
  {
    [UIImage(Utilities) ic_decodeWithCompletion:];
  }

  v6 = [v5 copy];

  v7 = MEMORY[0x1E696AAE0];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __46__UIImage_Utilities__ic_decodeWithCompletion___block_invoke_2;
  v13 = &unk_1E8468CF8;
  v14 = a1;
  v15 = v6;
  v8 = v6;
  v9 = [v7 blockOperationWithBlock:&v10];
  [ic_decodeWithCompletion__drawingDecodingOperationQueue addOperation:{v9, v10, v11, v12, v13, v14}];
}

+ (id)ic_imageWithColor:()Utilities size:
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

+ (double)ic_aspectFitImageFrameForViewWithFrame:()Utilities imageSize:
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

- (void)ic_cropRectZeroAlpha
{
  v2 = [a1 ic_CGImage];
  v3 = [a1 ic_newARGB8BitmapContextFromImage:v2];
  if (v3)
  {
    v4 = v3;
    Width = CGImageGetWidth(v2);
    Height = CGImageGetHeight(v2);
    v22.size.height = Height;
    v22.origin.x = 0.0;
    v22.origin.y = 0.0;
    v22.size.width = Width;
    CGContextDrawImage(v4, v22, v2);
    Data = CGBitmapContextGetData(v4);
    CGContextRelease(v4);
    if (Data)
    {
      if (Height)
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = Data;
        v12 = Height;
        v13 = Width;
        do
        {
          if (Width)
          {
            v14 = 0;
            v15 = v11;
            do
            {
              v17 = *v15;
              v15 += 4;
              v16 = v17;
              if (v13 >= v14)
              {
                v18 = v14;
              }

              else
              {
                v18 = v13;
              }

              if (v10 <= v14)
              {
                v19 = v14;
              }

              else
              {
                v19 = v10;
              }

              if (v12 >= v8)
              {
                v20 = v8;
              }

              else
              {
                v20 = v12;
              }

              if (v9 <= v8)
              {
                v21 = v8;
              }

              else
              {
                v21 = v9;
              }

              if (v16)
              {
                v13 = v18;
                v12 = v20;
                v10 = v19;
                v9 = v21;
              }

              ++v14;
            }

            while (Width != v14);
            v11 += 4 * Width;
          }

          ++v8;
        }

        while (v8 != Height);
      }

      free(Data);
      [a1 scale];
    }
  }
}

- (CGContextRef)ic_newARGB8BitmapContextFromImage:()Utilities
{
  Width = CGImageGetWidth(image);
  Height = CGImageGetHeight(image);
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  if (!DeviceRGB)
  {
    return 0;
  }

  v7 = DeviceRGB;
  v8 = malloc_type_malloc(4 * Width * Height, 0x624C393BuLL);
  if (v8)
  {
    v9 = v8;
    v10 = CGBitmapContextCreate(v8, Width, Height, 8uLL, 4 * Width, v7, 2u);
    if (!v10)
    {
      free(v9);
    }
  }

  else
  {
    v10 = 0;
  }

  CGColorSpaceRelease(v7);
  return v10;
}

- (void)ic_imageDataWithUTType:()Utilities metadata:.cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = 136315394;
  v3 = "[UIImage(Utilities) ic_imageDataWithUTType:metadata:]";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&dword_1D4171000, a2, OS_LOG_TYPE_ERROR, "%s -- Failed to finalize image with type '%@'.", &v2, 0x16u);
}

@end