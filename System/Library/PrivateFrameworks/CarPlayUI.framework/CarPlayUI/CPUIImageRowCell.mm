@interface CPUIImageRowCell
- (NSDirectionalEdgeInsets)contentInsets;
- (double)_artworkContentWidth;
- (int64_t)_maxArtworkCountFittingSize;
- (void)_layoutArtworkImagesIfNeeded;
- (void)_removeArtworkTitleItem:(id)item;
- (void)_setContentClipCorners:(unint64_t)corners updateCorners:(BOOL)updateCorners;
- (void)_setNeedsArtworkImagesLayout;
- (void)_updateTintColors;
- (void)applyConfiguration:(id)configuration;
- (void)configureCell;
- (void)coreCellItemTapped:(id)tapped;
- (void)createItemStackView;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)gridCellItemTapped:(id)tapped;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setContentInsets:(NSDirectionalEdgeInsets)insets;
- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated;
- (void)setLoading:(BOOL)loading;
- (void)setMaximumNumberOfLines:(unint64_t)lines;
- (void)setTrailingView:(id)view;
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
  titleLabel = [(CPUIImageRowCell *)self titleLabel];
  if ([(CPUIImageRowCell *)self isHighlighted])
  {
    v6 = v4;
  }

  else
  {
    v6 = v3;
  }

  [titleLabel setTextColor:v6];

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
  chevronView = [(CPUIImageRowCell *)self chevronView];
  if ([(CPUIImageRowCell *)self isHighlighted])
  {
    v10 = v8;
  }

  else
  {
    v10 = v7;
  }

  [chevronView setTintColor:v10];
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
  contentView = [(CPUIImageRowCell *)self contentView];
  contentStackView = [(CPUIImageRowCell *)self contentStackView];
  [contentView addSubview:contentStackView];

  v9 = objc_opt_new();
  titleStackView = self->_titleStackView;
  self->_titleStackView = v9;

  [(UIStackView *)self->_titleStackView setAxis:0];
  [(UIStackView *)self->_titleStackView setDistribution:0];
  [(UIStackView *)self->_titleStackView setAlignment:3];
  [(UIStackView *)self->_titleStackView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_titleStackView setClipsToBounds:0];
  [(UIStackView *)self->_titleStackView setSpacing:4.0];
  contentStackView2 = [(CPUIImageRowCell *)self contentStackView];
  titleStackView = [(CPUIImageRowCell *)self titleStackView];
  [contentStackView2 addArrangedSubview:titleStackView];

  v13 = objc_opt_new();
  titleLabel = self->_titleLabel;
  self->_titleLabel = v13;

  [(UILabel *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v15 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76920] weight:*MEMORY[0x277D743F8]];
  [(UILabel *)self->_titleLabel setFont:v15];

  titleStackView2 = [(CPUIImageRowCell *)self titleStackView];
  titleLabel = [(CPUIImageRowCell *)self titleLabel];
  [titleStackView2 addArrangedSubview:titleLabel];

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
  traitCollection = [(CPUIImageRowCell *)self traitCollection];
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
  traitCollection2 = [(CPUIImageRowCell *)self traitCollection];
  v35 = [v32 imageNamed:@"PlaceholderMusic" inBundle:v33 compatibleWithTraitCollection:traitCollection2];
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
  topAnchor = [(UIStackView *)self->_contentStackView topAnchor];
  contentView2 = [(CPUIImageRowCell *)self contentView];
  topAnchor2 = [contentView2 topAnchor];
  v43 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:p_contentInsets->top];
  topInsetConstraint = self->_topInsetConstraint;
  self->_topInsetConstraint = v43;

  leadingAnchor = [(UIStackView *)self->_contentStackView leadingAnchor];
  contentView3 = [(CPUIImageRowCell *)self contentView];
  leadingAnchor2 = [contentView3 leadingAnchor];
  v48 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:self->_contentInsets.leading];
  leadingInsetConstraint = self->_leadingInsetConstraint;
  self->_leadingInsetConstraint = v48;

  trailingAnchor = [(UIStackView *)self->_contentStackView trailingAnchor];
  contentView4 = [(CPUIImageRowCell *)self contentView];
  trailingAnchor2 = [contentView4 trailingAnchor];
  v53 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-self->_contentInsets.trailing];
  trailingInsetConstraint = self->_trailingInsetConstraint;
  self->_trailingInsetConstraint = v53;

  bottomAnchor = [(UIStackView *)self->_contentStackView bottomAnchor];
  contentView5 = [(CPUIImageRowCell *)self contentView];
  bottomAnchor2 = [contentView5 bottomAnchor];
  v58 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-self->_contentInsets.bottom];
  bottomInsetConstraint = self->_bottomInsetConstraint;
  self->_bottomInsetConstraint = v58;

  v60 = MEMORY[0x277CCAAD0];
  v61 = self->_leadingInsetConstraint;
  v102[0] = self->_topInsetConstraint;
  v102[1] = v61;
  v62 = self->_bottomInsetConstraint;
  v102[2] = self->_trailingInsetConstraint;
  v102[3] = v62;
  leadingAnchor3 = [(UIStackView *)self->_titleStackView leadingAnchor];
  leadingAnchor4 = [(UIStackView *)self->_contentStackView leadingAnchor];
  v65 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v102[4] = v65;
  v66 = [MEMORY[0x277CBEA60] arrayWithObjects:v102 count:5];
  [v60 activateConstraints:v66];

  v67 = _UISolariumEnabled();
  v95 = MEMORY[0x277CCAAD0];
  v68 = self->_focusIndicator;
  if (v67)
  {
    leadingAnchor5 = [(CPUIImageRowHighlightButton *)v68 leadingAnchor];
    titleStackView3 = [(CPUIImageRowCell *)self titleStackView];
    [titleStackView3 leadingAnchor];
    v97 = v90 = leadingAnchor5;
    v96 = [leadingAnchor5 constraintEqualToAnchor:-8.0 constant:?];
    v101[0] = v96;
    trailingAnchor3 = [(CPUIImageRowHighlightButton *)self->_focusIndicator trailingAnchor];
    titleStackView4 = [(CPUIImageRowCell *)self titleStackView];
    [titleStackView4 trailingAnchor];
    v92 = v94 = trailingAnchor3;
    v91 = [trailingAnchor3 constraintEqualToAnchor:8.0 constant:?];
    v101[1] = v91;
    topAnchor3 = [(CPUIImageRowHighlightButton *)self->_focusIndicator topAnchor];
    titleStackView5 = [(CPUIImageRowCell *)self titleStackView];
    topAnchor4 = [titleStackView5 topAnchor];
    v88 = topAnchor3;
    v72 = [topAnchor3 constraintEqualToAnchor:-3.0 constant:?];
    v101[2] = v72;
    bottomAnchor3 = [(CPUIImageRowHighlightButton *)self->_focusIndicator bottomAnchor];
    titleStackView6 = [(CPUIImageRowCell *)self titleStackView];
    bottomAnchor4 = [titleStackView6 bottomAnchor];
    v76 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:3.0];
    v101[3] = v76;
    trailingAnchor4 = [(UIStackView *)self->_titleStackView trailingAnchor];
    trailingAnchor5 = [(UIStackView *)self->_contentStackView trailingAnchor];
    v79 = [trailingAnchor4 constraintLessThanOrEqualToAnchor:trailingAnchor5 constant:-12.0];
    v101[4] = v79;
    v80 = v101;
  }

  else
  {
    topAnchor5 = [(CPUIImageRowHighlightButton *)v68 topAnchor];
    titleStackView3 = [(CPUIImageRowCell *)self titleStackView];
    [titleStackView3 topAnchor];
    v97 = v90 = topAnchor5;
    v96 = [topAnchor5 constraintEqualToAnchor:-8.0 constant:?];
    v100[0] = v96;
    leadingAnchor6 = [(CPUIImageRowHighlightButton *)self->_focusIndicator leadingAnchor];
    titleStackView4 = [(CPUIImageRowCell *)self titleStackView];
    [titleStackView4 leadingAnchor];
    v92 = v94 = leadingAnchor6;
    v91 = [leadingAnchor6 constraintEqualToAnchor:-8.0 constant:?];
    v100[1] = v91;
    trailingAnchor6 = [(CPUIImageRowHighlightButton *)self->_focusIndicator trailingAnchor];
    titleStackView5 = [(CPUIImageRowCell *)self titleStackView];
    topAnchor4 = [titleStackView5 trailingAnchor];
    v88 = trailingAnchor6;
    v72 = [trailingAnchor6 constraintEqualToAnchor:8.0 constant:?];
    v100[2] = v72;
    bottomAnchor3 = [(CPUIImageRowHighlightButton *)self->_focusIndicator bottomAnchor];
    titleStackView6 = [(CPUIImageRowCell *)self titleStackView];
    bottomAnchor4 = [titleStackView6 bottomAnchor];
    v76 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:8.0];
    v100[3] = v76;
    trailingAnchor4 = [(UIStackView *)self->_titleStackView trailingAnchor];
    trailingAnchor5 = [(UIStackView *)self->_contentStackView trailingAnchor];
    v79 = [trailingAnchor4 constraintLessThanOrEqualToAnchor:trailingAnchor5];
    v100[4] = v79;
    v80 = v100;
  }

  v84 = [MEMORY[0x277CBEA60] arrayWithObjects:v80 count:5];
  [v95 activateConstraints:v84];

  [(CPUIImageRowCell *)self setAccessibilityIdentifier:@"CPListImageRowItem"];
  titleLabel2 = [(CPUIImageRowCell *)self titleLabel];
  [titleLabel2 setAccessibilityIdentifier:@"CPListItemTitle"];

  if (_os_feature_enabled_impl())
  {
    titleLabel3 = [(CPUIImageRowCell *)self titleLabel];
    [titleLabel3 setAdjustsFontForContentSizeCategory:1];
  }
}

