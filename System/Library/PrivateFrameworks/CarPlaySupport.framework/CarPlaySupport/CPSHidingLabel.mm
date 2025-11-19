@interface CPSHidingLabel
- (CPSHidingLabelDelegate)hidingLabelDelegate;
- (void)layoutSubviews;
- (void)setHidden:(BOOL)a3;
@end

@implementation CPSHidingLabel

- (void)layoutSubviews
{
  v17 = self;
  v16 = a2;
  v15.receiver = self;
  v15.super_class = CPSHidingLabel;
  [(CPSHidingLabel *)&v15 layoutSubviews];
  v10 = [(CPSHidingLabel *)v17 text];
  v9 = [(CPSHidingLabel *)v17 font];
  v8 = [(CPSHidingLabel *)v17 traitCollection];
  [v8 displayScale];
  CPSSizeForText(v10, v9, 0, 1.79769313e308, v2);
  v14 = v3;
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  *&v4 = MEMORY[0x277D82BD8](v10).n128_u64[0];
  [(CPSHidingLabel *)v17 frame];
  v13 = ceil(v5) < v14;
  if (!v13)
  {
    v6 = [(CPSHidingLabel *)v17 text];
    v11 = 0;
    v7 = 1;
    if (v6)
    {
      v12 = [(CPSHidingLabel *)v17 text];
      v11 = 1;
      v7 = [v12 length] == 0;
    }

    v13 = v7;
    if (v11)
    {
      MEMORY[0x277D82BD8](v12);
    }

    MEMORY[0x277D82BD8](v6);
  }

  [(CPSHidingLabel *)v17 setHidden:v13];
}

- (void)setHidden:(BOOL)a3
{
  v7 = self;
  v6 = a2;
  v5 = a3;
  v4.receiver = self;
  v4.super_class = CPSHidingLabel;
  [(CPSHidingLabel *)&v4 setHidden:a3];
  WeakRetained = objc_loadWeakRetained(&v7->_hidingLabelDelegate);
  [WeakRetained label:v7 hidden:v5];
  MEMORY[0x277D82BD8](WeakRetained);
}

- (CPSHidingLabelDelegate)hidingLabelDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_hidingLabelDelegate);

  return WeakRetained;
}

@end