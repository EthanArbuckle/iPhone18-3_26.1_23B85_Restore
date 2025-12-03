@interface CSQuickActionsView
- (BOOL)_hidesButtonsForWidgetControls;
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (BOOL)interpretsLocationAsBesideContent:(CGPoint)content inView:(id)view;
- (BOOL)interpretsLocationAsContent:(CGPoint)content inView:(id)view;
- (BOOL)shouldAllowClickInteraction:(id)interaction toBeginForButton:(id)button;
- (BOOL)strictlyInterpretsLocationAsContent:(CGPoint)content inView:(id)view;
- (CGRect)_leadingFrameWithOutsets:(BOOL)outsets;
- (CGRect)_trailingFrameWithOutsets:(BOOL)outsets;
- (CGSize)_buttonSizeWithOutsets:(BOOL)outsets;
- (CSQuickActionsDelegate)delegate;
- (CSQuickActionsView)initWithFrame:(CGRect)frame delegate:(id)delegate;
- (UIEdgeInsets)_buttonOutsets;
- (double)_insetX;
- (double)_insetY;
- (double)_minYWithOutsets:(BOOL)outsets;
- (id)_buttonGroupName;
- (id)_createButtonForAction:(id)action;
- (id)buttonsForApplicationBundleIdentifier:(id)identifier;
- (void)_addTargetsToButton:(id)button;
- (void)_layoutWidgetContainerView;
- (void)_removeTargetsFromButton:(id)button;
- (void)_setButtonBackgroundVisible:(BOOL)visible;
- (void)handleButtonPress:(id)press;
- (void)handleButtonTouchBegan:(id)began;
- (void)handleButtonTouchEnded:(id)ended;
- (void)layoutSubviews;
- (void)refreshSupportedButtons;
- (void)setActionsVisible:(BOOL)visible;
- (void)setButtonActions:(id)actions;
- (void)setControlsActions:(id)actions;
- (void)setGlassLuminanceValue:(double)value;
- (void)setHidesBackingShadow:(BOOL)shadow;
- (void)setLegibilitySettings:(id)settings;
- (void)setUsesSensitiveUIAppearance:(BOOL)appearance;
- (void)settings:(id)settings changedValueForKey:(id)key;
@end

@implementation CSQuickActionsView

- (double)_insetX
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  isPortrait = [WeakRetained isPortrait];

  v6 = __sb__runningInSpringBoard();
  v7 = v6;
  if (isPortrait)
  {
    if (v6)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        v8 = 0;
        v9 = 0;
        goto LABEL_18;
      }
    }

    else
    {
      currentDevice = [MEMORY[0x277D75418] currentDevice];
      if ([currentDevice userInterfaceIdiom] != 1)
      {
        v8 = 0;
        v9 = 1;
        goto LABEL_18;
      }
    }

    v9 = v7 ^ 1;
    if (SBFEffectiveHomeButtonType() == 2)
    {
      mainScreen28 = __sb__runningInSpringBoard();
      if (mainScreen28)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        mainScreen = [MEMORY[0x277D759A0] mainScreen];
        [mainScreen _referenceBounds];
      }

      v8 = mainScreen28 ^ 1;
      BSSizeRoundForScale();
      if (v50 == *(MEMORY[0x277D66E30] + 288) && v49 == *(MEMORY[0x277D66E30] + 296))
      {
        LODWORD(v212) = mainScreen28 ^ 1;
        BYTE4(v212) = v9;
        v206 = 0;
        v208 = 0;
        memset(v211, 0, sizeof(v211));
        v202 = 0;
        v204 = 0;
        v210 = 0;
        v200 = 0;
        v198 = 0;
        v28 = 0;
        v29 = 0;
        v30 = 0;
        v31 = 0;
        v32 = 0;
        v33 = 0;
        v34 = 0;
        v35 = 0;
        v36 = 0;
        v37 = &qword_21EC96210;
        goto LABEL_131;
      }
    }

    else
    {
      v8 = 0;
    }

LABEL_18:
    v13 = __sb__runningInSpringBoard();
    LODWORD(v212) = v8;
    BYTE4(v212) = v9;
    if (v13)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        v14 = 0;
        v15 = 0;
        goto LABEL_36;
      }
    }

    else
    {
      currentDevice2 = [MEMORY[0x277D75418] currentDevice];
      if ([currentDevice2 userInterfaceIdiom] != 1)
      {
        v14 = 0;
        v15 = 1;
        goto LABEL_36;
      }
    }

    v15 = v13 ^ 1;
    if (SBFEffectiveHomeButtonType() == 2)
    {
      mainScreen28 = __sb__runningInSpringBoard();
      if (mainScreen28)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
        [mainScreen2 _referenceBounds];
      }

      v14 = mainScreen28 ^ 1;
      BSSizeRoundForScale();
      if (v55 >= *(MEMORY[0x277D66E30] + 440))
      {
        LODWORD(v211[16]) = mainScreen28 ^ 1;
        HIDWORD(v211[16]) = v15;
        v206 = 0;
        v208 = 0;
        memset(v211, 0, 128);
        v202 = 0;
        v204 = 0;
        v210 = 0;
        v200 = 0;
        v198 = 0;
        v28 = 0;
        v29 = 0;
        v30 = 0;
        v31 = 0;
        v32 = 0;
        v33 = 0;
        v34 = 0;
        v35 = 0;
        v36 = 0;
        v37 = &qword_21EC96238;
        goto LABEL_131;
      }
    }

    else
    {
      v14 = 0;
    }

LABEL_36:
    v17 = __sb__runningInSpringBoard();
    v211[16] = __PAIR64__(v15, v14);
    if (v17)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        v18 = 0;
        v19 = 0;
        goto LABEL_54;
      }
    }

    else
    {
      currentDevice3 = [MEMORY[0x277D75418] currentDevice];
      if ([currentDevice3 userInterfaceIdiom] != 1)
      {
        v18 = 0;
        v19 = 1;
        goto LABEL_54;
      }
    }

    v19 = v17 ^ 1;
    if (SBFEffectiveHomeButtonType() == 2)
    {
      mainScreen28 = __sb__runningInSpringBoard();
      if (mainScreen28)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        mainScreen3 = [MEMORY[0x277D759A0] mainScreen];
        [mainScreen3 _referenceBounds];
      }

      v18 = mainScreen28 ^ 1;
      BSSizeRoundForScale();
      if (v57 >= *(MEMORY[0x277D66E30] + 376))
      {
        LODWORD(v211[15]) = mainScreen28 ^ 1;
        HIDWORD(v211[15]) = v19;
        v206 = 0;
        v208 = 0;
        memset(v211, 0, 120);
        v202 = 0;
        v204 = 0;
        v210 = 0;
        v200 = 0;
        v198 = 0;
        v28 = 0;
        v29 = 0;
        v30 = 0;
        v31 = 0;
        v32 = 0;
        v33 = 0;
        v34 = 0;
        v35 = 0;
        v36 = 0;
        v37 = &qword_21EC96228;
        goto LABEL_131;
      }
    }

    else
    {
      v18 = 0;
    }

LABEL_54:
    v21 = __sb__runningInSpringBoard();
    v211[15] = __PAIR64__(v19, v18);
    if (v21)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        LODWORD(v211[14]) = 0;
        v22 = 0;
        goto LABEL_71;
      }
    }

    else
    {
      currentDevice4 = [MEMORY[0x277D75418] currentDevice];
      if ([currentDevice4 userInterfaceIdiom] != 1)
      {
        LODWORD(v211[14]) = 0;
        v22 = 1;
        goto LABEL_71;
      }
    }

    v22 = v21 ^ 1;
    mainScreen28 = __sb__runningInSpringBoard();
    if (mainScreen28)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen4 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen4 _referenceBounds];
    }

    LODWORD(v211[14]) = mainScreen28 ^ 1;
    BSSizeRoundForScale();
    if (v24 >= *(MEMORY[0x277D66E30] + 280))
    {
      HIDWORD(v211[14]) = v22;
      v206 = 0;
      v208 = 0;
      memset(v211, 0, 112);
      v202 = 0;
      v204 = 0;
      v210 = 0;
      v200 = 0;
      v198 = 0;
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v36 = 0;
      v37 = &qword_21EC96230;
      goto LABEL_131;
    }

LABEL_71:
    v25 = __sb__runningInSpringBoard();
    HIDWORD(v211[14]) = v22;
    if (v25)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        v211[13] = 0;
        goto LABEL_91;
      }
    }

    else
    {
      currentDevice5 = [MEMORY[0x277D75418] currentDevice];
      if ([currentDevice5 userInterfaceIdiom] != 1)
      {
        v211[13] = 0x100000000;
        goto LABEL_91;
      }
    }

    HIDWORD(v211[13]) = v25 ^ 1;
    mainScreen28 = __sb__runningInSpringBoard();
    if (mainScreen28)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen5 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen5 _referenceBounds];
    }

    LODWORD(v211[13]) = mainScreen28 ^ 1;
    BSSizeRoundForScale();
    if (v45 >= *(MEMORY[0x277D66E30] + 264))
    {
      v206 = 0;
      v208 = 0;
      memset(v211, 0, 104);
      v202 = 0;
      v204 = 0;
      v210 = 0;
      v200 = 0;
      v198 = 0;
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v36 = 0;
      v37 = &qword_21EC96220;
      goto LABEL_131;
    }

LABEL_91:
    v46 = __sb__runningInSpringBoard();
    if (v46)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        v211[12] = 0;
        goto LABEL_369;
      }
    }

    else
    {
      currentDevice6 = [MEMORY[0x277D75418] currentDevice];
      if ([currentDevice6 userInterfaceIdiom] != 1)
      {
        v211[12] = 0x100000000;
        goto LABEL_369;
      }
    }

    HIDWORD(v211[12]) = v46 ^ 1;
    mainScreen28 = __sb__runningInSpringBoard();
    if (mainScreen28)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen6 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen6 _referenceBounds];
    }

    LODWORD(v211[12]) = mainScreen28 ^ 1;
    BSSizeRoundForScale();
    if (v61 >= *(MEMORY[0x277D66E30] + 248))
    {
      v206 = 0;
      v208 = 0;
      memset(v211, 0, 96);
      v202 = 0;
      v204 = 0;
      v210 = 0;
      v200 = 0;
      v198 = 0;
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v36 = 0;
      v37 = &qword_21EC96218;
      goto LABEL_131;
    }

LABEL_369:
    mainScreen28 = __sb__runningInSpringBoard();
    if (mainScreen28)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        goto LABEL_371;
      }
    }

    else
    {
      currentDevice7 = [MEMORY[0x277D75418] currentDevice];
      if ([currentDevice7 userInterfaceIdiom] != 1)
      {
LABEL_371:
        HIDWORD(v211[11]) = mainScreen28 ^ 1;
        if (!_SBF_Private_IsD94Like())
        {
LABEL_375:
          *(&v211[10] + 4) = 0;
          goto LABEL_400;
        }

        v62 = __sb__runningInSpringBoard();
        if (v62)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            goto LABEL_375;
          }
        }

        else
        {
          currentDevice8 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice8 userInterfaceIdiom])
          {
            *(&v211[10] + 4) = 0x100000000;
            goto LABEL_400;
          }
        }

        LODWORD(v211[11]) = v62 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          mainScreen28 = __sb__runningInSpringBoard();
          if (mainScreen28)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen7 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen7 _referenceBounds];
          }

          HIDWORD(v211[10]) = mainScreen28 ^ 1;
          BSSizeRoundForScale();
          if (v69 >= *(MEMORY[0x277D66E30] + 200))
          {
            v206 = 0;
            v208 = 0;
            memset(v211, 0, 84);
            v202 = 0;
            v204 = 0;
            v210 = 0;
            v200 = 0;
            v198 = 0;
            v28 = 0;
            v29 = 0;
            v30 = 0;
            v31 = 0;
            v32 = 0;
            v33 = 0;
            v34 = 0;
            v35 = 0;
            v36 = 0;
            v37 = &qword_21EC961E8;
            goto LABEL_131;
          }
        }

        else
        {
          HIDWORD(v211[10]) = 0;
        }

LABEL_400:
        mainScreen28 = __sb__runningInSpringBoard();
        if (mainScreen28)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            *(&v211[9] + 4) = 0;
            goto LABEL_410;
          }
        }

        else
        {
          currentDevice9 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice9 userInterfaceIdiom])
          {
            *(&v211[9] + 4) = 0x100000000;
            goto LABEL_410;
          }
        }

        LODWORD(v211[10]) = mainScreen28 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          mainScreen28 = __sb__runningInSpringBoard();
          if (mainScreen28)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen8 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen8 _referenceBounds];
          }

          HIDWORD(v211[9]) = mainScreen28 ^ 1;
          BSSizeRoundForScale();
          if (v65 >= *(MEMORY[0x277D66E30] + 200))
          {
            goto LABEL_414;
          }
        }

        else
        {
          HIDWORD(v211[9]) = 0;
        }

LABEL_410:
        if (_SBF_Private_IsD94Like())
        {
          v206 = 0;
          v208 = 0;
          memset(v211, 0, 76);
          v202 = 0;
          v204 = 0;
          v210 = 0;
          v200 = 0;
          v198 = 0;
          v28 = 0;
          v29 = 0;
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v33 = 0;
          v34 = 0;
          v35 = 0;
          v36 = 0;
          v37 = &qword_21EC961F0;
          goto LABEL_131;
        }

LABEL_414:
        if (!_SBF_Private_IsD64Like())
        {
LABEL_418:
          *(&v211[8] + 4) = 0;
          goto LABEL_456;
        }

        v66 = __sb__runningInSpringBoard();
        if (v66)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            goto LABEL_418;
          }
        }

        else
        {
          currentDevice10 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice10 userInterfaceIdiom])
          {
            *(&v211[8] + 4) = 0x100000000;
            goto LABEL_456;
          }
        }

        LODWORD(v211[9]) = v66 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          mainScreen28 = __sb__runningInSpringBoard();
          if (mainScreen28)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen9 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen9 _referenceBounds];
          }

          HIDWORD(v211[8]) = mainScreen28 ^ 1;
          BSSizeRoundForScale();
          if (v77 >= *(MEMORY[0x277D66E30] + 136))
          {
            v206 = 0;
            v208 = 0;
            memset(v211, 0, 68);
            v202 = 0;
            v204 = 0;
            v210 = 0;
            v200 = 0;
            v198 = 0;
            v28 = 0;
            v29 = 0;
            v30 = 0;
            v31 = 0;
            v32 = 0;
            v33 = 0;
            v34 = 0;
            v35 = 0;
            v36 = 0;
            v37 = &qword_21EC961F8;
            goto LABEL_131;
          }
        }

        else
        {
          HIDWORD(v211[8]) = 0;
        }

LABEL_456:
        mainScreen28 = __sb__runningInSpringBoard();
        if (mainScreen28)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            *(&v211[7] + 4) = 0;
            goto LABEL_466;
          }
        }

        else
        {
          currentDevice11 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice11 userInterfaceIdiom])
          {
            *(&v211[7] + 4) = 0x100000000;
            goto LABEL_466;
          }
        }

        LODWORD(v211[8]) = mainScreen28 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          mainScreen28 = __sb__runningInSpringBoard();
          if (mainScreen28)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen10 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen10 _referenceBounds];
          }

          HIDWORD(v211[7]) = mainScreen28 ^ 1;
          BSSizeRoundForScale();
          if (v71 >= *(MEMORY[0x277D66E30] + 136))
          {
            goto LABEL_470;
          }
        }

        else
        {
          HIDWORD(v211[7]) = 0;
        }

LABEL_466:
        if (_SBF_Private_IsD64Like())
        {
          v206 = 0;
          v208 = 0;
          memset(v211, 0, 60);
          v202 = 0;
          v204 = 0;
          v210 = 0;
          v200 = 0;
          v198 = 0;
          v28 = 0;
          v29 = 0;
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v33 = 0;
          v34 = 0;
          v35 = 0;
          v36 = 0;
          v37 = &qword_21EC96200;
          goto LABEL_131;
        }

LABEL_470:
        v72 = __sb__runningInSpringBoard();
        if (v72)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            *(&v211[6] + 4) = 0;
            goto LABEL_480;
          }
        }

        else
        {
          currentDevice12 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice12 userInterfaceIdiom])
          {
            *(&v211[6] + 4) = 0x100000000;
            goto LABEL_480;
          }
        }

        LODWORD(v211[7]) = v72 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          mainScreen28 = __sb__runningInSpringBoard();
          if (mainScreen28)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen11 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen11 _referenceBounds];
          }

          HIDWORD(v211[6]) = mainScreen28 ^ 1;
          BSSizeRoundForScale();
          if (v75 >= *(MEMORY[0x277D66E30] + 136))
          {
            v206 = 0;
            v208 = 0;
            memset(v211, 0, 52);
            v202 = 0;
            v204 = 0;
            v210 = 0;
            v200 = 0;
            v198 = 0;
            v28 = 0;
            v29 = 0;
            v30 = 0;
            v31 = 0;
            v32 = 0;
            v33 = 0;
            v34 = 0;
            v35 = 0;
            v36 = 0;
            v37 = &qword_21EC961D8;
            goto LABEL_131;
          }
        }

        else
        {
          HIDWORD(v211[6]) = 0;
        }

LABEL_480:
        mainScreen28 = __sb__runningInSpringBoard();
        if (mainScreen28)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            *(&v211[5] + 4) = 0;
            goto LABEL_524;
          }
        }

        else
        {
          currentDevice13 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice13 userInterfaceIdiom])
          {
            *(&v211[5] + 4) = 0x100000000;
            goto LABEL_524;
          }
        }

        LODWORD(v211[6]) = mainScreen28 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          mainScreen28 = __sb__runningInSpringBoard();
          if (mainScreen28)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen12 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen12 _referenceBounds];
          }

          HIDWORD(v211[5]) = mainScreen28 ^ 1;
          BSSizeRoundForScale();
          if (v79 >= *(MEMORY[0x277D66E30] + 136))
          {
            goto LABEL_546;
          }
        }

        else
        {
          HIDWORD(v211[5]) = 0;
        }

LABEL_524:
        if (_SBF_Private_IsD54())
        {
          v206 = 0;
          v208 = 0;
          memset(v211, 0, 44);
          v202 = 0;
          v204 = 0;
          v210 = 0;
          v200 = 0;
          v198 = 0;
          v28 = 0;
          v29 = 0;
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v33 = 0;
          v34 = 0;
          v35 = 0;
          v36 = 0;
          v37 = &qword_21EC961E0;
          goto LABEL_131;
        }

LABEL_546:
        v80 = __sb__runningInSpringBoard();
        if (v80)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            *(&v211[4] + 4) = 0;
            goto LABEL_564;
          }
        }

        else
        {
          currentDevice14 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice14 userInterfaceIdiom])
          {
            *(&v211[4] + 4) = 0x100000000;
            goto LABEL_564;
          }
        }

        LODWORD(v211[5]) = v80 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v83 = __sb__runningInSpringBoard();
          if (v83)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen13 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen13 _referenceBounds];
          }

          mainScreen28 = v83 ^ 1u;
          BSSizeRoundForScale();
          HIDWORD(v211[4]) = mainScreen28;
          if (v85 >= *(MEMORY[0x277D66E30] + 120) && (_SBF_Private_IsN84OrSimilarDevice() & 1) != 0)
          {
            v206 = 0;
            v208 = 0;
            memset(v211, 0, 36);
            v202 = 0;
            v204 = 0;
            v210 = 0;
            v200 = 0;
            v198 = 0;
            v28 = 0;
            v29 = 0;
            v30 = 0;
            v31 = 0;
            v32 = 0;
            v33 = 0;
            v34 = 0;
            v35 = 0;
            v36 = 0;
            v37 = &qword_21EC96198;
            goto LABEL_131;
          }
        }

        else
        {
          HIDWORD(v211[4]) = 0;
        }

LABEL_564:
        mainScreen28 = __sb__runningInSpringBoard();
        if (mainScreen28)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            *(&v211[3] + 4) = 0;
            goto LABEL_584;
          }
        }

        else
        {
          currentDevice15 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice15 userInterfaceIdiom])
          {
            *(&v211[3] + 4) = 0x100000000;
            goto LABEL_584;
          }
        }

        LODWORD(v211[4]) = mainScreen28 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          mainScreen28 = __sb__runningInSpringBoard();
          if (mainScreen28)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen14 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen14 _referenceBounds];
          }

          HIDWORD(v211[3]) = mainScreen28 ^ 1;
          BSSizeRoundForScale();
          if (v87 >= *(MEMORY[0x277D66E30] + 120))
          {
            goto LABEL_604;
          }
        }

        else
        {
          HIDWORD(v211[3]) = 0;
        }

LABEL_584:
        if (_SBF_Private_IsD33OrSimilarDevice() && (_SBF_Private_IsN84ZoomedOrSimilarDevice() & 1) != 0)
        {
          v206 = 0;
          v208 = 0;
          memset(v211, 0, 28);
          v202 = 0;
          v204 = 0;
          v210 = 0;
          v200 = 0;
          v198 = 0;
          v28 = 0;
          v29 = 0;
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v33 = 0;
          v34 = 0;
          v35 = 0;
          v36 = 0;
          v37 = &qword_21EC961A0;
          goto LABEL_131;
        }

LABEL_604:
        if (!_SBF_Private_IsD93Like())
        {
LABEL_608:
          *(&v211[2] + 4) = 0;
          goto LABEL_624;
        }

        v88 = __sb__runningInSpringBoard();
        if (v88)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            goto LABEL_608;
          }
        }

        else
        {
          currentDevice16 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice16 userInterfaceIdiom])
          {
            *(&v211[2] + 4) = 1;
            goto LABEL_624;
          }
        }

        HIDWORD(v211[2]) = v88 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v91 = __sb__runningInSpringBoard();
          if (v91)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen15 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen15 _referenceBounds];
          }

          mainScreen28 = v91 ^ 1u;
          BSSizeRoundForScale();
          LODWORD(v211[3]) = mainScreen28;
          if (v97 >= *(MEMORY[0x277D66E30] + 184))
          {
            v206 = 0;
            v208 = 0;
            memset(v211, 0, 20);
            v202 = 0;
            v204 = 0;
            v210 = 0;
            v200 = 0;
            v198 = 0;
            v28 = 0;
            v29 = 0;
            v30 = 0;
            v31 = 0;
            v32 = 0;
            v33 = 0;
            v34 = 0;
            v35 = 0;
            v36 = 0;
            v37 = &qword_21EC96188;
            goto LABEL_131;
          }
        }

        else
        {
          LODWORD(v211[3]) = 0;
        }

LABEL_624:
        mainScreen28 = __sb__runningInSpringBoard();
        if (mainScreen28)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            *(&v211[1] + 4) = 0;
            goto LABEL_634;
          }
        }

        else
        {
          currentDevice17 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice17 userInterfaceIdiom])
          {
            *(&v211[1] + 4) = 1;
            goto LABEL_634;
          }
        }

        HIDWORD(v211[1]) = mainScreen28 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          mainScreen28 = __sb__runningInSpringBoard();
          if (mainScreen28)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen16 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen16 _referenceBounds];
          }

          LODWORD(v211[2]) = mainScreen28 ^ 1;
          BSSizeRoundForScale();
          if (v92 >= *(MEMORY[0x277D66E30] + 184))
          {
            goto LABEL_638;
          }
        }

        else
        {
          LODWORD(v211[2]) = 0;
        }

