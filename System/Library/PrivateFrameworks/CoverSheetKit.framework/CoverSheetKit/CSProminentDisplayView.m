@interface CSProminentDisplayView
+ (NSHashTable)overrideObservingDisplayViews;
+ (id)_startObservingSystemStatusOverridesIfNeededAndFetchInitialOverride;
- (CSProminentDisplayView)initWithFrame:(CGRect)a3;
- (double)_contentAlphaForElement:(unint64_t)a3;
- (id)_complicationsSuperview;
- (id)_effectiveDisplayDate;
- (int64_t)_keyForElement:(unint64_t)a3;
- (void)_addComplicationSubview:(id)a3;
- (void)_applyAlphaToNonTransientSubtitleViews:(double)a3;
- (void)_applyContainerOrientationToVibrancyShadowView:(int64_t)a3;
- (void)_handleNewContentAlpha:(double)a3 forElement:(unint64_t)a4;
- (void)_setContentAlpha:(double)a3 forElement:(unint64_t)a4;
- (void)_setOverrideDate:(id)a3;
- (void)_setUpTimeStringOverriding;
- (void)_showTransientSubtitleView:(id)a3 withDelay:(double)a4;
- (void)_transitionToNextPendedSubtitleIfNecessaryWithDelay:(double)a3;
- (void)_updateAlphaForNonTransientSubtitleViews;
- (void)_updateEffectiveDisplayDate;
- (void)_updateVisibilityForNonTransientSubtitleViews;
- (void)layoutSubviews;
- (void)setComplicationBottomRowView:(id)a3;
- (void)setComplicationRowView:(id)a3;
- (void)setComplicationSidebarView:(id)a3;
- (void)setContentAlpha:(double)a3 forElements:(unint64_t)a4;
- (void)setCustomSubtitleView:(id)a3;
- (void)setDisplayDate:(id)a3;
- (void)setHidesTimeViewForTransientSubtitle:(BOOL)a3;
- (void)setNumberingSystem:(int64_t)a3;
- (void)setShouldApplyVibrancyToComplications:(BOOL)a3;
- (void)setSubtitleAlpha:(double)a3;
- (void)setSubtitleComplicationView:(id)a3;
- (void)setSubtitleDimmingView:(id)a3;
- (void)setSubtitleView:(id)a3;
- (void)setTimeView:(id)a3;
- (void)setTransientSubtitleView:(id)a3;
- (void)setUsesEditingLayout:(BOOL)a3;
- (void)setVibrancyShadowView:(id)a3;
- (void)updateContainerOrientationForBackgroundViews:(int64_t)a3;
@end

@implementation CSProminentDisplayView

- (void)_updateEffectiveDisplayDate
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [(CSProminentDisplayView *)self _effectiveDisplayDate];
  v4 = CSLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1A2D63000, v4, OS_LOG_TYPE_DEFAULT, "CSProminentDisplayView updating effective display date with date: %@", &v5, 0xCu);
  }

  [(CSProminentTimeView *)self->_timeView setDate:v3];
  [(CSProminentTextElementView *)self->_subtitleView setDate:v3];
  [(CSProminentLayoutController *)self->_layoutController setFourDigitTime:[(CSProminentTimeView *)self->_timeView fourDigitTime]];
}

- (id)_effectiveDisplayDate
{
  overrideDate = self->_overrideDate;
  if (!overrideDate)
  {
    overrideDate = self->_displayDate;
  }

  return overrideDate;
}

- (CSProminentDisplayView)initWithFrame:(CGRect)a3
{
  v27.receiver = self;
  v27.super_class = CSProminentDisplayView;
  v3 = [(CSProminentDisplayView *)&v27 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [[CSProminentLayoutController alloc] initWithTraitEnvironment:v3];
    layoutController = v3->_layoutController;
    v3->_layoutController = v4;

    v3->_subtitleAlpha = 1.0;
    [(CSProminentDisplayView *)v3 bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v6, v8, v10, v12}];
    dimmableLayersContainer = v3->_dimmableLayersContainer;
    v3->_dimmableLayersContainer = v14;

    [(CSProminentDisplayView *)v3 addSubview:v3->_dimmableLayersContainer];
    v16 = [[_CSProminentDisplayBackgroundWrapperView alloc] initWithFrame:v7, v9, v11, v13];
    backgroundWrapperView = v3->_backgroundWrapperView;
    v3->_backgroundWrapperView = v16;

    v18 = [objc_alloc(MEMORY[0x1E698E800]) initWithFrame:{v7, v9, v11, v13}];
    backgroundTransformView = v3->_backgroundTransformView;
    v3->_backgroundTransformView = v18;

    [(BSUIOrientationTransformWrapperView *)v3->_backgroundTransformView setContainerOrientation:1];
    [(BSUIOrientationTransformWrapperView *)v3->_backgroundTransformView setContentOrientation:1];
    [(BSUIOrientationTransformWrapperView *)v3->_backgroundTransformView addContentView:v3->_backgroundWrapperView];
    [(BSUIOrientationTransformWrapperView *)v3->_backgroundTransformView setCounterTransformView:1];
    [(CSProminentDisplayView *)v3 addSubview:v3->_backgroundTransformView];
    v20 = [objc_alloc(MEMORY[0x1E698E818]) initWithFrame:{v7, v9, v11, v13}];
    timeVibrancyEffectView = v3->_timeVibrancyEffectView;
    v3->_timeVibrancyEffectView = v20;

    [(CSProminentDisplayView *)v3 addSubview:v3->_timeVibrancyEffectView];
    v22 = [objc_alloc(MEMORY[0x1E698E818]) initWithFrame:{v7, v9, v11, v13}];
    subtitleVibrancyEffectView = v3->_subtitleVibrancyEffectView;
    v3->_subtitleVibrancyEffectView = v22;

    [(CSProminentDisplayView *)v3 addSubview:v3->_subtitleVibrancyEffectView];
    v24 = [MEMORY[0x1E695DF70] array];
    pendedTransientSubtitleViews = v3->_pendedTransientSubtitleViews;
    v3->_pendedTransientSubtitleViews = v24;

    [(CSProminentDisplayView *)v3 _setUpTimeStringOverriding];
  }

  return v3;
}

