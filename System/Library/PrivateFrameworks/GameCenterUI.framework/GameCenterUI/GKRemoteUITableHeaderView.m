@interface GKRemoteUITableHeaderView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (GKRemoteUIAuxiliaryViewDelegate)delegate;
- (GKRemoteUITableHeaderView)initWithAttributes:(id)a3;
- (double)bottomMargin;
- (double)labelBaselineOffset;
- (double)labelBaselineToSubLabelTopOffset;
- (double)labelTopOffset;
- (double)leftMargin;
- (double)rightMargin;
- (void)applyConstraints;
- (void)buttonTapped:(id)a3;
- (void)createButtonWithAttributes:(id)a3;
- (void)createLabelWithAttributes:(id)a3;
- (void)createSubLabelWithAttributes:(id)a3;
- (void)objectModelDidChange:(id)a3;
@end

@implementation GKRemoteUITableHeaderView

- (GKRemoteUITableHeaderView)initWithAttributes:(id)a3
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = GKRemoteUITableHeaderView;
  v7 = [(GKRemoteUITableHeaderView *)&v12 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_attributes, a3);
    v9 = [v6 objectForKeyedSubscript:@"GKLayoutStyle"];
    v8->_layoutStyle = [v9 integerValue];

    [(GKRemoteUITableHeaderView *)v8 createLabelWithAttributes:v6];
    [(GKRemoteUITableHeaderView *)v8 createSubLabelWithAttributes:v6];
    [(GKRemoteUITableHeaderView *)v8 createButtonWithAttributes:v6];
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

