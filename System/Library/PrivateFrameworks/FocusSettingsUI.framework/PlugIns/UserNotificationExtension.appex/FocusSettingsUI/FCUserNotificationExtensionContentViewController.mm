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
  v3 = [(FCUserNotificationExtensionContentViewController *)self view];
  v4 = +[UIColor systemBackgroundColor];
  [v3 setBackgroundColor:v4];
}

- (void)_setUpViews
{
  v2 = [(FCUserNotificationExtensionContentViewController *)self view];
  v3 = objc_alloc_init(UIView);
  v4 = [objc_opt_class() _deviceViewBackgroundColor];
  [v3 setBackgroundColor:v4];

  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 _setContinuousCornerRadius:30.0];
  v5 = [v3 layer];
  [v5 setMasksToBounds:1];

  v6 = objc_alloc_init(UIImageView);
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = [UIImage systemImageNamed:@"person.crop.circle"];
  v8 = [v7 imageWithRenderingMode:2];
  [v6 setImage:v8];

  v9 = [objc_opt_class() _elementColor];
  [v6 setTintColor:v9];

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
  v23 = [objc_opt_class() _footnoteColor];
  [v22 setTextColor:v23];

  v24 = [UIFont systemFontOfSize:10.0];
  [v22 setFont:v24];

  [v22 setTextAlignment:1];
  [v22 setNumberOfLines:0];
  v25 = [objc_opt_class() _pillView];
  v26 = [objc_opt_class() _pillView];
  v27 = [objc_opt_class() _pillView];
  [v3 addSubview:v6];
  [v3 addSubview:v22];
  [v3 addSubview:v25];
  [v3 addSubview:v26];
  [v3 addSubview:v27];
  if (_os_feature_enabled_impl())
  {
    [v3 _setContinuousCornerRadius:SBSUIUserNotificationContentCornerRadius];
  }

  [v2 addSubview:v3];
  v110 = [v3 centerXAnchor];
  v109 = [v2 centerXAnchor];
  v108 = [v110 constraintEqualToAnchor:v109];
  v113[0] = v108;
  v107 = [v3 topAnchor];
  v106 = [v2 topAnchor];
  v105 = [v107 constraintEqualToAnchor:v106 constant:20.0];
  v113[1] = v105;
  v104 = [v3 bottomAnchor];
  v103 = [v2 bottomAnchor];
  v102 = [v104 constraintEqualToAnchor:v103 constant:30.0];
  v113[2] = v102;
  v101 = [v3 widthAnchor];
  v100 = [v101 constraintLessThanOrEqualToConstant:220.0];
  v113[3] = v100;
  v99 = [v3 leadingAnchor];
  v98 = [v2 leadingAnchor];
  v97 = [v99 constraintGreaterThanOrEqualToAnchor:v98];
  v113[4] = v97;
  v96 = [v3 trailingAnchor];
  v95 = [v2 trailingAnchor];
  v94 = [v96 constraintLessThanOrEqualToAnchor:v95];
  v113[5] = v94;
  v93 = [v6 centerXAnchor];
  v92 = [v3 centerXAnchor];
  v91 = [v93 constraintEqualToAnchor:v92];
  v113[6] = v91;
  v90 = [v6 topAnchor];
  v89 = [v3 topAnchor];
  v88 = [v90 constraintEqualToAnchor:v89 constant:16.0];
  v113[7] = v88;
  v87 = [v6 widthAnchor];
  v86 = [v87 constraintEqualToConstant:34.0];
  v113[8] = v86;
  v85 = [v6 widthAnchor];
  v84 = [v6 heightAnchor];
  v83 = [v85 constraintEqualToAnchor:v84];
  v113[9] = v83;
  v82 = [v25 leadingAnchor];
  v81 = [v3 leadingAnchor];
  v80 = [v82 constraintEqualToAnchor:v81 constant:20.0];
  v113[10] = v80;
  v79 = [v25 topAnchor];
  v78 = [v6 bottomAnchor];
  v77 = [v79 constraintEqualToAnchor:v78 constant:16.0];
  v113[11] = v77;
  v76 = [v25 widthAnchor];
  v75 = [v26 widthAnchor];
  v74 = [v76 constraintEqualToAnchor:v75 constant:-20.0];
  v113[12] = v74;
  v73 = [v25 heightAnchor];
  v72 = [v73 constraintEqualToConstant:26.0];
  v113[13] = v72;
  v70 = [v26 leadingAnchor];
  v69 = [v25 leadingAnchor];
  v68 = [v70 constraintEqualToAnchor:v69];
  v113[14] = v68;
  v66 = [v26 topAnchor];
  v65 = [v25 bottomAnchor];
  v63 = [v66 constraintEqualToAnchor:v65 constant:4.0];
  v113[15] = v63;
  v59 = [v26 widthAnchor];
  v58 = [v27 widthAnchor];
  v57 = [v59 constraintEqualToAnchor:v58 constant:-10.0];
  v113[16] = v57;
  v56 = [v26 heightAnchor];
  v55 = [v56 constraintEqualToConstant:26.0];
  v113[17] = v55;
  v54 = [v27 trailingAnchor];
  v53 = [v3 trailingAnchor];
  v52 = [v54 constraintEqualToAnchor:v53 constant:-20.0];
  v113[18] = v52;
  v51 = [v27 topAnchor];
  v50 = [v26 bottomAnchor];
  v49 = [v51 constraintEqualToAnchor:v50 constant:8.0];
  v113[19] = v49;
  v48 = [v27 widthAnchor];
  v47 = [v3 widthAnchor];
  v46 = [v48 constraintEqualToAnchor:v47 multiplier:0.52];
  v113[20] = v46;
  v45 = [v27 heightAnchor];
  v44 = [v45 constraintEqualToConstant:26.0];
  v113[21] = v44;
  v43 = [v22 centerXAnchor];
  v42 = [v3 centerXAnchor];
  v41 = [v43 constraintEqualToAnchor:v42];
  v113[22] = v41;
  v40 = [v22 bottomAnchor];
  v39 = [v2 bottomAnchor];
  v38 = [v40 constraintEqualToAnchor:v39 constant:-15.0];
  v113[23] = v38;
  v37 = [v22 leadingAnchor];
  [v3 leadingAnchor];
  v28 = v71 = v2;
  v29 = [v37 constraintGreaterThanOrEqualToAnchor:v28 constant:14.0];
  v113[24] = v29;
  v30 = [v22 trailingAnchor];
  v31 = [v3 trailingAnchor];
  [v30 constraintLessThanOrEqualToAnchor:v31 constant:-14.0];
  v32 = v67 = v3;
  v113[25] = v32;
  [v22 topAnchor];
  v33 = v64 = v25;
  [v27 bottomAnchor];
  v34 = v60 = v26;
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
  v4 = [a1 _elementColor];
  [v3 setBackgroundColor:v4];

  [v3 _setCornerRadius:13.0];

  return v3;
}

@end