LABEL_634:
        if (_SBF_Private_IsD93Like())
        {
          v206 = 0;
          v208 = 0;
          LODWORD(v211[0]) = 0;
          v202 = 0;
          v204 = 0;
          v210 = 0;
          v200 = 0;
          *(v211 + 4) = 0;
          v198 = 0;
          v28 = 0;
          v29 = 0;
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v33 = 0;
          v34 = 0;
          v35 = 0;
          v36 = 0;
          v37 = &qword_21EC96190;
          goto LABEL_131;
        }

LABEL_638:
        if (!_SBF_Private_IsD63Like())
        {
LABEL_642:
          *(v211 + 4) = 0;
          goto LABEL_680;
        }

        v93 = __sb__runningInSpringBoard();
        if (v93)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            goto LABEL_642;
          }
        }

        else
        {
          currentDevice18 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice18 userInterfaceIdiom])
          {
            *(v211 + 4) = 1;
            goto LABEL_680;
          }
        }

        HIDWORD(v211[0]) = v93 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v99 = __sb__runningInSpringBoard();
          if (v99)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen17 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen17 _referenceBounds];
          }

          mainScreen28 = v99 ^ 1u;
          BSSizeRoundForScale();
          LODWORD(v211[1]) = mainScreen28;
          if (v105 >= *(MEMORY[0x277D66E30] + 104))
          {
            v206 = 0;
            v208 = 0;
            LODWORD(v211[0]) = 0;
            v202 = 0;
            v204 = 0;
            v210 = 0;
            v198 = 0;
            v200 = 0;
            v28 = 0;
            v29 = 0;
            v30 = 0;
            v31 = 0;
            v32 = 0;
            v33 = 0;
            v34 = 0;
            v35 = 0;
            v36 = 0;
            v37 = &qword_21EC961B8;
            goto LABEL_131;
          }
        }

        else
        {
          LODWORD(v211[1]) = 0;
        }

LABEL_680:
        mainScreen28 = __sb__runningInSpringBoard();
        if (mainScreen28)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            LODWORD(v211[0]) = 0;
            v210 = 0;
            goto LABEL_690;
          }
        }

        else
        {
          currentDevice19 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice19 userInterfaceIdiom])
          {
            LODWORD(v211[0]) = 0;
            v210 = 1;
            goto LABEL_690;
          }
        }

        v210 = mainScreen28 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          mainScreen28 = __sb__runningInSpringBoard();
          if (mainScreen28)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen18 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen18 _referenceBounds];
          }

          LODWORD(v211[0]) = mainScreen28 ^ 1;
          BSSizeRoundForScale();
          if (v100 >= *(MEMORY[0x277D66E30] + 104))
          {
            goto LABEL_694;
          }
        }

        else
        {
          LODWORD(v211[0]) = 0;
        }

LABEL_690:
        if (_SBF_Private_IsD63Like())
        {
          v204 = 0;
          v206 = 0;
          v208 = 0;
          v200 = 0;
          v202 = 0;
          v198 = 0;
          v28 = 0;
          v29 = 0;
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v33 = 0;
          v34 = 0;
          v35 = 0;
          v36 = 0;
          v37 = &qword_21EC961C0;
          goto LABEL_131;
        }

LABEL_694:
        if (!_SBF_Private_IsD23Like())
        {
LABEL_698:
          HIDWORD(v206) = 0;
          v208 = 0;
          goto LABEL_736;
        }

        v101 = __sb__runningInSpringBoard();
        if (v101)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            goto LABEL_698;
          }
        }

        else
        {
          currentDevice20 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice20 userInterfaceIdiom])
          {
            HIDWORD(v206) = 0;
            v208 = 1;
            goto LABEL_736;
          }
        }

        v208 = v101 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          mainScreen28 = __sb__runningInSpringBoard();
          if (mainScreen28)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen19 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen19 _referenceBounds];
          }

          HIDWORD(v206) = mainScreen28 ^ 1;
          BSSizeRoundForScale();
          if (v115 >= *(MEMORY[0x277D66E30] + 216))
          {
            LODWORD(v206) = 0;
            v202 = 0;
            v204 = 0;
            v198 = 0;
            v200 = 0;
            v28 = 0;
            v29 = 0;
            v30 = 0;
            v31 = 0;
            v32 = 0;
            v33 = 0;
            v34 = 0;
            v35 = 0;
            v36 = 0;
            v37 = &qword_21EC961C8;
            goto LABEL_131;
          }
        }

        else
        {
          HIDWORD(v206) = 0;
        }

LABEL_736:
        mainScreen28 = __sb__runningInSpringBoard();
        if (mainScreen28)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            LODWORD(v206) = 0;
            HIDWORD(v204) = 0;
            goto LABEL_746;
          }
        }

        else
        {
          currentDevice21 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice21 userInterfaceIdiom])
          {
            HIDWORD(v204) = 0;
            LODWORD(v206) = 1;
            goto LABEL_746;
          }
        }

        LODWORD(v206) = mainScreen28 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          mainScreen28 = __sb__runningInSpringBoard();
          if (mainScreen28)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen20 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen20 _referenceBounds];
          }

          HIDWORD(v204) = mainScreen28 ^ 1;
          BSSizeRoundForScale();
          if (v107 >= *(MEMORY[0x277D66E30] + 216))
          {
            goto LABEL_750;
          }
        }

        else
        {
          HIDWORD(v204) = 0;
        }

LABEL_746:
        if (_SBF_Private_IsD23Like())
        {
          LODWORD(v204) = 0;
          v200 = 0;
          v202 = 0;
          v198 = 0;
          v28 = 0;
          v29 = 0;
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v33 = 0;
          v34 = 0;
          v35 = 0;
          v36 = 0;
          v37 = &qword_21EC961D0;
          goto LABEL_131;
        }

LABEL_750:
        v108 = __sb__runningInSpringBoard();
        if (v108)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            LODWORD(v204) = 0;
            HIDWORD(v202) = 0;
            goto LABEL_760;
          }
        }

        else
        {
          currentDevice22 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice22 userInterfaceIdiom])
          {
            HIDWORD(v202) = 0;
            LODWORD(v204) = 1;
            goto LABEL_760;
          }
        }

        LODWORD(v204) = v108 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v109 = __sb__runningInSpringBoard();
          if (v109)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen21 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen21 _referenceBounds];
          }

          mainScreen28 = v109 ^ 1u;
          BSSizeRoundForScale();
          HIDWORD(v202) = mainScreen28;
          if (v113 >= *(MEMORY[0x277D66E30] + 120))
          {
            LODWORD(v202) = 0;
            v198 = 0;
            v200 = 0;
            v28 = 0;
            v29 = 0;
            v30 = 0;
            v31 = 0;
            v32 = 0;
            v33 = 0;
            v34 = 0;
            v35 = 0;
            v36 = 0;
            v37 = &qword_21EC961A8;
            goto LABEL_131;
          }
        }

        else
        {
          HIDWORD(v202) = 0;
        }

LABEL_760:
        mainScreen28 = __sb__runningInSpringBoard();
        if (mainScreen28)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            LODWORD(v202) = 0;
            HIDWORD(v200) = 0;
            goto LABEL_804;
          }
        }

        else
        {
          currentDevice23 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice23 userInterfaceIdiom])
          {
            HIDWORD(v200) = 0;
            LODWORD(v202) = 1;
            goto LABEL_804;
          }
        }

        LODWORD(v202) = mainScreen28 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          mainScreen28 = __sb__runningInSpringBoard();
          if (mainScreen28)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen22 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen22 _referenceBounds];
          }

          HIDWORD(v200) = mainScreen28 ^ 1;
          BSSizeRoundForScale();
          if (v117 >= *(MEMORY[0x277D66E30] + 120))
          {
            goto LABEL_826;
          }
        }

        else
        {
          HIDWORD(v200) = 0;
        }

LABEL_804:
        if (_SBF_Private_IsD33OrSimilarDevice())
        {
          LODWORD(v200) = 0;
          v198 = 0;
          v28 = 0;
          v29 = 0;
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v33 = 0;
          v34 = 0;
          v35 = 0;
          v36 = 0;
          v37 = &qword_21EC961B0;
          goto LABEL_131;
        }

LABEL_826:
        v118 = __sb__runningInSpringBoard();
        if (v118)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            LODWORD(v200) = 0;
            HIDWORD(v198) = 0;
            goto LABEL_844;
          }
        }

        else
        {
          currentDevice24 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice24 userInterfaceIdiom])
          {
            HIDWORD(v198) = 0;
            LODWORD(v200) = 1;
            goto LABEL_844;
          }
        }

        LODWORD(v200) = v118 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          mainScreen28 = __sb__runningInSpringBoard();
          if (mainScreen28)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen23 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen23 _referenceBounds];
          }

          HIDWORD(v198) = mainScreen28 ^ 1;
          BSSizeRoundForScale();
          if (v121 >= *(MEMORY[0x277D66E30] + 104))
          {
            LODWORD(v198) = 0;
            v28 = 0;
            v29 = 0;
            v30 = 0;
            v31 = 0;
            v32 = 0;
            v33 = 0;
            v34 = 0;
            v35 = 0;
            v36 = 0;
            v37 = &qword_21EC96178;
            goto LABEL_131;
          }
        }

        else
        {
          HIDWORD(v198) = 0;
        }

LABEL_844:
        mainScreen28 = __sb__runningInSpringBoard();
        if (mainScreen28)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            LODWORD(v198) = 0;
            v28 = 0;
            goto LABEL_864;
          }
        }

        else
        {
          currentDevice25 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice25 userInterfaceIdiom])
          {
            v28 = 0;
            LODWORD(v198) = 1;
            goto LABEL_864;
          }
        }

        LODWORD(v198) = mainScreen28 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          mainScreen28 = __sb__runningInSpringBoard();
          if (mainScreen28)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen24 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen24 _referenceBounds];
          }

          v28 = mainScreen28 ^ 1;
          BSSizeRoundForScale();
          if (v123 >= *(MEMORY[0x277D66E30] + 104))
          {
            goto LABEL_880;
          }
        }

        else
        {
          v28 = 0;
        }

LABEL_864:
        if (_SBF_Private_IsD53())
        {
          v29 = 0;
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v33 = 0;
          v34 = 0;
          v35 = 0;
          v36 = 0;
          v37 = &qword_21EC96180;
          goto LABEL_131;
        }

LABEL_880:
        if (_SBF_Private_IsD16() && (_SBF_Private_IsD52OrSimilarDevice() & 1) != 0)
        {
          v29 = 0;
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v33 = 0;
          v34 = 0;
          v35 = 0;
          v36 = 0;
          v37 = &qword_21EC96158;
          goto LABEL_131;
        }

        if (_SBF_Private_IsD52ZoomedOrSimilarDevice() && (_SBF_Private_IsD16() & 1) != 0)
        {
          v29 = 0;
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v33 = 0;
          v34 = 0;
          v35 = 0;
          v36 = 0;
          v37 = &qword_21EC96160;
          goto LABEL_131;
        }

        if (_SBF_Private_IsD52OrSimilarDevice())
        {
          v29 = 0;
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v33 = 0;
          v34 = 0;
          v35 = 0;
          v36 = 0;
          v37 = &qword_21EC96148;
          goto LABEL_131;
        }

        if (_SBF_Private_IsD52ZoomedOrSimilarDevice())
        {
          v29 = 0;
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v33 = 0;
          v34 = 0;
          v35 = 0;
          v36 = 0;
          v37 = &qword_21EC96150;
          goto LABEL_131;
        }

        v125 = __sb__runningInSpringBoard();
        if (v125)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            v29 = 0;
            v30 = 0;
            goto LABEL_918;
          }
        }

        else
        {
          currentDevice26 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice26 userInterfaceIdiom])
          {
            v30 = 0;
            v29 = 1;
            goto LABEL_918;
          }
        }

        v29 = v125 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          mainScreen28 = __sb__runningInSpringBoard();
          if (mainScreen28)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen25 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen25 _referenceBounds];
          }

          v30 = mainScreen28 ^ 1;
          BSSizeRoundForScale();
          if (v132 >= *(MEMORY[0x277D66E30] + 88))
          {
            v31 = 0;
            v32 = 0;
            v33 = 0;
            v34 = 0;
            v35 = 0;
            v36 = 0;
            v37 = &qword_21EC96168;
            goto LABEL_131;
          }
        }

        else
        {
          v30 = 0;
        }

LABEL_918:
        v127 = __sb__runningInSpringBoard();
        if (v127)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            v31 = 0;
            v32 = 0;
            goto LABEL_938;
          }
        }

        else
        {
          currentDevice27 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice27 userInterfaceIdiom])
          {
            v32 = 0;
            v31 = 1;
            goto LABEL_938;
          }
        }

        v31 = v127 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          mainScreen28 = __sb__runningInSpringBoard();
          if (mainScreen28)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen26 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen26 _referenceBounds];
          }

          v32 = mainScreen28 ^ 1;
          BSSizeRoundForScale();
          if (v134 >= *(MEMORY[0x277D66E30] + 72))
          {
            v33 = 0;
            v34 = 0;
            v35 = 0;
            v36 = 0;
            v37 = &qword_21EC96170;
            goto LABEL_131;
          }
        }

        else
        {
          v32 = 0;
        }

LABEL_938:
        v129 = __sb__runningInSpringBoard();
        if (v129)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            v33 = 0;
            v34 = 0;
            goto LABEL_958;
          }
        }

        else
        {
          currentDevice28 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice28 userInterfaceIdiom])
          {
            v34 = 0;
            v33 = 1;
            goto LABEL_958;
          }
        }

        v33 = v129 ^ 1;
        mainScreen28 = __sb__runningInSpringBoard();
        if (mainScreen28)
        {
          __sb__mainScreenReferenceBounds();
        }

        else
        {
          mainScreen27 = [MEMORY[0x277D759A0] mainScreen];
          [mainScreen27 _referenceBounds];
        }

        v34 = mainScreen28 ^ 1;
        BSSizeRoundForScale();
        if (v130 >= *(MEMORY[0x277D66E30] + 56))
        {
          v35 = 0;
          v36 = 0;
          v37 = &qword_21EC96140;
          goto LABEL_131;
        }

LABEL_958:
        mainScreen28 = __sb__runningInSpringBoard();
        if (mainScreen28)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            v35 = 0;
            v36 = 0;
            goto LABEL_992;
          }
        }

        else
        {
          currentDevice29 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice29 userInterfaceIdiom])
          {
            v36 = 0;
            v35 = 1;
            goto LABEL_992;
          }
        }

        v35 = mainScreen28 ^ 1;
        v136 = __sb__runningInSpringBoard();
        if (v136)
        {
          __sb__mainScreenReferenceBounds();
        }

        else
        {
          mainScreen28 = [MEMORY[0x277D759A0] mainScreen];
          [mainScreen28 _referenceBounds];
        }

        v36 = v136 ^ 1;
        BSSizeRoundForScale();
        if (v137 >= *(MEMORY[0x277D66E30] + 40))
        {
          v37 = &qword_21EC96138;
LABEL_131:
          v58 = *v37;
          if (v36)
          {

            if (!v35)
            {
              goto LABEL_133;
            }
          }

          else if (!v35)
          {
LABEL_133:
            if (v34)
            {
              goto LABEL_134;
            }

            goto LABEL_233;
          }

          if (v34)
          {
LABEL_134:

            if (!v33)
            {
              goto LABEL_135;
            }

            goto LABEL_234;
          }

LABEL_233:
          if (!v33)
          {
LABEL_135:
            if (v32)
            {
              goto LABEL_136;
            }

            goto LABEL_235;
          }

LABEL_234:

          if (v32)
          {
LABEL_136:

            if (!v31)
            {
              goto LABEL_137;
            }

            goto LABEL_236;
          }

LABEL_235:
          if (!v31)
          {
LABEL_137:
            if (v30)
            {
              goto LABEL_138;
            }

            goto LABEL_237;
          }

LABEL_236:

          if (v30)
          {
LABEL_138:

            if (!v29)
            {
              goto LABEL_139;
            }

            goto LABEL_238;
          }

LABEL_237:
          if (!v29)
          {
LABEL_139:
            if (!v28)
            {
              goto LABEL_141;
            }

            goto LABEL_140;
          }

LABEL_238:

          if (!v28)
          {
LABEL_141:
            if (v198)
            {
            }

            if (HIDWORD(v198))
            {
            }

            if (v200)
            {
            }

            if (HIDWORD(v200))
            {
            }

            if (v202)
            {
            }

            if (HIDWORD(v202))
            {
            }

            if (v204)
            {
            }

            if (HIDWORD(v204))
            {
            }

            if (v206)
            {
            }

            if (HIDWORD(v206))
            {
            }

            if (v208)
            {
            }

            if (LODWORD(v211[0]))
            {
            }

            if (v210)
            {
            }

            if (LODWORD(v211[1]))
            {
            }

            if (HIDWORD(v211[0]))
            {
            }

            if (LODWORD(v211[2]))
            {
            }

            if (HIDWORD(v211[1]))
            {
            }

            if (LODWORD(v211[3]))
            {
            }

            if (HIDWORD(v211[2]))
            {
            }

            if (HIDWORD(v211[3]))
            {
            }

            if (LODWORD(v211[4]))
            {
            }

            if (HIDWORD(v211[4]))
            {
            }

            if (LODWORD(v211[5]))
            {
            }

            if (HIDWORD(v211[5]))
            {
            }

            if (LODWORD(v211[6]))
            {
            }

            if (HIDWORD(v211[6]))
            {
            }

            if (LODWORD(v211[7]))
            {
            }

            if (HIDWORD(v211[7]))
            {
            }

            if (LODWORD(v211[8]))
            {
            }

            if (HIDWORD(v211[8]))
            {
            }

            if (LODWORD(v211[9]))
            {
            }

            if (HIDWORD(v211[9]))
            {
            }

            if (LODWORD(v211[10]))
            {
            }

            if (HIDWORD(v211[10]))
            {
            }

            if (LODWORD(v211[11]))
            {
            }

            if (HIDWORD(v211[11]))
            {
            }

            if (LODWORD(v211[12]))
            {
            }

            if (HIDWORD(v211[12]))
            {
            }

            if (LODWORD(v211[13]))
            {
            }

            if (HIDWORD(v211[13]))
            {
            }

            if (LODWORD(v211[14]))
            {

              if (!HIDWORD(v211[14]))
              {
                goto LABEL_223;
              }
            }

            else if (!HIDWORD(v211[14]))
            {
LABEL_223:
              if (LODWORD(v211[15]))
              {
                goto LABEL_224;
              }

              goto LABEL_242;
            }

            if (LODWORD(v211[15]))
            {
LABEL_224:

              if (!HIDWORD(v211[15]))
              {
                goto LABEL_225;
              }

              goto LABEL_243;
            }

LABEL_242:
            if (!HIDWORD(v211[15]))
            {
LABEL_225:
              if (LODWORD(v211[16]))
              {
                goto LABEL_226;
              }

              goto LABEL_244;
            }

LABEL_243:

            if (LODWORD(v211[16]))
            {
LABEL_226:

              if (!HIDWORD(v211[16]))
              {
                goto LABEL_227;
              }

              goto LABEL_245;
            }

LABEL_244:
            if (!HIDWORD(v211[16]))
            {
LABEL_227:
              if (!v212)
              {
                goto LABEL_229;
              }

              goto LABEL_228;
            }

LABEL_245:

            if (!v212)
            {
LABEL_229:
              if ((v212 & 0x100000000) == 0)
              {
                return v58;
              }

              goto LABEL_364;
            }

LABEL_228:

            goto LABEL_229;
          }

LABEL_140:

          goto LABEL_141;
        }

LABEL_992:
        v37 = &CSQuickActionButtonInsetX;
        goto LABEL_131;
      }
    }

    v206 = 0;
    v208 = 0;
    memset(v211, 0, 92);
    v202 = 0;
    v204 = 0;
    v210 = 0;
    v200 = 0;
    v198 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = &qword_21EC96208;
    HIDWORD(v211[11]) = mainScreen28 ^ 1;
    goto LABEL_131;
  }

  mainScreen30 = &CSQuickActionButtonInsetY;
  if (v6)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v212 = 0;
      goto LABEL_27;
    }
  }

  else
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice userInterfaceIdiom] != 1)
    {
      v212 = 0x100000000;
      goto LABEL_27;
    }
  }

  HIDWORD(v212) = v7 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen29 = __sb__runningInSpringBoard();
    if (mainScreen29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      currentDevice5 = [MEMORY[0x277D759A0] mainScreen];
      [currentDevice5 _referenceBounds];
    }

    LODWORD(v212) = mainScreen29 ^ 1;
    BSSizeRoundForScale();
    if (v53 == *(MEMORY[0x277D66E30] + 288) && v52 == *(MEMORY[0x277D66E30] + 296))
    {
      memset(v211, 0, sizeof(v211));
      v207 = 0;
      v209 = 0;
      v203 = 0;
      v205 = 0;
      v199 = 0;
      v201 = 0;
      v197 = 0;
      v195 = 0;
      v193 = 0;
      v38 = 0;
      v39 = 0;
      v40 = 0;
      v41 = 0;
      v42 = 0;
      v43 = 0;
      v44 = &qword_21EC96320;
      goto LABEL_250;
    }
  }

  else
  {
    LODWORD(v212) = 0;
  }

LABEL_27:
  v16 = __sb__runningInSpringBoard();
  if (v16)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v211[16] = 0;
      goto LABEL_45;
    }
  }

  else
  {
    currentDevice6 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice6 userInterfaceIdiom] != 1)
    {
      v211[16] = 0x100000000;
      goto LABEL_45;
    }
  }

  HIDWORD(v211[16]) = v16 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen29 = __sb__runningInSpringBoard();
    if (mainScreen29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      currentDevice9 = [MEMORY[0x277D759A0] mainScreen];
      [currentDevice9 _referenceBounds];
    }

    LODWORD(v211[16]) = mainScreen29 ^ 1;
    BSSizeRoundForScale();
    if (v56 >= *(MEMORY[0x277D66E30] + 440))
    {
      memset(v211, 0, 128);
      v207 = 0;
      v209 = 0;
      v203 = 0;
      v205 = 0;
      v199 = 0;
      v201 = 0;
      v197 = 0;
      v195 = 0;
      v193 = 0;
      v38 = 0;
      v39 = 0;
      v40 = 0;
      v41 = 0;
      v42 = 0;
      v43 = 0;
      v44 = &qword_21EC96348;
      goto LABEL_250;
    }
  }

  else
  {
    LODWORD(v211[16]) = 0;
  }

