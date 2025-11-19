@interface CAMZoomControlUtilities
+ (BOOL)shouldApplyContinuousZoomForMode:(int64_t)a3 device:(int64_t)a4 videoConfiguration:(int64_t)a5 videoStabilizationStrength:(int64_t)a6 frontRearSimultaneousVideoEnabled:(BOOL)a7 zoomFactors:(id *)a8 displayZoomFactors:(id *)a9;
+ (BOOL)shouldEmulateTripleCameraZoomForMode:(int64_t)a3 device:(int64_t)a4 videoConfiguration:(int64_t)a5 videoStabilizationStrength:(int64_t)a6 frontRearSimultaneousVideoEnabled:(BOOL)a7;
+ (BOOL)shouldEmulateWideDualCameraZoomForMode:(int64_t)a3 device:(int64_t)a4 videoConfiguration:(int64_t)a5 videoStabilizationStrength:(int64_t)a6 frontRearSimultaneousVideoEnabled:(BOOL)a7;
+ (double)_baseSingleCameraDeviceForDevice:(int64_t)a3;
+ (double)_zoomControlRadiusForZoomControl:(id)a3 layoutSide:(int64_t)a4 layoutStyle:(int64_t)a5 width:(double)a6 centerOfZoomControlInContainerBounds:(CGPoint)a7 marginForZoomDiaFromEdge:(double)a8;
+ (double)appropriateSignificantZoomFactorForDevice:(int64_t)a3 fromDevice:(int64_t)a4 currentZoomFactor:(double)a5 targetZoomFactor:(double)a6 mode:(int64_t)a7;
+ (double)equivalentZoomFactor:(double)a3 forDevice:(int64_t)a4 fromDevice:(int64_t)a5;
+ (double)linearMappingForX:(double)a3 x1:(double)a4 y1:(double)a5 x2:(double)a6 y2:(double)a7 clamp:(BOOL)a8;
+ (double)piecewiseLinearMappingForX:(double)a3 fromXValues:(id)a4 toYValues:(id)a5;
+ (double)referenceYForControlsAboveShutterButtonFrame:(CGRect)a3 viewportFrame:(CGRect)a4 aspectRatio:(int64_t)a5 shutterTopPadding:(double)a6;
+ (double)zoomControlDisplayValueForZoomFactor:(double)a3 mode:(int64_t)a4 device:(int64_t)a5 videoConfiguration:(int64_t)a6 videoStabilizationStrength:(int64_t)a7 frontRearSimultaneousVideoEnabled:(BOOL)a8;
+ (double)zoomScaleFromDevice:(int64_t)a3 toDevice:(int64_t)a4;
+ (id)exifFocalLengthsByZoomFactorForMode:(int64_t)a3 device:(int64_t)a4 videoConfiguration:(int64_t)a5 videoStabilizationStrength:(int64_t)a6 customLensGroup:(id)a7 isTrueVideo:(BOOL)a8 frontRearSimultaneousVideoEnabled:(BOOL)a9;
+ (int64_t)deviceForEmulatingZoomFactor:(double)a3 fromDevice:(int64_t)a4 mode:(int64_t)a5 continuousZoomSupported:(BOOL)a6;
+ (void)layoutForExternalChromeZoomControl:(id)a3 bounds:(CGRect)a4 viewportFrame:(CGRect)a5 referenceYForControlsAboveShutterButton:(double)a6 xOffset:(double)a7;
+ (void)layoutZoomControl:(CGFloat)a3 forLayoutStyle:(CGFloat)a4 bottomBarAlignmentRect:(CGFloat)a5 bottomBarTransparent:(CGFloat)a6 shutterButtonAlignmentRect:(CGFloat)a7 previewViewAlignmentRect:(CGFloat)a8;
+ (void)layoutZoomControl:(id)a3 alignmentRect:(CGRect)a4 zoomDialExpansionRegionHeight:(double)a5 zoomButtonMarginFromBottomOfExpansionRegion:(double)a6;
+ (void)layoutZoomControl:(id)a3 forLayoutStyle:(int64_t)a4 bottomBar:(id)a5 previewView:(id)a6;
+ (void)layoutZoomControl:(id)a3 layoutSide:(int64_t)a4 forLayoutStyle:(int64_t)a5 width:(double)a6 marginForZoomButtonFromEdge:(double)a7 marginForZoomDialFromEdge:(double)a8 zoomDialContentMaskingHeight:(double)a9 centerOfZoomControlInContainerView:(CGPoint)a10;
@end

@implementation CAMZoomControlUtilities

+ (void)layoutZoomControl:(id)a3 forLayoutStyle:(int64_t)a4 bottomBar:(id)a5 previewView:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v48 = [v12 superview];
  v13 = [v11 backgroundStyle] == 1;
  [v11 layoutIfNeeded];
  v14 = [v11 shutterButton];
  [v14 frame];
  [v14 alignmentRectForFrame:?];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = [v14 superview];
  [v23 convertRect:v48 toView:{v16, v18, v20, v22}];
  v46 = v25;
  v47 = v24;
  v44 = v27;
  v45 = v26;

  [v11 bounds];
  [v11 convertRect:v48 toView:?];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;

  [v10 bounds];
  [v10 convertRect:v48 toView:?];
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;

  [a1 layoutZoomControl:v12 forLayoutStyle:a4 bottomBarAlignmentRect:v13 bottomBarTransparent:v29 shutterButtonAlignmentRect:v31 previewViewAlignmentRect:{v33, v35, v47, v46, v45, v44, v37, v39, v41, v43}];
}

+ (void)layoutZoomControl:(id)a3 layoutSide:(int64_t)a4 forLayoutStyle:(int64_t)a5 width:(double)a6 marginForZoomButtonFromEdge:(double)a7 marginForZoomDialFromEdge:(double)a8 zoomDialContentMaskingHeight:(double)a9 centerOfZoomControlInContainerView:(CGPoint)a10
{
  y = a10.y;
  x = a10.x;
  v19 = a3;
  v20 = MEMORY[0x1E695F058];
  v52 = *(MEMORY[0x1E69DDCE0] + 8);
  v53 = *MEMORY[0x1E69DDCE0];
  v50 = *(MEMORY[0x1E69DDCE0] + 24);
  v51 = *(MEMORY[0x1E69DDCE0] + 16);
  v21 = [v19 superview];
  [v21 bounds];
  v45 = v23;
  v47 = v22;
  rect = v24;
  v26 = v25;

  v27 = *(MEMORY[0x1E695EFD0] + 16);
  *&v58.a = *MEMORY[0x1E695EFD0];
  *&v58.c = v27;
  *&v58.tx = *(MEMORY[0x1E695EFD0] + 32);
  v28 = 0.0;
  if (a9 != 0.0 && a8 == 0.0 && a4 == 0)
  {
    v31 = a9;
  }

  else
  {
    v31 = a8;
  }

  [a1 _zoomControlRadiusForZoomControl:v19 layoutSide:a4 layoutStyle:a5 width:a6 centerOfZoomControlInContainerBounds:x marginForZoomDiaFromEdge:{y, v31, rect, v45, v47}];
  v49 = v32;
  if (a4 == 1)
  {
    v36 = vabdd_f64(v32, fabs(x));
    v40 = (a6 - v36) * 0.5;
    v38 = a8 - v40;
    v41 = a7;
    v34 = v26 * 0.5 - a6 * 0.5 + v40;
    v28 = v36 - (v41 + a8);
    CGAffineTransformMakeRotation(&v58, 1.57079633);
    [v19 setOrientation:4];
  }

  else if (a4)
  {
    v38 = *v20;
    v34 = v20[1];
    a6 = v20[2];
    v36 = v20[3];
  }

  else
  {
    v33 = a7;
    v34 = y - v32;
    v35 = v26 - (y - v32);
    v36 = v35 - a8;
    v37 = v35;
    v38 = x + a6 * -0.5;
    v59.origin.y = v46;
    v59.origin.x = v48;
    v59.size.width = recta;
    v59.size.height = v26;
    MaxY = CGRectGetMaxY(v59);
    v60.origin.x = v38;
    v60.origin.y = v34;
    v60.size.width = a6;
    v60.size.height = v36;
    v28 = v36 - (v33 - (MaxY - CGRectGetMaxY(v60)));
    if (a9 != 0.0)
    {
      a9 = v37 - a9;
    }
  }

  [v19 setContentInsets:{v53, v52, v51, v50}];
  [v19 frameForAlignmentRect:{v38, v34, a6, v36}];
  v42 = *(v20 + 1);
  v56 = *v20;
  v57 = v42;
  v55 = *MEMORY[0x1E695EFF8];
  [CAMView convertRect:&v56 toCeiledBounds:&v55 andRoundedCenter:v19 toViewScale:?];
  [v19 setZoomButtonMaxYWhenContracted:v28];
  [v19 setZoomDialContentMaskingHeight:a9];
  [v19 setZoomDialRadius:v49];
  [v19 setBounds:{v56, v57}];
  [v19 setCenter:v55];
  v54 = v58;
  [v19 setTransform:&v54];
}

