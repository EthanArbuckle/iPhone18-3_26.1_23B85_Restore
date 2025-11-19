@interface CAMBadgeTray
- (CAMBadgeTray)initWithFrame:(CGRect)a3;
- (CAMBadgeTrayDelegate)delegate;
- (CAMElapsedTimeView)elapsedTimeView;
- (CAMFocusLockBadge)focusLockBadge;
- (CAMSpatialBadge)spatialBadge;
- (CAMTextBadge)controlChangeBadge;
- (CAMVideoPausedBadge)videoPausedBadge;
- (CAMVideoStabilizationBadge)videoStabilizationBadge;
- (id)_createControlForType:(unint64_t)a3;
- (unint64_t)_badgeFontStyle;
- (void)_forBadgeTypeInBadgeTypes:(unint64_t)a3 do:(id)a4;
- (void)_layoutBadges:(unint64_t)a3 withVisibleBadges:(unint64_t)a4;
- (void)_loadBadgesIfNeededForTypes:(unint64_t)a3 initialAlpha:(double)a4;
- (void)_updateBadgesVisibilityForVisibleBadges:(unint64_t)a3;
- (void)badgeViewDidChangeIntrinsicContentSize:(id)a3;
- (void)layoutSubviews;
- (void)setVisibleBadges:(unint64_t)a3 animated:(BOOL)a4;
@end

@implementation CAMBadgeTray

- (CAMBadgeTray)initWithFrame:(CGRect)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = CAMBadgeTray;
  v3 = [(CAMBadgeTray *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E695DF90] dictionary];
    badgeMap = v3->__badgeMap;
    v3->__badgeMap = v4;

    v10[0] = objc_opt_class();
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    v7 = [(CAMBadgeTray *)v3 registerForTraitChanges:v6 withAction:sel_setNeedsLayout];
  }

  return v3;
}

- (void)layoutSubviews
{
  v3 = [(CAMBadgeTray *)self visibleBadges];
  [(CAMBadgeTray *)self _layoutBadges:v3 withVisibleBadges:v3];

  [(CAMBadgeTray *)self _updateBadgesVisibilityForVisibleBadges:v3];
}

- (void)_layoutBadges:(unint64_t)a3 withVisibleBadges:(unint64_t)a4
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __48__CAMBadgeTray__layoutBadges_withVisibleBadges___block_invoke;
  v12[3] = &unk_1E76FCE50;
  v12[4] = self;
  v12[5] = &v17;
  v12[6] = &v13;
  [(CAMBadgeTray *)self _forBadgeTypeInBadgeTypes:a4 do:v12];
  v7 = v18[3];
  v8 = v14[3];
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2020000000;
  [(CAMBadgeTray *)self bounds];
  *&v11[3] = (v9 - (v7 + (v8 - 1) * 5.0)) * 0.5;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __48__CAMBadgeTray__layoutBadges_withVisibleBadges___block_invoke_2;
  v10[3] = &unk_1E76FCE78;
  v10[5] = v11;
  v10[6] = a3;
  v10[4] = self;
  [(CAMBadgeTray *)self _forBadgeTypeInBadgeTypes:a4 do:v10];
  _Block_object_dispose(v11, 8);
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);
}

void __48__CAMBadgeTray__layoutBadges_withVisibleBadges___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) _badgeMap];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  v7 = [v4 objectForKeyedSubscript:v5];

  [v7 intrinsicContentSize];
  *(*(*(a1 + 40) + 8) + 24) = v6 + *(*(*(a1 + 40) + 8) + 24);
  ++*(*(*(a1 + 48) + 8) + 24);
}

void __48__CAMBadgeTray__layoutBadges_withVisibleBadges___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) _badgeMap];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  v6 = [v4 objectForKeyedSubscript:v5];

  [v6 intrinsicContentSize];
  v8 = v7;
  if ((a2 & ~*(a1 + 48)) == 0)
  {
    [*(a1 + 32) bounds];
    UIRectCenteredYInRectScale();
    v10 = v9;
    v12 = v11;
    v8 = v13;
    v15 = v14;
    UIRectGetCenter();
    [v6 setCenter:0];
    v16 = MEMORY[0x1E69DD250];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __48__CAMBadgeTray__layoutBadges_withVisibleBadges___block_invoke_3;
    v17[3] = &unk_1E76F7768;
    v18 = v6;
    v19 = v10;
    v20 = v12;
    v21 = v8;
    v22 = v15;
    [v16 performWithoutAnimation:v17];
  }

  *(*(*(a1 + 40) + 8) + 24) = v8 + 5.0 + *(*(*(a1 + 40) + 8) + 24);
}

