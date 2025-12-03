@interface NTKFaceEditingTabsView
+ (id)labelFont;
- (double)_containerOffsetForLabelAtIndex:(int64_t)index;
- (void)_addOrRemoveLabelsAsNeeded;
- (void)_applyOrderedTabsAndLayout;
- (void)_applySelectedTab:(unint64_t)tab;
- (void)applyTransitionFraction:(double)fraction fromTab:(unint64_t)tab toTab:(unint64_t)toTab;
- (void)layoutSubviews;
- (void)setOrderedTabs:(id)tabs;
- (void)setSelectedTab:(unint64_t)tab;
@end

@implementation NTKFaceEditingTabsView

+ (id)labelFont
{
  v2 = MEMORY[0x277CBBB08];
  v3 = NTKFaceEditingTabsTextSize();
  v4 = *MEMORY[0x277D743F8];

  return [v2 systemFontOfSize:v3 weight:v4];
}

- (void)setOrderedTabs:(id)tabs
{
  objc_storeStrong(&self->_orderedTabs, tabs);

  [(NTKFaceEditingTabsView *)self _applyOrderedTabsAndLayout];
}

- (void)_applyOrderedTabsAndLayout
{
  [(NTKFaceEditingTabsView *)self _addOrRemoveLabelsAsNeeded];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  orderedTabs = self->_orderedTabs;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __52__NTKFaceEditingTabsView__applyOrderedTabsAndLayout__block_invoke;
  v8[3] = &unk_278784BD0;
  v8[4] = self;
  v8[5] = &v9;
  [(NSArray *)orderedTabs enumerateObjectsUsingBlock:v8];
  [(UIView *)self->_labelContainer frame];
  v5 = v4;
  v7 = v6;
  [(NTKFaceEditingTabsView *)self frame];
  [(UIView *)self->_labelContainer setFrame:v5, v7, v10[3]];
  if ([(NSMutableArray *)self->_labels count])
  {
    [(NTKFaceEditingTabsView *)self _applySelectedTab:self->_selectedTab];
  }

  _Block_object_dispose(&v9, 8);
}

void __52__NTKFaceEditingTabsView__applyOrderedTabsAndLayout__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(*(a1 + 32) + 408);
  v6 = a2;
  v10 = [v5 objectAtIndexedSubscript:a3];
  [v10 setText:v6];

  [v10 sizeToFit];
  if (a3)
  {
    *(*(*(a1 + 40) + 8) + 24) = *(*(*(a1 + 40) + 8) + 24) + 14.0;
  }

  [v10 frame];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 24);
  *(v7 + 24) = v9 + v8;
  [v10 setFrame:{v8, 0.0}];
}

- (void)_addOrRemoveLabelsAsNeeded
{
  if (!self->_labels)
  {
    v3 = objc_opt_new();
    labels = self->_labels;
    self->_labels = v3;
  }

  if (!self->_labelContainer)
  {
    v5 = objc_opt_new();
    labelContainer = self->_labelContainer;
    self->_labelContainer = v5;

    [(NTKFaceEditingTabsView *)self addSubview:self->_labelContainer];
  }

  v7 = [(NSArray *)self->_orderedTabs count];
  v8 = [(NSMutableArray *)self->_labels count];
  v9 = [(NSArray *)self->_orderedTabs count];
  v10 = [(NSMutableArray *)self->_labels count];
  if (v7 <= v8)
  {
    if (v9 < v10)
    {
      while (1)
      {
        v14 = [(NSArray *)self->_orderedTabs count];
        if (v14 >= [(NSMutableArray *)self->_labels count])
        {
          break;
        }

        lastObject = [(NSMutableArray *)self->_labels lastObject];
        [lastObject removeFromSuperview];
        [(NSMutableArray *)self->_labels removeLastObject];
      }
    }
  }

  else if (v9 > v10)
  {
    do
    {
      v11 = objc_opt_new();
      [v11 setNumberOfLines:1];
      v12 = +[NTKFaceEditingTabsView labelFont];
      [v11 setFont:v12];

      [(UIView *)self->_labelContainer addSubview:v11];
      [(NSMutableArray *)self->_labels addObject:v11];

      v13 = [(NSArray *)self->_orderedTabs count];
    }

    while (v13 > [(NSMutableArray *)self->_labels count]);
  }
}

