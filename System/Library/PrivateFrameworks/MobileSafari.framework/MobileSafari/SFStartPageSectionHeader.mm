@interface SFStartPageSectionHeader
- (SFStartPageSectionHeader)initWithCoder:(id)a3;
- (SFStartPageSectionHeader)initWithFrame:(CGRect)a3;
- (id)_disclosureButtonForLayout;
- (void)_createSeparatorViewIfNeeded;
- (void)configureUsingSection:(id)a3 visualStyleProvider:(id)a4 resolvingActionsUsingBlock:(id)a5;
- (void)layoutSubviews;
- (void)setActions:(id)a3 expandsModally:(BOOL)a4 withSize:(int64_t)a5;
- (void)setBanner:(id)a3;
- (void)setBottomGap:(double)a3;
- (void)updateViewsDependingOnCustomTraits;
@end

@implementation SFStartPageSectionHeader

- (void)updateViewsDependingOnCustomTraits
{
  v4 = [(SFStartPageSectionHeader *)self traitCollection];
  -[UIStackView setOverrideUserInterfaceStyle:](self->_buttonStackView, "setOverrideUserInterfaceStyle:", [v4 sf_alternateUserInterfaceStyle]);
  v3 = [v4 sf_alternateTintColor];
  [(UIStackView *)self->_buttonStackView setTintColor:v3];

  -[UIVisualEffectView setOverrideUserInterfaceStyle:](self->_separatorView, "setOverrideUserInterfaceStyle:", [v4 sf_alternateUserInterfaceStyle]);
}

