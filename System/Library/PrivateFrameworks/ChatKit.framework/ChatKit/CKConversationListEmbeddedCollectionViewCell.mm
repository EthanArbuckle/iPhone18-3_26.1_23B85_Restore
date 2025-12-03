@interface CKConversationListEmbeddedCollectionViewCell
+ (Class)embeddedTableViewCellClass;
- (BOOL)conversationListCellCanShowFooter:(id)footer;
- (BOOL)conversationListCellCanShowPriorityLabelInCurrentFilterMode:(id)mode;
- (BOOL)shouldShowFooter;
- (CKConversationListEmbeddedCollectionViewCell)initWithFrame:(CGRect)frame;
- (CKConversationListEmbeddedCollectionViewCellDelegate)embeddedCellDelegate;
- (id)_leadingEditingAccessoryConfigurationsForEditingMode:(unint64_t)mode usingState:(id)state;
- (id)_multiselectCellAccessoryConfigurationUsingState:(id)state;
- (id)configurationState;
- (id)insertCellAccessoryConfiguration;
- (id)leadingEditingAccessoryConfigurationsForEditingMode:(unint64_t)mode;
- (id)multiselectCellAccessoryConfiguration;
- (id)pinButton;
- (id)preferredLayoutAttributesFittingAttributes:(id)attributes;
- (id)trailingEditingAccessoryConfigurationsForEditingMode:(unint64_t)mode;
- (void)conversationListCellDidPressAccept:(id)accept;
- (void)conversationListCellDidPressAddToContacts:(id)contacts;
- (void)conversationListCellDidPressDelete:(id)delete;
- (void)forwardStateToEmbeddedCell:(id)cell;
- (void)pinButtonTapped:(id)tapped;
- (void)prepareForReuse;
- (void)setCellLayout:(id)layout;
- (void)setEditingMode:(unint64_t)mode animated:(BOOL)animated;
- (void)setLinkInteractions:(id)interactions;
- (void)updateConfigurationUsingState:(id)state;
@end

@implementation CKConversationListEmbeddedCollectionViewCell

- (id)configurationState
{
  v5.receiver = self;
  v5.super_class = CKConversationListEmbeddedCollectionViewCell;
  configurationState = [(CKConversationListEmbeddedCollectionViewCell *)&v5 configurationState];
  v3 = +[CKUIBehavior sharedBehaviors];
  [v3 modifyConversationCellStateForDrop:configurationState];

  return configurationState;
}

- (BOOL)shouldShowFooter
{
  embeddedCellDelegate = [(CKConversationListEmbeddedCollectionViewCell *)self embeddedCellDelegate];
  v4 = embeddedCellDelegate;
  if (embeddedCellDelegate && ([embeddedCellDelegate currentFilterModeForCell:self] - 1) >= 2)
  {
    embeddedTableViewCell = [(CKConversationListEmbeddedCollectionViewCell *)self embeddedTableViewCell];
    if (embeddedTableViewCell && (objc_opt_respondsToSelector() & 1) != 0)
    {
      shouldShowFooter = [embeddedTableViewCell shouldShowFooter];
    }

    else
    {
      shouldShowFooter = 0;
    }
  }

  else
  {
    shouldShowFooter = 0;
  }

  return shouldShowFooter;
}

- (CKConversationListEmbeddedCollectionViewCellDelegate)embeddedCellDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_embeddedCellDelegate);

  return WeakRetained;
}

+ (Class)embeddedTableViewCellClass
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = NSStringFromSelector(a2);
  v9 = [v5 stringWithFormat:@"Subclasses of %@ must override %@.", v7, v8];
  v10 = [v3 exceptionWithName:v4 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (CKConversationListEmbeddedCollectionViewCell)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = CKConversationListEmbeddedCollectionViewCell;
  v4 = [(CKConversationListEmbeddedCollectionViewCell *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v5 = v4;
  if (v4)
  {
    contentView = [(CKConversationListEmbeddedCollectionViewCell *)v4 contentView];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(CKConversationListEmbeddedCollectionViewCell *)a2 initWithFrame:v5, contentView];
    }

    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [contentView setBackgroundColor:clearColor];

    [contentView setSelectionStyle:0];
    [(CKConversationListEmbeddedCollectionViewCell *)v5 setFocusEffect:0];
    if (objc_opt_respondsToSelector())
    {
      [contentView setIntroductionsDelegate:v5];
    }

    [(CKConversationListEmbeddedCollectionViewCell *)v5 setEmbeddedTableViewCell:contentView];
  }

  return v5;
}