+ (void)layoutZoomControl:(CGFloat)a3 forLayoutStyle:(CGFloat)a4 bottomBarAlignmentRect:(CGFloat)a5 bottomBarTransparent:(CGFloat)a6 shutterButtonAlignmentRect:(CGFloat)a7 previewViewAlignmentRect:(CGFloat)a8
{
  v38 = a11;
  UIRectGetCenter();
  v36 = v23;
  v37 = v22;
  v24 = [v38 superview];
  [v24 bounds];
  v26 = v25;

  v27 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v27 scale];
  v35 = v28;

  if (a13)
  {
    v40.origin.x = a5;
    v40.origin.y = a6;
    v40.size.width = a7;
    v40.size.height = a8;
    v29 = v26 - CGRectGetMinY(v40) + 31.0;
    v30 = 0.0;
  }

  else
  {
    v41.origin.x = a1;
    v41.origin.y = a2;
    v41.size.width = a3;
    v41.size.height = a4;
    v29 = v26 - CGRectGetMinY(v41) + 21.0;
    v42.origin.x = a1;
    v42.origin.y = a2;
    v42.size.width = a3;
    v42.size.height = a4;
    v30 = v26 - CGRectGetMinY(v42);
  }

  v31 = +[CAMCaptureCapabilities capabilities];
  v32 = [v31 isSplitScreenSupported];

  v33 = fmin(a3, 414.0);
  if (!v32)
  {
    v33 = a3;
  }

  [CAMZoomControlUtilities layoutZoomControl:v38 layoutSide:0 forLayoutStyle:a12 width:v33 marginForZoomButtonFromEdge:v29 + -1.0 / v35 marginForZoomDialFromEdge:v30 zoomDialContentMaskingHeight:a4 centerOfZoomControlInContainerView:v37, v36];
}

+ (double)_zoomControlRadiusForZoomControl:(id)a3 layoutSide:(int64_t)a4 layoutStyle:(int64_t)a5 width:(double)a6 centerOfZoomControlInContainerBounds:(CGPoint)a7 marginForZoomDiaFromEdge:(double)a8
{
  v10 = a3;
  [v10 zoomDialBorderWidth];
  v12 = v11;
  if (!a4)
  {
    v13 = [v10 superview];
    [v13 bounds];
  }

  if (a5 == 3 && v12 > 0.0)
  {
    v14 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v14 scale];
  }

  UIFloorToViewScale();
  v16 = v12 + v15;

  return v16;
}

+ (void)layoutZoomControl:(id)a3 alignmentRect:(CGRect)a4 zoomDialExpansionRegionHeight:(double)a5 zoomButtonMarginFromBottomOfExpansionRegion:(double)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v12 = a3;
  [v12 setContentInsets:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
  [v12 frameForAlignmentRect:{x, y, width, height}];
  v13 = *(MEMORY[0x1E695F058] + 16);
  v19 = *MEMORY[0x1E695F058];
  v20 = v13;
  v18 = *MEMORY[0x1E695EFF8];
  [CAMView convertRect:&v19 toCeiledBounds:&v18 andRoundedCenter:v12 toViewScale:?];
  if (a5 == 0.0)
  {
    v15 = 1.0;
  }

  else
  {
    UIRoundToViewScale();
    v15 = v14;
  }

  [v12 setZoomButtonMaxYWhenContracted:a5 - a6];
  [v12 setZoomDialContentMaskingHeight:a5];
  [v12 setZoomDialRadius:v15];
  [v12 setBounds:{v19, v20}];
  [v12 setCenter:v18];
  v16 = *(MEMORY[0x1E695EFD0] + 16);
  v17[0] = *MEMORY[0x1E695EFD0];
  v17[1] = v16;
  v17[2] = *(MEMORY[0x1E695EFD0] + 32);
  [v12 setTransform:v17];
}

+ (int64_t)deviceForEmulatingZoomFactor:(double)a3 fromDevice:(int64_t)a4 mode:(int64_t)a5 continuousZoomSupported:(BOOL)a6
{
  v6 = a6;
  v10 = +[CAMCaptureCapabilities capabilities];
  v11 = v10;
  if ((a4 - 1) > 0xA)
  {
    v12 = 0;
  }

  else
  {
    v12 = qword_1A3A64CD8[a4 - 1];
  }

  [v10 superWideToWideZoomFactorForDevicePosition:v12];
  v14 = v13;
  [v11 wideToTelephotoZoomFactorForDevicePosition:v12];
  v16 = v15;
  v17 = 1.0;
  if (!v6)
  {
    v18 = [v11 significantZoomFactorsForMode:a5 device:6];
    v19 = [v18 lastObject];
    [v19 floatValue];
    v17 = v20 / v14;
  }

  v21 = v14 * v16;
  if (a4 == 6 && v21 <= a3)
  {
    v22 = 4;
    v23 = v11;
    v24 = a5;
    v25 = 4;
  }

  else
  {
    if (a4 != 4 || v17 <= a3)
    {
      if (a4 == 5 && v21 <= a3 && ([v11 isBackTelephotoSupported] & 1) != 0)
      {
        goto LABEL_22;
      }

      if (a4 == 5 && v14 <= a3)
      {
        v22 = 2;
        goto LABEL_36;
      }

      if (a4 == 10 && v14 <= a3)
      {
        v22 = 8;
        goto LABEL_36;
      }

      if (a4 == 2 && v16 <= a3 && ([v11 isBackTelephotoSupported] & 1) != 0)
      {
LABEL_22:
        v22 = 3;
        goto LABEL_36;
      }

      v26 = a3 < 1.0;
      if (a3 < 1.0 && a4 == 2 && v6)
      {
        if ([v11 isBackSuperWideSupported])
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (a3 >= 1.0 || a4 != 8 || !v6)
        {
          goto LABEL_14;
        }

        if ([v11 isFrontSuperWideSupported])
        {
          goto LABEL_27;
        }
      }

      v26 = 1;
      goto LABEL_14;
    }

    v22 = 6;
    v23 = v11;
    v24 = a5;
    v25 = 6;
  }

  if ([v23 isSupportedMode:v24 withDevice:v25])
  {
    goto LABEL_36;
  }

  v26 = a3 < 1.0;
LABEL_14:
  v27 = 1.0 / v14;
  if (a4 == 2 && v27 >= a3 && !v6)
  {
LABEL_17:
    if ([v11 isBackSuperWideSupported])
    {
LABEL_18:
      v22 = 5;
      goto LABEL_36;
    }

    goto LABEL_33;
  }

  if (a4 != 8 || v27 < a3 || v6)
  {
    if (a4 == 3 && 1.0 / v16 > a3)
    {
      goto LABEL_17;
    }
  }

  else if ([v11 isFrontSuperWideSupported])
  {
LABEL_27:
    v22 = 10;
    goto LABEL_36;
  }

LABEL_33:
  if (v26 && a4 == 3)
  {
    v22 = 2;
  }

  else
  {
    v22 = a4;
  }

LABEL_36:

  return v22;
}

