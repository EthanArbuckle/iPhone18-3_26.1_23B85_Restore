@interface CAMControlDrawerMenuButton
+ (id)_backgroundImage;
- (BOOL)_shouldTrackView:(id)view forTouchAtLocation:(CGPoint)location;
- (BOOL)beginTrackingWithTouch:(id)touch withEvent:(id)event;
- (BOOL)continueTrackingWithTouch:(id)touch withEvent:(id)event;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CAMControlDrawerMenuButton)initWithLayoutStyle:(int64_t)style;
- (CAMControlDrawerMenuButtonDelegate)delegate;
- (UIEdgeInsets)expansionInsets;
- (id)hudItemForAccessibilityHUDManager:(id)manager;
- (id)loadMenuItems;
- (unint64_t)_indexOfItemToTrackForTouchAtLocation:(CGPoint)location;
- (void)_loadMenuItemsIfNeeded;
- (void)_setExpanded:(BOOL)expanded animated:(BOOL)animated shouldNotify:(BOOL)notify;
- (void)_setHighlightedView:(id)view;
- (void)_updateHighlightedView;
- (void)_updateLabels;
- (void)_updateSubviewAlphas;
- (void)cancelTrackingWithEvent:(id)event;
- (void)didSelectMenuItem:(id)item;
- (void)endTrackingWithTouch:(id)touch withEvent:(id)event;
- (void)layoutSubviews;
- (void)selectedByAccessibilityHUDManager:(id)manager;
- (void)setExpansionInsets:(UIEdgeInsets)insets;
- (void)setNeedsLoadMenuItems;
- (void)setOrientation:(int64_t)orientation animated:(BOOL)animated;
- (void)updateLabelsIfNeeded;
@end

@implementation CAMControlDrawerMenuButton

+ (id)_backgroundImage
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__CAMControlDrawerMenuButton__backgroundImage__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_backgroundImage_onceToken_221 != -1)
  {
    dispatch_once(&_backgroundImage_onceToken_221, block);
  }

  v2 = _backgroundImage_resizableBackgroundImage;

  return v2;
}

void __46__CAMControlDrawerMenuButton__backgroundImage__block_invoke(uint64_t a1)
{
  v6.receiver = *(a1 + 32);
  v6.super_class = &OBJC_METACLASS___CAMControlDrawerMenuButton;
  v1 = objc_msgSendSuper2(&v6, sel__backgroundImage);
  v2 = _backgroundImage_resizableBackgroundImage;
  _backgroundImage_resizableBackgroundImage = v1;

  [_backgroundImage_resizableBackgroundImage size];
  v4 = [_backgroundImage_resizableBackgroundImage resizableImageWithCapInsets:{0.0, v3 * 0.5, 0.0, v3 * 0.5}];
  v5 = _backgroundImage_resizableBackgroundImage;
  _backgroundImage_resizableBackgroundImage = v4;
}

- (CAMControlDrawerMenuButton)initWithLayoutStyle:(int64_t)style
{
  v14.receiver = self;
  v14.super_class = CAMControlDrawerMenuButton;
  v3 = [(CAMControlDrawerButton *)&v14 initWithLayoutStyle:style];
  if (v3)
  {
    array = [MEMORY[0x1E695DF70] array];
    itemLabels = v3->__itemLabels;
    v3->__itemLabels = array;

    v3->__trackedItemIndex = 0x7FFFFFFFFFFFFFFFLL;
    v3->__needsLoadMenuItems = 1;
    v6 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v13.receiver = v3;
    v13.super_class = CAMControlDrawerMenuButton;
    v7 = [-[CAMControlDrawerMenuButton class](&v13 class)];
    v8 = [v6 initWithImage:v7];
    accessoryBackgroundView = v3->__accessoryBackgroundView;
    v3->__accessoryBackgroundView = v8;

    v10 = v3->__accessoryBackgroundView;
    _imageView = [(CAMControlDrawerButton *)v3 _imageView];
    [(CAMControlDrawerMenuButton *)v3 insertSubview:v10 belowSubview:_imageView];

    [(CAMControlDrawerMenuButton *)v3 _updateSubviewAlphas];
  }

  return v3;
}

