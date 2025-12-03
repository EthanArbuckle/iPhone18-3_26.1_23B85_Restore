@interface CEKWheelScrubberView
- ($F24F406B2B787EFB06265DBA3D28CBD5)gradientInsets;
- (BOOL)_isUsingTransparentGradients;
- (BOOL)isSectioned;
- (CEKWheelScrubberView)initWithFrame:(CGRect)frame;
- (CEKWheelScrubberViewDelegate)delegate;
- (CGPoint)_contentOffsetForItemIndex:(int64_t)index;
- (CGRect)_centerDotIndicatorFrameForCollectionViewAlignmentRect:(CGRect)rect;
- (CGRect)_centeredCellFrameForCollectionViewAlignmentRect:(CGRect)rect;
- (CGRect)_collectionViewAlignmentRectForBounds:(CGRect)bounds;
- (CGRect)centeredThumbnailContentFrame;
- (CGSize)_defaultItemSize;
- (CGSize)thumbnailSize;
- (NSString)selectionText;
- (UIEdgeInsets)thumbnailEdgeInsets;
- (double)_alphaForVisibility:(int64_t)visibility;
- (double)_contentOffsetAmountForItemIndex:(int64_t)index;
- (double)_contentOffsetIgnoringSectionHeaders:(double)headers;
- (double)_defaultItemLength;
- (double)_fractionalItemOffsetForContentOffset:(CGPoint)offset;
- (double)_fractionalItemOffsetForContentOffsetAmount:(double)amount;
- (double)thumbnailCornerRadius;
- (id)cellOverlayAtIndex:(unint64_t)index;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)newCenterDotIndicatorView;
- (int64_t)_itemIndexUsingHysteresisForScrollingToContentOffset:(CGPoint)offset;
- (int64_t)cellEffect;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (int64_t)layoutDirection;
- (int64_t)layoutOrder;
- (int64_t)numberOfSectionsInCollectionView:(id)view;
- (unint64_t)_outermostCornerMaskForItemIndex:(int64_t)index;
- (unint64_t)globalIndexForIndexPath:(id)path;
- (unint64_t)numberOfSectionsBeforeItemIndex:(unint64_t)index;
- (unint64_t)totalNumberOfItems;
- (void)_handleTapGestureRecognizer:(id)recognizer;
- (void)_performFeedback;
- (void)_prepareFeedback;
- (void)_scrollToIndex:(int64_t)index animated:(BOOL)animated shouldOvershoot:(BOOL)overshoot;
- (void)_scrollViewDidInterruptDecelerating:(id)decelerating;
- (void)_setDragging:(BOOL)dragging;
- (void)_setSelectedIndex:(unint64_t)index shouldNotify:(BOOL)notify shouldSuppressHaptic:(BOOL)haptic;
- (void)_setShowTextOverlay:(BOOL)overlay animated:(BOOL)animated completion:(id)completion;
- (void)_switchToIndex:(int64_t)index shouldOvershoot:(BOOL)overshoot shouldSuppressHaptic:(BOOL)haptic;
- (void)_switchToItemAtIndexOffset:(int64_t)offset shouldOvershoot:(BOOL)overshoot;
- (void)_updateCollectionViewForMarkedIndexAnimated:(BOOL)animated;
- (void)_updateCornerMaskForCell:(id)cell withItemIndex:(int64_t)index;
- (void)_updateCustomThumbnailAlphaAnimated:(BOOL)animated;
- (void)_updateLayoutForCell:(id)cell;
- (void)_updateLayoutForVisibleCells;
- (void)_updateOverlayVisibilityAnimated:(BOOL)animated;
- (void)_updateSelectionLoupeAlphaAnimated:(BOOL)animated;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)dealloc;
- (void)layoutSubviews;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidEndScrollingAnimation:(id)animation;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)setCellEffect:(int64_t)effect;
- (void)setCornerStyle:(int64_t)style;
- (void)setCustomCenteredThumbnailOverlayView:(id)view;
- (void)setCustomThumbailHiddenIndices:(id)indices;
- (void)setCustomThumbnailVisibility:(int64_t)visibility animated:(BOOL)animated;
- (void)setDelegate:(id)delegate;
- (void)setDotIndicatorBehavior:(int64_t)behavior;
- (void)setDotPlacement:(int64_t)placement;
- (void)setGradientInsets:(id)insets;
- (void)setItemCount:(unint64_t)count;
- (void)setLayoutDirection:(int64_t)direction;
- (void)setLayoutOrder:(int64_t)order;
- (void)setMarkedIndex:(unint64_t)index animated:(BOOL)animated;
- (void)setOpaqueGradientsWithColor:(id)color;
- (void)setSelectedIndex:(unint64_t)index;
- (void)setSelectedThumbnailBorderColor:(id)color;
- (void)setSelectedThumbnailBorderWidth:(double)width;
- (void)setSelectionDotCenterTopSpacing:(double)spacing;
- (void)setSelectionLoupeVisibility:(int64_t)visibility animated:(BOOL)animated;
- (void)setSelectionText:(id)text animated:(BOOL)animated;
- (void)setSuspended:(BOOL)suspended;
- (void)setThumbnailEdgeInsets:(UIEdgeInsets)insets;
- (void)setThumbnailSize:(CGSize)size;
- (void)setThumbnailSpacing:(double)spacing;
- (void)setTransparentGradients;
- (void)setUseSelectionLoupeShadow:(BOOL)shadow;
- (void)updateCell:(id)cell forItemAtIndex:(unint64_t)index;
- (void)updateItems;
@end

@implementation CEKWheelScrubberView

