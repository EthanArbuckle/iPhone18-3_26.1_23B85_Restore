@interface MUPlaceVerticalCardContainerView
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (MUPlaceVerticalCardContainerView)initWithConfiguration:(id)a3;
- (MUPlaceVerticalCardContainerView)initWithShowsSeparators:(BOOL)a3;
- (MUPlaceVerticalCardContainerViewDelegate)delegate;
- (NSDirectionalEdgeInsets)_resolvedBottomSeparatorInsetsForView:(id)a3;
- (id)_rowAt:(CGPoint)a3;
- (unint64_t)_indexOfRowAt:(CGPoint)a3;
- (void)_handleLongPress:(id)a3;
- (void)_handleSelectedRowView:(id)a3 atIndex:(unint64_t)a4;
- (void)_updateForPlatterAvailability;
- (void)_updateSeparatorsIfNeeded:(id)a3;
- (void)pressesEnded:(id)a3 withEvent:(id)a4;
- (void)removeArrangedSubview:(id)a3;
- (void)setRowViews:(id)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
@end

@implementation MUPlaceVerticalCardContainerView

- (MUPlaceVerticalCardContainerViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)_rowAt:(CGPoint)a3
{
  v4 = [(MUPlaceVerticalCardContainerView *)self _indexOfRowAt:a3.x, a3.y];
  v5 = [(MUStackView *)self arrangedSubviews];
  v6 = [v5 count];

  if (v4 >= v6)
  {
    v8 = 0;
  }

  else
  {
    v7 = [(MUStackView *)self arrangedSubviews];
    v8 = [v7 objectAtIndexedSubscript:v4];
  }

  return v8;
}

- (unint64_t)_indexOfRowAt:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(MUStackView *)self arrangedSubviews];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__MUPlaceVerticalCardContainerView__indexOfRowAt___block_invoke;
  v8[3] = &__block_descriptor_48_e23_B32__0__UIView_8Q16_B24l;
  *&v8[4] = x;
  *&v8[5] = y;
  v6 = [v5 indexOfObjectPassingTest:v8];

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

- (void)removeArrangedSubview:(id)a3
{
  v7.receiver = self;
  v7.super_class = MUPlaceVerticalCardContainerView;
  [(MUStackView *)&v7 removeArrangedSubview:a3];
  v4 = [(MUStackView *)self arrangedSubviews];
  v5 = [v4 lastObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    if ([(MUPlaceVerticalCardConfiguration *)self->_configuration showSeparators])
    {
      [v6 setBottomHairlineHidden:1];
    }
  }
}

- (void)_handleSelectedRowView:(id)a3 atIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = [(MUPlaceVerticalCardContainerView *)self delegate];
  [v7 verticalCardContainerView:self didSelectRow:v6 atIndex:a4];
}

- (void)pressesEnded:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MUPlaceVerticalCardContainerView *)self delegate];
  if (v8)
  {
    v9 = [v6 anyObject];
    v10 = [v9 key];
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
  v12 = [v11 focusedItem];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (-[MUStackView arrangedSubviews](self, "arrangedSubviews"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v13 containsObject:v12], v13, !v14))
  {
LABEL_10:

LABEL_11:
    v22.receiver = self;
    v22.super_class = MUPlaceVerticalCardContainerView;
    [(MUPlaceVerticalCardContainerView *)&v22 pressesEnded:v6 withEvent:v7];
    goto LABEL_12;
  }

  v15 = v12;
  [v15 frame];
  MidX = CGRectGetMidX(v23);
  [v15 frame];
  v17 = [(MUPlaceVerticalCardContainerView *)self _indexOfRowAt:MidX, CGRectGetMidY(v24)];
  v18 = [(MUStackView *)self arrangedSubviews];
  v19 = [v18 count];

  if (v17 >= v19)
  {

    goto LABEL_10;
  }

  v20 = [(MUStackView *)self arrangedSubviews];
  v21 = [v20 objectAtIndexedSubscript:v17];
  [(MUPlaceVerticalCardContainerView *)self _handleSelectedRowView:v21 atIndex:v17];

