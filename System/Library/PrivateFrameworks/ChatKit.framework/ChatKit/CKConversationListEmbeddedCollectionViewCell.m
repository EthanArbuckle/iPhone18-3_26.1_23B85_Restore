@interface CKConversationListEmbeddedCollectionViewCell
+ (Class)embeddedTableViewCellClass;
- (BOOL)conversationListCellCanShowFooter:(id)a3;
- (BOOL)conversationListCellCanShowPriorityLabelInCurrentFilterMode:(id)a3;
- (BOOL)shouldShowFooter;
- (CKConversationListEmbeddedCollectionViewCell)initWithFrame:(CGRect)a3;
- (CKConversationListEmbeddedCollectionViewCellDelegate)embeddedCellDelegate;
- (id)_leadingEditingAccessoryConfigurationsForEditingMode:(unint64_t)a3 usingState:(id)a4;
- (id)_multiselectCellAccessoryConfigurationUsingState:(id)a3;
- (id)configurationState;
- (id)insertCellAccessoryConfiguration;
- (id)leadingEditingAccessoryConfigurationsForEditingMode:(unint64_t)a3;
- (id)multiselectCellAccessoryConfiguration;
- (id)pinButton;
- (id)preferredLayoutAttributesFittingAttributes:(id)a3;
- (id)trailingEditingAccessoryConfigurationsForEditingMode:(unint64_t)a3;
- (void)conversationListCellDidPressAccept:(id)a3;
- (void)conversationListCellDidPressAddToContacts:(id)a3;
- (void)conversationListCellDidPressDelete:(id)a3;
- (void)forwardStateToEmbeddedCell:(id)a3;
- (void)pinButtonTapped:(id)a3;
- (void)prepareForReuse;
- (void)setCellLayout:(id)a3;
- (void)setEditingMode:(unint64_t)a3 animated:(BOOL)a4;
- (void)setLinkInteractions:(id)a3;
- (void)updateConfigurationUsingState:(id)a3;
@end

@implementation CKConversationListEmbeddedCollectionViewCell

- (id)configurationState
{
  v5.receiver = self;
  v5.super_class = CKConversationListEmbeddedCollectionViewCell;
  v2 = [(CKConversationListEmbeddedCollectionViewCell *)&v5 configurationState];
  v3 = +[CKUIBehavior sharedBehaviors];
  [v3 modifyConversationCellStateForDrop:v2];

  return v2;
}

- (BOOL)shouldShowFooter
{
  v3 = [(CKConversationListEmbeddedCollectionViewCell *)self embeddedCellDelegate];
  v4 = v3;
  if (v3 && ([v3 currentFilterModeForCell:self] - 1) >= 2)
  {
    v6 = [(CKConversationListEmbeddedCollectionViewCell *)self embeddedTableViewCell];
    if (v6 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v5 = [v6 shouldShowFooter];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
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

- (CKConversationListEmbeddedCollectionViewCell)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = CKConversationListEmbeddedCollectionViewCell;
  v4 = [(CKConversationListEmbeddedCollectionViewCell *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v5 = v4;
  if (v4)
  {
    v6 = [(CKConversationListEmbeddedCollectionViewCell *)v4 contentView];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(CKConversationListEmbeddedCollectionViewCell *)a2 initWithFrame:v5, v6];
    }

    v7 = [MEMORY[0x1E69DC888] clearColor];
    [v6 setBackgroundColor:v7];

    [v6 setSelectionStyle:0];
    [(CKConversationListEmbeddedCollectionViewCell *)v5 setFocusEffect:0];
    if (objc_opt_respondsToSelector())
    {
      [v6 setIntroductionsDelegate:v5];
    }

    [(CKConversationListEmbeddedCollectionViewCell *)v5 setEmbeddedTableViewCell:v6];
  }

  return v5;
}

- (void)setCellLayout:(id)a3
{
  v11 = a3;
  objc_storeStrong(&self->_cellLayout, a3);
  v6 = [(CKConversationListEmbeddedCollectionViewCell *)self embeddedTableViewCell];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(CKConversationListEmbeddedCollectionViewCell *)self cellLayout];

    if (!v8)
    {
      [(CKConversationListEmbeddedCollectionViewCell *)self setCellLayout:a2];
    }

    v9 = [(CKConversationListEmbeddedCollectionViewCell *)self cellLayout];
    v10 = [(CKConversationListEmbeddedCollectionViewCell *)self embeddedTableViewCell];
    [v10 setCellLayout:v9];

    [(CKConversationListEmbeddedCollectionViewCell *)self setNeedsLayout];
  }
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = CKConversationListEmbeddedCollectionViewCell;
  [(CKConversationListEmbeddedCollectionViewCell *)&v4 prepareForReuse];
  v3 = [(CKConversationListEmbeddedCollectionViewCell *)self embeddedTableViewCell];
  [v3 prepareForReuse];
}

