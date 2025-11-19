@interface CPUIImageRowCell
- (NSDirectionalEdgeInsets)contentInsets;
- (double)_artworkContentWidth;
- (int64_t)_maxArtworkCountFittingSize;
- (void)_layoutArtworkImagesIfNeeded;
- (void)_removeArtworkTitleItem:(id)a3;
- (void)_setContentClipCorners:(unint64_t)a3 updateCorners:(BOOL)a4;
- (void)_setNeedsArtworkImagesLayout;
- (void)_updateTintColors;
- (void)applyConfiguration:(id)a3;
- (void)configureCell;
- (void)coreCellItemTapped:(id)a3;
- (void)createItemStackView;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)gridCellItemTapped:(id)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setContentInsets:(NSDirectionalEdgeInsets)a3;
- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4;
- (void)setLoading:(BOOL)a3;
- (void)setMaximumNumberOfLines:(unint64_t)a3;
- (void)setTrailingView:(id)a3;
@end

@implementation CPUIImageRowCell

- (void)_updateTintColors
{
  v11.receiver = self;
  v11.super_class = CPUIImageRowCell;
  [(_CPUIBaseTableCell *)&v11 _updateTintColors];
  if ([(_CPUIBaseTableCell *)self itemEnabled])
  {
    [MEMORY[0x277D75348] labelColor];
  }

  else
  {
    +[_CPUIBaseTableCell disabledColor];
  }
  v3 = ;
  if ([(_CPUIBaseTableCell *)self itemEnabled])
  {
    [MEMORY[0x277D75348] _carSystemFocusLabelColor];
  }

  else
  {
    +[_CPUIBaseTableCell disabledHighlightedColor];
  }
  v4 = ;
  v5 = [(CPUIImageRowCell *)self titleLabel];
  if ([(CPUIImageRowCell *)self isHighlighted])
  {
    v6 = v4;
  }

  else
  {
    v6 = v3;
  }

  [v5 setTextColor:v6];

  if ([(_CPUIBaseTableCell *)self itemEnabled])
  {
    [MEMORY[0x277D75348] _carSystemSecondaryColor];
  }

  else
  {
    +[_CPUIBaseTableCell disabledColor];
  }
  v7 = ;
  if ([(_CPUIBaseTableCell *)self itemEnabled])
  {
    [MEMORY[0x277D75348] _carSystemFocusPrimaryColor];
  }

  else
  {
    +[_CPUIBaseTableCell disabledHighlightedColor];
  }
  v8 = ;
  v9 = [(CPUIImageRowCell *)self chevronView];
  if ([(CPUIImageRowCell *)self isHighlighted])
  {
    v10 = v8;
  }

  else
  {
    v10 = v7;
  }

  [v9 setTintColor:v10];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = CPUIImageRowCell;
  [(CPUIImageRowCell *)&v3 prepareForReuse];
  self->_wasFocused = 0;
}

