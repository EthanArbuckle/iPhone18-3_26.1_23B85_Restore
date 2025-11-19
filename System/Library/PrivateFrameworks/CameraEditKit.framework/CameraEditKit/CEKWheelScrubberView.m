@interface CEKWheelScrubberView
- ($F24F406B2B787EFB06265DBA3D28CBD5)gradientInsets;
- (BOOL)_isUsingTransparentGradients;
- (BOOL)isSectioned;
- (CEKWheelScrubberView)initWithFrame:(CGRect)a3;
- (CEKWheelScrubberViewDelegate)delegate;
- (CGPoint)_contentOffsetForItemIndex:(int64_t)a3;
- (CGRect)_centerDotIndicatorFrameForCollectionViewAlignmentRect:(CGRect)a3;
- (CGRect)_centeredCellFrameForCollectionViewAlignmentRect:(CGRect)a3;
- (CGRect)_collectionViewAlignmentRectForBounds:(CGRect)a3;
- (CGRect)centeredThumbnailContentFrame;
- (CGSize)_defaultItemSize;
- (CGSize)thumbnailSize;
- (NSString)selectionText;
- (UIEdgeInsets)thumbnailEdgeInsets;
- (double)_alphaForVisibility:(int64_t)a3;
- (double)_contentOffsetAmountForItemIndex:(int64_t)a3;
- (double)_contentOffsetIgnoringSectionHeaders:(double)a3;
- (double)_defaultItemLength;
- (double)_fractionalItemOffsetForContentOffset:(CGPoint)a3;
- (double)_fractionalItemOffsetForContentOffsetAmount:(double)a3;
- (double)thumbnailCornerRadius;
- (id)cellOverlayAtIndex:(unint64_t)a3;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)newCenterDotIndicatorView;
- (int64_t)_itemIndexUsingHysteresisForScrollingToContentOffset:(CGPoint)a3;
- (int64_t)cellEffect;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (int64_t)layoutDirection;
- (int64_t)layoutOrder;
- (int64_t)numberOfSectionsInCollectionView:(id)a3;
- (unint64_t)_outermostCornerMaskForItemIndex:(int64_t)a3;
- (unint64_t)globalIndexForIndexPath:(id)a3;
- (unint64_t)numberOfSectionsBeforeItemIndex:(unint64_t)a3;
- (unint64_t)totalNumberOfItems;
- (void)_handleTapGestureRecognizer:(id)a3;
- (void)_performFeedback;
- (void)_prepareFeedback;
- (void)_scrollToIndex:(int64_t)a3 animated:(BOOL)a4 shouldOvershoot:(BOOL)a5;
- (void)_scrollViewDidInterruptDecelerating:(id)a3;
- (void)_setDragging:(BOOL)a3;
- (void)_setSelectedIndex:(unint64_t)a3 shouldNotify:(BOOL)a4 shouldSuppressHaptic:(BOOL)a5;
- (void)_setShowTextOverlay:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)_switchToIndex:(int64_t)a3 shouldOvershoot:(BOOL)a4 shouldSuppressHaptic:(BOOL)a5;
- (void)_switchToItemAtIndexOffset:(int64_t)a3 shouldOvershoot:(BOOL)a4;
- (void)_updateCollectionViewForMarkedIndexAnimated:(BOOL)a3;
- (void)_updateCornerMaskForCell:(id)a3 withItemIndex:(int64_t)a4;
- (void)_updateCustomThumbnailAlphaAnimated:(BOOL)a3;
- (void)_updateLayoutForCell:(id)a3;
- (void)_updateLayoutForVisibleCells;
- (void)_updateOverlayVisibilityAnimated:(BOOL)a3;
- (void)_updateSelectionLoupeAlphaAnimated:(BOOL)a3;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)dealloc;
- (void)layoutSubviews;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidEndScrollingAnimation:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)setCellEffect:(int64_t)a3;
- (void)setCornerStyle:(int64_t)a3;
- (void)setCustomCenteredThumbnailOverlayView:(id)a3;
- (void)setCustomThumbailHiddenIndices:(id)a3;
- (void)setCustomThumbnailVisibility:(int64_t)a3 animated:(BOOL)a4;
- (void)setDelegate:(id)a3;
- (void)setDotIndicatorBehavior:(int64_t)a3;
- (void)setDotPlacement:(int64_t)a3;
- (void)setGradientInsets:(id)a3;
- (void)setItemCount:(unint64_t)a3;
- (void)setLayoutDirection:(int64_t)a3;
- (void)setLayoutOrder:(int64_t)a3;
- (void)setMarkedIndex:(unint64_t)a3 animated:(BOOL)a4;
- (void)setOpaqueGradientsWithColor:(id)a3;
- (void)setSelectedIndex:(unint64_t)a3;
- (void)setSelectedThumbnailBorderColor:(id)a3;
- (void)setSelectedThumbnailBorderWidth:(double)a3;
- (void)setSelectionDotCenterTopSpacing:(double)a3;
- (void)setSelectionLoupeVisibility:(int64_t)a3 animated:(BOOL)a4;
- (void)setSelectionText:(id)a3 animated:(BOOL)a4;
- (void)setSuspended:(BOOL)a3;
- (void)setThumbnailEdgeInsets:(UIEdgeInsets)a3;
- (void)setThumbnailSize:(CGSize)a3;
- (void)setThumbnailSpacing:(double)a3;
- (void)setTransparentGradients;
- (void)setUseSelectionLoupeShadow:(BOOL)a3;
- (void)updateCell:(id)a3 forItemAtIndex:(unint64_t)a4;
- (void)updateItems;
@end

@implementation CEKWheelScrubberView

- (CEKWheelScrubberView)initWithFrame:(CGRect)a3
{
  v42.receiver = self;
  v42.super_class = CEKWheelScrubberView;
  v3 = [(CEKWheelScrubberView *)&v42 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    p_thumbnailSize = &v3->_thumbnailSize;
    +[CEKWheelScrubberViewCell defaultContentSize];
    *&p_thumbnailSize->width = v6;
    v4->_thumbnailSize.height = v7;
    +[CEKWheelScrubberViewCell defaultContentInsetWidth];
    v4->_thumbnailSpacing = v8 + v8;
    v4->_selectedThumbnailBorderWidth = 3.0;
    v9 = [MEMORY[0x1E69DC888] whiteColor];
    selectedThumbnailBorderColor = v4->_selectedThumbnailBorderColor;
    v4->_selectedThumbnailBorderColor = v9;

    v4->_dotIndicatorBehavior = 0;
    v4->_dotPlacement = 0;
    v11 = objc_alloc_init(CEKWheelScrubberCollectionViewLayout);
    collectionViewLayout = v4->__collectionViewLayout;
    v4->__collectionViewLayout = v11;

    [(CEKWheelScrubberCollectionViewLayout *)v4->__collectionViewLayout setWheelScrubberDelegate:v4];
    v4->_cornerStyle = 1;
    v4->_desiredThumbnailCornerRadius = 0.0;
    v13 = objc_alloc(MEMORY[0x1E69DC7F0]);
    v14 = *MEMORY[0x1E695F058];
    v15 = *(MEMORY[0x1E695F058] + 8);
    v16 = *(MEMORY[0x1E695F058] + 16);
    v17 = *(MEMORY[0x1E695F058] + 24);
    v18 = [v13 initWithFrame:v4->__collectionViewLayout collectionViewLayout:{*MEMORY[0x1E695F058], v15, v16, v17}];
    collectionView = v4->__collectionView;
    v4->__collectionView = v18;

    [(UICollectionView *)v4->__collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"CEKWheelScrubberViewCellReuseIdentifier"];
    [(UICollectionView *)v4->__collectionView registerClass:objc_opt_class() forSupplementaryViewOfKind:*MEMORY[0x1E69DDC08] withReuseIdentifier:@"CEKWheelScrubberSectionHeaderReuseIdentifier"];
    [(UICollectionView *)v4->__collectionView setShowsHorizontalScrollIndicator:0];
    [(UICollectionView *)v4->__collectionView setShowsVerticalScrollIndicator:0];
    [(UICollectionView *)v4->__collectionView setDataSource:v4];
    [(UICollectionView *)v4->__collectionView setDelegate:v4];
    v20 = v4->__collectionView;
    v21 = [MEMORY[0x1E69DC888] clearColor];
    [(UICollectionView *)v20 setBackgroundColor:v21];

    [(UICollectionView *)v4->__collectionView setAllowsSelection:1];
    [(UICollectionView *)v4->__collectionView setAllowsMultipleSelection:1];
    [(UICollectionView *)v4->__collectionView _setSupportsPointerDragScrolling:1];
    [(UICollectionView *)v4->__collectionView _setHiddenPocketEdges:15];
    [(UICollectionView *)v4->__collectionView setContentInsetAdjustmentBehavior:2];
    v22 = *MEMORY[0x1E69DE3A8] * 0.625 + *MEMORY[0x1E69DE3A0] * 0.375;
    [(UICollectionView *)v4->__collectionView setHorizontalScrollDecelerationFactor:v22];
    [(UICollectionView *)v4->__collectionView setVerticalScrollDecelerationFactor:v22];
    [(CEKWheelScrubberView *)v4 addSubview:v4->__collectionView];
    v23 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v14, v15, v16, v17}];
    selectedItemLoupe = v4->__selectedItemLoupe;
    v4->__selectedItemLoupe = v23;

    v25 = v4->__selectedItemLoupe;
    v26 = [MEMORY[0x1E69DC888] clearColor];
    [(UIView *)v25 setBackgroundColor:v26];

    v27 = [(UIView *)v4->__selectedItemLoupe layer];
    v28 = [(CEKWheelScrubberView *)v4 selectedThumbnailBorderColor];
    [v27 setBorderColor:{objc_msgSend(v28, "CGColor")}];

    v29 = [(UIView *)v4->__selectedItemLoupe layer];
    [(CEKWheelScrubberView *)v4 selectedThumbnailBorderWidth];
    [v29 setBorderWidth:?];

    v30 = [(UIView *)v4->__selectedItemLoupe layer];
    [v30 setCornerRadius:8.0];

    [(UIView *)v4->__selectedItemLoupe setUserInteractionEnabled:0];
    [(CEKWheelScrubberView *)v4 addSubview:v4->__selectedItemLoupe];
    if (v4->_dotIndicatorBehavior == 1)
    {
      v31 = [(CEKWheelScrubberView *)v4 newCenterDotIndicatorView];
      centerDotIndicatorView = v4->__centerDotIndicatorView;
      v4->__centerDotIndicatorView = v31;

      [(CEKWheelScrubberView *)v4 addSubview:v4->__centerDotIndicatorView];
    }

    v33 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v4 action:sel__handleTapGestureRecognizer_];
    tapGestureRecognizer = v4->__tapGestureRecognizer;
    v4->__tapGestureRecognizer = v33;

    [(UICollectionView *)v4->__collectionView addGestureRecognizer:v4->__tapGestureRecognizer];
    v4->_gradientInsets.startInset = 0.0;
    v4->_gradientInsets.endInset = 0.0;
    v35 = [[CEKEdgeGradientView alloc] initWithFrame:v14, v15, v16, v17];
    edgeGradientView = v4->__edgeGradientView;
    v4->__edgeGradientView = v35;

    v37 = [MEMORY[0x1E69DC888] blackColor];
    [(CEKWheelScrubberView *)v4 setOpaqueGradientsWithColor:v37];

    if (CEKHapticsAllowed())
    {
      v38 = objc_alloc_init(CEKSelectionFeedbackGenerator);
      selectionFeedbackGenerator = v4->__selectionFeedbackGenerator;
      v4->__selectionFeedbackGenerator = v38;
    }

    v4->_selectionLoupeVisibility = 0;
    v4->_useSelectionLoupeShadow = 0;
    v4->_customThumbnailVisibility = 0;
    v4->_cellOverlayMode = 0;
    [(CEKWheelScrubberView *)v4 _updateSelectionLoupeAlphaAnimated:0];
    [(CEKWheelScrubberView *)v4 _updateCustomThumbnailAlphaAnimated:0];
    v4->__decelerationTargetIndex = 0x7FFFFFFFFFFFFFFFLL;
    v40 = v4;
  }

  return v4;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CEKWheelScrubberView;
  [(CEKWheelScrubberView *)&v4 dealloc];
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    p_delegateFlags = &self->_delegateFlags;
    p_delegateFlags->respondsToWillBeginDragging = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToWillBeginScrolling = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToDidScroll = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToWillEndScrolling = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToDidEndDragging = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToDidEndScrolling = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToDidTapOnSelectedCellWithFrame = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToDidTapOnSelectedCell = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToNumberOfSections = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToNumberOfItemsInSection = objc_opt_respondsToSelector() & 1;
  }
}

