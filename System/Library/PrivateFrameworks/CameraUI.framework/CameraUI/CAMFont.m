@interface CAMFont
+ (BOOL)isExtraLongCharacterSet:(id)a3;
+ (double)cameraModeDialFontSizeForContentSize:(id)a3;
+ (double)interpolatedAdditionalFontSizeForMainScreen;
+ (id)cameraAltTypeFontOfSize:(double)a3 weight:(double)a4;
+ (id)cameraFontForContentSize:(id)a3;
+ (id)cameraFontOfSize:(double)a3 weight:(double)a4;
+ (id)cameraKerningForFont:(id)a3;
+ (id)cameraModeDialApproximateFontForContentSize:(id)a3;
+ (id)cameraModeDialFontForContentSize:(id)a3 weight:(double)a4;
+ (id)cameraPadModeDialFontForContentSize:(id)a3;
+ (id)cameraTimerFontForContentSize:(id)a3 layoutStyle:(int64_t)a4;
@end

@implementation CAMFont

+ (id)cameraFontOfSize:(double)a3 weight:(double)a4
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"size=%f weight=%f", *&a3, *&a4];
  if (cameraFontOfSize_weight__onceToken != -1)
  {
    +[CAMFont cameraFontOfSize:weight:];
  }

  v7 = [cameraFontOfSize_weight__cachedCAMFonts objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = [cameraFontOfSize_weight__cachedCAMFonts objectForKeyedSubscript:v6];
  }

  else
  {
    v9 = +[CAMCaptureCapabilities capabilities];
    [v9 sfCameraFontSupported];

    v8 = CEKFontOfSizeWeightStyle();
    [cameraFontOfSize_weight__cachedCAMFonts setObject:v8 forKeyedSubscript:v6];
  }

  return v8;
}

uint64_t __35__CAMFont_cameraFontOfSize_weight___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v1 = cameraFontOfSize_weight__cachedCAMFonts;
  cameraFontOfSize_weight__cachedCAMFonts = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)cameraAltTypeFontOfSize:(double)a3 weight:(double)a4
{
  v28[4] = *MEMORY[0x1E69E9840];
  v6 = *MEMORY[0x1E69DB900];
  v26[0] = *MEMORY[0x1E69DB908];
  v5 = v26[0];
  v26[1] = v6;
  v27[0] = &unk_1F16C7358;
  v27[1] = &unk_1F16C7370;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:2];
  v28[0] = v7;
  v24[0] = v5;
  v24[1] = v6;
  v25[0] = &unk_1F16C7358;
  v25[1] = &unk_1F16C7388;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:2];
  v28[1] = v8;
  v22[0] = v5;
  v22[1] = v6;
  v23[0] = &unk_1F16C7358;
  v23[1] = &unk_1F16C73A0;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];
  v28[2] = v9;
  v20[0] = v5;
  v20[1] = v6;
  v21[0] = &unk_1F16C73B8;
  v21[1] = &unk_1F16C73D0;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];
  v28[3] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:4];

  v12 = CEKFontOfSizeWeightStyle();
  v13 = [v12 fontDescriptor];
  v18 = *MEMORY[0x1E69DB8B0];
  v19 = v11;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  v15 = [v13 fontDescriptorByAddingAttributes:v14];

  v16 = [MEMORY[0x1E69DB878] fontWithDescriptor:v15 size:a3];

  return v16;
}

+ (double)interpolatedAdditionalFontSizeForMainScreen
{
  v2 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v2 _referenceBounds];
  Width = CGRectGetWidth(v5);

  result = 0.0;
  if (Width > 320.0)
  {
    return 1.0;
  }

  return result;
}

+ (id)cameraFontForContentSize:(id)a3
{
  v4 = a3;
  [a1 interpolatedAdditionalFontSizeForMainScreen];
  v6 = v5;
  v7 = [MEMORY[0x1E69DC938] currentDevice];
  v8 = [v7 cam_initialLayoutStyle];

  if (v8 == 1)
  {
    v6 = v6 + 1.0;
  }

  if (([v4 isEqualToString:*MEMORY[0x1E69DDC70]] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", *MEMORY[0x1E69DDC68]) & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", *MEMORY[0x1E69DDC88]) & 1) != 0 || objc_msgSend(v4, "isEqualToString:", *MEMORY[0x1E69DDC78]))
  {
    v9 = 12.0;
LABEL_8:
    v10 = v6 + v9;
    goto LABEL_9;
  }

  if ([v4 isEqualToString:*MEMORY[0x1E69DDC60]])
  {
    v9 = 13.0;
    goto LABEL_8;
  }

  if ([v4 isEqualToString:*MEMORY[0x1E69DDC58]])
  {
    v9 = 15.0;
    goto LABEL_8;
  }

  v13 = [v4 isEqualToString:*MEMORY[0x1E69DDC50]];
  v10 = 17.0;
  if ((v13 & 1) == 0)
  {
    v14 = [v4 isEqualToString:{*MEMORY[0x1E69DDC40], 17.0}];
    v10 = 20.0;
    if ((v14 & 1) == 0)
    {
      v15 = [v4 isEqualToString:{*MEMORY[0x1E69DDC38], 20.0}];
      v10 = 22.0;
      if ((v15 & 1) == 0)
      {
        v16 = [v4 isEqualToString:{*MEMORY[0x1E69DDC30], 22.0}];
        v10 = 24.0;
        if ((v16 & 1) == 0)
        {
          v17 = [v4 isEqualToString:{*MEMORY[0x1E69DDC28], 24.0}];
          v10 = 27.0;
          if ((v17 & 1) == 0)
          {
            v18 = [v4 isEqualToString:{*MEMORY[0x1E69DDC20], 27.0}];
            v10 = 17.0;
            if (v18)
            {
              v10 = 29.0;
            }
          }
        }
      }
    }
  }

