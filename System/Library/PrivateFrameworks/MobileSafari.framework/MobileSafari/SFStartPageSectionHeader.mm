@interface SFStartPageSectionHeader
- (SFStartPageSectionHeader)initWithCoder:(id)coder;
- (SFStartPageSectionHeader)initWithFrame:(CGRect)frame;
- (id)_disclosureButtonForLayout;
- (void)_createSeparatorViewIfNeeded;
- (void)configureUsingSection:(id)section visualStyleProvider:(id)provider resolvingActionsUsingBlock:(id)block;
- (void)layoutSubviews;
- (void)setActions:(id)actions expandsModally:(BOOL)modally withSize:(int64_t)size;
- (void)setBanner:(id)banner;
- (void)setBottomGap:(double)gap;
- (void)updateViewsDependingOnCustomTraits;
@end

@implementation SFStartPageSectionHeader

- (void)updateViewsDependingOnCustomTraits
{
  traitCollection = [(SFStartPageSectionHeader *)self traitCollection];
  -[UIStackView setOverrideUserInterfaceStyle:](self->_buttonStackView, "setOverrideUserInterfaceStyle:", [traitCollection sf_alternateUserInterfaceStyle]);
  sf_alternateTintColor = [traitCollection sf_alternateTintColor];
  [(UIStackView *)self->_buttonStackView setTintColor:sf_alternateTintColor];

  -[UIVisualEffectView setOverrideUserInterfaceStyle:](self->_separatorView, "setOverrideUserInterfaceStyle:", [traitCollection sf_alternateUserInterfaceStyle]);
}

