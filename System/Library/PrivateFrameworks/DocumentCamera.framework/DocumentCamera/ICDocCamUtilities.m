@interface ICDocCamUtilities
+ (BOOL)shouldPerformCustomAnimationForTransitionCoordinator:(id)a3 window:(id)a4;
+ (CGAffineTransform)transformForOrientation:(SEL)a3 newSize:(id)a4;
+ (CGSize)aspectFillSize:(CGSize)a3 targetSize:(CGSize)a4;
+ (CGSize)aspectFitSize:(CGSize)a3 targetSize:(CGSize)a4;
+ (id)buttonFromCopyingValuesFromButton:(id)a3;
+ (id)resizedImage:(id)a3 newSize:(CGSize)a4 interpolationQuality:(int)a5;
+ (id)resizedImage:(id)a3 newSize:(CGSize)a4 transform:(CGAffineTransform *)a5 drawTransposed:(BOOL)a6 interpolationQuality:(int)a7;
+ (void)prepareForRotationIfNecessaryWithShutterButton:(id)a3 coodinator:(id)a4;
@end

@implementation ICDocCamUtilities

+ (void)prepareForRotationIfNecessaryWithShutterButton:(id)a3 coodinator:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    if (v7)
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
  v11 = [MEMORY[0x277D75418] currentDevice];
  if ([v11 userInterfaceIdiom])
  {
  }

  else
  {
    v12 = [v8 isAnimated];

    if (v12)
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
      v13 = [v6 window];
      v14 = [v6 window];
      [v14 frame];
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v22 = v21;

      v23 = [a1 shouldPerformCustomAnimationForTransitionCoordinator:v8 window:v13];
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
        v41 = a1;
        v33 = v6;
        [v25 performWithoutAnimation:v32];
      }

      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __79__ICDocCamUtilities_prepareForRotationIfNecessaryWithShutterButton_coodinator___block_invoke_2;
      v27[3] = &unk_278F941C8;
      v31 = v24;
      v28 = v6;
      v30 = v42;
      v26 = v13;
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

+ (id)buttonFromCopyingValuesFromButton:(id)a3
{
  v3 = a3;
  v4 = [ICDocCamShutterButton alloc];
  [v3 frame];
  v5 = [(ICDocCamShutterButton *)v4 initWithFrame:?];
  [(ICDocCamShutterButton *)v5 setUserInteractionEnabled:0];
  v6 = [v3 isPseudoDisabled];

  [(ICDocCamShutterButton *)v5 setPseudoDisabled:v6];

  return v5;
}

