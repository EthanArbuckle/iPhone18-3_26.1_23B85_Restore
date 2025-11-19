@interface NTKEditOptionPickerView
- (CGAffineTransform)contentTransform;
- (CGRect)_frameForContainerView;
- (NTKEditOptionPickerView)initWithOptions:(id)a3 selectedOption:(id)a4;
- (UIEdgeInsets)padding;
- (id)_selectedSideView;
- (void)_enumerateSideViewsWithBlock:(id)a3;
- (void)_tileContainerForTransitionDirection:(int64_t)a3;
- (void)_transitionToSelectedOption;
- (void)_updateContainer;
- (void)applyBreathingScale:(double)a3;
- (void)applyRubberBandingFraction:(double)a3;
- (void)decrementSelection;
- (void)incrementSelection;
- (void)layoutSubviews;
- (void)setActive:(BOOL)a3;
- (void)setContainerView:(id)a3;
- (void)setContentTransform:(CGAffineTransform *)a3;
- (void)setNumberOfSides:(unint64_t)a3;
- (void)setSelectedOptionIndex:(unint64_t)a3 animated:(BOOL)a4;
- (void)setTransitionFraction:(double)a3 fromIndex:(unint64_t)a4 toIndex:(unint64_t)a5;
@end

@implementation NTKEditOptionPickerView

- (NTKEditOptionPickerView)initWithOptions:(id)a3 selectedOption:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = NTKEditOptionPickerView;
  v8 = [(NTKEditOptionPickerView *)&v14 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  if (v8)
  {
    if (([v6 containsObject:v7] & 1) == 0)
    {
      v9 = [v6 arrayByAddingObject:v7];

      v6 = v9;
    }

    objc_storeStrong(&v8->_options, v6);
    v8->_numberOfOptions = [(NSArray *)v8->_options count];
    v8->_selectedOptionIndex = [v6 indexOfObject:v7];
    v10 = MEMORY[0x277CBF2C0];
    v11 = *(MEMORY[0x277CBF2C0] + 16);
    *&v8->_contentTransform.a = *MEMORY[0x277CBF2C0];
    *&v8->_contentTransform.c = v11;
    *&v8->_contentTransform.tx = *(v10 + 32);
    v12 = [(NTKEditOptionPickerView *)v8 _newContainerView];
    [(NTKEditOptionPickerView *)v8 setContainerView:v12];
  }

  return v8;
}

- (void)setContainerView:(id)a3
{
  v5 = a3;
  containerView = self->_containerView;
  if (containerView != v5)
  {
    v7 = v5;
    [(NTKEditOptionContainerView *)containerView removeFromSuperview];
    objc_storeStrong(&self->_containerView, a3);
    [(NTKEditOptionPickerView *)self addSubview:self->_containerView];
    [(NTKEditOptionPickerView *)self _updateContainer];
    v5 = v7;
  }
}

- (void)setContentTransform:(CGAffineTransform *)a3
{
  v4 = *&a3->c;
  v3 = *&a3->tx;
  *&self->_contentTransform.a = *&a3->a;
  *&self->_contentTransform.c = v4;
  *&self->_contentTransform.tx = v3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__NTKEditOptionPickerView_setContentTransform___block_invoke;
  v6[3] = &__block_descriptor_80_e37_v16__0__NTKEditOptionPickerSideView_8l;
  v5 = *&a3->c;
  v7 = *&a3->a;
  v8 = v5;
  v9 = *&a3->tx;
  [(NTKEditOptionPickerView *)self _enumerateSideViewsWithBlock:v6];
}

uint64_t __47__NTKEditOptionPickerView_setContentTransform___block_invoke(_OWORD *a1, void *a2)
{
  v2 = a1[3];
  v4[0] = a1[2];
  v4[1] = v2;
  v4[2] = a1[4];
  return [a2 applyContentTransform:v4];
}

- (void)_updateContainer
{
  self->_visibleOptionBufferSize = [(NTKEditOptionContainerView *)self->_containerView numberOfVisibleSides];
  if ([(NTKEditOptionContainerView *)self->_containerView numberOfSides])
  {
    v3 = 0;
    do
    {
      v4 = objc_alloc_init([(NTKEditOptionPickerView *)self _sideViewClass]);
      [(NTKEditOptionPickerView *)self _willDisplaySideView:v4];
      [(NTKEditOptionContainerView *)self->_containerView setView:v4 forSideAtIndex:v3];

      ++v3;
    }

    while (v3 < [(NTKEditOptionContainerView *)self->_containerView numberOfSides]);
  }

  [(NTKEditOptionPickerView *)self _tileContainerForTransitionDirection:0];

  [(NTKEditOptionPickerView *)self _transitionToSelectedOption];
}

