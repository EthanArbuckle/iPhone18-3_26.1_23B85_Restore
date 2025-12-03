@interface CSContentCutoutBoundsCalculator
+ (CGRect)_contentCutoutBoundsForPortrait:(BOOL)portrait forModal:(BOOL)modal;
+ (CGRect)_normalizedContentCutoutForScreenBounds:(CGRect)bounds contentBoundingRect:(CGRect)rect;
+ (CGRect)_screenBoundsForPortrait:(BOOL)portrait;
+ (CGRect)contentCutoutBoundsForInterfaceOrientation:(int64_t)orientation;
+ (CGRect)contentCutoutBoundsForOrientation:(int64_t)orientation;
+ (CGRect)modalContentCutoutBoundsForInterfaceOrientation:(int64_t)orientation;
+ (CGRect)modalContentCutoutBoundsForOrientation:(int64_t)orientation;
+ (CGRect)modalNormalizedContentCutoutBoundsForOrientation:(int64_t)orientation;
+ (CGRect)normalizedContentCutoutBoundsForOrientation:(int64_t)orientation;
@end

@implementation CSContentCutoutBoundsCalculator

+ (CGRect)contentCutoutBoundsForInterfaceOrientation:(int64_t)orientation
{
  [self _contentCutoutBoundsForPortrait:(orientation - 1) < 2 forModal:0];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

+ (CGRect)contentCutoutBoundsForOrientation:(int64_t)orientation
{
  [self _contentCutoutBoundsForPortrait:(orientation - 1) < 2 forModal:0];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

+ (CGRect)normalizedContentCutoutBoundsForOrientation:(int64_t)orientation
{
  v4 = (orientation - 1) < 2;
  [self contentCutoutBoundsForOrientation:v4];
  [self _screenBoundsForPortrait:v4];

  [self _normalizedContentCutoutForScreenBounds:? contentBoundingRect:?];
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

+ (CGRect)modalContentCutoutBoundsForInterfaceOrientation:(int64_t)orientation
{
  [self _contentCutoutBoundsForPortrait:(orientation - 1) < 2 forModal:1];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

+ (CGRect)modalContentCutoutBoundsForOrientation:(int64_t)orientation
{
  [self _contentCutoutBoundsForPortrait:(orientation - 1) < 2 forModal:1];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

+ (CGRect)modalNormalizedContentCutoutBoundsForOrientation:(int64_t)orientation
{
  v4 = (orientation - 1) < 2;
  [self modalContentCutoutBoundsForOrientation:v4];
  [self _screenBoundsForPortrait:v4];

  [self _normalizedContentCutoutForScreenBounds:? contentBoundingRect:?];
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

+ (CGRect)_contentCutoutBoundsForPortrait:(BOOL)portrait forModal:(BOOL)modal
{
  modalCopy = modal;
  portraitCopy = portrait;
  [self _screenBoundsForPortrait:?];
  x = v299.origin.x;
  y = v299.origin.y;
  width = v299.size.width;
  height = v299.size.height;
  v10 = CGRectGetWidth(v299);
  v300.origin.x = x;
  v300.origin.y = y;
  v300.size.width = width;
  v300.size.height = height;
  v11 = CGRectGetHeight(v300);
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1 || portraitCopy)
  {
    [MEMORY[0x277D65E38] suggestedFrameForDateTimeViewInScreenCoordinates:1 centeredX:{x, y, width, height}];
    v15 = CGRectGetMaxY(v301) + 0.0;
    if ([MEMORY[0x277D65E98] showAlternateDate])
    {
      [MEMORY[0x277D65EA0] subtitleLabelToLunarDateLabelBaselineDifferenceY];
      v15 = v15 + v16;
    }

    if (!+[CSQuickActionsViewController deviceSupportsButtons])
    {
      v23 = 0.0;
      if (modalCopy)
      {
        currentDevice2 = [MEMORY[0x277D75418] currentDevice];
        userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];

        if ((userInterfaceIdiom2 & 0xFFFFFFFFFFFFFFFBLL) != 1)
        {
          [CSModalView _bottomBaselineOffsetForPortrait:portraitCopy];
          v23 = v26 + 0.0;
        }
      }

      goto LABEL_445;
    }

    v17 = __sb__runningInSpringBoard();
    if (v17)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        v298 = 0;
        goto LABEL_23;
      }
    }

    else
    {
      currentDevice3 = [MEMORY[0x277D75418] currentDevice];
      if ([currentDevice3 userInterfaceIdiom] != 1)
      {
        v298 = 0x100000000;
        goto LABEL_23;
      }
    }

    HIDWORD(v298) = v17 ^ 1;
    if (SBFEffectiveHomeButtonType() == 2)
    {
      currentDevice31 = __sb__runningInSpringBoard();
      if (currentDevice31)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        mainScreen = [MEMORY[0x277D759A0] mainScreen];
        [mainScreen _referenceBounds];
      }

      LODWORD(v298) = currentDevice31 ^ 1;
      BSSizeRoundForScale();
      if (v46 == *(MEMORY[0x277D66E30] + 288) && v45 == *(MEMORY[0x277D66E30] + 296))
      {
        v34 = 0;
        v35 = 0;
        v36 = 0;
        currentDevice32 = 0;
        v38 = 0;
        v39 = 0;
        v40 = 0;
        currentDevice33 = 0;
        v272 = 0;
        v274 = 0;
        v276 = 0;
        v278 = 0;
        v280 = 0;
        v282 = 0;
        v284 = 0;
        v286 = 0;
        v288 = 0;
        v290 = 0;
        memset(v292, 0, sizeof(v292));
        v293 = 0;
        v294 = 0;
        v295 = 0;
        v296 = 0;
        v297 = 0;
        v42 = &qword_21EC96100;
        goto LABEL_77;
      }
    }

    else
    {
      LODWORD(v298) = 0;
    }

LABEL_23:
    v28 = __sb__runningInSpringBoard();
    if (v28)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        v297 = 0;
        goto LABEL_32;
      }
    }

    else
    {
      currentDevice4 = [MEMORY[0x277D75418] currentDevice];
      if ([currentDevice4 userInterfaceIdiom] != 1)
      {
        v297 = 0x100000000;
        goto LABEL_32;
      }
    }

    HIDWORD(v297) = v28 ^ 1;
    if (SBFEffectiveHomeButtonType() == 2)
    {
      currentDevice31 = __sb__runningInSpringBoard();
      if (currentDevice31)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
        [mainScreen2 _referenceBounds];
      }

      LODWORD(v297) = currentDevice31 ^ 1;
      BSSizeRoundForScale();
      if (v47 >= *(MEMORY[0x277D66E30] + 440))
      {
        v34 = 0;
        v35 = 0;
        v36 = 0;
        currentDevice32 = 0;
        v38 = 0;
        v39 = 0;
        v40 = 0;
        currentDevice33 = 0;
        v272 = 0;
        v274 = 0;
        v276 = 0;
        v278 = 0;
        v280 = 0;
        v282 = 0;
        v284 = 0;
        v286 = 0;
        v288 = 0;
        v290 = 0;
        memset(v292, 0, sizeof(v292));
        v293 = 0;
        v294 = 0;
        v295 = 0;
        v296 = 0;
        v42 = &qword_21EC96128;
        goto LABEL_77;
      }
    }

    else
    {
      LODWORD(v297) = 0;
    }

LABEL_32:
    v29 = __sb__runningInSpringBoard();
    if (v29)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        v296 = 0;
        goto LABEL_41;
      }
    }

    else
    {
      currentDevice5 = [MEMORY[0x277D75418] currentDevice];
      if ([currentDevice5 userInterfaceIdiom] != 1)
      {
        v296 = 0x100000000;
        goto LABEL_41;
      }
    }

    HIDWORD(v296) = v29 ^ 1;
    if (SBFEffectiveHomeButtonType() == 2)
    {
      currentDevice31 = __sb__runningInSpringBoard();
      if (currentDevice31)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        mainScreen3 = [MEMORY[0x277D759A0] mainScreen];
        [mainScreen3 _referenceBounds];
      }

      LODWORD(v296) = currentDevice31 ^ 1;
      BSSizeRoundForScale();
      if (v48 >= *(MEMORY[0x277D66E30] + 376))
      {
        v34 = 0;
        v35 = 0;
        v36 = 0;
        currentDevice32 = 0;
        v38 = 0;
        v39 = 0;
        v40 = 0;
        currentDevice33 = 0;
        v272 = 0;
        v274 = 0;
        v276 = 0;
        v278 = 0;
        v280 = 0;
        v282 = 0;
        v284 = 0;
        v286 = 0;
        v288 = 0;
        v290 = 0;
        memset(v292, 0, sizeof(v292));
        v293 = 0;
        v294 = 0;
        v295 = 0;
        v42 = &qword_21EC96118;
        goto LABEL_77;
      }
    }

    else
    {
      LODWORD(v296) = 0;
    }

LABEL_41:
    v30 = __sb__runningInSpringBoard();
    if (v30)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        v295 = 0;
        goto LABEL_50;
      }
    }

    else
    {
      currentDevice6 = [MEMORY[0x277D75418] currentDevice];
      if ([currentDevice6 userInterfaceIdiom] != 1)
      {
        v295 = 0x100000000;
        goto LABEL_50;
      }
    }

    HIDWORD(v295) = v30 ^ 1;
    currentDevice31 = __sb__runningInSpringBoard();
    if (currentDevice31)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen4 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen4 _referenceBounds];
    }

    LODWORD(v295) = currentDevice31 ^ 1;
    BSSizeRoundForScale();
    if (v32 >= *(MEMORY[0x277D66E30] + 280))
    {
      v34 = 0;
      v35 = 0;
      v36 = 0;
      currentDevice32 = 0;
      v38 = 0;
      v39 = 0;
      v40 = 0;
      currentDevice33 = 0;
      v272 = 0;
      v274 = 0;
      v276 = 0;
      v278 = 0;
      v280 = 0;
      v282 = 0;
      v284 = 0;
      v286 = 0;
      v288 = 0;
      v290 = 0;
      memset(v292, 0, sizeof(v292));
      v293 = 0;
      v294 = 0;
      v42 = &qword_21EC96120;
      goto LABEL_77;
    }

LABEL_50:
    v33 = __sb__runningInSpringBoard();
    if (v33)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        v294 = 0;
        goto LABEL_60;
      }
    }

    else
    {
      currentDevice7 = [MEMORY[0x277D75418] currentDevice];
      if ([currentDevice7 userInterfaceIdiom] != 1)
      {
        v294 = 0x100000000;
        goto LABEL_60;
      }
    }

    HIDWORD(v294) = v33 ^ 1;
    currentDevice31 = __sb__runningInSpringBoard();
    if (currentDevice31)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen5 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen5 _referenceBounds];
    }

    LODWORD(v294) = currentDevice31 ^ 1;
    BSSizeRoundForScale();
    if (v43 >= *(MEMORY[0x277D66E30] + 264))
    {
      v34 = 0;
      v35 = 0;
      v36 = 0;
      currentDevice32 = 0;
      v38 = 0;
      v39 = 0;
      v40 = 0;
      currentDevice33 = 0;
      v272 = 0;
      v274 = 0;
      v276 = 0;
      v278 = 0;
      v280 = 0;
      v282 = 0;
      v284 = 0;
      v286 = 0;
      v288 = 0;
      v290 = 0;
      memset(v292, 0, sizeof(v292));
      v293 = 0;
      v42 = &qword_21EC96110;
      goto LABEL_77;
    }

LABEL_60:
    v44 = __sb__runningInSpringBoard();
    if (v44)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        v293 = 0;
        goto LABEL_262;
      }
    }

    else
    {
      currentDevice8 = [MEMORY[0x277D75418] currentDevice];
      if ([currentDevice8 userInterfaceIdiom] != 1)
      {
        v293 = 0x100000000;
        goto LABEL_262;
      }
    }

    HIDWORD(v293) = v44 ^ 1;
    currentDevice31 = __sb__runningInSpringBoard();
    if (currentDevice31)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen6 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen6 _referenceBounds];
    }

    LODWORD(v293) = currentDevice31 ^ 1;
    BSSizeRoundForScale();
    if (v61 >= *(MEMORY[0x277D66E30] + 248))
    {
      v34 = 0;
      v35 = 0;
      v36 = 0;
      currentDevice32 = 0;
      v38 = 0;
      v39 = 0;
      v40 = 0;
      currentDevice33 = 0;
      v272 = 0;
      v274 = 0;
      v276 = 0;
      v278 = 0;
      v280 = 0;
      v282 = 0;
      v284 = 0;
      v286 = 0;
      v288 = 0;
      v290 = 0;
      memset(v292, 0, sizeof(v292));
      v42 = &qword_21EC96108;
      goto LABEL_77;
    }

LABEL_262:
    currentDevice31 = __sb__runningInSpringBoard();
    if (currentDevice31)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        goto LABEL_264;
      }
    }

    else
    {
      currentDevice9 = [MEMORY[0x277D75418] currentDevice];
      if ([currentDevice9 userInterfaceIdiom] != 1)
      {
LABEL_264:
        HIDWORD(v292[8]) = currentDevice31 ^ 1;
        if (!_SBF_Private_IsD94Like())
        {
LABEL_268:
          *(&v292[7] + 4) = 0;
          goto LABEL_482;
        }

        v62 = __sb__runningInSpringBoard();
        if (v62)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            goto LABEL_268;
          }
        }

        else
        {
          currentDevice10 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice10 userInterfaceIdiom])
          {
            HIDWORD(v292[7]) = 0;
            LODWORD(v292[8]) = 1;
            goto LABEL_482;
          }
        }

        LODWORD(v292[8]) = v62 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          currentDevice31 = __sb__runningInSpringBoard();
          if (currentDevice31)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen7 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen7 _referenceBounds];
          }

          BSSizeRoundForScale();
          HIDWORD(v292[7]) = currentDevice31 ^ 1;
          if (v96 >= *(MEMORY[0x277D66E30] + 200))
          {
            v34 = 0;
            v35 = 0;
            v36 = 0;
            currentDevice32 = 0;
            v38 = 0;
            v39 = 0;
            v40 = 0;
            currentDevice33 = 0;
            v272 = 0;
            v274 = 0;
            v276 = 0;
            v278 = 0;
            v280 = 0;
            v282 = 0;
            v284 = 0;
            v286 = 0;
            v288 = 0;
            v290 = 0;
            memset(v292, 0, 60);
            v42 = &qword_21EC960D8;
            goto LABEL_77;
          }
        }

        else
        {
          HIDWORD(v292[7]) = 0;
        }

LABEL_482:
        currentDevice31 = __sb__runningInSpringBoard();
        if (currentDevice31)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            *(&v292[6] + 4) = 0;
            goto LABEL_492;
          }
        }

        else
        {
          currentDevice11 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice11 userInterfaceIdiom])
          {
            HIDWORD(v292[6]) = 0;
            LODWORD(v292[7]) = 1;
            goto LABEL_492;
          }
        }

        LODWORD(v292[7]) = currentDevice31 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          currentDevice31 = __sb__runningInSpringBoard();
          if (currentDevice31)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen8 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen8 _referenceBounds];
          }

          HIDWORD(v292[6]) = currentDevice31 ^ 1;
          BSSizeRoundForScale();
          if (v94 >= *(MEMORY[0x277D66E30] + 200))
          {
            goto LABEL_496;
          }
        }

        else
        {
          HIDWORD(v292[6]) = 0;
        }

LABEL_492:
        if (_SBF_Private_IsD94Like())
        {
          v34 = 0;
          v35 = 0;
          v36 = 0;
          currentDevice32 = 0;
          v38 = 0;
          v39 = 0;
          v40 = 0;
          currentDevice33 = 0;
          v272 = 0;
          v274 = 0;
          v276 = 0;
          v278 = 0;
          v280 = 0;
          v282 = 0;
          v284 = 0;
          v286 = 0;
          v288 = 0;
          v290 = 0;
          memset(v292, 0, 52);
          v42 = &qword_21EC960E0;
          goto LABEL_77;
        }

LABEL_496:
        if (!_SBF_Private_IsD64Like())
        {
LABEL_500:
          *(&v292[5] + 4) = 0;
          goto LABEL_510;
        }

        v95 = __sb__runningInSpringBoard();
        if (v95)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            goto LABEL_500;
          }
        }

        else
        {
          currentDevice12 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice12 userInterfaceIdiom])
          {
            HIDWORD(v292[5]) = 0;
            LODWORD(v292[6]) = 1;
            goto LABEL_510;
          }
        }

        LODWORD(v292[6]) = v95 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          currentDevice31 = __sb__runningInSpringBoard();
          if (currentDevice31)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen9 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen9 _referenceBounds];
          }

          HIDWORD(v292[5]) = currentDevice31 ^ 1;
          BSSizeRoundForScale();
          if (v106 >= *(MEMORY[0x277D66E30] + 136))
          {
            v34 = 0;
            v35 = 0;
            v36 = 0;
            currentDevice32 = 0;
            v38 = 0;
            v39 = 0;
            v40 = 0;
            currentDevice33 = 0;
            v272 = 0;
            v274 = 0;
            v276 = 0;
            v278 = 0;
            v280 = 0;
            v282 = 0;
            v284 = 0;
            v286 = 0;
            v288 = 0;
            v290 = 0;
            memset(v292, 0, 44);
            v42 = &qword_21EC960E8;
            goto LABEL_77;
          }
        }

        else
        {
          HIDWORD(v292[5]) = 0;
        }

LABEL_510:
        currentDevice31 = __sb__runningInSpringBoard();
        if (currentDevice31)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            *(&v292[4] + 4) = 0;
            goto LABEL_520;
          }
        }

        else
        {
          currentDevice13 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice13 userInterfaceIdiom])
          {
            HIDWORD(v292[4]) = 0;
            LODWORD(v292[5]) = 1;
            goto LABEL_520;
          }
        }

        LODWORD(v292[5]) = currentDevice31 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          currentDevice31 = __sb__runningInSpringBoard();
          if (currentDevice31)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen10 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen10 _referenceBounds];
          }

          HIDWORD(v292[4]) = currentDevice31 ^ 1;
          BSSizeRoundForScale();
          if (v97 >= *(MEMORY[0x277D66E30] + 136))
          {
            goto LABEL_524;
          }
        }

        else
        {
          HIDWORD(v292[4]) = 0;
        }

LABEL_520:
        if (_SBF_Private_IsD64Like())
        {
          v34 = 0;
          v35 = 0;
          v36 = 0;
          currentDevice32 = 0;
          v38 = 0;
          v39 = 0;
          v40 = 0;
          currentDevice33 = 0;
          v272 = 0;
          v274 = 0;
          v276 = 0;
          v278 = 0;
          v280 = 0;
          v282 = 0;
          v284 = 0;
          v286 = 0;
          v288 = 0;
          v290 = 0;
          memset(v292, 0, 36);
          v42 = &qword_21EC960F0;
          goto LABEL_77;
        }