- (void)layoutSubviews
{
  v72 = *MEMORY[0x1E69E9840];
  v68.receiver = self;
  v68.super_class = CAMControlDrawerMenuButton;
  [(CAMControlDrawerButton *)&v68 layoutSubviews];
  _itemLabels = [(CAMControlDrawerMenuButton *)self _itemLabels];
  _backgroundView = [(CAMControlDrawerButton *)self _backgroundView];
  [_backgroundView frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  _slashView = [(CAMControlDrawerButton *)self _slashView];
  _imageView = [(CAMControlDrawerButton *)self _imageView];
  [_imageView center];
  v16 = v15;
  v18 = v17;
  if ([(CAMControlDrawerMenuButton *)self isExpanded])
  {
    [(CAMControlDrawerMenuButton *)self expansionInsets];
    v19 = 0.0;
    v55 = v12;
    UIRectInset();
    v8 = v20;
    v22 = v21;
    v24 = v23;
    v54 = v25;
    [_backgroundView setFrame:?];
    [_imageView bounds];
    UIRectCenteredAboutPointScale();
    UIRectGetCenter();
    [_imageView setCenter:?];
    [_slashView bounds];
    UIRectCenteredAboutPointScale();
    UIRectGetCenter();
    [_slashView setCenter:?];
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v26 = _itemLabels;
    v27 = [v26 countByEnumeratingWithState:&v64 objects:v71 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v65;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v65 != v29)
          {
            objc_enumerationMutation(v26);
          }

          [*(*(&v64 + 1) + 8 * i) bounds];
          v19 = v19 + v31;
        }

        v28 = [v26 countByEnumeratingWithState:&v64 objects:v71 count:16];
      }

      while (v28);
    }

    [v26 count];
    image = [_backgroundView image];
    [image size];

    v73.size.height = v55;
    v73.origin.x = v54;
    v73.origin.y = v8;
    v73.size.width = v10;
    CGRectGetMaxX(v73);
    v74.origin.x = v54;
    v74.origin.y = v8;
    v74.size.width = v22;
    v74.size.height = v24;
    CGRectGetMidY(v74);
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v33 = v26;
    v34 = [v33 countByEnumeratingWithState:&v60 objects:v70 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v61;
      do
      {
        for (j = 0; j != v35; ++j)
        {
          if (*v61 != v36)
          {
            objc_enumerationMutation(v33);
          }

          v38 = *(*(&v60 + 1) + 8 * j);
          [v38 bounds];
          UIRectIntegralWithScale();
          v40 = v39;
          v42 = v41;
          v44 = v43;
          v46 = v45;
          UIRectGetCenter();
          [v38 setCenter:?];
          v75.origin.x = v40;
          v75.origin.y = v42;
          v75.size.width = v44;
          v75.size.height = v46;
          MaxX = CGRectGetMaxX(v75);
        }

        v35 = [v33 countByEnumeratingWithState:&v60 objects:v70 count:{16, MaxX}];
      }

      while (v35);
    }

    v6 = v54;
    v12 = v55;
  }

  else
  {
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v48 = _itemLabels;
    v49 = [v48 countByEnumeratingWithState:&v56 objects:v69 count:16];
    if (v49)
    {
      v50 = v49;
      v51 = *v57;
      do
      {
        for (k = 0; k != v50; ++k)
        {
          if (*v57 != v51)
          {
            objc_enumerationMutation(v48);
          }

          [*(*(&v56 + 1) + 8 * k) setCenter:{v16, v18}];
        }

        v50 = [v48 countByEnumeratingWithState:&v56 objects:v69 count:16];
      }

      while (v50);
    }
  }

  _accessoryBackgroundView = [(CAMControlDrawerMenuButton *)self _accessoryBackgroundView];
  [_accessoryBackgroundView setFrame:{v6, v8, v10, v12}];
}

