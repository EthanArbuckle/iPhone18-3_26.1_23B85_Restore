@interface SUUILoadingView
+ (id)defaultLoadingTextWithClientContext:(id)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (SUUILoadingView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)a3;
- (void)setColorScheme:(id)a3;
- (void)setLoadingText:(id)a3;
- (void)willMoveToSuperview:(id)a3;
@end

@implementation SUUILoadingView

- (SUUILoadingView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = SUUILoadingView;
  v3 = [(SUUILoadingView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    spinner = v3->_spinner;
    v3->_spinner = v4;

    [(UIActivityIndicatorView *)v3->_spinner sizeToFit];
    [(SUUILoadingView *)v3 addSubview:v3->_spinner];
  }

  return v3;
}

+ (id)defaultLoadingTextWithClientContext:(id)a3
{
  if (a3)
  {
    [a3 localizedStringForKey:@"DEFAULT_LOADING_TEXT"];
  }

  else
  {
    [SUUIClientContext localizedStringForKey:@"DEFAULT_LOADING_TEXT" inBundles:0];
  }
  v3 = ;

  return v3;
}

- (void)setColorScheme:(id)a3
{
  if (self->_colorScheme != a3)
  {
    v4 = [a3 copy];
    colorScheme = self->_colorScheme;
    self->_colorScheme = v4;

    v6 = [(SUUIColorScheme *)self->_colorScheme primaryTextColor];
    if (!v6)
    {
      v6 = [MEMORY[0x277D75348] labelColor];
    }

    v7 = v6;
    [(UIActivityIndicatorView *)self->_spinner setColor:v6];
    [(UILabel *)self->_label setTextColor:v7];
  }
}

- (void)setLoadingText:(id)a3
{
  v4 = a3;
  label = self->_label;
  v16 = v4;
  if (v4)
  {
    if (!label)
    {
      v6 = objc_alloc_init(MEMORY[0x277D756B8]);
      v7 = self->_label;
      self->_label = v6;

      v8 = self->_label;
      v9 = [(SUUILoadingView *)self backgroundColor];
      [(UILabel *)v8 setBackgroundColor:v9];

      v10 = self->_label;
      v11 = [MEMORY[0x277D74300] systemFontOfSize:11.0];
      [(UILabel *)v10 setFont:v11];

      v12 = [(SUUIColorScheme *)self->_colorScheme primaryTextColor];
      v13 = self->_label;
      if (v12)
      {
        [(UILabel *)self->_label setTextColor:v12];
      }

      else
      {
        v15 = [MEMORY[0x277D75348] labelColor];
        [(UILabel *)v13 setTextColor:v15];
      }

      [(SUUILoadingView *)self addSubview:self->_label];

      label = self->_label;
      v4 = v16;
    }

    [(UILabel *)label setText:v4];
    [(UILabel *)self->_label sizeToFit];
    [(SUUILoadingView *)self setNeedsLayout];
  }

  else
  {
    [(UILabel *)label removeFromSuperview];
    v14 = self->_label;
    self->_label = 0;
  }
}

- (void)layoutSubviews
{
  [(SUUILoadingView *)self bounds];
  v4 = v3;
  v6 = v5;
  spinner = self->_spinner;
  if (spinner)
  {
    [(UIActivityIndicatorView *)spinner frame];
    v9 = (v4 - v8) * 0.5;
    [(UIActivityIndicatorView *)self->_spinner setFrame:floorf(v9), 0.0];
  }

  label = self->_label;
  if (label)
  {
    [(UILabel *)label frame];
    v13 = (v4 - v12) * 0.5;
    v14 = floorf(v13);
    v15 = self->_label;

    [(UILabel *)v15 setFrame:v14, v6 - v11];
  }
}

- (void)setBackgroundColor:(id)a3
{
  label = self->_label;
  v5 = a3;
  [(UILabel *)label setBackgroundColor:v5];
  [(UIActivityIndicatorView *)self->_spinner setBackgroundColor:v5];
  v6.receiver = self;
  v6.super_class = SUUILoadingView;
  [(SUUILoadingView *)&v6 setBackgroundColor:v5];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  spinner = self->_spinner;
  if (spinner)
  {
    [(UIActivityIndicatorView *)spinner frame:a3.width];
    width = v5;
    [(UIActivityIndicatorView *)self->_spinner frame];
    v8 = v7 + 0.0;
  }

  else
  {
    width = a3.width;
    v8 = 0.0;
  }

  label = self->_label;
  if (label)
  {
    [(UILabel *)label sizeThatFits:1.79769313e308, 1.79769313e308];
    if (width < v10)
    {
      width = v10;
    }

    v8 = v8 + 18.0;
  }

  v11 = width;
  v12 = v8;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)willMoveToSuperview:(id)a3
{
  v4 = a3;
  v5 = [(UIActivityIndicatorView *)self->_spinner isAnimating];
  if (v4)
  {
    if (!v5)
    {
      [(UIActivityIndicatorView *)self->_spinner startAnimating];
    }
  }

  else if (v5)
  {
    [(UIActivityIndicatorView *)self->_spinner stopAnimating];
  }

  v6.receiver = self;
  v6.super_class = SUUILoadingView;
  [(SUUILoadingView *)&v6 willMoveToSuperview:v4];
}

@end