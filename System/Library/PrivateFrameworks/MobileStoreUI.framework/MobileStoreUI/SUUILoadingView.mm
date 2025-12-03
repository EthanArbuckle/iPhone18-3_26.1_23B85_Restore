@interface SUUILoadingView
+ (id)defaultLoadingTextWithClientContext:(id)context;
- (CGSize)sizeThatFits:(CGSize)fits;
- (SUUILoadingView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)color;
- (void)setColorScheme:(id)scheme;
- (void)setLoadingText:(id)text;
- (void)willMoveToSuperview:(id)superview;
@end

@implementation SUUILoadingView

- (SUUILoadingView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = SUUILoadingView;
  v3 = [(SUUILoadingView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

+ (id)defaultLoadingTextWithClientContext:(id)context
{
  if (context)
  {
    [context localizedStringForKey:@"DEFAULT_LOADING_TEXT"];
  }

  else
  {
    [SUUIClientContext localizedStringForKey:@"DEFAULT_LOADING_TEXT" inBundles:0];
  }
  v3 = ;

  return v3;
}

- (void)setColorScheme:(id)scheme
{
  if (self->_colorScheme != scheme)
  {
    v4 = [scheme copy];
    colorScheme = self->_colorScheme;
    self->_colorScheme = v4;

    primaryTextColor = [(SUUIColorScheme *)self->_colorScheme primaryTextColor];
    if (!primaryTextColor)
    {
      primaryTextColor = [MEMORY[0x277D75348] labelColor];
    }

    v7 = primaryTextColor;
    [(UIActivityIndicatorView *)self->_spinner setColor:primaryTextColor];
    [(UILabel *)self->_label setTextColor:v7];
  }
}

- (void)setLoadingText:(id)text
{
  textCopy = text;
  label = self->_label;
  v16 = textCopy;
  if (textCopy)
  {
    if (!label)
    {
      v6 = objc_alloc_init(MEMORY[0x277D756B8]);
      v7 = self->_label;
      self->_label = v6;

      v8 = self->_label;
      backgroundColor = [(SUUILoadingView *)self backgroundColor];
      [(UILabel *)v8 setBackgroundColor:backgroundColor];

      v10 = self->_label;
      v11 = [MEMORY[0x277D74300] systemFontOfSize:11.0];
      [(UILabel *)v10 setFont:v11];

      primaryTextColor = [(SUUIColorScheme *)self->_colorScheme primaryTextColor];
      v13 = self->_label;
      if (primaryTextColor)
      {
        [(UILabel *)self->_label setTextColor:primaryTextColor];
      }

      else
      {
        labelColor = [MEMORY[0x277D75348] labelColor];
        [(UILabel *)v13 setTextColor:labelColor];
      }

      [(SUUILoadingView *)self addSubview:self->_label];

      label = self->_label;
      textCopy = v16;
    }

    [(UILabel *)label setText:textCopy];
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

- (void)setBackgroundColor:(id)color
{
  label = self->_label;
  colorCopy = color;
  [(UILabel *)label setBackgroundColor:colorCopy];
  [(UIActivityIndicatorView *)self->_spinner setBackgroundColor:colorCopy];
  v6.receiver = self;
  v6.super_class = SUUILoadingView;
  [(SUUILoadingView *)&v6 setBackgroundColor:colorCopy];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  spinner = self->_spinner;
  if (spinner)
  {
    [(UIActivityIndicatorView *)spinner frame:fits.width];
    width = v5;
    [(UIActivityIndicatorView *)self->_spinner frame];
    v8 = v7 + 0.0;
  }

  else
  {
    width = fits.width;
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

- (void)willMoveToSuperview:(id)superview
{
  superviewCopy = superview;
  isAnimating = [(UIActivityIndicatorView *)self->_spinner isAnimating];
  if (superviewCopy)
  {
    if (!isAnimating)
    {
      [(UIActivityIndicatorView *)self->_spinner startAnimating];
    }
  }

  else if (isAnimating)
  {
    [(UIActivityIndicatorView *)self->_spinner stopAnimating];
  }

  v6.receiver = self;
  v6.super_class = SUUILoadingView;
  [(SUUILoadingView *)&v6 willMoveToSuperview:superviewCopy];
}

@end