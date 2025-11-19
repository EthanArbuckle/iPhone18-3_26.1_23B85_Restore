@interface SFAttributedRichLinkCell
- (BOOL)shouldShowContextMenuFromPoint:(CGPoint)a3;
- (SFAttributedRichLinkCell)initWithCoder:(id)a3;
- (SFAttributedRichLinkCell)initWithFrame:(CGRect)a3;
- (id)preferredLayoutAttributesFittingAttributes:(id)a3;
- (void)_updateAttributionViewBackground;
- (void)_updateUserInterfaceStyle;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setAttributionView:(id)a3;
- (void)setMetadata:(id)a3;
- (void)setRelativeDateString:(id)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
@end

@implementation SFAttributedRichLinkCell

- (SFAttributedRichLinkCell)initWithFrame:(CGRect)a3
{
  v77[3] = *MEMORY[0x1E69E9840];
  v73.receiver = self;
  v73.super_class = SFAttributedRichLinkCell;
  v3 = [(SFStartPageFilledBackgroundCell *)&v73 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(SFAttributedRichLinkCell *)v3 contentView];
    v6 = objc_alloc_init(MEMORY[0x1E69DD250]);
    linkViewContainer = v4->_linkViewContainer;
    v4->_linkViewContainer = v6;

    [(UIView *)v4->_linkViewContainer setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v4->_linkViewContainer _setContinuousCornerRadius:20.0];
    [v5 addSubview:v4->_linkViewContainer];
    v63 = MEMORY[0x1E696ACD8];
    v71 = [(UIView *)v4->_linkViewContainer topAnchor];
    v69 = [v5 topAnchor];
    v66 = [v71 constraintEqualToAnchor:v69];
    v77[0] = v66;
    v8 = [(UIView *)v4->_linkViewContainer leadingAnchor];
    v9 = [v5 leadingAnchor];
    v10 = [v8 constraintEqualToAnchor:v9];
    v77[1] = v10;
    v11 = [(UIView *)v4->_linkViewContainer trailingAnchor];
    v12 = [v5 trailingAnchor];
    v13 = [v11 constraintEqualToAnchor:v12];
    v77[2] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v77 count:3];
    [v63 activateConstraints:v14];

    v15 = 0x1E69C8000uLL;
    LODWORD(v11) = [MEMORY[0x1E69C8880] is2024SuggestionsEnabled];
    v16 = [(UIView *)v4->_linkViewContainer bottomAnchor];
    v72 = v5;
    v17 = [v5 bottomAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];
    v20 = v18;
    if (v11)
    {
      [v18 setActive:1];
    }

    else
    {
      LODWORD(v19) = 1132068864;
      v21 = [v18 sf_withPriority:v19];
      [v21 setActive:1];
    }

    v22 = objc_alloc_init(MEMORY[0x1E696ECC8]);
    linkView = v4->_linkView;
    v4->_linkView = v22;

    v24 = objc_alloc_init(MEMORY[0x1E696ECA0]);
    [(LPLinkView *)v4->_linkView setMetadata:v24];

    if ([MEMORY[0x1E69C8880] is2024SuggestionsEnabled])
    {
      [(LPLinkView *)v4->_linkView setContentInset:0.0, 0.0, 36.0, 0.0];
      [(LPLinkView *)v4->_linkView _setEffectiveCornerRadius:20.0];
    }

    [(LPLinkView *)v4->_linkView _setPreferredSizeClass:5];
    [(LPLinkView *)v4->_linkView _setDisableTapGesture:1];
    [(LPLinkView *)v4->_linkView _setDisableAutoPlay:1];
    [(LPLinkView *)v4->_linkView _setDisableAnimations:1];
    [(SFAttributedRichLinkCell *)v4 _updateBackgroundColor];
    [(LPLinkView *)v4->_linkView setTranslatesAutoresizingMaskIntoConstraints:0];
    v25 = objc_alloc_init(MEMORY[0x1E696ECB0]);
    [v25 setAlignTextAndMediaHorizontalEdges:1];
    if ([MEMORY[0x1E69C8880] is2024SuggestionsEnabled])
    {
      [(LPLinkView *)v4->_linkView _setTextSafeAreaInset:0.0, 12.0, 0.0, 12.0];
    }

    [(LPLinkView *)v4->_linkView _setSizeClassParameters:v25];
    v26 = [MEMORY[0x1E69C8880] is2024SuggestionsEnabled];
    v27 = v4->_linkViewContainer;
    v28 = v4->_linkView;
    v70 = v25;
    if (v26)
    {
      [(UIView *)v27 addSubview:v28];
      v58 = MEMORY[0x1E696ACD8];
      v67 = [(LPLinkView *)v4->_linkView topAnchor];
      v64 = [(UIView *)v4->_linkViewContainer topAnchor];
      v62 = [v67 constraintEqualToAnchor:v64];
      v76[0] = v62;
      v61 = [(LPLinkView *)v4->_linkView leadingAnchor];
      v60 = [(UIView *)v4->_linkViewContainer leadingAnchor];
      v59 = [v61 constraintEqualToAnchor:v60];
      v76[1] = v59;
      v57 = [(LPLinkView *)v4->_linkView trailingAnchor];
      v56 = [(UIView *)v4->_linkViewContainer trailingAnchor];
      v29 = [v57 constraintEqualToAnchor:v56];
      v76[2] = v29;
      v30 = [(UIView *)v4->_linkViewContainer heightAnchor];
      v31 = [(LPLinkView *)v4->_linkView widthAnchor];
      v32 = [v30 constraintEqualToAnchor:v31 multiplier:1.0];
      v76[3] = v32;
      v33 = [(LPLinkView *)v4->_linkView heightAnchor];
      v34 = [(UIView *)v4->_linkViewContainer heightAnchor];
      v35 = [v33 constraintEqualToAnchor:v34];
      v76[4] = v35;
      v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v76 count:5];
      [v58 activateConstraints:v36];

      v15 = 0x1E69C8000;
    }

    else
    {
      [(UIView *)v27 _sf_addEdgeMatchedSubview:v28];
    }

    [(LPLinkView *)v4->_linkView addObserver:v4 forKeyPath:@"_effectiveTraitCollection" options:0 context:&startPageAttributedRichLinkCellKvoEffectiveTraitCollectionKey];
    if ([*(v15 + 2176) is2024SuggestionsEnabled])
    {
      v37 = objc_alloc_init(MEMORY[0x1E69DCC10]);
      relativeDateLabel = v4->_relativeDateLabel;
      v4->_relativeDateLabel = v37;

      [(UILabel *)v4->_relativeDateLabel setTranslatesAutoresizingMaskIntoConstraints:0];
      v39 = [(UILabel *)v4->_relativeDateLabel layer];
      [v39 setZPosition:1000.0];

      v40 = [MEMORY[0x1E69DC888] secondaryLabelColor];
      [(UILabel *)v4->_relativeDateLabel setTextColor:v40];

      v41 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD10]];
      [(UILabel *)v4->_relativeDateLabel setFont:v41];

      [(SFAttributedRichLinkCell *)v4 _updateUserInterfaceStyle];
      [(UIView *)v4->_linkViewContainer addSubview:v4->_relativeDateLabel];
      v65 = MEMORY[0x1E696ACD8];
      v68 = [(UIView *)v4->_linkViewContainer bottomAnchor];
      v42 = [(UILabel *)v4->_relativeDateLabel bottomAnchor];
      v43 = [v68 constraintEqualToAnchor:v42 constant:12.0];
      v75[0] = v43;
      v44 = [(UILabel *)v4->_relativeDateLabel leadingAnchor];
      v45 = [(UIView *)v4->_linkViewContainer leadingAnchor];
      v46 = [v44 constraintEqualToAnchor:v45 constant:7.0];
      v75[1] = v46;
      v47 = [(UIView *)v4->_linkViewContainer trailingAnchor];
      v48 = [(UILabel *)v4->_relativeDateLabel trailingAnchor];
      v49 = [v47 constraintEqualToAnchor:v48 constant:7.0];
      v75[2] = v49;
      v50 = [MEMORY[0x1E695DEC8] arrayWithObjects:v75 count:3];
      [v65 activateConstraints:v50];
    }

    [(SFAttributedRichLinkCell *)v4 _updateAttributionViewBackground];
    v74[0] = objc_opt_class();
    v74[1] = objc_opt_class();
    v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:v74 count:2];
    v52 = [(SFAttributedRichLinkCell *)v4 registerForTraitChanges:v51 withAction:sel__updateAttributionViewBackground];

    v53 = [(SFStartPageFilledBackgroundCell *)v4 defaultBackgroundConfiguration];
    [v53 setCornerRadius:20.0];
    [(SFAttributedRichLinkCell *)v4 setBackgroundConfiguration:v53];
    v54 = v4;
  }

  return v4;
}

