@interface SFAttributedRichLinkCell
- (BOOL)shouldShowContextMenuFromPoint:(CGPoint)point;
- (SFAttributedRichLinkCell)initWithCoder:(id)coder;
- (SFAttributedRichLinkCell)initWithFrame:(CGRect)frame;
- (id)preferredLayoutAttributesFittingAttributes:(id)attributes;
- (void)_updateAttributionViewBackground;
- (void)_updateUserInterfaceStyle;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setAttributionView:(id)view;
- (void)setMetadata:(id)metadata;
- (void)setRelativeDateString:(id)string;
- (void)touchesBegan:(id)began withEvent:(id)event;
@end

@implementation SFAttributedRichLinkCell

- (SFAttributedRichLinkCell)initWithFrame:(CGRect)frame
{
  v77[3] = *MEMORY[0x1E69E9840];
  v73.receiver = self;
  v73.super_class = SFAttributedRichLinkCell;
  v3 = [(SFStartPageFilledBackgroundCell *)&v73 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    contentView = [(SFAttributedRichLinkCell *)v3 contentView];
    v6 = objc_alloc_init(MEMORY[0x1E69DD250]);
    linkViewContainer = v4->_linkViewContainer;
    v4->_linkViewContainer = v6;

    [(UIView *)v4->_linkViewContainer setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v4->_linkViewContainer _setContinuousCornerRadius:20.0];
    [contentView addSubview:v4->_linkViewContainer];
    v63 = MEMORY[0x1E696ACD8];
    topAnchor = [(UIView *)v4->_linkViewContainer topAnchor];
    topAnchor2 = [contentView topAnchor];
    v66 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v77[0] = v66;
    leadingAnchor = [(UIView *)v4->_linkViewContainer leadingAnchor];
    leadingAnchor2 = [contentView leadingAnchor];
    v10 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v77[1] = v10;
    trailingAnchor = [(UIView *)v4->_linkViewContainer trailingAnchor];
    trailingAnchor2 = [contentView trailingAnchor];
    v13 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v77[2] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v77 count:3];
    [v63 activateConstraints:v14];

    v15 = 0x1E69C8000uLL;
    LODWORD(trailingAnchor) = [MEMORY[0x1E69C8880] is2024SuggestionsEnabled];
    bottomAnchor = [(UIView *)v4->_linkViewContainer bottomAnchor];
    v72 = contentView;
    bottomAnchor2 = [contentView bottomAnchor];
    v18 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v20 = v18;
    if (trailingAnchor)
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
    is2024SuggestionsEnabled = [MEMORY[0x1E69C8880] is2024SuggestionsEnabled];
    v27 = v4->_linkViewContainer;
    v28 = v4->_linkView;
    v70 = v25;
    if (is2024SuggestionsEnabled)
    {
      [(UIView *)v27 addSubview:v28];
      v58 = MEMORY[0x1E696ACD8];
      topAnchor3 = [(LPLinkView *)v4->_linkView topAnchor];
      topAnchor4 = [(UIView *)v4->_linkViewContainer topAnchor];
      v62 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
      v76[0] = v62;
      leadingAnchor3 = [(LPLinkView *)v4->_linkView leadingAnchor];
      leadingAnchor4 = [(UIView *)v4->_linkViewContainer leadingAnchor];
      v59 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
      v76[1] = v59;
      trailingAnchor3 = [(LPLinkView *)v4->_linkView trailingAnchor];
      trailingAnchor4 = [(UIView *)v4->_linkViewContainer trailingAnchor];
      v29 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
      v76[2] = v29;
      heightAnchor = [(UIView *)v4->_linkViewContainer heightAnchor];
      widthAnchor = [(LPLinkView *)v4->_linkView widthAnchor];
      v32 = [heightAnchor constraintEqualToAnchor:widthAnchor multiplier:1.0];
      v76[3] = v32;
      heightAnchor2 = [(LPLinkView *)v4->_linkView heightAnchor];
      heightAnchor3 = [(UIView *)v4->_linkViewContainer heightAnchor];
      v35 = [heightAnchor2 constraintEqualToAnchor:heightAnchor3];
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
      layer = [(UILabel *)v4->_relativeDateLabel layer];
      [layer setZPosition:1000.0];

      secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
      [(UILabel *)v4->_relativeDateLabel setTextColor:secondaryLabelColor];

      v41 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD10]];
      [(UILabel *)v4->_relativeDateLabel setFont:v41];

      [(SFAttributedRichLinkCell *)v4 _updateUserInterfaceStyle];
      [(UIView *)v4->_linkViewContainer addSubview:v4->_relativeDateLabel];
      v65 = MEMORY[0x1E696ACD8];
      bottomAnchor3 = [(UIView *)v4->_linkViewContainer bottomAnchor];
      bottomAnchor4 = [(UILabel *)v4->_relativeDateLabel bottomAnchor];
      v43 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:12.0];
      v75[0] = v43;
      leadingAnchor5 = [(UILabel *)v4->_relativeDateLabel leadingAnchor];
      leadingAnchor6 = [(UIView *)v4->_linkViewContainer leadingAnchor];
      v46 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:7.0];
      v75[1] = v46;
      trailingAnchor5 = [(UIView *)v4->_linkViewContainer trailingAnchor];
      trailingAnchor6 = [(UILabel *)v4->_relativeDateLabel trailingAnchor];
      v49 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:7.0];
      v75[2] = v49;
      v50 = [MEMORY[0x1E695DEC8] arrayWithObjects:v75 count:3];
      [v65 activateConstraints:v50];
    }

    [(SFAttributedRichLinkCell *)v4 _updateAttributionViewBackground];
    v74[0] = objc_opt_class();
    v74[1] = objc_opt_class();
    v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:v74 count:2];
    v52 = [(SFAttributedRichLinkCell *)v4 registerForTraitChanges:v51 withAction:sel__updateAttributionViewBackground];

    defaultBackgroundConfiguration = [(SFStartPageFilledBackgroundCell *)v4 defaultBackgroundConfiguration];
    [defaultBackgroundConfiguration setCornerRadius:20.0];
    [(SFAttributedRichLinkCell *)v4 setBackgroundConfiguration:defaultBackgroundConfiguration];
    v54 = v4;
  }

  return v4;
}

