@interface MUAppleRatingSectionView
- (MUAppleRatingSectionView)initWithFrame:(CGRect)a3;
- (void)_updateAppearance;
- (void)setViewModels:(id)a3;
@end

@implementation MUAppleRatingSectionView

- (void)_updateAppearance
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_viewModels, "count")}];
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
        v14 = [MUAppleRatingRowView alloc];
        v15 = [(MUAppleRatingRowView *)v14 initWithFrame:0 ratingsCountAnimationEnabled:1 isInlineMode:v8, v9, v10, v11, v18];
        [(MUAppleRatingRowView *)v15 setWantsPercentageInSubtitle:1];
        [(MUAppleRatingRowView *)v15 setDirectionalLayoutMargins:12.0, 16.0, 12.0, 16.0];
        [(MUAppleRatingRowView *)v15 setViewModel:v13];
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

    [(MUAppleRatingSectionView *)self setAccessibilityIdentifier:@"AppleRatingSection"];
    [(MUAppleRatingSectionView *)self _updateAppearance];
  }
}

- (MUAppleRatingSectionView)initWithFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = MUAppleRatingSectionView;
  return [(MUPlaceVerticalCardContainerView *)&v4 initWithShowsSeparators:1, a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
}

@end