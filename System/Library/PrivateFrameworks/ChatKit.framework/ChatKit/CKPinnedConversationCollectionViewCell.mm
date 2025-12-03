@interface CKPinnedConversationCollectionViewCell
+ (id)_jitterRotationAnimation;
+ (id)_jitterXTranslationAnimation;
+ (id)_jitterYTranslationAnimation;
+ (id)checkmarkAccessoryView;
+ (id)reuseIdentifier;
+ (id)unpinAccessoryView;
- (BOOL)isJittering;
- (CGRect)cellFrameFromLayoutAttributes;
- (CGRect)checkboxFrame;
- (CGRect)unpinAccessoryViewFrame;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CKPinnedConversationCollectionViewCell)initWithFrame:(CGRect)frame;
- (CKPinnedConversationCollectionViewCellDelegate)delegate;
- (double)accessorySizeForLayoutStyle:(int64_t)style;
- (id)configurationState;
- (void)_createCheckboxAccessoryIfNecessary;
- (void)_createUnpinAccessoryIfNecessary;
- (void)_updateActivityItemBoundingFrame;
- (void)_updateActivitySupressionForState:(id)state;
- (void)applyLayoutAttributes:(id)attributes;
- (void)dragStateDidChange:(int64_t)change;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setAllowActivitySuppressionWhenSelected:(BOOL)selected;
- (void)setDelegate:(id)delegate;
- (void)setEditingMode:(unint64_t)mode animated:(BOOL)animated;
- (void)setJittering:(BOOL)jittering;
- (void)setLinkInteractions:(id)interactions;
- (void)setShowsBackgroundViewWhenSelected:(BOOL)selected;
- (void)unpinButtonTapped:(id)tapped;
- (void)updateCheckboxAccessoryImageForCurrentLayoutStyle;
- (void)updateConfigurationUsingState:(id)state;
- (void)updateUnpinAccessoryImageForCurrentLayoutStyle;
@end

@implementation CKPinnedConversationCollectionViewCell

+ (id)reuseIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (CKPinnedConversationCollectionViewCell)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = CKPinnedConversationCollectionViewCell;
  v3 = [(CKPinnedConversationCollectionViewCell *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [CKPinnedConversationView alloc];
    [(CKPinnedConversationCollectionViewCell *)v3 bounds];
    v5 = [(CKPinnedConversationView *)v4 initWithFrame:?];
    pinnedConversationView = v3->_pinnedConversationView;
    v3->_pinnedConversationView = v5;

    contentView = [(CKPinnedConversationCollectionViewCell *)v3 contentView];
    [contentView addSubview:v3->_pinnedConversationView];

    v3->_editingMode = 0;
  }

  return v3;
}

- (void)applyLayoutAttributes:(id)attributes
{
  v13.receiver = self;
  v13.super_class = CKPinnedConversationCollectionViewCell;
  attributesCopy = attributes;
  [(CKPinnedConversationCollectionViewCell *)&v13 applyLayoutAttributes:attributesCopy];
  [attributesCopy frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  self->_cellFrameFromLayoutAttributes.origin.x = v6;
  self->_cellFrameFromLayoutAttributes.origin.y = v8;
  self->_cellFrameFromLayoutAttributes.size.width = v10;
  self->_cellFrameFromLayoutAttributes.size.height = v12;
  [(CKPinnedConversationCollectionViewCell *)self _updateActivityItemBoundingFrame];
}

- (void)_updateActivityItemBoundingFrame
{
  v4 = *MEMORY[0x1E695F058];
  v3 = *(MEMORY[0x1E695F058] + 8);
  v6 = *(MEMORY[0x1E695F058] + 16);
  v5 = *(MEMORY[0x1E695F058] + 24);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained collectionViewBoundsForPinnedConversationCollectionViewCell:self];
  v17 = v9;
  v18 = v8;
  v11 = v10;
  v13 = v12;

  x = self->_cellFrameFromLayoutAttributes.origin.x;
  y = self->_cellFrameFromLayoutAttributes.origin.y;
  v20.size.width = self->_cellFrameFromLayoutAttributes.size.width;
  v20.size.height = self->_cellFrameFromLayoutAttributes.size.height;
  v20.origin.x = x;
  v20.origin.y = y;
  if (!CGRectIsEmpty(v20))
  {
    v21.origin.y = v17;
    v21.origin.x = v18;
    v21.size.width = v11;
    v21.size.height = v13;
    if (!CGRectIsEmpty(v21))
    {
      v5 = v13;
      v6 = v11;
      v3 = -y;
      v4 = -x;
    }
  }

  pinnedConversationView = self->_pinnedConversationView;

  [(CKPinnedConversationView *)pinnedConversationView setActivityItemBoundingFrame:v4, v3, v6, v5];
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    [(CKPinnedConversationCollectionViewCell *)self _updateActivityItemBoundingFrame];
    v5 = obj;
  }
}

- (id)configurationState
{
  v5.receiver = self;
  v5.super_class = CKPinnedConversationCollectionViewCell;
  configurationState = [(CKPinnedConversationCollectionViewCell *)&v5 configurationState];
  v3 = +[CKUIBehavior sharedBehaviors];
  [v3 modifyConversationCellStateForDrop:configurationState];

  return configurationState;
}