+ (double)_baseSingleCameraDeviceForDevice:(int64_t)a3
{
  v3 = 2;
  if (a3 != 4)
  {
    v3 = a3;
  }

  if ((a3 - 6) >= 2)
  {
    return v3;
  }

  else
  {
    return 5;
  }
}

+ (double)equivalentZoomFactor:(double)a3 forDevice:(int64_t)a4 fromDevice:(int64_t)a5
{
  if (a5 != a4)
  {
    [a1 zoomScaleFromDevice:a5 toDevice:a4];
    return v6 * a3;
  }

  return a3;
}

+ (double)zoomScaleFromDevice:(int64_t)a3 toDevice:(int64_t)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v7 = +[CAMCaptureCapabilities capabilities];
  v8 = v7;
  if ((a3 - 1) > 0xA)
  {
    v9 = 0;
  }

  else
  {
    v9 = qword_1A3A64CD8[a3 - 1];
  }

  if ((a4 - 1) > 0xA)
  {
    v10 = 0;
  }

  else
  {
    v10 = qword_1A3A64CD8[a4 - 1];
  }

  if (v9 != v10)
  {
    v20 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      if (a3 > 0xB)
      {
        v21 = 0;
      }

      else
      {
        v21 = off_1E76F7D58[a3];
      }

      if (a4 > 0xB)
      {
        v22 = 0;
      }

      else
      {
        v22 = off_1E76F7D58[a4];
      }

      v24 = 138543618;
      v25 = v21;
      v26 = 2114;
      v27 = v22;
      _os_log_impl(&dword_1A3640000, v20, OS_LOG_TYPE_DEFAULT, "Cannot calculate relative zoom between front and back devices: %{public}@, %{public}@", &v24, 0x16u);
    }

    goto LABEL_31;
  }

  [v7 superWideToWideZoomFactorForDevicePosition:v9];
  v12 = v11;
  [v8 wideToTelephotoZoomFactorForDevicePosition:v9];
  v14 = v13;
  v15 = v12 * v13;
  [a1 _baseSingleCameraDeviceForDevice:a3];
  v17 = v16;
  [a1 _baseSingleCameraDeviceForDevice:a4];
  v19 = v18;
  if (v17 > 4)
  {
    if (v17 == 10)
    {
LABEL_12:
      if (v19 == 3)
      {
        v12 = 1.0 / v15;
        goto LABEL_32;
      }

      if (v19 == 8 || v19 == 2)
      {
        v12 = 1.0 / v12;
        goto LABEL_32;
      }

LABEL_31:
      v12 = 1.0;
      goto LABEL_32;
    }

    if (v17 != 8)
    {
      if (v17 != 5)
      {
        goto LABEL_31;
      }

      goto LABEL_12;
    }

LABEL_23:
    if (v19 == 3)
    {
      v12 = 1.0 / v14;
      goto LABEL_32;
    }

    if (v19 == 5 || v19 == 10)
    {
      goto LABEL_32;
    }

    goto LABEL_18;
  }

  if (v17 == 2)
  {
    goto LABEL_23;
  }

LABEL_18:
  if (v17 != 3)
  {
    goto LABEL_31;
  }

  if (v19 > 7)
  {
    v12 = v15;
    if (v19 != 10)
    {
      v12 = v14;
      if (v19 != 8)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    v12 = v14;
    if (v19 != 2)
    {
      v12 = v15;
      if (v19 != 5)
      {
        goto LABEL_31;
      }
    }
  }

LABEL_32:

  return v12;
}

+ (BOOL)shouldEmulateTripleCameraZoomForMode:(int64_t)a3 device:(int64_t)a4 videoConfiguration:(int64_t)a5 videoStabilizationStrength:(int64_t)a6 frontRearSimultaneousVideoEnabled:(BOOL)a7
{
  v7 = a7;
  if ((a4 - 1) > 0xA)
  {
    v12 = 0;
  }

  else
  {
    v12 = qword_1A3A64CD8[a4 - 1];
  }

  v13 = +[CAMCaptureCapabilities capabilities];
  if (([v13 isTripleCameraSupportedForMode:a3 devicePosition:v12 videoConfiguration:a5 videoStabilizationStrength:a6 frontRearSimultaneousVideoEnabled:v7] & 1) != 0 || !objc_msgSend(v13, "isZoomAllowedForMode:device:videoConfiguration:videoStabilizationStrength:", a3, objc_msgSend(v13, "resolvedDeviceForDesiredDevice:mode:videoConfiguration:videoStabilizationStrength:frontRearSimultaneousVideoEnabled:", a4, a3, a5, a6, v7), a5, a6))
  {
    LOBYTE(v17) = 0;
  }

  else
  {
    v14 = [v13 isSuperWideSupportedForMode:a3 devicePosition:v12 videoConfiguration:a5];
    v15 = [v13 isWideSupportedForMode:a3 devicePosition:v12 videoConfiguration:a5];
    v16 = [v13 isTelephotoSupportedForMode:a3 devicePosition:v12 videoConfiguration:a5];
    if (v14 && v15 && (v16 & 1) != 0)
    {
      LOBYTE(v17) = 1;
    }

    else
    {
      v19 = [v13 isDualSupportedForMode:a3 devicePosition:v12 videoConfiguration:a5 videoStabilizationStrength:a6];
      v17 = v19 & [v13 isWideDualSupportedForMode:a3 devicePosition:v12 videoConfiguration:a5 videoStabilizationStrength:a6];
    }
  }

  return v17;
}