- (CEKWheelScrubberView)initWithFrame:(CGRect)frame
{
  v42.receiver = self;
  v42.super_class = CEKWheelScrubberView;
  v3 = [(CEKWheelScrubberView *)&v42 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    selectedThumbnailBorderColor = v4->_selectedThumbnailBorderColor;
    v4->_selectedThumbnailBorderColor = whiteColor;

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
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(UICollectionView *)v20 setBackgroundColor:clearColor];

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
    clearColor2 = [MEMORY[0x1E69DC888] clearColor];
    [(UIView *)v25 setBackgroundColor:clearColor2];

    layer = [(UIView *)v4->__selectedItemLoupe layer];
    selectedThumbnailBorderColor = [(CEKWheelScrubberView *)v4 selectedThumbnailBorderColor];
    [layer setBorderColor:{objc_msgSend(selectedThumbnailBorderColor, "CGColor")}];

    layer2 = [(UIView *)v4->__selectedItemLoupe layer];
    [(CEKWheelScrubberView *)v4 selectedThumbnailBorderWidth];
    [layer2 setBorderWidth:?];

    layer3 = [(UIView *)v4->__selectedItemLoupe layer];
    [layer3 setCornerRadius:8.0];

    [(UIView *)v4->__selectedItemLoupe setUserInteractionEnabled:0];
    [(CEKWheelScrubberView *)v4 addSubview:v4->__selectedItemLoupe];
    if (v4->_dotIndicatorBehavior == 1)
    {
      newCenterDotIndicatorView = [(CEKWheelScrubberView *)v4 newCenterDotIndicatorView];
      centerDotIndicatorView = v4->__centerDotIndicatorView;
      v4->__centerDotIndicatorView = newCenterDotIndicatorView;

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

    blackColor = [MEMORY[0x1E69DC888] blackColor];
    [(CEKWheelScrubberView *)v4 setOpaqueGradientsWithColor:blackColor];

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
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = CEKWheelScrubberView;
  [(CEKWheelScrubberView *)&v4 dealloc];
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
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

- (void)_setDragging:(BOOL)dragging
{
  if (self->_dragging != dragging)
  {
    draggingCopy = dragging;
    self->_dragging = dragging;
    [(CEKWheelScrubberView *)self _updateSelectionLoupeAlphaAnimated:1];
    [(CEKWheelScrubberView *)self _updateCustomThumbnailAlphaAnimated:1];
    if (draggingCopy)
    {
      if (!self->_delegateFlags.respondsToWillBeginDragging)
      {
        return;
      }

      delegate = [(CEKWheelScrubberView *)self delegate];
      [delegate wheelScrubberViewWillBeginDragging:self];
    }

    else
    {
      if (!self->_delegateFlags.respondsToDidEndDragging)
      {
        return;
      }

      delegate = [(CEKWheelScrubberView *)self delegate];
      [delegate wheelScrubberViewDidEndDragging:self];
    }
  }
}

- (void)updateItems
{
  _collectionView = [(CEKWheelScrubberView *)self _collectionView];
  numberOfSections = [_collectionView numberOfSections];

  if (numberOfSections)
  {
    v5 = 0;
    do
    {
      _collectionView2 = [(CEKWheelScrubberView *)self _collectionView];
      v7 = [_collectionView2 numberOfItemsInSection:v5];

      if (v7)
      {
        for (i = 0; i != v7; ++i)
        {
          v9 = [MEMORY[0x1E696AC88] indexPathForItem:i inSection:v5];
          _collectionView3 = [(CEKWheelScrubberView *)self _collectionView];
          v11 = [_collectionView3 cellForItemAtIndexPath:v9];

          if (v11)
          {
            [(CEKWheelScrubberView *)self updateCell:v11 forItemAtIndex:[(CEKWheelScrubberView *)self globalIndexForIndexPath:v9]];
          }
        }
      }

      ++v5;
      _collectionView4 = [(CEKWheelScrubberView *)self _collectionView];
      numberOfSections2 = [_collectionView4 numberOfSections];
    }

    while (v5 < numberOfSections2);
  }
}

- (void)setItemCount:(unint64_t)count
{
  if (self->_itemCount != count)
  {
    self->_itemCount = count;
    _collectionView = [(CEKWheelScrubberView *)self _collectionView];
    [_collectionView reloadData];

    [(CEKWheelScrubberView *)self _updateCollectionViewForMarkedIndexAnimated:0];
  }
}

- (void)setSelectedIndex:(unint64_t)index
{
  [(CEKWheelScrubberView *)self _setSelectedIndex:index shouldNotify:0 shouldSuppressHaptic:1];

  [(CEKWheelScrubberView *)self _scrollToIndex:index animated:0 shouldOvershoot:0];
}

- (void)_setSelectedIndex:(unint64_t)index shouldNotify:(BOOL)notify shouldSuppressHaptic:(BOOL)haptic
{
  if (self->_selectedIndex != index)
  {
    notifyCopy = notify;
    self->_selectedIndex = index;
    if ([(CEKWheelScrubberView *)self _decelerationTargetIndex]== index)
    {
      [(CEKWheelScrubberView *)self set_decelerationTargetIndex:0x7FFFFFFFFFFFFFFFLL];
    }

    [(CEKWheelScrubberView *)self _updateSelectionLoupeAlphaAnimated:notifyCopy];
    [(CEKWheelScrubberView *)self _updateCustomThumbnailAlphaAnimated:notifyCopy];
    [(CEKWheelScrubberView *)self _updateOverlayVisibilityAnimated:notifyCopy];
    if (notifyCopy)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained wheelScrubberViewDidChangeSelectedIndex:self];

      [(CEKWheelScrubberView *)self sendActionsForControlEvents:4096];
    }

    if (!haptic && [(CEKWheelScrubberView *)self _shouldPerformFeedback])
    {
      [(CEKWheelScrubberView *)self _performFeedback];

      [(CEKWheelScrubberView *)self _prepareFeedback];
    }
  }
}

- (void)setMarkedIndex:(unint64_t)index animated:(BOOL)animated
{
  animatedCopy = animated;
  if (![(CEKWheelScrubberView *)self dotIndicatorBehavior]&& self->_markedIndex != index)
  {
    self->_markedIndex = index;

    [(CEKWheelScrubberView *)self _updateCollectionViewForMarkedIndexAnimated:animatedCopy];
  }
}

- (NSString)selectionText
{
  _selectedItemTextOverlay = [(CEKWheelScrubberView *)self _selectedItemTextOverlay];
  text = [_selectedItemTextOverlay text];

  return text;
}