LABEL_45:
  v20 = __sb__runningInSpringBoard();
  if (v20)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v211[15] = 0;
      goto LABEL_62;
    }
  }

  else
  {
    mainScreen4 = [MEMORY[0x277D75418] currentDevice];
    if ([mainScreen4 userInterfaceIdiom] != 1)
    {
      v211[15] = 0x100000000;
      goto LABEL_62;
    }
  }

  HIDWORD(v211[15]) = v20 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen29 = __sb__runningInSpringBoard();
    if (mainScreen29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      currentDevice8 = [MEMORY[0x277D759A0] mainScreen];
      [currentDevice8 _referenceBounds];
    }

    LODWORD(v211[15]) = mainScreen29 ^ 1;
    BSSizeRoundForScale();
    if (v59 >= *(MEMORY[0x277D66E30] + 376))
    {
      memset(v211, 0, 120);
      v207 = 0;
      v209 = 0;
      v203 = 0;
      v205 = 0;
      v199 = 0;
      v201 = 0;
      v197 = 0;
      v195 = 0;
      v193 = 0;
      v38 = 0;
      v39 = 0;
      v40 = 0;
      v41 = 0;
      v42 = 0;
      v43 = 0;
      v44 = &qword_21EC96338;
      goto LABEL_250;
    }
  }

  else
  {
    LODWORD(v211[15]) = 0;
  }

LABEL_62:
  v23 = __sb__runningInSpringBoard();
  if (v23)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v211[14] = 0;
      goto LABEL_80;
    }
  }

  else
  {
    currentDevice7 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice7 userInterfaceIdiom] != 1)
    {
      v211[14] = 0x100000000;
      goto LABEL_80;
    }
  }

  HIDWORD(v211[14]) = v23 ^ 1;
  mainScreen29 = __sb__runningInSpringBoard();
  if (mainScreen29)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen2 _referenceBounds];
  }

  LODWORD(v211[14]) = mainScreen29 ^ 1;
  BSSizeRoundForScale();
  if (v26 >= *(MEMORY[0x277D66E30] + 280))
  {
    memset(v211, 0, 112);
    v207 = 0;
    v209 = 0;
    v203 = 0;
    v205 = 0;
    v199 = 0;
    v201 = 0;
    v197 = 0;
    v195 = 0;
    v193 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = &qword_21EC96340;
    goto LABEL_250;
  }

LABEL_80:
  v27 = __sb__runningInSpringBoard();
  if (v27)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v211[13] = 0;
      goto LABEL_100;
    }
  }

  else
  {
    mainScreen5 = [MEMORY[0x277D75418] currentDevice];
    if ([mainScreen5 userInterfaceIdiom] != 1)
    {
      v211[13] = 0x100000000;
      goto LABEL_100;
    }
  }

  HIDWORD(v211[13]) = v27 ^ 1;
  mainScreen29 = __sb__runningInSpringBoard();
  if (mainScreen29)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen6 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen6 _referenceBounds];
  }

  LODWORD(v211[13]) = mainScreen29 ^ 1;
  BSSizeRoundForScale();
  if (v47 >= *(MEMORY[0x277D66E30] + 264))
  {
    memset(v211, 0, 104);
    v207 = 0;
    v209 = 0;
    v203 = 0;
    v205 = 0;
    v199 = 0;
    v201 = 0;
    v197 = 0;
    v195 = 0;
    v193 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = &qword_21EC96330;
    goto LABEL_250;
  }

LABEL_100:
  v48 = __sb__runningInSpringBoard();
  if (v48)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v211[12] = 0;
      goto LABEL_381;
    }
  }

  else
  {
    mainScreen = [MEMORY[0x277D75418] currentDevice];
    if ([mainScreen userInterfaceIdiom] != 1)
    {
      v211[12] = 0x100000000;
      goto LABEL_381;
    }
  }

  HIDWORD(v211[12]) = v48 ^ 1;
  mainScreen29 = __sb__runningInSpringBoard();
  if (mainScreen29)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    currentDevice11 = [MEMORY[0x277D759A0] mainScreen];
    [currentDevice11 _referenceBounds];
  }

  LODWORD(v211[12]) = mainScreen29 ^ 1;
  BSSizeRoundForScale();
  if (v63 >= *(MEMORY[0x277D66E30] + 248))
  {
    memset(v211, 0, 96);
    v207 = 0;
    v209 = 0;
    v203 = 0;
    v205 = 0;
    v199 = 0;
    v201 = 0;
    v197 = 0;
    v195 = 0;
    v193 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = &qword_21EC96328;
    goto LABEL_250;
  }

LABEL_381:
  mainScreen29 = __sb__runningInSpringBoard();
  if (mainScreen29)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      goto LABEL_383;
    }

LABEL_389:
    memset(v211, 0, 92);
    v207 = 0;
    v209 = 0;
    v203 = 0;
    v205 = 0;
    v199 = 0;
    v201 = 0;
    v197 = 0;
    v195 = 0;
    v193 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = &qword_21EC96318;
    HIDWORD(v211[11]) = mainScreen29 ^ 1;
    goto LABEL_250;
  }

  mainScreen3 = [MEMORY[0x277D75418] currentDevice];
  if ([mainScreen3 userInterfaceIdiom] == 1)
  {
    goto LABEL_389;
  }

LABEL_383:
  HIDWORD(v211[11]) = mainScreen29 ^ 1;
  if (!_SBF_Private_IsD94Like())
  {
LABEL_387:
    *(&v211[10] + 4) = 0;
    goto LABEL_425;
  }

  v64 = __sb__runningInSpringBoard();
  if (v64)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_387;
    }
  }

  else
  {
    currentDevice10 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice10 userInterfaceIdiom])
    {
      HIDWORD(v211[10]) = 0;
      LODWORD(v211[11]) = 1;
      goto LABEL_425;
    }
  }

  LODWORD(v211[11]) = v64 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen29 = __sb__runningInSpringBoard();
    if (mainScreen29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      currentDevice17 = [MEMORY[0x277D759A0] mainScreen];
      [currentDevice17 _referenceBounds];
    }

    HIDWORD(v211[10]) = mainScreen29 ^ 1;
    BSSizeRoundForScale();
    if (v70 >= *(MEMORY[0x277D66E30] + 200))
    {
      memset(v211, 0, 84);
      v207 = 0;
      v209 = 0;
      v203 = 0;
      v205 = 0;
      v199 = 0;
      v201 = 0;
      v197 = 0;
      v195 = 0;
      v193 = 0;
      v38 = 0;
      v39 = 0;
      v40 = 0;
      v41 = 0;
      v42 = 0;
      v43 = 0;
      v44 = &qword_21EC962F8;
      goto LABEL_250;
    }
  }

  else
  {
    HIDWORD(v211[10]) = 0;
  }

LABEL_425:
  mainScreen29 = __sb__runningInSpringBoard();
  if (mainScreen29)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      *(&v211[9] + 4) = 0;
      goto LABEL_435;
    }
  }

  else
  {
    currentDevice12 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice12 userInterfaceIdiom])
    {
      HIDWORD(v211[9]) = 0;
      LODWORD(v211[10]) = 1;
      goto LABEL_435;
    }
  }

  LODWORD(v211[10]) = mainScreen29 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen29 = __sb__runningInSpringBoard();
    if (mainScreen29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen7 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen7 _referenceBounds];
    }

    HIDWORD(v211[9]) = mainScreen29 ^ 1;
    BSSizeRoundForScale();
    if (v67 >= *(MEMORY[0x277D66E30] + 200))
    {
      goto LABEL_439;
    }
  }

  else
  {
    HIDWORD(v211[9]) = 0;
  }

LABEL_435:
  if (_SBF_Private_IsD94Like())
  {
    memset(v211, 0, 76);
    v207 = 0;
    v209 = 0;
    v203 = 0;
    v205 = 0;
    v199 = 0;
    v201 = 0;
    v197 = 0;
    v195 = 0;
    v193 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = &qword_21EC96300;
    goto LABEL_250;
  }

LABEL_439:
  if (!_SBF_Private_IsD64Like())
  {
LABEL_443:
    *(&v211[8] + 4) = 0;
    goto LABEL_490;
  }

  v68 = __sb__runningInSpringBoard();
  if (v68)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_443;
    }
  }

  else
  {
    currentDevice14 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice14 userInterfaceIdiom])
    {
      HIDWORD(v211[8]) = 0;
      LODWORD(v211[9]) = 1;
      goto LABEL_490;
    }
  }

  LODWORD(v211[9]) = v68 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen29 = __sb__runningInSpringBoard();
    if (mainScreen29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      currentDevice19 = [MEMORY[0x277D759A0] mainScreen];
      [currentDevice19 _referenceBounds];
    }

    HIDWORD(v211[8]) = mainScreen29 ^ 1;
    BSSizeRoundForScale();
    if (v78 >= *(MEMORY[0x277D66E30] + 136))
    {
      memset(v211, 0, 68);
      v207 = 0;
      v209 = 0;
      v203 = 0;
      v205 = 0;
      v199 = 0;
      v201 = 0;
      v197 = 0;
      v195 = 0;
      v193 = 0;
      v38 = 0;
      v39 = 0;
      v40 = 0;
      v41 = 0;
      v42 = 0;
      v43 = 0;
      v44 = &qword_21EC96308;
      goto LABEL_250;
    }
  }

  else
  {
    HIDWORD(v211[8]) = 0;
  }

LABEL_490:
  mainScreen29 = __sb__runningInSpringBoard();
  if (mainScreen29)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      *(&v211[7] + 4) = 0;
      goto LABEL_500;
    }
  }

  else
  {
    mainScreen8 = [MEMORY[0x277D75418] currentDevice];
    if ([mainScreen8 userInterfaceIdiom])
    {
      HIDWORD(v211[7]) = 0;
      LODWORD(v211[8]) = 1;
      goto LABEL_500;
    }
  }

  LODWORD(v211[8]) = mainScreen29 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen29 = __sb__runningInSpringBoard();
    if (mainScreen29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen11 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen11 _referenceBounds];
    }

    HIDWORD(v211[7]) = mainScreen29 ^ 1;
    BSSizeRoundForScale();
    if (v73 >= *(MEMORY[0x277D66E30] + 136))
    {
      goto LABEL_504;
    }
  }

  else
  {
    HIDWORD(v211[7]) = 0;
  }

LABEL_500:
  if (_SBF_Private_IsD64Like())
  {
    memset(v211, 0, 60);
    v207 = 0;
    v209 = 0;
    v203 = 0;
    v205 = 0;
    v199 = 0;
    v201 = 0;
    v197 = 0;
    v195 = 0;
    v193 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = &qword_21EC96310;
    goto LABEL_250;
  }

LABEL_504:
  v74 = __sb__runningInSpringBoard();
  if (v74)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      *(&v211[6] + 4) = 0;
      goto LABEL_514;
    }
  }

  else
  {
    currentDevice13 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice13 userInterfaceIdiom])
    {
      HIDWORD(v211[6]) = 0;
      LODWORD(v211[7]) = 1;
      goto LABEL_514;
    }
  }

  LODWORD(v211[7]) = v74 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen29 = __sb__runningInSpringBoard();
    if (mainScreen29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      currentDevice16 = [MEMORY[0x277D759A0] mainScreen];
      [currentDevice16 _referenceBounds];
    }

    HIDWORD(v211[6]) = mainScreen29 ^ 1;
    BSSizeRoundForScale();
    if (v76 >= *(MEMORY[0x277D66E30] + 136))
    {
      memset(v211, 0, 52);
      v207 = 0;
      v209 = 0;
      v203 = 0;
      v205 = 0;
      v199 = 0;
      v201 = 0;
      v197 = 0;
      v195 = 0;
      v193 = 0;
      v38 = 0;
      v39 = 0;
      v40 = 0;
      v41 = 0;
      v42 = 0;
      v43 = 0;
      v44 = &qword_21EC962E8;
      goto LABEL_250;
    }
  }

  else
  {
    HIDWORD(v211[6]) = 0;
  }

LABEL_514:
  mainScreen29 = __sb__runningInSpringBoard();
  if (mainScreen29)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      *(&v211[5] + 4) = 0;
      goto LABEL_530;
    }
  }

  else
  {
    mainScreen10 = [MEMORY[0x277D75418] currentDevice];
    if ([mainScreen10 userInterfaceIdiom])
    {
      HIDWORD(v211[5]) = 0;
      LODWORD(v211[6]) = 1;
      goto LABEL_530;
    }
  }

  LODWORD(v211[6]) = mainScreen29 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen29 = __sb__runningInSpringBoard();
    if (mainScreen29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen13 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen13 _referenceBounds];
    }

    HIDWORD(v211[5]) = mainScreen29 ^ 1;
    BSSizeRoundForScale();
    if (v81 >= *(MEMORY[0x277D66E30] + 136))
    {
      goto LABEL_554;
    }
  }

  else
  {
    HIDWORD(v211[5]) = 0;
  }

LABEL_530:
  if (_SBF_Private_IsD54())
  {
    memset(v211, 0, 44);
    v207 = 0;
    v209 = 0;
    v203 = 0;
    v205 = 0;
    v199 = 0;
    v201 = 0;
    v197 = 0;
    v195 = 0;
    v193 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = &qword_21EC962F0;
    goto LABEL_250;
  }

LABEL_554:
  v82 = __sb__runningInSpringBoard();
  if (v82)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      *(&v211[4] + 4) = 0;
      goto LABEL_574;
    }
  }

  else
  {
    currentDevice15 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice15 userInterfaceIdiom])
    {
      HIDWORD(v211[4]) = 0;
      LODWORD(v211[5]) = 1;
      goto LABEL_574;
    }
  }

  LODWORD(v211[5]) = v82 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v84 = __sb__runningInSpringBoard();
    if (v84)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      currentDevice21 = [MEMORY[0x277D759A0] mainScreen];
      [currentDevice21 _referenceBounds];
    }

    mainScreen29 = v84 ^ 1u;
    BSSizeRoundForScale();
    HIDWORD(v211[4]) = mainScreen29;
    if (v86 >= *(MEMORY[0x277D66E30] + 120) && (_SBF_Private_IsN84OrSimilarDevice() & 1) != 0)
    {
      memset(v211, 0, 36);
      v207 = 0;
      v209 = 0;
      v203 = 0;
      v205 = 0;
      v199 = 0;
      v201 = 0;
      v197 = 0;
      v195 = 0;
      v193 = 0;
      v38 = 0;
      v39 = 0;
      v40 = 0;
      v41 = 0;
      v42 = 0;
      v43 = 0;
      v44 = &qword_21EC962A8;
      goto LABEL_250;
    }
  }

  else
  {
    HIDWORD(v211[4]) = 0;
  }

LABEL_574:
  mainScreen29 = __sb__runningInSpringBoard();
  if (mainScreen29)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      *(&v211[3] + 4) = 0;
      goto LABEL_591;
    }
  }

  else
  {
    mainScreen9 = [MEMORY[0x277D75418] currentDevice];
    if ([mainScreen9 userInterfaceIdiom])
    {
      HIDWORD(v211[3]) = 0;
      LODWORD(v211[4]) = 1;
      goto LABEL_591;
    }
  }

  LODWORD(v211[4]) = mainScreen29 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen29 = __sb__runningInSpringBoard();
    if (mainScreen29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen16 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen16 _referenceBounds];
    }

    HIDWORD(v211[3]) = mainScreen29 ^ 1;
    BSSizeRoundForScale();
    if (v89 >= *(MEMORY[0x277D66E30] + 120))
    {
      goto LABEL_613;
    }
  }

  else
  {
    HIDWORD(v211[3]) = 0;
  }

LABEL_591:
  if (_SBF_Private_IsD33OrSimilarDevice() && (_SBF_Private_IsN84ZoomedOrSimilarDevice() & 1) != 0)
  {
    memset(v211, 0, 28);
    v207 = 0;
    v209 = 0;
    v203 = 0;
    v205 = 0;
    v199 = 0;
    v201 = 0;
    v197 = 0;
    v195 = 0;
    v193 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = &qword_21EC962B0;
    goto LABEL_250;
  }

LABEL_613:
  if (!_SBF_Private_IsD93Like())
  {
LABEL_617:
    *(&v211[2] + 4) = 0;
    goto LABEL_649;
  }

  v90 = __sb__runningInSpringBoard();
  if (v90)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_617;
    }
  }

  else
  {
    mainScreen14 = [MEMORY[0x277D75418] currentDevice];
    if ([mainScreen14 userInterfaceIdiom])
    {
      HIDWORD(v211[2]) = 0;
      LODWORD(v211[3]) = 1;
      goto LABEL_649;
    }
  }

  LODWORD(v211[3]) = v90 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v94 = __sb__runningInSpringBoard();
    if (v94)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      currentDevice24 = [MEMORY[0x277D759A0] mainScreen];
      [currentDevice24 _referenceBounds];
    }

    mainScreen29 = v94 ^ 1u;
    BSSizeRoundForScale();
    HIDWORD(v211[2]) = mainScreen29;
    if (v98 >= *(MEMORY[0x277D66E30] + 184))
    {
      memset(v211, 0, 20);
      v207 = 0;
      v209 = 0;
      v203 = 0;
      v205 = 0;
      v199 = 0;
      v201 = 0;
      v197 = 0;
      v195 = 0;
      v193 = 0;
      v38 = 0;
      v39 = 0;
      v40 = 0;
      v41 = 0;
      v42 = 0;
      v43 = 0;
      v44 = &qword_21EC96298;
      goto LABEL_250;
    }
  }

  else
  {
    HIDWORD(v211[2]) = 0;
  }

LABEL_649:
  mainScreen29 = __sb__runningInSpringBoard();
  if (mainScreen29)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      *(&v211[1] + 4) = 0;
      goto LABEL_659;
    }
  }

  else
  {
    mainScreen12 = [MEMORY[0x277D75418] currentDevice];
    if ([mainScreen12 userInterfaceIdiom])
    {
      HIDWORD(v211[1]) = 0;
      LODWORD(v211[2]) = 1;
      goto LABEL_659;
    }
  }

  LODWORD(v211[2]) = mainScreen29 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen29 = __sb__runningInSpringBoard();
    if (mainScreen29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen15 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen15 _referenceBounds];
    }

    HIDWORD(v211[1]) = mainScreen29 ^ 1;
    BSSizeRoundForScale();
    if (v95 >= *(MEMORY[0x277D66E30] + 184))
    {
      goto LABEL_663;
    }
  }

  else
  {
    HIDWORD(v211[1]) = 0;
  }

LABEL_659:
  if (_SBF_Private_IsD93Like())
  {
    *(v211 + 4) = 0;
    LODWORD(v211[0]) = 0;
    v207 = 0;
    v209 = 0;
    v203 = 0;
    v205 = 0;
    v199 = 0;
    v201 = 0;
    v197 = 0;
    v195 = 0;
    v193 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = &qword_21EC962A0;
    goto LABEL_250;
  }

LABEL_663:
  if (!_SBF_Private_IsD63Like())
  {
LABEL_667:
    *(v211 + 4) = 0;
    goto LABEL_705;
  }

  v96 = __sb__runningInSpringBoard();
  if (v96)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_667;
    }
  }

  else
  {
    currentDevice22 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice22 userInterfaceIdiom])
    {
      HIDWORD(v211[0]) = 0;
      LODWORD(v211[1]) = 1;
      goto LABEL_705;
    }
  }

  LODWORD(v211[1]) = v96 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v102 = __sb__runningInSpringBoard();
    if (v102)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen21 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen21 _referenceBounds];
    }

    mainScreen29 = v102 ^ 1u;
    BSSizeRoundForScale();
    HIDWORD(v211[0]) = mainScreen29;
    if (v106 >= *(MEMORY[0x277D66E30] + 104))
    {
      LODWORD(v211[0]) = 0;
      v207 = 0;
      v209 = 0;
      v203 = 0;
      v205 = 0;
      v199 = 0;
      v201 = 0;
      v197 = 0;
      v195 = 0;
      v193 = 0;
      v38 = 0;
      v39 = 0;
      v40 = 0;
      v41 = 0;
      v42 = 0;
      v43 = 0;
      v44 = &qword_21EC962C8;
      goto LABEL_250;
    }
  }

  else
  {
    HIDWORD(v211[0]) = 0;
  }

LABEL_705:
  mainScreen29 = __sb__runningInSpringBoard();
  if (mainScreen29)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v211[0]) = 0;
      HIDWORD(v209) = 0;
      goto LABEL_715;
    }
  }

  else
  {
    currentDevice18 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice18 userInterfaceIdiom])
    {
      HIDWORD(v209) = 0;
      LODWORD(v211[0]) = 1;
      goto LABEL_715;
    }
  }

  LODWORD(v211[0]) = mainScreen29 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen29 = __sb__runningInSpringBoard();
    if (mainScreen29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen17 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen17 _referenceBounds];
    }

    HIDWORD(v209) = mainScreen29 ^ 1;
    BSSizeRoundForScale();
    if (v103 >= *(MEMORY[0x277D66E30] + 104))
    {
      goto LABEL_719;
    }
  }

  else
  {
    HIDWORD(v209) = 0;
  }

LABEL_715:
  if (_SBF_Private_IsD63Like())
  {
    LODWORD(v209) = 0;
    v205 = 0;
    v207 = 0;
    v201 = 0;
    v203 = 0;
    v199 = 0;
    v197 = 0;
    v195 = 0;
    v193 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = &qword_21EC962D0;
    goto LABEL_250;
  }

LABEL_719:
  if (!_SBF_Private_IsD23Like())
  {
LABEL_723:
    LODWORD(v209) = 0;
    HIDWORD(v207) = 0;
    goto LABEL_770;
  }

  v104 = __sb__runningInSpringBoard();
  if (v104)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_723;
    }
  }

  else
  {
    currentDevice23 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice23 userInterfaceIdiom])
    {
      HIDWORD(v207) = 0;
      LODWORD(v209) = 1;
      goto LABEL_770;
    }
  }

  LODWORD(v209) = v104 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen29 = __sb__runningInSpringBoard();
    if (mainScreen29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen24 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen24 _referenceBounds];
    }

    HIDWORD(v207) = mainScreen29 ^ 1;
    BSSizeRoundForScale();
    if (v116 >= *(MEMORY[0x277D66E30] + 216))
    {
      LODWORD(v207) = 0;
      v203 = 0;
      v205 = 0;
      v199 = 0;
      v201 = 0;
      v197 = 0;
      v195 = 0;
      v193 = 0;
      v38 = 0;
      v39 = 0;
      v40 = 0;
      v41 = 0;
      v42 = 0;
      v43 = 0;
      v44 = &qword_21EC962D8;
      goto LABEL_250;
    }
  }

  else
  {
    HIDWORD(v207) = 0;
  }

LABEL_770:
  mainScreen29 = __sb__runningInSpringBoard();
  if (mainScreen29)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v207) = 0;
      HIDWORD(v205) = 0;
      goto LABEL_780;
    }
  }

  else
  {
    currentDevice20 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice20 userInterfaceIdiom])
    {
      HIDWORD(v205) = 0;
      LODWORD(v207) = 1;
      goto LABEL_780;
    }
  }

  LODWORD(v207) = mainScreen29 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen29 = __sb__runningInSpringBoard();
    if (mainScreen29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen19 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen19 _referenceBounds];
    }

    HIDWORD(v205) = mainScreen29 ^ 1;
    BSSizeRoundForScale();
    if (v110 >= *(MEMORY[0x277D66E30] + 216))
    {
      goto LABEL_784;
    }
  }

  else
  {
    HIDWORD(v205) = 0;
  }

