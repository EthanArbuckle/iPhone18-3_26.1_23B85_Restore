@interface ICDocCamUtilities
+ (BOOL)shouldPerformCustomAnimationForTransitionCoordinator:(id)coordinator window:(id)window;
+ (CGAffineTransform)transformForOrientation:(SEL)orientation newSize:(id)size;
+ (CGSize)aspectFillSize:(CGSize)size targetSize:(CGSize)targetSize;
+ (CGSize)aspectFitSize:(CGSize)size targetSize:(CGSize)targetSize;
+ (id)buttonFromCopyingValuesFromButton:(id)button;
+ (id)resizedImage:(id)image newSize:(CGSize)size interpolationQuality:(int)quality;
+ (id)resizedImage:(id)image newSize:(CGSize)size transform:(CGAffineTransform *)transform drawTransposed:(BOOL)transposed interpolationQuality:(int)quality;
+ (void)prepareForRotationIfNecessaryWithShutterButton:(id)button coodinator:(id)coodinator;
@end

@implementation ICDocCamUtilities

+ (void)prepareForRotationIfNecessaryWithShutterButton:(id)button coodinator:(id)coodinator
{
  buttonCopy = button;
  coodinatorCopy = coodinator;
  v8 = coodinatorCopy;
  if (buttonCopy)
  {
    if (coodinatorCopy)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v9 = os_log_create("com.apple.documentcamera", "");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [ICDocCamUtilities prepareForRotationIfNecessaryWithShutterButton:v9 coodinator:?];
  }

  if (!v8)
  {
LABEL_7:
    v10 = os_log_create("com.apple.documentcamera", "");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [ICDocCamUtilities prepareForRotationIfNecessaryWithShutterButton:v10 coodinator:?];
    }
  }

LABEL_10:
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  if ([currentDevice userInterfaceIdiom])
  {
  }

  else
  {
    isAnimated = [v8 isAnimated];

    if (isAnimated)
    {
      v46[0] = 0;
      v46[1] = v46;
      v46[2] = 0x3032000000;
      v46[3] = __Block_byref_object_copy__8;
      v46[4] = __Block_byref_object_dispose__8;
      v47 = 0;
      v44[0] = 0;
      v44[1] = v44;
      v44[2] = 0x3032000000;
      v44[3] = __Block_byref_object_copy__8;
      v44[4] = __Block_byref_object_dispose__8;
      v45 = 0;
      v42[0] = 0;
      v42[1] = v42;
      v42[2] = 0x3032000000;
      v42[3] = __Block_byref_object_copy__8;
      v42[4] = __Block_byref_object_dispose__8;
      v43 = 0;
      window = [buttonCopy window];
      window2 = [buttonCopy window];
      [window2 frame];
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v22 = v21;

      v23 = [self shouldPerformCustomAnimationForTransitionCoordinator:v8 window:window];
      v24 = v23;
      if (v23)
      {
        v25 = MEMORY[0x277D75D18];
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __79__ICDocCamUtilities_prepareForRotationIfNecessaryWithShutterButton_coodinator___block_invoke;
        v32[3] = &unk_278F941A0;
        v37 = v16;
        v38 = v18;
        v39 = v20;
        v40 = v22;
        v34 = v42;
        v35 = v44;
        v36 = v46;
        selfCopy = self;
        v33 = buttonCopy;
        [v25 performWithoutAnimation:v32];
      }

      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __79__ICDocCamUtilities_prepareForRotationIfNecessaryWithShutterButton_coodinator___block_invoke_2;
      v27[3] = &unk_278F941C8;
      v31 = v24;
      v28 = buttonCopy;
      v30 = v42;
      v26 = window;
      v29 = v26;
      [v8 animateAlongsideTransition:0 completion:v27];

      _Block_object_dispose(v42, 8);
      _Block_object_dispose(v44, 8);

      _Block_object_dispose(v46, 8);
    }
  }
}

uint64_t __79__ICDocCamUtilities_prepareForRotationIfNecessaryWithShutterButton_coodinator___block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x277D75DA0]) initWithFrame:{*(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88)}];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = objc_alloc_init(ICDocCamNonRotatableViewController);
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  v10 = *(a1 + 80);
  v11 = *(a1 + 88);
  v12 = [*(*(*(a1 + 48) + 8) + 40) view];
  [v12 setFrame:{v8, v9, v10, v11}];

  [*(*(*(a1 + 40) + 8) + 40) setRootViewController:*(*(*(a1 + 48) + 8) + 40)];
  v13 = [*(a1 + 96) buttonFromCopyingValuesFromButton:*(a1 + 32)];
  v14 = *(*(a1 + 56) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;

  v16 = [*(*(*(a1 + 48) + 8) + 40) view];
  [v16 addSubview:*(*(*(a1 + 56) + 8) + 40)];

  [*(*(*(a1 + 40) + 8) + 40) makeKeyAndVisible];
  v17 = *(a1 + 32);

  return [v17 setHidden:1];
}