- (void)layoutSubviews
{
  v143.receiver = self;
  v143.super_class = CSProminentDisplayView;
  [(CSProminentDisplayView *)&v143 layoutSubviews];
  [(CSProminentDisplayView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(BSUIOrientationTransformWrapperView *)self->_backgroundTransformView setFrame:?];
  [(UIView *)self->_dimmableLayersContainer setFrame:v4, v6, v8, v10];
  v11 = [(CSProminentDisplayView *)self layoutController];
  if ([(CSProminentDisplayView *)self shouldApplyVibrancyToComplications])
  {
    v12 = [MEMORY[0x1E698E730] sharedInstance];
    v13 = [v12 deviceClass] == 2;

    v14 = [(CSProminentDisplayView *)self complicationRowView];

    if (v14)
    {
      v15 = (16 * v13) | 8;
    }

    else
    {
      v15 = 16 * v13;
    }

    v16 = [(CSProminentDisplayView *)self complicationBottomRowView];

    if (v16)
    {
      v17 = v15 | 0x20;
    }

    else
    {
      v17 = v15;
    }
  }

  else
  {
    v17 = 0;
  }

  if (self->_usesEditingLayout)
  {
    [v11 frameForElements:v17 variant:2 withBoundingRect:{v4, v6, v8, v10}];
    v19 = v18;
    v21 = v20;
    v121 = v23;
    v122 = v22;
    [v11 frameForElements:2 variant:2 withBoundingRect:{v4, v6, v8, v10}];
    v136 = v24;
    v133 = v26;
    v134 = v25;
    v132 = v27;
    [v11 frameForElements:4 variant:2 withBoundingRect:{v4, v6, v8, v10}];
    v119 = v29;
    v120 = v28;
    rect_16 = v31;
    rect_24 = v30;
    [v11 frameForElements:1 variant:2 withBoundingRect:{v4, v6, v8, v10}];
    v33 = v32;
    v139 = v34;
    Width = v35;
    v141 = v36;
    [v11 frameForElements:8 variant:2 withBoundingRect:{v4, v6, v8, v10}];
    v137 = v38;
    v138 = v37;
    v127 = v39;
    v135 = v40;
    [v11 frameForElements:16 variant:2 withBoundingRect:{v4, v6, v8, v10}];
    v130 = v42;
    v131 = v41;
    v128 = v44;
    v129 = v43;
    [v11 frameForElements:32 variant:2 withBoundingRect:{v4, v6, v8, v10}];
  }

  else
  {
    [v11 frameForElements:v17 withBoundingRect:{v4, v6, v8, v10}];
    v19 = v49;
    v21 = v50;
    v121 = v52;
    v122 = v51;
    [v11 frameForElements:2 withBoundingRect:{v4, v6, v8, v10}];
    v136 = v53;
    v133 = v55;
    v134 = v54;
    v132 = v56;
    [v11 frameForElements:4 withBoundingRect:{v4, v6, v8, v10}];
    v119 = v58;
    v120 = v57;
    rect_16 = v60;
    rect_24 = v59;
    [v11 frameForElements:1 withBoundingRect:{v4, v6, v8, v10}];
    v33 = v61;
    v139 = v62;
    Width = v63;
    v141 = v64;
    [v11 frameForElements:8 withBoundingRect:{v4, v6, v8, v10}];
    v137 = v66;
    v138 = v65;
    v127 = v67;
    v135 = v68;
    [v11 frameForElements:16 withBoundingRect:{v4, v6, v8, v10}];
    v130 = v70;
    v131 = v69;
    v128 = v72;
    v129 = v71;
    [v11 frameForElements:32 withBoundingRect:{v4, v6, v8, v10}];
  }

  v125 = v46;
  v126 = v45;
  v123 = v48;
  v124 = v47;
  if ([(CSProminentTimeView *)self->_timeView adaptsTextHeight]&& [(CSProminentTimeView *)self->_timeView supportsAdaptiveTextHeight])
  {
    [(CSProminentTimeView *)self->_timeView maximumAdaptiveTextHeight];
    v74 = v73;
    [(CSProminentTimeView *)self->_timeView minimumAdaptiveTextHeight];
    rect = v33;
    v76 = v75;
    [(CSProminentTimeView *)self->_timeView adaptiveTextHeight];
    if (v76 >= v77)
    {
      v77 = v76;
    }

    if (v74 > v77)
    {
      v74 = v77;
    }

    [(CSProminentTimeView *)self->_timeView minimumAdaptiveTextHeight];
    rect_8 = v21;
    v78 = v19;
    v80 = v74 - v79;
    [(CSProminentTimeView *)self->_timeView maximumAdaptiveTextHeight];
    v82 = v81;
    [(CSProminentTimeView *)self->_timeView minimumAdaptiveTextHeight];
    v84 = v83;
    v144.origin.x = rect;
    v144.origin.y = v139;
    v144.size.width = Width;
    v144.size.height = v141;
    Height = CGRectGetHeight(v144);
    if (v84 >= Height)
    {
      Height = v84;
    }

    if (v82 <= Height)
    {
      Height = v82;
    }

    v141 = v80 + Height;
    v19 = v78;
    v21 = rect_8;
    v145.origin.x = v4;
    v145.origin.y = v6;
    v145.size.width = v8;
    v145.size.height = v10;
    Width = CGRectGetWidth(v145);
    v33 = 0.0;
  }

  [(BSUIVibrancyEffectView *)self->_vibrancyEffectView setFrame:v19, v21, v122, v121];
  [(BSUIVibrancyEffectView *)self->_timeVibrancyEffectView setFrame:v33, v139, Width, v141];
  [(BSUIVibrancyEffectView *)self->_subtitleVibrancyEffectView setFrame:v120, v119, rect_24, rect_16];
  v86 = [(BSUIVibrancyEffectView *)self->_subtitleVibrancyEffectView contentView];
  [v86 convertRect:self fromView:{v120, v119, rect_24, rect_16}];
  v88 = v87;
  v90 = v89;
  v92 = v91;
  v94 = v93;

  [(CSProminentEmptyElementView *)self->_subtitleComplicationView setFrame:v88, v90, v92, v94];
  v95 = [(BSUIVibrancyEffectView *)self->_subtitleVibrancyEffectView contentView];
  [v95 convertRect:self fromView:{v136, v134, v133, v132}];
  v97 = v96;
  v99 = v98;
  v101 = v100;
  v103 = v102;

  [(CSProminentTextElementView *)self->_subtitleView setFrame:v97, v99, v101, v103];
  [(CSProminentTextElementView *)self->_customSubtitleView setFrame:v97, v99, v101, v103];
  [(CSProminentTextElementView *)self->_transientSubtitleView setFrame:v97, v99, v101, v103];
  v104 = [(BSUIVibrancyEffectView *)self->_timeVibrancyEffectView contentView];
  [v104 convertRect:self fromView:{v33, v139, Width, v141}];
  v106 = v105;
  v108 = v107;
  v110 = v109;
  v112 = v111;

  timeView = self->_timeView;
  if (timeView)
  {
    [(CSProminentTimeView *)timeView transform];
  }

  else
  {
    memset(&v142, 0, sizeof(v142));
  }

  if (CGAffineTransformIsIdentity(&v142))
  {
    [(CSProminentTimeView *)self->_timeView setFrame:v106, v108, v110, v112];
  }

  v114 = [(CSProminentDisplayView *)self _complicationsSuperview];
  [v114 convertRect:self fromView:{v138, v137, v127, v135}];
  [(CSProminentEmptyElementView *)self->_complicationRowView setFrame:?];
  [v114 convertRect:self fromView:{v131, v130, v129, v128}];
  [(CSProminentEmptyElementView *)self->_complicationSidebarView setFrame:?];
  [v114 convertRect:self fromView:{v126, v125, v124, v123}];
  [(CSProminentEmptyElementView *)self->_complicationBottomRowView setFrame:?];
}

- (void)setVibrancyShadowView:(id)a3
{
  v5 = a3;
  vibrancyShadowView = self->_vibrancyShadowView;
  if (vibrancyShadowView != v5)
  {
    v8 = v5;
    [(BSUIVibrancyShadowView *)vibrancyShadowView removeFromSuperview];
    objc_storeStrong(&self->_vibrancyShadowView, a3);
    v7 = self->_vibrancyShadowView;
    [(CSProminentDisplayView *)self _contentAlphaForElement:64];
    [(BSUIVibrancyShadowView *)v7 setAlpha:?];
    vibrancyShadowView = [(_CSProminentDisplayBackgroundWrapperView *)self->_backgroundWrapperView setWrappedView:v8];
    v5 = v8;
  }

  MEMORY[0x1EEE66BB8](vibrancyShadowView, v5);
}

- (void)setTimeView:(id)a3
{
  v5 = a3;
  timeView = self->_timeView;
  if (timeView != v5)
  {
    v9 = v5;
    [(CSProminentTimeView *)timeView removeFromSuperview];
    objc_storeStrong(&self->_timeView, a3);
    [(CSProminentDisplayView *)self _contentAlphaForElement:1];
    [(CSProminentTimeView *)self->_timeView setAlpha:?];
    v7 = [(CSProminentDisplayView *)self timeVibrancyEffectView];
    v8 = [v7 contentView];
    [v8 addSubview:self->_timeView];

    v5 = v9;
  }

  MEMORY[0x1EEE66BB8](timeView, v5);
}

- (void)setHidesTimeViewForTransientSubtitle:(BOOL)a3
{
  if (self->_hidesTimeViewForTransientSubtitle != a3)
  {
    self->_hidesTimeViewForTransientSubtitle = a3;
    if (a3)
    {
      [(CSProminentDisplayView *)self _showTransientSubtitleView:0 withDelay:0.0];
    }
  }
}

- (void)setSubtitleView:(id)a3
{
  v5 = a3;
  subtitleView = self->_subtitleView;
  if (subtitleView != v5)
  {
    v9 = v5;
    [(CSProminentTextElementView *)subtitleView removeFromSuperview];
    objc_storeStrong(&self->_subtitleView, a3);
    [(CSProminentDisplayView *)self _updateAlphaForNonTransientSubtitleViews];
    [(CSProminentDisplayView *)self _updateVisibilityForNonTransientSubtitleViews];
    v7 = [(CSProminentDisplayView *)self subtitleVibrancyEffectView];
    v8 = [v7 contentView];
    [v8 addSubview:self->_subtitleView];

    v5 = v9;
  }

  MEMORY[0x1EEE66BB8](subtitleView, v5);
}

- (void)setTransientSubtitleView:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (v4)
  {
    [v4 setAlpha:self->_subtitleAlpha];
    v5 = [(CSProminentTextElementView *)self->_transientSubtitleView textLabel];
    v6 = [v5 text];

    v7 = [v9 textLabel];
    v8 = [v7 text];

    if (![v6 isEqualToString:v8] || -[NSMutableArray count](self->_pendedTransientSubtitleViews, "count"))
    {
      self->_hasClearedSinceLastAddedTransient = 0;
      [(NSMutableArray *)self->_pendedTransientSubtitleViews addObject:v9];
      [(CSProminentDisplayView *)self _transitionToNextPendedSubtitleIfNecessary];
    }
  }

  else
  {
    if ([(NSMutableArray *)self->_pendedTransientSubtitleViews count])
    {
      [(NSMutableArray *)self->_pendedTransientSubtitleViews removeAllObjects];
    }

    self->_hasClearedSinceLastAddedTransient = 1;
    if (!self->_animatingTransientSubtitleTransition)
    {
      [(CSProminentDisplayView *)self _showTransientSubtitleView:0 withDelay:0.25];
    }
  }
}