- (id)_disclosureButtonForLayout
{
  v2 = [(UIStackView *)self->_buttonStackView arrangedSubviews];
  v3 = [v2 firstObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
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
  v3 = [(SFStartPageSectionHeader *)self _disclosureButtonForLayout];
  v4 = v3;
  if (v3)
  {
    [v3 layoutIfNeeded];
    [v4 sizeIncludingLabels];
    v6 = v5;
    v8 = v7;
    [(SFStartPageSectionHeaderTitleView *)self->_titleView frame];
    v9 = v6 + CGRectGetWidth(v11) + v8 * 0.3;
    [(SFStartPageSectionHeader *)self bounds];
    [v4 setLabelHidden:{(v9 >= CGRectGetWidth(v12)) & ~-[NSLayoutConstraint isActive](self->_stackCenterXConstraint, "isActive")}];
  }
}

- (SFStartPageSectionHeader)initWithFrame:(CGRect)a3
{
  v53[9] = *MEMORY[0x1E69E9840];
  v51.receiver = self;
  v51.super_class = SFStartPageSectionHeader;
  v3 = [(SFStartPageSectionHeader *)&v51 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
    v8 = [(SFStartPageSectionHeaderTitleView *)v3->_titleView bottomAnchor];
    v9 = [(SFStartPageSectionHeader *)v3 bottomAnchor];
    v10 = [v8 constraintEqualToAnchor:v9 constant:-10.0];
    LODWORD(v11) = 1144750080;
    v12 = [v10 sf_withPriority:v11];
    titleBottomConstraint = v3->_titleBottomConstraint;
    v3->_titleBottomConstraint = v12;

    v14 = [(UIStackView *)v3->_buttonStackView leadingAnchor];
    v15 = [(SFStartPageSectionHeaderTitleView *)v3->_titleView trailingAnchor];
    v16 = [v14 constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:v15 multiplier:1.0];
    stackLeadingConstraint = v3->_stackLeadingConstraint;
    v3->_stackLeadingConstraint = v16;

    v18 = [(UIStackView *)v3->_buttonStackView centerXAnchor];
    v19 = [(SFStartPageSectionHeader *)v3 centerXAnchor];
    v20 = [v18 constraintEqualToAnchor:v19];
    stackCenterXConstraint = v3->_stackCenterXConstraint;
    v3->_stackCenterXConstraint = v20;

    v41 = MEMORY[0x1E696ACD8];
    v50 = [(SFStartPageSectionHeaderTitleView *)v3->_titleView leadingAnchor];
    v49 = [(SFStartPageSectionHeader *)v3 leadingAnchor];
    v48 = [v50 constraintEqualToAnchor:v49];
    v53[0] = v48;
    v47 = [(SFStartPageSectionHeaderTitleView *)v3->_titleView trailingAnchor];
    v46 = [(SFStartPageSectionHeader *)v3 trailingAnchor];
    v45 = [v47 constraintLessThanOrEqualToAnchor:v46];
    v53[1] = v45;
    v44 = [(SFStartPageSectionHeaderTitleView *)v3->_titleView topAnchor];
    v43 = [(SFStartPageSectionHeader *)v3 topAnchor];
    v42 = [v44 constraintEqualToAnchor:v43];
    v53[2] = v42;
    v53[3] = v3->_titleBottomConstraint;
    v53[4] = v3->_stackLeadingConstraint;
    v40 = [(UIStackView *)v3->_buttonStackView trailingAnchor];
    v39 = [(SFStartPageSectionHeader *)v3 trailingAnchor];
    v38 = [v40 constraintEqualToAnchor:v39];
    v53[5] = v38;
    v37 = [(UIStackView *)v3->_buttonStackView centerYAnchor];
    v22 = [(SFStartPageSectionHeaderTitleView *)v3->_titleView centerYAnchor];
    v23 = [v37 constraintEqualToAnchor:v22];
    v53[6] = v23;
    v24 = [(UIStackView *)v3->_buttonStackView heightAnchor];
    v25 = [v24 constraintEqualToConstant:0.0];
    LODWORD(v26) = 1131413504;
    v27 = [v25 sf_withPriority:v26];
    v53[7] = v27;
    v28 = [(UIStackView *)v3->_buttonStackView widthAnchor];
    v29 = [v28 constraintEqualToConstant:0.0];
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

- (SFStartPageSectionHeader)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = SFStartPageSectionHeader;
  return [(SFStartPageSectionHeader *)&v4 initWithCoder:a3];
}

- (void)configureUsingSection:(id)a3 visualStyleProvider:(id)a4 resolvingActionsUsingBlock:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [v8 showsTopSeparator];
  if (v11)
  {
    [(SFStartPageSectionHeader *)self _createSeparatorViewIfNeeded];
  }

  [(UIVisualEffectView *)self->_separatorView setHidden:v11 ^ 1u];
  [(SFStartPageSectionHeaderTitleView *)self->_titleView configureUsingSection:v8 visualStyleProvider:v10];

  v12 = [v8 actions];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __97__SFStartPageSectionHeader_configureUsingSection_visualStyleProvider_resolvingActionsUsingBlock___block_invoke;
  v30[3] = &unk_1E721DDC0;
  v13 = v9;
  v31 = v13;
  v14 = [v12 safari_mapAndFilterObjectsUsingBlock:v30];

  v15 = [v8 title];
  if ([v15 length])
  {

    v16 = [v8 expandsModally];
    v17 = 0;
    v18 = 2;
  }

  else
  {
    v19 = [v14 count];

    v16 = [v8 expandsModally];
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

  [(SFStartPageSectionHeader *)self setActions:v14 expandsModally:v16 withSize:v18];
  [(NSLayoutConstraint *)self->_stackCenterXConstraint setActive:v17];
  v20 = [(SFStartPageSectionHeader *)self _disclosureButtonForLayout];
  v21 = [v20 chevron];
  v22 = [v21 leadingAnchor];
  v23 = v22;
  if (v22)
  {
    v24 = v22;
  }

  else
  {
    v24 = [(UIStackView *)self->_buttonStackView leadingAnchor];
  }

  v25 = v24;

  [(NSLayoutConstraint *)self->_stackLeadingConstraint setActive:0];
  v26 = [(SFStartPageSectionHeaderTitleView *)self->_titleView trailingAnchor];
  v27 = [v25 constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:v26 multiplier:1.0];
  stackLeadingConstraint = self->_stackLeadingConstraint;
  self->_stackLeadingConstraint = v27;

  [(NSLayoutConstraint *)self->_stackLeadingConstraint setActive:v17 ^ 1];
  v29 = [v8 banner];
  [(SFStartPageSectionHeader *)self setBanner:v29];
}

id __97__SFStartPageSectionHeader_configureUsingSection_visualStyleProvider_resolvingActionsUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 makeUIAction];
  v4 = (*(v2 + 16))(v2, v3);

  return v4;
}

- (void)setActions:(id)a3 expandsModally:(BOOL)a4 withSize:(int64_t)a5
{
  v35 = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (![(NSArray *)self->_actions isEqualToArray:v7])
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v8 = [(UIStackView *)self->_buttonStackView arrangedSubviews];
    v9 = [v8 countByEnumeratingWithState:&v29 objects:v34 count:16];
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
            objc_enumerationMutation(v8);
          }

          [*(*(&v29 + 1) + 8 * v12++) removeFromSuperview];
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v10);
    }

    v13 = [v7 copy];
    actions = self->_actions;
    self->_actions = v13;

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v21 = v7;
    v15 = v7;
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
          v24 = a4;
          v23[5] = self;
          v23[6] = a5;
          v23[4] = v20;
          [MEMORY[0x1E69DD250] performWithoutAnimation:{v23, v21}];
          ++v19;
        }

        while (v17 != v19);
        v17 = [v15 countByEnumeratingWithState:&v25 objects:v33 count:16];
      }

      while (v17);
    }

    v7 = v21;
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

