@interface BRLoadingView
- (BRLoadingView)initWithCoder:(id)coder;
- (BRLoadingView)initWithFrame:(CGRect)frame;
- (void)initCommon;
@end

@implementation BRLoadingView

- (BRLoadingView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = BRLoadingView;
  v3 = [(BRLoadingView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(BRLoadingView *)v3 initCommon];
  }

  return v4;
}

- (BRLoadingView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = BRLoadingView;
  v3 = [(BRLoadingView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(BRLoadingView *)v3 initCommon];
  }

  return v4;
}

- (void)initCommon
{
  v3 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
  loadingView = self->_loadingView;
  self->_loadingView = v3;

  [(UIActivityIndicatorView *)self->_loadingView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIActivityIndicatorView *)self->_loadingView startAnimating];
  v5 = objc_alloc_init(UILabel);
  loadingLabel = self->_loadingLabel;
  self->_loadingLabel = v5;

  v7 = +[UIColor secondaryLabelColor];
  [(UILabel *)self->_loadingLabel setTextColor:v7];

  [(UILabel *)self->_loadingLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(BRLoadingView *)self setAxis:0];
  [(BRLoadingView *)self setSpacing:8.0];
  loadingView = [(BRLoadingView *)self loadingView];
  [(BRLoadingView *)self addArrangedSubview:loadingView];

  loadingLabel = [(BRLoadingView *)self loadingLabel];
  [(BRLoadingView *)self addArrangedSubview:loadingLabel];

  LODWORD(v10) = 1144750080;
  [(BRLoadingView *)self setContentHuggingPriority:1 forAxis:v10];
  LODWORD(v11) = 1148846080;

  [(BRLoadingView *)self setContentHuggingPriority:0 forAxis:v11];
}

@end