- (void)setCustomSubtitleView:(id)a3
{
  v5 = a3;
  customSubtitleView = self->_customSubtitleView;
  if (customSubtitleView != v5)
  {
    v9 = v5;
    [(CSProminentTextElementView *)customSubtitleView removeFromSuperview];
    objc_storeStrong(&self->_customSubtitleView, a3);
    [(CSProminentDisplayView *)self _updateAlphaForNonTransientSubtitleViews];
    [(CSProminentDisplayView *)self _updateVisibilityForNonTransientSubtitleViews];
    v7 = [(CSProminentDisplayView *)self subtitleVibrancyEffectView];
    v8 = [v7 contentView];
    [v8 addSubview:self->_customSubtitleView];

    v5 = v9;
  }

  MEMORY[0x1EEE66BB8](customSubtitleView, v5);
}

- (void)setSubtitleAlpha:(double)a3
{
  subtitleAlpha = self->_subtitleAlpha;
  self->_subtitleAlpha = a3;
  [(CSProminentTextElementView *)self->_transientSubtitleView setAlpha:?];
  [(CSProminentDisplayView *)self _applyAlphaToNonTransientSubtitleViews:a3];
  if (BSFloatIsZero() && subtitleAlpha != a3 && ([MEMORY[0x1E69DD250] _isInAnimationBlockWithAnimationsEnabled] & 1) == 0)
  {
    v6 = [(CSProminentTextElementView *)self->_subtitleView layer];
    [v6 removeAnimationForKey:@"opacity"];

    v7 = [(CSProminentEmptyElementView *)self->_subtitleComplicationView layer];
    [v7 removeAnimationForKey:@"opacity"];

    v8 = [(CSProminentTextElementView *)self->_transientSubtitleView layer];
    [v8 removeAnimationForKey:@"opacity"];

    v9 = [(CSProminentTextElementView *)self->_customSubtitleView layer];
    [v9 removeAnimationForKey:@"opacity"];
  }
}