- (void)setOrientation:(int64_t)orientation animated:(BOOL)animated
{
  v8.receiver = self;
  v8.super_class = CAMControlDrawerMenuButton;
  [(CAMControlDrawerButton *)&v8 setOrientation:orientation animated:animated];
  if ((orientation - 1) <= 1)
  {
    _itemLabels = [(CAMControlDrawerMenuButton *)self _itemLabels];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __54__CAMControlDrawerMenuButton_setOrientation_animated___block_invoke;
    v7[3] = &__block_descriptor_40_e24_v32__0__UILabel_8Q16_B24l;
    v7[4] = orientation;
    [_itemLabels enumerateObjectsUsingBlock:v7];
  }
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  v9.receiver = self;
  v9.super_class = CAMControlDrawerMenuButton;
  if ([(CAMControlDrawerMenuButton *)&v9 pointInside:event withEvent:?])
  {
    LOBYTE(isExpanded) = 1;
  }

  else
  {
    isExpanded = [(CAMControlDrawerMenuButton *)self isExpanded];
    if (isExpanded)
    {
      [(CAMControlDrawerMenuButton *)self expansionInsets];
      [(CAMControlDrawerMenuButton *)self bounds];
      UIRectInset();
      v10.x = x;
      v10.y = y;
      LOBYTE(isExpanded) = CGRectContainsPoint(v11, v10);
    }
  }

  return isExpanded;
}

- (BOOL)beginTrackingWithTouch:(id)touch withEvent:(id)event
{
  touchCopy = touch;
  eventCopy = event;
  if ([(CAMControlDrawerMenuButton *)self isExpanded])
  {
    [touchCopy locationInView:self];
    v9 = v8;
    v11 = v10;
    [(CAMControlDrawerMenuButton *)self _setTrackedItemIndex:[(CAMControlDrawerMenuButton *)self _indexOfItemToTrackForTouchAtLocation:?]];
    _accessoryBackgroundView = [(CAMControlDrawerMenuButton *)self _accessoryBackgroundView];
    [(CAMControlDrawerMenuButton *)self _setTrackingExpansionToggle:[(CAMControlDrawerMenuButton *)self _shouldTrackView:_accessoryBackgroundView forTouchAtLocation:v9, v11]];
  }

  else
  {
    [(CAMControlDrawerMenuButton *)self _setTrackingExpansionToggle:1];
  }

  v13 = [(CAMControlDrawerMenuButton *)self _isTrackingExpansionToggle]|| [(CAMControlDrawerMenuButton *)self _trackedItemIndex]!= 0x7FFFFFFFFFFFFFFFLL;
  [(CAMControlDrawerMenuButton *)self _setTouchInTrackedView:v13];
  [(CAMControlDrawerMenuButton *)self _updateHighlightedView];
  v16.receiver = self;
  v16.super_class = CAMControlDrawerMenuButton;
  v14 = [(CAMControlDrawerMenuButton *)&v16 beginTrackingWithTouch:touchCopy withEvent:eventCopy];

  return v14;
}

