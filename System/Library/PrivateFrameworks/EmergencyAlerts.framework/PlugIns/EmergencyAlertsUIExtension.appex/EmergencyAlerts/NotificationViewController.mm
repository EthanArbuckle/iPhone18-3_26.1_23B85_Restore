@interface NotificationViewController
- (BOOL)doesContainValidAppleSafetyAlertData:(id)a3;
- (BOOL)drawIcon:(id)a3;
- (BOOL)isScreenLocked;
- (CGSize)getImageBounds;
- (CGSize)getImageBoundsForPhone;
- (CGSize)getImageBoundsForWatch;
- (void)addGestureRecognizer;
- (void)cellBroadcastMessageReceived:(id)a3;
- (void)didReceiveNotification:(id)a3;
- (void)displayDividerStack:(BOOL)a3;
- (void)displaySafetyAlertStack:(BOOL)a3 withSpinner:(BOOL)a4;
- (void)displayWeaStackCenterAligned:(BOOL)a3;
- (void)displayWeaStackTopAligned:(BOOL)a3;
- (void)drawAllIcons;
- (void)gestureTap:(id)a3;
- (void)hideAllViews;
- (void)renderBasedOnScreenState;
- (void)renderSafetyAlertDetailedView;
- (void)renderSafetyAlertWithSpinnerView;
- (void)renderSafetyAlertsView;
- (void)setLabel:(id)a3 withText:(id)a4 isBold:(BOOL)a5;
- (void)setTextView:(id)a3 withText:(id)a4 isBold:(BOOL)a5;
- (void)setupAlertWithNotification:(id)a3;
- (void)setupTextsWithNotification:(id)a3;
- (void)viewDidLoad;
@end

@implementation NotificationViewController