- (void)_setDragging:(BOOL)a3
{
  if (self->_dragging != a3)
  {
    v3 = a3;
    self->_dragging = a3;
    [(CEKWheelScrubberView *)self _updateSelectionLoupeAlphaAnimated:1];
    [(CEKWheelScrubberView *)self _updateCustomThumbnailAlphaAnimated:1];
    if (v3)
    {
      if (!self->_delegateFlags.respondsToWillBeginDragging)
      {
        return;
      }

      v5 = [(CEKWheelScrubberView *)self delegate];
      [v5 wheelScrubberViewWillBeginDragging:self];
    }

    else
    {
      if (!self->_delegateFlags.respondsToDidEndDragging)
      {
        return;
      }

      v5 = [(CEKWheelScrubberView *)self delegate];
      [v5 wheelScrubberViewDidEndDragging:self];
    }
  }
}

- (void)updateItems
{
  v3 = [(CEKWheelScrubberView *)self _collectionView];
  v4 = [v3 numberOfSections];

  if (v4)
  {
    v5 = 0;
    do
    {
      v6 = [(CEKWheelScrubberView *)self _collectionView];
      v7 = [v6 numberOfItemsInSection:v5];

      if (v7)
      {
        for (i = 0; i != v7; ++i)
        {
          v9 = [MEMORY[0x1E696AC88] indexPathForItem:i inSection:v5];
          v10 = [(CEKWheelScrubberView *)self _collectionView];
          v11 = [v10 cellForItemAtIndexPath:v9];

          if (v11)
          {
            [(CEKWheelScrubberView *)self updateCell:v11 forItemAtIndex:[(CEKWheelScrubberView *)self globalIndexForIndexPath:v9]];
          }
        }
      }

      ++v5;
      v12 = [(CEKWheelScrubberView *)self _collectionView];
      v13 = [v12 numberOfSections];
    }

    while (v5 < v13);
  }
}

- (void)setItemCount:(unint64_t)a3
{
  if (self->_itemCount != a3)
  {
    self->_itemCount = a3;
    v5 = [(CEKWheelScrubberView *)self _collectionView];
    [v5 reloadData];

    [(CEKWheelScrubberView *)self _updateCollectionViewForMarkedIndexAnimated:0];
  }
}

- (void)setSelectedIndex:(unint64_t)a3
{
  [(CEKWheelScrubberView *)self _setSelectedIndex:a3 shouldNotify:0 shouldSuppressHaptic:1];

  [(CEKWheelScrubberView *)self _scrollToIndex:a3 animated:0 shouldOvershoot:0];
}

- (void)_setSelectedIndex:(unint64_t)a3 shouldNotify:(BOOL)a4 shouldSuppressHaptic:(BOOL)a5
{
  if (self->_selectedIndex != a3)
  {
    v6 = a4;
    self->_selectedIndex = a3;
    if ([(CEKWheelScrubberView *)self _decelerationTargetIndex]== a3)
    {
      [(CEKWheelScrubberView *)self set_decelerationTargetIndex:0x7FFFFFFFFFFFFFFFLL];
    }

    [(CEKWheelScrubberView *)self _updateSelectionLoupeAlphaAnimated:v6];
    [(CEKWheelScrubberView *)self _updateCustomThumbnailAlphaAnimated:v6];
    [(CEKWheelScrubberView *)self _updateOverlayVisibilityAnimated:v6];
    if (v6)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained wheelScrubberViewDidChangeSelectedIndex:self];

      [(CEKWheelScrubberView *)self sendActionsForControlEvents:4096];
    }

    if (!a5 && [(CEKWheelScrubberView *)self _shouldPerformFeedback])
    {
      [(CEKWheelScrubberView *)self _performFeedback];

      [(CEKWheelScrubberView *)self _prepareFeedback];
    }
  }
}

- (void)setMarkedIndex:(unint64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  if (![(CEKWheelScrubberView *)self dotIndicatorBehavior]&& self->_markedIndex != a3)
  {
    self->_markedIndex = a3;

    [(CEKWheelScrubberView *)self _updateCollectionViewForMarkedIndexAnimated:v4];
  }
}

- (NSString)selectionText
{
  v2 = [(CEKWheelScrubberView *)self _selectedItemTextOverlay];
  v3 = [v2 text];

  return v3;
}

- (void)setSelectionText:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v45[3] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(CEKWheelScrubberView *)self _selectedItemTextOverlay];
  v8 = [v7 text];
  if (v6 | v8 && ([v6 isEqualToString:v8] & 1) == 0)
  {
    v9 = [(CEKWheelScrubberView *)self _selectedItemTextOverlay];

    if (!v9)
    {
      v10 = objc_alloc(MEMORY[0x1E69DCC10]);
      v11 = [v10 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
      selectedItemTextOverlay = self->__selectedItemTextOverlay;
      self->__selectedItemTextOverlay = v11;

      [MEMORY[0x1E69DC888] blackColor];
      v13 = v32 = v4;
      v31 = [v13 colorWithAlphaComponent:0.5];

      v14 = [(UILabel *)self->__selectedItemTextOverlay layer];
      [v14 setBackgroundColor:{objc_msgSend(v31, "CGColor")}];

      v15 = [(UILabel *)self->__selectedItemTextOverlay layer];
      [v15 setCornerRadius:8.0];

      [(UILabel *)self->__selectedItemTextOverlay setUserInteractionEnabled:0];
      [(UILabel *)self->__selectedItemTextOverlay setTextAlignment:1];
      v16 = self->__selectedItemTextOverlay;
      v17 = [MEMORY[0x1E69DC888] systemWhiteColor];
      [(UILabel *)v16 setTextColor:v17];

      self->__showSelectedItemTextOverlay = 0;
      v30 = [MEMORY[0x1E69DB878] systemFontOfSize:*MEMORY[0x1E69DB920] weight:13.0 design:*MEMORY[0x1E69DB978]];
      v29 = [v30 fontDescriptor];
      v19 = *MEMORY[0x1E69DB900];
      v43[0] = *MEMORY[0x1E69DB908];
      v18 = v43[0];
      v43[1] = v19;
      v44[0] = &unk_1F2FDFCE8;
      v44[1] = &unk_1F2FDFD00;
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:v43 count:2];
      v45[0] = v20;
      v41[0] = v18;
      v41[1] = v19;
      v42[0] = &unk_1F2FDFD18;
      v42[1] = &unk_1F2FDFD30;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:v41 count:2];
      v45[1] = v21;
      v39[0] = v18;
      v39[1] = v19;
      v40[0] = &unk_1F2FDFD18;
      v40[1] = &unk_1F2FDFD48;
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:2];
      v45[2] = v22;
      v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:3];

      v37 = *MEMORY[0x1E69DB8B0];
      v38 = v23;
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
      v25 = [v29 fontDescriptorByAddingAttributes:v24];

      v26 = [MEMORY[0x1E69DB878] fontWithDescriptor:v25 size:13.0];

      [(UILabel *)self->__selectedItemTextOverlay setFont:v26];
      v4 = v32;
    }

    v27 = [v7 superview];

    if (v6)
    {
      if (!v27)
      {
        v28 = [(CEKWheelScrubberView *)self _selectedItemLoupe];
        [(CEKWheelScrubberView *)self insertSubview:v7 belowSubview:v28];
      }

      [v7 setText:v6];
      [(CEKWheelScrubberView *)self _setShowTextOverlay:1 animated:v4 completion:0];
    }

    else
    {
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __50__CEKWheelScrubberView_setSelectionText_animated___block_invoke;
      v33[3] = &unk_1E7CC6750;
      v34 = v7;
      v35 = 0;
      v36 = v27 != 0;
      [(CEKWheelScrubberView *)self _setShowTextOverlay:0 animated:v4 completion:v33];
    }
  }
}

