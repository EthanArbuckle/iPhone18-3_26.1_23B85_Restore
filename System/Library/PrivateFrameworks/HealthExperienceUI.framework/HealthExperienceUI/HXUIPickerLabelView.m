@interface HXUIPickerLabelView
- (CGSize)sizeThatFits:(CGSize)a3;
- (HXUIPickerLabelView)initWithFrame:(CGRect)a3;
- (void)getLabelFramesForSize:(CGSize)a3 titleFrame:(CGRect *)a4 detailFrame:(CGRect *)a5;
- (void)layoutSubviews;
- (void)setDetailText:(id)a3;
- (void)setText:(id)a3;
@end

@implementation HXUIPickerLabelView

- (HXUIPickerLabelView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  v22.receiver = self;
  v22.super_class = HXUIPickerLabelView;
  v5 = [(HXUIPickerLabelView *)&v22 initWithFrame:a3.origin.x, a3.origin.y];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x1E69DCC10]);
    v7 = *MEMORY[0x1E695F058];
    v8 = *(MEMORY[0x1E695F058] + 8);
    v9 = *(MEMORY[0x1E695F058] + 16);
    v10 = *(MEMORY[0x1E695F058] + 24);
    v11 = [v6 initWithFrame:{*MEMORY[0x1E695F058], v8, v9, v10}];
    titleLabel = v5->_titleLabel;
    v5->_titleLabel = v11;

    v13 = [MEMORY[0x1E69DB878] hk_preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [(UILabel *)v5->_titleLabel setFont:v13];

    [(UILabel *)v5->_titleLabel setAdjustsFontForContentSizeCategory:1];
    v14 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v5->_titleLabel setTextColor:v14];

    [(UILabel *)v5->_titleLabel setNumberOfLines:0];
    [(HXUIPickerLabelView *)v5 addSubview:v5->_titleLabel];
    v15 = [[HXUILabelWithBackgroundView alloc] initWithFrame:v7, v8, v9, v10];
    detailLabel = v5->_detailLabel;
    v5->_detailLabel = v15;

    [(HXUILabelWithBackgroundView *)v5->_detailLabel setNumberOfLines:0];
    [(HXUIPickerLabelView *)v5 addSubview:v5->_detailLabel];
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    [(HXUIPickerLabelView *)v5 getLabelFramesForSize:&v20 titleFrame:&v18 detailFrame:width, height];
    [(UILabel *)v5->_titleLabel setFrame:v20, v21];
    [(HXUILabelWithBackgroundView *)v5->_detailLabel setFrame:v18, v19];
  }

  return v5;
}

- (void)getLabelFramesForSize:(CGSize)a3 titleFrame:(CGRect *)a4 detailFrame:(CGRect *)a5
{
  height = a3.height;
  width = a3.width;
  [(UILabel *)self->_titleLabel sizeThatFits:?];
  v11 = v10;
  v13 = v12;
  [(HXUILabelWithBackgroundView *)self->_detailLabel sizeThatFits:width, height];
  if (v11 + v14 + 8.0 >= width)
  {
    v16 = floor((width + -8.0) * 0.5);
    if (v11 >= v16)
    {
      v11 = v16;
      if (v14 < v16)
      {
        v11 = width - v14 + -8.0;
        v16 = v14;
      }
    }

    else if (v14 >= width - v11 + -8.0)
    {
      v16 = width - v11 + -8.0;
    }

    else
    {
      v16 = v14;
    }

    [(UILabel *)self->_titleLabel sizeThatFits:v11, height];
    v11 = v17;
    v19 = v18;
    [(HXUILabelWithBackgroundView *)self->_detailLabel sizeThatFits:v16, height];
    if (v19 >= v15)
    {
      v15 = v19;
    }
  }

  else if (v13 >= v15)
  {
    v15 = v13;
  }

  a4->origin.x = 0.0;
  a4->origin.y = 0.0;
  a4->size.width = v11;
  a4->size.height = v15;
  a5->origin.x = width - v14;
  a5->origin.y = 0.0;
  a5->size.width = v14;
  a5->size.height = v15;
}

- (void)layoutSubviews
{
  v16.receiver = self;
  v16.super_class = HXUIPickerLabelView;
  [(HXUIPickerLabelView *)&v16 layoutSubviews];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  [(HXUIPickerLabelView *)self bounds];
  [(HXUIPickerLabelView *)self getLabelFramesForSize:&v14 titleFrame:&v12 detailFrame:v3, v4];
  if ([(HXUIPickerLabelView *)self effectiveUserInterfaceLayoutDirection])
  {
    [(HXUIPickerLabelView *)self bounds];
    [(UILabel *)self->_titleLabel setFrame:v5 - *&v14 - *&v15, *(&v14 + 1), v15];
    [(HXUIPickerLabelView *)self bounds];
    v7 = v6;
    v8 = *(&v12 + 1);
    v10 = *(&v13 + 1);
    v9 = *&v13;
    v11 = v7 - *&v12 - *&v13;
  }

  else
  {
    [(UILabel *)self->_titleLabel setFrame:v14, v15];
    v8 = *(&v12 + 1);
    v11 = *&v12;
    v10 = *(&v13 + 1);
    v9 = *&v13;
  }

  [(HXUILabelWithBackgroundView *)self->_detailLabel setFrame:v11, v8, v9, v10];
}

- (void)setText:(id)a3
{
  [(UILabel *)self->_titleLabel setText:a3];

  [(HXUIPickerLabelView *)self setNeedsLayout];
}

- (void)setDetailText:(id)a3
{
  [(HXUILabelWithBackgroundView *)self->_detailLabel setText:a3];

  [(HXUIPickerLabelView *)self setNeedsLayout];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  memset(&v9, 0, sizeof(v9));
  if (a3.width <= 0.0)
  {
    width = 10000.0;
  }

  else
  {
    width = a3.width;
  }

  memset(&v8, 0, sizeof(v8));
  [(HXUIPickerLabelView *)self getLabelFramesForSize:&v9 titleFrame:&v8 detailFrame:width];
  MaxY = CGRectGetMaxY(v9);
  v5 = CGRectGetMaxY(v8);
  if (MaxY >= v5)
  {
    v6 = MaxY;
  }

  else
  {
    v6 = v5;
  }

  v7 = width;
  result.height = v6;
  result.width = v7;
  return result;
}

@end