- (void)updateConfigurationUsingState:(id)state
{
  stateCopy = state;
  listSidebarCellConfiguration = [MEMORY[0x1E69DC6E8] listSidebarCellConfiguration];
  v5 = +[CKUIBehavior sharedBehaviors];
  traitCollection = [(CKPinnedConversationCollectionViewCell *)self traitCollection];
  if ([v5 useSelectedAppearanceForConversationCellState:stateCopy traitCollection:traitCollection])
  {
    if ([(CKPinnedConversationCollectionViewCell *)self editingMode])
    {
      v7 = CKIsRunningInMacCatalyst() != 0;
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  clearColor = [MEMORY[0x1E69DC888] clearColor];
  v9 = +[CKUIBehavior sharedBehaviors];
  [v9 modifyConversationCellStateForDrop:stateCopy];

  v10 = [listSidebarCellConfiguration updatedConfigurationForState:stateCopy];

  if (v7 && [(CKPinnedConversationCollectionViewCell *)self showsBackgroundViewWhenSelected])
  {
    v11 = +[CKUIBehavior sharedBehaviors];
    theme = [v11 theme];
    conversationListPinnedCellSelectorViewColor = [theme conversationListPinnedCellSelectorViewColor];

    if (conversationListPinnedCellSelectorViewColor)
    {
      v14 = +[CKUIBehavior sharedBehaviors];
      theme2 = [v14 theme];
      conversationListPinnedCellSelectorViewColor2 = [theme2 conversationListPinnedCellSelectorViewColor];

      clearColor = v14;
    }

    else
    {
      conversationListPinnedCellSelectorViewColor2 = [v10 backgroundColor];
    }

    v17 = 1;
    clearColor = conversationListPinnedCellSelectorViewColor2;
  }

  else
  {
    v17 = 0;
  }

  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  conversationPinningTouchdownDimEnabled = [mEMORY[0x1E69A8070] conversationPinningTouchdownDimEnabled];

  if (conversationPinningTouchdownDimEnabled)
  {
    isHighlighted = [stateCopy isHighlighted];
    v21 = [stateCopy cellDropState] == 2;
    if (![(CKPinnedConversationCollectionViewCell *)self showsBackgroundViewWhenSelected])
    {
      v21 |= isHighlighted | v7;
    }

    pinnedConversationView = [(CKPinnedConversationCollectionViewCell *)self pinnedConversationView];
    [pinnedConversationView setDimmed:v21 & 1];
  }

  [v10 setBackgroundColor:clearColor];
  v23 = +[CKUIBehavior sharedBehaviors];
  [v23 conversationListPinnedCellSelectedBackgroundCornerRadius];
  [v10 setCornerRadius:?];

  [v10 setEdgesAddingLayoutMarginsToBackgroundInsets:0];
  [v10 setBackgroundInsets:{*MEMORY[0x1E69DC5C0], *(MEMORY[0x1E69DC5C0] + 8), *(MEMORY[0x1E69DC5C0] + 16), *(MEMORY[0x1E69DC5C0] + 24)}];
  [(CKPinnedConversationCollectionViewCell *)self _updateActivitySupressionForState:stateCopy];
  isSelected = [(CKPinnedConversationCollectionViewCell *)self isSelected];
  checkboxAccessoryView = [(CKPinnedConversationCollectionViewCell *)self checkboxAccessoryView];
  [checkboxAccessoryView setSelected:isSelected];

  showsBackgroundViewWhenSelected = [(CKPinnedConversationCollectionViewCell *)self showsBackgroundViewWhenSelected];
  pinnedConversationView2 = [(CKPinnedConversationCollectionViewCell *)self pinnedConversationView];
  [pinnedConversationView2 setNeedsUnreadIndicatorLeadingEdgePadding:showsBackgroundViewWhenSelected];

  pinnedConversationView3 = [(CKPinnedConversationCollectionViewCell *)self pinnedConversationView];
  [pinnedConversationView3 setIsSelectedWithDarkAppearance:v17];

  [(CKPinnedConversationCollectionViewCell *)self setBackgroundConfiguration:v10];
}

+ (id)unpinAccessoryView
{
  v2 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"minus"];
  v3 = [MEMORY[0x1E69DC730] effectWithStyle:16];
  systemWhiteColor = [MEMORY[0x1E69DC888] systemWhiteColor];
  v5 = [CKConversationListAccessoryView alloc];
  v6 = +[CKUIBehavior sharedBehaviors];
  [v6 pinnedConversationDefaultAccessorySize];
  v7 = [(CKConversationListAccessoryView *)v5 initWithDiameter:?];

  [(CKConversationListAccessoryView *)v7 setBlurEffect:v3 withVibrancyEffectStyle:2 forState:0];
  [(CKConversationListAccessoryView *)v7 setTintColor:systemWhiteColor forState:0];
  [(CKConversationListAccessoryView *)v7 setImage:v2 forState:0];

  return v7;
}

+ (id)checkmarkAccessoryView
{
  v2 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"checkmark"];
  systemGrayColor = [MEMORY[0x1E69DC888] systemGrayColor];
  v4 = [systemGrayColor colorWithAlphaComponent:0.100000001];

  systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
  v6 = [MEMORY[0x1E69DC730] effectWithStyle:8];
  systemWhiteColor = [MEMORY[0x1E69DC888] systemWhiteColor];
  v8 = [CKConversationListAccessoryView alloc];
  v9 = +[CKUIBehavior sharedBehaviors];
  [v9 pinnedConversationDefaultAccessorySize];
  v10 = [(CKConversationListAccessoryView *)v8 initWithDiameter:?];

  [(CKConversationListAccessoryView *)v10 setBlurEffect:v6 forState:0];
  [(CKConversationListAccessoryView *)v10 setBackgroundColor:v4 forState:0];
  [(CKConversationListAccessoryView *)v10 setBackgroundColor:systemBlueColor forState:4];
  [(CKConversationListAccessoryView *)v10 setTintColor:systemWhiteColor forState:4];
  [(CKConversationListAccessoryView *)v10 setImage:v2 forState:4];
  [(CKConversationListAccessoryView *)v10 setUserInteractionEnabled:0];
  v11 = +[CKUIBehavior sharedBehaviors];
  [v11 pinnedConversationCheckmarkStrokeRatio];
  v13 = v12;
  [(CKConversationListAccessoryView *)v10 bounds];
  v15 = v13 * v14;
  layer = [(CKConversationListAccessoryView *)v10 layer];
  [layer setBorderWidth:v15];

  systemWhiteColor2 = [MEMORY[0x1E69DC888] systemWhiteColor];
  cGColor = [systemWhiteColor2 CGColor];
  layer2 = [(CKConversationListAccessoryView *)v10 layer];
  [layer2 setBorderColor:cGColor];

  layer3 = [(CKConversationListAccessoryView *)v10 layer];
  [layer3 setMasksToBounds:0];

  blackColor = [MEMORY[0x1E69DC888] blackColor];
  cGColor2 = [blackColor CGColor];
  layer4 = [(CKConversationListAccessoryView *)v10 layer];
  [layer4 setShadowColor:cGColor2];

  layer5 = [(CKConversationListAccessoryView *)v10 layer];
  LODWORD(v25) = 1025758986;
  [layer5 setShadowOpacity:v25];

  layer6 = [(CKConversationListAccessoryView *)v10 layer];
  [layer6 setShadowRadius:7.0];

  layer7 = [(CKConversationListAccessoryView *)v10 layer];
  [layer7 setShadowOffset:{0.0, 12.0}];

  return v10;
}