LABEL_780:
  if (_SBF_Private_IsD23Like())
  {
    LODWORD(v205) = 0;
    v201 = 0;
    v203 = 0;
    v199 = 0;
    v197 = 0;
    v195 = 0;
    v193 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = &qword_21EC962E0;
    goto LABEL_250;
  }

LABEL_784:
  v111 = __sb__runningInSpringBoard();
  if (v111)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v205) = 0;
      HIDWORD(v203) = 0;
      goto LABEL_794;
    }
  }

  else
  {
    mainScreen18 = [MEMORY[0x277D75418] currentDevice];
    if ([mainScreen18 userInterfaceIdiom])
    {
      HIDWORD(v203) = 0;
      LODWORD(v205) = 1;
      goto LABEL_794;
    }
  }

  LODWORD(v205) = v111 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v112 = __sb__runningInSpringBoard();
    if (v112)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen23 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen23 _referenceBounds];
    }

    mainScreen29 = v112 ^ 1u;
    BSSizeRoundForScale();
    HIDWORD(v203) = mainScreen29;
    if (v114 >= *(MEMORY[0x277D66E30] + 120))
    {
      LODWORD(v203) = 0;
      v199 = 0;
      v201 = 0;
      v197 = 0;
      v195 = 0;
      v193 = 0;
      v38 = 0;
      v39 = 0;
      v40 = 0;
      v41 = 0;
      v42 = 0;
      v43 = 0;
      v44 = &qword_21EC962B8;
      goto LABEL_250;
    }
  }

  else
  {
    HIDWORD(v203) = 0;
  }

LABEL_794:
  mainScreen29 = __sb__runningInSpringBoard();
  if (mainScreen29)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v203) = 0;
      HIDWORD(v201) = 0;
      goto LABEL_810;
    }
  }

  else
  {
    mainScreen20 = [MEMORY[0x277D75418] currentDevice];
    if ([mainScreen20 userInterfaceIdiom])
    {
      HIDWORD(v201) = 0;
      LODWORD(v203) = 1;
      goto LABEL_810;
    }
  }

  LODWORD(v203) = mainScreen29 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen29 = __sb__runningInSpringBoard();
    if (mainScreen29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      currentDevice26 = [MEMORY[0x277D759A0] mainScreen];
      [currentDevice26 _referenceBounds];
    }

    HIDWORD(v201) = mainScreen29 ^ 1;
    BSSizeRoundForScale();
    if (v119 >= *(MEMORY[0x277D66E30] + 120))
    {
      goto LABEL_834;
    }
  }

  else
  {
    HIDWORD(v201) = 0;
  }

LABEL_810:
  if (_SBF_Private_IsD33OrSimilarDevice())
  {
    LODWORD(v201) = 0;
    v199 = 0;
    v197 = 0;
    v195 = 0;
    v193 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = &qword_21EC962C0;
    goto LABEL_250;
  }

LABEL_834:
  v120 = __sb__runningInSpringBoard();
  if (v120)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v201) = 0;
      HIDWORD(v199) = 0;
      goto LABEL_854;
    }
  }

  else
  {
    currentDevice25 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice25 userInterfaceIdiom])
    {
      HIDWORD(v199) = 0;
      LODWORD(v201) = 1;
      goto LABEL_854;
    }
  }

  LODWORD(v201) = v120 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen29 = __sb__runningInSpringBoard();
    if (mainScreen29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      currentDevice27 = [MEMORY[0x277D759A0] mainScreen];
      [currentDevice27 _referenceBounds];
    }

    HIDWORD(v199) = mainScreen29 ^ 1;
    BSSizeRoundForScale();
    if (v122 >= *(MEMORY[0x277D66E30] + 104))
    {
      LODWORD(v199) = 0;
      v197 = 0;
      v195 = 0;
      v193 = 0;
      v38 = 0;
      v39 = 0;
      v40 = 0;
      v41 = 0;
      v42 = 0;
      v43 = 0;
      v44 = &qword_21EC96288;
      goto LABEL_250;
    }
  }

  else
  {
    HIDWORD(v199) = 0;
  }

LABEL_854:
  mainScreen29 = __sb__runningInSpringBoard();
  if (mainScreen29)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v199) = 0;
      v197 = 0;
      goto LABEL_870;
    }
  }

  else
  {
    mainScreen22 = [MEMORY[0x277D75418] currentDevice];
    if ([mainScreen22 userInterfaceIdiom])
    {
      v197 = 0;
      LODWORD(v199) = 1;
      goto LABEL_870;
    }
  }

  LODWORD(v199) = mainScreen29 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen29 = __sb__runningInSpringBoard();
    if (mainScreen29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      currentDevice28 = [MEMORY[0x277D759A0] mainScreen];
      [currentDevice28 _referenceBounds];
    }

    v197 = mainScreen29 ^ 1;
    BSSizeRoundForScale();
    if (v124 >= *(MEMORY[0x277D66E30] + 104))
    {
      goto LABEL_892;
    }
  }

  else
  {
    v197 = 0;
  }

LABEL_870:
  if (_SBF_Private_IsD53())
  {
    v195 = 0;
    v193 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = &qword_21EC96290;
    goto LABEL_250;
  }

LABEL_892:
  if (_SBF_Private_IsD16() && (_SBF_Private_IsD52OrSimilarDevice() & 1) != 0)
  {
    v195 = 0;
    v193 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = &qword_21EC96268;
    goto LABEL_250;
  }

  if (_SBF_Private_IsD52ZoomedOrSimilarDevice() && (_SBF_Private_IsD16() & 1) != 0)
  {
    v195 = 0;
    v193 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = &qword_21EC96270;
    goto LABEL_250;
  }

  if (_SBF_Private_IsD52OrSimilarDevice())
  {
    v195 = 0;
    v193 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = &qword_21EC96258;
    goto LABEL_250;
  }

  if (_SBF_Private_IsD52ZoomedOrSimilarDevice())
  {
    v195 = 0;
    v193 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = &qword_21EC96260;
    goto LABEL_250;
  }

  v126 = __sb__runningInSpringBoard();
  if (v126)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v195 = 0;
      v193 = 0;
      goto LABEL_928;
    }
  }

  else
  {
    currentDevice29 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice29 userInterfaceIdiom])
    {
      v193 = 0;
      v195 = 1;
      goto LABEL_928;
    }
  }

  v195 = v126 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen29 = __sb__runningInSpringBoard();
    if (mainScreen29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen25 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen25 _referenceBounds];
    }

    v193 = mainScreen29 ^ 1;
    BSSizeRoundForScale();
    if (v133 >= *(MEMORY[0x277D66E30] + 88))
    {
      v38 = 0;
      v39 = 0;
      v40 = 0;
      v41 = 0;
      v42 = 0;
      v43 = 0;
      v44 = &qword_21EC96278;
      goto LABEL_250;
    }
  }

  else
  {
    v193 = 0;
  }

LABEL_928:
  v128 = __sb__runningInSpringBoard();
  if (v128)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v38 = 0;
      v39 = 0;
      goto LABEL_948;
    }
  }

  else
  {
    mainScreen27 = [MEMORY[0x277D75418] currentDevice];
    if ([mainScreen27 userInterfaceIdiom])
    {
      v39 = 0;
      v38 = 1;
      goto LABEL_948;
    }
  }

  v38 = v128 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen29 = __sb__runningInSpringBoard();
    if (mainScreen29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen26 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen26 _referenceBounds];
    }

    v39 = mainScreen29 ^ 1;
    BSSizeRoundForScale();
    if (v135 >= *(MEMORY[0x277D66E30] + 72))
    {
      v40 = 0;
      v41 = 0;
      v42 = 0;
      v43 = 0;
      v44 = &qword_21EC96280;
      goto LABEL_250;
    }
  }

  else
  {
    v39 = 0;
  }

LABEL_948:
  mainScreen29 = __sb__runningInSpringBoard();
  if (mainScreen29)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v40 = 0;
      v41 = 0;
      goto LABEL_969;
    }
  }

  else
  {
    currentDevice30 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice30 userInterfaceIdiom])
    {
      v41 = 0;
      v40 = 1;
      goto LABEL_969;
    }
  }

  v40 = mainScreen29 ^ 1;
  mainScreen30 = __sb__runningInSpringBoard();
  if (mainScreen30)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen29 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen29 _referenceBounds];
  }

  v41 = mainScreen30 ^ 1;
  BSSizeRoundForScale();
  if (v131 >= *(MEMORY[0x277D66E30] + 56))
  {
    v42 = 0;
    v43 = 0;
    v44 = &qword_21EC96250;
    goto LABEL_250;
  }

LABEL_969:
  mainScreen30 = __sb__runningInSpringBoard();
  if (mainScreen30)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v42 = 0;
      v43 = 0;
LABEL_998:
      v44 = &CSQuickActionButtonInsetY;
      goto LABEL_250;
    }
  }

  else
  {
    currentDevice31 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice31 userInterfaceIdiom])
    {
      v43 = 0;
      v42 = 1;
      goto LABEL_998;
    }
  }

  v42 = mainScreen30 ^ 1;
  v138 = __sb__runningInSpringBoard();
  if (v138)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen30 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen30 _referenceBounds];
  }

  v43 = v138 ^ 1;
  BSSizeRoundForScale();
  if (v139 < *(MEMORY[0x277D66E30] + 40))
  {
    goto LABEL_998;
  }

  v44 = &qword_21EC96248;
LABEL_250:
  v58 = *v44;
  if (v43)
  {

    if (!v42)
    {
      goto LABEL_252;
    }
  }

  else if (!v42)
  {
LABEL_252:
    if (v41)
    {
      goto LABEL_253;
    }

LABEL_257:
    if (!v40)
    {
      goto LABEL_259;
    }

    goto LABEL_258;
  }

  if (!v41)
  {
    goto LABEL_257;
  }

LABEL_253:

  if (v40)
  {
LABEL_258:
  }

LABEL_259:
  if (v39)
  {
  }

  if (v38)
  {
  }

  if (v193)
  {
  }

  if (v195)
  {
  }

  if (v197)
  {
  }

  if (v199)
  {
  }

  if (HIDWORD(v199))
  {
  }

  if (v201)
  {
  }

  if (HIDWORD(v201))
  {
  }

  if (v203)
  {
  }

  if (HIDWORD(v203))
  {
  }

  if (v205)
  {
  }

  if (HIDWORD(v205))
  {
  }

  if (v207)
  {
  }

  if (HIDWORD(v207))
  {
  }

  if (v209)
  {
  }

  if (HIDWORD(v209))
  {
  }

  if (LODWORD(v211[0]))
  {
  }

  if (HIDWORD(v211[0]))
  {
  }

  if (LODWORD(v211[1]))
  {
  }

  if (HIDWORD(v211[1]))
  {
  }

  if (LODWORD(v211[2]))
  {
  }

  if (HIDWORD(v211[2]))
  {
  }

  if (LODWORD(v211[3]))
  {
  }

  if (HIDWORD(v211[3]))
  {
  }

  if (LODWORD(v211[4]))
  {
  }

  if (HIDWORD(v211[4]))
  {
  }

  if (LODWORD(v211[5]))
  {
  }

  if (HIDWORD(v211[5]))
  {
  }

  if (LODWORD(v211[6]))
  {
  }

  if (HIDWORD(v211[6]))
  {
  }

  if (LODWORD(v211[7]))
  {
  }

  if (HIDWORD(v211[7]))
  {
  }

  if (LODWORD(v211[8]))
  {
  }

  if (HIDWORD(v211[8]))
  {
  }

  if (LODWORD(v211[9]))
  {
  }

  if (HIDWORD(v211[9]))
  {
  }

  if (LODWORD(v211[10]))
  {
  }

  if (HIDWORD(v211[10]))
  {
  }

  if (LODWORD(v211[11]))
  {
  }

  if (HIDWORD(v211[11]))
  {
  }

  if (LODWORD(v211[12]))
  {
  }

  if (HIDWORD(v211[12]))
  {
  }

  if (LODWORD(v211[13]))
  {
  }

  if (HIDWORD(v211[13]))
  {
  }

  if (LODWORD(v211[14]))
  {
  }

  if (HIDWORD(v211[14]))
  {
  }

  if (LODWORD(v211[15]))
  {
  }

  if (HIDWORD(v211[15]))
  {
  }

  if (LODWORD(v211[16]))
  {
  }

  if (HIDWORD(v211[16]))
  {
  }

  if (v212)
  {
  }

  if (HIDWORD(v212))
  {
LABEL_364:
  }

  return v58;
}

- (UIEdgeInsets)_buttonOutsets
{
  [(CSDashBoardQuickActionsButtonSettings *)self->_quickActionsSettings topOutset];
  v4 = v3;
  [(CSDashBoardQuickActionsButtonSettings *)self->_quickActionsSettings leadingOutset];
  v6 = v5;
  [(CSDashBoardQuickActionsButtonSettings *)self->_quickActionsSettings bottomOutset];
  v8 = v7;
  [(CSDashBoardQuickActionsButtonSettings *)self->_quickActionsSettings trailingOutset];
  v10 = v9;
  v11 = v4;
  v12 = v6;
  v13 = v8;
  result.right = v10;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

- (double)_insetY
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  isPortrait = [WeakRetained isPortrait];

  v6 = __sb__runningInSpringBoard();
  v7 = v6;
  if (isPortrait)
  {
    if (v6)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        v8 = 0;
        v9 = 0;
        goto LABEL_18;
      }
    }

    else
    {
      currentDevice = [MEMORY[0x277D75418] currentDevice];
      if ([currentDevice userInterfaceIdiom] != 1)
      {
        v8 = 0;
        v9 = 1;
        goto LABEL_18;
      }
    }

    v9 = v7 ^ 1;
    if (SBFEffectiveHomeButtonType() == 2)
    {
      mainScreen28 = __sb__runningInSpringBoard();
      if (mainScreen28)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        mainScreen = [MEMORY[0x277D759A0] mainScreen];
        [mainScreen _referenceBounds];
      }

      v8 = mainScreen28 ^ 1;
      BSSizeRoundForScale();
      if (v50 == *(MEMORY[0x277D66E30] + 288) && v49 == *(MEMORY[0x277D66E30] + 296))
      {
        LODWORD(v212) = mainScreen28 ^ 1;
        BYTE4(v212) = v9;
        v206 = 0;
        v208 = 0;
        memset(v211, 0, sizeof(v211));
        v202 = 0;
        v204 = 0;
        v210 = 0;
        v200 = 0;
        v198 = 0;
        v28 = 0;
        v29 = 0;
        v30 = 0;
        v31 = 0;
        v32 = 0;
        v33 = 0;
        v34 = 0;
        v35 = 0;
        v36 = 0;
        v37 = &qword_21EC96320;
        goto LABEL_131;
      }
    }

    else
    {
      v8 = 0;
    }

LABEL_18:
    v13 = __sb__runningInSpringBoard();
    LODWORD(v212) = v8;
    BYTE4(v212) = v9;
    if (v13)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        v14 = 0;
        v15 = 0;
        goto LABEL_36;
      }
    }

    else
    {
      currentDevice2 = [MEMORY[0x277D75418] currentDevice];
      if ([currentDevice2 userInterfaceIdiom] != 1)
      {
        v14 = 0;
        v15 = 1;
        goto LABEL_36;
      }
    }

    v15 = v13 ^ 1;
    if (SBFEffectiveHomeButtonType() == 2)
    {
      mainScreen28 = __sb__runningInSpringBoard();
      if (mainScreen28)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
        [mainScreen2 _referenceBounds];
      }

      v14 = mainScreen28 ^ 1;
      BSSizeRoundForScale();
      if (v55 >= *(MEMORY[0x277D66E30] + 440))
      {
        LODWORD(v211[16]) = mainScreen28 ^ 1;
        HIDWORD(v211[16]) = v15;
        v206 = 0;
        v208 = 0;
        memset(v211, 0, 128);
        v202 = 0;
        v204 = 0;
        v210 = 0;
        v200 = 0;
        v198 = 0;
        v28 = 0;
        v29 = 0;
        v30 = 0;
        v31 = 0;
        v32 = 0;
        v33 = 0;
        v34 = 0;
        v35 = 0;
        v36 = 0;
        v37 = &qword_21EC96348;
        goto LABEL_131;
      }
    }

    else
    {
      v14 = 0;
    }

LABEL_36:
    v17 = __sb__runningInSpringBoard();
    v211[16] = __PAIR64__(v15, v14);
    if (v17)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        v18 = 0;
        v19 = 0;
        goto LABEL_54;
      }
    }

    else
    {
      currentDevice3 = [MEMORY[0x277D75418] currentDevice];
      if ([currentDevice3 userInterfaceIdiom] != 1)
      {
        v18 = 0;
        v19 = 1;
        goto LABEL_54;
      }
    }

    v19 = v17 ^ 1;
    if (SBFEffectiveHomeButtonType() == 2)
    {
      mainScreen28 = __sb__runningInSpringBoard();
      if (mainScreen28)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        mainScreen3 = [MEMORY[0x277D759A0] mainScreen];
        [mainScreen3 _referenceBounds];
      }

      v18 = mainScreen28 ^ 1;
      BSSizeRoundForScale();
      if (v57 >= *(MEMORY[0x277D66E30] + 376))
      {
        LODWORD(v211[15]) = mainScreen28 ^ 1;
        HIDWORD(v211[15]) = v19;
        v206 = 0;
        v208 = 0;
        memset(v211, 0, 120);
        v202 = 0;
        v204 = 0;
        v210 = 0;
        v200 = 0;
        v198 = 0;
        v28 = 0;
        v29 = 0;
        v30 = 0;
        v31 = 0;
        v32 = 0;
        v33 = 0;
        v34 = 0;
        v35 = 0;
        v36 = 0;
        v37 = &qword_21EC96338;
        goto LABEL_131;
      }
    }

    else
    {
      v18 = 0;
    }

LABEL_54:
    v21 = __sb__runningInSpringBoard();
    v211[15] = __PAIR64__(v19, v18);
    if (v21)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        LODWORD(v211[14]) = 0;
        v22 = 0;
        goto LABEL_71;
      }
    }

    else
    {
      currentDevice4 = [MEMORY[0x277D75418] currentDevice];
      if ([currentDevice4 userInterfaceIdiom] != 1)
      {
        LODWORD(v211[14]) = 0;
        v22 = 1;
        goto LABEL_71;
      }
    }

    v22 = v21 ^ 1;
    mainScreen28 = __sb__runningInSpringBoard();
    if (mainScreen28)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen4 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen4 _referenceBounds];
    }

    LODWORD(v211[14]) = mainScreen28 ^ 1;
    BSSizeRoundForScale();
    if (v24 >= *(MEMORY[0x277D66E30] + 280))
    {
      HIDWORD(v211[14]) = v22;
      v206 = 0;
      v208 = 0;
      memset(v211, 0, 112);
      v202 = 0;
      v204 = 0;
      v210 = 0;
      v200 = 0;
      v198 = 0;
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v36 = 0;
      v37 = &qword_21EC96340;
      goto LABEL_131;
    }

LABEL_71:
    v25 = __sb__runningInSpringBoard();
    HIDWORD(v211[14]) = v22;
    if (v25)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        v211[13] = 0;
        goto LABEL_91;
      }
    }

    else
    {
      currentDevice5 = [MEMORY[0x277D75418] currentDevice];
      if ([currentDevice5 userInterfaceIdiom] != 1)
      {
        v211[13] = 0x100000000;
        goto LABEL_91;
      }
    }

    HIDWORD(v211[13]) = v25 ^ 1;
    mainScreen28 = __sb__runningInSpringBoard();
    if (mainScreen28)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen5 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen5 _referenceBounds];
    }

    LODWORD(v211[13]) = mainScreen28 ^ 1;
    BSSizeRoundForScale();
    if (v45 >= *(MEMORY[0x277D66E30] + 264))
    {
      v206 = 0;
      v208 = 0;
      memset(v211, 0, 104);
      v202 = 0;
      v204 = 0;
      v210 = 0;
      v200 = 0;
      v198 = 0;
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v36 = 0;
      v37 = &qword_21EC96330;
      goto LABEL_131;
    }

LABEL_91:
    v46 = __sb__runningInSpringBoard();
    if (v46)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        v211[12] = 0;
        goto LABEL_369;
      }
    }

    else
    {
      currentDevice6 = [MEMORY[0x277D75418] currentDevice];
      if ([currentDevice6 userInterfaceIdiom] != 1)
      {
        v211[12] = 0x100000000;
        goto LABEL_369;
      }
    }

    HIDWORD(v211[12]) = v46 ^ 1;
    mainScreen28 = __sb__runningInSpringBoard();
    if (mainScreen28)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen6 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen6 _referenceBounds];
    }

    LODWORD(v211[12]) = mainScreen28 ^ 1;
    BSSizeRoundForScale();
    if (v61 >= *(MEMORY[0x277D66E30] + 248))
    {
      v206 = 0;
      v208 = 0;
      memset(v211, 0, 96);
      v202 = 0;
      v204 = 0;
      v210 = 0;
      v200 = 0;
      v198 = 0;
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v36 = 0;
      v37 = &qword_21EC96328;
      goto LABEL_131;
    }

LABEL_369:
    mainScreen28 = __sb__runningInSpringBoard();
    if (mainScreen28)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        goto LABEL_371;
      }
    }

    else
    {
      currentDevice7 = [MEMORY[0x277D75418] currentDevice];
      if ([currentDevice7 userInterfaceIdiom] != 1)
      {
LABEL_371:
        HIDWORD(v211[11]) = mainScreen28 ^ 1;
        if (!_SBF_Private_IsD94Like())
        {
LABEL_375:
          *(&v211[10] + 4) = 0;
          goto LABEL_400;
        }

        v62 = __sb__runningInSpringBoard();
        if (v62)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            goto LABEL_375;
          }
        }

        else
        {
          currentDevice8 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice8 userInterfaceIdiom])
          {
            *(&v211[10] + 4) = 0x100000000;
            goto LABEL_400;
          }
        }

        LODWORD(v211[11]) = v62 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          mainScreen28 = __sb__runningInSpringBoard();
          if (mainScreen28)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen7 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen7 _referenceBounds];
          }

          HIDWORD(v211[10]) = mainScreen28 ^ 1;
          BSSizeRoundForScale();
          if (v69 >= *(MEMORY[0x277D66E30] + 200))
          {
            v206 = 0;
            v208 = 0;
            memset(v211, 0, 84);
            v202 = 0;
            v204 = 0;
            v210 = 0;
            v200 = 0;
            v198 = 0;
            v28 = 0;
            v29 = 0;
            v30 = 0;
            v31 = 0;
            v32 = 0;
            v33 = 0;
            v34 = 0;
            v35 = 0;
            v36 = 0;
            v37 = &qword_21EC962F8;
            goto LABEL_131;
          }
        }

        else
        {
          HIDWORD(v211[10]) = 0;
        }

