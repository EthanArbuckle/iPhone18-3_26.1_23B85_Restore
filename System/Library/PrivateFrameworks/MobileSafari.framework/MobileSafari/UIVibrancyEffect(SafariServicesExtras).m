@interface UIVibrancyEffect(SafariServicesExtras)
+ (id)_sf_effectWithStyle:()SafariServicesExtras forBarTintStyle:;
@end

@implementation UIVibrancyEffect(SafariServicesExtras)

+ (id)_sf_effectWithStyle:()SafariServicesExtras forBarTintStyle:
{
  if (a4 == 5)
  {
    if (a3 > 3)
    {
      if (a3 > 5)
      {
        if (a3 != 7)
        {
          if (a3 != 6)
          {
            goto LABEL_44;
          }

          v6 = MEMORY[0x1E69DD248];
          goto LABEL_29;
        }

        v6 = MEMORY[0x1E69DD248];
      }

      else
      {
        v6 = MEMORY[0x1E69DD248];
      }
    }

    else
    {
      if (a3 <= 1)
      {
        if (a3)
        {
          if (a3 != 1)
          {
            goto LABEL_44;
          }

          v6 = MEMORY[0x1E69DD248];
          goto LABEL_29;
        }

LABEL_28:
        v6 = MEMORY[0x1E69DD248];
LABEL_29:
        CAColorMatrixMakeBrightness();
        goto LABEL_40;
      }

      if (a3 == 2)
      {
        goto LABEL_28;
      }

      v6 = MEMORY[0x1E69DD248];
    }

    CAColorMatrixMakeColorSourceOver();
    goto LABEL_40;
  }

  v8 = _SFIsPrivateTintStyle(a4);
  if ((a3 - 8) <= 0xFFFFFFFFFFFFFFF9 && v8)
  {
    if (a3 != 1)
    {
      if (a3)
      {
        goto LABEL_44;
      }

      v9 = MEMORY[0x1E69DD248];
      v24[0] = xmmword_18BC3E170;
      v24[1] = xmmword_18BC3E180;
      v24[2] = xmmword_18BC3E190;
      v24[3] = xmmword_18BC3E1A0;
      v24[4] = xmmword_18BC3E1B0;
      v10 = 1.0;
      goto LABEL_41;
    }

    v6 = MEMORY[0x1E69DD248];
    CAColorMatrixMakeBrightness();
    v19 = xmmword_18BC3E170;
    v20 = xmmword_18BC3E180;
    v21 = xmmword_18BC3E190;
    v22 = xmmword_18BC3E1A0;
    v23 = xmmword_18BC3E1B0;
    CAColorMatrixConcat();
LABEL_40:
    v10 = 1.0;
    v9 = v6;
LABEL_41:
    v4 = [v9 _vibrantEffectWithCAColorMatrix:v24 alpha:{v10, v19, v20, v21, v22, v23}];
    goto LABEL_44;
  }

  v11 = _SFIsDarkTintStyle(a4);
  if (a3 == 2 && v11)
  {
    v12 = _SFLightTintStyleForStyle(a4);
    v13 = MEMORY[0x1E69DD248];
    v14 = _SFBackdropEffectForBarTintStyle(v12);
  }

  else
  {
    v13 = MEMORY[0x1E69DD248];
    v14 = _SFBackdropEffectForBarTintStyle(a4);
    v15 = 103;
    if (a3 > 2)
    {
      v16 = 102;
      v17 = 112;
      if (a3 != 7)
      {
        v17 = 103;
      }

      if (a3 != 4)
      {
        v16 = v17;
      }

      if (a3 == 3)
      {
        v15 = 101;
      }

      else
      {
        v15 = v16;
      }

      goto LABEL_43;
    }

    if (a3)
    {
      if (a3 == 1)
      {
        v15 = 111;
        goto LABEL_43;
      }

      if (a3 != 2)
      {
        goto LABEL_43;
      }
    }
  }

  v15 = 112;
LABEL_43:
  v4 = [v13 _effectForBlurEffect:v14 vibrancyStyle:v15];

LABEL_44:

  return v4;
}

@end