- (SFAttributedRichLinkCell)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = SFAttributedRichLinkCell;
  return [(SFAttributedRichLinkCell *)&v4 initWithCoder:a3];
}

- (void)dealloc
{
  [(LPLinkView *)self->_linkView removeObserver:self forKeyPath:@"_effectiveTraitCollection" context:&startPageAttributedRichLinkCellKvoEffectiveTraitCollectionKey];
  v3.receiver = self;
  v3.super_class = SFAttributedRichLinkCell;
  [(SFAttributedRichLinkCell *)&v3 dealloc];
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  attributionView = self->_attributionView;
  if (!attributionView || (-[SLAttributionView bounds](attributionView, "bounds"), v10 = v9, v12 = v11, v14 = v13, v16 = v15, [v6 anyObject], v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "locationInView:", self->_attributionView), v22.x = v18, v22.y = v19, v23.origin.x = v10, v23.origin.y = v12, v23.size.width = v14, v23.size.height = v16, v20 = CGRectContainsPoint(v23, v22), v17, !v20))
  {
    v21.receiver = self;
    v21.super_class = SFAttributedRichLinkCell;
    [(SFAttributedRichLinkCell *)&v21 touchesBegan:v6 withEvent:v7];
  }
}

- (id)preferredLayoutAttributesFittingAttributes:(id)a3
{
  v11.receiver = self;
  v11.super_class = SFAttributedRichLinkCell;
  v4 = [(SFAttributedRichLinkCell *)&v11 preferredLayoutAttributesFittingAttributes:a3];
  [v4 size];
  v6 = v5;
  if (([MEMORY[0x1E69C8880] is2024SuggestionsEnabled] & 1) == 0)
  {
    _SFClamp(v6 * -0.002 + 1.15, 0.7, 0.85);
  }

  v7 = [MEMORY[0x1E69C8880] is2024SuggestionsEnabled];
  if (([MEMORY[0x1E69C8880] is2024SuggestionsEnabled] & 1) == 0)
  {
    attributionView = self->_attributionView;
    if (attributionView)
    {
      [(SLAttributionView *)attributionView layoutIfNeeded];
      [(SLAttributionView *)self->_attributionView intrinsicContentSize];
      [MEMORY[0x1E69C8880] is2024SuggestionsEnabled];
    }
  }

  v9 = 176.0;
  if (!v7)
  {
    v9 = v6;
  }

  [v4 setSize:_SFRoundSizeToPixels(v9)];

  return v4;
}

