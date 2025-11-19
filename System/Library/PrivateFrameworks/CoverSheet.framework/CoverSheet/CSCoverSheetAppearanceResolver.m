@interface CSCoverSheetAppearanceResolver
- (CGRect)bounds;
- (CSCoverSheetAppearanceResolver)init;
- (double)_alphaForTransitionFromHidden:(uint64_t)a1 toHidden:(uint64_t)a2 unhiddenAlpha:(uint64_t)a3 timingFunction:(void *)a4;
- (double)_alphaForTransitionFromHidden:(uint64_t)a3 toHidden:(void *)a4 timingFunction:;
- (double)_dateViewAlphaForCurrentWakeState;
- (double)_finalizeOffset:(uint64_t)a1 referenceFrame:(double)a2;
- (double)_offsetForTransitionFromOffset:(uint64_t)a1 toOffset:timingFunction:;
- (double)_scaleForTransitionFromScale:(uint64_t)a1 toScale:timingFunction:;
- (double)_valueForTransitionInterval:(void *)a3 timingFunction:;
- (id)_resolveBackgroundComponent;
- (id)_resolveBackgroundContentComponent;
- (id)_resolveComplicationContainerComponent;
- (id)_resolveComplicationSidebarComponent;
- (id)_resolveComponentWithType:(int64_t)a3;
- (id)_resolveContentComponent;
- (id)_resolveControlCenterGrabberComponent;
- (id)_resolveDateViewComponent;
- (id)_resolveDimmingLayerComponent;
- (id)_resolveFooterCallToActionLabelComponentWithHomeAffordance:(id)a3;
- (id)_resolveFullBleedContentComponent;
- (id)_resolveHomeAffordanceComponent;
- (id)_resolveLegibilitySettings;
- (id)_resolveModalContentComponent;
- (id)_resolveNotificationDimmingLayerComponent;
- (id)_resolvePageContentComponent;
- (id)_resolvePoseidonComponent;
- (id)_resolveProudLockComponent;
- (id)_resolveQuickActionsComponent;
- (id)_resolveRemoteInlineContentComponent;
- (id)_resolveSlideableContentComponent;
- (id)_resolveStatusBarBackgroundComponent;
- (id)_resolveStatusBarComponent;
- (id)_resolveStatusBarGradientComponent;
- (id)_resolveTintingComponent;
- (id)_resolveWallpaperComponent;
- (id)_resolveWallpaperFloatingLayerComponent;
- (id)_resolveWhitePointComponent;
- (id)newActiveAppearanceGivenDesiredAppearance:(id)a3 oldAppearance:(id)a4 activeAppearance:(id)a5 activeBehavior:(id)a6 startIndex:(unint64_t)a7 targetIndex:(unint64_t)a8 indexOfMainPage:(unint64_t)a9 targetAppearance:(id)a10 modalAppearance:(id)a11 currentTransitionSource:(id)a12 contentTransitionIsAtCoverSheetLevel:(BOOL)a13 legibilityProvider:(id)a14 bounds:(CGRect)a15 whitePointValues:(id)a16 hasContentAboveCoverSheet:(BOOL)a17;
- (uint64_t)_levelForTransitionFromLevel:(uint64_t)a3 toLevel:;
- (uint64_t)_resolveContentComponent;
@end

@implementation CSCoverSheetAppearanceResolver

- (id)_resolveBackgroundComponent
{
  v3 = objc_opt_new();
  v4 = [v3 priority:100];

  v5 = [(CSAppearance *)self->_desiredAppearance componentForType:19 property:4];
  v6 = [v5 value];
  [v4 setStyle:v6];

  v7 = [(CSAppearance *)self->_desiredAppearance componentForType:19 property:64];
  v8 = [v7 color];
  [v4 setColor:v8];

  [(SBFSteppedAnimationTimingFunctionCalculator *)self->_interactiveAnimationCalculator valueForFunctionWithName:@"backgroundStyle"];
  [v4 setTransitionProgress:?];

  return v4;
}

- (id)_resolveLegibilitySettings
{
  v3 = [(CSAppearance *)self->_modalAppearance legibilitySettings];
  v4 = [v3 sb_copy];

  v5 = [(CSAppearance *)self->_oldAppearance legibilitySettings];
  v6 = [v5 sb_copy];

  v7 = [(CSAppearance *)self->_targetAppearance legibilitySettings];
  v8 = [v7 sb_copy];

  v9 = [(CSAppearance *)self->_desiredAppearance legibilitySettings];
  v10 = [v9 sb_copy];

  if (v4)
  {
    v11 = v4;
LABEL_7:
    discreteLegibilitySettings = self->_discreteLegibilitySettings;
    self->_discreteLegibilitySettings = v11;
    goto LABEL_8;
  }

  if (v8)
  {
    v11 = v8;
    goto LABEL_7;
  }

  if (v10)
  {
    v11 = v10;
    goto LABEL_7;
  }

  discreteLegibilitySettings = [(CSLegibilityProviding *)self->_legibilityProvider currentLegibilitySettings];
  v16 = [discreteLegibilitySettings sb_copy];
  v17 = self->_discreteLegibilitySettings;
  self->_discreteLegibilitySettings = v16;

LABEL_8:
  if (self->_isTransitioning)
  {
    [(SBFSteppedAnimationTimingFunctionCalculator *)self->_interactiveAnimationCalculator valueForFunctionWithName:@"legibilitySettings"];
    v13 = _SBUIInterpolatedLegibilitySettings();
    if (self->_fraction < 0.5)
    {
      objc_storeStrong(&self->_discreteLegibilitySettings, v6);
    }
  }

  else
  {
    v13 = self->_discreteLegibilitySettings;
  }

  [(_UILegibilitySettings *)v13 setMinFillHeight:0.0];
  [(_UILegibilitySettings *)self->_discreteLegibilitySettings setMinFillHeight:0.0];
  v14 = v13;

  return v13;
}

