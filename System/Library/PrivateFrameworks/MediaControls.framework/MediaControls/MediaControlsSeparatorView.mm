@interface MediaControlsSeparatorView
- (MediaControlsSeparatorView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setVisualStylingProvider:(id)provider;
@end

@implementation MediaControlsSeparatorView

- (MediaControlsSeparatorView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v12.receiver = self;
  v12.super_class = MediaControlsSeparatorView;
  v7 = [(MediaControlsSeparatorView *)&v12 initWithFrame:?];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{x, y, width, height}];
    separatorView = v7->_separatorView;
    v7->_separatorView = v8;

    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [(UIView *)v7->_separatorView setBackgroundColor:labelColor];

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

- (void)setVisualStylingProvider:(id)provider
{
  providerCopy = provider;
  visualStylingProvider = self->_visualStylingProvider;
  if (visualStylingProvider != providerCopy)
  {
    v7 = providerCopy;
    [(MTVisualStylingProvider *)visualStylingProvider stopAutomaticallyUpdatingView:self->_separatorView];
    objc_storeStrong(&self->_visualStylingProvider, provider);
    visualStylingProvider = [(MTVisualStylingProvider *)self->_visualStylingProvider automaticallyUpdateView:self->_separatorView withStyle:5];
    providerCopy = v7;
  }

  MEMORY[0x1EEE66BB8](visualStylingProvider, providerCopy);
}

@end