+ (BOOL)shouldEmulateWideDualCameraZoomForMode:(int64_t)a3 device:(int64_t)a4 videoConfiguration:(int64_t)a5 videoStabilizationStrength:(int64_t)a6 frontRearSimultaneousVideoEnabled:(BOOL)a7
{
  v7 = a7;
  if ((a4 - 8) < 3 || a4 == 11 || a4 == 1)
  {
    v13 = 0;
    v14 = 1;
  }

  else
  {
    v14 = 0;
    v13 = 1;
  }

  v15 = +[CAMCaptureCapabilities capabilities];
  v16 = [v15 resolvedDeviceForDesiredDevice:a4 mode:a3 videoConfiguration:a5 videoStabilizationStrength:a6 frontRearSimultaneousVideoEnabled:v7];
  if (([a1 shouldEmulateTripleCameraZoomForMode:a3 device:v16 videoConfiguration:a5 videoStabilizationStrength:a6 frontRearSimultaneousVideoEnabled:v7] & 1) != 0 || (objc_msgSend(v15, "isTripleCameraSupportedForMode:devicePosition:videoConfiguration:videoStabilizationStrength:frontRearSimultaneousVideoEnabled:", a3, v14, a5, a6, v7) & 1) != 0 || (objc_msgSend(v15, "isWideDualSupportedForMode:devicePosition:videoConfiguration:videoStabilizationStrength:", a3, v14, a5, a6) & 1) != 0 || !objc_msgSend(v15, "isZoomAllowedForMode:device:videoConfiguration:videoStabilizationStrength:", a3, v16, a5, a6))
  {
    goto LABEL_11;
  }

  v17 = [v15 isSuperWideSupportedForMode:a3 devicePosition:v14 videoConfiguration:a5];
  v18 = [v15 isWideSupportedForMode:a3 devicePosition:v14 videoConfiguration:a5];
  v19 = v18;
  if ((v13 & 1) == 0)
  {
    v22 = +[CAMCaptureCapabilities capabilities];
    v23 = [v22 frontZoomBehaviorForCaptureMode:a3 videoConfiguration:a5];

    if ((((v23 - 3) < 0xFFFFFFFFFFFFFFFELL) & v17 & v19) == 0)
    {
      goto LABEL_11;
    }

LABEL_15:
    v20 = 1;
    goto LABEL_12;
  }

  if (v17 & v18)
  {
    goto LABEL_15;
  }

LABEL_11:
  v20 = 0;
LABEL_12:

  return v20;
}