- (void)setSelectionText:(id)text animated:(BOOL)animated
{
  animatedCopy = animated;
  v45[3] = *MEMORY[0x1E69E9840];
  textCopy = text;
  _selectedItemTextOverlay = [(CEKWheelScrubberView *)self _selectedItemTextOverlay];
  text = [_selectedItemTextOverlay text];
  if (textCopy | text && ([textCopy isEqualToString:text] & 1) == 0)
  {
    _selectedItemTextOverlay2 = [(CEKWheelScrubberView *)self _selectedItemTextOverlay];

    if (!_selectedItemTextOverlay2)
    {
      v10 = objc_alloc(MEMORY[0x1E69DCC10]);
      v11 = [v10 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
      selectedItemTextOverlay = self->__selectedItemTextOverlay;
      self->__selectedItemTextOverlay = v11;

      [MEMORY[0x1E69DC888] blackColor];
      v13 = v32 = animatedCopy;
      v31 = [v13 colorWithAlphaComponent:0.5];

      layer = [(UILabel *)self->__selectedItemTextOverlay layer];
      [layer setBackgroundColor:{objc_msgSend(v31, "CGColor")}];

      layer2 = [(UILabel *)self->__selectedItemTextOverlay layer];
      [layer2 setCornerRadius:8.0];

      [(UILabel *)self->__selectedItemTextOverlay setUserInteractionEnabled:0];
      [(UILabel *)self->__selectedItemTextOverlay setTextAlignment:1];
      v16 = self->__selectedItemTextOverlay;
      systemWhiteColor = [MEMORY[0x1E69DC888] systemWhiteColor];
      [(UILabel *)v16 setTextColor:systemWhiteColor];

      self->__showSelectedItemTextOverlay = 0;
      v30 = [MEMORY[0x1E69DB878] systemFontOfSize:*MEMORY[0x1E69DB920] weight:13.0 design:*MEMORY[0x1E69DB978]];
      fontDescriptor = [v30 fontDescriptor];
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
      v25 = [fontDescriptor fontDescriptorByAddingAttributes:v24];

      v26 = [MEMORY[0x1E69DB878] fontWithDescriptor:v25 size:13.0];

      [(UILabel *)self->__selectedItemTextOverlay setFont:v26];
      animatedCopy = v32;
    }

    superview = [_selectedItemTextOverlay superview];

    if (textCopy)
    {
      if (!superview)
      {
        _selectedItemLoupe = [(CEKWheelScrubberView *)self _selectedItemLoupe];
        [(CEKWheelScrubberView *)self insertSubview:_selectedItemTextOverlay belowSubview:_selectedItemLoupe];
      }

      [_selectedItemTextOverlay setText:textCopy];
      [(CEKWheelScrubberView *)self _setShowTextOverlay:1 animated:animatedCopy completion:0];
    }

    else
    {
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __50__CEKWheelScrubberView_setSelectionText_animated___block_invoke;
      v33[3] = &unk_1E7CC6750;
      v34 = _selectedItemTextOverlay;
      v35 = 0;
      v36 = superview != 0;
      [(CEKWheelScrubberView *)self _setShowTextOverlay:0 animated:animatedCopy completion:v33];
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

- (void)_setShowTextOverlay:(BOOL)overlay animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  overlayCopy = overlay;
  completionCopy = completion;
  if ([(CEKWheelScrubberView *)self _showSelectedItemTextOverlay]== overlayCopy)
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 1);
    }
  }

  else
  {
    [(CEKWheelScrubberView *)self set_showSelectedItemTextOverlay:overlayCopy];
    _selectedItemTextOverlay = [(CEKWheelScrubberView *)self _selectedItemTextOverlay];
    v10 = 0.0;
    if (overlayCopy)
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
    v12 = _selectedItemTextOverlay;
    v20 = v12;
    v21 = v11;
    v13 = _Block_copy(&v16);
    v14 = v13;
    if (animatedCopy)
    {
      if (overlayCopy)
      {
        v15 = 0.0;
      }

      else
      {
        v15 = 1.0;
      }

      if (!overlayCopy)
      {
        v10 = 0.33;
      }

      [v12 setAlpha:{v15, v16, v17, v18, v19}];
      [MEMORY[0x1E69DD250] animateWithDuration:0 delay:v14 options:completionCopy animations:0.33 completion:v10];
    }

    else
    {
      (*(v13 + 2))(v13);
      if (completionCopy)
      {
        completionCopy[2](completionCopy, 1);
      }
    }
  }
}

- (void)setCornerStyle:(int64_t)style
{
  if (self->_cornerStyle != style)
  {
    self->_cornerStyle = style;
    _collectionView = [(CEKWheelScrubberView *)self _collectionView];
    [_collectionView reloadData];
  }
}

- (void)setSelectionLoupeVisibility:(int64_t)visibility animated:(BOOL)animated
{
  if (self->_selectionLoupeVisibility != visibility)
  {
    self->_selectionLoupeVisibility = visibility;
    [(CEKWheelScrubberView *)self _updateSelectionLoupeAlphaAnimated:animated];
  }
}

- (void)setUseSelectionLoupeShadow:(BOOL)shadow
{
  shadowCopy = shadow;
  self->_useSelectionLoupeShadow = shadow;
  layer = [(UIView *)self->__selectedItemLoupe layer];
  v6 = layer;
  LODWORD(v7) = 1058642330;
  if (!shadowCopy)
  {
    *&v7 = 0.0;
  }

  [layer setShadowOpacity:v7];

  layer2 = [(UIView *)self->__selectedItemLoupe layer];
  [layer2 setShadowOffset:{0.0, 0.0}];
}

- (void)setCustomCenteredThumbnailOverlayView:(id)view
{
  viewCopy = view;
  customCenteredThumbnailOverlayView = self->_customCenteredThumbnailOverlayView;
  if (customCenteredThumbnailOverlayView != viewCopy)
  {
    v8 = viewCopy;
    superview = [(UIView *)customCenteredThumbnailOverlayView superview];

    if (superview == self)
    {
      [(UIView *)self->_customCenteredThumbnailOverlayView removeFromSuperview];
    }

    objc_storeStrong(&self->_customCenteredThumbnailOverlayView, view);
    [(CEKWheelScrubberView *)self addSubview:v8];
    customCenteredThumbnailOverlayView = [(CEKWheelScrubberView *)self setNeedsLayout];
    viewCopy = v8;
  }

  MEMORY[0x1EEE66BB8](customCenteredThumbnailOverlayView, viewCopy);
}

- (void)setCustomThumbnailVisibility:(int64_t)visibility animated:(BOOL)animated
{
  if (self->_customThumbnailVisibility != visibility)
  {
    self->_customThumbnailVisibility = visibility;
    [(CEKWheelScrubberView *)self _updateCustomThumbnailAlphaAnimated:animated];
  }
}

- (void)setCustomThumbailHiddenIndices:(id)indices
{
  indicesCopy = indices;
  customThumbailHiddenIndices = self->_customThumbailHiddenIndices;
  if (customThumbailHiddenIndices != indicesCopy)
  {
    v7 = indicesCopy;
    customThumbailHiddenIndices = [customThumbailHiddenIndices isEqual:indicesCopy];
    indicesCopy = v7;
    if ((customThumbailHiddenIndices & 1) == 0)
    {
      objc_storeStrong(&self->_customThumbailHiddenIndices, indices);
      customThumbailHiddenIndices = [(CEKWheelScrubberView *)self _updateCustomThumbnailAlphaAnimated:0];
      indicesCopy = v7;
    }
  }

  MEMORY[0x1EEE66BB8](customThumbailHiddenIndices, indicesCopy);
}

