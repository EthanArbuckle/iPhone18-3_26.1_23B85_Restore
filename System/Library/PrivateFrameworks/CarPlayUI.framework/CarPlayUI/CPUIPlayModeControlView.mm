@interface CPUIPlayModeControlView
- (CGSize)intrinsicContentSize;
- (CPUIPlayModeControlView)initWithFrame:(CGRect)a3;
- (CPUIPlayModeControlViewDelegate)delegate;
- (id)_visibleControlButtons;
- (id)defaultPlayModeButtons;
- (void)_updateButtonLayouts;
- (void)layoutSubviews;
- (void)playModeButtonTapped:(id)a3;
- (void)setButtonSpacing:(double)a3;
- (void)setButtonWidth:(double)a3;
- (void)setMediaButtons:(id)a3;
- (void)setShowsArtwork:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation CPUIPlayModeControlView

- (CPUIPlayModeControlView)initWithFrame:(CGRect)a3
{
  v81[2] = *MEMORY[0x277D85DE8];
  v76.receiver = self;
  v76.super_class = CPUIPlayModeControlView;
  v3 = [(CPUIPlayModeControlView *)&v76 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_opt_new();
    moreButton = v3->_moreButton;
    v3->_moreButton = v4;

    v6 = [(CPUIPlayModeControlView *)v3 traitCollection];
    v7 = CPUIEllipsisGlyph(v6);

    v75 = v7;
    [(CPUIModernButton *)v3->_moreButton setImage:v7 forState:0];
    v8 = v3->_moreButton;
    v9 = [MEMORY[0x277D75348] labelColor];
    v10 = [v9 colorWithAlphaComponent:0.2];
    v11 = [v7 imageWithTintColor:v10];
    [(CPUIModernButton *)v8 setImage:v11 forState:1];

    [(CPUIModernButton *)v3->_moreButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CPUIModernButton *)v3->_moreButton setHidden:1];
    [(CPUIModernButton *)v3->_moreButton setAccessibilityIdentifier:@"CPNowPlayingMoreButton"];
    v12 = CPUILocalizedStringForKey(@"MORE");
    v81[0] = v12;
    v13 = CPUILocalizedStringForKey(@"ELLIPSIS");
    v81[1] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v81 count:2];
    [(CPUIModernButton *)v3->_moreButton setAccessibilityUserInputLabels:v14];

    v15 = [CPUIRepeatButton buttonWithType:0];
    repeatButton = v3->_repeatButton;
    v3->_repeatButton = v15;

    [(CPUIRepeatButton *)v3->_repeatButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CPUIRepeatButton *)v3->_repeatButton setHidden:1];
    [(CPUIModernButton *)v3->_repeatButton setShouldStaySelected:1];
    [(CPUIRepeatButton *)v3->_repeatButton setAccessibilityIdentifier:@"CPNowPlayingRepeatButton"];
    v17 = CPUILocalizedStringForKey(@"REPEAT");
    [(CPUIRepeatButton *)v3->_repeatButton setAccessibilityLabel:v17];

    v18 = CPUILocalizedStringForKey(@"REPEAT");
    v80 = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v80 count:1];
    [(CPUIRepeatButton *)v3->_repeatButton setAccessibilityUserInputLabels:v19];

    v20 = objc_opt_new();
    shuffleButton = v3->_shuffleButton;
    v3->_shuffleButton = v20;

    v22 = [(CPUIPlayModeControlView *)v3 traitCollection];
    v23 = CPUIShuffleGlyph(v22);

    v74 = v23;
    [(CPUIModernButton *)v3->_shuffleButton setImage:v23 forState:0];
    v24 = v3->_shuffleButton;
    v25 = [MEMORY[0x277D75348] labelColor];
    v26 = [v25 colorWithAlphaComponent:0.2];
    v27 = [v23 imageWithTintColor:v26];
    [(CPUIModernButton *)v24 setImage:v27 forState:1];

    [(CPUIModernButton *)v3->_shuffleButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CPUIModernButton *)v3->_shuffleButton setHidden:1];
    [(CPUIModernButton *)v3->_shuffleButton setShouldStaySelected:1];
    [(CPUIModernButton *)v3->_shuffleButton setAccessibilityIdentifier:@"CPNowPlayingShuffleButton"];
    v28 = CPUILocalizedStringForKey(@"SHUFFLE");
    [(CPUIModernButton *)v3->_shuffleButton setAccessibilityLabel:v28];

    v29 = CPUILocalizedStringForKey(@"SHUFFLE");
    v79 = v29;
    v30 = [MEMORY[0x277CBEA60] arrayWithObjects:&v79 count:1];
    [(CPUIModernButton *)v3->_shuffleButton setAccessibilityUserInputLabels:v30];

    v31 = objc_opt_new();
    addToLibraryButton = v3->_addToLibraryButton;
    v3->_addToLibraryButton = v31;

    v33 = [(CPUIPlayModeControlView *)v3 traitCollection];
    v34 = CPUIAddGlyph(v33);

    v73 = v34;
    [(CPUIModernButton *)v3->_addToLibraryButton setImage:v34 forState:0];
    v35 = v3->_addToLibraryButton;
    v36 = [MEMORY[0x277D75348] labelColor];
    v37 = [v36 colorWithAlphaComponent:0.2];
    v38 = [v34 imageWithTintColor:v37];
    [(CPUIModernButton *)v35 setImage:v38 forState:1];

    [(CPUIModernButton *)v3->_addToLibraryButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CPUIModernButton *)v3->_addToLibraryButton setHidden:1];
    [(CPUIModernButton *)v3->_addToLibraryButton setAccessibilityIdentifier:@"CPNowPlayingAddToLibraryButton"];
    v39 = CPUILocalizedStringForKey(@"ADD");
    v78[0] = v39;
    v40 = CPUILocalizedStringForKey(@"PLUS");
    v78[1] = v40;
    v41 = [MEMORY[0x277CBEA60] arrayWithObjects:v78 count:2];
    [(CPUIModernButton *)v3->_addToLibraryButton setAccessibilityUserInputLabels:v41];

    v42 = objc_opt_new();
    playbackRateButton = v3->_playbackRateButton;
    v3->_playbackRateButton = v42;

    v44 = v3->_playbackRateButton;
    v45 = CPUIFormattedPlaybackRateString(&unk_2855D8218);
    [(CPUIModernButton *)v44 setTitle:v45 forState:0];

    [(CPUIModernButton *)v3->_playbackRateButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v46 = [(CPUIModernButton *)v3->_playbackRateButton titleLabel];
    [v46 setAdjustsFontForContentSizeCategory:0];

    v47 = [(CPUIModernButton *)v3->_playbackRateButton titleLabel];
    [v47 setAdjustsFontSizeToFitWidth:1];

    [(CPUIModernButton *)v3->_playbackRateButton setHidden:1];
    [(CPUIModernButton *)v3->_playbackRateButton setAccessibilityIdentifier:@"CPNowPlayingPlaybackRateButton"];
    v48 = [(CPUIPlayModeControlView *)v3 defaultPlayModeButtons];
    mediaButtons = v3->_mediaButtons;
    v3->_mediaButtons = v48;

    v50 = objc_alloc(MEMORY[0x277D75A68]);
    v51 = [(CPUIPlayModeControlView *)v3 mediaButtons];
    v52 = [v50 initWithArrangedSubviews:v51];
    stackView = v3->_stackView;
    v3->_stackView = v52;

    v54 = [(CPUIPlayModeControlView *)v3 stackView];
    [v54 setTranslatesAutoresizingMaskIntoConstraints:0];

    v55 = [(CPUIPlayModeControlView *)v3 stackView];
    [v55 setAxis:0];

    v56 = [(CPUIPlayModeControlView *)v3 stackView];
    [v56 setDistribution:3];

    v57 = [(CPUIPlayModeControlView *)v3 stackView];
    [v57 setAlignment:3];

    v58 = [(CPUIPlayModeControlView *)v3 stackView];
    [v58 setAccessibilityIdentifier:@"CPNowPlayingModeControlView"];

    v59 = [(CPUIPlayModeControlView *)v3 stackView];
    [(CPUIPlayModeControlView *)v3 addSubview:v59];

    v72 = MEMORY[0x277CCAAD0];
    v60 = [(CPUIPlayModeControlView *)v3 stackView];
    v61 = [v60 bottomAnchor];
    v62 = [(CPUIPlayModeControlView *)v3 bottomAnchor];
    v63 = [v61 constraintEqualToAnchor:v62];
    v77[0] = v63;
    v64 = [(CPUIPlayModeControlView *)v3 stackView];
    v65 = [v64 centerXAnchor];
    v66 = [(CPUIPlayModeControlView *)v3 centerXAnchor];
    v67 = [v65 constraintEqualToAnchor:v66];
    v77[1] = v67;
    v68 = [MEMORY[0x277CBEA60] arrayWithObjects:v77 count:2];
    [v72 activateConstraints:v68];

    v69 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA5E8]];
    v70 = [(CPUIPlayModeControlView *)v3 layer];
    [v70 setCompositingFilter:v69];
  }

  return v3;
}