+ (BOOL)shouldPerformCustomAnimationForTransitionCoordinator:(id)a3 window:(id)a4
{
  v5 = a3;
  v6 = MEMORY[0x277D74248];
  v7 = a4;
  v8 = [v6 dc_isRTL];
  v9 = [v7 windowScene];

  v10 = [v9 interfaceOrientation];
  if (v5)
  {
    [v5 targetTransform];
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

  if ((v8 | v12) != 1)
  {
    goto LABEL_11;
  }

  v13 = v11 != -1.57079633;
  if (fabs(v11 + 1.57079633) < 0.00000157079632)
  {
    v13 = 0;
  }

  if (!v8 || v13)
  {
    if (!v8)
    {
      LOBYTE(v12) = v13;
    }

    if (v12)
    {
      v15 = 0;
      goto LABEL_13;
    }

    v14 = v10 - 3;
  }

  else
  {
LABEL_11:
    v14 = v10 - 1;
  }

  v15 = v14 < 2;
LABEL_13:

  return v15;
}

+ (CGSize)aspectFillSize:(CGSize)a3 targetSize:(CGSize)a4
{
  v4 = a4.width / a3.width;
  v5 = a4.height / a3.height;
  if (v4 <= v5)
  {
    v4 = v5;
  }

  v6 = a3.width * v4;
  v7 = a3.height * v4;
  result.height = v7;
  result.width = v6;
  return result;
}

+ (CGSize)aspectFitSize:(CGSize)a3 targetSize:(CGSize)a4
{
  v4 = a4.width / a3.width;
  v5 = a4.height / a3.height;
  if (v4 >= v5)
  {
    v4 = v5;
  }

  v6 = a3.width * v4;
  v7 = a3.height * v4;
  result.height = v7;
  result.width = v6;
  return result;
}

+ (id)resizedImage:(id)a3 newSize:(CGSize)a4 interpolationQuality:(int)a5
{
  v5 = *&a5;
  height = a4.height;
  width = a4.width;
  v9 = a3;
  v10 = (([v9 imageOrientation] - 2) & 0xFFFFFFFFFFFFFFFALL) == 0;
  [ICDocCamUtilities transformForOrientation:v9 newSize:width, height];
  v11 = [a1 resizedImage:v9 newSize:&v13 transform:v10 drawTransposed:v5 interpolationQuality:{width, height}];

  return v11;
}

+ (id)resizedImage:(id)a3 newSize:(CGSize)a4 transform:(CGAffineTransform *)a5 drawTransposed:(BOOL)a6 interpolationQuality:(int)a7
{
  v8 = a6;
  height = a4.height;
  width = a4.width;
  v12 = a3;
  v32.origin.x = 0.0;
  v32.origin.y = 0.0;
  v32.size.width = width;
  v32.size.height = height;
  v33 = CGRectIntegral(v32);
  x = v33.origin.x;
  y = v33.origin.y;
  v15 = v33.size.width;
  v16 = v33.size.height;
  v17 = [v12 CGImage];

  BitsPerComponent = CGImageGetBitsPerComponent(v17);
  ColorSpace = CGImageGetColorSpace(v17);
  BitmapInfo = CGImageGetBitmapInfo(v17);
  v21 = CGBitmapContextCreate(0, v15, v16, BitsPerComponent, 0, ColorSpace, BitmapInfo);
  v22 = *&a5->c;
  *&v30.a = *&a5->a;
  *&v30.c = v22;
  *&v30.tx = *&a5->tx;
  CGContextConcatCTM(v21, &v30);
  CGContextSetInterpolationQuality(v21, a7);
  if (v8)
  {
    v23 = v15;
  }

  else
  {
    v23 = v16;
  }

  if (v8)
  {
    v24 = v16;
  }

  else
  {
    v24 = v15;
  }

  if (v8)
  {
    v25 = 0.0;
  }

  else
  {
    v25 = x;
  }

  if (v8)
  {
    v26 = 0.0;
  }

  else
  {
    v26 = y;
  }

  CGContextDrawImage(v21, *(&v23 - 3), v17);
  Image = CGBitmapContextCreateImage(v21);
  v28 = [MEMORY[0x277D755B8] imageWithCGImage:Image];
  CGContextRelease(v21);
  CGImageRelease(Image);

  return v28;
}

+ (CGAffineTransform)transformForOrientation:(SEL)a3 newSize:(id)a4
{
  height = a5.height;
  width = a5.width;
  v8 = a4;
  v9 = MEMORY[0x277CBF2C0];
  v27 = *(MEMORY[0x277CBF2C0] + 16);
  v28 = *MEMORY[0x277CBF2C0];
  *&retstr->a = *MEMORY[0x277CBF2C0];
  *&retstr->c = v27;
  v26 = *(v9 + 32);
  *&retstr->tx = v26;
  v10 = [v8 imageOrientation];
  if (v10 <= 7)
  {
    if (((1 << v10) & 0x22) != 0)
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

    else if (((1 << v10) & 0x44) != 0)
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
      if (((1 << v10) & 0x88) == 0)
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
  v18 = [v8 imageOrientation];
  if ((v18 - 6) < 2)
  {
    v21 = *&retstr->c;
    *&v29.a = *&retstr->a;
    *&v29.c = v21;
    *&v29.tx = *&retstr->tx;
    v20 = height;
    goto LABEL_13;
  }

  if ((v18 - 4) <= 1)
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