LABEL_524:
        v98 = __sb__runningInSpringBoard();
        if (v98)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            *(&v292[3] + 4) = 0;
            goto LABEL_534;
          }
        }

        else
        {
          currentDevice14 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice14 userInterfaceIdiom])
          {
            HIDWORD(v292[3]) = 0;
            LODWORD(v292[4]) = 1;
            goto LABEL_534;
          }
        }

        LODWORD(v292[4]) = v98 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          currentDevice31 = __sb__runningInSpringBoard();
          if (currentDevice31)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen11 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen11 _referenceBounds];
          }

          BSSizeRoundForScale();
          HIDWORD(v292[3]) = currentDevice31 ^ 1;
          if (v105 >= *(MEMORY[0x277D66E30] + 136))
          {
            v34 = 0;
            v35 = 0;
            v36 = 0;
            currentDevice32 = 0;
            v38 = 0;
            v39 = 0;
            v40 = 0;
            currentDevice33 = 0;
            v272 = 0;
            v274 = 0;
            v276 = 0;
            v278 = 0;
            v280 = 0;
            v282 = 0;
            v284 = 0;
            v286 = 0;
            v288 = 0;
            v290 = 0;
            memset(v292, 0, 28);
            v42 = &qword_21EC960C8;
            goto LABEL_77;
          }
        }

        else
        {
          HIDWORD(v292[3]) = 0;
        }

LABEL_534:
        currentDevice31 = __sb__runningInSpringBoard();
        if (currentDevice31)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            *(&v292[2] + 4) = 0;
            goto LABEL_594;
          }
        }

        else
        {
          currentDevice15 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice15 userInterfaceIdiom])
          {
            HIDWORD(v292[2]) = 0;
            LODWORD(v292[3]) = 1;
            goto LABEL_594;
          }
        }

        LODWORD(v292[3]) = currentDevice31 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          currentDevice31 = __sb__runningInSpringBoard();
          if (currentDevice31)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen12 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen12 _referenceBounds];
          }

          HIDWORD(v292[2]) = currentDevice31 ^ 1;
          BSSizeRoundForScale();
          if (v109 >= *(MEMORY[0x277D66E30] + 136))
          {
            goto LABEL_610;
          }
        }

        else
        {
          HIDWORD(v292[2]) = 0;
        }

LABEL_594:
        if (_SBF_Private_IsD54())
        {
          v34 = 0;
          v35 = 0;
          v36 = 0;
          currentDevice32 = 0;
          v38 = 0;
          v39 = 0;
          v40 = 0;
          currentDevice33 = 0;
          v272 = 0;
          v274 = 0;
          v276 = 0;
          v278 = 0;
          v280 = 0;
          v282 = 0;
          v284 = 0;
          v286 = 0;
          v288 = 0;
          v290 = 0;
          memset(v292, 0, 20);
          v42 = &qword_21EC960D0;
          goto LABEL_77;
        }

LABEL_610:
        v110 = __sb__runningInSpringBoard();
        if (v110)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            *(&v292[1] + 4) = 0;
            goto LABEL_620;
          }
        }

        else
        {
          currentDevice16 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice16 userInterfaceIdiom])
          {
            HIDWORD(v292[1]) = 0;
            LODWORD(v292[2]) = 1;
            goto LABEL_620;
          }
        }

        LODWORD(v292[2]) = v110 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          currentDevice31 = __sb__runningInSpringBoard();
          if (currentDevice31)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen13 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen13 _referenceBounds];
          }

          BSSizeRoundForScale();
          HIDWORD(v292[1]) = currentDevice31 ^ 1;
          if (v121 >= *(MEMORY[0x277D66E30] + 120) && (_SBF_Private_IsN84OrSimilarDevice() & 1) != 0)
          {
            v34 = 0;
            v35 = 0;
            v36 = 0;
            currentDevice32 = 0;
            v38 = 0;
            v39 = 0;
            v40 = 0;
            currentDevice33 = 0;
            v272 = 0;
            v274 = 0;
            v276 = 0;
            v278 = 0;
            v280 = 0;
            v282 = 0;
            v284 = 0;
            v286 = 0;
            v288 = 0;
            v290 = 0;
            v292[0] = 0;
            LODWORD(v292[1]) = 0;
            v42 = &qword_21EC96088;
            goto LABEL_77;
          }
        }

        else
        {
          HIDWORD(v292[1]) = 0;
        }

LABEL_620:
        currentDevice31 = __sb__runningInSpringBoard();
        if (currentDevice31)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            *(v292 + 4) = 0;
            goto LABEL_698;
          }
        }

        else
        {
          currentDevice17 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice17 userInterfaceIdiom])
          {
            HIDWORD(v292[0]) = 0;
            LODWORD(v292[1]) = 1;
            goto LABEL_698;
          }
        }

        LODWORD(v292[1]) = currentDevice31 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          currentDevice31 = __sb__runningInSpringBoard();
          if (currentDevice31)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen14 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen14 _referenceBounds];
          }

          HIDWORD(v292[0]) = currentDevice31 ^ 1;
          BSSizeRoundForScale();
          if (v124 >= *(MEMORY[0x277D66E30] + 120))
          {
            goto LABEL_731;
          }
        }

        else
        {
          HIDWORD(v292[0]) = 0;
        }

LABEL_698:
        if (_SBF_Private_IsD33OrSimilarDevice() && (_SBF_Private_IsN84ZoomedOrSimilarDevice() & 1) != 0)
        {
          v34 = 0;
          v35 = 0;
          v36 = 0;
          currentDevice32 = 0;
          v38 = 0;
          v39 = 0;
          v40 = 0;
          currentDevice33 = 0;
          v272 = 0;
          v274 = 0;
          v276 = 0;
          v278 = 0;
          v280 = 0;
          v282 = 0;
          v284 = 0;
          v286 = 0;
          v288 = 0;
          v290 = 0;
          LODWORD(v292[0]) = 0;
          v42 = &qword_21EC96090;
          goto LABEL_77;
        }

LABEL_731:
        if (!_SBF_Private_IsD93Like())
        {
LABEL_735:
          HIDWORD(v290) = 0;
          LODWORD(v292[0]) = 0;
          goto LABEL_792;
        }

        v125 = __sb__runningInSpringBoard();
        if (v125)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            goto LABEL_735;
          }
        }

        else
        {
          currentDevice18 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice18 userInterfaceIdiom])
          {
            HIDWORD(v290) = 0;
            LODWORD(v292[0]) = 1;
            goto LABEL_792;
          }
        }

        LODWORD(v292[0]) = v125 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          currentDevice31 = __sb__runningInSpringBoard();
          if (currentDevice31)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen15 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen15 _referenceBounds];
          }

          BSSizeRoundForScale();
          HIDWORD(v290) = currentDevice31 ^ 1;
          if (v140 >= *(MEMORY[0x277D66E30] + 184))
          {
            v34 = 0;
            v35 = 0;
            v36 = 0;
            currentDevice32 = 0;
            v38 = 0;
            v39 = 0;
            v40 = 0;
            currentDevice33 = 0;
            v272 = 0;
            v274 = 0;
            v276 = 0;
            v278 = 0;
            v280 = 0;
            v282 = 0;
            v284 = 0;
            v286 = 0;
            v288 = 0;
            LODWORD(v290) = 0;
            v42 = &qword_21EC96078;
            goto LABEL_77;
          }
        }

        else
        {
          HIDWORD(v290) = 0;
        }

LABEL_792:
        currentDevice31 = __sb__runningInSpringBoard();
        if (currentDevice31)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            HIDWORD(v288) = 0;
            LODWORD(v290) = 0;
            goto LABEL_802;
          }
        }

        else
        {
          currentDevice19 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice19 userInterfaceIdiom])
          {
            HIDWORD(v288) = 0;
            LODWORD(v290) = 1;
            goto LABEL_802;
          }
        }

        LODWORD(v290) = currentDevice31 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          currentDevice31 = __sb__runningInSpringBoard();
          if (currentDevice31)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen16 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen16 _referenceBounds];
          }

          HIDWORD(v288) = currentDevice31 ^ 1;
          BSSizeRoundForScale();
          if (v132 >= *(MEMORY[0x277D66E30] + 184))
          {
            goto LABEL_806;
          }
        }

        else
        {
          HIDWORD(v288) = 0;
        }

LABEL_802:
        if (_SBF_Private_IsD93Like())
        {
          v34 = 0;
          v35 = 0;
          v36 = 0;
          currentDevice32 = 0;
          v38 = 0;
          v39 = 0;
          v40 = 0;
          currentDevice33 = 0;
          v272 = 0;
          v274 = 0;
          v276 = 0;
          v278 = 0;
          v280 = 0;
          v282 = 0;
          v284 = 0;
          v286 = 0;
          LODWORD(v288) = 0;
          v42 = &qword_21EC96080;
          goto LABEL_77;
        }

LABEL_806:
        if (!_SBF_Private_IsD63Like())
        {
LABEL_810:
          HIDWORD(v286) = 0;
          LODWORD(v288) = 0;
          goto LABEL_846;
        }

        v133 = __sb__runningInSpringBoard();
        if (v133)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            goto LABEL_810;
          }
        }

        else
        {
          currentDevice20 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice20 userInterfaceIdiom])
          {
            HIDWORD(v286) = 0;
            LODWORD(v288) = 1;
            goto LABEL_846;
          }
        }

        LODWORD(v288) = v133 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          currentDevice31 = __sb__runningInSpringBoard();
          if (currentDevice31)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen17 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen17 _referenceBounds];
          }

          BSSizeRoundForScale();
          HIDWORD(v286) = currentDevice31 ^ 1;
          if (v147 >= *(MEMORY[0x277D66E30] + 104))
          {
            v34 = 0;
            v35 = 0;
            v36 = 0;
            currentDevice32 = 0;
            v38 = 0;
            v39 = 0;
            v40 = 0;
            currentDevice33 = 0;
            v272 = 0;
            v274 = 0;
            v276 = 0;
            v278 = 0;
            v280 = 0;
            v282 = 0;
            v284 = 0;
            LODWORD(v286) = 0;
            v42 = &qword_21EC960A8;
            goto LABEL_77;
          }
        }

        else
        {
          HIDWORD(v286) = 0;
        }

LABEL_846:
        currentDevice31 = __sb__runningInSpringBoard();
        if (currentDevice31)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            HIDWORD(v284) = 0;
            LODWORD(v286) = 0;
            goto LABEL_856;
          }
        }

        else
        {
          currentDevice21 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice21 userInterfaceIdiom])
          {
            HIDWORD(v284) = 0;
            LODWORD(v286) = 1;
            goto LABEL_856;
          }
        }

        LODWORD(v286) = currentDevice31 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          currentDevice31 = __sb__runningInSpringBoard();
          if (currentDevice31)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen18 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen18 _referenceBounds];
          }

          HIDWORD(v284) = currentDevice31 ^ 1;
          BSSizeRoundForScale();
          if (v141 >= *(MEMORY[0x277D66E30] + 104))
          {
            goto LABEL_860;
          }
        }

        else
        {
          HIDWORD(v284) = 0;
        }

LABEL_856:
        if (_SBF_Private_IsD63Like())
        {
          v34 = 0;
          v35 = 0;
          v36 = 0;
          currentDevice32 = 0;
          v38 = 0;
          v39 = 0;
          v40 = 0;
          currentDevice33 = 0;
          v272 = 0;
          v274 = 0;
          v276 = 0;
          v278 = 0;
          v280 = 0;
          v282 = 0;
          LODWORD(v284) = 0;
          v42 = &qword_21EC960B0;
          goto LABEL_77;
        }

LABEL_860:
        if (!_SBF_Private_IsD23Like())
        {
LABEL_864:
          HIDWORD(v282) = 0;
          LODWORD(v284) = 0;
          goto LABEL_930;
        }

        v142 = __sb__runningInSpringBoard();
        if (v142)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            goto LABEL_864;
          }
        }

        else
        {
          currentDevice22 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice22 userInterfaceIdiom])
          {
            HIDWORD(v282) = 0;
            LODWORD(v284) = 1;
            goto LABEL_930;
          }
        }

        LODWORD(v284) = v142 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          currentDevice31 = __sb__runningInSpringBoard();
          if (currentDevice31)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen19 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen19 _referenceBounds];
          }

          HIDWORD(v282) = currentDevice31 ^ 1;
          BSSizeRoundForScale();
          if (v157 >= *(MEMORY[0x277D66E30] + 216))
          {
            v34 = 0;
            v35 = 0;
            v36 = 0;
            currentDevice32 = 0;
            v38 = 0;
            v39 = 0;
            v40 = 0;
            currentDevice33 = 0;
            v272 = 0;
            v274 = 0;
            v276 = 0;
            v278 = 0;
            v280 = 0;
            LODWORD(v282) = 0;
            v42 = &qword_21EC960B8;
            goto LABEL_77;
          }
        }

        else
        {
          HIDWORD(v282) = 0;
        }

LABEL_930:
        currentDevice31 = __sb__runningInSpringBoard();
        if (currentDevice31)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            HIDWORD(v280) = 0;
            LODWORD(v282) = 0;
            goto LABEL_940;
          }
        }

        else
        {
          currentDevice23 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice23 userInterfaceIdiom])
          {
            HIDWORD(v280) = 0;
            LODWORD(v282) = 1;
            goto LABEL_940;
          }
        }

        LODWORD(v282) = currentDevice31 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          currentDevice31 = __sb__runningInSpringBoard();
          if (currentDevice31)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen20 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen20 _referenceBounds];
          }

          HIDWORD(v280) = currentDevice31 ^ 1;
          BSSizeRoundForScale();
          if (v150 >= *(MEMORY[0x277D66E30] + 216))
          {
            goto LABEL_944;
          }
        }

        else
        {
          HIDWORD(v280) = 0;
        }

LABEL_940:
        if (_SBF_Private_IsD23Like())
        {
          v34 = 0;
          v35 = 0;
          v36 = 0;
          currentDevice32 = 0;
          v38 = 0;
          v39 = 0;
          v40 = 0;
          currentDevice33 = 0;
          v272 = 0;
          v274 = 0;
          v276 = 0;
          v278 = 0;
          LODWORD(v280) = 0;
          v42 = &qword_21EC960C0;
          goto LABEL_77;
        }

LABEL_944:
        v151 = __sb__runningInSpringBoard();
        if (v151)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            HIDWORD(v278) = 0;
            LODWORD(v280) = 0;
            goto LABEL_954;
          }
        }

        else
        {
          currentDevice24 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice24 userInterfaceIdiom])
          {
            HIDWORD(v278) = 0;
            LODWORD(v280) = 1;
            goto LABEL_954;
          }
        }

        LODWORD(v280) = v151 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          currentDevice31 = __sb__runningInSpringBoard();
          if (currentDevice31)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen21 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen21 _referenceBounds];
          }

          HIDWORD(v278) = currentDevice31 ^ 1;
          BSSizeRoundForScale();
          if (v156 >= *(MEMORY[0x277D66E30] + 120))
          {
            v34 = 0;
            v35 = 0;
            v36 = 0;
            currentDevice32 = 0;
            v38 = 0;
            v39 = 0;
            v40 = 0;
            currentDevice33 = 0;
            v272 = 0;
            v274 = 0;
            v276 = 0;
            LODWORD(v278) = 0;
            v42 = &qword_21EC96098;
            goto LABEL_77;
          }
        }

        else
        {
          HIDWORD(v278) = 0;
        }

LABEL_954:
        currentDevice31 = __sb__runningInSpringBoard();
        if (currentDevice31)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            HIDWORD(v276) = 0;
            LODWORD(v278) = 0;
            goto LABEL_1014;
          }
        }

        else
        {
          currentDevice25 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice25 userInterfaceIdiom])
          {
            HIDWORD(v276) = 0;
            LODWORD(v278) = 1;
            goto LABEL_1014;
          }
        }

        LODWORD(v278) = currentDevice31 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          currentDevice31 = __sb__runningInSpringBoard();
          if (currentDevice31)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen22 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen22 _referenceBounds];
          }

          HIDWORD(v276) = currentDevice31 ^ 1;
          BSSizeRoundForScale();
          if (v160 >= *(MEMORY[0x277D66E30] + 120))
          {
            goto LABEL_1030;
          }
        }

        else
        {
          HIDWORD(v276) = 0;
        }

LABEL_1014:
        if (_SBF_Private_IsD33OrSimilarDevice())
        {
          v34 = 0;
          v35 = 0;
          v36 = 0;
          currentDevice32 = 0;
          v38 = 0;
          v39 = 0;
          v40 = 0;
          currentDevice33 = 0;
          v272 = 0;
          v274 = 0;
          LODWORD(v276) = 0;
          v42 = &qword_21EC960A0;
          goto LABEL_77;
        }

LABEL_1030:
        v161 = __sb__runningInSpringBoard();
        if (v161)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            HIDWORD(v274) = 0;
            LODWORD(v276) = 0;
            goto LABEL_1040;
          }
        }

        else
        {
          currentDevice26 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice26 userInterfaceIdiom])
          {
            HIDWORD(v274) = 0;
            LODWORD(v276) = 1;
            goto LABEL_1040;
          }
        }

        LODWORD(v276) = v161 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          currentDevice31 = __sb__runningInSpringBoard();
          if (currentDevice31)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen23 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen23 _referenceBounds];
          }

          HIDWORD(v274) = currentDevice31 ^ 1;
          BSSizeRoundForScale();
          if (v170 >= *(MEMORY[0x277D66E30] + 104))
          {
            v34 = 0;
            v35 = 0;
            v36 = 0;
            currentDevice32 = 0;
            v38 = 0;
            v39 = 0;
            v40 = 0;
            currentDevice33 = 0;
            v272 = 0;
            LODWORD(v274) = 0;
            v42 = &qword_21EC96068;
            goto LABEL_77;
          }
        }

        else
        {
          HIDWORD(v274) = 0;
        }

LABEL_1040:
        currentDevice31 = __sb__runningInSpringBoard();
        if (currentDevice31)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            v272 = 0;
            LODWORD(v274) = 0;
            goto LABEL_1131;
          }
        }

        else
        {
          currentDevice27 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice27 userInterfaceIdiom])
          {
            v272 = 0;
            LODWORD(v274) = 1;
            goto LABEL_1131;
          }
        }

        LODWORD(v274) = currentDevice31 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          currentDevice31 = __sb__runningInSpringBoard();
          if (currentDevice31)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen24 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen24 _referenceBounds];
          }

          v272 = currentDevice31 ^ 1;
          BSSizeRoundForScale();
          if (v177 >= *(MEMORY[0x277D66E30] + 104))
          {
            goto LABEL_1167;
          }
        }

        else
        {
          v272 = 0;
        }