- (void)_updateCollectionViewForMarkedIndexAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if (![(CEKWheelScrubberView *)self dotIndicatorBehavior])
  {
    markedIndex = [(CEKWheelScrubberView *)self markedIndex];
    _collectionView = [(CEKWheelScrubberView *)self _collectionView];
    indexPathsForSelectedItems = [_collectionView indexPathsForSelectedItems];
    itemCount = [(CEKWheelScrubberView *)self itemCount];
    if (markedIndex == 0x7FFFFFFFFFFFFFFFLL || markedIndex >= itemCount)
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
        v15 = _collectionView;
        v16 = animatedCopy;
        v11 = _collectionView;
        v12 = v10;
        [indexPathsForSelectedItems enumerateObjectsUsingBlock:v13];

        return;
      }

      defaultIndex = [(CEKWheelScrubberView *)self defaultIndex];
      if (defaultIndex == 0x7FFFFFFFFFFFFFFFLL)
      {
        markedIndex = 0;
      }

      else
      {
        markedIndex = defaultIndex;
      }
    }

    v10 = [MEMORY[0x1E696AC88] indexPathForItem:markedIndex inSection:0];
    if (v10)
    {
      if (([indexPathsForSelectedItems containsObject:v10] & 1) == 0)
      {
        [_collectionView selectItemAtIndexPath:v10 animated:animatedCopy scrollPosition:0];
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

- (id)cellOverlayAtIndex:(unint64_t)index
{
  if (self->_cellOverlayMode == 1)
  {
    v4 = [MEMORY[0x1E696AC88] indexPathForItem:self->_selectedIndex inSection:0];
    _collectionView = [(CEKWheelScrubberView *)self _collectionView];
    v6 = [_collectionView cellForItemAtIndexPath:v4];

    overlayView = [v6 overlayView];
  }

  else
  {
    overlayView = 0;
  }

  return overlayView;
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

- (unint64_t)globalIndexForIndexPath:(id)path
{
  pathCopy = path;
  if ([pathCopy section])
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v6 += [(UICollectionView *)self->__collectionView numberOfItemsInSection:v5++];
    }

    while (v5 < [pathCopy section]);
  }

  else
  {
    v6 = 0;
  }

  v7 = [pathCopy row];

  return v7 + v6;
}

- (void)setTransparentGradients
{
  _edgeGradientView = [(CEKWheelScrubberView *)self _edgeGradientView];
  [_edgeGradientView setEdgeGradientStyleMask];
  [(CEKWheelScrubberView *)self setMaskView:_edgeGradientView];
}

- (BOOL)_isUsingTransparentGradients
{
  maskView = [(CEKWheelScrubberView *)self maskView];
  v3 = maskView != 0;

  return v3;
}

- (void)setOpaqueGradientsWithColor:(id)color
{
  colorCopy = color;
  _edgeGradientView = [(CEKWheelScrubberView *)self _edgeGradientView];
  [_edgeGradientView setCustomEdgeGradientStyleWithColor:colorCopy];

  [(CEKWheelScrubberView *)self setMaskView:0];
  [(CEKWheelScrubberView *)self addSubview:_edgeGradientView];
}

- (int64_t)layoutOrder
{
  _collectionViewLayout = [(CEKWheelScrubberView *)self _collectionViewLayout];
  layoutOrder = [_collectionViewLayout layoutOrder];

  return layoutOrder;
}

- (void)setLayoutOrder:(int64_t)order
{
  _collectionViewLayout = [(CEKWheelScrubberView *)self _collectionViewLayout];
  [_collectionViewLayout setLayoutOrder:order];
}

- (int64_t)layoutDirection
{
  _collectionViewLayout = [(CEKWheelScrubberView *)self _collectionViewLayout];
  layoutDirection = [_collectionViewLayout layoutDirection];

  return layoutDirection;
}

- (void)setLayoutDirection:(int64_t)direction
{
  _collectionViewLayout = [(CEKWheelScrubberView *)self _collectionViewLayout];
  [_collectionViewLayout setLayoutDirection:direction];
}

- (void)setDotIndicatorBehavior:(int64_t)behavior
{
  if (self->_dotIndicatorBehavior != behavior)
  {
    self->_dotIndicatorBehavior = behavior;
    if (behavior == 1)
    {
      newCenterDotIndicatorView = [(CEKWheelScrubberView *)self newCenterDotIndicatorView];
      centerDotIndicatorView = self->__centerDotIndicatorView;
      self->__centerDotIndicatorView = newCenterDotIndicatorView;

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
  layer = [v3 layer];
  [layer setCornerRadius:v5 * 0.5];

  return v3;
}

- (void)setDotPlacement:(int64_t)placement
{
  if (self->_dotPlacement != placement)
  {
    self->_dotPlacement = placement;
    [(CEKWheelScrubberView *)self setNeedsLayout];
  }
}

- (void)_updateLayoutForVisibleCells
{
  v15 = *MEMORY[0x1E69E9840];
  _collectionView = [(CEKWheelScrubberView *)self _collectionView];
  visibleCells = [_collectionView visibleCells];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = visibleCells;
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

- (void)_updateLayoutForCell:(id)cell
{
  cellCopy = cell;
  [(CEKWheelScrubberView *)self thumbnailSpacing];
  [cellCopy setContentInsetWidth:v4 * 0.5];
  [(CEKWheelScrubberView *)self selectionDotCenterTopSpacing];
  [cellCopy setSelectionDotCenterTopSpacing:?];
  [cellCopy setDotPlacement:{-[CEKWheelScrubberView dotPlacement](self, "dotPlacement")}];
}

- (void)setSelectedThumbnailBorderWidth:(double)width
{
  if (self->_selectedThumbnailBorderWidth != width)
  {
    self->_selectedThumbnailBorderWidth = width;
    _selectedItemLoupe = [(CEKWheelScrubberView *)self _selectedItemLoupe];
    layer = [_selectedItemLoupe layer];
    [layer setBorderWidth:width];

    [(CEKWheelScrubberView *)self setNeedsLayout];
  }
}

- (void)setSelectedThumbnailBorderColor:(id)color
{
  colorCopy = color;
  if (([(UIColor *)self->_selectedThumbnailBorderColor isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_selectedThumbnailBorderColor, color);
    cGColor = [colorCopy CGColor];
    _selectedItemLoupe = [(CEKWheelScrubberView *)self _selectedItemLoupe];
    layer = [_selectedItemLoupe layer];
    [layer setBorderColor:cGColor];
  }
}

- (void)setThumbnailSize:(CGSize)size
{
  if (self->_thumbnailSize.width != size.width || self->_thumbnailSize.height != size.height)
  {
    self->_thumbnailSize = size;
    [(CEKWheelScrubberView *)self setNeedsLayout];
    collectionViewLayout = self->__collectionViewLayout;

    [(CEKWheelScrubberCollectionViewLayout *)collectionViewLayout invalidateLayout];
  }
}

- (void)setThumbnailSpacing:(double)spacing
{
  if (self->_thumbnailSpacing != spacing)
  {
    self->_thumbnailSpacing = spacing;
    [(CEKWheelScrubberView *)self setNeedsLayout];
    collectionViewLayout = self->__collectionViewLayout;

    [(CEKWheelScrubberCollectionViewLayout *)collectionViewLayout invalidateLayout];
  }
}

- (void)setThumbnailEdgeInsets:(UIEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.left;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_thumbnailEdgeInsets.top, v3), vceqq_f64(*&self->_thumbnailEdgeInsets.bottom, v4)))) & 1) == 0)
  {
    self->_thumbnailEdgeInsets = insets;
    [(CEKWheelScrubberView *)self setNeedsLayout];
  }
}