- (SFAttributedRichLinkCell)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = SFAttributedRichLinkCell;
  return [(SFAttributedRichLinkCell *)&v4 initWithCoder:coder];
}

- (void)dealloc
{
  [(LPLinkView *)self->_linkView removeObserver:self forKeyPath:@"_effectiveTraitCollection" context:&startPageAttributedRichLinkCellKvoEffectiveTraitCollectionKey];
  v3.receiver = self;
  v3.super_class = SFAttributedRichLinkCell;
  [(SFAttributedRichLinkCell *)&v3 dealloc];
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  eventCopy = event;
  attributionView = self->_attributionView;
  if (!attributionView || (-[SLAttributionView bounds](attributionView, "bounds"), v10 = v9, v12 = v11, v14 = v13, v16 = v15, [beganCopy anyObject], v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "locationInView:", self->_attributionView), v22.x = v18, v22.y = v19, v23.origin.x = v10, v23.origin.y = v12, v23.size.width = v14, v23.size.height = v16, v20 = CGRectContainsPoint(v23, v22), v17, !v20))
  {
    v21.receiver = self;
    v21.super_class = SFAttributedRichLinkCell;
    [(SFAttributedRichLinkCell *)&v21 touchesBegan:beganCopy withEvent:eventCopy];
  }
}

- (id)preferredLayoutAttributesFittingAttributes:(id)attributes
{
  v11.receiver = self;
  v11.super_class = SFAttributedRichLinkCell;
  v4 = [(SFAttributedRichLinkCell *)&v11 preferredLayoutAttributesFittingAttributes:attributes];
  [v4 size];
  v6 = v5;
  if (([MEMORY[0x1E69C8880] is2024SuggestionsEnabled] & 1) == 0)
  {
    _SFClamp(v6 * -0.002 + 1.15, 0.7, 0.85);
  }

  is2024SuggestionsEnabled = [MEMORY[0x1E69C8880] is2024SuggestionsEnabled];
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
  if (!is2024SuggestionsEnabled)
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
    traitCollection = [(SFAttributedRichLinkCell *)self traitCollection];
    if ([traitCollection sf_usesVibrantAppearance])
    {
      sf_backgroundBlurEffect = [traitCollection sf_backgroundBlurEffect];
      v3 = sf_backgroundBlurEffect == 0;
    }

    else
    {
      v3 = 0;
    }
  }

  attributionView = self->_attributionView;

  [(SLAttributionView *)attributionView updateBackgroundStyle:v3];
}