LABEL_1131:
        if (_SBF_Private_IsD53())
        {
          v34 = 0;
          v35 = 0;
          v36 = 0;
          currentDevice32 = 0;
          v38 = 0;
          v39 = 0;
          v40 = 0;
          currentDevice33 = 0;
          v42 = &qword_21EC96070;
          goto LABEL_77;
        }

LABEL_1167:
        if (_SBF_Private_IsD16() && (_SBF_Private_IsD52OrSimilarDevice() & 1) != 0)
        {
          v34 = 0;
          v35 = 0;
          v36 = 0;
          currentDevice32 = 0;
          v38 = 0;
          v39 = 0;
          v40 = 0;
          currentDevice33 = 0;
          v42 = &qword_21EC96048;
          goto LABEL_77;
        }

        if (_SBF_Private_IsD52ZoomedOrSimilarDevice() && (_SBF_Private_IsD16() & 1) != 0)
        {
          v34 = 0;
          v35 = 0;
          v36 = 0;
          currentDevice32 = 0;
          v38 = 0;
          v39 = 0;
          v40 = 0;
          currentDevice33 = 0;
          v42 = &qword_21EC96050;
          goto LABEL_77;
        }

        if (_SBF_Private_IsD52OrSimilarDevice())
        {
          v34 = 0;
          v35 = 0;
          v36 = 0;
          currentDevice32 = 0;
          v38 = 0;
          v39 = 0;
          v40 = 0;
          currentDevice33 = 0;
          v42 = &qword_21EC96038;
          goto LABEL_77;
        }

        if (_SBF_Private_IsD52ZoomedOrSimilarDevice())
        {
          v34 = 0;
          v35 = 0;
          v36 = 0;
          currentDevice32 = 0;
          v38 = 0;
          v39 = 0;
          v40 = 0;
          currentDevice33 = 0;
          v42 = &qword_21EC96040;
          goto LABEL_77;
        }

        v179 = __sb__runningInSpringBoard();
        if (v179)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            v40 = 0;
            currentDevice33 = 0;
            goto LABEL_1267;
          }
        }

        else
        {
          currentDevice28 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice28 userInterfaceIdiom])
          {
            v40 = 0;
            currentDevice33 = 1;
            goto LABEL_1267;
          }
        }

        currentDevice33 = v179 ^ 1u;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          currentDevice31 = __sb__runningInSpringBoard();
          if (currentDevice31)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen25 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen25 _referenceBounds];
          }

          v40 = currentDevice31 ^ 1;
          BSSizeRoundForScale();
          if (v194 >= *(MEMORY[0x277D66E30] + 88))
          {
            v34 = 0;
            v35 = 0;
            v36 = 0;
            currentDevice32 = 0;
            v38 = 0;
            v39 = 0;
            v42 = &qword_21EC96058;
            goto LABEL_77;
          }
        }

        else
        {
          v40 = 0;
        }

LABEL_1267:
        v191 = __sb__runningInSpringBoard();
        if (v191)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            v38 = 0;
            v39 = 0;
            goto LABEL_1277;
          }
        }

        else
        {
          currentDevice29 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice29 userInterfaceIdiom])
          {
            v38 = 0;
            v39 = 1;
            goto LABEL_1277;
          }
        }

        v39 = v191 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          currentDevice31 = __sb__runningInSpringBoard();
          if (currentDevice31)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen26 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen26 _referenceBounds];
          }

          v38 = currentDevice31 ^ 1;
          BSSizeRoundForScale();
          if (v195 >= *(MEMORY[0x277D66E30] + 72))
          {
            v34 = 0;
            v35 = 0;
            v36 = 0;
            currentDevice32 = 0;
            v42 = &qword_21EC96060;
            goto LABEL_77;
          }
        }

        else
        {
          v38 = 0;
        }

LABEL_1277:
        currentDevice31 = __sb__runningInSpringBoard();
        if (currentDevice31)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            v36 = 0;
            currentDevice32 = 0;
            goto LABEL_1287;
          }
        }

        else
        {
          currentDevice30 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice30 userInterfaceIdiom])
          {
            v36 = 0;
            currentDevice32 = 1;
            goto LABEL_1287;
          }
        }

        currentDevice32 = currentDevice31 ^ 1;
        currentDevice31 = __sb__runningInSpringBoard();
        if (currentDevice31)
        {
          __sb__mainScreenReferenceBounds();
        }

        else
        {
          mainScreen27 = [MEMORY[0x277D759A0] mainScreen];
          [mainScreen27 _referenceBounds];
        }

        v36 = currentDevice31 ^ 1;
        BSSizeRoundForScale();
        if (v192 >= *(MEMORY[0x277D66E30] + 56))
        {
          v34 = 0;
          v35 = 0;
          v42 = &qword_21EC96030;
          goto LABEL_77;
        }

LABEL_1287:
        v193 = __sb__runningInSpringBoard();
        if (v193)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            v34 = 0;
            v35 = 0;
            goto LABEL_1304;
          }
        }

        else
        {
          currentDevice31 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice31 userInterfaceIdiom])
          {
            v35 = 0;
            v34 = 1;
            goto LABEL_1304;
          }
        }

        v34 = v193 ^ 1;
        v196 = __sb__runningInSpringBoard();
        if (v196)
        {
          __sb__mainScreenReferenceBounds();
        }

        else
        {
          mainScreen28 = [MEMORY[0x277D759A0] mainScreen];
          [mainScreen28 _referenceBounds];
        }

        v35 = v196 ^ 1;
        BSSizeRoundForScale();
        if (v197 >= *(MEMORY[0x277D66E30] + 40))
        {
          v42 = &qword_21EC96028;
          goto LABEL_1306;
        }

LABEL_1304:
        v42 = &CSQuickActionButtonDiameter;
LABEL_1306:
        v31 = mainScreen28;
LABEL_77:
        v49 = *v42;
        if (v35)
        {

          if (!v34)
          {
            goto LABEL_79;
          }
        }

        else if (!v34)
        {
LABEL_79:
          if (v36)
          {
            goto LABEL_80;
          }

          goto LABEL_191;
        }

        if (v36)
        {
LABEL_80:

          if (!currentDevice32)
          {
            goto LABEL_81;
          }

          goto LABEL_192;
        }

LABEL_191:
        if (!currentDevice32)
        {
LABEL_81:
          if (v38)
          {
            goto LABEL_82;
          }

          goto LABEL_193;
        }

LABEL_192:

        if (v38)
        {
LABEL_82:

          if (!v39)
          {
            goto LABEL_83;
          }

          goto LABEL_194;
        }

LABEL_193:
        if (!v39)
        {
LABEL_83:
          if (!v40)
          {
            goto LABEL_85;
          }

          goto LABEL_84;
        }