- (BOOL)continueTrackingWithTouch:(id)touch withEvent:(id)event
{
  eventCopy = event;
  touchCopy = touch;
  [touchCopy locationInView:self];
  v9 = v8;
  v11 = v10;
  if (![(CAMControlDrawerMenuButton *)self isTouchInside])
  {
LABEL_5:
    v13 = 0;
    goto LABEL_6;
  }

  if (![(CAMControlDrawerMenuButton *)self _isTrackingExpansionToggle])
  {
    if ([(CAMControlDrawerMenuButton *)self _trackedItemIndex]!= 0x7FFFFFFFFFFFFFFFLL)
    {
      _trackedItemIndex = [(CAMControlDrawerMenuButton *)self _trackedItemIndex];
      v13 = _trackedItemIndex == [(CAMControlDrawerMenuButton *)self _indexOfItemToTrackForTouchAtLocation:v9, v11];
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  _accessoryBackgroundView = [(CAMControlDrawerMenuButton *)self _accessoryBackgroundView];
  v13 = [(CAMControlDrawerMenuButton *)self _shouldTrackView:_accessoryBackgroundView forTouchAtLocation:v9, v11];

LABEL_6:
  [(CAMControlDrawerMenuButton *)self _setTouchInTrackedView:v13];
  [(CAMControlDrawerMenuButton *)self _updateHighlightedView];
  v17.receiver = self;
  v17.super_class = CAMControlDrawerMenuButton;
  v14 = [(CAMControlDrawerMenuButton *)&v17 continueTrackingWithTouch:touchCopy withEvent:eventCopy];

  return v14;
}

- (void)endTrackingWithTouch:(id)touch withEvent:(id)event
{
  touchCopy = touch;
  eventCopy = event;
  if ([(CAMControlDrawerMenuButton *)self isExpanded]&& [(CAMControlDrawerMenuButton *)self _isTouchInTrackedView])
  {
    [touchCopy locationInView:self];
    v9 = v8;
    v11 = v10;
    if ([(CAMControlDrawerMenuButton *)self _isTrackingExpansionToggle])
    {
      _accessoryBackgroundView = [(CAMControlDrawerMenuButton *)self _accessoryBackgroundView];
      v13 = [(CAMControlDrawerMenuButton *)self _shouldTrackView:_accessoryBackgroundView forTouchAtLocation:v9, v11];

      v14 = !v13;
      selfCopy2 = self;
LABEL_8:
      [(CAMControlDrawerMenuButton *)selfCopy2 _setExpanded:v14 animated:1 shouldNotify:1];
      goto LABEL_9;
    }

    if ([(CAMControlDrawerMenuButton *)self _trackedItemIndex]!= 0x7FFFFFFFFFFFFFFFLL)
    {
      v16 = [(CAMControlDrawerMenuButton *)self _indexOfItemToTrackForTouchAtLocation:v9, v11];
      if (v16 == [(CAMControlDrawerMenuButton *)self _trackedItemIndex])
      {
        _cachedMenuItems = [(CAMControlDrawerMenuButton *)self _cachedMenuItems];
        v18 = [_cachedMenuItems objectAtIndexedSubscript:v16];

        [(CAMControlDrawerMenuButton *)self didSelectMenuItem:v18];
        delegate = [(CAMControlDrawerMenuButton *)self delegate];
        [delegate menuButtonDidSelectItem:self];

        [(CAMControlDrawerMenuButton *)self _setExpanded:0 animated:1 shouldNotify:1];
      }
    }
  }

  else if ([(CAMControlDrawerMenuButton *)self _isTouchInTrackedView]&& [(CAMControlDrawerMenuButton *)self isExpandable])
  {
    selfCopy2 = self;
    v14 = 1;
    goto LABEL_8;
  }

LABEL_9:
  [(CAMControlDrawerMenuButton *)self _setTouchInTrackedView:0];
  [(CAMControlDrawerMenuButton *)self _setTrackingExpansionToggle:0];
  [(CAMControlDrawerMenuButton *)self _setTrackedItemIndex:0x7FFFFFFFFFFFFFFFLL];
  [(CAMControlDrawerMenuButton *)self _updateHighlightedView];
  v20.receiver = self;
  v20.super_class = CAMControlDrawerMenuButton;
  [(CAMControlDrawerMenuButton *)&v20 endTrackingWithTouch:touchCopy withEvent:eventCopy];
}

- (void)cancelTrackingWithEvent:(id)event
{
  eventCopy = event;
  [(CAMControlDrawerMenuButton *)self _setTouchInTrackedView:0];
  [(CAMControlDrawerMenuButton *)self _setTrackingExpansionToggle:0];
  [(CAMControlDrawerMenuButton *)self _setTrackedItemIndex:0x7FFFFFFFFFFFFFFFLL];
  [(CAMControlDrawerMenuButton *)self _updateHighlightedView];
  v5.receiver = self;
  v5.super_class = CAMControlDrawerMenuButton;
  [(CAMControlDrawerMenuButton *)&v5 cancelTrackingWithEvent:eventCopy];
}

- (unint64_t)_indexOfItemToTrackForTouchAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0x7FFFFFFFFFFFFFFFLL;
  if ([(CAMControlDrawerMenuButton *)self isExpanded])
  {
    _itemLabels = [(CAMControlDrawerMenuButton *)self _itemLabels];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __68__CAMControlDrawerMenuButton__indexOfItemToTrackForTouchAtLocation___block_invoke;
    v9[3] = &unk_1E76FC410;
    *&v9[6] = x;
    *&v9[7] = y;
    v9[4] = self;
    v9[5] = &v10;
    [_itemLabels enumerateObjectsUsingBlock:v9];
  }

  v7 = v11[3];
  _Block_object_dispose(&v10, 8);
  return v7;
}

uint64_t __68__CAMControlDrawerMenuButton__indexOfItemToTrackForTouchAtLocation___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) _shouldTrackView:a2 forTouchAtLocation:{*(a1 + 48), *(a1 + 56)}];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
    *a4 = 1;
  }

  return result;
}

