@interface GKRemoteUITableHeaderView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (GKRemoteUIAuxiliaryViewDelegate)delegate;
- (GKRemoteUITableHeaderView)initWithAttributes:(id)attributes;
- (double)bottomMargin;
- (double)labelBaselineOffset;
- (double)labelBaselineToSubLabelTopOffset;
- (double)labelTopOffset;
- (double)leftMargin;
- (double)rightMargin;
- (void)applyConstraints;
- (void)buttonTapped:(id)tapped;
- (void)createButtonWithAttributes:(id)attributes;
- (void)createLabelWithAttributes:(id)attributes;
- (void)createSubLabelWithAttributes:(id)attributes;
- (void)objectModelDidChange:(id)change;
@end

@implementation GKRemoteUITableHeaderView

- (GKRemoteUITableHeaderView)initWithAttributes:(id)attributes
{
  attributesCopy = attributes;
  v12.receiver = self;
  v12.super_class = GKRemoteUITableHeaderView;
  v7 = [(GKRemoteUITableHeaderView *)&v12 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_attributes, attributes);
    v9 = [attributesCopy objectForKeyedSubscript:@"GKLayoutStyle"];
    v8->_layoutStyle = [v9 integerValue];

    [(GKRemoteUITableHeaderView *)v8 createLabelWithAttributes:attributesCopy];
    [(GKRemoteUITableHeaderView *)v8 createSubLabelWithAttributes:attributesCopy];
    [(GKRemoteUITableHeaderView *)v8 createButtonWithAttributes:attributesCopy];
    if (!v8->_label)
    {
      [(GKRemoteUITableHeaderView *)a2 initWithAttributes:v8];
    }

    if (v8->_subLabel && v8->_button)
    {
      [(GKRemoteUITableHeaderView *)a2 initWithAttributes:v8];
    }

    [(GKRemoteUITableHeaderView *)v8 applyConstraints];
    v10 = v8;
  }

  return v8;
}

- (GKRemoteUIAuxiliaryViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)createButtonWithAttributes:(id)attributes
{
  attributesCopy = attributes;
  v4 = [attributesCopy objectForKeyedSubscript:@"button"];
  if (v4)
  {
    textStyle = [MEMORY[0x277D0C8B0] textStyle];
    v6 = [attributesCopy objectForKeyedSubscript:@"buttonStyle"];
    v7 = [textStyle styleWithName:v6 fallback:@"remoteUITableHeaderButton" layoutMode:{-[GKRemoteUITableHeaderView layoutStyle](self, "layoutStyle")}];

    v8 = [GKButton buttonWithType:1];
    button = self->_button;
    self->_button = v8;

    [(GKButton *)self->_button setTitle:v4 forState:0];
    [(GKButton *)self->_button setTranslatesAutoresizingMaskIntoConstraints:0];
    [(GKButton *)self->_button addTarget:self action:sel_buttonTapped_ forControlEvents:64];
    [(GKButton *)self->_button applyTextStyle:v7];
    [(GKRemoteUITableHeaderView *)self addSubview:self->_button];
  }
}

- (void)createLabelWithAttributes:(id)attributes
{
  attributesCopy = attributes;
  v14 = [attributesCopy objectForKeyedSubscript:@"label"];
  textStyle = [MEMORY[0x277D0C8B0] textStyle];
  v6 = [attributesCopy objectForKeyedSubscript:@"labelStyle"];
  v7 = [textStyle styleWithName:v6 fallback:@"remoteUITableHeaderLabel" layoutMode:{-[GKRemoteUITableHeaderView layoutStyle](self, "layoutStyle")}];

  v8 = [attributesCopy objectForKeyedSubscript:@"labelNumberOfLines"];

  integerValue = [v8 integerValue];
  v10 = [GKLabel alloc];
  v11 = [(GKLabel *)v10 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  label = self->_label;
  self->_label = v11;

  [(GKLabel *)self->_label setTranslatesAutoresizingMaskIntoConstraints:0];
  [(GKLabel *)self->_label setNumberOfLines:0];
  v13 = [v14 stringByReplacingOccurrencesOfString:@"\\n" withString:@"\n"];
  [(GKLabel *)self->_label setText:v13];

  if (integerValue >= 1)
  {
    [(GKLabel *)self->_label setNumberOfLines:integerValue];
  }

  [(GKLabel *)self->_label applyTextStyle:v7];
  [(GKRemoteUITableHeaderView *)self addSubview:self->_label];
}

- (void)createSubLabelWithAttributes:(id)attributes
{
  attributesCopy = attributes;
  v4 = [attributesCopy objectForKeyedSubscript:@"subLabel"];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 stringByReplacingOccurrencesOfString:@"\\n" withString:@"\n"];

    textStyle = [MEMORY[0x277D0C8B0] textStyle];
    v8 = [attributesCopy objectForKeyedSubscript:@"subLabelStyle"];
    v9 = [textStyle styleWithName:v8 fallback:@"remoteUITableHeaderSubLabel" layoutMode:{-[GKRemoteUITableHeaderView layoutStyle](self, "layoutStyle")}];

    v10 = [attributesCopy objectForKeyedSubscript:@"subLabelNumberOfLines"];
    integerValue = [v10 integerValue];

    v12 = [GKLabel alloc];
    v13 = [(GKLabel *)v12 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    subLabel = self->_subLabel;
    self->_subLabel = v13;

    [(GKLabel *)self->_subLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(GKLabel *)self->_subLabel setNumberOfLines:0];
    v15 = [v6 _gkAttributedStringByApplyingStyle:v9];
    [(GKLabel *)self->_subLabel setAttributedText:v15];

    if (integerValue >= 1)
    {
      [(GKLabel *)self->_subLabel setNumberOfLines:integerValue];
    }

    [(GKLabel *)self->_subLabel setAdjustsFontSizeToFitWidth:1];
    [(GKLabel *)self->_subLabel applyTextStyle:v9];
    [(GKRemoteUITableHeaderView *)self addSubview:self->_subLabel];
  }
}

