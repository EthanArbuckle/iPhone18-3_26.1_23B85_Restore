@interface MUPlaceTilesListView
- (MUPlaceTilesListView)initWithConfiguration:(id)a3;
- (MUPlaceTilesListView)initWithFrame:(CGRect)a3;
- (MUPlaceTilesListViewDelegate)listFeedbackDelegate;
- (void)_commonInit;
- (void)_updateAppearance;
- (void)setViewModels:(id)a3;
- (void)verticalCardContainerView:(id)a3 didSelectRow:(id)a4 atIndex:(unint64_t)a5;
@end

@implementation MUPlaceTilesListView

- (MUPlaceTilesListViewDelegate)listFeedbackDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_listFeedbackDelegate);

  return WeakRetained;
}

- (void)verticalCardContainerView:(id)a3 didSelectRow:(id)a4 atIndex:(unint64_t)a5
{
  v7 = [(NSArray *)self->_viewModels objectAtIndexedSubscript:a5, a4];
  v6 = [(MUPlaceTilesListView *)self listFeedbackDelegate];
  [v6 placeTilesListView:self didSelectViewModel:v7];
}

- (void)_updateAppearance
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = self->_viewModels;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    v8 = *MEMORY[0x1E695F058];
    v9 = *(MEMORY[0x1E695F058] + 8);
    v10 = *(MEMORY[0x1E695F058] + 16);
    v11 = *(MEMORY[0x1E695F058] + 24);
    do
    {
      v12 = 0;
      do
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v13 = *(*(&v18 + 1) + 8 * v12);
        v14 = [MUPlaceTileListContentView alloc];
        v15 = [(MUPlaceTileListContentView *)v14 initWithFrame:v8, v9, v10, v11, v18];
        [(MUPlaceTileListContentView *)v15 setViewModel:v13];
        [v3 addObject:v15];

        ++v12;
      }

      while (v6 != v12);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  v16 = [v3 copy];
  [(MUPlaceVerticalCardContainerView *)self setRowViews:v16];

  v17 = *MEMORY[0x1E69E9840];
}

- (void)setViewModels:(id)a3
{
  v6 = a3;
  if (([(NSArray *)self->_viewModels isEqual:?]& 1) == 0)
  {
    v4 = [v6 copy];
    viewModels = self->_viewModels;
    self->_viewModels = v4;

    [(MUPlaceTilesListView *)self _updateAppearance];
  }
}

- (void)_commonInit
{
  [(MUPlaceVerticalCardContainerView *)self setDelegate:self];

  [(MUPlaceTilesListView *)self setAccessibilityIdentifier:@"PlaceTilesList"];
}

- (MUPlaceTilesListView)initWithConfiguration:(id)a3
{
  v6.receiver = self;
  v6.super_class = MUPlaceTilesListView;
  v3 = [(MUPlaceVerticalCardContainerView *)&v6 initWithConfiguration:a3];
  v4 = v3;
  if (v3)
  {
    [(MUPlaceTilesListView *)v3 _commonInit];
  }

  return v4;
}

- (MUPlaceTilesListView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = MUPlaceTilesListView;
  v3 = [(MUPlaceVerticalCardContainerView *)&v6 initWithShowsSeparators:1, a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(MUPlaceTilesListView *)v3 _commonInit];
  }

  return v4;
}

@end