void __79__ICDocCamUtilities_prepareForRotationIfNecessaryWithShutterButton_coodinator___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    v8 = v1;
    v9 = v2;
    [*(a1 + 32) setHidden:0];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __79__ICDocCamUtilities_prepareForRotationIfNecessaryWithShutterButton_coodinator___block_invoke_3;
    v6[3] = &unk_278F930D8;
    v5 = *(a1 + 40);
    v4 = v5;
    v7 = v5;
    dc_dispatchMainAfterDelay(v6, 0.0);
  }
}

uint64_t __79__ICDocCamUtilities_prepareForRotationIfNecessaryWithShutterButton_coodinator___block_invoke_3(uint64_t a1)
{
  [*(*(*(a1 + 40) + 8) + 40) removeFromSuperview];
  v2 = *(a1 + 32);

  return [v2 makeKeyAndVisible];
}

+ (id)buttonFromCopyingValuesFromButton:(id)button
{
  buttonCopy = button;
  v4 = [ICDocCamShutterButton alloc];
  [buttonCopy frame];
  v5 = [(ICDocCamShutterButton *)v4 initWithFrame:?];
  [(ICDocCamShutterButton *)v5 setUserInteractionEnabled:0];
  isPseudoDisabled = [buttonCopy isPseudoDisabled];

  [(ICDocCamShutterButton *)v5 setPseudoDisabled:isPseudoDisabled];

  return v5;
}

+ (BOOL)shouldPerformCustomAnimationForTransitionCoordinator:(id)coordinator window:(id)window
{
  coordinatorCopy = coordinator;
  v6 = MEMORY[0x277D74248];
  windowCopy = window;
  dc_isRTL = [v6 dc_isRTL];
  windowScene = [windowCopy windowScene];

  interfaceOrientation = [windowScene interfaceOrientation];
  if (coordinatorCopy)
  {
    [coordinatorCopy targetTransform];
  }

  else
  {
    memset(v17, 0, sizeof(v17));
  }

  v11 = DCTSDRotationFromTransform(v17);
  v12 = v11 != 1.57079633;
  if (fabs(v11 + -1.57079633) < 0.00000157079632)
  {
    v12 = 0;
  }

  if ((dc_isRTL | v12) != 1)
  {
    goto LABEL_11;
  }

  v13 = v11 != -1.57079633;
  if (fabs(v11 + 1.57079633) < 0.00000157079632)
  {
    v13 = 0;
  }

  if (!dc_isRTL || v13)
  {
    if (!dc_isRTL)
    {
      LOBYTE(v12) = v13;
    }

    if (v12)
    {
      v15 = 0;
      goto LABEL_13;
    }

    v14 = interfaceOrientation - 3;
  }

  else
  {
LABEL_11:
    v14 = interfaceOrientation - 1;
  }

  v15 = v14 < 2;
LABEL_13:

  return v15;
}

+ (CGSize)aspectFillSize:(CGSize)size targetSize:(CGSize)targetSize
{
  v4 = targetSize.width / size.width;
  v5 = targetSize.height / size.height;
  if (v4 <= v5)
  {
    v4 = v5;
  }

  v6 = size.width * v4;
  v7 = size.height * v4;
  result.height = v7;
  result.width = v6;
  return result;
}

+ (CGSize)aspectFitSize:(CGSize)size targetSize:(CGSize)targetSize
{
  v4 = targetSize.width / size.width;
  v5 = targetSize.height / size.height;
  if (v4 >= v5)
  {
    v4 = v5;
  }

  v6 = size.width * v4;
  v7 = size.height * v4;
  result.height = v7;
  result.width = v6;
  return result;
}

+ (id)resizedImage:(id)image newSize:(CGSize)size interpolationQuality:(int)quality
{
  v5 = *&quality;
  height = size.height;
  width = size.width;
  imageCopy = image;
  v10 = (([imageCopy imageOrientation] - 2) & 0xFFFFFFFFFFFFFFFALL) == 0;
  [ICDocCamUtilities transformForOrientation:imageCopy newSize:width, height];
  v11 = [self resizedImage:imageCopy newSize:&v13 transform:v10 drawTransposed:v5 interpolationQuality:{width, height}];

  return v11;
}

+ (id)resizedImage:(id)image newSize:(CGSize)size transform:(CGAffineTransform *)transform drawTransposed:(BOOL)transposed interpolationQuality:(int)quality
{
  transposedCopy = transposed;
  height = size.height;
  width = size.width;
  imageCopy = image;
  v32.origin.x = 0.0;
  v32.origin.y = 0.0;
  v32.size.width = width;
  v32.size.height = height;
  v33 = CGRectIntegral(v32);
  x = v33.origin.x;
  y = v33.origin.y;
  v15 = v33.size.width;
  v16 = v33.size.height;
  cGImage = [imageCopy CGImage];

  BitsPerComponent = CGImageGetBitsPerComponent(cGImage);
  ColorSpace = CGImageGetColorSpace(cGImage);
  BitmapInfo = CGImageGetBitmapInfo(cGImage);
  v21 = CGBitmapContextCreate(0, v15, v16, BitsPerComponent, 0, ColorSpace, BitmapInfo);
  v22 = *&transform->c;
  *&v30.a = *&transform->a;
  *&v30.c = v22;
  *&v30.tx = *&transform->tx;
  CGContextConcatCTM(v21, &v30);
  CGContextSetInterpolationQuality(v21, quality);
  if (transposedCopy)
  {
    v23 = v15;
  }

  else
  {
    v23 = v16;
  }

  if (transposedCopy)
  {
    v24 = v16;
  }

  else
  {
    v24 = v15;
  }

  if (transposedCopy)
  {
    v25 = 0.0;
  }

  else
  {
    v25 = x;
  }

  if (transposedCopy)
  {
    v26 = 0.0;
  }

  else
  {
    v26 = y;
  }

  CGContextDrawImage(v21, *(&v23 - 3), cGImage);
  Image = CGBitmapContextCreateImage(v21);
  v28 = [MEMORY[0x277D755B8] imageWithCGImage:Image];
  CGContextRelease(v21);
  CGImageRelease(Image);

  return v28;
}