LABEL_194:

        if (!v40)
        {
LABEL_85:
          if (currentDevice33)
          {
          }

          if (v272)
          {
          }

          if (v274)
          {
          }

          if (HIDWORD(v274))
          {
          }

          if (v276)
          {
          }

          if (HIDWORD(v276))
          {
          }

          if (v278)
          {
          }

          if (HIDWORD(v278))
          {
          }

          if (v280)
          {
          }

          if (HIDWORD(v280))
          {
          }

          if (v282)
          {
          }

          if (HIDWORD(v282))
          {
          }

          if (v284)
          {
          }

          if (HIDWORD(v284))
          {
          }

          if (v286)
          {
          }

          if (HIDWORD(v286))
          {
          }

          if (v288)
          {
          }

          if (HIDWORD(v288))
          {
          }

          if (v290)
          {
          }

          if (HIDWORD(v290))
          {
          }

          if (LODWORD(v292[0]))
          {
          }

          if (HIDWORD(v292[0]))
          {
          }

          if (LODWORD(v292[1]))
          {
          }

          if (HIDWORD(v292[1]))
          {
          }

          if (LODWORD(v292[2]))
          {
          }

          if (HIDWORD(v292[2]))
          {
          }

          if (LODWORD(v292[3]))
          {
          }

          if (HIDWORD(v292[3]))
          {
          }

          if (LODWORD(v292[4]))
          {
          }

          if (HIDWORD(v292[4]))
          {
          }

          if (LODWORD(v292[5]))
          {
          }

          if (HIDWORD(v292[5]))
          {
          }

          if (LODWORD(v292[6]))
          {
          }

          if (HIDWORD(v292[6]))
          {
          }

          if (LODWORD(v292[7]))
          {
          }

          if (HIDWORD(v292[7]))
          {
          }

          if (LODWORD(v292[8]))
          {
          }

          if (HIDWORD(v292[8]))
          {
          }

          if (v293)
          {
          }

          if (HIDWORD(v293))
          {
          }

          if (v294)
          {
          }

          if (HIDWORD(v294))
          {
          }

          if (v295)
          {
          }

          if (HIDWORD(v295))
          {
          }

          if (v296)
          {
          }

          if (HIDWORD(v296))
          {
          }

          if (v297)
          {
          }

          if (HIDWORD(v297))
          {
          }

          if (v298)
          {
          }

          if (HIDWORD(v298))
          {
          }

          v50 = v49 + 0.0;
          v51 = __sb__runningInSpringBoard();
          v52 = v51;
          if (portraitCopy)
          {
            mainScreen29 = &CSQuickActionButtonInsetY;
            if (v51)
            {
              if (SBFEffectiveDeviceClass() != 2)
              {
                v298 = 0;
LABEL_209:
                v55 = __sb__runningInSpringBoard();
                if (v55)
                {
                  if (SBFEffectiveDeviceClass() != 2)
                  {
                    v297 = 0;
LABEL_227:
                    v57 = __sb__runningInSpringBoard();
                    if (v57)
                    {
                      if (SBFEffectiveDeviceClass() != 2)
                      {
                        v296 = 0;
LABEL_245:
                        v59 = __sb__runningInSpringBoard();
                        if (v59)
                        {
                          if (SBFEffectiveDeviceClass() != 2)
                          {
                            v295 = 0;
LABEL_275:
                            v64 = __sb__runningInSpringBoard();
                            if (v64)
                            {
                              if (SBFEffectiveDeviceClass() != 2)
                              {
                                v294 = 0;
LABEL_294:
                                v75 = __sb__runningInSpringBoard();
                                if (v75)
                                {
                                  if (SBFEffectiveDeviceClass() != 2)
                                  {
                                    v293 = 0;
LABEL_450:
                                    mainScreen30 = __sb__runningInSpringBoard();
                                    if (mainScreen30)
                                    {
                                      if (SBFEffectiveDeviceClass() == 2)
                                      {
                                        goto LABEL_471;
                                      }

LABEL_454:
                                      HIDWORD(v292[8]) = mainScreen30 ^ 1;
                                      if (!_SBF_Private_IsD94Like())
                                      {
LABEL_458:
                                        *(&v292[7] + 4) = 0;
                                        goto LABEL_544;
                                      }

                                      v91 = __sb__runningInSpringBoard();
                                      if (v91)
                                      {
                                        if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                                        {
                                          goto LABEL_458;
                                        }
                                      }

                                      else
                                      {
                                        currentDevice14 = [MEMORY[0x277D75418] currentDevice];
                                        if ([currentDevice14 userInterfaceIdiom])
                                        {
                                          HIDWORD(v292[7]) = 0;
                                          LODWORD(v292[8]) = 1;
                                          goto LABEL_544;
                                        }
                                      }

                                      LODWORD(v292[8]) = v91 ^ 1;
                                      if (SBFEffectiveHomeButtonType() == 2)
                                      {
                                        v99 = __sb__runningInSpringBoard();
                                        if (v99)
                                        {
                                          __sb__mainScreenReferenceBounds();
                                        }

                                        else
                                        {
                                          currentDevice17 = [MEMORY[0x277D759A0] mainScreen];
                                          [currentDevice17 _referenceBounds];
                                        }

                                        mainScreen30 = v99 ^ 1u;
                                        BSSizeRoundForScale();
                                        HIDWORD(v292[7]) = mainScreen30;
                                        if (v107 >= *(MEMORY[0x277D66E30] + 200))
                                        {
LABEL_607:
                                          memset(v292, 0, 60);
                                          v291 = 0;
                                          v287 = 0;
                                          v289 = 0;
                                          v283 = 0;
                                          v285 = 0;
                                          v279 = 0;
                                          v281 = 0;
                                          v275 = 0;
                                          v277 = 0;
                                          v273 = 0;
                                          v271 = 0;
                                          v269 = 0;
                                          v67 = 0;
                                          v68 = 0;
                                          v69 = 0;
                                          v70 = 0;
                                          v71 = 0;
                                          v72 = 0;
                                          v73 = mainScreen29 + 23;
                                          goto LABEL_330;
                                        }
                                      }

                                      else
                                      {
                                        HIDWORD(v292[7]) = 0;
                                      }

LABEL_544:
                                      mainScreen30 = __sb__runningInSpringBoard();
                                      if (mainScreen30)
                                      {
                                        if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                                        {
                                          *(&v292[6] + 4) = 0;
                                          goto LABEL_554;
                                        }
                                      }

                                      else
                                      {
                                        currentDevice13 = [MEMORY[0x277D75418] currentDevice];
                                        if ([currentDevice13 userInterfaceIdiom])
                                        {
                                          HIDWORD(v292[6]) = 0;
                                          LODWORD(v292[7]) = 1;
LABEL_554:
                                          if ((_SBF_Private_IsD94Like() & 1) == 0)
                                          {
                                            goto LABEL_558;
                                          }

LABEL_580:
                                          memset(v292, 0, 52);
                                          v291 = 0;
                                          v287 = 0;
                                          v289 = 0;
                                          v283 = 0;
                                          v285 = 0;
                                          v279 = 0;
                                          v281 = 0;
                                          v275 = 0;
                                          v277 = 0;
                                          v273 = 0;
                                          v271 = 0;
                                          v269 = 0;
                                          v67 = 0;
                                          v68 = 0;
                                          v69 = 0;
                                          v70 = 0;
                                          v71 = 0;
                                          v72 = 0;
                                          v73 = mainScreen29 + 24;
                                          goto LABEL_330;
                                        }
                                      }

                                      LODWORD(v292[7]) = mainScreen30 ^ 1;
                                      if (SBFEffectiveHomeButtonType() == 2)
                                      {
                                        mainScreen30 = __sb__runningInSpringBoard();
                                        if (mainScreen30)
                                        {
                                          __sb__mainScreenReferenceBounds();
                                        }

                                        else
                                        {
                                          currentDevice16 = [MEMORY[0x277D759A0] mainScreen];
                                          [currentDevice16 _referenceBounds];
                                        }

                                        HIDWORD(v292[6]) = mainScreen30 ^ 1;
                                        BSSizeRoundForScale();
                                        if (v100 >= *(MEMORY[0x277D66E30] + 200))
                                        {
LABEL_558:
                                          if (!_SBF_Private_IsD64Like())
                                          {
LABEL_562:
                                            *(&v292[5] + 4) = 0;
                                            goto LABEL_630;
                                          }

                                          v101 = __sb__runningInSpringBoard();
                                          if (v101)
                                          {
                                            if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                                            {
                                              goto LABEL_562;
                                            }
                                          }

                                          else
                                          {
                                            currentDevice15 = [MEMORY[0x277D75418] currentDevice];
                                            if ([currentDevice15 userInterfaceIdiom])
                                            {
                                              HIDWORD(v292[5]) = 0;
                                              LODWORD(v292[6]) = 1;
                                              goto LABEL_630;
                                            }
                                          }

                                          LODWORD(v292[6]) = v101 ^ 1;
                                          if (SBFEffectiveHomeButtonType() == 2)
                                          {
                                            v111 = __sb__runningInSpringBoard();
                                            if (v111)
                                            {
                                              __sb__mainScreenReferenceBounds();
                                            }

                                            else
                                            {
                                              currentDevice18 = [MEMORY[0x277D759A0] mainScreen];
                                              [currentDevice18 _referenceBounds];
                                            }

                                            mainScreen30 = v111 ^ 1u;
                                            BSSizeRoundForScale();
                                            HIDWORD(v292[5]) = mainScreen30;
                                            if (v122 >= *(MEMORY[0x277D66E30] + 136))
                                            {
LABEL_728:
                                              memset(v292, 0, 44);
                                              v291 = 0;
                                              v287 = 0;
                                              v289 = 0;
                                              v283 = 0;
                                              v285 = 0;
                                              v279 = 0;
                                              v281 = 0;
                                              v275 = 0;
                                              v277 = 0;
                                              v273 = 0;
                                              v271 = 0;
                                              v269 = 0;
                                              v67 = 0;
                                              v68 = 0;
                                              v69 = 0;
                                              v70 = 0;
                                              v71 = 0;
                                              v72 = 0;
                                              v73 = mainScreen29 + 25;
                                              goto LABEL_330;
                                            }
                                          }

                                          else
                                          {
                                            HIDWORD(v292[5]) = 0;
                                          }

LABEL_630:
                                          mainScreen30 = __sb__runningInSpringBoard();
                                          if (mainScreen30)
                                          {
                                            if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                                            {
                                              *(&v292[4] + 4) = 0;
                                              goto LABEL_640;
                                            }
                                          }

                                          else
                                          {
                                            currentDevice12 = [MEMORY[0x277D75418] currentDevice];
                                            if ([currentDevice12 userInterfaceIdiom])
                                            {
                                              HIDWORD(v292[4]) = 0;
                                              LODWORD(v292[5]) = 1;
LABEL_640:
                                              if ((_SBF_Private_IsD64Like() & 1) == 0)
                                              {
                                                goto LABEL_644;
                                              }

LABEL_675:
                                              memset(v292, 0, 36);
                                              v291 = 0;
                                              v287 = 0;
                                              v289 = 0;
                                              v283 = 0;
                                              v285 = 0;
                                              v279 = 0;
                                              v281 = 0;
                                              v275 = 0;
                                              v277 = 0;
                                              v273 = 0;
                                              v271 = 0;
                                              v269 = 0;
                                              v67 = 0;
                                              v68 = 0;
                                              v69 = 0;
                                              v70 = 0;
                                              v71 = 0;
                                              v72 = 0;
                                              v73 = mainScreen29 + 26;
                                              goto LABEL_330;
                                            }
                                          }

                                          LODWORD(v292[5]) = mainScreen30 ^ 1;
                                          if (SBFEffectiveHomeButtonType() == 2)
                                          {
                                            mainScreen30 = __sb__runningInSpringBoard();
                                            if (mainScreen30)
                                            {
                                              __sb__mainScreenReferenceBounds();
                                            }

                                            else
                                            {
                                              currentDevice19 = [MEMORY[0x277D759A0] mainScreen];
                                              [currentDevice19 _referenceBounds];
                                            }

                                            HIDWORD(v292[4]) = mainScreen30 ^ 1;
                                            BSSizeRoundForScale();
                                            if (v112 >= *(MEMORY[0x277D66E30] + 136))
                                            {
LABEL_644:
                                              v113 = __sb__runningInSpringBoard();
                                              if (v113)
                                              {
                                                if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                                                {
                                                  *(&v292[3] + 4) = 0;
                                                  goto LABEL_654;
                                                }
                                              }

                                              else
                                              {
                                                mainScreen8 = [MEMORY[0x277D75418] currentDevice];
                                                if ([mainScreen8 userInterfaceIdiom])
                                                {
                                                  HIDWORD(v292[3]) = 0;
                                                  LODWORD(v292[4]) = 1;
                                                  goto LABEL_654;
                                                }
                                              }

                                              LODWORD(v292[4]) = v113 ^ 1;
                                              if (SBFEffectiveHomeButtonType() == 2)
                                              {
                                                v114 = __sb__runningInSpringBoard();
                                                if (v114)
                                                {
                                                  __sb__mainScreenReferenceBounds();
                                                }

                                                else
                                                {
                                                  mainScreen12 = [MEMORY[0x277D759A0] mainScreen];
                                                  [mainScreen12 _referenceBounds];
                                                }

                                                mainScreen30 = v114 ^ 1u;
                                                BSSizeRoundForScale();
                                                HIDWORD(v292[3]) = mainScreen30;
                                                if (v119 >= *(MEMORY[0x277D66E30] + 136))
                                                {
LABEL_718:
                                                  memset(v292, 0, 28);
                                                  v291 = 0;
                                                  v287 = 0;
                                                  v289 = 0;
                                                  v283 = 0;
                                                  v285 = 0;
                                                  v279 = 0;
                                                  v281 = 0;
                                                  v275 = 0;
                                                  v277 = 0;
                                                  v273 = 0;
                                                  v271 = 0;
                                                  v269 = 0;
                                                  v67 = 0;
                                                  v68 = 0;
                                                  v69 = 0;
                                                  v70 = 0;
                                                  v71 = 0;
                                                  v72 = 0;
                                                  v73 = mainScreen29 + 21;
                                                  goto LABEL_330;
                                                }
                                              }

                                              else
                                              {
                                                HIDWORD(v292[3]) = 0;
                                              }

LABEL_654:
                                              mainScreen30 = __sb__runningInSpringBoard();
                                              if (mainScreen30)
                                              {
                                                if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                                                {
                                                  *(&v292[2] + 4) = 0;
                                                  goto LABEL_705;
                                                }
                                              }

                                              else
                                              {
                                                mainScreen7 = [MEMORY[0x277D75418] currentDevice];
                                                if ([mainScreen7 userInterfaceIdiom])
                                                {
                                                  HIDWORD(v292[2]) = 0;
                                                  LODWORD(v292[3]) = 1;
LABEL_705:
                                                  if ((_SBF_Private_IsD54() & 1) == 0)
                                                  {
                                                    goto LABEL_740;
                                                  }

LABEL_712:
                                                  memset(v292, 0, 20);
                                                  v291 = 0;
                                                  v287 = 0;
                                                  v289 = 0;
                                                  v283 = 0;
                                                  v285 = 0;
                                                  v279 = 0;
                                                  v281 = 0;
                                                  v275 = 0;
                                                  v277 = 0;
                                                  v273 = 0;
                                                  v271 = 0;
                                                  v269 = 0;
                                                  v67 = 0;
                                                  v68 = 0;
                                                  v69 = 0;
                                                  v70 = 0;
                                                  v71 = 0;
                                                  v72 = 0;
                                                  v73 = mainScreen29 + 22;
                                                  goto LABEL_330;
                                                }
                                              }

                                              LODWORD(v292[3]) = mainScreen30 ^ 1;
                                              if (SBFEffectiveHomeButtonType() == 2)
                                              {
                                                mainScreen30 = __sb__runningInSpringBoard();
                                                if (mainScreen30)
                                                {
                                                  __sb__mainScreenReferenceBounds();
                                                }

                                                else
                                                {
                                                  currentDevice21 = [MEMORY[0x277D759A0] mainScreen];
                                                  [currentDevice21 _referenceBounds];
                                                }

                                                HIDWORD(v292[2]) = mainScreen30 ^ 1;
                                                BSSizeRoundForScale();
                                                if (v126 >= *(MEMORY[0x277D66E30] + 136))
                                                {
LABEL_740:
                                                  v127 = __sb__runningInSpringBoard();
                                                  if (v127)
                                                  {
                                                    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                                                    {
                                                      *(&v292[1] + 4) = 0;
                                                      goto LABEL_758;
                                                    }
                                                  }

                                                  else
                                                  {
                                                    mainScreen10 = [MEMORY[0x277D75418] currentDevice];
                                                    if ([mainScreen10 userInterfaceIdiom])
                                                    {
                                                      HIDWORD(v292[1]) = 0;
                                                      LODWORD(v292[2]) = 1;
                                                      goto LABEL_758;
                                                    }
                                                  }

                                                  LODWORD(v292[2]) = v127 ^ 1;
                                                  if (SBFEffectiveHomeButtonType() == 2)
                                                  {
                                                    v130 = __sb__runningInSpringBoard();
                                                    if (v130)
                                                    {
                                                      __sb__mainScreenReferenceBounds();
                                                    }

                                                    else
                                                    {
                                                      currentDevice20 = [MEMORY[0x277D759A0] mainScreen];
                                                      [currentDevice20 _referenceBounds];
                                                    }

                                                    mainScreen30 = v130 ^ 1u;
                                                    BSSizeRoundForScale();
                                                    HIDWORD(v292[1]) = mainScreen30;
                                                    if (v134 >= *(MEMORY[0x277D66E30] + 120) && (_SBF_Private_IsN84OrSimilarDevice() & 1) != 0)
                                                    {
LABEL_820:
                                                      *(v292 + 4) = 0;
                                                      LODWORD(v292[0]) = 0;
                                                      v291 = 0;
                                                      v287 = 0;
                                                      v289 = 0;
                                                      v283 = 0;
                                                      v285 = 0;
                                                      v279 = 0;
                                                      v281 = 0;
                                                      v275 = 0;
                                                      v277 = 0;
                                                      v273 = 0;
                                                      v271 = 0;
                                                      v269 = 0;
                                                      v67 = 0;
                                                      v68 = 0;
                                                      v69 = 0;
                                                      v70 = 0;
                                                      v71 = 0;
                                                      v72 = 0;
                                                      v73 = mainScreen29 + 13;
                                                      goto LABEL_330;
                                                    }
                                                  }

                                                  else
                                                  {
                                                    HIDWORD(v292[1]) = 0;
                                                  }

LABEL_758:
                                                  mainScreen30 = __sb__runningInSpringBoard();
                                                  if (mainScreen30)
                                                  {
                                                    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                                                    {
                                                      *(v292 + 4) = 0;
LABEL_778:
                                                      if (!_SBF_Private_IsD33OrSimilarDevice() || (_SBF_Private_IsN84ZoomedOrSimilarDevice() & 1) == 0)
                                                      {
                                                        goto LABEL_823;
                                                      }

LABEL_787:
                                                      LODWORD(v292[0]) = 0;
                                                      v291 = 0;
                                                      v287 = 0;
                                                      v289 = 0;
                                                      v283 = 0;
                                                      v285 = 0;
                                                      v279 = 0;
                                                      v281 = 0;
                                                      v275 = 0;
                                                      v277 = 0;
                                                      v273 = 0;
                                                      v271 = 0;
                                                      v269 = 0;
                                                      v67 = 0;
                                                      v68 = 0;
                                                      v69 = 0;
                                                      v70 = 0;
                                                      v71 = 0;
                                                      v72 = 0;
                                                      v73 = mainScreen29 + 14;
                                                      goto LABEL_330;
                                                    }
                                                  }

                                                  else
                                                  {
                                                    mainScreen11 = [MEMORY[0x277D75418] currentDevice];
                                                    if ([mainScreen11 userInterfaceIdiom])
                                                    {
                                                      HIDWORD(v292[0]) = 0;
                                                      LODWORD(v292[1]) = 1;
                                                      goto LABEL_778;
                                                    }
                                                  }

                                                  LODWORD(v292[1]) = mainScreen30 ^ 1;
                                                  if (SBFEffectiveHomeButtonType() == 2)
                                                  {
                                                    mainScreen30 = __sb__runningInSpringBoard();
                                                    if (mainScreen30)
                                                    {
                                                      __sb__mainScreenReferenceBounds();
                                                    }

                                                    else
                                                    {
                                                      currentDevice23 = [MEMORY[0x277D759A0] mainScreen];
                                                      [currentDevice23 _referenceBounds];
                                                    }

                                                    HIDWORD(v292[0]) = mainScreen30 ^ 1;
                                                    BSSizeRoundForScale();
                                                    if (v136 >= *(MEMORY[0x277D66E30] + 120))
                                                    {
LABEL_823:
                                                      if (!_SBF_Private_IsD93Like())
                                                      {
LABEL_827:
                                                        LODWORD(v292[0]) = 0;
                                                        HIDWORD(v291) = 0;
                                                        goto LABEL_871;
                                                      }

                                                      v137 = __sb__runningInSpringBoard();
                                                      if (v137)
                                                      {
                                                        if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                                                        {
                                                          goto LABEL_827;
                                                        }
                                                      }

                                                      else
                                                      {
                                                        mainScreen13 = [MEMORY[0x277D75418] currentDevice];
                                                        if ([mainScreen13 userInterfaceIdiom])
                                                        {
                                                          HIDWORD(v291) = 0;
                                                          LODWORD(v292[0]) = 1;
                                                          goto LABEL_871;
                                                        }
                                                      }

                                                      LODWORD(v292[0]) = v137 ^ 1;
                                                      if (SBFEffectiveHomeButtonType() == 2)
                                                      {
                                                        mainScreen30 = __sb__runningInSpringBoard();
                                                        if (mainScreen30)
                                                        {
                                                          __sb__mainScreenReferenceBounds();
                                                        }

                                                        else
                                                        {
                                                          currentDevice25 = [MEMORY[0x277D759A0] mainScreen];
                                                          [currentDevice25 _referenceBounds];
                                                        }

                                                        HIDWORD(v291) = mainScreen30 ^ 1;
                                                        BSSizeRoundForScale();
                                                        if (v148 >= *(MEMORY[0x277D66E30] + 184))
                                                        {
LABEL_925:
                                                          LODWORD(v291) = 0;
                                                          v287 = 0;
                                                          v289 = 0;
                                                          v283 = 0;
                                                          v285 = 0;
                                                          v279 = 0;
                                                          v281 = 0;
                                                          v275 = 0;
                                                          v277 = 0;
                                                          v273 = 0;
                                                          v271 = 0;
                                                          v269 = 0;
                                                          v67 = 0;
                                                          v68 = 0;
                                                          v69 = 0;
                                                          v70 = 0;
                                                          v71 = 0;
                                                          v72 = 0;
                                                          v73 = mainScreen29 + 11;
                                                          goto LABEL_330;
                                                        }
                                                      }

                                                      else
                                                      {
                                                        HIDWORD(v291) = 0;
                                                      }

LABEL_871:
                                                      mainScreen30 = __sb__runningInSpringBoard();
                                                      if (mainScreen30)
                                                      {
                                                        if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                                                        {
                                                          LODWORD(v291) = 0;
                                                          HIDWORD(v289) = 0;
                                                          goto LABEL_881;
                                                        }
                                                      }

                                                      else
                                                      {
                                                        mainScreen9 = [MEMORY[0x277D75418] currentDevice];
                                                        if ([mainScreen9 userInterfaceIdiom])
                                                        {
                                                          HIDWORD(v289) = 0;
                                                          LODWORD(v291) = 1;
LABEL_881:
                                                          if ((_SBF_Private_IsD93Like() & 1) == 0)
                                                          {
                                                            goto LABEL_885;
                                                          }

LABEL_907:
                                                          LODWORD(v289) = 0;
                                                          v285 = 0;
                                                          v287 = 0;
                                                          v281 = 0;
                                                          v283 = 0;
                                                          v277 = 0;
                                                          v279 = 0;
                                                          v275 = 0;
                                                          v273 = 0;
                                                          v271 = 0;
                                                          v269 = 0;
                                                          v67 = 0;
                                                          v68 = 0;
                                                          v69 = 0;
                                                          v70 = 0;
                                                          v71 = 0;
                                                          v72 = 0;
                                                          v73 = mainScreen29 + 12;
                                                          goto LABEL_330;
                                                        }
                                                      }

                                                      LODWORD(v291) = mainScreen30 ^ 1;
                                                      if (SBFEffectiveHomeButtonType() == 2)
                                                      {
                                                        mainScreen30 = __sb__runningInSpringBoard();
                                                        if (mainScreen30)
                                                        {
                                                          __sb__mainScreenReferenceBounds();
                                                        }

                                                        else
                                                        {
                                                          currentDevice22 = [MEMORY[0x277D759A0] mainScreen];
                                                          [currentDevice22 _referenceBounds];
                                                        }

                                                        HIDWORD(v289) = mainScreen30 ^ 1;
                                                        BSSizeRoundForScale();
                                                        if (v143 >= *(MEMORY[0x277D66E30] + 184))
                                                        {
LABEL_885:
                                                          if (!_SBF_Private_IsD63Like())
                                                          {
LABEL_889:
                                                            LODWORD(v289) = 0;
                                                            HIDWORD(v287) = 0;
                                                            goto LABEL_964;
                                                          }

                                                          v144 = __sb__runningInSpringBoard();
                                                          if (v144)
                                                          {
                                                            if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                                                            {
                                                              goto LABEL_889;
                                                            }
                                                          }

                                                          else
                                                          {
                                                            mainScreen16 = [MEMORY[0x277D75418] currentDevice];
                                                            if ([mainScreen16 userInterfaceIdiom])
                                                            {
                                                              HIDWORD(v287) = 0;
                                                              LODWORD(v289) = 1;
                                                              goto LABEL_964;
                                                            }
                                                          }

                                                          LODWORD(v289) = v144 ^ 1;
                                                          if (SBFEffectiveHomeButtonType() == 2)
                                                          {
                                                            mainScreen30 = __sb__runningInSpringBoard();
                                                            if (mainScreen30)
                                                            {
                                                              __sb__mainScreenReferenceBounds();
                                                            }

                                                            else
                                                            {
                                                              currentDevice27 = [MEMORY[0x277D759A0] mainScreen];
                                                              [currentDevice27 _referenceBounds];
                                                            }

                                                            HIDWORD(v287) = mainScreen30 ^ 1;
                                                            BSSizeRoundForScale();
                                                            if (v158 >= *(MEMORY[0x277D66E30] + 104))
                                                            {
LABEL_1027:
                                                              LODWORD(v287) = 0;
                                                              v283 = 0;
                                                              v285 = 0;
                                                              v279 = 0;
                                                              v281 = 0;
                                                              v275 = 0;
                                                              v277 = 0;
                                                              v273 = 0;
                                                              v271 = 0;
                                                              v269 = 0;
                                                              v67 = 0;
                                                              v68 = 0;
                                                              v69 = 0;
                                                              v70 = 0;
                                                              v71 = 0;
                                                              v72 = 0;
                                                              v73 = mainScreen29 + 17;
                                                              goto LABEL_330;
                                                            }
                                                          }

                                                          else
                                                          {
                                                            HIDWORD(v287) = 0;
                                                          }

LABEL_964:
                                                          mainScreen30 = __sb__runningInSpringBoard();
                                                          if (mainScreen30)
                                                          {
                                                            if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                                                            {
                                                              LODWORD(v287) = 0;
                                                              HIDWORD(v285) = 0;
                                                              goto LABEL_974;
                                                            }
                                                          }

                                                          else
                                                          {
                                                            mainScreen14 = [MEMORY[0x277D75418] currentDevice];
                                                            if ([mainScreen14 userInterfaceIdiom])
                                                            {
                                                              HIDWORD(v285) = 0;
                                                              LODWORD(v287) = 1;
LABEL_974:
                                                              if ((_SBF_Private_IsD63Like() & 1) == 0)
                                                              {
                                                                goto LABEL_978;
                                                              }

LABEL_1000:
                                                              LODWORD(v285) = 0;
                                                              v281 = 0;
                                                              v283 = 0;
                                                              v277 = 0;
                                                              v279 = 0;
                                                              v275 = 0;
                                                              v273 = 0;
                                                              v271 = 0;
                                                              v269 = 0;
                                                              v67 = 0;
                                                              v68 = 0;
                                                              v69 = 0;
                                                              v70 = 0;
                                                              v71 = 0;
                                                              v72 = 0;
                                                              v73 = mainScreen29 + 18;
                                                              goto LABEL_330;
                                                            }
                                                          }

                                                          LODWORD(v287) = mainScreen30 ^ 1;
                                                          if (SBFEffectiveHomeButtonType() == 2)
                                                          {
                                                            mainScreen30 = __sb__runningInSpringBoard();
                                                            if (mainScreen30)
                                                            {
                                                              __sb__mainScreenReferenceBounds();
                                                            }

                                                            else
                                                            {
                                                              currentDevice26 = [MEMORY[0x277D759A0] mainScreen];
                                                              [currentDevice26 _referenceBounds];
                                                            }

                                                            HIDWORD(v285) = mainScreen30 ^ 1;
                                                            BSSizeRoundForScale();
                                                            if (v152 >= *(MEMORY[0x277D66E30] + 104))
                                                            {
LABEL_978:
                                                              if (!_SBF_Private_IsD23Like())
                                                              {
LABEL_982:
                                                                LODWORD(v285) = 0;
                                                                HIDWORD(v283) = 0;
                                                                goto LABEL_1050;
                                                              }

                                                              v153 = __sb__runningInSpringBoard();
                                                              if (v153)
                                                              {
                                                                if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                                                                {
                                                                  goto LABEL_982;
                                                                }
                                                              }

                                                              else
                                                              {
                                                                mainScreen18 = [MEMORY[0x277D75418] currentDevice];
                                                                if ([mainScreen18 userInterfaceIdiom])
                                                                {
                                                                  HIDWORD(v283) = 0;
                                                                  LODWORD(v285) = 1;
                                                                  goto LABEL_1050;
                                                                }
                                                              }

                                                              LODWORD(v285) = v153 ^ 1;
                                                              if (SBFEffectiveHomeButtonType() == 2)
                                                              {
                                                                mainScreen30 = __sb__runningInSpringBoard();
                                                                if (mainScreen30)
                                                                {
                                                                  __sb__mainScreenReferenceBounds();
                                                                }

                                                                else
                                                                {
                                                                  mainScreen23 = [MEMORY[0x277D759A0] mainScreen];
                                                                  [mainScreen23 _referenceBounds];
                                                                }

                                                                HIDWORD(v283) = mainScreen30 ^ 1;
                                                                BSSizeRoundForScale();
                                                                if (v171 >= *(MEMORY[0x277D66E30] + 216))
                                                                {
LABEL_1148:
                                                                  LODWORD(v283) = 0;
                                                                  v279 = 0;
                                                                  v281 = 0;
                                                                  v275 = 0;
                                                                  v277 = 0;
                                                                  v273 = 0;
                                                                  v271 = 0;
                                                                  v269 = 0;
                                                                  v67 = 0;
                                                                  v68 = 0;
                                                                  v69 = 0;
                                                                  v70 = 0;
                                                                  v71 = 0;
                                                                  v72 = 0;
                                                                  v73 = mainScreen29 + 19;
                                                                  goto LABEL_330;
                                                                }
                                                              }

                                                              else
                                                              {
                                                                HIDWORD(v283) = 0;
                                                              }

LABEL_1050:
                                                              mainScreen30 = __sb__runningInSpringBoard();
                                                              if (mainScreen30)
                                                              {
                                                                if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                                                                {
                                                                  LODWORD(v283) = 0;
                                                                  HIDWORD(v281) = 0;
                                                                  goto LABEL_1060;
                                                                }
                                                              }

                                                              else
                                                              {
                                                                currentDevice24 = [MEMORY[0x277D75418] currentDevice];
                                                                if ([currentDevice24 userInterfaceIdiom])
                                                                {
                                                                  HIDWORD(v281) = 0;
                                                                  LODWORD(v283) = 1;
LABEL_1060:
                                                                  if ((_SBF_Private_IsD23Like() & 1) == 0)
                                                                  {
                                                                    goto LABEL_1064;
                                                                  }

LABEL_1095:
                                                                  LODWORD(v281) = 0;
                                                                  v277 = 0;
                                                                  v279 = 0;
                                                                  v275 = 0;
                                                                  v273 = 0;
                                                                  v271 = 0;
                                                                  v269 = 0;
                                                                  v67 = 0;
                                                                  v68 = 0;
                                                                  v69 = 0;
                                                                  v70 = 0;
                                                                  v71 = 0;
                                                                  v72 = 0;
                                                                  v73 = mainScreen29 + 20;
                                                                  goto LABEL_330;
                                                                }
                                                              }

                                                              LODWORD(v283) = mainScreen30 ^ 1;
                                                              if (SBFEffectiveHomeButtonType() == 2)
                                                              {
                                                                mainScreen30 = __sb__runningInSpringBoard();
                                                                if (mainScreen30)
                                                                {
                                                                  __sb__mainScreenReferenceBounds();
                                                                }

                                                                else
                                                                {
                                                                  mainScreen21 = [MEMORY[0x277D759A0] mainScreen];
                                                                  [mainScreen21 _referenceBounds];
                                                                }

                                                                HIDWORD(v281) = mainScreen30 ^ 1;
                                                                BSSizeRoundForScale();
                                                                if (v162 >= *(MEMORY[0x277D66E30] + 216))
                                                                {
LABEL_1064:
                                                                  v163 = __sb__runningInSpringBoard();
                                                                  if (v163)
                                                                  {
                                                                    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                                                                    {
                                                                      LODWORD(v281) = 0;
                                                                      HIDWORD(v279) = 0;
                                                                      goto LABEL_1074;
                                                                    }
                                                                  }

                                                                  else
                                                                  {
                                                                    mainScreen15 = [MEMORY[0x277D75418] currentDevice];
                                                                    if ([mainScreen15 userInterfaceIdiom])
                                                                    {
                                                                      HIDWORD(v279) = 0;
                                                                      LODWORD(v281) = 1;
                                                                      goto LABEL_1074;
                                                                    }
                                                                  }

                                                                  LODWORD(v281) = v163 ^ 1;
                                                                  if (SBFEffectiveHomeButtonType() == 2)
                                                                  {
                                                                    mainScreen30 = __sb__runningInSpringBoard();
                                                                    if (mainScreen30)
                                                                    {
                                                                      __sb__mainScreenReferenceBounds();
                                                                    }

                                                                    else
                                                                    {
                                                                      mainScreen22 = [MEMORY[0x277D759A0] mainScreen];
                                                                      [mainScreen22 _referenceBounds];
                                                                    }

                                                                    HIDWORD(v279) = mainScreen30 ^ 1;
                                                                    BSSizeRoundForScale();
                                                                    if (v167 >= *(MEMORY[0x277D66E30] + 120))
                                                                    {
                                                                      LODWORD(v279) = 0;
                                                                      v275 = 0;
                                                                      v277 = 0;
                                                                      v273 = 0;
                                                                      v271 = 0;
                                                                      v269 = 0;
                                                                      v67 = 0;
                                                                      v68 = 0;
                                                                      v69 = 0;
                                                                      v70 = 0;
                                                                      v71 = 0;
                                                                      v72 = 0;
                                                                      v168 = &CSQuickActionButtonInsetY;
LABEL_1139:
                                                                      v73 = v168 + 15;
                                                                      goto LABEL_330;
                                                                    }
                                                                  }

                                                                  else
                                                                  {
                                                                    HIDWORD(v279) = 0;
                                                                  }

LABEL_1074:
                                                                  mainScreen30 = __sb__runningInSpringBoard();
                                                                  if (mainScreen30)
                                                                  {
                                                                    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                                                                    {
                                                                      LODWORD(v279) = 0;
                                                                      HIDWORD(v277) = 0;
                                                                      goto LABEL_1118;
                                                                    }
                                                                  }

                                                                  else
                                                                  {
                                                                    mainScreen17 = [MEMORY[0x277D75418] currentDevice];
                                                                    if ([mainScreen17 userInterfaceIdiom])
                                                                    {
                                                                      HIDWORD(v277) = 0;
                                                                      LODWORD(v279) = 1;
                                                                      goto LABEL_1118;
                                                                    }
                                                                  }

                                                                  LODWORD(v279) = mainScreen30 ^ 1;
                                                                  if (SBFEffectiveHomeButtonType() == 2)
                                                                  {
                                                                    mainScreen30 = __sb__runningInSpringBoard();
                                                                    if (mainScreen30)
                                                                    {
                                                                      __sb__mainScreenReferenceBounds();
                                                                    }

                                                                    else
                                                                    {
                                                                      mainScreen24 = [MEMORY[0x277D759A0] mainScreen];
                                                                      [mainScreen24 _referenceBounds];
                                                                    }

                                                                    HIDWORD(v277) = mainScreen30 ^ 1;
                                                                    BSSizeRoundForScale();
                                                                    if (v173 >= *(MEMORY[0x277D66E30] + 120))
                                                                    {
                                                                      goto LABEL_1151;
                                                                    }
                                                                  }

                                                                  else
                                                                  {
                                                                    HIDWORD(v277) = 0;
                                                                  }

LABEL_1118:
                                                                  if (_SBF_Private_IsD33OrSimilarDevice())
                                                                  {
                                                                    LODWORD(v277) = 0;
                                                                    v275 = 0;
                                                                    v273 = 0;
                                                                    v271 = 0;
                                                                    v269 = 0;
                                                                    v67 = 0;
                                                                    v68 = 0;
                                                                    v69 = 0;
                                                                    v70 = 0;
                                                                    v71 = 0;
                                                                    v72 = 0;
                                                                    v166 = &CSQuickActionButtonInsetY;
LABEL_1126:
                                                                    v73 = v166 + 16;
                                                                    goto LABEL_330;
                                                                  }

LABEL_1151:
                                                                  v174 = __sb__runningInSpringBoard();
                                                                  if (v174)
                                                                  {
                                                                    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                                                                    {
                                                                      LODWORD(v277) = 0;
                                                                      HIDWORD(v275) = 0;
                                                                      goto LABEL_1181;
                                                                    }
                                                                  }

                                                                  else
                                                                  {
                                                                    mainScreen20 = [MEMORY[0x277D75418] currentDevice];
                                                                    if ([mainScreen20 userInterfaceIdiom])
                                                                    {
                                                                      HIDWORD(v275) = 0;
                                                                      LODWORD(v277) = 1;
                                                                      goto LABEL_1181;
                                                                    }
                                                                  }

                                                                  LODWORD(v277) = v174 ^ 1;
                                                                  if (SBFEffectiveHomeButtonType() == 2)
                                                                  {
                                                                    mainScreen30 = __sb__runningInSpringBoard();
                                                                    if (mainScreen30)
                                                                    {
                                                                      __sb__mainScreenReferenceBounds();
                                                                    }

                                                                    else
                                                                    {
                                                                      currentDevice28 = [MEMORY[0x277D759A0] mainScreen];
                                                                      [currentDevice28 _referenceBounds];
                                                                    }

                                                                    HIDWORD(v275) = mainScreen30 ^ 1;
                                                                    BSSizeRoundForScale();
                                                                    if (v180 >= *(MEMORY[0x277D66E30] + 104))
                                                                    {
                                                                      LODWORD(v275) = 0;
                                                                      v273 = 0;
                                                                      v271 = 0;
                                                                      v269 = 0;
                                                                      v67 = 0;
                                                                      v68 = 0;
                                                                      v69 = 0;
                                                                      v70 = 0;
                                                                      v71 = 0;
                                                                      v72 = 0;
                                                                      v181 = &CSQuickActionButtonInsetY;
LABEL_1220:
                                                                      v73 = v181 + 9;
                                                                      goto LABEL_330;
                                                                    }
                                                                  }

                                                                  else
                                                                  {
                                                                    HIDWORD(v275) = 0;
                                                                  }

LABEL_1181:
                                                                  mainScreen30 = __sb__runningInSpringBoard();
                                                                  if (mainScreen30)
                                                                  {
                                                                    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                                                                    {
                                                                      LODWORD(v275) = 0;
                                                                      v273 = 0;
                                                                      goto LABEL_1201;
                                                                    }
                                                                  }

                                                                  else
                                                                  {
                                                                    mainScreen19 = [MEMORY[0x277D75418] currentDevice];
                                                                    if ([mainScreen19 userInterfaceIdiom])
                                                                    {
                                                                      v273 = 0;
                                                                      LODWORD(v275) = 1;
                                                                      goto LABEL_1201;
                                                                    }
                                                                  }

                                                                  LODWORD(v275) = mainScreen30 ^ 1;
                                                                  if (SBFEffectiveHomeButtonType() == 2)
                                                                  {
                                                                    mainScreen30 = __sb__runningInSpringBoard();
                                                                    if (mainScreen30)
                                                                    {
                                                                      __sb__mainScreenReferenceBounds();
                                                                    }

                                                                    else
                                                                    {
                                                                      currentDevice29 = [MEMORY[0x277D759A0] mainScreen];
                                                                      [currentDevice29 _referenceBounds];
                                                                    }

                                                                    v273 = mainScreen30 ^ 1;
                                                                    BSSizeRoundForScale();
                                                                    if (v183 >= *(MEMORY[0x277D66E30] + 104))
                                                                    {
LABEL_1223:
                                                                      if (_SBF_Private_IsD16() && (_SBF_Private_IsD52OrSimilarDevice() & 1) != 0)
                                                                      {
                                                                        v271 = 0;
                                                                        v269 = 0;
                                                                        v67 = 0;
                                                                        v68 = 0;
                                                                        v69 = 0;
                                                                        v70 = 0;
                                                                        v71 = 0;
                                                                        v72 = 0;
                                                                        v184 = &CSQuickActionButtonInsetY;
LABEL_1238:
                                                                        v73 = v184 + 5;
                                                                        goto LABEL_330;
                                                                      }

                                                                      if (_SBF_Private_IsD52ZoomedOrSimilarDevice() && (_SBF_Private_IsD16() & 1) != 0)
                                                                      {
                                                                        v271 = 0;
                                                                        v269 = 0;
                                                                        v67 = 0;
                                                                        v68 = 0;
                                                                        v69 = 0;
                                                                        v70 = 0;
                                                                        v71 = 0;
                                                                        v72 = 0;
                                                                        v185 = &CSQuickActionButtonInsetY;
LABEL_1242:
                                                                        v73 = v185 + 6;
                                                                        goto LABEL_330;
                                                                      }

                                                                      if (_SBF_Private_IsD52OrSimilarDevice())
                                                                      {
                                                                        v271 = 0;
                                                                        v269 = 0;
                                                                        v67 = 0;
                                                                        v68 = 0;
                                                                        v69 = 0;
                                                                        v70 = 0;
                                                                        v71 = 0;
                                                                        v72 = 0;
                                                                        v186 = &CSQuickActionButtonInsetY;
LABEL_1245:
                                                                        v73 = v186 + 3;
                                                                        goto LABEL_330;
                                                                      }

                                                                      if (_SBF_Private_IsD52ZoomedOrSimilarDevice())
                                                                      {
                                                                        v271 = 0;
                                                                        v269 = 0;
                                                                        v67 = 0;
                                                                        v68 = 0;
                                                                        v69 = 0;
                                                                        v70 = 0;
                                                                        v71 = 0;
                                                                        v72 = 0;
                                                                        v187 = &CSQuickActionButtonInsetY;
LABEL_1248:
                                                                        v73 = v187 + 4;
                                                                        goto LABEL_330;
                                                                      }

                                                                      v189 = __sb__runningInSpringBoard();
                                                                      if (v189)
                                                                      {
                                                                        if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                                                                        {
                                                                          v271 = 0;
                                                                          v269 = 0;
LABEL_1311:
                                                                          v198 = __sb__runningInSpringBoard();
                                                                          if (v198)
                                                                          {
                                                                            if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                                                                            {
                                                                              v67 = 0;
                                                                              v68 = 0;
LABEL_1331:
                                                                              mainScreen30 = __sb__runningInSpringBoard();
                                                                              if (mainScreen30)
                                                                              {
                                                                                if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                                                                                {
                                                                                  v69 = 0;
                                                                                  v70 = 0;
LABEL_1351:
                                                                                  mainScreen29 = __sb__runningInSpringBoard();
                                                                                  if (mainScreen29)
                                                                                  {
                                                                                    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                                                                                    {
                                                                                      v71 = 0;
                                                                                      v72 = 0;
LABEL_1388:
                                                                                      v73 = &CSQuickActionButtonInsetY;
                                                                                      goto LABEL_330;
                                                                                    }
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    currentDevice32 = [MEMORY[0x277D75418] currentDevice];
                                                                                    if ([currentDevice32 userInterfaceIdiom])
                                                                                    {
                                                                                      v72 = 0;
                                                                                      v71 = 1;
                                                                                      goto LABEL_1388;
                                                                                    }
                                                                                  }

                                                                                  v71 = mainScreen29 ^ 1;
                                                                                  v209 = __sb__runningInSpringBoard();
                                                                                  if (v209)
                                                                                  {
                                                                                    __sb__mainScreenReferenceBounds();
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    mainScreen29 = [MEMORY[0x277D759A0] mainScreen];
                                                                                    [mainScreen29 _referenceBounds];
                                                                                  }

                                                                                  v72 = v209 ^ 1;
                                                                                  BSSizeRoundForScale();
                                                                                  if (v210 < *(MEMORY[0x277D66E30] + 40))
                                                                                  {
                                                                                    goto LABEL_1388;
                                                                                  }

                                                                                  v211 = &CSQuickActionButtonInsetY;
                                                                                  goto LABEL_1396;
                                                                                }
                                                                              }

                                                                              else
                                                                              {
                                                                                currentDevice33 = [MEMORY[0x277D75418] currentDevice];
                                                                                if ([currentDevice33 userInterfaceIdiom])
                                                                                {
                                                                                  v70 = 0;
                                                                                  v69 = 1;
                                                                                  goto LABEL_1351;
                                                                                }
                                                                              }

                                                                              v69 = mainScreen30 ^ 1;
                                                                              mainScreen29 = __sb__runningInSpringBoard();
                                                                              if (mainScreen29)
                                                                              {
                                                                                __sb__mainScreenReferenceBounds();
                                                                              }

                                                                              else
                                                                              {
                                                                                mainScreen30 = [MEMORY[0x277D759A0] mainScreen];
                                                                                [mainScreen30 _referenceBounds];
                                                                              }

                                                                              v70 = mainScreen29 ^ 1;
                                                                              BSSizeRoundForScale();
                                                                              if (v200 < *(MEMORY[0x277D66E30] + 56))
                                                                              {
                                                                                goto LABEL_1351;
                                                                              }

                                                                              v71 = 0;
                                                                              v72 = 0;
                                                                              v201 = &CSQuickActionButtonInsetY;
LABEL_1369:
                                                                              v73 = v201 + 2;
                                                                              goto LABEL_330;
                                                                            }
                                                                          }

                                                                          else
                                                                          {
                                                                            mainScreen27 = [MEMORY[0x277D75418] currentDevice];
                                                                            if ([mainScreen27 userInterfaceIdiom])
                                                                            {
                                                                              v68 = 0;
                                                                              v67 = 1;
                                                                              goto LABEL_1331;
                                                                            }
                                                                          }

                                                                          v67 = v198 ^ 1;
                                                                          if (SBFEffectiveHomeButtonType() != 2)
                                                                          {
                                                                            v68 = 0;
                                                                            goto LABEL_1331;
                                                                          }

                                                                          mainScreen30 = __sb__runningInSpringBoard();
                                                                          if (mainScreen30)
                                                                          {
                                                                            __sb__mainScreenReferenceBounds();
                                                                          }

                                                                          else
                                                                          {
                                                                            mainScreen26 = [MEMORY[0x277D759A0] mainScreen];
                                                                            [mainScreen26 _referenceBounds];
                                                                          }

                                                                          v68 = mainScreen30 ^ 1;
                                                                          BSSizeRoundForScale();
                                                                          if (v206 < *(MEMORY[0x277D66E30] + 72))
                                                                          {
                                                                            goto LABEL_1331;
                                                                          }

                                                                          v69 = 0;
                                                                          v70 = 0;
                                                                          v71 = 0;
                                                                          v72 = 0;
                                                                          v207 = &CSQuickActionButtonInsetY;
LABEL_1383:
                                                                          v73 = v207 + 8;
                                                                          goto LABEL_330;
                                                                        }
                                                                      }

                                                                      else
                                                                      {
                                                                        currentDevice30 = [MEMORY[0x277D75418] currentDevice];
                                                                        if ([currentDevice30 userInterfaceIdiom])
                                                                        {
                                                                          v269 = 0;
                                                                          v271 = 1;
                                                                          goto LABEL_1311;
                                                                        }
                                                                      }

                                                                      v271 = v189 ^ 1;
                                                                      if (SBFEffectiveHomeButtonType() != 2)
                                                                      {
                                                                        v269 = 0;
                                                                        goto LABEL_1311;
                                                                      }

                                                                      mainScreen30 = __sb__runningInSpringBoard();
                                                                      if (mainScreen30)
                                                                      {
                                                                        __sb__mainScreenReferenceBounds();
                                                                      }

                                                                      else
                                                                      {
                                                                        mainScreen25 = [MEMORY[0x277D759A0] mainScreen];
                                                                        [mainScreen25 _referenceBounds];
                                                                      }

                                                                      v269 = mainScreen30 ^ 1;
                                                                      BSSizeRoundForScale();
                                                                      if (v203 < *(MEMORY[0x277D66E30] + 88))
                                                                      {
                                                                        goto LABEL_1311;
                                                                      }

                                                                      v67 = 0;
                                                                      v68 = 0;
                                                                      v69 = 0;
                                                                      v70 = 0;
                                                                      v71 = 0;
                                                                      v72 = 0;
                                                                      v204 = &CSQuickActionButtonInsetY;
LABEL_1376:
                                                                      v73 = v204 + 7;
                                                                      goto LABEL_330;
                                                                    }
                                                                  }

                                                                  else
                                                                  {
                                                                    v273 = 0;
                                                                  }

LABEL_1201:
                                                                  if (_SBF_Private_IsD53())
                                                                  {
                                                                    v271 = 0;
                                                                    v269 = 0;
                                                                    v67 = 0;
                                                                    v68 = 0;
                                                                    v69 = 0;
                                                                    v70 = 0;
                                                                    v71 = 0;
                                                                    v72 = 0;
                                                                    v178 = &CSQuickActionButtonInsetY;
LABEL_1209:
                                                                    v73 = v178 + 10;
                                                                    goto LABEL_330;
                                                                  }

                                                                  goto LABEL_1223;
                                                                }
                                                              }

                                                              else
                                                              {
                                                                HIDWORD(v281) = 0;
                                                              }

                                                              goto LABEL_1060;
                                                            }
                                                          }

                                                          else
                                                          {
                                                            HIDWORD(v285) = 0;
                                                          }

                                                          goto LABEL_974;
                                                        }
                                                      }

                                                      else
                                                      {
                                                        HIDWORD(v289) = 0;
                                                      }

                                                      goto LABEL_881;
                                                    }
                                                  }

                                                  else
                                                  {
                                                    HIDWORD(v292[0]) = 0;
                                                  }

                                                  goto LABEL_778;
                                                }
                                              }

                                              else
                                              {
                                                HIDWORD(v292[2]) = 0;
                                              }

                                              goto LABEL_705;
                                            }
                                          }

                                          else
                                          {
                                            HIDWORD(v292[4]) = 0;
                                          }

                                          goto LABEL_640;
                                        }
                                      }

                                      else
                                      {
                                        HIDWORD(v292[6]) = 0;
                                      }

                                      goto LABEL_554;
                                    }

                                    mainScreen2 = [MEMORY[0x277D75418] currentDevice];
                                    if ([mainScreen2 userInterfaceIdiom] != 1)
                                    {
                                      goto LABEL_454;
                                    }

LABEL_471:
                                    memset(v292, 0, 68);
                                    v291 = 0;
                                    v287 = 0;
                                    v289 = 0;
                                    v283 = 0;
                                    v285 = 0;
                                    v279 = 0;
                                    v281 = 0;
                                    v275 = 0;
                                    v277 = 0;
                                    v273 = 0;
                                    v271 = 0;
                                    v269 = 0;
                                    v67 = 0;
                                    v68 = 0;
                                    v69 = 0;
                                    v70 = 0;
                                    v71 = 0;
                                    v72 = 0;
                                    v73 = mainScreen29 + 27;
                                    HIDWORD(v292[8]) = mainScreen30 ^ 1;
                                    goto LABEL_330;
                                  }
                                }

                                else
                                {
                                  mainScreen5 = [MEMORY[0x277D75418] currentDevice];
                                  if ([mainScreen5 userInterfaceIdiom] != 1)
                                  {
                                    v293 = 0x100000000;
                                    goto LABEL_450;
                                  }
                                }

                                HIDWORD(v293) = v75 ^ 1;
                                mainScreen30 = __sb__runningInSpringBoard();
                                if (mainScreen30)
                                {
                                  __sb__mainScreenReferenceBounds();
                                }

                                else
                                {
                                  currentDevice10 = [MEMORY[0x277D759A0] mainScreen];
                                  [currentDevice10 _referenceBounds];
                                }

                                LODWORD(v293) = mainScreen30 ^ 1;
                                BSSizeRoundForScale();
                                if (v90 < *(MEMORY[0x277D66E30] + 248))
                                {
                                  goto LABEL_450;
                                }

LABEL_469:
                                memset(v292, 0, sizeof(v292));
                                v291 = 0;
                                v287 = 0;
                                v289 = 0;
                                v283 = 0;
                                v285 = 0;
                                v279 = 0;
                                v281 = 0;
                                v275 = 0;
                                v277 = 0;
                                v273 = 0;
                                v271 = 0;
                                v269 = 0;
                                v67 = 0;
                                v68 = 0;
                                v69 = 0;
                                v70 = 0;
                                v71 = 0;
                                v72 = 0;
                                v73 = mainScreen29 + 29;
                                goto LABEL_330;
                              }
                            }

                            else
                            {
                              currentDevice9 = [MEMORY[0x277D75418] currentDevice];
                              if ([currentDevice9 userInterfaceIdiom] != 1)
                              {
                                v294 = 0x100000000;
                                goto LABEL_294;
                              }
                            }

                            HIDWORD(v294) = v64 ^ 1;
                            mainScreen30 = __sb__runningInSpringBoard();
                            if (mainScreen30)
                            {
                              __sb__mainScreenReferenceBounds();
                            }

                            else
                            {
                              mainScreen3 = [MEMORY[0x277D759A0] mainScreen];
                              [mainScreen3 _referenceBounds];
                            }

                            LODWORD(v294) = mainScreen30 ^ 1;
                            BSSizeRoundForScale();
                            if (v74 < *(MEMORY[0x277D66E30] + 264))
                            {
                              goto LABEL_294;
                            }

LABEL_306:
                            v293 = 0;
                            memset(v292, 0, sizeof(v292));
                            v291 = 0;
                            v287 = 0;
                            v289 = 0;
                            v283 = 0;
                            v285 = 0;
                            v279 = 0;
                            v281 = 0;
                            v275 = 0;
                            v277 = 0;
                            v273 = 0;
                            v271 = 0;
                            v269 = 0;
                            v67 = 0;
                            v68 = 0;
                            v69 = 0;
                            v70 = 0;
                            v71 = 0;
                            v72 = 0;
                            v73 = mainScreen29 + 30;
                            goto LABEL_330;
                          }
                        }

                        else
                        {
                          mainScreen4 = [MEMORY[0x277D75418] currentDevice];
                          if ([mainScreen4 userInterfaceIdiom] != 1)
                          {
                            v295 = 0x100000000;
                            goto LABEL_275;
                          }
                        }

                        HIDWORD(v295) = v59 ^ 1;
                        mainScreen30 = __sb__runningInSpringBoard();
                        if (mainScreen30)
                        {
                          __sb__mainScreenReferenceBounds();
                        }

                        else
                        {
                          mainScreen = [MEMORY[0x277D759A0] mainScreen];
                          [mainScreen _referenceBounds];
                        }

                        LODWORD(v295) = mainScreen30 ^ 1;
                        BSSizeRoundForScale();
                        if (v63 < *(MEMORY[0x277D66E30] + 280))
                        {
                          goto LABEL_275;
                        }

LABEL_287:
                        v293 = 0;
                        v294 = 0;
                        memset(v292, 0, sizeof(v292));
                        v291 = 0;
                        v287 = 0;
                        v289 = 0;
                        v283 = 0;
                        v285 = 0;
                        v279 = 0;
                        v281 = 0;
                        v275 = 0;
                        v277 = 0;
                        v273 = 0;
                        v271 = 0;
                        v269 = 0;
                        v67 = 0;
                        v68 = 0;
                        v69 = 0;
                        v70 = 0;
                        v71 = 0;
                        v72 = 0;
                        v73 = mainScreen29 + 32;
                        goto LABEL_330;
                      }
                    }

                    else
                    {
                      currentDevice8 = [MEMORY[0x277D75418] currentDevice];
                      if ([currentDevice8 userInterfaceIdiom] != 1)
                      {
                        v296 = 0x100000000;
                        goto LABEL_245;
                      }
                    }

                    HIDWORD(v296) = v57 ^ 1;
                    if (SBFEffectiveHomeButtonType() != 2)
                    {
                      LODWORD(v296) = 0;
                      goto LABEL_245;
                    }

                    mainScreen30 = __sb__runningInSpringBoard();
                    if (mainScreen30)
                    {
                      __sb__mainScreenReferenceBounds();
                    }

                    else
                    {
                      currentDevice11 = [MEMORY[0x277D759A0] mainScreen];
                      [currentDevice11 _referenceBounds];
                    }

                    LODWORD(v296) = mainScreen30 ^ 1;
                    BSSizeRoundForScale();
                    if (v84 < *(MEMORY[0x277D66E30] + 376))
                    {
                      goto LABEL_245;
                    }

LABEL_329:
                    v294 = 0;
                    v295 = 0;
                    v293 = 0;
                    memset(v292, 0, sizeof(v292));
                    v291 = 0;
                    v287 = 0;
                    v289 = 0;
                    v283 = 0;
                    v285 = 0;
                    v279 = 0;
                    v281 = 0;
                    v275 = 0;
                    v277 = 0;
                    v273 = 0;
                    v271 = 0;
                    v269 = 0;
                    v67 = 0;
                    v68 = 0;
                    v69 = 0;
                    v70 = 0;
                    v71 = 0;
                    v72 = 0;
                    v73 = mainScreen29 + 31;
                    goto LABEL_330;
                  }
                }

                else
                {
                  currentDevice7 = [MEMORY[0x277D75418] currentDevice];
                  if ([currentDevice7 userInterfaceIdiom] != 1)
                  {
                    v297 = 0x100000000;
                    goto LABEL_227;
                  }
                }

                HIDWORD(v297) = v55 ^ 1;
                if (SBFEffectiveHomeButtonType() != 2)
                {
                  LODWORD(v297) = 0;
                  goto LABEL_227;
                }

                mainScreen30 = __sb__runningInSpringBoard();
                if (mainScreen30)
                {
                  __sb__mainScreenReferenceBounds();
                }

                else
                {
                  mainScreen6 = [MEMORY[0x277D759A0] mainScreen];
                  [mainScreen6 _referenceBounds];
                }

                LODWORD(v297) = mainScreen30 ^ 1;
                BSSizeRoundForScale();
                if (v82 < *(MEMORY[0x277D66E30] + 440))
                {
                  goto LABEL_227;
                }

LABEL_323:
                v295 = 0;
                v296 = 0;
                v293 = 0;
                v294 = 0;
                memset(v292, 0, sizeof(v292));
                v291 = 0;
                v287 = 0;
                v289 = 0;
                v283 = 0;
                v285 = 0;
                v279 = 0;
                v281 = 0;
                v275 = 0;
                v277 = 0;
                v273 = 0;
                v271 = 0;
                v269 = 0;
                v67 = 0;
                v68 = 0;
                v69 = 0;
                v70 = 0;
                v71 = 0;
                v72 = 0;
                v73 = mainScreen29 + 33;
                goto LABEL_330;
              }
            }

            else
            {
              currentDevice6 = [MEMORY[0x277D75418] currentDevice];
              if ([currentDevice6 userInterfaceIdiom] != 1)
              {
                v298 = 0x100000000;
                goto LABEL_209;
              }
            }

            HIDWORD(v298) = v52 ^ 1;
            if (SBFEffectiveHomeButtonType() != 2)
            {
              LODWORD(v298) = 0;
              goto LABEL_209;
            }

            mainScreen30 = __sb__runningInSpringBoard();
            if (mainScreen30)
            {
              __sb__mainScreenReferenceBounds();
            }

            else
            {
              currentDevice5 = [MEMORY[0x277D759A0] mainScreen];
              [currentDevice5 _referenceBounds];
            }

            LODWORD(v298) = mainScreen30 ^ 1;
            BSSizeRoundForScale();
            if (v79 != *(MEMORY[0x277D66E30] + 288) || v78 != *(MEMORY[0x277D66E30] + 296))
            {
              goto LABEL_209;
            }

LABEL_317:
            v296 = 0;
            v297 = 0;
            v294 = 0;
            v295 = 0;
            v293 = 0;
            memset(v292, 0, sizeof(v292));
            v291 = 0;
            v287 = 0;
            v289 = 0;
            v283 = 0;
            v285 = 0;
            v279 = 0;
            v281 = 0;
            v275 = 0;
            v277 = 0;
            v273 = 0;
            v271 = 0;
            v269 = 0;
            v67 = 0;
            v68 = 0;
            v69 = 0;
            v70 = 0;
            v71 = 0;
            v72 = 0;
            v73 = mainScreen29 + 28;
            goto LABEL_330;
          }

          mainScreen29 = &CSQuickActionButtonInsetX;
          if (v51)
          {
            if (SBFEffectiveDeviceClass() != 2)
            {
              v298 = 0;
              goto LABEL_218;
            }
          }

          else
          {
            currentDevice6 = [MEMORY[0x277D75418] currentDevice];
            if ([currentDevice6 userInterfaceIdiom] != 1)
            {
              v298 = 0x100000000;
              goto LABEL_218;
            }
          }

          HIDWORD(v298) = v52 ^ 1;
          if (SBFEffectiveHomeButtonType() == 2)
          {
            mainScreen30 = __sb__runningInSpringBoard();
            if (mainScreen30)
            {
              __sb__mainScreenReferenceBounds();
            }

            else
            {
              currentDevice5 = [MEMORY[0x277D759A0] mainScreen];
              [currentDevice5 _referenceBounds];
            }

            LODWORD(v298) = mainScreen30 ^ 1;
            BSSizeRoundForScale();
            if (v81 == *(MEMORY[0x277D66E30] + 288) && v80 == *(MEMORY[0x277D66E30] + 296))
            {
              goto LABEL_317;
            }
          }

          else
          {
            LODWORD(v298) = 0;
          }

LABEL_218:
          v56 = __sb__runningInSpringBoard();
          if (v56)
          {
            if (SBFEffectiveDeviceClass() != 2)
            {
              v297 = 0;
              goto LABEL_236;
            }
          }

          else
          {
            currentDevice7 = [MEMORY[0x277D75418] currentDevice];
            if ([currentDevice7 userInterfaceIdiom] != 1)
            {
              v297 = 0x100000000;
              goto LABEL_236;
            }
          }

          HIDWORD(v297) = v56 ^ 1;
          if (SBFEffectiveHomeButtonType() == 2)
          {
            mainScreen30 = __sb__runningInSpringBoard();
            if (mainScreen30)
            {
              __sb__mainScreenReferenceBounds();
            }

            else
            {
              mainScreen6 = [MEMORY[0x277D759A0] mainScreen];
              [mainScreen6 _referenceBounds];
            }

            LODWORD(v297) = mainScreen30 ^ 1;
            BSSizeRoundForScale();
            if (v83 >= *(MEMORY[0x277D66E30] + 440))
            {
              goto LABEL_323;
            }
          }

          else
          {
            LODWORD(v297) = 0;
          }

LABEL_236:
          v58 = __sb__runningInSpringBoard();
          if (v58)
          {
            if (SBFEffectiveDeviceClass() != 2)
            {
              v296 = 0;
              goto LABEL_253;
            }
          }

          else
          {
            currentDevice8 = [MEMORY[0x277D75418] currentDevice];
            if ([currentDevice8 userInterfaceIdiom] != 1)
            {
              v296 = 0x100000000;
              goto LABEL_253;
            }
          }

          HIDWORD(v296) = v58 ^ 1;
          if (SBFEffectiveHomeButtonType() == 2)
          {
            mainScreen30 = __sb__runningInSpringBoard();
            if (mainScreen30)
            {
              __sb__mainScreenReferenceBounds();
            }

            else
            {
              currentDevice11 = [MEMORY[0x277D759A0] mainScreen];
              [currentDevice11 _referenceBounds];
            }

            LODWORD(v296) = mainScreen30 ^ 1;
            BSSizeRoundForScale();
            if (v85 >= *(MEMORY[0x277D66E30] + 376))
            {
              goto LABEL_329;
            }
          }

          else
          {
            LODWORD(v296) = 0;
          }

LABEL_253:
          v60 = __sb__runningInSpringBoard();
          if (v60)
          {
            if (SBFEffectiveDeviceClass() != 2)
            {
              v295 = 0;
              goto LABEL_284;
            }
          }

          else
          {
            mainScreen4 = [MEMORY[0x277D75418] currentDevice];
            if ([mainScreen4 userInterfaceIdiom] != 1)
            {
              v295 = 0x100000000;
              goto LABEL_284;
            }
          }

          HIDWORD(v295) = v60 ^ 1;
          mainScreen30 = __sb__runningInSpringBoard();
          if (mainScreen30)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen _referenceBounds];
          }

          LODWORD(v295) = mainScreen30 ^ 1;
          BSSizeRoundForScale();
          if (v65 >= *(MEMORY[0x277D66E30] + 280))
          {
            goto LABEL_287;
          }