- (void)forwardStateToEmbeddedCell:(id)a3
{
  v7 = a3;
  v4 = [(CKConversationListEmbeddedCollectionViewCell *)self embeddedTableViewCell];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CKConversationListEmbeddedCollectionViewCell *)self embeddedTableViewCell];
    [v6 updateWithForwardedConfigurationState:v7];
  }
}

- (void)updateConfigurationUsingState:(id)a3
{
  v21 = a3;
  v4 = [MEMORY[0x1E69DC6E8] listCellConfiguration];
  v5 = [v4 updatedConfigurationForState:v21];

  v6 = +[CKUIBehavior sharedBehaviors];
  [v6 modifyConversationCellStateForDrop:v21];

  [(CKConversationListEmbeddedCollectionViewCell *)self forwardStateToEmbeddedCell:v21];
  v7 = [v5 updatedConfigurationForState:v21];

  v8 = +[CKUIBehavior sharedBehaviors];
  v9 = [(CKConversationListEmbeddedCollectionViewCell *)self traitCollection];
  if ([v8 useSelectedAppearanceForConversationCellState:v21 traitCollection:v9])
  {
    v10 = [(CKConversationListEmbeddedCollectionViewCell *)self editingMode]!= 2;
  }

  else
  {
    v10 = 0;
  }

  v11 = [v21 cellDropState];
  if (v10 || v11 == 2)
  {
    v15 = +[CKUIBehavior sharedBehaviors];
    v16 = [v15 theme];
    v17 = [v16 conversationListSelectedCellColor];
    if (v17)
    {
      v18 = +[CKUIBehavior sharedBehaviors];
      v19 = [v18 theme];
      v14 = [v19 conversationListSelectedCellColor];
    }

    else
    {
      v14 = [v7 backgroundColor];
    }
  }

  else
  {
    v12 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v13 = [v12 isConversationListRefreshEnabled];

    if (v13)
    {
      goto LABEL_13;
    }

    v14 = [MEMORY[0x1E69DC888] clearColor];
  }

  [v7 setBackgroundColor:v14];

LABEL_13:
  v20 = [(CKConversationListEmbeddedCollectionViewCell *)self _leadingEditingAccessoryConfigurationsForEditingMode:self->_editingMode usingState:v21];
  [(CKConversationListEmbeddedCollectionViewCell *)self setLeadingEditingAccessoryConfigurations:v20];

  [(CKConversationListEmbeddedCollectionViewCell *)self setBackgroundConfiguration:v7];
}

- (void)conversationListCellDidPressDelete:(id)a3
{
  v4 = [(CKConversationListEmbeddedCollectionViewCell *)self embeddedCellDelegate];
  [v4 deleteButtonTappedForCell:self];
}

- (void)conversationListCellDidPressAccept:(id)a3
{
  v4 = [(CKConversationListEmbeddedCollectionViewCell *)self embeddedCellDelegate];
  [v4 acceptButtonTappedForCell:self];
}

- (void)conversationListCellDidPressAddToContacts:(id)a3
{
  v4 = [(CKConversationListEmbeddedCollectionViewCell *)self embeddedCellDelegate];
  [v4 addToContactsButtonTappedForCell:self];
}