- (void)updateContainerOrientationForBackgroundViews:(int64_t)a3
{
  [(BSUIOrientationTransformWrapperView *)self->_backgroundTransformView setContainerOrientation:?];
  [(_CSProminentDisplayBackgroundWrapperView *)self->_backgroundWrapperView layoutIfNeeded];

  [(CSProminentDisplayView *)self _applyContainerOrientationToVibrancyShadowView:a3];
}

- (double)_contentAlphaForElement:(unint64_t)a3
{
  v4 = [(CSProminentDisplayView *)self _keyForElement:a3];
  if (v4 == -1)
  {
    return 0.1337;
  }

  contentAlphas = self->_contentAlphas;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:v4];
  v7 = [(NSMutableDictionary *)contentAlphas objectForKey:v6];

  if (v7)
  {
    [v7 doubleValue];
    v9 = v8;
  }

  else
  {
    v9 = 0.0;
  }

  return v9;
}

- (void)setContentAlpha:(double)a3 forElements:(unint64_t)a4
{
  if (!self->_contentAlphas)
  {
    v7 = [MEMORY[0x1E695DF90] dictionary];
    contentAlphas = self->_contentAlphas;
    self->_contentAlphas = v7;
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v14 = __54__CSProminentDisplayView_setContentAlpha_forElements___block_invoke;
  v15 = &unk_1E76BA310;
  v16 = self;
  v17 = a3;
  v9 = v13;
  if (a4)
  {
    v10 = 0;
    v18 = 0;
    v11 = vcnt_s8(a4);
    v11.i16[0] = vaddlv_u8(v11);
    v12 = v11.i32[0];
    do
    {
      if (((1 << v10) & a4) != 0)
      {
        (v14)(v9);
        if (v18)
        {
          break;
        }

        --v12;
      }

      if (v10 > 0x3E)
      {
        break;
      }

      ++v10;
    }

    while (v12 > 0);
  }
}

- (void)_setContentAlpha:(double)a3 forElement:(unint64_t)a4
{
  v7 = [(CSProminentDisplayView *)self _keyForElement:?];
  if (v7 != -1)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithInteger:v7];
    v8 = [(NSMutableDictionary *)self->_contentAlphas objectForKey:?];
    [v8 doubleValue];
    if (v8)
    {
      v10 = v9 == a3;
    }

    else
    {
      v10 = 0;
    }

    if (!v10)
    {
      contentAlphas = self->_contentAlphas;
      v12 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
      [(NSMutableDictionary *)contentAlphas setObject:v12 forKey:v13];

      [(CSProminentDisplayView *)self _handleNewContentAlpha:a4 forElement:a3];
    }
  }
}

