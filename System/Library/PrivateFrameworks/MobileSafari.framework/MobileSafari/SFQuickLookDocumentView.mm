@interface SFQuickLookDocumentView
- (CGRect)frameForButtonAtIndex:(unint64_t)index;
- (SFQuickLookDocumentView)initWithFrame:(CGRect)frame;
- (SFQuickLookDocumentViewDelegate)quickLookDocumentViewDelegate;
- (id)dragInteraction:(id)interaction itemsForBeginningSession:(id)session;
- (id)dragInteraction:(id)interaction previewForLiftingItem:(id)item session:(id)session;
- (int64_t)_dragInteraction:(id)interaction dataOwnerForSession:(id)session;
- (void)_actionButtonTapped:(id)tapped;
- (void)_setUpLayoutConstraints;
- (void)_updateOrientationBasedConstraints;
- (void)_updatePropertiesDefinedByContentSizeCategory;
- (void)updateActionTitles:(id)titles;
- (void)updateDocumentIcon:(id)icon;
@end

@implementation SFQuickLookDocumentView

- (SFQuickLookDocumentView)initWithFrame:(CGRect)frame
{
  v22[1] = *MEMORY[0x1E69E9840];
  v21.receiver = self;
  v21.super_class = SFQuickLookDocumentView;
  v3 = [(SFQuickLookDocumentView *)&v21 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    systemGroupedBackgroundColor = [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
    [(SFQuickLookDocumentView *)v3 setBackgroundColor:systemGroupedBackgroundColor];

    sf_safariAccentColor = [MEMORY[0x1E69DC888] sf_safariAccentColor];
    [(SFQuickLookDocumentView *)v3 setTintColor:sf_safariAccentColor];

    [(SFQuickLookDocumentView *)v3 setAccessibilityIdentifier:@"QuickLookDocumentView"];
    v6 = objc_alloc_init(MEMORY[0x1E69DD250]);
    wrapperView = v3->_wrapperView;
    v3->_wrapperView = v6;

    [(UIView *)v3->_wrapperView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SFQuickLookDocumentView *)v3 addSubview:v3->_wrapperView];
    v8 = objc_alloc_init(MEMORY[0x1E69DD250]);
    contentView = v3->_contentView;
    v3->_contentView = v8;

    [(UIView *)v3->_contentView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v3->_wrapperView addSubview:v3->_contentView];
    v10 = objc_alloc_init(SFQuickLookDocumentInfoView);
    documentInfoView = v3->_documentInfoView;
    v3->_documentInfoView = v10;

    [(SFQuickLookDocumentInfoView *)v3->_documentInfoView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SFQuickLookDocumentInfoView *)v3->_documentInfoView setUserInteractionEnabled:1];
    v12 = v3->_documentInfoView;
    v13 = [objc_alloc(MEMORY[0x1E69DC988]) initWithDelegate:v3];
    [(SFQuickLookDocumentInfoView *)v12 addInteraction:v13];

    [(UIView *)v3->_contentView addSubview:v3->_documentInfoView];
    v14 = objc_alloc_init(MEMORY[0x1E69DCF90]);
    actionButtonsView = v3->_actionButtonsView;
    v3->_actionButtonsView = v14;

    [(UIStackView *)v3->_actionButtonsView setAxis:1];
    [(UIStackView *)v3->_actionButtonsView setBaselineRelativeArrangement:1];
    [(UIStackView *)v3->_actionButtonsView setDistribution:3];
    [(UIStackView *)v3->_actionButtonsView setSpacing:32.0];
    [(UIStackView *)v3->_actionButtonsView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v3->_contentView addSubview:v3->_actionButtonsView];
    [(SFQuickLookDocumentView *)v3 _setUpLayoutConstraints];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel__updatePropertiesDefinedByContentSizeCategory name:*MEMORY[0x1E69DDC48] object:0];

    [(SFQuickLookDocumentView *)v3 _updatePropertiesDefinedByContentSizeCategory];
    v22[0] = objc_opt_class();
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
    v18 = [(SFQuickLookDocumentView *)v3 registerForTraitChanges:v17 withTarget:v3 action:sel__updateOrientationBasedConstraints];

    v19 = v3;
  }

  return v3;
}

- (void)updateActionTitles:(id)titles
{
  v28 = *MEMORY[0x1E69E9840];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __46__SFQuickLookDocumentView_updateActionTitles___block_invoke;
  v25[3] = &unk_1E721EF70;
  v25[4] = self;
  v4 = [titles safari_mapObjectsUsingBlock:v25];
  actionButtons = self->_actionButtons;
  self->_actionButtons = v4;

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  arrangedSubviews = [(UIStackView *)self->_actionButtonsView arrangedSubviews];
  v7 = [arrangedSubviews countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(arrangedSubviews);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        [v11 removeTarget:self action:0 forControlEvents:0];
        [(UIStackView *)self->_actionButtonsView removeArrangedSubview:v11];
      }

      v8 = [arrangedSubviews countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v8);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v12 = self->_actionButtons;
  v13 = [(NSArray *)v12 countByEnumeratingWithState:&v17 objects:v26 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v18;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(UIStackView *)self->_actionButtonsView addArrangedSubview:*(*(&v17 + 1) + 8 * j), v17];
      }

      v14 = [(NSArray *)v12 countByEnumeratingWithState:&v17 objects:v26 count:16];
    }

    while (v14);
  }

  [(SFQuickLookDocumentView *)self _updatePropertiesDefinedByContentSizeCategory];
}