+ (BOOL)shouldApplyContinuousZoomForMode:(int64_t)a3 device:(int64_t)a4 videoConfiguration:(int64_t)a5 videoStabilizationStrength:(int64_t)a6 frontRearSimultaneousVideoEnabled:(BOOL)a7 zoomFactors:(id *)a8 displayZoomFactors:(id *)a9
{
  v10 = a7;
  v186[4] = *MEMORY[0x1E69E9840];
  v15 = +[CAMCaptureCapabilities capabilities];
  v16 = v15;
  v160 = a8;
  if ((a4 - 8) < 3 || a4 == 11 || a4 == 1)
  {
    v17 = 0;
    v18 = 1;
  }

  else
  {
    v18 = 0;
    v17 = 1;
  }

  v19 = [v15 resolvedDeviceForDesiredDevice:a4 mode:a3 videoConfiguration:a5 videoStabilizationStrength:a6 frontRearSimultaneousVideoEnabled:v10];
  v20 = [v16 isZoomAllowedForMode:a3 device:v19 videoConfiguration:a5 videoStabilizationStrength:a6];
  v21 = 8u >> v19;
  if (v19 > 0xA)
  {
    LOBYTE(v21) = 0;
  }

  v156 = v21;
  if (v19 <= 0xA)
  {
    v22 = 0x40u >> v19;
  }

  else
  {
    LOBYTE(v22) = 0;
  }

  v154 = v22;
  if (v19 <= 0xA)
  {
    v23 = 0x10u >> v19;
  }

  else
  {
    LOBYTE(v23) = 0;
  }

  if (v19 <= 0xA)
  {
    v24 = 0x420u >> v19;
  }

  else
  {
    LOBYTE(v24) = 0;
  }

  v151 = v24;
  if (v19 <= 0xA)
  {
    v25 = 0x80u >> v19;
  }

  else
  {
    v25 = 0;
  }

  if (v19 <= 0xA)
  {
    v26 = 4u >> v19;
  }

  else
  {
    LOBYTE(v26) = 0;
  }

  v157 = v23;
  v158 = v26;
  v161 = [v16 isQuadraWideZoomButtonSupportedForMode:a3 devicePosition:v18 videoConfiguration:a5];
  [v16 quadraWideDisplayZoomFactor];
  v28 = v27;
  [v16 quadraWideRelativeZoomFactor];
  v30 = v29;
  v162 = [v16 isQuadraTeleZoomButtonSupportedForMode:a3 devicePosition:v18 videoConfiguration:a5];
  [v16 quadraTeleDisplayZoomFactor];
  v32 = v31;
  [v16 quadraTeleRelativeZoomFactor];
  v34 = v33;
  [v16 superWideDisplayZoomFactor];
  v36 = v35;
  [v16 wideDisplayZoomFactor];
  v38 = v37;
  [v16 telephotoDisplayZoomFactor];
  if ((v17 & v20) != 1)
  {
    goto LABEL_109;
  }

  v40 = v39;
  [v16 maximumZoomFactorForMode:a3 device:v19 videoConfiguration:a5 videoStabilizationStrength:a6];
  v42 = v41;
  v43 = [CAMZoomControlUtilities shouldEmulateTripleCameraZoomForMode:a3 device:v19 videoConfiguration:a5 videoStabilizationStrength:a6 frontRearSimultaneousVideoEnabled:v10];
  v44 = [CAMZoomControlUtilities shouldEmulateWideDualCameraZoomForMode:a3 device:v19 videoConfiguration:a5 videoStabilizationStrength:a6 frontRearSimultaneousVideoEnabled:v10];
  if (v25)
  {
    v150 = v30;
    v152 = v28;
    v155 = v32;
    [v16 tripleCameraSwitchOverZoomFactorsForDevicePosition:v18];
    v46 = v45;
    v48 = v47;
    v49 = v42;
    v50 = v42 / v45;
    if ([v16 isDualDeviceDisparitySupportedForMode:a3 devicePosition:v18])
    {
      v51 = [MEMORY[0x1E696AD98] numberWithDouble:v38];
      v184[0] = v51;
      v52 = [MEMORY[0x1E696AD98] numberWithDouble:v40];
      v184[1] = v52;
      v53 = [MEMORY[0x1E696AD98] numberWithDouble:v50];
      v184[2] = v53;
      v54 = 3;
      v55 = [MEMORY[0x1E695DEC8] arrayWithObjects:v184 count:3];

      v56 = [MEMORY[0x1E696AD98] numberWithDouble:v46];
      v183[0] = v56;
      v57 = [MEMORY[0x1E696AD98] numberWithDouble:v48];
      v183[1] = v57;
      v58 = [MEMORY[0x1E696AD98] numberWithDouble:v49];
      v183[2] = v58;
      v59 = [MEMORY[0x1E695DEC8] arrayWithObjects:v183 count:3];

      if (v162)
      {
        v34 = v34 * v48;
      }

      else
      {
        v34 = 0.0;
      }

      if (!v162)
      {
        v54 = 0x7FFFFFFFFFFFFFFFLL;
      }

      if (v161)
      {
        v30 = v150 * v46;
        v60 = 1;
LABEL_62:
        v28 = v152;
        v32 = v155;
LABEL_63:
        v89 = [v55 mutableCopy];
        v90 = [v59 mutableCopy];
        v91 = [MEMORY[0x1E696AD98] numberWithDouble:v28];
        [v89 insertObject:v91 atIndex:v60];

        v92 = [MEMORY[0x1E696AD98] numberWithDouble:v30];
        [v90 insertObject:v92 atIndex:v60];

        v59 = v90;
        v55 = v89;
        goto LABEL_65;
      }

LABEL_64:
      v32 = v155;
LABEL_65:
      if (v54 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_79;
      }

      goto LABEL_66;
    }

    v82 = [MEMORY[0x1E696AD98] numberWithDouble:v36];
    v186[0] = v82;
    v83 = [MEMORY[0x1E696AD98] numberWithDouble:v38];
    v186[1] = v83;
    v84 = [MEMORY[0x1E696AD98] numberWithDouble:v40];
    v186[2] = v84;
    v85 = [MEMORY[0x1E696AD98] numberWithDouble:v50];
    v186[3] = v85;
    v54 = 4;
    v55 = [MEMORY[0x1E695DEC8] arrayWithObjects:v186 count:4];

    v185[0] = &unk_1F16C89A8;
    v86 = [MEMORY[0x1E696AD98] numberWithDouble:v46];
    v185[1] = v86;
    v87 = [MEMORY[0x1E696AD98] numberWithDouble:v48];
    v185[2] = v87;
    v88 = [MEMORY[0x1E696AD98] numberWithDouble:v49];
    v185[3] = v88;
    v59 = [MEMORY[0x1E695DEC8] arrayWithObjects:v185 count:4];

    if (v162)
    {
      v34 = v34 * v48;
    }

    else
    {
      v34 = 0.0;
    }

    if (!v162)
    {
      v54 = 0x7FFFFFFFFFFFFFFFLL;
    }

    if ((v161 & 1) == 0)
    {
      goto LABEL_64;
    }

    v30 = v150 * v46;
LABEL_61:
    v60 = 2;
    goto LABEL_62;
  }

  if (v43)
  {
    v152 = v28;
    v155 = v32;
    [v16 superWideToWideZoomFactorForDevicePosition:v18];
    v62 = v61;
    [v16 wideToTelephotoZoomFactorForDevicePosition:v18];
    v64 = v63;
    [v16 maximumZoomFactorForMode:a3 device:7 videoConfiguration:0 videoStabilizationStrength:a6 shouldResolveDevice:0];
    v66 = v65;
    if (a3 == 1)
    {
      v67 = 1;
    }

    else
    {
      v67 = v162;
    }

    if ((v67 & 1) == 0)
    {
      [v16 maximumZoomFactorForMode:1 device:7 videoConfiguration:0 videoStabilizationStrength:a6 shouldResolveDevice:0];
      if (v68 == v66)
      {
        if ([v16 isQuadraTeleZoomButtonSupportedForMode:1 devicePosition:v18 videoConfiguration:0])
        {
          [v16 quadraTeleRelativeZoomFactor];
          v66 = v66 / v69;
        }
      }
    }

    v70 = v157 | v158;
    v71 = 1.0 / (v62 * v64);
    if ((v156 & 1) == 0)
    {
      v71 = 1.0;
    }

    v159 = v64;
    if (v70)
    {
      v72 = 1.0 / v62;
    }

    else
    {
      v72 = v71;
    }

    v73 = [MEMORY[0x1E696AD98] numberWithDouble:v36];
    v182[0] = v73;
    v74 = [MEMORY[0x1E696AD98] numberWithDouble:v38];
    v182[1] = v74;
    v75 = [MEMORY[0x1E696AD98] numberWithDouble:v40];
    v182[2] = v75;
    v76 = [MEMORY[0x1E696AD98] numberWithDouble:v66 / v62];
    v182[3] = v76;
    v55 = [MEMORY[0x1E695DEC8] arrayWithObjects:v182 count:4];

    v77 = [MEMORY[0x1E696AD98] numberWithDouble:v72];
    v181[0] = v77;
    v78 = v62 * v72;
    v79 = [MEMORY[0x1E696AD98] numberWithDouble:v78];
    v181[1] = v79;
    v80 = [MEMORY[0x1E696AD98] numberWithDouble:v159 * v78];
    v181[2] = v80;
    v81 = [MEMORY[0x1E696AD98] numberWithDouble:v66 * v72];
    v181[3] = v81;
    v59 = [MEMORY[0x1E695DEC8] arrayWithObjects:v181 count:4];

    if (v162)
    {
      v34 = v34 * (v159 * v78);
    }

    else
    {
      v34 = 0.0;
    }

    if (v162)
    {
      v54 = 4;
    }

    else
    {
      v54 = 0x7FFFFFFFFFFFFFFFLL;
    }

    if ((v161 & 1) == 0)
    {
      goto LABEL_64;
    }

    v30 = v30 * v78;
    goto LABEL_61;
  }

  if (v44)
  {
    v153 = v28;
    v100 = v30;
    v101 = v32;
    [v16 superWideToWideZoomFactorForDevicePosition:v18];
    v103 = v102;
    [v16 maximumZoomFactorForMode:a3 device:6 videoConfiguration:0 videoStabilizationStrength:a6 shouldResolveDevice:0];
    v105 = v104;
    v106 = v104 / v103;
    if (v158)
    {
      v107 = 1.0 / v103;
    }

    else
    {
      v107 = 1.0;
    }

    v108 = [MEMORY[0x1E696AD98] numberWithDouble:v36];
    v180[0] = v108;
    v109 = [MEMORY[0x1E696AD98] numberWithDouble:v38];
    v180[1] = v109;
    v110 = [MEMORY[0x1E696AD98] numberWithDouble:v106];
    v180[2] = v110;
    v55 = [MEMORY[0x1E695DEC8] arrayWithObjects:v180 count:3];

    v111 = [MEMORY[0x1E696AD98] numberWithDouble:v107];
    v179[0] = v111;
    v112 = v103 * v107;
    v113 = [MEMORY[0x1E696AD98] numberWithDouble:v112];
    v179[1] = v113;
    v114 = [MEMORY[0x1E696AD98] numberWithDouble:v105 * v107];
    v179[2] = v114;
    v59 = [MEMORY[0x1E695DEC8] arrayWithObjects:v179 count:3];

    if ((v161 & 1) == 0)
    {
      goto LABEL_79;
    }

    v30 = v100 * v112;
    v54 = 0x7FFFFFFFFFFFFFFFLL;
    v34 = 0.0;
    v60 = 2;
    v32 = v101;
    v28 = v153;
    goto LABEL_63;
  }

  if (v157)
  {
    [v16 wideToTelephotoZoomFactorForDevicePosition:v18];
    v178[0] = &unk_1F16C89A8;
    v115 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    v178[1] = v115;
    v116 = [MEMORY[0x1E696AD98] numberWithDouble:v42];
    v178[2] = v116;
    v97 = [MEMORY[0x1E695DEC8] arrayWithObjects:v178 count:3];

    v59 = [MEMORY[0x1E696AD98] numberWithDouble:v38];
    v177[0] = v59;
    v55 = [MEMORY[0x1E696AD98] numberWithDouble:v40];
    v177[1] = v55;
    v99 = [MEMORY[0x1E696AD98] numberWithDouble:v42];
    v177[2] = v99;
    v117 = MEMORY[0x1E695DEC8];
    v118 = v177;
LABEL_76:
    v96 = [v117 arrayWithObjects:v118 count:3];
    goto LABEL_77;
  }

  if (v154)
  {
    v122 = v30;
    [v16 superWideToWideZoomFactorForDevicePosition:v18];
    v124 = v123;
    v125 = v42;
    v126 = v42 / v123;
    if ([v16 isDualDeviceDisparitySupportedForMode:a3 devicePosition:v18])
    {
      v127 = [MEMORY[0x1E696AD98] numberWithDouble:v38];
      v174[0] = v127;
      v128 = [MEMORY[0x1E696AD98] numberWithDouble:v126];
      v174[1] = v128;
      v55 = [MEMORY[0x1E695DEC8] arrayWithObjects:v174 count:2];

      v129 = [MEMORY[0x1E696AD98] numberWithDouble:v124];
      v173[0] = v129;
      v130 = [MEMORY[0x1E696AD98] numberWithDouble:v125];
      v173[1] = v130;
      v59 = [MEMORY[0x1E695DEC8] arrayWithObjects:v173 count:2];
      v60 = 1;
    }

    else
    {
      v136 = [MEMORY[0x1E696AD98] numberWithDouble:v36];
      v176[0] = v136;
      v137 = [MEMORY[0x1E696AD98] numberWithDouble:v38];
      v176[1] = v137;
      v138 = [MEMORY[0x1E696AD98] numberWithDouble:v126];
      v176[2] = v138;
      v55 = [MEMORY[0x1E695DEC8] arrayWithObjects:v176 count:3];

      v175[0] = &unk_1F16C89A8;
      v129 = [MEMORY[0x1E696AD98] numberWithDouble:v124];
      v175[1] = v129;
      v130 = [MEMORY[0x1E696AD98] numberWithDouble:v125];
      v175[2] = v130;
      v59 = [MEMORY[0x1E695DEC8] arrayWithObjects:v175 count:3];
      v60 = 2;
    }

    if ((v161 & 1) == 0)
    {
      goto LABEL_79;
    }

    v30 = v122 * v124;
    v54 = 0x7FFFFFFFFFFFFFFFLL;
    v34 = 0.0;
    goto LABEL_63;
  }

  if ((v156 & 1) == 0)
  {
    if (v151)
    {
      [v16 superWideToWideZoomFactorForDevicePosition:v18];
      v140 = v139;
      v170[0] = &unk_1F16C89A8;
      v141 = [MEMORY[0x1E696AD98] numberWithDouble:v42];
      v170[1] = v141;
      v97 = [MEMORY[0x1E695DEC8] arrayWithObjects:v170 count:2];

      v59 = [MEMORY[0x1E696AD98] numberWithDouble:v36];
      v169[0] = v59;
      v55 = [MEMORY[0x1E696AD98] numberWithDouble:v42 / v140];
      v169[1] = v55;
      v96 = [MEMORY[0x1E695DEC8] arrayWithObjects:v169 count:2];
      goto LABEL_78;
    }

    if (a3 != 6 && (v158 & 1) != 0)
    {
      if ((v161 & 1) == 0 && [v16 frontSuperWideZoomControlSupported] && (objc_msgSend(v16, "isBackDualSupported") & 1) == 0 && (objc_msgSend(v16, "isBackWideDualSupported") & 1) == 0 && (objc_msgSend(v16, "isBackTripleCameraSupported") & 1) == 0)
      {
        v168[0] = &unk_1F16C89A8;
        v168[1] = &unk_1F16C89B8;
        v149 = [MEMORY[0x1E696AD98] numberWithDouble:v42];
        v168[2] = v149;
        v97 = [MEMORY[0x1E695DEC8] arrayWithObjects:v168 count:3];

        v59 = [MEMORY[0x1E696AD98] numberWithDouble:v38];
        v167[0] = v59;
        v55 = [MEMORY[0x1E696AD98] numberWithDouble:v38 + v38];
        v167[1] = v55;
        v99 = [MEMORY[0x1E696AD98] numberWithDouble:v42];
        v167[2] = v99;
        v117 = MEMORY[0x1E695DEC8];
        v118 = v167;
        goto LABEL_76;
      }

      v166[0] = &unk_1F16C89A8;
      v142 = [MEMORY[0x1E696AD98] numberWithDouble:v42];
      v166[1] = v142;
      v59 = [MEMORY[0x1E695DEC8] arrayWithObjects:v166 count:2];

      v143 = [MEMORY[0x1E696AD98] numberWithDouble:v38];
      v165[0] = v143;
      v144 = [MEMORY[0x1E696AD98] numberWithDouble:v42];
      v165[1] = v144;
      v55 = [MEMORY[0x1E695DEC8] arrayWithObjects:v165 count:2];

      if ((v161 & 1) == 0)
      {
        goto LABEL_79;
      }

LABEL_108:
      v54 = 0x7FFFFFFFFFFFFFFFLL;
      v34 = 0.0;
      v60 = 1;
      goto LABEL_63;
    }

    if (a3 == 6 && (v158 & 1) != 0 && [v16 continuousZoomSupportedForPortraitMode])
    {
      v164[0] = &unk_1F16C89A8;
      v145 = [MEMORY[0x1E696AD98] numberWithDouble:v42];
      v164[1] = v145;
      v59 = [MEMORY[0x1E695DEC8] arrayWithObjects:v164 count:2];

      v146 = [MEMORY[0x1E696AD98] numberWithDouble:v38];
      v163[0] = v146;
      v147 = [MEMORY[0x1E696AD98] numberWithDouble:v42];
      v163[1] = v147;
      v55 = [MEMORY[0x1E695DEC8] arrayWithObjects:v163 count:2];

      if (!v161)
      {
        goto LABEL_79;
      }

      goto LABEL_108;
    }

LABEL_109:
    v119 = 0;
    v55 = 0;
    v59 = 0;
    goto LABEL_110;
  }

  [v16 wideToTelephotoZoomFactorForDevicePosition:v18];
  v132 = v131;
  v172[0] = &unk_1F16C89A8;
  v133 = [MEMORY[0x1E696AD98] numberWithDouble:v42];
  v172[1] = v133;
  v59 = [MEMORY[0x1E695DEC8] arrayWithObjects:v172 count:2];

  v134 = [MEMORY[0x1E696AD98] numberWithDouble:v40];
  v171[0] = v134;
  v135 = [MEMORY[0x1E696AD98] numberWithDouble:v42 * v132];
  v171[1] = v135;
  v55 = [MEMORY[0x1E695DEC8] arrayWithObjects:v171 count:2];

  if ((v162 & 1) == 0)
  {
    goto LABEL_79;
  }

  v54 = 1;
LABEL_66:
  v93 = [v59 lastObject];
  [v93 doubleValue];
  v95 = v94;

  if (v34 < v95)
  {
    v96 = [v55 mutableCopy];
    v97 = [v59 mutableCopy];
    v98 = [MEMORY[0x1E696AD98] numberWithDouble:v32];
    [v96 insertObject:v98 atIndex:v54];

    v99 = [MEMORY[0x1E696AD98] numberWithDouble:v34];
    [v97 insertObject:v99 atIndex:v54];
LABEL_77:

LABEL_78:
    v59 = v97;
    v55 = v96;
  }

LABEL_79:
  v119 = 0;
  if (v59 && v55)
  {
    if (v160)
    {
      v120 = v59;
      *v160 = v59;
    }

    if (a9)
    {
      v121 = v55;
      *a9 = v55;
    }

    v119 = 1;
  }

LABEL_110:

  return v119;
}

