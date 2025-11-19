@interface MUIMessageListNavigationBarTitleView
- (MUIMessageListNavigationBarTitleView)initWithNavigationBar:(id)a3;
- (UINavigationBar)navigationBar;
- (void)_updateSubtitleLayout;
- (void)configureWithTitle:(id)a3 bucket:(int64_t)a4;
- (void)layoutSubviews;
- (void)setSubtitleHidden:(BOOL)a3 animated:(BOOL)a4;
@end

@implementation MUIMessageListNavigationBarTitleView

- (MUIMessageListNavigationBarTitleView)initWithNavigationBar:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = MUIMessageListNavigationBarTitleView;
  v5 = [(_UINavigationBarTitleView *)&v12 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_navigationBar, v4);
    v6->_isSubtitleHidden = 1;
    v7 = objc_alloc_init(MEMORY[0x277D756B8]);
    subtitleLabel = v6->_subtitleLabel;
    v6->_subtitleLabel = v7;

    v9 = [MEMORY[0x277D75348] secondaryLabelColor];
    [(UILabel *)v6->_subtitleLabel setTextColor:v9];

    [(UILabel *)v6->_subtitleLabel setTextAlignment:1];
    v10 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76940] design:*MEMORY[0x277D74358] variant:1280 weight:*MEMORY[0x277D76820] maximumContentSizeCategory:0 compatibleWithTraitCollection:*MEMORY[0x277D74410]];
    [(UILabel *)v6->_subtitleLabel setFont:v10];

    [(UILabel *)v6->_subtitleLabel setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)v6->_subtitleLabel setNumberOfLines:1];
    [(UILabel *)v6->_subtitleLabel setHidden:1];
    [(UILabel *)v6->_subtitleLabel setAlpha:0.0];
    [(UILabel *)v6->_subtitleLabel setAccessibilityIdentifier:*MEMORY[0x277D25900]];
    [(UILabel *)v6->_subtitleLabel setAccessibilityTraits:*MEMORY[0x277D76558]];
    [(MUIMessageListNavigationBarTitleView *)v6 addSubview:v6->_subtitleLabel];
  }

  return v6;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = MUIMessageListNavigationBarTitleView;
  [(MUIMessageListNavigationBarTitleView *)&v3 layoutSubviews];
  [(MUIMessageListNavigationBarTitleView *)self _updateSubtitleLayout];
}

- (void)configureWithTitle:(id)a3 bucket:(int64_t)a4
{
  v8 = [(MUIMessageListNavigationBarTitleView *)self subtitleLabel];
  v5 = MUILocalizedStringFromBucket(a4);
  v6 = [v5 localizedUppercaseString];
  [v8 setText:v6];

  v7 = MUIPlatformTextColorForBucket(a4);
  [v8 setTextColor:v7];

  [v8 sizeToFit];
}

- (void)setSubtitleHidden:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if ([(MUIMessageListNavigationBarTitleView *)self isSubtitleHidden]!= a3)
  {
    [(MUIMessageListNavigationBarTitleView *)self setIsSubtitleHidden:v5];
    if (!v5)
    {
      [(MUIMessageListNavigationBarTitleView *)self _updateSubtitleLayout];
    }

    v7 = [(MUIMessageListNavigationBarTitleView *)self subtitleLabel];
    [v7 frame];
    Height = CGRectGetHeight(v42);
    v9 = [(_UINavigationBarTitleView *)self navigationItem];
    v10 = [v9 standardAppearance];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = objc_opt_new();
    }

    v13 = v12;

    v14 = Height * -0.5;
    v15 = *MEMORY[0x277D76DA8];
    if (v5)
    {
      v14 = *(MEMORY[0x277D76DA8] + 8);
    }

    else
    {
      v15 = 0.0;
    }

    [v13 setTitlePositionAdjustment:{v15, v14, *(MEMORY[0x277D76DA8] + 8)}];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __67__MUIMessageListNavigationBarTitleView_setSubtitleHidden_animated___block_invoke;
    aBlock[3] = &unk_278189490;
    v16 = v9;
    v39 = v16;
    v17 = v13;
    v40 = v17;
    v41 = self;
    v18 = _Block_copy(aBlock);
    if (v4)
    {
      v19 = objc_alloc(MEMORY[0x277D75D40]);
      if (v5)
      {
        v35[0] = MEMORY[0x277D85DD0];
        v35[1] = 3221225472;
        v35[2] = __67__MUIMessageListNavigationBarTitleView_setSubtitleHidden_animated___block_invoke_2;
        v35[3] = &unk_27818AB40;
        v20 = &v36;
        v21 = v7;
        v36 = v21;
        v22 = &v37;
        v37 = v18;
        v23 = [v19 initWithDuration:0 curve:v35 animations:0.25];
        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = __67__MUIMessageListNavigationBarTitleView_setSubtitleHidden_animated___block_invoke_3;
        v33[3] = &unk_27818AB68;
        v34 = v21;
        [v23 addCompletion:v33];
        [v23 startAnimation];
      }

      else
      {
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __67__MUIMessageListNavigationBarTitleView_setSubtitleHidden_animated___block_invoke_4;
        v30[3] = &unk_27818AB40;
        v20 = &v31;
        v31 = v7;
        v22 = &v32;
        v32 = v18;
        v25 = [v19 initWithDuration:0 curve:v30 animations:0.25];
        [v25 startAnimation];
      }
    }

    else
    {
      v24 = MEMORY[0x277D75D18];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __67__MUIMessageListNavigationBarTitleView_setSubtitleHidden_animated___block_invoke_5;
      v26[3] = &unk_27818AB90;
      v20 = &v27;
      v27 = v7;
      v29 = v5;
      v22 = &v28;
      v28 = v18;
      [v24 performWithoutAnimation:v26];
    }
  }
}

void __67__MUIMessageListNavigationBarTitleView_setSubtitleHidden_animated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setStandardAppearance:*(a1 + 40)];
  v2 = [*(a1 + 48) navigationBar];
  [v2 layoutIfNeeded];
}

uint64_t __67__MUIMessageListNavigationBarTitleView_setSubtitleHidden_animated___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

uint64_t __67__MUIMessageListNavigationBarTitleView_setSubtitleHidden_animated___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) setHidden:0];
  [*(a1 + 32) setAlpha:1.0];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

uint64_t __67__MUIMessageListNavigationBarTitleView_setSubtitleHidden_animated___block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) setHidden:*(a1 + 48)];
  [*(a1 + 32) setAlpha:(*(a1 + 48) ^ 1u)];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (UINavigationBar)navigationBar
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationBar);

  return WeakRetained;
}

- (void)_updateSubtitleLayout
{
  if (a1)
  {
    v2 = [a1 overlays];
    [v2 titleRect];

    v10.origin.x = OUTLINED_FUNCTION_1_5();
    if (!CGRectIsNull(v10))
    {
      v11.origin.x = OUTLINED_FUNCTION_1_5();
      MidX = CGRectGetMidX(v11);
      v8 = [a1 subtitleLabel];
      [v8 frame];
      v6 = MidX - CGRectGetMidX(v12);
      v13.origin.x = OUTLINED_FUNCTION_0_8();
      v7 = CGRectGetMinX(v13) + v6;
      v14.origin.x = OUTLINED_FUNCTION_1_5();
      MaxY = CGRectGetMaxY(v14);
      v15.origin.x = OUTLINED_FUNCTION_0_8();
      Width = CGRectGetWidth(v15);
      v16.origin.x = OUTLINED_FUNCTION_0_8();
      [v8 setFrame:{v7, MaxY, Width, CGRectGetHeight(v16)}];
    }
  }
}

@end