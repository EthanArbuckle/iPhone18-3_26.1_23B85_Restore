@interface SFQuickLookDocumentView
- (CGRect)frameForButtonAtIndex:(unint64_t)a3;
- (SFQuickLookDocumentView)initWithFrame:(CGRect)a3;
- (SFQuickLookDocumentViewDelegate)quickLookDocumentViewDelegate;
- (id)dragInteraction:(id)a3 itemsForBeginningSession:(id)a4;
- (id)dragInteraction:(id)a3 previewForLiftingItem:(id)a4 session:(id)a5;
- (int64_t)_dragInteraction:(id)a3 dataOwnerForSession:(id)a4;
- (void)_actionButtonTapped:(id)a3;
- (void)_setUpLayoutConstraints;
- (void)_updateOrientationBasedConstraints;
- (void)_updatePropertiesDefinedByContentSizeCategory;
- (void)updateActionTitles:(id)a3;
- (void)updateDocumentIcon:(id)a3;
@end

@implementation SFQuickLookDocumentView

- (SFQuickLookDocumentView)initWithFrame:(CGRect)a3
{
  v22[1] = *MEMORY[0x1E69E9840];
  v21.receiver = self;
  v21.super_class = SFQuickLookDocumentView;
  v3 = [(SFQuickLookDocumentView *)&v21 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
    [(SFQuickLookDocumentView *)v3 setBackgroundColor:v4];

    v5 = [MEMORY[0x1E69DC888] sf_safariAccentColor];
    [(SFQuickLookDocumentView *)v3 setTintColor:v5];

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
    v16 = [MEMORY[0x1E696AD88] defaultCenter];
    [v16 addObserver:v3 selector:sel__updatePropertiesDefinedByContentSizeCategory name:*MEMORY[0x1E69DDC48] object:0];

    [(SFQuickLookDocumentView *)v3 _updatePropertiesDefinedByContentSizeCategory];
    v22[0] = objc_opt_class();
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
    v18 = [(SFQuickLookDocumentView *)v3 registerForTraitChanges:v17 withTarget:v3 action:sel__updateOrientationBasedConstraints];

    v19 = v3;
  }

  return v3;
}

- (void)updateActionTitles:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __46__SFQuickLookDocumentView_updateActionTitles___block_invoke;
  v25[3] = &unk_1E721EF70;
  v25[4] = self;
  v4 = [a3 safari_mapObjectsUsingBlock:v25];
  actionButtons = self->_actionButtons;
  self->_actionButtons = v4;

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = [(UIStackView *)self->_actionButtonsView arrangedSubviews];
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v27 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        [v11 removeTarget:self action:0 forControlEvents:0];
        [(UIStackView *)self->_actionButtonsView removeArrangedSubview:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v21 objects:v27 count:16];
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

- (void)updateDocumentIcon:(id)a3
{
  documentInfoView = self->_documentInfoView;
  v4 = a3;
  v5 = [(SFQuickLookDocumentInfoView *)documentInfoView iconImageView];
  [v5 setImage:v4];
}

