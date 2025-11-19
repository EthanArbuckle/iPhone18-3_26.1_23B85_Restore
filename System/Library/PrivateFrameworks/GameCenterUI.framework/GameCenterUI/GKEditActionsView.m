@interface GKEditActionsView
- (GKEditActionsView)initWithFrame:(CGRect)a3 cell:(id)a4;
- (void)didTouchEditAction:(id)a3;
- (void)didTouchMoreEditAction:(id)a3;
- (void)prepareActionButtons;
- (void)setActionButtons:(id)a3;
- (void)setVisibleWidth:(double)a3;
@end

@implementation GKEditActionsView

- (GKEditActionsView)initWithFrame:(CGRect)a3 cell:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v20.receiver = self;
  v20.super_class = GKEditActionsView;
  v10 = [(GKEditActionsView *)&v20 initWithFrame:x, y, width, height];
  v12 = v10;
  if (v10)
  {
    LODWORD(v11) = 1148846080;
    [(GKEditActionsView *)v10 setContentHuggingPriority:0 forAxis:v11];
    LODWORD(v13) = 1148846080;
    [(GKEditActionsView *)v12 setContentCompressionResistancePriority:0 forAxis:v13];
    v12->_cell = v9;
    v14 = objc_alloc_init(MEMORY[0x277CD9ED0]);
    maskLayer = v12->_maskLayer;
    v12->_maskLayer = v14;

    v16 = [MEMORY[0x277D75348] blackColor];
    -[CALayer setBackgroundColor:](v12->_maskLayer, "setBackgroundColor:", [v16 CGColor]);

    [(CALayer *)v12->_maskLayer setDelegate:v12];
    v17 = v12->_maskLayer;
    v18 = [(GKEditActionsView *)v12 layer];
    [v18 setMask:v17];

    [(GKEditActionsView *)v12 setVisibleWidth:0.0];
    [(GKEditActionsView *)v12 setUserInteractionEnabled:0];
  }

  return v12;
}

- (void)setVisibleWidth:(double)a3
{
  v3 = a3;
  if (self->_visibleWidth != a3)
  {
    self->_visibleWidth = a3;
    [(GKEditActionsView *)self bounds];
    x = v14.origin.x;
    y = v14.origin.y;
    width = v14.size.width;
    height = v14.size.height;
    v9 = CGRectGetWidth(v14);
    if (v9 < v3)
    {
      v3 = v9;
    }

    v15.origin.x = x;
    v15.origin.y = y;
    v15.size.width = width;
    v15.size.height = height;
    v10 = CGRectGetWidth(v15) - v3;
    v16.origin.x = x;
    v16.origin.y = y;
    v16.size.width = width;
    v16.size.height = height;
    v11 = CGRectGetHeight(v16);
    maskLayer = self->_maskLayer;

    [(CALayer *)maskLayer setFrame:v10, 0.0, v3, v11];
  }
}

- (void)prepareActionButtons
{
  if (!self->_actionButtons)
  {
    v24 = v2;
    v25 = v3;
    v5 = [MEMORY[0x277CBEB18] array];
    v6 = [(GKCollectionViewCell *)self->_cell editActions];
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __41__GKEditActionsView_prepareActionButtons__block_invoke;
    v21 = &unk_279669BF0;
    v22 = self;
    v7 = v5;
    v23 = v7;
    [v6 enumerateObjectsUsingBlock:&v18];

    v8 = [(GKCollectionViewCell *)self->_cell editActions:v18];
    v9 = [v8 count];

    if (v9 >= 3)
    {
      v10 = [GKButton buttonWithType:0];
      v11 = GKGameCenterUIFrameworkBundle();
      v12 = GKGetLocalizedStringFromTableInBundle();
      [v10 setTitle:v12 forState:0];

      v13 = [v10 titleLabel];
      [v13 setNumberOfLines:0];

      v14 = [MEMORY[0x277D0C8B0] textStyle];
      v15 = [v14 cellActionItem];
      [v10 applyTextStyle:v15];

      v16 = [MEMORY[0x277D0C868] sharedPalette];
      v17 = [v16 cellActionColor];
      [v10 setBackgroundColor:v17];

      [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v10 setContentEdgeInsets:{0.0, 9.0, 0.0, 9.0}];
      [v10 addTarget:self action:sel_didTouchMoreEditAction_ forControlEvents:64];
      [v7 addObject:v10];
    }

    [(GKEditActionsView *)self setActionButtons:v7];
  }
}

