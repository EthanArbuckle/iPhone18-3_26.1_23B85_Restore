@interface NotificationViewController
- (BOOL)doesContainValidAppleSafetyAlertData:(id)data;
- (BOOL)drawIcon:(id)icon;
- (BOOL)isScreenLocked;
- (CGSize)getImageBounds;
- (CGSize)getImageBoundsForPhone;
- (CGSize)getImageBoundsForWatch;
- (void)addGestureRecognizer;
- (void)cellBroadcastMessageReceived:(id)received;
- (void)didReceiveNotification:(id)notification;
- (void)displayDividerStack:(BOOL)stack;
- (void)displaySafetyAlertStack:(BOOL)stack withSpinner:(BOOL)spinner;
- (void)displayWeaStackCenterAligned:(BOOL)aligned;
- (void)displayWeaStackTopAligned:(BOOL)aligned;
- (void)drawAllIcons;
- (void)gestureTap:(id)tap;
- (void)hideAllViews;
- (void)renderBasedOnScreenState;
- (void)renderSafetyAlertDetailedView;
- (void)renderSafetyAlertWithSpinnerView;
- (void)renderSafetyAlertsView;
- (void)setLabel:(id)label withText:(id)text isBold:(BOOL)bold;
- (void)setTextView:(id)view withText:(id)text isBold:(BOOL)bold;
- (void)setupAlertWithNotification:(id)notification;
- (void)setupTextsWithNotification:(id)notification;
- (void)viewDidLoad;
@end

@implementation NotificationViewController

- (BOOL)isScreenLocked
{
  v2 = +[IMSystemMonitor sharedInstance];
  isScreenLocked = [v2 isScreenLocked];

  return isScreenLocked;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = NotificationViewController;
  [(NotificationViewController *)&v4 viewDidLoad];
  if (qword_10000CD48 != -1)
  {
    sub_100003D90();
  }

  v2 = qword_10000CD40;
  if (os_log_type_enabled(qword_10000CD40, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "View did load", v3, 2u);
  }

  TUAddTelephonyCenterObserver();
}