LABEL_400:
        mainScreen28 = __sb__runningInSpringBoard();
        if (mainScreen28)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            *(&v211[9] + 4) = 0;
            goto LABEL_410;
          }
        }

        else
        {
          currentDevice9 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice9 userInterfaceIdiom])
          {
            *(&v211[9] + 4) = 0x100000000;
            goto LABEL_410;
          }
        }

        LODWORD(v211[10]) = mainScreen28 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          mainScreen28 = __sb__runningInSpringBoard();
          if (mainScreen28)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen8 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen8 _referenceBounds];
          }

          HIDWORD(v211[9]) = mainScreen28 ^ 1;
          BSSizeRoundForScale();
          if (v65 >= *(MEMORY[0x277D66E30] + 200))
          {
            goto LABEL_414;
          }
        }

        else
        {
          HIDWORD(v211[9]) = 0;
        }

LABEL_410:
        if (_SBF_Private_IsD94Like())
        {
          v206 = 0;
          v208 = 0;
          memset(v211, 0, 76);
          v202 = 0;
          v204 = 0;
          v210 = 0;
          v200 = 0;
          v198 = 0;
          v28 = 0;
          v29 = 0;
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v33 = 0;
          v34 = 0;
          v35 = 0;
          v36 = 0;
          v37 = &qword_21EC96300;
          goto LABEL_131;
        }

LABEL_414:
        if (!_SBF_Private_IsD64Like())
        {
LABEL_418:
          *(&v211[8] + 4) = 0;
          goto LABEL_456;
        }

        v66 = __sb__runningInSpringBoard();
        if (v66)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            goto LABEL_418;
          }
        }

        else
        {
          currentDevice10 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice10 userInterfaceIdiom])
          {
            *(&v211[8] + 4) = 0x100000000;
            goto LABEL_456;
          }
        }

        LODWORD(v211[9]) = v66 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          mainScreen28 = __sb__runningInSpringBoard();
          if (mainScreen28)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen9 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen9 _referenceBounds];
          }

          HIDWORD(v211[8]) = mainScreen28 ^ 1;
          BSSizeRoundForScale();
          if (v77 >= *(MEMORY[0x277D66E30] + 136))
          {
            v206 = 0;
            v208 = 0;
            memset(v211, 0, 68);
            v202 = 0;
            v204 = 0;
            v210 = 0;
            v200 = 0;
            v198 = 0;
            v28 = 0;
            v29 = 0;
            v30 = 0;
            v31 = 0;
            v32 = 0;
            v33 = 0;
            v34 = 0;
            v35 = 0;
            v36 = 0;
            v37 = &qword_21EC96308;
            goto LABEL_131;
          }
        }

        else
        {
          HIDWORD(v211[8]) = 0;
        }

LABEL_456:
        mainScreen28 = __sb__runningInSpringBoard();
        if (mainScreen28)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            *(&v211[7] + 4) = 0;
            goto LABEL_466;
          }
        }

        else
        {
          currentDevice11 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice11 userInterfaceIdiom])
          {
            *(&v211[7] + 4) = 0x100000000;
            goto LABEL_466;
          }
        }

        LODWORD(v211[8]) = mainScreen28 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          mainScreen28 = __sb__runningInSpringBoard();
          if (mainScreen28)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen10 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen10 _referenceBounds];
          }

          HIDWORD(v211[7]) = mainScreen28 ^ 1;
          BSSizeRoundForScale();
          if (v71 >= *(MEMORY[0x277D66E30] + 136))
          {
            goto LABEL_470;
          }
        }

        else
        {
          HIDWORD(v211[7]) = 0;
        }

LABEL_466:
        if (_SBF_Private_IsD64Like())
        {
          v206 = 0;
          v208 = 0;
          memset(v211, 0, 60);
          v202 = 0;
          v204 = 0;
          v210 = 0;
          v200 = 0;
          v198 = 0;
          v28 = 0;
          v29 = 0;
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v33 = 0;
          v34 = 0;
          v35 = 0;
          v36 = 0;
          v37 = &qword_21EC96310;
          goto LABEL_131;
        }

LABEL_470:
        v72 = __sb__runningInSpringBoard();
        if (v72)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            *(&v211[6] + 4) = 0;
            goto LABEL_480;
          }
        }

        else
        {
          currentDevice12 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice12 userInterfaceIdiom])
          {
            *(&v211[6] + 4) = 0x100000000;
            goto LABEL_480;
          }
        }

        LODWORD(v211[7]) = v72 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          mainScreen28 = __sb__runningInSpringBoard();
          if (mainScreen28)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen11 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen11 _referenceBounds];
          }

          HIDWORD(v211[6]) = mainScreen28 ^ 1;
          BSSizeRoundForScale();
          if (v75 >= *(MEMORY[0x277D66E30] + 136))
          {
            v206 = 0;
            v208 = 0;
            memset(v211, 0, 52);
            v202 = 0;
            v204 = 0;
            v210 = 0;
            v200 = 0;
            v198 = 0;
            v28 = 0;
            v29 = 0;
            v30 = 0;
            v31 = 0;
            v32 = 0;
            v33 = 0;
            v34 = 0;
            v35 = 0;
            v36 = 0;
            v37 = &qword_21EC962E8;
            goto LABEL_131;
          }
        }

        else
        {
          HIDWORD(v211[6]) = 0;
        }

LABEL_480:
        mainScreen28 = __sb__runningInSpringBoard();
        if (mainScreen28)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            *(&v211[5] + 4) = 0;
            goto LABEL_524;
          }
        }

        else
        {
          currentDevice13 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice13 userInterfaceIdiom])
          {
            *(&v211[5] + 4) = 0x100000000;
            goto LABEL_524;
          }
        }

        LODWORD(v211[6]) = mainScreen28 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          mainScreen28 = __sb__runningInSpringBoard();
          if (mainScreen28)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen12 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen12 _referenceBounds];
          }

          HIDWORD(v211[5]) = mainScreen28 ^ 1;
          BSSizeRoundForScale();
          if (v79 >= *(MEMORY[0x277D66E30] + 136))
          {
            goto LABEL_546;
          }
        }

        else
        {
          HIDWORD(v211[5]) = 0;
        }

LABEL_524:
        if (_SBF_Private_IsD54())
        {
          v206 = 0;
          v208 = 0;
          memset(v211, 0, 44);
          v202 = 0;
          v204 = 0;
          v210 = 0;
          v200 = 0;
          v198 = 0;
          v28 = 0;
          v29 = 0;
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v33 = 0;
          v34 = 0;
          v35 = 0;
          v36 = 0;
          v37 = &qword_21EC962F0;
          goto LABEL_131;
        }

LABEL_546:
        v80 = __sb__runningInSpringBoard();
        if (v80)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            *(&v211[4] + 4) = 0;
            goto LABEL_564;
          }
        }

        else
        {
          currentDevice14 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice14 userInterfaceIdiom])
          {
            *(&v211[4] + 4) = 0x100000000;
            goto LABEL_564;
          }
        }

        LODWORD(v211[5]) = v80 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v83 = __sb__runningInSpringBoard();
          if (v83)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen13 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen13 _referenceBounds];
          }

          mainScreen28 = v83 ^ 1u;
          BSSizeRoundForScale();
          HIDWORD(v211[4]) = mainScreen28;
          if (v85 >= *(MEMORY[0x277D66E30] + 120) && (_SBF_Private_IsN84OrSimilarDevice() & 1) != 0)
          {
            v206 = 0;
            v208 = 0;
            memset(v211, 0, 36);
            v202 = 0;
            v204 = 0;
            v210 = 0;
            v200 = 0;
            v198 = 0;
            v28 = 0;
            v29 = 0;
            v30 = 0;
            v31 = 0;
            v32 = 0;
            v33 = 0;
            v34 = 0;
            v35 = 0;
            v36 = 0;
            v37 = &qword_21EC962A8;
            goto LABEL_131;
          }
        }

        else
        {
          HIDWORD(v211[4]) = 0;
        }

LABEL_564:
        mainScreen28 = __sb__runningInSpringBoard();
        if (mainScreen28)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            *(&v211[3] + 4) = 0;
            goto LABEL_584;
          }
        }

        else
        {
          currentDevice15 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice15 userInterfaceIdiom])
          {
            *(&v211[3] + 4) = 0x100000000;
            goto LABEL_584;
          }
        }

        LODWORD(v211[4]) = mainScreen28 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          mainScreen28 = __sb__runningInSpringBoard();
          if (mainScreen28)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen14 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen14 _referenceBounds];
          }

          HIDWORD(v211[3]) = mainScreen28 ^ 1;
          BSSizeRoundForScale();
          if (v87 >= *(MEMORY[0x277D66E30] + 120))
          {
            goto LABEL_604;
          }
        }

        else
        {
          HIDWORD(v211[3]) = 0;
        }

LABEL_584:
        if (_SBF_Private_IsD33OrSimilarDevice() && (_SBF_Private_IsN84ZoomedOrSimilarDevice() & 1) != 0)
        {
          v206 = 0;
          v208 = 0;
          memset(v211, 0, 28);
          v202 = 0;
          v204 = 0;
          v210 = 0;
          v200 = 0;
          v198 = 0;
          v28 = 0;
          v29 = 0;
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v33 = 0;
          v34 = 0;
          v35 = 0;
          v36 = 0;
          v37 = &qword_21EC962B0;
          goto LABEL_131;
        }

LABEL_604:
        if (!_SBF_Private_IsD93Like())
        {
LABEL_608:
          *(&v211[2] + 4) = 0;
          goto LABEL_624;
        }

        v88 = __sb__runningInSpringBoard();
        if (v88)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            goto LABEL_608;
          }
        }

        else
        {
          currentDevice16 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice16 userInterfaceIdiom])
          {
            *(&v211[2] + 4) = 1;
            goto LABEL_624;
          }
        }

        HIDWORD(v211[2]) = v88 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v91 = __sb__runningInSpringBoard();
          if (v91)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen15 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen15 _referenceBounds];
          }

          mainScreen28 = v91 ^ 1u;
          BSSizeRoundForScale();
          LODWORD(v211[3]) = mainScreen28;
          if (v97 >= *(MEMORY[0x277D66E30] + 184))
          {
            v206 = 0;
            v208 = 0;
            memset(v211, 0, 20);
            v202 = 0;
            v204 = 0;
            v210 = 0;
            v200 = 0;
            v198 = 0;
            v28 = 0;
            v29 = 0;
            v30 = 0;
            v31 = 0;
            v32 = 0;
            v33 = 0;
            v34 = 0;
            v35 = 0;
            v36 = 0;
            v37 = &qword_21EC96298;
            goto LABEL_131;
          }
        }

        else
        {
          LODWORD(v211[3]) = 0;
        }

LABEL_624:
        mainScreen28 = __sb__runningInSpringBoard();
        if (mainScreen28)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            *(&v211[1] + 4) = 0;
            goto LABEL_634;
          }
        }

        else
        {
          currentDevice17 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice17 userInterfaceIdiom])
          {
            *(&v211[1] + 4) = 1;
            goto LABEL_634;
          }
        }

        HIDWORD(v211[1]) = mainScreen28 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          mainScreen28 = __sb__runningInSpringBoard();
          if (mainScreen28)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen16 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen16 _referenceBounds];
          }

          LODWORD(v211[2]) = mainScreen28 ^ 1;
          BSSizeRoundForScale();
          if (v92 >= *(MEMORY[0x277D66E30] + 184))
          {
            goto LABEL_638;
          }
        }

        else
        {
          LODWORD(v211[2]) = 0;
        }

LABEL_634:
        if (_SBF_Private_IsD93Like())
        {
          v206 = 0;
          v208 = 0;
          LODWORD(v211[0]) = 0;
          v202 = 0;
          v204 = 0;
          v210 = 0;
          v200 = 0;
          *(v211 + 4) = 0;
          v198 = 0;
          v28 = 0;
          v29 = 0;
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v33 = 0;
          v34 = 0;
          v35 = 0;
          v36 = 0;
          v37 = &qword_21EC962A0;
          goto LABEL_131;
        }

LABEL_638:
        if (!_SBF_Private_IsD63Like())
        {
LABEL_642:
          *(v211 + 4) = 0;
          goto LABEL_680;
        }

        v93 = __sb__runningInSpringBoard();
        if (v93)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            goto LABEL_642;
          }
        }

        else
        {
          currentDevice18 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice18 userInterfaceIdiom])
          {
            *(v211 + 4) = 1;
            goto LABEL_680;
          }
        }

        HIDWORD(v211[0]) = v93 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v99 = __sb__runningInSpringBoard();
          if (v99)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen17 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen17 _referenceBounds];
          }

          mainScreen28 = v99 ^ 1u;
          BSSizeRoundForScale();
          LODWORD(v211[1]) = mainScreen28;
          if (v105 >= *(MEMORY[0x277D66E30] + 104))
          {
            v206 = 0;
            v208 = 0;
            LODWORD(v211[0]) = 0;
            v202 = 0;
            v204 = 0;
            v210 = 0;
            v198 = 0;
            v200 = 0;
            v28 = 0;
            v29 = 0;
            v30 = 0;
            v31 = 0;
            v32 = 0;
            v33 = 0;
            v34 = 0;
            v35 = 0;
            v36 = 0;
            v37 = &qword_21EC962C8;
            goto LABEL_131;
          }
        }

        else
        {
          LODWORD(v211[1]) = 0;
        }

LABEL_680:
        mainScreen28 = __sb__runningInSpringBoard();
        if (mainScreen28)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            LODWORD(v211[0]) = 0;
            v210 = 0;
            goto LABEL_690;
          }
        }

        else
        {
          currentDevice19 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice19 userInterfaceIdiom])
          {
            LODWORD(v211[0]) = 0;
            v210 = 1;
            goto LABEL_690;
          }
        }

        v210 = mainScreen28 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          mainScreen28 = __sb__runningInSpringBoard();
          if (mainScreen28)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen18 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen18 _referenceBounds];
          }

          LODWORD(v211[0]) = mainScreen28 ^ 1;
          BSSizeRoundForScale();
          if (v100 >= *(MEMORY[0x277D66E30] + 104))
          {
            goto LABEL_694;
          }
        }

        else
        {
          LODWORD(v211[0]) = 0;
        }

LABEL_690:
        if (_SBF_Private_IsD63Like())
        {
          v204 = 0;
          v206 = 0;
          v208 = 0;
          v200 = 0;
          v202 = 0;
          v198 = 0;
          v28 = 0;
          v29 = 0;
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v33 = 0;
          v34 = 0;
          v35 = 0;
          v36 = 0;
          v37 = &qword_21EC962D0;
          goto LABEL_131;
        }

LABEL_694:
        if (!_SBF_Private_IsD23Like())
        {
LABEL_698:
          HIDWORD(v206) = 0;
          v208 = 0;
          goto LABEL_736;
        }

        v101 = __sb__runningInSpringBoard();
        if (v101)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            goto LABEL_698;
          }
        }

        else
        {
          currentDevice20 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice20 userInterfaceIdiom])
          {
            HIDWORD(v206) = 0;
            v208 = 1;
            goto LABEL_736;
          }
        }

        v208 = v101 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          mainScreen28 = __sb__runningInSpringBoard();
          if (mainScreen28)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen19 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen19 _referenceBounds];
          }

          HIDWORD(v206) = mainScreen28 ^ 1;
          BSSizeRoundForScale();
          if (v115 >= *(MEMORY[0x277D66E30] + 216))
          {
            LODWORD(v206) = 0;
            v202 = 0;
            v204 = 0;
            v198 = 0;
            v200 = 0;
            v28 = 0;
            v29 = 0;
            v30 = 0;
            v31 = 0;
            v32 = 0;
            v33 = 0;
            v34 = 0;
            v35 = 0;
            v36 = 0;
            v37 = &qword_21EC962D8;
            goto LABEL_131;
          }
        }

        else
        {
          HIDWORD(v206) = 0;
        }

LABEL_736:
        mainScreen28 = __sb__runningInSpringBoard();
        if (mainScreen28)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            LODWORD(v206) = 0;
            HIDWORD(v204) = 0;
            goto LABEL_746;
          }
        }

        else
        {
          currentDevice21 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice21 userInterfaceIdiom])
          {
            HIDWORD(v204) = 0;
            LODWORD(v206) = 1;
            goto LABEL_746;
          }
        }

        LODWORD(v206) = mainScreen28 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          mainScreen28 = __sb__runningInSpringBoard();
          if (mainScreen28)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen20 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen20 _referenceBounds];
          }

          HIDWORD(v204) = mainScreen28 ^ 1;
          BSSizeRoundForScale();
          if (v107 >= *(MEMORY[0x277D66E30] + 216))
          {
            goto LABEL_750;
          }
        }

        else
        {
          HIDWORD(v204) = 0;
        }

LABEL_746:
        if (_SBF_Private_IsD23Like())
        {
          LODWORD(v204) = 0;
          v200 = 0;
          v202 = 0;
          v198 = 0;
          v28 = 0;
          v29 = 0;
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v33 = 0;
          v34 = 0;
          v35 = 0;
          v36 = 0;
          v37 = &qword_21EC962E0;
          goto LABEL_131;
        }

LABEL_750:
        v108 = __sb__runningInSpringBoard();
        if (v108)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            LODWORD(v204) = 0;
            HIDWORD(v202) = 0;
            goto LABEL_760;
          }
        }

        else
        {
          currentDevice22 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice22 userInterfaceIdiom])
          {
            HIDWORD(v202) = 0;
            LODWORD(v204) = 1;
            goto LABEL_760;
          }
        }

        LODWORD(v204) = v108 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v109 = __sb__runningInSpringBoard();
          if (v109)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen21 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen21 _referenceBounds];
          }

          mainScreen28 = v109 ^ 1u;
          BSSizeRoundForScale();
          HIDWORD(v202) = mainScreen28;
          if (v113 >= *(MEMORY[0x277D66E30] + 120))
          {
            LODWORD(v202) = 0;
            v198 = 0;
            v200 = 0;
            v28 = 0;
            v29 = 0;
            v30 = 0;
            v31 = 0;
            v32 = 0;
            v33 = 0;
            v34 = 0;
            v35 = 0;
            v36 = 0;
            v37 = &qword_21EC962B8;
            goto LABEL_131;
          }
        }

        else
        {
          HIDWORD(v202) = 0;
        }

LABEL_760:
        mainScreen28 = __sb__runningInSpringBoard();
        if (mainScreen28)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            LODWORD(v202) = 0;
            HIDWORD(v200) = 0;
            goto LABEL_804;
          }
        }

        else
        {
          currentDevice23 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice23 userInterfaceIdiom])
          {
            HIDWORD(v200) = 0;
            LODWORD(v202) = 1;
            goto LABEL_804;
          }
        }

        LODWORD(v202) = mainScreen28 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          mainScreen28 = __sb__runningInSpringBoard();
          if (mainScreen28)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen22 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen22 _referenceBounds];
          }

          HIDWORD(v200) = mainScreen28 ^ 1;
          BSSizeRoundForScale();
          if (v117 >= *(MEMORY[0x277D66E30] + 120))
          {
            goto LABEL_826;
          }
        }

        else
        {
          HIDWORD(v200) = 0;
        }

LABEL_804:
        if (_SBF_Private_IsD33OrSimilarDevice())
        {
          LODWORD(v200) = 0;
          v198 = 0;
          v28 = 0;
          v29 = 0;
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v33 = 0;
          v34 = 0;
          v35 = 0;
          v36 = 0;
          v37 = &qword_21EC962C0;
          goto LABEL_131;
        }

LABEL_826:
        v118 = __sb__runningInSpringBoard();
        if (v118)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            LODWORD(v200) = 0;
            HIDWORD(v198) = 0;
            goto LABEL_844;
          }
        }

        else
        {
          currentDevice24 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice24 userInterfaceIdiom])
          {
            HIDWORD(v198) = 0;
            LODWORD(v200) = 1;
            goto LABEL_844;
          }
        }

        LODWORD(v200) = v118 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          mainScreen28 = __sb__runningInSpringBoard();
          if (mainScreen28)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen23 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen23 _referenceBounds];
          }

          HIDWORD(v198) = mainScreen28 ^ 1;
          BSSizeRoundForScale();
          if (v121 >= *(MEMORY[0x277D66E30] + 104))
          {
            LODWORD(v198) = 0;
            v28 = 0;
            v29 = 0;
            v30 = 0;
            v31 = 0;
            v32 = 0;
            v33 = 0;
            v34 = 0;
            v35 = 0;
            v36 = 0;
            v37 = &qword_21EC96288;
            goto LABEL_131;
          }
        }

        else
        {
          HIDWORD(v198) = 0;
        }

LABEL_844:
        mainScreen28 = __sb__runningInSpringBoard();
        if (mainScreen28)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            LODWORD(v198) = 0;
            v28 = 0;
            goto LABEL_864;
          }
        }

        else
        {
          currentDevice25 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice25 userInterfaceIdiom])
          {
            v28 = 0;
            LODWORD(v198) = 1;
            goto LABEL_864;
          }
        }

        LODWORD(v198) = mainScreen28 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          mainScreen28 = __sb__runningInSpringBoard();
          if (mainScreen28)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen24 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen24 _referenceBounds];
          }

          v28 = mainScreen28 ^ 1;
          BSSizeRoundForScale();
          if (v123 >= *(MEMORY[0x277D66E30] + 104))
          {
            goto LABEL_880;
          }
        }

        else
        {
          v28 = 0;
        }

LABEL_864:
        if (_SBF_Private_IsD53())
        {
          v29 = 0;
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v33 = 0;
          v34 = 0;
          v35 = 0;
          v36 = 0;
          v37 = &qword_21EC96290;
          goto LABEL_131;
        }

LABEL_880:
        if (_SBF_Private_IsD16() && (_SBF_Private_IsD52OrSimilarDevice() & 1) != 0)
        {
          v29 = 0;
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v33 = 0;
          v34 = 0;
          v35 = 0;
          v36 = 0;
          v37 = &qword_21EC96268;
          goto LABEL_131;
        }

        if (_SBF_Private_IsD52ZoomedOrSimilarDevice() && (_SBF_Private_IsD16() & 1) != 0)
        {
          v29 = 0;
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v33 = 0;
          v34 = 0;
          v35 = 0;
          v36 = 0;
          v37 = &qword_21EC96270;
          goto LABEL_131;
        }

        if (_SBF_Private_IsD52OrSimilarDevice())
        {
          v29 = 0;
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v33 = 0;
          v34 = 0;
          v35 = 0;
          v36 = 0;
          v37 = &qword_21EC96258;
          goto LABEL_131;
        }

        if (_SBF_Private_IsD52ZoomedOrSimilarDevice())
        {
          v29 = 0;
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v33 = 0;
          v34 = 0;
          v35 = 0;
          v36 = 0;
          v37 = &qword_21EC96260;
          goto LABEL_131;
        }

        v125 = __sb__runningInSpringBoard();
        if (v125)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            v29 = 0;
            v30 = 0;
            goto LABEL_918;
          }
        }

        else
        {
          currentDevice26 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice26 userInterfaceIdiom])
          {
            v30 = 0;
            v29 = 1;
            goto LABEL_918;
          }
        }

        v29 = v125 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          mainScreen28 = __sb__runningInSpringBoard();
          if (mainScreen28)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen25 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen25 _referenceBounds];
          }

          v30 = mainScreen28 ^ 1;
          BSSizeRoundForScale();
          if (v132 >= *(MEMORY[0x277D66E30] + 88))
          {
            v31 = 0;
            v32 = 0;
            v33 = 0;
            v34 = 0;
            v35 = 0;
            v36 = 0;
            v37 = &qword_21EC96278;
            goto LABEL_131;
          }
        }

        else
        {
          v30 = 0;
        }