+ (double)zoomControlDisplayValueForZoomFactor:(double)a3 mode:(int64_t)a4 device:(int64_t)a5 videoConfiguration:(int64_t)a6 videoStabilizationStrength:(int64_t)a7 frontRearSimultaneousVideoEnabled:(BOOL)a8
{
  v8 = a8;
  v15 = +[CAMCaptureCapabilities capabilities];
  v16 = v15;
  if ((a5 - 1) > 0xA)
  {
    v17 = 0;
  }

  else
  {
    v17 = qword_1A3A64CD8[a5 - 1];
  }

  v18 = [v15 isZoomAllowedForMode:a4 device:a5 videoConfiguration:a6 videoStabilizationStrength:a7];
  v19 = [v16 shouldAllowCameraToggleForMode:a4 devicePosition:v17 videoConfiguration:a6 videoStabilizationStrength:a7 frontRearSimultaneousVideoEnabled:v8];
  v20 = [v16 resolvedDeviceForDesiredDevice:a5 mode:a4 videoConfiguration:a6 videoStabilizationStrength:a7 frontRearSimultaneousVideoEnabled:v8];
  [v16 superWideDisplayZoomFactor];
  v22 = v21;
  [v16 wideDisplayZoomFactor];
  v24 = v23;
  [v16 telephotoDisplayZoomFactor];
  if (v18)
  {
    v47 = 0;
    v48 = 0;
    v26 = [a1 shouldApplyContinuousZoomForMode:a4 device:v20 videoConfiguration:a6 videoStabilizationStrength:a7 frontRearSimultaneousVideoEnabled:v8 zoomFactors:&v48 displayZoomFactors:&v47];
    v27 = v48;
    v28 = v47;
    if (v26)
    {
      [a1 piecewiseLinearMappingForX:v27 fromXValues:v28 toYValues:a3];
      a3 = v29;
    }

    goto LABEL_14;
  }

  if (!v19)
  {
LABEL_14:
    v30 = a3;
    goto LABEL_15;
  }

  v30 = v25;
  v31 = [v16 isDualDeviceDisparitySupportedForMode:a4 devicePosition:v17];
  v32 = [v16 isQuadraWideZoomButtonSupportedForMode:a4 devicePosition:v17 videoConfiguration:a6];
  [v16 quadraWideDisplayZoomFactor];
  v34 = v33;
  [v16 quadraWideRelativeZoomFactor];
  v36 = v35;
  v37 = [v16 isQuadraTeleZoomButtonSupportedForMode:a4 devicePosition:v17 videoConfiguration:a6];
  [v16 quadraTeleDisplayZoomFactor];
  v39 = v38;
  [v16 quadraTeleRelativeZoomFactor];
  if (v20 > 5)
  {
    if (v20 > 8)
    {
      if (v20 != 9)
      {
        v30 = v22;
        if (v20 == 10)
        {
          goto LABEL_15;
        }

        v30 = 0.0;
        if (v20 != 11)
        {
          goto LABEL_15;
        }

        goto LABEL_26;
      }
    }

    else
    {
      if (v20 == 6)
      {
        v30 = v22;
        if (!v31)
        {
          goto LABEL_15;
        }

        [v16 superWideToWideZoomFactorForDevicePosition:0];
        v42 = v36 * v45 == a3;
        goto LABEL_27;
      }

      if (v20 != 7)
      {
LABEL_26:
        v42 = v36 == a3;
LABEL_27:
        v43 = v42;
        if ((v32 & v43) != 0)
        {
          v30 = v34;
        }

        else
        {
          v30 = v24;
        }

        goto LABEL_15;
      }
    }

    goto LABEL_33;
  }

  if (v20 <= 2)
  {
    if (v20 >= 2)
    {
      v30 = 0.0;
      if (v20 != 2)
      {
        goto LABEL_15;
      }

      goto LABEL_26;
    }

LABEL_33:
    v44 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      [CAMZoomControlUtilities zoomControlDisplayValueForZoomFactor:a2 mode:v20 device:v44 videoConfiguration:? videoStabilizationStrength:? frontRearSimultaneousVideoEnabled:?];
    }

    v30 = v24;
    goto LABEL_15;
  }

  if (v20 == 3)
  {
    if ((v37 & (v40 == a3)) != 0)
    {
      v30 = v39;
    }
  }

  else if (v20 == 4)
  {
    if (!v31)
    {
      v30 = v24;
    }
  }

  else
  {
    v30 = v22;
  }