- (id)defaultPlayModeButtons
{
  v10[5] = *MEMORY[0x277D85DE8];
  v3 = [(CPUIPlayModeControlView *)self shuffleButton];
  v4 = [(CPUIPlayModeControlView *)self addToLibraryButton];
  v10[1] = v4;
  v5 = [(CPUIPlayModeControlView *)self moreButton];
  v10[2] = v5;
  v6 = [(CPUIPlayModeControlView *)self playbackRateButton];
  v10[3] = v6;
  v7 = [(CPUIPlayModeControlView *)self repeatButton];
  v10[4] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:5];

  return v8;
}

- (void)setMediaButtons:(id)a3
{
  v4 = a3;
  v5 = [(CPUIPlayModeControlView *)self mediaButtons];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __43__CPUIPlayModeControlView_setMediaButtons___block_invoke;
  v9[3] = &unk_278D9C218;
  v9[4] = self;
  [v5 enumerateObjectsUsingBlock:v9];

  mediaButtons = self->_mediaButtons;
  self->_mediaButtons = v4;
  v7 = v4;

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __43__CPUIPlayModeControlView_setMediaButtons___block_invoke_2;
  v8[3] = &unk_278D9C218;
  v8[4] = self;
  [(NSArray *)v7 enumerateObjectsUsingBlock:v8];
}

