@interface SUUIProductPagePlaceholderView
- (CGSize)sizeThatFits:(CGSize)a3;
- (SUUIProductPagePlaceholderView)initWithPlaceholderString:(id)a3 isPad:(BOOL)a4;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)a3;
- (void)setTextColor:(id)a3;
@end

@implementation SUUIProductPagePlaceholderView

- (SUUIProductPagePlaceholderView)initWithPlaceholderString:(id)a3 isPad:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v21.receiver = self;
  v21.super_class = SUUIProductPagePlaceholderView;
  v7 = [(SUUIProductPagePlaceholderView *)&v21 init];
  if (v7)
  {
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = objc_alloc(MEMORY[0x277D755E8]);
    v10 = [MEMORY[0x277D755B8] imageNamed:@"RelatedProxyGraphicApp" inBundle:v8];
    v11 = [v9 initWithImage:v10];
    imageView = v7->_imageView;
    v7->_imageView = v11;

    [(SUUIProductPagePlaceholderView *)v7 addSubview:v7->_imageView];
    v13 = objc_alloc_init(MEMORY[0x277D756B8]);
    label = v7->_label;
    v7->_label = v13;

    [(UILabel *)v7->_label setText:v6];
    v15 = v7->_label;
    v16 = [MEMORY[0x277D75348] colorWithWhite:0.384313732 alpha:1.0];
    [(UILabel *)v15 setTextColor:v16];

    v17 = v7->_label;
    v18 = 12.0;
    if (v4)
    {
      v18 = 18.0;
    }

    v19 = [MEMORY[0x277D74300] systemFontOfSize:v18];
    [(UILabel *)v17 setFont:v19];

    [(UILabel *)v7->_label sizeToFit];
    [(SUUIProductPagePlaceholderView *)v7 addSubview:v7->_label];
  }

  return v7;
}

- (void)setTextColor:(id)a3
{
  v7 = a3;
  objc_storeStrong(&self->_textColor, a3);
  label = self->_label;
  if (self->_textColor)
  {
    [(UILabel *)self->_label setTextColor:?];
  }

  else
  {
    v6 = [MEMORY[0x277D75348] colorWithWhite:0.384313732 alpha:1.0];
    [(UILabel *)label setTextColor:v6];
  }
}

- (void)layoutSubviews
{
  [(SUUIProductPagePlaceholderView *)self bounds];
  v4 = v3;
  v6 = v5;
  [(UIImageView *)self->_imageView frame];
  v8 = v7;
  v10 = v9;
  [(UILabel *)self->_label frame];
  v12 = (v6 - (v10 + 7.0 + v11)) * 0.5;
  v13 = floorf(v12);
  v14 = (v4 - v8) * 0.5;
  v15 = floorf(v14);
  [(UIImageView *)self->_imageView setFrame:v15, v13, v8, v10];
  v22.origin.x = v15;
  v22.origin.y = v13;
  v22.size.width = v8;
  v22.size.height = v10;
  v16 = CGRectGetMaxY(v22) + 7.0;
  [(UILabel *)self->_label frame];
  v18 = (v4 - v17) * 0.5;
  label = self->_label;
  v20 = floorf(v18);

  [(UILabel *)label setFrame:v20, v16];
}

- (void)setBackgroundColor:(id)a3
{
  imageView = self->_imageView;
  v5 = a3;
  [(UIImageView *)imageView setBackgroundColor:v5];
  [(UILabel *)self->_label setBackgroundColor:v5];
  v6.receiver = self;
  v6.super_class = SUUIProductPagePlaceholderView;
  [(SUUIProductPagePlaceholderView *)&v6 setBackgroundColor:v5];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  [(UIImageView *)self->_imageView frame:a3.width];
  v6 = v5 + 7.0;
  [(UILabel *)self->_label frame];
  v8 = v6 + v7;
  v9 = width;
  result.height = v8;
  result.width = v9;
  return result;
}

@end