- (BOOL)_shouldTrackView:(id)view forTouchAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  viewCopy = view;
  [viewCopy frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [viewCopy frame];
  v16 = v15;

  v21.origin.x = v8;
  v21.origin.y = v10;
  v21.size.width = v12;
  v21.size.height = v14;
  v22 = CGRectInset(v21, -20.0, -v16);
  v17 = x;
  v18 = y;

  return CGRectContainsPoint(v22, *&v17);
}

- (id)hudItemForAccessibilityHUDManager:(id)manager
{
  managerCopy = manager;
  [managerCopy locationOfAccessibilityGestureInView:self];
  v6 = v5;
  v8 = v7;
  if ([(CAMControlDrawerMenuButton *)self isExpanded]&& ([(CAMControlDrawerMenuButton *)self _accessoryBackgroundView], v9 = objc_claimAutoreleasedReturnValue(), v10 = [(CAMControlDrawerMenuButton *)self _shouldTrackView:v9 forTouchAtLocation:v6, v8], v9, !v10))
  {
    if ([(CAMControlDrawerMenuButton *)self isExpanded]&& (v13 = [(CAMControlDrawerMenuButton *)self _indexOfItemToTrackForTouchAtLocation:v6, v8], v13 != 0x7FFFFFFFFFFFFFFFLL))
    {
      v14 = v13;
      _cachedMenuItems = [(CAMControlDrawerMenuButton *)self _cachedMenuItems];
      v16 = [_cachedMenuItems objectAtIndexedSubscript:v14];

      v18.receiver = self;
      v18.super_class = CAMControlDrawerMenuButton;
      v11 = [(CAMControlDrawerButton *)&v18 hudItemForAccessibilityHUDManager:managerCopy];
      title = [v16 title];
      [v11 setTitle:title];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v19.receiver = self;
    v19.super_class = CAMControlDrawerMenuButton;
    v11 = [(CAMControlDrawerButton *)&v19 hudItemForAccessibilityHUDManager:managerCopy];
  }

  return v11;
}

- (void)selectedByAccessibilityHUDManager:(id)manager
{
  [manager locationOfAccessibilityGestureInView:self];
  v5 = v4;
  v7 = v6;
  if ([(CAMControlDrawerMenuButton *)self isExpanded]&& ([(CAMControlDrawerMenuButton *)self _accessoryBackgroundView], v8 = objc_claimAutoreleasedReturnValue(), v9 = [(CAMControlDrawerMenuButton *)self _shouldTrackView:v8 forTouchAtLocation:v5, v7], v8, !v9))
  {
    if ([(CAMControlDrawerMenuButton *)self isExpanded])
    {
      v10 = [(CAMControlDrawerMenuButton *)self _indexOfItemToTrackForTouchAtLocation:v5, v7];
      if (v10 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v11 = v10;
        _cachedMenuItems = [(CAMControlDrawerMenuButton *)self _cachedMenuItems];
        v13 = [_cachedMenuItems objectAtIndexedSubscript:v11];

        [(CAMControlDrawerMenuButton *)self didSelectMenuItem:v13];
        delegate = [(CAMControlDrawerMenuButton *)self delegate];
        [delegate menuButtonDidSelectItem:self];

        [(CAMControlDrawerMenuButton *)self _setExpanded:0 animated:1 shouldNotify:1];
      }
    }
  }

  else
  {
    [(CAMControlDrawerMenuButton *)self _setExpanded:[(CAMControlDrawerMenuButton *)self isExpanded]^ 1 animated:1 shouldNotify:1];
  }

  [(CAMControlDrawerMenuButton *)self cancelTouchTracking];

  [(CAMControlDrawerMenuButton *)self sendActionsForControlEvents:64];
}

- (void)_updateHighlightedView
{
  if ([(CAMControlDrawerMenuButton *)self _isTouchInTrackedView])
  {
    if ([(CAMControlDrawerMenuButton *)self _isTrackingExpansionToggle])
    {
      _imageView = [(CAMControlDrawerButton *)self _imageView];
    }

    else
    {
      _itemLabels = [(CAMControlDrawerMenuButton *)self _itemLabels];
      v5 = [_itemLabels objectAtIndexedSubscript:{-[CAMControlDrawerMenuButton _trackedItemIndex](self, "_trackedItemIndex")}];

      _imageView = v5;
    }
  }

  else
  {
    _imageView = 0;
  }

  v6 = _imageView;
  [(CAMControlDrawerMenuButton *)self _setHighlightedView:_imageView];
}

- (void)_setHighlightedView:(id)view
{
  viewCopy = view;
  highlightedView = self->__highlightedView;
  v18 = viewCopy;
  if (highlightedView != viewCopy)
  {
    if (highlightedView)
    {
      layer = [(UIView *)highlightedView layer];
      [CAMAnimationHelper animateLayer:layer forButtonHighlighted:0 layoutStyle:[(CAMControlDrawerButton *)self layoutStyle]];

      v8 = self->__highlightedView;
      _imageView = [(CAMControlDrawerButton *)self _imageView];

      if (v8 == _imageView)
      {
        _slashView = [(CAMControlDrawerButton *)self _slashView];
        layer2 = [_slashView layer];
        [CAMAnimationHelper animateLayer:layer2 forButtonHighlighted:0 layoutStyle:[(CAMControlDrawerButton *)self layoutStyle]];
      }
    }

    objc_storeStrong(&self->__highlightedView, view);
    v12 = self->__highlightedView;
    if (v12)
    {
      layer3 = [(UIView *)v12 layer];
      [CAMAnimationHelper animateLayer:layer3 forButtonHighlighted:1 layoutStyle:[(CAMControlDrawerButton *)self layoutStyle]];

      v14 = self->__highlightedView;
      _imageView2 = [(CAMControlDrawerButton *)self _imageView];

      if (v14 == _imageView2)
      {
        _slashView2 = [(CAMControlDrawerButton *)self _slashView];
        layer4 = [_slashView2 layer];
        [CAMAnimationHelper animateLayer:layer4 forButtonHighlighted:1 layoutStyle:[(CAMControlDrawerButton *)self layoutStyle]];
      }
    }
  }
}

- (void)_updateLabels
{
  [(CAMControlDrawerMenuButton *)self _loadMenuItemsIfNeeded];
  _cachedMenuItems = [(CAMControlDrawerMenuButton *)self _cachedMenuItems];
  v4 = [_cachedMenuItems count];
  _itemLabels = [(CAMControlDrawerMenuButton *)self _itemLabels];
  while ([_itemLabels count] < v4)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    [(CAMControlDrawerMenuButton *)self addSubview:v6];
    [_itemLabels addObject:v6];
    if ([(CAMControlDrawerButton *)self orientation]== 2)
    {
      CAMOrientationTransform([(CAMControlDrawerButton *)self orientation], v15);
      v14[0] = v15[0];
      v14[1] = v15[1];
      v14[2] = v15[2];
      [v6 setTransform:v14];
    }
  }

  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __43__CAMControlDrawerMenuButton__updateLabels__block_invoke;
  v11 = &unk_1E76FC438;
  v12 = _cachedMenuItems;
  selfCopy = self;
  v7 = _cachedMenuItems;
  [_itemLabels enumerateObjectsUsingBlock:&v8];
  [(CAMControlDrawerMenuButton *)self _updateSubviewAlphas:v8];
}