id __46__SFQuickLookDocumentView_updateActionTitles___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E69DC738];
  v4 = a2;
  v5 = [v3 buttonWithType:1];
  [v5 setTitle:v4 forState:0];

  [v5 addTarget:*(a1 + 32) action:sel__actionButtonTapped_ forControlEvents:0x2000];

  return v5;
}

- (void)updateDocumentIcon:(id)icon
{
  documentInfoView = self->_documentInfoView;
  iconCopy = icon;
  iconImageView = [(SFQuickLookDocumentInfoView *)documentInfoView iconImageView];
  [iconImageView setImage:iconCopy];
}

- (CGRect)frameForButtonAtIndex:(unint64_t)index
{
  v4 = [(NSArray *)self->_actionButtons objectAtIndexedSubscript:index];
  [v4 bounds];
  [(SFQuickLookDocumentView *)self convertRect:v4 fromView:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (void)_setUpLayoutConstraints
{
  v64[19] = *MEMORY[0x1E69E9840];
  topAnchor = [(UIStackView *)self->_actionButtonsView topAnchor];
  bottomAnchor = [(SFQuickLookDocumentInfoView *)self->_documentInfoView bottomAnchor];
  v5 = [topAnchor constraintEqualToAnchor:bottomAnchor];
  documentInfoViewBottomAnchorConstraint = self->_documentInfoViewBottomAnchorConstraint;
  self->_documentInfoViewBottomAnchorConstraint = v5;

  v42 = MEMORY[0x1E696ACD8];
  topAnchor2 = [(UIView *)self->_wrapperView topAnchor];
  topAnchor3 = [(SFQuickLookDocumentView *)self topAnchor];
  v61 = [topAnchor2 constraintEqualToAnchor:topAnchor3];
  v64[0] = v61;
  bottomAnchor2 = [(UIView *)self->_wrapperView bottomAnchor];
  bottomAnchor3 = [(SFQuickLookDocumentView *)self bottomAnchor];
  v58 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  v64[1] = v58;
  leadingAnchor = [(UIView *)self->_wrapperView leadingAnchor];
  leadingAnchor2 = [(SFQuickLookDocumentView *)self leadingAnchor];
  v55 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v64[2] = v55;
  trailingAnchor = [(UIView *)self->_wrapperView trailingAnchor];
  trailingAnchor2 = [(SFQuickLookDocumentView *)self trailingAnchor];
  v52 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v64[3] = v52;
  centerXAnchor = [(UIView *)self->_wrapperView centerXAnchor];
  centerXAnchor2 = [(SFQuickLookDocumentView *)self centerXAnchor];
  v49 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v64[4] = v49;
  heightAnchor = [(UIView *)self->_wrapperView heightAnchor];
  heightAnchor2 = [(SFQuickLookDocumentView *)self heightAnchor];
  v46 = [heightAnchor constraintGreaterThanOrEqualToAnchor:heightAnchor2];
  v64[5] = v46;
  topAnchor4 = [(UIView *)self->_contentView topAnchor];
  topAnchor5 = [(UIView *)self->_wrapperView topAnchor];
  v43 = [topAnchor4 constraintGreaterThanOrEqualToAnchor:topAnchor5 constant:16.0];
  v64[6] = v43;
  bottomAnchor4 = [(UIView *)self->_contentView bottomAnchor];
  bottomAnchor5 = [(UIView *)self->_wrapperView bottomAnchor];
  v39 = [bottomAnchor4 constraintLessThanOrEqualToAnchor:bottomAnchor5 constant:-16.0];
  v64[7] = v39;
  leadingAnchor3 = [(UIView *)self->_contentView leadingAnchor];
  leadingAnchor4 = [(UIView *)self->_wrapperView leadingAnchor];
  v36 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:10.0];
  v64[8] = v36;
  trailingAnchor3 = [(UIView *)self->_contentView trailingAnchor];
  trailingAnchor4 = [(UIView *)self->_wrapperView trailingAnchor];
  v33 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-10.0];
  v64[9] = v33;
  centerXAnchor3 = [(UIView *)self->_contentView centerXAnchor];
  centerXAnchor4 = [(UIView *)self->_wrapperView centerXAnchor];
  v30 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  v64[10] = v30;
  centerYAnchor = [(UIView *)self->_contentView centerYAnchor];
  centerYAnchor2 = [(UIView *)self->_wrapperView centerYAnchor];
  v27 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v7 = self->_documentInfoViewBottomAnchorConstraint;
  v64[11] = v27;
  v64[12] = v7;
  centerXAnchor5 = [(SFQuickLookDocumentInfoView *)self->_documentInfoView centerXAnchor];
  centerXAnchor6 = [(UIView *)self->_contentView centerXAnchor];
  v24 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
  v64[13] = v24;
  topAnchor6 = [(SFQuickLookDocumentInfoView *)self->_documentInfoView topAnchor];
  topAnchor7 = [(UIView *)self->_contentView topAnchor];
  v21 = [topAnchor6 constraintEqualToAnchor:topAnchor7];
  v64[14] = v21;
  widthAnchor = [(SFQuickLookDocumentInfoView *)self->_documentInfoView widthAnchor];
  widthAnchor2 = [(UIView *)self->_contentView widthAnchor];
  v18 = [widthAnchor constraintLessThanOrEqualToAnchor:widthAnchor2];
  v64[15] = v18;
  centerXAnchor7 = [(UIStackView *)self->_actionButtonsView centerXAnchor];
  centerXAnchor8 = [(UIView *)self->_contentView centerXAnchor];
  v9 = [centerXAnchor7 constraintEqualToAnchor:centerXAnchor8];
  v64[16] = v9;
  widthAnchor3 = [(UIStackView *)self->_actionButtonsView widthAnchor];
  widthAnchor4 = [(UIView *)self->_contentView widthAnchor];
  v12 = [widthAnchor3 constraintLessThanOrEqualToAnchor:widthAnchor4];
  v64[17] = v12;
  bottomAnchor6 = [(UIStackView *)self->_actionButtonsView bottomAnchor];
  bottomAnchor7 = [(UIView *)self->_contentView bottomAnchor];
  v15 = [bottomAnchor6 constraintLessThanOrEqualToAnchor:bottomAnchor7];
  v64[18] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:19];
  [v42 activateConstraints:v16];

  [(SFQuickLookDocumentView *)self _updateOrientationBasedConstraints];
}