uint64_t __50__CEKWheelScrubberView_setSelectionText_animated___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) setText:*(a1 + 40)];
  if (*(a1 + 48) == 1)
  {
    v3 = *(a1 + 32);

    return [v3 removeFromSuperview];
  }

  return result;
}

- (void)_setShowTextOverlay:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v6 = a3;
  v8 = a5;
  if ([(CEKWheelScrubberView *)self _showSelectedItemTextOverlay]== v6)
  {
    if (v8)
    {
      v8[2](v8, 1);
    }
  }

  else
  {
    [(CEKWheelScrubberView *)self set_showSelectedItemTextOverlay:v6];
    v9 = [(CEKWheelScrubberView *)self _selectedItemTextOverlay];
    v10 = 0.0;
    if (v6)
    {
      v11 = 1.0;
    }

    else
    {
      v11 = 0.0;
    }

    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __64__CEKWheelScrubberView__setShowTextOverlay_animated_completion___block_invoke;
    v19 = &unk_1E7CC6660;
    v12 = v9;
    v20 = v12;
    v21 = v11;
    v13 = _Block_copy(&v16);
    v14 = v13;
    if (v5)
    {
      if (v6)
      {
        v15 = 0.0;
      }

      else
      {
        v15 = 1.0;
      }

      if (!v6)
      {
        v10 = 0.33;
      }

      [v12 setAlpha:{v15, v16, v17, v18, v19}];
      [MEMORY[0x1E69DD250] animateWithDuration:0 delay:v14 options:v8 animations:0.33 completion:v10];
    }

    else
    {
      (*(v13 + 2))(v13);
      if (v8)
      {
        v8[2](v8, 1);
      }
    }
  }
}

- (void)setCornerStyle:(int64_t)a3
{
  if (self->_cornerStyle != a3)
  {
    self->_cornerStyle = a3;
    v4 = [(CEKWheelScrubberView *)self _collectionView];
    [v4 reloadData];
  }
}

- (void)setSelectionLoupeVisibility:(int64_t)a3 animated:(BOOL)a4
{
  if (self->_selectionLoupeVisibility != a3)
  {
    self->_selectionLoupeVisibility = a3;
    [(CEKWheelScrubberView *)self _updateSelectionLoupeAlphaAnimated:a4];
  }
}

- (void)setUseSelectionLoupeShadow:(BOOL)a3
{
  v3 = a3;
  self->_useSelectionLoupeShadow = a3;
  v5 = [(UIView *)self->__selectedItemLoupe layer];
  v6 = v5;
  LODWORD(v7) = 1058642330;
  if (!v3)
  {
    *&v7 = 0.0;
  }

  [v5 setShadowOpacity:v7];

  v8 = [(UIView *)self->__selectedItemLoupe layer];
  [v8 setShadowOffset:{0.0, 0.0}];
}

- (void)setCustomCenteredThumbnailOverlayView:(id)a3
{
  v5 = a3;
  customCenteredThumbnailOverlayView = self->_customCenteredThumbnailOverlayView;
  if (customCenteredThumbnailOverlayView != v5)
  {
    v8 = v5;
    v7 = [(UIView *)customCenteredThumbnailOverlayView superview];

    if (v7 == self)
    {
      [(UIView *)self->_customCenteredThumbnailOverlayView removeFromSuperview];
    }

    objc_storeStrong(&self->_customCenteredThumbnailOverlayView, a3);
    [(CEKWheelScrubberView *)self addSubview:v8];
    customCenteredThumbnailOverlayView = [(CEKWheelScrubberView *)self setNeedsLayout];
    v5 = v8;
  }

  MEMORY[0x1EEE66BB8](customCenteredThumbnailOverlayView, v5);
}

- (void)setCustomThumbnailVisibility:(int64_t)a3 animated:(BOOL)a4
{
  if (self->_customThumbnailVisibility != a3)
  {
    self->_customThumbnailVisibility = a3;
    [(CEKWheelScrubberView *)self _updateCustomThumbnailAlphaAnimated:a4];
  }
}

- (void)setCustomThumbailHiddenIndices:(id)a3
{
  v5 = a3;
  customThumbailHiddenIndices = self->_customThumbailHiddenIndices;
  if (customThumbailHiddenIndices != v5)
  {
    v7 = v5;
    customThumbailHiddenIndices = [customThumbailHiddenIndices isEqual:v5];
    v5 = v7;
    if ((customThumbailHiddenIndices & 1) == 0)
    {
      objc_storeStrong(&self->_customThumbailHiddenIndices, a3);
      customThumbailHiddenIndices = [(CEKWheelScrubberView *)self _updateCustomThumbnailAlphaAnimated:0];
      v5 = v7;
    }
  }

  MEMORY[0x1EEE66BB8](customThumbailHiddenIndices, v5);
}

- (void)_updateCollectionViewForMarkedIndexAnimated:(BOOL)a3
{
  v3 = a3;
  if (![(CEKWheelScrubberView *)self dotIndicatorBehavior])
  {
    v5 = [(CEKWheelScrubberView *)self markedIndex];
    v6 = [(CEKWheelScrubberView *)self _collectionView];
    v7 = [v6 indexPathsForSelectedItems];
    v8 = [(CEKWheelScrubberView *)self itemCount];
    if (v5 == 0x7FFFFFFFFFFFFFFFLL || v5 >= v8)
    {
      if (![(CEKWheelScrubberView *)self itemCount])
      {
        v10 = 0;
LABEL_12:
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __68__CEKWheelScrubberView__updateCollectionViewForMarkedIndexAnimated___block_invoke;
        v13[3] = &unk_1E7CC6778;
        v14 = v10;
        v15 = v6;
        v16 = v3;
        v11 = v6;
        v12 = v10;
        [v7 enumerateObjectsUsingBlock:v13];

        return;
      }

      v9 = [(CEKWheelScrubberView *)self defaultIndex];
      if (v9 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v5 = 0;
      }

      else
      {
        v5 = v9;
      }
    }

    v10 = [MEMORY[0x1E696AC88] indexPathForItem:v5 inSection:0];
    if (v10)
    {
      if (([v7 containsObject:v10] & 1) == 0)
      {
        [v6 selectItemAtIndexPath:v10 animated:v3 scrollPosition:0];
      }
    }

    goto LABEL_12;
  }
}

uint64_t __68__CEKWheelScrubberView__updateCollectionViewForMarkedIndexAnimated___block_invoke(uint64_t result, uint64_t a2)
{
  if (*(result + 32) != a2)
  {
    return [*(result + 40) deselectItemAtIndexPath:a2 animated:*(result + 48)];
  }

  return result;
}

- (id)cellOverlayAtIndex:(unint64_t)a3
{
  if (self->_cellOverlayMode == 1)
  {
    v4 = [MEMORY[0x1E696AC88] indexPathForItem:self->_selectedIndex inSection:0];
    v5 = [(CEKWheelScrubberView *)self _collectionView];
    v6 = [v5 cellForItemAtIndexPath:v4];

    v7 = [v6 overlayView];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isSectioned
{
  if (!self->_delegateFlags.respondsToNumberOfSections)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [WeakRetained wheelScrubberViewNumberOfSections:self] > 1;

  return v4;
}

- (unint64_t)totalNumberOfItems
{
  if (![(UICollectionView *)self->__collectionView numberOfSections])
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  do
  {
    v4 += [(UICollectionView *)self->__collectionView numberOfItemsInSection:v3++];
  }

  while (v3 < [(UICollectionView *)self->__collectionView numberOfSections]);
  return v4;
}

- (unint64_t)globalIndexForIndexPath:(id)a3
{
  v4 = a3;
  if ([v4 section])
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v6 += [(UICollectionView *)self->__collectionView numberOfItemsInSection:v5++];
    }

    while (v5 < [v4 section]);
  }

  else
  {
    v6 = 0;
  }

  v7 = [v4 row];

  return v7 + v6;
}

- (void)setTransparentGradients
{
  v3 = [(CEKWheelScrubberView *)self _edgeGradientView];
  [v3 setEdgeGradientStyleMask];
  [(CEKWheelScrubberView *)self setMaskView:v3];
}

