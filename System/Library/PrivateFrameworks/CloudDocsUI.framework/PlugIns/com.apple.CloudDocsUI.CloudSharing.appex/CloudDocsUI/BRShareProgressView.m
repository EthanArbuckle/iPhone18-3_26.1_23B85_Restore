@interface BRShareProgressView
- (BRShareProgressView)initWithProgress:(id)a3;
@end

@implementation BRShareProgressView

- (BRShareProgressView)initWithProgress:(id)a3
{
  v5 = a3;
  v44.receiver = self;
  v44.super_class = BRShareProgressView;
  v6 = [(BRShareProgressView *)&v44 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_progress, a3);
    v8 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
    spinner = v7->_spinner;
    v7->_spinner = v8;

    v10 = objc_opt_new();
    titleLabel = v7->_titleLabel;
    v7->_titleLabel = v10;

    v12 = objc_opt_new();
    progressLabel = v7->_progressLabel;
    v7->_progressLabel = v12;

    [(UIActivityIndicatorView *)v7->_spinner setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v7->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v7->_progressLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(BRShareProgressView *)v7 addSubview:v7->_spinner];
    [(BRShareProgressView *)v7 addSubview:v7->_titleLabel];
    [(BRShareProgressView *)v7 addSubview:v7->_progressLabel];
    v14 = +[UIColor secondaryLabelColor];
    [(UILabel *)v7->_titleLabel setTextColor:v14];

    v15 = +[UIColor secondaryLabelColor];
    [(UILabel *)v7->_progressLabel setTextColor:v15];

    v16 = [UIFont systemFontOfSize:17.0 weight:UIFontWeightRegular];
    [(UILabel *)v7->_titleLabel setFont:v16];

    v17 = [UIFont systemFontOfSize:12.0 weight:UIFontWeightRegular];
    [(UILabel *)v7->_progressLabel setFont:v17];

    v18 = objc_opt_new();
    v19 = [(UILabel *)v7->_titleLabel centerXAnchor];
    v20 = [(BRShareProgressView *)v7 centerXAnchor];
    v21 = [v19 constraintEqualToAnchor:v20];
    [v18 addObject:v21];

    v22 = [(UIActivityIndicatorView *)v7->_spinner centerXAnchor];
    v23 = [(BRShareProgressView *)v7 centerXAnchor];
    v24 = [v22 constraintEqualToAnchor:v23];
    [v18 addObject:v24];

    v25 = [(UILabel *)v7->_progressLabel centerXAnchor];
    v26 = [(BRShareProgressView *)v7 centerXAnchor];
    v27 = [v25 constraintEqualToAnchor:v26];
    [v18 addObject:v27];

    v28 = [(UILabel *)v7->_titleLabel firstBaselineAnchor];
    v29 = [(UIActivityIndicatorView *)v7->_spinner bottomAnchor];
    v30 = [v28 constraintEqualToAnchor:v29 constant:20.0];
    [v18 addObject:v30];

    v31 = [(UILabel *)v7->_progressLabel firstBaselineAnchor];
    v32 = [(UILabel *)v7->_titleLabel firstBaselineAnchor];
    v33 = [v31 constraintEqualToAnchor:v32 constant:16.0];
    [v18 addObject:v33];

    v34 = [(UILabel *)v7->_progressLabel centerYAnchor];
    v35 = [(BRShareProgressView *)v7 centerYAnchor];
    v36 = [v34 constraintEqualToAnchor:v35];
    [v18 addObject:v36];

    [NSLayoutConstraint activateConstraints:v18];
    [(UIActivityIndicatorView *)v7->_spinner startAnimating];
    objc_initWeak(&location, v7);
    v37 = [NSObservableKeyPath keyPathWithRootObject:v7 path:"progress.fractionCompleted"];
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_100002E98;
    v41[3] = &unk_10004C9D8;
    objc_copyWeak(&v42, &location);
    v38 = [v37 addObserverBlock:v41];
    observer = v7->_observer;
    v7->_observer = v38;

    objc_destroyWeak(&v42);
    objc_destroyWeak(&location);
  }

  return v7;
}

@end