@interface BRModalProgressController
- (BRModalProgressController)init;
- (void)_showSpinner:(id)a3;
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
    v6 = [(BRModalProgressController *)v2 view];
    [v6 bounds];
    v7 = [(_BRModalProgressTouchStealingView *)v5 initWithFrame:?];

    [(_BRModalProgressTouchStealingView *)v7 setAutoresizingMask:18];
    v8 = [(BRModalProgressController *)v2 view];
    [v8 addSubview:v7];
  }

  return v2;
}

- (void)_showSpinner:(id)a3
{
  v41 = [UIBlurEffect effectWithStyle:4];
  v4 = +[UIColor systemBackgroundColor];
  v5 = [(BRModalProgressController *)self view];
  [v5 setBackgroundColor:v4];

  v6 = [[UIVisualEffectView alloc] initWithEffect:v41];
  v7 = objc_alloc_init(UILabel);
  v8 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v6 _setContinuousCornerRadius:13.0];
  [v6 setClipsToBounds:1];
  v9 = [(BRModalProgressController *)self view];
  v10 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
  v11 = [v10 localizedStringForKey:@"PROGRESS_FINISHING_TEXT" value:@"Finishing up…" table:@"Localizable"];
  [v7 setText:v11];

  v12 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [v7 setFont:v12];

  v13 = +[UIColor labelColor];
  [v7 setTextColor:v13];

  [v8 startAnimating];
  [v9 addSubview:v6];
  v14 = [v6 contentView];
  [v14 addSubview:v7];

  v15 = [v6 contentView];
  [v15 addSubview:v8];

  v16 = objc_opt_new();
  v17 = [v6 widthAnchor];
  v18 = [v17 constraintEqualToConstant:288.0];
  [v16 addObject:v18];

  v19 = [v6 centerXAnchor];
  v20 = [v9 centerXAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];
  [v16 addObject:v21];

  v22 = [v6 centerYAnchor];
  v23 = [v9 centerYAnchor];
  v24 = [v22 constraintEqualToAnchor:v23];
  [v16 addObject:v24];

  v25 = [v7 centerXAnchor];
  v26 = [v6 centerXAnchor];
  v27 = [v25 constraintEqualToAnchor:v26];
  [v16 addObject:v27];

  v28 = [v8 centerXAnchor];
  v29 = [v6 centerXAnchor];
  v30 = [v28 constraintEqualToAnchor:v29];
  [v16 addObject:v30];

  v31 = [v8 topAnchor];
  v32 = [v6 topAnchor];
  v33 = [v31 constraintEqualToAnchor:v32 constant:18.0];
  [v16 addObject:v33];

  v34 = [v7 lastBaselineAnchor];
  v35 = [v8 bottomAnchor];
  v36 = [v7 font];
  [v36 _scaledValueForValue:22.0];
  v37 = [v34 constraintEqualToAnchor:v35 constant:?];
  [v16 addObject:v37];

  v38 = [v6 bottomAnchor];
  v39 = [v7 lastBaselineAnchor];
  v40 = [v38 constraintEqualToAnchor:v39 constant:22.0];
  [v16 addObject:v40];

  [NSLayoutConstraint activateConstraints:v16];
}

@end