LABEL_284:
          v66 = __sb__runningInSpringBoard();
          if (v66)
          {
            if (SBFEffectiveDeviceClass() != 2)
            {
              v294 = 0;
              goto LABEL_303;
            }
          }

          else
          {
            currentDevice9 = [MEMORY[0x277D75418] currentDevice];
            if ([currentDevice9 userInterfaceIdiom] != 1)
            {
              v294 = 0x100000000;
              goto LABEL_303;
            }
          }

          HIDWORD(v294) = v66 ^ 1;
          mainScreen30 = __sb__runningInSpringBoard();
          if (mainScreen30)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen3 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen3 _referenceBounds];
          }

          LODWORD(v294) = mainScreen30 ^ 1;
          BSSizeRoundForScale();
          if (v76 >= *(MEMORY[0x277D66E30] + 264))
          {
            goto LABEL_306;
          }

LABEL_303:
          v77 = __sb__runningInSpringBoard();
          if (v77)
          {
            if (SBFEffectiveDeviceClass() != 2)
            {
              v293 = 0;
              goto LABEL_462;
            }
          }

          else
          {
            mainScreen5 = [MEMORY[0x277D75418] currentDevice];
            if ([mainScreen5 userInterfaceIdiom] != 1)
            {
              v293 = 0x100000000;
              goto LABEL_462;
            }
          }

          HIDWORD(v293) = v77 ^ 1;
          mainScreen30 = __sb__runningInSpringBoard();
          if (mainScreen30)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            currentDevice10 = [MEMORY[0x277D759A0] mainScreen];
            [currentDevice10 _referenceBounds];
          }

          LODWORD(v293) = mainScreen30 ^ 1;
          BSSizeRoundForScale();
          if (v92 >= *(MEMORY[0x277D66E30] + 248))
          {
            goto LABEL_469;
          }

