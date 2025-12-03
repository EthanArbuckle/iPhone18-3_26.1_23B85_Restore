@interface UIImage(DCUtilities)
+ (double)dc_aspectFitImageFrameForViewWithFrame:()DCUtilities imageSize:;
+ (id)dc_orientationMetadataFromImageOrientation:()DCUtilities;
+ (id)dc_orientedImageFromCGImage:()DCUtilities scale:transform:;
+ (id)dc_orientedImageFromImage:()DCUtilities fromOrientation:;
+ (id)dc_orientedImageFromImage:()DCUtilities toOrientation:;
+ (id)dc_systemImageNamed:()DCUtilities fromFont:;
+ (id)dc_systemImageNamed:()DCUtilities fromFont:scale:;
+ (id)dc_systemImageNamed:()DCUtilities scale:;
+ (id)dc_systemImageNamed:()DCUtilities textStyle:;
+ (id)dc_systemImageNamed:()DCUtilities textStyle:scale:;
- (id)dc_JPEGDataWithOrientation:()DCUtilities;
- (id)dc_imageDataWithUTType:()DCUtilities;
- (id)dc_imageDataWithUTType:()DCUtilities metadata:;
- (id)dc_imageWithFont:()DCUtilities;
- (id)dc_imageWithFont:()DCUtilities scale:;
- (id)dc_imageWithScale:()DCUtilities;
- (id)dc_imageWithTextStyle:()DCUtilities;
- (id)dc_imageWithTextStyle:()DCUtilities scale:;
- (id)dc_scaledImageWithSize:()DCUtilities scale:;
- (uint64_t)dc_CGImage;
- (uint64_t)dc_JPEGData;
- (uint64_t)dc_scaledImageMaxDimension:()DCUtilities scale:;
- (uint64_t)dc_scaledImageMinDimension:()DCUtilities scale:;
@end

@implementation UIImage(DCUtilities)

- (uint64_t)dc_CGImage
{
  selfCopy = self;

  return [selfCopy CGImage];
}

- (uint64_t)dc_scaledImageMinDimension:()DCUtilities scale:
{
  [self size];
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

  return [self dc_scaledImageWithSize:v10 scale:{v11, a3}];
}

- (uint64_t)dc_scaledImageMaxDimension:()DCUtilities scale:
{
  [self size];
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

  return [self dc_scaledImageWithSize:v10 scale:{v11, a3}];
}

- (id)dc_scaledImageWithSize:()DCUtilities scale:
{
  imageRendererFormat = [self imageRendererFormat];
  [imageRendererFormat setScale:a4];
  v9 = [objc_alloc(MEMORY[0x277D75560]) initWithSize:imageRendererFormat format:{a2, a3}];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __53__UIImage_DCUtilities__dc_scaledImageWithSize_scale___block_invoke;
  v12[3] = &unk_278F930B0;
  v12[4] = self;
  *&v12[5] = a2;
  *&v12[6] = a3;
  v10 = [v9 imageWithActions:v12];

  return v10;
}

+ (id)dc_orientedImageFromCGImage:()DCUtilities scale:transform:
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
  v10 = *MEMORY[0x277CBF348];
  v11 = *(MEMORY[0x277CBF348] + 8);
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
  v20 = DCTSUCreateRGBABitmapContext(0, v30.size.width, v30.size.height, self);
  if (!v20 || (v21 = v20, CGContextTranslateCTM(v20, -x, -y), v22 = a5[1], *&transform.a = *a5, *&transform.c = v22, *&transform.tx = a5[2], CGContextConcatCTM(v21, &transform), v31.origin.x = v10, v31.origin.y = v11, v31.size.width = Width, v31.size.height = Height, CGContextDrawImage(v21, v31, a4), Image = CGBitmapContextCreateImage(v21), CGContextRelease(v21), !Image) || ([MEMORY[0x277D755B8] dc_imageWithCGImage:Image scale:0 orientation:self], v24 = objc_claimAutoreleasedReturnValue(), CGImageRelease(Image), !v24))
  {
    v25 = os_log_create("com.apple.documentcamera", "");
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [UIImage(DCUtilities) dc_orientedImageFromCGImage:v25 scale:? transform:?];
    }

    v24 = [MEMORY[0x277D755B8] dc_imageWithCGImage:a4];
  }

  return v24;
}

