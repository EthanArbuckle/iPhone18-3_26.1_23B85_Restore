@interface FCUserNotificationExtensionContentViewController
+ (id)_pillView;
- (void)_setUpViews;
- (void)loadView;
- (void)viewDidLoad;
@end

@implementation FCUserNotificationExtensionContentViewController

- (void)loadView
{
  v3 = objc_alloc_init(UIView);
  [(FCUserNotificationExtensionContentViewController *)self setView:v3];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = FCUserNotificationExtensionContentViewController;
  [(FCUserNotificationExtensionContentViewController *)&v5 viewDidLoad];
  [(FCUserNotificationExtensionContentViewController *)self _setUpViews];
  [(FCUserNotificationExtensionContentViewController *)self setPreferredContentSize:270.0, 250.0];
  view = [(FCUserNotificationExtensionContentViewController *)self view];
  v4 = +[UIColor systemBackgroundColor];
  [view setBackgroundColor:v4];
}

- (void)_setUpViews
{
  view = [(FCUserNotificationExtensionContentViewController *)self view];
  v3 = objc_alloc_init(UIView);
  _deviceViewBackgroundColor = [objc_opt_class() _deviceViewBackgroundColor];
  [v3 setBackgroundColor:_deviceViewBackgroundColor];

  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 _setContinuousCornerRadius:30.0];
  layer = [v3 layer];
  [layer setMasksToBounds:1];

  v6 = objc_alloc_init(UIImageView);
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = [UIImage systemImageNamed:@"person.crop.circle"];
  v8 = [v7 imageWithRenderingMode:2];
  [v6 setImage:v8];

  _elementColor = [objc_opt_class() _elementColor];
  [v6 setTintColor:_elementColor];

  v10 = [UIImageSymbolConfiguration configurationWithScale:1];
  v11 = [UIImage systemImageNamed:@"moon.fill" withConfiguration:v10];
  v12 = [NSTextAttachment textAttachmentWithImage:v11];

  v13 = objc_alloc_init(NSMutableAttributedString);
  v112 = v12;
  v14 = [NSAttributedString attributedStringWithAttachment:v12];
  [v13 appendAttributedString:v14];

  v15 = [NSAttributedString alloc];
  v114 = NSKernAttributeName;
  v115 = &off_100004200;
  v16 = [NSDictionary dictionaryWithObjects:&v115 forKeys:&v114 count:1];
  v17 = [v15 initWithString:@"​ " attributes:v16];
  [v13 appendAttributedString:v17];

  v18 = [NSAttributedString alloc];
  v19 = +[NSBundle mainBundle];
  v20 = [v19 localizedStringForKey:@"NOTIFICATIONS_ALLOWED" value:&stru_1000041B8 table:0];
  v21 = [v18 initWithString:v20];
  [v13 appendAttributedString:v21];

  v22 = objc_alloc_init(UILabel);
  [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
  v111 = v13;
  [v22 setAttributedText:v13];
  _footnoteColor = [objc_opt_class() _footnoteColor];
  [v22 setTextColor:_footnoteColor];

  v24 = [UIFont systemFontOfSize:10.0];
  [v22 setFont:v24];

  [v22 setTextAlignment:1];
  [v22 setNumberOfLines:0];
  _pillView = [objc_opt_class() _pillView];
  _pillView2 = [objc_opt_class() _pillView];
  _pillView3 = [objc_opt_class() _pillView];
  [v3 addSubview:v6];
  [v3 addSubview:v22];
  [v3 addSubview:_pillView];
  [v3 addSubview:_pillView2];
  [v3 addSubview:_pillView3];
  if (_os_feature_enabled_impl())
  {
    [v3 _setContinuousCornerRadius:SBSUIUserNotificationContentCornerRadius];
  }

  [view addSubview:v3];
  centerXAnchor = [v3 centerXAnchor];
  centerXAnchor2 = [view centerXAnchor];
  v108 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v113[0] = v108;
  topAnchor = [v3 topAnchor];
  topAnchor2 = [view topAnchor];
  v105 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:20.0];
  v113[1] = v105;
  bottomAnchor = [v3 bottomAnchor];
  bottomAnchor2 = [view bottomAnchor];
  v102 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:30.0];
  v113[2] = v102;
  widthAnchor = [v3 widthAnchor];
  v100 = [widthAnchor constraintLessThanOrEqualToConstant:220.0];
  v113[3] = v100;
  leadingAnchor = [v3 leadingAnchor];
  leadingAnchor2 = [view leadingAnchor];
  v97 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2];
  v113[4] = v97;
  trailingAnchor = [v3 trailingAnchor];
  trailingAnchor2 = [view trailingAnchor];
  v94 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2];
  v113[5] = v94;
  centerXAnchor3 = [v6 centerXAnchor];
  centerXAnchor4 = [v3 centerXAnchor];
  v91 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  v113[6] = v91;
  topAnchor3 = [v6 topAnchor];
  topAnchor4 = [v3 topAnchor];
  v88 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:16.0];
  v113[7] = v88;
  widthAnchor2 = [v6 widthAnchor];
  v86 = [widthAnchor2 constraintEqualToConstant:34.0];
  v113[8] = v86;
  widthAnchor3 = [v6 widthAnchor];
  heightAnchor = [v6 heightAnchor];
  v83 = [widthAnchor3 constraintEqualToAnchor:heightAnchor];
  v113[9] = v83;
  leadingAnchor3 = [_pillView leadingAnchor];
  leadingAnchor4 = [v3 leadingAnchor];
  v80 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:20.0];
  v113[10] = v80;
  topAnchor5 = [_pillView topAnchor];
  bottomAnchor3 = [v6 bottomAnchor];
  v77 = [topAnchor5 constraintEqualToAnchor:bottomAnchor3 constant:16.0];
  v113[11] = v77;
  widthAnchor4 = [_pillView widthAnchor];
  widthAnchor5 = [_pillView2 widthAnchor];
  v74 = [widthAnchor4 constraintEqualToAnchor:widthAnchor5 constant:-20.0];
  v113[12] = v74;
  heightAnchor2 = [_pillView heightAnchor];
  v72 = [heightAnchor2 constraintEqualToConstant:26.0];
  v113[13] = v72;
  leadingAnchor5 = [_pillView2 leadingAnchor];
  leadingAnchor6 = [_pillView leadingAnchor];
  v68 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  v113[14] = v68;
  topAnchor6 = [_pillView2 topAnchor];
  bottomAnchor4 = [_pillView bottomAnchor];
  v63 = [topAnchor6 constraintEqualToAnchor:bottomAnchor4 constant:4.0];
  v113[15] = v63;
  widthAnchor6 = [_pillView2 widthAnchor];
  widthAnchor7 = [_pillView3 widthAnchor];
  v57 = [widthAnchor6 constraintEqualToAnchor:widthAnchor7 constant:-10.0];
  v113[16] = v57;
  heightAnchor3 = [_pillView2 heightAnchor];
  v55 = [heightAnchor3 constraintEqualToConstant:26.0];
  v113[17] = v55;
  trailingAnchor3 = [_pillView3 trailingAnchor];
  trailingAnchor4 = [v3 trailingAnchor];
  v52 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-20.0];
  v113[18] = v52;
  topAnchor7 = [_pillView3 topAnchor];
  bottomAnchor5 = [_pillView2 bottomAnchor];
  v49 = [topAnchor7 constraintEqualToAnchor:bottomAnchor5 constant:8.0];
  v113[19] = v49;
  widthAnchor8 = [_pillView3 widthAnchor];
  widthAnchor9 = [v3 widthAnchor];
  v46 = [widthAnchor8 constraintEqualToAnchor:widthAnchor9 multiplier:0.52];
  v113[20] = v46;
  heightAnchor4 = [_pillView3 heightAnchor];
  v44 = [heightAnchor4 constraintEqualToConstant:26.0];
  v113[21] = v44;
  centerXAnchor5 = [v22 centerXAnchor];
  centerXAnchor6 = [v3 centerXAnchor];
  v41 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
  v113[22] = v41;
  bottomAnchor6 = [v22 bottomAnchor];
  bottomAnchor7 = [view bottomAnchor];
  v38 = [bottomAnchor6 constraintEqualToAnchor:bottomAnchor7 constant:-15.0];
  v113[23] = v38;
  leadingAnchor7 = [v22 leadingAnchor];
  [v3 leadingAnchor];
  v28 = v71 = view;
  v29 = [leadingAnchor7 constraintGreaterThanOrEqualToAnchor:v28 constant:14.0];
  v113[24] = v29;
  trailingAnchor5 = [v22 trailingAnchor];
  trailingAnchor6 = [v3 trailingAnchor];
  [trailingAnchor5 constraintLessThanOrEqualToAnchor:trailingAnchor6 constant:-14.0];
  v32 = v67 = v3;
  v113[25] = v32;
  [v22 topAnchor];
  v33 = v64 = _pillView;
  [_pillView3 bottomAnchor];
  v34 = v60 = _pillView2;
  [v33 constraintGreaterThanOrEqualToAnchor:v34];
  v35 = v62 = v22;
  v113[26] = v35;
  [NSArray arrayWithObjects:v113 count:27];
  v36 = v61 = v6;
  [NSLayoutConstraint activateConstraints:v36];
}

+ (id)_pillView
{
  v3 = objc_alloc_init(UIView);
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  _elementColor = [self _elementColor];
  [v3 setBackgroundColor:_elementColor];

  [v3 _setCornerRadius:13.0];

  return v3;
}

@end