LABEL_918:
        v127 = __sb__runningInSpringBoard();
        if (v127)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            v31 = 0;
            v32 = 0;
            goto LABEL_938;
          }
        }

        else
        {
          currentDevice27 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice27 userInterfaceIdiom])
          {
            v32 = 0;
            v31 = 1;
            goto LABEL_938;
          }
        }

        v31 = v127 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          mainScreen28 = __sb__runningInSpringBoard();
          if (mainScreen28)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen26 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen26 _referenceBounds];
          }

          v32 = mainScreen28 ^ 1;
          BSSizeRoundForScale();
          if (v134 >= *(MEMORY[0x277D66E30] + 72))
          {
            v33 = 0;
            v34 = 0;
            v35 = 0;
            v36 = 0;
            v37 = &qword_21EC96280;
            goto LABEL_131;
          }
        }

        else
        {
          v32 = 0;
        }

LABEL_938:
        v129 = __sb__runningInSpringBoard();
        if (v129)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            v33 = 0;
            v34 = 0;
            goto LABEL_958;
          }
        }

        else
        {
          currentDevice28 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice28 userInterfaceIdiom])
          {
            v34 = 0;
            v33 = 1;
            goto LABEL_958;
          }
        }

        v33 = v129 ^ 1;
        mainScreen28 = __sb__runningInSpringBoard();
        if (mainScreen28)
        {
          __sb__mainScreenReferenceBounds();
        }

        else
        {
          mainScreen27 = [MEMORY[0x277D759A0] mainScreen];
          [mainScreen27 _referenceBounds];
        }

        v34 = mainScreen28 ^ 1;
        BSSizeRoundForScale();
        if (v130 >= *(MEMORY[0x277D66E30] + 56))
        {
          v35 = 0;
          v36 = 0;
          v37 = &qword_21EC96250;
          goto LABEL_131;
        }

LABEL_958:
        mainScreen28 = __sb__runningInSpringBoard();
        if (mainScreen28)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            v35 = 0;
            v36 = 0;
            goto LABEL_992;
          }
        }

        else
        {
          currentDevice29 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice29 userInterfaceIdiom])
          {
            v36 = 0;
            v35 = 1;
            goto LABEL_992;
          }
        }

        v35 = mainScreen28 ^ 1;
        v136 = __sb__runningInSpringBoard();
        if (v136)
        {
          __sb__mainScreenReferenceBounds();
        }

        else
        {
          mainScreen28 = [MEMORY[0x277D759A0] mainScreen];
          [mainScreen28 _referenceBounds];
        }

        v36 = v136 ^ 1;
        BSSizeRoundForScale();
        if (v137 >= *(MEMORY[0x277D66E30] + 40))
        {
          v37 = &qword_21EC96248;
LABEL_131:
          v58 = *v37;
          if (v36)
          {

            if (!v35)
            {
              goto LABEL_133;
            }
          }

          else if (!v35)
          {
LABEL_133:
            if (v34)
            {
              goto LABEL_134;
            }

            goto LABEL_233;
          }

          if (v34)
          {
LABEL_134:

            if (!v33)
            {
              goto LABEL_135;
            }

            goto LABEL_234;
          }

LABEL_233:
          if (!v33)
          {
LABEL_135:
            if (v32)
            {
              goto LABEL_136;
            }

            goto LABEL_235;
          }

LABEL_234:

          if (v32)
          {
LABEL_136:

            if (!v31)
            {
              goto LABEL_137;
            }

            goto LABEL_236;
          }

LABEL_235:
          if (!v31)
          {
LABEL_137:
            if (v30)
            {
              goto LABEL_138;
            }

            goto LABEL_237;
          }

LABEL_236:

          if (v30)
          {
LABEL_138:

            if (!v29)
            {
              goto LABEL_139;
            }

            goto LABEL_238;
          }

LABEL_237:
          if (!v29)
          {
LABEL_139:
            if (!v28)
            {
              goto LABEL_141;
            }

            goto LABEL_140;
          }

LABEL_238:

          if (!v28)
          {
LABEL_141:
            if (v198)
            {
            }

            if (HIDWORD(v198))
            {
            }

            if (v200)
            {
            }

            if (HIDWORD(v200))
            {
            }

            if (v202)
            {
            }

            if (HIDWORD(v202))
            {
            }

            if (v204)
            {
            }

            if (HIDWORD(v204))
            {
            }

            if (v206)
            {
            }

            if (HIDWORD(v206))
            {
            }

            if (v208)
            {
            }

            if (LODWORD(v211[0]))
            {
            }

            if (v210)
            {
            }

            if (LODWORD(v211[1]))
            {
            }

            if (HIDWORD(v211[0]))
            {
            }

            if (LODWORD(v211[2]))
            {
            }

            if (HIDWORD(v211[1]))
            {
            }

            if (LODWORD(v211[3]))
            {
            }

            if (HIDWORD(v211[2]))
            {
            }

            if (HIDWORD(v211[3]))
            {
            }

            if (LODWORD(v211[4]))
            {
            }

            if (HIDWORD(v211[4]))
            {
            }

            if (LODWORD(v211[5]))
            {
            }

            if (HIDWORD(v211[5]))
            {
            }

            if (LODWORD(v211[6]))
            {
            }

            if (HIDWORD(v211[6]))
            {
            }

            if (LODWORD(v211[7]))
            {
            }

            if (HIDWORD(v211[7]))
            {
            }

            if (LODWORD(v211[8]))
            {
            }

            if (HIDWORD(v211[8]))
            {
            }

            if (LODWORD(v211[9]))
            {
            }

            if (HIDWORD(v211[9]))
            {
            }

            if (LODWORD(v211[10]))
            {
            }

            if (HIDWORD(v211[10]))
            {
            }

            if (LODWORD(v211[11]))
            {
            }

            if (HIDWORD(v211[11]))
            {
            }

            if (LODWORD(v211[12]))
            {
            }

            if (HIDWORD(v211[12]))
            {
            }

            if (LODWORD(v211[13]))
            {
            }

            if (HIDWORD(v211[13]))
            {
            }

            if (LODWORD(v211[14]))
            {

              if (!HIDWORD(v211[14]))
              {
                goto LABEL_223;
              }
            }

            else if (!HIDWORD(v211[14]))
            {
LABEL_223:
              if (LODWORD(v211[15]))
              {
                goto LABEL_224;
              }

              goto LABEL_242;
            }

            if (LODWORD(v211[15]))
            {
LABEL_224:

              if (!HIDWORD(v211[15]))
              {
                goto LABEL_225;
              }

              goto LABEL_243;
            }

LABEL_242:
            if (!HIDWORD(v211[15]))
            {
LABEL_225:
              if (LODWORD(v211[16]))
              {
                goto LABEL_226;
              }

              goto LABEL_244;
            }

LABEL_243:

            if (LODWORD(v211[16]))
            {
LABEL_226:

              if (!HIDWORD(v211[16]))
              {
                goto LABEL_227;
              }

              goto LABEL_245;
            }

LABEL_244:
            if (!HIDWORD(v211[16]))
            {
LABEL_227:
              if (!v212)
              {
                goto LABEL_229;
              }

              goto LABEL_228;
            }

LABEL_245:

            if (!v212)
            {
LABEL_229:
              if ((v212 & 0x100000000) == 0)
              {
                return v58;
              }

              goto LABEL_364;
            }

LABEL_228:

            goto LABEL_229;
          }

LABEL_140:

          goto LABEL_141;
        }

LABEL_992:
        v37 = &CSQuickActionButtonInsetY;
        goto LABEL_131;
      }
    }

    v206 = 0;
    v208 = 0;
    memset(v211, 0, 92);
    v202 = 0;
    v204 = 0;
    v210 = 0;
    v200 = 0;
    v198 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = &qword_21EC96318;
    HIDWORD(v211[11]) = mainScreen28 ^ 1;
    goto LABEL_131;
  }

  mainScreen30 = &CSQuickActionButtonInsetX;
  if (v6)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v212 = 0;
      goto LABEL_27;
    }
  }

  else
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice userInterfaceIdiom] != 1)
    {
      v212 = 0x100000000;
      goto LABEL_27;
    }
  }

  HIDWORD(v212) = v7 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen29 = __sb__runningInSpringBoard();
    if (mainScreen29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      currentDevice5 = [MEMORY[0x277D759A0] mainScreen];
      [currentDevice5 _referenceBounds];
    }

    LODWORD(v212) = mainScreen29 ^ 1;
    BSSizeRoundForScale();
    if (v53 == *(MEMORY[0x277D66E30] + 288) && v52 == *(MEMORY[0x277D66E30] + 296))
    {
      memset(v211, 0, sizeof(v211));
      v207 = 0;
      v209 = 0;
      v203 = 0;
      v205 = 0;
      v199 = 0;
      v201 = 0;
      v197 = 0;
      v195 = 0;
      v193 = 0;
      v38 = 0;
      v39 = 0;
      v40 = 0;
      v41 = 0;
      v42 = 0;
      v43 = 0;
      v44 = &qword_21EC96210;
      goto LABEL_250;
    }
  }

  else
  {
    LODWORD(v212) = 0;
  }

LABEL_27:
  v16 = __sb__runningInSpringBoard();
  if (v16)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v211[16] = 0;
      goto LABEL_45;
    }
  }

  else
  {
    currentDevice6 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice6 userInterfaceIdiom] != 1)
    {
      v211[16] = 0x100000000;
      goto LABEL_45;
    }
  }

  HIDWORD(v211[16]) = v16 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen29 = __sb__runningInSpringBoard();
    if (mainScreen29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      currentDevice9 = [MEMORY[0x277D759A0] mainScreen];
      [currentDevice9 _referenceBounds];
    }

    LODWORD(v211[16]) = mainScreen29 ^ 1;
    BSSizeRoundForScale();
    if (v56 >= *(MEMORY[0x277D66E30] + 440))
    {
      memset(v211, 0, 128);
      v207 = 0;
      v209 = 0;
      v203 = 0;
      v205 = 0;
      v199 = 0;
      v201 = 0;
      v197 = 0;
      v195 = 0;
      v193 = 0;
      v38 = 0;
      v39 = 0;
      v40 = 0;
      v41 = 0;
      v42 = 0;
      v43 = 0;
      v44 = &qword_21EC96238;
      goto LABEL_250;
    }
  }

  else
  {
    LODWORD(v211[16]) = 0;
  }

LABEL_45:
  v20 = __sb__runningInSpringBoard();
  if (v20)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v211[15] = 0;
      goto LABEL_62;
    }
  }

  else
  {
    mainScreen4 = [MEMORY[0x277D75418] currentDevice];
    if ([mainScreen4 userInterfaceIdiom] != 1)
    {
      v211[15] = 0x100000000;
      goto LABEL_62;
    }
  }

  HIDWORD(v211[15]) = v20 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen29 = __sb__runningInSpringBoard();
    if (mainScreen29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      currentDevice8 = [MEMORY[0x277D759A0] mainScreen];
      [currentDevice8 _referenceBounds];
    }

    LODWORD(v211[15]) = mainScreen29 ^ 1;
    BSSizeRoundForScale();
    if (v59 >= *(MEMORY[0x277D66E30] + 376))
    {
      memset(v211, 0, 120);
      v207 = 0;
      v209 = 0;
      v203 = 0;
      v205 = 0;
      v199 = 0;
      v201 = 0;
      v197 = 0;
      v195 = 0;
      v193 = 0;
      v38 = 0;
      v39 = 0;
      v40 = 0;
      v41 = 0;
      v42 = 0;
      v43 = 0;
      v44 = &qword_21EC96228;
      goto LABEL_250;
    }
  }

  else
  {
    LODWORD(v211[15]) = 0;
  }

LABEL_62:
  v23 = __sb__runningInSpringBoard();
  if (v23)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v211[14] = 0;
      goto LABEL_80;
    }
  }

  else
  {
    currentDevice7 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice7 userInterfaceIdiom] != 1)
    {
      v211[14] = 0x100000000;
      goto LABEL_80;
    }
  }

  HIDWORD(v211[14]) = v23 ^ 1;
  mainScreen29 = __sb__runningInSpringBoard();
  if (mainScreen29)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen2 _referenceBounds];
  }

  LODWORD(v211[14]) = mainScreen29 ^ 1;
  BSSizeRoundForScale();
  if (v26 >= *(MEMORY[0x277D66E30] + 280))
  {
    memset(v211, 0, 112);
    v207 = 0;
    v209 = 0;
    v203 = 0;
    v205 = 0;
    v199 = 0;
    v201 = 0;
    v197 = 0;
    v195 = 0;
    v193 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = &qword_21EC96230;
    goto LABEL_250;
  }

LABEL_80:
  v27 = __sb__runningInSpringBoard();
  if (v27)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v211[13] = 0;
      goto LABEL_100;
    }
  }

  else
  {
    mainScreen5 = [MEMORY[0x277D75418] currentDevice];
    if ([mainScreen5 userInterfaceIdiom] != 1)
    {
      v211[13] = 0x100000000;
      goto LABEL_100;
    }
  }

  HIDWORD(v211[13]) = v27 ^ 1;
  mainScreen29 = __sb__runningInSpringBoard();
  if (mainScreen29)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen6 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen6 _referenceBounds];
  }

  LODWORD(v211[13]) = mainScreen29 ^ 1;
  BSSizeRoundForScale();
  if (v47 >= *(MEMORY[0x277D66E30] + 264))
  {
    memset(v211, 0, 104);
    v207 = 0;
    v209 = 0;
    v203 = 0;
    v205 = 0;
    v199 = 0;
    v201 = 0;
    v197 = 0;
    v195 = 0;
    v193 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = &qword_21EC96220;
    goto LABEL_250;
  }

LABEL_100:
  v48 = __sb__runningInSpringBoard();
  if (v48)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v211[12] = 0;
      goto LABEL_381;
    }
  }

  else
  {
    mainScreen = [MEMORY[0x277D75418] currentDevice];
    if ([mainScreen userInterfaceIdiom] != 1)
    {
      v211[12] = 0x100000000;
      goto LABEL_381;
    }
  }

  HIDWORD(v211[12]) = v48 ^ 1;
  mainScreen29 = __sb__runningInSpringBoard();
  if (mainScreen29)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    currentDevice11 = [MEMORY[0x277D759A0] mainScreen];
    [currentDevice11 _referenceBounds];
  }

  LODWORD(v211[12]) = mainScreen29 ^ 1;
  BSSizeRoundForScale();
  if (v63 >= *(MEMORY[0x277D66E30] + 248))
  {
    memset(v211, 0, 96);
    v207 = 0;
    v209 = 0;
    v203 = 0;
    v205 = 0;
    v199 = 0;
    v201 = 0;
    v197 = 0;
    v195 = 0;
    v193 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = &qword_21EC96218;
    goto LABEL_250;
  }

LABEL_381:
  mainScreen29 = __sb__runningInSpringBoard();
  if (mainScreen29)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      goto LABEL_383;
    }

LABEL_389:
    memset(v211, 0, 92);
    v207 = 0;
    v209 = 0;
    v203 = 0;
    v205 = 0;
    v199 = 0;
    v201 = 0;
    v197 = 0;
    v195 = 0;
    v193 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = &qword_21EC96208;
    HIDWORD(v211[11]) = mainScreen29 ^ 1;
    goto LABEL_250;
  }

  mainScreen3 = [MEMORY[0x277D75418] currentDevice];
  if ([mainScreen3 userInterfaceIdiom] == 1)
  {
    goto LABEL_389;
  }

LABEL_383:
  HIDWORD(v211[11]) = mainScreen29 ^ 1;
  if (!_SBF_Private_IsD94Like())
  {
LABEL_387:
    *(&v211[10] + 4) = 0;
    goto LABEL_425;
  }

  v64 = __sb__runningInSpringBoard();
  if (v64)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_387;
    }
  }

  else
  {
    currentDevice10 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice10 userInterfaceIdiom])
    {
      HIDWORD(v211[10]) = 0;
      LODWORD(v211[11]) = 1;
      goto LABEL_425;
    }
  }

  LODWORD(v211[11]) = v64 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen29 = __sb__runningInSpringBoard();
    if (mainScreen29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      currentDevice17 = [MEMORY[0x277D759A0] mainScreen];
      [currentDevice17 _referenceBounds];
    }

    HIDWORD(v211[10]) = mainScreen29 ^ 1;
    BSSizeRoundForScale();
    if (v70 >= *(MEMORY[0x277D66E30] + 200))
    {
      memset(v211, 0, 84);
      v207 = 0;
      v209 = 0;
      v203 = 0;
      v205 = 0;
      v199 = 0;
      v201 = 0;
      v197 = 0;
      v195 = 0;
      v193 = 0;
      v38 = 0;
      v39 = 0;
      v40 = 0;
      v41 = 0;
      v42 = 0;
      v43 = 0;
      v44 = &qword_21EC961E8;
      goto LABEL_250;
    }
  }

  else
  {
    HIDWORD(v211[10]) = 0;
  }

LABEL_425:
  mainScreen29 = __sb__runningInSpringBoard();
  if (mainScreen29)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      *(&v211[9] + 4) = 0;
      goto LABEL_435;
    }
  }

  else
  {
    currentDevice12 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice12 userInterfaceIdiom])
    {
      HIDWORD(v211[9]) = 0;
      LODWORD(v211[10]) = 1;
      goto LABEL_435;
    }
  }

  LODWORD(v211[10]) = mainScreen29 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen29 = __sb__runningInSpringBoard();
    if (mainScreen29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen7 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen7 _referenceBounds];
    }

    HIDWORD(v211[9]) = mainScreen29 ^ 1;
    BSSizeRoundForScale();
    if (v67 >= *(MEMORY[0x277D66E30] + 200))
    {
      goto LABEL_439;
    }
  }

  else
  {
    HIDWORD(v211[9]) = 0;
  }

LABEL_435:
  if (_SBF_Private_IsD94Like())
  {
    memset(v211, 0, 76);
    v207 = 0;
    v209 = 0;
    v203 = 0;
    v205 = 0;
    v199 = 0;
    v201 = 0;
    v197 = 0;
    v195 = 0;
    v193 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = &qword_21EC961F0;
    goto LABEL_250;
  }

LABEL_439:
  if (!_SBF_Private_IsD64Like())
  {
LABEL_443:
    *(&v211[8] + 4) = 0;
    goto LABEL_490;
  }

  v68 = __sb__runningInSpringBoard();
  if (v68)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_443;
    }
  }

  else
  {
    currentDevice14 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice14 userInterfaceIdiom])
    {
      HIDWORD(v211[8]) = 0;
      LODWORD(v211[9]) = 1;
      goto LABEL_490;
    }
  }

  LODWORD(v211[9]) = v68 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen29 = __sb__runningInSpringBoard();
    if (mainScreen29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      currentDevice19 = [MEMORY[0x277D759A0] mainScreen];
      [currentDevice19 _referenceBounds];
    }

    HIDWORD(v211[8]) = mainScreen29 ^ 1;
    BSSizeRoundForScale();
    if (v78 >= *(MEMORY[0x277D66E30] + 136))
    {
      memset(v211, 0, 68);
      v207 = 0;
      v209 = 0;
      v203 = 0;
      v205 = 0;
      v199 = 0;
      v201 = 0;
      v197 = 0;
      v195 = 0;
      v193 = 0;
      v38 = 0;
      v39 = 0;
      v40 = 0;
      v41 = 0;
      v42 = 0;
      v43 = 0;
      v44 = &qword_21EC961F8;
      goto LABEL_250;
    }
  }

  else
  {
    HIDWORD(v211[8]) = 0;
  }

LABEL_490:
  mainScreen29 = __sb__runningInSpringBoard();
  if (mainScreen29)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      *(&v211[7] + 4) = 0;
      goto LABEL_500;
    }
  }

  else
  {
    mainScreen8 = [MEMORY[0x277D75418] currentDevice];
    if ([mainScreen8 userInterfaceIdiom])
    {
      HIDWORD(v211[7]) = 0;
      LODWORD(v211[8]) = 1;
      goto LABEL_500;
    }
  }

  LODWORD(v211[8]) = mainScreen29 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen29 = __sb__runningInSpringBoard();
    if (mainScreen29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen11 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen11 _referenceBounds];
    }

    HIDWORD(v211[7]) = mainScreen29 ^ 1;
    BSSizeRoundForScale();
    if (v73 >= *(MEMORY[0x277D66E30] + 136))
    {
      goto LABEL_504;
    }
  }

  else
  {
    HIDWORD(v211[7]) = 0;
  }

LABEL_500:
  if (_SBF_Private_IsD64Like())
  {
    memset(v211, 0, 60);
    v207 = 0;
    v209 = 0;
    v203 = 0;
    v205 = 0;
    v199 = 0;
    v201 = 0;
    v197 = 0;
    v195 = 0;
    v193 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = &qword_21EC96200;
    goto LABEL_250;
  }

LABEL_504:
  v74 = __sb__runningInSpringBoard();
  if (v74)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      *(&v211[6] + 4) = 0;
      goto LABEL_514;
    }
  }

  else
  {
    currentDevice13 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice13 userInterfaceIdiom])
    {
      HIDWORD(v211[6]) = 0;
      LODWORD(v211[7]) = 1;
      goto LABEL_514;
    }
  }

  LODWORD(v211[7]) = v74 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen29 = __sb__runningInSpringBoard();
    if (mainScreen29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      currentDevice16 = [MEMORY[0x277D759A0] mainScreen];
      [currentDevice16 _referenceBounds];
    }

    HIDWORD(v211[6]) = mainScreen29 ^ 1;
    BSSizeRoundForScale();
    if (v76 >= *(MEMORY[0x277D66E30] + 136))
    {
      memset(v211, 0, 52);
      v207 = 0;
      v209 = 0;
      v203 = 0;
      v205 = 0;
      v199 = 0;
      v201 = 0;
      v197 = 0;
      v195 = 0;
      v193 = 0;
      v38 = 0;
      v39 = 0;
      v40 = 0;
      v41 = 0;
      v42 = 0;
      v43 = 0;
      v44 = &qword_21EC961D8;
      goto LABEL_250;
    }
  }

  else
  {
    HIDWORD(v211[6]) = 0;
  }

