@interface MUPlaceVerticalCardContainerView
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (MUPlaceVerticalCardContainerView)initWithConfiguration:(id)configuration;
- (MUPlaceVerticalCardContainerView)initWithShowsSeparators:(BOOL)separators;
- (MUPlaceVerticalCardContainerViewDelegate)delegate;
- (NSDirectionalEdgeInsets)_resolvedBottomSeparatorInsetsForView:(id)view;
- (id)_rowAt:(CGPoint)at;
- (unint64_t)_indexOfRowAt:(CGPoint)at;
- (void)_handleLongPress:(id)press;
- (void)_handleSelectedRowView:(id)view atIndex:(unint64_t)index;
- (void)_updateForPlatterAvailability;
- (void)_updateSeparatorsIfNeeded:(id)needed;
- (void)pressesEnded:(id)ended withEvent:(id)event;
- (void)removeArrangedSubview:(id)subview;
- (void)setRowViews:(id)views;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
@end

@implementation MUPlaceVerticalCardContainerView

- (MUPlaceVerticalCardContainerViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)_rowAt:(CGPoint)at
{
  v4 = [(MUPlaceVerticalCardContainerView *)self _indexOfRowAt:at.x, at.y];
  arrangedSubviews = [(MUStackView *)self arrangedSubviews];
  v6 = [arrangedSubviews count];

  if (v4 >= v6)
  {
    v8 = 0;
  }

  else
  {
    arrangedSubviews2 = [(MUStackView *)self arrangedSubviews];
    v8 = [arrangedSubviews2 objectAtIndexedSubscript:v4];
  }

  return v8;
}

- (unint64_t)_indexOfRowAt:(CGPoint)at
{
  y = at.y;
  x = at.x;
  arrangedSubviews = [(MUStackView *)self arrangedSubviews];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__MUPlaceVerticalCardContainerView__indexOfRowAt___block_invoke;
  v8[3] = &__block_descriptor_48_e23_B32__0__UIView_8Q16_B24l;
  *&v8[4] = x;
  *&v8[5] = y;
  v6 = [arrangedSubviews indexOfObjectPassingTest:v8];

  return v6;
}

uint64_t __50__MUPlaceVerticalCardContainerView__indexOfRowAt___block_invoke(CGPoint *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  [v6 frame];
  if (CGRectContainsPoint(v9, a1[2]) && ([v6 isHidden] & 1) == 0)
  {
    *a4 = 1;
  }

  v7 = *a4;

  return v7;
}

- (void)removeArrangedSubview:(id)subview
{
  v7.receiver = self;
  v7.super_class = MUPlaceVerticalCardContainerView;
  [(MUStackView *)&v7 removeArrangedSubview:subview];
  arrangedSubviews = [(MUStackView *)self arrangedSubviews];
  lastObject = [arrangedSubviews lastObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = lastObject;
    if ([(MUPlaceVerticalCardConfiguration *)self->_configuration showSeparators])
    {
      [v6 setBottomHairlineHidden:1];
    }
  }
}

- (void)_handleSelectedRowView:(id)view atIndex:(unint64_t)index
{
  viewCopy = view;
  delegate = [(MUPlaceVerticalCardContainerView *)self delegate];
  [delegate verticalCardContainerView:self didSelectRow:viewCopy atIndex:index];
}

- (void)pressesEnded:(id)ended withEvent:(id)event
{
  endedCopy = ended;
  eventCopy = event;
  delegate = [(MUPlaceVerticalCardContainerView *)self delegate];
  if (delegate)
  {
    anyObject = [endedCopy anyObject];
    v10 = [anyObject key];
  }

  else
  {
    v10 = 0;
  }

  if ([v10 keyCode] != 40)
  {
    goto LABEL_11;
  }

  v11 = [MEMORY[0x1E69DCA38] focusSystemForEnvironment:self];
  focusedItem = [v11 focusedItem];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (-[MUStackView arrangedSubviews](self, "arrangedSubviews"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v13 containsObject:focusedItem], v13, !v14))
  {
LABEL_10:

LABEL_11:
    v22.receiver = self;
    v22.super_class = MUPlaceVerticalCardContainerView;
    [(MUPlaceVerticalCardContainerView *)&v22 pressesEnded:endedCopy withEvent:eventCopy];
    goto LABEL_12;
  }

  v15 = focusedItem;
  [v15 frame];
  MidX = CGRectGetMidX(v23);
  [v15 frame];
  v17 = [(MUPlaceVerticalCardContainerView *)self _indexOfRowAt:MidX, CGRectGetMidY(v24)];
  arrangedSubviews = [(MUStackView *)self arrangedSubviews];
  v19 = [arrangedSubviews count];

  if (v17 >= v19)
  {

    goto LABEL_10;
  }

  arrangedSubviews2 = [(MUStackView *)self arrangedSubviews];
  v21 = [arrangedSubviews2 objectAtIndexedSubscript:v17];
  [(MUPlaceVerticalCardContainerView *)self _handleSelectedRowView:v21 atIndex:v17];

