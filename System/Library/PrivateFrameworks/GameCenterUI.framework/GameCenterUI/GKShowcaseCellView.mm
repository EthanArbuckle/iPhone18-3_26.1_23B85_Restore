@interface GKShowcaseCellView
- (CGRect)alignmentRectForText;
- (GKShowcaseCellView)initWithFrame:(CGRect)a3;
- (SEL)touchedShowcaseCellAction;
- (void)prepareForReuse;
- (void)setCell:(id)a3;
- (void)setTouchedShowcaseCellAction:(SEL)a3;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
@end

@implementation GKShowcaseCellView

- (GKShowcaseCellView)initWithFrame:(CGRect)a3
{
  v11.receiver = self;
  v11.super_class = GKShowcaseCellView;
  v3 = [(GKShowcaseCellView *)&v11 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(GKHairlineView);
    underlineView = v3->_underlineView;
    v3->_underlineView = v4;

    [(GKHairlineView *)v3->_underlineView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(GKShowcaseCellView *)v3 addSubview:v3->_underlineView];
    v6 = [MEMORY[0x277CCAAD0] constraintWithItem:v3->_underlineView attribute:4 relatedBy:0 toItem:v3 attribute:4 multiplier:1.0 constant:0.0];
    [(GKShowcaseCellView *)v3 addConstraint:v6];

    v7 = MEMORY[0x277CCAAD0];
    v8 = _NSDictionaryOfVariableBindings(&cfstr_Underlineview.isa, v3->_underlineView, 0);
    v9 = [v7 constraintsWithVisualFormat:@"|-(15)-[_underlineView]|" options:0 metrics:0 views:v8];
    [(GKShowcaseCellView *)v3 addConstraints:v9];
  }

  return v3;
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = GKShowcaseCellView;
  [(GKShowcaseCellView *)&v16 touchesEnded:v6 withEvent:v7];
  if (self->_touchedShowcaseCellAction)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v8 = v6;
    if ([v8 countByEnumeratingWithState:&v12 objects:v17 count:16])
    {
      v9 = [MEMORY[0x277D75128] sharedApplication];
      v10 = v9;
      if (self->_touchedShowcaseCellAction)
      {
        touchedShowcaseCellAction = self->_touchedShowcaseCellAction;
      }

      else
      {
        touchedShowcaseCellAction = 0;
      }

      [v9 _gkSendAction:touchedShowcaseCellAction viaResponder:self withObject:self];
    }
  }
}

- (void)setCell:(id)a3
{
  v5 = a3;
  cell = self->_cell;
  if (cell != v5)
  {
    v7 = v5;
    [(UICollectionViewCell *)cell removeFromSuperview];
    objc_storeStrong(&self->_cell, a3);
    v5 = v7;
    if (v7)
    {
      cell = [(GKShowcaseCellView *)self addSubview:self->_cell];
      v5 = v7;
    }
  }

  MEMORY[0x2821F96F8](cell, v5);
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = GKShowcaseCellView;
  [(GKShowcaseCellView *)&v3 prepareForReuse];
  [(GKShowcaseCellView *)self setCell:0];
}

- (CGRect)alignmentRectForText
{
  if (objc_opt_respondsToSelector())
  {
    [(UICollectionViewCell *)self->_cell alignmentRectForText];
  }

  else
  {
    v3 = *MEMORY[0x277CBF3A0];
    v4 = *(MEMORY[0x277CBF3A0] + 8);
    v5 = *(MEMORY[0x277CBF3A0] + 16);
    v6 = *(MEMORY[0x277CBF3A0] + 24);
  }

  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (SEL)touchedShowcaseCellAction
{
  if (self->_touchedShowcaseCellAction)
  {
    return self->_touchedShowcaseCellAction;
  }

  else
  {
    return 0;
  }
}

- (void)setTouchedShowcaseCellAction:(SEL)a3
{
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = 0;
  }

  self->_touchedShowcaseCellAction = v3;
}

@end