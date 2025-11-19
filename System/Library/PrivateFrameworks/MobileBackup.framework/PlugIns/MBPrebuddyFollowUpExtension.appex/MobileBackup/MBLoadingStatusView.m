@interface MBLoadingStatusView
- (MBLoadingStatusView)initWithStatusText:(id)a3 backgroundColor:(id)a4;
- (void)commonInit;
- (void)startAnimating;
- (void)stopAnimating;
@end

@implementation MBLoadingStatusView

- (MBLoadingStatusView)initWithStatusText:(id)a3 backgroundColor:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = MBLoadingStatusView;
  v8 = [(MBLoadingStatusView *)&v15 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  if (v8)
  {
    v9 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:101];
    spinnerView = v8->_spinnerView;
    v8->_spinnerView = v9;

    v11 = objc_alloc_init(UILabel);
    statusLabel = v8->_statusLabel;
    v8->_statusLabel = v11;

    [(UILabel *)v8->_statusLabel setText:v6];
    if (v7)
    {
      [(MBLoadingStatusView *)v8 setBackgroundColor:v7];
    }

    else
    {
      v13 = +[UIColor systemBackgroundColor];
      [(MBLoadingStatusView *)v8 setBackgroundColor:v13];
    }

    [(MBLoadingStatusView *)v8 commonInit];
  }

  return v8;
}

- (void)commonInit
{
  [(MBLoadingStatusView *)self setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MBLoadingStatusView *)self setHidden:1];
  [(UIActivityIndicatorView *)self->_spinnerView setHidesWhenStopped:1];
  [(UILabel *)self->_statusLabel setNumberOfLines:0];
  [(UILabel *)self->_statusLabel setTextAlignment:1];
  v3 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [(UILabel *)self->_statusLabel setFont:v3];

  [(MBLoadingStatusView *)self addSubview:self->_statusLabel];
  v4 = [UIStackView alloc];
  statusLabel = self->_statusLabel;
  v19[0] = self->_spinnerView;
  v19[1] = statusLabel;
  v6 = [NSArray arrayWithObjects:v19 count:2];
  v7 = [v4 initWithArrangedSubviews:v6];

  [v7 setAxis:1];
  [v7 setAlignment:3];
  [v7 setSpacing:12.0];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MBLoadingStatusView *)self addSubview:v7];
  v17 = [v7 leadingAnchor];
  v8 = [(MBLoadingStatusView *)self leadingAnchor];
  v9 = [v17 constraintEqualToAnchor:v8];
  v18[0] = v9;
  v10 = [v7 trailingAnchor];
  v11 = [(MBLoadingStatusView *)self trailingAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];
  v18[1] = v12;
  v13 = [v7 centerYAnchor];
  v14 = [(MBLoadingStatusView *)self centerYAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];
  v18[2] = v15;
  v16 = [NSArray arrayWithObjects:v18 count:3];
  [NSLayoutConstraint activateConstraints:v16];
}

- (void)startAnimating
{
  [(UIActivityIndicatorView *)self->_spinnerView startAnimating];

  [(MBLoadingStatusView *)self setHidden:0];
}

- (void)stopAnimating
{
  [(UIActivityIndicatorView *)self->_spinnerView stopAnimating];

  [(MBLoadingStatusView *)self setHidden:1];
}

@end