void __43__CAMControlDrawerMenuButton__updateLabels__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v22 = a2;
  v5 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  if ([*(a1 + 40) isMenuItemSelected:v5])
  {
    v6 = [MEMORY[0x1E69DC888] systemYellowColor];
    [v22 setTextColor:v6];

    [v5 selectedTitle];
  }

  else
  {
    v7 = [MEMORY[0x1E69DC888] whiteColor];
    [v22 setTextColor:v7];

    [v5 title];
  }
  v8 = ;
  v9 = [*(a1 + 40) traitCollection];
  v10 = [v9 preferredContentSizeCategory];
  [CAMFont cameraModeDialFontSizeForContentSize:v10];
  v12 = v11;

  v13 = [v22 text];
  if (([v8 isEqualToString:v13] & 1) == 0)
  {

    goto LABEL_8;
  }

  v14 = [v22 font];
  [v14 pointSize];
  v16 = v15;

  if (v12 != v16)
  {
LABEL_8:
    [v22 setText:v8];
    v17 = [CAMFont cameraFontOfSize:v12];
    [v22 setFont:v17];

    v18 = *MEMORY[0x1E695EFF8];
    v19 = *(MEMORY[0x1E695EFF8] + 8);
    [v22 intrinsicContentSize];
    [v22 setBounds:{v18, v19, v20, v21}];
  }
}

