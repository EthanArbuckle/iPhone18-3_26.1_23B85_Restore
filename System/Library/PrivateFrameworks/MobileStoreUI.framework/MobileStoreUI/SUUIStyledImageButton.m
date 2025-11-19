@interface SUUIStyledImageButton
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CGRect)hitRect;
- (CGSize)sizeThatFits:(CGSize)a3;
- (SUUIStyledImageButton)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)bigHitInsets;
- (UIEdgeInsets)hitRectInsets;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
@end

@implementation SUUIStyledImageButton

- (SUUIStyledImageButton)initWithFrame:(CGRect)a3
{
  v11.receiver = self;
  v11.super_class = SUUIStyledImageButton;
  v3 = [(SUUIStyledImageButton *)&v11 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [SUUIImageView alloc];
    [(SUUIStyledImageButton *)v3 bounds];
    v5 = [(SUUIImageView *)v4 initWithFrame:?];
    imageView = v3->_imageView;
    v3->_imageView = v5;

    [(SUUIImageView *)v3->_imageView setAutoresizingMask:18];
    [(SUUIImageView *)v3->_imageView setUserInteractionEnabled:0];
    [(SUUIStyledImageButton *)v3 addSubview:v3->_imageView];
    v7 = [SUUIImageView alloc];
    v8 = [(SUUIImageView *)v7 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    additionalImageView = v3->_additionalImageView;
    v3->_additionalImageView = v8;

    [(SUUIImageView *)v3->_additionalImageView setAutoresizingMask:45];
    [(SUUIImageView *)v3->_additionalImageView setUserInteractionEnabled:0];
    [(SUUIStyledImageButton *)v3 addSubview:v3->_additionalImageView];
  }

  return v3;
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  self->_didInitialHighlightForTouch = 0;
  v4.receiver = self;
  v4.super_class = SUUIStyledImageButton;
  [(SUUIStyledImageButton *)&v4 touchesBegan:a3 withEvent:a4];
}

- (CGRect)hitRect
{
  if (self->_useBigHitTarget)
  {
    v16 = self;
    v3 = &OBJC_IVAR___SUUIStyledImageButton__bigHitInsets;
    v4 = &v16;
  }

  else
  {
    v15 = self;
    v3 = &OBJC_IVAR___SUUIStyledImageButton__hitRectInsets;
    v4 = &v15;
  }

  v4[1] = SUUIStyledImageButton;
  objc_msgSendSuper2(v4, sel_hitRect, v15);
  v5 = (self + *v3);
  v6 = v5[1];
  v8 = v7 + v6;
  v10 = v9 + *v5;
  v12 = v11 - (v6 + v5[3]);
  v14 = v13 - (*v5 + v5[2]);
  result.size.height = v14;
  result.size.width = v12;
  result.origin.y = v10;
  result.origin.x = v8;
  return result;
}

- (void)layoutSubviews
{
  v9.receiver = self;
  v9.super_class = SUUIStyledImageButton;
  [(SUUIStyledImageButton *)&v9 layoutSubviews];
  [(SUUIImageView *)self->_additionalImageView imageSize];
  v4 = v3;
  v6 = v5;
  additionalImageView = self->_additionalImageView;
  [(SUUIStyledImageButton *)self bounds];
  v8 = CGRectGetMidX(v10) - v4 * 0.5;
  [(SUUIStyledImageButton *)self bounds];
  [(SUUIImageView *)additionalImageView setFrame:v8, CGRectGetMidY(v11) - v6 * 0.5, v4, v6];
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  [(SUUIStyledImageButton *)self hitRect];
  v10 = x;
  v11 = y;

  return CGRectContainsPoint(*&v6, *&v10);
}

- (void)setBackgroundColor:(id)a3
{
  imageView = self->_imageView;
  v5 = a3;
  [(SUUIImageView *)imageView setBackgroundColor:v5];
  additionalImageView = self->_additionalImageView;
  v7 = [MEMORY[0x277D75348] clearColor];
  [(SUUIImageView *)additionalImageView setBackgroundColor:v7];

  v8.receiver = self;
  v8.super_class = SUUIStyledImageButton;
  [(SUUIStyledImageButton *)&v8 setBackgroundColor:v5];
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  if ([(SUUIStyledImageButton *)self isHighlighted]!= a3)
  {
    v7.receiver = self;
    v7.super_class = SUUIStyledImageButton;
    [(SUUIStyledImageButton *)&v7 setHighlighted:v3];
    v5 = 1.0;
    if (v3 && (v5 = 0.2, !self->_didInitialHighlightForTouch))
    {
      [(SUUIStyledImageButton *)self setAlpha:0.2, 0.2];
      self->_didInitialHighlightForTouch = 1;
    }

    else
    {
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __40__SUUIStyledImageButton_setHighlighted___block_invoke;
      v6[3] = &unk_2798F6C18;
      v6[4] = self;
      *&v6[5] = v5;
      [MEMORY[0x277D75D18] animateWithDuration:327684 delay:v6 options:0 animations:0.47 completion:0.0];
    }
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(SUUIImageView *)self->_imageView sizeThatFits:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (UIEdgeInsets)bigHitInsets
{
  top = self->_bigHitInsets.top;
  left = self->_bigHitInsets.left;
  bottom = self->_bigHitInsets.bottom;
  right = self->_bigHitInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)hitRectInsets
{
  top = self->_hitRectInsets.top;
  left = self->_hitRectInsets.left;
  bottom = self->_hitRectInsets.bottom;
  right = self->_hitRectInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end