- (double)thumbnailCornerRadius
{
  cornerStyle = [(CEKWheelScrubberView *)self cornerStyle];
  if (cornerStyle == 2)
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
    if (cornerStyle != 1)
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

- (void)setGradientInsets:(id)insets
{
  var1 = insets.var1;
  var0 = insets.var0;
  p_gradientInsets = &self->_gradientInsets;
  if (!CEKEdgeInsetsEqualToInsets(insets.var0, insets.var1, self->_gradientInsets.startInset, self->_gradientInsets.endInset))
  {
    p_gradientInsets->startInset = var0;
    p_gradientInsets->endInset = var1;

    [(CEKWheelScrubberView *)self setNeedsLayout];
  }
}

- (void)setSelectionDotCenterTopSpacing:(double)spacing
{
  if (self->_selectionDotCenterTopSpacing != spacing)
  {
    self->_selectionDotCenterTopSpacing = spacing;
    [(CEKWheelScrubberView *)self _updateLayoutForVisibleCells];
  }
}

- (int64_t)cellEffect
{
  _collectionViewLayout = [(CEKWheelScrubberView *)self _collectionViewLayout];
  cellEffect = [_collectionViewLayout cellEffect];

  return cellEffect;
}

- (void)setCellEffect:(int64_t)effect
{
  _collectionViewLayout = [(CEKWheelScrubberView *)self _collectionViewLayout];
  [_collectionViewLayout setCellEffect:effect];
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

- (CGRect)_collectionViewAlignmentRectForBounds:(CGRect)bounds
{
  [(CEKWheelScrubberView *)self alignmentRectForFrame:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(CEKWheelScrubberView *)self _defaultItemSize];
  v13 = v12;
  v15 = v14;
  _isDirectionHorizontal = [(CEKWheelScrubberView *)self _isDirectionHorizontal];
  v29.origin.x = v5;
  v29.origin.y = v7;
  v29.size.width = v9;
  v29.size.height = v11;
  MinX = CGRectGetMinX(v29);
  v18 = v5;
  v19 = v7;
  v20 = v9;
  v21 = v11;
  if (_isDirectionHorizontal)
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

- (CGRect)_centeredCellFrameForCollectionViewAlignmentRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
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

- (CGRect)_centerDotIndicatorFrameForCollectionViewAlignmentRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  +[CEKWheelScrubberUtilities dotIndicatorDiameter];
  v9 = v8;
  dotPlacement = [(CEKWheelScrubberView *)self dotPlacement];
  if (dotPlacement == 2)
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

  if (dotPlacement == 1)
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
  if (!dotPlacement)
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
    _collectionView = [(CEKWheelScrubberView *)self _collectionView];
    _collectionViewLayout = [(CEKWheelScrubberView *)self _collectionViewLayout];
    _selectedItemLoupe = [(CEKWheelScrubberView *)self _selectedItemLoupe];
    _selectedItemTextOverlay = [(CEKWheelScrubberView *)self _selectedItemTextOverlay];
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
      dotPlacement = [(CEKWheelScrubberView *)self dotPlacement];
      if (dotPlacement == 1)
      {
        v31 = 19.0;
      }

      else
      {
        v31 = self->_selectionDotCenterTopSpacing + 5.0;
      }

      if (dotPlacement == 1)
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
    [_collectionView bounds];
    v44 = v43;
    [_collectionView setFrame:{v39, v40, v41, v42}];
    [_collectionViewLayout setContentInsets:{v90, v29, v33, v31}];
    _edgeGradientView = [(CEKWheelScrubberView *)self _edgeGradientView];
    [_edgeGradientView setFrame:{v39, v40, v41, v42}];

    LODWORD(_edgeGradientView) = [(CEKWheelScrubberView *)self _isDirectionHorizontal];
    _edgeGradientView2 = [(CEKWheelScrubberView *)self _edgeGradientView];
    [_edgeGradientView2 setGradientDirection:_edgeGradientView ^ 1];

    _edgeGradientView3 = [(CEKWheelScrubberView *)self _edgeGradientView];
    [_edgeGradientView3 frame];
    v49 = v48;
    v51 = v50;

    if (_edgeGradientView)
    {
      v51 = v49;
    }

    [(CEKWheelScrubberView *)self gradientInsets];
    v53 = v52;
    [(CEKWheelScrubberView *)self gradientInsets];
    v55 = v54;
    _edgeGradientView4 = [(CEKWheelScrubberView *)self _edgeGradientView];
    [_edgeGradientView4 setGradientDimensions:{v53, v51 * 0.07, v51 * 0.07, v55}];

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
    [_selectedItemLoupe setFrame:?];
    [_selectedItemTextOverlay setFrame:{v63, v64, v65, v66}];
    customCenteredThumbnailOverlayView = [(CEKWheelScrubberView *)self customCenteredThumbnailOverlayView];

    if (customCenteredThumbnailOverlayView)
    {
      [(CEKWheelScrubberView *)self centeredThumbnailContentFrame];
      v69 = v68;
      v71 = v70;
      v73 = v72;
      v75 = v74;
      customCenteredThumbnailOverlayView2 = [(CEKWheelScrubberView *)self customCenteredThumbnailOverlayView];
      [customCenteredThumbnailOverlayView2 setFrame:{v69, v71, v73, v75}];
    }

    _centerDotIndicatorView = [(CEKWheelScrubberView *)self _centerDotIndicatorView];

    if (_centerDotIndicatorView)
    {
      [(CEKWheelScrubberView *)self _centerDotIndicatorFrameForCollectionViewAlignmentRect:v95, v94, v93, v92];
      v79 = v78;
      v81 = v80;
      v83 = v82;
      v85 = v84;
      _centerDotIndicatorView2 = [(CEKWheelScrubberView *)self _centerDotIndicatorView];
      [_centerDotIndicatorView2 setFrame:{v79, v81, v83, v85}];
    }

    if (v44 <= 0.0)
    {
      [(CEKWheelScrubberView *)self _scrollToIndex:[(CEKWheelScrubberView *)self selectedIndex] animated:0 shouldOvershoot:0];
    }
  }
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  v23.receiver = self;
  v23.super_class = CEKWheelScrubberView;
  v7 = [(CEKWheelScrubberView *)&v23 hitTest:event withEvent:?];
  _edgeGradientView = [(CEKWheelScrubberView *)self _edgeGradientView];
  if ([(CEKWheelScrubberView *)self passThroughTouchesInFullyTransparentAreas]&& [(CEKWheelScrubberView *)self _isUsingTransparentGradients])
  {
    [_edgeGradientView gradientDimensions];
    v10 = v9;
    v12 = v11;
    [(CEKWheelScrubberView *)self convertPoint:_edgeGradientView toView:x, y];
    v14 = v13;
    v16 = v15;
    [_edgeGradientView bounds];
    v18 = v17;
    v20 = v19;
    gradientDirection = [_edgeGradientView gradientDirection];
    if (gradientDirection)
    {
      if (gradientDirection == 1 && (v16 <= v10 || v16 >= v20 - v12))
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

- (void)updateCell:(id)cell forItemAtIndex:(unint64_t)index
{
  cellCopy = cell;
  delegate = [(CEKWheelScrubberView *)self delegate];
  [delegate wheelScrubberView:self updateCell:cellCopy forItemAtIndex:index];
}

- (int64_t)numberOfSectionsInCollectionView:(id)view
{
  if (![(CEKWheelScrubberView *)self isSectioned])
  {
    return 1;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = [WeakRetained wheelScrubberViewNumberOfSections:self];

  return v5;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  if ([(CEKWheelScrubberView *)self isSectioned]&& self->_delegateFlags.respondsToNumberOfItemsInSection)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v7 = [WeakRetained wheelScrubberView:self numberOfItemsInSection:section];

    return v7;
  }

  else
  {

    return [(CEKWheelScrubberView *)self itemCount];
  }
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithReuseIdentifier:@"CEKWheelScrubberViewCellReuseIdentifier" forIndexPath:pathCopy];
  v8 = [(CEKWheelScrubberView *)self globalIndexForIndexPath:pathCopy];

  [(CEKWheelScrubberView *)self updateCell:v7 forItemAtIndex:v8];
  [(CEKWheelScrubberView *)self _updateLayoutForCell:v7];
  [(CEKWheelScrubberView *)self _updateCornerMaskForCell:v7 withItemIndex:v8];

  return v7;
}

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v9 = *MEMORY[0x1E69DDC08];
  if ([kind isEqualToString:*MEMORY[0x1E69DDC08]])
  {
    v10 = [viewCopy dequeueReusableSupplementaryViewOfKind:v9 withReuseIdentifier:@"CEKWheelScrubberSectionHeaderReuseIdentifier" forIndexPath:pathCopy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_updateCornerMaskForCell:(id)cell withItemIndex:(int64_t)index
{
  cellCopy = cell;
  cornerStyle = [(CEKWheelScrubberView *)self cornerStyle];
  if (cornerStyle == 1)
  {
    v7 = [(CEKWheelScrubberView *)self _outermostCornerMaskForItemIndex:index];
  }

  else if (cornerStyle == 2)
  {
    v7 = 15;
  }

  else
  {
    v7 = 0;
  }

  itemView = [cellCopy itemView];
  layer = [itemView layer];

  if (v7)
  {
    [(CEKWheelScrubberView *)self thumbnailCornerRadius];
  }

  else
  {
    v10 = 0.0;
  }

  [layer setCornerRadius:v10];
  [layer setMaskedCorners:v7];
}

- (unint64_t)_outermostCornerMaskForItemIndex:(int64_t)index
{
  layoutDirection = [(CEKWheelScrubberView *)self layoutDirection];
  v6 = layoutDirection;
  if (index)
  {
    v7 = [(CEKWheelScrubberView *)self itemCount]- 1;
    v8 = 12;
    if (!v6)
    {
      v8 = 10;
    }

    if (v7 == index)
    {
      return v8;
    }

    else
    {
      return 0;
    }
  }

  else if (layoutDirection)
  {
    return 3;
  }

  else
  {
    return 5;
  }
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  if ([(CEKWheelScrubberView *)self cellOverlayMode]== 1)
  {
    v8 = [(CEKWheelScrubberView *)self globalIndexForIndexPath:pathCopy];
    if (v8 == [(CEKWheelScrubberView *)self selectedIndex])
    {
      v9 = cellCopy;
      overlayView = [v9 overlayView];
      if (overlayView)
      {
        v11 = overlayView;
        overlayView2 = [v9 overlayView];
        [overlayView2 alpha];
        v14 = v13;

        if (v14 == 0.0)
        {
          overlayView3 = [v9 overlayView];
          [overlayView3 setAlpha:1.0];
        }
      }
    }
  }
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  [(CEKWheelScrubberView *)self _prepareFeedback];
  [(CEKWheelScrubberView *)self _setDragging:1];
  if (self->_delegateFlags.respondsToWillBeginScrolling)
  {
    delegate = [(CEKWheelScrubberView *)self delegate];
    [delegate wheelScrubberViewWillBeginScrolling:self];
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  if (self->_delegateFlags.respondsToDidScroll)
  {
    delegate = [(CEKWheelScrubberView *)self delegate];
    [delegate wheelScrubberViewDidScroll:self];
  }

  isDragging = [scrollCopy isDragging];
  isDecelerating = [scrollCopy isDecelerating];
  isScrollAnimating = [scrollCopy isScrollAnimating];
  [scrollCopy contentOffset];
  if (((isDragging | isDecelerating) & 1) != 0 && (isScrollAnimating & 1) == 0)
  {
    [(CEKWheelScrubberView *)self _setSelectedIndex:[(CEKWheelScrubberView *)self _itemIndexUsingHysteresisForScrollingToContentOffset:?] shouldNotify:1 shouldSuppressHaptic:0];
  }
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  y = velocity.y;
  x = velocity.x;
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
    selectedIndex = [(CEKWheelScrubberView *)self _itemIndexUsingHysteresisForScrollingToContentOffset:offset->x, offset->y];
  }

  else
  {
    selectedIndex = [(CEKWheelScrubberView *)self selectedIndex];
  }

  v11 = selectedIndex;
  totalNumberOfItems = [(CEKWheelScrubberView *)self totalNumberOfItems];
  _isOrderReverse = [(CEKWheelScrubberView *)self _isOrderReverse];
  if ((v11 - totalNumberOfItems + 1) >= 0)
  {
    v14 = v11 - totalNumberOfItems + 1;
  }

  else
  {
    v14 = ~(v11 - totalNumberOfItems);
  }

  if (_isOrderReverse)
  {
    v11 = v14;
  }

  [(CEKWheelScrubberView *)self _contentOffsetForItemIndex:v11];
  offset->x = v15;
  offset->y = v16;
  if (v11 != [(CEKWheelScrubberView *)self selectedIndex])
  {
    [(CEKWheelScrubberView *)self set_decelerationTargetIndex:v11];
  }

  if (self->_delegateFlags.respondsToWillEndScrolling)
  {
    delegate = [(CEKWheelScrubberView *)self delegate];
    [delegate wheelScrubberViewWillEndScrolling:self withVelocity:offset targetContentOffset:{x, y}];
  }
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  if (!decelerate)
  {
    [(CEKWheelScrubberView *)self set_decelerationTargetIndex:0x7FFFFFFFFFFFFFFFLL];
  }

  [(CEKWheelScrubberView *)self _setDragging:0];
}

- (void)scrollViewDidEndScrollingAnimation:(id)animation
{
  animationCopy = animation;
  if (self->_delegateFlags.respondsToDidEndScrolling)
  {
    delegate = [(CEKWheelScrubberView *)self delegate];
    [delegate wheelScrubberViewDidEndScrolling:self];
  }

  if (([animationCopy isDragging] & 1) == 0)
  {
    [(CEKWheelScrubberView *)self _scrollToIndex:[(CEKWheelScrubberView *)self selectedIndex] animated:1 shouldOvershoot:0];
  }
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  [(CEKWheelScrubberView *)self set_decelerationTargetIndex:0x7FFFFFFFFFFFFFFFLL];
  [(CEKWheelScrubberView *)self _updateSelectionLoupeAlphaAnimated:1];
  [(CEKWheelScrubberView *)self _updateCustomThumbnailAlphaAnimated:1];
  if (self->_delegateFlags.respondsToDidEndScrolling)
  {
    delegate = [(CEKWheelScrubberView *)self delegate];
    [delegate wheelScrubberViewDidEndScrolling:self];
  }
}

- (void)_scrollViewDidInterruptDecelerating:(id)decelerating
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

- (CGPoint)_contentOffsetForItemIndex:(int64_t)index
{
  v4 = *MEMORY[0x1E695EFF8];
  v5 = *(MEMORY[0x1E695EFF8] + 8);
  [(CEKWheelScrubberView *)self _contentOffsetAmountForItemIndex:index];
  v7 = v6;
  _isDirectionHorizontal = [(CEKWheelScrubberView *)self _isDirectionHorizontal];
  if (_isDirectionHorizontal)
  {
    v9 = v5;
  }

  else
  {
    v9 = v7;
  }

  if (_isDirectionHorizontal)
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

- (double)_contentOffsetAmountForItemIndex:(int64_t)index
{
  [(CEKWheelScrubberView *)self _defaultItemLength];
  v6 = v5;
  v7 = [(CEKWheelScrubberView *)self numberOfSectionsBeforeItemIndex:index];
  +[CEKWheelScrubberSectionDividerView dividerViewWidth];
  return v8 * v7 + index * v6;
}

- (double)_fractionalItemOffsetForContentOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
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

- (double)_fractionalItemOffsetForContentOffsetAmount:(double)amount
{
  [(CEKWheelScrubberView *)self _defaultItemLength];
  v6 = v5;
  [(CEKWheelScrubberView *)self _contentOffsetIgnoringSectionHeaders:amount];
  v8 = v7 / v6;
  v9 = ([(CEKWheelScrubberView *)self totalNumberOfItems]- 1);

  return CEKClamp(v8, 0.0, v9);
}

- (unint64_t)numberOfSectionsBeforeItemIndex:(unint64_t)index
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
    if (v6 > index)
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

- (double)_contentOffsetIgnoringSectionHeaders:(double)headers
{
  [(CEKWheelScrubberView *)self _defaultItemLength];
  v6 = v5;
  +[CEKWheelScrubberSectionDividerView dividerViewWidth];
  v8 = v7;
  if (![(UICollectionView *)self->__collectionView numberOfSections])
  {
    return headers;
  }

  v9 = 0;
  v10 = v6 * -0.5;
  v11 = v8 * 0.5;
  headersCopy = headers;
  do
  {
    v13 = v10 + v6 * [(UICollectionView *)self->__collectionView numberOfItemsInSection:v9];
    if (v13 > headers)
    {
      break;
    }

    v14 = v11 + v13;
    if (v14 > headers)
    {
      return headersCopy - (headers - (v14 - v11));
    }

    v10 = v11 + v14;
    if (v11 + v14 > headers)
    {
      return headersCopy + v10 - headers;
    }

    headersCopy = headersCopy - v8;
    ++v9;
  }

  while (v9 < [(UICollectionView *)self->__collectionView numberOfSections]);
  return headersCopy;
}

- (int64_t)_itemIndexUsingHysteresisForScrollingToContentOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  selectedIndex = [(CEKWheelScrubberView *)self selectedIndex];
  [(CEKWheelScrubberView *)self _fractionalItemOffsetForContentOffset:x, y];
  v8 = [(CEKWheelScrubberView *)self _nominalItemIndexForFractionalItemOffset:v7 + dbl_1B7EDA480[v7 > selectedIndex]];
  totalNumberOfItems = [(CEKWheelScrubberView *)self totalNumberOfItems];
  if (![(CEKWheelScrubberView *)self _isOrderReverse])
  {
    return v8;
  }

  if ((v8 - totalNumberOfItems + 1) >= 0)
  {
    return v8 - totalNumberOfItems + 1;
  }

  return ~(v8 - totalNumberOfItems);
}

- (void)_handleTapGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  if ([recognizerCopy state] == 3)
  {
    _collectionView = [(CEKWheelScrubberView *)self _collectionView];
    [recognizerCopy locationInView:_collectionView];
    v5 = [_collectionView indexPathForItemAtPoint:?];
    if (v5)
    {
      v6 = [(CEKWheelScrubberView *)self globalIndexForIndexPath:v5];
      if (v6 == [(CEKWheelScrubberView *)self selectedIndex])
      {
        if (self->_delegateFlags.respondsToDidTapOnSelectedCell || self->_delegateFlags.respondsToDidTapOnSelectedCellWithFrame)
        {
          _collectionView2 = [(CEKWheelScrubberView *)self _collectionView];
          v8 = [_collectionView2 layoutAttributesForItemAtIndexPath:v5];

          [(CEKWheelScrubberView *)self thumbnailSpacing];
          v10 = v9 * 0.5;
          [v8 frame];
          v31 = CGRectInset(v30, v10, v10);
          x = v31.origin.x;
          y = v31.origin.y;
          width = v31.size.width;
          height = v31.size.height;
          _collectionView3 = [(CEKWheelScrubberView *)self _collectionView];
          [_collectionView3 convertRect:self toView:{x, y, width, height}];
          v17 = v16;
          v19 = v18;
          v21 = v20;
          v23 = v22;

          if (self->_delegateFlags.respondsToDidTapOnSelectedCellWithFrame)
          {
            delegate = [(CEKWheelScrubberView *)self delegate];
            [delegate wheelScrubberView:self didTapOnSelectedCellWithFrame:{v17, v19, v21, v23}];
          }

          if (self->_delegateFlags.respondsToDidTapOnSelectedCell)
          {
            _collectionView4 = [(CEKWheelScrubberView *)self _collectionView];
            v26 = [_collectionView4 cellForItemAtIndexPath:v5];

            delegate2 = [(CEKWheelScrubberView *)self delegate];
            [delegate2 wheelScrubberView:self didTapOnSelectedCell:v26 withFrame:{v17, v19, v21, v23}];
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

- (void)_switchToIndex:(int64_t)index shouldOvershoot:(BOOL)overshoot shouldSuppressHaptic:(BOOL)haptic
{
  hapticCopy = haptic;
  overshootCopy = overshoot;
  [(CEKWheelScrubberView *)self _prepareFeedback];
  [(CEKWheelScrubberView *)self _setSelectedIndex:index shouldNotify:1 shouldSuppressHaptic:hapticCopy];

  [(CEKWheelScrubberView *)self _scrollToIndex:index animated:1 shouldOvershoot:overshootCopy];
}

- (void)_scrollToIndex:(int64_t)index animated:(BOOL)animated shouldOvershoot:(BOOL)overshoot
{
  overshootCopy = overshoot;
  animatedCopy = animated;
  _collectionView = [(CEKWheelScrubberView *)self _collectionView];
  _collectionViewLayout = [(CEKWheelScrubberView *)self _collectionViewLayout];
  layoutOrder = [_collectionViewLayout layoutOrder];

  totalNumberOfItems = [(CEKWheelScrubberView *)self totalNumberOfItems];
  if ((index - totalNumberOfItems + 1) >= 0)
  {
    v12 = index - totalNumberOfItems + 1;
  }

  else
  {
    v12 = ~(index - totalNumberOfItems);
  }

  if (layoutOrder == 1)
  {
    indexCopy = v12;
  }

  else
  {
    indexCopy = index;
  }

  [(CEKWheelScrubberView *)self _contentOffsetForItemIndex:indexCopy];
  v15 = v14;
  v17 = v16;
  if (animatedCopy && overshootCopy)
  {
    [_collectionView contentOffset];
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

  _isDirectionHorizontal = [(CEKWheelScrubberView *)self _isDirectionHorizontal];
  [_collectionView contentOffset];
  if (_isDirectionHorizontal)
  {
    if (v26 == v15)
    {
      goto LABEL_27;
    }

    [_collectionView setContentOffset:animatedCopy animated:{v15, v17}];
    if (!animatedCopy || !self->_delegateFlags.respondsToWillBeginScrolling)
    {
      goto LABEL_27;
    }

LABEL_26:
    delegate = [(CEKWheelScrubberView *)self delegate];
    [delegate wheelScrubberViewWillBeginScrolling:self];

    goto LABEL_27;
  }

  if (v27 != v17)
  {
    [_collectionView setContentOffset:animatedCopy animated:{v15, v17}];
    if (animatedCopy && self->_delegateFlags.respondsToWillBeginScrolling)
    {
      goto LABEL_26;
    }
  }

LABEL_27:
}

- (void)setSuspended:(BOOL)suspended
{
  if (self->_suspended != suspended)
  {
    v27 = v3;
    v28 = v4;
    suspendedCopy = suspended;
    self->_suspended = suspended;
    _collectionView = [(CEKWheelScrubberView *)self _collectionView];
    if (suspendedCopy)
    {
      [(CEKWheelScrubberView *)self setSelectedIndex:[(CEKWheelScrubberView *)self selectedIndex]];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __37__CEKWheelScrubberView_setSuspended___block_invoke;
      block[3] = &unk_1E7CC6688;
      block[4] = self;
      v26 = _collectionView;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }

    else
    {
      _collectionViewSnapshot = [(CEKWheelScrubberView *)self _collectionViewSnapshot];
      [(CEKWheelScrubberView *)self _setCollectionViewSnapshot:0];
      _collectionView2 = [(CEKWheelScrubberView *)self _collectionView];
      [_collectionView2 setHidden:0];

      if (_collectionViewSnapshot)
      {
        [_collectionView setUserInteractionEnabled:0];
        [MEMORY[0x1E6979518] begin];
        v10 = MEMORY[0x1E6979518];
        v19 = MEMORY[0x1E69E9820];
        v20 = 3221225472;
        v21 = __37__CEKWheelScrubberView_setSuspended___block_invoke_2;
        v22 = &unk_1E7CC6688;
        v11 = _collectionViewSnapshot;
        v23 = v11;
        v24 = _collectionView;
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
        layer = [v11 layer];
        [layer addAnimation:v12 forKey:@"fadeOutAnimation"];

        layer2 = [v11 layer];
        [layer2 setOpacity:0.0];

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

- (void)_switchToItemAtIndexOffset:(int64_t)offset shouldOvershoot:(BOOL)overshoot
{
  totalNumberOfItems = [(CEKWheelScrubberView *)self totalNumberOfItems];
  v7 = [(CEKWheelScrubberView *)self selectedIndex]+ offset;
  if (v7 >= 0 && v7 < totalNumberOfItems)
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

- (double)_alphaForVisibility:(int64_t)visibility
{
  if (visibility == 3)
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

  if (visibility != 2)
  {
    result = 1.0;
    v4 = visibility == 0;
    goto LABEL_8;
  }

  isDragging = [(CEKWheelScrubberView *)self isDragging];
  result = 0.0;
  if (isDragging)
  {
    return 1.0;
  }

  return result;
}

- (void)_updateSelectionLoupeAlphaAnimated:(BOOL)animated
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
  if (animated)
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

- (void)_updateCustomThumbnailAlphaAnimated:(BOOL)animated
{
  customThumbailHiddenIndices = [(CEKWheelScrubberView *)self customThumbailHiddenIndices];
  v6 = [customThumbailHiddenIndices containsIndex:{-[CEKWheelScrubberView selectedIndex](self, "selectedIndex")}];

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
  if (animated)
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

- (void)_updateOverlayVisibilityAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if ([(CEKWheelScrubberView *)self cellOverlayMode]== 1)
  {
    if (animatedCopy)
    {
      v5 = 0.25;
    }

    else
    {
      v5 = 0.0;
    }

    _collectionView = [(CEKWheelScrubberView *)self _collectionView];
    indexPathsForVisibleItems = [_collectionView indexPathsForVisibleItems];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __57__CEKWheelScrubberView__updateOverlayVisibilityAnimated___block_invoke;
    v8[3] = &unk_1E7CC67A0;
    v8[4] = self;
    *&v8[5] = v5;
    [indexPathsForVisibleItems enumerateObjectsUsingBlock:v8];
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