LABEL_12:
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  if (self->_trackingSelectForRow != 0x7FFFFFFFFFFFFFFFLL)
  {
    eventCopy = event;
    window = [(MUPlaceVerticalCardContainerView *)self window];
    v7 = [eventCopy touchesForWindow:window];

    anyObject = [v7 anyObject];

    [anyObject locationInView:self];
    v8 = [(MUPlaceVerticalCardContainerView *)self _indexOfRowAt:?];
    if (v8 == self->_trackingSelectForRow)
    {
      v9 = v8;
      arrangedSubviews = [(MUStackView *)self arrangedSubviews];
      v11 = [arrangedSubviews count];

      if (v9 < v11)
      {
        arrangedSubviews2 = [(MUStackView *)self arrangedSubviews];
        v13 = [arrangedSubviews2 objectAtIndexedSubscript:v9];
        [(MUPlaceVerticalCardContainerView *)self _handleSelectedRowView:v13 atIndex:v9];

        self->_trackingSelectForRow = 0x7FFFFFFFFFFFFFFFLL;
      }
    }
  }
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  eventCopy = event;
  window = [(MUPlaceVerticalCardContainerView *)self window];
  v7 = [eventCopy touchesForWindow:window];

  anyObject = [v7 anyObject];

  if ([anyObject tapCount] == 1)
  {
    [anyObject locationInView:self];
    self->_trackingSelectForRow = [(MUPlaceVerticalCardContainerView *)self _indexOfRowAt:?];
  }
}

- (void)_handleLongPress:(id)press
{
  pressCopy = press;
  if ([pressCopy state] == 1)
  {
    [pressCopy locationInView:self];
    v4 = [(MUPlaceVerticalCardContainerView *)self _rowAt:?];
    objc_storeStrong(&self->_selectedRow, v4);
    if ([(UIView *)self->_selectedRow conformsToProtocol:&unk_1F45218F0])
    {
      [(UIView *)self->_selectedRow setSelected:1 animated:1];
    }
  }

  v5 = [objc_alloc(MEMORY[0x1E69DC9E0]) initWithDelegate:0];
  [(MUPlaceVerticalCardContainerView *)self addInteraction:v5];
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  if (self->_longPressRecognizer == begin)
  {
    [begin locationInView:self];
    v5 = [(MUPlaceVerticalCardContainerView *)self _indexOfRowAt:?];
    if (v5 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = 0;
    }

    else
    {
      v7 = v5;
      arrangedSubviews = [(MUStackView *)self arrangedSubviews];
      if (v7 <= [arrangedSubviews count])
      {
        arrangedSubviews2 = [(MUStackView *)self arrangedSubviews];
        v6 = [arrangedSubviews2 objectAtIndexedSubscript:v7];
      }

      else
      {
        v6 = 0;
      }
    }

    v3 = objc_opt_respondsToSelector();
  }

  else
  {
    v3 = 1;
  }

  return v3 & 1;
}

