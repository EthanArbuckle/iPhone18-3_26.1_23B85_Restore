@interface HIDRMUIPairingCodeViewController
+ (id)createDigitViewArrayFromPairingCodeDigitArray:(id)array;
- (void)configureWithCompletion:(id)completion;
- (void)handleNotification:(id)notification;
- (void)invalidate;
- (void)loadView;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation HIDRMUIPairingCodeViewController

+ (id)createDigitViewArrayFromPairingCodeDigitArray:(id)array
{
  arrayCopy = array;
  v4 = objc_alloc_init(NSMutableArray);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = arrayCopy;
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
  extensionContext = [(HIDRMUIPairingCodeViewController *)self extensionContext];
  NSLog(@"self.extensionContext: %@", extensionContext);

  extensionContext2 = [(HIDRMUIPairingCodeViewController *)self extensionContext];
  inputItems = [extensionContext2 inputItems];
  NSLog(@"self.extensionContext.inputItems: %@", inputItems);

  extensionContext3 = [(HIDRMUIPairingCodeViewController *)self extensionContext];
  inputItems2 = [extensionContext3 inputItems];
  firstObject = [inputItems2 firstObject];

  userInfo = [firstObject userInfo];
  NSLog(@"extensionItem.userInfo: %@", userInfo);

  v76 = firstObject;
  userInfo2 = [firstObject userInfo];
  v11 = [userInfo2 objectForKeyedSubscript:@"HIDRMUINotificationPairingCodeDigits"];

  v12 = objc_alloc_init(UIView);
  view = [(HIDRMUIPairingCodeViewController *)self view];
  [view addSubview:v12];

  v14 = [UIStackView alloc];
  v75 = v11;
  v15 = [objc_opt_class() createDigitViewArrayFromPairingCodeDigitArray:v11];
  v16 = [v14 initWithArrangedSubviews:v15];
  [(HIDRMUIPairingCodeViewController *)self setStackView:v16];

  stackView = [(HIDRMUIPairingCodeViewController *)self stackView];
  [stackView setAxis:0];

  stackView2 = [(HIDRMUIPairingCodeViewController *)self stackView];
  [stackView2 setDistribution:1];

  stackView3 = [(HIDRMUIPairingCodeViewController *)self stackView];
  [stackView3 setAlignment:3];

  stackView4 = [(HIDRMUIPairingCodeViewController *)self stackView];
  [stackView4 setSpacing:12.0];

  stackView5 = [(HIDRMUIPairingCodeViewController *)self stackView];
  [stackView5 setTranslatesAutoresizingMaskIntoConstraints:0];

  stackView6 = [(HIDRMUIPairingCodeViewController *)self stackView];
  layer = [stackView6 layer];
  [layer setDisableUpdateMask:{objc_msgSend(layer, "disableUpdateMask") | 0x10}];

  stackView7 = [(HIDRMUIPairingCodeViewController *)self stackView];
  [v12 addSubview:stackView7];

  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  stackView8 = [(HIDRMUIPairingCodeViewController *)self stackView];
  leadingAnchor = [stackView8 leadingAnchor];
  leadingAnchor2 = [v12 leadingAnchor];
  v71 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:20.0];
  v78[0] = v71;
  stackView9 = [(HIDRMUIPairingCodeViewController *)self stackView];
  trailingAnchor = [stackView9 trailingAnchor];
  trailingAnchor2 = [v12 trailingAnchor];
  v67 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-20.0];
  v78[1] = v67;
  stackView10 = [(HIDRMUIPairingCodeViewController *)self stackView];
  topAnchor = [stackView10 topAnchor];
  topAnchor2 = [v12 topAnchor];
  v63 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v78[2] = v63;
  stackView11 = [(HIDRMUIPairingCodeViewController *)self stackView];
  bottomAnchor = [stackView11 bottomAnchor];
  bottomAnchor2 = [v12 bottomAnchor];
  v59 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v78[3] = v59;
  centerXAnchor = [v12 centerXAnchor];
  view2 = [(HIDRMUIPairingCodeViewController *)self view];
  centerXAnchor2 = [view2 centerXAnchor];
  v55 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v78[4] = v55;
  topAnchor3 = [v12 topAnchor];
  view3 = [(HIDRMUIPairingCodeViewController *)self view];
  topAnchor4 = [view3 topAnchor];
  v51 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v78[5] = v51;
  view4 = [(HIDRMUIPairingCodeViewController *)self view];
  heightAnchor = [view4 heightAnchor];
  heightAnchor2 = [v12 heightAnchor];
  v27 = [heightAnchor constraintEqualToAnchor:heightAnchor2 constant:30.0];
  v78[6] = v27;
  view5 = [(HIDRMUIPairingCodeViewController *)self view];
  widthAnchor = [view5 widthAnchor];
  widthAnchor2 = [v12 widthAnchor];
  v31 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  v78[7] = v31;
  v32 = [NSArray arrayWithObjects:v78 count:8];
  [NSLayoutConstraint activateConstraints:v32];

  v33 = v12;
  if ([(HIDRMUIPairingCodeViewController *)self debugViews])
  {
    v34 = +[UIColor purpleColor];
    cGColor = [v34 CGColor];
    view6 = [(HIDRMUIPairingCodeViewController *)self view];
    layer2 = [view6 layer];
    [layer2 setBorderColor:cGColor];

    view7 = [(HIDRMUIPairingCodeViewController *)self view];
    layer3 = [view7 layer];
    [layer3 setBorderWidth:2.0];

    v40 = +[UIColor blueColor];
    cGColor2 = [v40 CGColor];
    layer4 = [v33 layer];
    [layer4 setBorderColor:cGColor2];

    layer5 = [v33 layer];
    [layer5 setBorderWidth:2.0];

    v44 = +[UIColor greenColor];
    cGColor3 = [v44 CGColor];
    stackView12 = [(HIDRMUIPairingCodeViewController *)self stackView];
    layer6 = [stackView12 layer];
    [layer6 setBorderColor:cGColor3];

    stackView13 = [(HIDRMUIPairingCodeViewController *)self stackView];
    layer7 = [stackView13 layer];
    [layer7 setBorderWidth:2.0];
  }
}