- (void)_updateAttributionViewBackground
{
  if ([MEMORY[0x1E69C8880] is2024SuggestionsEnabled])
  {
    v3 = 0;
  }

  else
  {
    v4 = [(SFAttributedRichLinkCell *)self traitCollection];
    if ([v4 sf_usesVibrantAppearance])
    {
      v5 = [v4 sf_backgroundBlurEffect];
      v3 = v5 == 0;
    }

    else
    {
      v3 = 0;
    }
  }

  attributionView = self->_attributionView;

  [(SLAttributionView *)attributionView updateBackgroundStyle:v3];
}

- (void)setMetadata:(id)a3
{
  v63[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(LPLinkView *)self->_linkView metadata];
  v6 = WBSIsEqual();

  if ((v6 & 1) == 0)
  {
    objc_initWeak(&location, self);
    if (![MEMORY[0x1E69C8880] is2024SuggestionsEnabled])
    {
LABEL_27:
      [(LPLinkView *)self->_linkView setMetadata:v4];
      [(SFAttributedRichLinkCell *)self setNeedsLayout];
      objc_destroyWeak(&location);
      goto LABEL_28;
    }

    v7 = [v4 copy];

    v8 = [v7 image];
    v9 = v8;
    if (v8)
    {
      v49 = v8;
    }

    else
    {
      v49 = [v7 icon];
    }

    v10 = [v7 image];
    v50 = [v10 platformImage];

    v11 = [v7 icon];
    v12 = [v11 platformImage];

    v13 = [MEMORY[0x1E69C9858] sharedManager];
    v51 = [v13 displayableImageForImage:v50 withRequiredImageSize:{40.0, 40.0}];

    if (v51 != v50)
    {
      v14 = [objc_alloc(MEMORY[0x1E696EC68]) initWithPlatformImage:v51];
      [v7 setImage:v14];
    }

    v15 = +[_SFTouchIconCache _monogramConfiguration];
    v16 = [v15 backgroundColor];
    v17 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:1];
    v18 = [v16 resolvedColorWithTraitCollection:v17];

    v19 = [v15 backgroundColor];
    v20 = [MEMORY[0x1E69DD1B8] currentTraitCollection];
    v21 = [v20 traitCollectionByModifyingTraits:&__block_literal_global_73];
    v22 = [v19 resolvedColorWithTraitCollection:v21];

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __40__SFAttributedRichLinkCell_setMetadata___block_invoke_2;
    aBlock[3] = &unk_1E721FE00;
    v47 = v18;
    v57 = v47;
    v48 = v22;
    v58 = v48;
    v23 = v12;
    v59 = v23;
    v45 = v15;
    v60 = v45;
    v4 = v7;
    v61 = v4;
    v24 = _Block_copy(aBlock);
    if (self->_userInterfaceStyleChangeRegistrationForMetadata)
    {
      [(SFAttributedRichLinkCell *)self unregisterForTraitChanges:v45, v47, v48];
    }

    v25 = v24[2](v24);
    if (v25 != v23)
    {
      v26 = [objc_alloc(MEMORY[0x1E696EC68]) initWithPlatformImage:v25];
      [v4 setIcon:v26];

      if (v25)
      {
        v63[0] = objc_opt_class();
        v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v63 count:1];
        v52[0] = MEMORY[0x1E69E9820];
        v52[1] = 3221225472;
        v52[2] = __40__SFAttributedRichLinkCell_setMetadata___block_invoke_3;
        v52[3] = &unk_1E721FE28;
        objc_copyWeak(&v55, &location);
        v53 = v4;
        v54 = v24;
        v28 = [(SFAttributedRichLinkCell *)self registerForTraitChanges:v27 withHandler:v52];
        userInterfaceStyleChangeRegistrationForMetadata = self->_userInterfaceStyleChangeRegistrationForMetadata;
        self->_userInterfaceStyleChangeRegistrationForMetadata = v28;

        objc_destroyWeak(&v55);
      }
    }

    [(LPLinkView *)self->_linkView _setOverrideBackgroundColor:0, v45];
    v30 = [(LPLinkView *)self->_linkView traitOverrides];
    v31 = objc_opt_self();
    v32 = [v30 containsTrait:v31];

    if (v32)
    {
      v33 = [(LPLinkView *)self->_linkView traitOverrides];
      v34 = objc_opt_self();
      [v33 removeTrait:v34];
    }

    if (v51 | v25)
    {
      if (v25 == v23 || v51 || !v25)
      {
        goto LABEL_26;
      }

      v35 = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
      [(LPLinkView *)self->_linkView _setOverrideBackgroundColor:v35];
    }

    else
    {
      v36 = [v49 properties];
      v37 = [v36 dominantColor];
      v38 = v37 == 0;

      if (v38)
      {
LABEL_26:

        goto LABEL_27;
      }

      v39 = [v49 properties];
      v40 = [v39 dominantColor];
      v41 = [v40 colorWithAlphaComponent:1.0];
      [(LPLinkView *)self->_linkView _setOverrideBackgroundColor:v41];

      v42 = [(LPLinkView *)self->_linkView _overrideBackgroundColor];
      LODWORD(v40) = [v42 safari_meetsThresholdForDarkAppearance];

      v43 = [(LPLinkView *)self->_linkView traitOverrides];
      v35 = v43;
      if (v40)
      {
        v44 = 2;
      }

      else
      {
        v44 = 1;
      }

      [v43 setUserInterfaceStyle:v44];
    }

    goto LABEL_26;
  }

