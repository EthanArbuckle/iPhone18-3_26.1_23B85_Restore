@interface HUAddPeopleTableHeaderFooterView
- (HUAddPeopleTableHeaderFooterView)initWithReuseIdentifier:(id)a3;
- (UIView)bottomBorder;
- (UIView)topBorder;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)a3;
- (void)setNeedsBottomBorder:(BOOL)a3;
- (void)setNeedsTopBorder:(BOOL)a3;
@end

@implementation HUAddPeopleTableHeaderFooterView

- (HUAddPeopleTableHeaderFooterView)initWithReuseIdentifier:(id)a3
{
  v15.receiver = self;
  v15.super_class = HUAddPeopleTableHeaderFooterView;
  v3 = [(HUAddPeopleTableHeaderFooterView *)&v15 initWithReuseIdentifier:a3];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277D75D18]);
    v5 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [(HUAddPeopleTableHeaderFooterView *)v3 setBackgroundView:v5];

    v6 = [(HUAddPeopleTableHeaderFooterView *)v3 backgroundView];
    v7 = [(HUAddPeopleTableHeaderFooterView *)v3 topBorder];
    [v6 addSubview:v7];

    v8 = [(HUAddPeopleTableHeaderFooterView *)v3 backgroundView];
    v9 = [(HUAddPeopleTableHeaderFooterView *)v3 bottomBorder];
    [v8 addSubview:v9];

    v10 = [(HUAddPeopleTableHeaderFooterView *)v3 bottomBorder];
    [v10 setHidden:1];

    v11 = [MEMORY[0x277D75348] systemBackgroundColor];
    [(HUAddPeopleTableHeaderFooterView *)v3 setBackgroundColor:v11];

    v12 = [(HUAddPeopleTableHeaderFooterView *)v3 textLabel];
    v13 = [MEMORY[0x277D75348] systemGrayColor];
    [v12 setTextColor:v13];

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

    v5 = [MEMORY[0x277D759A0] mainScreen];
    [v5 scale];
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

    v10 = [MEMORY[0x277D759A0] mainScreen];
    [v10 scale];
    v12 = 1.0 / v11;

    [(UIView *)self->_topBorder setFrame:0.0, 0.0, v9, v12];
  }

  v13 = [(HUAddPeopleTableHeaderFooterView *)self bottomBorder];
  [v13 frame];
  v15 = v14;
  v17 = v16;
  v19 = v18;

  [(HUAddPeopleTableHeaderFooterView *)self frame];
  v21 = v20 - v19;
  v22 = [(HUAddPeopleTableHeaderFooterView *)self bottomBorder];
  [v22 setFrame:{v15, v21, v17, v19}];
}

- (void)setBackgroundColor:(id)a3
{
  v6.receiver = self;
  v6.super_class = HUAddPeopleTableHeaderFooterView;
  v4 = a3;
  [(HUAddPeopleTableHeaderFooterView *)&v6 setBackgroundColor:v4];
  v5 = [(HUAddPeopleTableHeaderFooterView *)self backgroundView:v6.receiver];
  [v5 setBackgroundColor:v4];
}

- (void)setNeedsTopBorder:(BOOL)a3
{
  v3 = a3;
  self->_needsTopBorder = a3;
  v4 = [(HUAddPeopleTableHeaderFooterView *)self topBorder];
  [v4 setHidden:!v3];
}

- (void)setNeedsBottomBorder:(BOOL)a3
{
  v3 = a3;
  self->_needsBottomBorder = a3;
  v4 = [(HUAddPeopleTableHeaderFooterView *)self bottomBorder];
  [v4 setHidden:!v3];
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