- (void)_updateSeparatorsIfNeeded:(id)needed
{
  v25 = *MEMORY[0x1E69E9840];
  neededCopy = needed;
  _mapsui_isRTL = [(UIView *)self _mapsui_isRTL];
  showSeparators = [(MUPlaceVerticalCardConfiguration *)self->_configuration showSeparators];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  reverseObjectEnumerator = [neededCopy reverseObjectEnumerator];
  v8 = [reverseObjectEnumerator countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v21;
    while (1)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        if (v10 || ([*(*(&v20 + 1) + 8 * i) isHidden] & 1) != 0)
        {
          if (v13 != v10 && showSeparators)
          {
            v14 = 0;
            goto LABEL_12;
          }
        }

        else
        {
          v10 = v13;
        }

        v14 = 1;
LABEL_12:
        [v13 setBottomHairlineHidden:v14];
        [(MUPlaceVerticalCardContainerView *)self _resolvedBottomSeparatorInsetsForView:v13];
        if (_mapsui_isRTL)
        {
          v17 = v16;
        }

        else
        {
          v17 = v15;
        }

        if (_mapsui_isRTL)
        {
          v18 = v15;
        }

        else
        {
          v18 = v16;
        }

        [v13 setLeftHairlineInset:v17];
        [v13 setRightHairlineInset:v18];
      }

      v9 = [reverseObjectEnumerator countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (!v9)
      {
        goto LABEL_22;
      }
    }
  }

  v10 = 0;
LABEL_22:

  v19 = *MEMORY[0x1E69E9840];
}

- (void)_updateForPlatterAvailability
{
  arrangedSubviews = [(MUStackView *)self arrangedSubviews];
  v4 = MUMap(arrangedSubviews, &__block_literal_global_0);

  [(MUPlaceVerticalCardContainerView *)self _updateSeparatorsIfNeeded:v4];
}

id __65__MUPlaceVerticalCardContainerView__updateForPlatterAvailability__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSDirectionalEdgeInsets)_resolvedBottomSeparatorInsetsForView:(id)view
{
  traitCollection = [(MUPlaceVerticalCardContainerView *)self traitCollection];
  _mapsUI_isWithinMUPlatterView = [traitCollection _mapsUI_isWithinMUPlatterView];

  v5 = 16.0;
  if (!_mapsUI_isWithinMUPlatterView)
  {
    v5 = 20.0;
  }

  v6 = 0.0;
  v7 = 0.0;
  v8 = v5;
  result.trailing = v8;
  result.bottom = v7;
  result.leading = v5;
  result.top = v6;
  return result;
}

- (void)setRowViews:(id)views
{
  viewsCopy = views;
  arrangedSubviews = [(MUStackView *)self arrangedSubviews];
  v5 = [arrangedSubviews isEqualToArray:viewsCopy];

  if ((v5 & 1) == 0)
  {
    [(MUPlaceVerticalCardContainerView *)self _updateSeparatorsIfNeeded:viewsCopy];
    [(MUStackView *)self setArrangedSubviews:viewsCopy];
  }
}

- (MUPlaceVerticalCardContainerView)initWithShowsSeparators:(BOOL)separators
{
  if (separators)
  {
    +[MUPlaceVerticalCardConfiguration separatorConfiguration];
  }

  else
  {
    +[MUPlaceVerticalCardConfiguration plainConfiguration];
  }
  v4 = ;
  v5 = [(MUPlaceVerticalCardContainerView *)self initWithConfiguration:v4];

  return v5;
}

- (MUPlaceVerticalCardContainerView)initWithConfiguration:(id)configuration
{
  v16[1] = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  v15.receiver = self;
  v15.super_class = MUPlaceVerticalCardContainerView;
  v6 = [(MUStackView *)&v15 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, configuration);
    [(MUStackView *)v7 setAxis:1];
    if ([(MUPlaceVerticalCardContainerView *)v7 shouldInvokeCopyOnLongPress])
    {
      v8 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:v7 action:sel__handleLongPress_];
      longPressRecognizer = v7->_longPressRecognizer;
      v7->_longPressRecognizer = v8;

      [(UILongPressGestureRecognizer *)v7->_longPressRecognizer setDelegate:v7];
      [(MUPlaceVerticalCardContainerView *)v7 addGestureRecognizer:v7->_longPressRecognizer];
    }

    v10 = objc_opt_self();
    v16[0] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    v12 = [(MUPlaceVerticalCardContainerView *)v7 registerForTraitChanges:v11 withAction:sel__updateForPlatterAvailability];
  }

  v13 = *MEMORY[0x1E69E9840];
  return v7;
}

@end