- (double)accessorySizeForLayoutStyle:(int64_t)style
{
  if (style > 6)
  {
    return 0.0;
  }

  if (((1 << style) & 0x3C) != 0)
  {
    return 18.0;
  }

  v4 = +[CKUIBehavior sharedBehaviors];
  [v4 pinnedConversationDefaultAccessorySize];
  v6 = v5;

  return v6;
}

- (void)updateCheckboxAccessoryImageForCurrentLayoutStyle
{
  pinnedConversationView = [(CKPinnedConversationCollectionViewCell *)self pinnedConversationView];
  layoutStyle = [pinnedConversationView layoutStyle];

  if (layoutStyle > 6)
  {
    v6 = 0;
    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:**(&unk_1E72F4AB8 + layoutStyle) variant:1024];
    v6 = 1;
  }

  v11 = v5;
  v7 = [MEMORY[0x1E69DCAD8] configurationWithFont:v5 scale:v6];
  v8 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"checkmark"];
  v9 = [v8 imageWithConfiguration:v7];

  checkboxAccessoryView = [(CKPinnedConversationCollectionViewCell *)self checkboxAccessoryView];
  [checkboxAccessoryView setImage:v9 forState:4];
}

- (void)updateUnpinAccessoryImageForCurrentLayoutStyle
{
  pinnedConversationView = [(CKPinnedConversationCollectionViewCell *)self pinnedConversationView];
  layoutStyle = [pinnedConversationView layoutStyle];

  if (layoutStyle > 6)
  {
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v5 = qword_1E72F4AF0[layoutStyle];
    v6 = qword_190DD0F98[layoutStyle];
    v7 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*v5 variant:1024];
  }

  v12 = v7;
  v8 = [MEMORY[0x1E69DCAD8] configurationWithFont:v7 scale:v6];
  v9 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"minus"];
  v10 = [v9 imageWithConfiguration:v8];

  unpinAccessoryView = [(CKPinnedConversationCollectionViewCell *)self unpinAccessoryView];
  [unpinAccessoryView setImage:v10 forState:0];
}

- (void)_createCheckboxAccessoryIfNecessary
{
  checkboxAccessoryView = [(CKPinnedConversationCollectionViewCell *)self checkboxAccessoryView];

  if (!checkboxAccessoryView)
  {
    v4 = +[CKPinnedConversationCollectionViewCell checkmarkAccessoryView];
    checkboxAccessoryView = self->_checkboxAccessoryView;
    self->_checkboxAccessoryView = v4;

    [(CKPinnedConversationCollectionViewCell *)self checkboxFrame];
    [(CKConversationListAccessoryView *)self->_checkboxAccessoryView setFrame:?];

    [(CKPinnedConversationCollectionViewCell *)self updateCheckboxAccessoryImageForCurrentLayoutStyle];
  }
}

