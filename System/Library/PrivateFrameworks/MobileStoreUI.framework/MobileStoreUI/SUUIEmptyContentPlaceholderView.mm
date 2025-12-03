@interface SUUIEmptyContentPlaceholderView
- (BOOL)showsSignInButton;
- (CGSize)sizeThatFits:(CGSize)fits;
- (UIButton)signInButton;
- (UIEdgeInsets)placeholderImageInsets;
- (UILabel)placeholderMessageLabel;
- (void)layoutSubviews;
- (void)maskPlaceholdersInBackdropView:(id)view;
- (void)setBackgroundColor:(id)color;
- (void)setPlaceholderImage:(id)image;
- (void)setPlaceholderMessage:(id)message;
- (void)setShowsSignInButton:(BOOL)button;
@end

@implementation SUUIEmptyContentPlaceholderView

- (void)maskPlaceholdersInBackdropView:(id)view
{
  if (view)
  {
    viewCopy = view;
    [viewCopy removeMaskViews];
    label = self->_label;
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)label setBackgroundColor:clearColor];

    [(UILabel *)self->_label setOpaque:0];
    v6 = self->_label;
    v7 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
    [(UILabel *)v6 setTextColor:v7];

    [(UILabel *)self->_label _setBackdropMaskViewFlags:2];
    [viewCopy updateMaskViewsForView:self->_label];
    [(UIImageView *)self->_imageView setAlpha:0.2];
    imageView = self->_imageView;
    clearColor2 = [MEMORY[0x277D75348] clearColor];
    [(UIImageView *)imageView setBackgroundColor:clearColor2];

    [(UIImageView *)self->_imageView setOpaque:0];
    [(UIImageView *)self->_imageView _setBackdropMaskViewFlags:2];
    [viewCopy updateMaskViewsForView:self->_imageView];
  }
}

- (UILabel)placeholderMessageLabel
{
  label = self->_label;
  if (!label)
  {
    v4 = objc_alloc_init(MEMORY[0x277D756B8]);
    v5 = self->_label;
    self->_label = v4;

    v6 = self->_label;
    backgroundColor = [(SUUIEmptyContentPlaceholderView *)self backgroundColor];
    [(UILabel *)v6 setBackgroundColor:backgroundColor];

    v8 = self->_label;
    v9 = [MEMORY[0x277D74300] systemFontOfSize:14.0];
    [(UILabel *)v8 setFont:v9];

    [(UILabel *)self->_label setHidden:1];
    [(UILabel *)self->_label setNumberOfLines:0];
    [(UILabel *)self->_label setTextAlignment:1];
    v10 = self->_label;
    v11 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.6];
    [(UILabel *)v10 setTextColor:v11];

    [(SUUIEmptyContentPlaceholderView *)self addSubview:self->_label];
    label = self->_label;
  }

  return label;
}

- (void)setPlaceholderImage:(id)image
{
  imageCopy = image;
  imageView = self->_imageView;
  v9 = imageCopy;
  if (imageCopy)
  {
    if (!imageView)
    {
      v6 = objc_alloc_init(MEMORY[0x277D755E8]);
      v7 = self->_imageView;
      self->_imageView = v6;

      [(SUUIEmptyContentPlaceholderView *)self addSubview:self->_imageView];
      imageCopy = v9;
      imageView = self->_imageView;
    }

    [(UIImageView *)imageView setImage:imageCopy];
    [(UIImageView *)self->_imageView sizeToFit];
    [(SUUIEmptyContentPlaceholderView *)self setNeedsLayout];
  }

  else
  {
    [(UIImageView *)imageView removeFromSuperview];
    v8 = self->_imageView;
    self->_imageView = 0;
  }
}

- (void)setPlaceholderMessage:(id)message
{
  messageCopy = message;
  if (messageCopy)
  {
    placeholderMessageLabel = [(SUUIEmptyContentPlaceholderView *)self placeholderMessageLabel];
    [placeholderMessageLabel setHidden:0];
    [placeholderMessageLabel setText:messageCopy];
    [(SUUIEmptyContentPlaceholderView *)self setNeedsLayout];
  }

  else
  {
    [(UILabel *)self->_label setHidden:1];
    [(UILabel *)self->_label setText:0];
  }
}

- (void)setShowsSignInButton:(BOOL)button
{
  buttonCopy = button;
  signInButton = [(SUUIEmptyContentPlaceholderView *)self signInButton];
  [signInButton setHidden:!buttonCopy];
}

