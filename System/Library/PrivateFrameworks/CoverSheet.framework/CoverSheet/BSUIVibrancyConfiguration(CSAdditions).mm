@interface BSUIVibrancyConfiguration(CSAdditions)
- (id)cs_adjustedForReducedBacklight;
@end

@implementation BSUIVibrancyConfiguration(CSAdditions)

- (id)cs_adjustedForReducedBacklight
{
  selfCopy = self;
  v2 = +[CSLockScreenDomain rootSettings];
  vibrancySettings = [v2 vibrancySettings];

  if (([vibrancySettings boostEnabled] & 1) == 0)
  {
    v27 = selfCopy;
    goto LABEL_24;
  }

  color = [selfCopy color];
  if ([selfCopy backgroundType] == 1)
  {
    v5 = [selfCopy copyWithWithBackgroundType:0];

    selfCopy = v5;
  }

  if (![selfCopy effectType])
  {
    [vibrancySettings naturalEffectTypeStrength];
    whiteColor = [color colorWithAlphaComponent:{fmax(fmin(1.0 - v28, 1.0), 0.0)}];
    v29 = [selfCopy copyWithEffectType:0 color:whiteColor];
LABEL_13:
    v9 = selfCopy;
    selfCopy = v29;
LABEL_21:

    goto LABEL_22;
  }

  if ([selfCopy effectType] == 1)
  {
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    backgroundType = [selfCopy backgroundType];
    v8 = 0.2;
    if (backgroundType)
    {
      v8 = 0.0;
    }

    v9 = [MEMORY[0x277D75348] colorWithWhite:v8 alpha:1.0];
    effectValues = [selfCopy effectValues];
    v11 = [effectValues transformColor:v9 withVibrantMask:whiteColor];

    [v11 _luminanceDifferenceFromColor:v9];
    v13 = v12;
    [vibrancySettings minimumLuminanceDifference];
    if (v13 < v14)
    {
      v15 = v14;
      v16 = [color colorWithAlphaComponent:0.0];
      v17 = [selfCopy copyWithEffectType:1 color:v16];

      effectValues2 = [v17 effectValues];
      v19 = [effectValues2 transformColor:v9 withVibrantMask:whiteColor];

      [v19 _luminanceDifferenceFromColor:v9];
      if (v20 <= v15)
      {
        v24 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.5];
        v25 = selfCopy;
        v26 = 2;
      }

      else
      {
        BSUIVibrancyMapBias();
        [color alphaComponent];
        color2 = [v17 color];
        [color2 alphaComponent];
        BSFloatByLinearlyInterpolatingFloats();
        v23 = v22;

        v24 = [color colorWithAlphaComponent:v23];
        v25 = selfCopy;
        v26 = 1;
      }

      v31 = [v25 copyWithEffectType:v26 color:v24];

      selfCopy = v31;
    }

    goto LABEL_21;
  }

  if ([selfCopy effectType] != 3 || !objc_msgSend(MEMORY[0x277CF0DA0], "instancesRespondToSelector:", sel_copyWithLuminanceReduced_))
  {
    goto LABEL_23;
  }

  alternativeVibrancyEffectLUT = [selfCopy alternativeVibrancyEffectLUT];
  whiteColor = [alternativeVibrancyEffectLUT copyWithLuminanceReduced:1];

  if (objc_opt_respondsToSelector())
  {
    v29 = [selfCopy copyWithAlternativeVibrancyEffectLUT:whiteColor];
    goto LABEL_13;
  }

LABEL_22:

LABEL_23:
  v27 = selfCopy;

LABEL_24:

  return v27;
}

@end