- (void)_createUnpinAccessoryIfNecessary
{
  unpinAccessoryView = [(CKPinnedConversationCollectionViewCell *)self unpinAccessoryView];

  if (!unpinAccessoryView)
  {
    v4 = +[CKPinnedConversationCollectionViewCell unpinAccessoryView];
    unpinAccessoryView = self->_unpinAccessoryView;
    self->_unpinAccessoryView = v4;

    [(CKPinnedConversationCollectionViewCell *)self unpinAccessoryViewFrame];
    [(CKConversationListAccessoryView *)self->_unpinAccessoryView setFrame:?];
    [(CKConversationListAccessoryView *)self->_unpinAccessoryView setImageNeedsEdgeAntiAliasing:1];
    [(CKConversationListAccessoryView *)self->_unpinAccessoryView addTarget:self action:sel_unpinButtonTapped_ forEvents:64];

    [(CKPinnedConversationCollectionViewCell *)self updateUnpinAccessoryImageForCurrentLayoutStyle];
  }
}

- (void)setAllowActivitySuppressionWhenSelected:(BOOL)selected
{
  if (self->_allowActivitySuppressionWhenSelected != selected)
  {
    self->_allowActivitySuppressionWhenSelected = selected;
    configurationState = [(CKPinnedConversationCollectionViewCell *)self configurationState];
    [(CKPinnedConversationCollectionViewCell *)self _updateActivitySupressionForState:configurationState];
  }
}

- (void)setEditingMode:(unint64_t)mode animated:(BOOL)animated
{
  animatedCopy = animated;
  if (self->_editingMode != mode)
  {
    self->_editingMode = mode;
  }

  if (mode && (-[CKPinnedConversationCollectionViewCell pinnedConversationView](self, "pinnedConversationView"), v7 = objc_claimAutoreleasedReturnValue(), [v7 setDimmed:0], v7, mode == 1) && !CKIsRunningInMacCatalyst())
  {
    if ([(CKPinnedConversationCollectionViewCell *)self isShowingCheckboxAccessory])
    {
      v14 = 0;
    }

    else
    {
      [(CKPinnedConversationCollectionViewCell *)self setShowingCheckboxAccessory:1];
      v14 = animatedCopy;
    }

    contentView = [(CKPinnedConversationCollectionViewCell *)self contentView];
    v16 = MEMORY[0x1E69DD250];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __66__CKPinnedConversationCollectionViewCell_setEditingMode_animated___block_invoke;
    v35[3] = &unk_1E72EB8D0;
    v35[4] = self;
    v17 = contentView;
    v36 = v17;
    [v16 performWithoutAnimation:v35];
    if (v14)
    {
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __66__CKPinnedConversationCollectionViewCell_setEditingMode_animated___block_invoke_2;
      v34[3] = &unk_1E72EBA18;
      v34[4] = self;
      [MEMORY[0x1E69DD250] performWithoutAnimation:v34];
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __66__CKPinnedConversationCollectionViewCell_setEditingMode_animated___block_invoke_3;
      v33[3] = &unk_1E72EBA18;
      v33[4] = self;
      [MEMORY[0x1E69DD250] animateWithDuration:v33 animations:0.3];
    }

    [(CKPinnedConversationCollectionViewCell *)self setJittering:0];
  }

  else
  {
    checkboxAccessoryView = [(CKPinnedConversationCollectionViewCell *)self checkboxAccessoryView];

    if (checkboxAccessoryView)
    {
      [(CKPinnedConversationCollectionViewCell *)self setShowingCheckboxAccessory:0];
      if (animatedCopy)
      {
        v32[0] = MEMORY[0x1E69E9820];
        v32[1] = 3221225472;
        v32[2] = __66__CKPinnedConversationCollectionViewCell_setEditingMode_animated___block_invoke_4;
        v32[3] = &unk_1E72EBA18;
        v32[4] = self;
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __66__CKPinnedConversationCollectionViewCell_setEditingMode_animated___block_invoke_5;
        v31[3] = &unk_1E72EB9C8;
        v31[4] = self;
        [MEMORY[0x1E69DD250] animateWithDuration:v32 animations:v31 completion:0.3];
      }

      else
      {
        checkboxAccessoryView2 = [(CKPinnedConversationCollectionViewCell *)self checkboxAccessoryView];
        [checkboxAccessoryView2 removeFromSuperview];

        [(CKPinnedConversationCollectionViewCell *)self setCheckboxAccessoryView:0];
      }
    }

    [(CKPinnedConversationCollectionViewCell *)self setJittering:mode == 2];
    if (mode == 2)
    {
      if ([(CKPinnedConversationCollectionViewCell *)self isShowingUnpinAccessory])
      {
        v10 = 0;
      }

      else
      {
        [(CKPinnedConversationCollectionViewCell *)self setShowingUnpinAccessory:1];
        v10 = animatedCopy;
      }

      contentView2 = [(CKPinnedConversationCollectionViewCell *)self contentView];
      v12 = MEMORY[0x1E69DD250];
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __66__CKPinnedConversationCollectionViewCell_setEditingMode_animated___block_invoke_6;
      v29[3] = &unk_1E72EB8D0;
      v29[4] = self;
      v13 = contentView2;
      v30 = v13;
      [v12 performWithoutAnimation:v29];
      if (v10)
      {
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = __66__CKPinnedConversationCollectionViewCell_setEditingMode_animated___block_invoke_7;
        v28[3] = &unk_1E72EBA18;
        v28[4] = self;
        [MEMORY[0x1E69DD250] performWithoutAnimation:v28];
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = __66__CKPinnedConversationCollectionViewCell_setEditingMode_animated___block_invoke_8;
        v27[3] = &unk_1E72EBA18;
        v27[4] = self;
        [MEMORY[0x1E69DD250] animateWithDuration:v27 animations:0.3];
      }

      if (!CKIsRunningInMacCatalyst())
      {
        goto LABEL_30;
      }

      goto LABEL_33;
    }
  }

  unpinAccessoryView = [(CKPinnedConversationCollectionViewCell *)self unpinAccessoryView];

  if (unpinAccessoryView)
  {
    [(CKPinnedConversationCollectionViewCell *)self setShowingUnpinAccessory:0];
    if (animatedCopy)
    {
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __66__CKPinnedConversationCollectionViewCell_setEditingMode_animated___block_invoke_9;
      v26[3] = &unk_1E72EBA18;
      v26[4] = self;
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __66__CKPinnedConversationCollectionViewCell_setEditingMode_animated___block_invoke_10;
      v25[3] = &unk_1E72EB9C8;
      v25[4] = self;
      [MEMORY[0x1E69DD250] animateWithDuration:v26 animations:v25 completion:0.3];
    }

    else
    {
      unpinAccessoryView2 = [(CKPinnedConversationCollectionViewCell *)self unpinAccessoryView];
      [unpinAccessoryView2 removeFromSuperview];

      [(CKPinnedConversationCollectionViewCell *)self setUnpinAccessoryView:0];
    }
  }

  if (!CKIsRunningInMacCatalyst())
  {
    if (!mode)
    {
      pinnedConversationView = [(CKPinnedConversationCollectionViewCell *)self pinnedConversationView];
      [pinnedConversationView endSuppressingActivityWithReason:@"EditMode" animated:animatedCopy completion:0];
      goto LABEL_32;
    }

LABEL_30:
    pinnedConversationView = [(CKPinnedConversationCollectionViewCell *)self pinnedConversationView];
    [pinnedConversationView beginSuppressingActivityWithReason:@"EditMode" animated:animatedCopy completion:0];
LABEL_32:
  }

LABEL_33:
  v21 = +[CKUIBehavior sharedBehaviors];
  hidesUnreadIndicatorWhenEditing = [v21 hidesUnreadIndicatorWhenEditing];
  if (mode)
  {
    v23 = hidesUnreadIndicatorWhenEditing;
  }

  else
  {
    v23 = 0;
  }

  pinnedConversationView2 = [(CKPinnedConversationCollectionViewCell *)self pinnedConversationView];
  [pinnedConversationView2 setUnreadIndicatorHidden:v23 animated:animatedCopy];
}

