@interface MediaControlsSeparatorView
- (MediaControlsSeparatorView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setVisualStylingProvider:(id)a3;
@end

@implementation MediaControlsSeparatorView

- (MediaControlsSeparatorView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v12.receiver = self;
  v12.super_class = MediaControlsSeparatorView;
  v7 = [(MediaControlsSeparatorView *)&v12 initWithFrame:?];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{x, y, width, height}];
    separatorView = v7->_separatorView;
    v7->_separatorView = v8;

    v10 = [MEMORY[0x1E69DC888] labelColor];
    [(UIView *)v7->_separatorView setBackgroundColor:v10];

    [(MediaControlsSeparatorView *)v7 addSubview:v7->_separatorView];
  }

  return v7;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = MediaControlsSeparatorView;
  [(MediaControlsSeparatorView *)&v3 layoutSubviews];
  [(MediaControlsSeparatorView *)self bounds];
  [(UIView *)self->_separatorView setFrame:?];
}

- (void)setVisualStylingProvider:(id)a3
{
  v5 = a3;
  visualStylingProvider = self->_visualStylingProvider;
  if (visualStylingProvider != v5)
  {
    v7 = v5;
    [(MTVisualStylingProvider *)visualStylingProvider stopAutomaticallyUpdatingView:self->_separatorView];
    objc_storeStrong(&self->_visualStylingProvider, a3);
    visualStylingProvider = [(MTVisualStylingProvider *)self->_visualStylingProvider automaticallyUpdateView:self->_separatorView withStyle:5];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](visualStylingProvider, v5);
}

@end