- (double)labelBaselineOffset
{
  layoutStyle = [(GKRemoteUITableHeaderView *)self layoutStyle];
  result = 36.0;
  if (layoutStyle == 1)
  {
    result = 144.0;
  }

  if (layoutStyle == 2)
  {
    return 202.0;
  }

  return result;
}

- (double)leftMargin
{
  layoutStyle = [(GKRemoteUITableHeaderView *)self layoutStyle];
  result = 0.0;
  if (layoutStyle == 1)
  {
    result = 25.0;
  }

  if (layoutStyle == 2)
  {
    return 15.0;
  }

  return result;
}

- (double)rightMargin
{
  layoutStyle = [(GKRemoteUITableHeaderView *)self layoutStyle];
  result = 0.0;
  if (layoutStyle == 1)
  {
    result = 25.0;
  }

  if (layoutStyle == 2)
  {
    return 15.0;
  }

  return result;
}

- (double)bottomMargin
{
  layoutStyle = [(GKRemoteUITableHeaderView *)self layoutStyle];
  switch(layoutStyle)
  {
    case 2:
      result = 30.0;
      if (self->_subLabel)
      {
        return result;
      }

      result = 35.0;
      goto LABEL_11;
    case 1:
      if (self->_subLabel)
      {
        return 40.0;
      }

      result = 32.0;
      goto LABEL_11;
    case 0:
      result = 20.0;
      if (!self->_subLabel)
      {
        result = 25.0;
LABEL_11:
        if (self->_button)
        {
          return 0.0;
        }
      }

      break;
  }

  return result;
}

- (double)labelTopOffset
{
  [(GKRemoteUITableHeaderView *)self labelBaselineOffset];
  v4 = v3;
  font = [(GKLabel *)self->_label font];
  [font ascender];
  v7 = v4 - v6;

  return v7;
}

- (double)labelBaselineToSubLabelTopOffset
{
  layoutStyle = [(GKRemoteUITableHeaderView *)self layoutStyle];
  result = 5.0;
  if ((layoutStyle - 1) < 2)
  {
    return 15.0;
  }

  return result;
}

- (void)applyConstraints
{
  v31[4] = *MEMORY[0x277D85DE8];
  replaceableConstraints = [(GKRemoteUITableHeaderView *)self replaceableConstraints];
  if (replaceableConstraints)
  {
    [(GKRemoteUITableHeaderView *)self removeConstraints:replaceableConstraints];
  }

  v29 = replaceableConstraints;
  label = [(GKRemoteUITableHeaderView *)self label];
  subLabel = [(GKRemoteUITableHeaderView *)self subLabel];
  button = [(GKRemoteUITableHeaderView *)self button];
  array = [MEMORY[0x277CBEB18] array];
  v30[0] = @"left";
  v8 = MEMORY[0x277CCABB0];
  [(GKRemoteUITableHeaderView *)self leftMargin];
  v9 = [v8 numberWithDouble:?];
  v31[0] = v9;
  v30[1] = @"right";
  v10 = MEMORY[0x277CCABB0];
  [(GKRemoteUITableHeaderView *)self rightMargin];
  v11 = [v10 numberWithDouble:?];
  v31[1] = v11;
  v30[2] = @"labelToSubLabel";
  v12 = MEMORY[0x277CCABB0];
  [(GKRemoteUITableHeaderView *)self labelBaselineToSubLabelTopOffset];
  v13 = [v12 numberWithDouble:?];
  v31[2] = v13;
  v30[3] = @"labelToButton";
  v14 = MEMORY[0x277CCABB0];
  [(GKRemoteUITableHeaderView *)self labelBaselineToButtonBaselineOffset];
  v15 = [v14 numberWithDouble:?];
  v31[3] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:4];

  if (subLabel)
  {
    v17 = _NSDictionaryOfVariableBindings(&cfstr_LabelSublabel.isa, label, subLabel, 0);
    v18 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|-(left)-[subLabel]-(right)-|" options:0 metrics:v16 views:v17];
    [array addObjectsFromArray:v18];

    v19 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:[label]-(labelToSubLabel)-[subLabel]" options:0 metrics:v16 views:v17];
    [array addObjectsFromArray:v19];

    v20 = button;
  }

  else
  {
    v20 = button;
    if (button)
    {
      v17 = _NSDictionaryOfVariableBindings(&cfstr_LabelButton.isa, label, button, 0);
      v21 = MEMORY[0x277CCAAD0];
      [(GKRemoteUITableHeaderView *)self labelBaselineToButtonBaselineOffset];
      v23 = [v21 constraintWithItem:button attribute:11 relatedBy:0 toItem:label attribute:11 multiplier:1.0 constant:v22];
      [array addObject:v23];

      v24 = [MEMORY[0x277CCAAD0] constraintWithItem:button attribute:9 relatedBy:0 toItem:self attribute:9 multiplier:1.0 constant:0.0];
      [array addObject:v24];
    }

    else
    {
      v17 = _NSDictionaryOfVariableBindings(&cfstr_Label.isa, label, 0);
    }
  }

  v25 = MEMORY[0x277CCAAD0];
  [(GKRemoteUITableHeaderView *)self labelTopOffset];
  v27 = [v25 constraintWithItem:label attribute:3 relatedBy:0 toItem:self attribute:3 multiplier:1.0 constant:v26];
  [array addObject:v27];

  v28 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|-(left)-[label]-(right)-|" options:0 metrics:v16 views:v17];
  [array addObjectsFromArray:v28];

  [(GKRemoteUITableHeaderView *)self setReplaceableConstraints:array];
  [(GKRemoteUITableHeaderView *)self addConstraints:array];
}

