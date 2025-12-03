@interface _NTKCDetailAddButton
- (_NTKCDetailAddButton)initWithFrame:(CGRect)frame;
- (void)_updateColor;
- (void)setDisabled:(BOOL)disabled forReason:(id)reason;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setSelected:(BOOL)selected;
@end

@implementation _NTKCDetailAddButton

- (_NTKCDetailAddButton)initWithFrame:(CGRect)frame
{
  v21[1] = *MEMORY[0x277D85DE8];
  v19.receiver = self;
  v19.super_class = _NTKCDetailAddButton;
  v3 = [(_NTKCDetailAddButton *)&v19 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    if (_os_feature_enabled_impl())
    {
      v5 = NTKCCustomizationLocalizedString(@"ACTION_ADD", @"Add", v4);
      v20 = *MEMORY[0x277D740A8];
      v6 = [MEMORY[0x277D74300] systemFontOfSize:15.0];
      v21[0] = v6;
      v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];

      v8 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v5 attributes:v7];
      grayButtonConfiguration = [MEMORY[0x277D75230] grayButtonConfiguration];
      [grayButtonConfiguration setAttributedTitle:v8];
      [grayButtonConfiguration setButtonSize:1];
      [grayButtonConfiguration setContentInsets:{5.0, 8.0, 5.0, 8.0}];
      [grayButtonConfiguration setCornerStyle:4];
      [(_NTKCDetailAddButton *)v3 setConfiguration:grayButtonConfiguration];
    }

    else
    {
      v10 = [MEMORY[0x277D74300] systemFontOfSize:15.0];
      titleLabel = [(_NTKCDetailAddButton *)v3 titleLabel];
      [titleLabel setFont:v10];

      [(_NTKCDetailAddButton *)v3 setContentEdgeInsets:5.0, 8.0, 5.0, 8.0];
      layer = [(_NTKCDetailAddButton *)v3 layer];
      [layer setBorderWidth:1.0];

      layer2 = [(_NTKCDetailAddButton *)v3 layer];
      [layer2 setCornerRadius:4.0];

      v15 = NTKCCustomizationLocalizedString(@"ACTION_ADD", @"Add", v14);
      [(_NTKCDetailAddButton *)v3 setTitle:v15 forState:0];

      v16 = BPSBackgroundColor();
      [(_NTKCDetailAddButton *)v3 setTitleColor:v16 forState:1];

      v17 = BPSBackgroundColor();
      [(_NTKCDetailAddButton *)v3 setTitleColor:v17 forState:4];

      v5 = BPSBackgroundColor();
      [(_NTKCDetailAddButton *)v3 setTitleColor:v5 forState:5];
    }

    [(_NTKCDetailAddButton *)v3 _updateColor];
  }

  return v3;
}

- (void)setDisabled:(BOOL)disabled forReason:(id)reason
{
  self->_disabled = disabled;
  objc_storeStrong(&self->_disabledReason, reason);

  [(_NTKCDetailAddButton *)self _updateColor];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  if ([(_NTKCDetailAddButton *)self isHighlighted]!= highlighted)
  {
    v5.receiver = self;
    v5.super_class = _NTKCDetailAddButton;
    [(_NTKCDetailAddButton *)&v5 setHighlighted:highlightedCopy];
    [(_NTKCDetailAddButton *)self _updateColor];
  }
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  if ([(_NTKCDetailAddButton *)self isSelected]!= selected)
  {
    v5.receiver = self;
    v5.super_class = _NTKCDetailAddButton;
    [(_NTKCDetailAddButton *)&v5 setSelected:selectedCopy];
    [(_NTKCDetailAddButton *)self _updateColor];
  }
}

- (void)_updateColor
{
  if (_os_feature_enabled_impl())
  {
    if (self->_disabled)
    {
      [MEMORY[0x277D75348] systemGrayColor];
    }

    else
    {
      BPSBridgeTintColor();
    }
    v12 = ;
    [(_NTKCDetailAddButton *)self setTintColor:?];
    goto LABEL_16;
  }

  if (([(_NTKCDetailAddButton *)self isHighlighted]& 1) != 0)
  {
    isSelected = 1;
  }

  else
  {
    isSelected = [(_NTKCDetailAddButton *)self isSelected];
  }

  if (!self->_disabled)
  {
    v7 = NTKCActionColor();
    v5 = v7;
    if (isSelected)
    {
      v13 = v7;
      v8 = NTKCActionColor();
      v5 = v13;
      v6 = v8;
      goto LABEL_15;
    }

LABEL_14:
    v6 = 0;
    goto LABEL_15;
  }

  systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
  v5 = systemGrayColor;
  if (!isSelected)
  {
    goto LABEL_14;
  }

  v6 = systemGrayColor;
  v5 = v6;
LABEL_15:
  v12 = v5;
  [(_NTKCDetailAddButton *)self setTitleColor:v5 forState:0];
  v9 = v12;
  cGColor = [v12 CGColor];
  layer = [(_NTKCDetailAddButton *)self layer];
  [layer setBorderColor:cGColor];

  [(_NTKCDetailAddButton *)self setBackgroundColor:v6];
LABEL_16:
}

@end