- (void)setCellLayout:(id)layout
{
  layoutCopy = layout;
  objc_storeStrong(&self->_cellLayout, layout);
  embeddedTableViewCell = [(CKConversationListEmbeddedCollectionViewCell *)self embeddedTableViewCell];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    cellLayout = [(CKConversationListEmbeddedCollectionViewCell *)self cellLayout];

    if (!cellLayout)
    {
      [(CKConversationListEmbeddedCollectionViewCell *)self setCellLayout:a2];
    }

    cellLayout2 = [(CKConversationListEmbeddedCollectionViewCell *)self cellLayout];
    embeddedTableViewCell2 = [(CKConversationListEmbeddedCollectionViewCell *)self embeddedTableViewCell];
    [embeddedTableViewCell2 setCellLayout:cellLayout2];

    [(CKConversationListEmbeddedCollectionViewCell *)self setNeedsLayout];
  }
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = CKConversationListEmbeddedCollectionViewCell;
  [(CKConversationListEmbeddedCollectionViewCell *)&v4 prepareForReuse];
  embeddedTableViewCell = [(CKConversationListEmbeddedCollectionViewCell *)self embeddedTableViewCell];
  [embeddedTableViewCell prepareForReuse];
}

- (void)forwardStateToEmbeddedCell:(id)cell
{
  cellCopy = cell;
  embeddedTableViewCell = [(CKConversationListEmbeddedCollectionViewCell *)self embeddedTableViewCell];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    embeddedTableViewCell2 = [(CKConversationListEmbeddedCollectionViewCell *)self embeddedTableViewCell];
    [embeddedTableViewCell2 updateWithForwardedConfigurationState:cellCopy];
  }
}

- (void)updateConfigurationUsingState:(id)state
{
  stateCopy = state;
  listCellConfiguration = [MEMORY[0x1E69DC6E8] listCellConfiguration];
  v5 = [listCellConfiguration updatedConfigurationForState:stateCopy];

  v6 = +[CKUIBehavior sharedBehaviors];
  [v6 modifyConversationCellStateForDrop:stateCopy];

  [(CKConversationListEmbeddedCollectionViewCell *)self forwardStateToEmbeddedCell:stateCopy];
  v7 = [v5 updatedConfigurationForState:stateCopy];

  v8 = +[CKUIBehavior sharedBehaviors];
  traitCollection = [(CKConversationListEmbeddedCollectionViewCell *)self traitCollection];
  if ([v8 useSelectedAppearanceForConversationCellState:stateCopy traitCollection:traitCollection])
  {
    v10 = [(CKConversationListEmbeddedCollectionViewCell *)self editingMode]!= 2;
  }

  else
  {
    v10 = 0;
  }

  cellDropState = [stateCopy cellDropState];
  if (v10 || cellDropState == 2)
  {
    v15 = +[CKUIBehavior sharedBehaviors];
    theme = [v15 theme];
    conversationListSelectedCellColor = [theme conversationListSelectedCellColor];
    if (conversationListSelectedCellColor)
    {
      v18 = +[CKUIBehavior sharedBehaviors];
      theme2 = [v18 theme];
      conversationListSelectedCellColor2 = [theme2 conversationListSelectedCellColor];
    }

    else
    {
      conversationListSelectedCellColor2 = [v7 backgroundColor];
    }
  }

  else
  {
    mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isConversationListRefreshEnabled = [mEMORY[0x1E69A8070] isConversationListRefreshEnabled];

    if (isConversationListRefreshEnabled)
    {
      goto LABEL_13;
    }

    conversationListSelectedCellColor2 = [MEMORY[0x1E69DC888] clearColor];
  }

  [v7 setBackgroundColor:conversationListSelectedCellColor2];

LABEL_13:
  v20 = [(CKConversationListEmbeddedCollectionViewCell *)self _leadingEditingAccessoryConfigurationsForEditingMode:self->_editingMode usingState:stateCopy];
  [(CKConversationListEmbeddedCollectionViewCell *)self setLeadingEditingAccessoryConfigurations:v20];

  [(CKConversationListEmbeddedCollectionViewCell *)self setBackgroundConfiguration:v7];
}