void __41__GKEditActionsView_prepareActionButtons__block_invoke(uint64_t a1, void *a2, uint64_t a3, char *a4)
{
  v7 = a2;
  v19 = [GKButton buttonWithType:0];
  v8 = [v7 name];
  [v19 setTitle:v8 forState:0];

  v9 = [v19 titleLabel];
  [v9 setNumberOfLines:0];

  v10 = [MEMORY[0x277D0C8B0] textStyle];
  v11 = [v10 cellActionItem];
  [v19 applyTextStyle:v11];

  LODWORD(v10) = [v7 destructive];
  v12 = [MEMORY[0x277D0C868] sharedPalette];
  v13 = v12;
  if (v10)
  {
    [v12 cellActionDestructiveColor];
  }

  else
  {
    [v12 cellActionColor];
  }
  v14 = ;
  [v19 setBackgroundColor:v14];

  [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v19 setContentEdgeInsets:{0.0, 9.0, 0.0, 9.0}];
  [v19 addTarget:*(a1 + 32) action:sel_didTouchEditAction_ forControlEvents:64];
  [*(a1 + 40) addObject:v19];
  v15 = [*(*(a1 + 32) + 424) editActions];
  v16 = [v15 count];
  if (a3)
  {
    v17 = 0;
  }

  else
  {
    v17 = v16 > 2;
  }

  v18 = v17;
  *a4 = v18;
}

- (void)setActionButtons:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a3;
  actionButtons = self->_actionButtons;
  if (actionButtons != v5)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v7 = actionButtons;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v31;
      do
      {
        v11 = 0;
        do
        {
          if (*v31 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v30 + 1) + 8 * v11++) removeFromSuperview];
        }

        while (v9 != v11);
        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v9);
    }

    objc_storeStrong(&self->_actionButtons, a3);
    if (self->_editActionConstraints)
    {
      [(GKEditActionsView *)self removeConstraints:?];
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v12 = self->_actionButtons;
    v13 = [(NSArray *)v12 countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v27;
      do
      {
        v16 = 0;
        do
        {
          if (*v27 != v15)
          {
            objc_enumerationMutation(v12);
          }

          [(GKEditActionsView *)self addSubview:*(*(&v26 + 1) + 8 * v16++)];
        }

        while (v14 != v16);
        v14 = [(NSArray *)v12 countByEnumeratingWithState:&v26 objects:v34 count:16];
      }

      while (v14);
    }

    v17 = [MEMORY[0x277CBEB18] array];
    v18 = self->_actionButtons;
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __38__GKEditActionsView_setActionButtons___block_invoke;
    v23 = &unk_279669C18;
    v24 = v17;
    v25 = self;
    v19 = v17;
    [(NSArray *)v18 enumerateObjectsUsingBlock:&v20];
    [(GKEditActionsView *)self setEditActionConstraints:v19, v20, v21, v22, v23];
    [(GKEditActionsView *)self addConstraints:self->_editActionConstraints];
  }
}

