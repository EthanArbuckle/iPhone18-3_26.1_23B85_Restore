@interface _NTKCDetailAddButton
- (_NTKCDetailAddButton)initWithFrame:(CGRect)a3;
- (void)_updateColor;
- (void)setDisabled:(BOOL)a3 forReason:(id)a4;
- (void)setHighlighted:(BOOL)a3;
- (void)setSelected:(BOOL)a3;
@end

@implementation _NTKCDetailAddButton

- (_NTKCDetailAddButton)initWithFrame:(CGRect)a3
{
  v21[1] = *MEMORY[0x277D85DE8];
  v19.receiver = self;
  v19.super_class = _NTKCDetailAddButton;
  v3 = [(_NTKCDetailAddButton *)&v19 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
      v9 = [MEMORY[0x277D75230] grayButtonConfiguration];
      [v9 setAttributedTitle:v8];
      [v9 setButtonSize:1];
      [v9 setContentInsets:{5.0, 8.0, 5.0, 8.0}];
      [v9 setCornerStyle:4];
      [(_NTKCDetailAddButton *)v3 setConfiguration:v9];
    }

    else
    {
      v10 = [MEMORY[0x277D74300] systemFontOfSize:15.0];
      v11 = [(_NTKCDetailAddButton *)v3 titleLabel];
      [v11 setFont:v10];

      [(_NTKCDetailAddButton *)v3 setContentEdgeInsets:5.0, 8.0, 5.0, 8.0];
      v12 = [(_NTKCDetailAddButton *)v3 layer];
      [v12 setBorderWidth:1.0];

      v13 = [(_NTKCDetailAddButton *)v3 layer];
      [v13 setCornerRadius:4.0];

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

- (void)setDisabled:(BOOL)a3 forReason:(id)a4
{
  self->_disabled = a3;
  objc_storeStrong(&self->_disabledReason, a4);

  [(_NTKCDetailAddButton *)self _updateColor];
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  if ([(_NTKCDetailAddButton *)self isHighlighted]!= a3)
  {
    v5.receiver = self;
    v5.super_class = _NTKCDetailAddButton;
    [(_NTKCDetailAddButton *)&v5 setHighlighted:v3];
    [(_NTKCDetailAddButton *)self _updateColor];
  }
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  if ([(_NTKCDetailAddButton *)self isSelected]!= a3)
  {
    v5.receiver = self;
    v5.super_class = _NTKCDetailAddButton;
    [(_NTKCDetailAddButton *)&v5 setSelected:v3];
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
    v3 = 1;
  }

  else
  {
    v3 = [(_NTKCDetailAddButton *)self isSelected];
  }

  if (!self->_disabled)
  {
    v7 = NTKCActionColor();
    v5 = v7;
    if (v3)
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

  v4 = [MEMORY[0x277D75348] systemGrayColor];
  v5 = v4;
  if (!v3)
  {
    goto LABEL_14;
  }

  v6 = v4;
  v5 = v6;
LABEL_15:
  v12 = v5;
  [(_NTKCDetailAddButton *)self setTitleColor:v5 forState:0];
  v9 = v12;
  v10 = [v12 CGColor];
  v11 = [(_NTKCDetailAddButton *)self layer];
  [v11 setBorderColor:v10];

  [(_NTKCDetailAddButton *)self setBackgroundColor:v6];
LABEL_16:
}

@end