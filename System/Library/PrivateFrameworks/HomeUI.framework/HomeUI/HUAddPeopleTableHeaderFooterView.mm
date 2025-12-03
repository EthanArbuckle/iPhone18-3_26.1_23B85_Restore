@interface HUAddPeopleTableHeaderFooterView
- (HUAddPeopleTableHeaderFooterView)initWithReuseIdentifier:(id)identifier;
- (UIView)bottomBorder;
- (UIView)topBorder;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)color;
- (void)setNeedsBottomBorder:(BOOL)border;
- (void)setNeedsTopBorder:(BOOL)border;
@end

@implementation HUAddPeopleTableHeaderFooterView

- (HUAddPeopleTableHeaderFooterView)initWithReuseIdentifier:(id)identifier
{
  v15.receiver = self;
  v15.super_class = HUAddPeopleTableHeaderFooterView;
  v3 = [(HUAddPeopleTableHeaderFooterView *)&v15 initWithReuseIdentifier:identifier];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277D75D18]);
    v5 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [(HUAddPeopleTableHeaderFooterView *)v3 setBackgroundView:v5];

    backgroundView = [(HUAddPeopleTableHeaderFooterView *)v3 backgroundView];
    topBorder = [(HUAddPeopleTableHeaderFooterView *)v3 topBorder];
    [backgroundView addSubview:topBorder];

    backgroundView2 = [(HUAddPeopleTableHeaderFooterView *)v3 backgroundView];
    bottomBorder = [(HUAddPeopleTableHeaderFooterView *)v3 bottomBorder];
    [backgroundView2 addSubview:bottomBorder];

    bottomBorder2 = [(HUAddPeopleTableHeaderFooterView *)v3 bottomBorder];
    [bottomBorder2 setHidden:1];

    systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
    [(HUAddPeopleTableHeaderFooterView *)v3 setBackgroundColor:systemBackgroundColor];

    textLabel = [(HUAddPeopleTableHeaderFooterView *)v3 textLabel];
    systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
    [textLabel setTextColor:systemGrayColor];

    [(HUAddPeopleTableHeaderFooterView *)v3 setNeedsBottomBorder:1];
  }

  return v3;
}

- (void)layoutSubviews
{
  v23.receiver = self;
  v23.super_class = HUAddPeopleTableHeaderFooterView;
  [(HUAddPeopleTableHeaderFooterView *)&v23 layoutSubviews];
  if (self->_bottomBorder)
  {
    [(HUAddPeopleTableHeaderFooterView *)self bounds];
    if (v3 >= 1024.0)
    {
      v4 = v3;
    }

    else
    {
      v4 = 1024.0;
    }

    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    v7 = 1.0 / v6;

    [(UIView *)self->_bottomBorder setFrame:0.0, 0.0, v4, v7];
  }

  if (self->_topBorder)
  {
    [(HUAddPeopleTableHeaderFooterView *)self bounds];
    if (v8 >= 1024.0)
    {
      v9 = v8;
    }

    else
    {
      v9 = 1024.0;
    }

    mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen2 scale];
    v12 = 1.0 / v11;

    [(UIView *)self->_topBorder setFrame:0.0, 0.0, v9, v12];
  }

  bottomBorder = [(HUAddPeopleTableHeaderFooterView *)self bottomBorder];
  [bottomBorder frame];
  v15 = v14;
  v17 = v16;
  v19 = v18;

  [(HUAddPeopleTableHeaderFooterView *)self frame];
  v21 = v20 - v19;
  bottomBorder2 = [(HUAddPeopleTableHeaderFooterView *)self bottomBorder];
  [bottomBorder2 setFrame:{v15, v21, v17, v19}];
}

- (void)setBackgroundColor:(id)color
{
  v6.receiver = self;
  v6.super_class = HUAddPeopleTableHeaderFooterView;
  colorCopy = color;
  [(HUAddPeopleTableHeaderFooterView *)&v6 setBackgroundColor:colorCopy];
  v5 = [(HUAddPeopleTableHeaderFooterView *)self backgroundView:v6.receiver];
  [v5 setBackgroundColor:colorCopy];
}

- (void)setNeedsTopBorder:(BOOL)border
{
  borderCopy = border;
  self->_needsTopBorder = border;
  topBorder = [(HUAddPeopleTableHeaderFooterView *)self topBorder];
  [topBorder setHidden:!borderCopy];
}

- (void)setNeedsBottomBorder:(BOOL)border
{
  borderCopy = border;
  self->_needsBottomBorder = border;
  bottomBorder = [(HUAddPeopleTableHeaderFooterView *)self bottomBorder];
  [bottomBorder setHidden:!borderCopy];
}

- (UIView)topBorder
{
  topBorder = self->_topBorder;
  if (!topBorder)
  {
    v4 = objc_alloc_init(MEMORY[0x277D75D18]);
    v5 = [MEMORY[0x277D75348] colorWithRed:0.784313738 green:0.78039217 blue:0.800000012 alpha:1.0];
    [(UIView *)v4 setBackgroundColor:v5];

    v6 = self->_topBorder;
    self->_topBorder = v4;

    topBorder = self->_topBorder;
  }

  return topBorder;
}

- (UIView)bottomBorder
{
  bottomBorder = self->_bottomBorder;
  if (!bottomBorder)
  {
    v4 = objc_alloc_init(MEMORY[0x277D75D18]);
    v5 = [MEMORY[0x277D75348] colorWithRed:0.784313738 green:0.78039217 blue:0.800000012 alpha:1.0];
    [(UIView *)v4 setBackgroundColor:v5];

    v6 = self->_bottomBorder;
    self->_bottomBorder = v4;

    bottomBorder = self->_bottomBorder;
  }

  return bottomBorder;
}

@end