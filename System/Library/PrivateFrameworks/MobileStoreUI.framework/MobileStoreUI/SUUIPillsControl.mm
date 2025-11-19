@interface SUUIPillsControl
- (CGRect)selectedPillFrame;
- (CGSize)sizeThatFits:(CGSize)a3;
- (SUUIPillsControl)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)contentInset;
- (void)dealloc;
- (void)layoutSubviews;
- (void)reloadPills;
- (void)setColorScheme:(id)a3;
@end

@implementation SUUIPillsControl

- (SUUIPillsControl)initWithFrame:(CGRect)a3
{
  v11.receiver = self;
  v11.super_class = SUUIPillsControl;
  v3 = [(SUUIPillsControl *)&v11 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [SUUISegmentedControl alloc];
    v5 = [(SUUISegmentedControl *)v4 initWithItems:MEMORY[0x277CBEBF8]];
    segmentedControl = v3->_segmentedControl;
    v3->_segmentedControl = v5;

    [(SUUISegmentedControl *)v3->_segmentedControl addTarget:v3 action:sel__segmentedControlAction_ forControlEvents:4096];
    v7 = v3->_segmentedControl;
    v8 = [MEMORY[0x277D75348] colorWithWhite:0.588235294 alpha:1.0];
    [(SUUISegmentedControl *)v7 setTintColor:v8];

    [(SUUIPillsControl *)v3 addSubview:v3->_segmentedControl];
    v9 = [MEMORY[0x277D75348] whiteColor];
    [(SUUIPillsControl *)v3 setBackgroundColor:v9];
  }

  return v3;
}

- (void)dealloc
{
  [(SUUISegmentedControl *)self->_segmentedControl removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];
  v3.receiver = self;
  v3.super_class = SUUIPillsControl;
  [(SUUIPillsControl *)&v3 dealloc];
}

- (void)reloadPills
{
  [(SUUISegmentedControl *)self->_segmentedControl removeAllSegments];
  v3 = [(NSArray *)self->_titles count];
  v4 = v3;
  maximumNumberOfVisiblePills = self->_maximumNumberOfVisiblePills;
  if (maximumNumberOfVisiblePills >= v3 || maximumNumberOfVisiblePills <= 0)
  {
    v7 = v3;
  }

  else
  {
    v7 = maximumNumberOfVisiblePills - 1;
  }

  if (v7 >= 1)
  {
    for (i = 0; i != v7; ++i)
    {
      segmentedControl = self->_segmentedControl;
      v10 = [(NSArray *)self->_titles objectAtIndex:i];
      [(SUUISegmentedControl *)segmentedControl insertSegmentWithTitle:v10 atIndex:i animated:0];
    }

    maximumNumberOfVisiblePills = self->_maximumNumberOfVisiblePills;
  }

  if (maximumNumberOfVisiblePills)
  {
    v11 = maximumNumberOfVisiblePills < v4;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    [(SUUISegmentedControl *)self->_segmentedControl insertSegmentWithTitle:self->_moreListTitle atIndex:v7 animated:0];
  }

  [(SUUIPillsControl *)self setNeedsLayout];
}

- (CGRect)selectedPillFrame
{
  segmentedControl = self->_segmentedControl;
  v3 = [(SUUIPillsControl *)self selectedIndex];

  [(SUUISegmentedControl *)segmentedControl frameForSegmentAtIndex:v3];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (void)setColorScheme:(id)a3
{
  v4 = a3;
  if (self->_colorScheme != v4)
  {
    v11 = v4;
    v5 = [(SUUIColorScheme *)v4 copy];
    colorScheme = self->_colorScheme;
    self->_colorScheme = v5;

    segmentedControl = self->_segmentedControl;
    if (self->_colorScheme)
    {
      v8 = [(SUUIColorScheme *)v11 secondaryTextColor];
      [(SUUISegmentedControl *)segmentedControl setTintColor:v8];

      [(SUUIColorScheme *)v11 backgroundColor];
    }

    else
    {
      v9 = [MEMORY[0x277D75348] colorWithWhite:0.588235294 alpha:1.0];
      [(SUUISegmentedControl *)segmentedControl setTintColor:v9];

      [MEMORY[0x277D75348] whiteColor];
    }
    v10 = ;
    [(SUUIPillsControl *)self setBackgroundColor:v10];

    v4 = v11;
  }
}

- (void)layoutSubviews
{
  [(SUUIPillsControl *)self bounds];
  v4 = v3;
  v6 = v5;
  v7 = v3 - self->_contentInset.left - self->_contentInset.right;
  [(SUUISegmentedControl *)self->_segmentedControl frame];
  [(SUUISegmentedControl *)self->_segmentedControl sizeThatFits:v4, v6];
  v9 = v8;
  segmentedControl = self->_segmentedControl;
  top = self->_contentInset.top;
  left = self->_contentInset.left;

  [(SUUISegmentedControl *)segmentedControl setFrame:left, top, v7, v9];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(SUUISegmentedControl *)self->_segmentedControl sizeThatFits:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (UIEdgeInsets)contentInset
{
  top = self->_contentInset.top;
  left = self->_contentInset.left;
  bottom = self->_contentInset.bottom;
  right = self->_contentInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end