- (void)setActive:(BOOL)a3
{
  if (self->_active != a3)
  {
    self->_active = a3;
    if (a3)
    {
      [(NTKEditOptionPickerView *)self _tileContainerForTransitionDirection:0];
    }
  }
}

- (void)setNumberOfSides:(unint64_t)a3
{
  if ([(NTKEditOptionContainerView *)self->_containerView numberOfSides]!= a3)
  {
    if (objc_opt_respondsToSelector())
    {
      [(NTKEditOptionContainerView *)self->_containerView setNumberOfSides:a3];
    }

    [(NTKEditOptionPickerView *)self _updateContainer];

    [(NTKEditOptionPickerView *)self setNeedsLayout];
  }
}

- (void)incrementSelection
{
  if (self->_selectedOptionIndex + 1 < self->_numberOfOptions)
  {
    [(NTKEditOptionPickerView *)self _tileContainerForTransitionDirection:1];
    ++self->_selectedOptionIndex;

    [(NTKEditOptionPickerView *)self _transitionAnimatedToSelectedOptionFromIndex:?];
  }
}

- (void)decrementSelection
{
  if (self->_selectedOptionIndex)
  {
    [(NTKEditOptionPickerView *)self _tileContainerForTransitionDirection:2];
    --self->_selectedOptionIndex;

    [(NTKEditOptionPickerView *)self _transitionAnimatedToSelectedOptionFromIndex:?];
  }
}

- (void)setSelectedOptionIndex:(unint64_t)a3 animated:(BOOL)a4
{
  if (a4)
  {
    selectedOptionIndex = self->_selectedOptionIndex;
    if (selectedOptionIndex <= a3)
    {
      if (selectedOptionIndex < a3)
      {
        do
        {
          [(NTKEditOptionPickerView *)self incrementSelection];
        }

        while (self->_selectedOptionIndex < a3);
      }
    }

    else
    {
      do
      {
        [(NTKEditOptionPickerView *)self decrementSelection];
      }

      while (self->_selectedOptionIndex > a3);
    }
  }

  else
  {
    self->_selectedOptionIndex = a3;
    [(NTKEditOptionPickerView *)self _tileContainerForTransitionDirection:0];

    [(NTKEditOptionPickerView *)self _transitionToSelectedOption];
  }
}

- (void)setTransitionFraction:(double)a3 fromIndex:(unint64_t)a4 toIndex:(unint64_t)a5
{
  selectedOptionIndex = self->_selectedOptionIndex;
  if (a3 <= 0.5)
  {
    v10 = a4;
    if (selectedOptionIndex == a4)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v10 = a5;
  if (selectedOptionIndex != a5)
  {
LABEL_5:
    self->_selectedOptionIndex = v10;
    [(NTKEditOptionPickerView *)self _tileContainerForTransitionDirection:0];
  }

LABEL_6:
  v11 = [(NTKEditOptionContainerView *)self->_containerView numberOfSides];
  v12 = a4 % v11;
  v13 = a5 % v11;
  containerView = self->_containerView;

  [(NTKEditOptionContainerView *)containerView transitionToFraction:v12 fromSideAtIndex:v13 toSideAtIndex:a3];
}

- (void)layoutSubviews
{
  containerView = self->_containerView;
  [(NTKEditOptionPickerView *)self _frameForContainerView];

  [(NTKEditOptionContainerView *)containerView setFrame:?];
}

- (void)applyBreathingScale:(double)a3
{
  memset(&v8, 0, sizeof(v8));
  v4 = *&self->_contentTransform.c;
  *&v7.a = *&self->_contentTransform.a;
  *&v7.c = v4;
  *&v7.tx = *&self->_contentTransform.tx;
  CGAffineTransformScale(&v8, &v7, a3, a3);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __47__NTKEditOptionPickerView_applyBreathingScale___block_invoke;
  v5[3] = &__block_descriptor_80_e37_v16__0__NTKEditOptionPickerSideView_8l;
  v6 = v8;
  [(NTKEditOptionPickerView *)self _enumerateSideViewsWithBlock:v5];
}

uint64_t __47__NTKEditOptionPickerView_applyBreathingScale___block_invoke(_OWORD *a1, void *a2)
{
  v2 = a1[3];
  v4[0] = a1[2];
  v4[1] = v2;
  v4[2] = a1[4];
  return [a2 applyContentTransform:v4];
}

- (void)applyRubberBandingFraction:(double)a3
{
  v5 = NTKScaleForRubberBandingFraction(a3);
  memset(&v12, 0, sizeof(v12));
  v6 = *&self->_contentTransform.c;
  *&v11.a = *&self->_contentTransform.a;
  *&v11.c = v6;
  *&v11.tx = *&self->_contentTransform.tx;
  CGAffineTransformScale(&v12, &v11, v5, v5);
  v7 = NTKAlphaForRubberBandingFraction(a3);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54__NTKEditOptionPickerView_applyRubberBandingFraction___block_invoke;
  v8[3] = &__block_descriptor_88_e37_v16__0__NTKEditOptionPickerSideView_8l;
  v9 = v12;
  v10 = v7;
  [(NTKEditOptionPickerView *)self _enumerateSideViewsWithBlock:v8];
}

void __54__NTKEditOptionPickerView_applyRubberBandingFraction___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);
  v5 = *(a1 + 32);
  v6 = v3;
  v7 = *(a1 + 64);
  v4 = a2;
  [v4 applyContentTransform:&v5];
  [v4 setAlpha:{*(a1 + 80), v5, v6, v7}];
}