- (BOOL)_isUsingTransparentGradients
{
  v2 = [(CEKWheelScrubberView *)self maskView];
  v3 = v2 != 0;

  return v3;
}

- (void)setOpaqueGradientsWithColor:(id)a3
{
  v4 = a3;
  v5 = [(CEKWheelScrubberView *)self _edgeGradientView];
  [v5 setCustomEdgeGradientStyleWithColor:v4];

  [(CEKWheelScrubberView *)self setMaskView:0];
  [(CEKWheelScrubberView *)self addSubview:v5];
}

- (int64_t)layoutOrder
{
  v2 = [(CEKWheelScrubberView *)self _collectionViewLayout];
  v3 = [v2 layoutOrder];

  return v3;
}

- (void)setLayoutOrder:(int64_t)a3
{
  v4 = [(CEKWheelScrubberView *)self _collectionViewLayout];
  [v4 setLayoutOrder:a3];
}

- (int64_t)layoutDirection
{
  v2 = [(CEKWheelScrubberView *)self _collectionViewLayout];
  v3 = [v2 layoutDirection];

  return v3;
}

- (void)setLayoutDirection:(int64_t)a3
{
  v4 = [(CEKWheelScrubberView *)self _collectionViewLayout];
  [v4 setLayoutDirection:a3];
}

- (void)setDotIndicatorBehavior:(int64_t)a3
{
  if (self->_dotIndicatorBehavior != a3)
  {
    self->_dotIndicatorBehavior = a3;
    if (a3 == 1)
    {
      v5 = [(CEKWheelScrubberView *)self newCenterDotIndicatorView];
      centerDotIndicatorView = self->__centerDotIndicatorView;
      self->__centerDotIndicatorView = v5;

      [(CEKWheelScrubberView *)self addSubview:self->__centerDotIndicatorView];
    }

    else
    {
      [(UIView *)self->__centerDotIndicatorView removeFromSuperview];
      v7 = self->__centerDotIndicatorView;
      self->__centerDotIndicatorView = 0;
    }

    [(CEKWheelScrubberView *)self setNeedsLayout];
  }
}

- (id)newCenterDotIndicatorView
{
  v2 = objc_alloc(MEMORY[0x1E69DD250]);
  v3 = [v2 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  +[CEKWheelScrubberUtilities dotIndicatorDiameter];
  v5 = v4;
  v6 = +[CEKWheelScrubberUtilities dotIndicatorBackgroundColor];
  [v3 setBackgroundColor:v6];
  v7 = [v3 layer];
  [v7 setCornerRadius:v5 * 0.5];

  return v3;
}

- (void)setDotPlacement:(int64_t)a3
{
  if (self->_dotPlacement != a3)
  {
    self->_dotPlacement = a3;
    [(CEKWheelScrubberView *)self setNeedsLayout];
  }
}

- (void)_updateLayoutForVisibleCells
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [(CEKWheelScrubberView *)self _collectionView];
  v4 = [v3 visibleCells];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(CEKWheelScrubberView *)self _updateLayoutForCell:*(*(&v10 + 1) + 8 * v9++), v10];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)_updateLayoutForCell:(id)a3
{
  v5 = a3;
  [(CEKWheelScrubberView *)self thumbnailSpacing];
  [v5 setContentInsetWidth:v4 * 0.5];
  [(CEKWheelScrubberView *)self selectionDotCenterTopSpacing];
  [v5 setSelectionDotCenterTopSpacing:?];
  [v5 setDotPlacement:{-[CEKWheelScrubberView dotPlacement](self, "dotPlacement")}];
}

- (void)setSelectedThumbnailBorderWidth:(double)a3
{
  if (self->_selectedThumbnailBorderWidth != a3)
  {
    self->_selectedThumbnailBorderWidth = a3;
    v5 = [(CEKWheelScrubberView *)self _selectedItemLoupe];
    v6 = [v5 layer];
    [v6 setBorderWidth:a3];

    [(CEKWheelScrubberView *)self setNeedsLayout];
  }
}

- (void)setSelectedThumbnailBorderColor:(id)a3
{
  v8 = a3;
  if (([(UIColor *)self->_selectedThumbnailBorderColor isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_selectedThumbnailBorderColor, a3);
    v5 = [v8 CGColor];
    v6 = [(CEKWheelScrubberView *)self _selectedItemLoupe];
    v7 = [v6 layer];
    [v7 setBorderColor:v5];
  }
}

- (void)setThumbnailSize:(CGSize)a3
{
  if (self->_thumbnailSize.width != a3.width || self->_thumbnailSize.height != a3.height)
  {
    self->_thumbnailSize = a3;
    [(CEKWheelScrubberView *)self setNeedsLayout];
    collectionViewLayout = self->__collectionViewLayout;

    [(CEKWheelScrubberCollectionViewLayout *)collectionViewLayout invalidateLayout];
  }
}

- (void)setThumbnailSpacing:(double)a3
{
  if (self->_thumbnailSpacing != a3)
  {
    self->_thumbnailSpacing = a3;
    [(CEKWheelScrubberView *)self setNeedsLayout];
    collectionViewLayout = self->__collectionViewLayout;

    [(CEKWheelScrubberCollectionViewLayout *)collectionViewLayout invalidateLayout];
  }
}

- (void)setThumbnailEdgeInsets:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_thumbnailEdgeInsets.top, v3), vceqq_f64(*&self->_thumbnailEdgeInsets.bottom, v4)))) & 1) == 0)
  {
    self->_thumbnailEdgeInsets = a3;
    [(CEKWheelScrubberView *)self setNeedsLayout];
  }
}

- (double)thumbnailCornerRadius
{
  v3 = [(CEKWheelScrubberView *)self cornerStyle];
  if (v3 == 2)
  {
    [(CEKWheelScrubberView *)self desiredThumbnailCornerRadius];
    if (v6 == 0.0)
    {
      return 8.0;
    }
  }

  else
  {
    result = 0.0;
    if (v3 != 1)
    {
      return result;
    }

    [(CEKWheelScrubberView *)self desiredThumbnailCornerRadius];
    if (v5 == 0.0)
    {
      return 5.0;
    }
  }

  [(CEKWheelScrubberView *)self desiredThumbnailCornerRadius];
  return result;
}

- (void)setGradientInsets:(id)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
  p_gradientInsets = &self->_gradientInsets;
  if (!CEKEdgeInsetsEqualToInsets(a3.var0, a3.var1, self->_gradientInsets.startInset, self->_gradientInsets.endInset))
  {
    p_gradientInsets->startInset = var0;
    p_gradientInsets->endInset = var1;

    [(CEKWheelScrubberView *)self setNeedsLayout];
  }
}

- (void)setSelectionDotCenterTopSpacing:(double)a3
{
  if (self->_selectionDotCenterTopSpacing != a3)
  {
    self->_selectionDotCenterTopSpacing = a3;
    [(CEKWheelScrubberView *)self _updateLayoutForVisibleCells];
  }
}

- (int64_t)cellEffect
{
  v2 = [(CEKWheelScrubberView *)self _collectionViewLayout];
  v3 = [v2 cellEffect];

  return v3;
}

- (void)setCellEffect:(int64_t)a3
{
  v4 = [(CEKWheelScrubberView *)self _collectionViewLayout];
  [v4 setCellEffect:a3];
}

- (CGRect)centeredThumbnailContentFrame
{
  [(CEKWheelScrubberView *)self bounds];
  [(CEKWheelScrubberView *)self _collectionViewAlignmentRectForBounds:?];
  [(CEKWheelScrubberView *)self _centeredCellFrameForCollectionViewAlignmentRect:?];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(CEKWheelScrubberView *)self thumbnailSpacing];
  v12 = v11 * 0.5;
  v13 = v4;
  v14 = v6;
  v15 = v8;
  v16 = v10;

  return CGRectInset(*&v13, v12, v12);
}

- (CGRect)_collectionViewAlignmentRectForBounds:(CGRect)a3
{
  [(CEKWheelScrubberView *)self alignmentRectForFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(CEKWheelScrubberView *)self _defaultItemSize];
  v13 = v12;
  v15 = v14;
  v16 = [(CEKWheelScrubberView *)self _isDirectionHorizontal];
  v29.origin.x = v5;
  v29.origin.y = v7;
  v29.size.width = v9;
  v29.size.height = v11;
  MinX = CGRectGetMinX(v29);
  v18 = v5;
  v19 = v7;
  v20 = v9;
  v21 = v11;
  if (v16)
  {
    MinY = CGRectGetMinY(*&v18);
    v30.origin.x = v5;
    v30.origin.y = v7;
    v30.size.width = v9;
    v30.size.height = v11;
    CGRectGetHeight(v30);
    UIRoundToViewScale();
    v24 = MinY + v23;
  }

  else
  {
    CGRectGetWidth(*&v18);
    UIRoundToViewScale();
    MinX = MinX + v25;
    v31.origin.x = v5;
    v31.origin.y = v7;
    v31.size.width = v9;
    v31.size.height = v11;
    v24 = CGRectGetMinY(v31);
    v15 = v11;
    v9 = v13;
  }

  v26 = MinX;
  v27 = v9;
  v28 = v15;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v24;
  result.origin.x = v26;
  return result;
}

- (CGRect)_centeredCellFrameForCollectionViewAlignmentRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(CEKWheelScrubberView *)self _defaultItemSize];
  v8 = v7;
  v10 = v9;
  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  CGRectGetMidX(v18);
  UIRoundToViewScale();
  v12 = v11;
  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  CGRectGetMidY(v19);
  UIRoundToViewScale();
  v14 = v13;
  v15 = v12;
  v16 = v8;
  v17 = v10;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v14;
  result.origin.x = v15;
  return result;
}