- (BOOL)conversationListCellCanShowFooter:(id)a3
{
  v4 = [(CKConversationListEmbeddedCollectionViewCell *)self configurationState];
  v5 = [v4 isSelected];

  if (v5)
  {
    return 0;
  }

  v7 = [(CKConversationListEmbeddedCollectionViewCell *)self embeddedCellDelegate];
  v8 = v7;
  if (v7)
  {
    v6 = ([v7 currentFilterModeForCell:self] - 3) < 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)conversationListCellCanShowPriorityLabelInCurrentFilterMode:(id)a3
{
  v4 = [(CKConversationListEmbeddedCollectionViewCell *)self embeddedCellDelegate];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 currentFilterModeForCell:self] == 2;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)preferredLayoutAttributesFittingAttributes:(id)a3
{
  v5 = a3;
  [v5 frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = +[CKUIBehavior sharedBehaviors];
  v15 = [v14 conversationListCellUsesLargeTextLayout];

  v35.origin.x = v7;
  v35.origin.y = v9;
  v35.size.width = v11;
  v35.size.height = v13;
  Width = CGRectGetWidth(v35);
  v17 = *(MEMORY[0x1E69DE090] + 8);
  if (v15)
  {
    v18 = [(CKConversationListEmbeddedCollectionViewCell *)self embeddedTableViewCell];
    [v18 layoutIfNeeded];

    v19 = [(CKConversationListEmbeddedCollectionViewCell *)self embeddedTableViewCell];
    [v19 systemLayoutSizeFittingSize:{Width, v17}];
    v21 = v20;
  }

  else
  {
    v22 = [(CKConversationListEmbeddedCollectionViewCell *)self cellLayout];

    if (!v22)
    {
      [(CKConversationListEmbeddedCollectionViewCell *)self preferredLayoutAttributesFittingAttributes:a2];
    }

    v23 = [(CKConversationListEmbeddedCollectionViewCell *)self cellLayout];
    v24 = [(CKConversationListEmbeddedCollectionViewCell *)self traitCollection];
    [v24 displayScale];
    [v23 cellHeightForDisplayScale:?];
    v21 = v25;

    v19 = [(CKConversationListEmbeddedCollectionViewCell *)self embeddedTableViewCell];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [(CKConversationListEmbeddedCollectionViewCell *)self shouldShowFooter])
    {
      v26 = [(CKConversationListEmbeddedCollectionViewCell *)self embeddedTableViewCell];
      v27 = [v26 footer];

      if (!v27)
      {
        goto LABEL_10;
      }

      v19 = [(CKConversationListEmbeddedCollectionViewCell *)self embeddedTableViewCell];
      v28 = [v19 footer];
      [v28 sizeThatFits:{Width, v17}];
      v30 = v29;

      v31 = +[CKUIBehavior sharedBehaviors];
      [v31 conversationListCellIntroductionsButtonSpacing];
      v21 = v21 + v30 + v32;
    }
  }

LABEL_10:
  [v5 setFrame:{v7, v9, v11, v21}];

  return v5;
}