void __66__CKPinnedConversationCollectionViewCell_setEditingMode_animated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _createCheckboxAccessoryIfNecessary];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) checkboxAccessoryView];
  [v2 addSubview:v3];

  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) checkboxAccessoryView];
  [v4 bringSubviewToFront:v5];

  v6 = [*(a1 + 32) checkboxAccessoryView];
  v7 = *(MEMORY[0x1E695EFD0] + 16);
  v9[0] = *MEMORY[0x1E695EFD0];
  v9[1] = v7;
  v9[2] = *(MEMORY[0x1E695EFD0] + 32);
  [v6 setTransform:v9];

  v8 = [*(a1 + 32) checkboxAccessoryView];
  [v8 setAlpha:1.0];
}

void __66__CKPinnedConversationCollectionViewCell_setEditingMode_animated___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) checkboxAccessoryView];
  CGAffineTransformMakeScale(&v4, 0.01, 0.01);
  [v2 setTransform:&v4];

  v3 = [*(a1 + 32) checkboxAccessoryView];
  [v3 setAlpha:0.0];
}

void __66__CKPinnedConversationCollectionViewCell_setEditingMode_animated___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) checkboxAccessoryView];
  v3 = *(MEMORY[0x1E695EFD0] + 16);
  v5[0] = *MEMORY[0x1E695EFD0];
  v5[1] = v3;
  v5[2] = *(MEMORY[0x1E695EFD0] + 32);
  [v2 setTransform:v5];

  v4 = [*(a1 + 32) checkboxAccessoryView];
  [v4 setAlpha:1.0];
}

void __66__CKPinnedConversationCollectionViewCell_setEditingMode_animated___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) checkboxAccessoryView];
  CGAffineTransformMakeScale(&v4, 0.01, 0.01);
  [v2 setTransform:&v4];

  v3 = [*(a1 + 32) checkboxAccessoryView];
  [v3 setAlpha:0.0];
}

uint64_t __66__CKPinnedConversationCollectionViewCell_setEditingMode_animated___block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) checkboxAccessoryView];
  [v2 removeFromSuperview];

  v3 = *(a1 + 32);

  return [v3 setCheckboxAccessoryView:0];
}