- (void)_updateOrientationBasedConstraints
{
  traitCollection = [(SFQuickLookDocumentView *)self traitCollection];
  verticalSizeClass = [traitCollection verticalSizeClass];

  v5 = 56.0;
  if (verticalSizeClass == 1)
  {
    v5 = 32.0;
  }

  documentInfoViewBottomAnchorConstraint = self->_documentInfoViewBottomAnchorConstraint;

  [(NSLayoutConstraint *)documentInfoViewBottomAnchorConstraint setConstant:v5];
}

- (void)_updatePropertiesDefinedByContentSizeCategory
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDCF8] addingSymbolicTraits:0 options:3];
  v4 = [MEMORY[0x1E69DB878] fontWithDescriptor:v3 size:0.0];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = self->_actionButtons;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        titleLabel = [*(*(&v11 + 1) + 8 * v9) titleLabel];
        [titleLabel setFont:v4];

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  [v4 _scaledValueForValue:32.0];
  [(UIStackView *)self->_actionButtonsView setSpacing:?];
}

- (void)_actionButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  WeakRetained = objc_loadWeakRetained(&self->_quickLookDocumentViewDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained quickLookDocumentView:self didSelectActionAtIndex:{-[NSArray indexOfObjectIdenticalTo:](self->_actionButtons, "indexOfObjectIdenticalTo:", tappedCopy)}];
  }
}

- (id)dragInteraction:(id)interaction itemsForBeginningSession:(id)session
{
  v10[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_quickLookDocumentViewDelegate);
  if (objc_opt_respondsToSelector())
  {
    v6 = [WeakRetained itemProviderForQuickLookDocumentView:self];
    v7 = [objc_alloc(MEMORY[0x1E69DC990]) initWithItemProvider:v6];
    v10[0] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  }

  else
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  return v8;
}

- (id)dragInteraction:(id)interaction previewForLiftingItem:(id)item session:(id)session
{
  v6 = objc_alloc_init(MEMORY[0x1E69DC9A0]);
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [v6 setBackgroundColor:clearColor];

  v8 = objc_alloc(MEMORY[0x1E69DD068]);
  iconImageView = [(SFQuickLookDocumentInfoView *)self->_documentInfoView iconImageView];
  v10 = [v8 initWithView:iconImageView parameters:v6];

  return v10;
}

- (int64_t)_dragInteraction:(id)interaction dataOwnerForSession:(id)session
{
  WeakRetained = objc_loadWeakRetained(&self->_quickLookDocumentViewDelegate);
  v6 = [WeakRetained dataOwnerForQuickLookDocumentView:self];

  return v6;
}

- (SFQuickLookDocumentViewDelegate)quickLookDocumentViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_quickLookDocumentViewDelegate);

  return WeakRetained;
}

@end