LABEL_514:
  mainScreen29 = __sb__runningInSpringBoard();
  if (mainScreen29)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      *(&v211[5] + 4) = 0;
      goto LABEL_530;
    }
  }

  else
  {
    mainScreen10 = [MEMORY[0x277D75418] currentDevice];
    if ([mainScreen10 userInterfaceIdiom])
    {
      HIDWORD(v211[5]) = 0;
      LODWORD(v211[6]) = 1;
      goto LABEL_530;
    }
  }

  LODWORD(v211[6]) = mainScreen29 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen29 = __sb__runningInSpringBoard();
    if (mainScreen29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen13 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen13 _referenceBounds];
    }

    HIDWORD(v211[5]) = mainScreen29 ^ 1;
    BSSizeRoundForScale();
    if (v81 >= *(MEMORY[0x277D66E30] + 136))
    {
      goto LABEL_554;
    }
  }

  else
  {
    HIDWORD(v211[5]) = 0;
  }

LABEL_530:
  if (_SBF_Private_IsD54())
  {
    memset(v211, 0, 44);
    v207 = 0;
    v209 = 0;
    v203 = 0;
    v205 = 0;
    v199 = 0;
    v201 = 0;
    v197 = 0;
    v195 = 0;
    v193 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = &qword_21EC961E0;
    goto LABEL_250;
  }

LABEL_554:
  v82 = __sb__runningInSpringBoard();
  if (v82)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      *(&v211[4] + 4) = 0;
      goto LABEL_574;
    }
  }

  else
  {
    currentDevice15 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice15 userInterfaceIdiom])
    {
      HIDWORD(v211[4]) = 0;
      LODWORD(v211[5]) = 1;
      goto LABEL_574;
    }
  }

  LODWORD(v211[5]) = v82 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v84 = __sb__runningInSpringBoard();
    if (v84)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      currentDevice21 = [MEMORY[0x277D759A0] mainScreen];
      [currentDevice21 _referenceBounds];
    }

    mainScreen29 = v84 ^ 1u;
    BSSizeRoundForScale();
    HIDWORD(v211[4]) = mainScreen29;
    if (v86 >= *(MEMORY[0x277D66E30] + 120) && (_SBF_Private_IsN84OrSimilarDevice() & 1) != 0)
    {
      memset(v211, 0, 36);
      v207 = 0;
      v209 = 0;
      v203 = 0;
      v205 = 0;
      v199 = 0;
      v201 = 0;
      v197 = 0;
      v195 = 0;
      v193 = 0;
      v38 = 0;
      v39 = 0;
      v40 = 0;
      v41 = 0;
      v42 = 0;
      v43 = 0;
      v44 = &qword_21EC96198;
      goto LABEL_250;
    }
  }

  else
  {
    HIDWORD(v211[4]) = 0;
  }

LABEL_574:
  mainScreen29 = __sb__runningInSpringBoard();
  if (mainScreen29)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      *(&v211[3] + 4) = 0;
      goto LABEL_591;
    }
  }

  else
  {
    mainScreen9 = [MEMORY[0x277D75418] currentDevice];
    if ([mainScreen9 userInterfaceIdiom])
    {
      HIDWORD(v211[3]) = 0;
      LODWORD(v211[4]) = 1;
      goto LABEL_591;
    }
  }

  LODWORD(v211[4]) = mainScreen29 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen29 = __sb__runningInSpringBoard();
    if (mainScreen29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen16 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen16 _referenceBounds];
    }

    HIDWORD(v211[3]) = mainScreen29 ^ 1;
    BSSizeRoundForScale();
    if (v89 >= *(MEMORY[0x277D66E30] + 120))
    {
      goto LABEL_613;
    }
  }

  else
  {
    HIDWORD(v211[3]) = 0;
  }

LABEL_591:
  if (_SBF_Private_IsD33OrSimilarDevice() && (_SBF_Private_IsN84ZoomedOrSimilarDevice() & 1) != 0)
  {
    memset(v211, 0, 28);
    v207 = 0;
    v209 = 0;
    v203 = 0;
    v205 = 0;
    v199 = 0;
    v201 = 0;
    v197 = 0;
    v195 = 0;
    v193 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = &qword_21EC961A0;
    goto LABEL_250;
  }

LABEL_613:
  if (!_SBF_Private_IsD93Like())
  {
LABEL_617:
    *(&v211[2] + 4) = 0;
    goto LABEL_649;
  }

  v90 = __sb__runningInSpringBoard();
  if (v90)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_617;
    }
  }

  else
  {
    mainScreen14 = [MEMORY[0x277D75418] currentDevice];
    if ([mainScreen14 userInterfaceIdiom])
    {
      HIDWORD(v211[2]) = 0;
      LODWORD(v211[3]) = 1;
      goto LABEL_649;
    }
  }

  LODWORD(v211[3]) = v90 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v94 = __sb__runningInSpringBoard();
    if (v94)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      currentDevice24 = [MEMORY[0x277D759A0] mainScreen];
      [currentDevice24 _referenceBounds];
    }

    mainScreen29 = v94 ^ 1u;
    BSSizeRoundForScale();
    HIDWORD(v211[2]) = mainScreen29;
    if (v98 >= *(MEMORY[0x277D66E30] + 184))
    {
      memset(v211, 0, 20);
      v207 = 0;
      v209 = 0;
      v203 = 0;
      v205 = 0;
      v199 = 0;
      v201 = 0;
      v197 = 0;
      v195 = 0;
      v193 = 0;
      v38 = 0;
      v39 = 0;
      v40 = 0;
      v41 = 0;
      v42 = 0;
      v43 = 0;
      v44 = &qword_21EC96188;
      goto LABEL_250;
    }
  }

  else
  {
    HIDWORD(v211[2]) = 0;
  }

LABEL_649:
  mainScreen29 = __sb__runningInSpringBoard();
  if (mainScreen29)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      *(&v211[1] + 4) = 0;
      goto LABEL_659;
    }
  }

  else
  {
    mainScreen12 = [MEMORY[0x277D75418] currentDevice];
    if ([mainScreen12 userInterfaceIdiom])
    {
      HIDWORD(v211[1]) = 0;
      LODWORD(v211[2]) = 1;
      goto LABEL_659;
    }
  }

  LODWORD(v211[2]) = mainScreen29 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen29 = __sb__runningInSpringBoard();
    if (mainScreen29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen15 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen15 _referenceBounds];
    }

    HIDWORD(v211[1]) = mainScreen29 ^ 1;
    BSSizeRoundForScale();
    if (v95 >= *(MEMORY[0x277D66E30] + 184))
    {
      goto LABEL_663;
    }
  }

  else
  {
    HIDWORD(v211[1]) = 0;
  }

LABEL_659:
  if (_SBF_Private_IsD93Like())
  {
    *(v211 + 4) = 0;
    LODWORD(v211[0]) = 0;
    v207 = 0;
    v209 = 0;
    v203 = 0;
    v205 = 0;
    v199 = 0;
    v201 = 0;
    v197 = 0;
    v195 = 0;
    v193 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = &qword_21EC96190;
    goto LABEL_250;
  }

LABEL_663:
  if (!_SBF_Private_IsD63Like())
  {
LABEL_667:
    *(v211 + 4) = 0;
    goto LABEL_705;
  }

  v96 = __sb__runningInSpringBoard();
  if (v96)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_667;
    }
  }

  else
  {
    currentDevice22 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice22 userInterfaceIdiom])
    {
      HIDWORD(v211[0]) = 0;
      LODWORD(v211[1]) = 1;
      goto LABEL_705;
    }
  }

  LODWORD(v211[1]) = v96 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v102 = __sb__runningInSpringBoard();
    if (v102)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen21 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen21 _referenceBounds];
    }

    mainScreen29 = v102 ^ 1u;
    BSSizeRoundForScale();
    HIDWORD(v211[0]) = mainScreen29;
    if (v106 >= *(MEMORY[0x277D66E30] + 104))
    {
      LODWORD(v211[0]) = 0;
      v207 = 0;
      v209 = 0;
      v203 = 0;
      v205 = 0;
      v199 = 0;
      v201 = 0;
      v197 = 0;
      v195 = 0;
      v193 = 0;
      v38 = 0;
      v39 = 0;
      v40 = 0;
      v41 = 0;
      v42 = 0;
      v43 = 0;
      v44 = &qword_21EC961B8;
      goto LABEL_250;
    }
  }

  else
  {
    HIDWORD(v211[0]) = 0;
  }

LABEL_705:
  mainScreen29 = __sb__runningInSpringBoard();
  if (mainScreen29)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v211[0]) = 0;
      HIDWORD(v209) = 0;
      goto LABEL_715;
    }
  }

  else
  {
    currentDevice18 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice18 userInterfaceIdiom])
    {
      HIDWORD(v209) = 0;
      LODWORD(v211[0]) = 1;
      goto LABEL_715;
    }
  }

  LODWORD(v211[0]) = mainScreen29 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen29 = __sb__runningInSpringBoard();
    if (mainScreen29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen17 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen17 _referenceBounds];
    }

    HIDWORD(v209) = mainScreen29 ^ 1;
    BSSizeRoundForScale();
    if (v103 >= *(MEMORY[0x277D66E30] + 104))
    {
      goto LABEL_719;
    }
  }

  else
  {
    HIDWORD(v209) = 0;
  }

LABEL_715:
  if (_SBF_Private_IsD63Like())
  {
    LODWORD(v209) = 0;
    v205 = 0;
    v207 = 0;
    v201 = 0;
    v203 = 0;
    v199 = 0;
    v197 = 0;
    v195 = 0;
    v193 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = &qword_21EC961C0;
    goto LABEL_250;
  }

LABEL_719:
  if (!_SBF_Private_IsD23Like())
  {
LABEL_723:
    LODWORD(v209) = 0;
    HIDWORD(v207) = 0;
    goto LABEL_770;
  }

  v104 = __sb__runningInSpringBoard();
  if (v104)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_723;
    }
  }

  else
  {
    currentDevice23 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice23 userInterfaceIdiom])
    {
      HIDWORD(v207) = 0;
      LODWORD(v209) = 1;
      goto LABEL_770;
    }
  }

  LODWORD(v209) = v104 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen29 = __sb__runningInSpringBoard();
    if (mainScreen29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen24 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen24 _referenceBounds];
    }

    HIDWORD(v207) = mainScreen29 ^ 1;
    BSSizeRoundForScale();
    if (v116 >= *(MEMORY[0x277D66E30] + 216))
    {
      LODWORD(v207) = 0;
      v203 = 0;
      v205 = 0;
      v199 = 0;
      v201 = 0;
      v197 = 0;
      v195 = 0;
      v193 = 0;
      v38 = 0;
      v39 = 0;
      v40 = 0;
      v41 = 0;
      v42 = 0;
      v43 = 0;
      v44 = &qword_21EC961C8;
      goto LABEL_250;
    }
  }

  else
  {
    HIDWORD(v207) = 0;
  }

LABEL_770:
  mainScreen29 = __sb__runningInSpringBoard();
  if (mainScreen29)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v207) = 0;
      HIDWORD(v205) = 0;
      goto LABEL_780;
    }
  }

  else
  {
    currentDevice20 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice20 userInterfaceIdiom])
    {
      HIDWORD(v205) = 0;
      LODWORD(v207) = 1;
      goto LABEL_780;
    }
  }

  LODWORD(v207) = mainScreen29 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen29 = __sb__runningInSpringBoard();
    if (mainScreen29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen19 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen19 _referenceBounds];
    }

    HIDWORD(v205) = mainScreen29 ^ 1;
    BSSizeRoundForScale();
    if (v110 >= *(MEMORY[0x277D66E30] + 216))
    {
      goto LABEL_784;
    }
  }

  else
  {
    HIDWORD(v205) = 0;
  }

LABEL_780:
  if (_SBF_Private_IsD23Like())
  {
    LODWORD(v205) = 0;
    v201 = 0;
    v203 = 0;
    v199 = 0;
    v197 = 0;
    v195 = 0;
    v193 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = &qword_21EC961D0;
    goto LABEL_250;
  }

LABEL_784:
  v111 = __sb__runningInSpringBoard();
  if (v111)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v205) = 0;
      HIDWORD(v203) = 0;
      goto LABEL_794;
    }
  }

  else
  {
    mainScreen18 = [MEMORY[0x277D75418] currentDevice];
    if ([mainScreen18 userInterfaceIdiom])
    {
      HIDWORD(v203) = 0;
      LODWORD(v205) = 1;
      goto LABEL_794;
    }
  }

  LODWORD(v205) = v111 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v112 = __sb__runningInSpringBoard();
    if (v112)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen23 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen23 _referenceBounds];
    }

    mainScreen29 = v112 ^ 1u;
    BSSizeRoundForScale();
    HIDWORD(v203) = mainScreen29;
    if (v114 >= *(MEMORY[0x277D66E30] + 120))
    {
      LODWORD(v203) = 0;
      v199 = 0;
      v201 = 0;
      v197 = 0;
      v195 = 0;
      v193 = 0;
      v38 = 0;
      v39 = 0;
      v40 = 0;
      v41 = 0;
      v42 = 0;
      v43 = 0;
      v44 = &qword_21EC961A8;
      goto LABEL_250;
    }
  }

  else
  {
    HIDWORD(v203) = 0;
  }

LABEL_794:
  mainScreen29 = __sb__runningInSpringBoard();
  if (mainScreen29)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v203) = 0;
      HIDWORD(v201) = 0;
      goto LABEL_810;
    }
  }

  else
  {
    mainScreen20 = [MEMORY[0x277D75418] currentDevice];
    if ([mainScreen20 userInterfaceIdiom])
    {
      HIDWORD(v201) = 0;
      LODWORD(v203) = 1;
      goto LABEL_810;
    }
  }

  LODWORD(v203) = mainScreen29 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen29 = __sb__runningInSpringBoard();
    if (mainScreen29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      currentDevice26 = [MEMORY[0x277D759A0] mainScreen];
      [currentDevice26 _referenceBounds];
    }

    HIDWORD(v201) = mainScreen29 ^ 1;
    BSSizeRoundForScale();
    if (v119 >= *(MEMORY[0x277D66E30] + 120))
    {
      goto LABEL_834;
    }
  }

  else
  {
    HIDWORD(v201) = 0;
  }

LABEL_810:
  if (_SBF_Private_IsD33OrSimilarDevice())
  {
    LODWORD(v201) = 0;
    v199 = 0;
    v197 = 0;
    v195 = 0;
    v193 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = &qword_21EC961B0;
    goto LABEL_250;
  }

LABEL_834:
  v120 = __sb__runningInSpringBoard();
  if (v120)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v201) = 0;
      HIDWORD(v199) = 0;
      goto LABEL_854;
    }
  }

  else
  {
    currentDevice25 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice25 userInterfaceIdiom])
    {
      HIDWORD(v199) = 0;
      LODWORD(v201) = 1;
      goto LABEL_854;
    }
  }

  LODWORD(v201) = v120 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen29 = __sb__runningInSpringBoard();
    if (mainScreen29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      currentDevice27 = [MEMORY[0x277D759A0] mainScreen];
      [currentDevice27 _referenceBounds];
    }

    HIDWORD(v199) = mainScreen29 ^ 1;
    BSSizeRoundForScale();
    if (v122 >= *(MEMORY[0x277D66E30] + 104))
    {
      LODWORD(v199) = 0;
      v197 = 0;
      v195 = 0;
      v193 = 0;
      v38 = 0;
      v39 = 0;
      v40 = 0;
      v41 = 0;
      v42 = 0;
      v43 = 0;
      v44 = &qword_21EC96178;
      goto LABEL_250;
    }
  }

  else
  {
    HIDWORD(v199) = 0;
  }

LABEL_854:
  mainScreen29 = __sb__runningInSpringBoard();
  if (mainScreen29)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v199) = 0;
      v197 = 0;
      goto LABEL_870;
    }
  }

  else
  {
    mainScreen22 = [MEMORY[0x277D75418] currentDevice];
    if ([mainScreen22 userInterfaceIdiom])
    {
      v197 = 0;
      LODWORD(v199) = 1;
      goto LABEL_870;
    }
  }

  LODWORD(v199) = mainScreen29 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen29 = __sb__runningInSpringBoard();
    if (mainScreen29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      currentDevice28 = [MEMORY[0x277D759A0] mainScreen];
      [currentDevice28 _referenceBounds];
    }

    v197 = mainScreen29 ^ 1;
    BSSizeRoundForScale();
    if (v124 >= *(MEMORY[0x277D66E30] + 104))
    {
      goto LABEL_892;
    }
  }

  else
  {
    v197 = 0;
  }

LABEL_870:
  if (_SBF_Private_IsD53())
  {
    v195 = 0;
    v193 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = &qword_21EC96180;
    goto LABEL_250;
  }

LABEL_892:
  if (_SBF_Private_IsD16() && (_SBF_Private_IsD52OrSimilarDevice() & 1) != 0)
  {
    v195 = 0;
    v193 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = &qword_21EC96158;
    goto LABEL_250;
  }

  if (_SBF_Private_IsD52ZoomedOrSimilarDevice() && (_SBF_Private_IsD16() & 1) != 0)
  {
    v195 = 0;
    v193 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = &qword_21EC96160;
    goto LABEL_250;
  }

  if (_SBF_Private_IsD52OrSimilarDevice())
  {
    v195 = 0;
    v193 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = &qword_21EC96148;
    goto LABEL_250;
  }

  if (_SBF_Private_IsD52ZoomedOrSimilarDevice())
  {
    v195 = 0;
    v193 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = &qword_21EC96150;
    goto LABEL_250;
  }

  v126 = __sb__runningInSpringBoard();
  if (v126)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v195 = 0;
      v193 = 0;
      goto LABEL_928;
    }
  }

  else
  {
    currentDevice29 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice29 userInterfaceIdiom])
    {
      v193 = 0;
      v195 = 1;
      goto LABEL_928;
    }
  }

  v195 = v126 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen29 = __sb__runningInSpringBoard();
    if (mainScreen29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen25 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen25 _referenceBounds];
    }

    v193 = mainScreen29 ^ 1;
    BSSizeRoundForScale();
    if (v133 >= *(MEMORY[0x277D66E30] + 88))
    {
      v38 = 0;
      v39 = 0;
      v40 = 0;
      v41 = 0;
      v42 = 0;
      v43 = 0;
      v44 = &qword_21EC96168;
      goto LABEL_250;
    }
  }

  else
  {
    v193 = 0;
  }

LABEL_928:
  v128 = __sb__runningInSpringBoard();
  if (v128)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v38 = 0;
      v39 = 0;
      goto LABEL_948;
    }
  }

  else
  {
    mainScreen27 = [MEMORY[0x277D75418] currentDevice];
    if ([mainScreen27 userInterfaceIdiom])
    {
      v39 = 0;
      v38 = 1;
      goto LABEL_948;
    }
  }

  v38 = v128 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen29 = __sb__runningInSpringBoard();
    if (mainScreen29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen26 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen26 _referenceBounds];
    }

    v39 = mainScreen29 ^ 1;
    BSSizeRoundForScale();
    if (v135 >= *(MEMORY[0x277D66E30] + 72))
    {
      v40 = 0;
      v41 = 0;
      v42 = 0;
      v43 = 0;
      v44 = &qword_21EC96170;
      goto LABEL_250;
    }
  }

  else
  {
    v39 = 0;
  }

LABEL_948:
  mainScreen29 = __sb__runningInSpringBoard();
  if (mainScreen29)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v40 = 0;
      v41 = 0;
      goto LABEL_969;
    }
  }

  else
  {
    currentDevice30 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice30 userInterfaceIdiom])
    {
      v41 = 0;
      v40 = 1;
      goto LABEL_969;
    }
  }

  v40 = mainScreen29 ^ 1;
  mainScreen30 = __sb__runningInSpringBoard();
  if (mainScreen30)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen29 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen29 _referenceBounds];
  }

  v41 = mainScreen30 ^ 1;
  BSSizeRoundForScale();
  if (v131 >= *(MEMORY[0x277D66E30] + 56))
  {
    v42 = 0;
    v43 = 0;
    v44 = &qword_21EC96140;
    goto LABEL_250;
  }

LABEL_969:
  mainScreen30 = __sb__runningInSpringBoard();
  if (mainScreen30)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v42 = 0;
      v43 = 0;
LABEL_998:
      v44 = &CSQuickActionButtonInsetX;
      goto LABEL_250;
    }
  }

  else
  {
    currentDevice31 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice31 userInterfaceIdiom])
    {
      v43 = 0;
      v42 = 1;
      goto LABEL_998;
    }
  }

  v42 = mainScreen30 ^ 1;
  v138 = __sb__runningInSpringBoard();
  if (v138)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen30 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen30 _referenceBounds];
  }

  v43 = v138 ^ 1;
  BSSizeRoundForScale();
  if (v139 < *(MEMORY[0x277D66E30] + 40))
  {
    goto LABEL_998;
  }

  v44 = &qword_21EC96138;
LABEL_250:
  v58 = *v44;
  if (v43)
  {

    if (!v42)
    {
      goto LABEL_252;
    }
  }

  else if (!v42)
  {
LABEL_252:
    if (v41)
    {
      goto LABEL_253;
    }

LABEL_257:
    if (!v40)
    {
      goto LABEL_259;
    }

    goto LABEL_258;
  }

  if (!v41)
  {
    goto LABEL_257;
  }

LABEL_253:

  if (v40)
  {
LABEL_258:
  }

LABEL_259:
  if (v39)
  {
  }

  if (v38)
  {
  }

  if (v193)
  {
  }

  if (v195)
  {
  }

  if (v197)
  {
  }

  if (v199)
  {
  }

  if (HIDWORD(v199))
  {
  }

  if (v201)
  {
  }

  if (HIDWORD(v201))
  {
  }

  if (v203)
  {
  }

  if (HIDWORD(v203))
  {
  }

  if (v205)
  {
  }

  if (HIDWORD(v205))
  {
  }

  if (v207)
  {
  }

  if (HIDWORD(v207))
  {
  }

  if (v209)
  {
  }

  if (HIDWORD(v209))
  {
  }

  if (LODWORD(v211[0]))
  {
  }

  if (HIDWORD(v211[0]))
  {
  }

  if (LODWORD(v211[1]))
  {
  }

  if (HIDWORD(v211[1]))
  {
  }

  if (LODWORD(v211[2]))
  {
  }

  if (HIDWORD(v211[2]))
  {
  }

  if (LODWORD(v211[3]))
  {
  }

  if (HIDWORD(v211[3]))
  {
  }

  if (LODWORD(v211[4]))
  {
  }

  if (HIDWORD(v211[4]))
  {
  }

  if (LODWORD(v211[5]))
  {
  }

  if (HIDWORD(v211[5]))
  {
  }

  if (LODWORD(v211[6]))
  {
  }

  if (HIDWORD(v211[6]))
  {
  }

  if (LODWORD(v211[7]))
  {
  }

  if (HIDWORD(v211[7]))
  {
  }

  if (LODWORD(v211[8]))
  {
  }

  if (HIDWORD(v211[8]))
  {
  }

  if (LODWORD(v211[9]))
  {
  }

  if (HIDWORD(v211[9]))
  {
  }

  if (LODWORD(v211[10]))
  {
  }

  if (HIDWORD(v211[10]))
  {
  }

  if (LODWORD(v211[11]))
  {
  }

  if (HIDWORD(v211[11]))
  {
  }

  if (LODWORD(v211[12]))
  {
  }

  if (HIDWORD(v211[12]))
  {
  }

  if (LODWORD(v211[13]))
  {
  }

  if (HIDWORD(v211[13]))
  {
  }

  if (LODWORD(v211[14]))
  {
  }

  if (HIDWORD(v211[14]))
  {
  }

  if (LODWORD(v211[15]))
  {
  }

  if (HIDWORD(v211[15]))
  {
  }

  if (LODWORD(v211[16]))
  {
  }

  if (HIDWORD(v211[16]))
  {
  }

  if (v212)
  {
  }

  if (HIDWORD(v212))
  {
LABEL_364:
  }

  return v58;
}

