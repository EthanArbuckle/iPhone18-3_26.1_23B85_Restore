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
- (CGSize)sizeThatFits:(CGSize)a3;
- (CKPinnedConversationCollectionViewCell)initWithFrame:(CGRect)a3;
- (CKPinnedConversationCollectionViewCellDelegate)delegate;
- (double)accessorySizeForLayoutStyle:(int64_t)a3;
- (id)configurationState;
- (void)_createCheckboxAccessoryIfNecessary;
- (void)_createUnpinAccessoryIfNecessary;
- (void)_updateActivityItemBoundingFrame;
- (void)_updateActivitySupressionForState:(id)a3;
- (void)applyLayoutAttributes:(id)a3;
- (void)dragStateDidChange:(int64_t)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setAllowActivitySuppressionWhenSelected:(BOOL)a3;
- (void)setDelegate:(id)a3;
- (void)setEditingMode:(unint64_t)a3 animated:(BOOL)a4;
- (void)setJittering:(BOOL)a3;
- (void)setLinkInteractions:(id)a3;
- (void)setShowsBackgroundViewWhenSelected:(BOOL)a3;
- (void)unpinButtonTapped:(id)a3;
- (void)updateCheckboxAccessoryImageForCurrentLayoutStyle;
- (void)updateConfigurationUsingState:(id)a3;
- (void)updateUnpinAccessoryImageForCurrentLayoutStyle;
@end

@implementation CKPinnedConversationCollectionViewCell

+ (id)reuseIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (CKPinnedConversationCollectionViewCell)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = CKPinnedConversationCollectionViewCell;
  v3 = [(CKPinnedConversationCollectionViewCell *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [CKPinnedConversationView alloc];
    [(CKPinnedConversationCollectionViewCell *)v3 bounds];
    v5 = [(CKPinnedConversationView *)v4 initWithFrame:?];
    pinnedConversationView = v3->_pinnedConversationView;
    v3->_pinnedConversationView = v5;

    v7 = [(CKPinnedConversationCollectionViewCell *)v3 contentView];
    [v7 addSubview:v3->_pinnedConversationView];

    v3->_editingMode = 0;
  }

  return v3;
}

