@interface MULoadingView
- (MULoadingView)initWithFrame:(CGRect)a3;
- (void)_layout;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setFrame:(CGRect)a3;
@end

@implementation MULoadingView

- (void)_layout
{
  [(MULoadingView *)self bounds];
  x = v11.origin.x;
  y = v11.origin.y;
  width = v11.size.width;
  height = v11.size.height;
  v7 = CGRectGetWidth(v11) * 0.5;
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  v8 = CGRectGetHeight(v12) * 0.5;
  loadingIndicator = self->_loadingIndicator;

  [(UIActivityIndicatorView *)loadingIndicator setCenter:v7, v8];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = MULoadingView;
  [(MULoadingView *)&v3 layoutSubviews];
  [(MULoadingView *)self _layout];
}

- (void)setFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = MULoadingView;
  [(MULoadingView *)&v4 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(MULoadingView *)self _layout];
}

- (void)dealloc
{
  if ([(UIActivityIndicatorView *)self->_loadingIndicator isAnimating])
  {
    [(UIActivityIndicatorView *)self->_loadingIndicator stopAnimating];
  }

  v3.receiver = self;
  v3.super_class = MULoadingView;
  [(MULoadingView *)&v3 dealloc];
}

- (MULoadingView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = MULoadingView;
  v3 = [(MULoadingView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    loadingIndicator = v3->_loadingIndicator;
    v3->_loadingIndicator = v4;

    [(UIActivityIndicatorView *)v3->_loadingIndicator setHidesWhenStopped:1];
    [(MULoadingView *)v3 addSubview:v3->_loadingIndicator];
  }

  return v3;
}

@end