- (void)viewDidLayoutSubviews
{
  v9.receiver = self;
  v9.super_class = HIDRMUIPairingCodeViewController;
  [(HIDRMUIPairingCodeViewController *)&v9 viewDidLayoutSubviews];
  view = [(HIDRMUIPairingCodeViewController *)self view];
  [view systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height}];
  v5 = v4;
  v7 = v6;

  [(HIDRMUIPairingCodeViewController *)self setPreferredContentSize:v5, v7];
  v10.width = v5;
  v10.height = v7;
  v8 = NSStringFromCGSize(v10);
  NSLog(@"fittingSize: %@", v8);
}

- (void)configureWithCompletion:(id)completion
{
  completionCopy = completion;
  NSLog(@"configureWithCompletion...");
  v4 = +[NSDistributedNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"handleNotification:" name:@"HIDRMUINotificationPairingCodeViewController" object:0];

  completionCopy[2]();
}

- (void)invalidate
{
  NSLog(@"invalidate...", a2);
  v3 = +[NSDistributedNotificationCenter defaultCenter];
  [v3 removeObserver:self];
}

- (void)handleNotification:(id)notification
{
  notificationCopy = notification;
  NSLog(@"handleNotification... (notification: %@)", notificationCopy);
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"HIDRMUINotificationMessage"];

  if (v6)
  {
    if ([v6 isEqual:@"HIDRMUINotificationMessagePairingDigitCorrect"])
    {
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      stackView = [(HIDRMUIPairingCodeViewController *)self stackView];
      arrangedSubviews = [stackView arrangedSubviews];

      v9 = [arrangedSubviews countByEnumeratingWithState:&v38 objects:v42 count:16];
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
              objc_enumerationMutation(arrangedSubviews);
            }

            v13 = *(*(&v38 + 1) + 8 * i);
            [v13 alpha];
            if (v14 != 1.0)
            {
              [v13 setAlpha:1.0];
              goto LABEL_19;
            }
          }

          v10 = [arrangedSubviews countByEnumeratingWithState:&v38 objects:v42 count:16];
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
      arrangedSubviews = [CABasicAnimation animationWithKeyPath:@"position"];
      [arrangedSubviews setDuration:0.1];
      LODWORD(v15) = 2.0;
      [arrangedSubviews setRepeatCount:v15];
      [arrangedSubviews setAutoreverses:1];
      stackView2 = [(HIDRMUIPairingCodeViewController *)self stackView];
      [stackView2 center];
      v18 = v17 + -20.0;
      stackView3 = [(HIDRMUIPairingCodeViewController *)self stackView];
      [stackView3 center];
      v20 = [NSValue valueWithCGPoint:v18];
      [arrangedSubviews setFromValue:v20];

      stackView4 = [(HIDRMUIPairingCodeViewController *)self stackView];
      [stackView4 center];
      v23 = v22 + 20.0;
      stackView5 = [(HIDRMUIPairingCodeViewController *)self stackView];
      [stackView5 center];
      v25 = [NSValue valueWithCGPoint:v23];
      [arrangedSubviews setToValue:v25];

      stackView6 = [(HIDRMUIPairingCodeViewController *)self stackView];
      layer = [stackView6 layer];
      [layer addAnimation:arrangedSubviews forKey:@"position"];

      [arrangedSubviews duration];
      v29 = v28;
      [arrangedSubviews repeatCount];
      v31 = v29 * v30;
      autoreverses = [arrangedSubviews autoreverses];
      v33 = 1.0;
      if (autoreverses)
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
      v37 = notificationCopy;
      dispatch_after(v35, &_dispatch_main_q, block);

LABEL_19:
    }
  }
}

@end