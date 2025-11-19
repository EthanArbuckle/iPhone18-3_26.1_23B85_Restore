@interface _BRShareOverviewActivityViewController
- (BRShareOverviewActivityViewControllerDelegate)delegate;
- (UIViewController)vcForActivityPresentation;
- (void)_performActivity:(id)a3;
- (void)_prepareActivity:(id)a3 completion:(id)a4;
- (void)mailComposeController:(id)a3 didFinishWithResult:(int64_t)a4 error:(id)a5;
- (void)mailComposeController:(id)a3 shouldSendMail:(id)a4 toRecipients:(id)a5 completion:(id)a6;
- (void)messageComposeViewController:(id)a3 didFinishWithResult:(int64_t)a4;
- (void)messageComposeViewController:(id)a3 shouldSendMessage:(id)a4 toRecipients:(id)a5 completion:(id)a6;
- (void)setupActivityDelegate;
@end

@implementation _BRShareOverviewActivityViewController

- (void)_performActivity:(id)a3
{
  v4 = a3;
  v5 = cdui_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_10002D780(v5, v6, v7, v8, v9, v10, v11, v12);
  }

  v13 = [(_BRShareOverviewActivityViewController *)self delegate];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100029508;
  v15[3] = &unk_10004D8B8;
  v16 = v4;
  v17 = self;
  v14 = v4;
  [v13 shareActivityController:self prepareForActivity:v14 completion:v15];
}

- (void)_prepareActivity:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = cdui_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_10002D7F0(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ([WeakRetained shareActivityControllerShouldPresentActivity:self])
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100029758;
    v18[3] = &unk_10004D078;
    v19 = WeakRetained;
    v20 = self;
    v21 = v6;
    v22 = v7;
    v17.receiver = self;
    v17.super_class = _BRShareOverviewActivityViewController;
    [(_BRShareOverviewActivityViewController *)&v17 _prepareActivity:v21 completion:v18];
  }

  else
  {
    [v6 activityDidFinish:0];
  }
}

- (void)setupActivityDelegate
{
  v8 = [(_BRShareOverviewActivityViewController *)self activity];
  v3 = [v8 activityType];
  v4 = [v3 isEqualToString:UIActivityTypeMail];

  if (v4)
  {
    v5 = [v8 mailComposeViewController];
    [v5 setMailComposeDelegate:self];
  }

  else
  {
    v6 = [v8 activityType];
    v7 = [v6 isEqualToString:UIActivityTypeMessage];

    if (!v7)
    {
      goto LABEL_6;
    }

    v5 = [v8 messageComposeViewController];
    [v5 setMessageComposeDelegate:self];
  }

LABEL_6:
}

- (void)mailComposeController:(id)a3 didFinishWithResult:(int64_t)a4 error:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = cdui_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v14 = 134218242;
    v15 = a4;
    v16 = 2112;
    v17 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[INFO] mailComposeController:didFinishWithResult:%luerror:%@", &v14, 0x16u);
  }

  v11 = [(_BRShareOverviewActivityViewController *)self activity];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = [(_BRShareOverviewActivityViewController *)self activity];
    [v13 mailComposeController:v8 didFinishWithResult:a4 error:v9];
  }
}

- (void)messageComposeViewController:(id)a3 didFinishWithResult:(int64_t)a4
{
  v6 = a3;
  v7 = cdui_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v11 = 134217984;
    v12 = a4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[INFO] messageComposeViewController:didFinishWithResult:%lu", &v11, 0xCu);
  }

  v8 = [(_BRShareOverviewActivityViewController *)self activity];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(_BRShareOverviewActivityViewController *)self activity];
    [v10 messageComposeViewController:v6 didFinishWithResult:a4];
  }
}

- (void)mailComposeController:(id)a3 shouldSendMail:(id)a4 toRecipients:(id)a5 completion:(id)a6
{
  v9 = a3;
  v10 = a6;
  v11 = a5;
  v12 = [(_BRShareOverviewActivityViewController *)self delegate];
  v13 = [(_BRShareOverviewActivityViewController *)self activity];
  v14 = [v13 activityType];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100029E1C;
  v17[3] = &unk_10004D958;
  v18 = v9;
  v19 = v10;
  v17[4] = self;
  v15 = v9;
  v16 = v10;
  [v12 shareViewController:self addParticipants:v11 activityType:v14 completion:v17];
}

- (void)messageComposeViewController:(id)a3 shouldSendMessage:(id)a4 toRecipients:(id)a5 completion:(id)a6
{
  v9 = a3;
  v10 = a6;
  v11 = a5;
  v12 = [(_BRShareOverviewActivityViewController *)self delegate];
  v13 = [(_BRShareOverviewActivityViewController *)self activity];
  v14 = [v13 activityType];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100029FCC;
  v17[3] = &unk_10004D958;
  v18 = v9;
  v19 = v10;
  v17[4] = self;
  v15 = v9;
  v16 = v10;
  [v12 shareViewController:self addParticipants:v11 activityType:v14 completion:v17];
}

- (UIViewController)vcForActivityPresentation
{
  WeakRetained = objc_loadWeakRetained(&self->_vcForActivityPresentation);

  return WeakRetained;
}

- (BRShareOverviewActivityViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end