- (void)_handleNewContentAlpha:(double)a3 forElement:(unint64_t)a4
{
  if (a4 > 15)
  {
    switch(a4)
    {
      case 0x10uLL:
        v5 = [(CSProminentDisplayView *)self complicationSidebarView];
        break;
      case 0x20uLL:
        v5 = [(CSProminentDisplayView *)self complicationBottomRowView];
        break;
      case 0x40uLL:
        v5 = [(CSProminentDisplayView *)self vibrancyShadowView];
        break;
      default:
        return;
    }

    goto LABEL_17;
  }

  if (a4 == 1)
  {
    v5 = [(CSProminentDisplayView *)self timeView];
LABEL_17:
    v6 = v5;
    [v5 setAlpha:a3];

    return;
  }

  if (a4 != 2)
  {
    if (a4 != 8)
    {
      return;
    }

    v5 = [(CSProminentDisplayView *)self complicationRowView];
    goto LABEL_17;
  }

  [(CSProminentDisplayView *)self setSubtitleAlpha:?];
}

- (int64_t)_keyForElement:(unint64_t)a3
{
  if ((a3 ^ (a3 - 1)) <= a3 - 1)
  {
    return -1;
  }

  else
  {
    return a3;
  }
}

- (void)_transitionToNextPendedSubtitleIfNecessaryWithDelay:(double)a3
{
  if (self->_animatingTransientSubtitleTransition)
  {
    return;
  }

  v6 = [(NSMutableArray *)self->_pendedTransientSubtitleViews firstObject];
  v7 = v6;
  if (v6)
  {
    v10 = v6;
    [(NSMutableArray *)self->_pendedTransientSubtitleViews removeObject:v6];
    v8 = self;
    v9 = v10;
LABEL_4:
    v6 = [(CSProminentDisplayView *)v8 _showTransientSubtitleView:v9 withDelay:a3];
    v7 = v10;
    goto LABEL_8;
  }

  if (self->_hasClearedSinceLastAddedTransient && self->_transientSubtitleView)
  {
    v8 = self;
    v10 = 0;
    v9 = 0;
    goto LABEL_4;
  }

LABEL_8:

  MEMORY[0x1EEE66BB8](v6, v7);
}

- (void)_showTransientSubtitleView:(id)a3 withDelay:(double)a4
{
  v7 = a3;
  v8 = v7;
  if (self->_transientSubtitleView != v7)
  {
    v9 = v7 != 0;
    [(CSProminentDisplayView *)self _contentAlphaForElement:1];
    v11 = v10;
    if (v8)
    {
      [(CSProminentTextElementView *)self->_transientSubtitleView removeFromSuperview];
      objc_storeStrong(&self->_transientSubtitleView, a3);
      [(CSProminentTextElementView *)self->_transientSubtitleView setAlpha:0.0];
      v12 = [(CSProminentDisplayView *)self subtitleVibrancyEffectView];
      v13 = [v12 contentView];
      [v13 addSubview:self->_transientSubtitleView];

      [(CSProminentDisplayView *)self setNeedsLayout];
    }

    else
    {
      [(CSProminentDisplayView *)self _applyAlphaToNonTransientSubtitleViews:0.0];
    }

    self->_animatingTransientSubtitleTransition = 1;
    self->_animatingTransientSubtitleTransitionToTransient = v9;
    v14 = MEMORY[0x1E69DD250];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __63__CSProminentDisplayView__showTransientSubtitleView_withDelay___block_invoke;
    v17[3] = &unk_1E76B9E20;
    v17[4] = self;
    v17[5] = v11;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __63__CSProminentDisplayView__showTransientSubtitleView_withDelay___block_invoke_2;
    v16[3] = &unk_1E76BA2C0;
    v16[4] = self;
    v15 = self;
    [v14 animateWithDuration:0 delay:v17 options:v16 animations:0.25 completion:a4];
  }
}

