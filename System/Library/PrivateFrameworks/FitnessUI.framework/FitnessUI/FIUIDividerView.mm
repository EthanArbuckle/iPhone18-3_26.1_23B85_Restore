@interface FIUIDividerView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)result;
- (FIUIDividerView)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)edgeInsets;
- (void)layoutSubviews;
@end

@implementation FIUIDividerView

- (FIUIDividerView)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = FIUIDividerView;
  v3 = [(FIUIDividerView *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCAE0]);
    if (FIUIDividerViewRoundedCornerImage_onceToken != -1)
    {
      [FIUIDividerView initWithFrame:];
    }

    v5 = FIUIDividerViewRoundedCornerImage_image;
    v6 = [v4 initWithImage:v5];
    imageView = v3->_imageView;
    v3->_imageView = v6;

    v8 = *(MEMORY[0x1E69DDCE0] + 16);
    *&v3->_edgeInsets.top = *MEMORY[0x1E69DDCE0];
    *&v3->_edgeInsets.bottom = v8;
    [(FIUIDividerView *)v3 addSubview:v3->_imageView];
  }

  return v3;
}

- (CGSize)sizeThatFits:(CGSize)result
{
  v3 = 1.5;
  result.height = v3;
  return result;
}

- (CGSize)intrinsicContentSize
{
  [(FIUIDividerView *)self edgeInsets];
  v4 = v3;
  [(FIUIDividerView *)self edgeInsets];
  v6 = v4 + v5;
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen bounds];
  [(FIUIDividerView *)self sizeThatFits:v8 - v6, 1.79769313e308];
  v10 = v9;
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.height = v14;
  result.width = v13;
  return result;
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = FIUIDividerView;
  [(FIUIDividerView *)&v12 layoutSubviews];
  [(FIUIDividerView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  imageView = [(FIUIDividerView *)self imageView];
  [imageView setFrame:{v4, v6, v8, v10}];
}

- (UIEdgeInsets)edgeInsets
{
  top = self->_edgeInsets.top;
  left = self->_edgeInsets.left;
  bottom = self->_edgeInsets.bottom;
  right = self->_edgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end