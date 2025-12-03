@interface MediaControlsMaterialView
- (MediaControlsMaterialView)initWithFrame:(CGRect)frame;
- (id)visualStylingProviderForCategory:(int64_t)category;
- (void)_setContinuousCornerRadius:(double)radius;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation MediaControlsMaterialView

- (MediaControlsMaterialView)initWithFrame:(CGRect)frame
{
  v12.receiver = self;
  v12.super_class = MediaControlsMaterialView;
  v3 = [(MediaControlsMaterialView *)&v12 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    controlCenterDarkMaterial = [MEMORY[0x1E6997268] controlCenterDarkMaterial];
    backgroundView = v3->_backgroundView;
    v3->_backgroundView = controlCenterDarkMaterial;

    v6 = objc_alloc(MEMORY[0x1E69DD250]);
    [(MediaControlsMaterialView *)v3 bounds];
    v7 = [v6 initWithFrame:?];
    highlightView = v3->_highlightView;
    v3->_highlightView = v7;

    v9 = v3->_highlightView;
    v10 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.2];
    [(UIView *)v9 setBackgroundColor:v10];

    [(UIView *)v3->_highlightView setHidden:1];
    [(MediaControlsMaterialView *)v3 addSubview:v3->_backgroundView];
    [(MediaControlsMaterialView *)v3 addSubview:v3->_highlightView];
  }

  return v3;
}

- (void)_setContinuousCornerRadius:(double)radius
{
  [(UIView *)self->_backgroundView _setContinuousCornerRadius:?];
  highlightView = self->_highlightView;

  [(UIView *)highlightView _setContinuousCornerRadius:radius];
}

- (void)setHighlighted:(BOOL)highlighted
{
  if (self->_highlighted != highlighted)
  {
    self->_highlighted = highlighted;
    [(UIView *)self->_highlightView setHidden:!highlighted];
  }
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = MediaControlsMaterialView;
  [(MediaControlsMaterialView *)&v11 layoutSubviews];
  [(MediaControlsMaterialView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIView *)self->_highlightView setFrame:?];
  [(UIView *)self->_backgroundView setFrame:v4, v6, v8, v10];
}

- (id)visualStylingProviderForCategory:(int64_t)category
{
  if (objc_opt_respondsToSelector())
  {
    v5 = [(UIView *)self->_backgroundView visualStylingProviderForCategory:category];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end