void __63__CSProminentDisplayView__showTransientSubtitleView_withDelay___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 412) == 1)
  {
    v3 = v2;
    v4 = 0.0;
    [v3 _applyAlphaToNonTransientSubtitleViews:0.0];
    v10 = [v3 timeView];
    v5 = v3[408];

    if ((v5 & 1) == 0)
    {
      v4 = *(a1 + 40);
    }

    v6 = v10;
    v7 = v4;
  }

  else
  {
    v8 = *(v2 + 504);
    v9 = v2;
    [v8 setAlpha:0.0];
    v10 = [v9 timeView];

    v7 = *(a1 + 40);
    v6 = v10;
  }

  [v6 setAlpha:v7];
}

uint64_t __63__CSProminentDisplayView__showTransientSubtitleView_withDelay___block_invoke_2(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __63__CSProminentDisplayView__showTransientSubtitleView_withDelay___block_invoke_3;
  v3[3] = &unk_1E76B9E48;
  v4 = *(a1 + 32);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __63__CSProminentDisplayView__showTransientSubtitleView_withDelay___block_invoke_4;
  v2[3] = &unk_1E76BA2C0;
  v2[4] = v4;
  return [MEMORY[0x1E69DD250] animateWithDuration:v3 animations:v2 completion:0.25];
}

void __63__CSProminentDisplayView__showTransientSubtitleView_withDelay___block_invoke_3(uint64_t a1)
{
  v5 = *(a1 + 32);
  [v5 subtitleAlpha];
  v2 = v1;
  v3 = *(v5 + 63);
  if (*(v5 + 412) == 1)
  {
    [v3 setAlpha:v1];
  }

  else
  {
    [v3 removeFromSuperview];
    v4 = *(v5 + 63);
    *(v5 + 63) = 0;

    [v5 _applyAlphaToNonTransientSubtitleViews:v2];
  }
}

void __63__CSProminentDisplayView__showTransientSubtitleView_withDelay___block_invoke_4(uint64_t a1)
{
  v4 = *(a1 + 32);
  [v4 subtitleAlpha];
  v2 = v1;
  if (*(v4 + 412) == 1)
  {
    [v4 _applyAlphaToNonTransientSubtitleViews:0.0];
    [v4[63] setAlpha:v2];
  }

  else
  {
    [v4[63] removeFromSuperview];
    v3 = v4[63];
    v4[63] = 0;

    [v4 _applyAlphaToNonTransientSubtitleViews:v2];
  }

  *(v4 + 411) = 0;
  [v4 _transitionToNextPendedSubtitleIfNecessaryWithDelay:1.25];
}

- (void)_applyAlphaToNonTransientSubtitleViews:(double)a3
{
  if (self->_transientSubtitleView)
  {
    a3 = 0.0;
  }

  [(CSProminentTextElementView *)self->_customSubtitleView setAlpha:a3];
  [(CSProminentEmptyElementView *)self->_subtitleComplicationView setAlpha:a3];
  subtitleView = self->_subtitleView;

  [(CSProminentTextElementView *)subtitleView setAlpha:a3];
}

- (void)_updateAlphaForNonTransientSubtitleViews
{
  [(CSProminentDisplayView *)self subtitleAlpha];

  [(CSProminentDisplayView *)self _applyAlphaToNonTransientSubtitleViews:?];
}

- (void)_updateVisibilityForNonTransientSubtitleViews
{
  customSubtitleView = self->_customSubtitleView;
  v4 = customSubtitleView | self->_subtitleComplicationView;
  v5 = customSubtitleView != 0;
  [(CSProminentTextElementView *)customSubtitleView setHidden:0];
  [(CSProminentEmptyElementView *)self->_subtitleComplicationView setHidden:v5];
  subtitleView = self->_subtitleView;

  [(CSProminentTextElementView *)subtitleView setHidden:v4 != 0];
}

- (void)setUsesEditingLayout:(BOOL)a3
{
  if (self->_usesEditingLayout != a3)
  {
    self->_usesEditingLayout = a3;
    [(CSProminentDisplayView *)self setNeedsLayout];

    [(CSProminentDisplayView *)self layoutIfNeeded];
  }
}

- (void)setSubtitleComplicationView:(id)a3
{
  v5 = a3;
  subtitleComplicationView = self->_subtitleComplicationView;
  if (subtitleComplicationView != v5)
  {
    v8 = v5;
    [(CSProminentEmptyElementView *)subtitleComplicationView removeFromSuperview];
    objc_storeStrong(&self->_subtitleComplicationView, a3);
    [(CSProminentDisplayView *)self _updateAlphaForNonTransientSubtitleViews];
    [(CSProminentDisplayView *)self _updateVisibilityForNonTransientSubtitleViews];
    v7 = [(BSUIVibrancyEffectView *)self->_subtitleVibrancyEffectView contentView];
    [v7 addSubview:self->_subtitleComplicationView];

    v5 = v8;
  }

  MEMORY[0x1EEE66BB8](subtitleComplicationView, v5);
}

