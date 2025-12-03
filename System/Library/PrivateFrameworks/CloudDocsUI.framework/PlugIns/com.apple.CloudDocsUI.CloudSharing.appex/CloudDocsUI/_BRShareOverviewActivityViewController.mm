@interface _BRShareOverviewActivityViewController
- (BRShareOverviewActivityViewControllerDelegate)delegate;
- (UIViewController)vcForActivityPresentation;
- (void)_performActivity:(id)activity;
- (void)_prepareActivity:(id)activity completion:(id)completion;
- (void)mailComposeController:(id)controller didFinishWithResult:(int64_t)result error:(id)error;
- (void)mailComposeController:(id)controller shouldSendMail:(id)mail toRecipients:(id)recipients completion:(id)completion;
- (void)messageComposeViewController:(id)controller didFinishWithResult:(int64_t)result;
- (void)messageComposeViewController:(id)controller shouldSendMessage:(id)message toRecipients:(id)recipients completion:(id)completion;
- (void)setupActivityDelegate;
@end

@implementation _BRShareOverviewActivityViewController

- (void)_performActivity:(id)activity
{
  activityCopy = activity;
  v5 = cdui_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_10002D780(v5, v6, v7, v8, v9, v10, v11, v12);
  }

  delegate = [(_BRShareOverviewActivityViewController *)self delegate];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100029508;
  v15[3] = &unk_10004D8B8;
  v16 = activityCopy;
  selfCopy = self;
  v14 = activityCopy;
  [delegate shareActivityController:self prepareForActivity:v14 completion:v15];
}

- (void)_prepareActivity:(id)activity completion:(id)completion
{
  activityCopy = activity;
  completionCopy = completion;
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
    selfCopy = self;
    v21 = activityCopy;
    v22 = completionCopy;
    v17.receiver = self;
    v17.super_class = _BRShareOverviewActivityViewController;
    [(_BRShareOverviewActivityViewController *)&v17 _prepareActivity:v21 completion:v18];
  }

  else
  {
    [activityCopy activityDidFinish:0];
  }
}

- (void)setupActivityDelegate
{
  activity = [(_BRShareOverviewActivityViewController *)self activity];
  activityType = [activity activityType];
  v4 = [activityType isEqualToString:UIActivityTypeMail];

  if (v4)
  {
    mailComposeViewController = [activity mailComposeViewController];
    [mailComposeViewController setMailComposeDelegate:self];
  }

  else
  {
    activityType2 = [activity activityType];
    v7 = [activityType2 isEqualToString:UIActivityTypeMessage];

    if (!v7)
    {
      goto LABEL_6;
    }

    mailComposeViewController = [activity messageComposeViewController];
    [mailComposeViewController setMessageComposeDelegate:self];
  }

LABEL_6:
}

- (void)mailComposeController:(id)controller didFinishWithResult:(int64_t)result error:(id)error
{
  controllerCopy = controller;
  errorCopy = error;
  v10 = cdui_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v14 = 134218242;
    resultCopy = result;
    v16 = 2112;
    v17 = errorCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[INFO] mailComposeController:didFinishWithResult:%luerror:%@", &v14, 0x16u);
  }

  activity = [(_BRShareOverviewActivityViewController *)self activity];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    activity2 = [(_BRShareOverviewActivityViewController *)self activity];
    [activity2 mailComposeController:controllerCopy didFinishWithResult:result error:errorCopy];
  }
}

- (void)messageComposeViewController:(id)controller didFinishWithResult:(int64_t)result
{
  controllerCopy = controller;
  v7 = cdui_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v11 = 134217984;
    resultCopy = result;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[INFO] messageComposeViewController:didFinishWithResult:%lu", &v11, 0xCu);
  }

  activity = [(_BRShareOverviewActivityViewController *)self activity];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    activity2 = [(_BRShareOverviewActivityViewController *)self activity];
    [activity2 messageComposeViewController:controllerCopy didFinishWithResult:result];
  }
}

- (void)mailComposeController:(id)controller shouldSendMail:(id)mail toRecipients:(id)recipients completion:(id)completion
{
  controllerCopy = controller;
  completionCopy = completion;
  recipientsCopy = recipients;
  delegate = [(_BRShareOverviewActivityViewController *)self delegate];
  activity = [(_BRShareOverviewActivityViewController *)self activity];
  activityType = [activity activityType];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100029E1C;
  v17[3] = &unk_10004D958;
  v18 = controllerCopy;
  v19 = completionCopy;
  v17[4] = self;
  v15 = controllerCopy;
  v16 = completionCopy;
  [delegate shareViewController:self addParticipants:recipientsCopy activityType:activityType completion:v17];
}

- (void)messageComposeViewController:(id)controller shouldSendMessage:(id)message toRecipients:(id)recipients completion:(id)completion
{
  controllerCopy = controller;
  completionCopy = completion;
  recipientsCopy = recipients;
  delegate = [(_BRShareOverviewActivityViewController *)self delegate];
  activity = [(_BRShareOverviewActivityViewController *)self activity];
  activityType = [activity activityType];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100029FCC;
  v17[3] = &unk_10004D958;
  v18 = controllerCopy;
  v19 = completionCopy;
  v17[4] = self;
  v15 = controllerCopy;
  v16 = completionCopy;
  [delegate shareViewController:self addParticipants:recipientsCopy activityType:activityType completion:v17];
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