- (UIButton)signInButton
{
  signInButton = self->_signInButton;
  if (!signInButton)
  {
    v4 = [MEMORY[0x277D75220] buttonWithType:1];
    v5 = self->_signInButton;
    self->_signInButton = v4;

    [(UIButton *)self->_signInButton setHidden:1];
    titleLabel = [(UIButton *)self->_signInButton titleLabel];
    v7 = [MEMORY[0x277D74300] systemFontOfSize:18.0];
    [titleLabel setFont:v7];

    [(SUUIEmptyContentPlaceholderView *)self addSubview:self->_signInButton];
    signInButton = self->_signInButton;
  }

  return signInButton;
}

- (BOOL)showsSignInButton
{
  signInButton = self->_signInButton;
  if (signInButton)
  {
    LOBYTE(signInButton) = [(UIButton *)signInButton isHidden]^ 1;
  }

  return signInButton;
}

- (void)layoutSubviews
{
  [(SUUIEmptyContentPlaceholderView *)self bounds];
  v4 = v3;
  v6 = v5;
  v7 = v3 + -30.0;
  [(UIImageView *)self->_imageView frame];
  v9 = v8;
  v11 = v10;
  [(UILabel *)self->_label frame];
  v12 = v7;
  [(UILabel *)self->_label sizeThatFits:v7, 1.79769313e308];
  v14 = v13;
  if (([(UIButton *)self->_signInButton isHidden]& 1) != 0)
  {
    v15 = *(MEMORY[0x277CBF3A0] + 24);
    v30 = *MEMORY[0x277CBF3A0];
    v31 = *(MEMORY[0x277CBF3A0] + 16);
  }

  else
  {
    [(UIButton *)self->_signInButton sizeToFit];
    [(UIButton *)self->_signInButton frame];
    v17 = (v4 - v16) * 0.5;
    v30 = floorf(v17);
    v31 = v16;
  }

  top = self->_imageInsets.top;
  v19 = v14 + v11 + self->_imageInsets.bottom + top;
  v29 = v15;
  if (v15 > 0.00000011920929)
  {
    v19 = v15 + 20.0 + v19;
  }

  v20 = (v4 - v9) * 0.5;
  v21 = floorf(v20);
  v22 = (v6 - v19) * 0.5;
  v23 = v11;
  v24 = v9;
  v25 = top + floorf(v22);
  v33.origin.x = v21;
  v33.origin.y = v25;
  v33.size.width = v24;
  v33.size.height = v23;
  v26 = CGRectGetMaxY(v33) + self->_imageInsets.bottom;
  v34.origin.x = 15.0;
  v34.origin.y = v26;
  v34.size.width = v7;
  v34.size.height = v14;
  v27 = CGRectGetMaxY(v34) + 20.0;
  [(UIImageView *)self->_imageView setFrame:v21, v25, v24, v23];
  [(UILabel *)self->_label setFrame:15.0, v26, v12, v14];
  signInButton = self->_signInButton;

  [(UIButton *)signInButton setFrame:v30, v27, v31, v29];
}

- (void)setBackgroundColor:(id)color
{
  imageView = self->_imageView;
  colorCopy = color;
  [(UIImageView *)imageView setBackgroundColor:colorCopy];
  [(UILabel *)self->_label setBackgroundColor:colorCopy];
  v6.receiver = self;
  v6.super_class = SUUIEmptyContentPlaceholderView;
  [(SUUIEmptyContentPlaceholderView *)&v6 setBackgroundColor:colorCopy];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  [(UIImageView *)self->_imageView frame:fits.width];
  v6 = v5;
  v8 = v7;
  [(UILabel *)self->_label sizeThatFits:width + -30.0, 1.79769313e308];
  v10 = v9;
  v12 = v11;
  if (([(UIButton *)self->_signInButton isHidden]& 1) != 0)
  {
    v13 = *(MEMORY[0x277CBF3A8] + 8);
  }

  else
  {
    [(UIButton *)self->_signInButton sizeToFit];
    [(UIButton *)self->_signInButton frame];
  }

  v14 = v13 + 20.0 + v12 + v8 + self->_imageInsets.bottom + self->_imageInsets.top;
  if (v13 <= 0.00000011920929)
  {
    v14 = v12 + v8 + self->_imageInsets.bottom + self->_imageInsets.top;
  }

  if (v6 >= v10)
  {
    v15 = v6;
  }

  else
  {
    v15 = v10;
  }

  v16 = v15 + 30.0;
  result.height = v14;
  result.width = v16;
  return result;
}

- (UIEdgeInsets)placeholderImageInsets
{
  top = self->_imageInsets.top;
  left = self->_imageInsets.left;
  bottom = self->_imageInsets.bottom;
  right = self->_imageInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end