@interface CPSHidingLabel
- (CPSHidingLabelDelegate)hidingLabelDelegate;
- (void)layoutSubviews;
- (void)setHidden:(BOOL)hidden;
@end

@implementation CPSHidingLabel

- (void)layoutSubviews
{
  selfCopy = self;
  v16 = a2;
  v15.receiver = self;
  v15.super_class = CPSHidingLabel;
  [(CPSHidingLabel *)&v15 layoutSubviews];
  text = [(CPSHidingLabel *)selfCopy text];
  font = [(CPSHidingLabel *)selfCopy font];
  traitCollection = [(CPSHidingLabel *)selfCopy traitCollection];
  [traitCollection displayScale];
  CPSSizeForText(text, font, 0, 1.79769313e308, v2);
  v14 = v3;
  MEMORY[0x277D82BD8](traitCollection);
  MEMORY[0x277D82BD8](font);
  *&v4 = MEMORY[0x277D82BD8](text).n128_u64[0];
  [(CPSHidingLabel *)selfCopy frame];
  v13 = ceil(v5) < v14;
  if (!v13)
  {
    text2 = [(CPSHidingLabel *)selfCopy text];
    v11 = 0;
    v7 = 1;
    if (text2)
    {
      text3 = [(CPSHidingLabel *)selfCopy text];
      v11 = 1;
      v7 = [text3 length] == 0;
    }

    v13 = v7;
    if (v11)
    {
      MEMORY[0x277D82BD8](text3);
    }

    MEMORY[0x277D82BD8](text2);
  }

  [(CPSHidingLabel *)selfCopy setHidden:v13];
}

- (void)setHidden:(BOOL)hidden
{
  selfCopy = self;
  v6 = a2;
  hiddenCopy = hidden;
  v4.receiver = self;
  v4.super_class = CPSHidingLabel;
  [(CPSHidingLabel *)&v4 setHidden:hidden];
  WeakRetained = objc_loadWeakRetained(&selfCopy->_hidingLabelDelegate);
  [WeakRetained label:selfCopy hidden:hiddenCopy];
  MEMORY[0x277D82BD8](WeakRetained);
}

- (CPSHidingLabelDelegate)hidingLabelDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_hidingLabelDelegate);

  return WeakRetained;
}

@end