- (CGRect)_centerDotIndicatorFrameForCollectionViewAlignmentRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  +[CEKWheelScrubberUtilities dotIndicatorDiameter];
  v9 = v8;
  v10 = [(CEKWheelScrubberView *)self dotPlacement];
  if (v10 == 2)
  {
    v24.origin.x = x;
    v24.origin.y = y;
    v24.size.width = width;
    v24.size.height = height;
    CGRectGetMaxX(v24);
    [(CEKWheelScrubberView *)self selectedThumbnailBorderWidth];
    [(CEKWheelScrubberView *)self selectionDotCenterTopSpacing];
    UIRoundToViewScale();
    v11 = v15;
    v25.origin.x = x;
    v25.origin.y = y;
    v25.size.width = width;
    v25.size.height = height;
    CGRectGetMidY(v25);
    goto LABEL_7;
  }

  if (v10 == 1)
  {
    v22.origin.x = x;
    v22.origin.y = y;
    v22.size.width = width;
    v22.size.height = height;
    CGRectGetMinX(v22);
    [(CEKWheelScrubberView *)self selectedThumbnailBorderWidth];
    [(CEKWheelScrubberView *)self selectionDotCenterTopSpacing];
    UIRoundToViewScale();
    v11 = v14;
    v23.origin.x = x;
    v23.origin.y = y;
    v23.size.width = width;
    v23.size.height = height;
    CGRectGetMidY(v23);
    goto LABEL_7;
  }

  v11 = 0.0;
  v12 = 0.0;
  if (!v10)
  {
    v20.origin.x = x;
    v20.origin.y = y;
    v20.size.width = width;
    v20.size.height = height;
    CGRectGetMidX(v20);
    UIRoundToViewScale();
    v11 = v13;
    v21.origin.x = x;
    v21.origin.y = y;
    v21.size.width = width;
    v21.size.height = height;
    CGRectGetMinY(v21);
    [(CEKWheelScrubberView *)self selectedThumbnailBorderWidth];
    [(CEKWheelScrubberView *)self selectionDotCenterTopSpacing];
LABEL_7:
    UIRoundToViewScale();
    v12 = v16;
  }

  v17 = v11;
  v18 = v9;
  v19 = v9;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v12;
  result.origin.x = v17;
  return result;
}

- (void)layoutSubviews
{
  v99.receiver = self;
  v99.super_class = CEKWheelScrubberView;
  [(CEKWheelScrubberView *)&v99 layoutSubviews];
  [(CEKWheelScrubberView *)self bounds];
  x = v100.origin.x;
  y = v100.origin.y;
  width = v100.size.width;
  height = v100.size.height;
  if (!CGRectIsEmpty(v100))
  {
    v7 = [(CEKWheelScrubberView *)self _collectionView];
    v8 = [(CEKWheelScrubberView *)self _collectionViewLayout];
    v9 = [(CEKWheelScrubberView *)self _selectedItemLoupe];
    v10 = [(CEKWheelScrubberView *)self _selectedItemTextOverlay];
    [(CEKWheelScrubberView *)self alignmentRectForFrame:x, y, width, height];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v88 = v17;
    [(CEKWheelScrubberView *)self _collectionViewAlignmentRectForBounds:x, y, width, height];
    v94 = v19;
    v95 = v18;
    v92 = v21;
    v93 = v20;
    [(CEKWheelScrubberView *)self _centeredCellFrameForCollectionViewAlignmentRect:?];
    v23 = v22;
    v97 = v25;
    v98 = v24;
    rect = v26;
    selectionDotCenterTopSpacing = self->_selectionDotCenterTopSpacing;
    v89 = v22;
    if ([(CEKWheelScrubberView *)self _isDirectionHorizontal])
    {
      v90 = selectionDotCenterTopSpacing + 5.0;
      v101.origin.x = v23;
      v101.origin.y = v98;
      v101.size.width = v97;
      v101.size.height = rect;
      MinX = CGRectGetMinX(v101);
      v102.origin.x = v12;
      v102.origin.y = v14;
      v102.size.width = v16;
      v102.size.height = v88;
      v28 = MinX - CGRectGetMinX(v102);
      v103.origin.x = v12;
      v103.origin.y = v14;
      v103.size.width = v16;
      v29 = v28;
      v103.size.height = v88;
      v30 = CGRectGetWidth(v103);
      v104.origin.x = v23;
      v104.origin.y = v98;
      v104.size.width = v97;
      v104.size.height = rect;
      v31 = v30 - CGRectGetMaxX(v104);
      v32 = -v90;
      v33 = 19.0;
      v34 = -19.0;
      v35 = 0.0;
      v36 = 0.0;
    }

    else
    {
      v105.origin.x = v23;
      v105.origin.y = v98;
      v105.size.width = v97;
      v105.size.height = rect;
      MinY = CGRectGetMinY(v105);
      v106.origin.x = v12;
      v106.origin.y = v14;
      v106.size.width = v16;
      v106.size.height = v88;
      v90 = MinY - CGRectGetMinY(v106);
      v107.origin.x = v12;
      v107.origin.y = v14;
      v107.size.width = v16;
      v107.size.height = v88;
      v37 = CGRectGetHeight(v107);
      v108.origin.x = v23;
      v108.origin.y = v98;
      v108.size.width = v97;
      v108.size.height = rect;
      v33 = v37 - CGRectGetMaxY(v108);
      v38 = [(CEKWheelScrubberView *)self dotPlacement];
      if (v38 == 1)
      {
        v31 = 19.0;
      }

      else
      {
        v31 = self->_selectionDotCenterTopSpacing + 5.0;
      }

      if (v38 == 1)
      {
        v29 = self->_selectionDotCenterTopSpacing + 5.0;
      }

      else
      {
        v29 = 19.0;
      }

      v35 = -v29;
      v36 = -v31;
      v32 = 0.0;
      v34 = 0.0;
    }

    v39 = v95 + v35;
    v40 = v94 + v32;
    v41 = v93 - (v35 + v36);
    v42 = v92 - (v32 + v34);
    [v7 bounds];
    v44 = v43;
    [v7 setFrame:{v39, v40, v41, v42}];
    [v8 setContentInsets:{v90, v29, v33, v31}];
    v45 = [(CEKWheelScrubberView *)self _edgeGradientView];
    [v45 setFrame:{v39, v40, v41, v42}];

    LODWORD(v45) = [(CEKWheelScrubberView *)self _isDirectionHorizontal];
    v46 = [(CEKWheelScrubberView *)self _edgeGradientView];
    [v46 setGradientDirection:v45 ^ 1];

    v47 = [(CEKWheelScrubberView *)self _edgeGradientView];
    [v47 frame];
    v49 = v48;
    v51 = v50;

    if (v45)
    {
      v51 = v49;
    }

    [(CEKWheelScrubberView *)self gradientInsets];
    v53 = v52;
    [(CEKWheelScrubberView *)self gradientInsets];
    v55 = v54;
    v56 = [(CEKWheelScrubberView *)self _edgeGradientView];
    [v56 setGradientDimensions:{v53, v51 * 0.07, v51 * 0.07, v55}];

    [(CEKWheelScrubberView *)self thumbnailSpacing];
    v58 = v57 * 0.5;
    [(CEKWheelScrubberView *)self selectedThumbnailBorderWidth];
    v60 = v58 - v59;
    [(CEKWheelScrubberView *)self selectedThumbnailBorderWidth];
    v62 = v58 - v61;
    v109.origin.x = v89;
    v109.size.width = v97;
    v109.origin.y = v98;
    v109.size.height = rect;
    v110 = CGRectInset(v109, v60, v62);
    v63 = v110.origin.x;
    v64 = v110.origin.y;
    v65 = v110.size.width;
    v66 = v110.size.height;
    [v9 setFrame:?];
    [v10 setFrame:{v63, v64, v65, v66}];
    v67 = [(CEKWheelScrubberView *)self customCenteredThumbnailOverlayView];

    if (v67)
    {
      [(CEKWheelScrubberView *)self centeredThumbnailContentFrame];
      v69 = v68;
      v71 = v70;
      v73 = v72;
      v75 = v74;
      v76 = [(CEKWheelScrubberView *)self customCenteredThumbnailOverlayView];
      [v76 setFrame:{v69, v71, v73, v75}];
    }

    v77 = [(CEKWheelScrubberView *)self _centerDotIndicatorView];

    if (v77)
    {
      [(CEKWheelScrubberView *)self _centerDotIndicatorFrameForCollectionViewAlignmentRect:v95, v94, v93, v92];
      v79 = v78;
      v81 = v80;
      v83 = v82;
      v85 = v84;
      v86 = [(CEKWheelScrubberView *)self _centerDotIndicatorView];
      [v86 setFrame:{v79, v81, v83, v85}];
    }

    if (v44 <= 0.0)
    {
      [(CEKWheelScrubberView *)self _scrollToIndex:[(CEKWheelScrubberView *)self selectedIndex] animated:0 shouldOvershoot:0];
    }
  }
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v23.receiver = self;
  v23.super_class = CEKWheelScrubberView;
  v7 = [(CEKWheelScrubberView *)&v23 hitTest:a4 withEvent:?];
  v8 = [(CEKWheelScrubberView *)self _edgeGradientView];
  if ([(CEKWheelScrubberView *)self passThroughTouchesInFullyTransparentAreas]&& [(CEKWheelScrubberView *)self _isUsingTransparentGradients])
  {
    [v8 gradientDimensions];
    v10 = v9;
    v12 = v11;
    [(CEKWheelScrubberView *)self convertPoint:v8 toView:x, y];
    v14 = v13;
    v16 = v15;
    [v8 bounds];
    v18 = v17;
    v20 = v19;
    v21 = [v8 gradientDirection];
    if (v21)
    {
      if (v21 == 1 && (v16 <= v10 || v16 >= v20 - v12))
      {
LABEL_10:

        v7 = 0;
      }
    }

    else if (v14 <= v10 || v14 >= v18 - v12)
    {
      goto LABEL_10;
    }
  }

  return v7;
}