- (void)_updateSubviewAlphas
{
  isExpanded = [(CAMControlDrawerMenuButton *)self isExpanded];
  _cachedMenuItems = [(CAMControlDrawerMenuButton *)self _cachedMenuItems];
  v5 = [_cachedMenuItems count];

  _itemLabels = [(CAMControlDrawerMenuButton *)self _itemLabels];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __50__CAMControlDrawerMenuButton__updateSubviewAlphas__block_invoke;
  v9[3] = &__block_descriptor_41_e24_v32__0__UILabel_8Q16_B24l;
  v10 = isExpanded;
  v9[4] = v5;
  [_itemLabels enumerateObjectsUsingBlock:v9];

  if (isExpanded)
  {
    v7 = 1.0;
  }

  else
  {
    v7 = 0.0;
  }

  _accessoryBackgroundView = [(CAMControlDrawerMenuButton *)self _accessoryBackgroundView];
  [_accessoryBackgroundView setAlpha:v7];
}

uint64_t __50__CAMControlDrawerMenuButton__updateSubviewAlphas__block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v3 = 0.0;
  if (*(a1 + 40) == 1 && *(a1 + 32) > a3)
  {
    v3 = 1.0;
  }

  return [a2 setAlpha:v3];
}

- (void)setExpansionInsets:(UIEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.left;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_expansionInsets.top), vceqq_f64(v4, *&self->_expansionInsets.bottom)))) & 1) == 0)
  {
    self->_expansionInsets = insets;
    [(CAMControlDrawerMenuButton *)self setNeedsLayout];
  }
}

