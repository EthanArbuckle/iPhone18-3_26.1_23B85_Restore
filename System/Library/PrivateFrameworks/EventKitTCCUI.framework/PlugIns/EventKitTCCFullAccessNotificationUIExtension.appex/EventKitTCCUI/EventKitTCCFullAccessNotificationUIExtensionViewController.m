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
  v3 = [(EventKitTCCFullAccessNotificationUIExtensionViewController *)self extensionContext];
  v4 = [v3 inputItems];
  v5 = [v4 firstObject];

  v93 = v5;
  v6 = [v5 userInfo];
  v7 = [v6 valueForKey:kTCCNotificationExtensionClientDataKey];

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
  v14 = [(EventKitTCCFullAccessNotificationUIExtensionViewController *)self view];
  v90 = v9;
  [v14 addSubview:v9];

  v15 = [(EventKitTCCUIFactory *)self->_tccUIFactory countEventsInTheNextYear];
  v16 = [(EventKitTCCFullAccessNotificationUIExtensionViewController *)self tccUIFactory];
  v17 = [v16 previewViewController];

  if (v15 >= 1 && v17)
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
    v27 = [NSString localizedStringWithFormat:v26, v15];
    [v18 setText:v27];

    [v18 setLineBreakStrategy:1];
    v28 = [(EventKitTCCFullAccessNotificationUIExtensionViewController *)self view];
    [v28 addSubview:v18];

    [(EventKitTCCFullAccessNotificationUIExtensionViewController *)self addChildViewController:v17];
    v29 = [v17 view];
    calendarView = self->_calendarView;
    self->_calendarView = v29;

    v31 = [(EventKitTCCFullAccessNotificationUIExtensionViewController *)self view];
    [v31 addSubview:self->_calendarView];

    [v17 didMoveToParentViewController:self];
    [(UIView *)self->_calendarView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)self->_calendarView setClipsToBounds:0];
    v74 = [(UIView *)self->_calendarView topAnchor];
    v76 = [(EventKitTCCFullAccessNotificationUIExtensionViewController *)self view];
    v75 = [v76 topAnchor];
    v87 = [v74 constraintEqualToAnchor:v75];
    v96[0] = v87;
    v32 = [(UIView *)self->_calendarView leadingAnchor];
    v85 = [(EventKitTCCFullAccessNotificationUIExtensionViewController *)self view];
    [v85 leadingAnchor];
    v84 = v86 = v32;
    v83 = [v32 constraintEqualToAnchor:?];
    v96[1] = v83;
    v71 = [(UIView *)self->_calendarView trailingAnchor];
    v82 = [(EventKitTCCFullAccessNotificationUIExtensionViewController *)self view];
    v69 = [v82 trailingAnchor];
    v67 = [v71 constraintEqualToAnchor:v69];
    v96[2] = v67;
    v33 = [(UIView *)self->_calendarView bottomAnchor];
    v80 = [(UILabel *)self->_eventCountLabel topAnchor];
    v81 = v33;
    v63 = [v33 constraintEqualToAnchor:-16.0 constant:?];
    v96[3] = v63;
    v73 = [(UILabel *)self->_eventCountLabel bottomAnchor];
    v72 = [(UILabel *)*p_descriptionLabel topAnchor];
    v70 = [v73 constraintEqualToAnchor:v72 constant:-4.0];
    v96[4] = v70;
    v66 = [(UILabel *)self->_eventCountLabel leadingAnchor];
    v68 = [(EventKitTCCFullAccessNotificationUIExtensionViewController *)self view];
    v65 = [v68 leadingAnchor];
    v64 = [v66 constraintEqualToAnchor:v65 constant:16.0];
    v96[5] = v64;
    v61 = [(UILabel *)self->_eventCountLabel trailingAnchor];
    v62 = [(EventKitTCCFullAccessNotificationUIExtensionViewController *)self view];
    v60 = [v62 trailingAnchor];
    v59 = [v61 constraintEqualToAnchor:v60 constant:-16.0];
    v96[6] = v59;
    v57 = [(UILabel *)*p_descriptionLabel bottomAnchor];
    v58 = [(EventKitTCCFullAccessNotificationUIExtensionViewController *)self view];
    v56 = [v58 bottomAnchor];
    v34 = [v57 constraintEqualToAnchor:v56 constant:-12.0];
    v96[7] = v34;
    v35 = [(UILabel *)*p_descriptionLabel leadingAnchor];
    [(EventKitTCCFullAccessNotificationUIExtensionViewController *)self view];
    v36 = v79 = v17;
    v37 = [v36 leadingAnchor];
    v38 = [v35 constraintEqualToAnchor:v37 constant:16.0];
    v96[8] = v38;
    v39 = [(UILabel *)*p_descriptionLabel trailingAnchor];
    v40 = [(EventKitTCCFullAccessNotificationUIExtensionViewController *)self view];
    v41 = [v40 trailingAnchor];
    v42 = [v39 constraintEqualToAnchor:v41 constant:-16.0];
    v96[9] = v42;
    v43 = [NSArray arrayWithObjects:v96 count:10];
    [NSLayoutConstraint activateConstraints:v43];

    v44 = v63;
    v45 = v77;

    v46 = v74;
    v47 = v67;

    v48 = v76;
    v49 = v75;

    v50 = v69;
    v17 = v79;

    v51 = v71;
    v52 = v78;
  }

  else
  {
    v45 = [(UILabel *)*p_descriptionLabel topAnchor];
    v52 = [(EventKitTCCFullAccessNotificationUIExtensionViewController *)self view];
    v46 = [v52 topAnchor];
    v48 = [v45 constraintEqualToAnchor:v46];
    v95[0] = v48;
    v49 = [(UILabel *)*p_descriptionLabel bottomAnchor];
    v87 = [(EventKitTCCFullAccessNotificationUIExtensionViewController *)self view];
    v86 = [v87 bottomAnchor];
    v85 = [v49 constraintEqualToAnchor:-12.0 constant:?];
    v95[1] = v85;
    v53 = [(UILabel *)*p_descriptionLabel leadingAnchor];
    v83 = [(EventKitTCCFullAccessNotificationUIExtensionViewController *)self view];
    v54 = [v83 leadingAnchor];
    v84 = v53;
    v55 = v53;
    v51 = v54;
    v82 = [v55 constraintEqualToAnchor:v54 constant:16.0];
    v95[2] = v82;
    v50 = [(UILabel *)*p_descriptionLabel trailingAnchor];
    v47 = [(EventKitTCCFullAccessNotificationUIExtensionViewController *)self view];
    v81 = [v47 trailingAnchor];
    v80 = [v50 constraintEqualToAnchor:-16.0 constant:?];
    v95[3] = v80;
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