void __43__CPUIPlayModeControlView_setMediaButtons___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  [v5 removeTarget:v3 action:sel_playModeButtonTapped_ forControlEvents:64];
  v4 = [*(a1 + 32) stackView];
  [v4 removeArrangedSubview:v5];

  [v5 removeFromSuperview];
}

void __43__CPUIPlayModeControlView_setMediaButtons___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _UISolariumEnabled();
  v5 = 10.0;
  if (v4)
  {
    v5 = 14.0;
  }

  [v3 _setContinuousCornerRadius:v5];
  [v3 addTarget:*(a1 + 32) action:sel_playModeButtonTapped_ forControlEvents:64];
  v6 = [*(a1 + 32) stackView];
  [v6 addArrangedSubview:v3];
}

- (void)setShowsArtwork:(BOOL)a3
{
  if (self->_showsArtwork != a3)
  {
    self->_showsArtwork = a3;
    [(CPUIPlayModeControlView *)self _updateButtonLayouts];
  }
}

- (id)_visibleControlButtons
{
  v2 = [(CPUIPlayModeControlView *)self stackView];
  v3 = [v2 arrangedSubviews];
  v4 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_0];
  v5 = [v3 filteredArrayUsingPredicate:v4];

  return v5;
}

- (void)setButtonWidth:(double)a3
{
  if (vabdd_f64(a3, self->_buttonWidth) > 0.00000011920929)
  {
    self->_buttonWidth = a3;
    [(CPUIPlayModeControlView *)self _updateButtonLayouts];
  }
}

- (void)setButtonSpacing:(double)a3
{
  if (vabdd_f64(a3, self->_buttonSpacing) > 0.00000011920929)
  {
    self->_buttonSpacing = a3;
    [(CPUIPlayModeControlView *)self _updateButtonLayouts];
  }
}