- (void)setMaximumNumberOfLines:(unint64_t)lines
{
  v32 = *MEMORY[0x277D85DE8];
  if (self->_maximumNumberOfLines != lines)
  {
    self->_maximumNumberOfLines = lines;
    if (lines)
    {
      itemStackViews = [(CPUIImageRowCell *)self itemStackViews];
      v6 = [itemStackViews count];

      if (v6 > lines)
      {
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        itemStackViews2 = [(CPUIImageRowCell *)self itemStackViews];
        reverseObjectEnumerator = [itemStackViews2 reverseObjectEnumerator];

        v9 = [reverseObjectEnumerator countByEnumeratingWithState:&v26 objects:v31 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v27;
          v12 = lines - 1;
LABEL_6:
          v13 = 0;
          while (1)
          {
            if (*v27 != v11)
            {
              objc_enumerationMutation(reverseObjectEnumerator);
            }

            v14 = *(*(&v26 + 1) + 8 * v13);
            itemStackViews3 = [(CPUIImageRowCell *)self itemStackViews];
            v16 = [itemStackViews3 objectAtIndexedSubscript:v12];

            if (v14 == v16)
            {
              break;
            }

            v24 = 0u;
            v25 = 0u;
            v22 = 0u;
            v23 = 0u;
            arrangedSubviews = [v14 arrangedSubviews];
            v18 = [arrangedSubviews countByEnumeratingWithState:&v22 objects:v30 count:16];
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
                    objc_enumerationMutation(arrangedSubviews);
                  }

                  [(CPUIImageRowCell *)self _removeArtworkTitleItem:*(*(&v22 + 1) + 8 * i)];
                }

                v19 = [arrangedSubviews countByEnumeratingWithState:&v22 objects:v30 count:16];
              }

              while (v19);
            }

            if (++v13 == v10)
            {
              v10 = [reverseObjectEnumerator countByEnumeratingWithState:&v26 objects:v31 count:16];
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

- (void)setContentInsets:(NSDirectionalEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.leading;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.trailing;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentInsets.top, v3), vceqq_f64(*&self->_contentInsets.bottom, v4)))) & 1) == 0)
  {
    self->_contentInsets = insets;
    trailing = insets.trailing;
    bottom = insets.bottom;
    leading = insets.leading;
    [(NSLayoutConstraint *)self->_topInsetConstraint setConstant:?];
    [(NSLayoutConstraint *)self->_leadingInsetConstraint setConstant:leading];
    [(NSLayoutConstraint *)self->_trailingInsetConstraint setConstant:-trailing];
    [(NSLayoutConstraint *)self->_bottomInsetConstraint setConstant:-bottom];
    contentStackView = [(CPUIImageRowCell *)self contentStackView];
    [contentStackView setNeedsLayout];
  }
}