void __38__GKEditActionsView_setActionButtons___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v20 = a2;
  v5 = *(a1 + 32);
  v6 = [MEMORY[0x277CCAAD0] constraintWithItem:v20 attribute:8 relatedBy:0 toItem:*(a1 + 40) attribute:8 multiplier:1.0 constant:0.0];
  [v5 addObject:v6];

  v7 = *(a1 + 32);
  v8 = [MEMORY[0x277CCAAD0] constraintWithItem:v20 attribute:3 relatedBy:0 toItem:*(a1 + 40) attribute:3 multiplier:1.0 constant:0.0];
  [v7 addObject:v8];

  v9 = MEMORY[0x277CCAAD0];
  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  if (a3)
  {
    v12 = [*(v10 + 440) objectAtIndexedSubscript:a3 - 1];
    v13 = [v9 constraintWithItem:v20 attribute:2 relatedBy:0 toItem:v12 attribute:1 multiplier:1.0 constant:0.0];
    [v11 addObject:v13];
  }

  else
  {
    v14 = [MEMORY[0x277CCAAD0] constraintWithItem:v20 attribute:2 relatedBy:0 toItem:v10 attribute:2 multiplier:1.0 constant:0.0];
    [v11 addObject:v14];
  }

  if ([*(*(a1 + 40) + 440) count] - 1 == a3)
  {
    v15 = *(a1 + 32);
    v16 = [MEMORY[0x277CCAAD0] constraintWithItem:*(a1 + 40) attribute:1 relatedBy:0 toItem:v20 attribute:1 multiplier:1.0 constant:0.0];
    [v15 addObject:v16];
  }

  v17 = *(a1 + 32);
  v18 = [MEMORY[0x277CCAAD0] constraintWithItem:v20 attribute:7 relatedBy:1 toItem:0 attribute:0 multiplier:1.0 constant:72.0];
  [v17 addObject:v18];

  LODWORD(v19) = 1148846080;
  [v20 setContentCompressionResistancePriority:0 forAxis:v19];
}

- (void)didTouchEditAction:(id)a3
{
  v4 = [(NSArray *)self->_actionButtons indexOfObject:a3];
  v5 = [(GKCollectionViewCell *)self->_cell editActions];
  v6 = [v5 objectAtIndexedSubscript:v4];
  v7 = [v6 selector];

  if (v7)
  {
    [(GKEditActionsView *)self setUserInteractionEnabled:0];
    v8 = [MEMORY[0x277D75128] sharedApplication];
    [v8 _gkSendAction:v7 viaResponder:self withObject:self->_cell];
  }
}

- (void)didTouchMoreEditAction:(id)a3
{
  v4 = [MEMORY[0x277D75110] alertControllerWithTitle:0 message:0 preferredStyle:0];
  v5 = [(GKCollectionViewCell *)self->_cell editActions];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __44__GKEditActionsView_didTouchMoreEditAction___block_invoke;
  v18[3] = &unk_279669BF0;
  v6 = v4;
  v19 = v6;
  v20 = self;
  [v5 enumerateObjectsUsingBlock:v18];

  v7 = MEMORY[0x277D750F8];
  v8 = GKGameCenterUIFrameworkBundle();
  v9 = GKGetLocalizedStringFromTableInBundle();
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __44__GKEditActionsView_didTouchMoreEditAction___block_invoke_3;
  v17[3] = &unk_279669C68;
  v17[4] = self;
  v10 = [v7 actionWithTitle:v9 style:1 handler:v17];
  [v6 addAction:v10];

  v11 = [MEMORY[0x277D75128] sharedApplication];
  v12 = [v11 delegate];
  v13 = [v12 window];
  v14 = [v13 rootViewController];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = [v14 viewControllers];
    v16 = [v15 objectAtIndex:0];

    v14 = v16;
  }

  [v14 presentViewController:v6 animated:1 completion:0];
}

void __44__GKEditActionsView_didTouchMoreEditAction___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    v7 = *(a1 + 32);
    v8 = MEMORY[0x277D750F8];
    v9 = [v5 name];
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __44__GKEditActionsView_didTouchMoreEditAction___block_invoke_2;
    v16 = &unk_279669C40;
    v10 = v6;
    v11 = *(a1 + 40);
    v17 = v10;
    v18 = v11;
    v12 = [v8 actionWithTitle:v9 style:0 handler:&v13];
    [v7 addAction:{v12, v13, v14, v15, v16}];
  }
}

void __44__GKEditActionsView_didTouchMoreEditAction___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277D75128] sharedApplication];
  [v2 _gkSendAction:objc_msgSend(*(a1 + 32) viaResponder:"selector") withObject:{*(a1 + 40), *(*(a1 + 40) + 424)}];
}

void __44__GKEditActionsView_didTouchMoreEditAction___block_invoke_3(uint64_t a1)
{
  v2 = [MEMORY[0x277D75128] sharedApplication];
  [v2 _gkSendAction:sel_willDismissActionSheetFromCell_ viaResponder:*(a1 + 32) withObject:*(*(a1 + 32) + 424)];
}

@end