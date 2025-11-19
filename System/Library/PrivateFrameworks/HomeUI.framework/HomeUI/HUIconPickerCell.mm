@interface HUIconPickerCell
- (HFImageIconDescriptor)iconDescriptor;
- (HUIconPickerCell)initWithFrame:(CGRect)a3;
- (id)_iconTintColor;
- (void)_updateIconDescriptor:(id)a3;
- (void)layoutSubviews;
- (void)setIconDescriptor:(id)a3 andSelectedTintColor:(id)a4;
- (void)setSelected:(BOOL)a3;
- (void)setSelectedTintColor:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation HUIconPickerCell

- (HUIconPickerCell)initWithFrame:(CGRect)a3
{
  v20.receiver = self;
  v20.super_class = HUIconPickerCell;
  v3 = [(HUIconPickerCell *)&v20 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277D180D0]);
    [(HUIconPickerCell *)v3 bounds];
    v5 = [v4 initWithFrame:1 contentMode:?];
    [(HUIconPickerCell *)v3 setIconView:v5];

    v6 = [(HUIconPickerCell *)v3 iconView];
    [v6 setIconSize:5];

    v7 = [(HUIconPickerCell *)v3 iconView];
    [v7 setUserInteractionEnabled:0];

    v8 = [(HUIconPickerCell *)v3 iconView];
    [v8 setDisableContinuousAnimation:1];

    v9 = [(HUIconPickerCell *)v3 contentView];
    v10 = [(HUIconPickerCell *)v3 iconView];
    [v9 addSubview:v10];

    v11 = objc_alloc(MEMORY[0x277D75D18]);
    [(HUIconPickerCell *)v3 bounds];
    v12 = [v11 initWithFrame:?];
    [(HUIconPickerCell *)v3 setSelectedBackgroundView:v12];

    v13 = [(HUIconPickerCell *)v3 selectedBackgroundView];
    v14 = [v13 layer];
    [v14 setCornerRadius:7.0];

    v15 = [(HUIconPickerCell *)v3 selectedBackgroundView];
    v16 = [v15 layer];
    [v16 setMasksToBounds:1];

    v17 = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
    v18 = [(HUIconPickerCell *)v3 selectedBackgroundView];
    [v18 setBackgroundColor:v17];
  }

  return v3;
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = HUIconPickerCell;
  [(HUIconPickerCell *)&v8 layoutSubviews];
  [(HUIconPickerCell *)self bounds];
  v10 = CGRectInset(v9, 5.0, 5.0);
  x = v10.origin.x;
  y = v10.origin.y;
  width = v10.size.width;
  height = v10.size.height;
  v7 = [(HUIconPickerCell *)self iconView];
  [v7 setFrame:{x, y, width, height}];
}

- (void)_updateIconDescriptor:(id)a3
{
  v4 = MEMORY[0x277D755D0];
  v5 = *MEMORY[0x277D76918];
  v6 = a3;
  v7 = [v4 configurationWithTextStyle:v5];
  v11 = [v6 imageIconDescriptorWithUpdatedImageSymbolConfiguration:v7];

  v8 = [(HUIconPickerCell *)self iconView];
  [v8 updateWithIconDescriptor:v11 displayStyle:1 animated:1];

  v9 = [(HUIconPickerCell *)self _iconTintColor];
  v10 = [(HUIconPickerCell *)self iconView];
  [v10 setTintColor:v9];
}

- (void)setSelected:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = HUIconPickerCell;
  [(HUIconPickerCell *)&v5 setSelected:a3];
  v4 = [(HUIconPickerCell *)self iconDescriptor];
  [(HUIconPickerCell *)self _updateIconDescriptor:v4];
}

- (void)setSelectedTintColor:(id)a3
{
  objc_storeStrong(&self->_selectedTintColor, a3);
  v4 = [(HUIconPickerCell *)self iconDescriptor];
  [(HUIconPickerCell *)self _updateIconDescriptor:v4];
}

- (HFImageIconDescriptor)iconDescriptor
{
  objc_opt_class();
  v3 = [(HUIconPickerCell *)self iconView];
  v4 = [v3 iconDescriptor];
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

- (id)_iconTintColor
{
  v3 = [(HUIconPickerCell *)self traitCollection];
  if ([v3 userInterfaceStyle] == 2)
  {
    [MEMORY[0x277D75348] systemDarkMidGrayColor];
  }

  else
  {
    [MEMORY[0x277D75348] systemDarkLightMidGrayColor];
  }
  v4 = ;

  if (([(HUIconPickerCell *)self isSelected]& 1) != 0)
  {
    v5 = [(HUIconPickerCell *)self selectedTintColor];
  }

  else
  {
    v5 = v4;
  }

  v6 = v5;

  return v6;
}

- (void)setIconDescriptor:(id)a3 andSelectedTintColor:(id)a4
{
  objc_storeStrong(&self->_selectedTintColor, a4);
  v6 = a3;
  [(HUIconPickerCell *)self _updateIconDescriptor:v6];
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = [(HUIconPickerCell *)self _iconTintColor];
  v4 = [(HUIconPickerCell *)self iconView];
  [v4 setTintColor:v5];
}

@end