- (void)configureCell
{
  v102[5] = *MEMORY[0x277D85DE8];
  v99.receiver = self;
  v99.super_class = CPUIImageRowCell;
  [(_CPUIBaseTableCell *)&v99 configureCell];
  v3 = objc_opt_new();
  contentStackView = self->_contentStackView;
  self->_contentStackView = v3;

  [(UIStackView *)self->_contentStackView setAxis:1];
  [(UIStackView *)self->_contentStackView setDistribution:0];
  [(UIStackView *)self->_contentStackView setAlignment:1];
  [(UIStackView *)self->_contentStackView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_contentStackView setClipsToBounds:0];
  v5 = _UISolariumEnabled();
  v6 = &CPUIImageRowCellDefaultLineSpacing_Solarium;
  if (!v5)
  {
    v6 = &CPUIImageRowCellDefaultLineSpacing;
  }

  [(UIStackView *)self->_contentStackView setSpacing:*v6];
  v7 = [(CPUIImageRowCell *)self contentView];
  v8 = [(CPUIImageRowCell *)self contentStackView];
  [v7 addSubview:v8];

  v9 = objc_opt_new();
  titleStackView = self->_titleStackView;
  self->_titleStackView = v9;

  [(UIStackView *)self->_titleStackView setAxis:0];
  [(UIStackView *)self->_titleStackView setDistribution:0];
  [(UIStackView *)self->_titleStackView setAlignment:3];
  [(UIStackView *)self->_titleStackView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_titleStackView setClipsToBounds:0];
  [(UIStackView *)self->_titleStackView setSpacing:4.0];
  v11 = [(CPUIImageRowCell *)self contentStackView];
  v12 = [(CPUIImageRowCell *)self titleStackView];
  [v11 addArrangedSubview:v12];

  v13 = objc_opt_new();
  titleLabel = self->_titleLabel;
  self->_titleLabel = v13;

  [(UILabel *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v15 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76920] weight:*MEMORY[0x277D743F8]];
  [(UILabel *)self->_titleLabel setFont:v15];

  v16 = [(CPUIImageRowCell *)self titleStackView];
  v17 = [(CPUIImageRowCell *)self titleLabel];
  [v16 addArrangedSubview:v17];

  v18 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:21];
  activityIndicator = self->_activityIndicator;
  self->_activityIndicator = v18;

  [(UIActivityIndicatorView *)self->_activityIndicator setTranslatesAutoresizingMaskIntoConstraints:0];
  v20 = objc_opt_new();
  focusIndicator = self->_focusIndicator;
  self->_focusIndicator = v20;

  [(CPUIImageRowHighlightButton *)self->_focusIndicator addTarget:self action:sel_coreCellItemTapped_ forControlEvents:0x2000];
  [(CPUIImageRowHighlightButton *)self->_focusIndicator setTranslatesAutoresizingMaskIntoConstraints:0];
  [(CPUIImageRowCell *)self addSubview:self->_focusIndicator];
  [(CPUIImageRowCell *)self sendSubviewToBack:self->_focusIndicator];
  v22 = objc_alloc(MEMORY[0x277D755E8]);
  v23 = [(CPUIImageRowCell *)self traitCollection];
  v24 = CPUIChevronRightGlyph();
  v25 = [v24 imageWithRenderingMode:2];
  v26 = [v22 initWithImage:v25];
  chevronView = self->_chevronView;
  self->_chevronView = v26;

  [(UIImageView *)self->_chevronView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(CPUIImageRowCell *)self setTrailingView:self->_chevronView];
  v28 = objc_opt_new();
  itemStackViews = self->_itemStackViews;
  self->_itemStackViews = v28;

  v30 = objc_opt_new();
  reusableMediaViews = self->_reusableMediaViews;
  self->_reusableMediaViews = v30;

  v32 = MEMORY[0x277D755B8];
  v33 = CPUIFrameworkBundle();
  v34 = [(CPUIImageRowCell *)self traitCollection];
  v35 = [v32 imageNamed:@"PlaceholderMusic" inBundle:v33 compatibleWithTraitCollection:v34];
  fallbackImage = self->_fallbackImage;
  self->_fallbackImage = v35;

  [(CPUIImageRowCell *)self setSelectionStyle:0];
  p_contentInsets = &self->_contentInsets;
  if (_UISolariumEnabled())
  {
    v38 = &CPUIImageRowCellDefaultContentInsets_Solarium;
  }

  else
  {
    v38 = &CPUIImageRowCellDefaultContentInsets;
  }

  v39 = v38[1];
  *&p_contentInsets->top = *v38;
  *&self->_contentInsets.bottom = v39;
  v40 = [(UIStackView *)self->_contentStackView topAnchor];
  v41 = [(CPUIImageRowCell *)self contentView];
  v42 = [v41 topAnchor];
  v43 = [v40 constraintEqualToAnchor:v42 constant:p_contentInsets->top];
  topInsetConstraint = self->_topInsetConstraint;
  self->_topInsetConstraint = v43;

  v45 = [(UIStackView *)self->_contentStackView leadingAnchor];
  v46 = [(CPUIImageRowCell *)self contentView];
  v47 = [v46 leadingAnchor];
  v48 = [v45 constraintEqualToAnchor:v47 constant:self->_contentInsets.leading];
  leadingInsetConstraint = self->_leadingInsetConstraint;
  self->_leadingInsetConstraint = v48;

  v50 = [(UIStackView *)self->_contentStackView trailingAnchor];
  v51 = [(CPUIImageRowCell *)self contentView];
  v52 = [v51 trailingAnchor];
  v53 = [v50 constraintEqualToAnchor:v52 constant:-self->_contentInsets.trailing];
  trailingInsetConstraint = self->_trailingInsetConstraint;
  self->_trailingInsetConstraint = v53;

  v55 = [(UIStackView *)self->_contentStackView bottomAnchor];
  v56 = [(CPUIImageRowCell *)self contentView];
  v57 = [v56 bottomAnchor];
  v58 = [v55 constraintEqualToAnchor:v57 constant:-self->_contentInsets.bottom];
  bottomInsetConstraint = self->_bottomInsetConstraint;
  self->_bottomInsetConstraint = v58;

  v60 = MEMORY[0x277CCAAD0];
  v61 = self->_leadingInsetConstraint;
  v102[0] = self->_topInsetConstraint;
  v102[1] = v61;
  v62 = self->_bottomInsetConstraint;
  v102[2] = self->_trailingInsetConstraint;
  v102[3] = v62;
  v63 = [(UIStackView *)self->_titleStackView leadingAnchor];
  v64 = [(UIStackView *)self->_contentStackView leadingAnchor];
  v65 = [v63 constraintEqualToAnchor:v64];
  v102[4] = v65;
  v66 = [MEMORY[0x277CBEA60] arrayWithObjects:v102 count:5];
  [v60 activateConstraints:v66];

  v67 = _UISolariumEnabled();
  v95 = MEMORY[0x277CCAAD0];
  v68 = self->_focusIndicator;
  if (v67)
  {
    v69 = [(CPUIImageRowHighlightButton *)v68 leadingAnchor];
    v98 = [(CPUIImageRowCell *)self titleStackView];
    [v98 leadingAnchor];
    v97 = v90 = v69;
    v96 = [v69 constraintEqualToAnchor:-8.0 constant:?];
    v101[0] = v96;
    v70 = [(CPUIImageRowHighlightButton *)self->_focusIndicator trailingAnchor];
    v93 = [(CPUIImageRowCell *)self titleStackView];
    [v93 trailingAnchor];
    v92 = v94 = v70;
    v91 = [v70 constraintEqualToAnchor:8.0 constant:?];
    v101[1] = v91;
    v71 = [(CPUIImageRowHighlightButton *)self->_focusIndicator topAnchor];
    v89 = [(CPUIImageRowCell *)self titleStackView];
    v87 = [v89 topAnchor];
    v88 = v71;
    v72 = [v71 constraintEqualToAnchor:-3.0 constant:?];
    v101[2] = v72;
    v73 = [(CPUIImageRowHighlightButton *)self->_focusIndicator bottomAnchor];
    v74 = [(CPUIImageRowCell *)self titleStackView];
    v75 = [v74 bottomAnchor];
    v76 = [v73 constraintEqualToAnchor:v75 constant:3.0];
    v101[3] = v76;
    v77 = [(UIStackView *)self->_titleStackView trailingAnchor];
    v78 = [(UIStackView *)self->_contentStackView trailingAnchor];
    v79 = [v77 constraintLessThanOrEqualToAnchor:v78 constant:-12.0];
    v101[4] = v79;
    v80 = v101;
  }

  else
  {
    v81 = [(CPUIImageRowHighlightButton *)v68 topAnchor];
    v98 = [(CPUIImageRowCell *)self titleStackView];
    [v98 topAnchor];
    v97 = v90 = v81;
    v96 = [v81 constraintEqualToAnchor:-8.0 constant:?];
    v100[0] = v96;
    v82 = [(CPUIImageRowHighlightButton *)self->_focusIndicator leadingAnchor];
    v93 = [(CPUIImageRowCell *)self titleStackView];
    [v93 leadingAnchor];
    v92 = v94 = v82;
    v91 = [v82 constraintEqualToAnchor:-8.0 constant:?];
    v100[1] = v91;
    v83 = [(CPUIImageRowHighlightButton *)self->_focusIndicator trailingAnchor];
    v89 = [(CPUIImageRowCell *)self titleStackView];
    v87 = [v89 trailingAnchor];
    v88 = v83;
    v72 = [v83 constraintEqualToAnchor:8.0 constant:?];
    v100[2] = v72;
    v73 = [(CPUIImageRowHighlightButton *)self->_focusIndicator bottomAnchor];
    v74 = [(CPUIImageRowCell *)self titleStackView];
    v75 = [v74 bottomAnchor];
    v76 = [v73 constraintEqualToAnchor:v75 constant:8.0];
    v100[3] = v76;
    v77 = [(UIStackView *)self->_titleStackView trailingAnchor];
    v78 = [(UIStackView *)self->_contentStackView trailingAnchor];
    v79 = [v77 constraintLessThanOrEqualToAnchor:v78];
    v100[4] = v79;
    v80 = v100;
  }

  v84 = [MEMORY[0x277CBEA60] arrayWithObjects:v80 count:5];
  [v95 activateConstraints:v84];

  [(CPUIImageRowCell *)self setAccessibilityIdentifier:@"CPListImageRowItem"];
  v85 = [(CPUIImageRowCell *)self titleLabel];
  [v85 setAccessibilityIdentifier:@"CPListItemTitle"];

  if (_os_feature_enabled_impl())
  {
    v86 = [(CPUIImageRowCell *)self titleLabel];
    [v86 setAdjustsFontForContentSizeCategory:1];
  }
}

