@interface EventKitTCCFullAccessNotificationUIExtensionViewController
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation EventKitTCCFullAccessNotificationUIExtensionViewController

- (void)viewDidLoad
{
  v94.receiver = self;
  v94.super_class = EventKitTCCFullAccessNotificationUIExtensionViewController;
  [(EventKitTCCFullAccessNotificationUIExtensionViewController *)&v94 viewDidLoad];
  extensionContext = [(EventKitTCCFullAccessNotificationUIExtensionViewController *)self extensionContext];
  inputItems = [extensionContext inputItems];
  firstObject = [inputItems firstObject];

  v93 = firstObject;
  userInfo = [firstObject userInfo];
  v7 = [userInfo valueForKey:kTCCNotificationExtensionClientDataKey];

  v92 = v7;
  v91 = [v7 valueForKey:kEventKitTCCUIFullAccessNotificationClientBundleIDKey];
  v8 = [[EventKitTCCUIFactory alloc] initWithBundleIdentifier:v91];
  [(EventKitTCCFullAccessNotificationUIExtensionViewController *)self setTccUIFactory:v8];

  [(EventKitTCCFullAccessNotificationUIExtensionViewController *)self setPreferredContentSize:270.0, 800.0];
  v9 = objc_alloc_init(UILabel);
  p_descriptionLabel = &self->_descriptionLabel;
  objc_storeStrong(&self->_descriptionLabel, v9);
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v9 setNumberOfLines:0];
  v89 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleFootnote addingSymbolicTraits:0x8000 options:0];
  v10 = [UIFont fontWithDescriptor:0.0 size:?];
  [v9 setFont:v10];

  if (CalSystemSolariumEnabled())
  {
    v11 = 4;
  }

  else
  {
    v11 = 1;
  }

  [v9 setTextAlignment:v11];
  v12 = [NSBundle bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"Calendar events may include additional data value:such as locations table:{email addresses, or notes.", &stru_100004150, 0}];
  [v9 setText:v13];

  [v9 setLineBreakStrategy:1];
  view = [(EventKitTCCFullAccessNotificationUIExtensionViewController *)self view];
  v90 = v9;
  [view addSubview:v9];

  countEventsInTheNextYear = [(EventKitTCCUIFactory *)self->_tccUIFactory countEventsInTheNextYear];
  tccUIFactory = [(EventKitTCCFullAccessNotificationUIExtensionViewController *)self tccUIFactory];
  previewViewController = [tccUIFactory previewViewController];

  if (countEventsInTheNextYear >= 1 && previewViewController)
  {
    v18 = objc_alloc_init(UILabel);
    objc_storeStrong(&self->_eventCountLabel, v18);
    [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v18 setNumberOfLines:0];
    v19 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleFootnote addingSymbolicTraits:0x8000 options:0];
    v99 = UIFontDescriptorTraitsAttribute;
    v97 = UIFontWeightTrait;
    v20 = [NSNumber numberWithDouble:UIFontWeightSemibold];
    v98 = v20;
    v21 = [NSDictionary dictionaryWithObjects:&v98 forKeys:&v97 count:1];
    v100 = v21;
    v22 = [NSDictionary dictionaryWithObjects:&v100 forKeys:&v99 count:1];
    v78 = [v19 fontDescriptorByAddingAttributes:v22];

    v23 = [UIFont fontWithDescriptor:v78 size:0.0];
    [v18 setFont:v23];

    if (CalSystemSolariumEnabled())
    {
      v24 = 4;
    }

    else
    {
      v24 = 1;
    }

    v77 = v18;
    [v18 setTextAlignment:v24];
    v25 = [NSBundle bundleForClass:objc_opt_class()];
    v26 = [v25 localizedStringForKey:@"x_events" value:&stru_100004150 table:0];
    v27 = [NSString localizedStringWithFormat:v26, countEventsInTheNextYear];
    [v18 setText:v27];

    [v18 setLineBreakStrategy:1];
    view2 = [(EventKitTCCFullAccessNotificationUIExtensionViewController *)self view];
    [view2 addSubview:v18];

    [(EventKitTCCFullAccessNotificationUIExtensionViewController *)self addChildViewController:previewViewController];
    view3 = [previewViewController view];
    calendarView = self->_calendarView;
    self->_calendarView = view3;

    view4 = [(EventKitTCCFullAccessNotificationUIExtensionViewController *)self view];
    [view4 addSubview:self->_calendarView];

    [previewViewController didMoveToParentViewController:self];
    [(UIView *)self->_calendarView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)self->_calendarView setClipsToBounds:0];
    topAnchor = [(UIView *)self->_calendarView topAnchor];
    view5 = [(EventKitTCCFullAccessNotificationUIExtensionViewController *)self view];
    topAnchor2 = [view5 topAnchor];
    view13 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v96[0] = view13;
    leadingAnchor = [(UIView *)self->_calendarView leadingAnchor];
    view6 = [(EventKitTCCFullAccessNotificationUIExtensionViewController *)self view];
    [view6 leadingAnchor];
    v84 = bottomAnchor6 = leadingAnchor;
    view14 = [leadingAnchor constraintEqualToAnchor:?];
    v96[1] = view14;
    trailingAnchor = [(UIView *)self->_calendarView trailingAnchor];
    view7 = [(EventKitTCCFullAccessNotificationUIExtensionViewController *)self view];
    trailingAnchor2 = [view7 trailingAnchor];
    v67 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v96[2] = v67;
    bottomAnchor = [(UIView *)self->_calendarView bottomAnchor];
    topAnchor3 = [(UILabel *)self->_eventCountLabel topAnchor];
    trailingAnchor8 = bottomAnchor;
    v63 = [bottomAnchor constraintEqualToAnchor:-16.0 constant:?];
    v96[3] = v63;
    bottomAnchor2 = [(UILabel *)self->_eventCountLabel bottomAnchor];
    topAnchor4 = [(UILabel *)*p_descriptionLabel topAnchor];
    v70 = [bottomAnchor2 constraintEqualToAnchor:topAnchor4 constant:-4.0];
    v96[4] = v70;
    leadingAnchor2 = [(UILabel *)self->_eventCountLabel leadingAnchor];
    view8 = [(EventKitTCCFullAccessNotificationUIExtensionViewController *)self view];
    leadingAnchor3 = [view8 leadingAnchor];
    v64 = [leadingAnchor2 constraintEqualToAnchor:leadingAnchor3 constant:16.0];
    v96[5] = v64;
    trailingAnchor3 = [(UILabel *)self->_eventCountLabel trailingAnchor];
    view9 = [(EventKitTCCFullAccessNotificationUIExtensionViewController *)self view];
    trailingAnchor4 = [view9 trailingAnchor];
    v59 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-16.0];
    v96[6] = v59;
    bottomAnchor3 = [(UILabel *)*p_descriptionLabel bottomAnchor];
    view10 = [(EventKitTCCFullAccessNotificationUIExtensionViewController *)self view];
    bottomAnchor4 = [view10 bottomAnchor];
    v34 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-12.0];
    v96[7] = v34;
    leadingAnchor4 = [(UILabel *)*p_descriptionLabel leadingAnchor];
    [(EventKitTCCFullAccessNotificationUIExtensionViewController *)self view];
    v36 = v79 = previewViewController;
    leadingAnchor5 = [v36 leadingAnchor];
    v38 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5 constant:16.0];
    v96[8] = v38;
    trailingAnchor5 = [(UILabel *)*p_descriptionLabel trailingAnchor];
    view11 = [(EventKitTCCFullAccessNotificationUIExtensionViewController *)self view];
    trailingAnchor6 = [view11 trailingAnchor];
    v42 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:-16.0];
    v96[9] = v42;
    v43 = [NSArray arrayWithObjects:v96 count:10];
    [NSLayoutConstraint activateConstraints:v43];

    v44 = v63;
    topAnchor5 = v77;

    topAnchor6 = topAnchor;
    view15 = v67;

    v48 = view5;
    bottomAnchor5 = topAnchor2;

    trailingAnchor7 = trailingAnchor2;
    previewViewController = v79;

    v51 = trailingAnchor;
    view12 = v78;
  }

  else
  {
    topAnchor5 = [(UILabel *)*p_descriptionLabel topAnchor];
    view12 = [(EventKitTCCFullAccessNotificationUIExtensionViewController *)self view];
    topAnchor6 = [view12 topAnchor];
    v48 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
    v95[0] = v48;
    bottomAnchor5 = [(UILabel *)*p_descriptionLabel bottomAnchor];
    view13 = [(EventKitTCCFullAccessNotificationUIExtensionViewController *)self view];
    bottomAnchor6 = [view13 bottomAnchor];
    view6 = [bottomAnchor5 constraintEqualToAnchor:-12.0 constant:?];
    v95[1] = view6;
    leadingAnchor6 = [(UILabel *)*p_descriptionLabel leadingAnchor];
    view14 = [(EventKitTCCFullAccessNotificationUIExtensionViewController *)self view];
    leadingAnchor7 = [view14 leadingAnchor];
    v84 = leadingAnchor6;
    v55 = leadingAnchor6;
    v51 = leadingAnchor7;
    view7 = [v55 constraintEqualToAnchor:leadingAnchor7 constant:16.0];
    v95[2] = view7;
    trailingAnchor7 = [(UILabel *)*p_descriptionLabel trailingAnchor];
    view15 = [(EventKitTCCFullAccessNotificationUIExtensionViewController *)self view];
    trailingAnchor8 = [view15 trailingAnchor];
    topAnchor3 = [trailingAnchor7 constraintEqualToAnchor:-16.0 constant:?];
    v95[3] = topAnchor3;
    v44 = [NSArray arrayWithObjects:v95 count:4];
    [NSLayoutConstraint activateConstraints:v44];
  }
}

- (void)viewDidLayoutSubviews
{
  [(UILabel *)self->_descriptionLabel intrinsicContentSize];
  v4 = v3 + 12.0;
  eventCountLabel = self->_eventCountLabel;
  if (eventCountLabel && self->_calendarView)
  {
    [(UILabel *)eventCountLabel intrinsicContentSize];
    v7 = v6;
    [(UIView *)self->_calendarView intrinsicContentSize];
    v4 = v4 + v7 + v8 + 20.0;
  }

  [(EventKitTCCFullAccessNotificationUIExtensionViewController *)self setPreferredContentSize:270.0, v4];
}

@end