- (void)setSelectedTab:(unint64_t)tab
{
  v11 = *MEMORY[0x277D85DE8];
  self->_selectedTab = tab;
  if ([(NSMutableArray *)self->_labels count]>= tab)
  {

    [(NTKFaceEditingTabsView *)self _applySelectedTab:tab];
  }

  else
  {
    v5 = _NTKLoggingObjectForDomain(11, "NTKLoggingDomainFaceLibraryViewController");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(NSMutableArray *)self->_labels count];
      v7 = 134218240;
      tabCopy = tab;
      v9 = 2048;
      v10 = v6;
      _os_log_impl(&dword_22D9C5000, v5, OS_LOG_TYPE_DEFAULT, "Set selected tab (%lu) outside of label count (%lu)", &v7, 0x16u);
    }
  }
}

- (void)_applySelectedTab:(unint64_t)tab
{
  v8 = [(NSMutableArray *)self->_labels objectAtIndexedSubscript:?];
  [(NTKFaceEditingTabsView *)self _containerOffsetForLabelAtIndex:tab];
  v6 = v5;
  [(UIView *)self->_labelContainer frame];
  [(UIView *)self->_labelContainer setFrame:v6];
  [(NSMutableArray *)self->_labels enumerateObjectsUsingBlock:&__block_literal_global_124];
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  [v8 setColor:whiteColor];
}

void __44__NTKFaceEditingTabsView__applySelectedTab___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D75348];
  v3 = a2;
  v4 = [v2 colorWithWhite:0.2 alpha:1.0];
  [v3 setColor:v4];
}

- (void)applyTransitionFraction:(double)fraction fromTab:(unint64_t)tab toTab:(unint64_t)toTab
{
  if (fraction != 0.0 && tab != toTab)
  {
    [(UIView *)self->_labelContainer frame];
    [(NTKFaceEditingTabsView *)self _containerOffsetForLabelAtIndex:tab];
    [(NTKFaceEditingTabsView *)self _containerOffsetForLabelAtIndex:toTab];
    CLKInterpolateBetweenFloatsUnclipped();
    [(UIView *)self->_labelContainer setFrame:?];
    v13 = [(NSMutableArray *)self->_labels objectAtIndexedSubscript:tab];
    CLKInterpolateBetweenFloatsClipped();
    v10 = [MEMORY[0x277D75348] colorWithWhite:? alpha:?];
    [v13 setColor:v10];

    v11 = [(NSMutableArray *)self->_labels objectAtIndexedSubscript:toTab];
    CLKInterpolateBetweenFloatsClipped();
    v12 = [MEMORY[0x277D75348] colorWithWhite:? alpha:?];
    [v11 setColor:v12];
  }
}

- (double)_containerOffsetForLabelAtIndex:(int64_t)index
{
  if (![(NSMutableArray *)self->_labels count])
  {
    return 0.0;
  }

  labels = self->_labels;
  if (index < 0)
  {
    firstObject = [(NSMutableArray *)labels firstObject];
    [firstObject frame];
    MidX = -CGRectGetMidX(v14);
  }

  else
  {
    v6 = [(NSMutableArray *)labels count];
    v7 = self->_labels;
    if (v6 >= index)
    {
      firstObject = [(NSMutableArray *)v7 objectAtIndexedSubscript:index];
      [firstObject frame];
      MidX = CGRectGetMidX(v15);
    }

    else
    {
      firstObject = [(NSMutableArray *)v7 lastObject];
      [firstObject frame];
      MaxX = CGRectGetMaxX(v12);
      [firstObject frame];
      MidX = MaxX + CGRectGetWidth(v13) * 0.5;
    }
  }

  [(NTKFaceEditingTabsView *)self bounds];
  return CGRectGetMidX(v16) - MidX;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = NTKFaceEditingTabsView;
  [(NTKFaceEditingTabsView *)&v3 layoutSubviews];
  [(NTKFaceEditingTabsView *)self _applyOrderedTabsAndLayout];
  [(NTKFaceEditingTabsView *)self setSelectedTab:[(NTKFaceEditingTabsView *)self selectedTab]];
}

@end