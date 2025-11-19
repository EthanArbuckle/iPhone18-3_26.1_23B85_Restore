@interface SUUIChartColumnHeaderView
- (NSArray)titles;
- (double)edgePadding;
- (void)_buttonAction:(id)a3;
- (void)_reloadSelectedButton;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)a3;
- (void)setSelectedTitleIndex:(int64_t)a3;
- (void)setTitles:(id)a3;
- (void)sizeToFit;
@end

@implementation SUUIChartColumnHeaderView

- (void)dealloc
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_buttons;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7++) removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8.receiver = self;
  v8.super_class = SUUIChartColumnHeaderView;
  [(SUUIChartColumnHeaderView *)&v8 dealloc];
}

- (void)setSelectedTitleIndex:(int64_t)a3
{
  if (self->_selectedTitleIndex != a3)
  {
    self->_selectedTitleIndex = a3;
    [(SUUIChartColumnHeaderView *)self _reloadSelectedButton];
  }
}

- (void)setTitles:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = [(SUUIChartColumnHeaderView *)self tintColor];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v4;
  v7 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v31;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v31 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v30 + 1) + 8 * i);
        v12 = objc_alloc_init(MEMORY[0x277D75220]);
        [v12 addTarget:self action:sel__buttonAction_ forControlEvents:64];
        v13 = [(SUUIChartColumnHeaderView *)self backgroundColor];
        [v12 setBackgroundColor:v13];

        [v12 setTitle:v11 forState:0];
        [v12 setTitleColor:v6 forState:1];
        [v12 setTitleColor:v6 forState:4];
        v14 = [MEMORY[0x277D75348] labelColor];
        [v12 setTitleColor:v14 forState:0];

        v15 = [v12 titleLabel];
        v16 = [MEMORY[0x277D74300] systemFontOfSize:17.0];
        [v15 setFont:v16];

        [v12 sizeToFit];
        [v5 addObject:v12];
        [(SUUIChartColumnHeaderView *)self addSubview:v12];
      }

      v8 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v8);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v17 = self->_buttons;
  v18 = [(NSArray *)v17 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v27;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v27 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v26 + 1) + 8 * j);
        [v22 removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];
        [v22 removeFromSuperview];
      }

      v19 = [(NSArray *)v17 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v19);
  }

  v23 = [v5 copy];
  buttons = self->_buttons;
  self->_buttons = v23;

  [(SUUIChartColumnHeaderView *)self _reloadSelectedButton];
}

- (NSArray)titles
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_buttons;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v11 + 1) + 8 * i) titleForState:{0, v11}];
        [v3 addObject:v9];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)layoutSubviews
{
  [(SUUIChartColumnHeaderView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(NSArray *)self->_buttons count];
  v12 = v11 - 1;
  if (v11 >= 1)
  {
    v13 = v11;
    [(SUUIChartColumnHeaderView *)self edgePadding];
    v15 = (v8 + v14 * -2.0 + (v12 * -25.0)) / v13;
    v19[0] = 0;
    v19[1] = v19;
    v19[2] = 0x2020000000;
    [(SUUIChartColumnHeaderView *)self edgePadding];
    v19[3] = v16;
    buttons = self->_buttons;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __43__SUUIChartColumnHeaderView_layoutSubviews__block_invoke;
    v18[3] = &unk_2798FB310;
    v18[6] = v4;
    v18[7] = v6;
    *&v18[8] = v8;
    v18[9] = v10;
    *&v18[10] = v15;
    v18[11] = v13;
    v18[4] = self;
    v18[5] = v19;
    [(NSArray *)buttons enumerateObjectsUsingBlock:v18];
    _Block_object_dispose(v19, 8);
  }
}

CGFloat __43__SUUIChartColumnHeaderView_layoutSubviews__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  [v5 frame];
  v8 = v7;
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 24);
  v11 = *(a1 + 72);
  v12 = (v11 - v7) * 0.5;
  v13 = floorf(v12);
  if (v6 >= *(a1 + 80))
  {
    v14 = *(a1 + 80);
  }

  else
  {
    v14 = v6;
  }

  [v5 setFrame:{SUUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(*(v9 + 24), v13, v14, v7, *(a1 + 48), *(a1 + 56), *(a1 + 64), v11)}];
  v15 = *(a1 + 88) >= 2 && *(*(a1 + 32) + 464) == a3;
  [v5 setSelected:v15];

  v17.origin.x = v10;
  v17.origin.y = v13;
  v17.size.width = v14;
  v17.size.height = v8;
  result = CGRectGetMaxX(v17) + 25.0;
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setBackgroundColor:(id)a3
{
  buttons = self->_buttons;
  v5 = a3;
  [(NSArray *)buttons makeObjectsPerformSelector:sel_setBackgroundColor_ withObject:v5];
  v6.receiver = self;
  v6.super_class = SUUIChartColumnHeaderView;
  [(SUUIChartColumnHeaderView *)&v6 setBackgroundColor:v5];
}

- (void)sizeToFit
{
  v23 = *MEMORY[0x277D85DE8];
  [(SUUIChartColumnHeaderView *)self frame];
  v4 = v3;
  v6 = v5;
  [(SUUIChartColumnHeaderView *)self edgePadding];
  v8 = v7 + v7;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = self->_buttons;
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        [v14 sizeToFit];
        [v14 frame];
        v8 = v8 + v15;
      }

      v11 = [(NSArray *)v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  v16 = [(NSArray *)self->_buttons count];
  if (v16 <= 1)
  {
    v17 = v8;
  }

  else
  {
    v17 = v8 + (v16 * 25.0);
  }

  [(SUUIChartColumnHeaderView *)self setFrame:v4, v6, v17, 44.0, v18];
}

- (void)_buttonAction:(id)a3
{
  v4 = [(NSArray *)self->_buttons indexOfObjectIdenticalTo:a3];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    self->_selectedTitleIndex = v4;
    [(SUUIChartColumnHeaderView *)self sendActionsForControlEvents:4096];

    [(SUUIChartColumnHeaderView *)self setNeedsLayout];
  }
}

- (double)edgePadding
{
  [(SUUIChartColumnHeaderView *)self size];
  v3 = v2 <= 341.0;
  result = 15.0;
  if (!v3)
  {
    return 20.0;
  }

  return result;
}

- (void)_reloadSelectedButton
{
  v3 = [(NSArray *)self->_buttons count];
  if (v3 >= 1)
  {
    v4 = v3;
    for (i = 0; i != v4; ++i)
    {
      v6 = [(NSArray *)self->_buttons objectAtIndex:i];
      v7 = v6;
      v8 = v4 != 1 && i == self->_selectedTitleIndex;
      [v6 setSelected:v8];
    }
  }
}

@end