- (void)conversationListCellDidPressDelete:(id)delete
{
  embeddedCellDelegate = [(CKConversationListEmbeddedCollectionViewCell *)self embeddedCellDelegate];
  [embeddedCellDelegate deleteButtonTappedForCell:self];
}

- (void)conversationListCellDidPressAccept:(id)accept
{
  embeddedCellDelegate = [(CKConversationListEmbeddedCollectionViewCell *)self embeddedCellDelegate];
  [embeddedCellDelegate acceptButtonTappedForCell:self];
}

- (void)conversationListCellDidPressAddToContacts:(id)contacts
{
  embeddedCellDelegate = [(CKConversationListEmbeddedCollectionViewCell *)self embeddedCellDelegate];
  [embeddedCellDelegate addToContactsButtonTappedForCell:self];
}

- (BOOL)conversationListCellCanShowFooter:(id)footer
{
  configurationState = [(CKConversationListEmbeddedCollectionViewCell *)self configurationState];
  isSelected = [configurationState isSelected];

  if (isSelected)
  {
    return 0;
  }

  embeddedCellDelegate = [(CKConversationListEmbeddedCollectionViewCell *)self embeddedCellDelegate];
  v8 = embeddedCellDelegate;
  if (embeddedCellDelegate)
  {
    v6 = ([embeddedCellDelegate currentFilterModeForCell:self] - 3) < 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)conversationListCellCanShowPriorityLabelInCurrentFilterMode:(id)mode
{
  embeddedCellDelegate = [(CKConversationListEmbeddedCollectionViewCell *)self embeddedCellDelegate];
  v5 = embeddedCellDelegate;
  if (embeddedCellDelegate)
  {
    v6 = [embeddedCellDelegate currentFilterModeForCell:self] == 2;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)preferredLayoutAttributesFittingAttributes:(id)attributes
{
  attributesCopy = attributes;
  [attributesCopy frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = +[CKUIBehavior sharedBehaviors];
  conversationListCellUsesLargeTextLayout = [v14 conversationListCellUsesLargeTextLayout];

  v35.origin.x = v7;
  v35.origin.y = v9;
  v35.size.width = v11;
  v35.size.height = v13;
  Width = CGRectGetWidth(v35);
  v17 = *(MEMORY[0x1E69DE090] + 8);
  if (conversationListCellUsesLargeTextLayout)
  {
    embeddedTableViewCell = [(CKConversationListEmbeddedCollectionViewCell *)self embeddedTableViewCell];
    [embeddedTableViewCell layoutIfNeeded];

    embeddedTableViewCell2 = [(CKConversationListEmbeddedCollectionViewCell *)self embeddedTableViewCell];
    [embeddedTableViewCell2 systemLayoutSizeFittingSize:{Width, v17}];
    v21 = v20;
  }

  else
  {
    cellLayout = [(CKConversationListEmbeddedCollectionViewCell *)self cellLayout];

    if (!cellLayout)
    {
      [(CKConversationListEmbeddedCollectionViewCell *)self preferredLayoutAttributesFittingAttributes:a2];
    }

    cellLayout2 = [(CKConversationListEmbeddedCollectionViewCell *)self cellLayout];
    traitCollection = [(CKConversationListEmbeddedCollectionViewCell *)self traitCollection];
    [traitCollection displayScale];
    [cellLayout2 cellHeightForDisplayScale:?];
    v21 = v25;

    embeddedTableViewCell2 = [(CKConversationListEmbeddedCollectionViewCell *)self embeddedTableViewCell];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [(CKConversationListEmbeddedCollectionViewCell *)self shouldShowFooter])
    {
      embeddedTableViewCell3 = [(CKConversationListEmbeddedCollectionViewCell *)self embeddedTableViewCell];
      footer = [embeddedTableViewCell3 footer];

      if (!footer)
      {
        goto LABEL_10;
      }

      embeddedTableViewCell2 = [(CKConversationListEmbeddedCollectionViewCell *)self embeddedTableViewCell];
      footer2 = [embeddedTableViewCell2 footer];
      [footer2 sizeThatFits:{Width, v17}];
      v30 = v29;

      v31 = +[CKUIBehavior sharedBehaviors];
      [v31 conversationListCellIntroductionsButtonSpacing];
      v21 = v21 + v30 + v32;
    }
  }

LABEL_10:
  [attributesCopy setFrame:{v7, v9, v11, v21}];

  return attributesCopy;
}

- (void)setEditingMode:(unint64_t)mode animated:(BOOL)animated
{
  animatedCopy = animated;
  if (self->_editingMode != mode && [(CKConversationListEmbeddedCollectionViewCell *)self shouldShowFooter])
  {
    cellLayout = [(CKConversationListEmbeddedCollectionViewCell *)self cellLayout];
    [cellLayout invalidate];
  }

  self->_editingMode = mode;
  [(CKConversationListEmbeddedCollectionViewCell *)self directionalLayoutMargins];
  v10 = v9;
  v12 = v11;
  if (mode >= 2)
  {
    if (mode == 2)
    {
      +[CKConversationListStandardCell leadingLayoutMargin];
      v8 = v13;
    }
  }

  else
  {
    v8 = 16.0;
  }

  [(CKConversationListEmbeddedCollectionViewCell *)self setDirectionalLayoutMargins:v10, v8, v12];
  v14 = [(CKConversationListEmbeddedCollectionViewCell *)self leadingEditingAccessoryConfigurationsForEditingMode:mode];
  [(CKConversationListEmbeddedCollectionViewCell *)self setLeadingEditingAccessoryConfigurations:v14];

  v15 = [(CKConversationListEmbeddedCollectionViewCell *)self trailingEditingAccessoryConfigurationsForEditingMode:mode];
  [(CKConversationListEmbeddedCollectionViewCell *)self setTrailingEditingAccessoryConfigurations:v15];

  embeddedTableViewCell = [(CKConversationListEmbeddedCollectionViewCell *)self embeddedTableViewCell];
  [embeddedTableViewCell setEditing:mode != 0 animated:animatedCopy];
}

- (id)_multiselectCellAccessoryConfigurationUsingState:(id)state
{
  stateCopy = state;
  v5 = +[CKUIBehavior sharedBehaviors];
  traitCollection = [(CKConversationListEmbeddedCollectionViewCell *)self traitCollection];
  v7 = [v5 useSelectedAppearanceForConversationCellState:stateCopy traitCollection:traitCollection];

  if (v7)
  {
    v8 = [(CKConversationListEmbeddedCollectionViewCell *)self editingMode]== 2;
  }

  else
  {
    v8 = 1;
  }

  v9 = +[CKUIBehavior sharedBehaviors];
  conversationListMultiSelectAccessoryUsesDefaultStyling = [v9 conversationListMultiSelectAccessoryUsesDefaultStyling];

  v11 = objc_alloc_init(MEMORY[0x1E69DD3C8]);
  if (!v8 && (conversationListMultiSelectAccessoryUsesDefaultStyling & 1) == 0)
  {
    systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
    [v11 setBackgroundColor:systemBlueColor];

    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [v11 setTintColor:whiteColor];
  }

  return v11;
}

- (id)multiselectCellAccessoryConfiguration
{
  configurationState = [(CKConversationListEmbeddedCollectionViewCell *)self configurationState];
  v4 = [(CKConversationListEmbeddedCollectionViewCell *)self _multiselectCellAccessoryConfigurationUsingState:configurationState];

  return v4;
}

- (id)insertCellAccessoryConfiguration
{
  pinButton = [(CKConversationListEmbeddedCollectionViewCell *)self pinButton];
  [pinButton layoutIfNeeded];
  v3 = [objc_alloc(MEMORY[0x1E69DD3C0]) initWithCustomView:pinButton];
  [v3 setMaintainsFixedSize:1];

  return v3;
}

- (id)_leadingEditingAccessoryConfigurationsForEditingMode:(unint64_t)mode usingState:(id)state
{
  v10[1] = *MEMORY[0x1E69E9840];
  stateCopy = state;
  if (mode == 2)
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  else if (mode == 1)
  {
    v8 = [(CKConversationListEmbeddedCollectionViewCell *)self _multiselectCellAccessoryConfigurationUsingState:stateCopy];
    v10[0] = v8;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  }

  else if (mode)
  {
    v7 = 0;
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  return v7;
}

- (id)leadingEditingAccessoryConfigurationsForEditingMode:(unint64_t)mode
{
  configurationState = [(CKConversationListEmbeddedCollectionViewCell *)self configurationState];
  v6 = [(CKConversationListEmbeddedCollectionViewCell *)self _leadingEditingAccessoryConfigurationsForEditingMode:mode usingState:configurationState];

  return v6;
}

- (id)trailingEditingAccessoryConfigurationsForEditingMode:(unint64_t)mode
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (mode == 2)
  {
    insertCellAccessoryConfiguration = [(CKConversationListEmbeddedCollectionViewCell *)self insertCellAccessoryConfiguration];
    v7[0] = insertCellAccessoryConfiguration;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  }

  else
  {
    v3 = MEMORY[0x1E695E0F0];
    if (mode)
    {
      v3 = 0;
    }

    if (mode == 1)
    {
      v4 = MEMORY[0x1E695E0F0];
    }

    else
    {
      v4 = v3;
    }
  }

  return v4;
}

- (id)pinButton
{
  v18[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69DCAD8];
  systemWhiteColor = [MEMORY[0x1E69DC888] systemWhiteColor];
  v18[0] = systemWhiteColor;
  systemYellowColor = [MEMORY[0x1E69DC888] systemYellowColor];
  v18[1] = systemYellowColor;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  v7 = [v3 configurationWithPaletteColors:v6];

  v8 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"pin.circle.fill" withConfiguration:v7];
  v9 = [v8 imageWithRenderingMode:2];

  clearConfiguration = [MEMORY[0x1E69DC6E8] clearConfiguration];
  [clearConfiguration setImage:v9];
  [clearConfiguration setImageContentMode:2];
  plainButtonConfiguration = [MEMORY[0x1E69DC740] plainButtonConfiguration];
  [plainButtonConfiguration setBackground:clearConfiguration];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __57__CKConversationListEmbeddedCollectionViewCell_pinButton__block_invoke;
  v17[3] = &unk_1E72EC060;
  v17[4] = self;
  v12 = [MEMORY[0x1E69DC628] actionWithHandler:v17];
  v13 = [MEMORY[0x1E69DC738] buttonWithConfiguration:plainButtonConfiguration primaryAction:v12];
  v14 = +[CKUIBehavior sharedBehaviors];
  if ([v14 isAccessibilityPreferredContentSizeCategory])
  {
    v15 = 60.0;
  }

  else
  {
    v15 = 36.0;
  }

  [v13 setFrame:{0.0, 0.0, v15, v15}];

  return v13;
}

- (void)pinButtonTapped:(id)tapped
{
  embeddedCellDelegate = [(CKConversationListEmbeddedCollectionViewCell *)self embeddedCellDelegate];
  [embeddedCellDelegate pinButtonTappedForCell:self];
}

- (void)setLinkInteractions:(id)interactions
{
  v29 = *MEMORY[0x1E69E9840];
  interactionsCopy = interactions;
  linkInteractions = self->_linkInteractions;
  if (linkInteractions)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v6 = linkInteractions;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v24;
      do
      {
        v10 = 0;
        do
        {
          if (*v24 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [(CKConversationListEmbeddedCollectionViewCell *)self removeInteraction:*(*(&v23 + 1) + 8 * v10++)];
        }

        while (v8 != v10);
        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v8);
    }
  }

  v11 = [interactionsCopy copy];
  v12 = self->_linkInteractions;
  self->_linkInteractions = v11;

  v13 = self->_linkInteractions;
  if (v13)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v14 = v13;
    v15 = [(NSArray *)v14 countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v20;
      do
      {
        v18 = 0;
        do
        {
          if (*v20 != v17)
          {
            objc_enumerationMutation(v14);
          }

          [(CKConversationListEmbeddedCollectionViewCell *)self addInteraction:*(*(&v19 + 1) + 8 * v18++), v19];
        }

        while (v16 != v18);
        v16 = [(NSArray *)v14 countByEnumeratingWithState:&v19 objects:v27 count:16];
      }

      while (v16);
    }
  }
}

- (void)initWithFrame:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"CKConversationListEmbeddedCollectionViewCell.m" lineNumber:46 description:{@"The content view must be a UITableViewCell: %@", a3}];
}

- (void)setCellLayout:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v6 handleFailureInMethod:a2 object:a1 file:@"CKConversationListEmbeddedCollectionViewCell.m" lineNumber:65 description:{@"%@ needs a cell layout.", v5}];
}

- (void)preferredLayoutAttributesFittingAttributes:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v6 handleFailureInMethod:a2 object:a1 file:@"CKConversationListEmbeddedCollectionViewCell.m" lineNumber:202 description:{@"%@ needs a cell layout.", v5}];
}

@end