LABEL_462:
          mainScreen30 = __sb__runningInSpringBoard();
          if (mainScreen30)
          {
            if (SBFEffectiveDeviceClass() == 2)
            {
              goto LABEL_471;
            }
          }

          else
          {
            mainScreen2 = [MEMORY[0x277D75418] currentDevice];
            if ([mainScreen2 userInterfaceIdiom] == 1)
            {
              goto LABEL_471;
            }
          }

          HIDWORD(v292[8]) = mainScreen30 ^ 1;
          if (!_SBF_Private_IsD94Like())
          {
            goto LABEL_468;
          }

          v93 = __sb__runningInSpringBoard();
          if (v93)
          {
            if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
            {
LABEL_468:
              *(&v292[7] + 4) = 0;
              goto LABEL_569;
            }
          }

          else
          {
            currentDevice14 = [MEMORY[0x277D75418] currentDevice];
            if ([currentDevice14 userInterfaceIdiom])
            {
              HIDWORD(v292[7]) = 0;
              LODWORD(v292[8]) = 1;
              goto LABEL_569;
            }
          }

          LODWORD(v292[8]) = v93 ^ 1;
          if (SBFEffectiveHomeButtonType() == 2)
          {
            v102 = __sb__runningInSpringBoard();
            if (v102)
            {
              __sb__mainScreenReferenceBounds();
            }

            else
            {
              currentDevice17 = [MEMORY[0x277D759A0] mainScreen];
              [currentDevice17 _referenceBounds];
            }

            mainScreen30 = v102 ^ 1u;
            BSSizeRoundForScale();
            HIDWORD(v292[7]) = mainScreen30;
            if (v108 >= *(MEMORY[0x277D66E30] + 200))
            {
              goto LABEL_607;
            }
          }

          else
          {
            HIDWORD(v292[7]) = 0;
          }