- (CGSize)intrinsicContentSize
{
  [(GKRemoteUITableHeaderView *)self sizeThatFits:1.79769313e308, 1.79769313e308];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  [(GKRemoteUITableHeaderView *)self leftMargin:fits.width];
  v6 = v5;
  [(GKRemoteUITableHeaderView *)self rightMargin];
  v35 = width;
  v8 = width - (v6 + v7);
  label = [(GKRemoteUITableHeaderView *)self label];
  subLabel = [(GKRemoteUITableHeaderView *)self subLabel];
  button = [(GKRemoteUITableHeaderView *)self button];
  font = [label font];
  [label setPreferredMaxLayoutWidth:v8];
  [font ascender];
  v14 = v13;
  [font descender];
  v16 = fabs(v15);
  [label sizeThatFits:{v8, 1.79769313e308}];
  v18 = v17;
  [(GKRemoteUITableHeaderView *)self labelBaselineToSubLabelTopOffset];
  v20 = v19;
  [(GKRemoteUITableHeaderView *)self labelBaselineToButtonBaselineOffset];
  v22 = v21;
  [(GKRemoteUITableHeaderView *)self bottomMargin];
  v24 = v23;
  [(GKRemoteUITableHeaderView *)self labelBaselineOffset];
  v26 = v25;
  v27 = v18 - v14 - v16;
  if (subLabel)
  {
    [subLabel setPreferredMaxLayoutWidth:v8];
    [subLabel intrinsicContentSize];
    v29 = v28;
    layoutStyle = [(GKRemoteUITableHeaderView *)self layoutStyle];
    v31 = 0.0;
    if (layoutStyle <= 2)
    {
      v31 = dbl_24E367C70[layoutStyle];
    }

    v32 = v24 + v20 + v27 + v26 + v29 + v31;
  }

  else if (button)
  {
    v32 = v24 + v22 + v27 + v25;
  }

  else
  {
    v32 = v24 + v27 + v25;
  }

  v33 = v35;
  v34 = v32;
  result.height = v34;
  result.width = v33;
  return result;
}

- (void)buttonTapped:(id)tapped
{
  v6 = [(NSDictionary *)self->_attributes objectForKeyedSubscript:@"url"];
  v4 = [(NSDictionary *)self->_attributes objectForKeyedSubscript:@"name"];
  delegate = [(GKRemoteUITableHeaderView *)self delegate];
  if (v6 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegate auxiliaryView:self pressedLink:v6 attributes:self->_attributes];
  }

  else if (v4 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegate auxiliaryView:self pressedButton:v4 attributes:self->_attributes];
  }
}

- (void)objectModelDidChange:(id)change
{
  changeCopy = change;
  v4 = [(NSDictionary *)self->_attributes objectForKeyedSubscript:@"enabledFunction"];
  if (v4)
  {
    -[GKButton setEnabled:](self->_button, "setEnabled:", [changeCopy validateWithFunction:v4]);
  }
}

- (void)initWithAttributes:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"GKRemoteUITableHeaderView.m" lineNumber:78 description:@"You MUST have a label. That's why you have a header view in the first place."];
}

- (void)initWithAttributes:(uint64_t)a1 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"GKRemoteUITableHeaderView.m" lineNumber:79 description:@"No specs for having both a button and a sub label. Choose one or the other."];
}

@end