- (id)_disclosureButtonForLayout
{
  arrangedSubviews = [(UIStackView *)self->_buttonStackView arrangedSubviews];
  firstObject = [arrangedSubviews firstObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = firstObject;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (void)layoutSubviews
{
  v10.receiver = self;
  v10.super_class = SFStartPageSectionHeader;
  [(SFStartPageSectionHeader *)&v10 layoutSubviews];
  _disclosureButtonForLayout = [(SFStartPageSectionHeader *)self _disclosureButtonForLayout];
  v4 = _disclosureButtonForLayout;
  if (_disclosureButtonForLayout)
  {
    [_disclosureButtonForLayout layoutIfNeeded];
    [v4 sizeIncludingLabels];
    v6 = v5;
    v8 = v7;
    [(SFStartPageSectionHeaderTitleView *)self->_titleView frame];
    v9 = v6 + CGRectGetWidth(v11) + v8 * 0.3;
    [(SFStartPageSectionHeader *)self bounds];
    [v4 setLabelHidden:{(v9 >= CGRectGetWidth(v12)) & ~-[NSLayoutConstraint isActive](self->_stackCenterXConstraint, "isActive")}];
  }
}

- (SFStartPageSectionHeader)initWithFrame:(CGRect)frame
{
  v53[9] = *MEMORY[0x1E69E9840];
  v51.receiver = self;
  v51.super_class = SFStartPageSectionHeader;
  v3 = [(SFStartPageSectionHeader *)&v51 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(SFStartPageSectionHeaderTitleView);
    titleView = v3->_titleView;
    v3->_titleView = v4;

    [(SFStartPageSectionHeaderTitleView *)v3->_titleView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SFStartPageSectionHeader *)v3 addSubview:v3->_titleView];
    v6 = objc_alloc_init(MEMORY[0x1E69DCF90]);
    buttonStackView = v3->_buttonStackView;
    v3->_buttonStackView = v6;

    [(UIStackView *)v3->_buttonStackView setSpacing:1.17549435e-38];
    [(UIStackView *)v3->_buttonStackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SFStartPageSectionHeader *)v3 addSubview:v3->_buttonStackView];
    [(SFStartPageSectionHeader *)v3 updateViewsDependingOnCustomTraits];
    bottomAnchor = [(SFStartPageSectionHeaderTitleView *)v3->_titleView bottomAnchor];
    bottomAnchor2 = [(SFStartPageSectionHeader *)v3 bottomAnchor];
    v10 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-10.0];
    LODWORD(v11) = 1144750080;
    v12 = [v10 sf_withPriority:v11];
    titleBottomConstraint = v3->_titleBottomConstraint;
    v3->_titleBottomConstraint = v12;

    leadingAnchor = [(UIStackView *)v3->_buttonStackView leadingAnchor];
    trailingAnchor = [(SFStartPageSectionHeaderTitleView *)v3->_titleView trailingAnchor];
    v16 = [leadingAnchor constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:trailingAnchor multiplier:1.0];
    stackLeadingConstraint = v3->_stackLeadingConstraint;
    v3->_stackLeadingConstraint = v16;

    centerXAnchor = [(UIStackView *)v3->_buttonStackView centerXAnchor];
    centerXAnchor2 = [(SFStartPageSectionHeader *)v3 centerXAnchor];
    v20 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    stackCenterXConstraint = v3->_stackCenterXConstraint;
    v3->_stackCenterXConstraint = v20;

    v41 = MEMORY[0x1E696ACD8];
    leadingAnchor2 = [(SFStartPageSectionHeaderTitleView *)v3->_titleView leadingAnchor];
    leadingAnchor3 = [(SFStartPageSectionHeader *)v3 leadingAnchor];
    v48 = [leadingAnchor2 constraintEqualToAnchor:leadingAnchor3];
    v53[0] = v48;
    trailingAnchor2 = [(SFStartPageSectionHeaderTitleView *)v3->_titleView trailingAnchor];
    trailingAnchor3 = [(SFStartPageSectionHeader *)v3 trailingAnchor];
    v45 = [trailingAnchor2 constraintLessThanOrEqualToAnchor:trailingAnchor3];
    v53[1] = v45;
    topAnchor = [(SFStartPageSectionHeaderTitleView *)v3->_titleView topAnchor];
    topAnchor2 = [(SFStartPageSectionHeader *)v3 topAnchor];
    v42 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v53[2] = v42;
    v53[3] = v3->_titleBottomConstraint;
    v53[4] = v3->_stackLeadingConstraint;
    trailingAnchor4 = [(UIStackView *)v3->_buttonStackView trailingAnchor];
    trailingAnchor5 = [(SFStartPageSectionHeader *)v3 trailingAnchor];
    v38 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5];
    v53[5] = v38;
    centerYAnchor = [(UIStackView *)v3->_buttonStackView centerYAnchor];
    centerYAnchor2 = [(SFStartPageSectionHeaderTitleView *)v3->_titleView centerYAnchor];
    v23 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v53[6] = v23;
    heightAnchor = [(UIStackView *)v3->_buttonStackView heightAnchor];
    v25 = [heightAnchor constraintEqualToConstant:0.0];
    LODWORD(v26) = 1131413504;
    v27 = [v25 sf_withPriority:v26];
    v53[7] = v27;
    widthAnchor = [(UIStackView *)v3->_buttonStackView widthAnchor];
    v29 = [widthAnchor constraintEqualToConstant:0.0];
    LODWORD(v30) = 1131413504;
    v31 = [v29 sf_withPriority:v30];
    v53[8] = v31;
    v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:9];
    [v41 activateConstraints:v32];

    v52[0] = objc_opt_class();
    v52[1] = objc_opt_class();
    v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:2];
    v34 = [(SFStartPageSectionHeader *)v3 registerForTraitChanges:v33 withTarget:v3 action:sel_updateViewsDependingOnCustomTraits];

    v35 = v3;
  }

  return v3;
}

- (SFStartPageSectionHeader)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = SFStartPageSectionHeader;
  return [(SFStartPageSectionHeader *)&v4 initWithCoder:coder];
}

