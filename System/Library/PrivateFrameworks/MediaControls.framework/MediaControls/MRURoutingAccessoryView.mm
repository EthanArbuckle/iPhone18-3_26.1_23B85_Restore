@interface MRURoutingAccessoryView
- (CGSize)sizeThatFits:(CGSize)fits;
- (MRURoutingAccessoryView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setState:(int64_t)state;
- (void)setStylingProvider:(id)provider;
- (void)updateImageViewVisualStyle;
- (void)updateState;
- (void)updateVisualStyling;
@end

@implementation MRURoutingAccessoryView

- (MRURoutingAccessoryView)initWithFrame:(CGRect)frame
{
  v13[1] = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = MRURoutingAccessoryView;
  v3 = [(MRURoutingAccessoryView *)&v12 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    imageView = v3->_imageView;
    v3->_imageView = v4;

    [(UIImageView *)v3->_imageView setContentMode:4];
    v6 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:4 weight:2 scale:17.0];
    [(UIImageView *)v3->_imageView setPreferredSymbolConfiguration:v6];

    [(MRURoutingAccessoryView *)v3 addSubview:v3->_imageView];
    v7 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    activityView = v3->_activityView;
    v3->_activityView = v7;

    [(MRURoutingAccessoryView *)v3 addSubview:v3->_activityView];
    [(MRURoutingAccessoryView *)v3 updateState];
    v13[0] = objc_opt_class();
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    v10 = [(MRURoutingAccessoryView *)v3 registerForTraitChanges:v9 withAction:sel_updateVisualStyling];
  }

  return v3;
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = MRURoutingAccessoryView;
  [(MRURoutingAccessoryView *)&v11 layoutSubviews];
  [(MRURoutingAccessoryView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIImageView *)self->_imageView setFrame:?];
  [(UIActivityIndicatorView *)self->_activityView setFrame:v4, v6, v8, v10];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v3 = 28.0;
  v4 = 28.0;
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)setState:(int64_t)state
{
  if (self->_state != state)
  {
    self->_state = state;
    [(MRURoutingAccessoryView *)self updateState];
  }
}

- (void)setStylingProvider:(id)provider
{
  providerCopy = provider;
  if (self->_stylingProvider != providerCopy)
  {
    v6 = providerCopy;
    objc_storeStrong(&self->_stylingProvider, provider);
    [(MRURoutingAccessoryView *)self updateVisualStyling];
    providerCopy = v6;
  }
}

- (void)updateVisualStyling
{
  stylingProvider = self->_stylingProvider;
  traitCollection = [(MRURoutingAccessoryView *)self traitCollection];
  v5 = [(MRUVisualStylingProvider *)stylingProvider colorForStyle:0 traitCollection:traitCollection];
  activityView = [(MRURoutingAccessoryView *)self activityView];
  [activityView setColor:v5];

  [(MRURoutingAccessoryView *)self updateImageViewVisualStyle];
}

- (void)updateImageViewVisualStyle
{
  state = self->_state;
  if (state <= 1)
  {
    if (!state)
    {
LABEL_13:
      imageView = self->_imageView;

      [(UIImageView *)imageView setAlpha:0.0];
      return;
    }

    if (state != 1)
    {
      return;
    }

    stylingProvider = self->_stylingProvider;
    v4 = self->_imageView;
    traitCollection = [(MRURoutingAccessoryView *)self traitCollection];
    v10 = traitCollection;
    v6 = stylingProvider;
    v7 = 2;
  }

  else
  {
    if (state != 4 && state != 3)
    {
      if (state != 2)
      {
        return;
      }

      goto LABEL_13;
    }

    v8 = self->_stylingProvider;
    v4 = self->_imageView;
    traitCollection = [(MRURoutingAccessoryView *)self traitCollection];
    v10 = traitCollection;
    v6 = v8;
    v7 = 0;
  }

  [(MRUVisualStylingProvider *)v6 applyStyle:v7 toView:v4 traitCollection:traitCollection];
}

- (void)updateState
{
  state = self->_state;
  if (state > 1)
  {
    switch(state)
    {
      case 2:
        [(UIActivityIndicatorView *)self->_activityView startAnimating];
        goto LABEL_13;
      case 3:
        v4 = +[MRUAssetsProvider routingAccessorySelected];
        break;
      case 4:
        v4 = +[MRUAssetsProvider routingAccessoryMultiSelected];
        break;
      default:
        goto LABEL_13;
    }

    goto LABEL_11;
  }

  if (state)
  {
    if (state != 1)
    {
      goto LABEL_13;
    }

    v4 = +[MRUAssetsProvider routingAccessoryMultiDeselected];
LABEL_11:
    v5 = v4;
    [(UIImageView *)self->_imageView setImage:v4];
  }

  [(UIActivityIndicatorView *)self->_activityView stopAnimating];
LABEL_13:

  [(MRURoutingAccessoryView *)self updateImageViewVisualStyle];
}

@end