- (void)setSubtitleDimmingView:(id)a3
{
  v5 = a3;
  subtitleDimmingView = self->_subtitleDimmingView;
  if (subtitleDimmingView != v5)
  {
    v7 = v5;
    [(UIView *)subtitleDimmingView removeFromSuperview];
    objc_storeStrong(&self->_subtitleDimmingView, a3);
    subtitleDimmingView = [(UIView *)self->_dimmableLayersContainer addSubview:self->_subtitleDimmingView];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](subtitleDimmingView, v5);
}

- (void)setComplicationRowView:(id)a3
{
  v5 = a3;
  complicationRowView = self->_complicationRowView;
  if (complicationRowView != v5)
  {
    v8 = v5;
    [(CSProminentEmptyElementView *)complicationRowView removeFromSuperview];
    objc_storeStrong(&self->_complicationRowView, a3);
    v7 = self->_complicationRowView;
    [(CSProminentDisplayView *)self _contentAlphaForElement:8];
    [(CSProminentEmptyElementView *)v7 setAlpha:?];
    complicationRowView = [(CSProminentDisplayView *)self _addComplicationSubview:v8];
    v5 = v8;
  }

  MEMORY[0x1EEE66BB8](complicationRowView, v5);
}

- (void)setComplicationSidebarView:(id)a3
{
  v5 = a3;
  complicationSidebarView = self->_complicationSidebarView;
  if (complicationSidebarView != v5)
  {
    v8 = v5;
    [(CSProminentEmptyElementView *)complicationSidebarView removeFromSuperview];
    objc_storeStrong(&self->_complicationSidebarView, a3);
    v7 = self->_complicationSidebarView;
    [(CSProminentDisplayView *)self _contentAlphaForElement:16];
    [(CSProminentEmptyElementView *)v7 setAlpha:?];
    complicationSidebarView = [(CSProminentDisplayView *)self _addComplicationSubview:v8];
    v5 = v8;
  }

  MEMORY[0x1EEE66BB8](complicationSidebarView, v5);
}

- (void)setComplicationBottomRowView:(id)a3
{
  v5 = a3;
  complicationBottomRowView = self->_complicationBottomRowView;
  if (complicationBottomRowView != v5)
  {
    v8 = v5;
    [(CSProminentEmptyElementView *)complicationBottomRowView removeFromSuperview];
    objc_storeStrong(&self->_complicationBottomRowView, a3);
    v7 = self->_complicationBottomRowView;
    [(CSProminentDisplayView *)self _contentAlphaForElement:32];
    [(CSProminentEmptyElementView *)v7 setAlpha:?];
    complicationBottomRowView = [(CSProminentDisplayView *)self _addComplicationSubview:v8];
    v5 = v8;
  }

  MEMORY[0x1EEE66BB8](complicationBottomRowView, v5);
}

- (void)setShouldApplyVibrancyToComplications:(BOOL)a3
{
  if (self->_shouldApplyVibrancyToComplications != a3)
  {
    self->_shouldApplyVibrancyToComplications = a3;
    if (a3 && !self->_vibrancyEffectView)
    {
      v4 = objc_alloc(MEMORY[0x1E698E818]);
      [(CSProminentDisplayView *)self bounds];
      v5 = [v4 initWithFrame:?];
      vibrancyEffectView = self->_vibrancyEffectView;
      self->_vibrancyEffectView = v5;

      [(CSProminentDisplayView *)self addSubview:self->_vibrancyEffectView];
    }

    [(CSProminentDisplayView *)self _addComplicationSubview:self->_complicationRowView];
    [(CSProminentDisplayView *)self _addComplicationSubview:self->_complicationSidebarView];
    [(CSProminentDisplayView *)self _addComplicationSubview:self->_complicationBottomRowView];
    if (!self->_shouldApplyVibrancyToComplications)
    {
      [(BSUIVibrancyEffectView *)self->_vibrancyEffectView removeFromSuperview];
      v7 = self->_vibrancyEffectView;
      self->_vibrancyEffectView = 0;
    }
  }
}

- (id)_complicationsSuperview
{
  if ([(CSProminentDisplayView *)self shouldApplyVibrancyToComplications])
  {
    v3 = [(CSProminentDisplayView *)self vibrancyEffectView];
    v4 = [v3 contentView];
  }

  else
  {
    v4 = self;
  }

  return v4;
}

- (void)_addComplicationSubview:(id)a3
{
  v6 = a3;
  v4 = [(CSProminentDisplayView *)self _complicationsSuperview];
  if (v6)
  {
    v5 = [v6 superview];

    if (v5 != v4)
    {
      [v6 removeFromSuperview];
      [v4 addSubview:v6];
      [(CSProminentDisplayView *)self setNeedsLayout];
    }
  }
}

- (void)setDisplayDate:(id)a3
{
  v6 = a3;
  if (![(NSDate *)self->_displayDate isEqualToDate:?])
  {
    v4 = [v6 copy];
    displayDate = self->_displayDate;
    self->_displayDate = v4;

    [(CSProminentDisplayView *)self _updateEffectiveDisplayDate];
  }
}