- (CGRect)frameForButtonAtIndex:(unint64_t)a3
{
  v4 = [(NSArray *)self->_actionButtons objectAtIndexedSubscript:a3];
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
  v3 = [(UIStackView *)self->_actionButtonsView topAnchor];
  v4 = [(SFQuickLookDocumentInfoView *)self->_documentInfoView bottomAnchor];
  v5 = [v3 constraintEqualToAnchor:v4];
  documentInfoViewBottomAnchorConstraint = self->_documentInfoViewBottomAnchorConstraint;
  self->_documentInfoViewBottomAnchorConstraint = v5;

  v42 = MEMORY[0x1E696ACD8];
  v63 = [(UIView *)self->_wrapperView topAnchor];
  v62 = [(SFQuickLookDocumentView *)self topAnchor];
  v61 = [v63 constraintEqualToAnchor:v62];
  v64[0] = v61;
  v60 = [(UIView *)self->_wrapperView bottomAnchor];
  v59 = [(SFQuickLookDocumentView *)self bottomAnchor];
  v58 = [v60 constraintEqualToAnchor:v59];
  v64[1] = v58;
  v57 = [(UIView *)self->_wrapperView leadingAnchor];
  v56 = [(SFQuickLookDocumentView *)self leadingAnchor];
  v55 = [v57 constraintEqualToAnchor:v56];
  v64[2] = v55;
  v54 = [(UIView *)self->_wrapperView trailingAnchor];
  v53 = [(SFQuickLookDocumentView *)self trailingAnchor];
  v52 = [v54 constraintEqualToAnchor:v53];
  v64[3] = v52;
  v51 = [(UIView *)self->_wrapperView centerXAnchor];
  v50 = [(SFQuickLookDocumentView *)self centerXAnchor];
  v49 = [v51 constraintEqualToAnchor:v50];
  v64[4] = v49;
  v48 = [(UIView *)self->_wrapperView heightAnchor];
  v47 = [(SFQuickLookDocumentView *)self heightAnchor];
  v46 = [v48 constraintGreaterThanOrEqualToAnchor:v47];
  v64[5] = v46;
  v45 = [(UIView *)self->_contentView topAnchor];
  v44 = [(UIView *)self->_wrapperView topAnchor];
  v43 = [v45 constraintGreaterThanOrEqualToAnchor:v44 constant:16.0];
  v64[6] = v43;
  v41 = [(UIView *)self->_contentView bottomAnchor];
  v40 = [(UIView *)self->_wrapperView bottomAnchor];
  v39 = [v41 constraintLessThanOrEqualToAnchor:v40 constant:-16.0];
  v64[7] = v39;
  v38 = [(UIView *)self->_contentView leadingAnchor];
  v37 = [(UIView *)self->_wrapperView leadingAnchor];
  v36 = [v38 constraintEqualToAnchor:v37 constant:10.0];
  v64[8] = v36;
  v35 = [(UIView *)self->_contentView trailingAnchor];
  v34 = [(UIView *)self->_wrapperView trailingAnchor];
  v33 = [v35 constraintEqualToAnchor:v34 constant:-10.0];
  v64[9] = v33;
  v32 = [(UIView *)self->_contentView centerXAnchor];
  v31 = [(UIView *)self->_wrapperView centerXAnchor];
  v30 = [v32 constraintEqualToAnchor:v31];
  v64[10] = v30;
  v29 = [(UIView *)self->_contentView centerYAnchor];
  v28 = [(UIView *)self->_wrapperView centerYAnchor];
  v27 = [v29 constraintEqualToAnchor:v28];
  v7 = self->_documentInfoViewBottomAnchorConstraint;
  v64[11] = v27;
  v64[12] = v7;
  v26 = [(SFQuickLookDocumentInfoView *)self->_documentInfoView centerXAnchor];
  v25 = [(UIView *)self->_contentView centerXAnchor];
  v24 = [v26 constraintEqualToAnchor:v25];
  v64[13] = v24;
  v23 = [(SFQuickLookDocumentInfoView *)self->_documentInfoView topAnchor];
  v22 = [(UIView *)self->_contentView topAnchor];
  v21 = [v23 constraintEqualToAnchor:v22];
  v64[14] = v21;
  v20 = [(SFQuickLookDocumentInfoView *)self->_documentInfoView widthAnchor];
  v19 = [(UIView *)self->_contentView widthAnchor];
  v18 = [v20 constraintLessThanOrEqualToAnchor:v19];
  v64[15] = v18;
  v17 = [(UIStackView *)self->_actionButtonsView centerXAnchor];
  v8 = [(UIView *)self->_contentView centerXAnchor];
  v9 = [v17 constraintEqualToAnchor:v8];
  v64[16] = v9;
  v10 = [(UIStackView *)self->_actionButtonsView widthAnchor];
  v11 = [(UIView *)self->_contentView widthAnchor];
  v12 = [v10 constraintLessThanOrEqualToAnchor:v11];
  v64[17] = v12;
  v13 = [(UIStackView *)self->_actionButtonsView bottomAnchor];
  v14 = [(UIView *)self->_contentView bottomAnchor];
  v15 = [v13 constraintLessThanOrEqualToAnchor:v14];
  v64[18] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:19];
  [v42 activateConstraints:v16];

  [(SFQuickLookDocumentView *)self _updateOrientationBasedConstraints];
}

- (void)_updateOrientationBasedConstraints
{
  v3 = [(SFQuickLookDocumentView *)self traitCollection];
  v4 = [v3 verticalSizeClass];

  v5 = 56.0;
  if (v4 == 1)
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

        v10 = [*(*(&v11 + 1) + 8 * v9) titleLabel];
        [v10 setFont:v4];

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

- (void)_actionButtonTapped:(id)a3
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_quickLookDocumentViewDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained quickLookDocumentView:self didSelectActionAtIndex:{-[NSArray indexOfObjectIdenticalTo:](self->_actionButtons, "indexOfObjectIdenticalTo:", v5)}];
  }
}

- (id)dragInteraction:(id)a3 itemsForBeginningSession:(id)a4
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

- (id)dragInteraction:(id)a3 previewForLiftingItem:(id)a4 session:(id)a5
{
  v6 = objc_alloc_init(MEMORY[0x1E69DC9A0]);
  v7 = [MEMORY[0x1E69DC888] clearColor];
  [v6 setBackgroundColor:v7];

  v8 = objc_alloc(MEMORY[0x1E69DD068]);
  v9 = [(SFQuickLookDocumentInfoView *)self->_documentInfoView iconImageView];
  v10 = [v8 initWithView:v9 parameters:v6];

  return v10;
}

- (int64_t)_dragInteraction:(id)a3 dataOwnerForSession:(id)a4
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