- (void)setMetadata:(id)metadata
{
  v63[1] = *MEMORY[0x1E69E9840];
  metadataCopy = metadata;
  metadata = [(LPLinkView *)self->_linkView metadata];
  v6 = WBSIsEqual();

  if ((v6 & 1) == 0)
  {
    objc_initWeak(&location, self);
    if (![MEMORY[0x1E69C8880] is2024SuggestionsEnabled])
    {
LABEL_27:
      [(LPLinkView *)self->_linkView setMetadata:metadataCopy];
      [(SFAttributedRichLinkCell *)self setNeedsLayout];
      objc_destroyWeak(&location);
      goto LABEL_28;
    }

    v7 = [metadataCopy copy];

    image = [v7 image];
    v9 = image;
    if (image)
    {
      icon = image;
    }

    else
    {
      icon = [v7 icon];
    }

    image2 = [v7 image];
    platformImage = [image2 platformImage];

    icon2 = [v7 icon];
    platformImage2 = [icon2 platformImage];

    mEMORY[0x1E69C9858] = [MEMORY[0x1E69C9858] sharedManager];
    v51 = [mEMORY[0x1E69C9858] displayableImageForImage:platformImage withRequiredImageSize:{40.0, 40.0}];

    if (v51 != platformImage)
    {
      v14 = [objc_alloc(MEMORY[0x1E696EC68]) initWithPlatformImage:v51];
      [v7 setImage:v14];
    }

    v15 = +[_SFTouchIconCache _monogramConfiguration];
    backgroundColor = [v15 backgroundColor];
    v17 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:1];
    v18 = [backgroundColor resolvedColorWithTraitCollection:v17];

    backgroundColor2 = [v15 backgroundColor];
    currentTraitCollection = [MEMORY[0x1E69DD1B8] currentTraitCollection];
    v21 = [currentTraitCollection traitCollectionByModifyingTraits:&__block_literal_global_73];
    v22 = [backgroundColor2 resolvedColorWithTraitCollection:v21];

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __40__SFAttributedRichLinkCell_setMetadata___block_invoke_2;
    aBlock[3] = &unk_1E721FE00;
    v47 = v18;
    v57 = v47;
    v48 = v22;
    v58 = v48;
    v23 = platformImage2;
    v59 = v23;
    v45 = v15;
    v60 = v45;
    metadataCopy = v7;
    v61 = metadataCopy;
    v24 = _Block_copy(aBlock);
    if (self->_userInterfaceStyleChangeRegistrationForMetadata)
    {
      [(SFAttributedRichLinkCell *)self unregisterForTraitChanges:v45, v47, v48];
    }

    v25 = v24[2](v24);
    if (v25 != v23)
    {
      v26 = [objc_alloc(MEMORY[0x1E696EC68]) initWithPlatformImage:v25];
      [metadataCopy setIcon:v26];

      if (v25)
      {
        v63[0] = objc_opt_class();
        v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v63 count:1];
        v52[0] = MEMORY[0x1E69E9820];
        v52[1] = 3221225472;
        v52[2] = __40__SFAttributedRichLinkCell_setMetadata___block_invoke_3;
        v52[3] = &unk_1E721FE28;
        objc_copyWeak(&v55, &location);
        v53 = metadataCopy;
        v54 = v24;
        v28 = [(SFAttributedRichLinkCell *)self registerForTraitChanges:v27 withHandler:v52];
        userInterfaceStyleChangeRegistrationForMetadata = self->_userInterfaceStyleChangeRegistrationForMetadata;
        self->_userInterfaceStyleChangeRegistrationForMetadata = v28;

        objc_destroyWeak(&v55);
      }
    }

    [(LPLinkView *)self->_linkView _setOverrideBackgroundColor:0, v45];
    traitOverrides = [(LPLinkView *)self->_linkView traitOverrides];
    v31 = objc_opt_self();
    v32 = [traitOverrides containsTrait:v31];

    if (v32)
    {
      traitOverrides2 = [(LPLinkView *)self->_linkView traitOverrides];
      v34 = objc_opt_self();
      [traitOverrides2 removeTrait:v34];
    }

    if (v51 | v25)
    {
      if (v25 == v23 || v51 || !v25)
      {
        goto LABEL_26;
      }

      secondarySystemGroupedBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
      [(LPLinkView *)self->_linkView _setOverrideBackgroundColor:secondarySystemGroupedBackgroundColor];
    }

    else
    {
      properties = [icon properties];
      dominantColor = [properties dominantColor];
      v38 = dominantColor == 0;

      if (v38)
      {
LABEL_26:

        goto LABEL_27;
      }

      properties2 = [icon properties];
      dominantColor2 = [properties2 dominantColor];
      v41 = [dominantColor2 colorWithAlphaComponent:1.0];
      [(LPLinkView *)self->_linkView _setOverrideBackgroundColor:v41];

      _overrideBackgroundColor = [(LPLinkView *)self->_linkView _overrideBackgroundColor];
      LODWORD(dominantColor2) = [_overrideBackgroundColor safari_meetsThresholdForDarkAppearance];

      traitOverrides3 = [(LPLinkView *)self->_linkView traitOverrides];
      secondarySystemGroupedBackgroundColor = traitOverrides3;
      if (dominantColor2)
      {
        v44 = 2;
      }

      else
      {
        v44 = 1;
      }

      [traitOverrides3 setUserInterfaceStyle:v44];
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

- (void)setRelativeDateString:(id)string
{
  objc_storeStrong(&self->_relativeDateString, string);
  stringCopy = string;
  [(UILabel *)self->_relativeDateLabel setText:stringCopy];
}

- (void)setAttributionView:(id)view
{
  v36[3] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  is2024SuggestionsEnabled = [MEMORY[0x1E69C8880] is2024SuggestionsEnabled];
  if (viewCopy || !is2024SuggestionsEnabled)
  {
    if (!WBSIsEqual() || ([viewCopy isDescendantOfView:self] & 1) == 0)
    {
      [viewCopy removeFromSuperview];
      if ([(SLAttributionView *)self->_attributionView isDescendantOfView:self])
      {
        [(SLAttributionView *)self->_attributionView removeFromSuperview];
      }

      objc_storeStrong(&self->_attributionView, view);
      [(SLAttributionView *)self->_attributionView setBlurEffectGroupName:@"start-page-attribution-view"];
      [(SFAttributedRichLinkCell *)self _updateAttributionViewBackground];
      [(SLAttributionView *)self->_attributionView setTranslatesAutoresizingMaskIntoConstraints:0];
      LODWORD(v8) = 1148846080;
      [(SLAttributionView *)self->_attributionView setContentHuggingPriority:1 forAxis:v8];
      if ([MEMORY[0x1E69C8880] is2024SuggestionsEnabled])
      {
        [(UIView *)self->_linkViewContainer addSubview:self->_attributionView];
        v29 = MEMORY[0x1E696ACD8];
        bottomAnchor = [(UIView *)self->_linkViewContainer bottomAnchor];
        bottomAnchor2 = [(SLAttributionView *)self->_attributionView bottomAnchor];
        v9 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:12.0];
        v36[0] = v9;
        leadingAnchor = [(SLAttributionView *)self->_attributionView leadingAnchor];
        leadingAnchor2 = [(UIView *)self->_linkViewContainer leadingAnchor];
        v12 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:12.0];
        v36[1] = v12;
        trailingAnchor = [(UIView *)self->_linkViewContainer trailingAnchor];
        trailingAnchor2 = [(SLAttributionView *)self->_attributionView trailingAnchor];
        v15 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:12.0];
        v36[2] = v15;
        v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:3];
        [v29 activateConstraints:v16];

        [(SFAttributedRichLinkCell *)self _updateUserInterfaceStyle];
      }

      else
      {
        contentView = [(SFAttributedRichLinkCell *)self contentView];
        [contentView addSubview:self->_attributionView];
        v27 = MEMORY[0x1E696ACD8];
        topAnchor = [(SLAttributionView *)self->_attributionView topAnchor];
        bottomAnchor3 = [(UIView *)self->_linkViewContainer bottomAnchor];
        v30 = [topAnchor constraintEqualToAnchor:bottomAnchor3 constant:6.0];
        v35[0] = v30;
        bottomAnchor4 = [(SLAttributionView *)self->_attributionView bottomAnchor];
        bottomAnchor5 = [contentView bottomAnchor];
        v25 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
        v35[1] = v25;
        leadingAnchor3 = [(SLAttributionView *)self->_attributionView leadingAnchor];
        leadingAnchor4 = [contentView leadingAnchor];
        v20 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
        v35[2] = v20;
        trailingAnchor3 = [(SLAttributionView *)self->_attributionView trailingAnchor];
        trailingAnchor4 = [contentView trailingAnchor];
        v23 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
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

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (context == &startPageAttributedRichLinkCellKvoEffectiveTraitCollectionKey && [pathCopy isEqualToString:@"_effectiveTraitCollection"])
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
    [(SFAttributedRichLinkCell *)&v13 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (void)_updateUserInterfaceStyle
{
  _effectiveTraitCollection = [(LPLinkView *)self->_linkView _effectiveTraitCollection];
  userInterfaceStyle = [_effectiveTraitCollection userInterfaceStyle];

  traitOverrides = [(SLAttributionView *)self->_attributionView traitOverrides];
  [traitOverrides setUserInterfaceStyle:userInterfaceStyle];

  traitOverrides2 = [(UILabel *)self->_relativeDateLabel traitOverrides];
  [traitOverrides2 setUserInterfaceStyle:userInterfaceStyle];
}

- (BOOL)shouldShowContextMenuFromPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [(UIView *)self->_linkViewContainer frame];
  v9 = x;
  v10 = y;

  return CGRectContainsPoint(*&v5, *&v9);
}

@end