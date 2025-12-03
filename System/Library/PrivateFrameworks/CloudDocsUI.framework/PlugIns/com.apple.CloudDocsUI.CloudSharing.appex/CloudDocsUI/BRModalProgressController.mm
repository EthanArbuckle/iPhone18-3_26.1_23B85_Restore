@interface BRModalProgressController
- (BRModalProgressController)init;
- (void)_showSpinner:(id)spinner;
@end

@implementation BRModalProgressController

- (BRModalProgressController)init
{
  v10.receiver = self;
  v10.super_class = BRModalProgressController;
  v2 = [(BRModalProgressController *)&v10 init];
  if (v2)
  {
    v3 = [NSTimer scheduledTimerWithTimeInterval:v2 target:"_showSpinner:" selector:0 userInfo:0 repeats:2.0];
    displayTimer = v2->_displayTimer;
    v2->_displayTimer = v3;

    v5 = [_BRModalProgressTouchStealingView alloc];
    view = [(BRModalProgressController *)v2 view];
    [view bounds];
    v7 = [(_BRModalProgressTouchStealingView *)v5 initWithFrame:?];

    [(_BRModalProgressTouchStealingView *)v7 setAutoresizingMask:18];
    view2 = [(BRModalProgressController *)v2 view];
    [view2 addSubview:v7];
  }

  return v2;
}

- (void)_showSpinner:(id)spinner
{
  v41 = [UIBlurEffect effectWithStyle:4];
  v4 = +[UIColor systemBackgroundColor];
  view = [(BRModalProgressController *)self view];
  [view setBackgroundColor:v4];

  v6 = [[UIVisualEffectView alloc] initWithEffect:v41];
  v7 = objc_alloc_init(UILabel);
  v8 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v6 _setContinuousCornerRadius:13.0];
  [v6 setClipsToBounds:1];
  view2 = [(BRModalProgressController *)self view];
  v10 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
  v11 = [v10 localizedStringForKey:@"PROGRESS_FINISHING_TEXT" value:@"Finishing up…" table:@"Localizable"];
  [v7 setText:v11];

  v12 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [v7 setFont:v12];

  v13 = +[UIColor labelColor];
  [v7 setTextColor:v13];

  [v8 startAnimating];
  [view2 addSubview:v6];
  contentView = [v6 contentView];
  [contentView addSubview:v7];

  contentView2 = [v6 contentView];
  [contentView2 addSubview:v8];

  v16 = objc_opt_new();
  widthAnchor = [v6 widthAnchor];
  v18 = [widthAnchor constraintEqualToConstant:288.0];
  [v16 addObject:v18];

  centerXAnchor = [v6 centerXAnchor];
  centerXAnchor2 = [view2 centerXAnchor];
  v21 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v16 addObject:v21];

  centerYAnchor = [v6 centerYAnchor];
  centerYAnchor2 = [view2 centerYAnchor];
  v24 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [v16 addObject:v24];

  centerXAnchor3 = [v7 centerXAnchor];
  centerXAnchor4 = [v6 centerXAnchor];
  v27 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  [v16 addObject:v27];

  centerXAnchor5 = [v8 centerXAnchor];
  centerXAnchor6 = [v6 centerXAnchor];
  v30 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
  [v16 addObject:v30];

  topAnchor = [v8 topAnchor];
  topAnchor2 = [v6 topAnchor];
  v33 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:18.0];
  [v16 addObject:v33];

  lastBaselineAnchor = [v7 lastBaselineAnchor];
  bottomAnchor = [v8 bottomAnchor];
  font = [v7 font];
  [font _scaledValueForValue:22.0];
  v37 = [lastBaselineAnchor constraintEqualToAnchor:bottomAnchor constant:?];
  [v16 addObject:v37];

  bottomAnchor2 = [v6 bottomAnchor];
  lastBaselineAnchor2 = [v7 lastBaselineAnchor];
  v40 = [bottomAnchor2 constraintEqualToAnchor:lastBaselineAnchor2 constant:22.0];
  [v16 addObject:v40];

  [NSLayoutConstraint activateConstraints:v16];
}

@end