- (void)configureUsingSection:(id)section visualStyleProvider:(id)provider resolvingActionsUsingBlock:(id)block
{
  sectionCopy = section;
  blockCopy = block;
  providerCopy = provider;
  showsTopSeparator = [sectionCopy showsTopSeparator];
  if (showsTopSeparator)
  {
    [(SFStartPageSectionHeader *)self _createSeparatorViewIfNeeded];
  }

  [(UIVisualEffectView *)self->_separatorView setHidden:showsTopSeparator ^ 1u];
  [(SFStartPageSectionHeaderTitleView *)self->_titleView configureUsingSection:sectionCopy visualStyleProvider:providerCopy];

  actions = [sectionCopy actions];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __97__SFStartPageSectionHeader_configureUsingSection_visualStyleProvider_resolvingActionsUsingBlock___block_invoke;
  v30[3] = &unk_1E721DDC0;
  v13 = blockCopy;
  v31 = v13;
  v14 = [actions safari_mapAndFilterObjectsUsingBlock:v30];

  title = [sectionCopy title];
  if ([title length])
  {

    expandsModally = [sectionCopy expandsModally];
    v17 = 0;
    v18 = 2;
  }

  else
  {
    v19 = [v14 count];

    expandsModally = [sectionCopy expandsModally];
    v17 = v19 != 0;
    if (v19)
    {
      v18 = 3;
    }

    else
    {
      v18 = 2;
    }
  }

  [(SFStartPageSectionHeader *)self setActions:v14 expandsModally:expandsModally withSize:v18];
  [(NSLayoutConstraint *)self->_stackCenterXConstraint setActive:v17];
  _disclosureButtonForLayout = [(SFStartPageSectionHeader *)self _disclosureButtonForLayout];
  chevron = [_disclosureButtonForLayout chevron];
  leadingAnchor = [chevron leadingAnchor];
  v23 = leadingAnchor;
  if (leadingAnchor)
  {
    leadingAnchor2 = leadingAnchor;
  }

  else
  {
    leadingAnchor2 = [(UIStackView *)self->_buttonStackView leadingAnchor];
  }

  v25 = leadingAnchor2;

  [(NSLayoutConstraint *)self->_stackLeadingConstraint setActive:0];
  trailingAnchor = [(SFStartPageSectionHeaderTitleView *)self->_titleView trailingAnchor];
  v27 = [v25 constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:trailingAnchor multiplier:1.0];
  stackLeadingConstraint = self->_stackLeadingConstraint;
  self->_stackLeadingConstraint = v27;

  [(NSLayoutConstraint *)self->_stackLeadingConstraint setActive:v17 ^ 1];
  banner = [sectionCopy banner];
  [(SFStartPageSectionHeader *)self setBanner:banner];
}

id __97__SFStartPageSectionHeader_configureUsingSection_visualStyleProvider_resolvingActionsUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 makeUIAction];
  v4 = (*(v2 + 16))(v2, v3);

  return v4;
}

- (void)setActions:(id)actions expandsModally:(BOOL)modally withSize:(int64_t)size
{
  v35 = *MEMORY[0x1E69E9840];
  actionsCopy = actions;
  if (![(NSArray *)self->_actions isEqualToArray:actionsCopy])
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    arrangedSubviews = [(UIStackView *)self->_buttonStackView arrangedSubviews];
    v9 = [arrangedSubviews countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v30;
      do
      {
        v12 = 0;
        do
        {
          if (*v30 != v11)
          {
            objc_enumerationMutation(arrangedSubviews);
          }

          [*(*(&v29 + 1) + 8 * v12++) removeFromSuperview];
        }

        while (v10 != v12);
        v10 = [arrangedSubviews countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v10);
    }

    v13 = [actionsCopy copy];
    actions = self->_actions;
    self->_actions = v13;

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v21 = actionsCopy;
    v15 = actionsCopy;
    v16 = [v15 countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v26;
      do
      {
        v19 = 0;
        do
        {
          if (*v26 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v25 + 1) + 8 * v19);
          v23[0] = MEMORY[0x1E69E9820];
          v23[1] = 3221225472;
          v23[2] = __63__SFStartPageSectionHeader_setActions_expandsModally_withSize___block_invoke;
          v23[3] = &unk_1E721DE08;
          modallyCopy = modally;
          v23[5] = self;
          v23[6] = size;
          v23[4] = v20;
          [MEMORY[0x1E69DD250] performWithoutAnimation:{v23, v21}];
          ++v19;
        }

        while (v17 != v19);
        v17 = [v15 countByEnumeratingWithState:&v25 objects:v33 count:16];
      }

      while (v17);
    }

    actionsCopy = v21;
  }
}