- (void)setMaximumNumberOfLines:(unint64_t)a3
{
  v32 = *MEMORY[0x277D85DE8];
  if (self->_maximumNumberOfLines != a3)
  {
    self->_maximumNumberOfLines = a3;
    if (a3)
    {
      v5 = [(CPUIImageRowCell *)self itemStackViews];
      v6 = [v5 count];

      if (v6 > a3)
      {
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v7 = [(CPUIImageRowCell *)self itemStackViews];
        v8 = [v7 reverseObjectEnumerator];

        v9 = [v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v27;
          v12 = a3 - 1;
LABEL_6:
          v13 = 0;
          while (1)
          {
            if (*v27 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v14 = *(*(&v26 + 1) + 8 * v13);
            v15 = [(CPUIImageRowCell *)self itemStackViews];
            v16 = [v15 objectAtIndexedSubscript:v12];

            if (v14 == v16)
            {
              break;
            }

            v24 = 0u;
            v25 = 0u;
            v22 = 0u;
            v23 = 0u;
            v17 = [v14 arrangedSubviews];
            v18 = [v17 countByEnumeratingWithState:&v22 objects:v30 count:16];
            if (v18)
            {
              v19 = v18;
              v20 = *v23;
              do
              {
                for (i = 0; i != v19; ++i)
                {
                  if (*v23 != v20)
                  {
                    objc_enumerationMutation(v17);
                  }

                  [(CPUIImageRowCell *)self _removeArtworkTitleItem:*(*(&v22 + 1) + 8 * i)];
                }

                v19 = [v17 countByEnumeratingWithState:&v22 objects:v30 count:16];
              }

              while (v19);
            }

            if (++v13 == v10)
            {
              v10 = [v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
              if (v10)
              {
                goto LABEL_6;
              }

              break;
            }
          }
        }
      }
    }
  }
}

- (void)setContentInsets:(NSDirectionalEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.leading;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.trailing;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentInsets.top, v3), vceqq_f64(*&self->_contentInsets.bottom, v4)))) & 1) == 0)
  {
    self->_contentInsets = a3;
    trailing = a3.trailing;
    bottom = a3.bottom;
    leading = a3.leading;
    [(NSLayoutConstraint *)self->_topInsetConstraint setConstant:?];
    [(NSLayoutConstraint *)self->_leadingInsetConstraint setConstant:leading];
    [(NSLayoutConstraint *)self->_trailingInsetConstraint setConstant:-trailing];
    [(NSLayoutConstraint *)self->_bottomInsetConstraint setConstant:-bottom];
    v9 = [(CPUIImageRowCell *)self contentStackView];
    [v9 setNeedsLayout];
  }
}

