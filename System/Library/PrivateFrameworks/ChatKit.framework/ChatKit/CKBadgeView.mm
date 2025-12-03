@interface CKBadgeView
- (CGSize)sizeThatFits:(CGSize)fits;
- (CKBadgeView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setValue:(unint64_t)value;
@end

@implementation CKBadgeView

- (CKBadgeView)initWithFrame:(CGRect)frame
{
  v26[1] = *MEMORY[0x1E69E9840];
  v21.receiver = self;
  v21.super_class = CKBadgeView;
  v3 = [(CKBadgeView *)&v21 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    layer = [(CKBadgeView *)v3 layer];
    [layer setCornerRadius:7.0];

    systemRedColor = [MEMORY[0x1E69DC888] systemRedColor];
    cGColor = [systemRedColor CGColor];
    layer2 = [(CKBadgeView *)v4 layer];
    [layer2 setBackgroundColor:cGColor];

    v9 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    [(UILabel *)v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD10]];
    v11 = *MEMORY[0x1E69DB900];
    v24[0] = *MEMORY[0x1E69DB908];
    v24[1] = v11;
    v25[0] = &unk_1F04E7A28;
    v25[1] = &unk_1F04E7A40;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:2];
    v26[0] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];

    v22 = *MEMORY[0x1E69DB8B0];
    v23 = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v15 = [v10 fontDescriptorByAddingAttributes:v14];

    v16 = [MEMORY[0x1E69DB878] fontWithDescriptor:v15 size:11.0];
    [(UILabel *)v9 setFont:v16];
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(UILabel *)v9 setTextColor:whiteColor];

    [(UILabel *)v9 setTextAlignment:1];
    [(UILabel *)v9 setLineBreakMode:4];
    countLabel = v4->_countLabel;
    v4->_countLabel = v9;
    v19 = v9;

    [(CKBadgeView *)v4 addSubview:v19];
  }

  return v4;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = CKBadgeView;
  [(CKBadgeView *)&v4 layoutSubviews];
  countLabel = [(CKBadgeView *)self countLabel];
  [(CKBadgeView *)self bounds];
  [countLabel setFrame:?];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  countLabel = [(CKBadgeView *)self countLabel];
  [countLabel sizeThatFits:{width, height}];
  v7 = v6;

  v8 = 14.0;
  if (v7 > 14.0)
  {
    v8 = v7 + 14.0;
  }

  v9 = 14.0;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)setValue:(unint64_t)value
{
  if (self->_value != value)
  {
    self->_value = value;
    if (value)
    {
      v4 = MEMORY[0x1E696ADA0];
      v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
      v7 = [v4 localizedStringFromNumber:v5 numberStyle:0];

      [(UILabel *)self->_countLabel setText:v7];
    }

    else
    {
      countLabel = self->_countLabel;

      [(UILabel *)countLabel setText:&stru_1F04268F8];
    }
  }
}

@end