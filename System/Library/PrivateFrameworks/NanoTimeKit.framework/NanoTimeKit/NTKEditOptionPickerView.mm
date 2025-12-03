@interface NTKEditOptionPickerView
- (CGAffineTransform)contentTransform;
- (CGRect)_frameForContainerView;
- (NTKEditOptionPickerView)initWithOptions:(id)options selectedOption:(id)option;
- (UIEdgeInsets)padding;
- (id)_selectedSideView;
- (void)_enumerateSideViewsWithBlock:(id)block;
- (void)_tileContainerForTransitionDirection:(int64_t)direction;
- (void)_transitionToSelectedOption;
- (void)_updateContainer;
- (void)applyBreathingScale:(double)scale;
- (void)applyRubberBandingFraction:(double)fraction;
- (void)decrementSelection;
- (void)incrementSelection;
- (void)layoutSubviews;
- (void)setActive:(BOOL)active;
- (void)setContainerView:(id)view;
- (void)setContentTransform:(CGAffineTransform *)transform;
- (void)setNumberOfSides:(unint64_t)sides;
- (void)setSelectedOptionIndex:(unint64_t)index animated:(BOOL)animated;
- (void)setTransitionFraction:(double)fraction fromIndex:(unint64_t)index toIndex:(unint64_t)toIndex;
@end

@implementation NTKEditOptionPickerView