void __63__SFStartPageSectionHeader_setActions_expandsModally_withSize___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) identifier];
  v3 = [v2 hasPrefix:*MEMORY[0x1E69C9918]];

  if (v3)
  {
    v4 = [*(a1 + 32) state] == 1;
    v5 = [SFSectionDisclosureButton alloc];
    v15 = [(SFSectionDisclosureButton *)v5 initWithFrame:v4 expanded:*(a1 + 56) modally:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(SFSectionDisclosureButton *)v15 addAction:*(a1 + 32) forControlEvents:0x2000];
  }

  else
  {
    v6 = [MEMORY[0x1E69DC740] plainButtonConfiguration];
    v7 = v6;
    v8 = *(a1 + 48);
    if (v8 == 3)
    {
      [v6 setImagePadding:3.0];
      v9 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDCF8] scale:2];
      [v7 setPreferredSymbolConfigurationForImage:v9];

      v8 = *(a1 + 48);
    }

    [v7 setButtonSize:v8];
    [v7 setImagePlacement:8];
    v10 = [MEMORY[0x1E69DC888] clearColor];
    v11 = [v7 background];
    [v11 setBackgroundColor:v10];

    [v7 setContentInsets:{*MEMORY[0x1E69DC5C0], *(MEMORY[0x1E69DC5C0] + 8), *(MEMORY[0x1E69DC5C0] + 16), *(MEMORY[0x1E69DC5C0] + 24)}];
    v12 = [v7 background];
    [v12 setCornerRadius:0.0];

    [v7 setTitleTextAttributesTransformer:&__block_literal_global_36];
    v15 = [MEMORY[0x1E69DC738] buttonWithConfiguration:v7 primaryAction:*(a1 + 32)];
  }

  v13 = [*(a1 + 32) accessibilityIdentifier];
  [(SFSectionDisclosureButton *)v15 setAccessibilityIdentifier:v13];

  LODWORD(v14) = 1148846080;
  [(SFSectionDisclosureButton *)v15 setContentCompressionResistancePriority:0 forAxis:v14];
  [*(*(a1 + 40) + 512) addArrangedSubview:v15];
}

id __63__SFStartPageSectionHeader_setActions_expandsModally_withSize___block_invoke_2(uint64_t a1, void *a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (UIAccessibilityButtonShapesEnabled())
  {
    v6 = *MEMORY[0x1E69DB758];
    v7[0] = &unk_1EFF73F28;
    v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
    v4 = [v2 safari_dictionaryByMergingWithDictionary:v3];
  }

  else
  {
    v4 = v2;
  }

  return v4;
}

- (void)setBanner:(id)banner
{
  v44[8] = *MEMORY[0x1E69E9840];
  bannerCopy = banner;
  if ((WBSIsEqual() & 1) == 0)
  {
    objc_storeStrong(&self->_banner, banner);
    bannerView = self->_bannerView;
    if (bannerCopy)
    {
      if (!bannerView)
      {
        v7 = [[SFBannerCell alloc] initWithStyle:0];
        v8 = self->_bannerView;
        self->_bannerView = v7;

        [(SFBannerCell *)self->_bannerView setTranslatesAutoresizingMaskIntoConstraints:0];
        LODWORD(v9) = 1148846080;
        [(SFBannerCell *)self->_bannerView setContentHuggingPriority:1 forAxis:v9];
        LODWORD(v10) = 1148846080;
        [(SFBannerCell *)self->_bannerView setContentCompressionResistancePriority:1 forAxis:v10];
        [(SFStartPageSectionHeader *)self addSubview:self->_bannerView];
        contentView = [(SFBannerCell *)self->_bannerView contentView];
        [(SFBannerCell *)contentView setTranslatesAutoresizingMaskIntoConstraints:0];
        bottomAnchor = [(SFBannerCell *)self->_bannerView bottomAnchor];
        bottomAnchor2 = [(SFStartPageSectionHeader *)self bottomAnchor];
        v14 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-10.0];
        bannerViewBottomConstraint = self->_bannerViewBottomConstraint;
        self->_bannerViewBottomConstraint = v14;

        v35 = MEMORY[0x1E696ACD8];
        topAnchor = [(SFBannerCell *)self->_bannerView topAnchor];
        bottomAnchor3 = [(SFStartPageSectionHeaderTitleView *)self->_titleView bottomAnchor];
        v41 = [topAnchor constraintEqualToSystemSpacingBelowAnchor:bottomAnchor3 multiplier:1.0];
        v44[0] = v41;
        leadingAnchor = [(SFBannerCell *)self->_bannerView leadingAnchor];
        leadingAnchor2 = [(SFStartPageSectionHeader *)self leadingAnchor];
        v38 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
        v44[1] = v38;
        trailingAnchor = [(SFBannerCell *)self->_bannerView trailingAnchor];
        trailingAnchor2 = [(SFStartPageSectionHeader *)self trailingAnchor];
        v34 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
        v16 = self->_bannerViewBottomConstraint;
        v44[2] = v34;
        v44[3] = v16;
        leadingAnchor3 = [(SFBannerCell *)contentView leadingAnchor];
        leadingAnchor4 = [(SFBannerCell *)self->_bannerView leadingAnchor];
        v30 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
        v44[4] = v30;
        trailingAnchor3 = [(SFBannerCell *)contentView trailingAnchor];
        trailingAnchor4 = [(SFBannerCell *)self->_bannerView trailingAnchor];
        v27 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
        v44[5] = v27;
        v17 = contentView;
        v32 = contentView;
        topAnchor2 = [(SFBannerCell *)contentView topAnchor];
        topAnchor3 = [(SFBannerCell *)self->_bannerView topAnchor];
        v20 = [topAnchor2 constraintEqualToAnchor:topAnchor3];
        v44[6] = v20;
        bottomAnchor4 = [(SFBannerCell *)v17 bottomAnchor];
        bottomAnchor5 = [(SFBannerCell *)self->_bannerView bottomAnchor];
        v23 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
        v44[7] = v23;
        v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:8];
        [v35 activateConstraints:v24];

        v25 = v32;
LABEL_7:
      }
    }

    else if (bannerView)
    {
      v26 = self->_bannerViewBottomConstraint;
      self->_bannerViewBottomConstraint = 0;

      [(SFBannerCell *)self->_bannerView removeFromSuperview];
      v25 = self->_bannerView;
      self->_bannerView = 0;
      goto LABEL_7;
    }

    [(SFBannerCell *)self->_bannerView configureUsingBanner:bannerCopy];
  }
}

