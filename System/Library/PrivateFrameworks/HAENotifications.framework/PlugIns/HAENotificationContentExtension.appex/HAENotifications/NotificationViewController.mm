@interface NotificationViewController
- (void)didReceiveNotification:(id)notification;
- (void)viewDidLoad;
@end

@implementation NotificationViewController

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = NotificationViewController;
  [(NotificationViewController *)&v9 viewDidLoad];
  v3 = HAENotificationsLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "NotificationViewController::viewDidLoad...", v8, 2u);
  }

  v4 = objc_alloc_init(UILabel);
  message = self->_message;
  self->_message = v4;

  v6 = objc_alloc_init(UILabel);
  subtitle = self->_subtitle;
  self->_subtitle = v6;
}

- (void)didReceiveNotification:(id)notification
{
  notificationCopy = notification;
  v5 = HAENotificationsLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v71 = notificationCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "NotificationViewController::didReceiveNotification...: %@", buf, 0xCu);
  }

  request = [(UILabel *)notificationCopy request];
  content = [request content];
  categoryIdentifier = [content categoryIdentifier];
  v9 = [(NotificationViewController *)self isLiveNotification:categoryIdentifier];

  if (v9)
  {
    v10 = HAENLocalizationUtilityGetBundle();
    request3 = [v10 localizedStringForKey:@"MessageLonglookLoud" value:&stru_100004188 table:0];

    request2 = [(UILabel *)notificationCopy request];
    content2 = [request2 content];
    body = [content2 body];
    v15 = [NSString stringWithFormat:@"%@\n\n%@", body, request3];
    [(UILabel *)self->_message setText:v15];
  }

  else
  {
    request3 = [(UILabel *)notificationCopy request];
    request2 = [request3 content];
    content2 = [request2 body];
    [(UILabel *)self->_message setText:content2];
  }

  request4 = [(UILabel *)notificationCopy request];
  content3 = [request4 content];
  title = [content3 title];
  [(UILabel *)self->_subtitle setText:title];

  v19 = [UIFont preferredFontForTextStyle:UIFontTextStyleHeadline];
  [(UILabel *)self->_subtitle setFont:v19];

  [(UILabel *)self->_subtitle setAdjustsFontForContentSizeCategory:1];
  view = [(NotificationViewController *)self view];
  [view frame];
  v22 = v21 + -20.0;
  subtitle = [(NotificationViewController *)self subtitle];
  [subtitle intrinsicContentSize];
  [(UILabel *)self->_subtitle setFrame:13.0, 0.0, v22, v24];

  [(UILabel *)self->_subtitle sizeToFit];
  v25 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [(UILabel *)self->_message setFont:v25];

  [(UILabel *)self->_message setAdjustsFontForContentSizeCategory:1];
  subtitle2 = [(NotificationViewController *)self subtitle];
  [subtitle2 intrinsicContentSize];
  v28 = v27;
  view2 = [(NotificationViewController *)self view];
  [view2 frame];
  v31 = v30 + -20.0;
  message = [(NotificationViewController *)self message];
  [message intrinsicContentSize];
  [(UILabel *)self->_message setFrame:13.0, v28, v31, v33];

  [(UILabel *)self->_message setTextAlignment:0];
  [(UILabel *)self->_message setNumberOfLines:0];
  LODWORD(v34) = 1148846080;
  [(UILabel *)self->_message setContentHuggingPriority:0 forAxis:v34];
  LODWORD(v35) = 1148846080;
  [(UILabel *)self->_message setContentHuggingPriority:1 forAxis:v35];
  LODWORD(v36) = 1132068864;
  [(UILabel *)self->_message setContentCompressionResistancePriority:0 forAxis:v36];
  LODWORD(v37) = 1132068864;
  [(UILabel *)self->_message setContentCompressionResistancePriority:1 forAxis:v37];
  [(UILabel *)self->_message setPreferredMaxLayoutWidth:200.0];
  [(UILabel *)self->_message setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_message sizeToFit];
  view3 = [(NotificationViewController *)self view];
  [view3 frame];
  v40 = v39;
  subtitle3 = [(NotificationViewController *)self subtitle];
  [subtitle3 frame];
  v43 = v42;
  message2 = [(NotificationViewController *)self message];
  [message2 frame];
  v46 = v43 + v45;
  view4 = [(NotificationViewController *)self view];
  [view4 setFrame:{0.0, 0.0, v40, v46}];

  view5 = [(NotificationViewController *)self view];
  [view5 addSubview:self->_subtitle];

  view6 = [(NotificationViewController *)self view];
  [view6 addSubview:self->_message];

  view7 = [(NotificationViewController *)self view];
  [view7 sizeToFit];

  view8 = [(NotificationViewController *)self view];
  [view8 setNeedsLayout];

  view9 = [(NotificationViewController *)self view];
  [view9 layoutIfNeeded];

  view10 = [(NotificationViewController *)self view];
  [view10 frame];
  v55 = v54;
  view11 = [(NotificationViewController *)self view];
  [view11 frame];
  [(NotificationViewController *)self setPreferredContentSize:v55, v57 + 15.0];

  v58 = HAENotificationsLog();
  if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
  {
    subtitle = self->_subtitle;
    *buf = 138412290;
    v71 = subtitle;
    _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }

  v60 = HAENotificationsLog();
  if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
  {
    message = self->_message;
    *buf = 138412290;
    v71 = message;
    _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }

  v62 = HAENotificationsLog();
  if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
  {
    view12 = [(NotificationViewController *)self view];
    *buf = 138412290;
    v71 = view12;
    _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }

  v64 = HAENotificationsLog();
  if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
  {
    view13 = [(NotificationViewController *)self view];
    [view13 bounds];
    v67 = v66;
    view14 = [(NotificationViewController *)self view];
    [view14 bounds];
    *buf = 134218240;
    v71 = v67;
    v72 = 2048;
    v73 = v69;
    _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_INFO, "bounds (%.2lf,%.2lf)", buf, 0x16u);
  }
}

@end