- (void)applyConfiguration:(id)configuration
{
  v24[1] = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  -[_CPUIBaseTableCell setItemEnabled:](self, "setItemEnabled:", [configurationCopy enabled]);
  -[CPUIImageRowCell setMaximumNumberOfLines:](self, "setMaximumNumberOfLines:", [configurationCopy maximumNumberOfLines]);
  [configurationCopy contentInsets];
  [(CPUIImageRowCell *)self setContentInsets:?];
  [configurationCopy lineSpacing];
  v6 = v5;
  contentStackView = [(CPUIImageRowCell *)self contentStackView];
  [contentStackView setSpacing:v6];

  title = [configurationCopy title];

  if (title)
  {
    title2 = [configurationCopy title];
    titleLabel = [(CPUIImageRowCell *)self titleLabel];
    [titleLabel setText:title2];

    [(UIStackView *)self->_titleStackView setHidden:0];
    [(CPUIMediaButton *)self->_focusIndicator setHidden:0];
    title3 = [configurationCopy title];
    [(CPUIImageRowHighlightButton *)self->_focusIndicator setAccessibilityLabel:title3];

    title4 = [configurationCopy title];
    v24[0] = title4;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
    [(CPUIImageRowHighlightButton *)self->_focusIndicator setAccessibilityUserInputLabels:v13];

    focusIndicator = self->_focusIndicator;
    itemEnabled = [(_CPUIBaseTableCell *)self itemEnabled];
    v16 = focusIndicator;
  }

  else
  {
    [(UIStackView *)self->_titleStackView setHidden:1];
    [(CPUIMediaButton *)self->_focusIndicator setHidden:1];
    v16 = self->_focusIndicator;
    itemEnabled = 0;
  }

  [(CPUIImageRowHighlightButton *)v16 setEnabled:itemEnabled];
  [(CPUIImageRowCell *)self _updateTintColors];
  selectGridItemBlock = [configurationCopy selectGridItemBlock];
  [(CPUIImageRowCell *)self setSelectGridItemBlock:selectGridItemBlock];

  selectTitleBlock = [configurationCopy selectTitleBlock];
  [(CPUIImageRowCell *)self setSelectTitleBlock:selectTitleBlock];

  itemsConfigurations = [configurationCopy itemsConfigurations];
  [(CPUIImageRowCell *)self setItemsConfigurations:itemsConfigurations];

  bundleIdentifier = [configurationCopy bundleIdentifier];
  v21 = CPUIPlaceholderTypeForBundleIdentifier(bundleIdentifier);

  traitCollection = [(CPUIImageRowCell *)self traitCollection];
  v23 = CPUIImageForPlaceholderTypeWithTraitCollection(v21, traitCollection);
  [(CPUIImageRowCell *)self setFallbackImage:v23];

  -[CPUIImageRowCell setLoading:](self, "setLoading:", [configurationCopy showActivityIndicator]);
  [(CPUIImageRowCell *)self _setNeedsArtworkImagesLayout];
  [(CPUIImageRowCell *)self setNeedsLayout];
}