- (void)applyLayoutAttributes:(id)a3
{
  v13.receiver = self;
  v13.super_class = CKPinnedConversationCollectionViewCell;
  v4 = a3;
  [(CKPinnedConversationCollectionViewCell *)&v13 applyLayoutAttributes:v4];
  [v4 frame];
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

- (void)setDelegate:(id)a3
{
  obj = a3;
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
  v2 = [(CKPinnedConversationCollectionViewCell *)&v5 configurationState];
  v3 = +[CKUIBehavior sharedBehaviors];
  [v3 modifyConversationCellStateForDrop:v2];

  return v2;
}

- (void)updateConfigurationUsingState:(id)a3
{
  v29 = a3;
  v4 = [MEMORY[0x1E69DC6E8] listSidebarCellConfiguration];
  v5 = +[CKUIBehavior sharedBehaviors];
  v6 = [(CKPinnedConversationCollectionViewCell *)self traitCollection];
  if ([v5 useSelectedAppearanceForConversationCellState:v29 traitCollection:v6])
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

  v8 = [MEMORY[0x1E69DC888] clearColor];
  v9 = +[CKUIBehavior sharedBehaviors];
  [v9 modifyConversationCellStateForDrop:v29];

  v10 = [v4 updatedConfigurationForState:v29];

  if (v7 && [(CKPinnedConversationCollectionViewCell *)self showsBackgroundViewWhenSelected])
  {
    v11 = +[CKUIBehavior sharedBehaviors];
    v12 = [v11 theme];
    v13 = [v12 conversationListPinnedCellSelectorViewColor];

    if (v13)
    {
      v14 = +[CKUIBehavior sharedBehaviors];
      v15 = [v14 theme];
      v16 = [v15 conversationListPinnedCellSelectorViewColor];

      v8 = v14;
    }

    else
    {
      v16 = [v10 backgroundColor];
    }

    v17 = 1;
    v8 = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v19 = [v18 conversationPinningTouchdownDimEnabled];

  if (v19)
  {
    v20 = [v29 isHighlighted];
    v21 = [v29 cellDropState] == 2;
    if (![(CKPinnedConversationCollectionViewCell *)self showsBackgroundViewWhenSelected])
    {
      v21 |= v20 | v7;
    }

    v22 = [(CKPinnedConversationCollectionViewCell *)self pinnedConversationView];
    [v22 setDimmed:v21 & 1];
  }

  [v10 setBackgroundColor:v8];
  v23 = +[CKUIBehavior sharedBehaviors];
  [v23 conversationListPinnedCellSelectedBackgroundCornerRadius];
  [v10 setCornerRadius:?];

  [v10 setEdgesAddingLayoutMarginsToBackgroundInsets:0];
  [v10 setBackgroundInsets:{*MEMORY[0x1E69DC5C0], *(MEMORY[0x1E69DC5C0] + 8), *(MEMORY[0x1E69DC5C0] + 16), *(MEMORY[0x1E69DC5C0] + 24)}];
  [(CKPinnedConversationCollectionViewCell *)self _updateActivitySupressionForState:v29];
  v24 = [(CKPinnedConversationCollectionViewCell *)self isSelected];
  v25 = [(CKPinnedConversationCollectionViewCell *)self checkboxAccessoryView];
  [v25 setSelected:v24];

  v26 = [(CKPinnedConversationCollectionViewCell *)self showsBackgroundViewWhenSelected];
  v27 = [(CKPinnedConversationCollectionViewCell *)self pinnedConversationView];
  [v27 setNeedsUnreadIndicatorLeadingEdgePadding:v26];

  v28 = [(CKPinnedConversationCollectionViewCell *)self pinnedConversationView];
  [v28 setIsSelectedWithDarkAppearance:v17];

  [(CKPinnedConversationCollectionViewCell *)self setBackgroundConfiguration:v10];
}

+ (id)unpinAccessoryView
{
  v2 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"minus"];
  v3 = [MEMORY[0x1E69DC730] effectWithStyle:16];
  v4 = [MEMORY[0x1E69DC888] systemWhiteColor];
  v5 = [CKConversationListAccessoryView alloc];
  v6 = +[CKUIBehavior sharedBehaviors];
  [v6 pinnedConversationDefaultAccessorySize];
  v7 = [(CKConversationListAccessoryView *)v5 initWithDiameter:?];

  [(CKConversationListAccessoryView *)v7 setBlurEffect:v3 withVibrancyEffectStyle:2 forState:0];
  [(CKConversationListAccessoryView *)v7 setTintColor:v4 forState:0];
  [(CKConversationListAccessoryView *)v7 setImage:v2 forState:0];

  return v7;
}

+ (id)checkmarkAccessoryView
{
  v2 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"checkmark"];
  v3 = [MEMORY[0x1E69DC888] systemGrayColor];
  v4 = [v3 colorWithAlphaComponent:0.100000001];

  v5 = [MEMORY[0x1E69DC888] systemBlueColor];
  v6 = [MEMORY[0x1E69DC730] effectWithStyle:8];
  v7 = [MEMORY[0x1E69DC888] systemWhiteColor];
  v8 = [CKConversationListAccessoryView alloc];
  v9 = +[CKUIBehavior sharedBehaviors];
  [v9 pinnedConversationDefaultAccessorySize];
  v10 = [(CKConversationListAccessoryView *)v8 initWithDiameter:?];

  [(CKConversationListAccessoryView *)v10 setBlurEffect:v6 forState:0];
  [(CKConversationListAccessoryView *)v10 setBackgroundColor:v4 forState:0];
  [(CKConversationListAccessoryView *)v10 setBackgroundColor:v5 forState:4];
  [(CKConversationListAccessoryView *)v10 setTintColor:v7 forState:4];
  [(CKConversationListAccessoryView *)v10 setImage:v2 forState:4];
  [(CKConversationListAccessoryView *)v10 setUserInteractionEnabled:0];
  v11 = +[CKUIBehavior sharedBehaviors];
  [v11 pinnedConversationCheckmarkStrokeRatio];
  v13 = v12;
  [(CKConversationListAccessoryView *)v10 bounds];
  v15 = v13 * v14;
  v16 = [(CKConversationListAccessoryView *)v10 layer];
  [v16 setBorderWidth:v15];

  v17 = [MEMORY[0x1E69DC888] systemWhiteColor];
  v18 = [v17 CGColor];
  v19 = [(CKConversationListAccessoryView *)v10 layer];
  [v19 setBorderColor:v18];

  v20 = [(CKConversationListAccessoryView *)v10 layer];
  [v20 setMasksToBounds:0];

  v21 = [MEMORY[0x1E69DC888] blackColor];
  v22 = [v21 CGColor];
  v23 = [(CKConversationListAccessoryView *)v10 layer];
  [v23 setShadowColor:v22];

  v24 = [(CKConversationListAccessoryView *)v10 layer];
  LODWORD(v25) = 1025758986;
  [v24 setShadowOpacity:v25];

  v26 = [(CKConversationListAccessoryView *)v10 layer];
  [v26 setShadowRadius:7.0];

  v27 = [(CKConversationListAccessoryView *)v10 layer];
  [v27 setShadowOffset:{0.0, 12.0}];

  return v10;
}