LABEL_15:

  return v30;
}

+ (double)piecewiseLinearMappingForX:(double)a3 fromXValues:(id)a4 toYValues:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [v7 count];
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = a3;
  if (v9)
  {
    v10 = v9;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __76__CAMZoomControlUtilities_piecewiseLinearMappingForX_fromXValues_toYValues___block_invoke;
    v12[3] = &unk_1E76F7D10;
    v16 = a3;
    v13 = v8;
    v15 = &v18;
    v14 = v7;
    v17 = v10;
    [v14 enumerateObjectsUsingBlock:v12];

    a3 = v19[3];
  }

  _Block_object_dispose(&v18, 8);

  return a3;
}

void __76__CAMZoomControlUtilities_piecewiseLinearMappingForX_fromXValues_toYValues___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  [a2 doubleValue];
  v8 = v7;
  v9 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  [v9 doubleValue];
  v11 = v10;

  if (*(a1 + 56) <= v8)
  {
    if (a3)
    {
      v12 = a3 - 1;
      v13 = [*(a1 + 40) objectAtIndexedSubscript:v12];
      [v13 doubleValue];
      v15 = v14;

      v16 = [*(a1 + 32) objectAtIndexedSubscript:v12];
      [v16 doubleValue];
      v18 = v17;

      [CAMZoomControlUtilities linearMappingForX:1 x1:*(a1 + 56) y1:v15 x2:v18 y2:v8 clamp:v11];
      v11 = v19;
    }

    goto LABEL_6;
  }

  if (*(a1 + 64) - 1 == a3)
  {
LABEL_6:
    *(*(*(a1 + 48) + 8) + 24) = v11;
    *a4 = 1;
  }
}

+ (double)linearMappingForX:(double)a3 x1:(double)a4 y1:(double)a5 x2:(double)a6 y2:(double)a7 clamp:(BOOL)a8
{
  if (a3 == a4)
  {
    return a5;
  }

  if (a3 == a6)
  {
    return a7;
  }

  if (a6 == a4)
  {
    return a5;
  }

  if (!a8)
  {
    return a5 + (a3 - a4) / (a6 - a4) * (a7 - a5);
  }

  if (a4 <= a6)
  {
    v9 = a7;
    v10 = a6;
    a7 = a5;
    a6 = a4;
  }

  else
  {
    v9 = a5;
    v10 = a4;
  }

  if (a6 >= a3)
  {
    return a7;
  }

  if (v10 <= a3)
  {
    return v9;
  }

  return a7 + (a3 - a6) / (v10 - a6) * (v9 - a7);
}

+ (double)appropriateSignificantZoomFactorForDevice:(int64_t)a3 fromDevice:(int64_t)a4 currentZoomFactor:(double)a5 targetZoomFactor:(double)a6 mode:(int64_t)a7
{
  v13 = +[CAMCaptureCapabilities capabilities];
  v14 = [v13 significantZoomFactorsForMode:a7 device:a3];

  if ([v14 count] == 2)
  {
    [a1 zoomScaleFromDevice:a4 toDevice:a3];
    v16 = v15 * a5;
    v17 = v15 * a6;
    v18 = [v14 firstObject];
    [v18 doubleValue];
    v20 = v19;

    v21 = [v14 lastObject];
    [v21 doubleValue];
    v23 = v22;

    v24 = v16 < v23 || v17 > v20;
    v25 = v20;
    if (v24)
    {
      v26 = v16 > v20 || v17 < v23;
      v25 = v23;
      if (v26)
      {
        v27 = (v20 + v23) * 0.5;
        if (v17 <= v27 && v16 >= v23 && v20 == 1.0 && a3 == a4)
        {
          v25 = v20;
        }

        else
        {
          v25 = v16;
        }

        if (a3 != a4)
        {
          if (v16 < v27)
          {
            v25 = v20;
          }

          else
          {
            v25 = v23;
          }
        }
      }
    }
  }

  else
  {
    if ([v14 count] >= 3)
    {
      v31 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        [CAMZoomControlUtilities appropriateSignificantZoomFactorForDevice:v14 fromDevice:v31 currentZoomFactor:? targetZoomFactor:? mode:?];
      }
    }

    v32 = [v14 firstObject];
    [v32 doubleValue];
    v25 = v33;
  }

  return v25;
}