+ (id)dc_orientedImageFromImage:()DCUtilities fromOrientation:
{
  dc_CGImage = [a3 dc_CGImage];
  Width = CGImageGetWidth(dc_CGImage);
  Height = CGImageGetHeight(dc_CGImage);
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  DCTransformFromImageOrientation(a4, &v11, Width, Height);
  v10[0] = v11;
  v10[1] = v12;
  v10[2] = v13;
  v8 = [MEMORY[0x277D755B8] dc_orientedImageFromCGImage:dc_CGImage scale:v10 transform:1.0];

  return v8;
}

+ (id)dc_orientedImageFromImage:()DCUtilities toOrientation:
{
  dc_CGImage = [a3 dc_CGImage];
  Width = CGImageGetWidth(dc_CGImage);
  Height = CGImageGetHeight(dc_CGImage);
  memset(&v13, 0, sizeof(v13));
  DCTransformFromImageOrientation(a4, &v13, Width, Height);
  v8 = MEMORY[0x277D755B8];
  v11 = v13;
  CGAffineTransformInvert(&v12, &v11);
  v9 = [v8 dc_orientedImageFromCGImage:dc_CGImage scale:&v12 transform:1.0];

  return v9;
}

+ (id)dc_orientationMetadataFromImageOrientation:()DCUtilities
{
  v8[1] = *MEMORY[0x277D85DE8];
  if ((a3 - 1) > 6)
  {
    v3 = 1;
  }

  else
  {
    v3 = dword_2492F7718[a3 - 1];
  }

  v7 = @"Orientation";
  v4 = [MEMORY[0x277CCABB0] numberWithInt:v3];
  v8[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  return v5;
}

- (uint64_t)dc_JPEGData
{
  imageOrientation = [self imageOrientation];

  return [self dc_JPEGDataWithOrientation:imageOrientation];
}

- (id)dc_JPEGDataWithOrientation:()DCUtilities
{
  v4 = *MEMORY[0x277CC20C8];
  v5 = [objc_opt_class() dc_orientationMetadataFromImageOrientation:a3];
  v6 = [self dc_imageDataWithUTType:v4 metadata:v5];

  return v6;
}

- (id)dc_imageDataWithUTType:()DCUtilities
{
  v4 = a3;
  if ([v4 isEqualToString:*MEMORY[0x277CC20C8]])
  {
    v5 = [objc_opt_class() dc_orientationMetadataFromImageOrientation:{objc_msgSend(self, "imageOrientation")}];
  }

  else
  {
    v5 = 0;
  }

  v6 = [self dc_imageDataWithUTType:v4 metadata:v5];

  return v6;
}

- (id)dc_imageDataWithUTType:()DCUtilities metadata:
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x277CBEB28]);
  v9 = CGImageDestinationCreateWithData(v8, v6, 1uLL, 0);
  if (v9)
  {
    v10 = v9;
    CGImageDestinationAddImage(v9, [self CGImage], v7);
    if (CGImageDestinationFinalize(v10))
    {
      CFRelease(v10);
      v11 = [(__CFData *)v8 copy];
      goto LABEL_11;
    }

    v13 = os_log_create("com.apple.documentcamera", "");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [UIImage(DCUtilities) dc_imageDataWithUTType:v6 metadata:v13];
    }

    CFRelease(v10);
  }

  else
  {
    v12 = os_log_create("com.apple.documentcamera", "");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [UIImage(DCUtilities) dc_imageDataWithUTType:v12 metadata:?];
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

+ (double)dc_aspectFitImageFrameForViewWithFrame:()DCUtilities imageSize:
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
  return self + v17;
}

+ (id)dc_systemImageNamed:()DCUtilities textStyle:
{
  v6 = a4;
  v7 = [self systemImageNamed:a3];
  v8 = [v7 dc_imageWithTextStyle:v6];

  if (!v8)
  {
    v9 = os_log_create("com.apple.documentcamera", "");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(UIImage(DCUtilities) *)v9 dc_systemImageNamed:v10 textStyle:v11, v12, v13, v14, v15, v16];
    }
  }

  return v8;
}