void __66__CKPinnedConversationCollectionViewCell_setEditingMode_animated___block_invoke_6(uint64_t a1)
{
  [*(a1 + 32) _createUnpinAccessoryIfNecessary];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) unpinAccessoryView];
  [v2 addSubview:v3];

  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) unpinAccessoryView];
  [v4 bringSubviewToFront:v5];

  v6 = [*(a1 + 32) unpinAccessoryView];
  v7 = *(MEMORY[0x1E695EFD0] + 16);
  v9[0] = *MEMORY[0x1E695EFD0];
  v9[1] = v7;
  v9[2] = *(MEMORY[0x1E695EFD0] + 32);
  [v6 setTransform:v9];

  v8 = [*(a1 + 32) unpinAccessoryView];
  [v8 setAlpha:1.0];
}

void __66__CKPinnedConversationCollectionViewCell_setEditingMode_animated___block_invoke_7(uint64_t a1)
{
  v2 = [*(a1 + 32) unpinAccessoryView];
  CGAffineTransformMakeScale(&v4, 0.01, 0.01);
  [v2 setTransform:&v4];

  v3 = [*(a1 + 32) unpinAccessoryView];
  [v3 setAlpha:0.0];
}

void __66__CKPinnedConversationCollectionViewCell_setEditingMode_animated___block_invoke_8(uint64_t a1)
{
  v2 = [*(a1 + 32) unpinAccessoryView];
  v3 = *(MEMORY[0x1E695EFD0] + 16);
  v5[0] = *MEMORY[0x1E695EFD0];
  v5[1] = v3;
  v5[2] = *(MEMORY[0x1E695EFD0] + 32);
  [v2 setTransform:v5];

  v4 = [*(a1 + 32) unpinAccessoryView];
  [v4 setAlpha:1.0];
}

void __66__CKPinnedConversationCollectionViewCell_setEditingMode_animated___block_invoke_9(uint64_t a1)
{
  v2 = [*(a1 + 32) unpinAccessoryView];
  CGAffineTransformMakeScale(&v4, 0.01, 0.01);
  [v2 setTransform:&v4];

  v3 = [*(a1 + 32) unpinAccessoryView];
  [v3 setAlpha:0.0];
}

uint64_t __66__CKPinnedConversationCollectionViewCell_setEditingMode_animated___block_invoke_10(uint64_t a1)
{
  v2 = [*(a1 + 32) unpinAccessoryView];
  [v2 removeFromSuperview];

  v3 = *(a1 + 32);

  return [v3 setUnpinAccessoryView:0];
}

- (void)setJittering:(BOOL)jittering
{
  jitteringCopy = jittering;
  if ([(CKPinnedConversationCollectionViewCell *)self isJittering]!= jittering)
  {
    layer = [(CKPinnedConversationCollectionViewCell *)self layer];
    if (jitteringCopy)
    {
      _jitterXTranslationAnimation = [objc_opt_class() _jitterXTranslationAnimation];
      [layer addAnimation:_jitterXTranslationAnimation forKey:@"CKJitterXTranslation"];

      _jitterYTranslationAnimation = [objc_opt_class() _jitterYTranslationAnimation];
      [layer addAnimation:_jitterYTranslationAnimation forKey:@"CKJitterYTranslation"];

      _jitterRotationAnimation = [objc_opt_class() _jitterRotationAnimation];
      [layer addAnimation:_jitterRotationAnimation forKey:@"CKJitterRotation"];
    }

    else
    {
      [layer removeAnimationForKey:@"CKJitterXTranslation"];
      [layer removeAnimationForKey:@"CKJitterYTranslation"];
      [layer removeAnimationForKey:@"CKJitterRotation"];
    }
  }
}

