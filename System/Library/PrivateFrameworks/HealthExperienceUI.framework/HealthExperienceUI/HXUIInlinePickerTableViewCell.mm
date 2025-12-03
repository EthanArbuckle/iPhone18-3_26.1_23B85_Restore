@interface HXUIInlinePickerTableViewCell
- (CGRect)_contentLabelFrame;
- (CGRect)_pickerFrame;
- (CGSize)contentLabelHeightForBoundsSize:(CGSize)size;
- (CGSize)sizeThatFits:(CGSize)fits;
- (HXUIInlinePickerTableViewCell)initWithTitle:(id)title;
- (void)layoutSubviews;
- (void)setExpanded:(BOOL)expanded;
@end

@implementation HXUIInlinePickerTableViewCell

- (HXUIInlinePickerTableViewCell)initWithTitle:(id)title
{
  v20[1] = *MEMORY[0x1E69E9840];
  titleCopy = title;
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];

  v19.receiver = self;
  v19.super_class = HXUIInlinePickerTableViewCell;
  v7 = [(HXUIInlinePickerTableViewCell *)&v19 initWithStyle:0 reuseIdentifier:uUIDString];
  if (v7)
  {
    secondarySystemGroupedBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
    [(HXUIInlinePickerTableViewCell *)v7 setBackgroundColor:secondarySystemGroupedBackgroundColor];

    [(HXUIInlinePickerTableViewCell *)v7 setSelectionStyle:0];
    v9 = objc_alloc_init(HXUIPickerLabelView);
    contentLabel = v7->_contentLabel;
    v7->_contentLabel = v9;

    [(HXUIPickerLabelView *)v7->_contentLabel setText:titleCopy];
    contentView = [(HXUIInlinePickerTableViewCell *)v7 contentView];
    [contentView addSubview:v7->_contentLabel];

    [(HXUIInlinePickerTableViewCell *)v7 _contentLabelFrame];
    [(HXUIPickerLabelView *)v7->_contentLabel setFrame:?];
    v12 = objc_alloc_init(MEMORY[0x1E69DCD78]);
    picker = v7->_picker;
    v7->_picker = v12;

    [(UIPickerView *)v7->_picker setAlpha:0.0];
    contentView2 = [(HXUIInlinePickerTableViewCell *)v7 contentView];
    [contentView2 addSubview:v7->_picker];

    [(HXUIInlinePickerTableViewCell *)v7 _pickerFrame];
    [(UIPickerView *)v7->_picker setFrame:?];
    v15 = objc_opt_self();
    v20[0] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
    v17 = [(HXUIInlinePickerTableViewCell *)v7 registerForTraitChanges:v16 withHandler:&__block_literal_global];
  }

  return v7;
}

- (CGRect)_contentLabelFrame
{
  [(HXUIInlinePickerTableViewCell *)self bounds];
  v4 = v3 + 16.0 * -2.0;
  [(HXUIInlinePickerTableViewCell *)self contentLabelHeightForBoundsSize:v4, 10000.0];
  v6 = v5;
  v7 = 16.0;
  v8 = 9.0;
  v9 = v4;
  result.size.height = v6;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (CGRect)_pickerFrame
{
  [(HXUIInlinePickerTableViewCell *)self _contentLabelFrame];
  MaxY = CGRectGetMaxY(v11);
  [(HXUIInlinePickerTableViewCell *)self bounds];
  v5 = v4;
  [(UIPickerView *)self->_picker sizeThatFits:v4, 10000.0];
  v7 = v6;
  v8 = 0.0;
  v9 = MaxY;
  v10 = v5;
  result.size.height = v7;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = HXUIInlinePickerTableViewCell;
  [(HXUIInlinePickerTableViewCell *)&v3 layoutSubviews];
  [(HXUIInlinePickerTableViewCell *)self _contentLabelFrame];
  [(HXUIPickerLabelView *)self->_contentLabel setFrame:?];
  [(HXUIInlinePickerTableViewCell *)self _pickerFrame];
  [(UIPickerView *)self->_picker setFrame:?];
}

- (void)setExpanded:(BOOL)expanded
{
  self->_expanded = expanded;
  v5 = 0.0;
  if (expanded)
  {
    v5 = 1.0;
  }

  [(UIPickerView *)self->_picker setAlpha:v5];
  if (expanded)
  {
    [MEMORY[0x1E69DC888] systemBlueColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] labelColor];
  }
  v6 = ;
  [(HXUIPickerLabelView *)self->_contentLabel setDetailTextColor:v6];
}

- (CGSize)contentLabelHeightForBoundsSize:(CGSize)size
{
  v3 = size.width + 16.0 * -2.0;
  if (v3 < 52.0)
  {
    v3 = 52.0;
  }

  [(HXUIPickerLabelView *)self->_contentLabel sizeThatFits:v3, size.height];
  result.height = v5;
  result.width = v4;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  [(HXUIInlinePickerTableViewCell *)self contentLabelHeightForBoundsSize:?];
  v7 = v6;
  v9 = v8;
  if ([(HXUIInlinePickerTableViewCell *)self expanded])
  {
    [(UIPickerView *)self->_picker sizeThatFits:width, height];
    v11 = v9 + v10 + 9.0 * 2.0;
  }

  else
  {
    v11 = v9 + 9.0 * 2.0;
    width = v7;
  }

  v12 = width;
  result.height = v11;
  result.width = v12;
  return result;
}

@end