- (NTKEditOptionPickerView)initWithOptions:(id)options selectedOption:(id)option
{
  optionsCopy = options;
  optionCopy = option;
  v14.receiver = self;
  v14.super_class = NTKEditOptionPickerView;
  v8 = [(NTKEditOptionPickerView *)&v14 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  if (v8)
  {
    if (([optionsCopy containsObject:optionCopy] & 1) == 0)
    {
      v9 = [optionsCopy arrayByAddingObject:optionCopy];

      optionsCopy = v9;
    }

    objc_storeStrong(&v8->_options, optionsCopy);
    v8->_numberOfOptions = [(NSArray *)v8->_options count];
    v8->_selectedOptionIndex = [optionsCopy indexOfObject:optionCopy];
    v10 = MEMORY[0x277CBF2C0];
    v11 = *(MEMORY[0x277CBF2C0] + 16);
    *&v8->_contentTransform.a = *MEMORY[0x277CBF2C0];
    *&v8->_contentTransform.c = v11;
    *&v8->_contentTransform.tx = *(v10 + 32);
    _newContainerView = [(NTKEditOptionPickerView *)v8 _newContainerView];
    [(NTKEditOptionPickerView *)v8 setContainerView:_newContainerView];
  }

  return v8;
}

- (void)setContainerView:(id)view
{
  viewCopy = view;
  containerView = self->_containerView;
  if (containerView != viewCopy)
  {
    v7 = viewCopy;
    [(NTKEditOptionContainerView *)containerView removeFromSuperview];
    objc_storeStrong(&self->_containerView, view);
    [(NTKEditOptionPickerView *)self addSubview:self->_containerView];
    [(NTKEditOptionPickerView *)self _updateContainer];
    viewCopy = v7;
  }
}

- (void)setContentTransform:(CGAffineTransform *)transform
{
  v4 = *&transform->c;
  v3 = *&transform->tx;
  *&self->_contentTransform.a = *&transform->a;
  *&self->_contentTransform.c = v4;
  *&self->_contentTransform.tx = v3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__NTKEditOptionPickerView_setContentTransform___block_invoke;
  v6[3] = &__block_descriptor_80_e37_v16__0__NTKEditOptionPickerSideView_8l;
  v5 = *&transform->c;
  v7 = *&transform->a;
  v8 = v5;
  v9 = *&transform->tx;
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

- (void)setActive:(BOOL)active
{
  if (self->_active != active)
  {
    self->_active = active;
    if (active)
    {
      [(NTKEditOptionPickerView *)self _tileContainerForTransitionDirection:0];
    }
  }
}

- (void)setNumberOfSides:(unint64_t)sides
{
  if ([(NTKEditOptionContainerView *)self->_containerView numberOfSides]!= sides)
  {
    if (objc_opt_respondsToSelector())
    {
      [(NTKEditOptionContainerView *)self->_containerView setNumberOfSides:sides];
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

- (void)setSelectedOptionIndex:(unint64_t)index animated:(BOOL)animated
{
  if (animated)
  {
    selectedOptionIndex = self->_selectedOptionIndex;
    if (selectedOptionIndex <= index)
    {
      if (selectedOptionIndex < index)
      {
        do
        {
          [(NTKEditOptionPickerView *)self incrementSelection];
        }

        while (self->_selectedOptionIndex < index);
      }
    }

    else
    {
      do
      {
        [(NTKEditOptionPickerView *)self decrementSelection];
      }

      while (self->_selectedOptionIndex > index);
    }
  }

  else
  {
    self->_selectedOptionIndex = index;
    [(NTKEditOptionPickerView *)self _tileContainerForTransitionDirection:0];

    [(NTKEditOptionPickerView *)self _transitionToSelectedOption];
  }
}

- (void)setTransitionFraction:(double)fraction fromIndex:(unint64_t)index toIndex:(unint64_t)toIndex
{
  selectedOptionIndex = self->_selectedOptionIndex;
  if (fraction <= 0.5)
  {
    toIndexCopy = index;
    if (selectedOptionIndex == index)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  toIndexCopy = toIndex;
  if (selectedOptionIndex != toIndex)
  {
LABEL_5:
    self->_selectedOptionIndex = toIndexCopy;
    [(NTKEditOptionPickerView *)self _tileContainerForTransitionDirection:0];
  }

LABEL_6:
  numberOfSides = [(NTKEditOptionContainerView *)self->_containerView numberOfSides];
  v12 = index % numberOfSides;
  v13 = toIndex % numberOfSides;
  containerView = self->_containerView;

  [(NTKEditOptionContainerView *)containerView transitionToFraction:v12 fromSideAtIndex:v13 toSideAtIndex:fraction];
}

- (void)layoutSubviews
{
  containerView = self->_containerView;
  [(NTKEditOptionPickerView *)self _frameForContainerView];

  [(NTKEditOptionContainerView *)containerView setFrame:?];
}

- (void)applyBreathingScale:(double)scale
{
  memset(&v8, 0, sizeof(v8));
  v4 = *&self->_contentTransform.c;
  *&v7.a = *&self->_contentTransform.a;
  *&v7.c = v4;
  *&v7.tx = *&self->_contentTransform.tx;
  CGAffineTransformScale(&v8, &v7, scale, scale);
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

- (void)applyRubberBandingFraction:(double)fraction
{
  v5 = NTKScaleForRubberBandingFraction(fraction);
  memset(&v12, 0, sizeof(v12));
  v6 = *&self->_contentTransform.c;
  *&v11.a = *&self->_contentTransform.a;
  *&v11.c = v6;
  *&v11.tx = *&self->_contentTransform.tx;
  CGAffineTransformScale(&v12, &v11, v5, v5);
  v7 = NTKAlphaForRubberBandingFraction(fraction);
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

- (void)_tileContainerForTransitionDirection:(int64_t)direction
{
  numberOfSides = [(NTKEditOptionContainerView *)self->_containerView numberOfSides];
  if (numberOfSides)
  {
    selectedOptionIndex = self->_selectedOptionIndex;
    visibleOptionBufferSize = self->_visibleOptionBufferSize;
    v8 = direction == 2 ? -1 : 0;
    v9 = selectedOptionIndex - (direction == 2) - visibleOptionBufferSize;
    v10 = direction == 1 ? selectedOptionIndex + 1 : self->_selectedOptionIndex;
    v11 = v10 + visibleOptionBufferSize;
    v12 = self->_active ? 0x7FFFFFFFFFFFFFFFLL : self->_selectedOptionIndex;
    if (v9 <= v11)
    {
      v13 = numberOfSides;
      v14 = ((direction == 1) | (2 * visibleOptionBufferSize)) - v8 + 1;
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

- (void)_enumerateSideViewsWithBlock:(id)block
{
  blockCopy = block;
  if ([(NTKEditOptionContainerView *)self->_containerView numberOfSides])
  {
    v4 = 0;
    do
    {
      v5 = [(NTKEditOptionPickerView *)self _sideViewAtIndex:v4];
      blockCopy[2](blockCopy, v5);

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