- (void)_setExpanded:(BOOL)expanded animated:(BOOL)animated shouldNotify:(BOOL)notify
{
  if (self->_expanded == expanded)
  {
    return;
  }

  notifyCopy = notify;
  animatedCopy = animated;
  expandedCopy = expanded;
  if (expanded)
  {
    [(CAMControlDrawerMenuButton *)self _updateLabels];
    if (!animatedCopy)
    {
LABEL_4:
      if (!notifyCopy)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  else if (!animated)
  {
    goto LABEL_4;
  }

  [(CAMControlDrawerMenuButton *)self layoutIfNeeded];
  if (notifyCopy)
  {
LABEL_5:
    delegate = [(CAMControlDrawerMenuButton *)self delegate];
    [delegate expandableButton:self willChangeExpanded:expandedCopy];
  }

LABEL_6:
  self->_expanded = expandedCopy;
  [(CAMControlDrawerMenuButton *)self setNeedsLayout];
  if (animatedCopy)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __65__CAMControlDrawerMenuButton__setExpanded_animated_shouldNotify___block_invoke;
    v18[3] = &unk_1E76F77B0;
    v18[4] = self;
    [MEMORY[0x1E69DD250] animateWithDuration:2 delay:v18 usingSpringWithDamping:0 initialSpringVelocity:0.5 options:0.0 animations:1.0 completion:1.0];
    if (expandedCopy)
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __65__CAMControlDrawerMenuButton__setExpanded_animated_shouldNotify___block_invoke_2;
      v17[3] = &unk_1E76F77B0;
      v17[4] = self;
      v10 = 0.05;
      v11 = 0.5;
      v12 = 1.0;
      v13 = 1.0;
      v14 = v17;
      v15 = 2;
    }

    else
    {
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __65__CAMControlDrawerMenuButton__setExpanded_animated_shouldNotify___block_invoke_3;
      v16[3] = &unk_1E76F77B0;
      v16[4] = self;
      v11 = 0.25;
      v10 = 0.0;
      v12 = 1.0;
      v14 = v16;
      v13 = 1.0;
      v15 = 0;
    }

    [MEMORY[0x1E69DD250] animateWithDuration:v15 delay:v14 usingSpringWithDamping:0 initialSpringVelocity:v11 options:v10 animations:v12 completion:v13];
  }

  else
  {

    [(CAMControlDrawerMenuButton *)self _updateSubviewAlphas];
  }
}

- (void)_loadMenuItemsIfNeeded
{
  if ([(CAMControlDrawerMenuButton *)self _needsLoadMenuItems])
  {
    loadMenuItems = [(CAMControlDrawerMenuButton *)self loadMenuItems];
    [(CAMControlDrawerMenuButton *)self _setCachedMenuItems:loadMenuItems];

    [(CAMControlDrawerMenuButton *)self _setNeedsLoadMenuItems:0];
  }
}

- (void)setNeedsLoadMenuItems
{
  [(CAMControlDrawerMenuButton *)self _setNeedsLoadMenuItems:1];
  if ([(CAMControlDrawerMenuButton *)self isExpanded])
  {

    [(CAMControlDrawerMenuButton *)self _updateLabels];
  }
}

- (void)updateLabelsIfNeeded
{
  if ([(CAMControlDrawerMenuButton *)self isExpanded])
  {

    [(CAMControlDrawerMenuButton *)self _updateLabels];
  }
}

- (id)loadMenuItems
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D920];
  v4 = NSStringFromSelector(a2);
  [v2 raise:v3 format:{@"%@ must be implemented by subclasses", v4}];

  return MEMORY[0x1E695E0F0];
}

- (void)didSelectMenuItem:(id)item
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D920];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"%@ must be implemented by subclasses", v5}];
}

- (UIEdgeInsets)expansionInsets
{
  top = self->_expansionInsets.top;
  left = self->_expansionInsets.left;
  bottom = self->_expansionInsets.bottom;
  right = self->_expansionInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CAMControlDrawerMenuButtonDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end