- (double)accessorySizeForLayoutStyle:(int64_t)a3
{
  if (a3 > 6)
  {
    return 0.0;
  }

  if (((1 << a3) & 0x3C) != 0)
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
  v3 = [(CKPinnedConversationCollectionViewCell *)self pinnedConversationView];
  v4 = [v3 layoutStyle];

  if (v4 > 6)
  {
    v6 = 0;
    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:**(&unk_1E72F4AB8 + v4) variant:1024];
    v6 = 1;
  }

  v11 = v5;
  v7 = [MEMORY[0x1E69DCAD8] configurationWithFont:v5 scale:v6];
  v8 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"checkmark"];
  v9 = [v8 imageWithConfiguration:v7];

  v10 = [(CKPinnedConversationCollectionViewCell *)self checkboxAccessoryView];
  [v10 setImage:v9 forState:4];
}

- (void)updateUnpinAccessoryImageForCurrentLayoutStyle
{
  v3 = [(CKPinnedConversationCollectionViewCell *)self pinnedConversationView];
  v4 = [v3 layoutStyle];

  if (v4 > 6)
  {
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v5 = qword_1E72F4AF0[v4];
    v6 = qword_190DD0F98[v4];
    v7 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*v5 variant:1024];
  }

  v12 = v7;
  v8 = [MEMORY[0x1E69DCAD8] configurationWithFont:v7 scale:v6];
  v9 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"minus"];
  v10 = [v9 imageWithConfiguration:v8];

  v11 = [(CKPinnedConversationCollectionViewCell *)self unpinAccessoryView];
  [v11 setImage:v10 forState:0];
}