- (void)updateCell:(id)a3 forItemAtIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = [(CEKWheelScrubberView *)self delegate];
  [v7 wheelScrubberView:self updateCell:v6 forItemAtIndex:a4];
}

- (int64_t)numberOfSectionsInCollectionView:(id)a3
{
  if (![(CEKWheelScrubberView *)self isSectioned])
  {
    return 1;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = [WeakRetained wheelScrubberViewNumberOfSections:self];

  return v5;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  if ([(CEKWheelScrubberView *)self isSectioned]&& self->_delegateFlags.respondsToNumberOfItemsInSection)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v7 = [WeakRetained wheelScrubberView:self numberOfItemsInSection:a4];

    return v7;
  }

  else
  {

    return [(CEKWheelScrubberView *)self itemCount];
  }
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithReuseIdentifier:@"CEKWheelScrubberViewCellReuseIdentifier" forIndexPath:v6];
  v8 = [(CEKWheelScrubberView *)self globalIndexForIndexPath:v6];

  [(CEKWheelScrubberView *)self updateCell:v7 forItemAtIndex:v8];
  [(CEKWheelScrubberView *)self _updateLayoutForCell:v7];
  [(CEKWheelScrubberView *)self _updateCornerMaskForCell:v7 withItemIndex:v8];

  return v7;
}

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = *MEMORY[0x1E69DDC08];
  if ([a4 isEqualToString:*MEMORY[0x1E69DDC08]])
  {
    v10 = [v7 dequeueReusableSupplementaryViewOfKind:v9 withReuseIdentifier:@"CEKWheelScrubberSectionHeaderReuseIdentifier" forIndexPath:v8];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_updateCornerMaskForCell:(id)a3 withItemIndex:(int64_t)a4
{
  v11 = a3;
  v6 = [(CEKWheelScrubberView *)self cornerStyle];
  if (v6 == 1)
  {
    v7 = [(CEKWheelScrubberView *)self _outermostCornerMaskForItemIndex:a4];
  }

  else if (v6 == 2)
  {
    v7 = 15;
  }

  else
  {
    v7 = 0;
  }

  v8 = [v11 itemView];
  v9 = [v8 layer];

  if (v7)
  {
    [(CEKWheelScrubberView *)self thumbnailCornerRadius];
  }

  else
  {
    v10 = 0.0;
  }

  [v9 setCornerRadius:v10];
  [v9 setMaskedCorners:v7];
}

- (unint64_t)_outermostCornerMaskForItemIndex:(int64_t)a3
{
  v5 = [(CEKWheelScrubberView *)self layoutDirection];
  v6 = v5;
  if (a3)
  {
    v7 = [(CEKWheelScrubberView *)self itemCount]- 1;
    v8 = 12;
    if (!v6)
    {
      v8 = 10;
    }

    if (v7 == a3)
    {
      return v8;
    }

    else
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 3;
  }

  else
  {
    return 5;
  }
}

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v16 = a4;
  v7 = a5;
  if ([(CEKWheelScrubberView *)self cellOverlayMode]== 1)
  {
    v8 = [(CEKWheelScrubberView *)self globalIndexForIndexPath:v7];
    if (v8 == [(CEKWheelScrubberView *)self selectedIndex])
    {
      v9 = v16;
      v10 = [v9 overlayView];
      if (v10)
      {
        v11 = v10;
        v12 = [v9 overlayView];
        [v12 alpha];
        v14 = v13;

        if (v14 == 0.0)
        {
          v15 = [v9 overlayView];
          [v15 setAlpha:1.0];
        }
      }
    }
  }
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  [(CEKWheelScrubberView *)self _prepareFeedback];
  [(CEKWheelScrubberView *)self _setDragging:1];
  if (self->_delegateFlags.respondsToWillBeginScrolling)
  {
    v4 = [(CEKWheelScrubberView *)self delegate];
    [v4 wheelScrubberViewWillBeginScrolling:self];
  }
}

- (void)scrollViewDidScroll:(id)a3
{
  v8 = a3;
  if (self->_delegateFlags.respondsToDidScroll)
  {
    v4 = [(CEKWheelScrubberView *)self delegate];
    [v4 wheelScrubberViewDidScroll:self];
  }

  v5 = [v8 isDragging];
  v6 = [v8 isDecelerating];
  v7 = [v8 isScrollAnimating];
  [v8 contentOffset];
  if (((v5 | v6) & 1) != 0 && (v7 & 1) == 0)
  {
    [(CEKWheelScrubberView *)self _setSelectedIndex:[(CEKWheelScrubberView *)self _itemIndexUsingHysteresisForScrollingToContentOffset:?] shouldNotify:1 shouldSuppressHaptic:0];
  }
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  y = a4.y;
  x = a4.x;
  if ([(CEKWheelScrubberView *)self _isDirectionHorizontal])
  {
    v9 = x;
  }

  else
  {
    v9 = y;
  }

  if (fabs(v9) >= 0.05)
  {
    v10 = [(CEKWheelScrubberView *)self _itemIndexUsingHysteresisForScrollingToContentOffset:a5->x, a5->y];
  }

  else
  {
    v10 = [(CEKWheelScrubberView *)self selectedIndex];
  }

  v11 = v10;
  v12 = [(CEKWheelScrubberView *)self totalNumberOfItems];
  v13 = [(CEKWheelScrubberView *)self _isOrderReverse];
  if ((v11 - v12 + 1) >= 0)
  {
    v14 = v11 - v12 + 1;
  }

  else
  {
    v14 = ~(v11 - v12);
  }

  if (v13)
  {
    v11 = v14;
  }

  [(CEKWheelScrubberView *)self _contentOffsetForItemIndex:v11];
  a5->x = v15;
  a5->y = v16;
  if (v11 != [(CEKWheelScrubberView *)self selectedIndex])
  {
    [(CEKWheelScrubberView *)self set_decelerationTargetIndex:v11];
  }

  if (self->_delegateFlags.respondsToWillEndScrolling)
  {
    v17 = [(CEKWheelScrubberView *)self delegate];
    [v17 wheelScrubberViewWillEndScrolling:self withVelocity:a5 targetContentOffset:{x, y}];
  }
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  if (!a4)
  {
    [(CEKWheelScrubberView *)self set_decelerationTargetIndex:0x7FFFFFFFFFFFFFFFLL];
  }

  [(CEKWheelScrubberView *)self _setDragging:0];
}

- (void)scrollViewDidEndScrollingAnimation:(id)a3
{
  v5 = a3;
  if (self->_delegateFlags.respondsToDidEndScrolling)
  {
    v4 = [(CEKWheelScrubberView *)self delegate];
    [v4 wheelScrubberViewDidEndScrolling:self];
  }

  if (([v5 isDragging] & 1) == 0)
  {
    [(CEKWheelScrubberView *)self _scrollToIndex:[(CEKWheelScrubberView *)self selectedIndex] animated:1 shouldOvershoot:0];
  }
}

- (void)scrollViewDidEndDecelerating:(id)a3
{
  [(CEKWheelScrubberView *)self set_decelerationTargetIndex:0x7FFFFFFFFFFFFFFFLL];
  [(CEKWheelScrubberView *)self _updateSelectionLoupeAlphaAnimated:1];
  [(CEKWheelScrubberView *)self _updateCustomThumbnailAlphaAnimated:1];
  if (self->_delegateFlags.respondsToDidEndScrolling)
  {
    v4 = [(CEKWheelScrubberView *)self delegate];
    [v4 wheelScrubberViewDidEndScrolling:self];
  }
}

- (void)_scrollViewDidInterruptDecelerating:(id)a3
{
  [(CEKWheelScrubberView *)self set_decelerationTargetIndex:0x7FFFFFFFFFFFFFFFLL];
  [(CEKWheelScrubberView *)self _updateSelectionLoupeAlphaAnimated:1];

  [(CEKWheelScrubberView *)self _updateCustomThumbnailAlphaAnimated:1];
}

- (CGSize)_defaultItemSize
{
  [(CEKWheelScrubberView *)self thumbnailSize];
  v4 = v3;
  v6 = v5;
  [(CEKWheelScrubberView *)self thumbnailSpacing];
  v8 = v4 + v7;
  [(CEKWheelScrubberView *)self thumbnailSpacing];
  v10 = v6 + v9;
  v11 = v8;
  result.height = v10;
  result.width = v11;
  return result;
}

- (double)_defaultItemLength
{
  [(CEKWheelScrubberView *)self _defaultItemSize];
  v4 = v3;
  v6 = v5;
  if ([(CEKWheelScrubberView *)self _isDirectionHorizontal])
  {
    return v4;
  }

  else
  {
    return v6;
  }
}

