@interface BSUIVibrancyConfiguration(CSAdditions)
- (id)cs_adjustedForReducedBacklight;
@end

@implementation BSUIVibrancyConfiguration(CSAdditions)

- (id)cs_adjustedForReducedBacklight
{
  v1 = a1;
  v2 = +[CSLockScreenDomain rootSettings];
  v3 = [v2 vibrancySettings];

  if (([v3 boostEnabled] & 1) == 0)
  {
    v27 = v1;
    goto LABEL_24;
  }

  v4 = [v1 color];
  if ([v1 backgroundType] == 1)
  {
    v5 = [v1 copyWithWithBackgroundType:0];

    v1 = v5;
  }

  if (![v1 effectType])
  {
    [v3 naturalEffectTypeStrength];
    v6 = [v4 colorWithAlphaComponent:{fmax(fmin(1.0 - v28, 1.0), 0.0)}];
    v29 = [v1 copyWithEffectType:0 color:v6];
LABEL_13:
    v9 = v1;
    v1 = v29;
LABEL_21:

    goto LABEL_22;
  }

  if ([v1 effectType] == 1)
  {
    v6 = [MEMORY[0x277D75348] whiteColor];
    v7 = [v1 backgroundType];
    v8 = 0.2;
    if (v7)
    {
      v8 = 0.0;
    }

    v9 = [MEMORY[0x277D75348] colorWithWhite:v8 alpha:1.0];
    v10 = [v1 effectValues];
    v11 = [v10 transformColor:v9 withVibrantMask:v6];

    [v11 _luminanceDifferenceFromColor:v9];
    v13 = v12;
    [v3 minimumLuminanceDifference];
    if (v13 < v14)
    {
      v15 = v14;
      v16 = [v4 colorWithAlphaComponent:0.0];
      v17 = [v1 copyWithEffectType:1 color:v16];

      v18 = [v17 effectValues];
      v19 = [v18 transformColor:v9 withVibrantMask:v6];

      [v19 _luminanceDifferenceFromColor:v9];
      if (v20 <= v15)
      {
        v24 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.5];
        v25 = v1;
        v26 = 2;
      }

      else
      {
        BSUIVibrancyMapBias();
        [v4 alphaComponent];
        v21 = [v17 color];
        [v21 alphaComponent];
        BSFloatByLinearlyInterpolatingFloats();
        v23 = v22;

        v24 = [v4 colorWithAlphaComponent:v23];
        v25 = v1;
        v26 = 1;
      }

      v31 = [v25 copyWithEffectType:v26 color:v24];

      v1 = v31;
    }

    goto LABEL_21;
  }

  if ([v1 effectType] != 3 || !objc_msgSend(MEMORY[0x277CF0DA0], "instancesRespondToSelector:", sel_copyWithLuminanceReduced_))
  {
    goto LABEL_23;
  }

  v30 = [v1 alternativeVibrancyEffectLUT];
  v6 = [v30 copyWithLuminanceReduced:1];

  if (objc_opt_respondsToSelector())
  {
    v29 = [v1 copyWithAlternativeVibrancyEffectLUT:v6];
    goto LABEL_13;
  }

LABEL_22:

LABEL_23:
  v27 = v1;

LABEL_24:

  return v27;
}

@end