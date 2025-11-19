@interface NotificationViewController
- (void)didReceiveNotification:(id)a3;
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

- (void)didReceiveNotification:(id)a3
{
  v4 = a3;
  v5 = HAENotificationsLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v71 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "NotificationViewController::didReceiveNotification...: %@", buf, 0xCu);
  }

  v6 = [(UILabel *)v4 request];
  v7 = [v6 content];
  v8 = [v7 categoryIdentifier];
  v9 = [(NotificationViewController *)self isLiveNotification:v8];

  if (v9)
  {
    v10 = HAENLocalizationUtilityGetBundle();
    v11 = [v10 localizedStringForKey:@"MessageLonglookLoud" value:&stru_100004188 table:0];

    v12 = [(UILabel *)v4 request];
    v13 = [v12 content];
    v14 = [v13 body];
    v15 = [NSString stringWithFormat:@"%@\n\n%@", v14, v11];
    [(UILabel *)self->_message setText:v15];
  }

  else
  {
    v11 = [(UILabel *)v4 request];
    v12 = [v11 content];
    v13 = [v12 body];
    [(UILabel *)self->_message setText:v13];
  }

  v16 = [(UILabel *)v4 request];
  v17 = [v16 content];
  v18 = [v17 title];
  [(UILabel *)self->_subtitle setText:v18];

  v19 = [UIFont preferredFontForTextStyle:UIFontTextStyleHeadline];
  [(UILabel *)self->_subtitle setFont:v19];

  [(UILabel *)self->_subtitle setAdjustsFontForContentSizeCategory:1];
  v20 = [(NotificationViewController *)self view];
  [v20 frame];
  v22 = v21 + -20.0;
  v23 = [(NotificationViewController *)self subtitle];
  [v23 intrinsicContentSize];
  [(UILabel *)self->_subtitle setFrame:13.0, 0.0, v22, v24];

  [(UILabel *)self->_subtitle sizeToFit];
  v25 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [(UILabel *)self->_message setFont:v25];

  [(UILabel *)self->_message setAdjustsFontForContentSizeCategory:1];
  v26 = [(NotificationViewController *)self subtitle];
  [v26 intrinsicContentSize];
  v28 = v27;
  v29 = [(NotificationViewController *)self view];
  [v29 frame];
  v31 = v30 + -20.0;
  v32 = [(NotificationViewController *)self message];
  [v32 intrinsicContentSize];
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
  v38 = [(NotificationViewController *)self view];
  [v38 frame];
  v40 = v39;
  v41 = [(NotificationViewController *)self subtitle];
  [v41 frame];
  v43 = v42;
  v44 = [(NotificationViewController *)self message];
  [v44 frame];
  v46 = v43 + v45;
  v47 = [(NotificationViewController *)self view];
  [v47 setFrame:{0.0, 0.0, v40, v46}];

  v48 = [(NotificationViewController *)self view];
  [v48 addSubview:self->_subtitle];

  v49 = [(NotificationViewController *)self view];
  [v49 addSubview:self->_message];

  v50 = [(NotificationViewController *)self view];
  [v50 sizeToFit];

  v51 = [(NotificationViewController *)self view];
  [v51 setNeedsLayout];

  v52 = [(NotificationViewController *)self view];
  [v52 layoutIfNeeded];

  v53 = [(NotificationViewController *)self view];
  [v53 frame];
  v55 = v54;
  v56 = [(NotificationViewController *)self view];
  [v56 frame];
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
    v63 = [(NotificationViewController *)self view];
    *buf = 138412290;
    v71 = v63;
    _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }

  v64 = HAENotificationsLog();
  if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
  {
    v65 = [(NotificationViewController *)self view];
    [v65 bounds];
    v67 = v66;
    v68 = [(NotificationViewController *)self view];
    [v68 bounds];
    *buf = 134218240;
    v71 = v67;
    v72 = 2048;
    v73 = v69;
    _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_INFO, "bounds (%.2lf,%.2lf)", buf, 0x16u);
  }
}

@end