- (CGPoint)_contentOffsetForItemIndex:(int64_t)a3
{
  v4 = *MEMORY[0x1E695EFF8];
  v5 = *(MEMORY[0x1E695EFF8] + 8);
  [(CEKWheelScrubberView *)self _contentOffsetAmountForItemIndex:a3];
  v7 = v6;
  v8 = [(CEKWheelScrubberView *)self _isDirectionHorizontal];
  if (v8)
  {
    v9 = v5;
  }

  else
  {
    v9 = v7;
  }

  if (v8)
  {
    v10 = v7;
  }

  else
  {
    v10 = v4;
  }

  result.y = v9;
  result.x = v10;
  return result;
}

- (double)_contentOffsetAmountForItemIndex:(int64_t)a3
{
  [(CEKWheelScrubberView *)self _defaultItemLength];
  v6 = v5;
  v7 = [(CEKWheelScrubberView *)self numberOfSectionsBeforeItemIndex:a3];
  +[CEKWheelScrubberSectionDividerView dividerViewWidth];
  return v8 * v7 + a3 * v6;
}

- (double)_fractionalItemOffsetForContentOffset:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if ([(CEKWheelScrubberView *)self _isDirectionHorizontal])
  {
    v6 = x;
  }

  else
  {
    v6 = y;
  }

  [(CEKWheelScrubberView *)self _fractionalItemOffsetForContentOffsetAmount:v6];
  return result;
}

- (double)_fractionalItemOffsetForContentOffsetAmount:(double)a3
{
  [(CEKWheelScrubberView *)self _defaultItemLength];
  v6 = v5;
  [(CEKWheelScrubberView *)self _contentOffsetIgnoringSectionHeaders:a3];
  v8 = v7 / v6;
  v9 = ([(CEKWheelScrubberView *)self totalNumberOfItems]- 1);

  return CEKClamp(v8, 0.0, v9);
}

- (unint64_t)numberOfSectionsBeforeItemIndex:(unint64_t)a3
{
  if (![(UICollectionView *)self->__collectionView numberOfSections])
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  while (1)
  {
    v6 += [(UICollectionView *)self->__collectionView numberOfItemsInSection:v5];
    if (v6 > a3)
    {
      break;
    }

    if (++v5 >= [(UICollectionView *)self->__collectionView numberOfSections])
    {
      return 0;
    }
  }

  return v5;
}

- (double)_contentOffsetIgnoringSectionHeaders:(double)a3
{
  [(CEKWheelScrubberView *)self _defaultItemLength];
  v6 = v5;
  +[CEKWheelScrubberSectionDividerView dividerViewWidth];
  v8 = v7;
  if (![(UICollectionView *)self->__collectionView numberOfSections])
  {
    return a3;
  }

  v9 = 0;
  v10 = v6 * -0.5;
  v11 = v8 * 0.5;
  v12 = a3;
  do
  {
    v13 = v10 + v6 * [(UICollectionView *)self->__collectionView numberOfItemsInSection:v9];
    if (v13 > a3)
    {
      break;
    }

    v14 = v11 + v13;
    if (v14 > a3)
    {
      return v12 - (a3 - (v14 - v11));
    }

    v10 = v11 + v14;
    if (v11 + v14 > a3)
    {
      return v12 + v10 - a3;
    }

    v12 = v12 - v8;
    ++v9;
  }

  while (v9 < [(UICollectionView *)self->__collectionView numberOfSections]);
  return v12;
}

- (int64_t)_itemIndexUsingHysteresisForScrollingToContentOffset:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(CEKWheelScrubberView *)self selectedIndex];
  [(CEKWheelScrubberView *)self _fractionalItemOffsetForContentOffset:x, y];
  v8 = [(CEKWheelScrubberView *)self _nominalItemIndexForFractionalItemOffset:v7 + dbl_1B7EDA480[v7 > v6]];
  v9 = [(CEKWheelScrubberView *)self totalNumberOfItems];
  if (![(CEKWheelScrubberView *)self _isOrderReverse])
  {
    return v8;
  }

  if ((v8 - v9 + 1) >= 0)
  {
    return v8 - v9 + 1;
  }

  return ~(v8 - v9);
}

- (void)_handleTapGestureRecognizer:(id)a3
{
  v28 = a3;
  if ([v28 state] == 3)
  {
    v4 = [(CEKWheelScrubberView *)self _collectionView];
    [v28 locationInView:v4];
    v5 = [v4 indexPathForItemAtPoint:?];
    if (v5)
    {
      v6 = [(CEKWheelScrubberView *)self globalIndexForIndexPath:v5];
      if (v6 == [(CEKWheelScrubberView *)self selectedIndex])
      {
        if (self->_delegateFlags.respondsToDidTapOnSelectedCell || self->_delegateFlags.respondsToDidTapOnSelectedCellWithFrame)
        {
          v7 = [(CEKWheelScrubberView *)self _collectionView];
          v8 = [v7 layoutAttributesForItemAtIndexPath:v5];

          [(CEKWheelScrubberView *)self thumbnailSpacing];
          v10 = v9 * 0.5;
          [v8 frame];
          v31 = CGRectInset(v30, v10, v10);
          x = v31.origin.x;
          y = v31.origin.y;
          width = v31.size.width;
          height = v31.size.height;
          v15 = [(CEKWheelScrubberView *)self _collectionView];
          [v15 convertRect:self toView:{x, y, width, height}];
          v17 = v16;
          v19 = v18;
          v21 = v20;
          v23 = v22;

          if (self->_delegateFlags.respondsToDidTapOnSelectedCellWithFrame)
          {
            v24 = [(CEKWheelScrubberView *)self delegate];
            [v24 wheelScrubberView:self didTapOnSelectedCellWithFrame:{v17, v19, v21, v23}];
          }

          if (self->_delegateFlags.respondsToDidTapOnSelectedCell)
          {
            v25 = [(CEKWheelScrubberView *)self _collectionView];
            v26 = [v25 cellForItemAtIndexPath:v5];

            v27 = [(CEKWheelScrubberView *)self delegate];
            [v27 wheelScrubberView:self didTapOnSelectedCell:v26 withFrame:{v17, v19, v21, v23}];
          }
        }
      }

      else
      {
        [(CEKWheelScrubberView *)self _switchToIndex:v6 shouldOvershoot:0 shouldSuppressHaptic:1];
      }
    }
  }
}

- (void)_switchToIndex:(int64_t)a3 shouldOvershoot:(BOOL)a4 shouldSuppressHaptic:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  [(CEKWheelScrubberView *)self _prepareFeedback];
  [(CEKWheelScrubberView *)self _setSelectedIndex:a3 shouldNotify:1 shouldSuppressHaptic:v5];

  [(CEKWheelScrubberView *)self _scrollToIndex:a3 animated:1 shouldOvershoot:v6];
}

- (void)_scrollToIndex:(int64_t)a3 animated:(BOOL)a4 shouldOvershoot:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v29 = [(CEKWheelScrubberView *)self _collectionView];
  v9 = [(CEKWheelScrubberView *)self _collectionViewLayout];
  v10 = [v9 layoutOrder];

  v11 = [(CEKWheelScrubberView *)self totalNumberOfItems];
  if ((a3 - v11 + 1) >= 0)
  {
    v12 = a3 - v11 + 1;
  }

  else
  {
    v12 = ~(a3 - v11);
  }

  if (v10 == 1)
  {
    v13 = v12;
  }

  else
  {
    v13 = a3;
  }

  [(CEKWheelScrubberView *)self _contentOffsetForItemIndex:v13];
  v15 = v14;
  v17 = v16;
  if (v6 && v5)
  {
    [v29 contentOffset];
    v19 = v18;
    v21 = v20;
    [(CEKWheelScrubberView *)self _defaultItemLength];
    v23 = v22;
    v24 = v22 * 0.14;
    if ([(CEKWheelScrubberView *)self _isDirectionHorizontal])
    {
      if (v15 <= v19 + v23)
      {
        if (v15 < v19 - v23)
        {
          v15 = v15 - v24;
        }
      }

      else
      {
        v15 = v15 + v24;
      }
    }

    else if (v17 <= v21 + v23)
    {
      if (v17 < v21 - v23)
      {
        v17 = v17 - v24;
      }
    }

    else
    {
      v17 = v17 + v24;
    }
  }

  v25 = [(CEKWheelScrubberView *)self _isDirectionHorizontal];
  [v29 contentOffset];
  if (v25)
  {
    if (v26 == v15)
    {
      goto LABEL_27;
    }

    [v29 setContentOffset:v6 animated:{v15, v17}];
    if (!v6 || !self->_delegateFlags.respondsToWillBeginScrolling)
    {
      goto LABEL_27;
    }

LABEL_26:
    v28 = [(CEKWheelScrubberView *)self delegate];
    [v28 wheelScrubberViewWillBeginScrolling:self];

    goto LABEL_27;
  }

  if (v27 != v17)
  {
    [v29 setContentOffset:v6 animated:{v15, v17}];
    if (v6 && self->_delegateFlags.respondsToWillBeginScrolling)
    {
      goto LABEL_26;
    }
  }

LABEL_27:
}