- (BOOL)isScreenLocked
{
  v2 = +[IMSystemMonitor sharedInstance];
  v3 = [v2 isScreenLocked];

  return v3;
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
  v2 = [(NotificationViewController *)self view];
  v3 = [v2 window];
  [v3 frame];
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
  v4 = [v3 model];

  v5 = [v4 lowercaseString];
  v6 = [v5 containsString:@"phone"];

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

- (BOOL)drawIcon:(id)a3
{
  v4 = a3;
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
      [v4 setImage:v13];

      v14 = [(NotificationViewController *)self view];
      [v14 frame];
      v16 = v15;
      v17 = [(NotificationViewController *)self view];
      [v17 frame];
      [v4 setFrame:v16];
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

- (void)setLabel:(id)a3 withText:(id)a4 isBold:(BOOL)a5
{
  v6 = &UIFontWeightBold;
  if (!a5)
  {
    v6 = &UIFontWeightRegular;
  }

  v7 = *v6;
  v8 = a4;
  v9 = a3;
  v10 = [v9 font];
  [v10 pointSize];
  v11 = [UIFont systemFontOfSize:"systemFontOfSize:weight:" weight:?];
  v13 = [NSDictionary dictionaryWithObject:v11 forKey:NSFontAttributeName];

  v12 = [[NSMutableAttributedString alloc] initWithString:v8 attributes:v13];
  [v9 setAttributedText:v12];
  [v9 setNumberOfLines:0];
  [v9 setLineBreakMode:0];
}

- (void)setTextView:(id)a3 withText:(id)a4 isBold:(BOOL)a5
{
  v6 = &UIFontWeightBold;
  if (!a5)
  {
    v6 = &UIFontWeightRegular;
  }

  v7 = *v6;
  v8 = a4;
  v9 = a3;
  +[UIFont systemFontSize];
  v11 = [UIFont systemFontOfSize:v10 + 3.0 weight:v7];
  v12 = [NSDictionary dictionaryWithObject:v11 forKey:NSFontAttributeName];

  v13 = [[NSMutableAttributedString alloc] initWithString:v8 attributes:v12];
  v26 = 0;
  v14 = [NSDataDetector dataDetectorWithTypes:2096 error:&v26];
  v15 = v26;
  v16 = [v8 length];
  v21 = _NSConcreteStackBlock;
  v22 = 3221225472;
  v23 = sub_1000019C4;
  v24 = &unk_1000082A8;
  v25 = v13;
  v17 = v13;
  [v14 enumerateMatchesInString:v8 options:0 range:0 usingBlock:{v16, &v21}];

  [v9 setAttributedText:{v17, v21, v22, v23, v24}];
  [v9 setUserInteractionEnabled:1];
  [v9 setScrollEnabled:0];
  [v9 setEditable:0];
  [v9 setSelectable:1];
  v18 = [v9 textContainer];
  [v18 setLineFragmentPadding:0.0];

  [v9 setTextContainerInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  v19 = +[UIColor clearColor];
  [v9 setBackgroundColor:v19];

  v20 = +[UIColor labelColor];
  [v9 setTextColor:v20];
}

- (void)cellBroadcastMessageReceived:(id)a3
{
  v4 = a3;
  v5 = qword_10000CD40;
  if (v4)
  {
    if (os_log_type_enabled(qword_10000CD40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received cellbroadcast message", buf, 2u);
    }

    v6 = [v4 objectForKey:kCTSMSAppleSafetyAlertData];
    v7 = [v4 objectForKey:@"kCTSMSAppleSafetyAlertMissingForHash"];
    if (!v7)
    {
      goto LABEL_9;
    }

    v8 = [(NotificationViewController *)self centerBody];
    v9 = [v8 text];
    v10 = ea_getHashForString(v9);
    v11 = [v7 isEqualToString:v10];

    if (v11)
    {
      v12 = qword_10000CD40;
      if (os_log_type_enabled(qword_10000CD40, OS_LOG_TYPE_DEFAULT))
      {
        *v44 = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Removing spinner for safety alert...", v44, 2u);
      }

      v13 = [(NotificationViewController *)self safetyAlertSpinner];
      [v13 setHidden:1];
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
          v18 = [(NotificationViewController *)self centerBody];
          v19 = [v18 text];
          v20 = ea_getHashForString(v19);

          v21 = v20;
          if ([v20 isEqualToString:v15] & 1) != 0 || (objc_msgSend(v20, "isEqualToString:", v17))
          {
            v22 = [v6 objectForKeyedSubscript:@"Instruction"];
            v41 = v22;
            if (!ea_isValidString(v22))
            {
              goto LABEL_34;
            }

            v23 = [(NotificationViewController *)self centerBody];
            [v23 text];
            v40 = v15;
            v24 = v17;
            v26 = v25 = v21;
            v27 = [v26 rangeOfString:v22];

            v21 = v25;
            v17 = v24;
            v15 = v40;

            if (v27 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v28 = [(NotificationViewController *)self instructionText];
              v29 = self;
              v30 = v28;
              v31 = v41;
            }

            else
            {
LABEL_34:
              if (os_log_type_enabled(qword_10000CD40, OS_LOG_TYPE_ERROR))
              {
                sub_100003E64();
              }

              v28 = [(NotificationViewController *)self instructionText];
              v31 = &stru_1000084C0;
              v29 = self;
              v30 = v28;
            }

            [(NotificationViewController *)v29 setTextView:v30 withText:v31 isBold:0];

            v33 = [(NotificationViewController *)self instructionText];
            [v33 setTextAlignment:1];

            v34 = [NSBundle bundleForClass:objc_opt_class()];
            v35 = [v34 localizedStringForKey:@"ADDITIONAL_DETAILS" value:@"Additional Details" table:0];

            v36 = [(NotificationViewController *)self additionalDetails];
            [(NotificationViewController *)self setLabel:v36 withText:v35 isBold:1];

            v37 = [(NotificationViewController *)self centerBody];
            v38 = [v37 text];
            ea_sendSafetyAlertTapIndication(v38, 1);

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

- (BOOL)doesContainValidAppleSafetyAlertData:(id)a3
{
  v3 = a3;
  v4 = [v3 request];
  v5 = [v4 content];
  v6 = [v5 userInfo];
  v7 = [v6 objectForKeyedSubscript:@"Instruction"];

  v8 = [v3 request];
  v9 = [v8 content];
  v10 = [v9 userInfo];
  v11 = [v10 objectForKeyedSubscript:@"EffectiveTimestamp"];

  if (!ea_isValidString(v7))
  {
    goto LABEL_4;
  }

  v12 = [v3 request];
  v13 = [v12 content];
  v14 = [v13 body];
  v15 = [v14 rangeOfString:v7];

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
  v3 = [(NotificationViewController *)self centerAlertIcon];
  v4 = [(NotificationViewController *)self drawIcon:v3];

  if ((v4 & 1) == 0 && os_log_type_enabled(qword_10000CD40, OS_LOG_TYPE_ERROR))
  {
    sub_100003ECC();
  }

  v5 = [(NotificationViewController *)self topAlertIcon];
  v6 = [(NotificationViewController *)self drawIcon:v5];

  if ((v6 & 1) == 0 && os_log_type_enabled(qword_10000CD40, OS_LOG_TYPE_ERROR))
  {
    sub_100003F00();
  }
}

- (void)displayWeaStackCenterAligned:(BOOL)a3
{
  v3 = a3;
  v5 = [(NotificationViewController *)self weaStackCenterAligned];
  [v5 setHidden:!v3];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [(NotificationViewController *)self weaStackCenterAligned];
  v7 = [v6 subviews];

  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v7);
        }

        [*(*(&v12 + 1) + 8 * v11) setHidden:!v3];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)displaySafetyAlertStack:(BOOL)a3 withSpinner:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(NotificationViewController *)self safetyAlertStack];
  [v7 setHidden:!v5];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = [(NotificationViewController *)self safetyAlertStack];
  v9 = [v8 subviews];

  v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
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
          objc_enumerationMutation(v9);
        }

        [*(*(&v23 + 1) + 8 * v13) setHidden:!v5];
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v11);
  }

  if (v5)
  {
    v14 = qword_10000CD40;
    v15 = os_log_type_enabled(qword_10000CD40, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      if (v15)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Showing spinner view", buf, 2u);
      }

      v16 = [(NotificationViewController *)self safetyAlertStack];
      [v16 setHidden:0];

      v17 = [(NotificationViewController *)self additionalDetails];
      [v17 setHidden:1];

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

      v19 = [(NotificationViewController *)self additionalDetails];
      [v19 setHidden:0];

      v20 = [(NotificationViewController *)self safetyAlertSpinner];
      [v20 setHidden:1];
    }
  }
}