- (void)createButtonWithAttributes:(id)a3
{
  v10 = a3;
  v4 = [v10 objectForKeyedSubscript:@"button"];
  if (v4)
  {
    v5 = [MEMORY[0x277D0C8B0] textStyle];
    v6 = [v10 objectForKeyedSubscript:@"buttonStyle"];
    v7 = [v5 styleWithName:v6 fallback:@"remoteUITableHeaderButton" layoutMode:{-[GKRemoteUITableHeaderView layoutStyle](self, "layoutStyle")}];

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

- (void)createLabelWithAttributes:(id)a3
{
  v4 = a3;
  v14 = [v4 objectForKeyedSubscript:@"label"];
  v5 = [MEMORY[0x277D0C8B0] textStyle];
  v6 = [v4 objectForKeyedSubscript:@"labelStyle"];
  v7 = [v5 styleWithName:v6 fallback:@"remoteUITableHeaderLabel" layoutMode:{-[GKRemoteUITableHeaderView layoutStyle](self, "layoutStyle")}];

  v8 = [v4 objectForKeyedSubscript:@"labelNumberOfLines"];

  v9 = [v8 integerValue];
  v10 = [GKLabel alloc];
  v11 = [(GKLabel *)v10 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  label = self->_label;
  self->_label = v11;

  [(GKLabel *)self->_label setTranslatesAutoresizingMaskIntoConstraints:0];
  [(GKLabel *)self->_label setNumberOfLines:0];
  v13 = [v14 stringByReplacingOccurrencesOfString:@"\\n" withString:@"\n"];
  [(GKLabel *)self->_label setText:v13];

  if (v9 >= 1)
  {
    [(GKLabel *)self->_label setNumberOfLines:v9];
  }

  [(GKLabel *)self->_label applyTextStyle:v7];
  [(GKRemoteUITableHeaderView *)self addSubview:self->_label];
}

- (void)createSubLabelWithAttributes:(id)a3
{
  v16 = a3;
  v4 = [v16 objectForKeyedSubscript:@"subLabel"];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 stringByReplacingOccurrencesOfString:@"\\n" withString:@"\n"];

    v7 = [MEMORY[0x277D0C8B0] textStyle];
    v8 = [v16 objectForKeyedSubscript:@"subLabelStyle"];
    v9 = [v7 styleWithName:v8 fallback:@"remoteUITableHeaderSubLabel" layoutMode:{-[GKRemoteUITableHeaderView layoutStyle](self, "layoutStyle")}];

    v10 = [v16 objectForKeyedSubscript:@"subLabelNumberOfLines"];
    v11 = [v10 integerValue];

    v12 = [GKLabel alloc];
    v13 = [(GKLabel *)v12 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    subLabel = self->_subLabel;
    self->_subLabel = v13;

    [(GKLabel *)self->_subLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(GKLabel *)self->_subLabel setNumberOfLines:0];
    v15 = [v6 _gkAttributedStringByApplyingStyle:v9];
    [(GKLabel *)self->_subLabel setAttributedText:v15];

    if (v11 >= 1)
    {
      [(GKLabel *)self->_subLabel setNumberOfLines:v11];
    }

    [(GKLabel *)self->_subLabel setAdjustsFontSizeToFitWidth:1];
    [(GKLabel *)self->_subLabel applyTextStyle:v9];
    [(GKRemoteUITableHeaderView *)self addSubview:self->_subLabel];
  }
}

- (double)labelBaselineOffset
{
  v2 = [(GKRemoteUITableHeaderView *)self layoutStyle];
  result = 36.0;
  if (v2 == 1)
  {
    result = 144.0;
  }

  if (v2 == 2)
  {
    return 202.0;
  }

  return result;
}

- (double)leftMargin
{
  v2 = [(GKRemoteUITableHeaderView *)self layoutStyle];
  result = 0.0;
  if (v2 == 1)
  {
    result = 25.0;
  }

  if (v2 == 2)
  {
    return 15.0;
  }

  return result;
}

- (double)rightMargin
{
  v2 = [(GKRemoteUITableHeaderView *)self layoutStyle];
  result = 0.0;
  if (v2 == 1)
  {
    result = 25.0;
  }

  if (v2 == 2)
  {
    return 15.0;
  }

  return result;
}

- (double)bottomMargin
{
  v3 = [(GKRemoteUITableHeaderView *)self layoutStyle];
  switch(v3)
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
  v5 = [(GKLabel *)self->_label font];
  [v5 ascender];
  v7 = v4 - v6;

  return v7;
}

- (double)labelBaselineToSubLabelTopOffset
{
  v2 = [(GKRemoteUITableHeaderView *)self layoutStyle];
  result = 5.0;
  if ((v2 - 1) < 2)
  {
    return 15.0;
  }

  return result;
}

- (void)applyConstraints
{
  v31[4] = *MEMORY[0x277D85DE8];
  v3 = [(GKRemoteUITableHeaderView *)self replaceableConstraints];
  if (v3)
  {
    [(GKRemoteUITableHeaderView *)self removeConstraints:v3];
  }

  v29 = v3;
  v4 = [(GKRemoteUITableHeaderView *)self label];
  v5 = [(GKRemoteUITableHeaderView *)self subLabel];
  v6 = [(GKRemoteUITableHeaderView *)self button];
  v7 = [MEMORY[0x277CBEB18] array];
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

  if (v5)
  {
    v17 = _NSDictionaryOfVariableBindings(&cfstr_LabelSublabel.isa, v4, v5, 0);
    v18 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|-(left)-[subLabel]-(right)-|" options:0 metrics:v16 views:v17];
    [v7 addObjectsFromArray:v18];

    v19 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:[label]-(labelToSubLabel)-[subLabel]" options:0 metrics:v16 views:v17];
    [v7 addObjectsFromArray:v19];

    v20 = v6;
  }

  else
  {
    v20 = v6;
    if (v6)
    {
      v17 = _NSDictionaryOfVariableBindings(&cfstr_LabelButton.isa, v4, v6, 0);
      v21 = MEMORY[0x277CCAAD0];
      [(GKRemoteUITableHeaderView *)self labelBaselineToButtonBaselineOffset];
      v23 = [v21 constraintWithItem:v6 attribute:11 relatedBy:0 toItem:v4 attribute:11 multiplier:1.0 constant:v22];
      [v7 addObject:v23];

      v24 = [MEMORY[0x277CCAAD0] constraintWithItem:v6 attribute:9 relatedBy:0 toItem:self attribute:9 multiplier:1.0 constant:0.0];
      [v7 addObject:v24];
    }

    else
    {
      v17 = _NSDictionaryOfVariableBindings(&cfstr_Label.isa, v4, 0);
    }
  }

  v25 = MEMORY[0x277CCAAD0];
  [(GKRemoteUITableHeaderView *)self labelTopOffset];
  v27 = [v25 constraintWithItem:v4 attribute:3 relatedBy:0 toItem:self attribute:3 multiplier:1.0 constant:v26];
  [v7 addObject:v27];

  v28 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|-(left)-[label]-(right)-|" options:0 metrics:v16 views:v17];
  [v7 addObjectsFromArray:v28];

  [(GKRemoteUITableHeaderView *)self setReplaceableConstraints:v7];
  [(GKRemoteUITableHeaderView *)self addConstraints:v7];
}

- (CGSize)intrinsicContentSize
{
  [(GKRemoteUITableHeaderView *)self sizeThatFits:1.79769313e308, 1.79769313e308];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  [(GKRemoteUITableHeaderView *)self leftMargin:a3.width];
  v6 = v5;
  [(GKRemoteUITableHeaderView *)self rightMargin];
  v35 = width;
  v8 = width - (v6 + v7);
  v9 = [(GKRemoteUITableHeaderView *)self label];
  v10 = [(GKRemoteUITableHeaderView *)self subLabel];
  v11 = [(GKRemoteUITableHeaderView *)self button];
  v12 = [v9 font];
  [v9 setPreferredMaxLayoutWidth:v8];
  [v12 ascender];
  v14 = v13;
  [v12 descender];
  v16 = fabs(v15);
  [v9 sizeThatFits:{v8, 1.79769313e308}];
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
  if (v10)
  {
    [v10 setPreferredMaxLayoutWidth:v8];
    [v10 intrinsicContentSize];
    v29 = v28;
    v30 = [(GKRemoteUITableHeaderView *)self layoutStyle];
    v31 = 0.0;
    if (v30 <= 2)
    {
      v31 = dbl_24E367C70[v30];
    }

    v32 = v24 + v20 + v27 + v26 + v29 + v31;
  }

  else if (v11)
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

- (void)buttonTapped:(id)a3
{
  v6 = [(NSDictionary *)self->_attributes objectForKeyedSubscript:@"url"];
  v4 = [(NSDictionary *)self->_attributes objectForKeyedSubscript:@"name"];
  v5 = [(GKRemoteUITableHeaderView *)self delegate];
  if (v6 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v5 auxiliaryView:self pressedLink:v6 attributes:self->_attributes];
  }

  else if (v4 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v5 auxiliaryView:self pressedButton:v4 attributes:self->_attributes];
  }
}

- (void)objectModelDidChange:(id)a3
{
  v5 = a3;
  v4 = [(NSDictionary *)self->_attributes objectForKeyedSubscript:@"enabledFunction"];
  if (v4)
  {
    -[GKButton setEnabled:](self->_button, "setEnabled:", [v5 validateWithFunction:v4]);
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