- (double)_artworkContentWidth
{
  contentView = [(CPUIImageRowCell *)self contentView];
  [contentView bounds];
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

- (void)setLoading:(BOOL)loading
{
  if (loading)
  {
    [(CPUIImageRowCell *)self setTrailingView:self->_activityIndicator];
    activityIndicator = [(CPUIImageRowCell *)self activityIndicator];
    [activityIndicator startAnimating];
  }

  else
  {
    [(CPUIImageRowCell *)self setTrailingView:self->_chevronView];
    activityIndicator = [(CPUIImageRowCell *)self activityIndicator];
    [activityIndicator stopAnimating];
  }
}

- (void)setTrailingView:(id)view
{
  viewCopy = view;
  [(UIView *)self->_trailingView removeFromSuperview];
  titleStackView = [(CPUIImageRowCell *)self titleStackView];
  [titleStackView removeArrangedSubview:self->_trailingView];

  trailingView = self->_trailingView;
  self->_trailingView = viewCopy;
  v9 = viewCopy;

  titleStackView2 = [(CPUIImageRowCell *)self titleStackView];
  [titleStackView2 addArrangedSubview:v9];

  LODWORD(v8) = 1148846080;
  [(UIView *)v9 setContentCompressionResistancePriority:0 forAxis:v8];
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  contextCopy = context;
  focusIndicator = [(CPUIImageRowCell *)self focusIndicator];
  nextFocusedItem = [contextCopy nextFocusedItem];

  self->_wasFocused = focusIndicator == nextFocusedItem;
  wasFocused = self->_wasFocused;

  [(CPUIImageRowCell *)self setHighlighted:wasFocused];
}

- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated
{
  v5 = highlighted || self->_wasFocused;
  v8.receiver = self;
  v8.super_class = CPUIImageRowCell;
  [(CPUIImageRowCell *)&v8 setHighlighted:v5 animated:animated];
  [(CPUIImageRowCell *)self _updateTintColors];
  isHighlighted = [(CPUIImageRowCell *)self isHighlighted];
  focusIndicator = [(CPUIImageRowCell *)self focusIndicator];
  [focusIndicator setShowHighlight:isHighlighted];
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
    itemsConfigurations = [(CPUIImageRowCell *)self itemsConfigurations];
    v8 = [itemsConfigurations count];

    if (v8)
    {
      itemsConfigurations2 = [(CPUIImageRowCell *)self itemsConfigurations];
      v10 = [itemsConfigurations2 count];

      _maxArtworkCountFittingSize = [(CPUIImageRowCell *)self _maxArtworkCountFittingSize];
      if (v10 >= _maxArtworkCountFittingSize)
      {
        v12 = _maxArtworkCountFittingSize;
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
        itemsConfigurations3 = [(CPUIImageRowCell *)self itemsConfigurations];
        v13 = [itemsConfigurations3 count];
      }

      itemsConfigurations4 = [(CPUIImageRowCell *)self itemsConfigurations];
      v16 = [itemsConfigurations4 count];

      if (v13 >= v16)
      {
        v17 = v16;
      }

      else
      {
        v17 = v13;
      }

      itemsConfigurations5 = [(CPUIImageRowCell *)self itemsConfigurations];
      v19 = [itemsConfigurations5 subarrayWithRange:{0, v17}];

      [(CPUIImageRowCell *)self _artworkContentWidth];
      v21 = v20;
      _maxArtworkCountFittingSize2 = [(CPUIImageRowCell *)self _maxArtworkCountFittingSize];
      v23 = (v21 - (8 * _maxArtworkCountFittingSize2 - 8)) / _maxArtworkCountFittingSize2;
      reusableMediaViews = [(CPUIImageRowCell *)self reusableMediaViews];
      v25 = [reusableMediaViews count];

      if (v16 < v25 || v25 > v13)
      {
        for (i = v25 - 1; i >= v12; --i)
        {
          reusableMediaViews2 = [(CPUIImageRowCell *)self reusableMediaViews];
          v29 = [reusableMediaViews2 objectAtIndexedSubscript:i];

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

- (void)gridCellItemTapped:(id)tapped
{
  tappedCopy = tapped;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = tappedCopy;
    selectGridItemBlock = [(CPUIImageRowCell *)self selectGridItemBlock];

    if (selectGridItemBlock)
    {
      selectGridItemBlock2 = [(CPUIImageRowCell *)self selectGridItemBlock];
      selectGridItemBlock2[2](selectGridItemBlock2, [v4 tag]);
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)coreCellItemTapped:(id)tapped
{
  selectTitleBlock = [(CPUIImageRowCell *)self selectTitleBlock];

  if (selectTitleBlock)
  {
    selectTitleBlock2 = [(CPUIImageRowCell *)self selectTitleBlock];
    selectTitleBlock2[2]();
  }
}

- (void)_removeArtworkTitleItem:(id)item
{
  v21 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  itemStackViews = [(CPUIImageRowCell *)self itemStackViews];
  lastObject = [itemStackViews lastObject];

  if (lastObject)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    arrangedSubviews = [lastObject arrangedSubviews];
    v8 = [arrangedSubviews countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(arrangedSubviews);
        }

        if (*(*(&v16 + 1) + 8 * v11) == itemCopy)
        {
          break;
        }

        if (v9 == ++v11)
        {
          v9 = [arrangedSubviews countByEnumeratingWithState:&v16 objects:v20 count:16];
          if (v9)
          {
            goto LABEL_4;
          }

          goto LABEL_15;
        }
      }

      [lastObject removeArrangedSubview:itemCopy];
      reusableMediaViews = [(CPUIImageRowCell *)self reusableMediaViews];
      [reusableMediaViews removeObject:itemCopy];

      [itemCopy removeFromSuperview];
      arrangedSubviews2 = [lastObject arrangedSubviews];
      if (![arrangedSubviews2 count])
      {
        itemStackViews2 = [(CPUIImageRowCell *)self itemStackViews];
        v15 = [itemStackViews2 count];

        if (v15 < 2)
        {
          goto LABEL_15;
        }

        [lastObject removeFromSuperview];
        arrangedSubviews2 = [(CPUIImageRowCell *)self itemStackViews];
        [arrangedSubviews2 removeObject:lastObject];
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
  contentStackView = [(CPUIImageRowCell *)self contentStackView];
  [contentStackView addArrangedSubview:v5];

  itemStackViews = [(CPUIImageRowCell *)self itemStackViews];
  [itemStackViews addObject:v5];
}

- (void)_setContentClipCorners:(unint64_t)corners updateCorners:(BOOL)updateCorners
{
  updateCornersCopy = updateCorners;
  if (_UISolariumEnabled())
  {
    layer = [(CPUIImageRowCell *)self layer];
    [layer setMasksToBounds:0];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = CPUIImageRowCell;
    [(CPUIImageRowCell *)&v8 _setContentClipCorners:corners updateCorners:updateCornersCopy];
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