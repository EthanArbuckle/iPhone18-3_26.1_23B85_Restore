@interface MUActionGroupSectionView
- (MUActionGroupSectionView)initWithConfiguration:(id)configuration;
- (MUActionGroupSectionView)initWithFrame:(CGRect)frame;
- (void)_updateAppearance;
- (void)setViewModels:(id)models;
@end

@implementation MUActionGroupSectionView

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
        v14 = [MUButtonCellRowView alloc];
        v15 = [(MUButtonCellRowView *)v14 initWithFrame:v8, v9, v10, v11, v18];
        [(MUButtonCellRowView *)v15 setViewModel:v13];
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

- (void)setViewModels:(id)models
{
  modelsCopy = models;
  if (([(NSArray *)self->_viewModels isEqual:?]& 1) == 0)
  {
    v4 = [modelsCopy copy];
    viewModels = self->_viewModels;
    self->_viewModels = v4;

    [(MUActionGroupSectionView *)self _updateAppearance];
  }
}

- (MUActionGroupSectionView)initWithConfiguration:(id)configuration
{
  v4.receiver = self;
  v4.super_class = MUActionGroupSectionView;
  return [(MUPlaceVerticalCardContainerView *)&v4 initWithConfiguration:configuration];
}

- (MUActionGroupSectionView)initWithFrame:(CGRect)frame
{
  v4 = [MUPlaceVerticalCardConfiguration plainConfiguration:frame.origin.x];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v6 stringByReplacingOccurrencesOfString:@"MU" withString:&stru_1F44CA030];
  [(MUActionGroupSectionView *)self setAccessibilityIdentifier:v7];

  v8 = [(MUActionGroupSectionView *)self initWithConfiguration:v4];
  return v8;
}

@end