@interface HUIconPickerCell
- (HFImageIconDescriptor)iconDescriptor;
- (HUIconPickerCell)initWithFrame:(CGRect)frame;
- (id)_iconTintColor;
- (void)_updateIconDescriptor:(id)descriptor;
- (void)layoutSubviews;
- (void)setIconDescriptor:(id)descriptor andSelectedTintColor:(id)color;
- (void)setSelected:(BOOL)selected;
- (void)setSelectedTintColor:(id)color;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation HUIconPickerCell

- (HUIconPickerCell)initWithFrame:(CGRect)frame
{
  v20.receiver = self;
  v20.super_class = HUIconPickerCell;
  v3 = [(HUIconPickerCell *)&v20 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277D180D0]);
    [(HUIconPickerCell *)v3 bounds];
    v5 = [v4 initWithFrame:1 contentMode:?];
    [(HUIconPickerCell *)v3 setIconView:v5];

    iconView = [(HUIconPickerCell *)v3 iconView];
    [iconView setIconSize:5];

    iconView2 = [(HUIconPickerCell *)v3 iconView];
    [iconView2 setUserInteractionEnabled:0];

    iconView3 = [(HUIconPickerCell *)v3 iconView];
    [iconView3 setDisableContinuousAnimation:1];

    contentView = [(HUIconPickerCell *)v3 contentView];
    iconView4 = [(HUIconPickerCell *)v3 iconView];
    [contentView addSubview:iconView4];

    v11 = objc_alloc(MEMORY[0x277D75D18]);
    [(HUIconPickerCell *)v3 bounds];
    v12 = [v11 initWithFrame:?];
    [(HUIconPickerCell *)v3 setSelectedBackgroundView:v12];

    selectedBackgroundView = [(HUIconPickerCell *)v3 selectedBackgroundView];
    layer = [selectedBackgroundView layer];
    [layer setCornerRadius:7.0];

    selectedBackgroundView2 = [(HUIconPickerCell *)v3 selectedBackgroundView];
    layer2 = [selectedBackgroundView2 layer];
    [layer2 setMasksToBounds:1];

    secondarySystemBackgroundColor = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
    selectedBackgroundView3 = [(HUIconPickerCell *)v3 selectedBackgroundView];
    [selectedBackgroundView3 setBackgroundColor:secondarySystemBackgroundColor];
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
  iconView = [(HUIconPickerCell *)self iconView];
  [iconView setFrame:{x, y, width, height}];
}

- (void)_updateIconDescriptor:(id)descriptor
{
  v4 = MEMORY[0x277D755D0];
  v5 = *MEMORY[0x277D76918];
  descriptorCopy = descriptor;
  v7 = [v4 configurationWithTextStyle:v5];
  v11 = [descriptorCopy imageIconDescriptorWithUpdatedImageSymbolConfiguration:v7];

  iconView = [(HUIconPickerCell *)self iconView];
  [iconView updateWithIconDescriptor:v11 displayStyle:1 animated:1];

  _iconTintColor = [(HUIconPickerCell *)self _iconTintColor];
  iconView2 = [(HUIconPickerCell *)self iconView];
  [iconView2 setTintColor:_iconTintColor];
}

- (void)setSelected:(BOOL)selected
{
  v5.receiver = self;
  v5.super_class = HUIconPickerCell;
  [(HUIconPickerCell *)&v5 setSelected:selected];
  iconDescriptor = [(HUIconPickerCell *)self iconDescriptor];
  [(HUIconPickerCell *)self _updateIconDescriptor:iconDescriptor];
}

- (void)setSelectedTintColor:(id)color
{
  objc_storeStrong(&self->_selectedTintColor, color);
  iconDescriptor = [(HUIconPickerCell *)self iconDescriptor];
  [(HUIconPickerCell *)self _updateIconDescriptor:iconDescriptor];
}

- (HFImageIconDescriptor)iconDescriptor
{
  objc_opt_class();
  iconView = [(HUIconPickerCell *)self iconView];
  iconDescriptor = [iconView iconDescriptor];
  if (objc_opt_isKindOfClass())
  {
    v5 = iconDescriptor;
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
  traitCollection = [(HUIconPickerCell *)self traitCollection];
  if ([traitCollection userInterfaceStyle] == 2)
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
    selectedTintColor = [(HUIconPickerCell *)self selectedTintColor];
  }

  else
  {
    selectedTintColor = v4;
  }

  v6 = selectedTintColor;

  return v6;
}

- (void)setIconDescriptor:(id)descriptor andSelectedTintColor:(id)color
{
  objc_storeStrong(&self->_selectedTintColor, color);
  descriptorCopy = descriptor;
  [(HUIconPickerCell *)self _updateIconDescriptor:descriptorCopy];
}

- (void)traitCollectionDidChange:(id)change
{
  _iconTintColor = [(HUIconPickerCell *)self _iconTintColor];
  iconView = [(HUIconPickerCell *)self iconView];
  [iconView setTintColor:_iconTintColor];
}

@end