- (void)setVisibleBadges:(unint64_t)a3 animated:(BOOL)a4
{
  visibleBadges = self->_visibleBadges;
  if (visibleBadges != a3)
  {
    v5 = a4;
    v8 = a3 & ~visibleBadges;
    v9 = 1.0;
    if (a4)
    {
      v9 = 0.0;
    }

    [(CAMBadgeTray *)self _loadBadgesIfNeededForTypes:a3 & ~visibleBadges initialAlpha:v9];
    self->_visibleBadges = a3;
    if (v5)
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __42__CAMBadgeTray_setVisibleBadges_animated___block_invoke;
      v11[3] = &unk_1E76F9B50;
      v11[4] = self;
      v11[5] = v8;
      v11[6] = a3;
      v11[7] = visibleBadges;
      [MEMORY[0x1E69DD250] performWithoutAnimation:v11];
      [(CAMBadgeTray *)self setNeedsLayout];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __42__CAMBadgeTray_setVisibleBadges_animated___block_invoke_3;
      v10[3] = &unk_1E76F77B0;
      v10[4] = self;
      [MEMORY[0x1E69DD250] animateWithDuration:0 delay:v10 usingSpringWithDamping:0 initialSpringVelocity:0.5 options:0.0 animations:1.0 completion:1.0];
    }

    else
    {

      [(CAMBadgeTray *)self setNeedsLayout];
    }
  }
}

uint64_t __42__CAMBadgeTray_setVisibleBadges_animated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _layoutBadges:*(a1 + 40) withVisibleBadges:*(a1 + 48)];
  [*(a1 + 32) _updateBadgesVisibilityForVisibleBadges:*(a1 + 56)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__CAMBadgeTray_setVisibleBadges_animated___block_invoke_2;
  v5[3] = &unk_1E76F9998;
  v5[4] = v2;
  return [v2 _forBadgeTypeInBadgeTypes:v3 do:v5];
}

void __42__CAMBadgeTray_setVisibleBadges_animated___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _badgeMap];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  v5 = [v3 objectForKeyedSubscript:v4];

  [v5 layoutIfNeeded];
}

- (CAMTextBadge)controlChangeBadge
{
  v2 = [(CAMBadgeTray *)self _badgeMap];
  v3 = [v2 objectForKeyedSubscript:&unk_1F16C8450];

  return v3;
}

- (CAMFocusLockBadge)focusLockBadge
{
  v2 = [(CAMBadgeTray *)self _badgeMap];
  v3 = [v2 objectForKeyedSubscript:&unk_1F16C8468];

  return v3;
}

- (CAMElapsedTimeView)elapsedTimeView
{
  v2 = [(CAMBadgeTray *)self _badgeMap];
  v3 = [v2 objectForKeyedSubscript:&unk_1F16C8480];

  return v3;
}

- (CAMVideoStabilizationBadge)videoStabilizationBadge
{
  v2 = [(CAMBadgeTray *)self _badgeMap];
  v3 = [v2 objectForKeyedSubscript:&unk_1F16C8498];

  return v3;
}

- (CAMVideoPausedBadge)videoPausedBadge
{
  v2 = [(CAMBadgeTray *)self _badgeMap];
  v3 = [v2 objectForKeyedSubscript:&unk_1F16C84B0];

  return v3;
}

- (CAMSpatialBadge)spatialBadge
{
  v2 = [(CAMBadgeTray *)self _badgeMap];
  v3 = [v2 objectForKeyedSubscript:&unk_1F16C84C8];

  return v3;
}