- (void)layoutSubviews
{
  [(CPUIPlayModeControlView *)self _updateButtonLayouts];
  v3.receiver = self;
  v3.super_class = CPUIPlayModeControlView;
  [(CPUIPlayModeControlView *)&v3 layoutSubviews];
}

- (CGSize)intrinsicContentSize
{
  v2 = *MEMORY[0x277D77260];
  v3 = 28.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)traitCollectionDidChange:(id)a3
{
  v22.receiver = self;
  v22.super_class = CPUIPlayModeControlView;
  [(CPUIPlayModeControlView *)&v22 traitCollectionDidChange:a3];
  v4 = [(CPUIPlayModeControlView *)self traitCollection];
  v5 = CPUIEllipsisGlyph(v4);

  [(CPUIModernButton *)self->_moreButton setImage:v5 forState:0];
  moreButton = self->_moreButton;
  v7 = [MEMORY[0x277D75348] labelColor];
  v8 = [v7 colorWithAlphaComponent:0.2];
  v9 = [v5 imageWithTintColor:v8];
  [(CPUIModernButton *)moreButton setImage:v9 forState:1];

  v10 = [(CPUIPlayModeControlView *)self traitCollection];
  v11 = CPUIShuffleGlyph(v10);

  [(CPUIModernButton *)self->_shuffleButton setImage:v11 forState:0];
  shuffleButton = self->_shuffleButton;
  v13 = [MEMORY[0x277D75348] labelColor];
  v14 = [v13 colorWithAlphaComponent:0.2];
  v15 = [v11 imageWithTintColor:v14];
  [(CPUIModernButton *)shuffleButton setImage:v15 forState:1];

  v16 = [(CPUIPlayModeControlView *)self traitCollection];
  v17 = CPUIAddGlyph(v16);

  [(CPUIModernButton *)self->_addToLibraryButton setImage:v17 forState:0];
  addToLibraryButton = self->_addToLibraryButton;
  v19 = [MEMORY[0x277D75348] labelColor];
  v20 = [v19 colorWithAlphaComponent:0.2];
  v21 = [v17 imageWithTintColor:v20];
  [(CPUIModernButton *)addToLibraryButton setImage:v21 forState:1];
}

- (void)_updateButtonLayouts
{
  if (self->_activeButtonLayoutConstraints)
  {
    [MEMORY[0x277CCAAD0] deactivateConstraints:?];
  }

  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(CPUIPlayModeControlView *)self _visibleControlButtons];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __47__CPUIPlayModeControlView__updateButtonLayouts__block_invoke;
  v18 = &unk_278D9C260;
  v5 = v3;
  v19 = v5;
  v20 = self;
  [v4 enumerateObjectsUsingBlock:&v15];
  v6 = [v4 count] - 1;
  v7 = [(UIStackView *)self->_stackView widthAnchor];
  [(CPUIPlayModeControlView *)self buttonWidth];
  v9 = v8;
  v10 = [v4 count];
  [(CPUIPlayModeControlView *)self buttonSpacing];
  v12 = [v7 constraintEqualToConstant:v11 * v6 + v9 * v10];
  [v5 addObject:v12];

  v13 = [v5 copy];
  activeButtonLayoutConstraints = self->_activeButtonLayoutConstraints;
  self->_activeButtonLayoutConstraints = v13;

  if ([(NSArray *)self->_activeButtonLayoutConstraints count])
  {
    [MEMORY[0x277CCAAD0] activateConstraints:self->_activeButtonLayoutConstraints];
  }
}

void __47__CPUIPlayModeControlView__updateButtonLayouts__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 widthAnchor];
  [*(a1 + 40) buttonWidth];
  v6 = [v5 constraintGreaterThanOrEqualToConstant:?];
  [v3 addObject:v6];

  v7 = *(a1 + 32);
  v9 = [v4 heightAnchor];

  v8 = [v9 constraintEqualToConstant:28.0];
  [v7 addObject:v8];
}

- (void)playModeButtonTapped:(id)a3
{
  v7 = a3;
  v4 = [(CPUIPlayModeControlView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CPUIPlayModeControlView *)self delegate];
    [v6 playModeControlView:self didSelectButton:v7];
  }
}

- (CPUIPlayModeControlViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end