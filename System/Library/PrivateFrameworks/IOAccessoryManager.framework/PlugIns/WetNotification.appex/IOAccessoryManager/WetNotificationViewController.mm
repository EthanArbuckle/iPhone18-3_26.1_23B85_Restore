@interface WetNotificationViewController
- (CGSize)preferredContentSize;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation WetNotificationViewController

- (void)viewDidLoad
{
  v40.receiver = self;
  v40.super_class = WetNotificationViewController;
  [(WetNotificationViewController *)&v40 viewDidLoad];
  v3 = [(WetNotificationViewController *)self extensionContext];
  v4 = [v3 inputItems];
  v5 = [v4 firstObject];

  v6 = [v5 userInfo];
  v7 = +[NSBundle mainBundle];
  v8 = safeBoolValue(v6, @"legacy");
  v9 = safeBoolValue(v6, @"typeC");
  v10 = safeBoolValue(v6, @"chargerConnected");
  v11 = safeBoolValue(v6, @"reinsertion");
  v39 = [(WetNotificationViewController *)self view];
  v12 = [UIImageView alloc];
  v13 = [UIImage imageNamed:@"titleImage"];
  v14 = [v12 initWithImage:v13];
  imageView = self->_imageView;
  self->_imageView = v14;

  v16 = [(WetNotificationViewController *)self view];
  [v16 addSubview:self->_imageView];

  if (v8)
  {
    v17 = safeLocalizedString(v7, @"WETMSG_DIALOG_HEADER_LEGACY", @"Liquid Detected");
    v18 = @"WETMSG_DIALOG_BODY_LEGACY";
LABEL_3:
    v19 = @"Liquid has been detected in the Lightning connector. Disconnect to allow the connector to dry. Charging now may damage your iPhone.";
LABEL_4:
    v20 = safeLocalizedString(v7, v18, v19);
    goto LABEL_5;
  }

  if (!v9)
  {
    if (v10)
    {
      v17 = safeLocalizedString(v7, @"WETMSG_DIALOG_HEADER", @"Charging Not Available");
      if (!v11)
      {
        v18 = @"WETMSG_DIALOG_BODY_INSERTION";
        v19 = @"Liquid has been detected in the Lightning connector. Disconnect to allow the connector to dry. This may take several hours.";
        goto LABEL_4;
      }

      v18 = @"WETMSG_DIALOG_BODY_REINSERTION";
      goto LABEL_3;
    }

    v17 = safeLocalizedString(v7, @"WETMSG_DIALOG_NONCHARGING_HEADER", @"Liquid Detected in Lightning Connector");
    if (v11)
    {
      v18 = @"WETMSG_DIALOG_NONCHARGING_BODY_REINSERTION";
      goto LABEL_17;
    }

    v18 = @"WETMSG_DIALOG_NONCHARGING_BODY_INSERTION";
LABEL_23:
    v19 = @"Disconnect to allow the connector to dry. This may take several hours.";
    goto LABEL_4;
  }

  if (!v10)
  {
    v17 = safeLocalizedString(v7, @"WETMSG_DIALOG_NONCHARGING_HEADER_TYPEC", @"Liquid Detected in\nUSB-C Connector");
    if (v11)
    {
      v18 = @"WETMSG_DIALOG_NONCHARGING_BODY_REINSERTION_TYPEC";
LABEL_17:
      v19 = @"Disconnect to allow the connector to dry.";
      goto LABEL_4;
    }

    v18 = @"WETMSG_DIALOG_NONCHARGING_BODY_INSERTION_TYPEC";
    goto LABEL_23;
  }

  v17 = safeLocalizedString(v7, @"WETMSG_DIALOG_HEADER_TYPEC", @"Liquid Detected");
  if (v11)
  {
    v37 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"WETMSG_DIALOG_BODY_REINSERTION_TYPEC"];
    v38 = @"Disconnect cable from charger and device. Unplug charger and allow all connectors to dry. Charging now may damage your device.";
  }

  else
  {
    v37 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"WETMSG_DIALOG_BODY_INSERTION_TYPEC"];
    v38 = @"Disconnect cable from charger and device. Unplug charger and allow all connectors to dry. This may take several hours.";
  }

  v20 = safeLocalizedString(v7, v37, v38);