- (void)displayWeaStackTopAligned:(BOOL)a3
{
  v3 = a3;
  v5 = [(NotificationViewController *)self weaStackTopAligned];
  [v5 setHidden:!v3];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [(NotificationViewController *)self weaStackTopAligned];
  v7 = [v6 subviews];

  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v7);
        }

        [*(*(&v12 + 1) + 8 * v11) setHidden:!v3];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)displayDividerStack:(BOOL)a3
{
  v3 = a3;
  v4 = [(NotificationViewController *)self dividerStack];
  [v4 setHidden:!v3];
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
  v3 = [(NotificationViewController *)self instructionText];
  v4 = [v3 text];
  v5 = ea_isValidString(v4);

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
  v3 = [(NotificationViewController *)self isScreenLocked];
  v4 = qword_10000CD40;
  if (os_log_type_enabled(qword_10000CD40, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"unlocked";
    if (v3)
    {
      v5 = @"locked";
    }

    v11 = 138412290;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Screen state: %@", &v11, 0xCu);
  }

  [(NotificationViewController *)self hideAllViews];
  if ((v3 & 1) != 0 || [(NotificationViewController *)self userDidTapOnUnlockedScreen])
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

  v7 = [(NotificationViewController *)self instructionText];
  [v7 setSelectable:1];

  v8 = [(NotificationViewController *)self centerBody];
  [v8 setSelectable:1];

  v9 = [(NotificationViewController *)self topBody];
  [v9 setSelectable:1];

  v10 = [(NotificationViewController *)self view];
  [v10 layoutIfNeeded];
}

- (void)gestureTap:(id)a3
{
  v4 = a3;
  if (qword_10000CD48 != -1)
  {
    sub_100003F34();
  }

  v5 = [(NotificationViewController *)self isScreenLocked];
  v6 = qword_10000CD40;
  if (os_log_type_enabled(qword_10000CD40, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"unlocked";
    if (v5)
    {
      v7 = @"locked";
    }

    v10 = 138412290;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "User tap detected in top view [screen: %@]", &v10, 0xCu);
  }

  v8 = [(NotificationViewController *)self topBody];
  v9 = [v8 text];
  ea_sendSafetyAlertTapIndication(v9, 2);

  if ((v5 & 1) == 0)
  {
    [(NotificationViewController *)self setUserDidTapOnUnlockedScreen:1];
  }

  [(NotificationViewController *)self hideAllViews];
  [(NotificationViewController *)self renderSafetyAlertsView];
}

- (void)addGestureRecognizer
{
  v4 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"gestureTap:"];
  v3 = [(NotificationViewController *)self view];
  [v3 addGestureRecognizer:v4];
}

