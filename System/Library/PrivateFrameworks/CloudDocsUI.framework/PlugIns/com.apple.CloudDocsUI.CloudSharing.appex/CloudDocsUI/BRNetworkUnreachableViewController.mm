@interface BRNetworkUnreachableViewController
- (id)initForInitialSharing:(BOOL)a3;
@end

@implementation BRNetworkUnreachableViewController

- (id)initForInitialSharing:(BOOL)a3
{
  v3 = a3;
  v52.receiver = self;
  v52.super_class = BRNetworkUnreachableViewController;
  v4 = [(BRNetworkUnreachableViewController *)&v52 initWithNibName:0 bundle:0];
  if (v4)
  {
    v5 = +[UIColor systemBackgroundColor];
    v6 = [(BRNetworkUnreachableViewController *)v4 view];
    [v6 setBackgroundColor:v5];

    v7 = objc_opt_new();
    v53 = v7;
    v8 = [NSArray arrayWithObjects:&v53 count:1];
    [(BRNetworkUnreachableViewController *)v4 setViewControllers:v8];

    v9 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
    v10 = [v9 localizedStringForKey:@"SHARE_INITIAL_TITLE" value:@"Add People" table:@"Localizable"];
    [v7 setTitle:v10];

    v11 = objc_opt_new();
    titleLabel = v4->_titleLabel;
    v4->_titleLabel = v11;

    v13 = objc_opt_new();
    subtitleLabel = v4->_subtitleLabel;
    v4->_subtitleLabel = v13;

    [(UILabel *)v4->_titleLabel setNumberOfLines:0];
    [(UILabel *)v4->_subtitleLabel setNumberOfLines:0];
    [(UILabel *)v4->_titleLabel setTextAlignment:1];
    [(UILabel *)v4->_subtitleLabel setTextAlignment:1];
    v15 = [UIFont systemFontOfSize:27.0 weight:UIFontWeightRegular];
    [(UILabel *)v4->_titleLabel setFont:v15];

    v16 = [UIFont systemFontOfSize:17.0 weight:UIFontWeightRegular];
    [(UILabel *)v4->_subtitleLabel setFont:v16];

    v51 = +[UIColor secondaryLabelColor];
    [(UILabel *)v4->_titleLabel setTextColor:v51];
    [(UILabel *)v4->_subtitleLabel setTextColor:v51];
    [(UILabel *)v4->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v4->_subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v17 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
    v18 = v17;
    if (v3)
    {
      v19 = @"NETWORK_UNREACHABLE_INITIAL_TITLE";
    }

    else
    {
      v19 = @"NETWORK_UNREACHABLE_TITLE";
    }

    if (v3)
    {
      v20 = @"NETWORK_UNREACHABLE_INITIAL_SUBTITLE";
    }

    else
    {
      v20 = @"NETWORK_UNREACHABLE_SUBTITLE";
    }

    v21 = [v17 localizedStringForKey:v19 value:@"You’re Offline" table:@"Localizable"];
    [(UILabel *)v4->_titleLabel setText:v21];

    v22 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
    v23 = [v22 localizedStringForKey:v20 value:@"Check your Internet connection." table:@"Localizable"];
    [(UILabel *)v4->_subtitleLabel setText:v23];

    v24 = [v7 view];
    [v24 addSubview:v4->_titleLabel];

    v25 = [v7 view];
    [v25 addSubview:v4->_subtitleLabel];

    v26 = objc_opt_new();
    v27 = [(UILabel *)v4->_titleLabel centerXAnchor];
    v28 = [v7 view];
    v29 = [v28 centerXAnchor];
    v30 = [v27 constraintEqualToAnchor:v29];
    [v26 addObject:v30];

    v31 = [(UILabel *)v4->_subtitleLabel centerXAnchor];
    v32 = [v7 view];
    v33 = [v32 centerXAnchor];
    v34 = [v31 constraintEqualToAnchor:v33];
    [v26 addObject:v34];

    v35 = [(UILabel *)v4->_subtitleLabel firstBaselineAnchor];
    v36 = [(UILabel *)v4->_titleLabel lastBaselineAnchor];
    v37 = [v35 constraintEqualToAnchor:v36 constant:32.0];
    [v26 addObject:v37];

    v38 = [(UILabel *)v4->_subtitleLabel centerYAnchor];
    v39 = [v7 view];
    v40 = [v39 centerYAnchor];
    v41 = [v38 constraintEqualToAnchor:v40];
    [v26 addObject:v41];

    v42 = [(UILabel *)v4->_titleLabel widthAnchor];
    v43 = [v7 view];
    v44 = [v43 widthAnchor];
    v45 = [v42 constraintEqualToAnchor:v44 multiplier:0.800000012];
    [v26 addObject:v45];

    v46 = [(UILabel *)v4->_subtitleLabel widthAnchor];
    v47 = [v7 view];
    v48 = [v47 widthAnchor];
    v49 = [v46 constraintEqualToAnchor:v48 multiplier:0.800000012];
    [v26 addObject:v49];

    [NSLayoutConstraint activateConstraints:v26];
  }

  return v4;
}

@end