- (void)_applyContainerOrientationToVibrancyShadowView:(int64_t)a3
{
  if (self->_vibrancyShadowView)
  {
    [MEMORY[0x1E698E828] defaultShadowStartPoint];
    [MEMORY[0x1E698E828] defaultShadowEndPoint];
    _UIConvertPointFromOrientationToOrientation();
    v5 = v4;
    v7 = v6;
    _UIConvertPointFromOrientationToOrientation();
    v9 = v8;
    v11 = v10;
    [(BSUIVibrancyShadowView *)self->_vibrancyShadowView setShadowStartPoint:v5, v7];
    vibrancyShadowView = self->_vibrancyShadowView;

    [(BSUIVibrancyShadowView *)vibrancyShadowView setShadowEndPoint:v9, v11];
  }
}

- (void)setNumberingSystem:(int64_t)a3
{
  [(CSProminentTimeView *)self->_timeView setNumberingSystem:?];
  [(CSProminentLayoutController *)self->_layoutController setNumberingSystem:a3];

  [(CSProminentDisplayView *)self setNeedsLayout];
}

+ (id)_startObservingSystemStatusOverridesIfNeededAndFetchInitialOverride
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __93__CSProminentDisplayView__startObservingSystemStatusOverridesIfNeededAndFetchInitialOverride__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_startObservingSystemStatusOverridesIfNeededAndFetchInitialOverride_onceToken[0] != -1)
  {
    dispatch_once(_startObservingSystemStatusOverridesIfNeededAndFetchInitialOverride_onceToken, block);
  }

  v2 = [_startObservingSystemStatusOverridesIfNeededAndFetchInitialOverride_sOverrideDomain data];
  v3 = [v2 customOverrides];

  return v3;
}

void __93__CSProminentDisplayView__startObservingSystemStatusOverridesIfNeededAndFetchInitialOverride__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69DC668] sharedApplication];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 performSelector:sel_systemStatusServer];
    v4 = [objc_alloc(MEMORY[0x1E69D5480]) initWithServerHandle:v3];
    v5 = _startObservingSystemStatusOverridesIfNeededAndFetchInitialOverride_sOverrideDomain;
    _startObservingSystemStatusOverridesIfNeededAndFetchInitialOverride_sOverrideDomain = v4;
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x1E69D5480]);
    v3 = _startObservingSystemStatusOverridesIfNeededAndFetchInitialOverride_sOverrideDomain;
    _startObservingSystemStatusOverridesIfNeededAndFetchInitialOverride_sOverrideDomain = v6;
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __93__CSProminentDisplayView__startObservingSystemStatusOverridesIfNeededAndFetchInitialOverride__block_invoke_2;
  v7[3] = &__block_descriptor_40_e46_v16__0__STStatusBarOverridesStatusDomainData_8l;
  v7[4] = *(a1 + 32);
  [_startObservingSystemStatusOverridesIfNeededAndFetchInitialOverride_sOverrideDomain observeDataWithBlock:v7];
}

void __93__CSProminentDisplayView__startObservingSystemStatusOverridesIfNeededAndFetchInitialOverride__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 customOverrides];
  if (([v3 dateFromEntriesIncludesTime] & 1) != 0 || objc_msgSend(v3, "dateFromEntriesIncludesDate"))
  {
    v4 = [v3 dateFromEntries];
  }

  else
  {
    v4 = 0;
  }

  v5 = [*(a1 + 32) overrideObservingDisplayViews];
  v6 = [v5 allObjects];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __93__CSProminentDisplayView__startObservingSystemStatusOverridesIfNeededAndFetchInitialOverride__block_invoke_3;
  v9[3] = &unk_1E76BA200;
  v10 = v6;
  v11 = v4;
  v7 = v4;
  v8 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], v9);
}

void __93__CSProminentDisplayView__startObservingSystemStatusOverridesIfNeededAndFetchInitialOverride__block_invoke_3(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) _setOverrideDate:{*(a1 + 40), v7}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

+ (NSHashTable)overrideObservingDisplayViews
{
  if (overrideObservingDisplayViews_onceToken != -1)
  {
    +[CSProminentDisplayView overrideObservingDisplayViews];
  }

  v3 = overrideObservingDisplayViews_sOverrideObservingDisplayViews;

  return v3;
}

uint64_t __55__CSProminentDisplayView_overrideObservingDisplayViews__block_invoke()
{
  v0 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
  v1 = overrideObservingDisplayViews_sOverrideObservingDisplayViews;
  overrideObservingDisplayViews_sOverrideObservingDisplayViews = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (void)_setUpTimeStringOverriding
{
  v3 = objc_opt_class();
  v4 = [v3 overrideObservingDisplayViews];
  [v4 addObject:self];

  v6 = [v3 _startObservingSystemStatusOverridesIfNeededAndFetchInitialOverride];
  if ([v6 dateFromEntriesIncludesTime])
  {
    v5 = [v6 dateFromEntries];
  }

  else
  {
    v5 = 0;
  }

  [(CSProminentDisplayView *)self _setOverrideDate:v5];
}

- (void)_setOverrideDate:(id)a3
{
  v6 = a3;
  if (![(NSDate *)self->_overrideDate isEqualToDate:?])
  {
    v4 = [v6 copy];
    overrideDate = self->_overrideDate;
    self->_overrideDate = v4;

    [(CSProminentDisplayView *)self _updateEffectiveDisplayDate];
  }
}

@end