- (void)setupTextsWithNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 request];
  v6 = [v5 content];
  v7 = [v6 title];

  if (ea_isValidString(v7))
  {
    v8 = [v4 request];
    v9 = [v8 content];
    v10 = [v9 body];

    if (ea_isValidString(v10))
    {
      v11 = [(NotificationViewController *)self topTitle];
      v12 = [v4 request];
      v13 = [v12 content];
      v14 = [v13 title];
      [(NotificationViewController *)self setLabel:v11 withText:v14 isBold:1];

      v15 = [(NotificationViewController *)self topBody];
      v16 = [v4 request];
      v17 = [v16 content];
      v18 = [v17 body];
      [(NotificationViewController *)self setTextView:v15 withText:v18 isBold:0];

      v19 = [(NotificationViewController *)self centerTitle];
      v20 = [v4 request];
      v21 = [v20 content];
      v22 = [v21 title];
      [(NotificationViewController *)self setLabel:v19 withText:v22 isBold:1];

      v23 = [(NotificationViewController *)self centerBody];
      v24 = [v4 request];
      v25 = [v24 content];
      v26 = [v25 body];
      [(NotificationViewController *)self setTextView:v23 withText:v26 isBold:0];

      v27 = [(NotificationViewController *)self centerBody];
      [v27 setTextAlignment:1];

      v28 = [NSBundle bundleForClass:objc_opt_class()];
      v29 = [v28 localizedStringForKey:@"ADDITIONAL_DETAILS" value:@"Additional Details" table:0];

      v30 = [(NotificationViewController *)self additionalDetails];
      [(NotificationViewController *)self setLabel:v30 withText:v29 isBold:1];

      if ([(NotificationViewController *)self doesContainValidAppleSafetyAlertData:v4])
      {
        v31 = [v4 request];
        v32 = [v31 content];
        v33 = [v32 userInfo];
        v34 = [v33 objectForKeyedSubscript:@"Instruction"];

        if (ea_isValidString(v34))
        {
          v35 = [v4 request];
          v36 = [v35 content];
          v37 = [v36 body];
          v38 = [v37 rangeOfString:v34];

          if (v38 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v39 = [(NotificationViewController *)self instructionText];
            v44 = [v4 request];
            v40 = [v44 content];
            v41 = [v40 userInfo];
            v42 = [v41 objectForKeyedSubscript:@"Instruction"];
            [(NotificationViewController *)self setTextView:v39 withText:v42 isBold:0];

            v43 = [(NotificationViewController *)self instructionText];
            [v43 setTextAlignment:1];
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

- (void)setupAlertWithNotification:(id)a3
{
  v6 = a3;
  v4 = [(NotificationViewController *)self view];
  [v4 setNeedsDisplay];

  v5 = [(NotificationViewController *)self view];
  [v5 setNeedsLayout];

  [(NotificationViewController *)self drawAllIcons];
  [(NotificationViewController *)self addGestureRecognizer];
  [(NotificationViewController *)self setupTextsWithNotification:v6];
}

- (void)didReceiveNotification:(id)a3
{
  v4 = a3;
  v5 = [(NotificationViewController *)self isScreenLocked];
  v6 = qword_10000CD40;
  if (os_log_type_enabled(qword_10000CD40, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = [v4 request];
    v9 = [v8 content];
    v10 = [v9 userInfo];
    v16 = 138412290;
    v17 = v10;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Notification userInfo: %@", &v16, 0xCu);
  }

  [(NotificationViewController *)self setupAlertWithNotification:v4];
  v11 = qword_10000CD40;
  v12 = os_log_type_enabled(qword_10000CD40, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v12)
    {
      LOWORD(v16) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "User tap detected in notification [screen: locked]", &v16, 2u);
    }

    v13 = [v4 request];
    v14 = [v13 content];
    v15 = [v14 body];
    ea_sendSafetyAlertTapIndication(v15, 2);
  }

  else if (v12)
  {
    LOWORD(v16) = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Notification received in unlocked screen", &v16, 2u);
  }

  [(NotificationViewController *)self renderBasedOnScreenState];
}

@end