- (void)refreshSupportedButtons
{
  v17 = *MEMORY[0x277D85DE8];
  _hidesButtonsForWidgetControls = [(CSQuickActionsView *)self _hidesButtonsForWidgetControls];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_buttons;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        if (_hidesButtonsForWidgetControls)
        {
          [*(*(&v12 + 1) + 8 * v8) setHidden:1];
        }

        else
        {
          action = [*(*(&v12 + 1) + 8 * v8) action];
          [v9 showsButtonDidChangeForAction:action];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v11 = !_hidesButtonsForWidgetControls && [(CSDashBoardQuickActionsButtonSettings *)self->_quickActionsSettings colorsBackground];
  [(CSQuickActionsView *)self _setButtonBackgroundVisible:v11, v12];
}

- (BOOL)_hidesButtonsForWidgetControls
{
  v3 = [(NSArray *)self->_controlsActions count];
  if (v3)
  {
    LOBYTE(v3) = ![(CSQuickActionsView *)self _showsControlButtons];
  }

  return v3;
}

- (CSQuickActionsView)initWithFrame:(CGRect)frame delegate:(id)delegate
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  delegateCopy = delegate;
  v20.receiver = self;
  v20.super_class = CSQuickActionsView;
  height = [(CSQuickActionsView *)&v20 initWithFrame:x, y, width, height];
  v11 = height;
  if (height)
  {
    objc_storeWeak(&height->_delegate, delegateCopy);
    v12 = +[CSLockScreenDomain rootSettings];
    dashBoardQuickActionButtonSettings = [v12 dashBoardQuickActionButtonSettings];
    quickActionsSettings = v11->_quickActionsSettings;
    v11->_quickActionsSettings = dashBoardQuickActionButtonSettings;

    [(PTSettings *)v11->_quickActionsSettings addKeyObserver:v11];
    v15 = objc_alloc_init(MEMORY[0x277D65FF8]);
    miscellaneousDefaults = v11->_miscellaneousDefaults;
    v11->_miscellaneousDefaults = v15;

    v17 = [MEMORY[0x277D755B8] kitImageNamed:@"UICoverSheetButtonLuminanceMap"];
    luminanceMap = v11->_luminanceMap;
    v11->_luminanceMap = v17;

    v11->_glassLuminanceValue = 0.0;
    [(CSQuickActionsView *)v11 refreshSupportedButtons];
  }

  return v11;
}

- (id)_createButtonForAction:(id)action
{
  actionCopy = action;
  v5 = [[CSQuickActionsButton alloc] initWithAction:actionCopy luminanceMap:self->_luminanceMap];
  [(CSQuickActionsButton *)v5 setDelegate:self];
  _buttonGroupName = [(CSQuickActionsView *)self _buttonGroupName];
  [(CSProminentButtonControl *)v5 setBackgroundEffectViewGroupName:_buttonGroupName];

  [(CSQuickActionsButton *)v5 setLegibilitySettings:self->_legibilitySettings];
  -[CSQuickActionsButton setHidden:](v5, "setHidden:", [actionCopy showsButton] ^ 1);
  [(CSQuickActionsButton *)v5 setVisible:1];
  accessibilityIdentifier = [actionCopy accessibilityIdentifier];

  [(CSQuickActionsButton *)v5 setAccessibilityIdentifier:accessibilityIdentifier];
  [(CSQuickActionsView *)self _addTargetsToButton:v5];

  return v5;
}

- (void)setButtonActions:(id)actions
{
  v59 = *MEMORY[0x277D85DE8];
  actionsCopy = actions;
  if ([(NSArray *)self->_buttonActions isEqualToArray:actionsCopy])
  {
    goto LABEL_50;
  }

  v5 = [(NSArray *)self->_buttons mutableCopy];
  v6 = [(NSArray *)self->_buttonActions mutableCopy];
  buttonActions = self->_buttonActions;
  if (buttonActions && (v8 = -[NSArray count](buttonActions, "count"), v8 == [actionsCopy count]))
  {
    if (![actionsCopy count])
    {
      v19 = v6;
      goto LABEL_21;
    }

    v9 = v5;
    v10 = 0;
    do
    {
      v11 = [actionsCopy objectAtIndexedSubscript:v10];
      v12 = [(NSArray *)self->_buttonActions objectAtIndexedSubscript:v10];
      v13 = BSEqualObjects();

      if ((v13 & 1) == 0)
      {
        v14 = SBLogCoverSheet();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = [actionsCopy objectAtIndexedSubscript:v10];
          *buf = 138412290;
          v57 = v15;
          _os_log_impl(&dword_21EB05000, v14, OS_LOG_TYPE_DEFAULT, "[Quick Action] creating button for action %@", buf, 0xCu);
        }

        v16 = [(NSArray *)v9 objectAtIndexedSubscript:v10];
        [v16 removeFromSuperview];

        v17 = [actionsCopy objectAtIndexedSubscript:v10];
        [(NSArray *)v6 setObject:v17 atIndexedSubscript:v10];
        v18 = [(CSQuickActionsView *)self _createButtonForAction:v17];
        [(NSArray *)v9 setObject:v18 atIndexedSubscript:v10];
      }

      ++v10;
    }

    while ([actionsCopy count] > v10);
    v19 = v6;
  }

  else
  {
    v19 = [actionsCopy copy];

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v20 = self->_buttons;
    v21 = [(NSArray *)v20 countByEnumeratingWithState:&v52 objects:v58 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v53;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v53 != v23)
          {
            objc_enumerationMutation(v20);
          }

          [*(*(&v52 + 1) + 8 * i) removeFromSuperview];
        }

        v22 = [(NSArray *)v20 countByEnumeratingWithState:&v52 objects:v58 count:16];
      }

      while (v22);
    }

    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __39__CSQuickActionsView_setButtonActions___block_invoke;
    v51[3] = &unk_27838E138;
    v51[4] = self;
    v25 = [(NSArray *)v19 bs_map:v51];
    v9 = [v25 mutableCopy];
  }

  v5 = v9;
LABEL_21:
  if ([(NSArray *)v5 count]>= 2)
  {
    firstObject = [(NSArray *)self->_buttons firstObject];
    v27 = objc_opt_class();
    v28 = firstObject;
    if (v27)
    {
      if (objc_opt_isKindOfClass())
      {
        v29 = v28;
      }

      else
      {
        v29 = 0;
      }
    }

    else
    {
      v29 = 0;
    }

    v50 = v29;

    firstObject2 = [(NSArray *)v5 firstObject];
    v31 = objc_opt_class();
    v32 = firstObject2;
    if (v31)
    {
      if (objc_opt_isKindOfClass())
      {
        v33 = v32;
      }

      else
      {
        v33 = 0;
      }
    }

    else
    {
      v33 = 0;
    }

    v34 = v33;

    lastObject = [(NSArray *)self->_buttons lastObject];
    v36 = objc_opt_class();
    v37 = lastObject;
    if (v36)
    {
      if (objc_opt_isKindOfClass())
      {
        v38 = v37;
      }

      else
      {
        v38 = 0;
      }
    }

    else
    {
      v38 = 0;
    }

    v39 = v38;

    lastObject2 = [(NSArray *)v5 lastObject];
    v41 = objc_opt_class();
    v42 = lastObject2;
    if (v41)
    {
      if (objc_opt_isKindOfClass())
      {
        v43 = v42;
      }

      else
      {
        v43 = 0;
      }
    }

    else
    {
      v43 = 0;
    }

    v44 = v43;

    if (self->_buttonContainerView)
    {
      if ((BSEqualObjects() & 1) == 0)
      {
        [(CSProminentButtonsView *)self->_buttonContainerView setLeadingButton:v34];
      }

      if ((BSEqualObjects() & 1) == 0)
      {
        [(CSProminentButtonsView *)self->_buttonContainerView setTrailingButton:v44];
      }
    }

    else
    {
      v45 = [objc_alloc(MEMORY[0x277D02CD0]) initWithLeadingButton:v34 trailingButton:v44];
      buttonContainerView = self->_buttonContainerView;
      self->_buttonContainerView = v45;

      [(CSProminentButtonsView *)self->_buttonContainerView setGlassLuminanceValue:self->_glassLuminanceValue];
      [(CSQuickActionsView *)self addSubview:self->_buttonContainerView];
    }
  }

  v47 = self->_buttonActions;
  self->_buttonActions = v19;
  v48 = v19;

  buttons = self->_buttons;
  self->_buttons = v5;

LABEL_50:
}

id __39__CSQuickActionsView_setButtonActions___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = SBLogCoverSheet();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = v3;
    _os_log_impl(&dword_21EB05000, v4, OS_LOG_TYPE_DEFAULT, "[Quick Action] creating button for action %{public}@", &v7, 0xCu);
  }

  v5 = [*(a1 + 32) _createButtonForAction:v3];

  return v5;
}

- (void)setControlsActions:(id)actions
{
  actionsCopy = actions;
  if ((BSEqualArrays() & 1) == 0)
  {
    objc_storeStrong(&self->_controlsActions, actions);
  }
}

- (void)setActionsVisible:(BOOL)visible
{
  visibleCopy = visible;
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_buttons;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        [v9 setVisible:{visibleCopy, v11}];
        action = [v9 action];
        [action buttonVisibilityChangedTo:visibleCopy];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)setUsesSensitiveUIAppearance:(BOOL)appearance
{
  if (self->_usesSensitiveUIAppearance != appearance)
  {
    self->_usesSensitiveUIAppearance = appearance;
    [(CSProminentButtonsView *)self->_buttonContainerView setUsesSensitiveUIAppearance:?];
  }
}

- (void)setGlassLuminanceValue:(double)value
{
  if (self->_glassLuminanceValue != value)
  {
    self->_glassLuminanceValue = value;
    [(CSProminentButtonsView *)self->_buttonContainerView setGlassLuminanceValue:?];
  }
}

- (void)setHidesBackingShadow:(BOOL)shadow
{
  if (self->_hidesBackingShadow != shadow)
  {
    v8[7] = v3;
    v8[8] = v4;
    self->_hidesBackingShadow = shadow;
    buttons = self->_buttons;
    v7 = objc_opt_class();
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __44__CSQuickActionsView_setHidesBackingShadow___block_invoke;
    v8[3] = &unk_27838E160;
    v8[4] = self;
    [(NSArray *)buttons bs_enumerateObjectsOfClass:v7 usingBlock:v8];
  }
}

- (BOOL)strictlyInterpretsLocationAsContent:(CGPoint)content inView:(id)view
{
  v15 = *MEMORY[0x277D85DE8];
  +[CSQuickActionsButton buttonDiameter];
  [(CSDashBoardQuickActionsButtonSettings *)self->_quickActionsSettings strictTouchExtraRadius];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_buttons;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * i) center];
        if (BSFloatLessThanOrEqualToFloat())
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (BOOL)interpretsLocationAsContent:(CGPoint)content inView:(id)view
{
  v19 = *MEMORY[0x277D85DE8];
  [(CSQuickActionsView *)self convertPoint:view fromView:content.x, content.y];
  v6 = v5;
  v8 = v7;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = self->_buttons;
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = *v15;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v14 + 1) + 8 * i) frame];
        v20.x = v6;
        v20.y = v8;
        if (CGRectContainsPoint(v21, v20))
        {
          LOBYTE(v10) = 1;
          goto LABEL_11;
        }
      }

      v10 = [(NSArray *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v10;
}

- (id)buttonsForApplicationBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  buttons = self->_buttons;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60__CSQuickActionsView_buttonsForApplicationBundleIdentifier___block_invoke;
  v9[3] = &unk_27838E188;
  v10 = identifierCopy;
  v6 = identifierCopy;
  v7 = [(NSArray *)buttons bs_filter:v9];

  return v7;
}

uint64_t __60__CSQuickActionsView_buttonsForApplicationBundleIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 action];
  v4 = objc_opt_class();
  v5 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [v7 controlIdentity];

  v9 = [v8 extensionIdentity];
  v10 = [v9 containerBundleIdentifier];
  v11 = [v10 isEqualToString:*(a1 + 32)];

  return v11;
}

- (BOOL)interpretsLocationAsBesideContent:(CGPoint)content inView:(id)view
{
  [(CSQuickActionsView *)self convertPoint:view fromView:content.x, content.y];
  v46 = v6;
  v47 = v5;
  [(CSQuickActionsView *)self bounds];
  Width = CGRectGetWidth(v51);
  [(CSQuickActionsView *)self bounds];
  Height = CGRectGetHeight(v52);
  [(CSQuickActionsView *)self _leadingFrameWithOutsets:0];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [(CSQuickActionsView *)self _trailingFrameWithOutsets:0];
  v16 = v15;
  rect = v15;
  rect_8 = v17;
  v19 = v18;
  v21 = v20;
  +[CSQuickActionsButton buttonDiameter];
  rect_24 = v22;
  v53.origin.x = v8;
  v53.origin.y = v10;
  v53.size.width = v12;
  v53.size.height = v14;
  MinX = CGRectGetMinX(v53);
  v54.origin.x = v16;
  v54.origin.y = v19;
  v54.size.width = rect_8;
  v54.size.height = v21;
  v24 = CGRectGetMinX(v54);
  if (MinX < v24)
  {
    v24 = MinX;
  }

  rect_16 = v24;
  v55.origin.x = v8;
  v55.origin.y = v10;
  v55.size.width = v12;
  v55.size.height = v14;
  MaxX = CGRectGetMaxX(v55);
  v56.origin.x = rect;
  v56.origin.y = v19;
  v56.size.width = rect_8;
  v56.size.height = v21;
  v25 = CGRectGetMaxX(v56);
  v57.origin.x = v8;
  v57.origin.y = v10;
  v57.size.width = v12;
  v57.size.height = v14;
  MinY = CGRectGetMinY(v57);
  v58.origin.x = v8;
  v58.origin.y = v10;
  v58.size.width = v12;
  v58.size.height = v14;
  MaxY = CGRectGetMaxY(v58);
  v59.origin.x = 0.0;
  v59.origin.y = MinY;
  v59.size.width = rect_16;
  v59.size.height = rect_24;
  v49.x = v47;
  v49.y = v46;
  if (CGRectContainsPoint(v59, v49))
  {
    return 1;
  }

  v28 = MaxX;
  if (MaxX < v25)
  {
    v28 = v25;
  }

  v29 = Width - v28;
  v30 = MinY;
  v31 = rect_24;
  v50.x = v47;
  v50.y = v46;
  if (CGRectContainsPoint(*&v28, v50))
  {
    return 1;
  }

  v34 = 0;
  v35 = MaxY;
  v36 = Width;
  v37 = v47;
  v38 = v46;

  v33 = Height - MaxY;
  return CGRectContainsPoint(*&v34, *&v37);
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = CSQuickActionsView;
  [(CSQuickActionsView *)&v3 layoutSubviews];
  [(CSQuickActionsView *)self _layoutWidgetContainerView];
}

- (void)_layoutWidgetContainerView
{
  [(CSQuickActionsView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [MEMORY[0x277D02CD0] minimumFrameHeight];
  v12 = v11;
  buttonContainerView = self->_buttonContainerView;
  v17.origin.x = v4;
  v17.origin.y = v6;
  v17.size.width = v8;
  v17.size.height = v10;
  v14 = CGRectGetMaxY(v17) - v12;
  v18.origin.x = v4;
  v18.origin.y = v6;
  v18.size.width = v8;
  v18.size.height = v10;
  Width = CGRectGetWidth(v18);

  [(CSProminentButtonsView *)buttonContainerView setFrame:0.0, v14, Width, v12];
}

- (CGRect)_leadingFrameWithOutsets:(BOOL)outsets
{
  outsetsCopy = outsets;
  [(CSQuickActionsView *)self _insetX];
  v6 = v5;
  [(CSQuickActionsView *)self _buttonOutsets];
  v8 = v7;
  v10 = v9;
  [(CSQuickActionsView *)self _minYWithOutsets:outsetsCopy];
  v12 = v11;
  v13 = 0.0;
  if (outsetsCopy)
  {
    if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1)
    {
      v13 = v10;
    }

    else
    {
      v13 = v8;
    }
  }

  [(CSQuickActionsView *)self _buttonSizeWithOutsets:outsetsCopy];
  v15 = v14;
  v17 = v16;
  v18 = v6 - v13;
  v19 = v12;
  result.size.height = v17;
  result.size.width = v15;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (CGRect)_trailingFrameWithOutsets:(BOOL)outsets
{
  outsetsCopy = outsets;
  [(CSQuickActionsView *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(CSQuickActionsView *)self _insetX];
  v14 = v13;
  [(CSQuickActionsView *)self _buttonOutsets];
  v16 = v15;
  v18 = v17;
  if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] != 1)
  {
    v18 = v16;
  }

  [(CSQuickActionsView *)self _minYWithOutsets:outsetsCopy];
  v20 = v19;
  v30.origin.x = v6;
  v30.origin.y = v8;
  v30.size.width = v10;
  v30.size.height = v12;
  v21 = CGRectGetWidth(v30) - v14;
  +[CSQuickActionsButton buttonDiameter];
  v23 = v21 - (v18 + v22);
  [(CSQuickActionsView *)self _buttonSizeWithOutsets:outsetsCopy];
  v25 = v24;
  v27 = v26;
  v28 = v23;
  v29 = v20;
  result.size.height = v27;
  result.size.width = v25;
  result.origin.y = v29;
  result.origin.x = v28;
  return result;
}

- (double)_minYWithOutsets:(BOOL)outsets
{
  outsetsCopy = outsets;
  [(CSQuickActionsView *)self bounds];
  Height = CGRectGetHeight(v12);
  [(CSQuickActionsView *)self _insetY];
  v7 = v6;
  +[CSQuickActionsButton buttonDiameter];
  v9 = v8;
  v10 = 0.0;
  if (outsetsCopy)
  {
    [(CSQuickActionsView *)self _buttonOutsets];
  }

  return Height - v7 - (v9 + v10);
}

- (CGSize)_buttonSizeWithOutsets:(BOOL)outsets
{
  outsetsCopy = outsets;
  +[CSQuickActionsButton buttonDiameter];
  v6 = v5;
  [(CSQuickActionsView *)self _buttonOutsets];
  v11 = v9 + v10;
  if (!outsetsCopy)
  {
    v11 = 0.0;
  }

  v12 = v6 + v11;
  v13 = v7 + v8;
  if (!outsetsCopy)
  {
    v13 = 0.0;
  }

  v14 = v6 + v13;
  v15 = v12;
  result.height = v14;
  result.width = v15;
  return result;
}

- (id)_buttonGroupName
{
  v2 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 stringWithFormat:@"%@.button", v4];

  return v5;
}

- (void)setLegibilitySettings:(id)settings
{
  v16 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  if (([settingsCopy sb_isEqualToLegibilitySettings:self->_legibilitySettings] & 1) == 0)
  {
    objc_storeStrong(&self->_legibilitySettings, settings);
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = self->_buttons;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v11 + 1) + 8 * v10++) setLegibilitySettings:{settingsCopy, v11}];
        }

        while (v8 != v10);
        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }
}

- (void)_addTargetsToButton:(id)button
{
  buttonCopy = button;
  [buttonCopy addTarget:self action:sel_handleButtonTouchBegan_ forControlEvents:1];
  [buttonCopy addTarget:self action:sel_handleButtonTouchEnded_ forControlEvents:256];
  [buttonCopy addTarget:self action:sel_handleButtonTouchEnded_ forControlEvents:64];
  [buttonCopy addTarget:self action:sel_handleButtonTouchEnded_ forControlEvents:128];
  [buttonCopy addTarget:self action:sel_handleButtonPress_ forControlEvents:0x2000];
}

- (void)_removeTargetsFromButton:(id)button
{
  buttonCopy = button;
  [buttonCopy removeTarget:self action:0 forControlEvents:1];
  [buttonCopy removeTarget:self action:0 forControlEvents:256];
  [buttonCopy removeTarget:self action:0 forControlEvents:64];
  [buttonCopy removeTarget:self action:0 forControlEvents:128];
  [buttonCopy removeTarget:self action:0 forControlEvents:0x2000];
}

- (void)handleButtonTouchBegan:(id)began
{
  beganCopy = began;
  kdebug_trace();
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained touchBeganForButton:beganCopy];
}

- (void)handleButtonPress:(id)press
{
  pressCopy = press;
  kdebug_trace();
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained fireActionForButton:pressCopy];
}

- (void)handleButtonTouchEnded:(id)ended
{
  endedCopy = ended;
  kdebug_trace();
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained touchEndedForButton:endedCopy];
}

- (void)_setButtonBackgroundVisible:(BOOL)visible
{
  v16 = *MEMORY[0x277D85DE8];
  if (visible)
  {
    systemYellowColor = [MEMORY[0x277D75348] systemYellowColor];
    v5 = [systemYellowColor colorWithAlphaComponent:0.35];
  }

  else
  {
    v5 = 0;
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = self->_buttons;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10++) setBackgroundColor:{v5, v11}];
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (BOOL)shouldAllowClickInteraction:(id)interaction toBeginForButton:(id)button
{
  interactionCopy = interaction;
  delegate = [(CSQuickActionsView *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) != 0 && ![delegate shouldTouchesBeginForClick:interactionCopy])
  {
    v13 = 0;
  }

  else if ([(CSDashBoardQuickActionsButtonSettings *)self->_quickActionsSettings usesStrictTouchAllowance])
  {
    coordinateSpace = [(CSProminentButtonsView *)self->_buttonContainerView coordinateSpace];
    [interactionCopy locationInCoordinateSpace:coordinateSpace];
    v9 = v8;
    v11 = v10;

    view = [interactionCopy view];
    v13 = [(CSQuickActionsView *)self strictlyInterpretsLocationAsContent:view inView:v9, v11];
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

- (void)settings:(id)settings changedValueForKey:(id)key
{
  if (self->_quickActionsSettings == settings)
  {
    [(CSQuickActionsView *)self refreshSupportedButtons];

    [(CSQuickActionsView *)self setNeedsLayout];
  }
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  animatedLayerProperties = [(CSQuickActionsView *)self animatedLayerProperties];
  v6 = [animatedLayerProperties containsObject:keyCopy];

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = CSQuickActionsView;
    v7 = [(CSQuickActionsView *)&v9 _shouldAnimatePropertyWithKey:keyCopy];
  }

  return v7;
}

- (CSQuickActionsDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end