LABEL_28:
}

void __40__SFAttributedRichLinkCell_setMetadata___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setUserInterfaceStyle:2];
  [v2 setUserInterfaceLevel:1];
}

id __40__SFAttributedRichLinkCell_setMetadata___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E69DD1B8] currentTraitCollection];
  v3 = [v2 userInterfaceStyle];
  v4 = 40;
  if (v3 == 1)
  {
    v4 = 32;
  }

  v5 = *(a1 + v4);

  v6 = [MEMORY[0x1E69C9858] sharedManager];
  v7 = *(a1 + 48);
  [*(a1 + 56) fontSize];
  v9 = v8;
  v10 = [*(a1 + 56) fontWeight];
  v11 = [*(a1 + 56) fontDesign];
  [*(a1 + 56) baselineOffset];
  v13 = v12;
  +[_SFSiteIcon cornerRadius];
  v15 = v14;
  v16 = [*(a1 + 64) title];
  v17 = [*(a1 + 64) URL];
  LOBYTE(v20) = 0;
  v18 = [v6 displayableImageForImage:v7 withRequiredImageSize:v10 fallbackImageSize:v11 fontSize:v5 fontWeight:v16 fontDesign:v17 baselineOffset:40.0 backgroundColor:40.0 cornerRadius:80.0 title:80.0 url:v9 shouldGenerateGlyph:{v13, v15, v20}];

  return v18;
}