LABEL_9:
  v11 = [a1 cameraFontOfSize:v10];

  return v11;
}

+ (id)cameraTimerFontForContentSize:(id)a3 layoutStyle:(int64_t)a4
{
  v5 = a3;
  [a1 interpolatedAdditionalFontSizeForMainScreen];
  if (([v5 isEqualToString:*MEMORY[0x1E69DDC68]] & 1) == 0 && (objc_msgSend(v5, "isEqualToString:", *MEMORY[0x1E69DDC88]) & 1) == 0 && (objc_msgSend(v5, "isEqualToString:", *MEMORY[0x1E69DDC78]) & 1) == 0 && !objc_msgSend(v5, "isEqualToString:", *MEMORY[0x1E69DDC70]) && !objc_msgSend(v5, "isEqualToString:", *MEMORY[0x1E69DDC60]) && !objc_msgSend(v5, "isEqualToString:", *MEMORY[0x1E69DDC58]) && (objc_msgSend(v5, "isEqualToString:", *MEMORY[0x1E69DDC50]) & 1) == 0 && !objc_msgSend(v5, "isEqualToString:", *MEMORY[0x1E69DDC40]) && !objc_msgSend(v5, "isEqualToString:", *MEMORY[0x1E69DDC38]) && !objc_msgSend(v5, "isEqualToString:", *MEMORY[0x1E69DDC30]) && !objc_msgSend(v5, "isEqualToString:", *MEMORY[0x1E69DDC28]))
  {
    [v5 isEqualToString:*MEMORY[0x1E69DDC20]];
  }

  v6 = CEKMonospacedStylisticNumeralFontOfSizeAndStyle();

  return v6;
}

+ (double)cameraModeDialFontSizeForContentSize:(id)a3
{
  v4 = a3;
  [a1 interpolatedAdditionalFontSizeForMainScreen];
  v6 = v5;
  v7 = 13.0;
  if (([v4 isEqualToString:*MEMORY[0x1E69DDC68]] & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", *MEMORY[0x1E69DDC88]) & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", *MEMORY[0x1E69DDC78]) & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", *MEMORY[0x1E69DDC70]) & 1) == 0)
  {
    v7 = 14.0;
    if (([v4 isEqualToString:*MEMORY[0x1E69DDC60]] & 1) == 0)
    {
      if ([v4 isEqualToString:*MEMORY[0x1E69DDC58]])
      {
        v7 = 16.0;
      }

      else
      {
        v7 = 18.0;
      }
    }
  }

  return v6 + v7;
}

+ (id)cameraModeDialFontForContentSize:(id)a3 weight:(double)a4
{
  [a1 cameraModeDialFontSizeForContentSize:a3];

  return [a1 cameraFontOfSize:? weight:?];
}

+ (id)cameraModeDialApproximateFontForContentSize:(id)a3
{
  v4 = a3;
  [a1 interpolatedAdditionalFontSizeForMainScreen];
  v6 = v5;
  if (([v4 isEqualToString:*MEMORY[0x1E69DDC68]] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", *MEMORY[0x1E69DDC88]) & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", *MEMORY[0x1E69DDC78]) & 1) != 0 || objc_msgSend(v4, "isEqualToString:", *MEMORY[0x1E69DDC70]) || objc_msgSend(v4, "isEqualToString:", *MEMORY[0x1E69DDC60]))
  {
    v7 = v6 + 22.0;
  }

  else
  {
    v10 = [v4 isEqualToString:*MEMORY[0x1E69DDC58]];
    v7 = v6 + 24.0;
    if (!v10)
    {
      v7 = 26.0;
    }
  }

  v8 = [a1 cameraFontOfSize:v7];

  return v8;
}

+ (id)cameraPadModeDialFontForContentSize:(id)a3
{
  v4 = a3;
  v5 = 17.0;
  if (([v4 isEqualToString:*MEMORY[0x1E69DDC68]] & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", *MEMORY[0x1E69DDC88]) & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", *MEMORY[0x1E69DDC78]) & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", *MEMORY[0x1E69DDC70]) & 1) == 0)
  {
    v5 = 18.0;
    if (([v4 isEqualToString:*MEMORY[0x1E69DDC60]] & 1) == 0)
    {
      if ([v4 isEqualToString:*MEMORY[0x1E69DDC58]])
      {
        v5 = 19.0;
      }

      else
      {
        v5 = 20.0;
      }
    }
  }

  v6 = [a1 cameraFontOfSize:v5];

  return v6;
}

+ (id)cameraKerningForFont:(id)a3
{
  v3 = MEMORY[0x1E696AD98];
  [a3 pointSize];
  v5 = v4 * 25.0 / 1000.0;

  return [v3 numberWithDouble:v5];
}

+ (BOOL)isExtraLongCharacterSet:(id)a3
{
  v3 = isExtraLongCharacterSet__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    +[CAMFont isExtraLongCharacterSet:];
  }

  [v4 rangeOfCharacterFromSet:isExtraLongCharacterSet__teluguCharSet];
  v6 = v5;

  return v6 != 0;
}

uint64_t __35__CAMFont_isExtraLongCharacterSet___block_invoke()
{
  v0 = [MEMORY[0x1E696AB08] characterSetWithRange:{3072, 128}];
  v1 = isExtraLongCharacterSet__teluguCharSet;
  isExtraLongCharacterSet__teluguCharSet = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end