LABEL_569:
          mainScreen30 = __sb__runningInSpringBoard();
          if (mainScreen30)
          {
            if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
            {
              *(&v292[6] + 4) = 0;
              goto LABEL_579;
            }
          }

          else
          {
            currentDevice13 = [MEMORY[0x277D75418] currentDevice];
            if ([currentDevice13 userInterfaceIdiom])
            {
              HIDWORD(v292[6]) = 0;
              LODWORD(v292[7]) = 1;
              goto LABEL_579;
            }
          }

          LODWORD(v292[7]) = mainScreen30 ^ 1;
          if (SBFEffectiveHomeButtonType() == 2)
          {
            mainScreen30 = __sb__runningInSpringBoard();
            if (mainScreen30)
            {
              __sb__mainScreenReferenceBounds();
            }

            else
            {
              currentDevice16 = [MEMORY[0x277D759A0] mainScreen];
              [currentDevice16 _referenceBounds];
            }

            HIDWORD(v292[6]) = mainScreen30 ^ 1;
            BSSizeRoundForScale();
            if (v103 >= *(MEMORY[0x277D66E30] + 200))
            {
              goto LABEL_583;
            }
          }

          else
          {
            HIDWORD(v292[6]) = 0;
          }

LABEL_579:
          if (_SBF_Private_IsD94Like())
          {
            goto LABEL_580;
          }

LABEL_583:
          if (!_SBF_Private_IsD64Like())
          {
LABEL_587:
            *(&v292[5] + 4) = 0;
            goto LABEL_664;
          }

          v104 = __sb__runningInSpringBoard();
          if (v104)
          {
            if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
            {
              goto LABEL_587;
            }
          }

          else
          {
            currentDevice15 = [MEMORY[0x277D75418] currentDevice];
            if ([currentDevice15 userInterfaceIdiom])
            {
              HIDWORD(v292[5]) = 0;
              LODWORD(v292[6]) = 1;
              goto LABEL_664;
            }
          }

          LODWORD(v292[6]) = v104 ^ 1;
          if (SBFEffectiveHomeButtonType() == 2)
          {
            v115 = __sb__runningInSpringBoard();
            if (v115)
            {
              __sb__mainScreenReferenceBounds();
            }

            else
            {
              currentDevice18 = [MEMORY[0x277D759A0] mainScreen];
              [currentDevice18 _referenceBounds];
            }

            mainScreen30 = v115 ^ 1u;
            BSSizeRoundForScale();
            HIDWORD(v292[5]) = mainScreen30;
            if (v123 >= *(MEMORY[0x277D66E30] + 136))
            {
              goto LABEL_728;
            }
          }

          else
          {
            HIDWORD(v292[5]) = 0;
          }

LABEL_664:
          mainScreen30 = __sb__runningInSpringBoard();
          if (mainScreen30)
          {
            if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
            {
              *(&v292[4] + 4) = 0;
              goto LABEL_674;
            }
          }

          else
          {
            currentDevice12 = [MEMORY[0x277D75418] currentDevice];
            if ([currentDevice12 userInterfaceIdiom])
            {
              HIDWORD(v292[4]) = 0;
              LODWORD(v292[5]) = 1;
              goto LABEL_674;
            }
          }

          LODWORD(v292[5]) = mainScreen30 ^ 1;
          if (SBFEffectiveHomeButtonType() == 2)
          {
            mainScreen30 = __sb__runningInSpringBoard();
            if (mainScreen30)
            {
              __sb__mainScreenReferenceBounds();
            }

            else
            {
              currentDevice19 = [MEMORY[0x277D759A0] mainScreen];
              [currentDevice19 _referenceBounds];
            }

            HIDWORD(v292[4]) = mainScreen30 ^ 1;
            BSSizeRoundForScale();
            if (v116 >= *(MEMORY[0x277D66E30] + 136))
            {
              goto LABEL_678;
            }
          }

          else
          {
            HIDWORD(v292[4]) = 0;
          }

LABEL_674:
          if (_SBF_Private_IsD64Like())
          {
            goto LABEL_675;
          }

LABEL_678:
          v117 = __sb__runningInSpringBoard();
          if (v117)
          {
            if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
            {
              *(&v292[3] + 4) = 0;
              goto LABEL_688;
            }
          }

          else
          {
            mainScreen8 = [MEMORY[0x277D75418] currentDevice];
            if ([mainScreen8 userInterfaceIdiom])
            {
              HIDWORD(v292[3]) = 0;
              LODWORD(v292[4]) = 1;
              goto LABEL_688;
            }
          }

          LODWORD(v292[4]) = v117 ^ 1;
          if (SBFEffectiveHomeButtonType() == 2)
          {
            v118 = __sb__runningInSpringBoard();
            if (v118)
            {
              __sb__mainScreenReferenceBounds();
            }

            else
            {
              mainScreen12 = [MEMORY[0x277D759A0] mainScreen];
              [mainScreen12 _referenceBounds];
            }

            mainScreen30 = v118 ^ 1u;
            BSSizeRoundForScale();
            HIDWORD(v292[3]) = mainScreen30;
            if (v120 >= *(MEMORY[0x277D66E30] + 136))
            {
              goto LABEL_718;
            }
          }

          else
          {
            HIDWORD(v292[3]) = 0;
          }

LABEL_688:
          mainScreen30 = __sb__runningInSpringBoard();
          if (mainScreen30)
          {
            if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
            {
              *(&v292[2] + 4) = 0;
              goto LABEL_711;
            }
          }

          else
          {
            mainScreen7 = [MEMORY[0x277D75418] currentDevice];
            if ([mainScreen7 userInterfaceIdiom])
            {
              HIDWORD(v292[2]) = 0;
              LODWORD(v292[3]) = 1;
              goto LABEL_711;
            }
          }

          LODWORD(v292[3]) = mainScreen30 ^ 1;
          if (SBFEffectiveHomeButtonType() == 2)
          {
            mainScreen30 = __sb__runningInSpringBoard();
            if (mainScreen30)
            {
              __sb__mainScreenReferenceBounds();
            }

            else
            {
              currentDevice21 = [MEMORY[0x277D759A0] mainScreen];
              [currentDevice21 _referenceBounds];
            }

            HIDWORD(v292[2]) = mainScreen30 ^ 1;
            BSSizeRoundForScale();
            if (v128 >= *(MEMORY[0x277D66E30] + 136))
            {
              goto LABEL_748;
            }
          }

          else
          {
            HIDWORD(v292[2]) = 0;
          }

LABEL_711:
          if (_SBF_Private_IsD54())
          {
            goto LABEL_712;
          }

LABEL_748:
          v129 = __sb__runningInSpringBoard();
          if (v129)
          {
            if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
            {
              *(&v292[1] + 4) = 0;
              goto LABEL_768;
            }
          }

          else
          {
            mainScreen10 = [MEMORY[0x277D75418] currentDevice];
            if ([mainScreen10 userInterfaceIdiom])
            {
              HIDWORD(v292[1]) = 0;
              LODWORD(v292[2]) = 1;
              goto LABEL_768;
            }
          }

          LODWORD(v292[2]) = v129 ^ 1;
          if (SBFEffectiveHomeButtonType() == 2)
          {
            v131 = __sb__runningInSpringBoard();
            if (v131)
            {
              __sb__mainScreenReferenceBounds();
            }

            else
            {
              currentDevice20 = [MEMORY[0x277D759A0] mainScreen];
              [currentDevice20 _referenceBounds];
            }

            mainScreen30 = v131 ^ 1u;
            BSSizeRoundForScale();
            HIDWORD(v292[1]) = mainScreen30;
            if (v135 >= *(MEMORY[0x277D66E30] + 120) && (_SBF_Private_IsN84OrSimilarDevice() & 1) != 0)
            {
              goto LABEL_820;
            }
          }

          else
          {
            HIDWORD(v292[1]) = 0;
          }

LABEL_768:
          mainScreen30 = __sb__runningInSpringBoard();
          if (mainScreen30)
          {
            if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
            {
              *(v292 + 4) = 0;
              goto LABEL_785;
            }
          }

          else
          {
            mainScreen11 = [MEMORY[0x277D75418] currentDevice];
            if ([mainScreen11 userInterfaceIdiom])
            {
              HIDWORD(v292[0]) = 0;
              LODWORD(v292[1]) = 1;
              goto LABEL_785;
            }
          }

          LODWORD(v292[1]) = mainScreen30 ^ 1;
          if (SBFEffectiveHomeButtonType() == 2)
          {
            mainScreen30 = __sb__runningInSpringBoard();
            if (mainScreen30)
            {
              __sb__mainScreenReferenceBounds();
            }

            else
            {
              currentDevice23 = [MEMORY[0x277D759A0] mainScreen];
              [currentDevice23 _referenceBounds];
            }

            HIDWORD(v292[0]) = mainScreen30 ^ 1;
            BSSizeRoundForScale();
            if (v138 >= *(MEMORY[0x277D66E30] + 120))
            {
              goto LABEL_832;
            }
          }

          else
          {
            HIDWORD(v292[0]) = 0;
          }

LABEL_785:
          if (_SBF_Private_IsD33OrSimilarDevice() && (_SBF_Private_IsN84ZoomedOrSimilarDevice() & 1) != 0)
          {
            goto LABEL_787;
          }

LABEL_832:
          if (!_SBF_Private_IsD93Like())
          {
LABEL_836:
            LODWORD(v292[0]) = 0;
            HIDWORD(v291) = 0;
            goto LABEL_896;
          }

          v139 = __sb__runningInSpringBoard();
          if (v139)
          {
            if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
            {
              goto LABEL_836;
            }
          }

          else
          {
            mainScreen13 = [MEMORY[0x277D75418] currentDevice];
            if ([mainScreen13 userInterfaceIdiom])
            {
              HIDWORD(v291) = 0;
              LODWORD(v292[0]) = 1;
              goto LABEL_896;
            }
          }

          LODWORD(v292[0]) = v139 ^ 1;
          if (SBFEffectiveHomeButtonType() == 2)
          {
            mainScreen30 = __sb__runningInSpringBoard();
            if (mainScreen30)
            {
              __sb__mainScreenReferenceBounds();
            }

            else
            {
              currentDevice25 = [MEMORY[0x277D759A0] mainScreen];
              [currentDevice25 _referenceBounds];
            }

            HIDWORD(v291) = mainScreen30 ^ 1;
            BSSizeRoundForScale();
            if (v149 >= *(MEMORY[0x277D66E30] + 184))
            {
              goto LABEL_925;
            }
          }

          else
          {
            HIDWORD(v291) = 0;
          }

LABEL_896:
          mainScreen30 = __sb__runningInSpringBoard();
          if (mainScreen30)
          {
            if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
            {
              LODWORD(v291) = 0;
              HIDWORD(v289) = 0;
              goto LABEL_906;
            }
          }

          else
          {
            mainScreen9 = [MEMORY[0x277D75418] currentDevice];
            if ([mainScreen9 userInterfaceIdiom])
            {
              HIDWORD(v289) = 0;
              LODWORD(v291) = 1;
              goto LABEL_906;
            }
          }

          LODWORD(v291) = mainScreen30 ^ 1;
          if (SBFEffectiveHomeButtonType() == 2)
          {
            mainScreen30 = __sb__runningInSpringBoard();
            if (mainScreen30)
            {
              __sb__mainScreenReferenceBounds();
            }

            else
            {
              currentDevice22 = [MEMORY[0x277D759A0] mainScreen];
              [currentDevice22 _referenceBounds];
            }

            HIDWORD(v289) = mainScreen30 ^ 1;
            BSSizeRoundForScale();
            if (v145 >= *(MEMORY[0x277D66E30] + 184))
            {
              goto LABEL_910;
            }
          }

          else
          {
            HIDWORD(v289) = 0;
          }

LABEL_906:
          if (_SBF_Private_IsD93Like())
          {
            goto LABEL_907;
          }

LABEL_910:
          if (!_SBF_Private_IsD63Like())
          {
LABEL_914:
            LODWORD(v289) = 0;
            HIDWORD(v287) = 0;
            goto LABEL_989;
          }

          v146 = __sb__runningInSpringBoard();
          if (v146)
          {
            if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
            {
              goto LABEL_914;
            }
          }

          else
          {
            mainScreen16 = [MEMORY[0x277D75418] currentDevice];
            if ([mainScreen16 userInterfaceIdiom])
            {
              HIDWORD(v287) = 0;
              LODWORD(v289) = 1;
              goto LABEL_989;
            }
          }

          LODWORD(v289) = v146 ^ 1;
          if (SBFEffectiveHomeButtonType() == 2)
          {
            mainScreen30 = __sb__runningInSpringBoard();
            if (mainScreen30)
            {
              __sb__mainScreenReferenceBounds();
            }

            else
            {
              currentDevice27 = [MEMORY[0x277D759A0] mainScreen];
              [currentDevice27 _referenceBounds];
            }

            HIDWORD(v287) = mainScreen30 ^ 1;
            BSSizeRoundForScale();
            if (v159 >= *(MEMORY[0x277D66E30] + 104))
            {
              goto LABEL_1027;
            }
          }

          else
          {
            HIDWORD(v287) = 0;
          }

LABEL_989:
          mainScreen30 = __sb__runningInSpringBoard();
          if (mainScreen30)
          {
            if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
            {
              LODWORD(v287) = 0;
              HIDWORD(v285) = 0;
              goto LABEL_999;
            }
          }

          else
          {
            mainScreen14 = [MEMORY[0x277D75418] currentDevice];
            if ([mainScreen14 userInterfaceIdiom])
            {
              HIDWORD(v285) = 0;
              LODWORD(v287) = 1;
              goto LABEL_999;
            }
          }

          LODWORD(v287) = mainScreen30 ^ 1;
          if (SBFEffectiveHomeButtonType() == 2)
          {
            mainScreen30 = __sb__runningInSpringBoard();
            if (mainScreen30)
            {
              __sb__mainScreenReferenceBounds();
            }

            else
            {
              currentDevice26 = [MEMORY[0x277D759A0] mainScreen];
              [currentDevice26 _referenceBounds];
            }

            HIDWORD(v285) = mainScreen30 ^ 1;
            BSSizeRoundForScale();
            if (v154 >= *(MEMORY[0x277D66E30] + 104))
            {
              goto LABEL_1003;
            }
          }

          else
          {
            HIDWORD(v285) = 0;
          }

LABEL_999:
          if (_SBF_Private_IsD63Like())
          {
            goto LABEL_1000;
          }

LABEL_1003:
          if (!_SBF_Private_IsD23Like())
          {
LABEL_1007:
            LODWORD(v285) = 0;
            HIDWORD(v283) = 0;
            goto LABEL_1084;
          }

          v155 = __sb__runningInSpringBoard();
          if (v155)
          {
            if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
            {
              goto LABEL_1007;
            }
          }

          else
          {
            mainScreen18 = [MEMORY[0x277D75418] currentDevice];
            if ([mainScreen18 userInterfaceIdiom])
            {
              HIDWORD(v283) = 0;
              LODWORD(v285) = 1;
              goto LABEL_1084;
            }
          }

          LODWORD(v285) = v155 ^ 1;
          if (SBFEffectiveHomeButtonType() == 2)
          {
            mainScreen30 = __sb__runningInSpringBoard();
            if (mainScreen30)
            {
              __sb__mainScreenReferenceBounds();
            }

            else
            {
              mainScreen23 = [MEMORY[0x277D759A0] mainScreen];
              [mainScreen23 _referenceBounds];
            }

            HIDWORD(v283) = mainScreen30 ^ 1;
            BSSizeRoundForScale();
            if (v172 >= *(MEMORY[0x277D66E30] + 216))
            {
              goto LABEL_1148;
            }
          }

          else
          {
            HIDWORD(v283) = 0;
          }

LABEL_1084:
          mainScreen30 = __sb__runningInSpringBoard();
          if (mainScreen30)
          {
            if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
            {
              LODWORD(v283) = 0;
              HIDWORD(v281) = 0;
              goto LABEL_1094;
            }
          }

          else
          {
            currentDevice24 = [MEMORY[0x277D75418] currentDevice];
            if ([currentDevice24 userInterfaceIdiom])
            {
              HIDWORD(v281) = 0;
              LODWORD(v283) = 1;
              goto LABEL_1094;
            }
          }

          LODWORD(v283) = mainScreen30 ^ 1;
          if (SBFEffectiveHomeButtonType() == 2)
          {
            mainScreen30 = __sb__runningInSpringBoard();
            if (mainScreen30)
            {
              __sb__mainScreenReferenceBounds();
            }

            else
            {
              mainScreen21 = [MEMORY[0x277D759A0] mainScreen];
              [mainScreen21 _referenceBounds];
            }

            HIDWORD(v281) = mainScreen30 ^ 1;
            BSSizeRoundForScale();
            if (v164 >= *(MEMORY[0x277D66E30] + 216))
            {
              goto LABEL_1098;
            }
          }

          else
          {
            HIDWORD(v281) = 0;
          }