void __40__SFAttributedRichLinkCell_setMetadata___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = objc_alloc(MEMORY[0x1E696EC68]);
    v4 = (*(*(a1 + 40) + 16))();
    v5 = [v3 initWithPlatformImage:v4];
    [*(a1 + 32) setIcon:v5];

    [v6[83] setMetadata:*(a1 + 32)];
    WeakRetained = v6;
  }
}

- (void)setRelativeDateString:(id)a3
{
  objc_storeStrong(&self->_relativeDateString, a3);
  v5 = a3;
  [(UILabel *)self->_relativeDateLabel setText:v5];
}

- (void)setAttributionView:(id)a3
{
  v36[3] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [MEMORY[0x1E69C8880] is2024SuggestionsEnabled];
  if (v5 || !v6)
  {
    if (!WBSIsEqual() || ([v5 isDescendantOfView:self] & 1) == 0)
    {
      [v5 removeFromSuperview];
      if ([(SLAttributionView *)self->_attributionView isDescendantOfView:self])
      {
        [(SLAttributionView *)self->_attributionView removeFromSuperview];
      }

      objc_storeStrong(&self->_attributionView, a3);
      [(SLAttributionView *)self->_attributionView setBlurEffectGroupName:@"start-page-attribution-view"];
      [(SFAttributedRichLinkCell *)self _updateAttributionViewBackground];
      [(SLAttributionView *)self->_attributionView setTranslatesAutoresizingMaskIntoConstraints:0];
      LODWORD(v8) = 1148846080;
      [(SLAttributionView *)self->_attributionView setContentHuggingPriority:1 forAxis:v8];
      if ([MEMORY[0x1E69C8880] is2024SuggestionsEnabled])
      {
        [(UIView *)self->_linkViewContainer addSubview:self->_attributionView];
        v29 = MEMORY[0x1E696ACD8];
        v33 = [(UIView *)self->_linkViewContainer bottomAnchor];
        v31 = [(SLAttributionView *)self->_attributionView bottomAnchor];
        v9 = [v33 constraintEqualToAnchor:v31 constant:12.0];
        v36[0] = v9;
        v10 = [(SLAttributionView *)self->_attributionView leadingAnchor];
        v11 = [(UIView *)self->_linkViewContainer leadingAnchor];
        v12 = [v10 constraintEqualToAnchor:v11 constant:12.0];
        v36[1] = v12;
        v13 = [(UIView *)self->_linkViewContainer trailingAnchor];
        v14 = [(SLAttributionView *)self->_attributionView trailingAnchor];
        v15 = [v13 constraintEqualToAnchor:v14 constant:12.0];
        v36[2] = v15;
        v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:3];
        [v29 activateConstraints:v16];

        [(SFAttributedRichLinkCell *)self _updateUserInterfaceStyle];
      }

      else
      {
        v17 = [(SFAttributedRichLinkCell *)self contentView];
        [v17 addSubview:self->_attributionView];
        v27 = MEMORY[0x1E696ACD8];
        v34 = [(SLAttributionView *)self->_attributionView topAnchor];
        v32 = [(UIView *)self->_linkViewContainer bottomAnchor];
        v30 = [v34 constraintEqualToAnchor:v32 constant:6.0];
        v35[0] = v30;
        v28 = [(SLAttributionView *)self->_attributionView bottomAnchor];
        v26 = [v17 bottomAnchor];
        v25 = [v28 constraintEqualToAnchor:v26];
        v35[1] = v25;
        v18 = [(SLAttributionView *)self->_attributionView leadingAnchor];
        v19 = [v17 leadingAnchor];
        v20 = [v18 constraintEqualToAnchor:v19];
        v35[2] = v20;
        v21 = [(SLAttributionView *)self->_attributionView trailingAnchor];
        v22 = [v17 trailingAnchor];
        v23 = [v21 constraintEqualToAnchor:v22];
        v35[3] = v23;
        v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:4];
        [v27 activateConstraints:v24];
      }

      [(SFAttributedRichLinkCell *)self setNeedsLayout];
    }
  }

  else
  {
    [(SLAttributionView *)self->_attributionView removeFromSuperview];
    attributionView = self->_attributionView;
    self->_attributionView = 0;
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (a6 == &startPageAttributedRichLinkCellKvoEffectiveTraitCollectionKey && [v10 isEqualToString:@"_effectiveTraitCollection"])
  {
    if ([MEMORY[0x1E69C8880] is2024SuggestionsEnabled])
    {
      [(SFAttributedRichLinkCell *)self _updateUserInterfaceStyle];
    }
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SFAttributedRichLinkCell;
    [(SFAttributedRichLinkCell *)&v13 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }
}

- (void)_updateUserInterfaceStyle
{
  v3 = [(LPLinkView *)self->_linkView _effectiveTraitCollection];
  v4 = [v3 userInterfaceStyle];

  v5 = [(SLAttributionView *)self->_attributionView traitOverrides];
  [v5 setUserInterfaceStyle:v4];

  v6 = [(UILabel *)self->_relativeDateLabel traitOverrides];
  [v6 setUserInterfaceStyle:v4];
}

- (BOOL)shouldShowContextMenuFromPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(UIView *)self->_linkViewContainer frame];
  v9 = x;
  v10 = y;

  return CGRectContainsPoint(*&v5, *&v9);
}

@end