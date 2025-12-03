@interface SUUICrossFadingTabBar
- (SUUICrossFadingTabBar)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setTabBarButtons:(id)buttons;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation SUUICrossFadingTabBar

- (SUUICrossFadingTabBar)initWithFrame:(CGRect)frame
{
  v12.receiver = self;
  v12.super_class = SUUICrossFadingTabBar;
  v3 = [(SUUICrossFadingTabBar *)&v12 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(SUUICrossFadingTabBar *)v3 bounds];
    v9 = [[SUUIScrollingTabBarBackgroundView alloc] initWithFrame:v5, v6, v7, v8];
    backgroundView = v4->_backgroundView;
    v4->_backgroundView = v9;

    [(SUUIScrollingTabBarBackgroundView *)v4->_backgroundView setShowsBackdrop:1];
    [(SUUIScrollingTabBarBackgroundView *)v4->_backgroundView setShowsTopHairline:1];
    [(SUUICrossFadingTabBar *)v4 addSubview:v4->_backgroundView];
  }

  return v4;
}

- (void)layoutSubviews
{
  v18.receiver = self;
  v18.super_class = SUUICrossFadingTabBar;
  [(SUUICrossFadingTabBar *)&v18 layoutSubviews];
  [(SUUICrossFadingTabBar *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(SUUIScrollingTabBarBackgroundView *)self->_backgroundView setFrame:?];
  v11 = [(NSArray *)self->_tabBarButtons count];
  v19.origin.x = v4;
  v19.origin.y = v6;
  v19.size.width = v8;
  v19.size.height = v10;
  CGRectGetWidth(v19);
  UICeilToViewScale();
  v13 = v12;
  v14 = [MEMORY[0x277D75D18] userInterfaceLayoutDirectionForSemanticContentAttribute:{-[SUUICrossFadingTabBar semanticContentAttribute](self, "semanticContentAttribute")}];
  tabBarButtons = self->_tabBarButtons;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __39__SUUICrossFadingTabBar_layoutSubviews__block_invoke;
  v16[3] = &__block_descriptor_97_e44_v32__0__SUUICrossFadingTabBarButton_8Q16_B24l;
  v17 = v14 == 0;
  v16[4] = v11;
  v16[5] = 0x4000000000000000;
  v16[6] = v13;
  v16[7] = 0x4010000000000000;
  *&v16[8] = v4;
  *&v16[9] = v6;
  *&v16[10] = v8;
  *&v16[11] = v10;
  [(NSArray *)tabBarButtons enumerateObjectsUsingBlock:v16];
}

void __39__SUUICrossFadingTabBar_layoutSubviews__block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v4 = *(MEMORY[0x277CBF3A0] + 24);
  if ((*(a1 + 96) & 1) == 0)
  {
    a3 = *(a1 + 32) + ~a3;
  }

  v5 = *(a1 + 64);
  v6 = *(a1 + 40) + (*(a1 + 48) + *(a1 + 56)) * a3;
  v7 = *(a1 + 72);
  v8 = *(a1 + 80);
  v9 = *(a1 + 88);
  v13 = a2;
  v15.origin.x = v5;
  v15.origin.y = v7;
  v15.size.width = v8;
  v15.size.height = v9;
  v10 = CGRectGetMinY(v15) + -1.0;
  v11 = *(a1 + 48);
  MaxY = CGRectGetMaxY(*(a1 + 64));
  v16.origin.x = v6;
  v16.origin.y = v10;
  v16.size.width = v11;
  v16.size.height = v4;
  [v13 setFrame:{v6, v10, v11, MaxY - CGRectGetMinY(v16)}];
}

- (void)traitCollectionDidChange:(id)change
{
  v10.receiver = self;
  v10.super_class = SUUICrossFadingTabBar;
  changeCopy = change;
  [(SUUICrossFadingTabBar *)&v10 traitCollectionDidChange:changeCopy];
  v5 = [(SUUICrossFadingTabBar *)self traitCollection:v10.receiver];
  [v5 displayScale];
  v7 = v6;
  [changeCopy displayScale];
  v9 = v8;

  if (vabdd_f64(v7, v9) > 0.00000011920929)
  {
    [(SUUICrossFadingTabBar *)self setNeedsLayout];
  }
}

- (void)setTabBarButtons:(id)buttons
{
  v31 = *MEMORY[0x277D85DE8];
  buttonsCopy = buttons;
  tabBarButtons = self->_tabBarButtons;
  if (tabBarButtons != buttonsCopy)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v6 = tabBarButtons;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v26;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v26 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v25 + 1) + 8 * i);
          if (![(NSArray *)buttonsCopy containsObject:v11])
          {
            [v11 removeFromSuperview];
          }
        }

        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v8);
    }

    v12 = [(NSArray *)buttonsCopy copy];
    v13 = self->_tabBarButtons;
    self->_tabBarButtons = v12;

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v14 = self->_tabBarButtons;
    v15 = [(NSArray *)v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v22;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v22 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v21 + 1) + 8 * j);
          superview = [v19 superview];

          if (superview != self)
          {
            [(SUUICrossFadingTabBar *)self addSubview:v19];
          }
        }

        v16 = [(NSArray *)v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v16);
    }

    [(SUUICrossFadingTabBar *)self setNeedsLayout];
  }
}

@end