- (id)_resolveDateViewComponent
{
  v3 = objc_opt_new();
  v4 = [v3 priority:100];

  v5 = [(CSAppearance *)self->_oldAppearance componentForType:1 identifier:@"(active)"];
  v6 = [(CSAppearance *)self->_desiredAppearance componentForType:1 property:1];
  v7 = [v6 isHidden];

  v8 = [v5 isHidden];
  v9 = [(CSAppearance *)self->_desiredAppearance componentForType:1 property:4];
  v10 = [v9 value];
  [v4 setValue:v10];

  [v4 setPageIndex:0];
  v11 = [(CSAppearance *)self->_desiredAppearance componentForType:1 property:128];
  v12 = [v11 transitionModifiers];

  v31 = 0u;
  v30 = 0u;
  v13 = [(CSAppearance *)self->_desiredAppearance componentForType:1 property:256];
  v14 = v13;
  if (v13)
  {
    [v13 transitionInputs];
  }

  else
  {
    v31 = 0u;
    v30 = 0u;
  }

  if ((v12 & 8) != 0)
  {
    SBFMainScreenScale();
    BSPointRoundForScale();
    v15 = v17;
    v16 = v18;
    [v4 setAnimationDuration:*&v30];
    if ((v12 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v15 = *MEMORY[0x277CBF348];
  v16 = *(MEMORY[0x277CBF348] + 8);
  if ((v12 & 0x10) != 0)
  {
LABEL_8:
    [v5 scale];
    v32 = v19;
    v33 = 1;
    memset(v34, 0, sizeof(v34));
    v35 = *(&v31 + 1);
    v36 = 1;
    memset(v37, 0, sizeof(v37));
    [v4 setScale:{-[CSCoverSheetAppearanceResolver _valueForTransitionInterval:timingFunction:](self, &v32, 0)}];
    [v4 setAnimationDuration:*&v30];
  }

LABEL_9:
  if ((v12 & 4) != 0)
  {
    [v4 setStretch:1];
  }

  [v5 offset];
  [v4 setOffset:-[CSCoverSheetAppearanceResolver _offsetForTransitionFromOffset:toOffset:timingFunction:](self)];
  v20 = [(CSAppearance *)self->_desiredAppearance componentForType:1 property:16];
  v21 = [v20 view];
  [v4 setView:v21];

  v22 = [(CSAppearance *)self->_desiredAppearance componentForType:1 property:8];
  [v4 setVibrantAndCentered:{objc_msgSend(v22, "flag")}];

  if (self->_startIndex != self->_targetIndex && (BSFloatIsOne() & 1) == 0)
  {
    if (v7 != v8)
    {
      v23 = 72;
      if (v8)
      {
        v23 = 80;
      }

      v24 = *(&self->super.isa + v23) - self->_indexOfMainPage;
      if (v7)
      {
        [v5 offset];
        v15 = v25;
        v16 = v26;
      }

      [v4 setOffset:{v15, v16}];
      v27 = [MEMORY[0x277CCABB0] numberWithInteger:v24];
      [v4 setPageIndex:v27];
    }

    v7 = v8 & v7;
  }

  [v4 setHidden:v7];
  if ([v4 isHidden])
  {
    [v4 setHidesTime:1];
  }

  v28 = [MEMORY[0x277D65FB8] rootSettings];
  [v28 awakeDateAlpha];

  [v4 setAlpha:{-[CSCoverSheetAppearanceResolver _alphaForTransitionFromHidden:toHidden:unhiddenAlpha:timingFunction:](self, objc_msgSend(v5, "isHidden"), objc_msgSend(v4, "isHidden"), @"dateViewAlpha"}];

  return v4;
}

- (id)_resolveRemoteInlineContentComponent
{
  if (a1)
  {
    objc_opt_new();
    OUTLINED_FUNCTION_3_2();
    v4 = [v3 priority:?];

    v5 = [*(a1 + 56) componentForType:21 identifier:@"(active)"];
    [v5 isHidden];
    v6 = [*(a1 + 48) componentForType:21 property:1];
    v7 = [v6 isHidden];

    [v4 setHidden:v7];
    v8 = OUTLINED_FUNCTION_2_3();
    [v4 setAlpha:{-[CSCoverSheetAppearanceResolver _alphaForTransitionFromHidden:toHidden:unhiddenAlpha:timingFunction:](v8, v9, v7, v10)}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_resolveComplicationContainerComponent
{
  if (a1)
  {
    objc_opt_new();
    OUTLINED_FUNCTION_3_2();
    v4 = [v3 priority:?];

    [*(a1 + 56) componentForType:20 identifier:@"(active)"];
    objc_claimAutoreleasedReturnValue();
    v5 = [OUTLINED_FUNCTION_5_0() componentForType:20 property:128];
    v6 = [v5 transitionModifiers];

    v7 = [*(a1 + 48) componentForType:20 property:{256, OUTLINED_FUNCTION_1_5()}];
    if (v7)
    {
      OUTLINED_FUNCTION_9_0();
    }

    else
    {
      OUTLINED_FUNCTION_1_5();
    }

    if ((v6 & 8) != 0)
    {
      SBFMainScreenScale();
      BSPointRoundForScale();
      OUTLINED_FUNCTION_7_0(v8, v9, v10, v11, v12, v13, v14, v15, v32);
      if ((v6 & 0x10) == 0)
      {
LABEL_10:
        [v1 offset];
        [v4 setOffset:-[CSCoverSheetAppearanceResolver _offsetForTransitionFromOffset:toOffset:timingFunction:](a1)];
        v26 = [*(a1 + 48) componentForType:20 property:1];
        [v26 isHidden];

        OUTLINED_FUNCTION_19();
        [v1 isHidden];
        OUTLINED_FUNCTION_16();
        v27 = OUTLINED_FUNCTION_2_3();
        [v4 setAlpha:{-[CSCoverSheetAppearanceResolver _alphaForTransitionFromHidden:toHidden:unhiddenAlpha:timingFunction:](v27, v28, v29, v30)}];

        goto LABEL_11;
      }
    }

    else if ((v6 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    [v1 scale];
    OUTLINED_FUNCTION_0_10();
    [v4 setScale:{OUTLINED_FUNCTION_17(v16, v17)}];
    OUTLINED_FUNCTION_7_0(v18, v19, v20, v21, v22, v23, v24, v25, v32);
    goto LABEL_10;
  }

  v4 = 0;
LABEL_11:

  return v4;
}

- (id)_resolveStatusBarBackgroundComponent
{
  objc_opt_new();
  OUTLINED_FUNCTION_3_2();
  v5 = [v4 priority:?];

  [(CSAppearance *)self->_oldAppearance componentForType:8 identifier:@"(active)"];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_5_0() flagForComponentType:8];
  IsExplicitNo = BSSettingFlagIsExplicitNo();
  [(CSAppearance *)self->_oldAppearance flagForComponentType:8];
  v7 = BSSettingFlagIsExplicitNo();
  v8 = [(CSAppearance *)self->_desiredAppearance componentForType:8 property:1];
  v9 = [v8 isHidden];

  v10 = [v2 isHidden];
  v11 = v9;
  if (self->_startIndex != self->_targetIndex)
  {
    v12 = v10;
    IsOne = BSFloatIsOne();
    v11 = v9;
    if ((IsOne & 1) == 0)
    {
      if (IsExplicitNo == v7)
      {
        v11 = v12 & v9;
      }

      else
      {
        IsYes = BSSettingFlagIsYes();
        v15 = 72;
        if (IsYes)
        {
          v15 = 80;
        }

        v16 = [MEMORY[0x277CCABB0] numberWithInteger:*(&self->super.isa + v15) - self->_indexOfMainPage];
        [v5 setValue:v16];

        if (BSSettingFlagIsYes())
        {
          v11 = v12;
        }

        else
        {
          v11 = v9;
        }
      }
    }
  }

  [v5 setHidden:v11];
  [OUTLINED_FUNCTION_14() setShowBackgroundWhileTransitioning:?];
  [v2 isHidden];
  v17 = OUTLINED_FUNCTION_4_0();
  [v5 setAlpha:{-[CSCoverSheetAppearanceResolver _alphaForTransitionFromHidden:toHidden:unhiddenAlpha:timingFunction:](v17, v18, v9, v19)}];

  return v5;
}

- (id)_resolveStatusBarComponent
{
  objc_opt_new();
  OUTLINED_FUNCTION_3_2();
  v5 = [v4 priority:?];

  v6 = [(CSAppearance *)self->_oldAppearance componentForType:2 identifier:@"(active)"];
  v7 = [OUTLINED_FUNCTION_13() componentForType:? property:?];
  v8 = [v7 value];
  [v5 setFakeStatusBarLevel:v8];

  v9 = [OUTLINED_FUNCTION_13() componentForType:? property:?];
  [v5 setHidden:{objc_msgSend(v9, "isHidden")}];

  v10 = [(NSArray *)self->_whitePointValues lastObject];
  v11 = v10;
  if (!v10)
  {
    v10 = &unk_2830790A0;
  }

  [v10 doubleValue];

  [v5 setAlpha:{-[CSCoverSheetAppearanceResolver _alphaForTransitionFromHidden:toHidden:unhiddenAlpha:timingFunction:](self, objc_msgSend(v6, "isHidden"), objc_msgSend(v5, "isHidden"), @"statusBarAlpha"}];
  v12 = [OUTLINED_FUNCTION_13() componentForType:? property:?];
  v13 = [v12 transitionModifiers];

  OUTLINED_FUNCTION_1_5();
  v14 = [OUTLINED_FUNCTION_13() componentForType:? property:?];
  if (v14)
  {
    OUTLINED_FUNCTION_9_0();
  }

  else
  {
    OUTLINED_FUNCTION_1_5();
  }

  if ((v13 & 0x20) != 0)
  {
    [v6 blurRadius];
    OUTLINED_FUNCTION_0_10();
    [v5 setBlurRadius:{-[CSCoverSheetAppearanceResolver _valueForTransitionInterval:timingFunction:](self, v18, 0)}];
    [v5 setAnimationDuration:v20];
    if ((v13 & 0x10) == 0)
    {
      goto LABEL_8;
    }

LABEL_19:
    [v6 scale];
    OUTLINED_FUNCTION_0_10();
    [v5 setScale:{-[CSCoverSheetAppearanceResolver _valueForTransitionInterval:timingFunction:](self, v19, 0)}];
    [v5 setAnimationDuration:v20];
    goto LABEL_8;
  }

  if ((v13 & 0x10) != 0)
  {
    goto LABEL_19;
  }

LABEL_8:
  v15 = [OUTLINED_FUNCTION_13() flagForComponentType:?];
  [(CSAppearance *)self->_oldAppearance flagForComponentType:2];
  if (self->_isTransitioning && ((BSSettingFlagIsYes() & 1) != 0 || (BSSettingFlagIsYes() & 1) != 0))
  {
    v16 = 1;
  }

  else if (self->_hasContentAboveCoverSheet)
  {
    v16 = 0;
  }

  else
  {
    v16 = v15;
  }

  [v5 setFakeStatusBar:v16];
  [v5 setLegibilitySettings:self->_discreteLegibilitySettings];

  return v5;
}

- (id)_resolvePageContentComponent
{
  objc_opt_new();
  OUTLINED_FUNCTION_3_2();
  v5 = [v4 priority:?];

  [(CSAppearance *)self->_oldAppearance componentForType:4 identifier:@"(active)"];
  objc_claimAutoreleasedReturnValue();
  v6 = [OUTLINED_FUNCTION_5_0() componentForType:4 property:1];
  [v6 isHidden];
  [OUTLINED_FUNCTION_8_0() setHidden:?];

  [(CSAppearance *)self->_desiredAppearance flagForComponentType:4];
  [OUTLINED_FUNCTION_8_0() setSuppressHorizontalBounce:?];
  [v2 isHidden];
  OUTLINED_FUNCTION_16();
  v7 = OUTLINED_FUNCTION_2_3();
  [v5 setAlpha:{-[CSCoverSheetAppearanceResolver _alphaForTransitionFromHidden:toHidden:unhiddenAlpha:timingFunction:](v7, v8, v9, v10)}];

  return v5;
}

- (id)_resolveProudLockComponent
{
  v3 = objc_opt_new();
  v4 = [v3 priority:100];

  v5 = [(CSAppearance *)self->_oldAppearance componentForType:11 identifier:@"(active)"];
  [v5 offset];
  v6 = MEMORY[0x277CBF348];
  v7 = [OUTLINED_FUNCTION_12() componentForType:? property:?];
  v8 = [v7 transitionModifiers];

  OUTLINED_FUNCTION_1_5();
  v9 = [OUTLINED_FUNCTION_12() componentForType:? property:?];
  if (v9)
  {
    OUTLINED_FUNCTION_9_0();
  }

  else
  {
    OUTLINED_FUNCTION_1_5();
  }

  v10 = *v6;
  v11 = v6[1];

  v12 = v11;
  v13 = v10;
  if ((v8 & 8) == 0)
  {
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_21:
    [v5 scale];
    OUTLINED_FUNCTION_0_10();
    [v4 setScale:{-[CSCoverSheetAppearanceResolver _valueForTransitionInterval:timingFunction:](self, v41, 0)}];
    OUTLINED_FUNCTION_7_0(v42, v43, v44, v45, v46, v47, v48, v49, v50);
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  SBFMainScreenScale();
  BSPointRoundForScale();
  v13 = v33;
  v12 = v34;
  OUTLINED_FUNCTION_7_0(v33, v34, v35, v36, v37, v38, v39, v40, v50);
  if ((v8 & 0x10) != 0)
  {
    goto LABEL_21;
  }

LABEL_6:
  if ((v8 & 0x20) != 0)
  {
LABEL_7:
    [v5 blurRadius];
    OUTLINED_FUNCTION_0_10();
    [v4 setBlurRadius:{-[CSCoverSheetAppearanceResolver _valueForTransitionInterval:timingFunction:](self, v14, 0)}];
    OUTLINED_FUNCTION_7_0(v15, v16, v17, v18, v19, v20, v21, v22, v50);
  }

LABEL_8:
  v23 = [CSCoverSheetAppearanceResolver _offsetForTransitionFromOffset:? toOffset:? timingFunction:?];
  v25 = v24;
  v26 = [OUTLINED_FUNCTION_12() componentForType:? property:?];
  [v26 isHidden];
  [OUTLINED_FUNCTION_8_0() setHidden:?];

  v27 = [OUTLINED_FUNCTION_12() componentForType:? property:?];
  [v27 value];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_10() setValue:?];

  [v5 isHidden];
  v28 = OUTLINED_FUNCTION_16();
  [OUTLINED_FUNCTION_12() flagForComponentType:?];
  [(CSAppearance *)self->_oldAppearance flagForComponentType:11];
  [v5 alpha];
  OUTLINED_FUNCTION_20();
  if (v30 && ((v31 = v29, (BSSettingFlagIsYes() & 1) != 0) || BSSettingFlagIsYes()))
  {
    [v4 setAlpha:v31];
  }

  else
  {
    v31 = [CSCoverSheetAppearanceResolver _alphaForTransitionFromHidden:v27 toHidden:v28 unhiddenAlpha:@"proudLockAlpha" timingFunction:?];
    [v4 setAlpha:{fmin(fmax(v31 * 2.0 + -1.0, 0.0), 1.0)}];
    [v4 setOffset:{v23, v25}];
  }

  if (BSPointEqualToPoint() && !BSFloatIsZero() && v27 != v28)
  {
    [v4 setAlpha:v31];
    [v4 setOffset:{v13, v12}];
  }

  return v4;
}

- (id)_resolveHomeAffordanceComponent
{
  objc_opt_new();
  OUTLINED_FUNCTION_3_2();
  v5 = [v4 priority:?];

  v6 = [(CSAppearance *)self->_oldAppearance componentForType:12 identifier:@"(active)"];
  if ([(CSBehavior *)self->_activeBehavior areRestrictedCapabilities:4096])
  {
    v7 = 0;
  }

  else
  {
    v7 = ![(CSBehavior *)self->_activeBehavior areRestrictedCapabilities:56];
  }

  v8 = [OUTLINED_FUNCTION_15() componentForType:? property:?];
  v9 = [v8 isHidden];

  [v5 setHidden:v9 & 1 | (((self->_isTransitioning | v7) & 1) == 0)];
  v10 = [OUTLINED_FUNCTION_15() componentForType:? property:?];
  v11 = [v10 value];
  [v5 setValue:v11];

  [v6 isHidden];
  v12 = OUTLINED_FUNCTION_4_0();
  [v5 setAlpha:{-[CSCoverSheetAppearanceResolver _alphaForTransitionFromHidden:toHidden:unhiddenAlpha:timingFunction:](v12, v13, v14, v15)}];
  v16 = [OUTLINED_FUNCTION_15() flagForComponentType:?];
  if (self->_hasContentAboveCoverSheet)
  {
    v17 = 1;
  }

  else
  {
    v17 = v16;
  }

  [v5 setSuppressTeachableMomentsAnimation:v17];
  v18 = [OUTLINED_FUNCTION_15() componentForType:? property:?];
  v19 = [v18 transitionModifiers];

  OUTLINED_FUNCTION_1_5();
  v20 = [OUTLINED_FUNCTION_15() componentForType:? property:?];
  if (v20)
  {
    OUTLINED_FUNCTION_9_0();
  }

  else
  {
    OUTLINED_FUNCTION_1_5();
  }

  if ((v19 & 8) != 0)
  {
    OUTLINED_FUNCTION_7_0(v21, v22, v23, v24, v25, v26, v27, v28, v45);
  }

  v29 = OUTLINED_FUNCTION_18();
  v37 = v29;
  v38 = v30;
  v39 = 1.0;
  if ((v19 & 0x10) != 0)
  {
    v39 = v46;
    OUTLINED_FUNCTION_7_0(v29, v30, v31, v32, v33, v34, v35, v36, v45);
  }

  [v6 isHidden];
  v40 = OUTLINED_FUNCTION_16();
  if (!v19 || v40)
  {
    [v6 offset];
    v37 = [CSCoverSheetAppearanceResolver _offsetForTransitionFromOffset:? toOffset:? timingFunction:?];
    v38 = v42;
    v43 = [v6 scale];
    v47 = v44;
    v48 = 1;
    memset(v49, 0, sizeof(v49));
    v50 = v39;
    v51 = 1;
    memset(v52, 0, sizeof(v52));
    v39 = OUTLINED_FUNCTION_17(v43, &v47);
  }

  [v5 setOffset:{v37, v38}];
  [v5 setScale:v39];

  return v5;
}

- (id)_resolveControlCenterGrabberComponent
{
  objc_opt_new();
  OUTLINED_FUNCTION_3_2();
  v5 = [v4 priority:?];

  v6 = [(CSAppearance *)self->_oldAppearance componentForType:13 identifier:@"(active)"];
  if ([(CSBehavior *)self->_activeBehavior areRestrictedCapabilities:128])
  {
    [v5 setHidden:1];
  }

  else
  {
    v7 = [(CSAppearance *)self->_desiredAppearance componentForType:13 property:1];
    [v7 isHidden];
    [OUTLINED_FUNCTION_8_0() setHidden:?];
  }

  [v6 isHidden];
  OUTLINED_FUNCTION_16();
  v8 = OUTLINED_FUNCTION_2_3();
  [v5 setAlpha:{-[CSCoverSheetAppearanceResolver _alphaForTransitionFromHidden:toHidden:unhiddenAlpha:timingFunction:](v8, v9, v10, v11)}];
  v12 = [(CSAppearance *)self->_desiredAppearance componentForType:2 property:128];
  v13 = [v12 transitionModifiers];

  v14 = [(CSAppearance *)self->_desiredAppearance componentForType:2 property:256, OUTLINED_FUNCTION_1_5()];
  if (v14)
  {
    OUTLINED_FUNCTION_9_0();
  }

  else
  {
    OUTLINED_FUNCTION_1_5();
  }

  if ((v13 & 0x20) != 0)
  {
    [v6 blurRadius];
    OUTLINED_FUNCTION_0_10();
    [v5 setBlurRadius:{OUTLINED_FUNCTION_17(v16, v17)}];
    OUTLINED_FUNCTION_7_0(v18, v19, v20, v21, v22, v23, v24, v25, v36);
    if ((v13 & 0x10) == 0)
    {
      goto LABEL_9;
    }
  }

  else if ((v13 & 0x10) == 0)
  {
    goto LABEL_9;
  }

  [v6 scale];
  OUTLINED_FUNCTION_0_10();
  [v5 setScale:{OUTLINED_FUNCTION_17(v26, v27)}];
  OUTLINED_FUNCTION_7_0(v28, v29, v30, v31, v32, v33, v34, v35, v36);
LABEL_9:

  return v5;
}

- (id)_resolveQuickActionsComponent
{
  objc_opt_new();
  OUTLINED_FUNCTION_3_2();
  v5 = [v4 priority:?];

  v6 = [(CSAppearance *)self->_oldAppearance componentForType:14 identifier:@"(active)"];
  v7 = [(CSAppearance *)self->_oldAppearance componentForType:14 property:1];
  [v7 isHidden];

  v8 = [OUTLINED_FUNCTION_23() componentForType:? property:?];
  v9 = [v8 isHidden];

  v10 = [OUTLINED_FUNCTION_23() componentForType:? property:?];
  [v10 flag];

  [v5 setSuppressVisibleChanges:BSSettingFlagIsYes()];
  v11 = OUTLINED_FUNCTION_2_3();
  v14 = [CSCoverSheetAppearanceResolver _alphaForTransitionFromHidden:v11 toHidden:v12 unhiddenAlpha:v9 timingFunction:v13];
  [v5 setHidden:v9];
  [v5 setAlpha:v14];
  v15 = [OUTLINED_FUNCTION_23() componentForType:? property:?];
  v16 = [v15 transitionModifiers];

  OUTLINED_FUNCTION_1_5();
  v17 = [OUTLINED_FUNCTION_23() componentForType:? property:?];
  if (v17)
  {
    OUTLINED_FUNCTION_9_0();
  }

  else
  {
    OUTLINED_FUNCTION_1_5();
  }

  if ((v16 & 8) == 0)
  {
    if ((v16 & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_11:
    [v6 scale];
    OUTLINED_FUNCTION_0_10();
    [v5 setScale:{OUTLINED_FUNCTION_17(v27, v28)}];
    OUTLINED_FUNCTION_7_0(v29, v30, v31, v32, v33, v34, v35, v36, v47);
    if ((v16 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_12;
  }

  [v6 offset];
  [v5 setOffset:-[CSCoverSheetAppearanceResolver _offsetForTransitionFromOffset:toOffset:timingFunction:](self)];
  OUTLINED_FUNCTION_7_0(v19, v20, v21, v22, v23, v24, v25, v26, v47);
  if ((v16 & 0x10) != 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  if ((v16 & 0x20) == 0)
  {
    goto LABEL_7;
  }

LABEL_12:
  [v6 blurRadius];
  OUTLINED_FUNCTION_0_10();
  [v5 setBlurRadius:{OUTLINED_FUNCTION_17(v37, v38)}];
  OUTLINED_FUNCTION_7_0(v39, v40, v41, v42, v43, v44, v45, v46, v47);
LABEL_7:

  return v5;
}

- (id)_resolveTintingComponent
{
  v3 = objc_opt_new();
  v4 = [v3 priority:100];

  v5 = [(CSAppearance *)self->_oldAppearance componentForType:7 identifier:@"(active)"];
  v6 = [(CSAppearance *)self->_desiredAppearance componentForType:7 property:1];
  v7 = [v5 isHidden];
  v8 = [v6 isHidden];
  if (self->_isTransitioning && (BSIntervalSubIntervalValueForValue(), [v4 setAlpha:{0, 1, 0x3FE0000000000000, 1, 0x3FD999999999999ALL, 1, 0x3FF0000000000000, 1, 0, 1, 0x3FF0000000000000, 1}], self->_isTransitioning) && (v8 & v7 & 1) == 0)
  {
    [v4 setHidden:0];
  }

  else
  {
    [v4 setHidden:v8];
    if (v8)
    {
      [v4 setAlpha:0.0];
    }
  }

  return v4;
}

- (id)_resolveContentComponent
{
  v3 = objc_opt_new();
  v4 = [v3 priority:100];

  v5 = [(CSAppearance *)self->_oldAppearance componentForType:15 identifier:@"(active)"];
  v6 = [(CSAppearance *)self->_desiredAppearance componentForType:15 property:128];
  v7 = [v6 transitionModifiers];

  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  v8 = [(CSAppearance *)self->_desiredAppearance componentForType:15 property:256];
  v9 = v8;
  if (v8)
  {
    [v8 transitionInputs];
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
    v12 = 0u;
  }

  if ((v7 & 8) != 0)
  {
    [(CSCoverSheetAppearanceResolver *)v5 _resolveContentComponent:self];
    if ((v7 & 0x10) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((v7 & 0x10) == 0)
  {
    goto LABEL_6;
  }

  [v5 scale];
  v15 = v11;
  v16 = 1;
  memset(v17, 0, sizeof(v17));
  v18 = *(&v13 + 1);
  v19 = 1;
  memset(v20, 0, sizeof(v20));
  [v4 setScale:{-[CSCoverSheetAppearanceResolver _valueForTransitionInterval:timingFunction:](self, &v15, 0)}];
  [v4 setAnimationDuration:*&v12];
LABEL_6:

  return v4;
}

- (id)_resolveSlideableContentComponent
{
  objc_opt_new();
  OUTLINED_FUNCTION_3_2();
  v5 = [v4 priority:?];

  [(CSAppearance *)self->_oldAppearance componentForType:5 identifier:@"(active)"];
  objc_claimAutoreleasedReturnValue();
  v6 = [OUTLINED_FUNCTION_5_0() componentForType:5 property:128];
  v7 = [v6 transitionModifiers];

  v8 = [(CSAppearance *)self->_desiredAppearance componentForType:5 property:256, OUTLINED_FUNCTION_1_5()];
  if (v8)
  {
    OUTLINED_FUNCTION_9_0();
  }

  else
  {
    OUTLINED_FUNCTION_1_5();
  }

  if ((v7 & 8) != 0)
  {
    OUTLINED_FUNCTION_7_0(v9, v10, v11, v12, v13, v14, v15, v16, v18);
  }

  OUTLINED_FUNCTION_18();
  [v2 offset];
  [v5 setOffset:-[CSCoverSheetAppearanceResolver _offsetForTransitionFromOffset:toOffset:timingFunction:](self)];

  return v5;
}

- (id)_resolveWallpaperComponent
{
  if (a1)
  {
    v2 = objc_opt_new();
    v3 = [v2 priority:100];

    v4 = [*(a1 + 56) componentForType:6 identifier:@"(active)"];
    v5 = [*(a1 + 48) componentForType:6 property:1];
    v6 = [v4 isHidden];
    [v5 isHidden];
    OUTLINED_FUNCTION_20();
    if (v8 && v7 && !((*(a1 + 56) == 0) | v6 & 1))
    {
      v7 = 0;
    }

    [v3 setHidden:v7];
    v9 = [*(a1 + 48) flagForComponentType:6];
    [*(a1 + 56) flagForComponentType:6];
    OUTLINED_FUNCTION_20();
    if (v8 && ((BSSettingFlagIsExplicitNo() & 1) != 0 || *(a1 + 56) && (BSSettingFlagIsExplicitNo() & 1) != 0))
    {
      v10 = 0;
    }

    else
    {
      v10 = BSSettingFlagIsExplicitNo() ^ 1;
    }

    [v3 setShouldMatchBackgroundStyle:v10];
    [v5 level];
    [OUTLINED_FUNCTION_8_0() setLevel:?];
    v11 = [*(a1 + 48) componentForType:6 property:64];
    [v11 color];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_10() setColor:?];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_resolveModalContentComponent
{
  if (a1)
  {
    objc_opt_new();
    OUTLINED_FUNCTION_3_2();
    v4 = [v3 priority:?];

    [*(a1 + 56) componentForType:22 identifier:@"(active)"];
    objc_claimAutoreleasedReturnValue();
    v5 = [OUTLINED_FUNCTION_5_0() componentForType:22 property:128];
    v6 = [v5 transitionModifiers];

    v7 = [*(a1 + 48) componentForType:22 property:{256, OUTLINED_FUNCTION_1_5()}];
    if (v7)
    {
      OUTLINED_FUNCTION_9_0();
    }

    else
    {
      OUTLINED_FUNCTION_1_5();
    }

    if ((v6 & 0x40) != 0)
    {
      [v1 level];
      if (*(a1 + 16) == 1)
      {
        BSFloatIsZero();
      }

      [OUTLINED_FUNCTION_14() setLevel:?];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_resolveStatusBarGradientComponent
{
  v3 = objc_opt_new();
  v4 = [v3 priority:100];

  v5 = [(CSAppearance *)self->_desiredAppearance componentForType:16 property:1];
  v6 = [v5 isHidden];

  [v4 setHidden:v6];

  return v4;
}

- (id)_resolvePoseidonComponent
{
  v3 = objc_opt_new();
  v4 = [v3 priority:100];

  v5 = [(CSAppearance *)self->_desiredAppearance componentForType:17 property:1];
  v6 = [v5 isHidden];

  [v4 setHidden:v6];
  [v4 setAlpha:(v6 ^ 1)];

  return v4;
}

- (id)_resolveWhitePointComponent
{
  v3 = objc_opt_new();
  v4 = [v3 priority:100];

  v5 = [(CSAppearance *)self->_desiredAppearance componentForType:18 property:1];
  v6 = [v5 isHidden];

  v7 = [(CSAppearance *)self->_desiredAppearance componentForType:18 property:8];
  v8 = [v7 flag];

  v9 = [(CSAppearance *)self->_desiredAppearance componentForType:18 property:1024];
  [v9 animationDuration];
  v11 = v10;

  if (v11 == 0.0)
  {
    v12 = +[CSLockScreenDomain rootSettings];
    v13 = [v12 dashBoardRemoteContentSettings];
    v14 = v13;
    if (v6)
    {
      if ([v13 animatesUndimming])
      {
        [v14 undimDuration];
LABEL_7:
        v11 = v15;
      }
    }

    else if ([v13 animatesDimming])
    {
      [v14 dimDuration];
      goto LABEL_7;
    }
  }

  [v4 setHidden:v6];
  [v4 setLighterReduction:v8];
  [v4 setAnimationDuration:v11];

  return v4;
}

- (id)_resolveWallpaperFloatingLayerComponent
{
  if (a1)
  {
    objc_opt_new();
    OUTLINED_FUNCTION_3_2();
    v4 = [v3 priority:?];

    v5 = [OUTLINED_FUNCTION_22() componentForType:? property:?];
    [v5 shouldRenderInline];
    [OUTLINED_FUNCTION_8_0() setShouldRenderInline:?];
    v6 = [OUTLINED_FUNCTION_22() componentForType:? property:?];
    [v6 shouldRenderForPosterSwitcher];
    [OUTLINED_FUNCTION_8_0() setShouldRenderForPosterSwitcher:?];

    if (CSFeatureEnabled(12))
    {
      if (v5)
      {
        [v5 alpha];
      }

      else
      {
        v7 = 1.0;
      }

      [v4 setAlpha:v7];
    }

    [OUTLINED_FUNCTION_22() flagForComponentType:?];
    [*(a1 + 56) flagForComponentType:23];
    if (*(a1 + 16) == 1 && ((BSSettingFlagIsExplicitNo() & 1) != 0 || *(a1 + 56) && (BSSettingFlagIsExplicitNo() & 1) != 0))
    {
      v8 = 0;
    }

    else
    {
      v8 = BSSettingFlagIsExplicitNo() ^ 1;
    }

    [v4 setShouldMatchMove:v8];
    v9 = [OUTLINED_FUNCTION_22() componentForType:? property:?];
    [v9 level];
    [OUTLINED_FUNCTION_8_0() setLevel:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_resolveBackgroundContentComponent
{
  if (a1)
  {
    objc_opt_new();
    OUTLINED_FUNCTION_3_2();
    v4 = [v3 priority:?];

    [*(a1 + 56) componentForType:24 identifier:@"(active)"];
    objc_claimAutoreleasedReturnValue();
    v5 = [OUTLINED_FUNCTION_5_0() componentForType:24 property:128];
    v6 = [v5 transitionModifiers];

    v7 = [*(a1 + 48) componentForType:24 property:{256, OUTLINED_FUNCTION_1_5()}];
    if (v7)
    {
      OUTLINED_FUNCTION_9_0();
    }

    else
    {
      OUTLINED_FUNCTION_1_5();
    }

    if ((v6 & 0x40) != 0)
    {
      [v1 level];
      if (*(a1 + 16) == 1)
      {
        BSFloatIsZero();
      }

      [OUTLINED_FUNCTION_14() setLevel:?];
    }

    v8 = [*(a1 + 48) componentForType:24 property:1];
    v9 = [v8 isHidden];

    OUTLINED_FUNCTION_19();
    v10 = 1.0;
    if (v9)
    {
      v10 = 0.0;
    }

    [v4 setAlpha:v10];
    v11 = [*(a1 + 48) componentForType:24 property:8];
    [v11 flag];

    [OUTLINED_FUNCTION_14() setFlag:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_resolveComplicationSidebarComponent
{
  if (a1)
  {
    objc_opt_new();
    OUTLINED_FUNCTION_3_2();
    v4 = [v3 priority:?];

    [*(a1 + 56) componentForType:25 identifier:@"(active)"];
    objc_claimAutoreleasedReturnValue();
    v5 = [OUTLINED_FUNCTION_5_0() componentForType:25 property:1];
    [v5 isHidden];

    OUTLINED_FUNCTION_19();
    [v1 isHidden];
    OUTLINED_FUNCTION_16();
    v6 = OUTLINED_FUNCTION_2_3();
    [v4 setAlpha:{-[CSCoverSheetAppearanceResolver _alphaForTransitionFromHidden:toHidden:unhiddenAlpha:timingFunction:](v6, v7, v8, v9)}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_resolveFullBleedContentComponent
{
  if (a1)
  {
    objc_opt_new();
    OUTLINED_FUNCTION_3_2();
    v4 = [v3 priority:?];

    [*(a1 + 48) flagForComponentType:26];
    [OUTLINED_FUNCTION_8_0() setFlag:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_resolveDimmingLayerComponent
{
  if (a1)
  {
    objc_opt_new();
    OUTLINED_FUNCTION_3_2();
    v4 = [v3 priority:?];

    [*(a1 + 56) componentForType:27 identifier:@"(active)"];
    objc_claimAutoreleasedReturnValue();
    v5 = [OUTLINED_FUNCTION_5_0() componentForType:27 property:1];
    [v5 isHidden];

    OUTLINED_FUNCTION_19();
    [v1 isHidden];
    OUTLINED_FUNCTION_16();
    v6 = OUTLINED_FUNCTION_2_3();
    [v4 setAlpha:{-[CSCoverSheetAppearanceResolver _alphaForTransitionFromHidden:toHidden:unhiddenAlpha:timingFunction:](v6, v7, v8, v9)}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (CSCoverSheetAppearanceResolver)init
{
  v30.receiver = self;
  v30.super_class = CSCoverSheetAppearanceResolver;
  v2 = [(CSCoverSheetAppearanceResolver *)&v30 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D65F58]);
    interactiveAnimationCalculator = v2->_interactiveAnimationCalculator;
    v2->_interactiveAnimationCalculator = v3;

    v5 = v2->_interactiveAnimationCalculator;
    v6 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B0]];
    [(SBFSteppedAnimationTimingFunctionCalculator *)v5 addTimingFunction:v6 withName:@"backgroundStyle"];

    v7 = v2->_interactiveAnimationCalculator;
    v8 = *MEMORY[0x277CDA7A8];
    v9 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7A8]];
    [(SBFSteppedAnimationTimingFunctionCalculator *)v7 addTimingFunction:v9 withName:@"dateViewAlpha"];

    v10 = v2->_interactiveAnimationCalculator;
    v11 = [MEMORY[0x277CD9EF8] functionWithName:v8];
    [(SBFSteppedAnimationTimingFunctionCalculator *)v10 addTimingFunction:v11 withName:@"statusBarAlpha"];

    v12 = v2->_interactiveAnimationCalculator;
    v13 = [MEMORY[0x277CD9EF8] functionWithName:v8];
    [(SBFSteppedAnimationTimingFunctionCalculator *)v12 addTimingFunction:v13 withName:@"fixedFooterAlpha"];

    v14 = v2->_interactiveAnimationCalculator;
    v15 = [MEMORY[0x277CD9EF8] functionWithName:v8];
    [(SBFSteppedAnimationTimingFunctionCalculator *)v14 addTimingFunction:v15 withName:@"pageContentAlpha"];

    v16 = v2->_interactiveAnimationCalculator;
    v17 = *MEMORY[0x277CDA7B8];
    v18 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
    [(SBFSteppedAnimationTimingFunctionCalculator *)v16 addTimingFunction:v18 withName:@"proudLockAlpha"];

    v19 = v2->_interactiveAnimationCalculator;
    v20 = [MEMORY[0x277CD9EF8] functionWithName:v8];
    [(SBFSteppedAnimationTimingFunctionCalculator *)v19 addTimingFunction:v20 withName:@"legibilitySettings"];

    v21 = v2->_interactiveAnimationCalculator;
    v22 = [MEMORY[0x277CD9EF8] functionWithName:v8];
    [(SBFSteppedAnimationTimingFunctionCalculator *)v21 addTimingFunction:v22 withName:@"homeAffordance"];

    v23 = v2->_interactiveAnimationCalculator;
    v24 = [MEMORY[0x277CD9EF8] functionWithName:v8];
    [(SBFSteppedAnimationTimingFunctionCalculator *)v23 addTimingFunction:v24 withName:@"controlCenterGrabber"];

    v25 = v2->_interactiveAnimationCalculator;
    v26 = [MEMORY[0x277CD9EF8] functionWithName:v8];
    [(SBFSteppedAnimationTimingFunctionCalculator *)v25 addTimingFunction:v26 withName:@"complicationContainer"];

    v27 = v2->_interactiveAnimationCalculator;
    v28 = [MEMORY[0x277CD9EF8] functionWithName:v17];
    [(SBFSteppedAnimationTimingFunctionCalculator *)v27 addTimingFunction:v28 withName:@"notificationDimViewAlpha"];
  }

  return v2;
}

- (id)newActiveAppearanceGivenDesiredAppearance:(id)a3 oldAppearance:(id)a4 activeAppearance:(id)a5 activeBehavior:(id)a6 startIndex:(unint64_t)a7 targetIndex:(unint64_t)a8 indexOfMainPage:(unint64_t)a9 targetAppearance:(id)a10 modalAppearance:(id)a11 currentTransitionSource:(id)a12 contentTransitionIsAtCoverSheetLevel:(BOOL)a13 legibilityProvider:(id)a14 bounds:(CGRect)a15 whitePointValues:(id)a16 hasContentAboveCoverSheet:(BOOL)a17
{
  height = a15.size.height;
  width = a15.size.width;
  y = a15.origin.y;
  x = a15.origin.x;
  v73 = a3;
  v72 = a4;
  v26 = a5;
  v27 = a6;
  v71 = a10;
  v70 = a11;
  v69 = a12;
  v68 = a14;
  objc_storeStrong(&self->_desiredAppearance, a3);
  v28 = a16;
  objc_storeStrong(&self->_oldAppearance, a4);
  self->_activeBehavior = v27;
  self->_startIndex = a7;
  self->_targetIndex = a8;
  self->_indexOfMainPage = a9;
  objc_storeStrong(&self->_targetAppearance, a10);
  objc_storeStrong(&self->_modalAppearance, a11);
  objc_storeStrong(&self->_currentTransitionSource, a12);
  self->_contentTransitionIsAtCoverSheetLevel = a13;
  objc_storeStrong(&self->_legibilityProvider, a14);
  self->_bounds.origin.x = x;
  self->_bounds.origin.y = y;
  self->_bounds.size.width = width;
  self->_bounds.size.height = height;
  v29 = [v28 copy];

  whitePointValues = self->_whitePointValues;
  self->_whitePointValues = v29;

  self->_hasContentAboveCoverSheet = a17;
  self->_fraction = 1.0;
  v31 = [(CSCoverSheetViewTransitionSource *)self->_currentTransitionSource isTransitioning];
  self->_isTransitioning = v31;
  if (v31)
  {
    currentTransitionSource = self->_currentTransitionSource;
    if (currentTransitionSource)
    {
      [(CSCoverSheetViewTransitionSource *)currentTransitionSource transitionContext];
    }

    BSIntervalFractionForValue();
    self->_fraction = v33;
  }

  BSIntervalClip();
  self->_appearanceFraction = v34;
  [(SBFSteppedAnimationTimingFunctionCalculator *)self->_interactiveAnimationCalculator setPercentComplete:?];
  v35 = [(CSCoverSheetAppearanceResolver *)self _resolveLegibilitySettings];
  [v26 setLegibilitySettings:v35];

  v36 = [(CSCoverSheetAppearanceResolver *)self _resolveBackgroundComponent];
  [v26 addComponent:v36];

  v37 = [(CSCoverSheetAppearanceResolver *)self _resolveDateViewComponent];
  [v26 addComponent:v37];

  v38 = [(CSCoverSheetAppearanceResolver *)self _resolveComplicationContainerComponent];
  [v26 addComponent:v38];

  v39 = [(CSCoverSheetAppearanceResolver *)self _resolveRemoteInlineContentComponent];
  [v26 addComponent:v39];

  v40 = [(CSCoverSheetAppearanceResolver *)self _resolveStatusBarBackgroundComponent];
  [v26 addComponent:v40];

  v41 = [(CSCoverSheetAppearanceResolver *)self _resolveStatusBarComponent];
  [v26 addComponent:v41];

  v42 = [(CSCoverSheetAppearanceResolver *)self _resolvePageContentComponent];
  [v26 addComponent:v42];

  v43 = [(CSCoverSheetAppearanceResolver *)self _resolveProudLockComponent];
  [v26 addComponent:v43];

  v44 = [(CSCoverSheetAppearanceResolver *)self _resolveHomeAffordanceComponent];
  [v26 addComponent:v44];

  v45 = [(CSCoverSheetAppearanceResolver *)self _resolveComponentWithType:3];
  [v26 addComponent:v45];

  v46 = [(CSCoverSheetAppearanceResolver *)self _resolveComponentWithType:10];
  [v26 addComponent:v46];

  v47 = [v26 componentForType:12 identifier:@"(active)"];
  v48 = [(CSCoverSheetAppearanceResolver *)self _resolveFooterCallToActionLabelComponentWithHomeAffordance:v47];
  [v26 addComponent:v48];

  v49 = [(CSCoverSheetAppearanceResolver *)self _resolveControlCenterGrabberComponent];
  [v26 addComponent:v49];

  v50 = [(CSCoverSheetAppearanceResolver *)self _resolveQuickActionsComponent];
  [v26 addComponent:v50];

  v51 = [(CSCoverSheetAppearanceResolver *)self _resolveSlideableContentComponent];
  [v26 addComponent:v51];

  v52 = [(CSCoverSheetAppearanceResolver *)self _resolveWallpaperComponent];
  [v26 addComponent:v52];

  v53 = [(CSCoverSheetAppearanceResolver *)self _resolveTintingComponent];
  [v26 addComponent:v53];

  v54 = [(CSCoverSheetAppearanceResolver *)self _resolveContentComponent];
  [v26 addComponent:v54];

  v55 = [(CSCoverSheetAppearanceResolver *)self _resolveModalContentComponent];
  [v26 addComponent:v55];

  v56 = [(CSCoverSheetAppearanceResolver *)self _resolveStatusBarGradientComponent];
  [v26 addComponent:v56];

  v57 = [(CSCoverSheetAppearanceResolver *)self _resolvePoseidonComponent];
  [v26 addComponent:v57];

  v58 = [(CSCoverSheetAppearanceResolver *)self _resolveWhitePointComponent];
  [v26 addComponent:v58];

  v59 = [(CSCoverSheetAppearanceResolver *)self _resolveWallpaperFloatingLayerComponent];
  [v26 addComponent:v59];

  v60 = [(CSCoverSheetAppearanceResolver *)self _resolveBackgroundContentComponent];
  [v26 addComponent:v60];

  v61 = [(CSCoverSheetAppearanceResolver *)self _resolveComplicationSidebarComponent];
  [v26 addComponent:v61];

  v62 = [(CSCoverSheetAppearanceResolver *)self _resolveFullBleedContentComponent];
  [v26 addComponent:v62];

  v63 = [(CSCoverSheetAppearanceResolver *)self _resolveDimmingLayerComponent];
  [v26 addComponent:v63];

  v64 = [(CSCoverSheetAppearanceResolver *)self _resolveNotificationDimmingLayerComponent];
  [v26 addComponent:v64];

  return v26;
}

- (CGRect)bounds
{
  x = self->_bounds.origin.x;
  y = self->_bounds.origin.y;
  width = self->_bounds.size.width;
  height = self->_bounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)_resolveNotificationDimmingLayerComponent
{
  if (a1)
  {
    objc_opt_new();
    OUTLINED_FUNCTION_3_2();
    v4 = [v3 priority:?];

    [*(a1 + 56) componentForType:28 identifier:@"(active)"];
    objc_claimAutoreleasedReturnValue();
    v5 = [OUTLINED_FUNCTION_5_0() componentForType:28 property:1];
    v6 = [v5 isHidden];

    OUTLINED_FUNCTION_19();
    [v1 isHidden];
    v7 = OUTLINED_FUNCTION_4_0();
    [v4 setAlpha:{-[CSCoverSheetAppearanceResolver _alphaForTransitionFromHidden:toHidden:unhiddenAlpha:timingFunction:](v7, v8, v6, v9)}];
    v10 = [*(a1 + 48) componentForType:28 property:1024];
    [v10 animationDuration];
    [v4 setAnimationDuration:?];

    v11 = [*(a1 + 48) componentForType:28 property:4];
    [v11 value];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_10() setValue:?];

    v12 = [*(a1 + 48) componentForType:28 property:2];
    [v12 offset];
    v14 = v13;
    v16 = v15;

    [v4 setOffset:{v14, v16}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (double)_scaleForTransitionFromScale:(uint64_t)a1 toScale:timingFunction:
{
  if (!a1)
  {
    return 0.0;
  }

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_6_0();
  return [(CSCoverSheetAppearanceResolver *)v1 _valueForTransitionInterval:v2 timingFunction:v3];
}

- (double)_offsetForTransitionFromOffset:(uint64_t)a1 toOffset:timingFunction:
{
  if (!a1)
  {
    return 0.0;
  }

  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_6_0();
  v4 = [(CSCoverSheetAppearanceResolver *)v2 _valueForTransitionInterval:v3 timingFunction:0];
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_6_0();
  [(CSCoverSheetAppearanceResolver *)a1 _valueForTransitionInterval:v5 timingFunction:0];
  return v4;
}

- (double)_dateViewAlphaForCurrentWakeState
{
  if (!a1)
  {
    return 0.0;
  }

  v1 = [MEMORY[0x277D65FB8] rootSettings];
  [v1 awakeDateAlpha];
  v3 = v2;

  return v3;
}

- (double)_alphaForTransitionFromHidden:(uint64_t)a1 toHidden:(uint64_t)a2 unhiddenAlpha:(uint64_t)a3 timingFunction:(void *)a4
{
  if (!a1)
  {
    return 0.0;
  }

  v4 = a4;
  BSEqualBools();
  OUTLINED_FUNCTION_11();
  v5 = OUTLINED_FUNCTION_14();
  v8 = [(CSCoverSheetAppearanceResolver *)v5 _valueForTransitionInterval:v6 timingFunction:v7];

  return v8;
}

- (double)_alphaForTransitionFromHidden:(uint64_t)a3 toHidden:(void *)a4 timingFunction:
{
  if (a1)
  {
    return [CSCoverSheetAppearanceResolver _alphaForTransitionFromHidden:a1 toHidden:a2 unhiddenAlpha:a3 timingFunction:a4];
  }

  else
  {
    return 0.0;
  }
}

- (double)_finalizeOffset:(uint64_t)a1 referenceFrame:(double)a2
{
  if (!a1)
  {
    return 0.0;
  }

  if (BSFloatEqualToFloat())
  {
    v5.origin.x = OUTLINED_FUNCTION_21();
    CGRectGetHeight(v5);
  }

  if (BSFloatEqualToFloat())
  {
    v6.origin.x = OUTLINED_FUNCTION_21();
    Width = CGRectGetWidth(v6);
    if (a2 >= 0.0)
    {
      return Width;
    }

    else
    {
      return -Width;
    }
  }

  return a2;
}

- (id)_resolveComponentWithType:(int64_t)a3
{
  [CSComponent componentWithType:?];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_2();
  v7 = [v6 priority:?];

  [(CSAppearance *)self->_oldAppearance componentForType:a3 identifier:@"(active)"];
  objc_claimAutoreleasedReturnValue();
  v8 = [OUTLINED_FUNCTION_5_0() componentForType:a3 property:1];
  [v8 isHidden];
  [OUTLINED_FUNCTION_8_0() setHidden:?];

  v9 = [v3 isHidden];
  [v7 isHidden];
  v10 = OUTLINED_FUNCTION_4_0();
  [v7 setAlpha:{-[CSCoverSheetAppearanceResolver _alphaForTransitionFromHidden:toHidden:unhiddenAlpha:timingFunction:](v10, v9, v11, v12)}];
  v13 = [(CSAppearance *)self->_desiredAppearance componentForType:a3 property:128];
  v14 = [v13 transitionModifiers];

  v15 = [(CSAppearance *)self->_desiredAppearance componentForType:a3 property:256, OUTLINED_FUNCTION_1_5()];
  v16 = v15;
  if (v15)
  {
    [v15 transitionInputs];
  }

  else
  {
    OUTLINED_FUNCTION_1_5();
  }

  if ((v14 & 8) != 0)
  {
    [v3 offset];
    [v7 setOffset:-[CSCoverSheetAppearanceResolver _offsetForTransitionFromOffset:toOffset:timingFunction:](self)];
    OUTLINED_FUNCTION_7_0(v18, v19, v20, v21, v22, v23, v24, v25, v36);
    if ((v14 & 0x10) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((v14 & 0x10) == 0)
  {
    goto LABEL_6;
  }

  [v3 scale];
  OUTLINED_FUNCTION_0_10();
  [v7 setScale:{OUTLINED_FUNCTION_17(v26, v27)}];
  OUTLINED_FUNCTION_7_0(v28, v29, v30, v31, v32, v33, v34, v35, v36);
LABEL_6:

  return v7;
}

- (id)_resolveFooterCallToActionLabelComponentWithHomeAffordance:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [v5 priority:100];

  v7 = [(CSAppearance *)self->_oldAppearance componentForType:9 identifier:@"(active)"];
  v8 = [(CSAppearance *)self->_desiredAppearance componentForType:9 property:1];
  v9 = [v8 isHidden];

  if (SBFEffectiveHomeButtonType() == 2)
  {
    v10 = [v4 isHidden];
  }

  else
  {
    v10 = 0;
  }

  [v6 setHidden:(v9 | v10) & 1];
  v11 = [v7 isHidden];
  [v6 isHidden];
  v12 = OUTLINED_FUNCTION_4_0();
  [v6 setAlpha:{-[CSCoverSheetAppearanceResolver _alphaForTransitionFromHidden:toHidden:unhiddenAlpha:timingFunction:](v12, v11, v13, v14)}];

  return v6;
}

- (uint64_t)_levelForTransitionFromLevel:(uint64_t)a3 toLevel:
{
  if (!a1)
  {
    return 0;
  }

  if (*(a1 + 16) == 1 && BSFloatIsZero())
  {
    return a2;
  }

  return a3;
}

- (double)_valueForTransitionInterval:(void *)a3 timingFunction:
{
  v5 = a3;
  if (a1)
  {
    OUTLINED_FUNCTION_20();
    if (v6)
    {
      if (v5)
      {
        [*(a1 + 8) valueForFunctionWithName:v5];
      }

      BSIntervalValueForFraction();
      v7 = v8;
    }

    else
    {
      v7 = *(a2 + 16);
    }
  }

  else
  {
    v7 = 0.0;
  }

  return v7;
}

- (uint64_t)_resolveContentComponent
{
  [a1 offset];
  [a4 setOffset:-[CSCoverSheetAppearanceResolver _offsetForTransitionFromOffset:toOffset:timingFunction:](a3)];
  return [a4 setAnimationDuration:*a2];
}

@end