- (void)setBottomGap:(double)gap
{
  v4 = -gap;
  [(NSLayoutConstraint *)self->_titleBottomConstraint constant];
  if (v5 != v4)
  {
    [(NSLayoutConstraint *)self->_titleBottomConstraint setConstant:v4];
    bannerViewBottomConstraint = self->_bannerViewBottomConstraint;

    [(NSLayoutConstraint *)bannerViewBottomConstraint setConstant:v4];
  }
}

- (void)_createSeparatorViewIfNeeded
{
  v23[4] = *MEMORY[0x1E69E9840];
  if (!self->_separatorView)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69DD298]);
    separatorView = self->_separatorView;
    self->_separatorView = v3;

    blackColor = [MEMORY[0x1E69DC888] blackColor];
    contentView = [(UIVisualEffectView *)self->_separatorView contentView];
    [contentView setBackgroundColor:blackColor];

    v7 = MEMORY[0x1E69DD248];
    v8 = [MEMORY[0x1E69DC730] effectWithStyle:8];
    v9 = [v7 effectForBlurEffect:v8 style:6];
    [(UIVisualEffectView *)self->_separatorView setEffect:v9];

    [(UIVisualEffectView *)self->_separatorView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SFStartPageSectionHeader *)self addSubview:self->_separatorView];
    v19 = MEMORY[0x1E696ACD8];
    leadingAnchor = [(UIVisualEffectView *)self->_separatorView leadingAnchor];
    leadingAnchor2 = [(SFStartPageSectionHeader *)self leadingAnchor];
    v20 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v23[0] = v20;
    trailingAnchor = [(UIVisualEffectView *)self->_separatorView trailingAnchor];
    trailingAnchor2 = [(SFStartPageSectionHeader *)self trailingAnchor];
    v12 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v23[1] = v12;
    topAnchor = [(UIVisualEffectView *)self->_separatorView topAnchor];
    topAnchor2 = [(SFStartPageSectionHeader *)self topAnchor];
    v15 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:3.0];
    v23[2] = v15;
    heightAnchor = [(UIVisualEffectView *)self->_separatorView heightAnchor];
    v17 = [heightAnchor constraintEqualToConstant:1.0];
    v23[3] = v17;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:4];
    [v19 activateConstraints:v18];
  }
}

@end