@interface UIFont(Camera)
+ (id)ck_cui_cameraFontForContentSize:()Camera;
+ (id)ck_cui_cameraModeDialApproximateFontForContentSize:()Camera;
+ (id)ck_cui_cameraModeDialFontForContentSize:()Camera;
+ (id)ck_cui_cameraPadModeDialFontForContentSize:()Camera;
+ (id)ck_cui_cameraTimerFontForContentSize:()Camera;
+ (uint64_t)ck_cui_cameraKerningForFont:()Camera;
+ (void)_interpolatedAdditionalFontSizeForMainScreen;
@end

@implementation UIFont(Camera)

+ (void)_interpolatedAdditionalFontSizeForMainScreen
{
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen bounds];
  CGRectGetWidth(v1);
}

+ (id)ck_cui_cameraFontForContentSize:()Camera
{
  v4 = a3;
  [self _interpolatedAdditionalFontSizeForMainScreen];
  v6 = v5;
  if (([v4 isEqualToString:*MEMORY[0x1E69DDC68]] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", *MEMORY[0x1E69DDC88]) & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", *MEMORY[0x1E69DDC78]) & 1) != 0 || objc_msgSend(v4, "isEqualToString:", *MEMORY[0x1E69DDC70]))
  {
    v7 = 12.0;
LABEL_6:
    v8 = v6 + v7;
    goto LABEL_7;
  }

  if ([v4 isEqualToString:*MEMORY[0x1E69DDC60]])
  {
    v7 = 13.0;
    goto LABEL_6;
  }

  if ([v4 isEqualToString:*MEMORY[0x1E69DDC58]])
  {
    v7 = 15.0;
    goto LABEL_6;
  }

  [v4 isEqualToString:*MEMORY[0x1E69DDC50]];
  v8 = 17.0;
LABEL_7:
  v9 = [self ck_cui_cameraFontOfSize:v8];

  return v9;
}

+ (id)ck_cui_cameraTimerFontForContentSize:()Camera
{
  v4 = a3;
  [self _interpolatedAdditionalFontSizeForMainScreen];
  v6 = v5;
  if (([v4 isEqualToString:*MEMORY[0x1E69DDC68]] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", *MEMORY[0x1E69DDC88]) & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", *MEMORY[0x1E69DDC78]) & 1) != 0 || objc_msgSend(v4, "isEqualToString:", *MEMORY[0x1E69DDC70]))
  {
    v7 = 20.0;
LABEL_6:
    v8 = v6 + v7;
    goto LABEL_7;
  }

  if ([v4 isEqualToString:*MEMORY[0x1E69DDC60]])
  {
    v7 = 21.0;
    goto LABEL_6;
  }

  if ([v4 isEqualToString:*MEMORY[0x1E69DDC58]])
  {
    v7 = 22.0;
    goto LABEL_6;
  }

  v8 = v6 + 23.0;
  [v4 isEqualToString:*MEMORY[0x1E69DDC50]];
LABEL_7:
  v9 = [self ck_cui_cameraFontOfSize:v8];

  return v9;
}

+ (id)ck_cui_cameraModeDialFontForContentSize:()Camera
{
  v4 = a3;
  [self _interpolatedAdditionalFontSizeForMainScreen];
  v6 = v5;
  v7 = 13.0;
  if (([v4 isEqualToString:*MEMORY[0x1E69DDC68]] & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", *MEMORY[0x1E69DDC88]) & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", *MEMORY[0x1E69DDC78]) & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", *MEMORY[0x1E69DDC70]) & 1) == 0)
  {
    v7 = 14.0;
    if (([v4 isEqualToString:*MEMORY[0x1E69DDC60]] & 1) == 0)
    {
      v7 = 16.0;
      if (([v4 isEqualToString:*MEMORY[0x1E69DDC58]] & 1) == 0)
      {
        if ([v4 isEqualToString:*MEMORY[0x1E69DDC50]])
        {
          v7 = 18.0;
        }

        else
        {
          v7 = 13.0;
        }
      }
    }
  }

  v8 = [self ck_cui_cameraFontOfSize:v6 + v7];

  return v8;
}

+ (id)ck_cui_cameraModeDialApproximateFontForContentSize:()Camera
{
  v4 = a3;
  [self _interpolatedAdditionalFontSizeForMainScreen];
  v6 = v5;
  if (([v4 isEqualToString:*MEMORY[0x1E69DDC68]] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", *MEMORY[0x1E69DDC88]) & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", *MEMORY[0x1E69DDC78]) & 1) != 0 || objc_msgSend(v4, "isEqualToString:", *MEMORY[0x1E69DDC70]) || objc_msgSend(v4, "isEqualToString:", *MEMORY[0x1E69DDC60]))
  {
    v7 = 22.0;
LABEL_7:
    v8 = v6 + v7;
    goto LABEL_8;
  }

  if ([v4 isEqualToString:*MEMORY[0x1E69DDC58]])
  {
    v7 = 24.0;
    goto LABEL_7;
  }

  v11 = [v4 isEqualToString:*MEMORY[0x1E69DDC50]];
  v8 = 16.0;
  if (v11)
  {
    v8 = 26.0;
  }

LABEL_8:
  v9 = [self ck_cui_cameraFontOfSize:v8];

  return v9;
}

+ (id)ck_cui_cameraPadModeDialFontForContentSize:()Camera
{
  v4 = a3;
  v5 = 17.0;
  if (([v4 isEqualToString:*MEMORY[0x1E69DDC68]] & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", *MEMORY[0x1E69DDC88]) & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", *MEMORY[0x1E69DDC78]) & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", *MEMORY[0x1E69DDC70]) & 1) == 0)
  {
    v5 = 18.0;
    if (([v4 isEqualToString:*MEMORY[0x1E69DDC60]] & 1) == 0)
    {
      v5 = 19.0;
      if (([v4 isEqualToString:*MEMORY[0x1E69DDC58]] & 1) == 0)
      {
        if ([v4 isEqualToString:*MEMORY[0x1E69DDC50]])
        {
          v5 = 20.0;
        }

        else
        {
          v5 = 16.0;
        }
      }
    }
  }

  v6 = [self ck_cui_cameraFontOfSize:v5];

  return v6;
}

+ (uint64_t)ck_cui_cameraKerningForFont:()Camera
{
  v3 = MEMORY[0x1E696AD98];
  [a3 pointSize];
  v5 = v4 * 25.0 / 1000.0;

  return [v3 numberWithDouble:v5];
}

@end