+ (id)exifFocalLengthsByZoomFactorForMode:(int64_t)a3 device:(int64_t)a4 videoConfiguration:(int64_t)a5 videoStabilizationStrength:(int64_t)a6 customLensGroup:(id)a7 isTrueVideo:(BOOL)a8 frontRearSimultaneousVideoEnabled:(BOOL)a9
{
  v9 = a8;
  v48 = *MEMORY[0x1E69E9840];
  v14 = a7;
  v15 = +[CAMCaptureCapabilities capabilities];
  if ([v15 isCustomLensSupportedForMode:a3 device:a4 isTrueVideo:v9])
  {
    v44 = 0;
    v45 = 0;
    v16 = [CAMZoomControlUtilities shouldApplyContinuousZoomForMode:a3 device:a4 videoConfiguration:a5 videoStabilizationStrength:a6 frontRearSimultaneousVideoEnabled:a9 zoomFactors:&v45 displayZoomFactors:&v44];
    v17 = v45;
    v18 = v44;
    v34 = v17;
    if (v16)
    {
      v33 = v18;
      v19 = [CAMZoomPoint zoomPointsWithFactors:v17 displayZoomFactors:v18 customLensGroup:v14];
      v40 = 0;
      v41 = &v40;
      v42 = 0x2020000000;
      v43 = 0x7FFFFFFFFFFFFFFFLL;
      v36 = 0;
      v37 = &v36;
      v38 = 0x2020000000;
      v39 = 0x7FFFFFFFFFFFFFFFLL;
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __178__CAMZoomControlUtilities_exifFocalLengthsByZoomFactorForMode_device_videoConfiguration_videoStabilizationStrength_customLensGroup_isTrueVideo_frontRearSimultaneousVideoEnabled___block_invoke;
      v35[3] = &unk_1E76F7D38;
      v35[4] = &v40;
      v35[5] = &v36;
      [v19 enumerateObjectsUsingBlock:v35];
      if (v41[3] == 0x7FFFFFFFFFFFFFFFLL)
      {
        v20 = 0;
      }

      else
      {
        v20 = [MEMORY[0x1E695DF90] dictionary];
        v21 = v41[3];
        v22 = v37[3];
        v23 = [v19 count];
        if (v21)
        {
          v24 = v21 - 1;
        }

        else
        {
          v24 = 0;
        }

        if (v22 + 1 < (v23 - 1))
        {
          v25 = v22 + 1;
        }

        else
        {
          v25 = v23 - 1;
        }

        for (; v24 <= v25; ++v24)
        {
          v27 = [v19 objectAtIndexedSubscript:v24];
          [v27 zoomFactor];
          v29 = v28;
          [v27 displayFocalLength];
          if (v30 == 0.0)
          {
            v31 = os_log_create("com.apple.camera", "Camera");
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v47 = v27;
              _os_log_error_impl(&dword_1A3640000, v31, OS_LOG_TYPE_ERROR, "Failed to determine focal length for zoomPoint: %{public}@, skipping it.", buf, 0xCu);
            }
          }

          else
          {
            v31 = [MEMORY[0x1E696AD98] numberWithDouble:?];
            v32 = [MEMORY[0x1E696AD98] numberWithDouble:v29];
            [v20 setObject:v31 forKeyedSubscript:v32];
          }
        }
      }

      _Block_object_dispose(&v36, 8);
      _Block_object_dispose(&v40, 8);

      v18 = v33;
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

uint64_t __178__CAMZoomControlUtilities_exifFocalLengthsByZoomFactorForMode_device_videoConfiguration_videoStabilizationStrength_customLensGroup_isTrueVideo_frontRearSimultaneousVideoEnabled___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 customLens];
  if (result)
  {
    v8 = *(*(a1 + 32) + 8);
    if (*(v8 + 24) == 0x7FFFFFFFFFFFFFFFLL)
    {
      *(v8 + 24) = a3;
    }

    *(*(*(a1 + 40) + 8) + 24) = a3;
  }

  else if (*(*(*(a1 + 40) + 8) + 24) != 0x7FFFFFFFFFFFFFFFLL)
  {
    *a4 = 1;
  }

  return result;
}

+ (void)layoutForExternalChromeZoomControl:(id)a3 bounds:(CGRect)a4 viewportFrame:(CGRect)a5 referenceYForControlsAboveShutterButton:(double)a6 xOffset:(double)a7
{
  if (a3)
  {
    height = a5.size.height;
    width = a5.size.width;
    y = a5.origin.y;
    x = a5.origin.x;
    v11 = a4.size.width;
    v21 = a3;
    v23.origin.x = x;
    v23.origin.y = y;
    v23.size.width = width;
    v23.size.height = height;
    v12 = fmax(CGRectGetMaxY(v23) - a6, 0.0);
    UIRoundToViewScale();
    v14 = v13;
    v24.size.height = v13 + v12;
    v24.origin.y = a6 - v13;
    v24.origin.x = 0.0;
    v24.size.width = v11;
    v25 = CGRectOffset(v24, a7, 0.0);
    v15 = v25.origin.x;
    v16 = v25.origin.y;
    v17 = v25.size.width;
    v18 = v25.size.height;
    v19 = *&CAMZoomButtonPlatterMargin + 16.0;
    [v21 buttonPlatterVerticalOffset];
    [CAMZoomControlUtilities layoutZoomControl:v21 alignmentRect:v15 zoomDialExpansionRegionHeight:v16 zoomButtonMarginFromBottomOfExpansionRegion:v17, v18, v14, v19 + v20];
  }
}

+ (double)referenceYForControlsAboveShutterButtonFrame:(CGRect)a3 viewportFrame:(CGRect)a4 aspectRatio:(int64_t)a5 shutterTopPadding:(double)a6
{
  if (a5 > 6)
  {
    return 0.0;
  }

  if (((1 << a5) & 0x17) != 0)
  {
    return a3.origin.y - a6;
  }

  return a4.origin.y + a4.size.height;
}

+ (void)zoomControlDisplayValueForZoomFactor:(NSObject *)a3 mode:device:videoConfiguration:videoStabilizationStrength:frontRearSimultaneousVideoEnabled:.cold.1(const char *a1, unint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = NSStringFromSelector(a1);
  v6 = CAMDebugStringForCaptureDevice(a2);
  v7 = 138543618;
  v8 = v5;
  v9 = 2114;
  v10 = v6;
  _os_log_error_impl(&dword_1A3640000, a3, OS_LOG_TYPE_ERROR, "Unhandled case for zoom button toggle/selection in %{public}@: %{public}@", &v7, 0x16u);
}

+ (void)appropriateSignificantZoomFactorForDevice:(uint64_t)a1 fromDevice:(NSObject *)a2 currentZoomFactor:targetZoomFactor:mode:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1A3640000, a2, OS_LOG_TYPE_ERROR, "Cannot handle more than 2 significant zoom factors at this time: %{public}@", &v2, 0xCu);
}

@end