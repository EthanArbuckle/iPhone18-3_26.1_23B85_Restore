@interface MUPlaceInfoSectionView
- (MUPlaceInfoSectionView)initWithFrame:(CGRect)frame;
- (id)draggableContent;
- (void)_updateAppearance;
- (void)setViewModels:(id)models;
@end

@implementation MUPlaceInfoSectionView

- (id)draggableContent
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  arrangedSubviews = [(MUStackView *)self arrangedSubviews];
  v5 = [arrangedSubviews countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(arrangedSubviews);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = objc_alloc_init(MUInfoCardDraggableContent);
        [(MUInfoCardDraggableContent *)v10 setView:v9];
        viewModel = [v9 viewModel];
        valueString = [viewModel valueString];
        [(MUInfoCardDraggableContent *)v10 setDraggableContent:valueString];

        -[MUInfoCardDraggableContent setAnalyticsTarget:](v10, "setAnalyticsTarget:", [viewModel analyticsTarget]);
        [v3 addObject:v10];
      }

      v6 = [arrangedSubviews countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v13 = [v3 copy];
  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (void)_updateAppearance
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = self->_viewModels;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    v8 = *MEMORY[0x1E695F058];
    v9 = *(MEMORY[0x1E695F058] + 8);
    v10 = *(MEMORY[0x1E695F058] + 16);
    v11 = *(MEMORY[0x1E695F058] + 24);
    do
    {
      v12 = 0;
      do
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v13 = *(*(&v20 + 1) + 8 * v12);
        isDeveloperPlaceCard = [(MUPlaceVerticalCardContainerView *)self isDeveloperPlaceCard];
        v15 = [MULabeledValueActionRowView alloc];
        if (isDeveloperPlaceCard)
        {
          initForDeveloperPlaceCard = [(MULabeledValueActionRowView *)v15 initForDeveloperPlaceCard];
        }

        else
        {
          initForDeveloperPlaceCard = [(MULabeledValueActionRowView *)v15 initWithFrame:v8, v9, v10, v11];
        }

        v17 = initForDeveloperPlaceCard;
        [(MULabeledValueActionRowView *)initForDeveloperPlaceCard setViewModel:v13];
        [v3 addObject:v17];

        ++v12;
      }

      while (v6 != v12);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v6);
  }

  v18 = [v3 copy];
  [(MUPlaceVerticalCardContainerView *)self setRowViews:v18];

  v19 = *MEMORY[0x1E69E9840];
}

- (void)setViewModels:(id)models
{
  modelsCopy = models;
  if (([(NSArray *)self->_viewModels isEqual:?]& 1) == 0)
  {
    v4 = [modelsCopy copy];
    viewModels = self->_viewModels;
    self->_viewModels = v4;

    [(MUPlaceInfoSectionView *)self _updateAppearance];
  }
}

- (MUPlaceInfoSectionView)initWithFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = MUPlaceInfoSectionView;
  return [(MUPlaceVerticalCardContainerView *)&v4 initWithShowsSeparators:1, frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
}

@end