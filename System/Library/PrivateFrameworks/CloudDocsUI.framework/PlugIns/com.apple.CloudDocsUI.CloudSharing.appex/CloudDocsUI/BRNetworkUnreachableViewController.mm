@interface BRNetworkUnreachableViewController
- (id)initForInitialSharing:(BOOL)sharing;
@end

@implementation BRNetworkUnreachableViewController

- (id)initForInitialSharing:(BOOL)sharing
{
  sharingCopy = sharing;
  v52.receiver = self;
  v52.super_class = BRNetworkUnreachableViewController;
  v4 = [(BRNetworkUnreachableViewController *)&v52 initWithNibName:0 bundle:0];
  if (v4)
  {
    v5 = +[UIColor systemBackgroundColor];
    view = [(BRNetworkUnreachableViewController *)v4 view];
    [view setBackgroundColor:v5];

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
    if (sharingCopy)
    {
      v19 = @"NETWORK_UNREACHABLE_INITIAL_TITLE";
    }

    else
    {
      v19 = @"NETWORK_UNREACHABLE_TITLE";
    }

    if (sharingCopy)
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

    view2 = [v7 view];
    [view2 addSubview:v4->_titleLabel];

    view3 = [v7 view];
    [view3 addSubview:v4->_subtitleLabel];

    v26 = objc_opt_new();
    centerXAnchor = [(UILabel *)v4->_titleLabel centerXAnchor];
    view4 = [v7 view];
    centerXAnchor2 = [view4 centerXAnchor];
    v30 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [v26 addObject:v30];

    centerXAnchor3 = [(UILabel *)v4->_subtitleLabel centerXAnchor];
    view5 = [v7 view];
    centerXAnchor4 = [view5 centerXAnchor];
    v34 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    [v26 addObject:v34];

    firstBaselineAnchor = [(UILabel *)v4->_subtitleLabel firstBaselineAnchor];
    lastBaselineAnchor = [(UILabel *)v4->_titleLabel lastBaselineAnchor];
    v37 = [firstBaselineAnchor constraintEqualToAnchor:lastBaselineAnchor constant:32.0];
    [v26 addObject:v37];

    centerYAnchor = [(UILabel *)v4->_subtitleLabel centerYAnchor];
    view6 = [v7 view];
    centerYAnchor2 = [view6 centerYAnchor];
    v41 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [v26 addObject:v41];

    widthAnchor = [(UILabel *)v4->_titleLabel widthAnchor];
    view7 = [v7 view];
    widthAnchor2 = [view7 widthAnchor];
    v45 = [widthAnchor constraintEqualToAnchor:widthAnchor2 multiplier:0.800000012];
    [v26 addObject:v45];

    widthAnchor3 = [(UILabel *)v4->_subtitleLabel widthAnchor];
    view8 = [v7 view];
    widthAnchor4 = [view8 widthAnchor];
    v49 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4 multiplier:0.800000012];
    [v26 addObject:v49];

    [NSLayoutConstraint activateConstraints:v26];
  }

  return v4;
}

@end