LABEL_1094:
          if (_SBF_Private_IsD23Like())
          {
            goto LABEL_1095;
          }

LABEL_1098:
          v165 = __sb__runningInSpringBoard();
          if (v165)
          {
            if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
            {
              LODWORD(v281) = 0;
              HIDWORD(v279) = 0;
              goto LABEL_1108;
            }
          }

          else
          {
            mainScreen15 = [MEMORY[0x277D75418] currentDevice];
            if ([mainScreen15 userInterfaceIdiom])
            {
              HIDWORD(v279) = 0;
              LODWORD(v281) = 1;
              goto LABEL_1108;
            }
          }

          LODWORD(v281) = v165 ^ 1;
          if (SBFEffectiveHomeButtonType() == 2)
          {
            mainScreen30 = __sb__runningInSpringBoard();
            if (mainScreen30)
            {
              __sb__mainScreenReferenceBounds();
            }

            else
            {
              mainScreen22 = [MEMORY[0x277D759A0] mainScreen];
              [mainScreen22 _referenceBounds];
            }

            HIDWORD(v279) = mainScreen30 ^ 1;
            BSSizeRoundForScale();
            if (v169 >= *(MEMORY[0x277D66E30] + 120))
            {
              LODWORD(v279) = 0;
              v275 = 0;
              v277 = 0;
              v273 = 0;
              v271 = 0;
              v269 = 0;
              v67 = 0;
              v68 = 0;
              v69 = 0;
              v70 = 0;
              v71 = 0;
              v72 = 0;
              v168 = &CSQuickActionButtonInsetX;
              goto LABEL_1139;
            }
          }

          else
          {
            HIDWORD(v279) = 0;
          }

LABEL_1108:
          mainScreen30 = __sb__runningInSpringBoard();
          if (mainScreen30)
          {
            if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
            {
              LODWORD(v279) = 0;
              HIDWORD(v277) = 0;
              goto LABEL_1124;
            }
          }

          else
          {
            mainScreen17 = [MEMORY[0x277D75418] currentDevice];
            if ([mainScreen17 userInterfaceIdiom])
            {
              HIDWORD(v277) = 0;
              LODWORD(v279) = 1;
              goto LABEL_1124;
            }
          }

          LODWORD(v279) = mainScreen30 ^ 1;
          if (SBFEffectiveHomeButtonType() == 2)
          {
            mainScreen30 = __sb__runningInSpringBoard();
            if (mainScreen30)
            {
              __sb__mainScreenReferenceBounds();
            }

            else
            {
              mainScreen24 = [MEMORY[0x277D759A0] mainScreen];
              [mainScreen24 _referenceBounds];
            }

            HIDWORD(v277) = mainScreen30 ^ 1;
            BSSizeRoundForScale();
            if (v175 >= *(MEMORY[0x277D66E30] + 120))
            {
              goto LABEL_1159;
            }
          }

          else
          {
            HIDWORD(v277) = 0;
          }

LABEL_1124:
          if (_SBF_Private_IsD33OrSimilarDevice())
          {
            LODWORD(v277) = 0;
            v275 = 0;
            v273 = 0;
            v271 = 0;
            v269 = 0;
            v67 = 0;
            v68 = 0;
            v69 = 0;
            v70 = 0;
            v71 = 0;
            v72 = 0;
            v166 = &CSQuickActionButtonInsetX;
            goto LABEL_1126;
          }

LABEL_1159:
          v176 = __sb__runningInSpringBoard();
          if (v176)
          {
            if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
            {
              LODWORD(v277) = 0;
              HIDWORD(v275) = 0;
              goto LABEL_1191;
            }
          }

          else
          {
            mainScreen20 = [MEMORY[0x277D75418] currentDevice];
            if ([mainScreen20 userInterfaceIdiom])
            {
              HIDWORD(v275) = 0;
              LODWORD(v277) = 1;
              goto LABEL_1191;
            }
          }

          LODWORD(v277) = v176 ^ 1;
          if (SBFEffectiveHomeButtonType() == 2)
          {
            mainScreen30 = __sb__runningInSpringBoard();
            if (mainScreen30)
            {
              __sb__mainScreenReferenceBounds();
            }

            else
            {
              currentDevice28 = [MEMORY[0x277D759A0] mainScreen];
              [currentDevice28 _referenceBounds];
            }

            HIDWORD(v275) = mainScreen30 ^ 1;
            BSSizeRoundForScale();
            if (v182 >= *(MEMORY[0x277D66E30] + 104))
            {
              LODWORD(v275) = 0;
              v273 = 0;
              v271 = 0;
              v269 = 0;
              v67 = 0;
              v68 = 0;
              v69 = 0;
              v70 = 0;
              v71 = 0;
              v72 = 0;
              v181 = &CSQuickActionButtonInsetX;
              goto LABEL_1220;
            }
          }

          else
          {
            HIDWORD(v275) = 0;
          }

LABEL_1191:
          mainScreen30 = __sb__runningInSpringBoard();
          if (mainScreen30)
          {
            if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
            {
              LODWORD(v275) = 0;
              v273 = 0;
              goto LABEL_1207;
            }
          }

          else
          {
            mainScreen19 = [MEMORY[0x277D75418] currentDevice];
            if ([mainScreen19 userInterfaceIdiom])
            {
              v273 = 0;
              LODWORD(v275) = 1;
              goto LABEL_1207;
            }
          }

          LODWORD(v275) = mainScreen30 ^ 1;
          if (SBFEffectiveHomeButtonType() == 2)
          {
            mainScreen30 = __sb__runningInSpringBoard();
            if (mainScreen30)
            {
              __sb__mainScreenReferenceBounds();
            }

            else
            {
              currentDevice29 = [MEMORY[0x277D759A0] mainScreen];
              [currentDevice29 _referenceBounds];
            }

            v273 = mainScreen30 ^ 1;
            BSSizeRoundForScale();
            if (v188 >= *(MEMORY[0x277D66E30] + 104))
            {
              goto LABEL_1235;
            }
          }

          else
          {
            v273 = 0;
          }

LABEL_1207:
          if (_SBF_Private_IsD53())
          {
            v271 = 0;
            v269 = 0;
            v67 = 0;
            v68 = 0;
            v69 = 0;
            v70 = 0;
            v71 = 0;
            v72 = 0;
            v178 = &CSQuickActionButtonInsetX;
            goto LABEL_1209;
          }

LABEL_1235:
          if (_SBF_Private_IsD16() && (_SBF_Private_IsD52OrSimilarDevice() & 1) != 0)
          {
            v271 = 0;
            v269 = 0;
            v67 = 0;
            v68 = 0;
            v69 = 0;
            v70 = 0;
            v71 = 0;
            v72 = 0;
            v184 = &CSQuickActionButtonInsetX;
            goto LABEL_1238;
          }

          if (_SBF_Private_IsD52ZoomedOrSimilarDevice() && (_SBF_Private_IsD16() & 1) != 0)
          {
            v271 = 0;
            v269 = 0;
            v67 = 0;
            v68 = 0;
            v69 = 0;
            v70 = 0;
            v71 = 0;
            v72 = 0;
            v185 = &CSQuickActionButtonInsetX;
            goto LABEL_1242;
          }

          if (_SBF_Private_IsD52OrSimilarDevice())
          {
            v271 = 0;
            v269 = 0;
            v67 = 0;
            v68 = 0;
            v69 = 0;
            v70 = 0;
            v71 = 0;
            v72 = 0;
            v186 = &CSQuickActionButtonInsetX;
            goto LABEL_1245;
          }

          if (_SBF_Private_IsD52ZoomedOrSimilarDevice())
          {
            v271 = 0;
            v269 = 0;
            v67 = 0;
            v68 = 0;
            v69 = 0;
            v70 = 0;
            v71 = 0;
            v72 = 0;
            v187 = &CSQuickActionButtonInsetX;
            goto LABEL_1248;
          }

          v190 = __sb__runningInSpringBoard();
          if (v190)
          {
            if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
            {
              v271 = 0;
              v269 = 0;
              goto LABEL_1321;
            }
          }

          else
          {
            currentDevice30 = [MEMORY[0x277D75418] currentDevice];
            if ([currentDevice30 userInterfaceIdiom])
            {
              v269 = 0;
              v271 = 1;
              goto LABEL_1321;
            }
          }

          v271 = v190 ^ 1;
          if (SBFEffectiveHomeButtonType() == 2)
          {
            mainScreen30 = __sb__runningInSpringBoard();
            if (mainScreen30)
            {
              __sb__mainScreenReferenceBounds();
            }

            else
            {
              mainScreen25 = [MEMORY[0x277D759A0] mainScreen];
              [mainScreen25 _referenceBounds];
            }

            v269 = mainScreen30 ^ 1;
            BSSizeRoundForScale();
            if (v205 >= *(MEMORY[0x277D66E30] + 88))
            {
              v67 = 0;
              v68 = 0;
              v69 = 0;
              v70 = 0;
              v71 = 0;
              v72 = 0;
              v204 = &CSQuickActionButtonInsetX;
              goto LABEL_1376;
            }
          }

          else
          {
            v269 = 0;
          }

LABEL_1321:
          v199 = __sb__runningInSpringBoard();
          if (v199)
          {
            if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
            {
              v67 = 0;
              v68 = 0;
              goto LABEL_1341;
            }
          }

          else
          {
            mainScreen27 = [MEMORY[0x277D75418] currentDevice];
            if ([mainScreen27 userInterfaceIdiom])
            {
              v68 = 0;
              v67 = 1;
              goto LABEL_1341;
            }
          }

          v67 = v199 ^ 1;
          if (SBFEffectiveHomeButtonType() == 2)
          {
            mainScreen30 = __sb__runningInSpringBoard();
            if (mainScreen30)
            {
              __sb__mainScreenReferenceBounds();
            }

            else
            {
              mainScreen26 = [MEMORY[0x277D759A0] mainScreen];
              [mainScreen26 _referenceBounds];
            }

            v68 = mainScreen30 ^ 1;
            BSSizeRoundForScale();
            if (v208 >= *(MEMORY[0x277D66E30] + 72))
            {
              v69 = 0;
              v70 = 0;
              v71 = 0;
              v72 = 0;
              v207 = &CSQuickActionButtonInsetX;
              goto LABEL_1383;
            }
          }

          else
          {
            v68 = 0;
          }

LABEL_1341:
          mainScreen30 = __sb__runningInSpringBoard();
          if (mainScreen30)
          {
            if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
            {
              v69 = 0;
              v70 = 0;
              goto LABEL_1362;
            }
          }

          else
          {
            currentDevice33 = [MEMORY[0x277D75418] currentDevice];
            if ([currentDevice33 userInterfaceIdiom])
            {
              v70 = 0;
              v69 = 1;
              goto LABEL_1362;
            }
          }

          v69 = mainScreen30 ^ 1;
          mainScreen29 = __sb__runningInSpringBoard();
          if (mainScreen29)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen30 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen30 _referenceBounds];
          }

          v70 = mainScreen29 ^ 1;
          BSSizeRoundForScale();
          if (v202 >= *(MEMORY[0x277D66E30] + 56))
          {
            v71 = 0;
            v72 = 0;
            v201 = &CSQuickActionButtonInsetX;
            goto LABEL_1369;
          }

LABEL_1362:
          mainScreen29 = __sb__runningInSpringBoard();
          if (mainScreen29)
          {
            if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
            {
              v71 = 0;
              v72 = 0;
              goto LABEL_1394;
            }
          }

          else
          {
            currentDevice32 = [MEMORY[0x277D75418] currentDevice];
            if ([currentDevice32 userInterfaceIdiom])
            {
              v72 = 0;
              v71 = 1;
              goto LABEL_1394;
            }
          }

          v71 = mainScreen29 ^ 1;
          v212 = __sb__runningInSpringBoard();
          if (v212)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen29 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen29 _referenceBounds];
          }

          v72 = v212 ^ 1;
          BSSizeRoundForScale();
          if (v213 >= *(MEMORY[0x277D66E30] + 40))
          {
            v211 = &CSQuickActionButtonInsetX;
LABEL_1396:
            v73 = v211 + 1;
LABEL_330:
            v86 = *v73;
            if (v72)
            {

              if (!v71)
              {
                goto LABEL_332;
              }
            }

            else if (!v71)
            {
LABEL_332:
              if (v70)
              {
                goto LABEL_333;
              }

              goto LABEL_337;
            }

            if (v70)
            {
LABEL_333:

              if (!v69)
              {
                goto LABEL_339;
              }

              goto LABEL_338;
            }

LABEL_337:
            if (!v69)
            {
LABEL_339:
              if (v68)
              {
              }

              if (v67)
              {
              }

              if (v269)
              {
              }

              if (v271)
              {
              }

              if (v273)
              {
              }

              if (v275)
              {
              }

              if (HIDWORD(v275))
              {
              }

              if (v277)
              {
              }

              if (HIDWORD(v277))
              {
              }

              if (v279)
              {
              }

              if (HIDWORD(v279))
              {
              }

              if (v281)
              {
              }

              if (HIDWORD(v281))
              {
              }

              if (v283)
              {
              }

              if (HIDWORD(v283))
              {
              }

              if (v285)
              {
              }

              if (HIDWORD(v285))
              {
              }

              if (v287)
              {
              }

              if (HIDWORD(v287))
              {
              }

              if (v289)
              {
              }

              if (HIDWORD(v289))
              {
              }

              if (v291)
              {
              }

              if (HIDWORD(v291))
              {
              }

              if (LODWORD(v292[0]))
              {
              }

              if (HIDWORD(v292[0]))
              {
              }

              if (LODWORD(v292[1]))
              {
              }

              if (HIDWORD(v292[1]))
              {
              }

              if (LODWORD(v292[2]))
              {
              }

              if (HIDWORD(v292[2]))
              {
              }

              if (LODWORD(v292[3]))
              {
              }

              if (HIDWORD(v292[3]))
              {
              }

              if (LODWORD(v292[4]))
              {
              }

              if (HIDWORD(v292[4]))
              {
              }

              if (LODWORD(v292[5]))
              {
              }

              if (HIDWORD(v292[5]))
              {
              }

              if (LODWORD(v292[6]))
              {
              }

              if (HIDWORD(v292[6]))
              {
              }

              if (LODWORD(v292[7]))
              {
              }

              if (HIDWORD(v292[7]))
              {
              }

              if (LODWORD(v292[8]))
              {
              }

              if (HIDWORD(v292[8]))
              {
              }

              if (v293)
              {
              }

              if (HIDWORD(v293))
              {
              }

              if (v294)
              {
              }

              if (HIDWORD(v294))
              {
              }

              if (v295)
              {
              }

              if (HIDWORD(v295))
              {
              }

              if (v296)
              {
              }

              if (HIDWORD(v296))
              {
              }

              if (v297)
              {
              }

              if (HIDWORD(v297))
              {
              }

              if (v298)
              {
              }

              v23 = v50 + v86;
              if (HIDWORD(v298))
              {
              }

LABEL_445:
              v11 = v11 - (v15 + v23);
              v22 = 0.0;
              goto LABEL_446;
            }

LABEL_338:

            goto LABEL_339;
          }

LABEL_1394:
          v73 = &CSQuickActionButtonInsetX;
          goto LABEL_330;
        }

LABEL_84:

        goto LABEL_85;
      }
    }

    v34 = 0;
    v35 = 0;
    v36 = 0;
    currentDevice32 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    currentDevice33 = 0;
    v272 = 0;
    v274 = 0;
    v276 = 0;
    v278 = 0;
    v280 = 0;
    v282 = 0;
    v284 = 0;
    v286 = 0;
    v288 = 0;
    v290 = 0;
    memset(v292, 0, 68);
    v42 = &qword_21EC960F8;
    HIDWORD(v292[8]) = currentDevice31 ^ 1;
    goto LABEL_77;
  }

  [MEMORY[0x277D67DA0] idealSearchPlatterWidth];
  v19 = v18;
  v20 = CSMainPageListInsetXLandscapePhoneDeviceSpecific();
  v21 = v10 - v20 - v19 + v20 * -0.5;
  v15 = 0.0;
  v10 = v10 - (v21 + 0.0);
  if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1)
  {
    v22 = 0.0;
  }

  else
  {
    v22 = v21;
  }

LABEL_446:
  v87 = v15;
  v88 = v10;
  v89 = v11;
  result.size.height = v89;
  result.size.width = v88;
  result.origin.y = v87;
  result.origin.x = v22;
  return result;
}

+ (CGRect)_screenBoundsForPortrait:(BOOL)portrait
{
  portraitCopy = portrait;
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v22.origin.x = v6;
  v22.origin.y = v8;
  v22.size.width = v10;
  v22.size.height = v12;
  Height = CGRectGetHeight(v22);
  v23.origin.x = v6;
  v23.origin.y = v8;
  v23.size.width = v10;
  v23.size.height = v12;
  Width = CGRectGetWidth(v23);
  if (Height >= Width)
  {
    v15 = Height;
  }

  else
  {
    v15 = Width;
  }

  v24.origin.x = v6;
  v24.origin.y = v8;
  v24.size.width = v10;
  v24.size.height = v12;
  v16 = CGRectGetHeight(v24);
  v25.origin.x = v6;
  v25.origin.y = v8;
  v25.size.width = v10;
  v25.size.height = v12;
  v17 = CGRectGetWidth(v25);
  if (v16 < v17)
  {
    v17 = v16;
  }

  if (portraitCopy)
  {
    v18 = v17;
  }

  else
  {
    v18 = v15;
  }

  if (portraitCopy)
  {
    v19 = v15;
  }

  else
  {
    v19 = v17;
  }

  v20 = 0.0;
  v21 = 0.0;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

+ (CGRect)_normalizedContentCutoutForScreenBounds:(CGRect)bounds contentBoundingRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v8 = bounds.size.height;
  v9 = bounds.size.width;
  v10 = bounds.origin.y;
  v11 = bounds.origin.x;
  v20 = CGRectGetWidth(bounds);
  v21.origin.x = v11;
  v21.origin.y = v10;
  v21.size.width = v9;
  v21.size.height = v8;
  v12 = CGRectGetHeight(v21);
  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  v13 = CGRectGetMinX(v22) / v20;
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  v14 = CGRectGetMinY(v23) / v12;
  v24.origin.x = x;
  v24.origin.y = y;
  v24.size.width = width;
  v24.size.height = height;
  v15 = CGRectGetWidth(v24) / v20;
  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = height;
  v16 = CGRectGetHeight(v25) / v12;
  v17 = v13;
  v18 = v14;
  v19 = v15;
  result.size.height = v16;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

@end