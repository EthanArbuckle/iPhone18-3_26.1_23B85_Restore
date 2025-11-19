@interface HIDRMUIPairingCodeViewController
+ (id)createDigitViewArrayFromPairingCodeDigitArray:(id)a3;
- (void)configureWithCompletion:(id)a3;
- (void)handleNotification:(id)a3;
- (void)invalidate;
- (void)loadView;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation HIDRMUIPairingCodeViewController

+ (id)createDigitViewArrayFromPairingCodeDigitArray:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableArray);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = objc_alloc_init(UILabel);
        v11 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%u", [v9 unsignedIntValue]);
        [v10 setText:v11];

        [v10 setTextAlignment:1];
        v12 = [UIFont monospacedSystemFontOfSize:42.0 weight:UIFontWeightRegular];
        [v10 setFont:v12];

        [v10 setAlpha:0.35];
        [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
        [v4 addObject:v10];
      }

      v6 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v13 = [v4 copy];

  return v13;
}

- (void)loadView
{
  NSLog(@"loadView...", a2);
  [(HIDRMUIPairingCodeViewController *)self setDebugViews:0];
  v3 = objc_alloc_init(UIView);
  [(HIDRMUIPairingCodeViewController *)self setView:v3];
}

- (void)viewDidLoad
{
  NSLog(@"viewDidLoad...", a2);
  v77.receiver = self;
  v77.super_class = HIDRMUIPairingCodeViewController;
  [(HIDRMUIPairingCodeViewController *)&v77 viewDidLoad];
  v3 = [(HIDRMUIPairingCodeViewController *)self extensionContext];
  NSLog(@"self.extensionContext: %@", v3);

  v4 = [(HIDRMUIPairingCodeViewController *)self extensionContext];
  v5 = [v4 inputItems];
  NSLog(@"self.extensionContext.inputItems: %@", v5);

  v6 = [(HIDRMUIPairingCodeViewController *)self extensionContext];
  v7 = [v6 inputItems];
  v8 = [v7 firstObject];

  v9 = [v8 userInfo];
  NSLog(@"extensionItem.userInfo: %@", v9);

  v76 = v8;
  v10 = [v8 userInfo];
  v11 = [v10 objectForKeyedSubscript:@"HIDRMUINotificationPairingCodeDigits"];

  v12 = objc_alloc_init(UIView);
  v13 = [(HIDRMUIPairingCodeViewController *)self view];
  [v13 addSubview:v12];

  v14 = [UIStackView alloc];
  v75 = v11;
  v15 = [objc_opt_class() createDigitViewArrayFromPairingCodeDigitArray:v11];
  v16 = [v14 initWithArrangedSubviews:v15];
  [(HIDRMUIPairingCodeViewController *)self setStackView:v16];

  v17 = [(HIDRMUIPairingCodeViewController *)self stackView];
  [v17 setAxis:0];

  v18 = [(HIDRMUIPairingCodeViewController *)self stackView];
  [v18 setDistribution:1];

  v19 = [(HIDRMUIPairingCodeViewController *)self stackView];
  [v19 setAlignment:3];

  v20 = [(HIDRMUIPairingCodeViewController *)self stackView];
  [v20 setSpacing:12.0];

  v21 = [(HIDRMUIPairingCodeViewController *)self stackView];
  [v21 setTranslatesAutoresizingMaskIntoConstraints:0];

  v22 = [(HIDRMUIPairingCodeViewController *)self stackView];
  v23 = [v22 layer];
  [v23 setDisableUpdateMask:{objc_msgSend(v23, "disableUpdateMask") | 0x10}];

  v24 = [(HIDRMUIPairingCodeViewController *)self stackView];
  [v12 addSubview:v24];

  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  v74 = [(HIDRMUIPairingCodeViewController *)self stackView];
  v73 = [v74 leadingAnchor];
  v72 = [v12 leadingAnchor];
  v71 = [v73 constraintEqualToAnchor:v72 constant:20.0];
  v78[0] = v71;
  v70 = [(HIDRMUIPairingCodeViewController *)self stackView];
  v69 = [v70 trailingAnchor];
  v68 = [v12 trailingAnchor];
  v67 = [v69 constraintEqualToAnchor:v68 constant:-20.0];
  v78[1] = v67;
  v66 = [(HIDRMUIPairingCodeViewController *)self stackView];
  v65 = [v66 topAnchor];
  v64 = [v12 topAnchor];
  v63 = [v65 constraintEqualToAnchor:v64];
  v78[2] = v63;
  v62 = [(HIDRMUIPairingCodeViewController *)self stackView];
  v61 = [v62 bottomAnchor];
  v60 = [v12 bottomAnchor];
  v59 = [v61 constraintEqualToAnchor:v60];
  v78[3] = v59;
  v57 = [v12 centerXAnchor];
  v58 = [(HIDRMUIPairingCodeViewController *)self view];
  v56 = [v58 centerXAnchor];
  v55 = [v57 constraintEqualToAnchor:v56];
  v78[4] = v55;
  v53 = [v12 topAnchor];
  v54 = [(HIDRMUIPairingCodeViewController *)self view];
  v52 = [v54 topAnchor];
  v51 = [v53 constraintEqualToAnchor:v52];
  v78[5] = v51;
  v50 = [(HIDRMUIPairingCodeViewController *)self view];
  v25 = [v50 heightAnchor];
  v26 = [v12 heightAnchor];
  v27 = [v25 constraintEqualToAnchor:v26 constant:30.0];
  v78[6] = v27;
  v28 = [(HIDRMUIPairingCodeViewController *)self view];
  v29 = [v28 widthAnchor];
  v30 = [v12 widthAnchor];
  v31 = [v29 constraintEqualToAnchor:v30];
  v78[7] = v31;
  v32 = [NSArray arrayWithObjects:v78 count:8];
  [NSLayoutConstraint activateConstraints:v32];

  v33 = v12;
  if ([(HIDRMUIPairingCodeViewController *)self debugViews])
  {
    v34 = +[UIColor purpleColor];
    v35 = [v34 CGColor];
    v36 = [(HIDRMUIPairingCodeViewController *)self view];
    v37 = [v36 layer];
    [v37 setBorderColor:v35];

    v38 = [(HIDRMUIPairingCodeViewController *)self view];
    v39 = [v38 layer];
    [v39 setBorderWidth:2.0];

    v40 = +[UIColor blueColor];
    v41 = [v40 CGColor];
    v42 = [v33 layer];
    [v42 setBorderColor:v41];

    v43 = [v33 layer];
    [v43 setBorderWidth:2.0];

    v44 = +[UIColor greenColor];
    v45 = [v44 CGColor];
    v46 = [(HIDRMUIPairingCodeViewController *)self stackView];
    v47 = [v46 layer];
    [v47 setBorderColor:v45];

    v48 = [(HIDRMUIPairingCodeViewController *)self stackView];
    v49 = [v48 layer];
    [v49 setBorderWidth:2.0];
  }
}