LABEL_12:
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  if (self->_trackingSelectForRow != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = a4;
    v6 = [(MUPlaceVerticalCardContainerView *)self window];
    v7 = [v5 touchesForWindow:v6];

    v14 = [v7 anyObject];

    [v14 locationInView:self];
    v8 = [(MUPlaceVerticalCardContainerView *)self _indexOfRowAt:?];
    if (v8 == self->_trackingSelectForRow)
    {
      v9 = v8;
      v10 = [(MUStackView *)self arrangedSubviews];
      v11 = [v10 count];

      if (v9 < v11)
      {
        v12 = [(MUStackView *)self arrangedSubviews];
        v13 = [v12 objectAtIndexedSubscript:v9];
        [(MUPlaceVerticalCardContainerView *)self _handleSelectedRowView:v13 atIndex:v9];

        self->_trackingSelectForRow = 0x7FFFFFFFFFFFFFFFLL;
      }
    }
  }
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v5 = a4;
  v6 = [(MUPlaceVerticalCardContainerView *)self window];
  v7 = [v5 touchesForWindow:v6];

  v8 = [v7 anyObject];

  if ([v8 tapCount] == 1)
  {
    [v8 locationInView:self];
    self->_trackingSelectForRow = [(MUPlaceVerticalCardContainerView *)self _indexOfRowAt:?];
  }
}

- (void)_handleLongPress:(id)a3
{
  v6 = a3;
  if ([v6 state] == 1)
  {
    [v6 locationInView:self];
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

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  if (self->_longPressRecognizer == a3)
  {
    [a3 locationInView:self];
    v5 = [(MUPlaceVerticalCardContainerView *)self _indexOfRowAt:?];
    if (v5 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = 0;
    }

    else
    {
      v7 = v5;
      v8 = [(MUStackView *)self arrangedSubviews];
      if (v7 <= [v8 count])
      {
        v9 = [(MUStackView *)self arrangedSubviews];
        v6 = [v9 objectAtIndexedSubscript:v7];
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

- (void)_updateSeparatorsIfNeeded:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(UIView *)self _mapsui_isRTL];
  v6 = [(MUPlaceVerticalCardConfiguration *)self->_configuration showSeparators];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = [v4 reverseObjectEnumerator];
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        if (v10 || ([*(*(&v20 + 1) + 8 * i) isHidden] & 1) != 0)
        {
          if (v13 != v10 && v6)
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
        if (v5)
        {
          v17 = v16;
        }

        else
        {
          v17 = v15;
        }

        if (v5)
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

      v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
  v3 = [(MUStackView *)self arrangedSubviews];
  v4 = MUMap(v3, &__block_literal_global_0);

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

- (NSDirectionalEdgeInsets)_resolvedBottomSeparatorInsetsForView:(id)a3
{
  v3 = [(MUPlaceVerticalCardContainerView *)self traitCollection];
  v4 = [v3 _mapsUI_isWithinMUPlatterView];

  v5 = 16.0;
  if (!v4)
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

- (void)setRowViews:(id)a3
{
  v6 = a3;
  v4 = [(MUStackView *)self arrangedSubviews];
  v5 = [v4 isEqualToArray:v6];

  if ((v5 & 1) == 0)
  {
    [(MUPlaceVerticalCardContainerView *)self _updateSeparatorsIfNeeded:v6];
    [(MUStackView *)self setArrangedSubviews:v6];
  }
}

- (MUPlaceVerticalCardContainerView)initWithShowsSeparators:(BOOL)a3
{
  if (a3)
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

- (MUPlaceVerticalCardContainerView)initWithConfiguration:(id)a3
{
  v16[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v15.receiver = self;
  v15.super_class = MUPlaceVerticalCardContainerView;
  v6 = [(MUStackView *)&v15 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, a3);
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