- (void)setSuspended:(BOOL)a3
{
  if (self->_suspended != a3)
  {
    v27 = v3;
    v28 = v4;
    v5 = a3;
    self->_suspended = a3;
    v7 = [(CEKWheelScrubberView *)self _collectionView];
    if (v5)
    {
      [(CEKWheelScrubberView *)self setSelectedIndex:[(CEKWheelScrubberView *)self selectedIndex]];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __37__CEKWheelScrubberView_setSuspended___block_invoke;
      block[3] = &unk_1E7CC6688;
      block[4] = self;
      v26 = v7;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }

    else
    {
      v8 = [(CEKWheelScrubberView *)self _collectionViewSnapshot];
      [(CEKWheelScrubberView *)self _setCollectionViewSnapshot:0];
      v9 = [(CEKWheelScrubberView *)self _collectionView];
      [v9 setHidden:0];

      if (v8)
      {
        [v7 setUserInteractionEnabled:0];
        [MEMORY[0x1E6979518] begin];
        v10 = MEMORY[0x1E6979518];
        v19 = MEMORY[0x1E69E9820];
        v20 = 3221225472;
        v21 = __37__CEKWheelScrubberView_setSuspended___block_invoke_2;
        v22 = &unk_1E7CC6688;
        v11 = v8;
        v23 = v11;
        v24 = v7;
        [v10 setCompletionBlock:&v19];
        v12 = [MEMORY[0x1E6979318] animationWithKeyPath:{@"opacity", v19, v20, v21, v22}];
        LODWORD(v13) = 1.0;
        LODWORD(v14) = 1.0;
        LODWORD(v15) = 1.0;
        v16 = [MEMORY[0x1E69793D0] functionWithControlPoints:v13 :0.0 :v14 :v15];
        [v12 setTimingFunction:v16];

        [v12 setDuration:0.33];
        [v12 setFromValue:&unk_1F2FDFD60];
        [v12 setToValue:&unk_1F2FDFD00];
        v17 = [v11 layer];
        [v17 addAnimation:v12 forKey:@"fadeOutAnimation"];

        v18 = [v11 layer];
        [v18 setOpacity:0.0];

        [MEMORY[0x1E6979518] commit];
      }
    }
  }
}

void __37__CEKWheelScrubberView_setSuspended___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isSuspended])
  {
    v4 = [*(a1 + 40) snapshotView];
    [*(a1 + 40) frame];
    [v4 setFrame:?];
    [*(a1 + 32) insertSubview:v4 aboveSubview:*(a1 + 40)];
    v2 = [*(a1 + 32) _collectionViewSnapshot];
    [v2 removeFromSuperview];

    [*(a1 + 32) _setCollectionViewSnapshot:v4];
    v3 = [*(a1 + 32) _collectionView];
    [v3 setHidden:1];
  }
}

uint64_t __37__CEKWheelScrubberView_setSuspended___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  v2 = *(a1 + 40);

  return [v2 setUserInteractionEnabled:1];
}

- (void)_switchToItemAtIndexOffset:(int64_t)a3 shouldOvershoot:(BOOL)a4
{
  v6 = [(CEKWheelScrubberView *)self totalNumberOfItems];
  v7 = [(CEKWheelScrubberView *)self selectedIndex]+ a3;
  if (v7 >= 0 && v7 < v6)
  {

    [CEKWheelScrubberView _switchToIndex:"_switchToIndex:shouldOvershoot:shouldSuppressHaptic:" shouldOvershoot:? shouldSuppressHaptic:?];
  }
}

- (void)_prepareFeedback
{
  if ([(CEKWheelScrubberView *)self _shouldPerformFeedback])
  {
    selectionFeedbackGenerator = self->__selectionFeedbackGenerator;

    [(CEKSelectionFeedbackGenerator *)selectionFeedbackGenerator prepareFeedback];
  }
}

- (void)_performFeedback
{
  if ([(CEKWheelScrubberView *)self _shouldPerformFeedback])
  {
    selectionFeedbackGenerator = self->__selectionFeedbackGenerator;

    [(CEKSelectionFeedbackGenerator *)selectionFeedbackGenerator performFeedback];
  }
}

- (double)_alphaForVisibility:(int64_t)a3
{
  if (a3 == 3)
  {
    v4 = ![(CEKWheelScrubberView *)self isDragging];
    result = 1.0;
LABEL_8:
    if (!v4)
    {
      return 0.0;
    }

    return result;
  }

  if (a3 != 2)
  {
    result = 1.0;
    v4 = a3 == 0;
    goto LABEL_8;
  }

  v5 = [(CEKWheelScrubberView *)self isDragging];
  result = 0.0;
  if (v5)
  {
    return 1.0;
  }

  return result;
}

- (void)_updateSelectionLoupeAlphaAnimated:(BOOL)a3
{
  if ([(CEKWheelScrubberView *)self _decelerationTargetIndex]== 0x7FFFFFFFFFFFFFFFLL || (v5 = 1.0, [(CEKWheelScrubberView *)self selectionLoupeVisibility]!= 2))
  {
    [(CEKWheelScrubberView *)self _alphaForVisibility:[(CEKWheelScrubberView *)self selectionLoupeVisibility]];
    v5 = v6;
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __59__CEKWheelScrubberView__updateSelectionLoupeAlphaAnimated___block_invoke;
  v10[3] = &unk_1E7CC6660;
  v10[4] = self;
  *&v10[5] = v5;
  v7 = _Block_copy(v10);
  v8 = v7;
  if (a3)
  {
    v9 = 0.5;
    if (v5 > 0.0)
    {
      v9 = 0.25;
    }

    [MEMORY[0x1E69DD250] animateWithDuration:(v5 <= 0.0) << 17 delay:v7 options:0 animations:v9 completion:0.0];
  }

  else
  {
    (*(v7 + 2))(v7);
  }
}

void __59__CEKWheelScrubberView__updateSelectionLoupeAlphaAnimated___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) _selectedItemLoupe];
  [v2 setAlpha:v1];
}

- (void)_updateCustomThumbnailAlphaAnimated:(BOOL)a3
{
  v5 = [(CEKWheelScrubberView *)self customThumbailHiddenIndices];
  v6 = [v5 containsIndex:{-[CEKWheelScrubberView selectedIndex](self, "selectedIndex")}];

  v7 = 0;
  if ((v6 & 1) == 0 && ([(CEKWheelScrubberView *)self _decelerationTargetIndex]== 0x7FFFFFFFFFFFFFFFLL || [(CEKWheelScrubberView *)self customThumbnailVisibility]!= 3))
  {
    [(CEKWheelScrubberView *)self _alphaForVisibility:[(CEKWheelScrubberView *)self customThumbnailVisibility]];
    v7 = v8;
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __60__CEKWheelScrubberView__updateCustomThumbnailAlphaAnimated___block_invoke;
  v11[3] = &unk_1E7CC6660;
  v11[4] = self;
  v11[5] = v7;
  v9 = _Block_copy(v11);
  v10 = v9;
  if (a3)
  {
    [MEMORY[0x1E69DD250] animateWithDuration:v9 animations:0.25];
  }

  else
  {
    (*(v9 + 2))(v9);
  }
}

void __60__CEKWheelScrubberView__updateCustomThumbnailAlphaAnimated___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) customCenteredThumbnailOverlayView];
  [v2 setAlpha:v1];
}

- (void)_updateOverlayVisibilityAnimated:(BOOL)a3
{
  v3 = a3;
  if ([(CEKWheelScrubberView *)self cellOverlayMode]== 1)
  {
    if (v3)
    {
      v5 = 0.25;
    }

    else
    {
      v5 = 0.0;
    }

    v6 = [(CEKWheelScrubberView *)self _collectionView];
    v7 = [v6 indexPathsForVisibleItems];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __57__CEKWheelScrubberView__updateOverlayVisibilityAnimated___block_invoke;
    v8[3] = &unk_1E7CC67A0;
    v8[4] = self;
    *&v8[5] = v5;
    [v7 enumerateObjectsUsingBlock:v8];
  }
}

void __57__CEKWheelScrubberView__updateOverlayVisibilityAnimated___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 _collectionView];
  v6 = [v5 cellForItemAtIndexPath:v4];

  v7 = [*(a1 + 32) globalIndexForIndexPath:v4];
  if (v7 == [*(a1 + 32) selectedIndex])
  {
    v8 = MEMORY[0x1E69DD250];
    v9 = *(a1 + 40);
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __57__CEKWheelScrubberView__updateOverlayVisibilityAnimated___block_invoke_2;
    v23 = &unk_1E7CC6358;
    v10 = &v24;
    v24 = v6;
    v11 = &v20;
LABEL_5:
    [v8 animateWithDuration:v11 animations:{v9, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24}];

    goto LABEL_6;
  }

  v12 = [v6 overlayView];
  [v12 alpha];
  v14 = v13;

  if (v14 > 0.0)
  {
    v8 = MEMORY[0x1E69DD250];
    v9 = *(a1 + 40);
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __57__CEKWheelScrubberView__updateOverlayVisibilityAnimated___block_invoke_3;
    v18 = &unk_1E7CC6358;
    v10 = &v19;
    v19 = v6;
    v11 = &v15;
    goto LABEL_5;
  }

LABEL_6:
}

void __57__CEKWheelScrubberView__updateOverlayVisibilityAnimated___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) overlayView];
  [v1 setAlpha:1.0];
}

void __57__CEKWheelScrubberView__updateOverlayVisibilityAnimated___block_invoke_3(uint64_t a1)
{
  v1 = [*(a1 + 32) overlayView];
  [v1 setAlpha:0.0];
}

- (CEKWheelScrubberViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGSize)thumbnailSize
{
  width = self->_thumbnailSize.width;
  height = self->_thumbnailSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIEdgeInsets)thumbnailEdgeInsets
{
  top = self->_thumbnailEdgeInsets.top;
  left = self->_thumbnailEdgeInsets.left;
  bottom = self->_thumbnailEdgeInsets.bottom;
  right = self->_thumbnailEdgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)gradientInsets
{
  startInset = self->_gradientInsets.startInset;
  endInset = self->_gradientInsets.endInset;
  result.var1 = endInset;
  result.var0 = startInset;
  return result;
}

@end