- (void)viewDidLayoutSubviews
{
  v9.receiver = self;
  v9.super_class = HIDRMUIPairingCodeViewController;
  [(HIDRMUIPairingCodeViewController *)&v9 viewDidLayoutSubviews];
  v3 = [(HIDRMUIPairingCodeViewController *)self view];
  [v3 systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height}];
  v5 = v4;
  v7 = v6;

  [(HIDRMUIPairingCodeViewController *)self setPreferredContentSize:v5, v7];
  v10.width = v5;
  v10.height = v7;
  v8 = NSStringFromCGSize(v10);
  NSLog(@"fittingSize: %@", v8);
}

- (void)configureWithCompletion:(id)a3
{
  v5 = a3;
  NSLog(@"configureWithCompletion...");
  v4 = +[NSDistributedNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"handleNotification:" name:@"HIDRMUINotificationPairingCodeViewController" object:0];

  v5[2]();
}

- (void)invalidate
{
  NSLog(@"invalidate...", a2);
  v3 = +[NSDistributedNotificationCenter defaultCenter];
  [v3 removeObserver:self];
}

- (void)handleNotification:(id)a3
{
  v4 = a3;
  NSLog(@"handleNotification... (notification: %@)", v4);
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:@"HIDRMUINotificationMessage"];

  if (v6)
  {
    if ([v6 isEqual:@"HIDRMUINotificationMessagePairingDigitCorrect"])
    {
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v7 = [(HIDRMUIPairingCodeViewController *)self stackView];
      v8 = [v7 arrangedSubviews];

      v9 = [v8 countByEnumeratingWithState:&v38 objects:v42 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v39;
        while (2)
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v39 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v38 + 1) + 8 * i);
            [v13 alpha];
            if (v14 != 1.0)
            {
              [v13 setAlpha:1.0];
              goto LABEL_19;
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v38 objects:v42 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }
      }

      goto LABEL_19;
    }

    if ([v6 isEqual:@"HIDRMUINotificationMessagePairingFailure"])
    {
      v8 = [CABasicAnimation animationWithKeyPath:@"position"];
      [v8 setDuration:0.1];
      LODWORD(v15) = 2.0;
      [v8 setRepeatCount:v15];
      [v8 setAutoreverses:1];
      v16 = [(HIDRMUIPairingCodeViewController *)self stackView];
      [v16 center];
      v18 = v17 + -20.0;
      v19 = [(HIDRMUIPairingCodeViewController *)self stackView];
      [v19 center];
      v20 = [NSValue valueWithCGPoint:v18];
      [v8 setFromValue:v20];

      v21 = [(HIDRMUIPairingCodeViewController *)self stackView];
      [v21 center];
      v23 = v22 + 20.0;
      v24 = [(HIDRMUIPairingCodeViewController *)self stackView];
      [v24 center];
      v25 = [NSValue valueWithCGPoint:v23];
      [v8 setToValue:v25];

      v26 = [(HIDRMUIPairingCodeViewController *)self stackView];
      v27 = [v26 layer];
      [v27 addAnimation:v8 forKey:@"position"];

      [v8 duration];
      v29 = v28;
      [v8 repeatCount];
      v31 = v29 * v30;
      v32 = [v8 autoreverses];
      v33 = 1.0;
      if (v32)
      {
        v33 = 2.0;
      }

      v34 = (v31 * v33 * 1000.0);
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        sub_100001F14(v34);
      }

      v35 = dispatch_time(0, 1000000 * v34);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100001CA4;
      block[3] = &unk_1000041A0;
      block[4] = self;
      v37 = v4;
      dispatch_after(v35, &_dispatch_main_q, block);

LABEL_19:
    }
  }
}

@end