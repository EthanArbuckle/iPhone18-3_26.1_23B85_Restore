@interface HRPaddingLabel
- (CGSize)intrinsicContentSize;
- (HRPaddingLabel)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)padding;
- (void)drawTextInRect:(CGRect)rect;
- (void)setBounds:(CGRect)bounds;
@end

@implementation HRPaddingLabel

- (HRPaddingLabel)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = HRPaddingLabel;
  v3 = [(HRPaddingLabel *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(HRPaddingLabel *)v3 setPadding:*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)];
  }

  return v4;
}

- (void)setBounds:(CGRect)bounds
{
  v9.receiver = self;
  v9.super_class = HRPaddingLabel;
  [(HRPaddingLabel *)&v9 setBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  [(HRPaddingLabel *)self bounds];
  v5 = v4;
  [(HRPaddingLabel *)self padding];
  v7 = v5 - v6;
  [(HRPaddingLabel *)self padding];
  [(HRPaddingLabel *)self setPreferredMaxLayoutWidth:v7 - v8];
}

- (void)drawTextInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  [(HRPaddingLabel *)self padding];
  v12.receiver = self;
  v12.super_class = HRPaddingLabel;
  [(HRPaddingLabel *)&v12 drawTextInRect:x + v11, y + v8, width - (v11 + v9), height - (v8 + v10)];
}

- (CGSize)intrinsicContentSize
{
  v16.receiver = self;
  v16.super_class = HRPaddingLabel;
  [(HRPaddingLabel *)&v16 intrinsicContentSize];
  v4 = v3;
  v6 = v5;
  [(HRPaddingLabel *)self padding];
  v8 = v4 + v7;
  [(HRPaddingLabel *)self padding];
  v10 = v8 + v9;
  [(HRPaddingLabel *)self padding];
  v12 = v6 + v11;
  [(HRPaddingLabel *)self padding];
  v14 = v12 + v13;
  v15 = v10;
  result.height = v14;
  result.width = v15;
  return result;
}

- (UIEdgeInsets)padding
{
  top = self->_padding.top;
  left = self->_padding.left;
  bottom = self->_padding.bottom;
  right = self->_padding.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end