- (void)setBanner:(id)a3
{
  v44[8] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((WBSIsEqual() & 1) == 0)
  {
    objc_storeStrong(&self->_banner, a3);
    bannerView = self->_bannerView;
    if (v5)
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
        v11 = [(SFBannerCell *)self->_bannerView contentView];
        [(SFBannerCell *)v11 setTranslatesAutoresizingMaskIntoConstraints:0];
        v12 = [(SFBannerCell *)self->_bannerView bottomAnchor];
        v13 = [(SFStartPageSectionHeader *)self bottomAnchor];
        v14 = [v12 constraintEqualToAnchor:v13 constant:-10.0];
        bannerViewBottomConstraint = self->_bannerViewBottomConstraint;
        self->_bannerViewBottomConstraint = v14;

        v35 = MEMORY[0x1E696ACD8];
        v43 = [(SFBannerCell *)self->_bannerView topAnchor];
        v42 = [(SFStartPageSectionHeaderTitleView *)self->_titleView bottomAnchor];
        v41 = [v43 constraintEqualToSystemSpacingBelowAnchor:v42 multiplier:1.0];
        v44[0] = v41;
        v40 = [(SFBannerCell *)self->_bannerView leadingAnchor];
        v39 = [(SFStartPageSectionHeader *)self leadingAnchor];
        v38 = [v40 constraintEqualToAnchor:v39];
        v44[1] = v38;
        v37 = [(SFBannerCell *)self->_bannerView trailingAnchor];
        v36 = [(SFStartPageSectionHeader *)self trailingAnchor];
        v34 = [v37 constraintEqualToAnchor:v36];
        v16 = self->_bannerViewBottomConstraint;
        v44[2] = v34;
        v44[3] = v16;
        v33 = [(SFBannerCell *)v11 leadingAnchor];
        v31 = [(SFBannerCell *)self->_bannerView leadingAnchor];
        v30 = [v33 constraintEqualToAnchor:v31];
        v44[4] = v30;
        v29 = [(SFBannerCell *)v11 trailingAnchor];
        v28 = [(SFBannerCell *)self->_bannerView trailingAnchor];
        v27 = [v29 constraintEqualToAnchor:v28];
        v44[5] = v27;
        v17 = v11;
        v32 = v11;
        v18 = [(SFBannerCell *)v11 topAnchor];
        v19 = [(SFBannerCell *)self->_bannerView topAnchor];
        v20 = [v18 constraintEqualToAnchor:v19];
        v44[6] = v20;
        v21 = [(SFBannerCell *)v17 bottomAnchor];
        v22 = [(SFBannerCell *)self->_bannerView bottomAnchor];
        v23 = [v21 constraintEqualToAnchor:v22];
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

    [(SFBannerCell *)self->_bannerView configureUsingBanner:v5];
  }
}

- (void)setBottomGap:(double)a3
{
  v4 = -a3;
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

    v5 = [MEMORY[0x1E69DC888] blackColor];
    v6 = [(UIVisualEffectView *)self->_separatorView contentView];
    [v6 setBackgroundColor:v5];

    v7 = MEMORY[0x1E69DD248];
    v8 = [MEMORY[0x1E69DC730] effectWithStyle:8];
    v9 = [v7 effectForBlurEffect:v8 style:6];
    [(UIVisualEffectView *)self->_separatorView setEffect:v9];

    [(UIVisualEffectView *)self->_separatorView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SFStartPageSectionHeader *)self addSubview:self->_separatorView];
    v19 = MEMORY[0x1E696ACD8];
    v22 = [(UIVisualEffectView *)self->_separatorView leadingAnchor];
    v21 = [(SFStartPageSectionHeader *)self leadingAnchor];
    v20 = [v22 constraintEqualToAnchor:v21];
    v23[0] = v20;
    v10 = [(UIVisualEffectView *)self->_separatorView trailingAnchor];
    v11 = [(SFStartPageSectionHeader *)self trailingAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];
    v23[1] = v12;
    v13 = [(UIVisualEffectView *)self->_separatorView topAnchor];
    v14 = [(SFStartPageSectionHeader *)self topAnchor];
    v15 = [v13 constraintEqualToAnchor:v14 constant:3.0];
    v23[2] = v15;
    v16 = [(UIVisualEffectView *)self->_separatorView heightAnchor];
    v17 = [v16 constraintEqualToConstant:1.0];
    v23[3] = v17;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:4];
    [v19 activateConstraints:v18];
  }
}

@end