- (CGRect)_frameForContainerView
{
  [(NTKEditOptionPickerView *)self bounds];
  top = self->_padding.top;
  left = self->_padding.left;
  v6 = v5 + left;
  v8 = v7 + top;
  v10 = v9 - (left + self->_padding.right);
  v12 = v11 - (top + self->_padding.bottom);
  result.size.height = v12;
  result.size.width = v10;
  result.origin.y = v8;
  result.origin.x = v6;
  return result;
}

- (id)_selectedSideView
{
  if ([(NTKEditOptionContainerView *)self->_containerView numberOfSides])
  {
    selectedOptionIndex = self->_selectedOptionIndex;
    v4 = selectedOptionIndex % [(NTKEditOptionContainerView *)self->_containerView numberOfSides];
  }

  else
  {
    v4 = 0;
  }

  return [(NTKEditOptionPickerView *)self _sideViewAtIndex:v4];
}

- (void)_tileContainerForTransitionDirection:(int64_t)a3
{
  v5 = [(NTKEditOptionContainerView *)self->_containerView numberOfSides];
  if (v5)
  {
    selectedOptionIndex = self->_selectedOptionIndex;
    visibleOptionBufferSize = self->_visibleOptionBufferSize;
    v8 = a3 == 2 ? -1 : 0;
    v9 = selectedOptionIndex - (a3 == 2) - visibleOptionBufferSize;
    v10 = a3 == 1 ? selectedOptionIndex + 1 : self->_selectedOptionIndex;
    v11 = v10 + visibleOptionBufferSize;
    v12 = self->_active ? 0x7FFFFFFFFFFFFFFFLL : self->_selectedOptionIndex;
    if (v9 <= v11)
    {
      v13 = v5;
      v14 = ((a3 == 1) | (2 * visibleOptionBufferSize)) - v8 + 1;
      do
      {
        v15 = [(NTKEditOptionPickerView *)self _sideViewAtIndex:(v13 + v9) % v13];
        v16 = 0;
        if ((v9 & 0x8000000000000000) != 0)
        {
          v17 = 0;
        }

        else
        {
          v17 = 0;
          if (v9 < self->_numberOfOptions && v12 != v9)
          {
            v16 = [(NSArray *)self->_options objectAtIndex:v9];
            v17 = (*(self->_optionToViewMapper + 2))();
          }
        }

        [v15 setOptionView:v17];
        [(NTKEditOptionPickerView *)self _configureSideView:v15 forOption:v16];

        ++v9;
        --v14;
      }

      while (v14);
    }
  }
}

- (void)_transitionToSelectedOption
{
  if ([(NTKEditOptionContainerView *)self->_containerView numberOfSides])
  {
    selectedOptionIndex = self->_selectedOptionIndex;
    v4 = selectedOptionIndex % [(NTKEditOptionContainerView *)self->_containerView numberOfSides];
  }

  else
  {
    v4 = 0;
  }

  containerView = self->_containerView;

  [(NTKEditOptionContainerView *)containerView transitionToSideAtIndex:v4];
}

- (void)_enumerateSideViewsWithBlock:(id)a3
{
  v6 = a3;
  if ([(NTKEditOptionContainerView *)self->_containerView numberOfSides])
  {
    v4 = 0;
    do
    {
      v5 = [(NTKEditOptionPickerView *)self _sideViewAtIndex:v4];
      v6[2](v6, v5);

      ++v4;
    }

    while (v4 < [(NTKEditOptionContainerView *)self->_containerView numberOfSides]);
  }
}

- (UIEdgeInsets)padding
{
  top = self->_padding.top;
  left = self->_padding.left;
  bottom = self->_padding.bottom;
  right = self->_padding.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGAffineTransform)contentTransform
{
  v3 = *&self[10].tx;
  *&retstr->a = *&self[10].c;
  *&retstr->c = v3;
  *&retstr->tx = *&self[11].a;
  return self;
}

@end