- (BOOL)isJittering
{
  layer = [(CKPinnedConversationCollectionViewCell *)self layer];
  v3 = [layer animationForKey:@"CKJitterXTranslation"];
  if (v3)
  {
    v4 = [layer animationForKey:@"CKJitterYTranslation"];
    if (v4)
    {
      v5 = [layer animationForKey:@"CKJitterRotation"];
      v6 = v5 != 0;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)_jitterXTranslationAnimation
{
  v2 = [MEMORY[0x1E6979318] animationWithKeyPath:@"transform.translation.x"];
  [v2 setDuration:0.134];
  [v2 setBeginTime:arc4random_uniform(0x64u) / 100.0];
  [v2 setFromValue:&unk_1F04E8998];
  [v2 setToValue:&unk_1F04E89A8];
  LODWORD(v3) = 1052266988;
  LODWORD(v4) = 1059145646;
  LODWORD(v5) = 1.0;
  v6 = [MEMORY[0x1E69793D0] functionWithControlPoints:v3 :0.0 :v4 :v5];
  [v2 setTimingFunction:v6];

  LODWORD(v7) = 2139095040;
  [v2 setRepeatCount:v7];
  [v2 setAutoreverses:1];
  [v2 setRemovedOnCompletion:0];

  return v2;
}

+ (id)_jitterYTranslationAnimation
{
  v2 = [MEMORY[0x1E6979318] animationWithKeyPath:@"transform.translation.y"];
  [v2 setDuration:0.142];
  [v2 setBeginTime:arc4random_uniform(0x64u) / 100.0];
  [v2 setFromValue:&unk_1F04E8998];
  [v2 setToValue:&unk_1F04E89A8];
  LODWORD(v3) = 1052266988;
  LODWORD(v4) = 1059145646;
  LODWORD(v5) = 1.0;
  v6 = [MEMORY[0x1E69793D0] functionWithControlPoints:v3 :0.0 :v4 :v5];
  [v2 setTimingFunction:v6];

  LODWORD(v7) = 2139095040;
  [v2 setRepeatCount:v7];
  [v2 setAutoreverses:1];
  [v2 setRemovedOnCompletion:0];

  return v2;
}

+ (id)_jitterRotationAnimation
{
  v2 = [MEMORY[0x1E6979318] animationWithKeyPath:@"transform.rotation"];
  [v2 setDuration:0.128];
  [v2 setBeginTime:arc4random_uniform(0x64u) / 100.0];
  [v2 setFromValue:&unk_1F04E89B8];
  [v2 setToValue:&unk_1F04E89C8];
  LODWORD(v3) = 1052266988;
  LODWORD(v4) = 1059145646;
  LODWORD(v5) = 1.0;
  v6 = [MEMORY[0x1E69793D0] functionWithControlPoints:v3 :0.0 :v4 :v5];
  [v2 setTimingFunction:v6];

  LODWORD(v7) = 2139095040;
  [v2 setRepeatCount:v7];
  [v2 setAutoreverses:1];
  [v2 setRemovedOnCompletion:0];

  return v2;
}

- (void)setShowsBackgroundViewWhenSelected:(BOOL)selected
{
  if (self->_showsBackgroundViewWhenSelected != selected)
  {
    self->_showsBackgroundViewWhenSelected = selected;
  }
}

- (void)_updateActivitySupressionForState:(id)state
{
  stateCopy = state;
  if (self->_allowActivitySuppressionWhenSelected && (+[CKUIBehavior sharedBehaviors](CKUIBehavior, "sharedBehaviors"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 suppressPinActivityForState:stateCopy], v4, v5))
  {
    pinnedConversationView = [(CKPinnedConversationCollectionViewCell *)self pinnedConversationView];
    [pinnedConversationView beginSuppressingActivityWithReason:@"CellSelected" animated:1 completion:0];
  }

  else
  {
    pinnedConversationView = [(CKPinnedConversationCollectionViewCell *)self pinnedConversationView];
    [pinnedConversationView endSuppressingActivityWithReason:@"CellSelected" animated:1 completion:0];
  }
}

- (void)dragStateDidChange:(int64_t)change
{
  isPreparingForReuse = [(CKPinnedConversationCollectionViewCell *)self isPreparingForReuse];
  pinnedConversationView = [(CKPinnedConversationCollectionViewCell *)self pinnedConversationView];
  v8 = pinnedConversationView;
  v7 = !isPreparingForReuse;
  if (change == 1)
  {
    [pinnedConversationView beginSuppressingActivityWithReason:@"CellDragState" animated:v7 completion:0];
  }

  else
  {
    if (change == 2)
    {
      [pinnedConversationView beginSuppressingActivityWithReason:@"CellDragState" animated:v7 completion:0];

      [(CKPinnedConversationCollectionViewCell *)self setAlpha:0.0];
      return;
    }

    [pinnedConversationView endSuppressingActivityWithReason:@"CellDragState" animated:v7 completion:0];
  }
}

- (void)layoutSubviews
{
  v41.receiver = self;
  v41.super_class = CKPinnedConversationCollectionViewCell;
  [(CKPinnedConversationCollectionViewCell *)&v41 layoutSubviews];
  contentView = [(CKPinnedConversationCollectionViewCell *)self contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  pinnedConversationView = [(CKPinnedConversationCollectionViewCell *)self pinnedConversationView];
  [pinnedConversationView setFrame:{v5, v7, v9, v11}];

  [(CKPinnedConversationCollectionViewCell *)self unpinAccessoryViewFrame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  unpinAccessoryView = [(CKPinnedConversationCollectionViewCell *)self unpinAccessoryView];
  [unpinAccessoryView setBounds:{0.0, 0.0, v18, v20}];

  unpinAccessoryView2 = [(CKPinnedConversationCollectionViewCell *)self unpinAccessoryView];
  [unpinAccessoryView2 setCenter:{v14 + v18 * 0.5, v16 + v20 * 0.5}];

  [(CKPinnedConversationCollectionViewCell *)self checkboxFrame];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  checkboxAccessoryView = [(CKPinnedConversationCollectionViewCell *)self checkboxAccessoryView];
  [checkboxAccessoryView setBounds:{0.0, 0.0, v28, v30}];

  checkboxAccessoryView2 = [(CKPinnedConversationCollectionViewCell *)self checkboxAccessoryView];
  [checkboxAccessoryView2 setCenter:{v24 + v28 * 0.5, v26 + v30 * 0.5}];

  v33 = +[CKUIBehavior sharedBehaviors];
  [v33 pinnedConversationCheckmarkStrokeRatio];
  v35 = v34;
  checkboxAccessoryView3 = [(CKPinnedConversationCollectionViewCell *)self checkboxAccessoryView];
  [checkboxAccessoryView3 bounds];
  v38 = v35 * v37;
  checkboxAccessoryView4 = [(CKPinnedConversationCollectionViewCell *)self checkboxAccessoryView];
  layer = [checkboxAccessoryView4 layer];
  [layer setBorderWidth:v38];

  [(CKPinnedConversationCollectionViewCell *)self updateCheckboxAccessoryImageForCurrentLayoutStyle];
  [(CKPinnedConversationCollectionViewCell *)self updateUnpinAccessoryImageForCurrentLayoutStyle];
}

- (CGRect)unpinAccessoryViewFrame
{
  pinnedConversationView = [(CKPinnedConversationCollectionViewCell *)self pinnedConversationView];
  layoutStyle = [pinnedConversationView layoutStyle];

  [(CKPinnedConversationCollectionViewCell *)self accessorySizeForLayoutStyle:layoutStyle];
  v6 = v5;
  pinnedConversationView2 = [(CKPinnedConversationCollectionViewCell *)self pinnedConversationView];
  [(CKPinnedConversationCollectionViewCell *)self bounds];
  [pinnedConversationView2 avatarViewFrameForSize:layoutStyle layoutStyle:{v8, v9}];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v23.origin.x = v11;
  v23.origin.y = v13;
  v23.size.width = v15;
  v23.size.height = v17;
  MinX = CGRectGetMinX(v23);
  v24.origin.x = v11;
  v24.origin.y = v13;
  v24.size.width = v15;
  v24.size.height = v17;
  MinY = CGRectGetMinY(v24);
  v20 = MinX;
  v21 = v6;
  v22 = v6;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = MinY;
  result.origin.x = v20;
  return result;
}

- (CGRect)checkboxFrame
{
  pinnedConversationView = [(CKPinnedConversationCollectionViewCell *)self pinnedConversationView];
  layoutStyle = [pinnedConversationView layoutStyle];

  [(CKPinnedConversationCollectionViewCell *)self accessorySizeForLayoutStyle:layoutStyle];
  v6 = v5;
  pinnedConversationView2 = [(CKPinnedConversationCollectionViewCell *)self pinnedConversationView];
  [(CKPinnedConversationCollectionViewCell *)self bounds];
  [pinnedConversationView2 avatarViewFrameForSize:layoutStyle layoutStyle:{v8, v9}];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v28.origin.x = v11;
  v28.origin.y = v13;
  v28.size.width = v15;
  v28.size.height = v17;
  v18 = CGRectGetMaxX(v28) - v6;
  v29.origin.x = v11;
  v29.origin.y = v13;
  v29.size.width = v15;
  v29.size.height = v17;
  v19 = CGRectGetMaxY(v29) - v6;
  checkboxAccessoryView = [(CKPinnedConversationCollectionViewCell *)self checkboxAccessoryView];
  layer = [checkboxAccessoryView layer];
  [layer borderWidth];
  v23 = v18 + v22 * 0.5;

  v24 = v23;
  v25 = v19;
  v26 = v6;
  v27 = v6;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(CKPinnedConversationView *)self->_pinnedConversationView sizeThatFits:fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)prepareForReuse
{
  self->_isPreparingForReuse = 1;
  pinnedConversationView = [(CKPinnedConversationCollectionViewCell *)self pinnedConversationView];
  [pinnedConversationView prepareForReuse];

  v9.receiver = self;
  v9.super_class = CKPinnedConversationCollectionViewCell;
  [(CKPinnedConversationCollectionViewCell *)&v9 prepareForReuse];
  editingMode = [(CKPinnedConversationCollectionViewCell *)self editingMode];
  if ((editingMode == 2) != [(CKPinnedConversationCollectionViewCell *)self isJittering])
  {
    [(CKPinnedConversationCollectionViewCell *)self setJittering:editingMode == 2];
  }

  unpinAccessoryView = [(CKPinnedConversationCollectionViewCell *)self unpinAccessoryView];
  [unpinAccessoryView setHidden:editingMode != 2];

  v6 = [(CKPinnedConversationCollectionViewCell *)self editingMode]!= 1;
  checkboxAccessoryView = [(CKPinnedConversationCollectionViewCell *)self checkboxAccessoryView];
  [checkboxAccessoryView setHidden:v6];

  pinnedConversationView2 = [(CKPinnedConversationCollectionViewCell *)self pinnedConversationView];
  [pinnedConversationView2 setDimmed:0];

  self->_isPreparingForReuse = 0;
}

- (void)unpinButtonTapped:(id)tapped
{
  delegate = [(CKPinnedConversationCollectionViewCell *)self delegate];
  pinnedConversationView = [(CKPinnedConversationCollectionViewCell *)self pinnedConversationView];
  conversation = [pinnedConversationView conversation];
  [delegate unpinButtonTappedForCell:self withConversation:conversation];
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

          [(CKPinnedConversationCollectionViewCell *)self removeInteraction:*(*(&v23 + 1) + 8 * v10++)];
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

          [(CKPinnedConversationCollectionViewCell *)self addInteraction:*(*(&v19 + 1) + 8 * v18++), v19];
        }

        while (v16 != v18);
        v16 = [(NSArray *)v14 countByEnumeratingWithState:&v19 objects:v27 count:16];
      }

      while (v16);
    }
  }
}

- (CKPinnedConversationCollectionViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGRect)cellFrameFromLayoutAttributes
{
  x = self->_cellFrameFromLayoutAttributes.origin.x;
  y = self->_cellFrameFromLayoutAttributes.origin.y;
  width = self->_cellFrameFromLayoutAttributes.size.width;
  height = self->_cellFrameFromLayoutAttributes.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end