- (CGSize)getImageBoundsForPhone
{
  v2 = 36.0;
  v3 = 36.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)getImageBoundsForWatch
{
  view = [(NotificationViewController *)self view];
  window = [view window];
  [window frame];
  v5 = v4 * 0.5;

  v6 = v5;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (CGSize)getImageBounds
{
  v3 = +[UIDevice currentDevice];
  model = [v3 model];

  lowercaseString = [model lowercaseString];
  v6 = [lowercaseString containsString:@"phone"];

  if (v6)
  {
    [(NotificationViewController *)self getImageBoundsForPhone];
  }

  else
  {
    [(NotificationViewController *)self getImageBoundsForWatch];
  }

  v9 = v7;
  v10 = v8;

  v11 = v9;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (BOOL)drawIcon:(id)icon
{
  iconCopy = icon;
  v5 = [NSBundle bundleWithPath:@"/System/Library/UserNotifications/Bundles/com.apple.cmas.bundle"];
  if (v5)
  {
    v6 = [UIImage imageNamed:@"emergency-216" inBundle:v5 withConfiguration:0];
    v7 = v6 != 0;
    if (v6)
    {
      [(NotificationViewController *)self getImageBounds];
      v9 = v8;
      v11 = v10;
      v12 = qword_10000CD40;
      if (os_log_type_enabled(qword_10000CD40, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 134218240;
        v22 = v9;
        v23 = 2048;
        v24 = v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Icon size: [w: %lf, h: %lf]", &v21, 0x16u);
      }

      v13 = [v6 imageWithSize:{v9, v11}];
      [iconCopy setImage:v13];

      view = [(NotificationViewController *)self view];
      [view frame];
      v16 = v15;
      view2 = [(NotificationViewController *)self view];
      [view2 frame];
      [iconCopy setFrame:v16];
    }

    else
    {
      v19 = qword_10000CD40;
      if (os_log_type_enabled(qword_10000CD40, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v21) = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Icon could not be loaded", &v21, 2u);
      }
    }
  }

  else
  {
    v18 = qword_10000CD40;
    if (os_log_type_enabled(qword_10000CD40, OS_LOG_TYPE_ERROR))
    {
      sub_100003DB8(@"/System/Library/UserNotifications/Bundles/com.apple.cmas.bundle", v18);
    }

    v7 = 0;
  }

  return v7;
}

- (void)setLabel:(id)label withText:(id)text isBold:(BOOL)bold
{
  v6 = &UIFontWeightBold;
  if (!bold)
  {
    v6 = &UIFontWeightRegular;
  }

  v7 = *v6;
  textCopy = text;
  labelCopy = label;
  font = [labelCopy font];
  [font pointSize];
  v11 = [UIFont systemFontOfSize:"systemFontOfSize:weight:" weight:?];
  v13 = [NSDictionary dictionaryWithObject:v11 forKey:NSFontAttributeName];

  v12 = [[NSMutableAttributedString alloc] initWithString:textCopy attributes:v13];
  [labelCopy setAttributedText:v12];
  [labelCopy setNumberOfLines:0];
  [labelCopy setLineBreakMode:0];
}

- (void)setTextView:(id)view withText:(id)text isBold:(BOOL)bold
{
  v6 = &UIFontWeightBold;
  if (!bold)
  {
    v6 = &UIFontWeightRegular;
  }

  v7 = *v6;
  textCopy = text;
  viewCopy = view;
  +[UIFont systemFontSize];
  v11 = [UIFont systemFontOfSize:v10 + 3.0 weight:v7];
  v12 = [NSDictionary dictionaryWithObject:v11 forKey:NSFontAttributeName];

  v13 = [[NSMutableAttributedString alloc] initWithString:textCopy attributes:v12];
  v26 = 0;
  v14 = [NSDataDetector dataDetectorWithTypes:2096 error:&v26];
  v15 = v26;
  v16 = [textCopy length];
  v21 = _NSConcreteStackBlock;
  v22 = 3221225472;
  v23 = sub_1000019C4;
  v24 = &unk_1000082A8;
  v25 = v13;
  v17 = v13;
  [v14 enumerateMatchesInString:textCopy options:0 range:0 usingBlock:{v16, &v21}];

  [viewCopy setAttributedText:{v17, v21, v22, v23, v24}];
  [viewCopy setUserInteractionEnabled:1];
  [viewCopy setScrollEnabled:0];
  [viewCopy setEditable:0];
  [viewCopy setSelectable:1];
  textContainer = [viewCopy textContainer];
  [textContainer setLineFragmentPadding:0.0];

  [viewCopy setTextContainerInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  v19 = +[UIColor clearColor];
  [viewCopy setBackgroundColor:v19];

  v20 = +[UIColor labelColor];
  [viewCopy setTextColor:v20];
}

- (void)cellBroadcastMessageReceived:(id)received
{
  receivedCopy = received;
  v5 = qword_10000CD40;
  if (receivedCopy)
  {
    if (os_log_type_enabled(qword_10000CD40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received cellbroadcast message", buf, 2u);
    }

    v6 = [receivedCopy objectForKey:kCTSMSAppleSafetyAlertData];
    v7 = [receivedCopy objectForKey:@"kCTSMSAppleSafetyAlertMissingForHash"];
    if (!v7)
    {
      goto LABEL_9;
    }

    centerBody = [(NotificationViewController *)self centerBody];
    text = [centerBody text];
    v10 = ea_getHashForString(text);
    v11 = [v7 isEqualToString:v10];

    if (v11)
    {
      v12 = qword_10000CD40;
      if (os_log_type_enabled(qword_10000CD40, OS_LOG_TYPE_DEFAULT))
      {
        *v44 = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Removing spinner for safety alert...", v44, 2u);
      }

      safetyAlertSpinner = [(NotificationViewController *)self safetyAlertSpinner];
      [safetyAlertSpinner setHidden:1];
    }

    else
    {
LABEL_9:
      if (v6)
      {
        v14 = [v6 objectForKeyedSubscript:@"CmamText"];
        v15 = ea_getHashForString(v14);

        v16 = [v6 objectForKeyedSubscript:@"CmamLongText"];
        v17 = ea_getHashForString(v16);

        if (v15 | v17)
        {
          centerBody2 = [(NotificationViewController *)self centerBody];
          text2 = [centerBody2 text];
          v20 = ea_getHashForString(text2);

          v21 = v20;
          if ([v20 isEqualToString:v15] & 1) != 0 || (objc_msgSend(v20, "isEqualToString:", v17))
          {
            v22 = [v6 objectForKeyedSubscript:@"Instruction"];
            v41 = v22;
            if (!ea_isValidString(v22))
            {
              goto LABEL_34;
            }

            centerBody3 = [(NotificationViewController *)self centerBody];
            [centerBody3 text];
            v40 = v15;
            v24 = v17;
            v26 = v25 = v21;
            v27 = [v26 rangeOfString:v22];

            v21 = v25;
            v17 = v24;
            v15 = v40;

            if (v27 == 0x7FFFFFFFFFFFFFFFLL)
            {
              instructionText = [(NotificationViewController *)self instructionText];
              selfCopy2 = self;
              v30 = instructionText;
              v31 = v41;
            }

            else
            {
LABEL_34:
              if (os_log_type_enabled(qword_10000CD40, OS_LOG_TYPE_ERROR))
              {
                sub_100003E64();
              }

              instructionText = [(NotificationViewController *)self instructionText];
              v31 = &stru_1000084C0;
              selfCopy2 = self;
              v30 = instructionText;
            }

            [(NotificationViewController *)selfCopy2 setTextView:v30 withText:v31 isBold:0];

            instructionText2 = [(NotificationViewController *)self instructionText];
            [instructionText2 setTextAlignment:1];

            v34 = [NSBundle bundleForClass:objc_opt_class()];
            v35 = [v34 localizedStringForKey:@"ADDITIONAL_DETAILS" value:@"Additional Details" table:0];

            additionalDetails = [(NotificationViewController *)self additionalDetails];
            [(NotificationViewController *)self setLabel:additionalDetails withText:v35 isBold:1];

            centerBody4 = [(NotificationViewController *)self centerBody];
            text3 = [centerBody4 text];
            ea_sendSafetyAlertTapIndication(text3, 1);

            [(NotificationViewController *)self renderBasedOnScreenState];
          }

          else
          {
            v39 = qword_10000CD40;
            if (os_log_type_enabled(qword_10000CD40, OS_LOG_TYPE_DEFAULT))
            {
              *v42 = 0;
              _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Ignoring received apple safety alert...", v42, 2u);
            }
          }
        }

        else if (os_log_type_enabled(qword_10000CD40, OS_LOG_TYPE_ERROR))
        {
          sub_100003E30();
        }
      }

      else
      {
        v32 = qword_10000CD40;
        if (os_log_type_enabled(qword_10000CD40, OS_LOG_TYPE_DEFAULT))
        {
          *v43 = 0;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Ignoring non safety alert content", v43, 2u);
        }
      }
    }
  }

  else if (os_log_type_enabled(qword_10000CD40, OS_LOG_TYPE_ERROR))
  {
    sub_100003E98();
  }
}

- (BOOL)doesContainValidAppleSafetyAlertData:(id)data
{
  dataCopy = data;
  request = [dataCopy request];
  content = [request content];
  userInfo = [content userInfo];
  v7 = [userInfo objectForKeyedSubscript:@"Instruction"];

  request2 = [dataCopy request];
  content2 = [request2 content];
  userInfo2 = [content2 userInfo];
  v11 = [userInfo2 objectForKeyedSubscript:@"EffectiveTimestamp"];

  if (!ea_isValidString(v7))
  {
    goto LABEL_4;
  }

  request3 = [dataCopy request];
  content3 = [request3 content];
  body = [content3 body];
  v15 = [body rangeOfString:v7];

  if (v15 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v16 = 1;
  }

  else
  {
LABEL_4:
    v16 = ea_isValidString(v11);
  }

  return v16;
}

- (void)drawAllIcons
{
  centerAlertIcon = [(NotificationViewController *)self centerAlertIcon];
  v4 = [(NotificationViewController *)self drawIcon:centerAlertIcon];

  if ((v4 & 1) == 0 && os_log_type_enabled(qword_10000CD40, OS_LOG_TYPE_ERROR))
  {
    sub_100003ECC();
  }

  topAlertIcon = [(NotificationViewController *)self topAlertIcon];
  v6 = [(NotificationViewController *)self drawIcon:topAlertIcon];

  if ((v6 & 1) == 0 && os_log_type_enabled(qword_10000CD40, OS_LOG_TYPE_ERROR))
  {
    sub_100003F00();
  }
}

- (void)displayWeaStackCenterAligned:(BOOL)aligned
{
  alignedCopy = aligned;
  weaStackCenterAligned = [(NotificationViewController *)self weaStackCenterAligned];
  [weaStackCenterAligned setHidden:!alignedCopy];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  weaStackCenterAligned2 = [(NotificationViewController *)self weaStackCenterAligned];
  subviews = [weaStackCenterAligned2 subviews];

  v8 = [subviews countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(subviews);
        }

        [*(*(&v12 + 1) + 8 * v11) setHidden:!alignedCopy];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [subviews countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)displaySafetyAlertStack:(BOOL)stack withSpinner:(BOOL)spinner
{
  spinnerCopy = spinner;
  stackCopy = stack;
  safetyAlertStack = [(NotificationViewController *)self safetyAlertStack];
  [safetyAlertStack setHidden:!stackCopy];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  safetyAlertStack2 = [(NotificationViewController *)self safetyAlertStack];
  subviews = [safetyAlertStack2 subviews];

  v10 = [subviews countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v24;
    do
    {
      v13 = 0;
      do
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(subviews);
        }

        [*(*(&v23 + 1) + 8 * v13) setHidden:!stackCopy];
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [subviews countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v11);
  }

  if (stackCopy)
  {
    v14 = qword_10000CD40;
    v15 = os_log_type_enabled(qword_10000CD40, OS_LOG_TYPE_DEFAULT);
    if (spinnerCopy)
    {
      if (v15)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Showing spinner view", buf, 2u);
      }

      safetyAlertStack3 = [(NotificationViewController *)self safetyAlertStack];
      [safetyAlertStack3 setHidden:0];

      additionalDetails = [(NotificationViewController *)self additionalDetails];
      [additionalDetails setHidden:1];

      v18 = dispatch_time(0, 300000000);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100002704;
      block[3] = &unk_1000082D0;
      block[4] = self;
      dispatch_after(v18, &_dispatch_main_q, block);
    }

    else
    {
      if (v15)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Showing safety alert detailed view", buf, 2u);
      }

      additionalDetails2 = [(NotificationViewController *)self additionalDetails];
      [additionalDetails2 setHidden:0];

      safetyAlertSpinner = [(NotificationViewController *)self safetyAlertSpinner];
      [safetyAlertSpinner setHidden:1];
    }
  }
}

- (void)displayWeaStackTopAligned:(BOOL)aligned
{
  alignedCopy = aligned;
  weaStackTopAligned = [(NotificationViewController *)self weaStackTopAligned];
  [weaStackTopAligned setHidden:!alignedCopy];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  weaStackTopAligned2 = [(NotificationViewController *)self weaStackTopAligned];
  subviews = [weaStackTopAligned2 subviews];

  v8 = [subviews countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(subviews);
        }

        [*(*(&v12 + 1) + 8 * v11) setHidden:!alignedCopy];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [subviews countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)displayDividerStack:(BOOL)stack
{
  stackCopy = stack;
  dividerStack = [(NotificationViewController *)self dividerStack];
  [dividerStack setHidden:!stackCopy];
}

- (void)hideAllViews
{
  [(NotificationViewController *)self displayDividerStack:0];
  [(NotificationViewController *)self displayWeaStackTopAligned:0];
  [(NotificationViewController *)self displaySafetyAlertStack:0 withSpinner:0];

  [(NotificationViewController *)self displayWeaStackCenterAligned:0];
}

- (void)renderSafetyAlertWithSpinnerView
{
  [(NotificationViewController *)self displayWeaStackCenterAligned:1];
  [(NotificationViewController *)self displayDividerStack:0];

  [(NotificationViewController *)self displaySafetyAlertStack:1 withSpinner:1];
}

- (void)renderSafetyAlertDetailedView
{
  [(NotificationViewController *)self displayDividerStack:1];
  [(NotificationViewController *)self displayWeaStackCenterAligned:1];

  [(NotificationViewController *)self displaySafetyAlertStack:1 withSpinner:0];
}

- (void)renderSafetyAlertsView
{
  instructionText = [(NotificationViewController *)self instructionText];
  text = [instructionText text];
  v5 = ea_isValidString(text);

  v6 = qword_10000CD40;
  v7 = os_log_type_enabled(qword_10000CD40, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Rendering detailed view", buf, 2u);
    }

    [(NotificationViewController *)self renderSafetyAlertDetailedView];
  }

  else
  {
    if (v7)
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Rendering spinner view", v8, 2u);
    }

    [(NotificationViewController *)self renderSafetyAlertWithSpinnerView];
  }
}

- (void)renderBasedOnScreenState
{
  isScreenLocked = [(NotificationViewController *)self isScreenLocked];
  v4 = qword_10000CD40;
  if (os_log_type_enabled(qword_10000CD40, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"unlocked";
    if (isScreenLocked)
    {
      v5 = @"locked";
    }

    v11 = 138412290;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Screen state: %@", &v11, 0xCu);
  }

  [(NotificationViewController *)self hideAllViews];
  if ((isScreenLocked & 1) != 0 || [(NotificationViewController *)self userDidTapOnUnlockedScreen])
  {
    [(NotificationViewController *)self renderSafetyAlertsView];
  }

  else
  {
    v6 = qword_10000CD40;
    if (os_log_type_enabled(qword_10000CD40, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Rendering Top view", &v11, 2u);
    }

    [(NotificationViewController *)self renderTopView];
  }

  instructionText = [(NotificationViewController *)self instructionText];
  [instructionText setSelectable:1];

  centerBody = [(NotificationViewController *)self centerBody];
  [centerBody setSelectable:1];

  topBody = [(NotificationViewController *)self topBody];
  [topBody setSelectable:1];

  view = [(NotificationViewController *)self view];
  [view layoutIfNeeded];
}

- (void)gestureTap:(id)tap
{
  tapCopy = tap;
  if (qword_10000CD48 != -1)
  {
    sub_100003F34();
  }

  isScreenLocked = [(NotificationViewController *)self isScreenLocked];
  v6 = qword_10000CD40;
  if (os_log_type_enabled(qword_10000CD40, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"unlocked";
    if (isScreenLocked)
    {
      v7 = @"locked";
    }

    v10 = 138412290;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "User tap detected in top view [screen: %@]", &v10, 0xCu);
  }

  topBody = [(NotificationViewController *)self topBody];
  text = [topBody text];
  ea_sendSafetyAlertTapIndication(text, 2);

  if ((isScreenLocked & 1) == 0)
  {
    [(NotificationViewController *)self setUserDidTapOnUnlockedScreen:1];
  }

  [(NotificationViewController *)self hideAllViews];
  [(NotificationViewController *)self renderSafetyAlertsView];
}

- (void)addGestureRecognizer
{
  v4 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"gestureTap:"];
  view = [(NotificationViewController *)self view];
  [view addGestureRecognizer:v4];
}

- (void)setupTextsWithNotification:(id)notification
{
  notificationCopy = notification;
  request = [notificationCopy request];
  content = [request content];
  title = [content title];

  if (ea_isValidString(title))
  {
    request2 = [notificationCopy request];
    content2 = [request2 content];
    body = [content2 body];

    if (ea_isValidString(body))
    {
      topTitle = [(NotificationViewController *)self topTitle];
      request3 = [notificationCopy request];
      content3 = [request3 content];
      title2 = [content3 title];
      [(NotificationViewController *)self setLabel:topTitle withText:title2 isBold:1];

      topBody = [(NotificationViewController *)self topBody];
      request4 = [notificationCopy request];
      content4 = [request4 content];
      body2 = [content4 body];
      [(NotificationViewController *)self setTextView:topBody withText:body2 isBold:0];

      centerTitle = [(NotificationViewController *)self centerTitle];
      request5 = [notificationCopy request];
      content5 = [request5 content];
      title3 = [content5 title];
      [(NotificationViewController *)self setLabel:centerTitle withText:title3 isBold:1];

      centerBody = [(NotificationViewController *)self centerBody];
      request6 = [notificationCopy request];
      content6 = [request6 content];
      body3 = [content6 body];
      [(NotificationViewController *)self setTextView:centerBody withText:body3 isBold:0];

      centerBody2 = [(NotificationViewController *)self centerBody];
      [centerBody2 setTextAlignment:1];

      v28 = [NSBundle bundleForClass:objc_opt_class()];
      v29 = [v28 localizedStringForKey:@"ADDITIONAL_DETAILS" value:@"Additional Details" table:0];

      additionalDetails = [(NotificationViewController *)self additionalDetails];
      [(NotificationViewController *)self setLabel:additionalDetails withText:v29 isBold:1];

      if ([(NotificationViewController *)self doesContainValidAppleSafetyAlertData:notificationCopy])
      {
        request7 = [notificationCopy request];
        content7 = [request7 content];
        userInfo = [content7 userInfo];
        v34 = [userInfo objectForKeyedSubscript:@"Instruction"];

        if (ea_isValidString(v34))
        {
          request8 = [notificationCopy request];
          content8 = [request8 content];
          body4 = [content8 body];
          v38 = [body4 rangeOfString:v34];

          if (v38 == 0x7FFFFFFFFFFFFFFFLL)
          {
            instructionText = [(NotificationViewController *)self instructionText];
            request9 = [notificationCopy request];
            content9 = [request9 content];
            userInfo2 = [content9 userInfo];
            v42 = [userInfo2 objectForKeyedSubscript:@"Instruction"];
            [(NotificationViewController *)self setTextView:instructionText withText:v42 isBold:0];

            instructionText2 = [(NotificationViewController *)self instructionText];
            [instructionText2 setTextAlignment:1];
          }
        }
      }
    }

    else if (os_log_type_enabled(qword_10000CD40, OS_LOG_TYPE_ERROR))
    {
      sub_100003F7C();
    }
  }

  else if (os_log_type_enabled(qword_10000CD40, OS_LOG_TYPE_ERROR))
  {
    sub_100003F48();
  }
}

- (void)setupAlertWithNotification:(id)notification
{
  notificationCopy = notification;
  view = [(NotificationViewController *)self view];
  [view setNeedsDisplay];

  view2 = [(NotificationViewController *)self view];
  [view2 setNeedsLayout];

  [(NotificationViewController *)self drawAllIcons];
  [(NotificationViewController *)self addGestureRecognizer];
  [(NotificationViewController *)self setupTextsWithNotification:notificationCopy];
}

- (void)didReceiveNotification:(id)notification
{
  notificationCopy = notification;
  isScreenLocked = [(NotificationViewController *)self isScreenLocked];
  v6 = qword_10000CD40;
  if (os_log_type_enabled(qword_10000CD40, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    request = [notificationCopy request];
    content = [request content];
    userInfo = [content userInfo];
    v16 = 138412290;
    v17 = userInfo;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Notification userInfo: %@", &v16, 0xCu);
  }

  [(NotificationViewController *)self setupAlertWithNotification:notificationCopy];
  v11 = qword_10000CD40;
  v12 = os_log_type_enabled(qword_10000CD40, OS_LOG_TYPE_DEFAULT);
  if (isScreenLocked)
  {
    if (v12)
    {
      LOWORD(v16) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "User tap detected in notification [screen: locked]", &v16, 2u);
    }

    request2 = [notificationCopy request];
    content2 = [request2 content];
    body = [content2 body];
    ea_sendSafetyAlertTapIndication(body, 2);
  }

  else if (v12)
  {
    LOWORD(v16) = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Notification received in unlocked screen", &v16, 2u);
  }

  [(NotificationViewController *)self renderBasedOnScreenState];
}

@end