- (void)_createCheckboxAccessoryIfNecessary
{
  v3 = [(CKPinnedConversationCollectionViewCell *)self checkboxAccessoryView];

  if (!v3)
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
  v3 = [(CKPinnedConversationCollectionViewCell *)self unpinAccessoryView];

  if (!v3)
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

- (void)setAllowActivitySuppressionWhenSelected:(BOOL)a3
{
  if (self->_allowActivitySuppressionWhenSelected != a3)
  {
    self->_allowActivitySuppressionWhenSelected = a3;
    v5 = [(CKPinnedConversationCollectionViewCell *)self configurationState];
    [(CKPinnedConversationCollectionViewCell *)self _updateActivitySupressionForState:v5];
  }
}

- (void)setEditingMode:(unint64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  if (self->_editingMode != a3)
  {
    self->_editingMode = a3;
  }

  if (a3 && (-[CKPinnedConversationCollectionViewCell pinnedConversationView](self, "pinnedConversationView"), v7 = objc_claimAutoreleasedReturnValue(), [v7 setDimmed:0], v7, a3 == 1) && !CKIsRunningInMacCatalyst())
  {
    if ([(CKPinnedConversationCollectionViewCell *)self isShowingCheckboxAccessory])
    {
      v14 = 0;
    }

    else
    {
      [(CKPinnedConversationCollectionViewCell *)self setShowingCheckboxAccessory:1];
      v14 = v4;
    }

    v15 = [(CKPinnedConversationCollectionViewCell *)self contentView];
    v16 = MEMORY[0x1E69DD250];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __66__CKPinnedConversationCollectionViewCell_setEditingMode_animated___block_invoke;
    v35[3] = &unk_1E72EB8D0;
    v35[4] = self;
    v17 = v15;
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
    v8 = [(CKPinnedConversationCollectionViewCell *)self checkboxAccessoryView];

    if (v8)
    {
      [(CKPinnedConversationCollectionViewCell *)self setShowingCheckboxAccessory:0];
      if (v4)
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
        v9 = [(CKPinnedConversationCollectionViewCell *)self checkboxAccessoryView];
        [v9 removeFromSuperview];

        [(CKPinnedConversationCollectionViewCell *)self setCheckboxAccessoryView:0];
      }
    }

    [(CKPinnedConversationCollectionViewCell *)self setJittering:a3 == 2];
    if (a3 == 2)
    {
      if ([(CKPinnedConversationCollectionViewCell *)self isShowingUnpinAccessory])
      {
        v10 = 0;
      }

      else
      {
        [(CKPinnedConversationCollectionViewCell *)self setShowingUnpinAccessory:1];
        v10 = v4;
      }

      v11 = [(CKPinnedConversationCollectionViewCell *)self contentView];
      v12 = MEMORY[0x1E69DD250];
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __66__CKPinnedConversationCollectionViewCell_setEditingMode_animated___block_invoke_6;
      v29[3] = &unk_1E72EB8D0;
      v29[4] = self;
      v13 = v11;
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

  v18 = [(CKPinnedConversationCollectionViewCell *)self unpinAccessoryView];

  if (v18)
  {
    [(CKPinnedConversationCollectionViewCell *)self setShowingUnpinAccessory:0];
    if (v4)
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
      v19 = [(CKPinnedConversationCollectionViewCell *)self unpinAccessoryView];
      [v19 removeFromSuperview];

      [(CKPinnedConversationCollectionViewCell *)self setUnpinAccessoryView:0];
    }
  }

  if (!CKIsRunningInMacCatalyst())
  {
    if (!a3)
    {
      v20 = [(CKPinnedConversationCollectionViewCell *)self pinnedConversationView];
      [v20 endSuppressingActivityWithReason:@"EditMode" animated:v4 completion:0];
      goto LABEL_32;
    }

LABEL_30:
    v20 = [(CKPinnedConversationCollectionViewCell *)self pinnedConversationView];
    [v20 beginSuppressingActivityWithReason:@"EditMode" animated:v4 completion:0];
LABEL_32:
  }

LABEL_33:
  v21 = +[CKUIBehavior sharedBehaviors];
  v22 = [v21 hidesUnreadIndicatorWhenEditing];
  if (a3)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  v24 = [(CKPinnedConversationCollectionViewCell *)self pinnedConversationView];
  [v24 setUnreadIndicatorHidden:v23 animated:v4];
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

- (void)setJittering:(BOOL)a3
{
  v3 = a3;
  if ([(CKPinnedConversationCollectionViewCell *)self isJittering]!= a3)
  {
    v8 = [(CKPinnedConversationCollectionViewCell *)self layer];
    if (v3)
    {
      v5 = [objc_opt_class() _jitterXTranslationAnimation];
      [v8 addAnimation:v5 forKey:@"CKJitterXTranslation"];

      v6 = [objc_opt_class() _jitterYTranslationAnimation];
      [v8 addAnimation:v6 forKey:@"CKJitterYTranslation"];

      v7 = [objc_opt_class() _jitterRotationAnimation];
      [v8 addAnimation:v7 forKey:@"CKJitterRotation"];
    }

    else
    {
      [v8 removeAnimationForKey:@"CKJitterXTranslation"];
      [v8 removeAnimationForKey:@"CKJitterYTranslation"];
      [v8 removeAnimationForKey:@"CKJitterRotation"];
    }
  }
}

- (BOOL)isJittering
{
  v2 = [(CKPinnedConversationCollectionViewCell *)self layer];
  v3 = [v2 animationForKey:@"CKJitterXTranslation"];
  if (v3)
  {
    v4 = [v2 animationForKey:@"CKJitterYTranslation"];
    if (v4)
    {
      v5 = [v2 animationForKey:@"CKJitterRotation"];
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

- (void)setShowsBackgroundViewWhenSelected:(BOOL)a3
{
  if (self->_showsBackgroundViewWhenSelected != a3)
  {
    self->_showsBackgroundViewWhenSelected = a3;
  }
}

- (void)_updateActivitySupressionForState:(id)a3
{
  v7 = a3;
  if (self->_allowActivitySuppressionWhenSelected && (+[CKUIBehavior sharedBehaviors](CKUIBehavior, "sharedBehaviors"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 suppressPinActivityForState:v7], v4, v5))
  {
    v6 = [(CKPinnedConversationCollectionViewCell *)self pinnedConversationView];
    [v6 beginSuppressingActivityWithReason:@"CellSelected" animated:1 completion:0];
  }

  else
  {
    v6 = [(CKPinnedConversationCollectionViewCell *)self pinnedConversationView];
    [v6 endSuppressingActivityWithReason:@"CellSelected" animated:1 completion:0];
  }
}

- (void)dragStateDidChange:(int64_t)a3
{
  v5 = [(CKPinnedConversationCollectionViewCell *)self isPreparingForReuse];
  v6 = [(CKPinnedConversationCollectionViewCell *)self pinnedConversationView];
  v8 = v6;
  v7 = !v5;
  if (a3 == 1)
  {
    [v6 beginSuppressingActivityWithReason:@"CellDragState" animated:v7 completion:0];
  }

  else
  {
    if (a3 == 2)
    {
      [v6 beginSuppressingActivityWithReason:@"CellDragState" animated:v7 completion:0];

      [(CKPinnedConversationCollectionViewCell *)self setAlpha:0.0];
      return;
    }

    [v6 endSuppressingActivityWithReason:@"CellDragState" animated:v7 completion:0];
  }
}

- (void)layoutSubviews
{
  v41.receiver = self;
  v41.super_class = CKPinnedConversationCollectionViewCell;
  [(CKPinnedConversationCollectionViewCell *)&v41 layoutSubviews];
  v3 = [(CKPinnedConversationCollectionViewCell *)self contentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(CKPinnedConversationCollectionViewCell *)self pinnedConversationView];
  [v12 setFrame:{v5, v7, v9, v11}];

  [(CKPinnedConversationCollectionViewCell *)self unpinAccessoryViewFrame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = [(CKPinnedConversationCollectionViewCell *)self unpinAccessoryView];
  [v21 setBounds:{0.0, 0.0, v18, v20}];

  v22 = [(CKPinnedConversationCollectionViewCell *)self unpinAccessoryView];
  [v22 setCenter:{v14 + v18 * 0.5, v16 + v20 * 0.5}];

  [(CKPinnedConversationCollectionViewCell *)self checkboxFrame];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = [(CKPinnedConversationCollectionViewCell *)self checkboxAccessoryView];
  [v31 setBounds:{0.0, 0.0, v28, v30}];

  v32 = [(CKPinnedConversationCollectionViewCell *)self checkboxAccessoryView];
  [v32 setCenter:{v24 + v28 * 0.5, v26 + v30 * 0.5}];

  v33 = +[CKUIBehavior sharedBehaviors];
  [v33 pinnedConversationCheckmarkStrokeRatio];
  v35 = v34;
  v36 = [(CKPinnedConversationCollectionViewCell *)self checkboxAccessoryView];
  [v36 bounds];
  v38 = v35 * v37;
  v39 = [(CKPinnedConversationCollectionViewCell *)self checkboxAccessoryView];
  v40 = [v39 layer];
  [v40 setBorderWidth:v38];

  [(CKPinnedConversationCollectionViewCell *)self updateCheckboxAccessoryImageForCurrentLayoutStyle];
  [(CKPinnedConversationCollectionViewCell *)self updateUnpinAccessoryImageForCurrentLayoutStyle];
}

- (CGRect)unpinAccessoryViewFrame
{
  v3 = [(CKPinnedConversationCollectionViewCell *)self pinnedConversationView];
  v4 = [v3 layoutStyle];

  [(CKPinnedConversationCollectionViewCell *)self accessorySizeForLayoutStyle:v4];
  v6 = v5;
  v7 = [(CKPinnedConversationCollectionViewCell *)self pinnedConversationView];
  [(CKPinnedConversationCollectionViewCell *)self bounds];
  [v7 avatarViewFrameForSize:v4 layoutStyle:{v8, v9}];
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
  v3 = [(CKPinnedConversationCollectionViewCell *)self pinnedConversationView];
  v4 = [v3 layoutStyle];

  [(CKPinnedConversationCollectionViewCell *)self accessorySizeForLayoutStyle:v4];
  v6 = v5;
  v7 = [(CKPinnedConversationCollectionViewCell *)self pinnedConversationView];
  [(CKPinnedConversationCollectionViewCell *)self bounds];
  [v7 avatarViewFrameForSize:v4 layoutStyle:{v8, v9}];
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
  v20 = [(CKPinnedConversationCollectionViewCell *)self checkboxAccessoryView];
  v21 = [v20 layer];
  [v21 borderWidth];
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

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(CKPinnedConversationView *)self->_pinnedConversationView sizeThatFits:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)prepareForReuse
{
  self->_isPreparingForReuse = 1;
  v3 = [(CKPinnedConversationCollectionViewCell *)self pinnedConversationView];
  [v3 prepareForReuse];

  v9.receiver = self;
  v9.super_class = CKPinnedConversationCollectionViewCell;
  [(CKPinnedConversationCollectionViewCell *)&v9 prepareForReuse];
  v4 = [(CKPinnedConversationCollectionViewCell *)self editingMode];
  if ((v4 == 2) != [(CKPinnedConversationCollectionViewCell *)self isJittering])
  {
    [(CKPinnedConversationCollectionViewCell *)self setJittering:v4 == 2];
  }

  v5 = [(CKPinnedConversationCollectionViewCell *)self unpinAccessoryView];
  [v5 setHidden:v4 != 2];

  v6 = [(CKPinnedConversationCollectionViewCell *)self editingMode]!= 1;
  v7 = [(CKPinnedConversationCollectionViewCell *)self checkboxAccessoryView];
  [v7 setHidden:v6];

  v8 = [(CKPinnedConversationCollectionViewCell *)self pinnedConversationView];
  [v8 setDimmed:0];

  self->_isPreparingForReuse = 0;
}

- (void)unpinButtonTapped:(id)a3
{
  v6 = [(CKPinnedConversationCollectionViewCell *)self delegate];
  v4 = [(CKPinnedConversationCollectionViewCell *)self pinnedConversationView];
  v5 = [v4 conversation];
  [v6 unpinButtonTappedForCell:self withConversation:v5];
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

          [(CKPinnedConversationCollectionViewCell *)self removeInteraction:*(*(&v23 + 1) + 8 * v10++)];
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