- (void)setEditingMode:(unint64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  if (self->_editingMode != a3 && [(CKConversationListEmbeddedCollectionViewCell *)self shouldShowFooter])
  {
    v7 = [(CKConversationListEmbeddedCollectionViewCell *)self cellLayout];
    [v7 invalidate];
  }

  self->_editingMode = a3;
  [(CKConversationListEmbeddedCollectionViewCell *)self directionalLayoutMargins];
  v10 = v9;
  v12 = v11;
  if (a3 >= 2)
  {
    if (a3 == 2)
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
  v14 = [(CKConversationListEmbeddedCollectionViewCell *)self leadingEditingAccessoryConfigurationsForEditingMode:a3];
  [(CKConversationListEmbeddedCollectionViewCell *)self setLeadingEditingAccessoryConfigurations:v14];

  v15 = [(CKConversationListEmbeddedCollectionViewCell *)self trailingEditingAccessoryConfigurationsForEditingMode:a3];
  [(CKConversationListEmbeddedCollectionViewCell *)self setTrailingEditingAccessoryConfigurations:v15];

  v16 = [(CKConversationListEmbeddedCollectionViewCell *)self embeddedTableViewCell];
  [v16 setEditing:a3 != 0 animated:v4];
}

- (id)_multiselectCellAccessoryConfigurationUsingState:(id)a3
{
  v4 = a3;
  v5 = +[CKUIBehavior sharedBehaviors];
  v6 = [(CKConversationListEmbeddedCollectionViewCell *)self traitCollection];
  v7 = [v5 useSelectedAppearanceForConversationCellState:v4 traitCollection:v6];

  if (v7)
  {
    v8 = [(CKConversationListEmbeddedCollectionViewCell *)self editingMode]== 2;
  }

  else
  {
    v8 = 1;
  }

  v9 = +[CKUIBehavior sharedBehaviors];
  v10 = [v9 conversationListMultiSelectAccessoryUsesDefaultStyling];

  v11 = objc_alloc_init(MEMORY[0x1E69DD3C8]);
  if (!v8 && (v10 & 1) == 0)
  {
    v12 = [MEMORY[0x1E69DC888] systemBlueColor];
    [v11 setBackgroundColor:v12];

    v13 = [MEMORY[0x1E69DC888] whiteColor];
    [v11 setTintColor:v13];
  }

  return v11;
}

- (id)multiselectCellAccessoryConfiguration
{
  v3 = [(CKConversationListEmbeddedCollectionViewCell *)self configurationState];
  v4 = [(CKConversationListEmbeddedCollectionViewCell *)self _multiselectCellAccessoryConfigurationUsingState:v3];

  return v4;
}

- (id)insertCellAccessoryConfiguration
{
  v2 = [(CKConversationListEmbeddedCollectionViewCell *)self pinButton];
  [v2 layoutIfNeeded];
  v3 = [objc_alloc(MEMORY[0x1E69DD3C0]) initWithCustomView:v2];
  [v3 setMaintainsFixedSize:1];

  return v3;
}

- (id)_leadingEditingAccessoryConfigurationsForEditingMode:(unint64_t)a3 usingState:(id)a4
{
  v10[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (a3 == 2)
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  else if (a3 == 1)
  {
    v8 = [(CKConversationListEmbeddedCollectionViewCell *)self _multiselectCellAccessoryConfigurationUsingState:v6];
    v10[0] = v8;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  }

  else if (a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  return v7;
}

- (id)leadingEditingAccessoryConfigurationsForEditingMode:(unint64_t)a3
{
  v5 = [(CKConversationListEmbeddedCollectionViewCell *)self configurationState];
  v6 = [(CKConversationListEmbeddedCollectionViewCell *)self _leadingEditingAccessoryConfigurationsForEditingMode:a3 usingState:v5];

  return v6;
}

- (id)trailingEditingAccessoryConfigurationsForEditingMode:(unint64_t)a3
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (a3 == 2)
  {
    v5 = [(CKConversationListEmbeddedCollectionViewCell *)self insertCellAccessoryConfiguration];
    v7[0] = v5;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  }

  else
  {
    v3 = MEMORY[0x1E695E0F0];
    if (a3)
    {
      v3 = 0;
    }

    if (a3 == 1)
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
  v4 = [MEMORY[0x1E69DC888] systemWhiteColor];
  v18[0] = v4;
  v5 = [MEMORY[0x1E69DC888] systemYellowColor];
  v18[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  v7 = [v3 configurationWithPaletteColors:v6];

  v8 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"pin.circle.fill" withConfiguration:v7];
  v9 = [v8 imageWithRenderingMode:2];

  v10 = [MEMORY[0x1E69DC6E8] clearConfiguration];
  [v10 setImage:v9];
  [v10 setImageContentMode:2];
  v11 = [MEMORY[0x1E69DC740] plainButtonConfiguration];
  [v11 setBackground:v10];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __57__CKConversationListEmbeddedCollectionViewCell_pinButton__block_invoke;
  v17[3] = &unk_1E72EC060;
  v17[4] = self;
  v12 = [MEMORY[0x1E69DC628] actionWithHandler:v17];
  v13 = [MEMORY[0x1E69DC738] buttonWithConfiguration:v11 primaryAction:v12];
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

- (void)pinButtonTapped:(id)a3
{
  v4 = [(CKConversationListEmbeddedCollectionViewCell *)self embeddedCellDelegate];
  [v4 pinButtonTappedForCell:self];
}

- (void)setLinkInteractions:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
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

  v11 = [v4 copy];
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