- (id)_createControlForType:(unint64_t)a3
{
  v4 = 0;
  if (a3 <= 15)
  {
    switch(a3)
    {
      case 2uLL:
        v5 = CAMFocusLockBadge;
        break;
      case 4uLL:
        v4 = objc_alloc_init(CAMElapsedTimeView);
        goto LABEL_15;
      case 8uLL:
        v5 = CAMVideoStabilizationBadge;
        break;
      default:
        goto LABEL_15;
    }

    goto LABEL_14;
  }

  switch(a3)
  {
    case 0x10uLL:
      v5 = CAMVideoPausedBadge;
LABEL_14:
      v4 = objc_alloc_init(v5);
      [(CAMElapsedTimeView *)v4 setDelegate:self];
      [(CAMElapsedTimeView *)v4 setFontStyle:[(CAMBadgeTray *)self _badgeFontStyle]];
      break;
    case 0x40uLL:
      v5 = CAMSpatialBadge;
      goto LABEL_14;
    case 0x80uLL:
      v4 = objc_alloc_init(CAMTextBadge);
      [(CAMElapsedTimeView *)v4 setDelegate:self];
      break;
  }

LABEL_15:

  return v4;
}

- (unint64_t)_badgeFontStyle
{
  v2 = +[CAMCaptureCapabilities capabilities];
  v3 = [v2 sfCameraFontSupported];

  return v3;
}

- (void)_forBadgeTypeInBadgeTypes:(unint64_t)a3 do:(id)a4
{
  v4 = a3;
  v5 = a4;
  if (v4 < 0)
  {
    v5[2](v5, 128);
    if ((v4 & 4) == 0)
    {
LABEL_3:
      if ((v4 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((v4 & 4) == 0)
  {
    goto LABEL_3;
  }

  v5[2](v5, 4);
  if ((v4 & 2) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  v5[2](v5, 2);
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  v5[2](v5, 8);
  if ((v4 & 0x10) == 0)
  {
LABEL_6:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  v5[2](v5, 16);
  if ((v4 & 0x40) != 0)
  {
LABEL_7:
    v5[2](v5, 64);
  }

LABEL_8:
}

- (void)_loadBadgesIfNeededForTypes:(unint64_t)a3 initialAlpha:(double)a4
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __57__CAMBadgeTray__loadBadgesIfNeededForTypes_initialAlpha___block_invoke;
  v4[3] = &unk_1E76FCEA0;
  v4[4] = self;
  *&v4[5] = a4;
  [(CAMBadgeTray *)self _forBadgeTypeInBadgeTypes:a3 do:v4];
}

void __57__CAMBadgeTray__loadBadgesIfNeededForTypes_initialAlpha___block_invoke(uint64_t a1, uint64_t a2)
{
  v8 = [*(a1 + 32) _badgeMap];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  v5 = [v8 objectForKeyedSubscript:v4];

  if (!v5)
  {
    v5 = [*(a1 + 32) _createControlForType:a2];
    [v5 setAlpha:*(a1 + 40)];
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
    [v8 setObject:v5 forKeyedSubscript:v6];

    [*(a1 + 32) addSubview:v5];
    v7 = [*(a1 + 32) delegate];
    [v7 badgeTray:*(a1 + 32) didCreateBadgeForType:a2];
  }
}

- (void)_updateBadgesVisibilityForVisibleBadges:(unint64_t)a3
{
  v4 = [(CAMBadgeTray *)self _badgeMap];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__CAMBadgeTray__updateBadgesVisibilityForVisibleBadges___block_invoke;
  v5[3] = &__block_descriptor_40_e33_v32__0__NSNumber_8__UIView_16_B24l;
  v5[4] = a3;
  [v4 enumerateKeysAndObjectsUsingBlock:v5];
}

void __56__CAMBadgeTray__updateBadgesVisibilityForVisibleBadges___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a3;
  v5 = [a2 unsignedIntegerValue];
  v6 = 0.0;
  if ((v5 & ~*(a1 + 32)) == 0)
  {
    v6 = 1.0;
  }

  [v7 setAlpha:v6];
}

- (void)badgeViewDidChangeIntrinsicContentSize:(id)a3
{
  [(CAMBadgeTray *)self setNeedsLayout];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55__CAMBadgeTray_badgeViewDidChangeIntrinsicContentSize___block_invoke;
  v4[3] = &unk_1E76F77B0;
  v4[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:0 delay:v4 usingSpringWithDamping:0 initialSpringVelocity:0.5 options:0.0 animations:1.0 completion:1.0];
}

- (CAMBadgeTrayDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end