+ (id)dc_systemImageNamed:()DCUtilities textStyle:scale:
{
  v8 = a4;
  v9 = [self systemImageNamed:a3];
  v10 = [v9 dc_imageWithTextStyle:v8 scale:a5];

  if (!v10)
  {
    v11 = os_log_create("com.apple.documentcamera", "");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(UIImage(DCUtilities) *)v11 dc_systemImageNamed:v12 textStyle:v13, v14, v15, v16, v17, v18];
    }
  }

  return v10;
}

+ (id)dc_systemImageNamed:()DCUtilities fromFont:
{
  v6 = a4;
  v7 = [self systemImageNamed:a3];
  v8 = [v7 dc_imageWithFont:v6];

  if (!v8)
  {
    v9 = os_log_create("com.apple.documentcamera", "");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(UIImage(DCUtilities) *)v9 dc_systemImageNamed:v10 textStyle:v11, v12, v13, v14, v15, v16];
    }
  }

  return v8;
}

+ (id)dc_systemImageNamed:()DCUtilities scale:
{
  v5 = [self systemImageNamed:?];
  v6 = [v5 dc_imageWithScale:a4];

  if (!v6)
  {
    v7 = os_log_create("com.apple.documentcamera", "");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(UIImage(DCUtilities) *)v7 dc_systemImageNamed:v8 textStyle:v9, v10, v11, v12, v13, v14];
    }
  }

  return v6;
}

+ (id)dc_systemImageNamed:()DCUtilities fromFont:scale:
{
  v8 = a4;
  v9 = [self systemImageNamed:a3];
  v10 = [v9 dc_imageWithFont:v8 scale:a5];

  if (!v10)
  {
    v11 = os_log_create("com.apple.documentcamera", "");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(UIImage(DCUtilities) *)v11 dc_systemImageNamed:v12 textStyle:v13, v14, v15, v16, v17, v18];
    }
  }

  return v10;
}

- (id)dc_imageWithScale:()DCUtilities
{
  v2 = [MEMORY[0x277D755D0] configurationWithScale:?];
  v3 = [self imageWithSymbolConfiguration:v2];

  return v3;
}

- (id)dc_imageWithFont:()DCUtilities
{
  selfCopy = self;
  if (a3)
  {
    v5 = [MEMORY[0x277D755D0] configurationWithFont:a3];
    v6 = [selfCopy imageWithSymbolConfiguration:v5];

    selfCopy = v6;
  }

  else
  {
    v7 = os_log_create("com.apple.documentcamera", "");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(UIImage(DCUtilities) *)v7 dc_imageWithFont:v8, v9, v10, v11, v12, v13, v14];
    }
  }

  return selfCopy;
}

- (id)dc_imageWithFont:()DCUtilities scale:
{
  selfCopy = self;
  if (a3)
  {
    v7 = [MEMORY[0x277D755D0] configurationWithFont:a3 scale:a4];
    v8 = [selfCopy imageWithSymbolConfiguration:v7];

    selfCopy = v8;
  }

  else
  {
    v9 = os_log_create("com.apple.documentcamera", "");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(UIImage(DCUtilities) *)v9 dc_imageWithFont:v10, v11, v12, v13, v14, v15, v16];
    }
  }

  return selfCopy;
}

- (id)dc_imageWithTextStyle:()DCUtilities
{
  v2 = [MEMORY[0x277D755D0] configurationWithTextStyle:?];
  v3 = [self imageWithSymbolConfiguration:v2];

  return v3;
}

- (id)dc_imageWithTextStyle:()DCUtilities scale:
{
  v2 = [MEMORY[0x277D755D0] configurationWithTextStyle:? scale:?];
  v3 = [self imageWithSymbolConfiguration:v2];

  return v3;
}

- (void)dc_imageDataWithUTType:()DCUtilities metadata:.cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "[UIImage(DCUtilities) dc_imageDataWithUTType:metadata:]";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&dword_249253000, a2, OS_LOG_TYPE_ERROR, "%s -- Failed to finalize image with type '%@'.", &v2, 0x16u);
}

@end