- (void)applyConfiguration:(id)a3
{
  v24[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  -[_CPUIBaseTableCell setItemEnabled:](self, "setItemEnabled:", [v4 enabled]);
  -[CPUIImageRowCell setMaximumNumberOfLines:](self, "setMaximumNumberOfLines:", [v4 maximumNumberOfLines]);
  [v4 contentInsets];
  [(CPUIImageRowCell *)self setContentInsets:?];
  [v4 lineSpacing];
  v6 = v5;
  v7 = [(CPUIImageRowCell *)self contentStackView];
  [v7 setSpacing:v6];

  v8 = [v4 title];

  if (v8)
  {
    v9 = [v4 title];
    v10 = [(CPUIImageRowCell *)self titleLabel];
    [v10 setText:v9];

    [(UIStackView *)self->_titleStackView setHidden:0];
    [(CPUIMediaButton *)self->_focusIndicator setHidden:0];
    v11 = [v4 title];
    [(CPUIImageRowHighlightButton *)self->_focusIndicator setAccessibilityLabel:v11];

    v12 = [v4 title];
    v24[0] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
    [(CPUIImageRowHighlightButton *)self->_focusIndicator setAccessibilityUserInputLabels:v13];

    focusIndicator = self->_focusIndicator;
    v15 = [(_CPUIBaseTableCell *)self itemEnabled];
    v16 = focusIndicator;
  }

  else
  {
    [(UIStackView *)self->_titleStackView setHidden:1];
    [(CPUIMediaButton *)self->_focusIndicator setHidden:1];
    v16 = self->_focusIndicator;
    v15 = 0;
  }

  [(CPUIImageRowHighlightButton *)v16 setEnabled:v15];
  [(CPUIImageRowCell *)self _updateTintColors];
  v17 = [v4 selectGridItemBlock];
  [(CPUIImageRowCell *)self setSelectGridItemBlock:v17];

  v18 = [v4 selectTitleBlock];
  [(CPUIImageRowCell *)self setSelectTitleBlock:v18];

  v19 = [v4 itemsConfigurations];
  [(CPUIImageRowCell *)self setItemsConfigurations:v19];

  v20 = [v4 bundleIdentifier];
  v21 = CPUIPlaceholderTypeForBundleIdentifier(v20);

  v22 = [(CPUIImageRowCell *)self traitCollection];
  v23 = CPUIImageForPlaceholderTypeWithTraitCollection(v21, v22);
  [(CPUIImageRowCell *)self setFallbackImage:v23];

  -[CPUIImageRowCell setLoading:](self, "setLoading:", [v4 showActivityIndicator]);
  [(CPUIImageRowCell *)self _setNeedsArtworkImagesLayout];
  [(CPUIImageRowCell *)self setNeedsLayout];
}

- (double)_artworkContentWidth
{
  v3 = [(CPUIImageRowCell *)self contentView];
  [v3 bounds];
  Width = CGRectGetWidth(v10);
  [(NSLayoutConstraint *)self->_leadingInsetConstraint constant];
  v6 = v5;
  [(NSLayoutConstraint *)self->_trailingInsetConstraint constant];
  v8 = Width - (v6 + v7);

  return v8;
}

- (int64_t)_maxArtworkCountFittingSize
{
  [(CPUIImageRowCell *)self _artworkContentWidth];

  return [CPUIGridViewBaseWidthControlledColumnCountGridSize numberOfColumnsFor:?];
}

- (void)setLoading:(BOOL)a3
{
  if (a3)
  {
    [(CPUIImageRowCell *)self setTrailingView:self->_activityIndicator];
    v4 = [(CPUIImageRowCell *)self activityIndicator];
    [v4 startAnimating];
  }

  else
  {
    [(CPUIImageRowCell *)self setTrailingView:self->_chevronView];
    v4 = [(CPUIImageRowCell *)self activityIndicator];
    [v4 stopAnimating];
  }
}

- (void)setTrailingView:(id)a3
{
  v4 = a3;
  [(UIView *)self->_trailingView removeFromSuperview];
  v5 = [(CPUIImageRowCell *)self titleStackView];
  [v5 removeArrangedSubview:self->_trailingView];

  trailingView = self->_trailingView;
  self->_trailingView = v4;
  v9 = v4;

  v7 = [(CPUIImageRowCell *)self titleStackView];
  [v7 addArrangedSubview:v9];

  LODWORD(v8) = 1148846080;
  [(UIView *)v9 setContentCompressionResistancePriority:0 forAxis:v8];
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v5 = a3;
  v6 = [(CPUIImageRowCell *)self focusIndicator];
  v7 = [v5 nextFocusedItem];

  self->_wasFocused = v6 == v7;
  wasFocused = self->_wasFocused;

  [(CPUIImageRowCell *)self setHighlighted:wasFocused];
}

- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4
{
  v5 = a3 || self->_wasFocused;
  v8.receiver = self;
  v8.super_class = CPUIImageRowCell;
  [(CPUIImageRowCell *)&v8 setHighlighted:v5 animated:a4];
  [(CPUIImageRowCell *)self _updateTintColors];
  v6 = [(CPUIImageRowCell *)self isHighlighted];
  v7 = [(CPUIImageRowCell *)self focusIndicator];
  [v7 setShowHighlight:v6];
}

- (void)layoutSubviews
{
  v9.receiver = self;
  v9.super_class = CPUIImageRowCell;
  [(CPUIImageRowCell *)&v9 layoutSubviews];
  [(CPUIImageRowCell *)self bounds];
  height = self->_lastKnownBoundingSize.height;
  if (self->_lastKnownBoundingSize.width != v5 || height != v3)
  {
    [(CPUIImageRowCell *)self _setNeedsArtworkImagesLayout:self->_lastKnownBoundingSize.width];
    [(CPUIImageRowCell *)self _layoutArtworkImagesIfNeeded];
  }

  [(CPUIImageRowCell *)self bounds];
  self->_lastKnownBoundingSize.width = v7;
  self->_lastKnownBoundingSize.height = v8;
}

- (void)_setNeedsArtworkImagesLayout
{
  if (!self->_needsArtworkImagesLayout)
  {
    self->_needsArtworkImagesLayout = 1;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__CPUIImageRowCell__setNeedsArtworkImagesLayout__block_invoke;
    block[3] = &unk_278D9C2D8;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (void)_layoutArtworkImagesIfNeeded
{
  if (self->_needsArtworkImagesLayout)
  {
    v30[7] = v5;
    v30[8] = v4;
    v30[17] = v2;
    v30[18] = v3;
    self->_needsArtworkImagesLayout = 0;
    v7 = [(CPUIImageRowCell *)self itemsConfigurations];
    v8 = [v7 count];

    if (v8)
    {
      v9 = [(CPUIImageRowCell *)self itemsConfigurations];
      v10 = [v9 count];

      v11 = [(CPUIImageRowCell *)self _maxArtworkCountFittingSize];
      if (v10 >= v11)
      {
        v12 = v11;
      }

      else
      {
        v12 = v10;
      }

      if ([(CPUIImageRowCell *)self maximumNumberOfLines])
      {
        v13 = [(CPUIImageRowCell *)self maximumNumberOfLines]* v12;
      }

      else
      {
        v14 = [(CPUIImageRowCell *)self itemsConfigurations];
        v13 = [v14 count];
      }

      v15 = [(CPUIImageRowCell *)self itemsConfigurations];
      v16 = [v15 count];

      if (v13 >= v16)
      {
        v17 = v16;
      }

      else
      {
        v17 = v13;
      }

      v18 = [(CPUIImageRowCell *)self itemsConfigurations];
      v19 = [v18 subarrayWithRange:{0, v17}];

      [(CPUIImageRowCell *)self _artworkContentWidth];
      v21 = v20;
      v22 = [(CPUIImageRowCell *)self _maxArtworkCountFittingSize];
      v23 = (v21 - (8 * v22 - 8)) / v22;
      v24 = [(CPUIImageRowCell *)self reusableMediaViews];
      v25 = [v24 count];

      if (v16 < v25 || v25 > v13)
      {
        for (i = v25 - 1; i >= v12; --i)
        {
          v28 = [(CPUIImageRowCell *)self reusableMediaViews];
          v29 = [v28 objectAtIndexedSubscript:i];

          [(CPUIImageRowCell *)self _removeArtworkTitleItem:v29];
        }
      }

      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __48__CPUIImageRowCell__layoutArtworkImagesIfNeeded__block_invoke;
      v30[3] = &unk_278D9C300;
      v30[4] = self;
      v30[5] = v12;
      *&v30[6] = v23;
      [v19 enumerateObjectsUsingBlock:v30];
      [(CPUIImageRowCell *)self invalidateIntrinsicContentSize];
    }
  }
}

void __48__CPUIImageRowCell__layoutArtworkImagesIfNeeded__block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 reusableMediaViews];
  if ([v7 count] <= a3)
  {
  }

  else
  {
    v8 = [*(a1 + 32) reusableMediaViews];
    v28 = [v8 objectAtIndex:a3];

    if (v28)
    {
      [v28 prepareForReuse];
      goto LABEL_11;
    }
  }

  v28 = objc_opt_new();
  [v28 setTranslatesAutoresizingMaskIntoConstraints:0];
  v9 = [v28 button];
  [v9 addTarget:*(a1 + 32) action:sel_gridCellItemTapped_ forControlEvents:0x2000];

  v10 = [*(a1 + 32) reusableMediaViews];
  [v10 addObject:v28];

  v11 = [*(a1 + 32) itemStackViews];
  v12 = [v11 lastObject];
  if (v12)
  {
    v13 = v12;
    v14 = [*(a1 + 32) itemStackViews];
    v15 = [v14 lastObject];
    v16 = [v15 arrangedSubviews];
    v17 = [v16 count];
    v18 = *(a1 + 40);

    if (v17 < v18)
    {
      goto LABEL_10;
    }
  }

  else
  {
  }

  [*(a1 + 32) createItemStackView];
LABEL_10:
  v19 = [*(a1 + 32) itemStackViews];
  v20 = [v19 lastObject];
  [v20 addArrangedSubview:v28];

LABEL_11:
  v21 = [v28 button];
  [v21 setTag:a3];

  [v28 setPreferredWidth:*(a1 + 48)];
  v22 = [v6 artworkCatalog];
  v23 = [v6 title];
  v24 = [v6 subtitle];
  v25 = *(a1 + 48);
  v26 = [*(a1 + 32) fallbackImage];
  v27 = [v6 enabled];

  [v28 configureWithArtwork:v22 title:v23 subtitle:v24 imageSize:v26 fallbackImage:v27 enabled:v25];
}

- (void)gridCellItemTapped:(id)a3
{
  v7 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v7;
    v5 = [(CPUIImageRowCell *)self selectGridItemBlock];

    if (v5)
    {
      v6 = [(CPUIImageRowCell *)self selectGridItemBlock];
      v6[2](v6, [v4 tag]);
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)coreCellItemTapped:(id)a3
{
  v4 = [(CPUIImageRowCell *)self selectTitleBlock];

  if (v4)
  {
    v5 = [(CPUIImageRowCell *)self selectTitleBlock];
    v5[2]();
  }
}

- (void)_removeArtworkTitleItem:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CPUIImageRowCell *)self itemStackViews];
  v6 = [v5 lastObject];

  if (v6)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = [v6 arrangedSubviews];
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
LABEL_4:
      v11 = 0;
      while (1)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        if (*(*(&v16 + 1) + 8 * v11) == v4)
        {
          break;
        }

        if (v9 == ++v11)
        {
          v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
          if (v9)
          {
            goto LABEL_4;
          }

          goto LABEL_15;
        }
      }

      [v6 removeArrangedSubview:v4];
      v12 = [(CPUIImageRowCell *)self reusableMediaViews];
      [v12 removeObject:v4];

      [v4 removeFromSuperview];
      v13 = [v6 arrangedSubviews];
      if (![v13 count])
      {
        v14 = [(CPUIImageRowCell *)self itemStackViews];
        v15 = [v14 count];

        if (v15 < 2)
        {
          goto LABEL_15;
        }

        [v6 removeFromSuperview];
        v13 = [(CPUIImageRowCell *)self itemStackViews];
        [v13 removeObject:v6];
      }
    }

LABEL_15:
  }
}

- (void)createItemStackView
{
  v5 = objc_alloc_init(MEMORY[0x277D75A68]);
  [v5 setAxis:0];
  [v5 setAlignment:1];
  [v5 setDistribution:1];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v5 setSpacing:8.0];
  [v5 setClipsToBounds:0];
  v3 = [(CPUIImageRowCell *)self contentStackView];
  [v3 addArrangedSubview:v5];

  v4 = [(CPUIImageRowCell *)self itemStackViews];
  [v4 addObject:v5];
}

- (void)_setContentClipCorners:(unint64_t)a3 updateCorners:(BOOL)a4
{
  v4 = a4;
  if (_UISolariumEnabled())
  {
    v7 = [(CPUIImageRowCell *)self layer];
    [v7 setMasksToBounds:0];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = CPUIImageRowCell;
    [(CPUIImageRowCell *)&v8 _setContentClipCorners:a3 updateCorners:v4];
  }
}

- (NSDirectionalEdgeInsets)contentInsets
{
  top = self->_contentInsets.top;
  leading = self->_contentInsets.leading;
  bottom = self->_contentInsets.bottom;
  trailing = self->_contentInsets.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

@end