+ (CGAffineTransform)transformForOrientation:(SEL)orientation newSize:(id)size
{
  height = a5.height;
  width = a5.width;
  sizeCopy = size;
  v9 = MEMORY[0x277CBF2C0];
  v27 = *(MEMORY[0x277CBF2C0] + 16);
  v28 = *MEMORY[0x277CBF2C0];
  *&retstr->a = *MEMORY[0x277CBF2C0];
  *&retstr->c = v27;
  v26 = *(v9 + 32);
  *&retstr->tx = v26;
  imageOrientation = [sizeCopy imageOrientation];
  if (imageOrientation <= 7)
  {
    if (((1 << imageOrientation) & 0x22) != 0)
    {
      *&v30.a = v28;
      *&v30.c = v27;
      *&v30.tx = v26;
      CGAffineTransformTranslate(retstr, &v30, width, height);
      v16 = *&retstr->c;
      *&v29.a = *&retstr->a;
      *&v29.c = v16;
      *&v29.tx = *&retstr->tx;
      v13 = 3.14159265;
    }

    else if (((1 << imageOrientation) & 0x44) != 0)
    {
      v14 = *&retstr->c;
      *&v30.a = *&retstr->a;
      *&v30.c = v14;
      *&v30.tx = *&retstr->tx;
      CGAffineTransformTranslate(retstr, &v30, width, 0.0);
      v15 = *&retstr->c;
      *&v29.a = *&retstr->a;
      *&v29.c = v15;
      *&v29.tx = *&retstr->tx;
      v13 = 1.57079633;
    }

    else
    {
      if (((1 << imageOrientation) & 0x88) == 0)
      {
        goto LABEL_9;
      }

      v11 = *&retstr->c;
      *&v30.a = *&retstr->a;
      *&v30.c = v11;
      *&v30.tx = *&retstr->tx;
      CGAffineTransformTranslate(retstr, &v30, 0.0, height);
      v12 = *&retstr->c;
      *&v29.a = *&retstr->a;
      *&v29.c = v12;
      *&v29.tx = *&retstr->tx;
      v13 = -1.57079633;
    }

    CGAffineTransformRotate(&v30, &v29, v13);
    v17 = *&v30.c;
    *&retstr->a = *&v30.a;
    *&retstr->c = v17;
    *&retstr->tx = *&v30.tx;
  }

LABEL_9:
  imageOrientation2 = [sizeCopy imageOrientation];
  if ((imageOrientation2 - 6) < 2)
  {
    v21 = *&retstr->c;
    *&v29.a = *&retstr->a;
    *&v29.c = v21;
    *&v29.tx = *&retstr->tx;
    v20 = height;
    goto LABEL_13;
  }

  if ((imageOrientation2 - 4) <= 1)
  {
    v19 = *&retstr->c;
    *&v29.a = *&retstr->a;
    *&v29.c = v19;
    *&v29.tx = *&retstr->tx;
    v20 = width;
LABEL_13:
    CGAffineTransformTranslate(&v30, &v29, v20, 0.0);
    v22 = *&v30.c;
    *&retstr->a = *&v30.a;
    *&retstr->c = v22;
    *&retstr->tx = *&v30.tx;
    v23 = *&retstr->c;
    *&v29.a = *&retstr->a;
    *&v29.c = v23;
    *&v29.tx = *&retstr->tx;
    CGAffineTransformScale(&v30, &v29, -1.0, 1.0);
    v24 = *&v30.c;
    *&retstr->a = *&v30.a;
    *&retstr->c = v24;
    *&retstr->tx = *&v30.tx;
  }

  return result;
}

+ (void)prepareForRotationIfNecessaryWithShutterButton:(os_log_t)log coodinator:.cold.1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "shutterButton";
  _os_log_error_impl(&dword_249253000, log, OS_LOG_TYPE_ERROR, "invalid nil value for '%s'", &v1, 0xCu);
}

+ (void)prepareForRotationIfNecessaryWithShutterButton:(os_log_t)log coodinator:.cold.2(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "coordinator";
  _os_log_error_impl(&dword_249253000, log, OS_LOG_TYPE_ERROR, "invalid nil value for '%s'", &v1, 0xCu);
}

@end