LABEL_5:
  v21 = [UILabel alloc];
  v22 = [(WetNotificationViewController *)self view];
  [v22 bounds];
  v23 = [v21 initWithFrame:?];
  titleLabel = self->_titleLabel;
  self->_titleLabel = v23;

  [(UILabel *)self->_titleLabel setTextAlignment:1];
  v25 = self->_titleLabel;
  v26 = [UIFont boldSystemFontOfSize:17.0];
  [(UILabel *)v25 setFont:v26];

  v27 = self->_titleLabel;
  v28 = +[UIColor systemRedColor];
  [(UILabel *)v27 setTextColor:v28];

  [(UILabel *)self->_titleLabel setText:v17];
  [(UILabel *)self->_titleLabel setLineBreakMode:0];
  [(UILabel *)self->_titleLabel setNumberOfLines:2];
  [(UILabel *)self->_titleLabel sizeToFit];
  v29 = [(WetNotificationViewController *)self view];
  [v29 addSubview:self->_titleLabel];

  v30 = [[UILabel alloc] initWithFrame:{0.0, 0.0, 230.0, 3.40282347e38}];
  bodyLabel = self->_bodyLabel;
  self->_bodyLabel = v30;

  [(UILabel *)self->_bodyLabel setTextAlignment:1];
  v32 = self->_bodyLabel;
  v33 = [UIFont systemFontOfSize:13.0];
  [(UILabel *)v32 setFont:v33];

  v34 = self->_bodyLabel;
  v35 = +[UIColor labelColor];
  [(UILabel *)v34 setTextColor:v35];

  [(UILabel *)self->_bodyLabel setText:v20];
  [(UILabel *)self->_bodyLabel setLineBreakMode:0];
  [(UILabel *)self->_bodyLabel setNumberOfLines:0];
  [(UILabel *)self->_bodyLabel sizeToFit];
  v36 = [(WetNotificationViewController *)self view];
  [v36 addSubview:self->_bodyLabel];
}

- (CGSize)preferredContentSize
{
  v3 = [(WetNotificationViewController *)self view];
  [(UILabel *)self->_bodyLabel bounds];
  v5 = v4;
  [(UILabel *)self->_titleLabel bounds];
  v7 = v5 + v6;
  [(UIImageView *)self->_imageView bounds];
  [v3 setFrame:{0.0, 0.0, 250.0, v7 + v8 + 59.0}];

  [(UILabel *)self->_bodyLabel frame];
  v10 = v9 + 59.0;
  [(UILabel *)self->_titleLabel frame];
  v12 = v10 + v11;
  [(UIImageView *)self->_imageView intrinsicContentSize];
  v14 = v12 + v13;
  v15 = 250.0;
  result.height = v14;
  result.width = v15;
  return result;
}

- (void)viewWillLayoutSubviews
{
  v3 = [(WetNotificationViewController *)self view];
  [v3 bounds];
  v5 = v4;

  [(UIImageView *)self->_imageView bounds];
  [(UIImageView *)self->_imageView setFrame:(v5 - v6) * 0.5, 19.0];
  [(UIImageView *)self->_imageView frame];
  v8 = v7;
  v10 = v9;
  [(UILabel *)self->_titleLabel bounds];
  [(UILabel *)self->_titleLabel setFrame:(v5 - v11) * 0.5, v10 + v8 + 9.0];
  [(UILabel *)self->_titleLabel frame];
  v13 = v12;
  v15 = v14;
  [(UILabel *)self->_bodyLabel bounds];
  [(UILabel *)self->_bodyLabel setFrame:(v5 - v16) * 0.5, v15 + v13 + 7.0];
  v17.receiver = self;
  v17.super_class = WetNotificationViewController;
  [(WetNotificationViewController *)&v17 viewWillLayoutSubviews];
}

@end